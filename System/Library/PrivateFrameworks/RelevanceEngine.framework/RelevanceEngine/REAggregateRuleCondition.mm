@interface REAggregateRuleCondition
@end

@implementation REAggregateRuleCondition

uint64_t __74___REAggregateRuleCondition__acceptsFeatureMap_predictionSet_explanation___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v13 = 0;
  v5 = [a2 _acceptsFeatureMap:v3 predictionSet:v4 explanation:&v13];
  v6 = v13;
  if (v5)
  {
    v7 = *(*(a1[6] + 8) + 24);
    if (v7)
    {
      v8 = *v7;
      v9 = v8;
      if (v8)
      {
        v10 = v6 == 0;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
        if (!v8)
        {
          v8 = v6;
        }

        v11 = v8;
      }

      else
      {
        v11 = [v8 explanationByCombiningWithExplanation:v6];
      }

      **(*(a1[6] + 8) + 24) = v11;
    }
  }

  return v5;
}

@end