@interface PUSoftClampValueFilter
+ (id)scrollViewFilter;
- (double)updatedValue:(double)a3 withTargetValue:(double)a4;
@end

@implementation PUSoftClampValueFilter

+ (id)scrollViewFilter
{
  v2 = objc_alloc_init(objc_opt_class());
  [v2 setResistance:100.0];

  return v2;
}

- (double)updatedValue:(double)a3 withTargetValue:(double)a4
{
  [(PUSoftClampValueFilter *)self resistance];
  v7 = v6;
  [(PUClampValueFilter *)self maximumValue];
  if (v8 < a4)
  {
    a4 = v8 + v7 * log((a4 - v8) / v7 + 1.0);
  }

  [(PUClampValueFilter *)self minimumValue];
  if (a4 >= v9)
  {
    return a4;
  }

  else
  {
    return v9 - v7 * log((v9 - a4) / v7 + 1.0);
  }
}

@end