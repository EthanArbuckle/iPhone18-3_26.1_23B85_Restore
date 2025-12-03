@interface PMLSparseVector
+ (id)sparseVectorEmptyWithLength:(unint64_t)length;
+ (id)sparseVectorFromDense:(const float *)dense length:(unint64_t)length;
+ (id)sparseVectorFromDense:(id)dense;
+ (id)sparseVectorFromNumbers:(id)numbers;
+ (id)sparseVectorFromNumbers:(id)numbers indices:(id)indices length:(unint64_t)length;
+ (id)sparseVectorWithLength:(unint64_t)length numberOfNonZeroValues:(unint64_t)values block:(id)block;
+ (void)sparseVectorWithLength:(unint64_t)length numberOfNonZeroValues:(unint64_t)values isSparseIndexInt64:(BOOL)int64 sparseIndices:(const void *)indices sparseValues:(const float *)sparseValues toDenseValues:(float *)denseValues withLength:(unint64_t)withLength;
- (PMLSparseVector)initWithLength:(unint64_t)length numberOfNonZeroValues:(unint64_t)values indices:(int64_t *)indices values:(float *)a6;
- (PMLSparseVector)initWithLength:(unint64_t)length numberOfNonZeroValues:(unint64_t)values indicesData:(id)data valuesData:(id)valuesData;
- (PMLSparseVector)vectorWithConstantColumn;
- (float)maxAbsValue;
- (float)maxValue;
- (float)minValue;
- (float)valueAtIndex:(unint64_t)index;
- (id)indicesAsUInt16Data;
- (id)indicesData;
- (id)quantizedValuesAsUInt8DataWithMin:(float)min max:(float)max;
- (id)valuesData;
- (void)addStartId:(int64_t)id endId:(int64_t)endId paddingId:(int64_t)paddingId withMaxVectorLength:(unint64_t)length;
- (void)applyOneHotNormalization;
- (void)convertToBagOfIds;
- (void)dealloc;
- (void)enumerateNonZeroValuesWithBlock:(id)block;
- (void)processNonZeroValuesInPlaceWithBlock:(id)block;
- (void)scaleInPlaceWithInversedFactor:(float)factor;
- (void)scaleWithVectorNormalization:(int64_t)normalization;
- (void)setLength:(unint64_t)length;
- (void)setNumberOfNonZeroValues:(unint64_t)values;
- (void)setSparseIndices:(int64_t *)indices;
- (void)setSparseValues:(float *)values;
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

