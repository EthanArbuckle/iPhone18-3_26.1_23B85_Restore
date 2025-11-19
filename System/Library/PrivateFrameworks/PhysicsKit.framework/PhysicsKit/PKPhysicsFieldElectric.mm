@interface PKPhysicsFieldElectric
+ (id)field;
- (PKPhysicsFieldElectric)init;
@end

@implementation PKPhysicsFieldElectric

- (PKPhysicsFieldElectric)init
{
  v3.receiver = self;
  v3.super_class = PKPhysicsFieldElectric;
  [(PKPhysicsField *)&v3 init];
  _ZNSt3__115allocate_sharedB8ne200100I16PKCFieldElectricNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

+ (id)field
{
  v2 = objc_alloc_init(PKPhysicsFieldElectric);

  return v2;
}

@end