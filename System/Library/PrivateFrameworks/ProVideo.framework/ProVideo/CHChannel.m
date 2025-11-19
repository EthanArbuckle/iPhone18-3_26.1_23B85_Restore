@interface CHChannel
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)fadeInOffset;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)fadeOutOffset;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)globalToLocalTime:(SEL)a3;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)localToGlobalTime:(SEL)a3;
- (BOOL)createCurveSegment:(id *)a3 maxTime:(id *)a4 deltaTime:(id *)a5 ease:(BOOL)a6;
- (BOOL)getFirstKeyframeTime:(id *)a3 curveValueAsDouble:(double *)a4;
- (BOOL)getKeyframe:(void *)a3 time:(id *)a4 value:(double *)a5;
- (BOOL)getKeyframeAfterTime:(id *)a3 time:(id *)a4 curveValueAsDouble:(double *)a5;
- (BOOL)getKeyframeBeforeTime:(id *)a3 time:(id *)a4 curveValueAsDouble:(double *)a5;
- (BOOL)getLastKeyframeTime:(id *)a3 curveValueAsDouble:(double *)a4;
- (BOOL)getTime:(id *)a3 forCurveDoubleValue:(double)a4 inRange:(id *)a5 frameDuration:(id *)a6 options:(unsigned int)a7;
- (BOOL)hasDifferentValuesForRange:(id *)a3;
- (BOOL)hasFadeHandles;
- (BOOL)hasKeyframeAtTime:(id *)a3;
- (BOOL)isPlayingWithScope:(unsigned int *)a3 mode:(unsigned int *)a4 resolution:(id *)a5;
- (BOOL)isRecording;
- (BOOL)moveKeyframe:(void *)a3 toTime:(id *)a4 constrainToOtherKeys:(BOOL)a5;
- (BOOL)moveKeyframeAtTime:(id *)a3 toTime:(id *)a4;
- (BOOL)removeKeyframe:(void *)a3;
- (BOOL)removeKeyframeAtTime:(id *)a3;
- (OZChannel)ozChannel;
- (double)curveValueAsDoubleAtTime:(id *)a3;
- (double)defaultCurveValueAsDouble;
- (double)fadeRatio:(id *)a3;
- (double)initialCurveValueAsDouble;
- (double)maxCurveValueAsDouble;
- (double)minCurveValueAsDouble;
- (double)valueAsDoubleAtTime:(id *)a3;
- (id)suffix;
- (unint64_t)keyframeCount;
- (unsigned)curveExtrapolation:(unsigned int)a3;
- (unsigned)curveInterpolation;
- (unsigned)fadeInCurve;
- (unsigned)fadeOutCurve;
- (unsigned)segmentInterpolation:(void *)a3;
- (unsigned)segmentSpeed:(void *)a3;
- (void)adjustSegmentSpeed:(void *)a3 offset:(double)a4;
- (void)appendKeyframes:(unsigned int)a3 times:(id *)a4 values:(double *)a5;
- (void)beginPlayback:(id *)a3 scope:(unsigned int)a4 mode:(unsigned int)a5 resolution:(id *)a6;
- (void)beginRecording:(id *)a3;
- (void)endPlayback:(id *)a3;
- (void)endRecording:(id *)a3;
- (void)firstKeyframe;
- (void)getKeyframeInputTangents:(void *)a3 inTanTime:(double *)a4 inTanValue:(double *)a5;
- (void)getKeyframeOutputTangents:(void *)a3 outTanTime:(double *)a4 outTanValue:(double *)a5;
- (void)getKeyframes:(void *)a3 enabledOnly:(BOOL)a4;
- (void)keyframeAtTime:(id *)a3;
- (void)lastKeyframe;
- (void)nextKeyframe:(void *)a3;
- (void)nextKeyframeFromTime:(id *)a3;
- (void)offsetKeyframesInTime:(id *)a3;
- (void)previousKeyframe:(void *)a3;
- (void)previousKeyframeFromTime:(id *)a3;
- (void)removeAllKeyframes:(unint64_t)a3;
- (void)retimeKeyframesWithScale:(double)a3;
- (void)setCurveExtrapolation:(unsigned int)a3 direction:(unsigned int)a4;
- (void)setCurveInterpolation:(unsigned int)a3;
- (void)setCurveValueWithDouble:(double)a3 atTime:(id *)a4 options:(unsigned int)a5;
- (void)setFadeInCurve:(unsigned int)a3;
- (void)setFadeInOffset:(id *)a3;
- (void)setFadeOutCurve:(unsigned int)a3;
- (void)setFadeOutOffset:(id *)a3;
- (void)setInitialCurveValueWithDouble:(double)a3;
- (void)setKeyframeInputTangents:(void *)a3 inTanTime:(double)a4 inTanValue:(double)a5;
- (void)setKeyframeOutputTangents:(void *)a3 outTanTime:(double)a4 outTanValue:(double)a5;
- (void)setScale:(double)a3;
- (void)setSegmentInterpolation:(void *)a3 interpolation:(unsigned int)a4;
- (void)setSegmentSpeed:(void *)a3 speed:(unsigned int)a4;
- (void)setSliderTransformerName:(id)a3;
- (void)setSuffix:(id)a3;
@end

