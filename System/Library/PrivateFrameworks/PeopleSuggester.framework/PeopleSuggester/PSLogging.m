@interface PSLogging
@end

@implementation PSLogging

void __28___PSLogging_generalChannel__block_invoke()
{
  v0 = os_log_create("com.apple.PeopleSuggester", "general");
  v1 = generalChannel_generalChannel;
  generalChannel_generalChannel = v0;

  if (!generalChannel_generalChannel)
  {
    v2 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __28___PSLogging_generalChannel__block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

uint64_t __32___PSLogging_suggestionSignpost__block_invoke()
{
  suggestionSignpost_suggestionSignpost = os_log_create("com.apple.PeopleSuggester", "signpost");

  return MEMORY[0x1EEE66BB8]();
}

void __35___PSLogging_messagePinningChannel__block_invoke()
{
  v0 = os_log_create("com.apple.PeopleSuggester", "messagePinning");
  v1 = messagePinningChannel_messagePinningChannel;
  messagePinningChannel_messagePinningChannel = v0;

  if (!messagePinningChannel_messagePinningChannel)
  {
    v2 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __35___PSLogging_messagePinningChannel__block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __38___PSLogging_familyRecommenderChannel__block_invoke()
{
  v0 = os_log_create("com.apple.PeopleSuggester", "family");
  v1 = familyRecommenderChannel_generalChannel;
  familyRecommenderChannel_generalChannel = v0;

  if (!familyRecommenderChannel_generalChannel)
  {
    v2 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __38___PSLogging_familyRecommenderChannel__block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __31___PSLogging_heuristicsChannel__block_invoke()
{
  v0 = os_log_create("com.apple.PeopleSuggester", "heuristic");
  v1 = heuristicsChannel_heuristicsChannel;
  heuristicsChannel_heuristicsChannel = v0;

  if (!heuristicsChannel_heuristicsChannel)
  {
    v2 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __31___PSLogging_heuristicsChannel__block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __33___PSLogging_coreBehaviorChannel__block_invoke()
{
  v0 = os_log_create("com.apple.PeopleSuggester", "CoreBehavior");
  v1 = coreBehaviorChannel_coreBehaviorChannel;
  coreBehaviorChannel_coreBehaviorChannel = v0;

  if (!coreBehaviorChannel_coreBehaviorChannel)
  {
    v2 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __33___PSLogging_coreBehaviorChannel__block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __24___PSLogging_knnChannel__block_invoke()
{
  v0 = os_log_create("com.apple.PeopleSuggester", "Knn");
  v1 = knnChannel_knnChannel;
  knnChannel_knnChannel = v0;

  if (!knnChannel_knnChannel)
  {
    v2 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __24___PSLogging_knnChannel__block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __29___PSLogging_feedbackChannel__block_invoke()
{
  v0 = os_log_create("com.apple.PeopleSuggester", "feedback");
  v1 = feedbackChannel_feedbackChannel;
  feedbackChannel_feedbackChannel = v0;

  if (!feedbackChannel_feedbackChannel)
  {
    v2 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __29___PSLogging_feedbackChannel__block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __35___PSLogging_shareExtensionChannel__block_invoke()
{
  v0 = os_log_create("com.apple.PeopleSuggester", "shareextension");
  v1 = shareExtensionChannel_shareExtensionChannel;
  shareExtensionChannel_shareExtensionChannel = v0;

  if (!shareExtensionChannel_shareExtensionChannel)
  {
    v2 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __35___PSLogging_shareExtensionChannel__block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __34___PSLogging_mediaAnalysisChannel__block_invoke()
{
  v0 = os_log_create("com.apple.PeopleSuggester", "mediaanalysis");
  v1 = mediaAnalysisChannel_mediaAnalysisChannel;
  mediaAnalysisChannel_mediaAnalysisChannel = v0;

  if (!mediaAnalysisChannel_mediaAnalysisChannel)
  {
    v2 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __34___PSLogging_mediaAnalysisChannel__block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __37___PSLogging_contactEmbeddingChannel__block_invoke()
{
  v0 = os_log_create("com.apple.PeopleSuggester", "contactEmbedding");
  v1 = contactEmbeddingChannel_contactEmbeddingChannel;
  contactEmbeddingChannel_contactEmbeddingChannel = v0;

  if (!contactEmbeddingChannel_contactEmbeddingChannel)
  {
    v2 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __37___PSLogging_contactEmbeddingChannel__block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __38___PSLogging_featureGenerationChannel__block_invoke()
{
  v0 = os_log_create("com.apple.PeopleSuggester", "featureGeneration");
  v1 = featureGenerationChannel_featureGenerationChannel;
  featureGenerationChannel_featureGenerationChannel = v0;

  if (!featureGenerationChannel_featureGenerationChannel)
  {
    v2 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __38___PSLogging_featureGenerationChannel__block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __28___PSLogging_rewriteChannel__block_invoke()
{
  v0 = os_log_create("com.apple.PeopleSuggester", "PeopleSuggesterRewrite");
  v1 = rewriteChannel_rewriteChannel;
  rewriteChannel_rewriteChannel = v0;

  if (!rewriteChannel_rewriteChannel)
  {
    v2 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __28___PSLogging_rewriteChannel__block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __43___PSLogging_psBackgroundProcessingChannel__block_invoke()
{
  v0 = os_log_create("com.apple.PeopleSuggester", "psBackgroundProcessing");
  v1 = psBackgroundProcessingChannel_psBackgroundProcessingChannel;
  psBackgroundProcessingChannel_psBackgroundProcessingChannel = v0;

  if (!psBackgroundProcessingChannel_psBackgroundProcessingChannel)
  {
    v2 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __43___PSLogging_psBackgroundProcessingChannel__block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

@end