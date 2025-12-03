@interface SMActivityManager
+ (BOOL)hasActivity;
+ (void)endActivities;
+ (void)startActivityWithState:(id)state localState:(id)localState;
@end

@implementation SMActivityManager

+ (void)startActivityWithState:(id)state localState:(id)localState
{
  localStateCopy = localState;
  stateCopy = state;
  v7 = +[SMActivityManager shared];
  [v7 startActivityWith:stateCopy localState:localStateCopy];
}

+ (void)endActivities
{
  v2 = +[SMActivityManager shared];
  [v2 endActivities];
}

+ (BOOL)hasActivity
{
  v2 = +[SMActivityManager shared];
  hasActivity = [v2 hasActivity];

  return hasActivity;
}

@end