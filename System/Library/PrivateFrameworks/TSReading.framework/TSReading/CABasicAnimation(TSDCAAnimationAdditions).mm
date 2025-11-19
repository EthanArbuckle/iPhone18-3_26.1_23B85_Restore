@interface CABasicAnimation(TSDCAAnimationAdditions)
- (double)TSD_animationPercentByApplyingTimingFunctionForKeyPath:()TSDCAAnimationAdditions atTime:;
- (uint64_t)TSD_valueAtTime:()TSDCAAnimationAdditions initialValue:;
- (uint64_t)p_getValue:()TSDCAAnimationAdditions animationPercent:atTime:initialValue:;
@end

@implementation CABasicAnimation(TSDCAAnimationAdditions)

- (uint64_t)p_getValue:()TSDCAAnimationAdditions animationPercent:atTime:initialValue:
{
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
        goto LABEL_8;
      }
    }

    goto LABEL_6;
  }

  if (v9 == 0.0)
  {
LABEL_6:
    result = [a1 fromValue];
LABEL_7:
    a5 = result;
    goto LABEL_8;
  }

  if (v9 == 1.0 && ([objc_msgSend(a1 "keyPath")] & 1) == 0)
  {
LABEL_22:
    result = [a1 toValue];
    goto LABEL_7;
  }

  if (v10 >= 1.0)
  {
    v15 = [a1 fillMode];
    if (([v15 isEqualToString:*MEMORY[0x277CDA238]] & 1) == 0)
    {
      v16 = [a1 fillMode];
      result = [v16 isEqualToString:*MEMORY[0x277CDA230]];
      if (!result)
      {
LABEL_8:
        if (!a3)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }
    }

    goto LABEL_22;
  }

  result = [a1 timingFunction];
  if (result)
  {
    result = [objc_msgSend(a1 "timingFunction")];
    v10 = v14;
  }

  if (a3)
  {
    a5 = [a1 p_interpolatedValueFrom:objc_msgSend(a1 to:"fromValue") percent:{objc_msgSend(a1, "toValue"), v10}];
LABEL_9:
    result = [a1 p_adjustedResultWithValue:a5];
    *a3 = result;
  }

LABEL_10:
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
  if (([objc_msgSend(a1 "keyPath")] & 1) == 0)
  {
    v7 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[CABasicAnimation(TSDCAAnimationAdditions) TSD_animationPercentByApplyingTimingFunctionForKeyPath:atTime:]"];
    [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/CAAnimationAdditions.m"), 360, @"Wrong keyPath! (Expected %@, was asked for %@)", objc_msgSend(a1, "keyPath"), a4}];
  }

  v10 = 0.0;
  [a1 p_getValue:0 animationPercent:&v10 atTime:0 initialValue:a2];
  return v10;
}

@end