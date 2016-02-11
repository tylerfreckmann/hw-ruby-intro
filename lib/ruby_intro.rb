# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.reduce(0, :+)
end

def max_2_sum arr
  # YOUR CODE HERE
  arr.max(2).reduce(0, :+)
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  arr.each do |i|
    cpy = Array.new(arr)
    cpy.delete_at(arr.index(i))
    if cpy.include? n-i ; return true ; end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  /^[b-df-hj-np-tv-z]/i === s
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  /^[01]*(100|0)$/ === s
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize isbn, price
    if isbn == "" or price <= 0 ; raise ArgumentError ; end
    @isbn = isbn
    @price = price
  end
  def isbn ; @isbn ; end
  def price ; @price ; end
  def isbn=(new_isbn)
    if new_isbn == "" ; raise ArgumentError ; end
    @isbn = new_isbn
  end
  def price=(new_price)
    if new_price <= 0 ; raise ArgumentError ; end
    @price = new_price
  end
  def price_as_string
    "$%.2f" % @price
  end
end
