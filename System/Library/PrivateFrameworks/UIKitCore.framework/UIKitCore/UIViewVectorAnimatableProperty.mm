@interface UIViewVectorAnimatableProperty
- (UIViewVectorAnimatableProperty)initWithLength:(unint64_t)length;
- (UIViewVectorAnimatableProperty)initWithView:(id)view length:(unint64_t)length;
- (const)_presentationValue;
- (const)_value;
- (const)_velocity;
- (id)_makeArrayFromVector:(const double *)vector;
- (void)_copyValue:(const double *)value;
- (void)_copyVelocity:(const double *)velocity;
- (void)_mutateValue:(id)value;
- (void)_mutateVelocity:(id)velocity;
- (void)_updateVectorFromArray:(id)array;
- (void)dealloc;
@end

@implementation UIViewVectorAnimatableProperty

- (const)_presentationValue
{
  animatableProperty = [(UIAnimatablePropertyWrapper *)self animatableProperty];
  presentationValue = [animatableProperty presentationValue];
  [(UIViewVectorAnimatableProperty *)self _updateVectorFromArray:presentationValue];

  return self->_vector;
}

- (const)_value
{
  animatableProperty = [(UIAnimatablePropertyWrapper *)self animatableProperty];
  value = [animatableProperty value];
  [(UIViewVectorAnimatableProperty *)self _updateVectorFromArray:value];

  return self->_vector;
}

- (void)dealloc
{
  free(self->_vector);
  v3.receiver = self;
  v3.super_class = UIViewVectorAnimatableProperty;
  [(UIAnimatablePropertyWrapper *)&v3 dealloc];
}

- (UIViewVectorAnimatableProperty)initWithView:(id)view length:(unint64_t)length
{
  v6 = [UIAnimatablePropertyWrapper makeSwiftVectorAnimatablePropertyWithView:view];
  v9.receiver = self;
  v9.super_class = UIViewVectorAnimatableProperty;
  v7 = [(UIAnimatablePropertyWrapper *)&v9 initWithAnimatableProperty:v6];

  if (v7)
  {
    v7->__length = length;
    v7->_vector = malloc_type_calloc(length, 8uLL, 0x100004000313F17uLL);
  }

  return v7;
}

- (UIViewVectorAnimatableProperty)initWithLength:(unint64_t)length
{
  v5 = [UIAnimatablePropertyWrapper makeSwiftVectorAnimatablePropertyWithView:0];
  v8.receiver = self;
  v8.super_class = UIViewVectorAnimatableProperty;
  v6 = [(UIAnimatablePropertyWrapper *)&v8 initWithAnimatableProperty:v5];

  if (v6)
  {
    v6->__length = length;
    v6->_vector = malloc_type_calloc(length, 8uLL, 0x100004000313F17uLL);
  }

  return v6;
}

- (void)_mutateValue:(id)value
{
  valueCopy = value;
  [(UIViewVectorAnimatableProperty *)self _updateVectorFromArray:MEMORY[0x1E695E0F0]];
  valueCopy[2](valueCopy, self->_vector);

  v6 = [(UIViewVectorAnimatableProperty *)self _makeArrayFromVector:self->_vector];
  animatableProperty = [(UIAnimatablePropertyWrapper *)self animatableProperty];
  [animatableProperty setValue:v6];
}

- (void)_copyValue:(const double *)value
{
  v5 = [(UIViewVectorAnimatableProperty *)self _makeArrayFromVector:value];
  animatableProperty = [(UIAnimatablePropertyWrapper *)self animatableProperty];
  [animatableProperty setValue:v5];
}

- (const)_velocity
{
  animatableProperty = [(UIAnimatablePropertyWrapper *)self animatableProperty];
  velocity = [animatableProperty velocity];
  [(UIViewVectorAnimatableProperty *)self _updateVectorFromArray:velocity];

  return self->_vector;
}

- (void)_mutateVelocity:(id)velocity
{
  velocityCopy = velocity;
  [(UIViewVectorAnimatableProperty *)self _updateVectorFromArray:MEMORY[0x1E695E0F0]];
  velocityCopy[2](velocityCopy, self->_vector);

  v6 = [(UIViewVectorAnimatableProperty *)self _makeArrayFromVector:self->_vector];
  animatableProperty = [(UIAnimatablePropertyWrapper *)self animatableProperty];
  [animatableProperty setVelocity:v6];
}

- (void)_copyVelocity:(const double *)velocity
{
  v5 = [(UIViewVectorAnimatableProperty *)self _makeArrayFromVector:velocity];
  animatableProperty = [(UIAnimatablePropertyWrapper *)self animatableProperty];
  [animatableProperty setVelocity:v5];
}

- (void)_updateVectorFromArray:(id)array
{
  arrayCopy = array;
  if (self->__length)
  {
    v5 = 0;
    v8 = arrayCopy;
    do
    {
      if ([arrayCopy count] <= v5)
      {
        self->_vector[v5] = 0.0;
      }

      else
      {
        v6 = [v8 objectAtIndexedSubscript:v5];
        [v6 doubleValue];
        self->_vector[v5] = v7;
      }

      ++v5;
      arrayCopy = v8;
    }

    while (self->__length > v5);
  }
}

- (id)_makeArrayFromVector:(const double *)vector
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (self->__length)
  {
    v6 = 0;
    do
    {
      v7 = [MEMORY[0x1E696AD98] numberWithDouble:vector[v6]];
      [v5 addObject:v7];

      ++v6;
    }

    while (self->__length > v6);
  }

  v8 = [v5 copy];

  return v8;
}

@end