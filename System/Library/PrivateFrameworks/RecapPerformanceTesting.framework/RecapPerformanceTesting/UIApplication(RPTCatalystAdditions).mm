@interface UIApplication(RPTCatalystAdditions)
+ (uint64_t)nsApplication;
@end

@implementation UIApplication(RPTCatalystAdditions)

+ (uint64_t)nsApplication
{
  v0 = NSClassFromString(&cfstr_Nsapplication.isa);

  return [(objc_class *)v0 sharedApplication];
}

@end