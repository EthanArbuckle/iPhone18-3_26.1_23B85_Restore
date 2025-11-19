@interface PSIsValueRestrictedByMCFeature
@end

@implementation PSIsValueRestrictedByMCFeature

BOOL ___PSIsValueRestrictedByMCFeature_block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E69ADFB8];
  v3 = a2;
  v4 = [v2 sharedConnection];
  v5 = [v4 effectiveBoolValueForSetting:v3];

  return v5 == 2;
}

@end