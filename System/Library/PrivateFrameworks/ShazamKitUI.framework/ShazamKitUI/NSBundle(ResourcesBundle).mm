@interface NSBundle(ResourcesBundle)
+ (uint64_t)sh_UIBundle;
@end

@implementation NSBundle(ResourcesBundle)

+ (uint64_t)sh_UIBundle
{
  v0 = MEMORY[0x277CCA8D8];
  v1 = objc_opt_class();

  return [v0 bundleForClass:v1];
}

@end