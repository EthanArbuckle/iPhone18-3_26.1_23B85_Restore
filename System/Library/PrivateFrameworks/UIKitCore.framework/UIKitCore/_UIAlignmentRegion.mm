@interface _UIAlignmentRegion
+ (id)keyPathsForValuesAffectingSelf;
- (BOOL)_isAlignedForClosestPoint:(double *)point toPoint:(const double *)toPoint;
- (BOOL)_isBoundaryCrossedFromPoint:(const double *)point toPoint:(const double *)toPoint;
- (BOOL)isEqual:(id)equal;
- (_UIAlignmentRegion)initWithCoder:(id)coder;
- (_UIAlignmentRegion)initWithDimensions:(unint64_t)dimensions;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_setMaximumDistance:(double)distance;
- (void)_setRegion:(id)region;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIAlignmentRegion

- (_UIAlignmentRegion)initWithDimensions:(unint64_t)dimensions
{
  v7.receiver = self;
  v7.super_class = _UIAlignmentRegion;
  v4 = [(_UIAlignmentRegion *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->__dimensions = dimensions;
    v4->__maximumDistance = 5.0;
    v4->__temp = malloc_type_calloc(dimensions, 8uLL, 0x100004000313F17uLL);
  }

  return v5;
}

- (void)dealloc
{
  free(self->__temp);
  v3.receiver = self;
  v3.super_class = _UIAlignmentRegion;
  [(_UIAlignmentRegion *)&v3 dealloc];
}

- (void)_setRegion:(id)region
{
  regionCopy = region;
  if (self->__region != regionCopy)
  {
    v8 = regionCopy;
    if ([(_UIHyperregion *)regionCopy _dimensions]!= self->__dimensions)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UIHyperregion.m" lineNumber:1296 description:{@"Tried to set _region %@ (%lu) with unequal dimensions to %@ (%lu)", v8, -[_UIHyperregion _dimensions](v8, "_dimensions"), self, self->__dimensions}];
    }

    [(_UIAlignmentRegion *)self willChangeValueForKey:@"_region"];
    objc_storeStrong(&self->__region, region);
    [(_UIAlignmentRegion *)self didChangeValueForKey:@"_region"];
    regionCopy = v8;
  }
}

- (void)_setMaximumDistance:(double)distance
{
  if (self->__maximumDistance != distance)
  {
    [(_UIAlignmentRegion *)self willChangeValueForKey:@"_maximumDistance"];
    self->__maximumDistance = distance;

    [(_UIAlignmentRegion *)self didChangeValueForKey:@"_maximumDistance"];
  }
}

- (BOOL)_isAlignedForClosestPoint:(double *)point toPoint:(const double *)toPoint
{
  temp = point;
  if (!point)
  {
    temp = self->__temp;
  }

  _region = [(_UIAlignmentRegion *)self _region];
  [_region _closestPoint:temp toPoint:toPoint];

  dimensions = self->__dimensions;
  __C = 0.0;
  vDSP_distancesqD(toPoint, 1, temp, 1, &__C, dimensions);
  v9 = sqrt(__C);
  maximumDistance = self->__maximumDistance;
  if (v9 > maximumDistance)
  {
    cblas_dcopy_NEWLAPACK();
  }

  return v9 <= maximumDistance;
}

- (BOOL)_isBoundaryCrossedFromPoint:(const double *)point toPoint:(const double *)toPoint
{
  v7 = [(_UIAlignmentRegion *)self _isAlignedForClosestPoint:0 toPoint:point];
  v8 = [(_UIAlignmentRegion *)self _isAlignedForClosestPoint:0 toPoint:toPoint];
  if (!v7 || !v8)
  {
    return v7 ^ v8;
  }

  _region = [(_UIAlignmentRegion *)self _region];
  IsBoundaryCrossedFromPointToPoint = _UIHyperregionIsBoundaryCrossedFromPointToPoint(_region, point, toPoint);

  return IsBoundaryCrossedFromPointToPoint;
}

- (_UIAlignmentRegion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = -[_UIAlignmentRegion initWithDimensions:](self, "initWithDimensions:", [coderCopy decodeIntegerForKey:@"_dimensions"]);
  v6 = _UIHyperregionClasses();
  v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"_region"];
  [(_UIAlignmentRegion *)v5 _setRegion:v7];

  [coderCopy decodeDoubleForKey:@"_maximumDistance"];
  v9 = v8;

  [(_UIAlignmentRegion *)v5 _setMaximumDistance:v9];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  dimensions = self->__dimensions;
  coderCopy = coder;
  [coderCopy encodeInteger:dimensions forKey:@"_dimensions"];
  [coderCopy encodeObject:self->__region forKey:@"_region"];
  [coderCopy encodeDouble:@"_maximumDistance" forKey:self->__maximumDistance];
}

- (id)copyWithZone:(_NSZone *)zone
{
  _region = [(_UIAlignmentRegion *)self _region];
  v7 = objc_opt_respondsToSelector();

  if ((v7 & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    _region2 = [(_UIAlignmentRegion *)self _region];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIHyperregion.m" lineNumber:1367 description:{@"region (%@) must conform to NSCopying to copy self (%@)", _region2, self}];
  }

  v8 = [[_UIAlignmentRegion alloc] initWithDimensions:[(_UIAlignmentRegion *)self _dimensions]];
  _region3 = [(_UIAlignmentRegion *)self _region];
  v10 = [_region3 copyWithZone:zone];
  [(_UIAlignmentRegion *)v8 _setRegion:v10];

  [(_UIAlignmentRegion *)self _maximumDistance];
  [(_UIAlignmentRegion *)v8 _setMaximumDistance:?];
  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    _dimensions = [(_UIAlignmentRegion *)self _dimensions];
    if (_dimensions != [v5 _dimensions])
    {
      v13 = 0;
LABEL_15:

      goto LABEL_16;
    }

    _region = [(_UIAlignmentRegion *)self _region];
    _region2 = [v5 _region];
    v9 = _region;
    v10 = _region2;
    v11 = v10;
    if (v9 == v10)
    {
    }

    else
    {
      if (!v9 || !v10)
      {

LABEL_13:
        v13 = 0;
        goto LABEL_14;
      }

      v12 = [v9 isEqual:v10];

      if (!v12)
      {
        goto LABEL_13;
      }
    }

    [(_UIAlignmentRegion *)self _maximumDistance];
    v15 = v14;
    [v5 _maximumDistance];
    v13 = v15 == v16;
LABEL_14:

    goto LABEL_15;
  }

  v13 = 0;
LABEL_16:

  return v13;
}

+ (id)keyPathsForValuesAffectingSelf
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = [@"_region" stringByAppendingString:@".self"];
  v4 = [v2 setWithObjects:{@"_region", v3, @"_maximumDistance", 0}];

  return v4;
}

@end