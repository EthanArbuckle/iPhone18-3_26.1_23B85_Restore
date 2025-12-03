@interface CAAnimationGroup(TSDCAAnimationAdditions)
- (double)TSD_animationPercentByApplyingTimingFunctionForKeyPath:()TSDCAAnimationAdditions atTime:;
- (uint64_t)TSD_animationForKeyPath:()TSDCAAnimationAdditions atTime:;
- (uint64_t)TSD_containsAnimationForKeyPath:()TSDCAAnimationAdditions;
- (uint64_t)TSD_valueForKeyPath:()TSDCAAnimationAdditions atTime:animationCache:;
- (uint64_t)p_getValue:()TSDCAAnimationAdditions animation:animationPercent:forKeyPath:atTime:animationCache:;
@end

@implementation CAAnimationGroup(TSDCAAnimationAdditions)

- (uint64_t)TSD_containsAnimationForKeyPath:()TSDCAAnimationAdditions
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  animations = [self animations];
  result = [animations countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v10;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(animations);
        }

        if ([*(*(&v9 + 1) + 8 * v8) TSD_containsAnimationForKeyPath:a3])
        {
          return 1;
        }

        ++v8;
      }

      while (v6 != v8);
      result = [animations countByEnumeratingWithState:&v9 objects:v13 count:16];
      v6 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

- (uint64_t)p_getValue:()TSDCAAnimationAdditions animation:animationPercent:forKeyPath:atTime:animationCache:
{
  v38 = *MEMORY[0x277D85DE8];
  if ([self timingFunction])
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    if (v15 > *&p_getValue_animation_animationPercent_forKeyPath_atTime_animationCache__s_lastTimingFunctionAssertTimeInterval + 1.0)
    {
      p_getValue_animation_animationPercent_forKeyPath_atTime_animationCache__s_lastTimingFunctionAssertTimeInterval = *&v15;
    }
  }

  v32 = a6;
  initialValues = [objc_msgSend(a8 initialValues];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  animations = [self animations];
  result = [animations countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (result)
  {
    v19 = result;
    v20 = 0;
    v21 = *v34;
    v22 = 1.79769313e308;
    do
    {
      v23 = 0;
      do
      {
        if (*v34 != v21)
        {
          objc_enumerationMutation(animations);
        }

        v24 = *(*(&v33 + 1) + 8 * v23);
        if ([objc_msgSend(v24 "keyPath")])
        {
          [v24 TSD_animationPercentFromAnimationTime:a2];
          v26 = v25;
          v27 = 0.0;
          if (v26 < 0.0 || v26 > 1.0)
          {
            [self duration];
            if (v26 >= 0.0)
            {
              v27 = (v26 + -1.0) * v29;
            }

            else
            {
              v27 = -(v26 * v29);
            }
          }

          if (v27 < v22)
          {
            v20 = v24;
            v22 = v27;
          }
        }

        ++v23;
      }

      while (v19 != v23);
      result = [animations countByEnumeratingWithState:&v33 objects:v37 count:16];
      v19 = result;
    }

    while (result);
  }

  else
  {
    v20 = 0;
  }

  if (a5)
  {
    *a5 = v20;
  }

  if (v31)
  {
    if (v20)
    {
      result = [v20 TSD_valueAtTime:initialValues initialValue:a2];
      initialValues = result;
    }

    *v31 = initialValues;
  }

  if (v32)
  {
    result = [v20 TSD_animationPercentByApplyingTimingFunctionForKeyPath:a7 atTime:a2];
    *v32 = v30;
  }

  return result;
}

- (uint64_t)TSD_valueForKeyPath:()TSDCAAnimationAdditions atTime:animationCache:
{
  v5 = 0;
  [self p_getValue:&v5 animation:0 animationPercent:0 forKeyPath:a3 atTime:a4 animationCache:?];
  return v5;
}

- (uint64_t)TSD_animationForKeyPath:()TSDCAAnimationAdditions atTime:
{
  v4 = 0;
  [self p_getValue:0 animation:&v4 animationPercent:0 forKeyPath:a3 atTime:0 animationCache:?];
  return v4;
}

- (double)TSD_animationPercentByApplyingTimingFunctionForKeyPath:()TSDCAAnimationAdditions atTime:
{
  v4 = 0.0;
  [self p_getValue:0 animation:0 animationPercent:&v4 forKeyPath:a3 atTime:0 animationCache:?];
  return v4;
}

@end