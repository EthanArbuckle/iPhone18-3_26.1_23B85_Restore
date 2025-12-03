@interface ATXHomeScreenStackConfig(SBAdditions)
- (uint64_t)sb_isAppPredictionStack;
@end

@implementation ATXHomeScreenStackConfig(SBAdditions)

- (uint64_t)sb_isAppPredictionStack
{
  widgets = [self widgets];
  if ([widgets count] == 1)
  {
    firstObject = [widgets firstObject];
    extensionBundleId = [firstObject extensionBundleId];
    v4 = [extensionBundleId isEqualToString:*MEMORY[0x277CEB1C0]];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end