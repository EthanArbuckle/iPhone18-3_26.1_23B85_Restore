@interface SBSensorAccessMinimumOnTimeProvider
+ (SensorAccessIndicator)sharedSensorAccessIndicator;
+ (double)_remainingTimeToSatisfyMinimumOnTimeForIndicators:(int64_t)indicators error:(id *)error;
- (double)remainingTimeToSatisfyMinimumOnTimeForIndicators:(int64_t)indicators error:(id *)error;
@end

@implementation SBSensorAccessMinimumOnTimeProvider

- (double)remainingTimeToSatisfyMinimumOnTimeForIndicators:(int64_t)indicators error:(id *)error
{
  v6 = objc_opt_class();

  [v6 _remainingTimeToSatisfyMinimumOnTimeForIndicators:indicators error:error];
  return result;
}

+ (SensorAccessIndicator)sharedSensorAccessIndicator
{
  if (sharedSensorAccessIndicator_onceToken != -1)
  {
    +[SBSensorAccessMinimumOnTimeProvider sharedSensorAccessIndicator];
  }

  v3 = sharedSensorAccessIndicator___sharedSensorAccessIndicator;

  return v3;
}

void __66__SBSensorAccessMinimumOnTimeProvider_sharedSensorAccessIndicator__block_invoke()
{
  if ([MEMORY[0x277D4D398] secureIndicatorPolicyEnforced])
  {
    v0 = objc_alloc_init(MEMORY[0x277D4D398]);
  }

  else
  {
    v0 = 0;
  }

  v1 = sharedSensorAccessIndicator___sharedSensorAccessIndicator;
  sharedSensorAccessIndicator___sharedSensorAccessIndicator = v0;
}

+ (double)_remainingTimeToSatisfyMinimumOnTimeForIndicators:(int64_t)indicators error:(id *)error
{
  if ((indicators & 3) == 0)
  {
    return 0.0;
  }

  indicatorsCopy = indicators;
  sharedSensorAccessIndicator = [self sharedSensorAccessIndicator];
  v7 = sharedSensorAccessIndicator;
  if (sharedSensorAccessIndicator)
  {
    v15 = 0;
    v8 = [sharedSensorAccessIndicator getRemainingTimeThrowsAndReturnError:&v15];
    v9 = v15;
    v10 = v9;
    if (!v8 || v9)
    {
      v11 = 3.0;
      if (error && v9)
      {
        v13 = v9;
        *error = v10;
      }
    }

    else
    {
      v11 = 0.0;
      if (indicatorsCopy)
      {
        v11 = fmax([v8 remainingMicrophoneDurationNanoSeconds] / 1000000000.0, 0.0);
      }

      if ((indicatorsCopy & 2) != 0)
      {
        remainingCameraDurationNanoSeconds = [v8 remainingCameraDurationNanoSeconds];
        if (v11 < remainingCameraDurationNanoSeconds / 1000000000.0)
        {
          v11 = remainingCameraDurationNanoSeconds / 1000000000.0;
        }
      }
    }
  }

  else
  {
    v11 = 0.0;
  }

  return v11;
}

@end