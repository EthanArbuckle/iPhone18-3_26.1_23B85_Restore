@interface PUClampValueFilter
- (double)updatedValue:(double)a3 withTargetValue:(double)a4;
@end

@implementation PUClampValueFilter

- (double)updatedValue:(double)a3 withTargetValue:(double)a4
{
  [(PUClampValueFilter *)self minimumValue];
  if (v6 > a4)
  {
    a4 = v6;
  }

  [(PUClampValueFilter *)self maximumValue];
  if (a4 < result)
  {
    return a4;
  }

  return result;
}

@end