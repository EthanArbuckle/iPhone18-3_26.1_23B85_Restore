@interface TBAnalytics
+ (void)captureEvent:(id)a3;
@end

@implementation TBAnalytics

+ (void)captureEvent:(id)a3
{
  v3 = a3;
  v4 = [v3 eventName];
  v5 = v4;
  if (v4)
  {
    if (v3)
    {
      v6 = v3;
      AnalyticsSendEventLazy();
    }

    else
    {
      NSLog(&cfstr_SEventIsNilFor.isa, "+[TBAnalytics captureEvent:]", v4);
    }
  }

  else
  {
    NSLog(&cfstr_SEventNameIsNi.isa, "+[TBAnalytics captureEvent:]");
  }
}

@end