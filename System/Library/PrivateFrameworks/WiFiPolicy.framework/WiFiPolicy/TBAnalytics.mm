@interface TBAnalytics
+ (void)captureEvent:(id)event;
@end

@implementation TBAnalytics

+ (void)captureEvent:(id)event
{
  eventCopy = event;
  eventName = [eventCopy eventName];
  v5 = eventName;
  if (eventName)
  {
    if (eventCopy)
    {
      v6 = eventCopy;
      AnalyticsSendEventLazy();
    }

    else
    {
      NSLog(&cfstr_SEventIsNilFor.isa, "+[TBAnalytics captureEvent:]", eventName);
    }
  }

  else
  {
    NSLog(&cfstr_SEventNameIsNi.isa, "+[TBAnalytics captureEvent:]");
  }
}

@end