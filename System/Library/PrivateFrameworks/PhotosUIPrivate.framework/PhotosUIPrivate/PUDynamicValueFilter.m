@interface PUDynamicValueFilter
- (PUDynamicValueFilter)init;
- (double)outputValue;
- (double)outputValueChangeRate;
- (void)_update;
@end

@implementation PUDynamicValueFilter

- (void)_update
{
  [(PUDynamicValueFilter *)self currentTime];
  v4 = v3;
  [(PUValueFilter *)self currentValue];
  v6 = v5;
  [(PUDynamicValueFilter *)self targetValue];
  v8 = v7;
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v10 = v9;
  [(PUDynamicValueFilter *)self updatedValue:v6 withTargetValue:v8 timeInterval:v9 - v4];
  [(PUValueFilter *)self setCurrentValue:?];

  [(PUDynamicValueFilter *)self setCurrentTime:v10];
}

- (double)outputValueChangeRate
{
  [(PUDynamicValueFilter *)self currentTime];
  v4 = v3;
  [(PUValueFilter *)self currentValue];
  v6 = v5;
  [(PUDynamicValueFilter *)self _update];
  [(PUDynamicValueFilter *)self currentTime];
  v8 = v7;
  [(PUValueFilter *)self currentValue];
  return (v9 - v6) / (v8 - v4);
}

- (double)outputValue
{
  [(PUDynamicValueFilter *)self _update];

  [(PUValueFilter *)self currentValue];
  return result;
}

- (PUDynamicValueFilter)init
{
  v4.receiver = self;
  v4.super_class = PUDynamicValueFilter;
  v2 = [(PUValueFilter *)&v4 init];
  if (v2)
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    [(PUDynamicValueFilter *)v2 setCurrentTime:?];
  }

  return v2;
}

@end