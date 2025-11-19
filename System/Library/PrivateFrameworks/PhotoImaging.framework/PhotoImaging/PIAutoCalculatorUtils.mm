@interface PIAutoCalculatorUtils
+ (CGPoint)averageCGPoints:(const CGPoint *)a3 pointCount:(unint64_t)a4;
+ (CGPoint)averagePoints:(const CGPoint *)a3 pointCount:(unint64_t)a4;
+ (CGPoint)convertFacePoint:(CGPoint)a3 toImagePointWithFaceRect:(CGRect)a4 orientation:(int64_t)a5;
@end

@implementation PIAutoCalculatorUtils

+ (CGPoint)averageCGPoints:(const CGPoint *)a3 pointCount:(unint64_t)a4
{
  v4 = 0uLL;
  if (a4)
  {
    v5 = a4;
    do
    {
      v6 = *a3++;
      v4 = vaddq_f64(v4, v6);
      --v5;
    }

    while (v5);
  }

  v7 = vdivq_f64(v4, vdupq_lane_s64(COERCE__INT64(a4), 0));
  v8 = v7.f64[1];
  result.x = v7.f64[0];
  result.y = v8;
  return result;
}

+ (CGPoint)averagePoints:(const CGPoint *)a3 pointCount:(unint64_t)a4
{
  v4 = 0uLL;
  if (a4)
  {
    v5 = a4;
    do
    {
      v6 = *a3++;
      v4 = vaddq_f64(v4, v6);
      --v5;
    }

    while (v5);
  }

  v7 = vdivq_f64(v4, vdupq_lane_s64(COERCE__INT64(a4), 0));
  v8 = v7.f64[1];
  result.x = v7.f64[0];
  result.y = v8;
  return result;
}

+ (CGPoint)convertFacePoint:(CGPoint)a3 toImagePointWithFaceRect:(CGRect)a4 orientation:(int64_t)a5
{
  MEMORY[0x1EEE1FB80](a5, 1, 1, *MEMORY[0x1E69B38F8], *(MEMORY[0x1E69B38F8] + 8), a4.origin.x + a3.x * a4.size.width, a4.origin.y + a3.y * a4.size.height);
  result.y = v6;
  result.x = v5;
  return result;
}

@end