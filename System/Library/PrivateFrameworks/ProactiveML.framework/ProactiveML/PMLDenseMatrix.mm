@interface PMLDenseMatrix
+ (id)denseMatrixFromData:(id)data numberOfRows:(unint64_t)rows numberOfColumns:(unint64_t)columns;
+ (id)denseMatrixFromNumbers:(id)numbers;
- (PMLDenseMatrix)initWithData:(id)data numberOfRows:(unint64_t)rows numberOfColumns:(unint64_t)columns;
- (void)enumerateNonZeroValuesWithBlock:(id)block;
@end

@implementation PMLDenseMatrix

- (void)enumerateNonZeroValuesWithBlock:(id)block
{
  blockCopy = block;
  v4 = [(PMLDenseVector *)self->_data ptr];
  numberOfRows = self->_numberOfRows;
  if (numberOfRows)
  {
    v6 = v4;
    v7 = 0;
    v8 = 0;
    numberOfColumns = self->_numberOfColumns;
    v10 = numberOfColumns;
    do
    {
      if (v10)
      {
        v11 = 0;
        do
        {
          if (*(&v6[v11] + v7 * v10) != 0.0)
          {
            blockCopy[2](blockCopy, v8, v11);
            numberOfColumns = self->_numberOfColumns;
          }

          ++v11;
          v10 = numberOfColumns;
        }

        while (v11 < numberOfColumns);
        numberOfRows = self->_numberOfRows;
        v10 = numberOfColumns;
      }

      ++v8;
      v7 += 4;
    }

    while (v8 < numberOfRows);
  }
}

- (PMLDenseMatrix)initWithData:(id)data numberOfRows:(unint64_t)rows numberOfColumns:(unint64_t)columns
{
  dataCopy = data;
  v13.receiver = self;
  v13.super_class = PMLDenseMatrix;
  v10 = [(PMLDenseMatrix *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_numberOfRows = rows;
    v10->_numberOfColumns = columns;
    objc_storeStrong(&v10->_data, data);
  }

  return v11;
}

+ (id)denseMatrixFromNumbers:(id)numbers
{
  numbersCopy = numbers;
  v5 = [numbersCopy objectAtIndexedSubscript:0];
  v6 = [v5 count];

  v7 = malloc_type_calloc([numbersCopy count] * v6, 4uLL, 0x100004052888210uLL);
  if (!v7)
  {
    v19 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE728] reason:@"malloc failed" userInfo:0];
    objc_exception_throw(v19);
  }

  v8 = v7;
  if ([numbersCopy count])
  {
    v9 = 0;
    v10 = v8;
    do
    {
      v11 = [numbersCopy objectAtIndexedSubscript:v9];
      if ([v11 count] == v6)
      {
        if (v6)
        {
          goto LABEL_6;
        }
      }

      else
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PMLDenseMatrix.m" lineNumber:59 description:{@"Invalid shape, all rows must be the same length (row %lu length: %lu, first row length: %lu)", v9, objc_msgSend(v11, "count"), v6}];

        if (v6)
        {
LABEL_6:
          for (i = 0; i != v6; ++i)
          {
            v13 = [v11 objectAtIndexedSubscript:i];
            [v13 floatValue];
            *&v10[4 * i] = v14;
          }
        }
      }

      ++v9;
      v10 += 4 * v6;
    }

    while (v9 < [numbersCopy count]);
  }

  v16 = -[PMLDenseVector initWithFloatsNoCopy:count:freeWhenDone:]([PMLMutableDenseVector alloc], "initWithFloatsNoCopy:count:freeWhenDone:", v8, [numbersCopy count] * v6, 1);
  v17 = [self denseMatrixFromData:v16 numberOfRows:objc_msgSend(numbersCopy numberOfColumns:{"count"), v6}];

  return v17;
}

+ (id)denseMatrixFromData:(id)data numberOfRows:(unint64_t)rows numberOfColumns:(unint64_t)columns
{
  dataCopy = data;
  v9 = [[self alloc] initWithData:dataCopy numberOfRows:rows numberOfColumns:columns];

  return v9;
}

@end