@interface _NSLineBreakerQueue
- (_NSLineBreakerQueue)initWithCapacity:(unint64_t)a3;
- (const)valueAtIndex:(unint64_t)a3;
- (void)_ensureCapacity:(unint64_t)a3;
- (void)appendValue:(const void *)a3;
- (void)dealloc;
- (void)enumerateValuesWithBlock:(id)a3;
- (void)removeAllValues;
- (void)removeValuesBeforeIndex:(unint64_t)a3;
@end

@implementation _NSLineBreakerQueue

- (_NSLineBreakerQueue)initWithCapacity:(unint64_t)a3
{
  v6.receiver = self;
  v6.super_class = _NSLineBreakerQueue;
  v4 = [(_NSLineBreakerQueue *)&v6 init];
  if (v4)
  {
    v4->_buf = malloc_type_malloc(8 * a3, 0xC0040B8AA526DuLL);
    v4->_capacity = a3;
    v4->_end = 0;
    v4->_count = 0;
    v4->_start = 0;
  }

  return v4;
}

- (void)dealloc
{
  free(self->_buf);
  v3.receiver = self;
  v3.super_class = _NSLineBreakerQueue;
  [(_NSLineBreakerQueue *)&v3 dealloc];
}

- (void)_ensureCapacity:(unint64_t)a3
{
  capacity = self->_capacity;
  if (capacity < a3)
  {
    v5 = self->_capacity;
    do
    {
      v6 = v5;
      v5 *= 2;
    }

    while (v6 < a3);
    v7 = malloc_type_realloc(self->_buf, 8 * v6, 0xC0040B8AA526DuLL);
    self->_buf = v7;
    self->_capacity = v6;
    start = self->_start;
    if (self->_count + start > capacity)
    {
      v9 = start + v6 - capacity;
      memmove(&v7[v9], &v7[start], 8 * (capacity - start));
      self->_start = v9;
    }
  }
}

- (void)appendValue:(const void *)a3
{
  [(_NSLineBreakerQueue *)self _ensureCapacity:self->_count + 1];
  count = self->_count;
  if (self->_end == self->_capacity)
  {
    end = 0;
  }

  else
  {
    end = self->_end;
  }

  self->_buf[end] = a3;
  self->_end = end + 1;
  self->_count = count + 1;
}

- (const)valueAtIndex:(unint64_t)a3
{
  if (self->_count <= a3)
  {
    [_NSLineBreakerQueue valueAtIndex:];
  }

  capacity = self->_capacity;
  v4 = self->_start + a3;
  if (v4 < capacity)
  {
    capacity = 0;
  }

  return self->_buf[v4 - capacity];
}

- (void)enumerateValuesWithBlock:(id)a3
{
  v4 = a3;
  v5 = 0;
  v6 = 0;
  do
  {
    if (v5 >= self->_count)
    {
      break;
    }

    v4[2](v4, [(_NSLineBreakerQueue *)self valueAtIndex:v5++], &v6);
  }

  while ((v6 & 1) == 0);
}

- (void)removeValuesBeforeIndex:(unint64_t)a3
{
  count = self->_count;
  v4 = count >= a3;
  v5 = count - a3;
  if (!v4)
  {
    [_NSLineBreakerQueue removeValuesBeforeIndex:];
  }

  capacity = self->_capacity;
  v7 = self->_start + a3;
  self->_start = v7;
  v4 = v7 >= capacity;
  v8 = v7 - capacity;
  if (v4)
  {
    self->_start = v8;
  }

  self->_count = v5;
}

- (void)removeAllValues
{
  self->_start = 0;
  self->_end = 0;
  self->_count = 0;
}

@end