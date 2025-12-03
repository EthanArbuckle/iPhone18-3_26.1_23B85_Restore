@interface PMLProtoBufTracker
+ (id)awdTrackerForPlanId:(id)id;
+ (id)messageForGradient:(id)gradient scaleFactor:(float)factor minibatchStats:(id)stats evaluationMetrics:(id)metrics serverIteration:(unint64_t)iteration modelInfo:(id)info numberOfBuckets:(unint64_t)buckets;
+ (id)messageForWeights:(id)weights scaleFactor:(float)factor minibatchStats:(id)stats evaluationMetrics:(id)metrics modelInfo:(id)info numberOfBuckets:(unint64_t)buckets;
+ (id)parsecTrackerForPlanId:(id)id;
- (PMLProtoBufTracker)initWithAdapter:(id)adapter modelInfo:(id)info quantizationBuckets:(unint64_t)buckets;
- (PMLProtoBufTracker)initWithPlist:(id)plist chunks:(id)chunks context:(id)context;
- (id)toPlistWithChunks:(id)chunks;
- (id)trackEvaluationMetrics:(id)metrics minibatchStats:(id)stats;
- (id)trackGradient:(id)gradient scaleFactor:(float)factor minibatchStats:(id)stats evaluationMetrics:(id)metrics serverIteration:(unint64_t)iteration;
- (id)trackPrecisionAtK:(id)k;
- (id)trackPrecisionAtK:(id)k minibatchStats:(id)stats;
- (id)trackWeights:(id)weights scaleFactor:(float)factor minibatchStats:(id)stats evaluationMetrics:(id)metrics;
@end

@implementation PMLProtoBufTracker

- (PMLProtoBufTracker)initWithPlist:(id)plist chunks:(id)chunks context:(id)context
{
  contextCopy = context;
  plistCopy = plist;
  v10 = [plistCopy objectForKeyedSubscript:@"TRACKER_ADAPTER_CLASS"];
  if (!NSClassFromString(v10))
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PMLProtoBufTracker.m" lineNumber:218 description:{@"Can't instantiate %@. Unknown class: %@", v20, v10}];
  }

  v11 = [contextCopy objectForKeyedSubscript:@"planId"];

  if (!v11)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PMLProtoBufTracker.m" lineNumber:219 description:{@"Can't instantiate %@. Missing planId dependency.", v23}];
  }

  v12 = [contextCopy objectForKeyedSubscript:@"planId"];
  v13 = [AWDProactiveModelFittingModelInfo modelInfoFromPlanId:v12];

  v14 = objc_opt_new();
  v15 = [plistCopy objectForKeyedSubscript:@"TRACKER_QUANTIZATION_BUCKETS"];

  v16 = -[PMLProtoBufTracker initWithAdapter:modelInfo:quantizationBuckets:](self, "initWithAdapter:modelInfo:quantizationBuckets:", v14, v13, [v15 unsignedLongLongValue]);
  return v16;
}

- (id)toPlistWithChunks:(id)chunks
{
  v12[2] = *MEMORY[0x277D85DE8];
  v11[0] = @"TRACKER_ADAPTER_CLASS";
  adapter = self->_adapter;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v11[1] = @"TRACKER_QUANTIZATION_BUCKETS";
  v12[0] = v6;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_quantizationNumberOfBuckets];
  v12[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)trackPrecisionAtK:(id)k minibatchStats:(id)stats
{
  v21 = *MEMORY[0x277D85DE8];
  statsCopy = stats;
  kCopy = k;
  v8 = objc_opt_new();
  v9 = [(AWDProactiveModelFittingModelInfo *)self->_modelInfo copy];
  [v8 setModelInfo:v9];

  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  [v8 setTimestamp:v11];

  [v8 setMinibatchStats:statsCopy];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __55__PMLProtoBufTracker_trackPrecisionAtK_minibatchStats___block_invoke;
  v17[3] = &unk_279AC06A0;
  v12 = v8;
  v18 = v12;
  [kCopy enumerateKeysAndObjectsUsingBlock:v17];

  v13 = PML_LogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    modelInfo = self->_modelInfo;
    *buf = 138412290;
    v20 = modelInfo;
    _os_log_debug_impl(&dword_260D68000, v13, OS_LOG_TYPE_DEBUG, "Sending evaluation metrics for %@", buf, 0xCu);
  }

  [(PMLTrackerAdapterProtocol *)self->_adapter postMetricId:5636102 message:v12];
  v14 = *MEMORY[0x277D85DE8];
  return 0;
}

