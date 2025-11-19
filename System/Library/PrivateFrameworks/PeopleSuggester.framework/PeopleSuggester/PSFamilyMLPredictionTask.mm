@interface PSFamilyMLPredictionTask
@end

@implementation PSFamilyMLPredictionTask

BOOL __37___PSFamilyMLPredictionTask_execute___block_invoke(uint64_t a1)
{
  should_defer = xpc_activity_should_defer(*(a1 + 32));
  if (should_defer)
  {
    xpc_activity_set_state(*(a1 + 32), 3);
    v3 = +[_PSLogging familyRecommenderChannel];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_1B5ED1000, v3, OS_LOG_TYPE_INFO, "_CDDataCollection XPC Activity: Deferred", v5, 2u);
    }
  }

  return !should_defer;
}

void __37___PSFamilyMLPredictionTask_execute___block_invoke_8(uint64_t a1, void *a2, _BYTE *a3)
{
  v18 = a2;
  v5 = objc_autoreleasePoolPush();
  if ((*(*(a1 + 56) + 16))())
  {
    v6 = [*(a1 + 32) getFeatureDictForContact:v18];
    if ([v6 count])
    {
      if ([_PSFamilyUtilities contactMarkedAsFamilyInFeatureDict:v6])
      {
        v7 = *(a1 + 40);
        v8 = [v18 identifier];
        [v7 addObject:v8];
      }

      v9 = [*(a1 + 32) predictionForContact:v18 featureDict:v6];
      v10 = v9;
      if (v9)
      {
        v11 = [v9 featureValueForName:@"labelFinal"];
        v12 = [v11 int64Value];

        if (v12 == 1)
        {
          v13 = [v10 featureValueForName:@"classProbability"];
          v14 = [v13 dictionaryValue];

          v15 = [v14 objectForKeyedSubscript:&unk_1F2D8B640];
          v16 = *(a1 + 48);
          v17 = [v18 identifier];
          [v16 setObject:v15 forKeyedSubscript:v17];
        }
      }
    }
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
    *a3 = 1;
  }

  objc_autoreleasePoolPop(v5);
}

void __37___PSFamilyMLPredictionTask_execute___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (v3)
  {
    v4 = +[_PSLogging familyRecommenderChannel];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __37___PSFamilyMLPredictionTask_execute___block_invoke_2_cold_1(v3, v4);
    }
  }
}

void __37___PSFamilyMLPredictionTask_execute___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B5ED1000, a2, OS_LOG_TYPE_ERROR, "Error saving feedback event to knowledge store: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end