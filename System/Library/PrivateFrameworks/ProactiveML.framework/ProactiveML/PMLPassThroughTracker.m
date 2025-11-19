@interface PMLPassThroughTracker
- (PMLPassThroughTracker)initWithPlanId:(id)a3 numberOfBuckets:(unint64_t)a4;
- (PMLPassThroughTracker)initWithPlist:(id)a3 chunks:(id)a4 context:(id)a5;
- (id)trackEvaluationMetrics:(id)a3 minibatchStats:(id)a4;
- (id)trackGradient:(id)a3 scaleFactor:(float)a4 minibatchStats:(id)a5 evaluationMetrics:(id)a6 serverIteration:(unint64_t)a7;
- (id)trackWeights:(id)a3 scaleFactor:(float)a4 minibatchStats:(id)a5 evaluationMetrics:(id)a6;
@end

@implementation PMLPassThroughTracker

- (PMLPassThroughTracker)initWithPlist:(id)a3 chunks:(id)a4 context:(id)a5
{
  v7 = a5;
  v8 = [v7 objectForKeyedSubscript:@"planId"];

  if (!v8)
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    [v14 handleFailureInMethod:a2 object:self file:@"PMLPassThroughTracker.m" lineNumber:108 description:{@"Can't instantiate %@. Missing planId dependency.", v16}];
  }

  v9 = [v7 objectForKeyedSubscript:@"buckets"];

  if (!v9)
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    [v17 handleFailureInMethod:a2 object:self file:@"PMLPassThroughTracker.m" lineNumber:109 description:{@"Can't instantiate %@. Missing buckets dependency.", v19}];
  }

  v10 = [v7 objectForKeyedSubscript:@"planId"];
  v11 = [v7 objectForKeyedSubscript:@"buckets"];
  v12 = [(PMLPassThroughTracker *)self initWithPlanId:v10 numberOfBuckets:v11];

  return v12;
}

- (id)trackEvaluationMetrics:(id)a3 minibatchStats:(id)a4
{
  v18[2] = *MEMORY[0x277D85DE8];
  resultsLock = self->_resultsLock;
  v7 = a4;
  v8 = a3;
  [(NSLock *)resultsLock lock];
  results = self->_results;
  v17[0] = @"minibatchStats";
  v17[1] = @"evaluationMetrics";
  v18[0] = v7;
  v18[1] = v8;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  [(NSMutableArray *)results addObject:v10];

  v11 = [(NSMutableArray *)self->_results copy];
  [(NSLock *)self->_resultsLock unlock];
  v15 = @"results";
  v16 = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)trackGradient:(id)a3 scaleFactor:(float)a4 minibatchStats:(id)a5 evaluationMetrics:(id)a6 serverIteration:(unint64_t)a7
{
  v31[5] = *MEMORY[0x277D85DE8];
  planId = self->_planId;
  v13 = a6;
  v14 = a5;
  v15 = a3;
  v16 = [AWDProactiveModelFittingModelInfo modelInfoFromPlanId:planId];
  *&v17 = a4;
  v18 = [PMLProtoBufTracker messageForGradient:v15 scaleFactor:v14 minibatchStats:v13 evaluationMetrics:a7 serverIteration:v16 modelInfo:self->_quantizationNumberOfBuckets numberOfBuckets:v17];

  v19 = [PMLSparseVector sparseVectorFromDense:v15];

  [(NSLock *)self->_resultsLock lock];
  results = self->_results;
  v31[0] = v19;
  v30[0] = @"gradient";
  v30[1] = @"scaleFactor";
  *&v21 = a4;
  v22 = [MEMORY[0x277CCABB0] numberWithFloat:v21];
  v31[1] = v22;
  v31[2] = v14;
  v30[2] = @"minibatchStats";
  v30[3] = @"evaluationMetrics";
  v30[4] = @"AWDGradientMessage";
  v31[3] = v13;
  v31[4] = v18;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:5];
  [(NSMutableArray *)results addObject:v23];

  v24 = [(NSMutableArray *)self->_results copy];
  [(NSLock *)self->_resultsLock unlock];
  v28 = @"results";
  v29 = v24;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

- (id)trackWeights:(id)a3 scaleFactor:(float)a4 minibatchStats:(id)a5 evaluationMetrics:(id)a6
{
  v29[5] = *MEMORY[0x277D85DE8];
  planId = self->_planId;
  v11 = a6;
  v12 = a5;
  v13 = a3;
  v14 = [AWDProactiveModelFittingModelInfo modelInfoFromPlanId:planId];
  *&v15 = a4;
  v16 = [PMLProtoBufTracker messageForWeights:v13 scaleFactor:v12 minibatchStats:v11 evaluationMetrics:v14 modelInfo:self->_quantizationNumberOfBuckets numberOfBuckets:v15];

  v17 = [PMLSparseVector sparseVectorFromDense:v13];

  [(NSLock *)self->_resultsLock lock];
  results = self->_results;
  v29[0] = v17;
  v28[0] = @"weights";
  v28[1] = @"scaleFactor";
  *&v19 = a4;
  v20 = [MEMORY[0x277CCABB0] numberWithFloat:v19];
  v29[1] = v20;
  v29[2] = v12;
  v28[2] = @"minibatchStats";
  v28[3] = @"evaluationMetrics";
  v28[4] = @"AWDWeightsMessage";
  v29[3] = v11;
  v29[4] = v16;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:5];
  [(NSMutableArray *)results addObject:v21];

  v22 = [(NSMutableArray *)self->_results copy];
  [(NSLock *)self->_resultsLock unlock];
  v26 = @"results";
  v27 = v22;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

- (PMLPassThroughTracker)initWithPlanId:(id)a3 numberOfBuckets:(unint64_t)a4
{
  v8 = a3;
  if (v8)
  {
    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PMLPassThroughTracker.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"planId"}];

    if (a4)
    {
      goto LABEL_3;
    }
  }

  v17 = [MEMORY[0x277CCA890] currentHandler];
  [v17 handleFailureInMethod:a2 object:self file:@"PMLPassThroughTracker.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"buckets"}];

LABEL_3:
  v18.receiver = self;
  v18.super_class = PMLPassThroughTracker;
  v9 = [(PMLPassThroughTracker *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_planId, a3);
    v10->_quantizationNumberOfBuckets = a4;
    v11 = objc_opt_new();
    results = v10->_results;
    v10->_results = v11;

    v13 = objc_opt_new();
    resultsLock = v10->_resultsLock;
    v10->_resultsLock = v13;
  }

  return v10;
}

@end