@interface TVPPlaybackUtilities
+ (double)playedThresholdTimeForDuration:(double)duration;
+ (double)suggestedBookmarkTimeForElapsedTime:(double)time duration:(double)duration playedThreshold:(id)threshold;
@end

@implementation TVPPlaybackUtilities

+ (double)playedThresholdTimeForDuration:(double)duration
{
  v3 = 0.0;
  if (duration != 0.0 && duration > 0.0 && duration != 3.40282347e38)
  {
    if (duration < 10.0)
    {
      return duration;
    }

    if (duration >= 900.0)
    {
      if (duration >= 1800.0)
      {
        if (duration >= 3900.0)
        {
          if (duration >= 6000.0)
          {
            v5 = -660.0;
            return duration + v5;
          }

          v6 = 0xC07E000000000000;
        }

        else
        {
          v6 = 0xC06E000000000000;
        }

        v5 = *&v6;
      }

      else
      {
        v5 = -180.0;
      }
    }

    else
    {
      v5 = -10.0;
    }

    return duration + v5;
  }

  return v3;
}

+ (double)suggestedBookmarkTimeForElapsedTime:(double)time duration:(double)duration playedThreshold:(id)threshold
{
  thresholdCopy = threshold;
  v9 = thresholdCopy;
  timeCopy = 0.0;
  if (duration != 0.0 && time >= 15.0 && duration > 0.0 && duration != 3.40282347e38)
  {
    if (thresholdCopy && ([thresholdCopy doubleValue], v11 > 0.0))
    {
      [v9 doubleValue];
      v13 = fmin(duration, v12);
    }

    else
    {
      [self playedThresholdTimeForDuration:duration];
    }

    if (v13 <= time)
    {
      timeCopy = 0.0;
    }

    else
    {
      timeCopy = time;
    }
  }

  return timeCopy;
}

@end