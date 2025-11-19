@interface _UIMotionEffectEngineLogger
- (_UIMotionEffectEngineLogger)initWithFastUpdateInterval:(double)a3 slowUpdateInterval:(double)a4;
- (void)_dumpToAggregated;
- (void)recordMotionMagnitude:(double)a3 atTimestamp:(double)a4;
@end

@implementation _UIMotionEffectEngineLogger

- (_UIMotionEffectEngineLogger)initWithFastUpdateInterval:(double)a3 slowUpdateInterval:(double)a4
{
  v7.receiver = self;
  v7.super_class = _UIMotionEffectEngineLogger;
  result = [(_UIMotionEffectEngineLogger *)&v7 init];
  if (result)
  {
    _MergedGlobals_967 = (1.0 / a3);
    qword_1ED491CA0 = (1.0 / a4);
    result->_updateFreqency = (1.0 / a3);
    result->_lastUpdateTimeStamp = -1.0;
  }

  return result;
}

- (void)recordMotionMagnitude:(double)a3 atTimestamp:(double)a4
{
  lastUpdateTimeStamp = self->_lastUpdateTimeStamp;
  if (lastUpdateTimeStamp != a4)
  {
    if (lastUpdateTimeStamp == -1.0)
    {
      updateFreqency = self->_updateFreqency;
    }

    else if (lastUpdateTimeStamp == 0.0)
    {
      updateFreqency = 0;
    }

    else
    {
      v9 = (1.0 / (a4 - lastUpdateTimeStamp));
      v10 = _MergedGlobals_967;
      if (_MergedGlobals_967 <= v9)
      {
        updateFreqency = _MergedGlobals_967;
      }

      else
      {
        v11 = qword_1ED491CA0;
        if (qword_1ED491CA0 <= v9 || (updateFreqency = 1, v10 = qword_1ED491CA0, v11 = 1, v9 >= 1))
        {
          if (v10 - v9 <= v9 - v11)
          {
            updateFreqency = v10;
          }

          else
          {
            updateFreqency = v11;
          }
        }
      }
    }

    if (updateFreqency != self->_updateFreqency)
    {
      [(_UIMotionEffectEngineLogger *)self _dumpToAggregated];
      self->_updateFreqency = updateFreqency;
    }

    if (a3 <= 0.01)
    {
      v12 = 0;
    }

    else if (a3 <= 0.015)
    {
      v12 = 1;
    }

    else if (a3 <= 0.02)
    {
      v12 = 2;
    }

    else if (a3 <= 0.025)
    {
      v12 = 3;
    }

    else if (a3 <= 0.03)
    {
      v12 = 4;
    }

    else if (a3 <= 0.04)
    {
      v12 = 5;
    }

    else
    {
      v12 = 6;
      if (a3 > 0.05)
      {
        v12 = 7;
      }
    }

    ++self->_motionLevelSamples[v12];
    self->_lastUpdateTimeStamp = a4;
    sampleCount = self->_sampleCount;
    self->_sampleCount = sampleCount + 1;
    if (sampleCount >= 59)
    {

      [(_UIMotionEffectEngineLogger *)self _dumpToAggregated];
    }
  }
}

- (void)_dumpToAggregated
{
  v7 = _UIMainBundleIdentifier();
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", self->_updateFreqency];
  for (i = 0; i != 8; ++i)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@.%@", v3, off_1E71199D8[i], v7];
    v6 = [@"com.apple.UIKit.motion." stringByAppendingString:v5];

    ADClientAddValueForScalarKey();
    self->_motionLevelSamples[i] = 0;
  }

  self->_sampleCount = 0;
}

@end