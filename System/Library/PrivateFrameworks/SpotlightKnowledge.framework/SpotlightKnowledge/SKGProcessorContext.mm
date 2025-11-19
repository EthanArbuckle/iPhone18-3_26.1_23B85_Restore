@interface SKGProcessorContext
+ (id)sharedContext;
- (BOOL)enableCalendarEventClassification;
- (BOOL)enableDocumentUnderstanding;
- (BOOL)enableEmbeddings;
- (BOOL)enableExtractions;
- (BOOL)enableKeyphrases;
- (BOOL)enableReceiverDebugging;
- (BOOL)keyphrasesSupportsBundle:(id)a3 domainID:(id)a4;
- (SKGProcessorContext)init;
- (SKGProcessorContext)initWithPreferredLanguages:(id)a3 locale:(id)a4;
- (id)cleanupAttributes;
- (id)docUnderstandingFetchAttributes;
- (id)docUnderstandingIncludeBundles;
- (id)embeddingExcludeBundles;
- (id)embeddingExcludeContentTypes;
- (id)embeddingExcludeDomainIdentifier;
- (id)embeddingFetchAttributes;
- (id)excludeBundles;
- (id)keyphraseExcludeBundles;
- (id)keyphraseFetchAttributes;
- (id)peopleFetchAttributes;
- (id)reindexExcludeBundles;
- (id)suggestedEventsAllowListAttributes;
- (id)suggestedEventsFetchAttributes;
- (void)enableEmbeddings;
@end

@implementation SKGProcessorContext

- (BOOL)enableDocumentUnderstanding
{
  v2 = [MEMORY[0x1E6964E20] sharedInstance];
  v3 = [v2 isTextPersonExtractionAvailable];

  if (!v3)
  {
    return 0;
  }

  return _os_feature_enabled_impl();
}

uint64_t __36__SKGProcessorContext_sharedContext__block_invoke()
{
  sharedContext_sSharedContext = objc_alloc_init(SKGProcessorContext);

  return MEMORY[0x1EEE66BB8]();
}

- (SKGProcessorContext)init
{
  v5.receiver = self;
  v5.super_class = SKGProcessorContext;
  v2 = [(SKGProcessorContext *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SKGProcessorContext *)v2 commonInitWithBundleIdentifier:@"com.apple.spotlight.contacts"];
  }

  return v3;
}

+ (id)sharedContext
{
  if (sharedContext_onceToken != -1)
  {
    +[SKGProcessorContext sharedContext];
  }

  v3 = sharedContext_sSharedContext;

  return v3;
}

- (BOOL)enableKeyphrases
{
  if (_os_feature_enabled_impl())
  {
    return 0;
  }

  else
  {
    return _os_feature_enabled_impl() ^ 1;
  }
}

- (BOOL)enableEmbeddings
{
  if (_os_feature_enabled_impl())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = [MEMORY[0x1E69D3DC8] sharedInstance];
      v3 = [v2 deviceCanGenerateEmbeddings];

      if (v3)
      {
        return 1;
      }
    }
  }

  if (SKGLogGetCurrentLoggingLevel() >= 7)
  {
    v5 = SKGLogInit();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(SKGProcessorContext *)v5 enableEmbeddings];
    }
  }

  return 0;
}

- (id)embeddingExcludeBundles
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__SKGProcessorContext_embeddingExcludeBundles__block_invoke;
  block[3] = &unk_1E74B8070;
  block[4] = self;
  if (embeddingExcludeBundles_onceEmbExcludeToken != -1)
  {
    dispatch_once(&embeddingExcludeBundles_onceEmbExcludeToken, block);
  }

  return embeddingExcludeBundles_gEmbeddingExcludeBundles;
}

void __46__SKGProcessorContext_embeddingExcludeBundles__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = [*(a1 + 32) excludeBundles];
  [v2 addObjectsFromArray:v3];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [&unk_1F0BDD120 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(&unk_1F0BDD120);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if (([v2 containsObject:v8] & 1) == 0)
        {
          [v2 addObject:v8];
        }
      }

      v5 = [&unk_1F0BDD120 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = embeddingExcludeBundles_gEmbeddingExcludeBundles;
  embeddingExcludeBundles_gEmbeddingExcludeBundles = v2;

  v10 = *MEMORY[0x1E69E9840];
}

