@interface PMLLogisticRegressionModel
- (PMLLogisticRegressionModel)initWithPlist:(id)plist chunks:(id)chunks context:(id)context;
- (PMLLogisticRegressionModel)initWithSolver:(id)solver;
- (id)predict:(id)predict;
- (id)toPlistWithChunks:(id)chunks;
@end

@implementation PMLLogisticRegressionModel

- (PMLLogisticRegressionModel)initWithPlist:(id)plist chunks:(id)chunks context:(id)context
{
  plistCopy = plist;
  contextCopy = context;
  chunksCopy = chunks;
  v11 = [PMLModelWeights alloc];
  v12 = [plistCopy objectForKeyedSubscript:@"WEIGHTS"];
  v13 = [(PMLModelWeights *)v11 initWithPlist:v12 chunks:chunksCopy context:contextCopy];

  if (v13)
  {
    v14 = [plistCopy objectForKeyedSubscript:@"INTERCEPT"];
    bOOLValue = [v14 BOOLValue];

    v16 = [PMLLogisticRegressionModel solverWithWeights:v13 andIntercept:bOOLValue];
    self = [(PMLLogisticRegressionModel *)self initWithSolver:v16];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)toPlistWithChunks:(id)chunks
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12[0] = @"WEIGHTS";
  solver = self->_solver;
  chunksCopy = chunks;
  weights = [(PMLGradientSolver *)solver weights];
  v7 = [weights toPlistWithChunks:chunksCopy];

  v12[1] = @"INTERCEPT";
  v13[0] = v7;
  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[PMLGradientSolver intercept](self->_solver, "intercept")}];
  v13[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)predict:(id)predict
{
  v10[2] = *MEMORY[0x277D85DE8];
  [(PMLGradientSolver *)self->_solver predict:predict];
  v4 = v3;
  v5 = [MEMORY[0x277CCABB0] numberWithFloat:?];
  v10[0] = v5;
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:1.0 - v4];
  v10[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (PMLLogisticRegressionModel)initWithSolver:(id)solver
{
  solverCopy = solver;
  v9.receiver = self;
  v9.super_class = PMLLogisticRegressionModel;
  v6 = [(PMLLogisticRegressionModel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_solver, solver);
  }

  return v7;
}

double __156__PMLLogisticRegressionModel_solverWithWeights_andIntercept_learningRate_minIterations_stoppingThreshold_regularizationStrategy_regularizationRate_l1Ratio___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = [v10 matrix];
  v13 = [v9 values];
  v14 = [v11 values];
  v15 = *(a1 + 40);
  if (v15 < 0.0)
  {
    __assert_rtn("calculateAvgGradientForBatch", "PMLMathFunctions.h", 137, "regularizationRate >= 0.0");
  }

  v16 = *(a1 + 44);
  if (v16 < 0.0 || v16 > 1.0)
  {
    __assert_rtn("calculateAvgGradientForBatch", "PMLMathFunctions.h", 138, "l1Ratio >= 0.0 && l1Ratio <= 1.0");
  }

  v18 = v14;
  v19 = *(a1 + 32);
  if (v19 == 3 && v16 == 0.0)
  {
    v20 = 2;
  }

  else if (v19 == 3 && v16 == 1.0)
  {
    v20 = 1;
  }

  else if (v15 == 0.0)
  {
    v20 = 0;
  }

  else
  {
    v20 = *(a1 + 32);
  }

  matrix_number_of_rows = sparse_get_matrix_number_of_rows(v12);
  matrix_number_of_columns = sparse_get_matrix_number_of_columns(v12);
  if (!matrix_number_of_rows)
  {
    __assert_rtn("calculateAvgGradientForBatch", "PMLMathFunctions.h", 151, "numberOfSamples > 0");
  }

  v23 = matrix_number_of_columns;
  if (!matrix_number_of_columns)
  {
    __assert_rtn("calculateAvgGradientForBatch", "PMLMathFunctions.h", 152, "numberOfDimensions > 0");
  }

  v75 = v10;
  v76 = v9;
  v24 = malloc_type_calloc(matrix_number_of_rows, 4uLL, 0x100004052888210uLL);
  if (!v24)
  {
    goto LABEL_96;
  }

  v25 = v24;
  if (sparse_matrix_vector_product_dense_float(CblasNoTrans, 1.0, v12, v13, 1, v24, 1))
  {
    __assert_rtn("logisticBatch", "PMLMathFunctions.h", 50, "s == SPARSE_SUCCESS");
  }

  for (i = 0; sparse_get_matrix_number_of_rows(v12) > i; ++i)
  {
    v27 = 1.0 / (expf(-v25[i]) + 1.0);
    v25[i] = v27;
  }

  v28 = 0;
  v29 = 0.0;
  do
  {
    v30 = v25[v28];
    if (v30 != 1.0 && v30 != 0.0)
    {
      v31 = *(v18 + 4 * v28);
      v32 = (logf(v25[v28]) * v31);
      v29 = v29 - (v32 + (1.0 - v31) * logf(1.0 - v30));
    }

    ++v28;
  }

  while (matrix_number_of_rows != v28);
  v33 = 0;
  do
  {
    v34 = v13[v33];
    if (v20 == 1)
    {
      v29 = v29 + fabs(v34) * v15;
    }

    else if (v20 == 3)
    {
      v29 = fabs(v34) * (v15 * v16) + v29 + (v15 * (1.0 - v16)) * 0.5 * (v34 * v34);
    }

    else
    {
      v35 = v29 + v15 * 0.5 * (v34 * v34);
      if (v20 == 2)
      {
        v29 = v35;
      }
    }

    ++v33;
  }

  while (v23 != v33);
  cblas_saxpy_NEWLAPACK();
  bzero(a5, 4 * v23);
  if (sparse_matrix_vector_product_dense_float(CblasTrans, 1.0, v12, v25, 1, a5, 1))
  {
    __assert_rtn("calculateAvgGradientForBatch", "PMLMathFunctions.h", 191, "s == SPARSE_SUCCESS");
  }

  switch(v20)
  {
    case 1:
      v62 = malloc_type_calloc(v23, 4uLL, 0x100004052888210uLL);
      if (v62)
      {
        v37 = v62;
        v63 = 0;
        do
        {
          v64 = v13[v63];
          if (v64 <= 0.0)
          {
            if (v64 < 0.0)
            {
              v62[v63] = -1.0;
            }

            else
            {
              v62[v63] = 0.0;
            }
          }

          else
          {
            v62[v63] = 1.0;
          }

          ++v63;
        }

        while (v23 != v63);
        v65 = malloc_type_calloc(v23, 8uLL, 0x100004000313F17uLL);
        if (v65)
        {
          v66 = v65;
          v67 = 0;
          v68 = xmmword_260DB2860;
          v69 = vdupq_n_s64(v23 - 1);
          v70 = vdupq_n_s64(2uLL);
          do
          {
            v71 = vmovn_s64(vcgeq_u64(v69, v68));
            if (v71.i8[0])
            {
              v65[v67] = v67;
            }

            if (v71.i8[4])
            {
              v65[v67 + 1] = v67 + 1;
            }

            v67 += 2;
            v68 = vaddq_s64(v68, v70);
          }

          while (((v23 + 1) & 0xFFFFFFFFFFFFFFFELL) != v67);
          sparse_vector_add_with_scale_dense_float(v23, v15, v37, v65, a5, 1);
          free(v66);
          goto LABEL_87;
        }
      }

LABEL_96:
      v73 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE728] reason:@"malloc failed" userInfo:{0, *&v74, v75, v76}];
      objc_exception_throw(v73);
    case 3:
      v43 = malloc_type_calloc(v23, 8uLL, 0x100004000313F17uLL);
      if (v43)
      {
        v44 = v43;
        v45 = 0;
        v46 = (v23 + 1) & 0xFFFFFFFFFFFFFFFELL;
        v47 = xmmword_260DB2860;
        v48 = vdupq_n_s64(v23 - 1);
        v49 = vdupq_n_s64(2uLL);
        do
        {
          v50 = vmovn_s64(vcgeq_u64(v48, v47));
          if (v50.i8[0])
          {
            v43[v45] = v45;
          }

          if (v50.i8[4])
          {
            v43[v45 + 1] = v45 + 1;
          }

          v45 += 2;
          v47 = vaddq_s64(v47, v49);
        }

        while (v46 != v45);
        v74 = v48;
        sparse_vector_add_with_scale_dense_float(v23, v15 * (1.0 - v16), v13, v43, a5, 1);
        free(v44);
        v51 = malloc_type_calloc(v23, 4uLL, 0x100004052888210uLL);
        if (v51)
        {
          v52 = v51;
          v53 = 0;
          do
          {
            v54 = v13[v53];
            if (v54 <= 0.0)
            {
              if (v54 < 0.0)
              {
                v51[v53] = -1.0;
              }

              else
              {
                v51[v53] = 0.0;
              }
            }

            else
            {
              v51[v53] = 1.0;
            }

            ++v53;
          }

          while (v23 != v53);
          v55 = malloc_type_calloc(v23, 8uLL, 0x100004000313F17uLL);
          if (v55)
          {
            v56 = v55;
            v57 = 0;
            v58 = xmmword_260DB2860;
            v59 = vdupq_n_s64(2uLL);
            do
            {
              v60 = vmovn_s64(vcgeq_u64(v74, v58));
              if (v60.i8[0])
              {
                v55[v57] = v57;
              }

              if (v60.i8[4])
              {
                v55[v57 + 1] = v57 + 1;
              }

              v57 += 2;
              v58 = vaddq_s64(v58, v59);
            }

            while (v46 != v57);
            sparse_vector_add_with_scale_dense_float(v23, v15 * v16, v52, v55, a5, 1);
            free(v56);
            v61 = v52;
            goto LABEL_88;
          }
        }
      }

      goto LABEL_96;
    case 2:
      v36 = malloc_type_calloc(v23, 8uLL, 0x100004000313F17uLL);
      if (v36)
      {
        v37 = v36;
        v38 = 0;
        v39 = xmmword_260DB2860;
        v40 = vdupq_n_s64(v23 - 1);
        v41 = vdupq_n_s64(2uLL);
        do
        {
          v42 = vmovn_s64(vcgeq_u64(v40, v39));
          if (v42.i8[0])
          {
            v36[v38] = v38;
          }

          if (v42.i8[4])
          {
            v36[v38 + 1] = v38 + 1;
          }

          v38 += 2;
          v39 = vaddq_s64(v39, v41);
        }

        while (((v23 + 1) & 0xFFFFFFFFFFFFFFFELL) != v38);
        sparse_vector_add_with_scale_dense_float(v23, v15, v13, v36, a5, 1);
LABEL_87:
        v61 = v37;
LABEL_88:
        free(v61);
        break;
      }

      goto LABEL_96;
  }

  cblas_sscal_NEWLAPACK();
  free(v25);

  return v29 / matrix_number_of_rows;
}

