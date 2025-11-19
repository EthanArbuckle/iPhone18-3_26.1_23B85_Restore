@interface SXDataFormatClassRegister
+ (void)registerClasses;
@end

@implementation SXDataFormatClassRegister

+ (void)registerClasses
{
  v2 = objc_opt_class();
  [SXClassFactory registerClass:v2 type:@"data" baseClass:objc_opt_class()];
  v3 = objc_opt_class();
  [SXClassFactory registerClass:v3 type:@"image" baseClass:objc_opt_class()];
  v4 = objc_opt_class();
  v5 = objc_opt_class();

  [SXClassFactory registerClass:v4 type:@"float" baseClass:v5];
}

@end