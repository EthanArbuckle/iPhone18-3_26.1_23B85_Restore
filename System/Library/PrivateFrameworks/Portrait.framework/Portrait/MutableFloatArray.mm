@interface MutableFloatArray
- (MutableFloatArray)initWithCount:(unint64_t)count capacity:(unint64_t)capacity;
- (MutableFloatArray)initWithFloat:(float)float repeatCount:(unint64_t)count capacity:(unint64_t)capacity;
- (MutableFloatArray)initWithZeros:(unint64_t)zeros capacity:(unint64_t)capacity;
- (float)floatAtIndex:(unint64_t)index;
- (id)copyWithZone:(_NSZone *)zone;
- (void)appendFloat:(float)float;
- (void)removeFromStart:(unint64_t)start;
- (void)setFloat:(float)float atIndex:(unint64_t)index;
- (void)setFloat:(float)float inRange:(_NSRange)range;
- (void)setFloats:(const float *)floats inRange:(_NSRange)range;
@end

@implementation MutableFloatArray

- (MutableFloatArray)initWithCount:(unint64_t)count capacity:(unint64_t)capacity
{
  if (capacity <= count)
  {
    capacityCopy = count;
  }

  else
  {
    capacityCopy = capacity;
  }

  if (capacityCopy <= 0x10)
  {
    v6 = 16;
  }

  else
  {
    v6 = capacityCopy;
  }

  v8.receiver = self;
  v8.super_class = MutableFloatArray;
  result = [(FloatArray *)&v8 initWithCount:v6];
  result->_start = result->super._buffer;
  result->super._count = count;
  result->_capacity = v6;
  return result;
}

- (MutableFloatArray)initWithZeros:(unint64_t)zeros capacity:(unint64_t)capacity
{
  if (capacity <= zeros)
  {
    capacityCopy = zeros;
  }

  else
  {
    capacityCopy = capacity;
  }

  if (capacityCopy <= 0x10)
  {
    v6 = 16;
  }

  else
  {
    v6 = capacityCopy;
  }

  v8.receiver = self;
  v8.super_class = MutableFloatArray;
  result = [(FloatArray *)&v8 initWithZeros:v6];
  result->_start = result->super._buffer;
  result->super._count = zeros;
  result->_capacity = v6;
  return result;
}

- (MutableFloatArray)initWithFloat:(float)float repeatCount:(unint64_t)count capacity:(unint64_t)capacity
{
  __A = float;
  v6 = [(MutableFloatArray *)self initWithCount:count capacity:capacity];
  v7 = v6;
  if (v6)
  {
    vDSP_vfill(&__A, v6->super._buffer, 1, count);
  }

  return v7;
}

- (float)floatAtIndex:(unint64_t)index
{
  if (self->super._count <= index)
  {
    [MutableFloatArray floatAtIndex:];
  }

  return self->_start[index];
}

- (void)setFloat:(float)float atIndex:(unint64_t)index
{
  if (self->super._count <= index)
  {
    [MutableFloatArray setFloat:atIndex:];
  }

  self->_start[index] = float;
}

- (void)setFloat:(float)float inRange:(_NSRange)range
{
  __A = float;
  if (range.location + range.length > self->super._count)
  {
    [MutableFloatArray setFloat:inRange:];
  }

  vDSP_vfill(&__A, &self->_start[range.location], 1, range.length);
}

- (void)setFloats:(const float *)floats inRange:(_NSRange)range
{
  if (range.location + range.length > self->super._count)
  {
    [MutableFloatArray setFloats:inRange:];
  }

  v5 = &self->_start[range.location];

  memcpy(v5, floats, 4 * range.length);
}

- (void)appendFloat:(float)float
{
  start = self->_start;
  p_buffer = &self->super._buffer;
  buffer = self->super._buffer;
  v7 = p_buffer[1];
  capacity = self->_capacity;
  if (&start[v7] >= &buffer[capacity])
  {
    if (buffer >= start)
    {
      self->_capacity = 2 * capacity;
      v10 = malloc_type_realloc(buffer, 8 * capacity, 0x100004052888210uLL);
      if (!v10)
      {
        [MutableFloatArray appendFloat:];
      }

      start = v10;
      self->super._buffer = v10;
    }

    else
    {
      memmove(buffer, start, 4 * v7);
      start = self->super._buffer;
    }

    self->_start = start;
  }

  count = self->super._count;
  self->super._count = count + 1;
  start[count] = float;
}

- (void)removeFromStart:(unint64_t)start
{
  count = self->super._count;
  if (count >= start)
  {
    startCopy = start;
  }

  else
  {
    startCopy = self->super._count;
  }

  self->_start += startCopy;
  self->super._count = count - startCopy;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [FloatArray alloc];

  return [(FloatArray *)v4 initWithFloatArray:self];
}

@end