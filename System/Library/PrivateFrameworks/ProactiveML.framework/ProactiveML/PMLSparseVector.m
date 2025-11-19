@interface PMLSparseVector
+ (id)sparseVectorEmptyWithLength:(unint64_t)a3;
+ (id)sparseVectorFromDense:(const float *)a3 length:(unint64_t)a4;
+ (id)sparseVectorFromDense:(id)a3;
+ (id)sparseVectorFromNumbers:(id)a3;
+ (id)sparseVectorFromNumbers:(id)a3 indices:(id)a4 length:(unint64_t)a5;
+ (id)sparseVectorWithLength:(unint64_t)a3 numberOfNonZeroValues:(unint64_t)a4 block:(id)a5;
+ (void)sparseVectorWithLength:(unint64_t)a3 numberOfNonZeroValues:(unint64_t)a4 isSparseIndexInt64:(BOOL)a5 sparseIndices:(const void *)a6 sparseValues:(const float *)a7 toDenseValues:(float *)a8 withLength:(unint64_t)a9;
- (PMLSparseVector)initWithLength:(unint64_t)a3 numberOfNonZeroValues:(unint64_t)a4 indices:(int64_t *)a5 values:(float *)a6;
- (PMLSparseVector)initWithLength:(unint64_t)a3 numberOfNonZeroValues:(unint64_t)a4 indicesData:(id)a5 valuesData:(id)a6;
- (PMLSparseVector)vectorWithConstantColumn;
- (float)maxAbsValue;
- (float)maxValue;
- (float)minValue;
- (float)valueAtIndex:(unint64_t)a3;
- (id)indicesAsUInt16Data;
- (id)indicesData;
- (id)quantizedValuesAsUInt8DataWithMin:(float)a3 max:(float)a4;
- (id)valuesData;
- (void)addStartId:(int64_t)a3 endId:(int64_t)a4 paddingId:(int64_t)a5 withMaxVectorLength:(unint64_t)a6;
- (void)applyOneHotNormalization;
- (void)convertToBagOfIds;
- (void)dealloc;
- (void)enumerateNonZeroValuesWithBlock:(id)a3;
- (void)processNonZeroValuesInPlaceWithBlock:(id)a3;
- (void)scaleInPlaceWithInversedFactor:(float)a3;
- (void)scaleWithVectorNormalization:(int64_t)a3;
- (void)setLength:(unint64_t)a3;
- (void)setNumberOfNonZeroValues:(unint64_t)a3;
- (void)setSparseIndices:(int64_t *)a3;
- (void)setSparseValues:(float *)a3;
@end

@implementation PMLSparseVector

- (PMLSparseVector)vectorWithConstantColumn
{
  v3 = malloc_type_calloc(self->_numberOfNonZeroValues + 1, 8uLL, 0x100004000313F17uLL);
  v4 = malloc_type_calloc(self->_numberOfNonZeroValues + 1, 4uLL, 0x100004052888210uLL);
  memcpy(v3, [(PMLSparseVector *)self sparseIndices], 8 * self->_numberOfNonZeroValues);
  memcpy(v4, [(PMLSparseVector *)self sparseValues], 4 * self->_numberOfNonZeroValues);
  numberOfNonZeroValues = self->_numberOfNonZeroValues;
  *(v3 + numberOfNonZeroValues) = self->_length;
  *(v4 + numberOfNonZeroValues) = 1065353216;
  v6 = [[PMLSparseVector alloc] initWithLength:[(PMLSparseVector *)self length]+ 1 numberOfNonZeroValues:[(PMLSparseVector *)self numberOfNonZeroValues]+ 1 indices:v3 values:v4];

  return v6;
}

- (float)valueAtIndex:(unint64_t)a3
{
  v5 = 0.0;
  if ([(PMLSparseVector *)self numberOfNonZeroValues])
  {
    v6 = 0;
    while ([(PMLSparseVector *)self sparseIndices][8 * v6] != a3)
    {
      if (++v6 >= [(PMLSparseVector *)self numberOfNonZeroValues])
      {
        return v5;
      }
    }

    return [(PMLSparseVector *)self sparseValues][4 * v6];
  }

  return v5;
}

