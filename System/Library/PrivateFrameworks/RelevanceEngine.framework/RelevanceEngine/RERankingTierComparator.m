@interface RERankingTierComparator
+ (id)comparatorWithFilteringRules:(id)a3;
- (BOOL)shouldHideElement:(id)a3;
- (RERankingTierComparator)initWithFilteringRules:(id)a3;
@end

@implementation RERankingTierComparator

+ (id)comparatorWithFilteringRules:(id)a3
{
  v3 = a3;
  v4 = [[RERankingTierComparator alloc] initWithFilteringRules:v3];

  return v4;
}

- (RERankingTierComparator)initWithFilteringRules:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v23.receiver = self;
  v23.super_class = RERankingTierComparator;
  v5 = [(REMLElementComparator *)&v23 initWithModel:0];
  if (v5)
  {
    v6 = [v4 sortedArrayWithOptions:16 usingComparator:&__block_literal_global_82];
    v7 = _filteringRules;
    _filteringRules = v6;

    v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(_filteringRules, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = _filteringRules;
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        v13 = 0;
        do
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v19 + 1) + 8 * v13) conditionEvaluator];
          [v8 addObject:v14];

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v11);
    }

    v15 = [v8 copy];
    v16 = _filteringEvaluators;
    _filteringEvaluators = v15;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t __50__RERankingTierComparator_initWithFilteringRules___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a2;
  [a3 priority];
  v6 = [v4 numberWithFloat:?];
  v7 = MEMORY[0x277CCABB0];
  [v5 priority];
  v9 = v8;

  LODWORD(v10) = v9;
  v11 = [v7 numberWithFloat:v10];
  v12 = [v6 compare:v11];

  return v12;
}

- (BOOL)shouldHideElement:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = RELogForDomain(22);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(RERankingTierComparator *)v3 shouldHideElement:v4];
  }

  v5 = &unk_27D850000;
  v30 = v3;
  if (![_filteringRules count])
  {
LABEL_24:
    v25 = 1;
    goto LABEL_27;
  }

  v7 = 0;
  *&v6 = 138412802;
  v28 = v6;
  while (1)
  {
    v8 = [_filteringEvaluators objectAtIndexedSubscript:{v7, v28}];
    v9 = [v5[295] objectAtIndexedSubscript:v7];
    v10 = [v3 featureMap];
    v32 = 0;
    v11 = [v8 acceptsFeatureMap:v10 predictionSet:0 explanation:&v32];
    v12 = v32;

    if (!v11)
    {
      v24 = RELogForDomain(22);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        [(RERankingTierComparator *)v33 shouldHideElement:v8];
      }

      goto LABEL_23;
    }

    v13 = [v3 identifier];
    v14 = v9;
    v15 = v13;
    v16 = v12;
    if (v16 && REMLExplanationsEnabled())
    {
      v31 = objc_alloc_init(REMLExplanationFormatter);
      v17 = [v14 type];
      v18 = RELogForDomain(4);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = @"Including";
        if (v17 != 1)
        {
          v19 = 0;
        }

        if (!v17)
        {
          v19 = @"Filtering";
        }

        v29 = v19;
        v20 = [MEMORY[0x277CBEB98] setWithObject:v16];
        v21 = [(REMLExplanationFormatter *)v31 descriptionFromExplanations:v20];
        *buf = v28;
        v36 = v29;
        v37 = 2112;
        v38 = v15;
        v39 = 2112;
        v40 = v21;
        _os_log_impl(&dword_22859F000, v18, OS_LOG_TYPE_DEFAULT, "%@ %@ because %@", buf, 0x20u);

        v3 = v30;
      }
    }

    v22 = RELogForDomain(22);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      [(RERankingTierComparator *)v34 shouldHideElement:v8];
    }

    v23 = [v14 type];
    v5 = &unk_27D850000;
    if (!v23)
    {
      break;
    }

    if (v23 == 1)
    {
      LOBYTE(v3) = 0;
      goto LABEL_26;
    }

LABEL_23:

    if (++v7 >= [v5[295] count])
    {
      goto LABEL_24;
    }
  }

  LOBYTE(v3) = 1;
LABEL_26:

  v25 = 0;
LABEL_27:

  v26 = *MEMORY[0x277D85DE8];
  return (v25 | v3) & 1;
}

- (void)shouldHideElement:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = [a1 identifier];
  v5 = [_filteringRules count];
  v6 = [a1 featureMap];
  v8 = 138412802;
  v9 = v4;
  v10 = 2048;
  v11 = v5;
  v12 = 2048;
  v13 = [v6 populatedFeatureCount];
  _os_log_debug_impl(&dword_22859F000, a2, OS_LOG_TYPE_DEBUG, "[RERankingTierComparator]: Evaluating ShouldHideElement for %@ with %lu rules with %lu populated features", &v8, 0x20u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)shouldHideElement:(uint64_t)a1 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [OUTLINED_FUNCTION_0_5(a1 a2)];
  *v3 = 138412290;
  *v2 = v4;
  OUTLINED_FUNCTION_1_2(&dword_22859F000, v5, v6, "[RERankingTierComparator] Evaluator with condition %@ doesn't accept the feature map. PredictionSet is nil.");
}

- (void)shouldHideElement:(uint64_t)a1 .cold.3(uint64_t a1, uint64_t a2)
{
  v4 = [OUTLINED_FUNCTION_0_5(a1 a2)];
  *v3 = 138412290;
  *v2 = v4;
  OUTLINED_FUNCTION_1_2(&dword_22859F000, v5, v6, "[RERankingTierComparator] Evaluator with condition %@ accepts the feature map. PredictionSet is nil.");
}

@end