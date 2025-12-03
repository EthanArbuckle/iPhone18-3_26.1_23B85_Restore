@interface PUBlockValueFilter
- (double)updatedValue:(double)value withTargetValue:(double)targetValue;
@end

@implementation PUBlockValueFilter

- (double)updatedValue:(double)value withTargetValue:(double)targetValue
{
  operationBlock = [(PUBlockValueFilter *)self operationBlock];
  v7 = operationBlock[2](targetValue, value);

  return v7;
}

@end