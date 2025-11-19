@interface ForcePermitsSearchBarPlacementIntegratedCentered
@end

@implementation ForcePermitsSearchBarPlacementIntegratedCentered

void ___ForcePermitsSearchBarPlacementIntegratedCentered_block_invoke()
{
  if ((_MergedGlobals_123 & 1) == 0)
  {
    v0 = _UIMainBundleIdentifier();
    if ([v0 isEqualToString:@"com.apple.Music"])
    {
      _MergedGlobals_123 = 1;
    }
  }
}

@end