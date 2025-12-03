@interface SSMetricsAccountEvent
- (SSMetricsAccountEvent)init;
- (void)setAccountEventTypeWithEventIdentifier:(int64_t)identifier;
@end

@implementation SSMetricsAccountEvent

- (SSMetricsAccountEvent)init
{
  v5.receiver = self;
  v5.super_class = SSMetricsAccountEvent;
  v2 = [(SSMetricsBaseEvent *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SSMetricsMutableEvent *)v2 setEventType:@"account"];
  }

  return v3;
}

- (void)setAccountEventTypeWithEventIdentifier:(int64_t)identifier
{
  if (identifier)
  {
    if (identifier != 1)
    {
      return;
    }

    v3 = @"signedOut";
  }

  else
  {
    v3 = @"signedIn";
  }

  [(SSMetricsAccountEvent *)self setAccountEventType:v3];
}

@end