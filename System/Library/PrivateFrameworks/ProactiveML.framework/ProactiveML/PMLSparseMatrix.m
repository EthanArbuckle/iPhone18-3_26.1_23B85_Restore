@interface PMLSparseMatrix
+ (PMLSparseMatrix)sparseMatrixWithNumberOfRows:(unint64_t)a3 numberOfColumns:(unint64_t)a4;
+ (id)sparseMatrixFromNumbers:(id)a3;
- (PMLSparseMatrix)initWithSparseMatrix:(sparse_m_float *)a3;
- (PMLSparseMatrix)matrixWithConstantColumn;
- (float)maxValue;
- (float)minValue;
- (float)valueAtRow:(unint64_t)a3 column:(unint64_t)a4;
- (void)_enumerateSparseRowsWithBlock:(id)a3;
- (void)dealloc;
- (void)enumerateNonZeroValuesForRow:(unint64_t)a3 withBlock:(id)a4;
- (void)enumerateNonZeroValuesWithBlock:(id)a3;
- (void)setIsSymmetric:(BOOL)a3;
- (void)setMatrix:(sparse_m_float *)a3;
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
  v4 = [(PMLSparseMatrix *)self numberOfRows];
  if (v4)
  {
    v5 = v4;
    for (i = 0; i != v5; ++i)
    {
      sparse_insert_entry_float(v3, 1.0, i, [(PMLSparseMatrix *)self numberOfColumns]);
    }
  }

  sparse_commit(v3);
  v7 = [[PMLSparseMatrix alloc] initWithSparseMatrix:v3];

  return v7;
}

- (void)enumerateNonZeroValuesForRow:(unint64_t)a3 withBlock:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = malloc_type_malloc(4 * [(PMLSparseMatrix *)self numberOfColumns], 0x100004052888210uLL);
  v8 = malloc_type_malloc(8 * [(PMLSparseMatrix *)self numberOfColumns], 0x100004000313F17uLL);
  column_end = 0;
  v9 = sparse_extract_sparse_row_float(self->_matrix, a3, 0, &column_end, [(PMLSparseMatrix *)self numberOfColumns], v7, v8);
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
      v6[2](v6, a3, v16, v15);
      --v13;
    }

    while (v13);
  }

  free(v7);
  free(v8);

  v17 = *MEMORY[0x277D85DE8];
}

- (void)enumerateNonZeroValuesWithBlock:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__PMLSparseMatrix_enumerateNonZeroValuesWithBlock___block_invoke;
  v6[3] = &unk_279AC0368;
  v7 = v4;
  v5 = v4;
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

- (void)_enumerateSparseRowsWithBlock:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = malloc_type_malloc(4 * [(PMLSparseMatrix *)self numberOfColumns], 0x100004052888210uLL);
  v6 = malloc_type_malloc(8 * [(PMLSparseMatrix *)self numberOfColumns], 0x100004000313F17uLL);
  v7 = [(PMLSparseMatrix *)self numberOfRows];
  if (v7)
  {
    v9 = v7;
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

      v4[2](v4, v10++, v14, v5, v6);
    }

    while (v9 != v10);
  }

  free(v5);
  free(v6);

  v15 = *MEMORY[0x277D85DE8];
}

- (float)valueAtRow:(unint64_t)a3 column:(unint64_t)a4
{
  v7 = malloc_type_malloc(8 * [(PMLSparseMatrix *)self numberOfColumns], 0x100004000313F17uLL);
  if (!v7 || (v8 = v7, (v9 = malloc_type_malloc(4 * [(PMLSparseMatrix *)self numberOfColumns], 0x100004052888210uLL)) == 0))
  {
    v15 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE728] reason:@"malloc failed" userInfo:0];
    objc_exception_throw(v15);
  }

  v10 = v9;
  column_end = 0;
  v11 = sparse_extract_sparse_row_float(self->_matrix, a3, 0, &column_end, [(PMLSparseMatrix *)self numberOfColumns], v9, v8);
  v12 = 0.0;
  if (v11 >= 1)
  {
    v13 = 0;
    while (v8[v13] != a4)
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

- (void)setIsSymmetric:(BOOL)a3
{
  v6 = [(PMLSparseMatrix *)self numberOfRows];
  if (v6 != [(PMLSparseMatrix *)self numberOfColumns])
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PMLSparseMatrix.m" lineNumber:50 description:{@"Can not mark %lu x %lu matrix as symmetric", -[PMLSparseMatrix numberOfRows](self, "numberOfRows"), -[PMLSparseMatrix numberOfColumns](self, "numberOfColumns")}];
  }

  self->_isSymmetric = a3;
}

- (void)setMatrix:(sparse_m_float *)a3
{
  if (!a3)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PMLSparseMatrix.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"matrix"}];
  }

  sparse_matrix_destroy(self->_matrix);
  self->_matrix = a3;
}

- (PMLSparseMatrix)initWithSparseMatrix:(sparse_m_float *)a3
{
  if (!a3)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PMLSparseMatrix.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"matrix"}];
  }

  v8.receiver = self;
  v8.super_class = PMLSparseMatrix;
  result = [(PMLSparseMatrix *)&v8 init];
  if (result)
  {
    result->_matrix = a3;
  }

  return result;
}

+ (id)sparseMatrixFromNumbers:(id)a3
{
  v3 = a3;
  v4 = [v3 count];
  v20 = v3;
  v5 = [v3 objectAtIndexedSubscript:0];
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
        v15 = [MEMORY[0x277CCA890] currentHandler];
        [v15 handleFailureInMethod:a2 object:a1 file:@"PMLSparseMatrix.m" lineNumber:69 description:{@"Invalid shape, all rows must be the same length (row %lu length: %lu, first row length: %lu)", i, objc_msgSend(v9, "count"), v6}];

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
  v16 = [[a1 alloc] initWithSparseMatrix:v7];

  return v16;
}

+ (PMLSparseMatrix)sparseMatrixWithNumberOfRows:(unint64_t)a3 numberOfColumns:(unint64_t)a4
{
  v4 = [[a1 alloc] initWithSparseMatrix:{sparse_matrix_create_float(a3, a4)}];

  return v4;
}

@end