- (id)excludeBundles
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__SKGProcessorContext_excludeBundles__block_invoke;
  block[3] = &unk_1E74B8070;
  block[4] = self;
  if (excludeBundles_onceExcludeToken != -1)
  {
    dispatch_once(&excludeBundles_onceExcludeToken, block);
  }

  return excludeBundles_gExcludeBundles;
}

void __37__SKGProcessorContext_excludeBundles__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v2 addObject:@"com.apple.spotlight.contacts"];
  [v2 addObject:@"com.apple.searchd"];
  [v2 addObject:@"com.apple.suggestd"];
  [v2 addObject:@"com.apple.cslinguistics"];
  [v2 addObject:@"com.apple.pommesctl"];
  [v2 addObject:@"com.apple.usernotificationsd"];
  v3 = [*(a1 + 32) bundleIdentifier];
  v4 = [v2 containsObject:v3];

  if ((v4 & 1) == 0)
  {
    v5 = [*(a1 + 32) bundleIdentifier];
    [v2 addObject:v5];
  }

  v6 = excludeBundles_gExcludeBundles;
  excludeBundles_gExcludeBundles = v2;
}

- (BOOL)enableExtractions
{
  if (enableExtractions_onceToken != -1)
  {
    [SKGProcessorContext enableExtractions];
  }

  return enableExtractions_sEnableExtractions;
}

uint64_t __40__SKGProcessorContext_enableExtractions__block_invoke()
{
  result = _os_feature_enabled_impl();
  enableExtractions_sEnableExtractions = result;
  return result;
}

- (id)embeddingExcludeDomainIdentifier
{
  if (embeddingExcludeDomainIdentifier_onceEmbExcludeToken != -1)
  {
    [SKGProcessorContext embeddingExcludeDomainIdentifier];
  }

  v3 = embeddingExcludeDomainIdentifier_gEmbeddingDomainIdentifier;

  return v3;
}

void __55__SKGProcessorContext_embeddingExcludeDomainIdentifier__block_invoke()
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  [v2 addObjectsFromArray:&unk_1F0BDD138];
  v0 = [v2 allObjects];
  v1 = embeddingExcludeDomainIdentifier_gEmbeddingDomainIdentifier;
  embeddingExcludeDomainIdentifier_gEmbeddingDomainIdentifier = v0;
}

- (id)keyphraseExcludeBundles
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__SKGProcessorContext_keyphraseExcludeBundles__block_invoke;
  block[3] = &unk_1E74B8070;
  block[4] = self;
  if (keyphraseExcludeBundles_onceToken != -1)
  {
    dispatch_once(&keyphraseExcludeBundles_onceToken, block);
  }

  return keyphraseExcludeBundles_gKeyphraseExcludeBundles;
}

- (SKGProcessorContext)initWithPreferredLanguages:(id)a3 locale:(id)a4
{
  v7.receiver = self;
  v7.super_class = SKGProcessorContext;
  v4 = [(SKGProcessorContext *)&v7 init:a3];
  v5 = v4;
  if (v4)
  {
    [(SKGProcessorContext *)v4 commonInitWithBundleIdentifier:@"com.apple.cslinguistics"];
  }

  return v5;
}

- (BOOL)enableCalendarEventClassification
{
  if (enableCalendarEventClassification_onceEnableCalendarEventClassificationFFToken != -1)
  {
    [SKGProcessorContext enableCalendarEventClassification];
  }

  return enableCalendarEventClassification_sCalendarEventClassificationEnabled;
}

uint64_t __56__SKGProcessorContext_enableCalendarEventClassification__block_invoke()
{
  result = _os_feature_enabled_impl();
  enableCalendarEventClassification_sCalendarEventClassificationEnabled = result;
  return result;
}

- (BOOL)enableReceiverDebugging
{
  if (enableReceiverDebugging_onceToken != -1)
  {
    [SKGProcessorContext enableReceiverDebugging];
  }

  return enableReceiverDebugging_sRecDebugEnabled;
}

