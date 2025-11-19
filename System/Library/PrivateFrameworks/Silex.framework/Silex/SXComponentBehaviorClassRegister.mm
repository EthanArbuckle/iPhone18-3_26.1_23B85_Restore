@interface SXComponentBehaviorClassRegister
+ (void)registerClasses;
@end

@implementation SXComponentBehaviorClassRegister

+ (void)registerClasses
{
  v2 = objc_opt_class();
  [SXClassFactory registerClass:v2 type:&stru_1F532F6C0 baseClass:objc_opt_class()];
  v3 = objc_opt_class();
  [SXClassFactory registerClass:v3 type:@"background_parallax" baseClass:objc_opt_class()];
  v4 = objc_opt_class();
  [SXClassFactory registerClass:v4 type:@"motion" baseClass:objc_opt_class()];
  v5 = objc_opt_class();
  [SXClassFactory registerClass:v5 type:@"parallax" baseClass:objc_opt_class()];
  v6 = objc_opt_class();
  v7 = objc_opt_class();

  [SXClassFactory registerClass:v6 type:@"springy" baseClass:v7];
}

@end