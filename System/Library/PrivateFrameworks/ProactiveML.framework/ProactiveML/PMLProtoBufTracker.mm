@interface PMLProtoBufTracker
+ (id)awdTrackerForPlanId:(id)a3;
+ (id)messageForGradient:(id)a3 scaleFactor:(float)a4 minibatchStats:(id)a5 evaluationMetrics:(id)a6 serverIteration:(unint64_t)a7 modelInfo:(id)a8 numberOfBuckets:(unint64_t)a9;
+ (id)messageForWeights:(id)a3 scaleFactor:(float)a4 minibatchStats:(id)a5 evaluationMetrics:(id)a6 modelInfo:(id)a7 numberOfBuckets:(unint64_t)a8;
+ (id)parsecTrackerForPlanId:(id)a3;
- (PMLProtoBufTracker)initWithAdapter:(id)a3 modelInfo:(id)a4 quantizationBuckets:(unint64_t)a5;
- (PMLProtoBufTracker)initWithPlist:(id)a3 chunks:(id)a4 context:(id)a5;
- (id)toPlistWithChunks:(id)a3;
- (id)trackEvaluationMetrics:(id)a3 minibatchStats:(id)a4;
- (id)trackGradient:(id)a3 scaleFactor:(float)a4 minibatchStats:(id)a5 evaluationMetrics:(id)a6 serverIteration:(unint64_t)a7;
- (id)trackPrecisionAtK:(id)a3;
- (id)trackPrecisionAtK:(id)a3 minibatchStats:(id)a4;
- (id)trackWeights:(id)a3 scaleFactor:(float)a4 minibatchStats:(id)a5 evaluationMetrics:(id)a6;
@end

@implementation PMLProtoBufTracker

- (PMLProtoBufTracker)initWithPlist:(id)a3 chunks:(id)a4 context:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [v9 objectForKeyedSubscript:@"TRACKER_ADAPTER_CLASS"];
  if (!NSClassFromString(v10))
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    [v18 handleFailureInMethod:a2 object:self file:@"PMLProtoBufTracker.m" lineNumber:218 description:{@"Can't instantiate %@. Unknown class: %@", v20, v10}];
  }

  v11 = [v8 objectForKeyedSubscript:@"planId"];

  if (!v11)
  {
    v21 = [MEMORY[0x277CCA890] currentHandler];
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    [v21 handleFailureInMethod:a2 object:self file:@"PMLProtoBufTracker.m" lineNumber:219 description:{@"Can't instantiate %@. Missing planId dependency.", v23}];
  }

  v12 = [v8 objectForKeyedSubscript:@"planId"];
  v13 = [AWDProactiveModelFittingModelInfo modelInfoFromPlanId:v12];

  v14 = objc_opt_new();
  v15 = [v9 objectForKeyedSubscript:@"TRACKER_QUANTIZATION_BUCKETS"];

  v16 = -[PMLProtoBufTracker initWithAdapter:modelInfo:quantizationBuckets:](self, "initWithAdapter:modelInfo:quantizationBuckets:", v14, v13, [v15 unsignedLongLongValue]);
  return v16;
}

- (id)toPlistWithChunks:(id)a3
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

- (id)trackPrecisionAtK:(id)a3 minibatchStats:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  v9 = [(AWDProactiveModelFittingModelInfo *)self->_modelInfo copy];
  [v8 setModelInfo:v9];

  v10 = [MEMORY[0x277CBEAA8] date];
  [v10 timeIntervalSince1970];
  [v8 setTimestamp:v11];

  [v8 setMinibatchStats:v6];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __55__PMLProtoBufTracker_trackPrecisionAtK_minibatchStats___block_invoke;
  v17[3] = &unk_279AC06A0;
  v12 = v8;
  v18 = v12;
  [v7 enumerateKeysAndObjectsUsingBlock:v17];

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

- (id)trackPrecisionAtK:(id)a3
{
  v4 = a3;
  v5 = [AWDProactiveModelFittingMinibatchStats statsWithSize:0 support:0.0];
  v6 = [(PMLProtoBufTracker *)self trackPrecisionAtK:v4 minibatchStats:v5];

  return v6;
}

- (id)trackEvaluationMetrics:(id)a3 minibatchStats:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  v9 = [(AWDProactiveModelFittingModelInfo *)self->_modelInfo copy];
  [v8 setModelInfo:v9];

  v10 = [MEMORY[0x277CBEAA8] date];
  [v10 timeIntervalSince1970];
  [v8 setTimestamp:v11];

  [v8 setMinibatchStats:v6];
  [v8 setEvaluationMetrics:v7];

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

