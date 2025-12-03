@interface REBundleConfiguration
+ (void)initialize;
@end

@implementation REBundleConfiguration

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.NanoTimeKit.face"];
    [v2 registerDefaults:&unk_283BBDB48];
  }
}

@end