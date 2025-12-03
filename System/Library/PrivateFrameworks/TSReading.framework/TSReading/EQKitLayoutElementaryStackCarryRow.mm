@interface EQKitLayoutElementaryStackCarryRow
- (EQKitLayoutElementaryStackCarryRow)initWithChildren:(id)children decimalPoint:(unint64_t)point position:(int64_t)position followingSpace:(double)space crossouts:(const void *)crossouts;
- (id).cxx_construct;
- (int)crossoutAtColumnIndex:(unint64_t)index;
@end

@implementation EQKitLayoutElementaryStackCarryRow

- (EQKitLayoutElementaryStackCarryRow)initWithChildren:(id)children decimalPoint:(unint64_t)point position:(int64_t)position followingSpace:(double)space crossouts:(const void *)crossouts
{
  v12.receiver = self;
  v12.super_class = EQKitLayoutElementaryStackCarryRow;
  v8 = [(EQKitLayoutElementaryStackDigitRow *)&v12 initWithChildren:children decimalPoint:point position:position followingSpace:space];
  v9 = v8;
  if (v8)
  {
    p_mCrossouts = &v8->mCrossouts;
    if (&v9->mCrossouts != crossouts)
    {
      std::vector<EQKitTypes::Notation::Enum>::__assign_with_size[abi:nn200100]<EQKitTypes::Notation::Enum*,EQKitTypes::Notation::Enum*>(p_mCrossouts, *crossouts, *(crossouts + 1), (*(crossouts + 1) - *crossouts) >> 2);
    }
  }

  return v9;
}

- (int)crossoutAtColumnIndex:(unint64_t)index
{
  begin = self->mCrossouts.__begin_;
  if (index >= self->mCrossouts.__end_ - begin)
  {
    return 0;
  }

  else
  {
    return begin[index];
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