@interface PMLPassThroughTracker
- (PMLPassThroughTracker)initWithPlanId:(id)id numberOfBuckets:(unint64_t)buckets;
- (PMLPassThroughTracker)initWithPlist:(id)plist chunks:(id)chunks context:(id)context;
- (id)trackEvaluationMetrics:(id)metrics minibatchStats:(id)stats;
- (id)trackGradient:(id)gradient scaleFactor:(float)factor minibatchStats:(id)stats evaluationMetrics:(id)metrics serverIteration:(unint64_t)iteration;
- (id)trackWeights:(id)weights scaleFactor:(float)factor minibatchStats:(id)stats evaluationMetrics:(id)metrics;
@end

@implementation PMLPassThroughTracker

- (PMLPassThroughTracker)initWithPlist:(id)plist chunks:(id)chunks context:(id)context
{
  contextCopy = context;
  v8 = [contextCopy objectForKeyedSubscript:@"planId"];

  if (!v8)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PMLPassThroughTracker.m" lineNumber:108 description:{@"Can't instantiate %@. Missing planId dependency.", v16}];
  }

  v9 = [contextCopy objectForKeyedSubscript:@"buckets"];

  if (!v9)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PMLPassThroughTracker.m" lineNumber:109 description:{@"Can't instantiate %@. Missing buckets dependency.", v19}];
  }

  v10 = [contextCopy objectForKeyedSubscript:@"planId"];
  v11 = [contextCopy objectForKeyedSubscript:@"buckets"];
  v12 = [(PMLPassThroughTracker *)self initWithPlanId:v10 numberOfBuckets:v11];

  return v12;
}

- (id)trackEvaluationMetrics:(id)metrics minibatchStats:(id)stats
{
  v18[2] = *MEMORY[0x277D85DE8];
  resultsLock = self->_resultsLock;
  statsCopy = stats;
  metricsCopy = metrics;
  [(NSLock *)resultsLock lock];
  results = self->_results;
  v17[0] = @"minibatchStats";
  v17[1] = @"evaluationMetrics";
  v18[0] = statsCopy;
  v18[1] = metricsCopy;
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

- (id)trackGradient:(id)gradient scaleFactor:(float)factor minibatchStats:(id)stats evaluationMetrics:(id)metrics serverIteration:(unint64_t)iteration
{
  v31[5] = *MEMORY[0x277D85DE8];
  planId = self->_planId;
  metricsCopy = metrics;
  statsCopy = stats;
  gradientCopy = gradient;
  v16 = [AWDProactiveModelFittingModelInfo modelInfoFromPlanId:planId];
  *&v17 = factor;
  v18 = [PMLProtoBufTracker messageForGradient:gradientCopy scaleFactor:statsCopy minibatchStats:metricsCopy evaluationMetrics:iteration serverIteration:v16 modelInfo:self->_quantizationNumberOfBuckets numberOfBuckets:v17];

  v19 = [PMLSparseVector sparseVectorFromDense:gradientCopy];

  [(NSLock *)self->_resultsLock lock];
  results = self->_results;
  v31[0] = v19;
  v30[0] = @"gradient";
  v30[1] = @"scaleFactor";
  *&v21 = factor;
  v22 = [MEMORY[0x277CCABB0] numberWithFloat:v21];
  v31[1] = v22;
  v31[2] = statsCopy;
  v30[2] = @"minibatchStats";
  v30[3] = @"evaluationMetrics";
  v30[4] = @"AWDGradientMessage";
  v31[3] = metricsCopy;
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

- (id)trackWeights:(id)weights scaleFactor:(float)factor minibatchStats:(id)stats evaluationMetrics:(id)metrics
{
  v29[5] = *MEMORY[0x277D85DE8];
  planId = self->_planId;
  metricsCopy = metrics;
  statsCopy = stats;
  weightsCopy = weights;
  v14 = [AWDProactiveModelFittingModelInfo modelInfoFromPlanId:planId];
  *&v15 = factor;
  v16 = [PMLProtoBufTracker messageForWeights:weightsCopy scaleFactor:statsCopy minibatchStats:metricsCopy evaluationMetrics:v14 modelInfo:self->_quantizationNumberOfBuckets numberOfBuckets:v15];

  v17 = [PMLSparseVector sparseVectorFromDense:weightsCopy];

  [(NSLock *)self->_resultsLock lock];
  results = self->_results;
  v29[0] = v17;
  v28[0] = @"weights";
  v28[1] = @"scaleFactor";
  *&v19 = factor;
  v20 = [MEMORY[0x277CCABB0] numberWithFloat:v19];
  v29[1] = v20;
  v29[2] = statsCopy;
  v28[2] = @"minibatchStats";
  v28[3] = @"evaluationMetrics";
  v28[4] = @"AWDWeightsMessage";
  v29[3] = metricsCopy;
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

- (PMLPassThroughTracker)initWithPlanId:(id)id numberOfBuckets:(unint64_t)buckets
{
  idCopy = id;
  if (idCopy)
  {
    if (buckets)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PMLPassThroughTracker.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"planId"}];

    if (buckets)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PMLPassThroughTracker.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"buckets"}];

LABEL_3:
  v18.receiver = self;
  v18.super_class = PMLPassThroughTracker;
  v9 = [(PMLPassThroughTracker *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_planId, id);
    v10->_quantizationNumberOfBuckets = buckets;
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