- (void)addStartId:(int64_t)a3 endId:(int64_t)a4 paddingId:(int64_t)a5 withMaxVectorLength:(unint64_t)a6
{
  if (self->_length == self->_numberOfNonZeroValues)
  {
    if (a6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v19 = [MEMORY[0x277CCA890] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"PMLSparseVector.m" lineNumber:348 description:{@"Invalid parameter not satisfying: %@", @"_length == _numberOfNonZeroValues"}];

    if (a6)
    {
      goto LABEL_3;
    }
  }

  v20 = [MEMORY[0x277CCA890] currentHandler];
  [v20 handleFailureInMethod:a2 object:self file:@"PMLSparseVector.m" lineNumber:349 description:{@"Invalid parameter not satisfying: %@", @"maxVectorLength"}];

LABEL_3:
  if (self->_length >= a6)
  {
    length = a6;
  }

  else
  {
    length = self->_length;
  }

  self->_length = a6;
  [(PMLSparseVector *)self setNumberOfNonZeroValues:a6];
  if (a3)
  {
    if (length >= a6 - 1)
    {
      v13 = a6 - 1;
    }

    else
    {
      v13 = length;
    }

    memmove(self->_sparseValues + 1, self->_sparseValues, 4 * v13);
    sparseValues = self->_sparseValues;
    self->_sparseIndices[v13] = v13;
    *sparseValues = a3;
  }

  if (a3)
  {
    v15 = length + 1;
  }

  else
  {
    v15 = length;
  }

  if (v15 < a6)
  {
    v16 = v15;
    sparseIndices = self->_sparseIndices;
    v18 = self->_sparseValues;
    do
    {
      sparseIndices[v16] = v16;
      v18[v16++] = a5;
    }

    while (v16 < a6);
  }

  if (a4)
  {
    if (v15 >= a6 - 1)
    {
      v15 = a6 - 1;
    }

    self->_sparseValues[v15] = a4;
  }
}

- (void)convertToBagOfIds
{
  numberOfNonZeroValues = self->_numberOfNonZeroValues;
  self->_length = numberOfNonZeroValues;
  if (numberOfNonZeroValues)
  {
    v3 = 0;
    sparseIndices = self->_sparseIndices;
    sparseValues = self->_sparseValues;
    do
    {
      sparseValues[v3] = sparseIndices[v3];
      sparseIndices[v3] = v3;
      ++v3;
    }

    while (numberOfNonZeroValues != v3);
  }
}

- (void)processNonZeroValuesInPlaceWithBlock:(id)a3
{
  if (self->_numberOfNonZeroValues)
  {
    v5 = 0;
    sparseValues = self->_sparseValues;
    do
    {
      v7 = (*(a3 + 2))(a3, self->_sparseIndices[v5], sparseValues[v5]);
      sparseValues = self->_sparseValues;
      sparseValues[v5++] = v7;
    }

    while (v5 < self->_numberOfNonZeroValues);
  }
}

- (void)enumerateNonZeroValuesWithBlock:(id)a3
{
  if (self->_numberOfNonZeroValues)
  {
    v5 = 0;
    do
    {
      (*(a3 + 2))(a3, self->_sparseIndices[v5], self->_sparseValues[v5]);
      ++v5;
    }

    while (v5 < self->_numberOfNonZeroValues);
  }
}

- (void)setSparseIndices:(int64_t *)a3
{
  sparseIndices = self->_sparseIndices;
  if (sparseIndices)
  {
    v6 = sparseIndices == a3;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PMLSparseVector.m" lineNumber:272 description:{@"Invalid parameter not satisfying: %@", @"_sparseIndices == NULL || _sparseIndices != sparseIndices"}];

    sparseIndices = self->_sparseIndices;
  }

  free(sparseIndices);
  self->_sparseIndices = a3;
}

- (void)setSparseValues:(float *)a3
{
  sparseValues = self->_sparseValues;
  if (sparseValues)
  {
    v6 = sparseValues == a3;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PMLSparseVector.m" lineNumber:265 description:{@"Invalid parameter not satisfying: %@", @"_sparseValues == NULL || _sparseValues != sparseValues"}];

    sparseValues = self->_sparseValues;
  }

  free(sparseValues);
  self->_sparseValues = a3;
}

- (void)setNumberOfNonZeroValues:(unint64_t)a3
{
  if (self->_length < a3)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PMLSparseVector.m" lineNumber:257 description:{@"Invalid parameter not satisfying: %@", @"_length >= numberOfNonZeroValues"}];
  }

  self->_numberOfNonZeroValues = a3;
  self->_sparseIndices = reallocf(self->_sparseIndices, 8 * a3);
  self->_sparseValues = reallocf(self->_sparseValues, 4 * a3);
}

- (void)setLength:(unint64_t)a3
{
  if (self->_numberOfNonZeroValues > a3)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PMLSparseVector.m" lineNumber:251 description:{@"Invalid parameter not satisfying: %@", @"length >= _numberOfNonZeroValues"}];
  }

  self->_length = a3;
}

