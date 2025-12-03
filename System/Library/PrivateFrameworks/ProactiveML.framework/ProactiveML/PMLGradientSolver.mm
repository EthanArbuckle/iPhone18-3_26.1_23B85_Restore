@interface PMLGradientSolver
- (PMLGradientSolver)initWithLearningRate:(float)rate minIterations:(unint64_t)iterations stoppingThreshold:(float)threshold weights:(id)weights intercept:(BOOL)intercept gradientCalculator:(id)calculator predictionCalculator:(id)predictionCalculator batchPredictionCalculator:(id)self0;
- (float)predict:(id)predict;
- (id)batchPredict:(id)predict;
- (id)computeAvgGradientWithIterations:(unint64_t)iterations;
- (id)solveWithAvgGradient:(float *)gradient maxNumberOfIterations:(unint64_t)iterations;
- (void)setCovariates:(id)covariates;
- (void)solveForCovariates:(id)covariates objectives:(id)objectives;
@end

@implementation PMLGradientSolver

- (void)solveForCovariates:(id)covariates objectives:(id)objectives
{
  objectivesCopy = objectives;
  [(PMLGradientSolver *)self setCovariates:covariates];
  [(PMLGradientSolver *)self setObjective:objectivesCopy];

  [(PMLGradientSolver *)self solve];
}

