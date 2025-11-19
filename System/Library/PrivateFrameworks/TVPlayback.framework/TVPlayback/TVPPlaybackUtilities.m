@interface TVPPlaybackUtilities
+ (double)playedThresholdTimeForDuration:(double)a3;
+ (double)suggestedBookmarkTimeForElapsedTime:(double)a3 duration:(double)a4 playedThreshold:(id)a5;
@end

@implementation TVPPlaybackUtilities

+ (double)playedThresholdTimeForDuration:(double)a3
{
  v3 = 0.0;
  if (a3 != 0.0 && a3 > 0.0 && a3 != 3.40282347e38)
  {
    if (a3 < 10.0)
    {
      return a3;
    }

    if (a3 >= 900.0)
    {
      if (a3 >= 1800.0)
      {
        if (a3 >= 3900.0)
        {
          if (a3 >= 6000.0)
          {
            v5 = -660.0;
            return a3 + v5;
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

    return a3 + v5;
  }

  return v3;
}

+ (double)suggestedBookmarkTimeForElapsedTime:(double)a3 duration:(double)a4 playedThreshold:(id)a5
{
  v8 = a5;
  v9 = v8;
  v10 = 0.0;
  if (a4 != 0.0 && a3 >= 15.0 && a4 > 0.0 && a4 != 3.40282347e38)
  {
    if (v8 && ([v8 doubleValue], v11 > 0.0))
    {
      [v9 doubleValue];
      v13 = fmin(a4, v12);
    }

    else
    {
      [a1 playedThresholdTimeForDuration:a4];
    }

    if (v13 <= a3)
    {
      v10 = 0.0;
    }

    else
    {
      v10 = a3;
    }
  }

  return v10;
}

@end