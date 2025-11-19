@interface PKPhysicsFieldSpring
+ (id)field;
- (PKPhysicsFieldSpring)init;
@end

@implementation PKPhysicsFieldSpring

- (PKPhysicsFieldSpring)init
{
  v3.receiver = self;
  v3.super_class = PKPhysicsFieldSpring;
  [(PKPhysicsField *)&v3 init];
  _ZNSt3__115allocate_sharedB8ne200100I14PKCFieldSpringNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

+ (id)field
{
  v2 = objc_alloc_init(PKPhysicsFieldSpring);

  return v2;
}

@end