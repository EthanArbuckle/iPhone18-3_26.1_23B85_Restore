@interface PXVelocityNumberFilter
+ (id)gestureVelocityFilter;
- (PXVelocityNumberFilter)initWithInput:(double)input;
- (double)updatedOutput;
@end

@implementation PXVelocityNumberFilter

- (double)updatedOutput
{
  [(PXNumberFilter *)self input];
  v4 = v3;
  [(PXNumberFilter *)self currentTime];
  lastTime = self->_lastTime;
  if (v5 < lastTime + self->_minimumSampleInterval)
  {
    return self->_filteredVelocity;
  }

  velocity = self->_velocity;
  v9 = (v4 - self->_lastValue) / (v5 - lastTime);
  v7 = velocity * self->_previousVelocityWeight + (1.0 - self->_previousVelocityWeight) * v9;
  self->_lastValue = v4;
  self->_lastTime = v5;
  self->_velocity = v9;
  self->_previousVelocity = velocity;
  self->_filteredVelocity = v7;
  return v7;
}

- (PXVelocityNumberFilter)initWithInput:(double)input
{
  v4.receiver = self;
  v4.super_class = PXVelocityNumberFilter;
  result = [(PXNumberFilter *)&v4 initWithInput:input];
  if (result)
  {
    result->_minimumSampleInterval = 0.00000011920929;
  }

  return result;
}

+ (id)gestureVelocityFilter
{
  v2 = objc_alloc_init(self);
  v2[17] = 0x3F80624DE0000000;
  v2[18] = 0x3FE8000000000000;

  return v2;
}

@end