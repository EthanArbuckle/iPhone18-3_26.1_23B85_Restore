@interface PMLFidesTracker
- (PMLFidesTracker)initWithPlanId:(id)id;
- (PMLFidesTracker)initWithPlist:(id)plist chunks:(id)chunks context:(id)context;
- (id)trackEvaluationMetrics:(id)metrics minibatchStats:(id)stats;
- (id)trackGradient:(id)gradient scaleFactor:(float)factor minibatchStats:(id)stats evaluationMetrics:(id)metrics serverIteration:(unint64_t)iteration;
- (id)trackPrecisionAtK:(id)k;
- (id)trackPrecisionAtK:(id)k minibatchStats:(id)stats;
- (id)trackWeights:(id)weights scaleFactor:(float)factor minibatchStats:(id)stats evaluationMetrics:(id)metrics;
@end

@implementation PMLFidesTracker

- (PMLFidesTracker)initWithPlist:(id)plist chunks:(id)chunks context:(id)context
{
  contextCopy = context;
  v8 = [contextCopy objectForKeyedSubscript:@"planId"];

  if (!v8)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PMLFidesTracker.m" lineNumber:176 description:{@"Can't instantiate %@. Missing planId dependency.", v14}];
  }

  v9 = [contextCopy objectForKeyedSubscript:@"planId"];
  v10 = [(PMLFidesTracker *)self initWithPlanId:v9];

  return v10;
}

- (id)trackPrecisionAtK:(id)k minibatchStats:(id)stats
{
  v27[3] = *MEMORY[0x277D85DE8];
  planId = self->_planId;
  statsCopy = stats;
  kCopy = k;
  v8 = [PMLPlanDescriptor descriptorFromPlanId:planId];
  v9 = objc_opt_new();
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __52__PMLFidesTracker_trackPrecisionAtK_minibatchStats___block_invoke;
  v22 = &unk_279AC06A0;
  v23 = v9;
  v10 = v9;
  [kCopy enumerateKeysAndObjectsUsingBlock:&v19];

  v26[0] = @"plan";
  v24[0] = @"name";
  name = [v8 name];
  v25[0] = name;
  v24[1] = @"version";
  version = [v8 version];
  v25[1] = version;
  v24[2] = @"locale";
  locale = [v8 locale];
  v25[2] = locale;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:3];
  v27[0] = v14;
  v26[1] = @"minibatchStats";
  toDictionary = [statsCopy toDictionary];

  v26[2] = @"precisionAtK";
  v27[1] = toDictionary;
  v27[2] = v10;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:3];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

void __52__PMLFidesTracker_trackPrecisionAtK_minibatchStats___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 stringValue];
  [v4 setObject:v5 forKeyedSubscript:v6];
}

- (id)trackPrecisionAtK:(id)k
{
  kCopy = k;
  v5 = [AWDProactiveModelFittingMinibatchStats statsWithSize:0 support:0.0];
  v6 = [(PMLFidesTracker *)self trackPrecisionAtK:kCopy minibatchStats:v5];

  return v6;
}

- (id)trackEvaluationMetrics:(id)metrics minibatchStats:(id)stats
{
  v21[3] = *MEMORY[0x277D85DE8];
  planId = self->_planId;
  statsCopy = stats;
  metricsCopy = metrics;
  v8 = [PMLPlanDescriptor descriptorFromPlanId:planId];
  v20[0] = @"plan";
  v18[0] = @"name";
  name = [v8 name];
  v19[0] = name;
  v18[1] = @"version";
  version = [v8 version];
  v19[1] = version;
  v18[2] = @"locale";
  locale = [v8 locale];
  v19[2] = locale;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];
  v21[0] = v12;
  v20[1] = @"minibatchStats";
  toDictionary = [statsCopy toDictionary];

  v21[1] = toDictionary;
  v20[2] = @"evaluationMetrics";
  toDictionary2 = [metricsCopy toDictionary];

  v21[2] = toDictionary2;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:3];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)trackGradient:(id)gradient scaleFactor:(float)factor minibatchStats:(id)stats evaluationMetrics:(id)metrics serverIteration:(unint64_t)iteration
{
  v29[5] = *MEMORY[0x277D85DE8];
  planId = self->_planId;
  metricsCopy = metrics;
  statsCopy = stats;
  gradientCopy = gradient;
  v13 = [PMLPlanDescriptor descriptorFromPlanId:planId];
  v28[0] = @"plan";
  v26[0] = @"name";
  name = [v13 name];
  v27[0] = name;
  v26[1] = @"version";
  version = [v13 version];
  v27[1] = version;
  v26[2] = @"locale";
  locale = [v13 locale];
  v27[2] = locale;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:3];
  v29[0] = v17;
  v28[1] = @"minibatchStats";
  toDictionary = [statsCopy toDictionary];

  v29[1] = toDictionary;
  v28[2] = @"evaluationMetrics";
  toDictionary2 = [metricsCopy toDictionary];

  v29[2] = toDictionary2;
  v28[3] = @"gradient";
  data = [gradientCopy data];

  v29[3] = data;
  v28[4] = @"serverIteration";
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:iteration];
  v29[4] = v21;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:5];

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)trackWeights:(id)weights scaleFactor:(float)factor minibatchStats:(id)stats evaluationMetrics:(id)metrics
{
  v26[5] = *MEMORY[0x277D85DE8];
  planId = self->_planId;
  metricsCopy = metrics;
  statsCopy = stats;
  weightsCopy = weights;
  v12 = [PMLPlanDescriptor descriptorFromPlanId:planId];
  v25[0] = @"plan";
  v23[0] = @"name";
  name = [v12 name];
  v24[0] = name;
  v23[1] = @"version";
  version = [v12 version];
  v24[1] = version;
  v23[2] = @"locale";
  locale = [v12 locale];
  v24[2] = locale;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:3];
  v26[0] = v16;
  v25[1] = @"minibatchStats";
  toDictionary = [statsCopy toDictionary];

  v26[1] = toDictionary;
  v25[2] = @"evaluationMetrics";
  toDictionary2 = [metricsCopy toDictionary];

  v26[2] = toDictionary2;
  v25[3] = @"weights";
  data = [weightsCopy data];

  v25[4] = @"serverIteration";
  v26[3] = data;
  v26[4] = &unk_287358220;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:5];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (PMLFidesTracker)initWithPlanId:(id)id
{
  idCopy = id;
  if (!idCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PMLFidesTracker.m" lineNumber:66 description:{@"Invalid parameter not satisfying: %@", @"planId"}];
  }

  v11.receiver = self;
  v11.super_class = PMLFidesTracker;
  v7 = [(PMLFidesTracker *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_planId, id);
  }

  return v8;
}

@end