@interface _UISimplex
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (_UISimplex)initWithCoder:(id)a3;
- (_UISimplex)initWithDimensions:(unint64_t)a3 pointCount:(unint64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_closestPoint:(double *)a3 toPoint:(const double *)a4;
- (void)_mutatePoints:(id)a3;
- (void)_recomputeMetadata;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UISimplex

- (_UISimplex)initWithDimensions:(unint64_t)a3 pointCount:(unint64_t)a4
{
  v19.receiver = self;
  v19.super_class = _UISimplex;
  v7 = [(_UISimplex *)&v19 init];
  if (v7)
  {
    if (!a3)
    {
      v18 = [MEMORY[0x1E696AAA8] currentHandler];
      [v18 handleFailureInMethod:a2 object:v7 file:@"_UIHyperregion.m" lineNumber:986 description:@"dimensions must be greater than zero"];
    }

    v7->__dimensions = a3;
    v7->__pointCount = a4;
    v7->__points = malloc_type_calloc(a4 * a3, 8uLL, 0x100004000313F17uLL);
    v8 = malloc_type_calloc(a3 * a3, 8uLL, 0x100004000313F17uLL);
    v9 = a3 - a4 + 1;
    v7->__projection = v8;
    v7->__missingNormalCount = v9;
    v7->__missingNormals = malloc_type_calloc(v9 * a3, 8uLL, 0x100004000313F17uLL);
    v7->__facetNormals = malloc_type_calloc(v7->__pointCount * a3, 8uLL, 0x100004000313F17uLL);
    v7->__facetNormalOffsets = malloc_type_calloc(v7->__pointCount, 8uLL, 0x100004000313F17uLL);
    if (a4 >= 2)
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
      if (v7->__pointCount)
      {
        v11 = 0;
        do
        {
          v12 = [[_UISimplex alloc] initWithDimensions:a3 pointCount:a4 - 1];
          [(NSArray *)v10 addObject:v12];

          ++v11;
        }

        while (v11 < v7->__pointCount);
      }

      facets = v7->__facets;
      v7->__facets = v10;
    }

    v14 = LODWORD(v7->__pointCount) - 1;
    v15 = ilaenv_NEWLAPACK();
    v7->__cggetriWorkspaceSize = v15 * v14;
    v7->__cggetriWorkspace = malloc_type_calloc(v15 * v14, 8uLL, 0x100004000313F17uLL);
    if (a3 <= a4)
    {
      v16 = a4;
    }

    else
    {
      v16 = a3;
    }

    v7->__temp = malloc_type_calloc(v16 * v16, 8uLL, 0x100004000313F17uLL);
  }

  return v7;
}

