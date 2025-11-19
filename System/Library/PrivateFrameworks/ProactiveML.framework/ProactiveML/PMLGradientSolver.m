@interface PMLGradientSolver
- (PMLGradientSolver)initWithLearningRate:(float)a3 minIterations:(unint64_t)a4 stoppingThreshold:(float)a5 weights:(id)a6 intercept:(BOOL)a7 gradientCalculator:(id)a8 predictionCalculator:(id)a9 batchPredictionCalculator:(id)a10;
- (float)predict:(id)a3;
- (id)batchPredict:(id)a3;
- (id)computeAvgGradientWithIterations:(unint64_t)a3;
- (id)solveWithAvgGradient:(float *)a3 maxNumberOfIterations:(unint64_t)a4;
- (void)setCovariates:(id)a3;
- (void)solveForCovariates:(id)a3 objectives:(id)a4;
@end

@implementation PMLGradientSolver

- (void)solveForCovariates:(id)a3 objectives:(id)a4
{
  v6 = a4;
  [(PMLGradientSolver *)self setCovariates:a3];
  [(PMLGradientSolver *)self setObjective:v6];

  [(PMLGradientSolver *)self solve];
}

- (id)batchPredict:(id)a3
{
  v5 = a3;
  v6 = [(PMLModelWeights *)self->_weights length];
  if ([v5 numberOfColumns] + self->_intercept == v6)
  {
    batchPredictionCalculator = self->_batchPredictionCalculator;
    if (self->_intercept)
    {
LABEL_3:
      v8 = [v5 matrixWithConstantColumn];
      v9 = 1;
      goto LABEL_6;
    }
  }

  else
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PMLGradientSolver.m" lineNumber:185 description:{@"Invalid covariates, length: %tu but model weights length: %d", objc_msgSend(v5, "numberOfColumns"), -[PMLModelWeights length](self->_weights, "length")}];

    batchPredictionCalculator = self->_batchPredictionCalculator;
    if (self->_intercept)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
  v8 = v5;
LABEL_6:
  v11 = batchPredictionCalculator[2](batchPredictionCalculator, v8, self->_weights);
  if (v9)
  {
  }

  return v11;
}

- (float)predict:(id)a3
{
  v5 = a3;
  v6 = [(PMLModelWeights *)self->_weights length];
  v7 = [v5 length];
  intercept = self->_intercept;
  if (v7 + intercept != v6)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PMLGradientSolver.m" lineNumber:178 description:{@"Invalid covariates, length: %tu but model weights length: %d", objc_msgSend(v5, "length"), -[PMLModelWeights length](self->_weights, "length")}];

    LOBYTE(intercept) = self->_intercept;
  }

  predictionCalculator = self->_predictionCalculator;
  if (intercept)
  {
    v10 = [v5 vectorWithConstantColumn];
    v11 = predictionCalculator[2](predictionCalculator, v10, self->_weights);
  }

  else
  {
    v11 = predictionCalculator[2](self->_predictionCalculator, v5, self->_weights);
  }

  return v11;
}

- (id)solveWithAvgGradient:(float *)a3 maxNumberOfIterations:(unint64_t)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = [(PMLModelWeights *)self->_weights length];
  if ([(PMLSparseMatrix *)self->_covariates numberOfColumns]!= v8)
  {
    v23 = [MEMORY[0x277CCA890] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"PMLGradientSolver.m" lineNumber:104 description:{@"Covariates must have the same column-length as weights. Got covariates with %tu columns but weights of length %d", -[PMLSparseMatrix numberOfColumns](self->_covariates, "numberOfColumns"), -[PMLModelWeights length](self->_weights, "length")}];
  }

  v9 = [(PMLDenseVector *)[PMLMutableDenseVector alloc] initWithCount:[(PMLModelWeights *)self->_weights length]];
  v10 = 0;
  if (!a4)
  {
    v15 = 0;
    v13 = 0.0;
    v11 = 1.79769313e308;
    goto LABEL_32;
  }

  v11 = 1.79769313e308;
  while (1)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = (*(self->_gradientCalculator + 2))(self->_gradientCalculator, self->_weights, self->_covariates, self->_objective, [(PMLMutableDenseVector *)v9 mutablePtr]);
    if (v13 == 1.79769313e308)
    {
      v16 = PML_LogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v25 = v10;
        _os_log_error_impl(&dword_260D68000, v16, OS_LOG_TYPE_ERROR, "Stopped after iter %li with DBL_MAX error\n", buf, 0xCu);
      }

      *&v17 = 1.79769313e308;
      goto LABEL_29;
    }

    if (v13 == -1.79769313e308)
    {
      v16 = PML_LogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v25 = v10;
        _os_log_error_impl(&dword_260D68000, v16, OS_LOG_TYPE_ERROR, "Stopped after iter %li with -DBL_MAX error\n", buf, 0xCu);
      }

      *&v17 = -1.79769313e308;
      goto LABEL_29;
    }

    if (v13 == -INFINITY)
    {
      v16 = PML_LogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v25 = v10;
        _os_log_error_impl(&dword_260D68000, v16, OS_LOG_TYPE_ERROR, "Stopped after iter %li with -INFINITY error\n", buf, 0xCu);
      }

      *&v17 = -INFINITY;
      goto LABEL_29;
    }

    if (v13 == INFINITY)
    {
      v16 = PML_LogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v25 = v10;
        _os_log_error_impl(&dword_260D68000, v16, OS_LOG_TYPE_ERROR, "Stopped after iter %li with INFINITY error\n", buf, 0xCu);
      }

      *&v17 = INFINITY;
