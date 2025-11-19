@interface WFLinkStartStopwatchAction
- (id)sessionKitSessionConfiguration;
- (id)sessionKitSessionInvocationType;
@end

@implementation WFLinkStartStopwatchAction

- (id)sessionKitSessionInvocationType
{
  if (_os_feature_enabled_impl())
  {
    v2 = @"Manual";
    v3 = @"Manual";
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)sessionKitSessionConfiguration
{
  if (_os_feature_enabled_impl())
  {
    v2 = [[WFActionSessionKitSessionConfiguration alloc] initWithBundleIdentifier:@"com.apple.mobiletimerd" toastDurationPerRunSource:0];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end