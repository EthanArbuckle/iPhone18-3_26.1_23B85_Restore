@interface CHChannelDouble
- (BOOL)getFirstKeyframeTime:(id *)time curveDoubleValue:(double *)value;
- (BOOL)getKeyframeAfterTime:(id *)time time:(id *)a4 curveDoubleValue:(double *)value;
- (BOOL)getKeyframeBeforeTime:(id *)time time:(id *)a4 curveDoubleValue:(double *)value;
- (BOOL)getLastKeyframeTime:(id *)time curveDoubleValue:(double *)value;
- (double)curveDoubleValueAtTime:(id *)time;
- (double)defaultCurveDoubleValue;
- (double)doubleValueAtTime:(id *)time;
- (double)maxCurveDoubleValue;
- (double)maxUIDoubleValue;
- (double)minCurveDoubleValue;
- (unsigned)getCurveSamples:(id *)samples delta:(id *)delta numberOfSamples:(unsigned int)ofSamples samplesX:(void *)x samplesY:(void *)y;
- (void)getExtremaBetweenStart:(id *)start end:(id *)end minDoubleValue:(double *)value maxDoubleValue:(double *)doubleValue;
- (void)setCoarseDeltaDoubleValue:(double)value;
- (void)setDefaultCurveDoubleValue:(double)value;
- (void)setFineDeltaDoubleValue:(double)value;
- (void)setKeyframesFromTime:(id *)time fromMap:(void *)map frameDuration:(id *)duration;
- (void)setMaxCurveDoubleValue:(double)value;
- (void)setMaxUIDoubleValue:(double)value;
- (void)setMinCurveDoubleValue:(double)value;
- (void)setMinUIDoubleValue:(double)value;
@end

@implementation CHChannelDouble

- (double)doubleValueAtTime:(id *)time
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v5 = 0;
  }

  (*(v5->var0 + 42))(&v7, v5, time);
  OZChannel::getValueAsDouble(v5, &v7, 0.0);
  return result;
}

- (double)curveDoubleValueAtTime:(id *)time
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  return OZChannel::getCurveValue(pOZChannel, time, 0);
}

- (void)getExtremaBetweenStart:(id *)start end:(id *)end minDoubleValue:(double *)value maxDoubleValue:(double *)doubleValue
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  v7 = *(*pOZChannel + 824);

  v7();
}

- (double)defaultCurveDoubleValue
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
    v2 = vars8;
  }

  return OZChannel::getDefaultValue(pOZChannel);
}

- (void)setDefaultCurveDoubleValue:(double)value
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v5 = 0;
  }

  v6 = (*(v5->var0 + 64))(v5);
  var0 = v5->var0;
  if (v6)
  {
    v8 = (var0[104])(v5);
    OZChannel::setDefaultValue(v5, value);
    if (v8)
    {
      return;
    }
  }

  else
  {
    v9 = (var0[62])(v5, 1);
    OZChannel::setDefaultValue(v5, value);
    if (v9)
    {
      return;
    }
  }

  v10 = *(v5->var0 + 36);

  v10(v5, 0);
}

- (double)minCurveDoubleValue
{
  (*(**(v2[14] + 8) + 264))();
  return 0.0;
}

- (void)setMinCurveDoubleValue:(double)value
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  OZChannel::setMin(pOZChannel, value);
}

- (double)maxCurveDoubleValue
{
  (*(**(v2[14] + 8) + 256))();
  return 0.0;
}

- (void)setMaxCurveDoubleValue:(double)value
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  OZChannel::setMax(pOZChannel, value);
}

- (void)setMinUIDoubleValue:(double)value
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  OZChannel::setSliderMin(pOZChannel, value);
}

- (double)maxUIDoubleValue
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  v3 = *(*pOZChannel + 808);

  v3();
  return result;
}

- (void)setMaxUIDoubleValue:(double)value
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  OZChannel::setSliderMax(pOZChannel, value);
}

- (void)setCoarseDeltaDoubleValue:(double)value
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  OZChannel::setCoarseDelta(pOZChannel, value);
}

- (void)setFineDeltaDoubleValue:(double)value
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  OZChannel::setFineDelta(pOZChannel, value);
}

- (BOOL)getFirstKeyframeTime:(id *)time curveDoubleValue:(double *)value
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  return OZChannel::getFirstKeyframe(pOZChannel, time, value);
}

- (BOOL)getLastKeyframeTime:(id *)time curveDoubleValue:(double *)value
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  return OZChannel::getLastKeyframe(pOZChannel, time, value);
}

- (BOOL)getKeyframeAfterTime:(id *)time time:(id *)a4 curveDoubleValue:(double *)value
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  return OZChannel::getNextKeyframe(pOZChannel, time, a4, value);
}

- (BOOL)getKeyframeBeforeTime:(id *)time time:(id *)a4 curveDoubleValue:(double *)value
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  return OZChannel::getPreviousKeyframe(pOZChannel, time, a4, value);
}

- (unsigned)getCurveSamples:(id *)samples delta:(id *)delta numberOfSamples:(unsigned int)ofSamples samplesX:(void *)x samplesY:(void *)y
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  OZChannel::getSamples(pOZChannel);
  return ofSamples;
}

- (void)setKeyframesFromTime:(id *)time fromMap:(void *)map frameDuration:(id *)duration
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  OZChannelBase::setKeyframesWithChannelRef(pOZChannel, time, duration, map, 1);
}

@end