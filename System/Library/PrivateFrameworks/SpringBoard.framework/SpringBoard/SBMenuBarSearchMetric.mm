@interface SBMenuBarSearchMetric
- (BOOL)handleEvent:(unint64_t)event withContext:(id)context;
@end

@implementation SBMenuBarSearchMetric

- (BOOL)handleEvent:(unint64_t)event withContext:(id)context
{
  if (event == 71)
  {
    AnalyticsSendEventLazy();
  }

  return event == 71;
}

@end