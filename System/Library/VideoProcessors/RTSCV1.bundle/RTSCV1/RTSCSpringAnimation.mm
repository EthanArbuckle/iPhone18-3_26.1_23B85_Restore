@interface RTSCSpringAnimation
- (RTSCSpringAnimation)init;
- (void)_advance:(double)_advance;
- (void)_step:(double)_step;
- (void)configureWithPreset:(unint64_t)preset;
- (void)reset;
- (void)startAtTime:(id *)time withValue:(double)value;
- (void)stop;
- (void)updateToTime:(id *)time;
@end

@implementation RTSCSpringAnimation

- (RTSCSpringAnimation)init
{
  v4.receiver = self;
  v4.super_class = RTSCSpringAnimation;
  v2 = [(RTSCSpringAnimation *)&v4 init];
  [(RTSCSpringAnimation *)v2 reset];
  [(RTSCSpringAnimation *)v2 configureWithPreset:0];
  return v2;
}

- (void)startAtTime:(id *)time withValue:(double)value
{
  v4 = *&time->var0;
  self->_currentTime.epoch = time->var3;
  *&self->_currentTime.value = v4;
  self->_targetValue = value;
  self->_currValue = value;
  self->_velocity = 0.0;
  self->_duration = 0.0;
}

- (void)updateToTime:(id *)time
{
  if (self->_currentTime.flags)
  {
    currentTime = *time;
    Seconds = CMTimeGetSeconds(&currentTime);
    currentTime = self->_currentTime;
    v6 = Seconds - CMTimeGetSeconds(&currentTime);
    if (v6 > 0.0)
    {
      [(RTSCSpringAnimation *)self _advance:v6];
      v7 = *&time->var0;
      self->_currentTime.epoch = time->var3;
      *&self->_currentTime.value = v7;
    }
  }
}

- (void)reset
{
  v2 = *&kCMTimeInvalid.value;
  self->_currentTime.epoch = kCMTimeInvalid.epoch;
  *&self->_targetValue = 0u;
  *&self->_velocity = 0u;
  *&self->_currentTime.value = v2;
}

- (void)stop
{
  self->_targetValue = self->_currValue;
  self->_velocity = 0.0;
  self->_duration = 0.0;
}

- (void)_advance:(double)_advance
{
  for (i = _advance; i > 0.00833333333; i = i + -0.00833333333)
  {
    [(RTSCSpringAnimation *)self _step:0.00833333333];
  }

  [(RTSCSpringAnimation *)self _step:i];
}

- (void)_step:(double)_step
{
  velocity = self->_velocity;
  p_velocity = &self->_velocity;
  v5 = *(p_velocity - 1);
  v6 = *(p_velocity - 4);
  v7 = *(p_velocity - 5);
  v8 = sqrt(v7 * v6);
  v9 = velocity * -(*(p_velocity - 3) * (v8 + v8));
  v10 = v7 * (v5 - *(p_velocity - 2));
  v11 = velocity + _step * ((v9 - v10) / v6);
  *(p_velocity - 1) = v5 + _step * v11;
  *p_velocity = v11;
  p_velocity[1] = p_velocity[1] + _step;
  if (vabdd_f64(v9, v10) < 0.01 && fabs(v11) < 0.01)
  {
    *p_velocity = 0.0;
    p_velocity[1] = 0.0;
  }
}

- (void)configureWithPreset:(unint64_t)preset
{
  if (preset <= 2)
  {
    v3 = dbl_11C10[preset];
    *&self->_stiffness = qword_11BF8[preset];
    self->_mass = v3;
    self->_dampRatio = 1.0;
  }
}

@end