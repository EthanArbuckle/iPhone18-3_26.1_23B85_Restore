@interface PKPhysicsFieldNoise
+ (id)field;
- (PKPhysicsFieldNoise)init;
- (PKPhysicsFieldNoise)initWithField:(shared_ptr<PKCField>)a3;
- (float)animationSpeed;
- (float)smoothness;
- (void)setAnimationSpeed:(float)a3;
- (void)setSmoothness:(float)a3;
@end

@implementation PKPhysicsFieldNoise

- (PKPhysicsFieldNoise)init
{
  v3.receiver = self;
  v3.super_class = PKPhysicsFieldNoise;
  [(PKPhysicsField *)&v3 init];
  _ZNSt3__115allocate_sharedB8ne200100I13PKCFieldNoiseNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

- (PKPhysicsFieldNoise)initWithField:(shared_ptr<PKCField>)a3
{
  ptr = a3.__ptr_;
  v10.receiver = self;
  v10.super_class = PKPhysicsFieldNoise;
  v4 = [(PKPhysicsField *)&v10 init:a3.__ptr_];
  v5 = v4;
  v7 = *ptr;
  v6 = *(ptr + 1);
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = v4->super._field.__cntrl_;
  v5->super._field.__ptr_ = v7;
  v5->super._field.__cntrl_ = v6;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }

  return v5;
}

+ (id)field
{
  v2 = objc_alloc_init(PKPhysicsFieldNoise);

  return v2;
}

- (float)smoothness
{
  ptr = self->super._field.__ptr_;
  if (ptr)
  {
    return *(ptr + 62);
  }

  else
  {
    return 1.0;
  }
}

- (void)setSmoothness:(float)a3
{
  ptr = self->super._field.__ptr_;
  if (ptr)
  {
    *(ptr + 62) = a3;
  }
}

- (float)animationSpeed
{
  ptr = self->super._field.__ptr_;
  if (ptr)
  {
    return *(ptr + 63);
  }

  else
  {
    return 1.0;
  }
}

- (void)setAnimationSpeed:(float)a3
{
  ptr = self->super._field.__ptr_;
  if (ptr)
  {
    *(ptr + 63) = a3;
  }
}

@end