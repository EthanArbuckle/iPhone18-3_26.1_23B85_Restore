@interface BRCFPFSFeatureFlag
+ (void)removeFPFSFeatureFlagUserDefaults;
@end

@implementation BRCFPFSFeatureFlag

+ (void)removeFPFSFeatureFlagUserDefaults
{
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.iclouddrive.features"];
  dictionaryRepresentation = [v2 dictionaryRepresentation];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__BRCFPFSFeatureFlag_removeFPFSFeatureFlagUserDefaults__block_invoke;
  v5[3] = &unk_278500270;
  v6 = v2;
  v4 = v2;
  [dictionaryRepresentation enumerateKeysAndObjectsUsingBlock:v5];
}

void __55__BRCFPFSFeatureFlag_removeFPFSFeatureFlagUserDefaults__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 containsString:@"FPFS"])
  {
    [*(a1 + 32) removeObjectForKey:v3];
  }
}

@end