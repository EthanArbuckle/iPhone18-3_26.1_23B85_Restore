@interface PHACurareShadowEvaluationDataset
+ (id)prepareDatasetForEvaluationTaskWithRecipeOptions:(id)options error:(id *)error;
@end

@implementation PHACurareShadowEvaluationDataset

+ (id)prepareDatasetForEvaluationTaskWithRecipeOptions:(id)options error:(id *)error
{
  v5 = [PHAPrivateFederatedLearningRunner datasetBuilderForOptions:options error:?];
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = [v5 datasetForEvaluationForLabel:@"positive" error:error];
  if (v7)
  {
    [v6 setObject:v7 forKeyedSubscript:@"kPositive"];
  }

  else
  {
    null = [MEMORY[0x277CBEB68] null];
    [v6 setObject:null forKeyedSubscript:@"kPositive"];
  }

  v9 = [v5 datasetForEvaluationForLabel:@"negative" error:error];
  if (v9)
  {
    [v6 setObject:v9 forKeyedSubscript:@"kNegative"];
  }

  else
  {
    null2 = [MEMORY[0x277CBEB68] null];
    [v6 setObject:null2 forKeyedSubscript:@"kNegative"];
  }

  return v6;
}

@end