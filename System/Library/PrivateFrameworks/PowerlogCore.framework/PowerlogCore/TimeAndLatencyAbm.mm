@interface TimeAndLatencyAbm
- (TimeAndLatencyAbm)initWithTime:(id)time andLatency:(double)latency;
@end

@implementation TimeAndLatencyAbm

- (TimeAndLatencyAbm)initWithTime:(id)time andLatency:(double)latency
{
  timeCopy = time;
  v11.receiver = self;
  v11.super_class = TimeAndLatencyAbm;
  v8 = [(TimeAndLatencyAbm *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_time, time);
    v9->_latency = latency;
  }

  return v9;
}

@end