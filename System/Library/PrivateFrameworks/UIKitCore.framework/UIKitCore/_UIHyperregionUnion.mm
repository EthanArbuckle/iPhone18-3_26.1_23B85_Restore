@interface _UIHyperregionUnion
- (BOOL)isEqual:(id)equal;
- (_UIHyperregionUnion)initWithCoder:(id)coder;
- (_UIHyperregionUnion)initWithDimensions:(unint64_t)dimensions;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)_regionIndexForClosestPoint:(double *)point toPoint:(const double *)toPoint;
- (void)_setRegions:(id)regions;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation _UIHyperregionUnion

- (_UIHyperregionUnion)initWithDimensions:(unint64_t)dimensions
{
  v9.receiver = self;
  v9.super_class = _UIHyperregionUnion;
  v4 = [(_UIHyperregionUnion *)&v9 init];
  v5 = v4;
  if (v4)
  {
    regions = v4->__regions;
    v7 = MEMORY[0x1E695E0F0];
    v4->__dimensions = dimensions;
    v4->__regions = v7;

    v5->__temp = malloc_type_calloc(dimensions, 8uLL, 0x100004000313F17uLL);
  }

  return v5;
}

- (void)dealloc
{
  regions = self->__regions;
  v4 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{0, -[NSArray count](regions, "count")}];
  [(NSArray *)regions removeObserver:self fromObjectsAtIndexes:v4 forKeyPath:@"self" context:_UIHyperregionUnionRegionsObservationContext];

  free(self->__temp);
  v5.receiver = self;
  v5.super_class = _UIHyperregionUnion;
  [(_UIHyperregionUnion *)&v5 dealloc];
}

- (void)_setRegions:(id)regions
{
  v24 = *MEMORY[0x1E69E9840];
  regionsCopy = regions;
  v6 = regionsCopy;
  if (self->__regions != regionsCopy)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = [(NSArray *)regionsCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v20;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v19 + 1) + 8 * i);
          if ([v11 _dimensions] != self->__dimensions)
          {
            currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler handleFailureInMethod:a2 object:self file:@"_UIHyperregion.m" lineNumber:830 description:{@"Tried to set _regions including %@ (%lu) with unequal dimensions to %@ (%lu)", v11, objc_msgSend(v11, "_dimensions"), self, self->__dimensions}];
          }
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v8);
    }

    [(_UIHyperregionUnion *)self willChangeValueForKey:@"_regions"];
    regions = self->__regions;
    v14 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{0, -[NSArray count](regions, "count")}];
    [(NSArray *)regions removeObserver:self fromObjectsAtIndexes:v14 forKeyPath:@"self" context:_UIHyperregionUnionRegionsObservationContext];

    v15 = [(NSArray *)v6 copy];
    v16 = self->__regions;
    self->__regions = v15;

    v17 = self->__regions;
    v18 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{0, -[NSArray count](v17, "count")}];
    [(NSArray *)v17 addObserver:self toObjectsAtIndexes:v18 forKeyPath:@"self" options:0 context:_UIHyperregionUnionRegionsObservationContext];

    [(_UIHyperregionUnion *)self didChangeValueForKey:@"_regions"];
  }
}

- (unint64_t)_regionIndexForClosestPoint:(double *)point toPoint:(const double *)toPoint
{
  if (![(NSArray *)self->__regions count])
  {
    if (point)
    {
      cblas_dcopy_NEWLAPACK();
    }

    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if (![(NSArray *)self->__regions count])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v7 = 0;
  v8 = 0x7FFFFFFFFFFFFFFFLL;
  v9 = INFINITY;
  do
  {
    v10 = [(NSArray *)self->__regions objectAtIndexedSubscript:v7];
    [v10 _closestPoint:self->__temp toPoint:toPoint];

    temp = self->__temp;
    dimensions = self->__dimensions;
    __C = 0.0;
    vDSP_distancesqD(toPoint, 1, temp, 1, &__C, dimensions);
    v13 = sqrt(__C);
    if (v13 < v9)
    {
      v14 = v13;
    }

    else
    {
      v14 = v9;
    }

    if (v13 < v9)
    {
      v8 = v7;
    }

    if (point && v13 < v9)
    {
      cblas_dcopy_NEWLAPACK();
      v14 = v13;
      v8 = v7;
    }

    ++v7;
    v9 = v14;
  }

  while (v7 < [(NSArray *)self->__regions count]);
  return v8;
}

- (_UIHyperregionUnion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = -[_UIHyperregionUnion initWithDimensions:](self, "initWithDimensions:", [coderCopy decodeIntegerForKey:@"_dimensions"]);
  v6 = _UIHyperregionClasses();
  v7 = [v6 setByAddingObject:objc_opt_class()];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"_regions"];

  [(_UIHyperregionUnion *)v5 _setRegions:v8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  dimensions = self->__dimensions;
  coderCopy = coder;
  [coderCopy encodeInteger:dimensions forKey:@"_dimensions"];
  [coderCopy encodeObject:self->__regions forKey:@"_regions"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[_UIHyperregionUnion alloc] initWithDimensions:[(_UIHyperregionUnion *)self _dimensions]];
  v5 = objc_alloc(MEMORY[0x1E695DEC8]);
  _regions = [(_UIHyperregionUnion *)self _regions];
  v7 = [v5 initWithArray:_regions copyItems:1];
  [(_UIHyperregionUnion *)v4 _setRegions:v7];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    _dimensions = [(_UIHyperregionUnion *)self _dimensions];
    if (_dimensions == [v5 _dimensions])
    {
      _regions = [(_UIHyperregionUnion *)self _regions];
      _regions2 = [v5 _regions];
      v9 = _regions;
      v10 = _regions2;
      v11 = v10;
      if (v9 == v10)
      {
        v12 = 1;
      }

      else
      {
        v12 = 0;
        if (v9 && v10)
        {
          v12 = [v9 isEqual:v10];
        }
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (_UIHyperregionUnionRegionsObservationContext == context)
  {
    [(_UIHyperregionUnion *)self willChangeValueForKey:@"_regions", object, change];

    [(_UIHyperregionUnion *)self didChangeValueForKey:@"_regions"];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _UIHyperregionUnion;
    [(_UIHyperregionUnion *)&v7 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

@end