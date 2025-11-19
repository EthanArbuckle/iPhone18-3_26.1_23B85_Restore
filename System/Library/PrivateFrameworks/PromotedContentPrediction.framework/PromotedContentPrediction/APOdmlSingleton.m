@interface APOdmlSingleton
+ (id)sharedInstance;
@end

@implementation APOdmlSingleton

+ (id)sharedInstance
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  objc_msgSend_raise_format_(v2, v5, @"Call to unimplemented sharedInstance", @"%@ does not implement sharedInstance. Add the CREATE_SHARED_INSTANCE macro to the @implementation", v4);

  return 0;
}

@end