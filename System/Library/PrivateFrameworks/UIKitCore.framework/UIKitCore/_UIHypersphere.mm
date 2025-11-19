@interface _UIHypersphere
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (_UIHypersphere)initWithCoder:(id)a3;
- (_UIHypersphere)initWithDimensions:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_closestPoint:(double *)a3 toPoint:(const double *)a4;
- (void)_mutateCenter:(id)a3;
- (void)_setRadius:(double)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UIHypersphere

- (_UIHypersphere)initWithDimensions:(unint64_t)a3
{
  v7.receiver = self;
  v7.super_class = _UIHypersphere;
  v4 = [(_UIHypersphere *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->__dimensions = a3;
    v4->__center = malloc_type_calloc(a3, 8uLL, 0x100004000313F17uLL);
  }

  return v5;
}

- (void)dealloc
{
  free(self->__center);
  v3.receiver = self;
  v3.super_class = _UIHypersphere;
  [(_UIHypersphere *)&v3 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = _UIVectorDescription(self->__center, self->__dimensions);
  v6 = [v3 stringWithFormat:@"<%@: %p center = %@; radius = %g>", v4, self, v5, *&self->__radius];;

  return v6;
}

- (void)_mutateCenter:(id)a3
{
  v4 = a3;
  [(_UIHypersphere *)self willChangeValueForKey:@"_center"];
  v4[2](v4, self->__center);

  [(_UIHypersphere *)self didChangeValueForKey:@"_center"];
}

- (void)_setRadius:(double)a3
{
  if (self->__radius != a3)
  {
    [(_UIHypersphere *)self willChangeValueForKey:@"_radius"];
    self->__radius = a3;

    [(_UIHypersphere *)self didChangeValueForKey:@"_radius"];
  }
}

- (void)_closestPoint:(double *)a3 toPoint:(const double *)a4
{
  center = self->__center;
  dimensions = self->__dimensions;
  __C = 0.0;
  vDSP_distancesqD(center, 1, a4, 1, &__C, dimensions);
  radius = self->__radius;
  if (sqrt(__C) <= radius)
  {

    cblas_dcopy_NEWLAPACK();
  }

  else
  {
    v10 = self->__center;
    v11 = self->__dimensions;

    _UIHyperExtend(a3, v10, a4, v11, radius);
  }
}

- (_UIHypersphere)initWithCoder:(id)a3
{
  v10 = 0;
  v4 = a3;
  v5 = [v4 _ui_decodeVectorForKey:@"_center" returnedCount:&v10];
  v6 = [(_UIHypersphere *)self initWithDimensions:v10];
  [(_UIHypersphere *)v6 _mutateCenter:v5];
  [v4 decodeDoubleForKey:@"_radius"];
  v8 = v7;

  [(_UIHypersphere *)v6 _setRadius:v8];
  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  center = self->__center;
  dimensions = self->__dimensions;
  v6 = a3;
  [v6 _ui_encodeVector:center count:dimensions forKey:@"_center"];
  [v6 encodeDouble:@"_radius" forKey:self->__radius];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[_UIHypersphere alloc] initWithDimensions:[(_UIHypersphere *)self _dimensions]];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __31___UIHypersphere_copyWithZone___block_invoke;
  v6[3] = &unk_1E70F4AC0;
  v6[4] = self;
  [(_UIHypersphere *)v4 _mutateCenter:v6];
  [(_UIHypersphere *)self _radius];
  [(_UIHypersphere *)v4 _setRadius:?];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(_UIHypersphere *)self _dimensions];
    if (v6 == [v5 _dimensions] && !memcmp(-[_UIHypersphere _center](self, "_center"), objc_msgSend(v5, "_center"), 8 * -[_UIHypersphere _dimensions](self, "_dimensions")))
    {
      [(_UIHypersphere *)self _radius];
      v10 = v9;
      [v5 _radius];
      v7 = v10 == v11;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end