@interface _UIAlignmentRegion
+ (id)keyPathsForValuesAffectingSelf;
- (BOOL)_isAlignedForClosestPoint:(double *)a3 toPoint:(const double *)a4;
- (BOOL)_isBoundaryCrossedFromPoint:(const double *)a3 toPoint:(const double *)a4;
- (BOOL)isEqual:(id)a3;
- (_UIAlignmentRegion)initWithCoder:(id)a3;
- (_UIAlignmentRegion)initWithDimensions:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_setMaximumDistance:(double)a3;
- (void)_setRegion:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UIAlignmentRegion

- (_UIAlignmentRegion)initWithDimensions:(unint64_t)a3
{
  v7.receiver = self;
  v7.super_class = _UIAlignmentRegion;
  v4 = [(_UIAlignmentRegion *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->__dimensions = a3;
    v4->__maximumDistance = 5.0;
    v4->__temp = malloc_type_calloc(a3, 8uLL, 0x100004000313F17uLL);
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

- (void)_setRegion:(id)a3
{
  v6 = a3;
  if (self->__region != v6)
  {
    v8 = v6;
    if ([(_UIHyperregion *)v6 _dimensions]!= self->__dimensions)
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      [v7 handleFailureInMethod:a2 object:self file:@"_UIHyperregion.m" lineNumber:1296 description:{@"Tried to set _region %@ (%lu) with unequal dimensions to %@ (%lu)", v8, -[_UIHyperregion _dimensions](v8, "_dimensions"), self, self->__dimensions}];
    }

    [(_UIAlignmentRegion *)self willChangeValueForKey:@"_region"];
    objc_storeStrong(&self->__region, a3);
    [(_UIAlignmentRegion *)self didChangeValueForKey:@"_region"];
    v6 = v8;
  }
}

- (void)_setMaximumDistance:(double)a3
{
  if (self->__maximumDistance != a3)
  {
    [(_UIAlignmentRegion *)self willChangeValueForKey:@"_maximumDistance"];
    self->__maximumDistance = a3;

    [(_UIAlignmentRegion *)self didChangeValueForKey:@"_maximumDistance"];
  }
}

- (BOOL)_isAlignedForClosestPoint:(double *)a3 toPoint:(const double *)a4
{
  temp = a3;
  if (!a3)
  {
    temp = self->__temp;
  }

  v7 = [(_UIAlignmentRegion *)self _region];
  [v7 _closestPoint:temp toPoint:a4];

  dimensions = self->__dimensions;
  __C = 0.0;
  vDSP_distancesqD(a4, 1, temp, 1, &__C, dimensions);
  v9 = sqrt(__C);
  maximumDistance = self->__maximumDistance;
  if (v9 > maximumDistance)
  {
    cblas_dcopy_NEWLAPACK();
  }

  return v9 <= maximumDistance;
}

- (BOOL)_isBoundaryCrossedFromPoint:(const double *)a3 toPoint:(const double *)a4
{
  v7 = [(_UIAlignmentRegion *)self _isAlignedForClosestPoint:0 toPoint:a3];
  v8 = [(_UIAlignmentRegion *)self _isAlignedForClosestPoint:0 toPoint:a4];
  if (!v7 || !v8)
  {
    return v7 ^ v8;
  }

  v9 = [(_UIAlignmentRegion *)self _region];
  IsBoundaryCrossedFromPointToPoint = _UIHyperregionIsBoundaryCrossedFromPointToPoint(v9, a3, a4);

  return IsBoundaryCrossedFromPointToPoint;
}

- (_UIAlignmentRegion)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = -[_UIAlignmentRegion initWithDimensions:](self, "initWithDimensions:", [v4 decodeIntegerForKey:@"_dimensions"]);
  v6 = _UIHyperregionClasses();
  v7 = [v4 decodeObjectOfClasses:v6 forKey:@"_region"];
  [(_UIAlignmentRegion *)v5 _setRegion:v7];

  [v4 decodeDoubleForKey:@"_maximumDistance"];
  v9 = v8;

  [(_UIAlignmentRegion *)v5 _setMaximumDistance:v9];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  dimensions = self->__dimensions;
  v5 = a3;
  [v5 encodeInteger:dimensions forKey:@"_dimensions"];
  [v5 encodeObject:self->__region forKey:@"_region"];
  [v5 encodeDouble:@"_maximumDistance" forKey:self->__maximumDistance];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6 = [(_UIAlignmentRegion *)self _region];
  v7 = objc_opt_respondsToSelector();

  if ((v7 & 1) == 0)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = [(_UIAlignmentRegion *)self _region];
    [v12 handleFailureInMethod:a2 object:self file:@"_UIHyperregion.m" lineNumber:1367 description:{@"region (%@) must conform to NSCopying to copy self (%@)", v13, self}];
  }

  v8 = [[_UIAlignmentRegion alloc] initWithDimensions:[(_UIAlignmentRegion *)self _dimensions]];
  v9 = [(_UIAlignmentRegion *)self _region];
  v10 = [v9 copyWithZone:a3];
  [(_UIAlignmentRegion *)v8 _setRegion:v10];

  [(_UIAlignmentRegion *)self _maximumDistance];
  [(_UIAlignmentRegion *)v8 _setMaximumDistance:?];
  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(_UIAlignmentRegion *)self _dimensions];
    if (v6 != [v5 _dimensions])
    {
      v13 = 0;
LABEL_15:

      goto LABEL_16;
    }

    v7 = [(_UIAlignmentRegion *)self _region];
    v8 = [v5 _region];
    v9 = v7;
    v10 = v8;
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