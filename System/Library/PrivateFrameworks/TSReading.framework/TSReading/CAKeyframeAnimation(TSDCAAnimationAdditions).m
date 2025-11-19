@interface CAKeyframeAnimation(TSDCAAnimationAdditions)
- (double)TSD_animationPercentByApplyingTimingFunctionForKeyPath:()TSDCAAnimationAdditions atTime:;
- (uint64_t)TSD_valueAtTime:()TSDCAAnimationAdditions initialValue:;
- (void)p_getValue:()TSDCAAnimationAdditions animationPercent:atTime:initialValue:;
@end

@implementation CAKeyframeAnimation(TSDCAAnimationAdditions)

- (void)p_getValue:()TSDCAAnimationAdditions animationPercent:atTime:initialValue:
{
  v41 = *MEMORY[0x277D85DE8];
  [a1 TSD_animationPercentFromAnimationTime:?];
  v10 = v9;
  if (v9 < 0.0)
  {
    v11 = [a1 fillMode];
    if (([v11 isEqualToString:*MEMORY[0x277CDA228]] & 1) == 0)
    {
      v12 = [a1 fillMode];
      result = [v12 isEqualToString:*MEMORY[0x277CDA230]];
      if (!result)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_7;
  }

  if (v9 == 0.0 || ([objc_msgSend(objc_msgSend(a1 "keyTimes")], v10 < v14))
  {
LABEL_7:
    result = [objc_msgSend(a1 "values")];
LABEL_8:
    a5 = result;
    goto LABEL_9;
  }

  if (v10 == 1.0)
  {
LABEL_15:
    result = [objc_msgSend(a1 "values")];
    goto LABEL_8;
  }

  if (v10 > 1.0 || v10 < 1.0 && ([objc_msgSend(objc_msgSend(a1 "keyTimes")], v10 > v17))
  {
    v15 = [a1 fillMode];
    if (([v15 isEqualToString:*MEMORY[0x277CDA238]] & 1) == 0)
    {
      v16 = [a1 fillMode];
      result = [v16 isEqualToString:*MEMORY[0x277CDA230]];
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
  v18 = [a1 keyTimes];
  v19 = [v18 countByEnumeratingWithState:&v36 objects:v40 count:16];
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
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v36 + 1) + 8 * i);
        [v23 doubleValue];
        if (v10 < v24)
        {
          v25 = [objc_msgSend(a1 "keyTimes")] - 1;
          goto LABEL_32;
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (v20)
      {
        continue;
      }

      break;
    }
  }

  v25 = 0;
LABEL_32:
  [objc_msgSend(objc_msgSend(a1 "keyTimes")];
  v27 = v26;
  [objc_msgSend(objc_msgSend(a1 "keyTimes")];
  v29 = v28;
  v30 = [objc_msgSend(a1 "values")];
  v31 = [objc_msgSend(a1 "values")];
  result = [objc_msgSend(a1 "timingFunctions")];
  v10 = (v10 - v27) / (v29 - v27);
  if (result)
  {
    result = [result TSD_valueAtPercent:v10];
    v10 = v32;
  }

  if (a3)
  {
    v33 = [a1 p_interpolatedValueFrom:v30 to:v31 percent:v10];
    if (v33)
    {
      a5 = v33;
    }

    else
    {
      v34 = [MEMORY[0x277D6C290] currentHandler];
      v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[CAKeyframeAnimation(TSDCAAnimationAdditions) p_getValue:animationPercent:atTime:initialValue:]"];
      [v34 handleFailureInFunction:v35 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/CAAnimationAdditions.m"), 444, @"result is nil!"}];
      a5 = 0;
    }

LABEL_10:
    result = [a1 p_adjustedResultWithValue:a5];
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
  [a1 p_getValue:&v4 animationPercent:0 atTime:a3 initialValue:?];
  return v4;
}

- (double)TSD_animationPercentByApplyingTimingFunctionForKeyPath:()TSDCAAnimationAdditions atTime:
{
  v2 = 0.0;
  [a1 p_getValue:0 animationPercent:&v2 atTime:0 initialValue:?];
  return v2;
}

@end