@interface PIAutoCalculatorUtils
+ (CGPoint)averageCGPoints:(const CGPoint *)points pointCount:(unint64_t)count;
+ (CGPoint)averagePoints:(const CGPoint *)points pointCount:(unint64_t)count;
+ (CGPoint)convertFacePoint:(CGPoint)point toImagePointWithFaceRect:(CGRect)rect orientation:(int64_t)orientation;
@end

@implementation PIAutoCalculatorUtils

+ (CGPoint)averageCGPoints:(const CGPoint *)points pointCount:(unint64_t)count
{
  v4 = 0uLL;
  if (count)
  {
    countCopy = count;
    do
    {
      v6 = *points++;
      v4 = vaddq_f64(v4, v6);
      --countCopy;
    }

    while (countCopy);
  }

  v7 = vdivq_f64(v4, vdupq_lane_s64(COERCE__INT64(count), 0));
  v8 = v7.f64[1];
  result.x = v7.f64[0];
  result.y = v8;
  return result;
}

+ (CGPoint)averagePoints:(const CGPoint *)points pointCount:(unint64_t)count
{
  v4 = 0uLL;
  if (count)
  {
    countCopy = count;
    do
    {
      v6 = *points++;
      v4 = vaddq_f64(v4, v6);
      --countCopy;
    }

    while (countCopy);
  }

  v7 = vdivq_f64(v4, vdupq_lane_s64(COERCE__INT64(count), 0));
  v8 = v7.f64[1];
  result.x = v7.f64[0];
  result.y = v8;
  return result;
}

+ (CGPoint)convertFacePoint:(CGPoint)point toImagePointWithFaceRect:(CGRect)rect orientation:(int64_t)orientation
{
  MEMORY[0x1EEE1FB80](orientation, 1, 1, *MEMORY[0x1E69B38F8], *(MEMORY[0x1E69B38F8] + 8), rect.origin.x + point.x * rect.size.width, rect.origin.y + point.y * rect.size.height);
  result.y = v6;
  result.x = v5;
  return result;
}

@end