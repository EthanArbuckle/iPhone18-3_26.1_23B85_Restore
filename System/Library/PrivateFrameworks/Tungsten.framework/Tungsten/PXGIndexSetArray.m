@interface PXGIndexSetArray
- (id)description;
- (void)dealloc;
- (void)removeAllIndexes;
- (void)setCount:(int64_t)a3;
@end

@implementation PXGIndexSetArray

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCAB68]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@: %p, ", v5, self];

  v7 = [(PXGIndexSetArray *)self indexSetReferences];
  if ([(PXGIndexSetArray *)self count]>= 1)
  {
    v8 = 0;
    do
    {
      v9 = [v7[v8] px_shortDescription];
      [v6 appendFormat:@" %li:%@", v8, v9];

      ++v8;
    }

    while (v8 < [(PXGIndexSetArray *)self count]);
  }

  [v6 appendString:@">"];

  return v6;
}

- (void)removeAllIndexes
{
  if (self->_count >= 1)
  {
    v8 = v3;
    v9 = v2;
    v10 = v4;
    v11 = v5;
    v7 = 0;
    do
    {
      [self->_indexSetReferences[v7++] removeAllIndexes];
    }

    while (v7 < self->_count);
  }
}

- (void)setCount:(int64_t)a3
{
  capacity = self->_capacity;
  if (capacity < a3)
  {
    v6 = a3;
    if (capacity)
    {
      v6 = self->_capacity;
      do
      {
        v6 *= 2;
      }

      while (v6 < a3);
    }

    self->_capacity = v6;
    for (self->_indexSetReferences = malloc_type_realloc(self->_indexSetReferences, 8 * v6, 0x42760281uLL); capacity < self->_capacity; ++capacity)
    {
      self->_indexSetReferences[capacity] = objc_alloc_init(MEMORY[0x277CCAB58]);
    }
  }

  if (self->_count > a3)
  {
    v7 = a3;
    do
    {
      [self->_indexSetReferences[v7++] removeAllIndexes];
    }

    while (v7 < self->_count);
  }

  self->_count = a3;
}

- (void)dealloc
{
  if (self->_capacity >= 1)
  {
    v3 = 0;
    do
    {
    }

    while (v3 < self->_capacity);
  }

  indexSetReferences = self->_indexSetReferences;
  if (indexSetReferences)
  {
    free(indexSetReferences);
  }

  v5.receiver = self;
  v5.super_class = PXGIndexSetArray;
  [(PXGIndexSetArray *)&v5 dealloc];
}

@end