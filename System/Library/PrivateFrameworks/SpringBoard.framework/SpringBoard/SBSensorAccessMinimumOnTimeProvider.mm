@interface SBSensorAccessMinimumOnTimeProvider
+ (SensorAccessIndicator)sharedSensorAccessIndicator;
+ (double)_remainingTimeToSatisfyMinimumOnTimeForIndicators:(int64_t)a3 error:(id *)a4;
- (double)remainingTimeToSatisfyMinimumOnTimeForIndicators:(int64_t)a3 error:(id *)a4;
@end

@implementation SBSensorAccessMinimumOnTimeProvider

- (double)remainingTimeToSatisfyMinimumOnTimeForIndicators:(int64_t)a3 error:(id *)a4
{
  v6 = objc_opt_class();

  [v6 _remainingTimeToSatisfyMinimumOnTimeForIndicators:a3 error:a4];
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

+ (double)_remainingTimeToSatisfyMinimumOnTimeForIndicators:(int64_t)a3 error:(id *)a4
{
  if ((a3 & 3) == 0)
  {
    return 0.0;
  }

  v5 = a3;
  v6 = [a1 sharedSensorAccessIndicator];
  v7 = v6;
  if (v6)
  {
    v15 = 0;
    v8 = [v6 getRemainingTimeThrowsAndReturnError:&v15];
    v9 = v15;
    v10 = v9;
    if (!v8 || v9)
    {
      v11 = 3.0;
      if (a4 && v9)
      {
        v13 = v9;
        *a4 = v10;
      }
    }

    else
    {
      v11 = 0.0;
      if (v5)
      {
        v11 = fmax([v8 remainingMicrophoneDurationNanoSeconds] / 1000000000.0, 0.0);
      }

      if ((v5 & 2) != 0)
      {
        v12 = [v8 remainingCameraDurationNanoSeconds];
        if (v11 < v12 / 1000000000.0)
        {
          v11 = v12 / 1000000000.0;
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