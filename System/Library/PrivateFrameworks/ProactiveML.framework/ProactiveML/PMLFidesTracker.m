@interface PMLFidesTracker
- (PMLFidesTracker)initWithPlanId:(id)a3;
- (PMLFidesTracker)initWithPlist:(id)a3 chunks:(id)a4 context:(id)a5;
- (id)trackEvaluationMetrics:(id)a3 minibatchStats:(id)a4;
- (id)trackGradient:(id)a3 scaleFactor:(float)a4 minibatchStats:(id)a5 evaluationMetrics:(id)a6 serverIteration:(unint64_t)a7;
- (id)trackPrecisionAtK:(id)a3;
- (id)trackPrecisionAtK:(id)a3 minibatchStats:(id)a4;
- (id)trackWeights:(id)a3 scaleFactor:(float)a4 minibatchStats:(id)a5 evaluationMetrics:(id)a6;
@end

@implementation PMLFidesTracker

- (PMLFidesTracker)initWithPlist:(id)a3 chunks:(id)a4 context:(id)a5
{
  v7 = a5;
  v8 = [v7 objectForKeyedSubscript:@"planId"];

  if (!v8)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    [v12 handleFailureInMethod:a2 object:self file:@"PMLFidesTracker.m" lineNumber:176 description:{@"Can't instantiate %@. Missing planId dependency.", v14}];
  }

  v9 = [v7 objectForKeyedSubscript:@"planId"];
  v10 = [(PMLFidesTracker *)self initWithPlanId:v9];

  return v10;
}

- (id)trackPrecisionAtK:(id)a3 minibatchStats:(id)a4
{
  v27[3] = *MEMORY[0x277D85DE8];
  planId = self->_planId;
  v6 = a4;
  v7 = a3;
  v8 = [PMLPlanDescriptor descriptorFromPlanId:planId];
  v9 = objc_opt_new();
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __52__PMLFidesTracker_trackPrecisionAtK_minibatchStats___block_invoke;
  v22 = &unk_279AC06A0;
  v23 = v9;
  v10 = v9;
  [v7 enumerateKeysAndObjectsUsingBlock:&v19];

  v26[0] = @"plan";
  v24[0] = @"name";
  v11 = [v8 name];
  v25[0] = v11;
  v24[1] = @"version";
  v12 = [v8 version];
  v25[1] = v12;
  v24[2] = @"locale";
  v13 = [v8 locale];
  v25[2] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:3];
  v27[0] = v14;
  v26[1] = @"minibatchStats";
  v15 = [v6 toDictionary];

  v26[2] = @"precisionAtK";
  v27[1] = v15;
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

- (id)trackPrecisionAtK:(id)a3
{
  v4 = a3;
  v5 = [AWDProactiveModelFittingMinibatchStats statsWithSize:0 support:0.0];
  v6 = [(PMLFidesTracker *)self trackPrecisionAtK:v4 minibatchStats:v5];

  return v6;
}

- (id)trackEvaluationMetrics:(id)a3 minibatchStats:(id)a4
{
  v21[3] = *MEMORY[0x277D85DE8];
  planId = self->_planId;
  v6 = a4;
  v7 = a3;
  v8 = [PMLPlanDescriptor descriptorFromPlanId:planId];
  v20[0] = @"plan";
  v18[0] = @"name";
  v9 = [v8 name];
  v19[0] = v9;
  v18[1] = @"version";
  v10 = [v8 version];
  v19[1] = v10;
  v18[2] = @"locale";
  v11 = [v8 locale];
  v19[2] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];
  v21[0] = v12;
  v20[1] = @"minibatchStats";
  v13 = [v6 toDictionary];

  v21[1] = v13;
  v20[2] = @"evaluationMetrics";
  v14 = [v7 toDictionary];

  v21[2] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:3];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)trackGradient:(id)a3 scaleFactor:(float)a4 minibatchStats:(id)a5 evaluationMetrics:(id)a6 serverIteration:(unint64_t)a7
{
  v29[5] = *MEMORY[0x277D85DE8];
  planId = self->_planId;
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = [PMLPlanDescriptor descriptorFromPlanId:planId];
  v28[0] = @"plan";
  v26[0] = @"name";
  v14 = [v13 name];
  v27[0] = v14;
  v26[1] = @"version";
  v15 = [v13 version];
  v27[1] = v15;
  v26[2] = @"locale";
  v16 = [v13 locale];
  v27[2] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:3];
  v29[0] = v17;
  v28[1] = @"minibatchStats";
  v18 = [v11 toDictionary];

  v29[1] = v18;
  v28[2] = @"evaluationMetrics";
  v19 = [v10 toDictionary];

  v29[2] = v19;
  v28[3] = @"gradient";
  v20 = [v12 data];

  v29[3] = v20;
  v28[4] = @"serverIteration";
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a7];
  v29[4] = v21;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:5];

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)trackWeights:(id)a3 scaleFactor:(float)a4 minibatchStats:(id)a5 evaluationMetrics:(id)a6
{
  v26[5] = *MEMORY[0x277D85DE8];
  planId = self->_planId;
  v9 = a6;
  v10 = a5;
  v11 = a3;
  v12 = [PMLPlanDescriptor descriptorFromPlanId:planId];
  v25[0] = @"plan";
  v23[0] = @"name";
  v13 = [v12 name];
  v24[0] = v13;
  v23[1] = @"version";
  v14 = [v12 version];
  v24[1] = v14;
  v23[2] = @"locale";
  v15 = [v12 locale];
  v24[2] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:3];
  v26[0] = v16;
  v25[1] = @"minibatchStats";
  v17 = [v10 toDictionary];

  v26[1] = v17;
  v25[2] = @"evaluationMetrics";
  v18 = [v9 toDictionary];

  v26[2] = v18;
  v25[3] = @"weights";
  v19 = [v11 data];

  v25[4] = @"serverIteration";
  v26[3] = v19;
  v26[4] = &unk_287358220;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:5];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (PMLFidesTracker)initWithPlanId:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PMLFidesTracker.m" lineNumber:66 description:{@"Invalid parameter not satisfying: %@", @"planId"}];
  }

  v11.receiver = self;
  v11.super_class = PMLFidesTracker;
  v7 = [(PMLFidesTracker *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_planId, a3);
  }

  return v8;
}

@end