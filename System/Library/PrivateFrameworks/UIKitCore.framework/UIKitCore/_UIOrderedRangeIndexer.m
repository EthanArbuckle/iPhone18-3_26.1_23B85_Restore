@interface _UIOrderedRangeIndexer
- (_UIOrderedRangeIndexer)init;
- (id).cxx_construct;
- (id)description;
- (uint64_t)rangeContainingLocation:(uint64_t)result;
@end

@implementation _UIOrderedRangeIndexer

- (_UIOrderedRangeIndexer)init
{
  v3.receiver = self;
  v3.super_class = _UIOrderedRangeIndexer;
  if ([(_UIOrderedRangeIndexer *)&v3 init])
  {
    operator new();
  }

  return 0;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p:", v5, self];

  ptr = self->_orderedRangeIndexerImpl.__ptr_;
  v8 = *ptr;
  v9 = *(ptr + 1);
  if (*ptr != v9)
  {
    do
    {
      v10 = NSStringFromRange(*v8);
      [v6 appendFormat:@" %@", v10];

      ++v8;
    }

    while (v8 != v9);
  }

  [v6 appendFormat:@">"];

  return v6;
}

- (uint64_t)rangeContainingLocation:(uint64_t)result
{
  if (result)
  {
    v2 = *(result + 8);
    memset(v3, 0, sizeof(v3));
    _UIOrderedRangeIndexerImpl::binarySearchForLocation(v2, a2, v3);
    return v3[0];
  }

  return result;
}

@end