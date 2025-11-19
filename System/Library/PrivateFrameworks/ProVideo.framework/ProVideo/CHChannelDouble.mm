@interface CHChannelDouble
- (BOOL)getFirstKeyframeTime:(id *)a3 curveDoubleValue:(double *)a4;
- (BOOL)getKeyframeAfterTime:(id *)a3 time:(id *)a4 curveDoubleValue:(double *)a5;
- (BOOL)getKeyframeBeforeTime:(id *)a3 time:(id *)a4 curveDoubleValue:(double *)a5;
- (BOOL)getLastKeyframeTime:(id *)a3 curveDoubleValue:(double *)a4;
- (double)curveDoubleValueAtTime:(id *)a3;
- (double)defaultCurveDoubleValue;
- (double)doubleValueAtTime:(id *)a3;
- (double)maxCurveDoubleValue;
- (double)maxUIDoubleValue;
- (double)minCurveDoubleValue;
- (unsigned)getCurveSamples:(id *)a3 delta:(id *)a4 numberOfSamples:(unsigned int)a5 samplesX:(void *)a6 samplesY:(void *)a7;
- (void)getExtremaBetweenStart:(id *)a3 end:(id *)a4 minDoubleValue:(double *)a5 maxDoubleValue:(double *)a6;
- (void)setCoarseDeltaDoubleValue:(double)a3;
- (void)setDefaultCurveDoubleValue:(double)a3;
- (void)setFineDeltaDoubleValue:(double)a3;
- (void)setKeyframesFromTime:(id *)a3 fromMap:(void *)a4 frameDuration:(id *)a5;
- (void)setMaxCurveDoubleValue:(double)a3;
- (void)setMaxUIDoubleValue:(double)a3;
- (void)setMinCurveDoubleValue:(double)a3;
- (void)setMinUIDoubleValue:(double)a3;
@end

@implementation CHChannelDouble

- (double)doubleValueAtTime:(id *)a3
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v5 = 0;
  }

  (*(v5->var0 + 42))(&v7, v5, a3);
  OZChannel::getValueAsDouble(v5, &v7, 0.0);
  return result;
}

- (double)curveDoubleValueAtTime:(id *)a3
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  return OZChannel::getCurveValue(pOZChannel, a3, 0);
}

- (void)getExtremaBetweenStart:(id *)a3 end:(id *)a4 minDoubleValue:(double *)a5 maxDoubleValue:(double *)a6
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

- (void)setDefaultCurveDoubleValue:(double)a3
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
    OZChannel::setDefaultValue(v5, a3);
    if (v8)
    {
      return;
    }
  }

  else
  {
    v9 = (var0[62])(v5, 1);
    OZChannel::setDefaultValue(v5, a3);
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

- (void)setMinCurveDoubleValue:(double)a3
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  OZChannel::setMin(pOZChannel, a3);
}

- (double)maxCurveDoubleValue
{
  (*(**(v2[14] + 8) + 256))();
  return 0.0;
}

- (void)setMaxCurveDoubleValue:(double)a3
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  OZChannel::setMax(pOZChannel, a3);
}

- (void)setMinUIDoubleValue:(double)a3
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  OZChannel::setSliderMin(pOZChannel, a3);
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

- (void)setMaxUIDoubleValue:(double)a3
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  OZChannel::setSliderMax(pOZChannel, a3);
}

- (void)setCoarseDeltaDoubleValue:(double)a3
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  OZChannel::setCoarseDelta(pOZChannel, a3);
}

- (void)setFineDeltaDoubleValue:(double)a3
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  OZChannel::setFineDelta(pOZChannel, a3);
}

- (BOOL)getFirstKeyframeTime:(id *)a3 curveDoubleValue:(double *)a4
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  return OZChannel::getFirstKeyframe(pOZChannel, a3, a4);
}

- (BOOL)getLastKeyframeTime:(id *)a3 curveDoubleValue:(double *)a4
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  return OZChannel::getLastKeyframe(pOZChannel, a3, a4);
}

- (BOOL)getKeyframeAfterTime:(id *)a3 time:(id *)a4 curveDoubleValue:(double *)a5
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  return OZChannel::getNextKeyframe(pOZChannel, a3, a4, a5);
}

- (BOOL)getKeyframeBeforeTime:(id *)a3 time:(id *)a4 curveDoubleValue:(double *)a5
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  return OZChannel::getPreviousKeyframe(pOZChannel, a3, a4, a5);
}

- (unsigned)getCurveSamples:(id *)a3 delta:(id *)a4 numberOfSamples:(unsigned int)a5 samplesX:(void *)a6 samplesY:(void *)a7
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  OZChannel::getSamples(pOZChannel);
  return a5;
}

- (void)setKeyframesFromTime:(id *)a3 fromMap:(void *)a4 frameDuration:(id *)a5
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  OZChannelBase::setKeyframesWithChannelRef(pOZChannel, a3, a5, a4, 1);
}

@end