@interface ATXUniversalBlendingLayer
+ (void)logLongDescriptionForBlendingLayerString:(id)a3 prefix:(id)a4 shouldUseDefaultLogLevel:(BOOL)a5 limit:(unint64_t)a6;
- (ATXUniversalBlendingLayer)initWithSuggestionPreprocessor:(id)a3 delegate:(id)a4 layoutSelectorsForConsumerSubTypes:(id)a5 blendingSessionLogger:(id)a6 hyperParameters:(id)a7;
- (id)rerankedSuggestions:(id)a3;
- (id)rerankedValidSuggestionsFromClientModelSuggestions:(id)a3;
- (void)promoteSuggestionsFromClientModelWithIdentifier:(id)a3;
- (void)updateSuggestionsForAllConsumerSubTypesWithClientModelSuggestions:(id)a3;
- (void)updateSuggestionsForConsumerSubTypes:(id)a3 clientModelSuggestions:(id)a4;
@end

@implementation ATXUniversalBlendingLayer

- (ATXUniversalBlendingLayer)initWithSuggestionPreprocessor:(id)a3 delegate:(id)a4 layoutSelectorsForConsumerSubTypes:(id)a5 blendingSessionLogger:(id)a6 hyperParameters:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v29.receiver = self;
  v29.super_class = ATXUniversalBlendingLayer;
  v18 = [(ATXUniversalBlendingLayer *)&v29 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_suggestionPreprocessor, a3);
    v20 = objc_alloc(MEMORY[0x1E695E000]);
    v21 = [v20 initWithSuiteName:*MEMORY[0x1E698B030]];
    v22 = [v21 stringForKey:@"BlendingLayerPromotedClientModel"];
    promotedClientModelId = v19->_promotedClientModelId;
    v19->_promotedClientModelId = v22;

    objc_storeStrong(&v19->_delegate, a4);
    v24 = [v15 copy];
    layoutSelectorsForConsumerSubTypes = v19->_layoutSelectorsForConsumerSubTypes;
    v19->_layoutSelectorsForConsumerSubTypes = v24;

    objc_storeStrong(&v19->_blendingSessionLogger, a6);
    objc_storeStrong(&v19->_hyperParameters, a7);
    v26 = objc_opt_new();
    feedbackWriter = v19->_feedbackWriter;
    v19->_feedbackWriter = v26;
  }

  return v19;
}

- (void)updateSuggestionsForAllConsumerSubTypesWithClientModelSuggestions:(id)a3
{
  v4 = a3;
  v5 = __atxlog_handle_blending();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DEFC4000, v5, OS_LOG_TYPE_DEFAULT, "Blending: Blending Layer asked to update suggestions for all consumer subtypes. [BLENDING REFRESH START]", buf, 2u);
  }

  v6 = [objc_opt_class() validConsumerSubTypesForLayoutGeneration];
  [(ATXUniversalBlendingLayer *)self updateSuggestionsForConsumerSubTypes:v6 clientModelSuggestions:v4];

  v7 = __atxlog_handle_blending();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_1DEFC4000, v7, OS_LOG_TYPE_DEFAULT, "Blending: Blending Layer finished updating suggestions for all consumer subtypes. [BLENDING REFRESH END]", v8, 2u);
  }
}

- (void)updateSuggestionsForConsumerSubTypes:(id)a3 clientModelSuggestions:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  sel_getName(a2);
  v23 = os_transaction_create();
  v9 = __atxlog_handle_blending();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DEFC4000, v9, OS_LOG_TYPE_DEFAULT, "Blending: Considering executing Blending Layer session logging before executing Blending Layer refresh.", buf, 2u);
  }

  [(ATXBlendingLayerSessionLoggerProtocol *)self->_blendingSessionLogger logCurrentSessionIfPossible];
  v10 = __atxlog_handle_blending();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DEFC4000, v10, OS_LOG_TYPE_DEFAULT, "Blending: Done executing Blending Layer session logging before executing Blending Layer refresh.", buf, 2u);
  }

  v11 = [(ATXUniversalBlendingLayer *)self rerankedValidSuggestionsFromClientModelSuggestions:v8];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v12 = v7;
  v13 = [v12 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v25;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v24 + 1) + 8 * i);
        v18 = [v17 integerValue];
        v19 = [objc_opt_class() validConsumerSubTypesForLayoutGeneration];
        LOBYTE(v17) = [v19 containsObject:v17];

        if (v17)
        {
          [(ATXUniversalBlendingLayer *)self updateSuggestionsForConsumerSubType:v18 rankedSuggestions:v11 clientModelSuggestions:v8];
        }

        else
        {
          v20 = __atxlog_handle_blending();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = [MEMORY[0x1E698B028] stringForConsumerSubtype:v18];
            *buf = 138412290;
            v29 = v21;
            _os_log_impl(&dword_1DEFC4000, v20, OS_LOG_TYPE_DEFAULT, "Ignoring UI Consumer because it's not allowed. UI Consumer: %@", buf, 0xCu);
          }
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v14);
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (id)rerankedValidSuggestionsFromClientModelSuggestions:(id)a3
{
  v4 = [(ATXUniversalBlendingLayer *)self rerankedSuggestions:a3];
  v5 = [(ATXSuggestionPreprocessorProtocol *)self->_suggestionPreprocessor suggestionsWithInvalidSuggestionsRemoved:v4];

  return v5;
}

