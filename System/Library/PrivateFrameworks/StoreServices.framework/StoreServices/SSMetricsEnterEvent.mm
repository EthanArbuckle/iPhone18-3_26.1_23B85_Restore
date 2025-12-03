@interface SSMetricsEnterEvent
- (SSMetricsEnterEvent)init;
- (id)description;
- (void)setEnterTypeWithLaunchReason:(int64_t)reason;
@end

@implementation SSMetricsEnterEvent

- (SSMetricsEnterEvent)init
{
  v5.receiver = self;
  v5.super_class = SSMetricsEnterEvent;
  v2 = [(SSMetricsBaseEvent *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SSMetricsMutableEvent *)v2 setEventType:@"enter"];
  }

  return v3;
}

- (void)setEnterTypeWithLaunchReason:(int64_t)reason
{
  if (reason <= 2)
  {
    [(SSMetricsEnterEvent *)self setEnterType:off_1E84B3CA0[reason]];
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SSMetricsEnterEvent;
  v4 = [(SSMetricsBaseEvent *)&v8 description];
  enterType = [(SSMetricsEnterEvent *)self enterType];
  v6 = [v3 stringWithFormat:@"%@: Type: %@", v4, enterType];

  return v6;
}

@end