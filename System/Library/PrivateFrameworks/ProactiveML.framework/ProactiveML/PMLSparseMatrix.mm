@interface PMLSparseMatrix
+ (PMLSparseMatrix)sparseMatrixWithNumberOfRows:(unint64_t)rows numberOfColumns:(unint64_t)columns;
+ (id)sparseMatrixFromNumbers:(id)numbers;
- (PMLSparseMatrix)initWithSparseMatrix:(sparse_m_float *)matrix;
- (PMLSparseMatrix)matrixWithConstantColumn;
- (float)maxValue;
- (float)minValue;
- (float)valueAtRow:(unint64_t)row column:(unint64_t)column;
- (void)_enumerateSparseRowsWithBlock:(id)block;
- (void)dealloc;
- (void)enumerateNonZeroValuesForRow:(unint64_t)row withBlock:(id)block;
- (void)enumerateNonZeroValuesWithBlock:(id)block;
- (void)setIsSymmetric:(BOOL)symmetric;
- (void)setMatrix:(sparse_m_float *)matrix;
@end

@implementation PMLSparseMatrix

- (float)maxValue
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0x800000;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __27__PMLSparseMatrix_maxValue__block_invoke;
  v4[3] = &unk_279AC03B0;
  v4[4] = &v5;
  [(PMLSparseMatrix *)self enumerateNonZeroValuesWithBlock:v4];
  v2 = v6[6];
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __27__PMLSparseMatrix_maxValue__block_invoke(uint64_t result, float a2)
{
  v2 = *(*(result + 32) + 8);
  if (*(v2 + 24) >= a2)
  {
    a2 = *(v2 + 24);
  }

  *(v2 + 24) = a2;
  return result;
}

- (float)minValue
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 2139095039;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __27__PMLSparseMatrix_minValue__block_invoke;
  v4[3] = &unk_279AC03B0;
  v4[4] = &v5;
  [(PMLSparseMatrix *)self enumerateNonZeroValuesWithBlock:v4];
  v2 = v6[6];
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __27__PMLSparseMatrix_minValue__block_invoke(uint64_t result, float a2)
{
  v2 = *(*(result + 32) + 8);
  if (*(v2 + 24) < a2)
  {
    a2 = *(v2 + 24);
  }

  *(v2 + 24) = a2;
  return result;
}

- (PMLSparseMatrix)matrixWithConstantColumn
{
  v3 = sparse_matrix_create_float([(PMLSparseMatrix *)self numberOfRows], [(PMLSparseMatrix *)self numberOfColumns]+ 1);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __43__PMLSparseMatrix_matrixWithConstantColumn__block_invoke;
  v9[3] = &__block_descriptor_40_e21_v40__0Q8Q16r_f24r_q32l;
  v9[4] = v3;
  [(PMLSparseMatrix *)self _enumerateSparseRowsWithBlock:v9];
  numberOfRows = [(PMLSparseMatrix *)self numberOfRows];
  if (numberOfRows)
  {
    v5 = numberOfRows;
    for (i = 0; i != v5; ++i)
    {
      sparse_insert_entry_float(v3, 1.0, i, [(PMLSparseMatrix *)self numberOfColumns]);
    }
  }

  sparse_commit(v3);
  v7 = [[PMLSparseMatrix alloc] initWithSparseMatrix:v3];

  return v7;
}

- (void)enumerateNonZeroValuesForRow:(unint64_t)row withBlock:(id)block
{
  v21 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v7 = malloc_type_malloc(4 * [(PMLSparseMatrix *)self numberOfColumns], 0x100004052888210uLL);
  v8 = malloc_type_malloc(8 * [(PMLSparseMatrix *)self numberOfColumns], 0x100004000313F17uLL);
  column_end = 0;
  v9 = sparse_extract_sparse_row_float(self->_matrix, row, 0, &column_end, [(PMLSparseMatrix *)self numberOfColumns], v7, v8);
  v10 = v9;
  if (v9 < 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v20 = v10;
      _os_log_error_impl(&dword_260D68000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error extracting floats from sparse rows, status: %d", buf, 8u);
    }
  }

  else if (v9)
  {
    v11 = v7;
    v12 = v8;
    v13 = v9;
    do
    {
      v14 = *v11++;
      v15 = v14;
      v16 = *v12++;
      blockCopy[2](blockCopy, row, v16, v15);
      --v13;
    }

    while (v13);
  }

  free(v7);
  free(v8);

  v17 = *MEMORY[0x277D85DE8];
}

- (void)enumerateNonZeroValuesWithBlock:(id)block
{
  blockCopy = block;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__PMLSparseMatrix_enumerateNonZeroValuesWithBlock___block_invoke;
  v6[3] = &unk_279AC0368;
  v7 = blockCopy;
  v5 = blockCopy;
  [(PMLSparseMatrix *)self _enumerateSparseRowsWithBlock:v6];
}

uint64_t __51__PMLSparseMatrix_enumerateNonZeroValuesWithBlock___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, float *a4, uint64_t *a5)
{
  if (a3)
  {
    v7 = a3;
    v8 = result;
    do
    {
      v9 = *a4++;
      v10 = v9;
      v11 = *a5++;
      result = (*(*(v8 + 32) + 16))(v10);
      --v7;
    }

    while (v7);
  }

  return result;
}

