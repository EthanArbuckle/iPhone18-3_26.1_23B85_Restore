@interface SXJSONActionClassRegister
+ (void)registerClasses;
@end

@implementation SXJSONActionClassRegister

+ (void)registerClasses
{
  v2 = objc_opt_class();
  [SXClassFactory registerClass:v2 type:@"close" baseClass:objc_opt_class()];
  v3 = objc_opt_class();
  [SXClassFactory registerClass:v3 type:@"link" baseClass:objc_opt_class()];
  v4 = objc_opt_class();
  v5 = objc_opt_class();

  [SXClassFactory registerClass:v4 type:@"subscribe" baseClass:v5];
}

@end