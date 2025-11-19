@interface UIViewVectorAnimatableProperty
- (UIViewVectorAnimatableProperty)initWithLength:(unint64_t)a3;
- (UIViewVectorAnimatableProperty)initWithView:(id)a3 length:(unint64_t)a4;
- (const)_presentationValue;
- (const)_value;
- (const)_velocity;
- (id)_makeArrayFromVector:(const double *)a3;
- (void)_copyValue:(const double *)a3;
- (void)_copyVelocity:(const double *)a3;
- (void)_mutateValue:(id)a3;
- (void)_mutateVelocity:(id)a3;
- (void)_updateVectorFromArray:(id)a3;
- (void)dealloc;
@end

@implementation UIViewVectorAnimatableProperty

- (const)_presentationValue
{
  v3 = [(UIAnimatablePropertyWrapper *)self animatableProperty];
  v4 = [v3 presentationValue];
  [(UIViewVectorAnimatableProperty *)self _updateVectorFromArray:v4];

  return self->_vector;
}

- (const)_value
{
  v3 = [(UIAnimatablePropertyWrapper *)self animatableProperty];
  v4 = [v3 value];
  [(UIViewVectorAnimatableProperty *)self _updateVectorFromArray:v4];

  return self->_vector;
}

- (void)dealloc
{
  free(self->_vector);
  v3.receiver = self;
  v3.super_class = UIViewVectorAnimatableProperty;
  [(UIAnimatablePropertyWrapper *)&v3 dealloc];
}

- (UIViewVectorAnimatableProperty)initWithView:(id)a3 length:(unint64_t)a4
{
  v6 = [UIAnimatablePropertyWrapper makeSwiftVectorAnimatablePropertyWithView:a3];
  v9.receiver = self;
  v9.super_class = UIViewVectorAnimatableProperty;
  v7 = [(UIAnimatablePropertyWrapper *)&v9 initWithAnimatableProperty:v6];

  if (v7)
  {
    v7->__length = a4;
    v7->_vector = malloc_type_calloc(a4, 8uLL, 0x100004000313F17uLL);
  }

  return v7;
}

- (UIViewVectorAnimatableProperty)initWithLength:(unint64_t)a3
{
  v5 = [UIAnimatablePropertyWrapper makeSwiftVectorAnimatablePropertyWithView:0];
  v8.receiver = self;
  v8.super_class = UIViewVectorAnimatableProperty;
  v6 = [(UIAnimatablePropertyWrapper *)&v8 initWithAnimatableProperty:v5];

  if (v6)
  {
    v6->__length = a3;
    v6->_vector = malloc_type_calloc(a3, 8uLL, 0x100004000313F17uLL);
  }

  return v6;
}

- (void)_mutateValue:(id)a3
{
  v4 = a3;
  [(UIViewVectorAnimatableProperty *)self _updateVectorFromArray:MEMORY[0x1E695E0F0]];
  v4[2](v4, self->_vector);

  v6 = [(UIViewVectorAnimatableProperty *)self _makeArrayFromVector:self->_vector];
  v5 = [(UIAnimatablePropertyWrapper *)self animatableProperty];
  [v5 setValue:v6];
}

- (void)_copyValue:(const double *)a3
{
  v5 = [(UIViewVectorAnimatableProperty *)self _makeArrayFromVector:a3];
  v4 = [(UIAnimatablePropertyWrapper *)self animatableProperty];
  [v4 setValue:v5];
}

- (const)_velocity
{
  v3 = [(UIAnimatablePropertyWrapper *)self animatableProperty];
  v4 = [v3 velocity];
  [(UIViewVectorAnimatableProperty *)self _updateVectorFromArray:v4];

  return self->_vector;
}

- (void)_mutateVelocity:(id)a3
{
  v4 = a3;
  [(UIViewVectorAnimatableProperty *)self _updateVectorFromArray:MEMORY[0x1E695E0F0]];
  v4[2](v4, self->_vector);

  v6 = [(UIViewVectorAnimatableProperty *)self _makeArrayFromVector:self->_vector];
  v5 = [(UIAnimatablePropertyWrapper *)self animatableProperty];
  [v5 setVelocity:v6];
}

- (void)_copyVelocity:(const double *)a3
{
  v5 = [(UIViewVectorAnimatableProperty *)self _makeArrayFromVector:a3];
  v4 = [(UIAnimatablePropertyWrapper *)self animatableProperty];
  [v4 setVelocity:v5];
}

- (void)_updateVectorFromArray:(id)a3
{
  v4 = a3;
  if (self->__length)
  {
    v5 = 0;
    v8 = v4;
    do
    {
      if ([v4 count] <= v5)
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
      v4 = v8;
    }

    while (self->__length > v5);
  }
}

- (id)_makeArrayFromVector:(const double *)a3
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (self->__length)
  {
    v6 = 0;
    do
    {
      v7 = [MEMORY[0x1E696AD98] numberWithDouble:a3[v6]];
      [v5 addObject:v7];

      ++v6;
    }

    while (self->__length > v6);
  }

  v8 = [v5 copy];

  return v8;
}

@end