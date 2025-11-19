@interface MutableFloatArray
- (MutableFloatArray)initWithCount:(unint64_t)a3 capacity:(unint64_t)a4;
- (MutableFloatArray)initWithFloat:(float)a3 repeatCount:(unint64_t)a4 capacity:(unint64_t)a5;
- (MutableFloatArray)initWithZeros:(unint64_t)a3 capacity:(unint64_t)a4;
- (float)floatAtIndex:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)appendFloat:(float)a3;
- (void)removeFromStart:(unint64_t)a3;
- (void)setFloat:(float)a3 atIndex:(unint64_t)a4;
- (void)setFloat:(float)a3 inRange:(_NSRange)a4;
- (void)setFloats:(const float *)a3 inRange:(_NSRange)a4;
@end

@implementation MutableFloatArray

- (MutableFloatArray)initWithCount:(unint64_t)a3 capacity:(unint64_t)a4
{
  if (a4 <= a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = a4;
  }

  if (v5 <= 0x10)
  {
    v6 = 16;
  }

  else
  {
    v6 = v5;
  }

  v8.receiver = self;
  v8.super_class = MutableFloatArray;
  result = [(FloatArray *)&v8 initWithCount:v6];
  result->_start = result->super._buffer;
  result->super._count = a3;
  result->_capacity = v6;
  return result;
}

- (MutableFloatArray)initWithZeros:(unint64_t)a3 capacity:(unint64_t)a4
{
  if (a4 <= a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = a4;
  }

  if (v5 <= 0x10)
  {
    v6 = 16;
  }

  else
  {
    v6 = v5;
  }

  v8.receiver = self;
  v8.super_class = MutableFloatArray;
  result = [(FloatArray *)&v8 initWithZeros:v6];
  result->_start = result->super._buffer;
  result->super._count = a3;
  result->_capacity = v6;
  return result;
}

- (MutableFloatArray)initWithFloat:(float)a3 repeatCount:(unint64_t)a4 capacity:(unint64_t)a5
{
  __A = a3;
  v6 = [(MutableFloatArray *)self initWithCount:a4 capacity:a5];
  v7 = v6;
  if (v6)
  {
    vDSP_vfill(&__A, v6->super._buffer, 1, a4);
  }

  return v7;
}

- (float)floatAtIndex:(unint64_t)a3
{
  if (self->super._count <= a3)
  {
    [MutableFloatArray floatAtIndex:];
  }

  return self->_start[a3];
}

- (void)setFloat:(float)a3 atIndex:(unint64_t)a4
{
  if (self->super._count <= a4)
  {
    [MutableFloatArray setFloat:atIndex:];
  }

  self->_start[a4] = a3;
}

- (void)setFloat:(float)a3 inRange:(_NSRange)a4
{
  __A = a3;
  if (a4.location + a4.length > self->super._count)
  {
    [MutableFloatArray setFloat:inRange:];
  }

  vDSP_vfill(&__A, &self->_start[a4.location], 1, a4.length);
}

- (void)setFloats:(const float *)a3 inRange:(_NSRange)a4
{
  if (a4.location + a4.length > self->super._count)
  {
    [MutableFloatArray setFloats:inRange:];
  }

  v5 = &self->_start[a4.location];

  memcpy(v5, a3, 4 * a4.length);
}

- (void)appendFloat:(float)a3
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
  start[count] = a3;
}

- (void)removeFromStart:(unint64_t)a3
{
  count = self->super._count;
  if (count >= a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = self->super._count;
  }

  self->_start += v4;
  self->super._count = count - v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [FloatArray alloc];

  return [(FloatArray *)v4 initWithFloatArray:self];
}

@end