@implementation CHChannel

- (OZChannel)ozChannel
{
  result = self->super._pOZChannel;
  if (result)
  {
  }

  return result;
}

- (unint64_t)keyframeCount
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  return (*(*pOZChannel + 832))(pOZChannel, a2);
}

- (BOOL)hasKeyframeAtTime:(id *)a3
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  return OZChannel::getKeyframe(pOZChannel, a3) != 0;
}

- (void)removeAllKeyframes:(unint64_t)a3
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  if (a3)
  {
    v5 = *(pOZChannel->var0 + 94);

    v5();
  }

  else
  {

    OZChannel::resetCurve(pOZChannel);
  }
}

- (BOOL)removeKeyframeAtTime:(id *)a3
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v5 = 0;
  }

  (*(*v5 + 336))(v7, v5, a3);
  return (*(*v5 + 744))(v5, v7, 1);
}

- (BOOL)moveKeyframeAtTime:(id *)a3 toTime:(id *)a4
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v7 = 0;
  }

  (*(*v7 + 336))(v10, v7, a3);
  (*(*v7 + 336))(v9, v7, a4);
  return (*(*v7 + 760))(v7, v10, v9, 1);
}

- (void)retimeKeyframesWithScale:(double)a3
{
  v3 = a3;
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  v5 = *(*pOZChannel + 640);
  a3 = v3;

  v5(*&a3);
}

- (void)offsetKeyframesInTime:(id *)a3
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  OZChannel::linearTimeWarp(pOZChannel, 1.0, a3);
}

- (unsigned)curveInterpolation
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
    v2 = vars8;
  }

  return OZChannel::getInterpolation(pOZChannel);
}

- (void)setCurveInterpolation:(unsigned int)a3
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  v4 = *(*pOZChannel + 656);

  v4();
}

- (void)setCurveExtrapolation:(unsigned int)a3 direction:(unsigned int)a4
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  v5 = *(*pOZChannel + 384);

  v5();
}

- (unsigned)curveExtrapolation:(unsigned int)a3
{
  v3 = *&a3;
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  return OZChannel::getExtrapolation(pOZChannel, v3);
}

- (void)setSegmentInterpolation:(void *)a3 interpolation:(unsigned int)a4
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  OZChannel::setKeyframeInterpolation(pOZChannel, a3);
}

- (unsigned)segmentInterpolation:(void *)a3
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  return OZChannel::getKeyframeInterpolation(pOZChannel, a3);
}

- (void)setSegmentSpeed:(void *)a3 speed:(unsigned int)a4
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  OZChannel::setCurveSegmentSpeed(pOZChannel, a3);
}

- (unsigned)segmentSpeed:(void *)a3
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  return OZChannel::getCurveSegmentSpeed(pOZChannel, a3);
}

- (void)adjustSegmentSpeed:(void *)a3 offset:(double)a4
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  OZChannel::offsetCurveSegmentSpeed(pOZChannel, a3, a4);
}

- (BOOL)createCurveSegment:(id *)a3 maxTime:(id *)a4 deltaTime:(id *)a5 ease:(BOOL)a6
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v10 = 0;
  }

  (*(v10->var0 + 41))(&v13, v10, a3);
  (*(v10->var0 + 41))(&v12, v10, a4);
  return OZChannel::createCurveSegment(v10, &v13, &v12, a5);
}

- (void)setSliderTransformerName:(id)a3
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  OZChannel::setSliderTransformerName(pOZChannel, a3);
}

- (void)beginPlayback:(id *)a3 scope:(unsigned int)a4 mode:(unsigned int)a5 resolution:(id *)a6
{
  v7 = *&a5;
  v8 = *&a4;
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v11 = 0;
  }

  (*(*v11 + 336))(v12, v11, a3);
  (*(*v11 + 160))(v11, v12, v8, v7, a6);
}

- (void)endPlayback:(id *)a3
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v5 = 0;
  }

  (*(*v5 + 336))(v6, v5, a3);
  (*(*v5 + 168))(v5, v6);
}

- (void)beginRecording:(id *)a3
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v5 = 0;
  }

  (*(*v5 + 336))(v6, v5, a3);
  (*(*v5 + 176))(v5, v6);
}

