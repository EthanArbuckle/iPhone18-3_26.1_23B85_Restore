@interface SBAnalyticsCoreAnalyticsEventHandler
- (BOOL)handleEvent:(unint64_t)a3 withContext:(id)a4;
@end

@implementation SBAnalyticsCoreAnalyticsEventHandler

- (BOOL)handleEvent:(unint64_t)a3 withContext:(id)a4
{
  v4 = a4;
  v5 = NSStringFromAnalyticsEventType();
  v6 = [v4 eventPayload];

  v7 = [v6 coreAnalyticsRepresentation];
  AnalyticsSendEvent();

  return 1;
}

@end