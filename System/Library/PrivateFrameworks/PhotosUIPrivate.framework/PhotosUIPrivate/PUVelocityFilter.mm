@interface PUVelocityFilter
+ (id)gestureVelocityFilter;
- (PUVelocityFilter)init;
- (void)setInputValue:(double)value;
@end

@implementation PUVelocityFilter

- (void)setInputValue:(double)value
{
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  lastTime = self->_lastTime;
  if (v5 >= lastTime + self->__minimumSampleInterval)
  {
    velocity = self->_velocity;
    v8 = (value - self->_lastValue) / (v5 - lastTime);
    previousVelocityWeight = self->__previousVelocityWeight;
    self->_lastValue = value;
    self->_lastTime = v5;
    self->_velocity = v8;
    self->_previousVelocity = velocity;
    self->_filteredVelocity = velocity * previousVelocityWeight + (1.0 - previousVelocityWeight) * v8;
  }
}

- (PUVelocityFilter)init
{
  v3.receiver = self;
  v3.super_class = PUVelocityFilter;
  result = [(PUDynamicValueFilter *)&v3 init];
  if (result)
  {
    result->__minimumSampleInterval = 0.00000011920929;
  }

  return result;
}

+ (id)gestureVelocityFilter
{
  v2 = objc_alloc_init(self);
  [v2 _setMinimumSampleInterval:0.008];
  [v2 _setPreviousVelocityWeight:0.75];

  return v2;
}

@end