- (void)scaleWithVectorNormalization:(int64_t)a3
{
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      [(PMLSparseVector *)self l2norm];
      goto LABEL_17;
    }

    if (a3 == 3)
    {
      [(PMLSparseVector *)self maxAbsValue];
      goto LABEL_17;
    }

    if (a3 != 4)
    {
      goto LABEL_12;
    }

    [(PMLSparseVector *)self applyOneHotNormalization];
LABEL_10:
    *&v3 = self->_numberOfNonZeroValues;
    goto LABEL_17;
  }

  switch(a3)
  {
    case -1:
      return;
    case 0:
      goto LABEL_10;
    case 1:
      [(PMLSparseVector *)self l1norm];
LABEL_17:

      [(PMLSparseVector *)self scaleInPlaceWithInversedFactor:v3];
      return;
  }

LABEL_12:
  v5 = PML_LogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    *v6 = 0;
    _os_log_fault_impl(&dword_260D68000, v5, OS_LOG_TYPE_FAULT, "PMLSparseVector: unknown vector normalization method", v6, 2u);
  }
}

- (void)applyOneHotNormalization
{
  numberOfNonZeroValues = self->_numberOfNonZeroValues;
  if (numberOfNonZeroValues)
  {
    sparseValues = self->_sparseValues;
    do
    {
      if (*sparseValues == 0.0)
      {
        v4 = 0.0;
      }

      else
      {
        v4 = 1.0;
      }

      *sparseValues++ = v4;
      --numberOfNonZeroValues;
    }

    while (numberOfNonZeroValues);
  }
}

- (void)scaleInPlaceWithInversedFactor:(float)a3
{
  if (a3 > 0.0)
  {
    numberOfNonZeroValues_low = LODWORD(self->_numberOfNonZeroValues);
    sparseValues = self->_sparseValues;
    cblas_sscal_NEWLAPACK();
  }
}

- (float)maxAbsValue
{
  if (!self->_numberOfNonZeroValues)
  {
    return 0.0;
  }

  sparseValues = self->_sparseValues;
  result = sparseValues[cblas_isamax_NEWLAPACK()];
  if (result < 0.0)
  {
    return -result;
  }

  return result;
}

- (float)maxValue
{
  numberOfNonZeroValues = self->_numberOfNonZeroValues;
  if (!numberOfNonZeroValues)
  {
    return 1.1755e-38;
  }

  sparseValues = self->_sparseValues;
  result = 1.1755e-38;
  do
  {
    v5 = *sparseValues++;
    v6 = v5;
    if (result < v5)
    {
      result = v6;
    }

    --numberOfNonZeroValues;
  }

  while (numberOfNonZeroValues);
  return result;
}

- (float)minValue
{
  numberOfNonZeroValues = self->_numberOfNonZeroValues;
  if (!numberOfNonZeroValues)
  {
    return 3.4028e38;
  }

  sparseValues = self->_sparseValues;
  result = 3.4028e38;
  do
  {
    v5 = *sparseValues++;
    v6 = v5;
    if (result >= v5)
    {
      result = v6;
    }

    --numberOfNonZeroValues;
  }

  while (numberOfNonZeroValues);
  return result;
}

- (id)quantizedValuesAsUInt8DataWithMin:(float)a3 max:(float)a4
{
  numberOfNonZeroValues = self->_numberOfNonZeroValues;
  if (numberOfNonZeroValues)
  {
    v8 = malloc_type_calloc(numberOfNonZeroValues, 1uLL, 0x100004077774924uLL);
    if (!v8)
    {
      v13 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE728] reason:@"malloc failed" userInfo:0];
      objc_exception_throw(v13);
    }

    if (self->_numberOfNonZeroValues)
    {
      v9 = 0;
      do
      {
        v8[v9] = vcvtms_s32_f32((self->_sparseValues[v9] - a3) / ((a4 - a3) / 255.0));
        ++v9;
        v10 = self->_numberOfNonZeroValues;
      }

      while (v9 < v10);
    }

    else
    {
      v10 = 0;
    }

    v11 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v8 length:v10 freeWhenDone:1];
  }

  else
  {
    v11 = objc_opt_new();
  }

  return v11;
}

