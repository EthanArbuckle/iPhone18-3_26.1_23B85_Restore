@interface CHSWidget(PRAdditions)
- (uint64_t)pr_isWorldClockWidget;
@end

@implementation CHSWidget(PRAdditions)

- (uint64_t)pr_isWorldClockWidget
{
  v1 = [a1 extensionIdentity];
  v2 = [v1 extensionBundleIdentifier];
  v3 = [v2 isEqualToString:@"com.apple.mobiletimer.WorldClockWidget"];

  return v3;
}

@end