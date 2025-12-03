@interface _UIPointVector
- (_UIPointVector)init;
- (void)addVector:(_UIPointVector *)self;
- (void)dealloc;
- (void)removeVectorAtIndex:(unint64_t)index;
- (void)reset;
@end

@implementation _UIPointVector

- (_UIPointVector)init
{
  v3.receiver = self;
  v3.super_class = _UIPointVector;
  result = [(_UIPointVector *)&v3 init];
  if (result)
  {
    result->_count = 0;
    result->_capacity = 0;
    *result->_vectors = 0;
  }

  return result;
}

- (void)addVector:(_UIPointVector *)self
{
  v9 = v2;
  v4 = [(_UIPointVector *)self count]+ 1;
  if (v4 >= [(_UIPointVector *)self capacity])
  {
    [(_UIPointVector *)self setCapacity:2 * [(_UIPointVector *)self capacity]];
    capacity = [(_UIPointVector *)self capacity];
    if (capacity <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = capacity;
    }

    [(_UIPointVector *)self setCapacity:v6];
    [(_UIPointVector *)self setVectors:malloc_type_realloc([(_UIPointVector *)self vectors], 16 * [(_UIPointVector *)self capacity], 0x1000040451B5BE8uLL)];
  }

  vectors = [(_UIPointVector *)self vectors];
  *(vectors + 16 * [(_UIPointVector *)self count]) = v9;
  v8 = [(_UIPointVector *)self count]+ 1;

  [(_UIPointVector *)self setCount:v8];
}

- (void)removeVectorAtIndex:(unint64_t)index
{
  if ([(_UIPointVector *)self count]> index)
  {
    memmove(([(_UIPointVector *)self vectors]+ 16 * index), ([(_UIPointVector *)self vectors]+ 16 * index + 16), 16 * ([(_UIPointVector *)self count]+ ~index));
    v5 = [(_UIPointVector *)self count]- 1;

    [(_UIPointVector *)self setCount:v5];
  }
}

- (void)reset
{
  if ([(_UIPointVector *)self vectors])
  {
    free([(_UIPointVector *)self vectors]);
    [(_UIPointVector *)self setVectors:0];
  }

  [(_UIPointVector *)self setCapacity:0];

  [(_UIPointVector *)self setCount:0];
}

- (void)dealloc
{
  [(_UIPointVector *)self reset];
  v3.receiver = self;
  v3.super_class = _UIPointVector;
  [(_UIPointVector *)&v3 dealloc];
}

@end