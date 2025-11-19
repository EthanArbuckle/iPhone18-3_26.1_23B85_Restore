@interface _UIHyperrepeatedRegion
+ (id)keyPathsForValuesAffectingSelf;
- (BOOL)_isBoundaryCrossedFromPoint:(const double *)a3 toPoint:(const double *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (_UIHyperrepeatedRegion)initWithCoder:(id)a3;
- (_UIHyperrepeatedRegion)initWithDimensions:(unint64_t)a3;
- (double)_mutableMaximumIndices;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_closestPoint:(double *)a3 toPoint:(const double *)a4;
- (void)_indexOfClosestSubregion:(double *)a3 toPoint:(const double *)a4;
- (void)_mutateIncrement:(id)a3;
- (void)_mutateOffset:(id)a3;
- (void)_mutateRepetitions:(id)a3;
- (void)_setRegion:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UIHyperrepeatedRegion

- (_UIHyperrepeatedRegion)initWithDimensions:(unint64_t)a3
{
  v7.receiver = self;
  v7.super_class = _UIHyperrepeatedRegion;
  v4 = [(_UIHyperrepeatedRegion *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->__dimensions = a3;
    v4->__repetitions = malloc_type_calloc(a3, 8uLL, 0x100004000313F17uLL);
    v5->__offset = malloc_type_calloc(a3, 8uLL, 0x100004000313F17uLL);
    v5->__increment = malloc_type_calloc(a3, 8uLL, 0x100004000313F17uLL);
    v5->__maximumIndices = malloc_type_calloc(a3, 8uLL, 0x100004000313F17uLL);
    v5->__temp = malloc_type_calloc(2 * a3, 8uLL, 0x100004000313F17uLL);
  }

  return v5;
}

- (void)dealloc
{
  free(self->__repetitions);
  free(self->__offset);
  free(self->__increment);
  free(self->__maximumIndices);
  free(self->__temp);
  v3.receiver = self;
  v3.super_class = _UIHyperrepeatedRegion;
  [(_UIHyperrepeatedRegion *)&v3 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  region = self->__region;
  v6 = _UINSUIntegerVectorDescription(self->__repetitions, self->__dimensions);
  v7 = _UIVectorDescription(self->__offset, self->__dimensions);
  v8 = _UIVectorDescription(self->__increment, self->__dimensions);
  v9 = [v3 stringWithFormat:@"<%@: %p region = %@; repetitions = %@; offset = %@; increment = %@>", v4, self, region, v6, v7, v8];;

  return v9;
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
      [v7 handleFailureInMethod:a2 object:self file:@"_UIHyperregion.m" lineNumber:616 description:{@"Tried to set _region %@ (%lu) with unequal dimensions to %@ (%lu)", v8, -[_UIHyperregion _dimensions](v8, "_dimensions"), self, self->__dimensions}];
    }

    [(_UIHyperrepeatedRegion *)self willChangeValueForKey:@"_region"];
    objc_storeStrong(&self->__region, a3);
    [(_UIHyperrepeatedRegion *)self didChangeValueForKey:@"_region"];
    v6 = v8;
  }
}

- (void)_mutateRepetitions:(id)a3
{
  v4 = a3;
  [(_UIHyperrepeatedRegion *)self willChangeValueForKey:@"_repetitions"];
  v4[2](v4, self->__repetitions);

  *&self->_clean &= ~1u;

  [(_UIHyperrepeatedRegion *)self didChangeValueForKey:@"_repetitions"];
}

- (void)_mutateOffset:(id)a3
{
  v4 = a3;
  [(_UIHyperrepeatedRegion *)self willChangeValueForKey:@"_offset"];
  v4[2](v4, self->__offset);

  [(_UIHyperrepeatedRegion *)self didChangeValueForKey:@"_offset"];
}

- (void)_mutateIncrement:(id)a3
{
  v4 = a3;
  [(_UIHyperrepeatedRegion *)self willChangeValueForKey:@"_increment"];
  v4[2](v4, self->__increment);

  [(_UIHyperrepeatedRegion *)self didChangeValueForKey:@"_increment"];
}

- (double)_mutableMaximumIndices
{
  clean = self->_clean;
  if ((clean & 1) == 0)
  {
    dimensions = self->__dimensions;
    if (dimensions)
    {
      repetitions = self->__repetitions;
      maximumIndices = self->__maximumIndices;
      do
      {
        v6 = *repetitions++;
        *maximumIndices++ = v6 + -1.0;
        --dimensions;
      }

      while (dimensions);
      clean = self->_clean;
    }

    *&self->_clean = clean | 1;
  }

  return self->__maximumIndices;
}

- (void)_indexOfClosestSubregion:(double *)a3 toPoint:(const double *)a4
{
  vDSP_vsubD(self->__offset, 1, a4, 1, a3, 1, self->__dimensions);
  vDSP_vdivD(self->__increment, 1, a3, 1, a3, 1, self->__dimensions);
  dimensions = self->__dimensions;
  vvfloor(a3, a3, &dimensions);
  v6 = self->__dimensions;
  __B = 0.0;
  vDSP_vmaxD(a3, 1, &__B, 0, a3, 1, v6);
  v7 = [(_UIHyperrepeatedRegion *)self _mutableMaximumIndices];
  v8 = self->__dimensions;

  vDSP_vminD(a3, 1, v7, 1, a3, 1, v8);
}

- (void)_closestPoint:(double *)a3 toPoint:(const double *)a4
{
  [(_UIHyperrepeatedRegion *)self _indexOfClosestSubregion:a3 toPoint:a4];
  vDSP_vmulD(a3, 1, self->__increment, 1, self->__temp, 1, self->__dimensions);
  vDSP_vsubD(self->__temp, 1, a3, 1, a3, 1, self->__dimensions);
  [(_UIHyperregion *)self->__region _closestPoint:a3 toPoint:a3];
  vDSP_vaddD(a3, 1, self->__temp, 1, a3, 1, self->__dimensions);
  offset = self->__offset;
  dimensions = self->__dimensions;

  vDSP_vaddD(a3, 1, offset, 1, a3, 1, dimensions);
}

- (BOOL)_isBoundaryCrossedFromPoint:(const double *)a3 toPoint:(const double *)a4
{
  [(_UIHyperrepeatedRegion *)self _indexOfClosestSubregion:self->__temp toPoint:a3];
  [(_UIHyperrepeatedRegion *)self _indexOfClosestSubregion:&self->__temp[self->__dimensions] toPoint:a4];
  return memcmp(self->__temp, &self->__temp[self->__dimensions], 8 * self->__dimensions) != 0;
}

- (_UIHyperrepeatedRegion)initWithCoder:(id)a3
{
  v5 = a3;
  v16 = 0;
  v17 = 0;
  v15 = 0;
  v6 = [v5 _ui_decodeNSUIntegerVectorForKey:@"_repetitions" returnedCount:&v17];
  v7 = [v5 _ui_decodeVectorForKey:@"_offset" returnedCount:&v16];
  v8 = [v5 _ui_decodeVectorForKey:@"_increment" returnedCount:&v15];
  if (v17 != v16 || v16 != v15)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"_UIHyperregion.m" lineNumber:730 description:{@"Tried to decode repetitions (%lu), offset (%lu), and increment (%lu) with different number of dimensions", v17, v16, v15}];
  }

  v10 = [(_UIHyperrepeatedRegion *)self initWithDimensions:?];
  v11 = _UIHyperregionClasses();
  v12 = [v5 decodeObjectOfClasses:v11 forKey:@"_region"];
  [(_UIHyperrepeatedRegion *)v10 _setRegion:v12];

  [(_UIHyperrepeatedRegion *)v10 _mutateRepetitions:v6];
  [(_UIHyperrepeatedRegion *)v10 _mutateOffset:v7];
  [(_UIHyperrepeatedRegion *)v10 _mutateIncrement:v8];

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  region = self->__region;
  v5 = a3;
  [v5 encodeObject:region forKey:@"_region"];
  [v5 _ui_encodeNSUIntegerVector:self->__repetitions count:self->__dimensions forKey:@"_repetitions"];
  [v5 _ui_encodeVector:self->__offset count:self->__dimensions forKey:@"_offset"];
  [v5 _ui_encodeVector:self->__increment count:self->__dimensions forKey:@"_increment"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6 = [(_UIHyperrepeatedRegion *)self _region];
  v7 = objc_opt_respondsToSelector();

  if ((v7 & 1) == 0)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = [(_UIHyperrepeatedRegion *)self _region];
    [v12 handleFailureInMethod:a2 object:self file:@"_UIHyperregion.m" lineNumber:753 description:{@"region (%@) must conform to NSCopying to copy self (%@)", v13, self}];
  }

  v8 = [[_UIHyperrepeatedRegion alloc] initWithDimensions:[(_UIHyperrepeatedRegion *)self _dimensions]];
  v9 = [(_UIHyperrepeatedRegion *)self _region];
  v10 = [v9 copyWithZone:a3];
  [(_UIHyperrepeatedRegion *)v8 _setRegion:v10];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __39___UIHyperrepeatedRegion_copyWithZone___block_invoke;
  v16[3] = &unk_1E70F9990;
  v16[4] = self;
  [(_UIHyperrepeatedRegion *)v8 _mutateRepetitions:v16];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __39___UIHyperrepeatedRegion_copyWithZone___block_invoke_2;
  v15[3] = &unk_1E70F4AC0;
  v15[4] = self;
  [(_UIHyperrepeatedRegion *)v8 _mutateOffset:v15];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __39___UIHyperrepeatedRegion_copyWithZone___block_invoke_3;
  v14[3] = &unk_1E70F4AC0;
  v14[4] = self;
  [(_UIHyperrepeatedRegion *)v8 _mutateIncrement:v14];
  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(_UIHyperrepeatedRegion *)self _dimensions];
    if (v6 != [v5 _dimensions])
    {
      v13 = 0;
LABEL_17:

      goto LABEL_18;
    }

    v7 = [(_UIHyperrepeatedRegion *)self _region];
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

        goto LABEL_15;
      }

      v12 = [v9 isEqual:v10];

      if (!v12)
      {
        goto LABEL_15;
      }
    }

    if (!memcmp(-[_UIHyperrepeatedRegion _repetitions](self, "_repetitions"), [v5 _repetitions], 8 * -[_UIHyperrepeatedRegion _dimensions](self, "_dimensions")) && !memcmp(-[_UIHyperrepeatedRegion _offset](self, "_offset"), objc_msgSend(v5, "_offset"), 8 * -[_UIHyperrepeatedRegion _dimensions](self, "_dimensions")))
    {
      v13 = memcmp(-[_UIHyperrepeatedRegion _increment](self, "_increment"), [v5 _increment], 8 * -[_UIHyperrepeatedRegion _dimensions](self, "_dimensions")) == 0;
LABEL_16:

      goto LABEL_17;
    }

LABEL_15:
    v13 = 0;
    goto LABEL_16;
  }

  v13 = 0;
LABEL_18:

  return v13;
}

+ (id)keyPathsForValuesAffectingSelf
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = [@"_region" stringByAppendingString:@".self"];
  v4 = [v2 setWithObjects:{@"_region", v3, @"_repetitions", @"_offset", @"_increment", 0}];

  return v4;
}

@end