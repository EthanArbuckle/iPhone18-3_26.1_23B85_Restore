@interface USUncategorizedUsageReporter
+ (USUncategorizedUsageReporter)sharedReporter;
+ (void)startReporting;
- (USUncategorizedUsageReporter)init;
- (void)_startReporting;
@end

@implementation USUncategorizedUsageReporter

+ (USUncategorizedUsageReporter)sharedReporter
{
  if (qword_100091C68[0] != -1)
  {
    sub_100065F14();
  }

  v3 = qword_100091C60;

  return v3;
}

- (USUncategorizedUsageReporter)init
{
  v6.receiver = self;
  v6.super_class = USUncategorizedUsageReporter;
  v2 = [(USUncategorizedUsageReporter *)&v6 init];
  v3 = [[NSBackgroundActivityScheduler alloc] initWithIdentifier:@"com.apple.UsageTrackingAgent.activity.uncategorized-web-usage"];
  backgroundActivity = v2->_backgroundActivity;
  v2->_backgroundActivity = v3;

  return v2;
}

+ (void)startReporting
{
  sharedReporter = [self sharedReporter];
  [sharedReporter _startReporting];
}

- (void)_startReporting
{
  backgroundActivity = [(USUncategorizedUsageReporter *)self backgroundActivity];
  [backgroundActivity setPreregistered:1];
  [backgroundActivity scheduleWithBlock:&stru_100086568];
}

@end