uint64_t __46__SKGProcessorContext_enableReceiverDebugging__block_invoke()
{
  result = _os_feature_enabled_impl();
  enableReceiverDebugging_sRecDebugEnabled = result;
  return result;
}

- (id)reindexExcludeBundles
{
  v2 = _os_feature_enabled_impl();
  v3 = +[SKGProcessorContext sharedContext];
  v4 = [v3 excludeBundles];
  v5 = v4;
  if ((v2 & 1) == 0)
  {
    v6 = [v4 arrayByAddingObject:@"com.apple.mobilephone"];

    v5 = v6;
  }

  return v5;
}

- (id)cleanupAttributes
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__SKGProcessorContext_cleanupAttributes__block_invoke;
  block[3] = &unk_1E74B8070;
  block[4] = self;
  if (cleanupAttributes_onceCleanToken != -1)
  {
    dispatch_once(&cleanupAttributes_onceCleanToken, block);
  }

  return cleanupAttributes_gAllCleanupAttrs;
}

void __40__SKGProcessorContext_cleanupAttributes__block_invoke(uint64_t a1)
{
  v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v2 = [*(a1 + 32) embeddingTrackingAttributes];
  [v8 addObjectsFromArray:v2];

  v3 = [*(a1 + 32) keyphraseTrackingAttributes];
  [v8 addObjectsFromArray:v3];

  v4 = [*(a1 + 32) suggestedEventsTrackingAttributes];
  [v8 addObjectsFromArray:v4];

  v5 = [*(a1 + 32) docUnderstandingTrackingAttributes];
  [v8 addObjectsFromArray:v5];

  v6 = [v8 allObjects];
  v7 = cleanupAttributes_gAllCleanupAttrs;
  cleanupAttributes_gAllCleanupAttrs = v6;
}

- (id)embeddingFetchAttributes
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__SKGProcessorContext_embeddingFetchAttributes__block_invoke;
  block[3] = &unk_1E74B8070;
  block[4] = self;
  if (embeddingFetchAttributes_onceToken != -1)
  {
    dispatch_once(&embeddingFetchAttributes_onceToken, block);
  }

  return embeddingFetchAttributes_gAllEmbeddingAttrs;
}

void __47__SKGProcessorContext_embeddingFetchAttributes__block_invoke(uint64_t a1)
{
  v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v2 = [*(a1 + 32) fetchAttributes];
  [v6 addObjectsFromArray:v2];

  v3 = [*(a1 + 32) embeddingExtractionAttributes];
  [v6 addObjectsFromArray:v3];

  v4 = [v6 allObjects];
  v5 = embeddingFetchAttributes_gAllEmbeddingAttrs;
  embeddingFetchAttributes_gAllEmbeddingAttrs = v4;
}

- (id)embeddingExcludeContentTypes
{
  if (embeddingExcludeContentTypes_onceEmbExcludeToken != -1)
  {
    [SKGProcessorContext embeddingExcludeContentTypes];
  }

  v3 = embeddingExcludeContentTypes_gEmbeddingExcludeContentTypes;

  return v3;
}

void __51__SKGProcessorContext_embeddingExcludeContentTypes__block_invoke()
{
  v12[16] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69830C8];
  v12[0] = *MEMORY[0x1E6982E68];
  v12[1] = v0;
  v1 = *MEMORY[0x1E6982DB0];
  v12[2] = *MEMORY[0x1E69830B0];
  v12[3] = v1;
  v2 = *MEMORY[0x1E6982D48];
  v12[4] = *MEMORY[0x1E6982DD8];
  v12[5] = v2;
  v3 = *MEMORY[0x1E6982F50];
  v12[6] = *MEMORY[0x1E6982E30];
  v12[7] = v3;
  v4 = *MEMORY[0x1E6982D68];
  v12[8] = *MEMORY[0x1E6982CD0];
  v12[9] = v4;
  v5 = *MEMORY[0x1E6982FD8];
  v12[10] = *MEMORY[0x1E6982CD8];
  v12[11] = v5;
  v6 = *MEMORY[0x1E6982D70];
  v12[12] = *MEMORY[0x1E69830D0];
  v12[13] = v6;
  v7 = [MEMORY[0x1E6982C40] typeWithIdentifier:@"com.apple.window-tab"];
  v12[14] = v7;
  v8 = [MEMORY[0x1E6982C40] typeWithIdentifier:@"com.apple.ui-element"];
  v12[15] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:16];
  v10 = embeddingExcludeContentTypes_gEmbeddingExcludeContentTypes;
  embeddingExcludeContentTypes_gEmbeddingExcludeContentTypes = v9;

  v11 = *MEMORY[0x1E69E9840];
}

