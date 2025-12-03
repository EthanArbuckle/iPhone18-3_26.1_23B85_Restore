@interface _UIElasticValue
- (BOOL)isSteady;
- (_UIElasticValue)init;
- (_UIElasticValue)initWithValue:(double)value;
- (id)description;
- (void)update:(double)update;
- (void)updateFromDisplayLink:(id)link;
@end

@implementation _UIElasticValue

- (_UIElasticValue)init
{
  v6.receiver = self;
  v6.super_class = _UIElasticValue;
  v2 = [(_UIElasticValue *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_targetValue = 0.0;
    v2->_speed = 0.0;
    *&v2->_friction = xmmword_18A680CA0;
    v4 = v2;
  }

  return v3;
}

- (_UIElasticValue)initWithValue:(double)value
{
  v8.receiver = self;
  v8.super_class = _UIElasticValue;
  v4 = [(_UIElasticValue *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_targetValue = value;
    v6 = v4;
  }

  return v5;
}

- (void)update:(double)update
{
  currentValue = self->_currentValue;
  v4 = self->_speed * self->_momentum + (self->_targetValue - currentValue) * (1.0 - self->_friction);
  self->_speed = v4;
  self->_currentValue = currentValue + v4 * update;
}

- (void)updateFromDisplayLink:(id)link
{
  linkCopy = link;
  [linkCopy duration];
  v5 = v4;
  v6 = 0.0;
  if (v5 > 0.0)
  {
    [linkCopy duration];
    v6 = 0.0166666667 / v7;
  }

  [(_UIElasticValue *)self update:v6];
}

- (BOOL)isSteady
{
  speed = self->_speed;
  if (speed != 0.0)
  {
    v3 = speed * 1000.0;
    speed = roundf(v3) / 1000.0;
  }

  return speed == 0.0;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = _UIElasticValue;
  v4 = [(_UIElasticValue *)&v11 description];
  v10 = *&self->_currentValue;
  speed = self->_speed;
  isSteady = [(_UIElasticValue *)self isSteady];
  v7 = @"NO";
  if (isSteady)
  {
    v7 = @"YES";
  }

  v8 = [v3 stringWithFormat:@"%@ {currentValue = %0.3f, targetValue = %0.3f, speed = %f, steady = %@}", v4, v10, *&speed, v7];

  return v8;
}

@end