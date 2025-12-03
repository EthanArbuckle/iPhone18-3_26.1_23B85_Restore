@interface CHChannel
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)fadeInOffset;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)fadeOutOffset;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)globalToLocalTime:(SEL)time;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)localToGlobalTime:(SEL)time;
- (BOOL)createCurveSegment:(id *)segment maxTime:(id *)time deltaTime:(id *)deltaTime ease:(BOOL)ease;
- (BOOL)getFirstKeyframeTime:(id *)time curveValueAsDouble:(double *)double;
- (BOOL)getKeyframe:(void *)keyframe time:(id *)time value:(double *)value;
- (BOOL)getKeyframeAfterTime:(id *)time time:(id *)a4 curveValueAsDouble:(double *)double;
- (BOOL)getKeyframeBeforeTime:(id *)time time:(id *)a4 curveValueAsDouble:(double *)double;
- (BOOL)getLastKeyframeTime:(id *)time curveValueAsDouble:(double *)double;
- (BOOL)getTime:(id *)time forCurveDoubleValue:(double)value inRange:(id *)range frameDuration:(id *)duration options:(unsigned int)options;
- (BOOL)hasDifferentValuesForRange:(id *)range;
- (BOOL)hasFadeHandles;
- (BOOL)hasKeyframeAtTime:(id *)time;
- (BOOL)isPlayingWithScope:(unsigned int *)scope mode:(unsigned int *)mode resolution:(id *)resolution;
- (BOOL)isRecording;
- (BOOL)moveKeyframe:(void *)keyframe toTime:(id *)time constrainToOtherKeys:(BOOL)keys;
- (BOOL)moveKeyframeAtTime:(id *)time toTime:(id *)toTime;
- (BOOL)removeKeyframe:(void *)keyframe;
- (BOOL)removeKeyframeAtTime:(id *)time;
- (OZChannel)ozChannel;
- (double)curveValueAsDoubleAtTime:(id *)time;
- (double)defaultCurveValueAsDouble;
- (double)fadeRatio:(id *)ratio;
- (double)initialCurveValueAsDouble;
- (double)maxCurveValueAsDouble;
- (double)minCurveValueAsDouble;
- (double)valueAsDoubleAtTime:(id *)time;
- (id)suffix;
- (unint64_t)keyframeCount;
- (unsigned)curveExtrapolation:(unsigned int)extrapolation;
- (unsigned)curveInterpolation;
- (unsigned)fadeInCurve;
- (unsigned)fadeOutCurve;
- (unsigned)segmentInterpolation:(void *)interpolation;
- (unsigned)segmentSpeed:(void *)speed;
- (void)adjustSegmentSpeed:(void *)speed offset:(double)offset;
- (void)appendKeyframes:(unsigned int)keyframes times:(id *)times values:(double *)values;
- (void)beginPlayback:(id *)playback scope:(unsigned int)scope mode:(unsigned int)mode resolution:(id *)resolution;
- (void)beginRecording:(id *)recording;
- (void)endPlayback:(id *)playback;
- (void)endRecording:(id *)recording;
- (void)firstKeyframe;
- (void)getKeyframeInputTangents:(void *)tangents inTanTime:(double *)time inTanValue:(double *)value;
- (void)getKeyframeOutputTangents:(void *)tangents outTanTime:(double *)time outTanValue:(double *)value;
- (void)getKeyframes:(void *)keyframes enabledOnly:(BOOL)only;
- (void)keyframeAtTime:(id *)time;
- (void)lastKeyframe;
- (void)nextKeyframe:(void *)keyframe;
- (void)nextKeyframeFromTime:(id *)time;
- (void)offsetKeyframesInTime:(id *)time;
- (void)previousKeyframe:(void *)keyframe;
- (void)previousKeyframeFromTime:(id *)time;
- (void)removeAllKeyframes:(unint64_t)keyframes;
- (void)retimeKeyframesWithScale:(double)scale;
- (void)setCurveExtrapolation:(unsigned int)extrapolation direction:(unsigned int)direction;
- (void)setCurveInterpolation:(unsigned int)interpolation;
- (void)setCurveValueWithDouble:(double)double atTime:(id *)time options:(unsigned int)options;
- (void)setFadeInCurve:(unsigned int)curve;
- (void)setFadeInOffset:(id *)offset;
- (void)setFadeOutCurve:(unsigned int)curve;
- (void)setFadeOutOffset:(id *)offset;
- (void)setInitialCurveValueWithDouble:(double)double;
- (void)setKeyframeInputTangents:(void *)tangents inTanTime:(double)time inTanValue:(double)value;
- (void)setKeyframeOutputTangents:(void *)tangents outTanTime:(double)time outTanValue:(double)value;
- (void)setScale:(double)scale;
- (void)setSegmentInterpolation:(void *)interpolation interpolation:(unsigned int)a4;
- (void)setSegmentSpeed:(void *)speed speed:(unsigned int)a4;
- (void)setSliderTransformerName:(id)name;
- (void)setSuffix:(id)suffix;
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