- (void)endRecording:(id *)a3
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v5 = 0;
  }

  (*(*v5 + 336))(v6, v5, a3);
  (*(*v5 + 184))(v5, v6);
}

- (BOOL)isPlayingWithScope:(unsigned int *)a3 mode:(unsigned int *)a4 resolution:(id *)a5
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  v6 = *(*pOZChannel + 784);

  return v6();
}

- (BOOL)isRecording
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  v3 = *(*pOZChannel + 792);

  return v3();
}

- (void)keyframeAtTime:(id *)a3
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  return OZChannel::getKeyframe(pOZChannel, a3);
}

- (BOOL)getKeyframe:(void *)a3 time:(id *)a4 value:(double *)a5
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  return OZChannel::getKeyframe(pOZChannel, a3, a4, a5);
}

- (void)firstKeyframe
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
    v2 = vars8;
  }

  return OZChannel::getFirstEnabledKeyframe(pOZChannel);
}

- (void)lastKeyframe
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
    v2 = vars8;
  }

  return OZChannel::getLastEnabledKeyframe(pOZChannel);
}

- (void)nextKeyframe:(void *)a3
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  return OZChannel::getNextEnabledKeyframe(pOZChannel, a3);
}

- (void)previousKeyframe:(void *)a3
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  return OZChannel::getPreviousEnabledKeyframe(pOZChannel, a3);
}

- (void)nextKeyframeFromTime:(id *)a3
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  return OZChannel::getNextEnabledKeyframe(pOZChannel, a3);
}

- (void)previousKeyframeFromTime:(id *)a3
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  return OZChannel::getPreviousEnabledKeyframe(pOZChannel, a3);
}

- (BOOL)removeKeyframe:(void *)a3
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  return OZChannel::deleteKeyframe(pOZChannel, a3);
}

- (BOOL)moveKeyframe:(void *)a3 toTime:(id *)a4 constrainToOtherKeys:(BOOL)a5
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  v6 = *(*pOZChannel + 840);

  return v6();
}

- (void)appendKeyframes:(unsigned int)a3 times:(id *)a4 values:(double *)a5
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  OZChannel::appendKeyframes(pOZChannel, a3, a4, a5);
}

- (void)getKeyframes:(void *)a3 enabledOnly:(BOOL)a4
{
  v4 = a4;
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  OZChannel::getKeyframes(pOZChannel, v4, &v11);
  v7 = v11;
  if (v12 == v11)
  {
    if (!v11)
    {
      return;
    }
  }

  else
  {
    v8 = (v12 - v11) >> 3;
    if (v8 <= 1)
    {
      v8 = 1;
    }

    v9 = v11;
    do
    {
      v10 = *v9++;
      *a3++ = v10;
      --v8;
    }

    while (v8);
  }

  v12 = v7;
  operator delete(v7);
}

- (void)setKeyframeInputTangents:(void *)a3 inTanTime:(double)a4 inTanValue:(double)a5
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  OZChannel::setKeyframeInputTangents(pOZChannel, a3, a4, a5, 1);
}

- (void)setKeyframeOutputTangents:(void *)a3 outTanTime:(double)a4 outTanValue:(double)a5
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  OZChannel::setKeyframeOutputTangents(pOZChannel, a3, a4, a5, 1);
}

- (void)getKeyframeInputTangents:(void *)a3 inTanTime:(double *)a4 inTanValue:(double *)a5
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  OZChannel::getKeyframeInputTangents(pOZChannel, a3, a4, a5, 1);
}

- (void)getKeyframeOutputTangents:(void *)a3 outTanTime:(double *)a4 outTanValue:(double *)a5
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  OZChannel::getKeyframeOutputTangents(pOZChannel, a3, a4, a5, 1);
}

- (void)setFadeInOffset:(id *)a3
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  OZChannel::setFadeInOffset(pOZChannel, a3, 1);
}

- (void)setFadeOutOffset:(id *)a3
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  OZChannel::setFadeOutOffset(pOZChannel, a3, 1);
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)fadeInOffset
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  OZChannel::getFadeInOffset(pOZChannel, retstr);
  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)fadeOutOffset
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  return OZChannel::getFadeOutOffset(pOZChannel, retstr);
}

- (void)setFadeInCurve:(unsigned int)a3
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  OZChannel::setFadeInCurve(pOZChannel, a3);
}

- (void)setFadeOutCurve:(unsigned int)a3
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  OZChannel::setFadeOutCurve(pOZChannel, a3);
}

- (unsigned)fadeInCurve
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
    v2 = vars8;
  }

  return OZChannel::getFadeInCurve(pOZChannel);
}

- (unsigned)fadeOutCurve
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
    v2 = vars8;
  }

  return OZChannel::getFadeOutCurve(pOZChannel);
}

