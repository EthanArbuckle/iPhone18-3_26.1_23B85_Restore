@interface SMActivityManager
+ (BOOL)hasActivity;
+ (void)endActivities;
+ (void)startActivityWithState:(id)a3 localState:(id)a4;
@end

@implementation SMActivityManager

+ (void)startActivityWithState:(id)a3 localState:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[SMActivityManager shared];
  [v7 startActivityWith:v6 localState:v5];
}

+ (void)endActivities
{
  v2 = +[SMActivityManager shared];
  [v2 endActivities];
}

+ (BOOL)hasActivity
{
  v2 = +[SMActivityManager shared];
  v3 = [v2 hasActivity];

  return v3;
}

@end