- (id)keyphraseFetchAttributes
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__SKGProcessorContext_keyphraseFetchAttributes__block_invoke;
  block[3] = &unk_1E74B8070;
  block[4] = self;
  if (keyphraseFetchAttributes_onceToken != -1)
  {
    dispatch_once(&keyphraseFetchAttributes_onceToken, block);
  }

  return keyphraseFetchAttributes_gAllKeyphraseAttrs;
}

void __47__SKGProcessorContext_keyphraseFetchAttributes__block_invoke(uint64_t a1)
{
  v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v2 = [*(a1 + 32) fetchAttributes];
  [v7 addObjectsFromArray:v2];

  v3 = [*(a1 + 32) keyphraseExtractionAttributes];
  [v7 addObjectsFromArray:v3];

  v4 = [*(a1 + 32) keyphraseOptionalExtractionAttributes];
  [v7 addObjectsFromArray:v4];

  [v7 addObjectsFromArray:&unk_1F0BDD180];
  v5 = [v7 allObjects];
  v6 = keyphraseFetchAttributes_gAllKeyphraseAttrs;
  keyphraseFetchAttributes_gAllKeyphraseAttrs = v5;
}

void __46__SKGProcessorContext_keyphraseExcludeBundles__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = [*(a1 + 32) excludeBundles];
  [v2 addObjectsFromArray:v3];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [&unk_1F0BDD1C8 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(&unk_1F0BDD1C8);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if (([v2 containsObject:v8] & 1) == 0)
        {
          [v2 addObject:v8];
        }
      }

      v5 = [&unk_1F0BDD1C8 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = keyphraseExcludeBundles_gKeyphraseExcludeBundles;
  keyphraseExcludeBundles_gKeyphraseExcludeBundles = v2;

  v10 = *MEMORY[0x1E69E9840];
}

- (BOOL)keyphrasesSupportsBundle:(id)a3 domainID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    v9 = [(SKGProcessorContext *)self keyphraseIncludeBundles];
    v10 = [v9 containsObject:v6];

    if ((v10 & 1) == 0)
    {
      v11 = [(SKGProcessorContext *)self keyphraseExcludeBundles];
      v12 = v11;
      v13 = v6;
      goto LABEL_6;
    }

LABEL_8:
    v15 = 1;
    goto LABEL_9;
  }

  if (!v7)
  {
    goto LABEL_8;
  }

  v11 = [(SKGProcessorContext *)self keyphraseExcludeDomains];
  v12 = v11;
  v13 = v8;
LABEL_6:
  v14 = [v11 containsObject:v13];

  if ((v14 & 1) == 0)
  {
    goto LABEL_8;
  }

  v15 = 0;
LABEL_9:

  return v15;
}

- (id)suggestedEventsFetchAttributes
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__SKGProcessorContext_suggestedEventsFetchAttributes__block_invoke;
  block[3] = &unk_1E74B8070;
  block[4] = self;
  if (suggestedEventsFetchAttributes_onceToken != -1)
  {
    dispatch_once(&suggestedEventsFetchAttributes_onceToken, block);
  }

  return suggestedEventsFetchAttributes_gAllSuggestedEventsAttrs;
}

