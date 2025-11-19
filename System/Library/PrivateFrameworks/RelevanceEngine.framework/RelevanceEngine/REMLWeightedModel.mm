@interface REMLWeightedModel
@end

@implementation REMLWeightedModel

void __61___REMLWeightedModel_weightedModelWithDescriptor_featureSet___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v8 = [v4 name];
  v7 = [v8 stringByAppendingFormat:@"@%@", v5];

  [v6 setMetricsInteraction:v7];
}

void __61___REMLWeightedModel_weightedModelWithDescriptor_featureSet___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 name];
  [v3 setMetricsInteraction:v4];
}

@end