- (void)dealloc
{
  free(self->__points);
  free(self->__projection);
  free(self->__missingNormals);
  free(self->__facetNormals);
  free(self->__facetNormalOffsets);
  free(self->__cggetriWorkspace);
  free(self->__temp);
  v3.receiver = self;
  v3.super_class = _UISimplex;
  [(_UISimplex *)&v3 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = _UIMatrixDescription(self->__points, self->__dimensions, self->__pointCount);
  v6 = [v3 stringWithFormat:@"<%@: %p points = %@>", v4, self, v5];;

  return v6;
}

- (void)_recomputeMetadata
{
  if (self->__pointCount != 1)
  {
    v3 = 0;
    do
    {
      dimensions = self->__dimensions;
      v5 = &self->__temp[dimensions * v3++];
      vDSP_vsubD(self->__points, 1, &self->__points[dimensions * v3], 1, v5, 1, dimensions);
      pointCount = self->__pointCount;
    }

    while (v3 < pointCount - 1);
    if (pointCount > 1 && pointCount - 1 < self->__dimensions)
    {
      _UIHyperProjectionMatrixForBasis(self->__projection);
    }
  }

  catlas_dset_NEWLAPACK();
  catlas_dset_NEWLAPACK();
  catlas_dset_NEWLAPACK();
  _UIHyperKernelBasis(self->__temp);
  catlas_dset_NEWLAPACK();
  catlas_dset_NEWLAPACK();
  if (self->__pointCount)
  {
    v7 = 0;
    do
    {
      cblas_dcopy_NEWLAPACK();
      v8 = &self->__temp[self->__dimensions * self->__missingNormalCount];
      cblas_dcopy_NEWLAPACK();
      v9 = v7 + 1;
      cblas_dcopy_NEWLAPACK();
      v10 = self->__pointCount;
      if (v10 != 1)
      {
        v11 = 0;
        v12 = v10 - 2;
        do
        {
          vDSP_vsubD(&v8[self->__dimensions * v12], 1, &v8[self->__dimensions * v11], 1, &v8[self->__dimensions * v11], 1, self->__dimensions);
          ++v11;
        }

        while (v11 < self->__pointCount - 1);
      }

      v13 = &self->__facetNormals[self->__dimensions * v7];
      _UIHyperKernelBasis(self->__temp);
      v14 = self->__dimensions;
      v15 = &self->__points[v9 % self->__pointCount * v14];
      __C = 0.0;
      vDSP_dotprD(v13, 1, v15, 1, &__C, v14);
      self->__facetNormalOffsets[v7] = __C;
      v16 = self->__dimensions;
      v17 = &self->__points[v16 * v7];
      __C = 0.0;
      vDSP_dotprD(v13, 1, v17, 1, &__C, v16);
      v18 = __C;
      if (__C > self->__facetNormalOffsets[v7])
      {
        v19 = self->__dimensions;
        __C = -1.0;
        vDSP_vsmulD(v13, 1, &__C, v13, 1, v19);
        facetNormalOffsets = self->__facetNormalOffsets;
        v18 = -facetNormalOffsets[v7];
        facetNormalOffsets[v7] = v18;
      }

      v21 = self->__pointCount;
      ++v7;
    }

    while (v9 < v21);
    if (v21 && self->__facets)
    {
      v22 = 0;
      do
      {
        v23 = [(NSArray *)self->__facets objectAtIndexedSubscript:v22, v18];
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __32___UISimplex__recomputeMetadata__block_invoke;
        v24[3] = &unk_1E70F59D8;
        v24[4] = self;
        v24[5] = v22;
        [v23 _mutatePoints:v24];

        ++v22;
      }

      while (v22 < self->__pointCount);
    }
  }

  *&self->_clean |= 1u;
}

- (void)_mutatePoints:(id)a3
{
  v4 = a3;
  [(_UISimplex *)self willChangeValueForKey:@"_points"];
  v4[2](v4, self->__points);

  *&self->_clean &= ~1u;

  [(_UISimplex *)self didChangeValueForKey:@"_points"];
}

- (void)_closestPoint:(double *)a3 toPoint:(const double *)a4
{
  if ((*&self->_clean & 1) == 0)
  {
    [(_UISimplex *)self _recomputeMetadata];
  }

  if (self->__pointCount >= 2)
  {
    v7 = 0;
    while (1)
    {
      dimensions = self->__dimensions;
      v9 = &self->__facetNormals[dimensions * v7];
      __C = 0.0;
      vDSP_dotprD(v9, 1, a4, 1, &__C, dimensions);
      if (__C > self->__facetNormalOffsets[v7])
      {
        break;
      }

      ++v7;
      pointCount = self->__pointCount;
      if (v7 >= pointCount)
      {
        v11 = self->__dimensions;
        if (pointCount - 1 >= v11)
        {

          cblas_dcopy_NEWLAPACK();
        }

        else
        {
          vDSP_vsubD(self->__points, 1, a4, 1, a3, 1, v11);
          cblas_dgemv_NEWLAPACK();
          points = self->__points;
          v13 = self->__dimensions;

          vDSP_vaddD(a3, 1, points, 1, a3, 1, v13);
        }

        return;
      }
    }
  }

  cblas_dcopy_NEWLAPACK();
  if (self->__facets && self->__pointCount)
  {
    v14 = 0;
    v15 = INFINITY;
    do
    {
      v16 = [(NSArray *)self->__facets objectAtIndexedSubscript:v14];
      [v16 _closestPoint:self->__temp toPoint:a4];
      temp = self->__temp;
      v18 = self->__dimensions;
      __C = 0.0;
      vDSP_distancesqD(a4, 1, temp, 1, &__C, v18);
      v19 = sqrt(__C);
      if (v19 < v15)
      {
        cblas_dcopy_NEWLAPACK();
        v15 = v19;
      }

      ++v14;
    }

    while (v14 < self->__pointCount);
  }
}

- (_UISimplex)initWithCoder:(id)a3
{
  v5 = a3;
  v6 = [v5 decodeIntegerForKey:@"_pointCount"];
  v12 = 0;
  v7 = [v5 _ui_decodeVectorForKey:@"_points" returnedCount:&v12];

  v8 = v12;
  if (v12 % v6)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"_UIHyperregion.m" lineNumber:1213 description:{@"Decoded pointCount (%lu) is of unexpected size", v6}];

    v8 = v12;
  }

  v9 = [(_UISimplex *)self initWithDimensions:v8 / v6 pointCount:v6];
  [(_UISimplex *)v9 _mutatePoints:v7];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  pointCount = self->__pointCount;
  v5 = a3;
  [v5 encodeInteger:pointCount forKey:@"_pointCount"];
  [v5 _ui_encodeVector:self->__points count:self->__pointCount * self->__dimensions forKey:@"_points"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[_UISimplex alloc] initWithDimensions:[(_UISimplex *)self _dimensions] pointCount:[(_UISimplex *)self _pointCount]];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __27___UISimplex_copyWithZone___block_invoke;
  v6[3] = &unk_1E70F4AC0;
  v6[4] = self;
  [(_UISimplex *)v4 _mutatePoints:v6];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(_UISimplex *)self _dimensions];
    v8 = v6 == [v5 _dimensions] && (v7 = -[_UISimplex _pointCount](self, "_pointCount"), v7 == objc_msgSend(v5, "_pointCount")) && memcmp(-[_UISimplex _points](self, "_points"), objc_msgSend(v5, "_points"), 8 * -[_UISimplex _dimensions](self, "_dimensions") * -[_UISimplex _pointCount](self, "_pointCount")) == 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end