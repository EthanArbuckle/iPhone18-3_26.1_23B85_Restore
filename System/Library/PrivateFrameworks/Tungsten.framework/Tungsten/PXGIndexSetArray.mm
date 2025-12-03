@interface PXGIndexSetArray
- (id)description;
- (void)dealloc;
- (void)removeAllIndexes;
- (void)setCount:(int64_t)count;
@end

@implementation PXGIndexSetArray

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCAB68]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@: %p, ", v5, self];

  indexSetReferences = [(PXGIndexSetArray *)self indexSetReferences];
  if ([(PXGIndexSetArray *)self count]>= 1)
  {
    v8 = 0;
    do
    {
      px_shortDescription = [indexSetReferences[v8] px_shortDescription];
      [v6 appendFormat:@" %li:%@", v8, px_shortDescription];

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

- (void)setCount:(int64_t)count
{
  capacity = self->_capacity;
  if (capacity < count)
  {
    countCopy = count;
    if (capacity)
    {
      countCopy = self->_capacity;
      do
      {
        countCopy *= 2;
      }

      while (countCopy < count);
    }

    self->_capacity = countCopy;
    for (self->_indexSetReferences = malloc_type_realloc(self->_indexSetReferences, 8 * countCopy, 0x42760281uLL); capacity < self->_capacity; ++capacity)
    {
      self->_indexSetReferences[capacity] = objc_alloc_init(MEMORY[0x277CCAB58]);
    }
  }

  if (self->_count > count)
  {
    countCopy2 = count;
    do
    {
      [self->_indexSetReferences[countCopy2++] removeAllIndexes];
    }

    while (countCopy2 < self->_count);
  }

  self->_count = count;
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