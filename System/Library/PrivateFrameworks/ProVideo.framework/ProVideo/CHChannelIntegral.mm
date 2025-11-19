@interface CHChannelIntegral
- (BOOL)getFirstKeyframeTime:(id *)a3 curveIntValue:(int *)a4;
- (BOOL)getKeyframeAfterTime:(id *)a3 time:(id *)a4 curveIntValue:(int *)a5;
- (BOOL)getKeyframeBeforeTime:(id *)a3 time:(id *)a4 curveIntValue:(int *)a5;
- (BOOL)getLastKeyframeTime:(id *)a3 curveIntValue:(int *)a4;
- (int)_curveIntValueAtTime:(id *)a3;
- (int)_defaultCurveIntValue;
- (int)_intValueAtTime:(id *)a3;
- (int)_maxCurveIntValue;
- (int)_maxUIIntValue;
- (int)_minCurveIntValue;
- (void)_getExtremaBetweenStart:(id *)a3 end:(id *)a4 minIntValue:(int *)a5 maxIntValue:(int *)a6;
- (void)_setCoarseDeltaIntValue:(int)a3;
- (void)_setCurveIntValue:(int)a3 atTime:(id *)a4 options:(unsigned int)a5;
- (void)_setDefaultCurveIntValue:(int)a3;
- (void)_setFineDeltaIntValue:(int)a3;
- (void)_setMaxCurveIntValue:(int)a3;
- (void)_setMaxUIIntValue:(int)a3;
- (void)_setMinCurveIntValue:(int)a3;
- (void)_setMinUIIntValue:(int)a3;
@end

@implementation CHChannelIntegral

- (int)_intValueAtTime:(id *)a3
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
  return OZChannel::getValueAsInt(v5, &v7, 0.0);
}

- (int)_curveIntValueAtTime:(id *)a3
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  return OZChannel::getCurveValue(pOZChannel, a3, 0);
}

- (void)_getExtremaBetweenStart:(id *)a3 end:(id *)a4 minIntValue:(int *)a5 maxIntValue:(int *)a6
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  v11 = 0.0;
  v12 = 0.0;
  (*(*pOZChannel + 824))(pOZChannel, a3, a4, &v12, &v11);
  if (a5)
  {
    *a5 = v12;
  }

  if (a6)
  {
    *a6 = v11;
  }
}

- (void)_setCurveIntValue:(int)a3 atTime:(id *)a4 options:(unsigned int)a5
{
  if ((~a4->var2 & 0x11) == 0)
  {
    v9 = *MEMORY[0x277CC08F0];
    a4->var3 = *(MEMORY[0x277CC08F0] + 16);
    *&a4->var0 = v9;
  }

  Instance = OZCoreGlobals::getInstance(self);
  v11 = *(Instance + 8);
  *(OZCoreGlobals::getInstance(Instance) + 8) = a5 & 1;
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
    if (a5)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(v13->var0 + 42))(v17, v13, a4);
    v16.n128_f64[0] = a3;
    v15 = (*(v13->var0 + 89))(v13, v17, 0, v16);
    goto LABEL_10;
  }

  v13 = 0;
  if (!a5)
  {
    goto LABEL_8;
  }

LABEL_5:
  v14 = a3;
  if (a5 == 2)
  {
    v15 = OZChannel::setCurveSegmentValue(v13, a4, v14, 1);
  }

  else
  {
    v15 = OZChannel::setKeyframe(v13, a4, v14, 1);
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

- (void)_setDefaultCurveIntValue:(int)a3
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

- (int)_minCurveIntValue
{
  (*(**(v2[14] + 8) + 264))();
  return 0.0;
}

- (void)_setMinCurveIntValue:(int)a3
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  OZChannel::setMin(pOZChannel, a3);
}

- (int)_maxCurveIntValue
{
  (*(**(v2[14] + 8) + 256))();
  return 0.0;
}

- (void)_setMaxCurveIntValue:(int)a3
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  OZChannel::setMax(pOZChannel, a3);
}

- (void)_setMinUIIntValue:(int)a3
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  OZChannel::setSliderMin(pOZChannel, a3);
}

- (int)_maxUIIntValue
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  return (*(*pOZChannel + 808))(pOZChannel, a2);
}

- (void)_setMaxUIIntValue:(int)a3
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  OZChannel::setSliderMax(pOZChannel, a3);
}

- (void)_setCoarseDeltaIntValue:(int)a3
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  OZChannel::setCoarseDelta(pOZChannel, a3);
}

- (void)_setFineDeltaIntValue:(int)a3
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  OZChannel::setFineDelta(pOZChannel, a3);
}

- (BOOL)getFirstKeyframeTime:(id *)a3 curveIntValue:(int *)a4
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  v9 = 0.0;
  FirstKeyframe = OZChannel::getFirstKeyframe(pOZChannel, a3, &v9);
  if (a4 && FirstKeyframe)
  {
    *a4 = v9;
  }

  return FirstKeyframe;
}

- (BOOL)getLastKeyframeTime:(id *)a3 curveIntValue:(int *)a4
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  v9 = 0.0;
  LastKeyframe = OZChannel::getLastKeyframe(pOZChannel, a3, &v9);
  if (a4 && LastKeyframe)
  {
    *a4 = v9;
  }

  return LastKeyframe;
}

- (BOOL)getKeyframeAfterTime:(id *)a3 time:(id *)a4 curveIntValue:(int *)a5
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  v11 = 0.0;
  NextKeyframe = OZChannel::getNextKeyframe(pOZChannel, a3, a4, &v11);
  if (a5 && NextKeyframe)
  {
    *a5 = v11;
  }

  return NextKeyframe;
}

- (BOOL)getKeyframeBeforeTime:(id *)a3 time:(id *)a4 curveIntValue:(int *)a5
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  v11 = 0.0;
  PreviousKeyframe = OZChannel::getPreviousKeyframe(pOZChannel, a3, a4, &v11);
  if (a5 && PreviousKeyframe)
  {
    *a5 = v11;
  }

  return PreviousKeyframe;
}

@end