- (BOOL)hasKeyframeAtTime:(id *)time
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  return OZChannel::getKeyframe(pOZChannel, time) != 0;
}

- (void)removeAllKeyframes:(unint64_t)keyframes
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  if (keyframes)
  {
    v5 = *(pOZChannel->var0 + 94);

    v5();
  }

  else
  {

    OZChannel::resetCurve(pOZChannel);
  }
}

- (BOOL)removeKeyframeAtTime:(id *)time
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v5 = 0;
  }

  (*(*v5 + 336))(v7, v5, time);
  return (*(*v5 + 744))(v5, v7, 1);
}

- (BOOL)moveKeyframeAtTime:(id *)time toTime:(id *)toTime
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v7 = 0;
  }

  (*(*v7 + 336))(v10, v7, time);
  (*(*v7 + 336))(v9, v7, toTime);
  return (*(*v7 + 760))(v7, v10, v9, 1);
}

- (void)retimeKeyframesWithScale:(double)scale
{
  scaleCopy = scale;
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  v5 = *(*pOZChannel + 640);
  scale = scaleCopy;

  v5(*&scale);
}

- (void)offsetKeyframesInTime:(id *)time
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  OZChannel::linearTimeWarp(pOZChannel, 1.0, time);
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

- (void)setCurveInterpolation:(unsigned int)interpolation
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  v4 = *(*pOZChannel + 656);

  v4();
}

- (void)setCurveExtrapolation:(unsigned int)extrapolation direction:(unsigned int)direction
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  v5 = *(*pOZChannel + 384);

  v5();
}

- (unsigned)curveExtrapolation:(unsigned int)extrapolation
{
  v3 = *&extrapolation;
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  return OZChannel::getExtrapolation(pOZChannel, v3);
}

- (void)setSegmentInterpolation:(void *)interpolation interpolation:(unsigned int)a4
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  OZChannel::setKeyframeInterpolation(pOZChannel, interpolation);
}

- (unsigned)segmentInterpolation:(void *)interpolation
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  return OZChannel::getKeyframeInterpolation(pOZChannel, interpolation);
}

- (void)setSegmentSpeed:(void *)speed speed:(unsigned int)a4
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  OZChannel::setCurveSegmentSpeed(pOZChannel, speed);
}

- (unsigned)segmentSpeed:(void *)speed
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  return OZChannel::getCurveSegmentSpeed(pOZChannel, speed);
}

- (void)adjustSegmentSpeed:(void *)speed offset:(double)offset
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  OZChannel::offsetCurveSegmentSpeed(pOZChannel, speed, offset);
}

- (BOOL)createCurveSegment:(id *)segment maxTime:(id *)time deltaTime:(id *)deltaTime ease:(BOOL)ease
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v10 = 0;
  }

  (*(v10->var0 + 41))(&v13, v10, segment);
  (*(v10->var0 + 41))(&v12, v10, time);
  return OZChannel::createCurveSegment(v10, &v13, &v12, deltaTime);
}