- (float)valueAtIndex:(unint64_t)index
{
  v5 = 0.0;
  if ([(PMLSparseVector *)self numberOfNonZeroValues])
  {
    v6 = 0;
    while ([(PMLSparseVector *)self sparseIndices][8 * v6] != index)
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

- (void)addStartId:(int64_t)id endId:(int64_t)endId paddingId:(int64_t)paddingId withMaxVectorLength:(unint64_t)length
{
  if (self->_length == self->_numberOfNonZeroValues)
  {
    if (length)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PMLSparseVector.m" lineNumber:348 description:{@"Invalid parameter not satisfying: %@", @"_length == _numberOfNonZeroValues"}];

    if (length)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PMLSparseVector.m" lineNumber:349 description:{@"Invalid parameter not satisfying: %@", @"maxVectorLength"}];

LABEL_3:
  if (self->_length >= length)
  {
    length = length;
  }

  else
  {
    length = self->_length;
  }

  self->_length = length;
  [(PMLSparseVector *)self setNumberOfNonZeroValues:length];
  if (id)
  {
    if (length >= length - 1)
    {
      lengthCopy = length - 1;
    }

    else
    {
      lengthCopy = length;
    }

    memmove(self->_sparseValues + 1, self->_sparseValues, 4 * lengthCopy);
    sparseValues = self->_sparseValues;
    self->_sparseIndices[lengthCopy] = lengthCopy;
    *sparseValues = id;
  }

  if (id)
  {
    lengthCopy2 = length + 1;
  }

  else
  {
    lengthCopy2 = length;
  }

  if (lengthCopy2 < length)
  {
    v16 = lengthCopy2;
    sparseIndices = self->_sparseIndices;
    v18 = self->_sparseValues;
    do
    {
      sparseIndices[v16] = v16;
      v18[v16++] = paddingId;
    }

    while (v16 < length);
  }

  if (endId)
  {
    if (lengthCopy2 >= length - 1)
    {
      lengthCopy2 = length - 1;
    }

    self->_sparseValues[lengthCopy2] = endId;
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

- (void)processNonZeroValuesInPlaceWithBlock:(id)block
{
  if (self->_numberOfNonZeroValues)
  {
    v5 = 0;
    sparseValues = self->_sparseValues;
    do
    {
      v7 = (*(block + 2))(block, self->_sparseIndices[v5], sparseValues[v5]);
      sparseValues = self->_sparseValues;
      sparseValues[v5++] = v7;
    }

    while (v5 < self->_numberOfNonZeroValues);
  }
}

- (void)enumerateNonZeroValuesWithBlock:(id)block
{
  if (self->_numberOfNonZeroValues)
  {
    v5 = 0;
    do
    {
      (*(block + 2))(block, self->_sparseIndices[v5], self->_sparseValues[v5]);
      ++v5;
    }

    while (v5 < self->_numberOfNonZeroValues);
  }
}

- (void)setSparseIndices:(int64_t *)indices
{
  sparseIndices = self->_sparseIndices;
  if (sparseIndices)
  {
    v6 = sparseIndices == indices;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PMLSparseVector.m" lineNumber:272 description:{@"Invalid parameter not satisfying: %@", @"_sparseIndices == NULL || _sparseIndices != sparseIndices"}];

    sparseIndices = self->_sparseIndices;
  }

  free(sparseIndices);
  self->_sparseIndices = indices;
}

- (void)setSparseValues:(float *)values
{
  sparseValues = self->_sparseValues;
  if (sparseValues)
  {
    v6 = sparseValues == values;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PMLSparseVector.m" lineNumber:265 description:{@"Invalid parameter not satisfying: %@", @"_sparseValues == NULL || _sparseValues != sparseValues"}];

    sparseValues = self->_sparseValues;
  }

  free(sparseValues);
  self->_sparseValues = values;
}

- (void)setNumberOfNonZeroValues:(unint64_t)values
{
  if (self->_length < values)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PMLSparseVector.m" lineNumber:257 description:{@"Invalid parameter not satisfying: %@", @"_length >= numberOfNonZeroValues"}];
  }

  self->_numberOfNonZeroValues = values;
  self->_sparseIndices = reallocf(self->_sparseIndices, 8 * values);
  self->_sparseValues = reallocf(self->_sparseValues, 4 * values);
}

- (void)setLength:(unint64_t)length
{
  if (self->_numberOfNonZeroValues > length)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PMLSparseVector.m" lineNumber:251 description:{@"Invalid parameter not satisfying: %@", @"length >= _numberOfNonZeroValues"}];
  }

  self->_length = length;
}

- (void)scaleWithVectorNormalization:(int64_t)normalization
{
  if (normalization > 1)
  {
    if (normalization == 2)
    {
      [(PMLSparseVector *)self l2norm];
      goto LABEL_17;
    }

    if (normalization == 3)
    {
      [(PMLSparseVector *)self maxAbsValue];
      goto LABEL_17;
    }

    if (normalization != 4)
    {
      goto LABEL_12;
    }

    [(PMLSparseVector *)self applyOneHotNormalization];
LABEL_10:
    *&v3 = self->_numberOfNonZeroValues;
    goto LABEL_17;
  }

  switch(normalization)
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

- (void)scaleInPlaceWithInversedFactor:(float)factor
{
  if (factor > 0.0)
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

- (id)quantizedValuesAsUInt8DataWithMin:(float)min max:(float)max
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
        v8[v9] = vcvtms_s32_f32((self->_sparseValues[v9] - min) / ((max - min) / 255.0));
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
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PMLSparseVector.m" lineNumber:137 description:@"Too big vector."];
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

- (PMLSparseVector)initWithLength:(unint64_t)length numberOfNonZeroValues:(unint64_t)values indices:(int64_t *)indices values:(float *)a6
{
  if (values && (!indices || !a6))
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PMLSparseVector.m" lineNumber:91 description:{@"Invalid parameter not satisfying: %@", @"numberOfNonZeroValues == 0 || (indices && values)"}];
  }

  if (length < values)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PMLSparseVector.m" lineNumber:92 description:{@"Invalid parameter not satisfying: %@", @"length>=numberOfNonZeroValues"}];
  }

  v15.receiver = self;
  v15.super_class = PMLSparseVector;
  result = [(PMLSparseVector *)&v15 init];
  if (result)
  {
    result->_length = length;
    result->_numberOfNonZeroValues = values;
    result->_sparseIndices = indices;
    result->_sparseValues = a6;
  }

  return result;
}

- (PMLSparseVector)initWithLength:(unint64_t)length numberOfNonZeroValues:(unint64_t)values indicesData:(id)data valuesData:(id)valuesData
{
  dataCopy = data;
  valuesDataCopy = valuesData;
  bytes = [data bytes];
  bytes2 = [valuesDataCopy bytes];

  return [(PMLSparseVector *)self initWithLength:length numberOfNonZeroValues:values indices:bytes values:bytes2];
}

+ (id)sparseVectorFromNumbers:(id)numbers indices:(id)indices length:(unint64_t)length
{
  numbersCopy = numbers;
  indicesCopy = indices;
  if ([numbersCopy count])
  {
    v10 = malloc_type_calloc([numbersCopy count], 8uLL, 0x100004000313F17uLL);
    v11 = malloc_type_calloc([numbersCopy count], 4uLL, 0x100004052888210uLL);
    if ([numbersCopy count])
    {
      v12 = 0;
      v13 = 0;
      do
      {
        v14 = [numbersCopy objectAtIndex:v12];
        [v14 floatValue];
        v16 = v15;

        v17 = [indicesCopy objectAtIndex:v12];
        unsignedIntegerValue = [v17 unsignedIntegerValue];

        if (v16 != 0.0)
        {
          v10[v13] = unsignedIntegerValue;
          v11[v13++] = v16;
        }

        ++v12;
      }

      while (v12 < [numbersCopy count]);
    }

    v19 = [self alloc];
    v20 = [numbersCopy count];
    v21 = v19;
    lengthCopy2 = length;
    v23 = v10;
    v24 = v11;
  }

  else
  {
    v21 = [self alloc];
    lengthCopy2 = length;
    v20 = 0;
    v23 = 0;
    v24 = 0;
  }

  v25 = [v21 initWithLength:lengthCopy2 numberOfNonZeroValues:v20 indices:v23 values:v24];

  return v25;
}

+ (id)sparseVectorFromNumbers:(id)numbers
{
  numbersCopy = numbers;
  v5 = malloc_type_calloc([numbersCopy count], 4uLL, 0x100004052888210uLL);
  if (!v5)
  {
    v12 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE728] reason:@"malloc failed" userInfo:0];
    objc_exception_throw(v12);
  }

  v6 = v5;
  if ([numbersCopy count])
  {
    v7 = 0;
    do
    {
      v8 = [numbersCopy objectAtIndexedSubscript:v7];
      [v8 floatValue];
      v6[v7] = v9;

      ++v7;
    }

    while (v7 < [numbersCopy count]);
  }

  v10 = [self sparseVectorFromDense:v6 length:{objc_msgSend(numbersCopy, "count")}];
  free(v6);

  return v10;
}

+ (void)sparseVectorWithLength:(unint64_t)length numberOfNonZeroValues:(unint64_t)values isSparseIndexInt64:(BOOL)int64 sparseIndices:(const void *)indices sparseValues:(const float *)sparseValues toDenseValues:(float *)denseValues withLength:(unint64_t)withLength
{
  int64Copy = int64;
  v24 = *MEMORY[0x277D85DE8];
  if (withLength != length)
  {
    v15 = PML_LogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v20 = 134218240;
      lengthCopy = length;
      v22 = 2048;
      withLengthCopy = withLength;
      _os_log_impl(&dword_260D68000, v15, OS_LOG_TYPE_INFO, "PMLSparseVector: dimensions do not match between source sparse vector (%llu) and destination dense vector (%llu)", &v20, 0x16u);
    }
  }

  if (length == values)
  {
    if (length >= withLength)
    {
      lengthCopy2 = withLength;
    }

    else
    {
      lengthCopy2 = length;
    }

    memcpy(denseValues, sparseValues, 4 * lengthCopy2);
    if (length < withLength)
    {
      bzero(&denseValues[lengthCopy2], 4 * (withLength - lengthCopy2));
    }
  }

  else
  {
    bzero(denseValues, 4 * withLength);
    if (values)
    {
      v17 = 0;
      do
      {
        if (int64Copy)
        {
          v18 = *(indices + v17);
        }

        else
        {
          v18 = *(indices + v17);
        }

        if (v18 < withLength)
        {
          denseValues[v18] = sparseValues[v17];
        }

        ++v17;
      }

      while (values != v17);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

+ (id)sparseVectorWithLength:(unint64_t)length numberOfNonZeroValues:(unint64_t)values block:(id)block
{
  blockCopy = block;
  if (values)
  {
    v8 = malloc_type_malloc(8 * values, 0x100004000313F17uLL);
    v9 = malloc_type_malloc(4 * values, 0x100004052888210uLL);
    blockCopy[2](blockCopy, v8, v9);
    v10 = [[PMLSparseVector alloc] initWithLength:length numberOfNonZeroValues:values indices:v8 values:v9];
  }

  else
  {
    v10 = [PMLSparseVector sparseVectorEmptyWithLength:length];
  }

  v11 = v10;

  return v11;
}

+ (id)sparseVectorEmptyWithLength:(unint64_t)length
{
  v3 = [[self alloc] initWithLength:length numberOfNonZeroValues:0 indices:0 values:0];

  return v3;
}

+ (id)sparseVectorFromDense:(id)dense
{
  denseCopy = dense;
  denseCopy2 = dense;
  v7 = [denseCopy2 ptr];
  v8 = [denseCopy2 count];

  return [self sparseVectorFromDense:v7 length:v8];
}

+ (id)sparseVectorFromDense:(const float *)dense length:(unint64_t)length
{
  if (!length)
  {
    goto LABEL_12;
  }

  v7 = 0;
  for (i = 0; i != length; ++i)
  {
    if (dense[i] != 0.0)
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
      v13 = dense[v11];
      if (v13 != 0.0)
      {
        v9[v12] = v11;
        v10[v12++] = v13;
      }

      ++v11;
    }

    while (length != v11);
    v14 = [[self alloc] initWithLength:length numberOfNonZeroValues:v7 indices:v9 values:v10];
  }

  else
  {
LABEL_12:
    v14 = [self sparseVectorEmptyWithLength:length];
  }

  return v14;
}

@end