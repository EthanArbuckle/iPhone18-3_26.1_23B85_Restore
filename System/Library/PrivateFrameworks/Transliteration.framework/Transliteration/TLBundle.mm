@interface TLBundle
+ (id)mainBundle;
@end

@implementation TLBundle

+ (id)mainBundle
{
  v2 = MEMORY[0x277CCA8D8];
  v3 = objc_opt_class();

  return [v2 bundleForClass:v3];
}

@end