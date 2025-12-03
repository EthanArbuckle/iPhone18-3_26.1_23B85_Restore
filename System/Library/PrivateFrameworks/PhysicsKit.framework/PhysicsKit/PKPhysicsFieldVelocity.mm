@interface PKPhysicsFieldVelocity
+ (id)fieldWithGrid:(id)grid;
- (PKPhysicsFieldVelocity)initWithGrid:(id)grid;
- (void)setGrid:(id)grid;
@end

@implementation PKPhysicsFieldVelocity

- (PKPhysicsFieldVelocity)initWithGrid:(id)grid
{
  gridCopy = grid;
  v6.receiver = self;
  v6.super_class = PKPhysicsFieldVelocity;
  if ([(PKPhysicsField *)&v6 init])
  {
    _ZNSt3__115allocate_sharedB8ne200100I16PKCFieldVelocityNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  return 0;
}

- (void)setGrid:(id)grid
{
  gridCopy = grid;
  v5 = gridCopy;
  ptr = self->super._field.__ptr_;
  if (ptr)
  {
    if (gridCopy)
    {
      [gridCopy gridPtr];
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }

    PKCFieldVelocity::setGrid(ptr, &v7);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

+ (id)fieldWithGrid:(id)grid
{
  gridCopy = grid;
  v4 = [[PKPhysicsFieldVelocity alloc] initWithGrid:gridCopy];

  return v4;
}

@end