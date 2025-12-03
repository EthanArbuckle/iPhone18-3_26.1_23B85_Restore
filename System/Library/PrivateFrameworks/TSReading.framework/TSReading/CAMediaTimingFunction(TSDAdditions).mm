@interface CAMediaTimingFunction(TSDAdditions)
- (id)bezierPath;
- (uint64_t)solveForTime:()TSDAdditions;
@end

@implementation CAMediaTimingFunction(TSDAdditions)

- (id)bezierPath
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = +[TSDBezierPath bezierPath];
  v12[0] = 0;
  [self getControlPointAtIndex:0 values:v12];
  v3 = *v12;
  v4 = *(v12 + 1);
  [self getControlPointAtIndex:1 values:v12];
  v5 = *v12;
  v6 = *(v12 + 1);
  [self getControlPointAtIndex:2 values:v12];
  v7 = *v12;
  v8 = *(v12 + 1);
  [self getControlPointAtIndex:3 values:v12];
  v9 = *v12;
  v10 = *(v12 + 1);
  [v2 moveToPoint:{v3, v4}];
  [v2 curveToPoint:v9 controlPoint1:v10 controlPoint2:{v5, v6, v7, v8}];
  return v2;
}

- (uint64_t)solveForTime:()TSDAdditions
{
  bezierPath = [self bezierPath];
  TSUClamp();

  return [bezierPath yValueFromXValue:?];
}

@end