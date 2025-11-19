@interface TSTMergeRangeSortedSet
- ($AA9F29356CAB8C7531B71D0D1ACCC7CE)begin;
- ($AA9F29356CAB8C7531B71D0D1ACCC7CE)iter;
- (BOOL)isCheckbox;
- (CGSize)getSize;
- (TSTMergeRangeSortedSet)init;
- (UIEdgeInsets)getPaddingInsets;
- (void)addRange:(id)a3 andSize:(CGSize)a4 andPaddingInsets:(UIEdgeInsets)a5 andIsCheckbox:(BOOL)a6;
- (void)dealloc;
- (void)reset;
@end

@implementation TSTMergeRangeSortedSet

- (TSTMergeRangeSortedSet)init
{
  v3.receiver = self;
  v3.super_class = TSTMergeRangeSortedSet;
  if ([(TSTMergeRangeSortedSet *)&v3 init])
  {
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  mSet = self->mSet;
  if (mSet)
  {
    std::__tree<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::__map_value_compare<std::pair<unsigned short,EQKit::Config::Operator::Form>,std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::less<std::pair<unsigned short,EQKit::Config::Operator::Form>>,true>,std::allocator<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>>>::destroy(self->mSet, mSet[1]);
    MEMORY[0x26D6A9A30](mSet, 0x1020C4062D53EE8);
  }

  dispatch_release(self->mSem);
  v4.receiver = self;
  v4.super_class = TSTMergeRangeSortedSet;
  [(TSTMergeRangeSortedSet *)&v4 dealloc];
}

- (void)addRange:(id)a3 andSize:(CGSize)a4 andPaddingInsets:(UIEdgeInsets)a5 andIsCheckbox:(BOOL)a6
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = ((LOBYTE(a3.var1.var0) + a3.var0.var1 - 1) | ((*&a3.var0 + a3.var1.var1) << 16)) - 0x10000;
  v11 = a6;
  dispatch_semaphore_wait(self->mSem, 0xFFFFFFFFFFFFFFFFLL);
  std::__tree<TSTMergeRangeElem,TSTMergeRangeElemCompare,std::allocator<TSTMergeRangeElem>>::__emplace_unique_key_args<TSTMergeRangeElem,TSTMergeRangeElem const&>(self->mSet, &v7);
  dispatch_semaphore_signal(self->mSem);
}

- ($AA9F29356CAB8C7531B71D0D1ACCC7CE)begin
{
  mSet = self->mSet;
  v3 = *mSet;
  self->mIter.__ptr_ = *mSet;
  if (v3 == (mSet + 1))
  {
    return 0xFFFFFFLL;
  }

  else
  {
    return v3[4];
  }
}

- ($AA9F29356CAB8C7531B71D0D1ACCC7CE)iter
{
  ptr = self->mIter.__ptr_;
  v3 = *(ptr + 1);
  if (v3)
  {
    do
    {
      v4 = v3;
      v3 = *v3;
    }

    while (v3);
  }

  else
  {
    do
    {
      v4 = *(ptr + 2);
      v5 = *v4 == ptr;
      ptr = v4;
    }

    while (!v5);
  }

  self->mIter.__ptr_ = v4;
  if (v4 == self->mSet + 1)
  {
    return 0xFFFFFFLL;
  }

  else
  {
    return v4[4];
  }
}

- (CGSize)getSize
{
  ptr = self->mIter.__ptr_;
  if (ptr == self->mSet + 1)
  {
    v3 = 0.0;
    v4 = 0.0;
  }

  else
  {
    v3 = ptr[5];
    v4 = ptr[6];
  }

  result.height = v4;
  result.width = v3;
  return result;
}

- (BOOL)isCheckbox
{
  ptr = self->mIter.__ptr_;
  if (ptr == self->mSet + 8)
  {
    v3 = 0;
  }

  else
  {
    v3 = ptr[92];
  }

  return v3 & 1;
}

- (UIEdgeInsets)getPaddingInsets
{
  ptr = self->mIter.__ptr_;
  v3 = &TSDEdgeInsetsZero + 1;
  v4 = ptr == self->mSet + 1;
  v5 = ptr + 7;
  v6 = ptr + 8;
  v7 = ptr + 9;
  v8 = ptr + 10;
  if (v4)
  {
    v5 = &TSDEdgeInsetsZero;
  }

  else
  {
    v3 = v6;
  }

  if (v4)
  {
    v9 = &qword_26CA652C0;
  }

  else
  {
    v9 = v7;
  }

  if (v4)
  {
    v8 = &qword_26CA652C8;
  }

  v10 = *v8;
  v11 = *v9;
  v12 = *v5;
  v13 = *v3;
  result.right = v10;
  result.bottom = v11;
  result.left = v13;
  result.top = v12;
  return result;
}

- (void)reset
{
  dispatch_semaphore_wait(self->mSem, 0xFFFFFFFFFFFFFFFFLL);
  mSet = self->mSet;
  std::__tree<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::__map_value_compare<std::pair<unsigned short,EQKit::Config::Operator::Form>,std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::less<std::pair<unsigned short,EQKit::Config::Operator::Form>>,true>,std::allocator<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>>>::destroy(mSet, *(mSet + 1));
  *mSet = mSet + 8;
  *(mSet + 2) = 0;
  *(mSet + 1) = 0;
  self->mIter.__ptr_ = *self->mSet;
  mSem = self->mSem;

  dispatch_semaphore_signal(mSem);
}

@end