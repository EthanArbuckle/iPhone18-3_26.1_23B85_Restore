@interface CAMediaTimingFunction(TSDCAAnimationAdditions)
- (void)TSD_valueAtPercent:()TSDCAAnimationAdditions;
@end

@implementation CAMediaTimingFunction(TSDCAAnimationAdditions)

- (void)TSD_valueAtPercent:()TSDCAAnimationAdditions
{
  v15 = *MEMORY[0x277D85DE8];
  if (a2 < 0.0 || a2 > 1.0)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[CAMediaTimingFunction(TSDCAAnimationAdditions) TSD_valueAtPercent:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/CAAnimationAdditions.m"), 56, @"percent(%0.3f) is outside [0, 1]!", *&a2}];
  }

  if (a2 != 0.0 && a2 != 1.0)
  {
    if (TSD_valueAtPercent__onceToken != -1)
    {
      [CAMediaTimingFunction(TSDCAAnimationAdditions) TSD_valueAtPercent:];
    }

    v8 = 0;
    while (![self isEqual:TSD_valueAtPercent__s_CAMediaTimingFunctionsCacheArray[v8]])
    {
      if (++v8 == 5)
      {
        [self getControlPointAtIndex:0 values:v14];
        [self getControlPointAtIndex:1 values:v13];
        [self getControlPointAtIndex:2 values:v12];
        [self getControlPointAtIndex:3 values:v11];
        v9 = objc_opt_new();
        [v9 moveToPoint:{v14[0], v14[1]}];
        [v9 curveToPoint:v11[0] controlPoint1:v11[1] controlPoint2:{v13[0], v13[1], v12[0], v12[1]}];
        [v9 yValueFromXValue:a2];

        return;
      }
    }

    v10 = TSD_valueAtPercent__s_TSDBezierPathsCacheArray[v8];

    [v10 yValueFromXValue:a2];
  }
}

@end