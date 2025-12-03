@interface MathUtility
+ (double)computeNewVarianceFromValue:(double)value currentMean:(double)mean currentCount:(unint64_t)count currentVariance:(double)variance;
+ (unsigned)getMegabytesSignificantFiguresHistogramBinIndexForBytes:(unint64_t)bytes;
@end

@implementation MathUtility

+ (double)computeNewVarianceFromValue:(double)value currentMean:(double)mean currentCount:(unint64_t)count currentVariance:(double)variance
{
  if (!count)
  {
    return 0.0;
  }

  [MathUtility computeNewMeanFromValue:"computeNewMeanFromValue:currentMean:currentCount:" currentMean:? currentCount:?];
  return ((value - mean) * (value - v10) + variance * (count - 1)) / count;
}

+ (unsigned)getMegabytesSignificantFiguresHistogramBinIndexForBytes:(unint64_t)bytes
{
  v3 = bytes >> 20;
  if (bytes >= 0xA00000)
  {
    v4 = 0;
    LODWORD(v6) = 10;
    do
    {
      v6 = (10 * v6);
      v4 += 9;
    }

    while (v3 >= v6);
    v5 = v6 / 0xA;
  }

  else
  {
    v4 = 0;
    v5 = 1;
  }

  return v3 / v5 + v4;
}

@end