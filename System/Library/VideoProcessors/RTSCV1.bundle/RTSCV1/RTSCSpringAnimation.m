@interface RTSCSpringAnimation
- (RTSCSpringAnimation)init;
- (void)_advance:(double)a3;
- (void)_step:(double)a3;
- (void)configureWithPreset:(unint64_t)a3;
- (void)reset;
- (void)startAtTime:(id *)a3 withValue:(double)a4;
- (void)stop;
- (void)updateToTime:(id *)a3;
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

- (void)startAtTime:(id *)a3 withValue:(double)a4
{
  v4 = *&a3->var0;
  self->_currentTime.epoch = a3->var3;
  *&self->_currentTime.value = v4;
  self->_targetValue = a4;
  self->_currValue = a4;
  self->_velocity = 0.0;
  self->_duration = 0.0;
}

- (void)updateToTime:(id *)a3
{
  if (self->_currentTime.flags)
  {
    currentTime = *a3;
    Seconds = CMTimeGetSeconds(&currentTime);
    currentTime = self->_currentTime;
    v6 = Seconds - CMTimeGetSeconds(&currentTime);
    if (v6 > 0.0)
    {
      [(RTSCSpringAnimation *)self _advance:v6];
      v7 = *&a3->var0;
      self->_currentTime.epoch = a3->var3;
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

- (void)_advance:(double)a3
{
  for (i = a3; i > 0.00833333333; i = i + -0.00833333333)
  {
    [(RTSCSpringAnimation *)self _step:0.00833333333];
  }

  [(RTSCSpringAnimation *)self _step:i];
}

- (void)_step:(double)a3
{
  velocity = self->_velocity;
  p_velocity = &self->_velocity;
  v5 = *(p_velocity - 1);
  v6 = *(p_velocity - 4);
  v7 = *(p_velocity - 5);
  v8 = sqrt(v7 * v6);
  v9 = velocity * -(*(p_velocity - 3) * (v8 + v8));
  v10 = v7 * (v5 - *(p_velocity - 2));
  v11 = velocity + a3 * ((v9 - v10) / v6);
  *(p_velocity - 1) = v5 + a3 * v11;
  *p_velocity = v11;
  p_velocity[1] = p_velocity[1] + a3;
  if (vabdd_f64(v9, v10) < 0.01 && fabs(v11) < 0.01)
  {
    *p_velocity = 0.0;
    p_velocity[1] = 0.0;
  }
}

- (void)configureWithPreset:(unint64_t)a3
{
  if (a3 <= 2)
  {
    v3 = dbl_11C10[a3];
    *&self->_stiffness = qword_11BF8[a3];
    self->_mass = v3;
    self->_dampRatio = 1.0;
  }
}

@end