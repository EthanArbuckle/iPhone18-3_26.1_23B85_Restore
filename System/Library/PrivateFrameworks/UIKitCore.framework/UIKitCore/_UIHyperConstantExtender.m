@interface _UIHyperConstantExtender
- (BOOL)isEqual:(id)a3;
- (_UIHyperConstantExtender)initWithCoder:(id)a3;
- (_UIHyperConstantExtender)initWithDimensions:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_getExtentVector:(double *)a3 forUnconstrainedPoint:(const double *)a4 closestPoint:(const double *)a5;
- (void)_setMaximumDistance:(double)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UIHyperConstantExtender

- (_UIHyperConstantExtender)initWithDimensions:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = _UIHyperConstantExtender;
  result = [(_UIHyperConstantExtender *)&v5 init];
  if (result)
  {
    result->__dimensions = a3;
    result->__maximumDistance = 50.0;
  }

  return result;
}

- (void)_setMaximumDistance:(double)a3
{
  if (self->__maximumDistance != a3)
  {
    [(_UIHyperConstantExtender *)self willChangeValueForKey:@"_maximumDistance"];
    self->__maximumDistance = a3;
    if (a3 < 0.0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      [v6 handleFailureInMethod:a2 object:self file:@"_UIHyperExtender.m" lineNumber:39 description:@"_maximumDistance must be greater than or equal to 0.0"];
    }

    [(_UIHyperConstantExtender *)self didChangeValueForKey:@"_maximumDistance"];
  }
}

- (void)_getExtentVector:(double *)a3 forUnconstrainedPoint:(const double *)a4 closestPoint:(const double *)a5
{
  vDSP_vsubD(a5, 1, a4, 1, a3, 1, self->__dimensions);
  maximumDistance = self->__maximumDistance;
  cblas_dnrm2_NEWLAPACK();
  dimensions = self->__dimensions;
  __B = maximumDistance / v9;
  vDSP_vsmulD(a3, 1, &__B, a3, 1, dimensions);
}

- (_UIHyperConstantExtender)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = -[_UIHyperConstantExtender initWithDimensions:](self, "initWithDimensions:", [v4 decodeIntegerForKey:@"_dimensions"]);
  [v4 decodeDoubleForKey:@"_maximumDistance"];
  v7 = v6;

  [(_UIHyperConstantExtender *)v5 _setMaximumDistance:v7];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  dimensions = self->__dimensions;
  v5 = a3;
  [v5 encodeInteger:dimensions forKey:@"_dimensions"];
  [v5 encodeDouble:@"_maximumDistance" forKey:self->__maximumDistance];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[_UIHyperConstantExtender alloc] initWithDimensions:[(_UIHyperConstantExtender *)self _dimensions]];
  [(_UIHyperConstantExtender *)self _maximumDistance];
  [(_UIHyperConstantExtender *)v4 _setMaximumDistance:?];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(_UIHyperConstantExtender *)self _dimensions];
    if (v6 == [v5 _dimensions])
    {
      [(_UIHyperConstantExtender *)self _maximumDistance];
      v8 = v7;
      [v5 _maximumDistance];
      v10 = v8 == v9;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end