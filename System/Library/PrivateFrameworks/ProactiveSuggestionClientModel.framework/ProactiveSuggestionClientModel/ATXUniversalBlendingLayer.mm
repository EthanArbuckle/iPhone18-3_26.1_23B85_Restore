@interface ATXUniversalBlendingLayer
+ (void)logLongDescriptionForBlendingLayerString:(id)string prefix:(id)prefix shouldUseDefaultLogLevel:(BOOL)level limit:(unint64_t)limit;
- (ATXUniversalBlendingLayer)initWithSuggestionPreprocessor:(id)preprocessor delegate:(id)delegate layoutSelectorsForConsumerSubTypes:(id)types blendingSessionLogger:(id)logger hyperParameters:(id)parameters;
- (id)rerankedSuggestions:(id)suggestions;
- (id)rerankedValidSuggestionsFromClientModelSuggestions:(id)suggestions;
- (void)promoteSuggestionsFromClientModelWithIdentifier:(id)identifier;
- (void)updateSuggestionsForAllConsumerSubTypesWithClientModelSuggestions:(id)suggestions;
- (void)updateSuggestionsForConsumerSubTypes:(id)types clientModelSuggestions:(id)suggestions;
@end

@implementation ATXUniversalBlendingLayer

- (ATXUniversalBlendingLayer)initWithSuggestionPreprocessor:(id)preprocessor delegate:(id)delegate layoutSelectorsForConsumerSubTypes:(id)types blendingSessionLogger:(id)logger hyperParameters:(id)parameters
{
  preprocessorCopy = preprocessor;
  delegateCopy = delegate;
  typesCopy = types;
  loggerCopy = logger;
  parametersCopy = parameters;
  v29.receiver = self;
  v29.super_class = ATXUniversalBlendingLayer;
  v18 = [(ATXUniversalBlendingLayer *)&v29 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_suggestionPreprocessor, preprocessor);
    v20 = objc_alloc(MEMORY[0x1E695E000]);
    v21 = [v20 initWithSuiteName:*MEMORY[0x1E698B030]];
    v22 = [v21 stringForKey:@"BlendingLayerPromotedClientModel"];
    promotedClientModelId = v19->_promotedClientModelId;
    v19->_promotedClientModelId = v22;

    objc_storeStrong(&v19->_delegate, delegate);
    v24 = [typesCopy copy];
    layoutSelectorsForConsumerSubTypes = v19->_layoutSelectorsForConsumerSubTypes;
    v19->_layoutSelectorsForConsumerSubTypes = v24;

    objc_storeStrong(&v19->_blendingSessionLogger, logger);
    objc_storeStrong(&v19->_hyperParameters, parameters);
    v26 = objc_opt_new();
    feedbackWriter = v19->_feedbackWriter;
    v19->_feedbackWriter = v26;
  }

  return v19;
}

- (void)updateSuggestionsForAllConsumerSubTypesWithClientModelSuggestions:(id)suggestions
{
  suggestionsCopy = suggestions;
  v5 = __atxlog_handle_blending();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DEFC4000, v5, OS_LOG_TYPE_DEFAULT, "Blending: Blending Layer asked to update suggestions for all consumer subtypes. [BLENDING REFRESH START]", buf, 2u);
  }

  validConsumerSubTypesForLayoutGeneration = [objc_opt_class() validConsumerSubTypesForLayoutGeneration];
  [(ATXUniversalBlendingLayer *)self updateSuggestionsForConsumerSubTypes:validConsumerSubTypesForLayoutGeneration clientModelSuggestions:suggestionsCopy];

  v7 = __atxlog_handle_blending();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_1DEFC4000, v7, OS_LOG_TYPE_DEFAULT, "Blending: Blending Layer finished updating suggestions for all consumer subtypes. [BLENDING REFRESH END]", v8, 2u);
  }
}

