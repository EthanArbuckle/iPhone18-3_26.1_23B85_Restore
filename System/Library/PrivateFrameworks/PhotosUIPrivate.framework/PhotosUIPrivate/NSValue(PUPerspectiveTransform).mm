@interface NSValue(PUPerspectiveTransform)
+ (id)pu_valueWithPUPerspectiveTransform:()PUPerspectiveTransform;
- (double)pu_PUPerspectiveTransformValue;
@end

@implementation NSValue(PUPerspectiveTransform)

- (double)pu_PUPerspectiveTransformValue
{
  v3 = 0;
  memset(v2, 0, sizeof(v2));
  [a1 getValue:v2];
  return *v2;
}

+ (id)pu_valueWithPUPerspectiveTransform:()PUPerspectiveTransform
{
  a2.n128_u32[3] = a3.i32[0];
  v6[0] = a2;
  v6[1] = vextq_s8(vextq_s8(a3, a3, 0xCuLL), a4, 8uLL);
  v7 = a4.u32[2];
  v4 = [a1 valueWithBytes:v6 objCType:"{PUBoxablePerspectiveTransform=fffffffff}"];

  return v4;
}

@end