- (id)trackGradient:(id)a3 scaleFactor:(float)a4 minibatchStats:(id)a5 evaluationMetrics:(id)a6 serverIteration:(unint64_t)a7
{
  v25 = *MEMORY[0x277D85DE8];
  modelInfo = self->_modelInfo;
  v13 = a6;
  v14 = a5;
  v15 = a3;
  v16 = [(AWDProactiveModelFittingModelInfo *)modelInfo copy];
  *&v17 = a4;
  v18 = [PMLProtoBufTracker messageForGradient:v15 scaleFactor:v14 minibatchStats:v13 evaluationMetrics:a7 serverIteration:v16 modelInfo:self->_quantizationNumberOfBuckets numberOfBuckets:v17];

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

- (id)trackWeights:(id)a3 scaleFactor:(float)a4 minibatchStats:(id)a5 evaluationMetrics:(id)a6
{
  v23 = *MEMORY[0x277D85DE8];
  modelInfo = self->_modelInfo;
  v11 = a6;
  v12 = a5;
  v13 = a3;
  v14 = [(AWDProactiveModelFittingModelInfo *)modelInfo copy];
  *&v15 = a4;
  v16 = [PMLProtoBufTracker messageForWeights:v13 scaleFactor:v12 minibatchStats:v11 evaluationMetrics:v14 modelInfo:self->_quantizationNumberOfBuckets numberOfBuckets:v15];

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

- (PMLProtoBufTracker)initWithAdapter:(id)a3 modelInfo:(id)a4 quantizationBuckets:(unint64_t)a5
{
  v10 = a3;
  v11 = a4;
  v12 = v11;
  if (v10)
  {
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PMLProtoBufTracker.m" lineNumber:67 description:{@"Invalid parameter not satisfying: %@", @"adapter"}];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  v17 = [MEMORY[0x277CCA890] currentHandler];
  [v17 handleFailureInMethod:a2 object:self file:@"PMLProtoBufTracker.m" lineNumber:68 description:{@"Invalid parameter not satisfying: %@", @"modelInfo"}];

LABEL_3:
  v18.receiver = self;
  v18.super_class = PMLProtoBufTracker;
  v13 = [(PMLProtoBufTracker *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_adapter, a3);
    objc_storeStrong(&v14->_modelInfo, a4);
    v14->_quantizationNumberOfBuckets = a5;
  }

  return v14;
}

+ (id)messageForGradient:(id)a3 scaleFactor:(float)a4 minibatchStats:(id)a5 evaluationMetrics:(id)a6 serverIteration:(unint64_t)a7 modelInfo:(id)a8 numberOfBuckets:(unint64_t)a9
{
  v15 = a8;
  v16 = a6;
  v17 = a5;
  v18 = a3;
  v19 = objc_opt_new();
  [v19 setModelInfo:v15];

  v20 = [MEMORY[0x277CBEAA8] date];
  [v20 timeIntervalSince1970];
  [v19 setTimestamp:v21];

  [v19 setMinibatchStats:v17];
  [v19 setEvaluationMetrics:v16];

  *&v22 = a4;
  [v19 setGradientScaleFactor:v22];
  [v19 setIteration:a7];
  [v18 density];
  if (v23 >= 0.5)
  {
    v24 = [AWDProactiveModelFittingQuantizedDenseVector quantizedDenseVectorFromDenseVector:v18 numberOfBuckets:a9];

    [v19 setDenseQuantizedGradient:v24];
  }

  else
  {
    v24 = [AWDProactiveModelFittingQuantizedSparseVector quantizedSparseVectorFromDenseVector:v18 numberOfBuckets:a9];

    [v19 setSparseQuantizedGradient:v24];
  }

  return v19;
}

+ (id)messageForWeights:(id)a3 scaleFactor:(float)a4 minibatchStats:(id)a5 evaluationMetrics:(id)a6 modelInfo:(id)a7 numberOfBuckets:(unint64_t)a8
{
  v13 = a7;
  v14 = a6;
  v15 = a5;
  v16 = a3;
  v17 = objc_opt_new();
  [v17 setModelInfo:v13];

  v18 = [MEMORY[0x277CBEAA8] date];
  [v18 timeIntervalSince1970];
  [v17 setTimestamp:v19];

  [v17 setMinibatchStats:v15];
  [v17 setEvaluationMetrics:v14];

  *&v20 = a4;
  [v17 setWeightsScaleFactor:v20];
  [v16 density];
  if (v21 >= 0.5)
  {
    v22 = [AWDProactiveModelFittingQuantizedDenseVector quantizedDenseVectorFromDenseVector:v16 numberOfBuckets:a8];

    [v17 setDenseQuantizedWeights:v22];
  }

  else
  {
    v22 = [AWDProactiveModelFittingQuantizedSparseVector quantizedSparseVectorFromDenseVector:v16 numberOfBuckets:a8];

    [v17 setSparseQuantizedWeights:v22];
  }

  return v17;
}

+ (id)parsecTrackerForPlanId:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [AWDProactiveModelFittingModelInfo modelInfoFromPlanId:v4];

  v7 = [[a1 alloc] initWithAdapter:v5 modelInfo:v6];

  return v7;
}

+ (id)awdTrackerForPlanId:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [AWDProactiveModelFittingModelInfo modelInfoFromPlanId:v4];

  v7 = [[a1 alloc] initWithAdapter:v5 modelInfo:v6];

  return v7;
}

@end