void __55__PMLProtoBufTracker_trackPrecisionAtK_minibatchStats___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v11 = objc_opt_new();
  v7 = [v6 unsignedIntegerValue];

  [v11 setK:v7];
  [v5 floatValue];
  v9 = v8;

  LODWORD(v10) = v9;
  [v11 setPrecision:v10];
  [*(a1 + 32) addPrecisionAtK:v11];
}

- (id)trackPrecisionAtK:(id)k
{
  kCopy = k;
  v5 = [AWDProactiveModelFittingMinibatchStats statsWithSize:0 support:0.0];
  v6 = [(PMLProtoBufTracker *)self trackPrecisionAtK:kCopy minibatchStats:v5];

  return v6;
}

- (id)trackEvaluationMetrics:(id)metrics minibatchStats:(id)stats
{
  v18 = *MEMORY[0x277D85DE8];
  statsCopy = stats;
  metricsCopy = metrics;
  v8 = objc_opt_new();
  v9 = [(AWDProactiveModelFittingModelInfo *)self->_modelInfo copy];
  [v8 setModelInfo:v9];

  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  [v8 setTimestamp:v11];

  [v8 setMinibatchStats:statsCopy];
  [v8 setEvaluationMetrics:metricsCopy];

  v12 = PML_LogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    modelInfo = self->_modelInfo;
    v16 = 138412290;
    v17 = modelInfo;
    _os_log_debug_impl(&dword_260D68000, v12, OS_LOG_TYPE_DEBUG, "Sending evaluation metrics for %@", &v16, 0xCu);
  }

  [(PMLTrackerAdapterProtocol *)self->_adapter postMetricId:5636102 message:v8];
  v13 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)trackGradient:(id)gradient scaleFactor:(float)factor minibatchStats:(id)stats evaluationMetrics:(id)metrics serverIteration:(unint64_t)iteration
{
  v25 = *MEMORY[0x277D85DE8];
  modelInfo = self->_modelInfo;
  metricsCopy = metrics;
  statsCopy = stats;
  gradientCopy = gradient;
  v16 = [(AWDProactiveModelFittingModelInfo *)modelInfo copy];
  *&v17 = factor;
  v18 = [PMLProtoBufTracker messageForGradient:gradientCopy scaleFactor:statsCopy minibatchStats:metricsCopy evaluationMetrics:iteration serverIteration:v16 modelInfo:self->_quantizationNumberOfBuckets numberOfBuckets:v17];

  v19 = PML_LogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v22 = self->_modelInfo;
    v23 = 138412290;
    v24 = v22;
    _os_log_debug_impl(&dword_260D68000, v19, OS_LOG_TYPE_DEBUG, "Sending gradient for model %@", &v23, 0xCu);
  }

  [(PMLTrackerAdapterProtocol *)self->_adapter postMetricId:5636101 message:v18];
  v20 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)trackWeights:(id)weights scaleFactor:(float)factor minibatchStats:(id)stats evaluationMetrics:(id)metrics
{
  v23 = *MEMORY[0x277D85DE8];
  modelInfo = self->_modelInfo;
  metricsCopy = metrics;
  statsCopy = stats;
  weightsCopy = weights;
  v14 = [(AWDProactiveModelFittingModelInfo *)modelInfo copy];
  *&v15 = factor;
  v16 = [PMLProtoBufTracker messageForWeights:weightsCopy scaleFactor:statsCopy minibatchStats:metricsCopy evaluationMetrics:v14 modelInfo:self->_quantizationNumberOfBuckets numberOfBuckets:v15];

  v17 = PML_LogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v20 = self->_modelInfo;
    v21 = 138412290;
    v22 = v20;
    _os_log_debug_impl(&dword_260D68000, v17, OS_LOG_TYPE_DEBUG, "Sending weights for model %@", &v21, 0xCu);
  }

  [(PMLTrackerAdapterProtocol *)self->_adapter postMetricId:5636100 message:v16];
  v18 = *MEMORY[0x277D85DE8];
  return 0;
}

