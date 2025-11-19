@interface SSMetricsPurchaseEvent
- (SSMetricsPurchaseEvent)init;
- (double)requestStartTime;
- (double)responseEndTime;
- (double)responseStartTime;
- (void)addFieldsFromPurchaseResponse:(id)a3;
- (void)setRequestStartTime:(double)a3;
- (void)setResponseEndTime:(double)a3;
- (void)setResponseStartTime:(double)a3;
@end

@implementation SSMetricsPurchaseEvent

- (SSMetricsPurchaseEvent)init
{
  v5.receiver = self;
  v5.super_class = SSMetricsPurchaseEvent;
  v2 = [(SSMetricsBaseEvent *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SSMetricsMutableEvent *)v2 setEventType:@"buyConfirmed"];
  }

  return v3;
}

- (void)addFieldsFromPurchaseResponse:(id)a3
{
  v8 = a3;
  v4 = [v8 responseMetrics];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SSMetricsMutableEvent *)self addPropertiesWithDictionary:v4];
  }

  [v8 requestStartTime];
  if (v5 > 2.22044605e-16)
  {
    [(SSMetricsPurchaseEvent *)self setRequestStartTime:?];
  }

  [v8 responseEndTime];
  if (v6 > 2.22044605e-16)
  {
    [(SSMetricsPurchaseEvent *)self setResponseEndTime:?];
  }

  [v8 responseStartTime];
  if (v7 > 2.22044605e-16)
  {
    [(SSMetricsPurchaseEvent *)self setResponseStartTime:?];
  }
}

- (double)requestStartTime
{
  v3 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"requestStartTime"];
  [(SSMetricsEvent *)self timeIntervalFromMilliseconds:v3];
  v5 = v4;

  return v5;
}

- (double)responseEndTime
{
  v3 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"responseEndTime"];
  [(SSMetricsEvent *)self timeIntervalFromMilliseconds:v3];
  v5 = v4;

  return v5;
}

- (double)responseStartTime
{
  v3 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"responseStartTime"];
  [(SSMetricsEvent *)self timeIntervalFromMilliseconds:v3];
  v5 = v4;

  return v5;
}

- (void)setRequestStartTime:(double)a3
{
  if (a3 == 0.0)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(SSMetricsEvent *)self millisecondsFromTimeInterval:?];
  }

  v5 = v4;
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"requestStartTime"];
}

- (void)setResponseEndTime:(double)a3
{
  if (a3 == 0.0)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(SSMetricsEvent *)self millisecondsFromTimeInterval:?];
  }

  v5 = v4;
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"responseEndTime"];
}

- (void)setResponseStartTime:(double)a3
{
  if (a3 == 0.0)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(SSMetricsEvent *)self millisecondsFromTimeInterval:?];
  }

  v5 = v4;
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"responseStartTime"];
}

@end