@interface UIIsPrivateMainBundleNotIncludingTestHarness
@end

@implementation UIIsPrivateMainBundleNotIncludingTestHarness

void ___UIIsPrivateMainBundleNotIncludingTestHarness_block_invoke()
{
  v1 = _UIMainBundleIdentifier();
  if ([v1 hasPrefix:@"com.apple."])
  {
    v0 = _UIMainBundleIdentifier();
    byte_1ED4A26D1 = [v0 hasPrefix:@"com.apple.dt.xctest"] ^ 1;
  }

  else
  {
    byte_1ED4A26D1 = 0;
  }
}

@end