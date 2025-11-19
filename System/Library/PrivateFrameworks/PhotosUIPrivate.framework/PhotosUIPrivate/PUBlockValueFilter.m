@interface PUBlockValueFilter
- (double)updatedValue:(double)a3 withTargetValue:(double)a4;
@end

@implementation PUBlockValueFilter

- (double)updatedValue:(double)a3 withTargetValue:(double)a4
{
  v6 = [(PUBlockValueFilter *)self operationBlock];
  v7 = v6[2](a4, a3);

  return v7;
}

@end