@interface PUValueFilter
- (PUValueFilter)initWithValue:(double)value;
- (void)setInputValue:(double)value;
@end

@implementation PUValueFilter

- (void)setInputValue:(double)value
{
  [(PUValueFilter *)self currentValue];
  [PUValueFilter updatedValue:"updatedValue:withTargetValue:" withTargetValue:?];

  [(PUValueFilter *)self setCurrentValue:?];
}

- (PUValueFilter)initWithValue:(double)value
{
  v5.receiver = self;
  v5.super_class = PUValueFilter;
  result = [(PUValueFilter *)&v5 init];
  if (result)
  {
    result->_currentValue = value;
  }

  return result;
}

@end