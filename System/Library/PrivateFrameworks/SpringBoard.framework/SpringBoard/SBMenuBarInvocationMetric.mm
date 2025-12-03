@interface SBMenuBarInvocationMetric
- (BOOL)handleEvent:(unint64_t)event withContext:(id)context;
@end

@implementation SBMenuBarInvocationMetric

- (BOOL)handleEvent:(unint64_t)event withContext:(id)context
{
  if (event == 69)
  {
    AnalyticsSendEventLazy();
  }

  return event == 69;
}

@end