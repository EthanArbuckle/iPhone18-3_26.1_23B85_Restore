@interface PKPhysicsFieldVortex
+ (id)field;
- (PKPhysicsFieldVortex)init;
@end

@implementation PKPhysicsFieldVortex

- (PKPhysicsFieldVortex)init
{
  v3.receiver = self;
  v3.super_class = PKPhysicsFieldVortex;
  [(PKPhysicsField *)&v3 init];
  _ZNSt3__115allocate_sharedB8ne200100I14PKCFieldVortexNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

+ (id)field
{
  v2 = objc_alloc_init(PKPhysicsFieldVortex);

  return v2;
}

@end