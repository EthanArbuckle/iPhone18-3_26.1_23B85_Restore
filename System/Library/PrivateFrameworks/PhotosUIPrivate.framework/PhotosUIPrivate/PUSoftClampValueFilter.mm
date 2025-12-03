@interface PUSoftClampValueFilter
+ (id)scrollViewFilter;
- (double)updatedValue:(double)value withTargetValue:(double)targetValue;
@end

@implementation PUSoftClampValueFilter

+ (id)scrollViewFilter
{
  v2 = objc_alloc_init(objc_opt_class());
  [v2 setResistance:100.0];

  return v2;
}

- (double)updatedValue:(double)value withTargetValue:(double)targetValue
{
  [(PUSoftClampValueFilter *)self resistance];
  v7 = v6;
  [(PUClampValueFilter *)self maximumValue];
  if (v8 < targetValue)
  {
    targetValue = v8 + v7 * log((targetValue - v8) / v7 + 1.0);
  }

  [(PUClampValueFilter *)self minimumValue];
  if (targetValue >= v9)
  {
    return targetValue;
  }

  else
  {
    return v9 - v7 * log((v9 - targetValue) / v7 + 1.0);
  }
}

@end