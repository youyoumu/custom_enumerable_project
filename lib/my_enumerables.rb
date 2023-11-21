module Enumerable
  # Your code goes here
  def my_each_with_index
    i = 0
    while i < self.length
      yield self[i], i
      i += 1
    end
    return self
  end

  def my_select
    i = 0
    new_array = []
    while i < self.length
      if yield self[i]
        new_array << self[i]
      end
      i += 1
    end
    return new_array
  end

  def my_all?
    i = 0
    while i < self.length
      unless yield self[i]
        return false
      end
      i += 1
    end
    return true
  end

  def my_any?
    i = 0
    while i < self.length
      if yield self[i]
        return true
      end
      i += 1
    end
    return false
  end

  def my_none?
    i = 0
    while i < self.length
      if yield self[i]
        return false
      end
      i += 1
    end
    return true
  end

  def my_count
    unless block_given?
      return self.length
    end
    i = 0
    counter = 0
    while i < self.length
      if yield self[i]
        counter += 1
      end
      i += 1
    end
    return counter
  end

  def my_map
    i = 0
    new_array = []
    while i < self.length
      a = yield self[i]
      new_array << a
      i += 1
    end
    return new_array
  end

  def my_inject(initial_value)
    i = 0
    accumulator = initial_value
    while i < self.length
      accumulator = yield accumulator, self[i]
      i += 1
    end
    return accumulator
  end
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
  def my_each
    i = 0
    while i < self.length
      yield self[i]
      i += 1
    end
    return self
  end
end