LABEL_29:
      v13 = *&v17;
LABEL_30:

      v15 = 1;
      goto LABEL_31;
    }

    if (v13 == 0.0)
    {
      v16 = PML_LogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v25 = v10;
        _os_log_impl(&dword_260D68000, v16, OS_LOG_TYPE_INFO, "Stopped after iter %li with perfect fit\n", buf, 0xCu);
      }

      goto LABEL_30;
    }

    if (1.0 - v13 / v11 < self->_stoppingThreshold && v10 > self->_minIterations)
    {
      break;
    }

    [(PMLModelWeights *)self->_weights length];
    learningRate = self->_learningRate;
    [(PMLDenseVector *)v9 ptr];
    [(PMLModelWeights *)self->_weights values];
    cblas_saxpy_NEWLAPACK();
    if (a3)
    {
      [(PMLModelWeights *)self->_weights length];
      [(PMLDenseVector *)v9 ptr];
      cblas_saxpy_NEWLAPACK();
    }

    ++v10;
    objc_autoreleasePoolPop(v12);
    v11 = v13;
    if (a4 == v10)
    {
      v15 = 0;
      v10 = a4;
      v11 = v13;
      goto LABEL_32;
    }
  }

  v15 = 0;
LABEL_31:
  objc_autoreleasePoolPop(v12);
LABEL_32:
  v18 = PML_LogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218240;
    v25 = v10;
    v26 = 2048;
    v27 = v11;
    _os_log_debug_impl(&dword_260D68000, v18, OS_LOG_TYPE_DEBUG, "Stopped after iter %li with loss %f\n", buf, 0x16u);
  }

  if (a3)
  {
    v19 = [(PMLModelWeights *)self->_weights length];
    if (v15)
    {
      bzero(a3, v19);
      goto LABEL_38;
    }

    cblas_sscal_NEWLAPACK();
LABEL_40:
    v20 = [MEMORY[0x277CCABB0] numberWithDouble:v13];
  }

  else
  {
    if (!v15)
    {
      goto LABEL_40;
    }

LABEL_38:
    bzero([(PMLModelWeights *)self->_weights values], [(PMLModelWeights *)self->_weights length]);
    v20 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (void)setCovariates:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_intercept)
  {
    v5 = [v4 matrixWithConstantColumn];
  }

  else
  {
    v5 = v4;
  }

  covariates = self->_covariates;
  self->_covariates = v5;
}

- (id)computeAvgGradientWithIterations:(unint64_t)a3
{
  v5 = [(PMLDenseVector *)[PMLMutableDenseVector alloc] initWithCount:[(PMLModelWeights *)self->_weights length]];
  v6 = [(PMLGradientSolver *)self solveWithAvgGradient:[(PMLMutableDenseVector *)v5 mutablePtr] maxNumberOfIterations:a3];
  v7 = [[PMLGradientResults alloc] initWithGradient:v5 loss:v6];

  return v7;
}

- (PMLGradientSolver)initWithLearningRate:(float)a3 minIterations:(unint64_t)a4 stoppingThreshold:(float)a5 weights:(id)a6 intercept:(BOOL)a7 gradientCalculator:(id)a8 predictionCalculator:(id)a9 batchPredictionCalculator:(id)a10
{
  v20 = a6;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  if (v20)
  {
    if (v21)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v33 = [MEMORY[0x277CCA890] currentHandler];
    [v33 handleFailureInMethod:a2 object:self file:@"PMLGradientSolver.m" lineNumber:58 description:{@"Invalid parameter not satisfying: %@", @"weights"}];

    if (v21)
    {
LABEL_3:
      if (v22)
      {
        goto LABEL_4;
      }

LABEL_10:
      v35 = [MEMORY[0x277CCA890] currentHandler];
      [v35 handleFailureInMethod:a2 object:self file:@"PMLGradientSolver.m" lineNumber:60 description:{@"Invalid parameter not satisfying: %@", @"predictionCalculator"}];

      if (v23)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  v34 = [MEMORY[0x277CCA890] currentHandler];
  [v34 handleFailureInMethod:a2 object:self file:@"PMLGradientSolver.m" lineNumber:59 description:{@"Invalid parameter not satisfying: %@", @"gradientCalculator"}];

  if (!v22)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (v23)
  {
    goto LABEL_5;
  }

LABEL_11:
  v36 = [MEMORY[0x277CCA890] currentHandler];
  [v36 handleFailureInMethod:a2 object:self file:@"PMLGradientSolver.m" lineNumber:61 description:{@"Invalid parameter not satisfying: %@", @"batchPredictionCalculator"}];

LABEL_5:
  v37.receiver = self;
  v37.super_class = PMLGradientSolver;
  v24 = [(PMLGradientSolver *)&v37 init];
  v25 = v24;
  if (v24)
  {
    v24->_learningRate = -a3;
    v24->_stoppingThreshold = a5;
    v24->_minIterations = a4;
    objc_storeStrong(&v24->_weights, a6);
    v26 = MEMORY[0x2666EE8E0](v21);
    gradientCalculator = v25->_gradientCalculator;
    v25->_gradientCalculator = v26;

    v28 = MEMORY[0x2666EE8E0](v22);
    predictionCalculator = v25->_predictionCalculator;
    v25->_predictionCalculator = v28;

    v30 = MEMORY[0x2666EE8E0](v23);
    batchPredictionCalculator = v25->_batchPredictionCalculator;
    v25->_batchPredictionCalculator = v30;

    v25->_intercept = a7;
  }

  return v25;
}

@end