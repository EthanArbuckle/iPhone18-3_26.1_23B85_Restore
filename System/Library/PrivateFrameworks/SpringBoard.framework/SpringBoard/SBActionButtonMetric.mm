@interface SBActionButtonMetric
- (BOOL)handleEvent:(unint64_t)event withContext:(id)context;
@end

@implementation SBActionButtonMetric

- (BOOL)handleEvent:(unint64_t)event withContext:(id)context
{
  contextCopy = context;
  v6 = event - 61;
  if (event - 61 <= 5)
  {
    v7 = NSStringFromAnalyticsEventType();
    v8 = [@"com.apple.springboard." stringByAppendingString:v7];

    v10 = contextCopy;
    AnalyticsSendEventLazy();
  }

  return v6 < 6;
}

id __48__SBActionButtonMetric_handleEvent_withContext___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) eventPayload];
  v2 = [v1 coreAnalyticsRepresentation];

  return v2;
}

@end