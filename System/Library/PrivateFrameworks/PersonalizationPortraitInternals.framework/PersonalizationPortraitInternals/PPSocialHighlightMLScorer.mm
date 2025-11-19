@interface PPSocialHighlightMLScorer
+ (id)_oneHotEncodeString:(id)a3 columns:(id)a4 prefix:(id)a5;
+ (id)_scorerFromModelFactorName:(id)a3;
+ (id)_singleItemMultiArrayValueWithConstantValue:(double)a3;
+ (id)clientEncodingForClientId:(id)a3 applicationIdentifiers:(id)a4;
+ (id)sharedFirstPassInstance;
+ (id)sharedTopKInstance;
+ (id)variantEncodingForVariant:(id)a3;
- (PPSocialHighlightMLScorer)initWithModel:(id)a3;
- (double)scoreSocialHighlight:(id)a3;
@end

@implementation PPSocialHighlightMLScorer

+ (id)sharedFirstPassInstance
{
  if (sharedFirstPassInstance__pasOnceToken8 != -1)
  {
    dispatch_once(&sharedFirstPassInstance__pasOnceToken8, &__block_literal_global_6340);
  }

  v3 = sharedFirstPassInstance__pasExprOnceResult;

  return [v3 result];
}

+ (id)sharedTopKInstance
{
  if (sharedTopKInstance__pasOnceToken9 != -1)
  {
    dispatch_once(&sharedTopKInstance__pasOnceToken9, &__block_literal_global_83);
  }

  v3 = sharedTopKInstance__pasExprOnceResult;

  return [v3 result];
}

- (double)scoreSocialHighlight:(id)a3
{
  v4 = a3;
  v5 = [v4 clientIdentifier];
  v6 = [v4 applicationIdentifiers];
  v7 = [PPSocialHighlightMLScorer clientEncodingForClientId:v5 applicationIdentifiers:v6];

  v8 = [v4 variant];
  v9 = [PPSocialHighlightMLScorer variantEncodingForVariant:v8];

  v10 = v4;
  v11 = v10;
  if (v7)
  {
    v11 = [MEMORY[0x277CBFEE8] lazyProviderWithFeaturesProvidedBy:v7 addedToFeaturesProvidedBy:v10];
  }

  if (v9)
  {
    v12 = [MEMORY[0x277CBFEE8] lazyProviderWithFeaturesProvidedBy:v9 addedToFeaturesProvidedBy:v11];

    v11 = v12;
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__6278;
  v31 = __Block_byref_object_dispose__6279;
  v32 = 0;
  modelQueue = self->_modelQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__PPSocialHighlightMLScorer_scoreSocialHighlight___block_invoke;
  block[3] = &unk_278976388;
  v26 = &v27;
  block[4] = self;
  v14 = v11;
  v25 = v14;
  dispatch_sync(modelQueue, block);
  v15 = v28[5];
  if (v15)
  {
    v16 = [v15 featureValueForName:@"score"];
    v17 = v16;
    if (v16)
    {
      v18 = [v16 multiArrayValue];
      v19 = [v18 objectAtIndexedSubscript:0];
      [v19 doubleValue];
      v21 = v20;
    }

    else
    {
      v18 = pp_default_log_handle();
      v21 = 0.0;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        *v23 = 0;
        _os_log_fault_impl(&dword_23224A000, v18, OS_LOG_TYPE_FAULT, "PPSocialHighlightMLScorer: invalid output keys, score not found", v23, 2u);
      }
    }
  }

  else
  {
    v21 = 0.0;
  }

  _Block_object_dispose(&v27, 8);
  return v21;
}

void __50__PPSocialHighlightMLScorer_scoreSocialHighlight___block_invoke(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = a1[5];
  v3 = *(a1[4] + 8);
  v10 = 0;
  v4 = [v3 predictionFromFeatures:v2 error:&v10];
  v5 = v10;
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v4;

  if (!*(*(a1[6] + 8) + 40))
  {
    v8 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v5;
      _os_log_error_impl(&dword_23224A000, v8, OS_LOG_TYPE_ERROR, "PPSocialHighlightMLScorer: unable to score: %@", buf, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (PPSocialHighlightMLScorer)initWithModel:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = PPSocialHighlightMLScorer;
  v6 = [(PPSocialHighlightMLScorer *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_model, a3);
    v8 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"SocialHighlightScorer-queue"];
    modelQueue = v7->_modelQueue;
    v7->_modelQueue = v8;
  }

  return v7;
}

+ (id)variantEncodingForVariant:(id)a3
{
  v3 = variantEncodingForVariant___pasOnceToken22;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&variantEncodingForVariant___pasOnceToken22, &__block_literal_global_115);
  }

  v5 = [PPSocialHighlightMLScorer _oneHotEncodeString:v4 columns:variantEncodingForVariant___pasExprOnceResult prefix:@"variant"];

  return v5;
}

