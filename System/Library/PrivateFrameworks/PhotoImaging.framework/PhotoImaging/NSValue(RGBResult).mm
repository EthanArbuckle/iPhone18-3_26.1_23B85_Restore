@interface NSValue(RGBResult)
+ (id)valueWithRGBResult:()RGBResult;
- (double)RGBResultValue;
@end

@implementation NSValue(RGBResult)

- (double)RGBResultValue
{
  memset(v2, 0, sizeof(v2));
  [a1 getValue:v2];
  return *v2;
}

+ (id)valueWithRGBResult:()RGBResult
{
  *v7 = a2;
  *&v7[1] = a3;
  *&v7[2] = a4;
  *&v7[3] = a5;
  v5 = [a1 valueWithBytes:v7 objCType:"{?=[4d]}"];

  return v5;
}

@end