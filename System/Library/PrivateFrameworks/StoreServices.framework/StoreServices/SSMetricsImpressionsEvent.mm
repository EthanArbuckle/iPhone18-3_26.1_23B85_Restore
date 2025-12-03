@interface SSMetricsImpressionsEvent
- (SSMetricsImpressionsEvent)init;
- (id)description;
@end

@implementation SSMetricsImpressionsEvent

- (SSMetricsImpressionsEvent)init
{
  v5.receiver = self;
  v5.super_class = SSMetricsImpressionsEvent;
  v2 = [(SSMetricsBaseEvent *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SSMetricsMutableEvent *)v2 setEventType:@"impressions"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SSMetricsImpressionsEvent;
  v4 = [(SSMetricsBaseEvent *)&v8 description];
  impressionIdentifiers = [(SSMetricsImpressionsEvent *)self impressionIdentifiers];
  v6 = [v3 stringWithFormat:@"%@: Count: %ld", v4, objc_msgSend(impressionIdentifiers, "count")];

  return v6;
}

@end