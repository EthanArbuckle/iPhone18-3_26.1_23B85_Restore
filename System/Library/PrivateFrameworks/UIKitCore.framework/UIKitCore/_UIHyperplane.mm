@interface _UIHyperplane
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (_UIHyperplane)initWithCoder:(id)coder;
- (_UIHyperplane)initWithDimensions:(unint64_t)dimensions;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_closestPoint:(double *)point toPoint:(const double *)toPoint;
- (void)_mutateNormal:(id)normal;
- (void)_mutatePoint:(id)point;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIHyperplane

- (_UIHyperplane)initWithDimensions:(unint64_t)dimensions
{
  v6.receiver = self;
  v6.super_class = _UIHyperplane;
  v4 = [(_UIHyperplane *)&v6 init];
  if (v4)
  {
    v4->__point = malloc_type_calloc(dimensions, 8uLL, 0x100004000313F17uLL);
    v4->__normal = malloc_type_calloc(dimensions, 8uLL, 0x100004000313F17uLL);
    v4->__dimensions = dimensions;
  }

  return v4;
}

- (void)dealloc
{
  free(self->__point);
  free(self->__normal);
  v3.receiver = self;
  v3.super_class = _UIHyperplane;
  [(_UIHyperplane *)&v3 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = _UIVectorDescription(self->__point, self->__dimensions);
  v6 = _UIVectorDescription(self->__normal, self->__dimensions);
  v7 = [v3 stringWithFormat:@"<%@: %p point = %@; normal = %@>", v4, self, v5, v6];;

  return v7;
}

- (void)_mutatePoint:(id)point
{
  pointCopy = point;
  [(_UIHyperplane *)self willChangeValueForKey:@"_point"];
  pointCopy[2](pointCopy, self->__point);

  [(_UIHyperplane *)self didChangeValueForKey:@"_point"];
}

- (void)_mutateNormal:(id)normal
{
  normalCopy = normal;
  [(_UIHyperplane *)self willChangeValueForKey:@"_normal"];
  normalCopy[2](normalCopy, self->__normal);

  [(_UIHyperplane *)self didChangeValueForKey:@"_normal"];
}

- (void)_closestPoint:(double *)point toPoint:(const double *)toPoint
{
  vDSP_vsubD(self->__point, 1, toPoint, 1, point, 1, self->__dimensions);
  _UIHyperFractionalProjectionOntoHyperplane(point, point, self->__normal, self->__dimensions, 1.0);
  point = self->__point;
  dimensions = self->__dimensions;

  vDSP_vaddD(point, 1, point, 1, point, 1, dimensions);
}

- (_UIHyperplane)initWithCoder:(id)coder
{
  v11 = 0;
  v12 = 0;
  coderCopy = coder;
  v6 = [coderCopy _ui_decodeVectorForKey:@"_point" returnedCount:&v12];
  v7 = [coderCopy _ui_decodeVectorForKey:@"_normal" returnedCount:&v11];

  if (v12 != v11)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIHyperregion.m" lineNumber:212 description:{@"Tried to decode point (%lu) and normal (%lu) with different number of dimensions", v12, v11}];
  }

  v8 = [(_UIHyperplane *)self initWithDimensions:?];
  [(_UIHyperplane *)v8 _mutatePoint:v6];
  [(_UIHyperplane *)v8 _mutateNormal:v7];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  point = self->__point;
  dimensions = self->__dimensions;
  coderCopy = coder;
  [coderCopy _ui_encodeVector:point count:dimensions forKey:@"_point"];
  [coderCopy _ui_encodeVector:self->__normal count:self->__dimensions forKey:@"_normal"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[_UIHyperplane alloc] initWithDimensions:[(_UIHyperplane *)self _dimensions]];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __30___UIHyperplane_copyWithZone___block_invoke;
  v7[3] = &unk_1E70F4AC0;
  v7[4] = self;
  [(_UIHyperplane *)v4 _mutatePoint:v7];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __30___UIHyperplane_copyWithZone___block_invoke_2;
  v6[3] = &unk_1E70F4AC0;
  v6[4] = self;
  [(_UIHyperplane *)v4 _mutateNormal:v6];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    _dimensions = [(_UIHyperplane *)self _dimensions];
    v7 = _dimensions == [v5 _dimensions] && !memcmp(-[_UIHyperplane _point](self, "_point"), objc_msgSend(v5, "_point"), 8 * -[_UIHyperplane _dimensions](self, "_dimensions")) && memcmp(-[_UIHyperplane _normal](self, "_normal"), objc_msgSend(v5, "_normal"), 8 * -[_UIHyperplane _dimensions](self, "_dimensions")) == 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end