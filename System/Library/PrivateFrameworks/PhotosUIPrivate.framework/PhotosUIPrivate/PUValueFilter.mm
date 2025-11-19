@interface PUValueFilter
- (PUValueFilter)initWithValue:(double)a3;
- (void)setInputValue:(double)a3;
@end

@implementation PUValueFilter

- (void)setInputValue:(double)a3
{
  [(PUValueFilter *)self currentValue];
  [PUValueFilter updatedValue:"updatedValue:withTargetValue:" withTargetValue:?];

  [(PUValueFilter *)self setCurrentValue:?];
}

- (PUValueFilter)initWithValue:(double)a3
{
  v5.receiver = self;
  v5.super_class = PUValueFilter;
  result = [(PUValueFilter *)&v5 init];
  if (result)
  {
    result->_currentValue = a3;
  }

  return result;
}

@end