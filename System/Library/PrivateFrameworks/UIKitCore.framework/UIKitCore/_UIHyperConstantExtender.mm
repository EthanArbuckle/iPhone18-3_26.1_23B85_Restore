@interface _UIHyperConstantExtender
- (BOOL)isEqual:(id)equal;
- (_UIHyperConstantExtender)initWithCoder:(id)coder;
- (_UIHyperConstantExtender)initWithDimensions:(unint64_t)dimensions;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_getExtentVector:(double *)vector forUnconstrainedPoint:(const double *)point closestPoint:(const double *)closestPoint;
- (void)_setMaximumDistance:(double)distance;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIHyperConstantExtender

- (_UIHyperConstantExtender)initWithDimensions:(unint64_t)dimensions
{
  v5.receiver = self;
  v5.super_class = _UIHyperConstantExtender;
  result = [(_UIHyperConstantExtender *)&v5 init];
  if (result)
  {
    result->__dimensions = dimensions;
    result->__maximumDistance = 50.0;
  }

  return result;
}

- (void)_setMaximumDistance:(double)distance
{
  if (self->__maximumDistance != distance)
  {
    [(_UIHyperConstantExtender *)self willChangeValueForKey:@"_maximumDistance"];
    self->__maximumDistance = distance;
    if (distance < 0.0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UIHyperExtender.m" lineNumber:39 description:@"_maximumDistance must be greater than or equal to 0.0"];
    }

    [(_UIHyperConstantExtender *)self didChangeValueForKey:@"_maximumDistance"];
  }
}

- (void)_getExtentVector:(double *)vector forUnconstrainedPoint:(const double *)point closestPoint:(const double *)closestPoint
{
  vDSP_vsubD(closestPoint, 1, point, 1, vector, 1, self->__dimensions);
  maximumDistance = self->__maximumDistance;
  cblas_dnrm2_NEWLAPACK();
  dimensions = self->__dimensions;
  __B = maximumDistance / v9;
  vDSP_vsmulD(vector, 1, &__B, vector, 1, dimensions);
}

- (_UIHyperConstantExtender)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = -[_UIHyperConstantExtender initWithDimensions:](self, "initWithDimensions:", [coderCopy decodeIntegerForKey:@"_dimensions"]);
  [coderCopy decodeDoubleForKey:@"_maximumDistance"];
  v7 = v6;

  [(_UIHyperConstantExtender *)v5 _setMaximumDistance:v7];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  dimensions = self->__dimensions;
  coderCopy = coder;
  [coderCopy encodeInteger:dimensions forKey:@"_dimensions"];
  [coderCopy encodeDouble:@"_maximumDistance" forKey:self->__maximumDistance];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[_UIHyperConstantExtender alloc] initWithDimensions:[(_UIHyperConstantExtender *)self _dimensions]];
  [(_UIHyperConstantExtender *)self _maximumDistance];
  [(_UIHyperConstantExtender *)v4 _setMaximumDistance:?];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    _dimensions = [(_UIHyperConstantExtender *)self _dimensions];
    if (_dimensions == [v5 _dimensions])
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