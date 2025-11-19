@interface SBActivateApplicationTestRecipe
- (void)handleVolumeDecrease;
- (void)handleVolumeIncrease;
@end

@implementation SBActivateApplicationTestRecipe

- (void)handleVolumeIncrease
{
  v2 = +[SBApplicationController sharedInstance];
  v3 = [v2 applicationWithBundleIdentifier:@"com.apple.mobilenotes"];

  SBWorkspaceActivateApplication(v3);
}

- (void)handleVolumeDecrease
{
  v2 = +[SBApplicationController sharedInstance];
  v3 = [v2 applicationWithBundleIdentifier:@"com.apple.mobilenotes"];

  SBWorkspaceActivateApplicationSuspended(v3);
}

@end