- (double)fadeRatio:(id *)a3
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  return OZChannel::getFadeRatio(pOZChannel, a3);
}

- (BOOL)hasFadeHandles
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  v3 = *(*pOZChannel + 664);

  return v3();
}

- (BOOL)hasDifferentValuesForRange:(id *)a3
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  v5 = *&a3->var0.var3;
  *&v7.start.value = *&a3->var0.var0;
  *&v7.start.epoch = v5;
  *&v7.duration.timescale = *&a3->var1.var1;
  return OZChannel::hasDifferentValuesForRange(pOZChannel, &v7);
}

- (double)valueAsDoubleAtTime:(id *)a3
{
  pOZChannel = self->super._pOZChannel;
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

- (double)curveValueAsDoubleAtTime:(id *)a3
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  return OZChannel::getCurveValue(pOZChannel, a3, 0);
}

- (void)setCurveValueWithDouble:(double)a3 atTime:(id *)a4 options:(unsigned int)a5
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
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
    if (a5)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(v13->var0 + 42))(v15, v13, a4);
    v14 = (*(v13->var0 + 89))(v13, v15, 0, a3);
    goto LABEL_10;
  }

  v13 = 0;
  if (!a5)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (a5 == 2)
  {
    v14 = OZChannel::setCurveSegmentValue(v13, a4, a3, 1);
  }

  else
  {
    v14 = OZChannel::setKeyframe(v13, a4, a3, 1);
  }

LABEL_10:
  *(OZCoreGlobals::getInstance(v14) + 8) = v11;
}

- (double)initialCurveValueAsDouble
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
    v2 = vars8;
  }

  return OZChannel::getInitialValue(pOZChannel);
}

- (void)setInitialCurveValueWithDouble:(double)a3
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  OZChannel::setInitialValue(pOZChannel, a3, 0);
}

- (double)defaultCurveValueAsDouble
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
    v2 = vars8;
  }

  return OZChannel::getDefaultValue(pOZChannel);
}

- (double)minCurveValueAsDouble
{
  (*(**(v2[14] + 8) + 264))();
  return 0.0;
}

- (double)maxCurveValueAsDouble
{
  (*(**(v2[14] + 8) + 256))();
  return 0.0;
}

- (BOOL)getFirstKeyframeTime:(id *)a3 curveValueAsDouble:(double *)a4
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  return OZChannel::getFirstKeyframe(pOZChannel, a3, a4);
}

- (BOOL)getLastKeyframeTime:(id *)a3 curveValueAsDouble:(double *)a4
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  return OZChannel::getLastKeyframe(pOZChannel, a3, a4);
}

- (BOOL)getKeyframeAfterTime:(id *)a3 time:(id *)a4 curveValueAsDouble:(double *)a5
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  return OZChannel::getNextKeyframe(pOZChannel, a3, a4, a5);
}

- (BOOL)getKeyframeBeforeTime:(id *)a3 time:(id *)a4 curveValueAsDouble:(double *)a5
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  return OZChannel::getPreviousKeyframe(pOZChannel, a3, a4, a5);
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)localToGlobalTime:(SEL)a3
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  v5 = *(*pOZChannel + 336);

  return v5();
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)globalToLocalTime:(SEL)a3
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  v5 = *(*pOZChannel + 328);

  return v5();
}

- (BOOL)getTime:(id *)a3 forCurveDoubleValue:(double)a4 inRange:(id *)a5 frameDuration:(id *)a6 options:(unsigned int)a7
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  v22 = *&a5->var0.var0;
  var3 = a5->var0.var3;
  v24 = *&a5->var1.var0;
  v25 = a5->var1.var3;
  __p = 0;
  v20 = 0;
  v21 = 0;
  v17 = *&a6->var0;
  v18 = a6->var3;
  TimeForValue = OZChannel::getTimeForValue(pOZChannel, &__p, &v22, &v17, a4);
  v13 = TimeForValue ^ 1;
  v14 = __p;
  if (!a3)
  {
    v13 = 1;
  }

  if ((v13 & 1) == 0)
  {
    v15 = *__p;
    a3->var3 = *(__p + 2);
    *&a3->var0 = v15;
LABEL_8:
    v20 = v14;
    operator delete(v14);
    return TimeForValue;
  }

  if (__p)
  {
    goto LABEL_8;
  }

  return TimeForValue;
}

- (id)suffix
{

  return PCString::ns_str(v2);
}

- (void)setSuffix:(id)a3
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v5 = 0;
  }

  v6.var0 = 0;
  PCString::set(&v6, a3);
  OZChannel::setSuffix(v5, &v6);
  PCString::~PCString(&v6);
}

- (void)setScale:(double)a3
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  OZChannel::setScale(pOZChannel, a3);
}

@end