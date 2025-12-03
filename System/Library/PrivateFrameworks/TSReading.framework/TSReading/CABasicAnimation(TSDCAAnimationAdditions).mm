@interface CABasicAnimation(TSDCAAnimationAdditions)
- (double)TSD_animationPercentByApplyingTimingFunctionForKeyPath:()TSDCAAnimationAdditions atTime:;
- (uint64_t)TSD_valueAtTime:()TSDCAAnimationAdditions initialValue:;
- (uint64_t)p_getValue:()TSDCAAnimationAdditions animationPercent:atTime:initialValue:;
@end

@implementation CABasicAnimation(TSDCAAnimationAdditions)

- (uint64_t)p_getValue:()TSDCAAnimationAdditions animationPercent:atTime:initialValue:
{
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
        goto LABEL_8;
      }
    }

    goto LABEL_6;
  }

  if (v9 == 0.0)
  {
LABEL_6:
    result = [self fromValue];
LABEL_7:
    a5 = result;
    goto LABEL_8;
  }

  if (v9 == 1.0 && ([objc_msgSend(self "keyPath")] & 1) == 0)
  {
LABEL_22:
    result = [self toValue];
    goto LABEL_7;
  }

  if (v10 >= 1.0)
  {
    fillMode3 = [self fillMode];
    if (([fillMode3 isEqualToString:*MEMORY[0x277CDA238]] & 1) == 0)
    {
      fillMode4 = [self fillMode];
      result = [fillMode4 isEqualToString:*MEMORY[0x277CDA230]];
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

  result = [self timingFunction];
  if (result)
  {
    result = [objc_msgSend(self "timingFunction")];
    v10 = v14;
  }

  if (a3)
  {
    a5 = [self p_interpolatedValueFrom:objc_msgSend(self to:"fromValue") percent:{objc_msgSend(self, "toValue"), v10}];
LABEL_9:
    result = [self p_adjustedResultWithValue:a5];
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
  [self p_getValue:&v4 animationPercent:0 atTime:a3 initialValue:?];
  return v4;
}

- (double)TSD_animationPercentByApplyingTimingFunctionForKeyPath:()TSDCAAnimationAdditions atTime:
{
  if (([objc_msgSend(self "keyPath")] & 1) == 0)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[CABasicAnimation(TSDCAAnimationAdditions) TSD_animationPercentByApplyingTimingFunctionForKeyPath:atTime:]"];
    [currentHandler handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/CAAnimationAdditions.m"), 360, @"Wrong keyPath! (Expected %@, was asked for %@)", objc_msgSend(self, "keyPath"), a4}];
  }

  v10 = 0.0;
  [self p_getValue:0 animationPercent:&v10 atTime:0 initialValue:a2];
  return v10;
}

@end