- (void)updateSuggestionsForConsumerSubTypes:(id)types clientModelSuggestions:(id)suggestions
{
  v31 = *MEMORY[0x1E69E9840];
  typesCopy = types;
  suggestionsCopy = suggestions;
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

  v11 = [(ATXUniversalBlendingLayer *)self rerankedValidSuggestionsFromClientModelSuggestions:suggestionsCopy];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v12 = typesCopy;
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
        integerValue = [v17 integerValue];
        validConsumerSubTypesForLayoutGeneration = [objc_opt_class() validConsumerSubTypesForLayoutGeneration];
        LOBYTE(v17) = [validConsumerSubTypesForLayoutGeneration containsObject:v17];

        if (v17)
        {
          [(ATXUniversalBlendingLayer *)self updateSuggestionsForConsumerSubType:integerValue rankedSuggestions:v11 clientModelSuggestions:suggestionsCopy];
        }

        else
        {
          v20 = __atxlog_handle_blending();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = [MEMORY[0x1E698B028] stringForConsumerSubtype:integerValue];
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

- (id)rerankedValidSuggestionsFromClientModelSuggestions:(id)suggestions
{
  v4 = [(ATXUniversalBlendingLayer *)self rerankedSuggestions:suggestions];
  v5 = [(ATXSuggestionPreprocessorProtocol *)self->_suggestionPreprocessor suggestionsWithInvalidSuggestionsRemoved:v4];

  return v5;
}

- (id)rerankedSuggestions:(id)suggestions
{
  v23 = *MEMORY[0x1E69E9840];
  suggestionsCopy = suggestions;
  v5 = __atxlog_handle_blending();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v21) = 0;
    _os_log_impl(&dword_1DEFC4000, v5, OS_LOG_TYPE_DEFAULT, "Blending: Blending Layer is reranking suggestions.", &v21, 2u);
  }

  v6 = [[ATXSuggestionReranker alloc] initWithClientModelSuggestions:suggestionsCopy promoteSuggestionsFromClientModel:self->_promotedClientModelId hyperParameters:self->_hyperParameters];
  rerankedSuggestions = [(ATXSuggestionReranker *)v6 rerankedSuggestions];
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
    v11 = [rerankedSuggestions count];
    if (v11)
    {
      v12 = [rerankedSuggestions objectAtIndexedSubscript:0];
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
    v14 = [rerankedSuggestions count];
    if (v14 < 2)
    {
      v15 = @"None";
    }

    else
    {
      v15 = [rerankedSuggestions objectAtIndexedSubscript:1];
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
    v17 = [rerankedSuggestions count];
    if (v17 < 3)
    {
      v18 = @"None";
    }

    else
    {
      v18 = [rerankedSuggestions objectAtIndexedSubscript:2];
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

  return rerankedSuggestions;
}

- (void)promoteSuggestionsFromClientModelWithIdentifier:(id)identifier
{
  v4 = [identifier copy];
  promotedClientModelId = self->_promotedClientModelId;
  self->_promotedClientModelId = v4;

  v6 = objc_alloc(MEMORY[0x1E695E000]);
  v7 = [v6 initWithSuiteName:*MEMORY[0x1E698B030]];
  [v7 setObject:self->_promotedClientModelId forKey:@"BlendingLayerPromotedClientModel"];
}

+ (void)logLongDescriptionForBlendingLayerString:(id)string prefix:(id)prefix shouldUseDefaultLogLevel:(BOOL)level limit:(unint64_t)limit
{
  levelCopy = level;
  v34 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  prefixCopy = prefix;
  newlineCharacterSet = [MEMORY[0x1E696AB08] newlineCharacterSet];
  v25 = stringCopy;
  v12 = [stringCopy componentsSeparatedByCharactersInSet:newlineCharacterSet];

  v13 = [v12 count];
  if (v13 >= limit)
  {
    limitCopy = limit;
  }

  else
  {
    limitCopy = v13;
  }

  if (limitCopy)
  {
    for (i = 0; i < limitCopy2; ++i)
    {
      v16 = __atxlog_handle_blending_internal_cache();
      v17 = v16;
      if (levelCopy)
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
          v31 = prefixCopy;
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
        v31 = prefixCopy;
        v32 = 2112;
        v33 = v23;
        _os_log_debug_impl(&dword_1DEFC4000, v17, OS_LOG_TYPE_DEBUG, "[%lu of %lu] %@ %@", buf, 0x2Au);
      }

      v20 = [v12 count];
      if (v20 >= limit)
      {
        limitCopy2 = limit;
      }

      else
      {
        limitCopy2 = v20;
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