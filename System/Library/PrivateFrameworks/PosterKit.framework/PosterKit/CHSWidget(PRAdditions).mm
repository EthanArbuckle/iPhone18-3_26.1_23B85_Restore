@interface CHSWidget(PRAdditions)
- (uint64_t)pr_isWorldClockWidget;
@end

@implementation CHSWidget(PRAdditions)

- (uint64_t)pr_isWorldClockWidget
{
  extensionIdentity = [self extensionIdentity];
  extensionBundleIdentifier = [extensionIdentity extensionBundleIdentifier];
  v3 = [extensionBundleIdentifier isEqualToString:@"com.apple.mobiletimer.WorldClockWidget"];

  return v3;
}

@end