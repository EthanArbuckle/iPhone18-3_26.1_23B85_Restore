@interface IMMetricsTimerEvent
- (IMMetricsTimerEvent)init;
- (double)duration;
- (id)shortDescription;
- (void)setDuration:(double)duration;
@end

@implementation IMMetricsTimerEvent

- (id)shortDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = IMMetricsTimerEvent;
  shortDescription = [(AMSMetricsEvent *)&v8 shortDescription];
  [(IMMetricsTimerEvent *)self duration];
  v6 = [v3 stringWithFormat:@"%@, %f", shortDescription, v5];

  return v6;
}

- (double)duration
{
  v2 = [(IMMetricsTimerEvent *)self propertyForBodyKey:@"duration"];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (IMMetricsTimerEvent)init
{
  v5.receiver = self;
  v5.super_class = IMMetricsTimerEvent;
  v2 = [(IMAMSMetricsEvent *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(IMAMSMetricsEvent *)v2 setEventType:@"timer"];
  }

  return v3;
}

- (void)setDuration:(double)duration
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:duration];
  [(AMSMetricsEvent *)self im_setProperty:v4 forBodyKey:@"duration"];
}

@end