- (id)indicesAsUInt16Data
{
  if (self->_length >= 0xFFFF)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PMLSparseVector.m" lineNumber:137 description:@"Too big vector."];
  }

  numberOfNonZeroValues = self->_numberOfNonZeroValues;
  if (numberOfNonZeroValues)
  {
    v4 = malloc_type_calloc(numberOfNonZeroValues, 2uLL, 0x1000040BDFB0063uLL);
    if (!v4)
    {
      v14 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE728] reason:@"malloc failed" userInfo:0];
      objc_exception_throw(v14);
    }

    v5 = self->_numberOfNonZeroValues;
    if (v5)
    {
      sparseIndices = self->_sparseIndices;
      v7 = v4;
      v8 = self->_numberOfNonZeroValues;
      do
      {
        v9 = *sparseIndices++;
        *v7++ = v9;
        --v8;
      }

      while (v8);
    }

    v10 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v4 length:2 * v5 freeWhenDone:1];
  }

  else
  {
    v10 = objc_opt_new();
  }

  return v10;
}

- (id)valuesData
{
  if (self->_numberOfNonZeroValues)
  {
    v3 = objc_alloc(MEMORY[0x277CBEA90]);
    sparseValues = self->_sparseValues;
    v5 = 4 * self->_numberOfNonZeroValues;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __29__PMLSparseVector_valuesData__block_invoke;
    v8[3] = &unk_279AC0838;
    v8[4] = self;
    v6 = [v3 initWithBytesNoCopy:sparseValues length:v5 deallocator:v8];
  }

  else
  {
    v6 = objc_opt_new();
  }

  return v6;
}

- (id)indicesData
{
  numberOfNonZeroValues = self->_numberOfNonZeroValues;
  if (numberOfNonZeroValues)
  {
    v4 = malloc_type_calloc(numberOfNonZeroValues, 4uLL, 0x100004052888210uLL);
    if (!v4)
    {
      v12 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE728] reason:@"malloc failed" userInfo:0];
      objc_exception_throw(v12);
    }

    v5 = self->_numberOfNonZeroValues;
    if (v5)
    {
      sparseIndices = self->_sparseIndices;
      v7 = v4;
      v8 = self->_numberOfNonZeroValues;
      do
      {
        v9 = *sparseIndices++;
        *v7++ = v9;
        --v8;
      }

      while (v8);
    }

    v10 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v4 length:4 * v5 freeWhenDone:1];
  }

  else
  {
    v10 = objc_opt_new();
  }

  return v10;
}

- (void)dealloc
{
  free(self->_sparseIndices);
  free(self->_sparseValues);
  v3.receiver = self;
  v3.super_class = PMLSparseVector;
  [(PMLSparseVector *)&v3 dealloc];
}

- (PMLSparseVector)initWithLength:(unint64_t)a3 numberOfNonZeroValues:(unint64_t)a4 indices:(int64_t *)a5 values:(float *)a6
{
  if (a4 && (!a5 || !a6))
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PMLSparseVector.m" lineNumber:91 description:{@"Invalid parameter not satisfying: %@", @"numberOfNonZeroValues == 0 || (indices && values)"}];
  }

  if (a3 < a4)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PMLSparseVector.m" lineNumber:92 description:{@"Invalid parameter not satisfying: %@", @"length>=numberOfNonZeroValues"}];
  }

  v15.receiver = self;
  v15.super_class = PMLSparseVector;
  result = [(PMLSparseVector *)&v15 init];
  if (result)
  {
    result->_length = a3;
    result->_numberOfNonZeroValues = a4;
    result->_sparseIndices = a5;
    result->_sparseValues = a6;
  }

  return result;
}

- (PMLSparseVector)initWithLength:(unint64_t)a3 numberOfNonZeroValues:(unint64_t)a4 indicesData:(id)a5 valuesData:(id)a6
{
  v11 = a5;
  v12 = a6;
  v13 = [a5 bytes];
  v14 = [v12 bytes];

  return [(PMLSparseVector *)self initWithLength:a3 numberOfNonZeroValues:a4 indices:v13 values:v14];
}

+ (id)sparseVectorFromNumbers:(id)a3 indices:(id)a4 length:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  if ([v8 count])
  {
    v10 = malloc_type_calloc([v8 count], 8uLL, 0x100004000313F17uLL);
    v11 = malloc_type_calloc([v8 count], 4uLL, 0x100004052888210uLL);
    if ([v8 count])
    {
      v12 = 0;
      v13 = 0;
      do
      {
        v14 = [v8 objectAtIndex:v12];
        [v14 floatValue];
        v16 = v15;

        v17 = [v9 objectAtIndex:v12];
        v18 = [v17 unsignedIntegerValue];

        if (v16 != 0.0)
        {
          v10[v13] = v18;
          v11[v13++] = v16;
        }

        ++v12;
      }

      while (v12 < [v8 count]);
    }

    v19 = [a1 alloc];
    v20 = [v8 count];
    v21 = v19;
    v22 = a5;
    v23 = v10;
    v24 = v11;
  }

  else
  {
    v21 = [a1 alloc];
    v22 = a5;
    v20 = 0;
    v23 = 0;
    v24 = 0;
  }

  v25 = [v21 initWithLength:v22 numberOfNonZeroValues:v20 indices:v23 values:v24];

  return v25;
}