PMLMutableDenseVector *__156__PMLLogisticRegressionModel_solverWithWeights_andIntercept_learningRate_minIterations_stoppingThreshold_regularizationStrategy_regularizationRate_l1Ratio___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = -[PMLDenseVector initWithCount:]([PMLMutableDenseVector alloc], "initWithCount:", [v4 numberOfRows]);
  v7 = [v4 matrix];
  v8 = [v5 values];
  v9 = [(PMLMutableDenseVector *)v6 mutablePtr];
  if (sparse_matrix_vector_product_dense_float(CblasNoTrans, 1.0, v7, v8, 1, v9, 1))
  {
    __assert_rtn("logisticBatch", "PMLMathFunctions.h", 50, "s == SPARSE_SUCCESS");
  }

  for (i = 0; sparse_get_matrix_number_of_rows(v7) > i; ++i)
  {
    v11 = 1.0 / (expf(-v9[i]) + 1.0);
    v9[i] = v11;
  }

  return v6;
}

float __156__PMLLogisticRegressionModel_solverWithWeights_andIntercept_learningRate_minIterations_stoppingThreshold_regularizationStrategy_regularizationRate_l1Ratio___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v5 numberOfNonZeroValues];
  v7 = [v5 sparseIndices];
  v8 = [v5 sparseValues];

  [v4 length];
  v9 = [v4 values];

  v10 = sparse_inner_product_dense_float(v6, v8, v7, v9, 1);
  return 1.0 / (expf(-v10) + 1.0);
}

@end