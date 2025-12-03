@interface _UIPackedRegion
- (BOOL)_isBoundaryCrossedFromPoint:(const double *)point toPoint:(const double *)toPoint;
- (BOOL)isEqual:(id)equal;
- (_UIPackedRegion)initWithCoder:(id)coder;
- (_UIPackedRegion)initWithDimensions:(unint64_t)dimensions;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_closestPoint:(double *)point toPoint:(const double *)toPoint;
- (void)_setRegions:(id)regions;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation _UIPackedRegion

- (_UIPackedRegion)initWithDimensions:(unint64_t)dimensions
{
  v9.receiver = self;
  v9.super_class = _UIPackedRegion;
  v4 = [(_UIPackedRegion *)&v9 init];
  v5 = v4;
  if (v4)
  {
    regions = v4->__regions;
    v7 = MEMORY[0x1E695E0F0];
    v4->__dimensions = dimensions;
    v4->__regions = v7;
  }

  return v5;
}

- (void)dealloc
{
  regions = self->__regions;
  v4 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{0, -[NSArray count](regions, "count")}];
  [(NSArray *)regions removeObserver:self fromObjectsAtIndexes:v4 forKeyPath:@"self" context:_UIPackedRegionRegionsObservationContext];

  v5.receiver = self;
  v5.super_class = _UIPackedRegion;
  [(_UIPackedRegion *)&v5 dealloc];
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
      v9 = 0;
      v10 = *v20;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v9 += [*(*(&v19 + 1) + 8 * i) _dimensions];
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }

    if (v9 != self->__dimensions)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UIHyperregion.m" lineNumber:1430 description:{@"Tried to set _regions %@ with unequal total dimensions %lu to %@ (%lu)", v6, v9, self, self->__dimensions}];
    }

    [(_UIPackedRegion *)self willChangeValueForKey:@"_regions"];
    regions = self->__regions;
    v13 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{0, -[NSArray count](regions, "count")}];
    [(NSArray *)regions removeObserver:self fromObjectsAtIndexes:v13 forKeyPath:@"self" context:_UIPackedRegionRegionsObservationContext];

    v14 = [(NSArray *)v6 copy];
    v15 = self->__regions;
    self->__regions = v14;

    v16 = self->__regions;
    v17 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{0, -[NSArray count](v16, "count")}];
    [(NSArray *)v16 addObserver:self toObjectsAtIndexes:v17 forKeyPath:@"self" options:0 context:_UIPackedRegionRegionsObservationContext];

    [(_UIPackedRegion *)self didChangeValueForKey:@"_regions"];
  }
}

- (void)_closestPoint:(double *)point toPoint:(const double *)toPoint
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  _regions = [(_UIPackedRegion *)self _regions];
  v7 = [_regions countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(_regions);
        }

        v12 = *(*(&v13 + 1) + 8 * i);
        [v12 _closestPoint:&point[v9] toPoint:&toPoint[v9]];
        v9 += [v12 _dimensions];
      }

      v8 = [_regions countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

- (BOOL)_isBoundaryCrossedFromPoint:(const double *)point toPoint:(const double *)toPoint
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  _regions = [(_UIPackedRegion *)self _regions];
  v7 = [_regions countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v16;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(_regions);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if (_UIHyperregionIsBoundaryCrossedFromPointToPoint(v12, &point[v9], &toPoint[v9]))
        {
          v13 = 1;
          goto LABEL_11;
        }

        v9 += [v12 _dimensions];
      }

      v8 = [_regions countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
}

- (_UIPackedRegion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = -[_UIPackedRegion initWithDimensions:](self, "initWithDimensions:", [coderCopy decodeIntegerForKey:@"_dimensions"]);
  v6 = _UIHyperregionClasses();
  v7 = [v6 setByAddingObject:objc_opt_class()];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"_regions"];

  [(_UIPackedRegion *)v5 _setRegions:v8];
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
  v4 = [[_UIPackedRegion alloc] initWithDimensions:[(_UIPackedRegion *)self _dimensions]];
  v5 = objc_alloc(MEMORY[0x1E695DEC8]);
  _regions = [(_UIPackedRegion *)self _regions];
  v7 = [v5 initWithArray:_regions copyItems:1];
  [(_UIPackedRegion *)v4 _setRegions:v7];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    _dimensions = [(_UIPackedRegion *)self _dimensions];
    if (_dimensions == [v5 _dimensions])
    {
      _regions = [(_UIPackedRegion *)self _regions];
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
  if (_UIPackedRegionRegionsObservationContext == context)
  {
    [(_UIPackedRegion *)self willChangeValueForKey:@"_regions", object, change];

    [(_UIPackedRegion *)self didChangeValueForKey:@"_regions"];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _UIPackedRegion;
    [(_UIPackedRegion *)&v7 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

@end