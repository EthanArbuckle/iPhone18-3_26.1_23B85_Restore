@interface SBAnalyticsCoreAnalyticsEventHandler
- (BOOL)handleEvent:(unint64_t)event withContext:(id)context;
@end

@implementation SBAnalyticsCoreAnalyticsEventHandler

- (BOOL)handleEvent:(unint64_t)event withContext:(id)context
{
  contextCopy = context;
  v5 = NSStringFromAnalyticsEventType();
  eventPayload = [contextCopy eventPayload];

  coreAnalyticsRepresentation = [eventPayload coreAnalyticsRepresentation];
  AnalyticsSendEvent();

  return 1;
}

@end