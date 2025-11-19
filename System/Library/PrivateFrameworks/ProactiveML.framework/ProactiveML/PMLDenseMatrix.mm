@interface PMLDenseMatrix
+ (id)denseMatrixFromData:(id)a3 numberOfRows:(unint64_t)a4 numberOfColumns:(unint64_t)a5;
+ (id)denseMatrixFromNumbers:(id)a3;
- (PMLDenseMatrix)initWithData:(id)a3 numberOfRows:(unint64_t)a4 numberOfColumns:(unint64_t)a5;
- (void)enumerateNonZeroValuesWithBlock:(id)a3;
@end

@implementation PMLDenseMatrix

- (void)enumerateNonZeroValuesWithBlock:(id)a3
{
  v12 = a3;
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
            v12[2](v12, v8, v11);
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

- (PMLDenseMatrix)initWithData:(id)a3 numberOfRows:(unint64_t)a4 numberOfColumns:(unint64_t)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = PMLDenseMatrix;
  v10 = [(PMLDenseMatrix *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_numberOfRows = a4;
    v10->_numberOfColumns = a5;
    objc_storeStrong(&v10->_data, a3);
  }

  return v11;
}

+ (id)denseMatrixFromNumbers:(id)a3
{
  v4 = a3;
  v5 = [v4 objectAtIndexedSubscript:0];
  v6 = [v5 count];

  v7 = malloc_type_calloc([v4 count] * v6, 4uLL, 0x100004052888210uLL);
  if (!v7)
  {
    v19 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE728] reason:@"malloc failed" userInfo:0];
    objc_exception_throw(v19);
  }

  v8 = v7;
  if ([v4 count])
  {
    v9 = 0;
    v10 = v8;
    do
    {
      v11 = [v4 objectAtIndexedSubscript:v9];
      if ([v11 count] == v6)
      {
        if (v6)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v15 = [MEMORY[0x277CCA890] currentHandler];
        [v15 handleFailureInMethod:a2 object:a1 file:@"PMLDenseMatrix.m" lineNumber:59 description:{@"Invalid shape, all rows must be the same length (row %lu length: %lu, first row length: %lu)", v9, objc_msgSend(v11, "count"), v6}];

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

    while (v9 < [v4 count]);
  }

  v16 = -[PMLDenseVector initWithFloatsNoCopy:count:freeWhenDone:]([PMLMutableDenseVector alloc], "initWithFloatsNoCopy:count:freeWhenDone:", v8, [v4 count] * v6, 1);
  v17 = [a1 denseMatrixFromData:v16 numberOfRows:objc_msgSend(v4 numberOfColumns:{"count"), v6}];

  return v17;
}

+ (id)denseMatrixFromData:(id)a3 numberOfRows:(unint64_t)a4 numberOfColumns:(unint64_t)a5
{
  v8 = a3;
  v9 = [[a1 alloc] initWithData:v8 numberOfRows:a4 numberOfColumns:a5];

  return v9;
}

@end