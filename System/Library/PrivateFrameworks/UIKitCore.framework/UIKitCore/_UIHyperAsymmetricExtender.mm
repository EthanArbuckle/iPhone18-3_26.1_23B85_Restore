@interface _UIHyperAsymmetricExtender
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (_UIHyperAsymmetricExtender)initWithCoder:(id)coder;
- (_UIHyperAsymmetricExtender)initWithDimensions:(unint64_t)dimensions;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_getExtentVector:(double *)vector forUnconstrainedPoint:(const double *)point closestPoint:(const double *)closestPoint;
- (void)_mutateExtentBeyondMaximum:(id)maximum;
- (void)_mutateExtentBeyondMinimum:(id)minimum;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIHyperAsymmetricExtender

- (_UIHyperAsymmetricExtender)initWithDimensions:(unint64_t)dimensions
{
  v7.receiver = self;
  v7.super_class = _UIHyperAsymmetricExtender;
  v4 = [(_UIHyperAsymmetricExtender *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->__dimensions = dimensions;
    v4->__extentBeyondMinimum = malloc_type_malloc(8 * dimensions, 0x100004000313F17uLL);
    v5->__extentBeyondMaximum = malloc_type_malloc(8 * dimensions, 0x100004000313F17uLL);
    catlas_dset_NEWLAPACK();
    catlas_dset_NEWLAPACK();
    v5->__temp = malloc_type_calloc(dimensions, 8uLL, 0x100004000313F17uLL);
  }

  return v5;
}

- (void)dealloc
{
  free(self->__extentBeyondMinimum);
  free(self->__extentBeyondMaximum);
  free(self->__temp);
  v3.receiver = self;
  v3.super_class = _UIHyperAsymmetricExtender;
  [(_UIHyperAsymmetricExtender *)&v3 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = _UIVectorDescription(self->__extentBeyondMinimum, self->__dimensions);
  v6 = _UIVectorDescription(self->__extentBeyondMaximum, self->__dimensions);
  v7 = [v3 stringWithFormat:@"<%@: %p extentBeyondMinimum = %@; extentBeyondMaximum = %@>", v4, self, v5, v6];;

  return v7;
}

- (void)_mutateExtentBeyondMinimum:(id)minimum
{
  minimumCopy = minimum;
  [(_UIHyperAsymmetricExtender *)self willChangeValueForKey:@"_extentBeyondMinimum"];
  minimumCopy[2](minimumCopy, self->__extentBeyondMinimum);

  extentBeyondMinimum = self->__extentBeyondMinimum;
  dimensions = self->__dimensions;
  __C = 0.0;
  vDSP_minvD(extentBeyondMinimum, 1, &__C, dimensions);
  if (__C < 0.0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIHyperExtender.m" lineNumber:148 description:@"All values of _extentBeyondMinimum must be greater than or equal to 0.0"];
  }

  [(_UIHyperAsymmetricExtender *)self didChangeValueForKey:@"_extentBeyondMinimum"];
}

- (void)_mutateExtentBeyondMaximum:(id)maximum
{
  maximumCopy = maximum;
  [(_UIHyperAsymmetricExtender *)self willChangeValueForKey:@"_extentBeyondMaximum"];
  maximumCopy[2](maximumCopy, self->__extentBeyondMaximum);

  extentBeyondMaximum = self->__extentBeyondMaximum;
  dimensions = self->__dimensions;
  __C = 0.0;
  vDSP_minvD(extentBeyondMaximum, 1, &__C, dimensions);
  if (__C < 0.0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIHyperExtender.m" lineNumber:161 description:@"All values of _extentBeyondMaximum must be greater than or equal to 0.0"];
  }

  [(_UIHyperAsymmetricExtender *)self didChangeValueForKey:@"_extentBeyondMaximum"];
}

- (void)_getExtentVector:(double *)vector forUnconstrainedPoint:(const double *)point closestPoint:(const double *)closestPoint
{
  vectorCopy = vector;
  vDSP_vsubD(closestPoint, 1, point, 1, vector, 1, self->__dimensions);
  temp = self->__temp;
  dimensions = self->__dimensions;
  if (dimensions)
  {
    for (i = 0; i != dimensions; ++i)
    {
      if (vectorCopy[i] >= 0.0)
      {
        v10 = 16;
      }

      else
      {
        v10 = 8;
      }

      v11 = (*(&self->super.isa + v10))[i];
      if (v11 <= 0.0)
      {
        v11 = INFINITY;
      }

      temp[i] = v11;
    }
  }

  vDSP_vdivD(temp, 1, vectorCopy, 1, vectorCopy, 1, dimensions);
  v12 = self->__dimensions;
  cblas_dnrm2_NEWLAPACK();
  __B = v13;
  vDSP_vsdivD(vectorCopy, 1, &__B, vectorCopy, 1, v12);
  vDSP_vmulD(vectorCopy, 1, self->__temp, 1, vectorCopy, 1, self->__dimensions);
  for (j = self->__dimensions; j; --j)
  {
    *vectorCopy = *vectorCopy;
    ++vectorCopy;
  }
}

- (_UIHyperAsymmetricExtender)initWithCoder:(id)coder
{
  v17 = 0;
  v18 = 0;
  coderCopy = coder;
  v6 = [coderCopy _ui_decodeVectorForKey:@"_extentBeyondMinimum" returnedCount:&v18];
  v7 = [coderCopy _ui_decodeVectorForKey:@"_extentBeyondMaximum" returnedCount:&v17];

  if (v18 != v17)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIHyperExtender.m" lineNumber:206 description:{@"Tried to decode extentBeyondMinimum (%lu) and extentBeyondMaximum (%lu) with different number of dimensions", v18, v17}];
  }

  v8 = [(_UIHyperAsymmetricExtender *)self initWithDimensions:?];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __44___UIHyperAsymmetricExtender_initWithCoder___block_invoke;
  v15[3] = &unk_1E71096D8;
  v16 = v6;
  v9 = v6;
  [(_UIHyperAsymmetricExtender *)v8 _mutateExtentBeyondMinimum:v15];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __44___UIHyperAsymmetricExtender_initWithCoder___block_invoke_2;
  v13[3] = &unk_1E71096D8;
  v14 = v7;
  v10 = v7;
  [(_UIHyperAsymmetricExtender *)v8 _mutateExtentBeyondMaximum:v13];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  extentBeyondMinimum = self->__extentBeyondMinimum;
  dimensions = self->__dimensions;
  coderCopy = coder;
  [coderCopy _ui_encodeVector:extentBeyondMinimum count:dimensions forKey:@"_extentBeyondMinimum"];
  [coderCopy _ui_encodeVector:self->__extentBeyondMaximum count:self->__dimensions forKey:@"_extentBeyondMaximum"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[_UIHyperAsymmetricExtender alloc] initWithDimensions:[(_UIHyperAsymmetricExtender *)self _dimensions]];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43___UIHyperAsymmetricExtender_copyWithZone___block_invoke;
  v7[3] = &unk_1E70F4AC0;
  v7[4] = self;
  [(_UIHyperAsymmetricExtender *)v4 _mutateExtentBeyondMinimum:v7];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43___UIHyperAsymmetricExtender_copyWithZone___block_invoke_2;
  v6[3] = &unk_1E70F4AC0;
  v6[4] = self;
  [(_UIHyperAsymmetricExtender *)v4 _mutateExtentBeyondMaximum:v6];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    _dimensions = [(_UIHyperAsymmetricExtender *)self _dimensions];
    v7 = _dimensions == [v5 _dimensions] && !memcmp(-[_UIHyperAsymmetricExtender _extentBeyondMinimum](self, "_extentBeyondMinimum"), objc_msgSend(v5, "_extentBeyondMinimum"), 8 * -[_UIHyperAsymmetricExtender _dimensions](self, "_dimensions")) && memcmp(-[_UIHyperAsymmetricExtender _extentBeyondMaximum](self, "_extentBeyondMaximum"), objc_msgSend(v5, "_extentBeyondMaximum"), 8 * -[_UIHyperAsymmetricExtender _dimensions](self, "_dimensions")) == 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end