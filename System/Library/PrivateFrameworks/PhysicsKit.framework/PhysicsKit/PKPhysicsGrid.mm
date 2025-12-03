@interface PKPhysicsGrid
- (id).cxx_construct;
- (id)physicsBodyFromSmoothedOutline:(double)outline size:(CGSize)size;
- (shared_ptr<PKCGrid>)gridPtr;
- (unsigned)gridDataAtX:(int)x y:(int)y z:(int)z;
- (void)setGridPtr:(shared_ptr<PKCGrid>)ptr;
@end

@implementation PKPhysicsGrid

- (unsigned)gridDataAtX:(int)x y:(int)y z:(int)z
{
  if ((y | x | z) < 0)
  {
    return 0;
  }

  ptr = self->grid.__ptr_;
  if (*ptr <= x || *(ptr + 1) <= y || *(ptr + 2) <= z)
  {
    return 0;
  }

  else
  {
    return *(*(ptr + 5) + x + *ptr * y);
  }
}

- (id)physicsBodyFromSmoothedOutline:(double)outline size:(CGSize)size
{
  sizeCopy = size;
  outlineCopy = outline;
  PKCGrid::physicsBodyFromSmoothedOutline(self->grid.__ptr_, outlineCopy, &sizeCopy);
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

- (void)setGridPtr:(shared_ptr<PKCGrid>)ptr
{
  v4 = *ptr.__ptr_;
  v3 = *(ptr.__ptr_ + 1);
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