- (PMLProtoBufTracker)initWithAdapter:(id)adapter modelInfo:(id)info quantizationBuckets:(unint64_t)buckets
{
  adapterCopy = adapter;
  infoCopy = info;
  v12 = infoCopy;
  if (adapterCopy)
  {
    if (infoCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PMLProtoBufTracker.m" lineNumber:67 description:{@"Invalid parameter not satisfying: %@", @"adapter"}];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PMLProtoBufTracker.m" lineNumber:68 description:{@"Invalid parameter not satisfying: %@", @"modelInfo"}];

LABEL_3:
  v18.receiver = self;
  v18.super_class = PMLProtoBufTracker;
  v13 = [(PMLProtoBufTracker *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_adapter, adapter);
    objc_storeStrong(&v14->_modelInfo, info);
    v14->_quantizationNumberOfBuckets = buckets;
  }

  return v14;
}

+ (id)messageForGradient:(id)gradient scaleFactor:(float)factor minibatchStats:(id)stats evaluationMetrics:(id)metrics serverIteration:(unint64_t)iteration modelInfo:(id)info numberOfBuckets:(unint64_t)buckets
{
  infoCopy = info;
  metricsCopy = metrics;
  statsCopy = stats;
  gradientCopy = gradient;
  v19 = objc_opt_new();
  [v19 setModelInfo:infoCopy];

  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  [v19 setTimestamp:v21];

  [v19 setMinibatchStats:statsCopy];
  [v19 setEvaluationMetrics:metricsCopy];

  *&v22 = factor;
  [v19 setGradientScaleFactor:v22];
  [v19 setIteration:iteration];
  [gradientCopy density];
  if (v23 >= 0.5)
  {
    v24 = [AWDProactiveModelFittingQuantizedDenseVector quantizedDenseVectorFromDenseVector:gradientCopy numberOfBuckets:buckets];

    [v19 setDenseQuantizedGradient:v24];
  }

  else
  {
    v24 = [AWDProactiveModelFittingQuantizedSparseVector quantizedSparseVectorFromDenseVector:gradientCopy numberOfBuckets:buckets];

    [v19 setSparseQuantizedGradient:v24];
  }

  return v19;
}

+ (id)messageForWeights:(id)weights scaleFactor:(float)factor minibatchStats:(id)stats evaluationMetrics:(id)metrics modelInfo:(id)info numberOfBuckets:(unint64_t)buckets
{
  infoCopy = info;
  metricsCopy = metrics;
  statsCopy = stats;
  weightsCopy = weights;
  v17 = objc_opt_new();
  [v17 setModelInfo:infoCopy];

  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  [v17 setTimestamp:v19];

  [v17 setMinibatchStats:statsCopy];
  [v17 setEvaluationMetrics:metricsCopy];

  *&v20 = factor;
  [v17 setWeightsScaleFactor:v20];
  [weightsCopy density];
  if (v21 >= 0.5)
  {
    v22 = [AWDProactiveModelFittingQuantizedDenseVector quantizedDenseVectorFromDenseVector:weightsCopy numberOfBuckets:buckets];

    [v17 setDenseQuantizedWeights:v22];
  }

  else
  {
    v22 = [AWDProactiveModelFittingQuantizedSparseVector quantizedSparseVectorFromDenseVector:weightsCopy numberOfBuckets:buckets];

    [v17 setSparseQuantizedWeights:v22];
  }

  return v17;
}

+ (id)parsecTrackerForPlanId:(id)id
{
  idCopy = id;
  v5 = objc_opt_new();
  v6 = [AWDProactiveModelFittingModelInfo modelInfoFromPlanId:idCopy];

  v7 = [[self alloc] initWithAdapter:v5 modelInfo:v6];

  return v7;
}

+ (id)awdTrackerForPlanId:(id)id
{
  idCopy = id;
  v5 = objc_opt_new();
  v6 = [AWDProactiveModelFittingModelInfo modelInfoFromPlanId:idCopy];

  v7 = [[self alloc] initWithAdapter:v5 modelInfo:v6];

  return v7;
}

@end