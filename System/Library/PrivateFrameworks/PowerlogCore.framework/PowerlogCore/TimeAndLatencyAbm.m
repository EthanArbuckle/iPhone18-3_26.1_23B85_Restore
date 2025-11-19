@interface TimeAndLatencyAbm
- (TimeAndLatencyAbm)initWithTime:(id)a3 andLatency:(double)a4;
@end

@implementation TimeAndLatencyAbm

- (TimeAndLatencyAbm)initWithTime:(id)a3 andLatency:(double)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = TimeAndLatencyAbm;
  v8 = [(TimeAndLatencyAbm *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_time, a3);
    v9->_latency = a4;
  }

  return v9;
}

@end