void __55__PPSocialHighlightMLScorer_variantEncodingForVariant___block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_autoreleasePoolPush();
  v2 = objc_alloc(MEMORY[0x277CBEB98]);
  v3 = [v2 initWithObjects:{*MEMORY[0x277D3A748], *MEMORY[0x277D3A740], 0}];
  objc_autoreleasePoolPop(v1);
  v4 = variantEncodingForVariant___pasExprOnceResult;
  variantEncodingForVariant___pasExprOnceResult = v3;

  objc_autoreleasePoolPop(v0);
}

+ (id)_oneHotEncodeString:(id)a3 columns:(id)a4 prefix:(id)a5
{
  v43 = *MEMORY[0x277D85DE8];
  v32 = a3;
  v7 = a4;
  v31 = a5;
  v8 = objc_autoreleasePoolPush();
  v33 = objc_opt_new();
  v39 = 0;
  v9 = [objc_alloc(MEMORY[0x277CBFF48]) initWithShape:&unk_2847852E0 dataType:65600 error:&v39];
  v10 = v39;
  if (v9)
  {
    [v9 setObject:&unk_284786090 atIndexedSubscript:0];
    v11 = [objc_alloc(MEMORY[0x277CBFF48]) initWithShape:&unk_2847852F8 dataType:65600 error:0];
    v12 = v11;
    if (v11)
    {
      v27 = v10;
      v30 = v8;
      [v11 setObject:&unk_2847860A0 atIndexedSubscript:0];
      v29 = v9;
      v13 = [MEMORY[0x277CBFEF8] featureValueWithMultiArray:v9];
      v28 = v12;
      v14 = [MEMORY[0x277CBFEF8] featureValueWithMultiArray:v12];
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v15 = v7;
      v16 = [v15 countByEnumeratingWithState:&v35 objects:v40 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v36;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v36 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v35 + 1) + 8 * i);
            if ([v32 isEqual:v20])
            {
              v21 = v13;
            }

            else
            {
              v21 = v14;
            }

            v22 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@_%@", v31, v20];
            [v33 setObject:v21 forKeyedSubscript:v22];
          }

          v17 = [v15 countByEnumeratingWithState:&v35 objects:v40 count:16];
        }

        while (v17);
      }

      v34 = v10;
      v23 = [objc_alloc(MEMORY[0x277CBFED0]) initWithDictionary:v33 error:&v34];
      v10 = v34;

      v8 = v30;
      v12 = v28;
      if (!v23)
      {
        v24 = pp_default_log_handle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412290;
          v42 = v10;
          _os_log_fault_impl(&dword_23224A000, v24, OS_LOG_TYPE_FAULT, "PPSocialHighlightMLScorer: unable to allocate one hot encoded feature provider. %@", buf, 0xCu);
        }
      }

      v9 = v29;
    }

    else
    {
      v13 = pp_social_highlights_log_handle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v42 = v10;
        _os_log_error_impl(&dword_23224A000, v13, OS_LOG_TYPE_ERROR, "PPSocialHighlightMLScorer: unable to allocate multiarray: %@", buf, 0xCu);
      }

      v23 = 0;
    }
  }

  else
  {
    v12 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v42 = v10;
      _os_log_error_impl(&dword_23224A000, v12, OS_LOG_TYPE_ERROR, "PPSocialHighlightMLScorer: unable to allocate multiarray: %@", buf, 0xCu);
    }

    v23 = 0;
  }

  objc_autoreleasePoolPop(v8);
  v25 = *MEMORY[0x277D85DE8];

  return v23;
}

