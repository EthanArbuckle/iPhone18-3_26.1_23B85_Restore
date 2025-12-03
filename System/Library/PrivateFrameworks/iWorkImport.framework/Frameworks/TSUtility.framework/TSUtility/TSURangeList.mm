@interface TSURangeList
+ (id)stringValueForRangeVector:(const void *)vector;
- (TSURangeList)initWithRange:(_NSRange)range;
- (TSURangeList)initWithRangeList:(id)list;
- (TSURangeList)initWithRangeVector:(const void *)vector;
- (TSURangeList)initWithRangeVectorMove:(void *)move;
- (TSURangeList)initWithString:(id)string;
- (_NSRange)rangeAtIndex:(unint64_t)index;
- (id).cxx_construct;
- (void)removeRangeAtIndex:(unint64_t)index;
- (void)replaceWithRange:(_NSRange)range atIndex:(unint64_t)index;
- (void)reverse;
@end

@implementation TSURangeList

- (TSURangeList)initWithRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v5 = [(TSURangeList *)self init];
  v6 = v5;
  if (v5)
  {
    sub_27707955C(&v5->mRangeList.__begin_, 1uLL);
    begin = v6->mRangeList.__begin_;
    begin->location = location;
    begin->length = length;
  }

  return v6;
}

- (TSURangeList)initWithRangeList:(id)list
{
  v4 = [(TSURangeList *)self init];
  if (v4)
  {
    sub_27707955C(&v4->mRangeList.__begin_, [list count]);
    if ([list count])
    {
      v5 = 0;
      v6 = 0;
      do
      {
        v7 = [list rangeAtIndex:v6];
        v8 = &v4->mRangeList.__begin_[v5];
        v8->location = v7;
        v8->length = v9;
        ++v6;
        ++v5;
      }

      while (v6 < [list count]);
    }
  }

  return v4;
}

- (TSURangeList)initWithString:(id)string
{
  v4 = [(TSURangeList *)self init];
  v5 = v4;
  if (string && v4 && [string length] >= 3 && objc_msgSend(string, "length"))
  {
    v6 = 0;
    v7 = 1;
    do
    {
      if ([string characterAtIndex:v7 - 1] == 123)
      {
        v6 = v7 - 1;
      }

      else if ([string characterAtIndex:v7 - 1] == 125)
      {
        v8 = [string substringWithRange:{v6, v7 - v6}];
        v11 = 0;
        v11 = NSRangeFromString(v8);
        sub_277079700(&v5->mRangeList, &v11);
      }
    }

    while (v7++ < [string length]);
  }

  return v5;
}

- (TSURangeList)initWithRangeVector:(const void *)vector
{
  v4 = [(TSURangeList *)self init];
  v5 = v4;
  if (v4)
  {
    p_mRangeList = &v4->mRangeList;
    if (&v5->mRangeList != vector)
    {
      sub_277079E3C(p_mRangeList, *vector, *(vector + 1), (*(vector + 1) - *vector) >> 4);
    }
  }

  return v5;
}

- (TSURangeList)initWithRangeVectorMove:(void *)move
{
  v4 = [(TSURangeList *)self init];
  v5 = v4;
  if (v4)
  {
    p_mRangeList = &v4->mRangeList;
    if (&v5->mRangeList != move)
    {
      sub_277079E3C(p_mRangeList, *move, *(move + 1), (*(move + 1) - *move) >> 4);
    }
  }

  return v5;
}

- (void)removeRangeAtIndex:(unint64_t)index
{
  begin = self->mRangeList.__begin_;
  end = self->mRangeList.__end_;
  v6 = &begin[index];
  v7 = (end - &v6[1]);
  if (end != &v6[1])
  {
    memmove(&begin[index], &v6[1], end - &v6[1]);
  }

  self->mRangeList.__end_ = &v7[v6];
}

- (void)replaceWithRange:(_NSRange)range atIndex:(unint64_t)index
{
  begin = self->mRangeList.__begin_;
  v9 = self->mRangeList.__end_ - begin;
  if (v9 <= index)
  {
    objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:@"IndexOutOfBound" reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"Getting object at %lu from an array with size %lu", range.length, index, v9, v5, v4, v6, v7), 0}]);
  }

  begin[index] = range;
}

- (void)reverse
{
  begin = self->mRangeList.__begin_;
  end = self->mRangeList.__end_;
  v4 = end - 1;
  if (begin != end && v4 > begin)
  {
    v6 = begin + 1;
    do
    {
      v7 = v6[-1];
      v6[-1] = *v4;
      *v4-- = v7;
    }

    while (v6++ < v4);
  }
}

- (_NSRange)rangeAtIndex:(unint64_t)index
{
  begin = self->mRangeList.__begin_;
  v8 = self->mRangeList.__end_ - begin;
  if (v8 <= index)
  {
    objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:@"IndexOutOfBound" reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"Getting object at %lu from an array with size %lu", index, v8, v4, v3, v5, v6), 0}]);
  }

  p_location = &begin[index].location;
  v10 = *p_location;
  v11 = p_location[1];
  result.length = v11;
  result.location = v10;
  return result;
}

+ (id)stringValueForRangeVector:(const void *)vector
{
  v4 = [MEMORY[0x277CCAB68] stringWithString:@"["];
  v5 = *vector;
  if (*(vector + 1) != *vector)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      if (v7)
      {
        [v4 appendString:{@", "}];
        v5 = *vector;
      }

      [v4 appendString:NSStringFromRange(*(v5 + v6))];
      ++v7;
      v5 = *vector;
      v6 += 16;
    }

    while (v7 < (*(vector + 1) - *vector) >> 4);
  }

  [v4 appendString:@"]"];
  return v4;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end