@interface TITrialManagerProxy
+ (TITrialManager)sharedManager;
@end

@implementation TITrialManagerProxy

+ (TITrialManager)sharedManager
{
  if (sharedManagerOverride)
  {
    v2 = sharedManagerOverride;
  }

  else
  {
    v2 = +[TITrialManager sharedInstance];
  }

  return v2;
}

@end