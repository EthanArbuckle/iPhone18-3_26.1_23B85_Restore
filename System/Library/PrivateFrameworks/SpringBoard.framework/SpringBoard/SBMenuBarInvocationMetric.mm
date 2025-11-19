@interface SBMenuBarInvocationMetric
- (BOOL)handleEvent:(unint64_t)a3 withContext:(id)a4;
@end

@implementation SBMenuBarInvocationMetric

- (BOOL)handleEvent:(unint64_t)a3 withContext:(id)a4
{
  if (a3 == 69)
  {
    AnalyticsSendEventLazy();
  }

  return a3 == 69;
}

@end