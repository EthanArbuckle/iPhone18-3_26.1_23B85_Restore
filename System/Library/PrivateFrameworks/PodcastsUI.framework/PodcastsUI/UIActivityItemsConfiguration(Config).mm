@interface UIActivityItemsConfiguration(Config)
+ (id)mt_configurationWithActivityItems:()Config;
@end

@implementation UIActivityItemsConfiguration(Config)

+ (id)mt_configurationWithActivityItems:()Config
{
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 count])
  {
    v5 = [objc_alloc(MEMORY[0x277D750F0]) _initWithActivityItems:v4 applicationActivities:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end