- (id)batchPredict:(id)predict
{
  predictCopy = predict;
  v6 = [(PMLModelWeights *)self->_weights length];
  if ([predictCopy numberOfColumns] + self->_intercept == v6)
  {
    batchPredictionCalculator = self->_batchPredictionCalculator;
    if (self->_intercept)
    {
LABEL_3:
      matrixWithConstantColumn = [predictCopy matrixWithConstantColumn];
      v9 = 1;
      goto LABEL_6;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PMLGradientSolver.m" lineNumber:185 description:{@"Invalid covariates, length: %tu but model weights length: %d", objc_msgSend(predictCopy, "numberOfColumns"), -[PMLModelWeights length](self->_weights, "length")}];

    batchPredictionCalculator = self->_batchPredictionCalculator;
    if (self->_intercept)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
  matrixWithConstantColumn = predictCopy;
LABEL_6:
  v11 = batchPredictionCalculator[2](batchPredictionCalculator, matrixWithConstantColumn, self->_weights);
  if (v9)
  {
  }

  return v11;
}

- (float)predict:(id)predict
{
  predictCopy = predict;
  v6 = [(PMLModelWeights *)self->_weights length];
  v7 = [predictCopy length];
  intercept = self->_intercept;
  if (v7 + intercept != v6)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PMLGradientSolver.m" lineNumber:178 description:{@"Invalid covariates, length: %tu but model weights length: %d", objc_msgSend(predictCopy, "length"), -[PMLModelWeights length](self->_weights, "length")}];

    LOBYTE(intercept) = self->_intercept;
  }

  predictionCalculator = self->_predictionCalculator;
  if (intercept)
  {
    vectorWithConstantColumn = [predictCopy vectorWithConstantColumn];
    v11 = predictionCalculator[2](predictionCalculator, vectorWithConstantColumn, self->_weights);
  }

  else
  {
    v11 = predictionCalculator[2](self->_predictionCalculator, predictCopy, self->_weights);
  }

  return v11;
}

- (id)solveWithAvgGradient:(float *)gradient maxNumberOfIterations:(unint64_t)iterations
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = [(PMLModelWeights *)self->_weights length];
  if ([(PMLSparseMatrix *)self->_covariates numberOfColumns]!= v8)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PMLGradientSolver.m" lineNumber:104 description:{@"Covariates must have the same column-length as weights. Got covariates with %tu columns but weights of length %d", -[PMLSparseMatrix numberOfColumns](self->_covariates, "numberOfColumns"), -[PMLModelWeights length](self->_weights, "length")}];
  }

  v9 = [(PMLDenseVector *)[PMLMutableDenseVector alloc] initWithCount:[(PMLModelWeights *)self->_weights length]];
  iterationsCopy = 0;
  if (!iterations)
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
        v25 = iterationsCopy;
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
        v25 = iterationsCopy;
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
        v25 = iterationsCopy;
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
        v25 = iterationsCopy;
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
        v25 = iterationsCopy;
        _os_log_impl(&dword_260D68000, v16, OS_LOG_TYPE_INFO, "Stopped after iter %li with perfect fit\n", buf, 0xCu);
      }

      goto LABEL_30;
    }

    if (1.0 - v13 / v11 < self->_stoppingThreshold && iterationsCopy > self->_minIterations)
    {
      break;
    }

    [(PMLModelWeights *)self->_weights length];
    learningRate = self->_learningRate;
    [(PMLDenseVector *)v9 ptr];
    [(PMLModelWeights *)self->_weights values];
    cblas_saxpy_NEWLAPACK();
    if (gradient)
    {
      [(PMLModelWeights *)self->_weights length];
      [(PMLDenseVector *)v9 ptr];
      cblas_saxpy_NEWLAPACK();
    }

    ++iterationsCopy;
    objc_autoreleasePoolPop(v12);
    v11 = v13;
    if (iterations == iterationsCopy)
    {
      v15 = 0;
      iterationsCopy = iterations;
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
    v25 = iterationsCopy;
    v26 = 2048;
    v27 = v11;
    _os_log_debug_impl(&dword_260D68000, v18, OS_LOG_TYPE_DEBUG, "Stopped after iter %li with loss %f\n", buf, 0x16u);
  }

  if (gradient)
  {
    v19 = [(PMLModelWeights *)self->_weights length];
    if (v15)
    {
      bzero(gradient, v19);
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

- (void)setCovariates:(id)covariates
{
  covariatesCopy = covariates;
  v7 = covariatesCopy;
  if (self->_intercept)
  {
    matrixWithConstantColumn = [covariatesCopy matrixWithConstantColumn];
  }

  else
  {
    matrixWithConstantColumn = covariatesCopy;
  }

  covariates = self->_covariates;
  self->_covariates = matrixWithConstantColumn;
}

- (id)computeAvgGradientWithIterations:(unint64_t)iterations
{
  v5 = [(PMLDenseVector *)[PMLMutableDenseVector alloc] initWithCount:[(PMLModelWeights *)self->_weights length]];
  v6 = [(PMLGradientSolver *)self solveWithAvgGradient:[(PMLMutableDenseVector *)v5 mutablePtr] maxNumberOfIterations:iterations];
  v7 = [[PMLGradientResults alloc] initWithGradient:v5 loss:v6];

  return v7;
}

- (PMLGradientSolver)initWithLearningRate:(float)rate minIterations:(unint64_t)iterations stoppingThreshold:(float)threshold weights:(id)weights intercept:(BOOL)intercept gradientCalculator:(id)calculator predictionCalculator:(id)predictionCalculator batchPredictionCalculator:(id)self0
{
  weightsCopy = weights;
  calculatorCopy = calculator;
  predictionCalculatorCopy = predictionCalculator;
  batchPredictionCalculatorCopy = batchPredictionCalculator;
  if (weightsCopy)
  {
    if (calculatorCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PMLGradientSolver.m" lineNumber:58 description:{@"Invalid parameter not satisfying: %@", @"weights"}];

    if (calculatorCopy)
    {
LABEL_3:
      if (predictionCalculatorCopy)
      {
        goto LABEL_4;
      }

LABEL_10:
      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"PMLGradientSolver.m" lineNumber:60 description:{@"Invalid parameter not satisfying: %@", @"predictionCalculator"}];

      if (batchPredictionCalculatorCopy)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"PMLGradientSolver.m" lineNumber:59 description:{@"Invalid parameter not satisfying: %@", @"gradientCalculator"}];

  if (!predictionCalculatorCopy)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (batchPredictionCalculatorCopy)
  {
    goto LABEL_5;
  }

LABEL_11:
  currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler4 handleFailureInMethod:a2 object:self file:@"PMLGradientSolver.m" lineNumber:61 description:{@"Invalid parameter not satisfying: %@", @"batchPredictionCalculator"}];

LABEL_5:
  v37.receiver = self;
  v37.super_class = PMLGradientSolver;
  v24 = [(PMLGradientSolver *)&v37 init];
  v25 = v24;
  if (v24)
  {
    v24->_learningRate = -rate;
    v24->_stoppingThreshold = threshold;
    v24->_minIterations = iterations;
    objc_storeStrong(&v24->_weights, weights);
    v26 = MEMORY[0x2666EE8E0](calculatorCopy);
    gradientCalculator = v25->_gradientCalculator;
    v25->_gradientCalculator = v26;

    v28 = MEMORY[0x2666EE8E0](predictionCalculatorCopy);
    predictionCalculator = v25->_predictionCalculator;
    v25->_predictionCalculator = v28;

    v30 = MEMORY[0x2666EE8E0](batchPredictionCalculatorCopy);
    batchPredictionCalculator = v25->_batchPredictionCalculator;
    v25->_batchPredictionCalculator = v30;

    v25->_intercept = intercept;
  }

  return v25;
}

@end