+ (id)_singleItemMultiArrayValueWithConstantValue:(double)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = objc_autoreleasePoolPush();
  v12 = 0;
  v5 = [objc_alloc(MEMORY[0x277CBFF48]) initWithShape:&unk_2847852C8 dataType:65600 error:&v12];
  v6 = v12;
  if (v5)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
    [v5 setObject:v7 atIndexedSubscript:0];

    v8 = [MEMORY[0x277CBFEF8] featureValueWithMultiArray:v5];
  }

  else
  {
    v9 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v6;
      _os_log_error_impl(&dword_23224A000, v9, OS_LOG_TYPE_ERROR, "PPSocialHighlightMLScorer: unable to allocate multiarray: %@", buf, 0xCu);
    }

    v8 = 0;
  }

  objc_autoreleasePoolPop(v4);
  v10 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)clientEncodingForClientId:(id)a3 applicationIdentifiers:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (clientEncodingForClientId_applicationIdentifiers___pasOnceToken12 != -1)
  {
    dispatch_once(&clientEncodingForClientId_applicationIdentifiers___pasOnceToken12, &__block_literal_global_89);
  }

  v7 = clientEncodingForClientId_applicationIdentifiers___pasExprOnceResult;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__PPSocialHighlightMLScorer_clientEncodingForClientId_applicationIdentifiers___block_invoke_2;
  block[3] = &unk_2789790A8;
  v8 = v7;
  v23 = v8;
  if (clientEncodingForClientId_applicationIdentifiers___pasOnceToken13 != -1)
  {
    dispatch_once(&clientEncodingForClientId_applicationIdentifiers___pasOnceToken13, block);
  }

  v9 = clientEncodingForClientId_applicationIdentifiers___pasExprOnceResult_91;

  if (clientEncodingForClientId_applicationIdentifiers___pasOnceToken14 != -1)
  {
    dispatch_once(&clientEncodingForClientId_applicationIdentifiers___pasOnceToken14, &__block_literal_global_94);
  }

  v10 = clientEncodingForClientId_applicationIdentifiers___pasExprOnceResult_92;
  if (v5)
  {
    if ((-[__CFString isEqualToString:](v5, "isEqualToString:", *MEMORY[0x277D3A590]) & 1) != 0 || (-[__CFString isEqualToString:](v5, "isEqualToString:", *MEMORY[0x277D3A5A0]) & 1) != 0 || ([v8 containsObject:v5] & 1) == 0 && +[PPSocialHighlightStorage entitlementStatusForClient:applicationIdentifiers:](PPSocialHighlightStorage, "entitlementStatusForClient:applicationIdentifiers:", v5, v6) == 2)
    {

      v5 = @"WebBrowser";
    }

    v11 = [v9 dictionary];
    v12 = [v11 mutableCopy];

    v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@_%@", @"client", v5];
    [v12 setObject:v10 forKeyedSubscript:v13];

    v21 = 0;
    v14 = [objc_alloc(MEMORY[0x277CBFED0]) initWithDictionary:v12 error:&v21];
    v15 = v21;
    v16 = v14;
    if (!v14)
    {
      v20 = pp_social_highlights_log_handle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v25 = v15;
        _os_log_error_impl(&dword_23224A000, v20, OS_LOG_TYPE_ERROR, "PPSocialHighlightMLScorer: failed to allocate client dictionary, returning fallback to ensure content remains hidden. %@", buf, 0xCu);
      }

      v16 = v9;
    }

    v17 = v16;
  }

  else
  {
    v17 = v9;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

void __78__PPSocialHighlightMLScorer_clientEncodingForClientId_applicationIdentifiers___block_invoke_2(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [PPSocialHighlightMLScorer _oneHotEncodeString:0 columns:*(a1 + 32) prefix:@"client"];
  v4 = clientEncodingForClientId_applicationIdentifiers___pasExprOnceResult_91;
  clientEncodingForClientId_applicationIdentifiers___pasExprOnceResult_91 = v3;

  objc_autoreleasePoolPop(v2);
}

void __78__PPSocialHighlightMLScorer_clientEncodingForClientId_applicationIdentifiers___block_invoke_3()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [PPSocialHighlightMLScorer _singleItemMultiArrayValueWithConstantValue:1.0];
  v2 = clientEncodingForClientId_applicationIdentifiers___pasExprOnceResult_92;
  clientEncodingForClientId_applicationIdentifiers___pasExprOnceResult_92 = v1;

  objc_autoreleasePoolPop(v0);
}

void __78__PPSocialHighlightMLScorer_clientEncodingForClientId_applicationIdentifiers___block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_autoreleasePoolPush();
  v2 = objc_alloc(MEMORY[0x277CBEB98]);
  v3 = [v2 initWithObjects:{*MEMORY[0x277D3A5B8], *MEMORY[0x277D3A5C8], *MEMORY[0x277D3A5B0], *MEMORY[0x277D3A598], *MEMORY[0x277D3A5A8], *MEMORY[0x277D3A5E8], @"WebBrowser", 0}];
  objc_autoreleasePoolPop(v1);
  v4 = clientEncodingForClientId_applicationIdentifiers___pasExprOnceResult;
  clientEncodingForClientId_applicationIdentifiers___pasExprOnceResult = v3;

  objc_autoreleasePoolPop(v0);
}

void __47__PPSocialHighlightMLScorer_sharedTopKInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [objc_alloc(MEMORY[0x277D425E8]) initWithBlock:&__block_literal_global_85_6334 idleTimeout:300.0];
  v2 = sharedTopKInstance__pasExprOnceResult;
  sharedTopKInstance__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

void __52__PPSocialHighlightMLScorer_sharedFirstPassInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [objc_alloc(MEMORY[0x277D425E8]) initWithBlock:&__block_literal_global_81 idleTimeout:300.0];
  v2 = sharedFirstPassInstance__pasExprOnceResult;
  sharedFirstPassInstance__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

+ (id)_scorerFromModelFactorName:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = +[PPTrialWrapper sharedInstance];
  v11 = 0;
  v5 = [v4 mlModelForModelName:v3 namespaceName:@"PERSONALIZATION_PORTRAIT_SOCIAL_HIGHLIGHT" error:&v11];

  v6 = v11;
  if (!v5)
  {
    v7 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v6;
      _os_log_error_impl(&dword_23224A000, v7, OS_LOG_TYPE_ERROR, "PPSocialHighlightMLScorer: unable to fetch assets: %@", buf, 0xCu);
    }
  }

  v8 = [[PPSocialHighlightMLScorer alloc] initWithModel:v5];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

@end