@interface TSDFPSCounterSample
+ (id)sampleWithTime:(double)time duration:(double)duration;
- (TSDFPSCounterSample)initWithTime:(double)time duration:(double)duration;
@end

@implementation TSDFPSCounterSample

- (TSDFPSCounterSample)initWithTime:(double)time duration:(double)duration
{
  v7.receiver = self;
  v7.super_class = TSDFPSCounterSample;
  result = [(TSDFPSCounterSample *)&v7 init];
  if (result)
  {
    result->_time = time;
    result->_duration = duration;
  }

  return result;
}

+ (id)sampleWithTime:(double)time duration:(double)duration
{
  v6 = [self alloc];
  v9 = objc_msgSend_initWithTime_duration_(v6, v7, v8, time, duration);

  return v9;
}

@end