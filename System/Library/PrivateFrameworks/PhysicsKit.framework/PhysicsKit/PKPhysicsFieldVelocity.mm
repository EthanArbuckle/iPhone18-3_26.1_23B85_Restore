@interface PKPhysicsFieldVelocity
+ (id)fieldWithGrid:(id)a3;
- (PKPhysicsFieldVelocity)initWithGrid:(id)a3;
- (void)setGrid:(id)a3;
@end

@implementation PKPhysicsFieldVelocity

- (PKPhysicsFieldVelocity)initWithGrid:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = PKPhysicsFieldVelocity;
  if ([(PKPhysicsField *)&v6 init])
  {
    _ZNSt3__115allocate_sharedB8ne200100I16PKCFieldVelocityNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  return 0;
}

- (void)setGrid:(id)a3
{
  v4 = a3;
  v5 = v4;
  ptr = self->super._field.__ptr_;
  if (ptr)
  {
    if (v4)
    {
      [v4 gridPtr];
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

+ (id)fieldWithGrid:(id)a3
{
  v3 = a3;
  v4 = [[PKPhysicsFieldVelocity alloc] initWithGrid:v3];

  return v4;
}

@end