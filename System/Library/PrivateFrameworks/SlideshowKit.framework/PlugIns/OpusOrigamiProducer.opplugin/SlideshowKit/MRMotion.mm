@interface MRMotion
- (MRMotion)initWithKey:(id)a3 value:(double)a4 duration:(double)a5 easeIn:(double)a6 easeOut:(double)a7;
- (double)valueAtTime:(double)a3;
- (void)dealloc;
@end

@implementation MRMotion

- (MRMotion)initWithKey:(id)a3 value:(double)a4 duration:(double)a5 easeIn:(double)a6 easeOut:(double)a7
{
  v14.receiver = self;
  v14.super_class = MRMotion;
  v12 = [(MRMotion *)&v14 init];
  if (v12)
  {
    v12->_key = a3;
    v12->_value = a4;
    v12->_startTime = -1.0;
    v12->_duration = a5;
    v12->_easeIn = a6;
    v12->_easeOut = a7;
  }

  return v12;
}

- (void)dealloc
{
  self->_key = 0;
  v3.receiver = self;
  v3.super_class = MRMotion;
  [(MRMotion *)&v3 dealloc];
}

- (double)valueAtTime:(double)a3
{
  startTime = self->_startTime;
  v5 = 0.0;
  if (startTime < a3)
  {
    duration = self->_duration;
    v5 = 1.0;
    if (startTime + duration > a3)
    {
      v5 = (a3 - startTime) / duration;
    }
  }

  return self->_startValue + Spline1(v5, 0.0, self->_easeIn, self->_easeOut + 1.0, 1.0, 0.0, 0.0, 1.0, 1.0) * (self->_value - self->_startValue);
}

@end