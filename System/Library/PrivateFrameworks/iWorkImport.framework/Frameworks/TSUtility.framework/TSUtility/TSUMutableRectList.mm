@interface TSUMutableRectList
- (id)copyWithZone:(_NSZone *)zone;
- (void)addRect:(CGRect)rect;
- (void)addRectList:(id)list;
- (void)applyTransform:(CGAffineTransform *)transform;
- (void)setList:(id)list;
@end

@implementation TSUMutableRectList

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [TSURectList alloc];

  return MEMORY[0x2821F9670](v3, sel_initWithRectList_);
}

- (void)addRect:(CGRect)rect
{
  *&v3 = rect.origin.x;
  *(&v3 + 1) = *&rect.origin.y;
  width = rect.size.width;
  height = rect.size.height;
  sub_2770B6300(&self->super.mRectList, &v3);
}

- (void)addRectList:(id)list
{
  end = self->super.mRectList.__end_;
  listCopy = list;
  v6 = listCopy[1];
  v7 = listCopy[2];

  sub_2770B694C(&self->super.mRectList, end, v6, v7, (v7 - v6) >> 5);
}

- (void)setList:(id)list
{
  listCopy = list;
  if (self != listCopy)
  {
    sub_2770B6C88(&self->super.mRectList.__begin_, listCopy[1], listCopy[2], (listCopy[2] - listCopy[1]) >> 5);
  }
}

- (void)applyTransform:(CGAffineTransform *)transform
{
  begin = self->super.mRectList.__begin_;
  v6 = self->super.mRectList.__end_ - begin;
  if (v6)
  {
    v13 = v3;
    v14 = v4;
    v8 = v6 >> 5;
    if (v8 <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    p_size = &begin->size;
    do
    {
      v15 = *&p_size[-1].width;
      v11 = *&transform->c;
      *&v12.a = *&transform->a;
      *&v12.c = v11;
      *&v12.tx = *&transform->tx;
      *&p_size[-1].width = CGRectApplyAffineTransform(v15, &v12);
      p_size += 2;
      --v9;
    }

    while (v9);
  }
}

@end