- (void)setSliderTransformerName:(id)name
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  OZChannel::setSliderTransformerName(pOZChannel, name);
}

- (void)beginPlayback:(id *)playback scope:(unsigned int)scope mode:(unsigned int)mode resolution:(id *)resolution
{
  v7 = *&mode;
  v8 = *&scope;
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v11 = 0;
  }

  (*(*v11 + 336))(v12, v11, playback);
  (*(*v11 + 160))(v11, v12, v8, v7, resolution);
}

- (void)endPlayback:(id *)playback
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v5 = 0;
  }

  (*(*v5 + 336))(v6, v5, playback);
  (*(*v5 + 168))(v5, v6);
}

- (void)beginRecording:(id *)recording
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v5 = 0;
  }

  (*(*v5 + 336))(v6, v5, recording);
  (*(*v5 + 176))(v5, v6);
}

- (void)endRecording:(id *)recording
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v5 = 0;
  }

  (*(*v5 + 336))(v6, v5, recording);
  (*(*v5 + 184))(v5, v6);
}

- (BOOL)isPlayingWithScope:(unsigned int *)scope mode:(unsigned int *)mode resolution:(id *)resolution
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

- (void)keyframeAtTime:(id *)time
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  return OZChannel::getKeyframe(pOZChannel, time);
}

- (BOOL)getKeyframe:(void *)keyframe time:(id *)time value:(double *)value
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  return OZChannel::getKeyframe(pOZChannel, keyframe, time, value);
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

- (void)nextKeyframe:(void *)keyframe
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  return OZChannel::getNextEnabledKeyframe(pOZChannel, keyframe);
}

- (void)previousKeyframe:(void *)keyframe
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  return OZChannel::getPreviousEnabledKeyframe(pOZChannel, keyframe);
}

- (void)nextKeyframeFromTime:(id *)time
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  return OZChannel::getNextEnabledKeyframe(pOZChannel, time);
}

- (void)previousKeyframeFromTime:(id *)time
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  return OZChannel::getPreviousEnabledKeyframe(pOZChannel, time);
}

- (BOOL)removeKeyframe:(void *)keyframe
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  return OZChannel::deleteKeyframe(pOZChannel, keyframe);
}

- (BOOL)moveKeyframe:(void *)keyframe toTime:(id *)time constrainToOtherKeys:(BOOL)keys
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  v6 = *(*pOZChannel + 840);

  return v6();
}

- (void)appendKeyframes:(unsigned int)keyframes times:(id *)times values:(double *)values
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  OZChannel::appendKeyframes(pOZChannel, keyframes, times, values);
}

- (void)getKeyframes:(void *)keyframes enabledOnly:(BOOL)only
{
  onlyCopy = only;
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  OZChannel::getKeyframes(pOZChannel, onlyCopy, &v11);
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
      *keyframes++ = v10;
      --v8;
    }

    while (v8);
  }

  v12 = v7;
  operator delete(v7);
}

- (void)setKeyframeInputTangents:(void *)tangents inTanTime:(double)time inTanValue:(double)value
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  OZChannel::setKeyframeInputTangents(pOZChannel, tangents, time, value, 1);
}

- (void)setKeyframeOutputTangents:(void *)tangents outTanTime:(double)time outTanValue:(double)value
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  OZChannel::setKeyframeOutputTangents(pOZChannel, tangents, time, value, 1);
}

- (void)getKeyframeInputTangents:(void *)tangents inTanTime:(double *)time inTanValue:(double *)value
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  OZChannel::getKeyframeInputTangents(pOZChannel, tangents, time, value, 1);
}

- (void)getKeyframeOutputTangents:(void *)tangents outTanTime:(double *)time outTanValue:(double *)value
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  OZChannel::getKeyframeOutputTangents(pOZChannel, tangents, time, value, 1);
}

- (void)setFadeInOffset:(id *)offset
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  OZChannel::setFadeInOffset(pOZChannel, offset, 1);
}

