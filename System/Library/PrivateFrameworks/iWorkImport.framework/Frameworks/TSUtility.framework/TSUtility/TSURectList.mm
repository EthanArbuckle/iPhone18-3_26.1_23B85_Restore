@interface TSURectList
+ (id)rectListWithRect:(CGRect)rect;
- (BOOL)isEqual:(id)equal;
- (CGRect)rectAtIndex:(unint64_t)index;
- (TSURectList)initWithRect:(CGRect)rect;
- (TSURectList)initWithRectList:(id)list;
- (id).cxx_construct;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation TSURectList

- (TSURectList)initWithRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v7 = [(TSURectList *)self init];
  v8 = v7;
  if (v7)
  {
    sub_2770B5F44(&v7->mRectList.__begin_, 1uLL);
    p_x = &v8->mRectList.__begin_->origin.x;
    *p_x = x;
    p_x[1] = y;
    p_x[2] = width;
    p_x[3] = height;
  }

  return v8;
}

- (TSURectList)initWithRectList:(id)list
{
  listCopy = list;
  v5 = [(TSURectList *)self init];
  if (v5)
  {
    sub_2770B5F44(&v5->mRectList.__begin_, [listCopy count]);
    v6 = 0;
    for (i = 0; i < [listCopy count]; ++i)
    {
      [listCopy rectAtIndex:i];
      p_x = &v5->mRectList.__begin_[v6].origin.x;
      *p_x = v9;
      p_x[1] = v10;
      p_x[2] = v11;
      p_x[3] = v12;
      ++v6;
    }
  }

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v3 = [TSUMutableRectList alloc];

  return MEMORY[0x2821F9670](v3, sel_initWithRectList_);
}

- (CGRect)rectAtIndex:(unint64_t)index
{
  begin = self->mRectList.__begin_;
  v4 = self->mRectList.__end_ - begin;
  if (v4 <= index)
  {
    v10 = MEMORY[0x277CBEAD8];
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Getting object at %lu from an array with size %lu", index, v4];
    v12 = [v10 exceptionWithName:@"IndexOutOfBound" reason:v11 userInfo:0];
    v13 = v12;

    objc_exception_throw(v12);
  }

  p_x = &begin[index].origin.x;
  v6 = *p_x;
  v7 = p_x[1];
  v8 = p_x[2];
  v9 = p_x[3];
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = TSUDynamicCast(v5, equalCopy);
  v7 = [(TSURectList *)self count];
  if (v6 && (v8 = v7, [v6 count] == v7))
  {
    if (v8)
    {
      v9 = 0;
      v10 = v8 - 1;
      do
      {
        v11 = CGRectEqualToRect(self->mRectList.__begin_[v9], *(v6[1] + v9 * 32));
        v12 = v11;
        v14 = v10-- != 0;
        ++v9;
      }

      while (v11 && v14);
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)hash
{
  v2 = 0xCBF29CE484222325;
  begin = self->mRectList.__begin_;
  end = self->mRectList.__end_;
  while (begin != end)
  {
    origin = begin->origin;
    size = begin->size;
    ++begin;
    v8[0] = origin;
    v8[1] = size;
    v2 = TSUHashWithSeed(v8, 32, v2);
  }

  return v2;
}

+ (id)rectListWithRect:(CGRect)rect
{
  *&v5 = rect.origin.x;
  *(&v5 + 1) = *&rect.origin.y;
  width = rect.size.width;
  height = rect.size.height;
  v3 = objc_opt_new();
  sub_2770B6300(v3 + 8, &v5);

  return v3;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end