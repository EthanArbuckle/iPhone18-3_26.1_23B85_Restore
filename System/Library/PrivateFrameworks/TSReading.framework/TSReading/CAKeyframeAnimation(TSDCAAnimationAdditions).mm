@interface CAKeyframeAnimation(TSDCAAnimationAdditions)
- (double)TSD_animationPercentByApplyingTimingFunctionForKeyPath:()TSDCAAnimationAdditions atTime:;
- (uint64_t)TSD_valueAtTime:()TSDCAAnimationAdditions initialValue:;
- (void)p_getValue:()TSDCAAnimationAdditions animationPercent:atTime:initialValue:;
@end

@implementation CAKeyframeAnimation(TSDCAAnimationAdditions)

- (void)p_getValue:()TSDCAAnimationAdditions animationPercent:atTime:initialValue:
{
  v41 = *MEMORY[0x277D85DE8];
  [self TSD_animationPercentFromAnimationTime:?];
  v10 = v9;
  if (v9 < 0.0)
  {
    fillMode = [self fillMode];
    if (([fillMode isEqualToString:*MEMORY[0x277CDA228]] & 1) == 0)
    {
      fillMode2 = [self fillMode];
      result = [fillMode2 isEqualToString:*MEMORY[0x277CDA230]];
      if (!result)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_7;
  }

  if (v9 == 0.0 || ([objc_msgSend(objc_msgSend(self "keyTimes")], v10 < v14))
  {
LABEL_7:
    result = [objc_msgSend(self "values")];
LABEL_8:
    a5 = result;
    goto LABEL_9;
  }

  if (v10 == 1.0)
  {
LABEL_15:
    result = [objc_msgSend(self "values")];
    goto LABEL_8;
  }

  if (v10 > 1.0 || v10 < 1.0 && ([objc_msgSend(objc_msgSend(self "keyTimes")], v10 > v17))
  {
    fillMode3 = [self fillMode];
    if (([fillMode3 isEqualToString:*MEMORY[0x277CDA238]] & 1) == 0)
    {
      fillMode4 = [self fillMode];
      result = [fillMode4 isEqualToString:*MEMORY[0x277CDA230]];
      if (!result)
      {
LABEL_9:
        if (!a3)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }
    }

    goto LABEL_15;
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  keyTimes = [self keyTimes];
  v19 = [keyTimes countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v37;
    while (2)
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v37 != v21)
        {
          objc_enumerationMutation(keyTimes);
        }

        v23 = *(*(&v36 + 1) + 8 * i);
        [v23 doubleValue];
        if (v10 < v24)
        {
          v25 = [objc_msgSend(self "keyTimes")] - 1;
          goto LABEL_32;
        }
      }

      v20 = [keyTimes countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (v20)
      {
        continue;
      }

      break;
    }
  }

  v25 = 0;
LABEL_32:
  [objc_msgSend(objc_msgSend(self "keyTimes")];
  v27 = v26;
  [objc_msgSend(objc_msgSend(self "keyTimes")];
  v29 = v28;
  v30 = [objc_msgSend(self "values")];
  v31 = [objc_msgSend(self "values")];
  result = [objc_msgSend(self "timingFunctions")];
  v10 = (v10 - v27) / (v29 - v27);
  if (result)
  {
    result = [result TSD_valueAtPercent:v10];
    v10 = v32;
  }

  if (a3)
  {
    v33 = [self p_interpolatedValueFrom:v30 to:v31 percent:v10];
    if (v33)
    {
      a5 = v33;
    }

    else
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[CAKeyframeAnimation(TSDCAAnimationAdditions) p_getValue:animationPercent:atTime:initialValue:]"];
      [currentHandler handleFailureInFunction:v35 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/CAAnimationAdditions.m"), 444, @"result is nil!"}];
      a5 = 0;
    }

LABEL_10:
    result = [self p_adjustedResultWithValue:a5];
    *a3 = result;
  }

LABEL_11:
  if (a4)
  {
    *a4 = v10;
  }

  return result;
}

- (uint64_t)TSD_valueAtTime:()TSDCAAnimationAdditions initialValue:
{
  v4 = 0;
  [self p_getValue:&v4 animationPercent:0 atTime:a3 initialValue:?];
  return v4;
}

- (double)TSD_animationPercentByApplyingTimingFunctionForKeyPath:()TSDCAAnimationAdditions atTime:
{
  v2 = 0.0;
  [self p_getValue:0 animationPercent:&v2 atTime:0 initialValue:?];
  return v2;
}

@end