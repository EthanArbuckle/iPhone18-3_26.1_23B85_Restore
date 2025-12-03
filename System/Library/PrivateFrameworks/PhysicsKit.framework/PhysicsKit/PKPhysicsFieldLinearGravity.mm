@interface PKPhysicsFieldLinearGravity
+ (id)field;
- (PKPhysicsFieldLinearGravity)init;
- (double)direction;
- (void)setDirection:(PKPhysicsFieldLinearGravity *)self;
@end

@implementation PKPhysicsFieldLinearGravity

- (PKPhysicsFieldLinearGravity)init
{
  v3.receiver = self;
  v3.super_class = PKPhysicsFieldLinearGravity;
  [(PKPhysicsField *)&v3 init];
  _ZNSt3__115allocate_sharedB8ne200100I21PKCFieldLinearGravityNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

+ (id)field
{
  v2 = objc_alloc_init(PKPhysicsFieldLinearGravity);

  return v2;
}

- (double)direction
{
  v1 = *(self + 8);
  if (v1)
  {
    v2 = *(v1 + 256);
  }

  else
  {
    *&v2 = 0;
  }

  return *&v2;
}

- (void)setDirection:(PKPhysicsFieldLinearGravity *)self
{
  v4 = v2;
  ptr = self->super._field.__ptr_;
  if (ptr)
  {
    PKCFieldLinearGravity::setGravity(ptr, &v4);
  }
}

@end