- (void)setFadeOutOffset:(id *)offset
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  OZChannel::setFadeOutOffset(pOZChannel, offset, 1);
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

- (void)setFadeInCurve:(unsigned int)curve
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  OZChannel::setFadeInCurve(pOZChannel, curve);
}

- (void)setFadeOutCurve:(unsigned int)curve
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  OZChannel::setFadeOutCurve(pOZChannel, curve);
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

- (double)fadeRatio:(id *)ratio
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  return OZChannel::getFadeRatio(pOZChannel, ratio);
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

- (BOOL)hasDifferentValuesForRange:(id *)range
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  v5 = *&range->var0.var3;
  *&v7.start.value = *&range->var0.var0;
  *&v7.start.epoch = v5;
  *&v7.duration.timescale = *&range->var1.var1;
  return OZChannel::hasDifferentValuesForRange(pOZChannel, &v7);
}

- (double)valueAsDoubleAtTime:(id *)time
{
  pOZChannel = self->super._pOZChannel;
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

- (double)curveValueAsDoubleAtTime:(id *)time
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  return OZChannel::getCurveValue(pOZChannel, time, 0);
}

- (void)setCurveValueWithDouble:(double)double atTime:(id *)time options:(unsigned int)options
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
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
    if (options)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(v13->var0 + 42))(v15, v13, time);
    v14 = (*(v13->var0 + 89))(v13, v15, 0, double);
    goto LABEL_10;
  }

  v13 = 0;
  if (!options)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (options == 2)
  {
    v14 = OZChannel::setCurveSegmentValue(v13, time, double, 1);
  }

  else
  {
    v14 = OZChannel::setKeyframe(v13, time, double, 1);
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

- (void)setInitialCurveValueWithDouble:(double)double
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  OZChannel::setInitialValue(pOZChannel, double, 0);
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

- (BOOL)getFirstKeyframeTime:(id *)time curveValueAsDouble:(double *)double
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  return OZChannel::getFirstKeyframe(pOZChannel, time, double);
}

- (BOOL)getLastKeyframeTime:(id *)time curveValueAsDouble:(double *)double
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  return OZChannel::getLastKeyframe(pOZChannel, time, double);
}

- (BOOL)getKeyframeAfterTime:(id *)time time:(id *)a4 curveValueAsDouble:(double *)double
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  return OZChannel::getNextKeyframe(pOZChannel, time, a4, double);
}

- (BOOL)getKeyframeBeforeTime:(id *)time time:(id *)a4 curveValueAsDouble:(double *)double
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  return OZChannel::getPreviousKeyframe(pOZChannel, time, a4, double);
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)localToGlobalTime:(SEL)time
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  v5 = *(*pOZChannel + 336);

  return v5();
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)globalToLocalTime:(SEL)time
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  v5 = *(*pOZChannel + 328);

  return v5();
}

- (BOOL)getTime:(id *)time forCurveDoubleValue:(double)value inRange:(id *)range frameDuration:(id *)duration options:(unsigned int)options
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  v22 = *&range->var0.var0;
  var3 = range->var0.var3;
  v24 = *&range->var1.var0;
  v25 = range->var1.var3;
  __p = 0;
  v20 = 0;
  v21 = 0;
  v17 = *&duration->var0;
  v18 = duration->var3;
  TimeForValue = OZChannel::getTimeForValue(pOZChannel, &__p, &v22, &v17, value);
  v13 = TimeForValue ^ 1;
  v14 = __p;
  if (!time)
  {
    v13 = 1;
  }

  if ((v13 & 1) == 0)
  {
    v15 = *__p;
    time->var3 = *(__p + 2);
    *&time->var0 = v15;
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

- (void)setSuffix:(id)suffix
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
  PCString::set(&v6, suffix);
  OZChannel::setSuffix(v5, &v6);
  PCString::~PCString(&v6);
}

- (void)setScale:(double)scale
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  OZChannel::setScale(pOZChannel, scale);
}

@end