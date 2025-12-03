@interface NSUserDefaults(PLKAdditions)
+ (double)plk_overridePerfDescriptorScale;
+ (uint64_t)plk_disableUILabelLRUCache;
+ (uint64_t)plk_dumpMappedImageCache;
+ (uint64_t)plk_forceClassicLegibility;
@end

@implementation NSUserDefaults(PLKAdditions)

+ (uint64_t)plk_dumpMappedImageCache
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__NSUserDefaults_PLKAdditions__plk_dumpMappedImageCache__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (plk_dumpMappedImageCache_onceToken != -1)
  {
    dispatch_once(&plk_dumpMappedImageCache_onceToken, block);
  }

  return plk_dumpMappedImageCache_dumpMappedImageCache;
}

+ (uint64_t)plk_forceClassicLegibility
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__NSUserDefaults_PLKAdditions__plk_forceClassicLegibility__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (plk_forceClassicLegibility_onceToken != -1)
  {
    dispatch_once(&plk_forceClassicLegibility_onceToken, block);
  }

  return plk_forceClassicLegibility_forceClassicLegibility;
}

+ (uint64_t)plk_disableUILabelLRUCache
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__NSUserDefaults_PLKAdditions__plk_disableUILabelLRUCache__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (plk_disableUILabelLRUCache_onceToken != -1)
  {
    dispatch_once(&plk_disableUILabelLRUCache_onceToken, block);
  }

  return plk_disableUILabelLRUCache_disableUILabelLRUCache;
}

+ (double)plk_overridePerfDescriptorScale
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__NSUserDefaults_PLKAdditions__plk_overridePerfDescriptorScale__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (plk_overridePerfDescriptorScale_onceToken != -1)
  {
    dispatch_once(&plk_overridePerfDescriptorScale_onceToken, block);
  }

  return *&plk_overridePerfDescriptorScale_overridePerfDescriptorScale;
}

@end