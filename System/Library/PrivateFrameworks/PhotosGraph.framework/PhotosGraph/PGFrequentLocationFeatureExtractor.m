@interface PGFrequentLocationFeatureExtractor
- (PGFrequentLocationFeatureExtractor)initWithGraph:(id)a3 error:(id *)a4;
@end

@implementation PGFrequentLocationFeatureExtractor

- (PGFrequentLocationFeatureExtractor)initWithGraph:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = [(PGGraphNodeCollection *)PGGraphFrequentLocationNodeCollection nodesInGraph:v5];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __58__PGFrequentLocationFeatureExtractor_initWithGraph_error___block_invoke;
  v17[3] = &unk_278884C48;
  v8 = self;
  v18 = v8;
  v9 = v6;
  v19 = v9;
  [v7 enumerateNodesUsingBlock:v17];
  objc_initWeak(&location, v8);
  v10 = +[PGGraphMomentNode frequentLocationOfMoment];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __58__PGFrequentLocationFeatureExtractor_initWithGraph_error___block_invoke_2;
  v14[3] = &unk_278884C70;
  objc_copyWeak(&v15, &location);
  v13.receiver = v8;
  v13.super_class = PGFrequentLocationFeatureExtractor;
  v11 = [(PGGraphFeatureExtractor *)&v13 initWithName:@"Frequent Location" featureNames:v9 relation:v10 labelForTargetBlock:v14];
  objc_destroyWeak(&v15);

  objc_destroyWeak(&location);
  return v11;
}

void __58__PGFrequentLocationFeatureExtractor_initWithGraph_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _labelFromFrequentLocationNode:a2];
  [*(a1 + 40) addObject:v3];
}

id __58__PGFrequentLocationFeatureExtractor_initWithGraph_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _labelFromFrequentLocationNode:v3];

  return v5;
}

@end