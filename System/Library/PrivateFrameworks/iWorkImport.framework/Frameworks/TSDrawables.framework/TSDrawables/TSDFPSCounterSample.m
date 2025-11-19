@interface TSDFPSCounterSample
+ (id)sampleWithTime:(double)a3 duration:(double)a4;
- (TSDFPSCounterSample)initWithTime:(double)a3 duration:(double)a4;
@end

@implementation TSDFPSCounterSample

- (TSDFPSCounterSample)initWithTime:(double)a3 duration:(double)a4
{
  v7.receiver = self;
  v7.super_class = TSDFPSCounterSample;
  result = [(TSDFPSCounterSample *)&v7 init];
  if (result)
  {
    result->_time = a3;
    result->_duration = a4;
  }

  return result;
}

+ (id)sampleWithTime:(double)a3 duration:(double)a4
{
  v6 = [a1 alloc];
  v9 = objc_msgSend_initWithTime_duration_(v6, v7, v8, a3, a4);

  return v9;
}

@end