+ (id)sparseVectorFromNumbers:(id)a3
{
  v4 = a3;
  v5 = malloc_type_calloc([v4 count], 4uLL, 0x100004052888210uLL);
  if (!v5)
  {
    v12 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE728] reason:@"malloc failed" userInfo:0];
    objc_exception_throw(v12);
  }

  v6 = v5;
  if ([v4 count])
  {
    v7 = 0;
    do
    {
      v8 = [v4 objectAtIndexedSubscript:v7];
      [v8 floatValue];
      v6[v7] = v9;

      ++v7;
    }

    while (v7 < [v4 count]);
  }

  v10 = [a1 sparseVectorFromDense:v6 length:{objc_msgSend(v4, "count")}];
  free(v6);

  return v10;
}

+ (void)sparseVectorWithLength:(unint64_t)a3 numberOfNonZeroValues:(unint64_t)a4 isSparseIndexInt64:(BOOL)a5 sparseIndices:(const void *)a6 sparseValues:(const float *)a7 toDenseValues:(float *)a8 withLength:(unint64_t)a9
{
  v12 = a5;
  v24 = *MEMORY[0x277D85DE8];
  if (a9 != a3)
  {
    v15 = PML_LogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v20 = 134218240;
      v21 = a3;
      v22 = 2048;
      v23 = a9;
      _os_log_impl(&dword_260D68000, v15, OS_LOG_TYPE_INFO, "PMLSparseVector: dimensions do not match between source sparse vector (%llu) and destination dense vector (%llu)", &v20, 0x16u);
    }
  }

  if (a3 == a4)
  {
    if (a3 >= a9)
    {
      v16 = a9;
    }

    else
    {
      v16 = a3;
    }

    memcpy(a8, a7, 4 * v16);
    if (a3 < a9)
    {
      bzero(&a8[v16], 4 * (a9 - v16));
    }
  }

  else
  {
    bzero(a8, 4 * a9);
    if (a4)
    {
      v17 = 0;
      do
      {
        if (v12)
        {
          v18 = *(a6 + v17);
        }

        else
        {
          v18 = *(a6 + v17);
        }

        if (v18 < a9)
        {
          a8[v18] = a7[v17];
        }

        ++v17;
      }

      while (a4 != v17);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

+ (id)sparseVectorWithLength:(unint64_t)a3 numberOfNonZeroValues:(unint64_t)a4 block:(id)a5
{
  v7 = a5;
  if (a4)
  {
    v8 = malloc_type_malloc(8 * a4, 0x100004000313F17uLL);
    v9 = malloc_type_malloc(4 * a4, 0x100004052888210uLL);
    v7[2](v7, v8, v9);
    v10 = [[PMLSparseVector alloc] initWithLength:a3 numberOfNonZeroValues:a4 indices:v8 values:v9];
  }

  else
  {
    v10 = [PMLSparseVector sparseVectorEmptyWithLength:a3];
  }

  v11 = v10;

  return v11;
}

+ (id)sparseVectorEmptyWithLength:(unint64_t)a3
{
  v3 = [[a1 alloc] initWithLength:a3 numberOfNonZeroValues:0 indices:0 values:0];

  return v3;
}

+ (id)sparseVectorFromDense:(id)a3
{
  v5 = a3;
  v6 = a3;
  v7 = [v6 ptr];
  v8 = [v6 count];

  return [a1 sparseVectorFromDense:v7 length:v8];
}

+ (id)sparseVectorFromDense:(const float *)a3 length:(unint64_t)a4
{
  if (!a4)
  {
    goto LABEL_12;
  }

  v7 = 0;
  for (i = 0; i != a4; ++i)
  {
    if (a3[i] != 0.0)
    {
      ++v7;
    }
  }

  if (v7)
  {
    v9 = malloc_type_calloc(v7, 8uLL, 0x100004000313F17uLL);
    v10 = malloc_type_calloc(v7, 4uLL, 0x100004052888210uLL);
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = a3[v11];
      if (v13 != 0.0)
      {
        v9[v12] = v11;
        v10[v12++] = v13;
      }

      ++v11;
    }

    while (a4 != v11);
    v14 = [[a1 alloc] initWithLength:a4 numberOfNonZeroValues:v7 indices:v9 values:v10];
  }

  else
  {
LABEL_12:
    v14 = [a1 sparseVectorEmptyWithLength:a4];
  }

  return v14;
}

@end