void __53__SKGProcessorContext_suggestedEventsFetchAttributes__block_invoke(uint64_t a1)
{
  v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v2 = [*(a1 + 32) fetchAttributes];
  [v6 addObjectsFromArray:v2];

  v3 = [*(a1 + 32) suggestedEventsExtractionAttributes];
  [v6 addObjectsFromArray:v3];

  [v6 addObjectsFromArray:&unk_1F0BDD210];
  v4 = [v6 allObjects];
  v5 = suggestedEventsFetchAttributes_gAllSuggestedEventsAttrs;
  suggestedEventsFetchAttributes_gAllSuggestedEventsAttrs = v4;
}

- (id)suggestedEventsAllowListAttributes
{
  if (suggestedEventsAllowListAttributes_onceToken != -1)
  {
    [SKGProcessorContext suggestedEventsAllowListAttributes];
  }

  v3 = suggestedEventsAllowListAttributes_gAttrs;

  return v3;
}

void __57__SKGProcessorContext_suggestedEventsAllowListAttributes__block_invoke()
{
  v2 = objc_alloc_init(MEMORY[0x1E6964E90]);
  v0 = [v2 getAllUniqueEventAttributes];
  v1 = suggestedEventsAllowListAttributes_gAttrs;
  suggestedEventsAllowListAttributes_gAttrs = v0;
}

- (id)peopleFetchAttributes
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__SKGProcessorContext_peopleFetchAttributes__block_invoke;
  block[3] = &unk_1E74B8070;
  block[4] = self;
  if (peopleFetchAttributes_onceToken != -1)
  {
    dispatch_once(&peopleFetchAttributes_onceToken, block);
  }

  return peopleFetchAttributes_gAllPeopleAttrs;
}

void __44__SKGProcessorContext_peopleFetchAttributes__block_invoke(uint64_t a1)
{
  v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v2 = [*(a1 + 32) fetchAttributes];
  [v6 addObjectsFromArray:v2];

  v3 = [*(a1 + 32) peopleExtractionAttributes];
  [v6 addObjectsFromArray:v3];

  [v6 addObjectsFromArray:&unk_1F0BDD270];
  v4 = [v6 allObjects];
  v5 = peopleFetchAttributes_gAllPeopleAttrs;
  peopleFetchAttributes_gAllPeopleAttrs = v4;
}

- (id)docUnderstandingFetchAttributes
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__SKGProcessorContext_docUnderstandingFetchAttributes__block_invoke;
  block[3] = &unk_1E74B8070;
  block[4] = self;
  if (docUnderstandingFetchAttributes_onceToken != -1)
  {
    dispatch_once(&docUnderstandingFetchAttributes_onceToken, block);
  }

  return docUnderstandingFetchAttributes_gAllDocUnderstandingAttrs;
}

void __54__SKGProcessorContext_docUnderstandingFetchAttributes__block_invoke(uint64_t a1)
{
  v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v2 = [*(a1 + 32) fetchAttributes];
  [v6 addObjectsFromArray:v2];

  v3 = [*(a1 + 32) docUnderstandingExtractionAttributes];
  [v6 addObjectsFromArray:v3];

  [v6 addObjectsFromArray:&unk_1F0BDD2A0];
  v4 = [v6 allObjects];
  v5 = docUnderstandingFetchAttributes_gAllDocUnderstandingAttrs;
  docUnderstandingFetchAttributes_gAllDocUnderstandingAttrs = v4;
}

- (id)docUnderstandingIncludeBundles
{
  if (docUnderstandingIncludeBundles_onceToken != -1)
  {
    [SKGProcessorContext docUnderstandingIncludeBundles];
  }

  v3 = docUnderstandingIncludeBundles_gDocumentUnderstandingIncludeBundles;

  return v3;
}

void __53__SKGProcessorContext_docUnderstandingIncludeBundles__block_invoke()
{
  v0 = docUnderstandingIncludeBundles_gDocumentUnderstandingIncludeBundles;
  docUnderstandingIncludeBundles_gDocumentUnderstandingIncludeBundles = &unk_1F0BDD2E8;
}

- (void)enableEmbeddings
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = 11;
  _os_log_debug_impl(&dword_1977A7000, log, OS_LOG_TYPE_DEBUG, "SKGTask: %d disabled", v2, 8u);
  v1 = *MEMORY[0x1E69E9840];
}

@end