@interface EQKitLayoutElementaryStackCarryRow
- (EQKitLayoutElementaryStackCarryRow)initWithChildren:(id)a3 decimalPoint:(unint64_t)a4 position:(int64_t)a5 followingSpace:(double)a6 crossouts:(const void *)a7;
- (id).cxx_construct;
- (int)crossoutAtColumnIndex:(unint64_t)a3;
@end

@implementation EQKitLayoutElementaryStackCarryRow

- (EQKitLayoutElementaryStackCarryRow)initWithChildren:(id)a3 decimalPoint:(unint64_t)a4 position:(int64_t)a5 followingSpace:(double)a6 crossouts:(const void *)a7
{
  v12.receiver = self;
  v12.super_class = EQKitLayoutElementaryStackCarryRow;
  v8 = [(EQKitLayoutElementaryStackDigitRow *)&v12 initWithChildren:a3 decimalPoint:a4 position:a5 followingSpace:a6];
  v9 = v8;
  if (v8)
  {
    p_mCrossouts = &v8->mCrossouts;
    if (&v9->mCrossouts != a7)
    {
      sub_275C8E0E0(p_mCrossouts, *a7, *(a7 + 1), (*(a7 + 1) - *a7) >> 2);
    }
  }

  return v9;
}

- (int)crossoutAtColumnIndex:(unint64_t)a3
{
  begin = self->mCrossouts.__begin_;
  if (a3 >= self->mCrossouts.__end_ - begin)
  {
    return 0;
  }

  else
  {
    return begin[a3];
  }
}

- (id).cxx_construct
{
  *(self + 6) = 0;
  *(self + 7) = 0;
  *(self + 5) = 0;
  return self;
}

@end