- (id)rerankedSuggestions:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = __atxlog_handle_blending();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v21) = 0;
    _os_log_impl(&dword_1DEFC4000, v5, OS_LOG_TYPE_DEFAULT, "Blending: Blending Layer is reranking suggestions.", &v21, 2u);
  }

  v6 = [[ATXSuggestionReranker alloc] initWithClientModelSuggestions:v4 promoteSuggestionsFromClientModel:self->_promotedClientModelId hyperParameters:self->_hyperParameters];
  v7 = [(ATXSuggestionReranker *)v6 rerankedSuggestions];
  v8 = objc_autoreleasePoolPush();
  v9 = __atxlog_handle_blending();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v21) = 0;
    _os_log_impl(&dword_1DEFC4000, v9, OS_LOG_TYPE_DEFAULT, "Blending: Blending Layer finished reranking suggestions.", &v21, 2u);
  }

  v10 = __atxlog_handle_blending();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v7 count];
    if (v11)
    {
      v12 = [v7 objectAtIndexedSubscript:0];
    }

    else
    {
      v12 = @"None";
    }

    v21 = 138412290;
    v22 = v12;
    _os_log_impl(&dword_1DEFC4000, v10, OS_LOG_TYPE_DEFAULT, "Blending: 1st highest ranked suggestion: %@", &v21, 0xCu);
    if (v11)
    {
    }
  }

  v13 = __atxlog_handle_blending();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v7 count];
    if (v14 < 2)
    {
      v15 = @"None";
    }

    else
    {
      v15 = [v7 objectAtIndexedSubscript:1];
    }

    v21 = 138412290;
    v22 = v15;
    _os_log_impl(&dword_1DEFC4000, v13, OS_LOG_TYPE_DEFAULT, "Blending: 2nd highest ranked suggestion: %@", &v21, 0xCu);
    if (v14 >= 2)
    {
    }
  }

  v16 = __atxlog_handle_blending();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [v7 count];
    if (v17 < 3)
    {
      v18 = @"None";
    }

    else
    {
      v18 = [v7 objectAtIndexedSubscript:2];
    }

    v21 = 138412290;
    v22 = v18;
    _os_log_impl(&dword_1DEFC4000, v16, OS_LOG_TYPE_DEFAULT, "Blending: 3rd highest ranked suggestion: %@", &v21, 0xCu);
    if (v17 >= 3)
    {
    }
  }

  objc_autoreleasePoolPop(v8);
  v19 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)promoteSuggestionsFromClientModelWithIdentifier:(id)a3
{
  v4 = [a3 copy];
  promotedClientModelId = self->_promotedClientModelId;
  self->_promotedClientModelId = v4;

  v6 = objc_alloc(MEMORY[0x1E695E000]);
  v7 = [v6 initWithSuiteName:*MEMORY[0x1E698B030]];
  [v7 setObject:self->_promotedClientModelId forKey:@"BlendingLayerPromotedClientModel"];
}

+ (void)logLongDescriptionForBlendingLayerString:(id)a3 prefix:(id)a4 shouldUseDefaultLogLevel:(BOOL)a5 limit:(unint64_t)a6
{
  v7 = a5;
  v34 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = [MEMORY[0x1E696AB08] newlineCharacterSet];
  v25 = v9;
  v12 = [v9 componentsSeparatedByCharactersInSet:v11];

  v13 = [v12 count];
  if (v13 >= a6)
  {
    v14 = a6;
  }

  else
  {
    v14 = v13;
  }

  if (v14)
  {
    for (i = 0; i < v21; ++i)
    {
      v16 = __atxlog_handle_blending_internal_cache();
      v17 = v16;
      if (v7)
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v18 = [v12 count];
          v19 = [v12 objectAtIndexedSubscript:i];
          *buf = 134218754;
          v27 = i + 1;
          v28 = 2048;
          v29 = v18;
          v30 = 2112;
          v31 = v10;
          v32 = 2112;
          v33 = v19;
          _os_log_impl(&dword_1DEFC4000, v17, OS_LOG_TYPE_DEFAULT, "[%lu of %lu] %@ %@", buf, 0x2Au);
        }
      }

      else if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v22 = [v12 count];
        v23 = [v12 objectAtIndexedSubscript:i];
        *buf = 134218754;
        v27 = i + 1;
        v28 = 2048;
        v29 = v22;
        v30 = 2112;
        v31 = v10;
        v32 = 2112;
        v33 = v23;
        _os_log_debug_impl(&dword_1DEFC4000, v17, OS_LOG_TYPE_DEBUG, "[%lu of %lu] %@ %@", buf, 0x2Au);
      }

      v20 = [v12 count];
      if (v20 >= a6)
      {
        v21 = a6;
      }

      else
      {
        v21 = v20;
      }
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)selectedLayoutForUIConsumer:(unsigned __int8)a1 rankedSuggestions:.cold.1(unsigned __int8 a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [MEMORY[0x1E698B028] safeStringForConsumerSubtype:a1];
  OUTLINED_FUNCTION_0_4(&dword_1DEFC4000, v2, v3, "Unable to generate layout for consumerSubType %@ because no layout selector was provided.", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)updateCachedLayout:(unsigned __int8)a1 uiConsumer:clientModelSuggestions:.cold.1(unsigned __int8 a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [MEMORY[0x1E698B028] stringForConsumerSubtype:a1];
  OUTLINED_FUNCTION_0_4(&dword_1DEFC4000, v2, v3, "Blending: Failed to update the cache for %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x1E69E9840];
}

@end