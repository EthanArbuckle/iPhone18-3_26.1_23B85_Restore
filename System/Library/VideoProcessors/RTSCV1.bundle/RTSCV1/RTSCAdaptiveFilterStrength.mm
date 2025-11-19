@interface RTSCAdaptiveFilterStrength
- (RTSCAdaptiveFilterStrength)initWithMaxTimescale:(float)a3 minTimescale:(float)a4 transitionTime:(float)a5;
- (void)reset;
- (void)update:(float)a3 order:(int)a4 atTime:(double)a5;
@end

@implementation RTSCAdaptiveFilterStrength

- (RTSCAdaptiveFilterStrength)initWithMaxTimescale:(float)a3 minTimescale:(float)a4 transitionTime:(float)a5
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
  if (a4 > 0.0 && a5 > 0.0)
  {
    v8->_maxTimescale = a3;
    v8->_minTimescale = a4;
    if (a3 < a4)
    {
      v8->_maxTimescale = a4;
      a3 = a4;
    }

    v11 = a3 / a4;
    v8->_rampDownFactorPerSecond = powf(v11, 1.0 / a5);
    v9->_rampUpFactorPerSecond = powf(v11, 1.0 / (a5 * 5.0));
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

- (void)update:(float)a3 order:(int)a4 atTime:(double)a5
{
  maxTimescale = self->_maxTimescale;
  currentTimescale = self->_currentTimescale;
  v10 = self->_angleLimit / fmaxf(self->_angleLimit / maxTimescale, a3);
  self->_targetTimescale = v10;
  v11 = a5 - self->_prevTime;
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
  self->_smoothingPole = (v15 / a4) / ((v15 / a4) + v12);
  self->_prevTime = a5;
}

@end