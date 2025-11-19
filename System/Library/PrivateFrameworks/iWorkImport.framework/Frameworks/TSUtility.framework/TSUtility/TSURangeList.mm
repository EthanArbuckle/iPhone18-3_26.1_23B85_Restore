@interface TSURangeList
+ (id)stringValueForRangeVector:(const void *)a3;
- (TSURangeList)initWithRange:(_NSRange)a3;
- (TSURangeList)initWithRangeList:(id)a3;
- (TSURangeList)initWithRangeVector:(const void *)a3;
- (TSURangeList)initWithRangeVectorMove:(void *)a3;
- (TSURangeList)initWithString:(id)a3;
- (_NSRange)rangeAtIndex:(unint64_t)a3;
- (id).cxx_construct;
- (void)removeRangeAtIndex:(unint64_t)a3;
- (void)replaceWithRange:(_NSRange)a3 atIndex:(unint64_t)a4;
- (void)reverse;
@end

@implementation TSURangeList

- (TSURangeList)initWithRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
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

- (TSURangeList)initWithRangeList:(id)a3
{
  v4 = [(TSURangeList *)self init];
  if (v4)
  {
    sub_27707955C(&v4->mRangeList.__begin_, [a3 count]);
    if ([a3 count])
    {
      v5 = 0;
      v6 = 0;
      do
      {
        v7 = [a3 rangeAtIndex:v6];
        v8 = &v4->mRangeList.__begin_[v5];
        v8->location = v7;
        v8->length = v9;
        ++v6;
        ++v5;
      }

      while (v6 < [a3 count]);
    }
  }

  return v4;
}

- (TSURangeList)initWithString:(id)a3
{
  v4 = [(TSURangeList *)self init];
  v5 = v4;
  if (a3 && v4 && [a3 length] >= 3 && objc_msgSend(a3, "length"))
  {
    v6 = 0;
    v7 = 1;
    do
    {
      if ([a3 characterAtIndex:v7 - 1] == 123)
      {
        v6 = v7 - 1;
      }

      else if ([a3 characterAtIndex:v7 - 1] == 125)
      {
        v8 = [a3 substringWithRange:{v6, v7 - v6}];
        v11 = 0;
        v11 = NSRangeFromString(v8);
        sub_277079700(&v5->mRangeList, &v11);
      }
    }

    while (v7++ < [a3 length]);
  }

  return v5;
}

- (TSURangeList)initWithRangeVector:(const void *)a3
{
  v4 = [(TSURangeList *)self init];
  v5 = v4;
  if (v4)
  {
    p_mRangeList = &v4->mRangeList;
    if (&v5->mRangeList != a3)
    {
      sub_277079E3C(p_mRangeList, *a3, *(a3 + 1), (*(a3 + 1) - *a3) >> 4);
    }
  }

  return v5;
}

- (TSURangeList)initWithRangeVectorMove:(void *)a3
{
  v4 = [(TSURangeList *)self init];
  v5 = v4;
  if (v4)
  {
    p_mRangeList = &v4->mRangeList;
    if (&v5->mRangeList != a3)
    {
      sub_277079E3C(p_mRangeList, *a3, *(a3 + 1), (*(a3 + 1) - *a3) >> 4);
    }
  }

  return v5;
}

- (void)removeRangeAtIndex:(unint64_t)a3
{
  begin = self->mRangeList.__begin_;
  end = self->mRangeList.__end_;
  v6 = &begin[a3];
  v7 = (end - &v6[1]);
  if (end != &v6[1])
  {
    memmove(&begin[a3], &v6[1], end - &v6[1]);
  }

  self->mRangeList.__end_ = &v7[v6];
}

- (void)replaceWithRange:(_NSRange)a3 atIndex:(unint64_t)a4
{
  begin = self->mRangeList.__begin_;
  v9 = self->mRangeList.__end_ - begin;
  if (v9 <= a4)
  {
    objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:@"IndexOutOfBound" reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"Getting object at %lu from an array with size %lu", a3.length, a4, v9, v5, v4, v6, v7), 0}]);
  }

  begin[a4] = a3;
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

- (_NSRange)rangeAtIndex:(unint64_t)a3
{
  begin = self->mRangeList.__begin_;
  v8 = self->mRangeList.__end_ - begin;
  if (v8 <= a3)
  {
    objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:@"IndexOutOfBound" reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"Getting object at %lu from an array with size %lu", a3, v8, v4, v3, v5, v6), 0}]);
  }

  p_location = &begin[a3].location;
  v10 = *p_location;
  v11 = p_location[1];
  result.length = v11;
  result.location = v10;
  return result;
}

+ (id)stringValueForRangeVector:(const void *)a3
{
  v4 = [MEMORY[0x277CCAB68] stringWithString:@"["];
  v5 = *a3;
  if (*(a3 + 1) != *a3)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      if (v7)
      {
        [v4 appendString:{@", "}];
        v5 = *a3;
      }

      [v4 appendString:NSStringFromRange(*(v5 + v6))];
      ++v7;
      v5 = *a3;
      v6 += 16;
    }

    while (v7 < (*(a3 + 1) - *a3) >> 4);
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