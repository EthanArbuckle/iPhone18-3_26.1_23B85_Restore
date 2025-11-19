@interface SBMenuBarSearchMetric
- (BOOL)handleEvent:(unint64_t)a3 withContext:(id)a4;
@end

@implementation SBMenuBarSearchMetric

- (BOOL)handleEvent:(unint64_t)a3 withContext:(id)a4
{
  if (a3 == 71)
  {
    AnalyticsSendEventLazy();
  }

  return a3 == 71;
}

@end