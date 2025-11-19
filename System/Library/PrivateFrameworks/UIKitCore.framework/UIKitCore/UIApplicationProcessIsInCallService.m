@interface UIApplicationProcessIsInCallService
@end

@implementation UIApplicationProcessIsInCallService

void ___UIApplicationProcessIsInCallService_block_invoke()
{
  v0 = _UIMainBundleIdentifier();
  byte_1EA992DC0 = [v0 isEqualToString:@"com.apple.InCallService"];
}

@end