@interface MathUtility
+ (double)computeNewVarianceFromValue:(double)a3 currentMean:(double)a4 currentCount:(unint64_t)a5 currentVariance:(double)a6;
+ (unsigned)getMegabytesSignificantFiguresHistogramBinIndexForBytes:(unint64_t)a3;
@end

@implementation MathUtility

+ (double)computeNewVarianceFromValue:(double)a3 currentMean:(double)a4 currentCount:(unint64_t)a5 currentVariance:(double)a6
{
  if (!a5)
  {
    return 0.0;
  }

  [MathUtility computeNewMeanFromValue:"computeNewMeanFromValue:currentMean:currentCount:" currentMean:? currentCount:?];
  return ((a3 - a4) * (a3 - v10) + a6 * (a5 - 1)) / a5;
}

+ (unsigned)getMegabytesSignificantFiguresHistogramBinIndexForBytes:(unint64_t)a3
{
  v3 = a3 >> 20;
  if (a3 >= 0xA00000)
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