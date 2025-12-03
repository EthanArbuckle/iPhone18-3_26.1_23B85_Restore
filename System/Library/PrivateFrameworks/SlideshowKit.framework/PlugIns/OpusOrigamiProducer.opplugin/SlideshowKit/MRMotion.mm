@interface MRMotion
- (MRMotion)initWithKey:(id)key value:(double)value duration:(double)duration easeIn:(double)in easeOut:(double)out;
- (double)valueAtTime:(double)time;
- (void)dealloc;
@end

@implementation MRMotion

- (MRMotion)initWithKey:(id)key value:(double)value duration:(double)duration easeIn:(double)in easeOut:(double)out
{
  v14.receiver = self;
  v14.super_class = MRMotion;
  v12 = [(MRMotion *)&v14 init];
  if (v12)
  {
    v12->_key = key;
    v12->_value = value;
    v12->_startTime = -1.0;
    v12->_duration = duration;
    v12->_easeIn = in;
    v12->_easeOut = out;
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

- (double)valueAtTime:(double)time
{
  startTime = self->_startTime;
  v5 = 0.0;
  if (startTime < time)
  {
    duration = self->_duration;
    v5 = 1.0;
    if (startTime + duration > time)
    {
      v5 = (time - startTime) / duration;
    }
  }

  return self->_startValue + Spline1(v5, 0.0, self->_easeIn, self->_easeOut + 1.0, 1.0, 0.0, 0.0, 1.0, 1.0) * (self->_value - self->_startValue);
}

@end