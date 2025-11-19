@interface UIApplicationIsAppleAppOrTestingHarness
@end

@implementation UIApplicationIsAppleAppOrTestingHarness

void ___UIApplicationIsAppleAppOrTestingHarness_block_invoke()
{
  v0 = +[UIApplication displayIdentifier];
  byte_1EA9946E4 = [v0 hasPrefix:@"com.apple."];

  v1 = +[UIApplication displayIdentifier];
  byte_1EA9946E5 = [v1 isEqualToString:@"com.ios.uikit.TestingHarness"];
}

@end