@interface _UIHyperrectangle
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (_UIHyperrectangle)initWithCoder:(id)coder;
- (_UIHyperrectangle)initWithDimensions:(unint64_t)dimensions;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_closestPoint:(double *)point toPoint:(const double *)toPoint;
- (void)_mutateMaximumPoint:(id)point;
- (void)_mutateMinimumPoint:(id)point;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIHyperrectangle

- (void)dealloc
{
  free(self->__minimumPoint);
  free(self->__maximumPoint);
  v3.receiver = self;
  v3.super_class = _UIHyperrectangle;
  [(_UIHyperrectangle *)&v3 dealloc];
}

- (_UIHyperrectangle)initWithDimensions:(unint64_t)dimensions
{
  v6.receiver = self;
  v6.super_class = _UIHyperrectangle;
  v4 = [(_UIHyperrectangle *)&v6 init];
  if (v4)
  {
    v4->__minimumPoint = malloc_type_calloc(dimensions, 8uLL, 0x100004000313F17uLL);
    v4->__maximumPoint = malloc_type_calloc(dimensions, 8uLL, 0x100004000313F17uLL);
    v4->__dimensions = dimensions;
  }

  return v4;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = _UIVectorDescription(self->__minimumPoint, self->__dimensions);
  v6 = _UIVectorDescription(self->__maximumPoint, self->__dimensions);
  v7 = [v3 stringWithFormat:@"<%@: %p minimumPoint = %@; maximumPoint = %@>", v4, self, v5, v6];;

  return v7;
}

- (void)_mutateMinimumPoint:(id)point
{
  pointCopy = point;
  [(_UIHyperrectangle *)self willChangeValueForKey:@"_minimumPoint"];
  pointCopy[2](pointCopy, self->__minimumPoint);

  [(_UIHyperrectangle *)self didChangeValueForKey:@"_minimumPoint"];
}

- (void)_mutateMaximumPoint:(id)point
{
  pointCopy = point;
  [(_UIHyperrectangle *)self willChangeValueForKey:@"_maximumPoint"];
  pointCopy[2](pointCopy, self->__maximumPoint);

  [(_UIHyperrectangle *)self didChangeValueForKey:@"_maximumPoint"];
}

- (void)_closestPoint:(double *)point toPoint:(const double *)toPoint
{
  vDSP_vmaxD(self->__minimumPoint, 1, toPoint, 1, point, 1, self->__dimensions);
  maximumPoint = self->__maximumPoint;
  dimensions = self->__dimensions;

  vDSP_vminD(maximumPoint, 1, point, 1, point, 1, dimensions);
}

- (_UIHyperrectangle)initWithCoder:(id)coder
{
  v11 = 0;
  v12 = 0;
  coderCopy = coder;
  v6 = [coderCopy _ui_decodeVectorForKey:@"_minimumPoint" returnedCount:&v12];
  v7 = [coderCopy _ui_decodeVectorForKey:@"_maximumPoint" returnedCount:&v11];

  if (v12 != v11)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIHyperregion.m" lineNumber:338 description:{@"Tried to decode minimumPoint (%lu) and maximumPoint (%lu) with different number of dimensions", v12, v11}];
  }

  v8 = [(_UIHyperrectangle *)self initWithDimensions:?];
  [(_UIHyperrectangle *)v8 _mutateMinimumPoint:v6];
  [(_UIHyperrectangle *)v8 _mutateMaximumPoint:v7];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  minimumPoint = self->__minimumPoint;
  dimensions = self->__dimensions;
  coderCopy = coder;
  [coderCopy _ui_encodeVector:minimumPoint count:dimensions forKey:@"_minimumPoint"];
  [coderCopy _ui_encodeVector:self->__maximumPoint count:self->__dimensions forKey:@"_maximumPoint"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[_UIHyperrectangle alloc] initWithDimensions:[(_UIHyperrectangle *)self _dimensions]];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34___UIHyperrectangle_copyWithZone___block_invoke;
  v7[3] = &unk_1E70F4AC0;
  v7[4] = self;
  [(_UIHyperrectangle *)v4 _mutateMinimumPoint:v7];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34___UIHyperrectangle_copyWithZone___block_invoke_2;
  v6[3] = &unk_1E70F4AC0;
  v6[4] = self;
  [(_UIHyperrectangle *)v4 _mutateMaximumPoint:v6];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    _dimensions = [(_UIHyperrectangle *)self _dimensions];
    v7 = _dimensions == [v5 _dimensions] && !memcmp(-[_UIHyperrectangle _minimumPoint](self, "_minimumPoint"), objc_msgSend(v5, "_minimumPoint"), 8 * -[_UIHyperrectangle _dimensions](self, "_dimensions")) && memcmp(-[_UIHyperrectangle _maximumPoint](self, "_maximumPoint"), objc_msgSend(v5, "_maximumPoint"), 8 * -[_UIHyperrectangle _dimensions](self, "_dimensions")) == 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end