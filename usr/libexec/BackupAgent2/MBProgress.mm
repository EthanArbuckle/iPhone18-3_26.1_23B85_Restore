@interface MBProgress
- (BOOL)isFinished;
- (MBProgress)init;
- (void)addDuration:(double)duration;
- (void)updateWithDuration:(double)duration size:(unint64_t)size;
@end

@implementation MBProgress

- (MBProgress)init
{
  v3.receiver = self;
  v3.super_class = MBProgress;
  result = [(MBProgress *)&v3 init];
  if (result)
  {
    result->_scale = 1.0;
  }

  return result;
}

- (BOOL)isFinished
{
  current = self->_current;
  total = self->_total;
  return current <= total + 0.001 && total + -0.001 <= current;
}

- (void)addDuration:(double)duration
{
  if (duration < 0.0)
  {
    sub_10009C100(a2, self);
  }

  self->_total = self->_total + duration;
}

- (void)updateWithDuration:(double)duration size:(unint64_t)size
{
  current = self->_current;
  p_current = &self->_current;
  v8 = current + duration;
  *p_current = v8;
  if (v8 > p_current[1] + 0.001)
  {
    sub_10009C174(p_current, p_current + 1, a2, self);
  }

  delegate = self->_delegate;
  [(MBProgress *)self percentage];

  [(MBProgressDelegate *)delegate progressUpdatedWithPercentage:size size:?];
}

@end