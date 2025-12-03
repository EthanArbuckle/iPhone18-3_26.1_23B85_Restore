@interface CHChannelIntegral
- (BOOL)getFirstKeyframeTime:(id *)time curveIntValue:(int *)value;
- (BOOL)getKeyframeAfterTime:(id *)time time:(id *)a4 curveIntValue:(int *)value;
- (BOOL)getKeyframeBeforeTime:(id *)time time:(id *)a4 curveIntValue:(int *)value;
- (BOOL)getLastKeyframeTime:(id *)time curveIntValue:(int *)value;
- (int)_curveIntValueAtTime:(id *)time;
- (int)_defaultCurveIntValue;
- (int)_intValueAtTime:(id *)time;
- (int)_maxCurveIntValue;
- (int)_maxUIIntValue;
- (int)_minCurveIntValue;
- (void)_getExtremaBetweenStart:(id *)start end:(id *)end minIntValue:(int *)value maxIntValue:(int *)intValue;
- (void)_setCoarseDeltaIntValue:(int)value;
- (void)_setCurveIntValue:(int)value atTime:(id *)time options:(unsigned int)options;
- (void)_setDefaultCurveIntValue:(int)value;
- (void)_setFineDeltaIntValue:(int)value;
- (void)_setMaxCurveIntValue:(int)value;
- (void)_setMaxUIIntValue:(int)value;
- (void)_setMinCurveIntValue:(int)value;
- (void)_setMinUIIntValue:(int)value;
@end

@implementation CHChannelIntegral

- (int)_intValueAtTime:(id *)time
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
  return OZChannel::getValueAsInt(v5, &v7, 0.0);
}

- (int)_curveIntValueAtTime:(id *)time
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  return OZChannel::getCurveValue(pOZChannel, time, 0);
}

- (void)_getExtremaBetweenStart:(id *)start end:(id *)end minIntValue:(int *)value maxIntValue:(int *)intValue
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  v11 = 0.0;
  v12 = 0.0;
  (*(*pOZChannel + 824))(pOZChannel, start, end, &v12, &v11);
  if (value)
  {
    *value = v12;
  }

  if (intValue)
  {
    *intValue = v11;
  }
}

- (void)_setCurveIntValue:(int)value atTime:(id *)time options:(unsigned int)options
{
  if ((~time->var2 & 0x11) == 0)
  {
    v9 = *MEMORY[0x277CC08F0];
    time->var3 = *(MEMORY[0x277CC08F0] + 16);
    *&time->var0 = v9;
  }

  Instance = OZCoreGlobals::getInstance(self);
  v11 = *(Instance + 8);
  *(OZCoreGlobals::getInstance(Instance) + 8) = options & 1;
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
    if (options)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(v13->var0 + 42))(v17, v13, time);
    v16.n128_f64[0] = value;
    v15 = (*(v13->var0 + 89))(v13, v17, 0, v16);
    goto LABEL_10;
  }

  v13 = 0;
  if (!options)
  {
    goto LABEL_8;
  }

LABEL_5:
  valueCopy = value;
  if (options == 2)
  {
    v15 = OZChannel::setCurveSegmentValue(v13, time, valueCopy, 1);
  }

  else
  {
    v15 = OZChannel::setKeyframe(v13, time, valueCopy, 1);
  }

LABEL_10:
  *(OZCoreGlobals::getInstance(v15) + 8) = v11;
}

- (int)_defaultCurveIntValue
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  return OZChannel::getDefaultValue(pOZChannel);
}

- (void)_setDefaultCurveIntValue:(int)value
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

- (int)_minCurveIntValue
{
  (*(**(v2[14] + 8) + 264))();
  return 0.0;
}

- (void)_setMinCurveIntValue:(int)value
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  OZChannel::setMin(pOZChannel, value);
}

- (int)_maxCurveIntValue
{
  (*(**(v2[14] + 8) + 256))();
  return 0.0;
}

- (void)_setMaxCurveIntValue:(int)value
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  OZChannel::setMax(pOZChannel, value);
}

- (void)_setMinUIIntValue:(int)value
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  OZChannel::setSliderMin(pOZChannel, value);
}

- (int)_maxUIIntValue
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  return (*(*pOZChannel + 808))(pOZChannel, a2);
}

- (void)_setMaxUIIntValue:(int)value
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  OZChannel::setSliderMax(pOZChannel, value);
}

- (void)_setCoarseDeltaIntValue:(int)value
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  OZChannel::setCoarseDelta(pOZChannel, value);
}

- (void)_setFineDeltaIntValue:(int)value
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  OZChannel::setFineDelta(pOZChannel, value);
}

- (BOOL)getFirstKeyframeTime:(id *)time curveIntValue:(int *)value
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  v9 = 0.0;
  FirstKeyframe = OZChannel::getFirstKeyframe(pOZChannel, time, &v9);
  if (value && FirstKeyframe)
  {
    *value = v9;
  }

  return FirstKeyframe;
}

- (BOOL)getLastKeyframeTime:(id *)time curveIntValue:(int *)value
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  v9 = 0.0;
  LastKeyframe = OZChannel::getLastKeyframe(pOZChannel, time, &v9);
  if (value && LastKeyframe)
  {
    *value = v9;
  }

  return LastKeyframe;
}

- (BOOL)getKeyframeAfterTime:(id *)time time:(id *)a4 curveIntValue:(int *)value
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  v11 = 0.0;
  NextKeyframe = OZChannel::getNextKeyframe(pOZChannel, time, a4, &v11);
  if (value && NextKeyframe)
  {
    *value = v11;
  }

  return NextKeyframe;
}

- (BOOL)getKeyframeBeforeTime:(id *)time time:(id *)a4 curveIntValue:(int *)value
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  v11 = 0.0;
  PreviousKeyframe = OZChannel::getPreviousKeyframe(pOZChannel, time, a4, &v11);
  if (value && PreviousKeyframe)
  {
    *value = v11;
  }

  return PreviousKeyframe;
}

@end