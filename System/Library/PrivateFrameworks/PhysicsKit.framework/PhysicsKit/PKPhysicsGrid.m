@interface PKPhysicsGrid
- (id).cxx_construct;
- (id)physicsBodyFromSmoothedOutline:(double)a3 size:(CGSize)a4;
- (shared_ptr<PKCGrid>)gridPtr;
- (unsigned)gridDataAtX:(int)a3 y:(int)a4 z:(int)a5;
- (void)setGridPtr:(shared_ptr<PKCGrid>)a3;
@end

@implementation PKPhysicsGrid

- (unsigned)gridDataAtX:(int)a3 y:(int)a4 z:(int)a5
{
  if ((a4 | a3 | a5) < 0)
  {
    return 0;
  }

  ptr = self->grid.__ptr_;
  if (*ptr <= a3 || *(ptr + 1) <= a4 || *(ptr + 2) <= a5)
  {
    return 0;
  }

  else
  {
    return *(*(ptr + 5) + a3 + *ptr * a4);
  }
}

- (id)physicsBodyFromSmoothedOutline:(double)a3 size:(CGSize)a4
{
  v6 = a4;
  v4 = a3;
  PKCGrid::physicsBodyFromSmoothedOutline(self->grid.__ptr_, v4, &v6);
}

- (shared_ptr<PKCGrid>)gridPtr
{
  cntrl = self->grid.__cntrl_;
  *v2 = self->grid.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (void)setGridPtr:(shared_ptr<PKCGrid>)a3
{
  v4 = *a3.__ptr_;
  v3 = *(a3.__ptr_ + 1);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->grid.__cntrl_;
  self->grid.__ptr_ = v4;
  self->grid.__cntrl_ = v3;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end