- (void)_enumerateSparseRowsWithBlock:(id)block
{
  v20 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v5 = malloc_type_malloc(4 * [(PMLSparseMatrix *)self numberOfColumns], 0x100004052888210uLL);
  v6 = malloc_type_malloc(8 * [(PMLSparseMatrix *)self numberOfColumns], 0x100004000313F17uLL);
  numberOfRows = [(PMLSparseMatrix *)self numberOfRows];
  if (numberOfRows)
  {
    v9 = numberOfRows;
    v10 = 0;
    v11 = MEMORY[0x277D86220];
    *&v8 = 67109120;
    v16 = v8;
    do
    {
      column_end = 0;
      v12 = sparse_extract_sparse_row_float(self->_matrix, v10, 0, &column_end, [(PMLSparseMatrix *)self numberOfColumns], v5, v6);
      v13 = v12;
      if (v12 < 0)
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = v16;
          v19 = v13;
          _os_log_error_impl(&dword_260D68000, v11, OS_LOG_TYPE_ERROR, "Error extracting floats from sparse rows, status: %d", buf, 8u);
        }

        v14 = 0;
      }

      else
      {
        v14 = v12;
      }

      blockCopy[2](blockCopy, v10++, v14, v5, v6);
    }

    while (v9 != v10);
  }

  free(v5);
  free(v6);

  v15 = *MEMORY[0x277D85DE8];
}

- (float)valueAtRow:(unint64_t)row column:(unint64_t)column
{
  v7 = malloc_type_malloc(8 * [(PMLSparseMatrix *)self numberOfColumns], 0x100004000313F17uLL);
  if (!v7 || (v8 = v7, (v9 = malloc_type_malloc(4 * [(PMLSparseMatrix *)self numberOfColumns], 0x100004052888210uLL)) == 0))
  {
    v15 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE728] reason:@"malloc failed" userInfo:0];
    objc_exception_throw(v15);
  }

  v10 = v9;
  column_end = 0;
  v11 = sparse_extract_sparse_row_float(self->_matrix, row, 0, &column_end, [(PMLSparseMatrix *)self numberOfColumns], v9, v8);
  v12 = 0.0;
  if (v11 >= 1)
  {
    v13 = 0;
    while (v8[v13] != column)
    {
      if (v11 == ++v13)
      {
        goto LABEL_9;
      }
    }

    v12 = v10[v13];
  }

LABEL_9:
  free(v10);
  free(v8);
  return v12;
}

- (void)dealloc
{
  sparse_matrix_destroy(self->_matrix);
  v3.receiver = self;
  v3.super_class = PMLSparseMatrix;
  [(PMLSparseMatrix *)&v3 dealloc];
}

- (void)setIsSymmetric:(BOOL)symmetric
{
  numberOfRows = [(PMLSparseMatrix *)self numberOfRows];
  if (numberOfRows != [(PMLSparseMatrix *)self numberOfColumns])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PMLSparseMatrix.m" lineNumber:50 description:{@"Can not mark %lu x %lu matrix as symmetric", -[PMLSparseMatrix numberOfRows](self, "numberOfRows"), -[PMLSparseMatrix numberOfColumns](self, "numberOfColumns")}];
  }

  self->_isSymmetric = symmetric;
}

- (void)setMatrix:(sparse_m_float *)matrix
{
  if (!matrix)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PMLSparseMatrix.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"matrix"}];
  }

  sparse_matrix_destroy(self->_matrix);
  self->_matrix = matrix;
}

- (PMLSparseMatrix)initWithSparseMatrix:(sparse_m_float *)matrix
{
  if (!matrix)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PMLSparseMatrix.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"matrix"}];
  }

  v8.receiver = self;
  v8.super_class = PMLSparseMatrix;
  result = [(PMLSparseMatrix *)&v8 init];
  if (result)
  {
    result->_matrix = matrix;
  }

  return result;
}

+ (id)sparseMatrixFromNumbers:(id)numbers
{
  numbersCopy = numbers;
  v4 = [numbersCopy count];
  v20 = numbersCopy;
  v5 = [numbersCopy objectAtIndexedSubscript:0];
  v6 = [v5 count];

  v7 = sparse_matrix_create_float(v4, v6);
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v9 = [v20 objectAtIndexedSubscript:i];
      if ([v9 count] == v6)
      {
        if (v6)
        {
          goto LABEL_5;
        }
      }

      else
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PMLSparseMatrix.m" lineNumber:69 description:{@"Invalid shape, all rows must be the same length (row %lu length: %lu, first row length: %lu)", i, objc_msgSend(v9, "count"), v6}];

        if (v6)
        {
LABEL_5:
          v10 = 0;
          for (j = 0; j != v6; ++j)
          {
            v12 = [v9 objectAtIndexedSubscript:j];
            [v12 floatValue];
            v14 = v13;

            if (v14 != 0.0)
            {
              sparse_insert_entry_float(v7, v14, i, v10 >> 32);
            }

            v10 += 0x100000000;
          }
        }
      }
    }
  }

  sparse_commit(v7);
  v16 = [[self alloc] initWithSparseMatrix:v7];

  return v16;
}

+ (PMLSparseMatrix)sparseMatrixWithNumberOfRows:(unint64_t)rows numberOfColumns:(unint64_t)columns
{
  v4 = [[self alloc] initWithSparseMatrix:{sparse_matrix_create_float(rows, columns)}];

  return v4;
}

@end