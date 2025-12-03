@interface RTSCAdaptiveFilterStrength
- (RTSCAdaptiveFilterStrength)initWithMaxTimescale:(float)timescale minTimescale:(float)minTimescale transitionTime:(float)time;
- (void)reset;
- (void)update:(float)update order:(int)order atTime:(double)time;
@end

@implementation RTSCAdaptiveFilterStrength

- (RTSCAdaptiveFilterStrength)initWithMaxTimescale:(float)timescale minTimescale:(float)minTimescale transitionTime:(float)time
{
  v13.receiver = self;
  v13.super_class = RTSCAdaptiveFilterStrength;
  v8 = [(RTSCAdaptiveFilterStrength *)&v13 init];
  v9 = v8;
  if (!v8)
  {
LABEL_7:
    v10 = v9;
    goto LABEL_8;
  }

  v10 = 0;
  if (minTimescale > 0.0 && time > 0.0)
  {
    v8->_maxTimescale = timescale;
    v8->_minTimescale = minTimescale;
    if (timescale < minTimescale)
    {
      v8->_maxTimescale = minTimescale;
      timescale = minTimescale;
    }

    v11 = timescale / minTimescale;
    v8->_rampDownFactorPerSecond = powf(v11, 1.0 / time);
    v9->_rampUpFactorPerSecond = powf(v11, 1.0 / (time * 5.0));
    v9->_angleLimit = 0.001;
    [(RTSCAdaptiveFilterStrength *)v9 reset];
    goto LABEL_7;
  }

LABEL_8:

  return v10;
}

- (void)reset
{
  maxTimescale = self->_maxTimescale;
  self->_currentTimescale = maxTimescale;
  self->_targetTimescale = maxTimescale;
  self->_prevTime = 0.0;
  self->_smoothingPole = maxTimescale / (maxTimescale + 0.03333);
}

- (void)update:(float)update order:(int)order atTime:(double)time
{
  maxTimescale = self->_maxTimescale;
  currentTimescale = self->_currentTimescale;
  v10 = self->_angleLimit / fmaxf(self->_angleLimit / maxTimescale, update);
  self->_targetTimescale = v10;
  v11 = time - self->_prevTime;
  v12 = v11;
  if (v10 <= currentTimescale)
  {
    rampDownFactorPerSecond = self->_rampDownFactorPerSecond;
    v14 = -v12;
  }

  else
  {
    rampDownFactorPerSecond = self->_rampUpFactorPerSecond;
    v14 = v11;
  }

  v15 = fminf(fmaxf(currentTimescale * powf(rampDownFactorPerSecond, v14), self->_minTimescale), maxTimescale);
  self->_currentTimescale = v15;
  self->_smoothingPole = (v15 / order) / ((v15 / order) + v12);
  self->_prevTime = time;
}

@end