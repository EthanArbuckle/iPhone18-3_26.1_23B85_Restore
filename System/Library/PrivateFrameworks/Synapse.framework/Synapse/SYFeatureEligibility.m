@interface SYFeatureEligibility
+ (BOOL)supportsQuickNote;
@end

@implementation SYFeatureEligibility

+ (BOOL)supportsQuickNote
{
  if (supportsQuickNote_onceToken != -1)
  {
    +[SYFeatureEligibility supportsQuickNote];
  }

  return supportsQuickNote_supportsQuickNote;
}

uint64_t __41__SYFeatureEligibility_supportsQuickNote__block_invoke()
{
  v2 = *MEMORY[0x277D85DE8];
  result = MGIsDeviceOneOfType();
  supportsQuickNote_supportsQuickNote = result ^ 1;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

@end