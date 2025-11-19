@interface UIKeyWindowSceneStackProcessIsInputIntelligenceUITestRunner
@end

@implementation UIKeyWindowSceneStackProcessIsInputIntelligenceUITestRunner

void ___UIKeyWindowSceneStackProcessIsInputIntelligenceUITestRunner_block_invoke()
{
  if (os_variant_has_internal_diagnostics())
  {
    v0 = _UIMainBundleIdentifier();
    _MergedGlobals_975 = [v0 isEqualToString:@"com.apple.InputIntelligenceUITests-iOS-All.xctrunner"];
  }

  else
  {
    _MergedGlobals_975 = 0;
  }
}

@end