@interface RKMessageResponseManager
+ (BOOL)_isMirroredResponseValidForResponse:(id)response;
+ (BOOL)_needsMirroredAnalysisForMessage:(id)message forChronologicalConversationHistory:(id)history;
+ (BOOL)_responseLooksLikeIncomingCheckInResponse:(id)response;
+ (BOOL)_responseLooksLikeOutgoingCheckInResponse:(id)response;
+ (BOOL)_responseTypeIsSunsetted:(id)sunsetted;
+ (id)_mostRecentTextFromChronologicalConversationHistory:(id)history;
+ (id)sharedManager;
- (BOOL)usePersonalizedRanking;
- (RKMessageResponseManager)initWithAssetPlistURL:(id)l;
- (RKMessageResponseManager)initWithDynamicDataURL:(id)l;
- (RKMessageResponseManager)initWithDynamicDataURL:(id)l displayStringsProvider:(id)provider;
- (RKMessageResponseManager)initWithDynamicDataURL:(id)l withBundleURL:(id)rL;
- (id)categoryForMessage:(id)message langID:(id)d;
- (id)categoryForMessageWithoutQueue:(id)queue langID:(id)d;
- (id)dispatchQueue;
- (id)getRankLearner;
- (id)responseWithAttributesMatchingProactiveGrammarForMessage:(id)message languageID:(id)d kbdInputModes:(id)modes;
- (id)responseWithAttributesMatchingProactiveGrammarForMessageImp:(id)imp languageID:(id *)d kbdInputModes:(id)modes;
- (id)responsesForMessage:(id)message maximumResponses:(unint64_t)responses forContext:(id)context withLanguage:(id)language options:(unint64_t)options;
- (id)responsesForMessage:(id)message maximumResponses:(unint64_t)responses forConversationHistory:(id)history withLanguage:(id)language inputModes:(id)modes options:(unint64_t)options;
- (id)responsesForMessage:(id)message maximumResponses:(unint64_t)responses forConversationHistory:(id)history withLanguage:(id)language options:(unint64_t)options;
- (id)responsesForMessage:(id)message maximumResponses:(unint64_t)responses recipientID:(id)d forConversationHistory:(id)history withLanguage:(id)language options:(unint64_t)options;
- (id)responsesForMessageImp:(id)imp maximumResponses:(unint64_t)responses forRecipientID:(id)d forConversationHistory:(id)history forContext:(id)context withLanguage:(id)language options:(unint64_t)options;
- (id)responsesForMessageWithLanguageDetection:(id)detection maximumResponses:(unint64_t)responses forConversationHistory:(id)history forContext:(id)context withLanguage:(id *)language options:(unint64_t)options;
- (id)responsesForMessageWithLanguageDetectionImp:(id)imp maximumResponses:(unint64_t)responses forRecipientID:(id)d forConversationHistory:(id)history forContext:(id)context withLanguage:(id *)language inputModes:(id)modes options:(unint64_t)self0;
- (void)flushDynamicData;
- (void)prunePersonalizedUserDatabase:(id)database;
- (void)registerResponse:(id)response forMessage:(id)message forContext:(id)context withEffectiveDate:(id)date withLanguage:(id)language;
- (void)registerResponse:(id)response forMessage:(id)message metadata:(id)metadata withLanguage:(id)language;
- (void)resetRegisteredResponses;
- (void)responseWithAttributesMatchingProactiveGrammarForMessage:(id)message languageID:(id)d kbdInputModes:(id)modes completionBlock:(id)block;
- (void)responsesForMessage:(id)message maximumResponses:(unint64_t)responses forContext:(id)context withLanguage:(id)language options:(unint64_t)options completionBlock:(id)block;
- (void)responsesForMessage:(id)message maximumResponses:(unint64_t)responses forConversationHistory:(id)history withLanguage:(id)language options:(unint64_t)options completionBlock:(id)block;
- (void)responsesForMessage:(id)message maximumResponses:(unint64_t)responses recipientID:(id)d forConversationHistory:(id)history withLanguage:(id)language options:(unint64_t)options completionBlock:(id)block;
- (void)responsesForMessageWithLanguageDetection:(id)detection maximumResponses:(unint64_t)responses forConversationHistory:(id)history forContext:(id)context withLanguage:(id *)language options:(unint64_t)options completionBlock:(id)block;
@end

@implementation RKMessageResponseManager

+ (id)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__RKMessageResponseManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedManager_onceToken != -1)
  {
    dispatch_once(&sharedManager_onceToken, block);
  }

  v2 = sharedManager_singleton;

  return v2;
}

uint64_t __41__RKMessageResponseManager_sharedManager__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedManager_singleton = [objc_alloc(objc_opt_class()) initWithDynamicDataURL:0];

  return MEMORY[0x2821F96F8]();
}

- (id)dispatchQueue
{
  if (dispatchQueue_onceToken != -1)
  {
    [RKMessageResponseManager dispatchQueue];
  }

  v3 = dispatchQueue_queue;

  return v3;
}

void __41__RKMessageResponseManager_dispatchQueue__block_invoke()
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INITIATED, 0);
  v1 = dispatch_queue_create("com.apple.ResponseKit", v0);
  v2 = dispatchQueue_queue;
  dispatchQueue_queue = v1;
}

- (RKMessageResponseManager)initWithDynamicDataURL:(id)l
{
  lCopy = l;
  v5 = [RKBundleDataProvider alloc];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [(RKBundleDataProvider *)v5 initWithBundle:v6];
  v8 = [(RKMessageResponseManager *)self initWithDynamicDataURL:lCopy displayStringsProvider:v7];

  return v8;
}

- (RKMessageResponseManager)initWithDynamicDataURL:(id)l withBundleURL:(id)rL
{
  rLCopy = rL;
  lCopy = l;
  v8 = [RKBundleDataProvider alloc];
  v9 = [MEMORY[0x277CCA8D8] bundleWithURL:rLCopy];

  v10 = [(RKBundleDataProvider *)v8 initWithBundle:v9];
  v11 = [(RKMessageResponseManager *)self initWithDynamicDataURL:lCopy displayStringsProvider:v10];

  return v11;
}

- (RKMessageResponseManager)initWithAssetPlistURL:(id)l
{
  v27 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v25.receiver = self;
  v25.super_class = RKMessageResponseManager;
  v5 = [(RKMessageResponseManager *)&v25 init];
  dispatchQueue = [(RKMessageResponseManager *)v5 dispatchQueue];
  dispatchQueue = v5->_dispatchQueue;
  v5->_dispatchQueue = dispatchQueue;

  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  preferredLanguages = [MEMORY[0x277CBEAF8] preferredLanguages];
  v10 = [preferredLanguages countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      v13 = 0;
      do
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(preferredLanguages);
        }

        v14 = [RKUtilities canonicalLanguageAndScriptCodeIdentifierForIdentifier:*(*(&v21 + 1) + 8 * v13)];
        [v8 addObject:v14];

        ++v13;
      }

      while (v11 != v13);
      v11 = [preferredLanguages countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v11);
  }

  [(RKMessageResponseManager *)v5 setPreferredLanguages:v8];
  if (v5)
  {
    v15 = [RKResponseCollection alloc];
    v16 = [[RKBundleDataProvider alloc] initWithAssetPlist:lCopy];
    v17 = [(RKResponseCollection *)v15 initWithDynamicDataURL:0 displayStringsProvider:v16];
    collection = v5->_collection;
    v5->_collection = v17;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v5;
}

- (RKMessageResponseManager)initWithDynamicDataURL:(id)l displayStringsProvider:(id)provider
{
  v26 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  v24.receiver = self;
  v24.super_class = RKMessageResponseManager;
  v6 = [(RKMessageResponseManager *)&v24 init];
  dispatchQueue = [(RKMessageResponseManager *)v6 dispatchQueue];
  dispatchQueue = v6->_dispatchQueue;
  v6->_dispatchQueue = dispatchQueue;

  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  preferredLanguages = [MEMORY[0x277CBEAF8] preferredLanguages];
  v11 = [preferredLanguages countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      v14 = 0;
      do
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(preferredLanguages);
        }

        v15 = [RKUtilities canonicalLanguageAndScriptCodeIdentifierForIdentifier:*(*(&v20 + 1) + 8 * v14)];
        if (v15)
        {
          [v9 addObject:v15];
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [preferredLanguages countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v12);
  }

  [(RKMessageResponseManager *)v6 setPreferredLanguages:v9];
  if (v6)
  {
    v16 = [[RKResponseCollection alloc] initWithDynamicDataURL:0 displayStringsProvider:providerCopy];
    collection = v6->_collection;
    v6->_collection = v16;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)responsesForMessage:(id)message maximumResponses:(unint64_t)responses forContext:(id)context withLanguage:(id)language options:(unint64_t)options completionBlock:(id)block
{
  messageCopy = message;
  contextCopy = context;
  languageCopy = language;
  blockCopy = block;
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x3032000000;
  v31[3] = __Block_byref_object_copy__2;
  v31[4] = __Block_byref_object_dispose__2;
  v32 = 0;
  dispatchQueue = self->_dispatchQueue;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __113__RKMessageResponseManager_responsesForMessage_maximumResponses_forContext_withLanguage_options_completionBlock___block_invoke;
  v23[3] = &unk_279B10778;
  v23[4] = self;
  v24 = messageCopy;
  v25 = contextCopy;
  v26 = languageCopy;
  responsesCopy = responses;
  optionsCopy = options;
  v27 = blockCopy;
  v28 = v31;
  v19 = blockCopy;
  v20 = languageCopy;
  v21 = contextCopy;
  v22 = messageCopy;
  dispatch_async(dispatchQueue, v23);

  _Block_object_dispose(v31, 8);
}

void __113__RKMessageResponseManager_responsesForMessage_maximumResponses_forContext_withLanguage_options_completionBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) responsesForMessageImp:*(a1 + 40) maximumResponses:*(a1 + 80) forRecipientID:0 forConversationHistory:*(*(*(a1 + 72) + 8) + 40) forContext:*(a1 + 48) withLanguage:*(a1 + 56) options:RKMessageResponseDontOverrideLanguageID | *(a1 + 88)];
  (*(*(a1 + 64) + 16))();
}

- (void)responsesForMessage:(id)message maximumResponses:(unint64_t)responses forConversationHistory:(id)history withLanguage:(id)language options:(unint64_t)options completionBlock:(id)block
{
  messageCopy = message;
  historyCopy = history;
  languageCopy = language;
  blockCopy = block;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __125__RKMessageResponseManager_responsesForMessage_maximumResponses_forConversationHistory_withLanguage_options_completionBlock___block_invoke;
  block[3] = &unk_279B107A0;
  block[4] = self;
  v24 = messageCopy;
  v25 = historyCopy;
  v26 = languageCopy;
  responsesCopy = responses;
  optionsCopy = options;
  v27 = blockCopy;
  v19 = blockCopy;
  v20 = languageCopy;
  v21 = historyCopy;
  v22 = messageCopy;
  dispatch_async(dispatchQueue, block);
}

void __125__RKMessageResponseManager_responsesForMessage_maximumResponses_forConversationHistory_withLanguage_options_completionBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) responsesForMessageImp:*(a1 + 40) maximumResponses:*(a1 + 72) forRecipientID:0 forConversationHistory:*(a1 + 48) forContext:0 withLanguage:*(a1 + 56) options:RKMessageResponseDontOverrideLanguageID | *(a1 + 80)];
  (*(*(a1 + 64) + 16))();
}

- (void)responsesForMessage:(id)message maximumResponses:(unint64_t)responses recipientID:(id)d forConversationHistory:(id)history withLanguage:(id)language options:(unint64_t)options completionBlock:(id)block
{
  messageCopy = message;
  dCopy = d;
  historyCopy = history;
  languageCopy = language;
  blockCopy = block;
  dispatchQueue = self->_dispatchQueue;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __137__RKMessageResponseManager_responsesForMessage_maximumResponses_recipientID_forConversationHistory_withLanguage_options_completionBlock___block_invoke;
  v26[3] = &unk_279B107C8;
  v26[4] = self;
  v27 = messageCopy;
  v28 = dCopy;
  v29 = historyCopy;
  responsesCopy = responses;
  optionsCopy = options;
  v30 = languageCopy;
  v31 = blockCopy;
  v21 = blockCopy;
  v22 = languageCopy;
  v23 = historyCopy;
  v24 = dCopy;
  v25 = messageCopy;
  dispatch_async(dispatchQueue, v26);
}

void __137__RKMessageResponseManager_responsesForMessage_maximumResponses_recipientID_forConversationHistory_withLanguage_options_completionBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) responsesForMessageImp:*(a1 + 40) maximumResponses:*(a1 + 80) forRecipientID:*(a1 + 48) forConversationHistory:*(a1 + 56) forContext:0 withLanguage:*(a1 + 64) options:RKMessageResponseDontOverrideLanguageID | *(a1 + 88)];
  (*(*(a1 + 72) + 16))();
}

- (id)responsesForMessage:(id)message maximumResponses:(unint64_t)responses recipientID:(id)d forConversationHistory:(id)history withLanguage:(id)language options:(unint64_t)options
{
  messageCopy = message;
  dCopy = d;
  historyCopy = history;
  languageCopy = language;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__2;
  v37 = __Block_byref_object_dispose__2;
  v38 = 0;
  dispatchQueue = self->_dispatchQueue;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __121__RKMessageResponseManager_responsesForMessage_maximumResponses_recipientID_forConversationHistory_withLanguage_options___block_invoke;
  v25[3] = &unk_279B107F0;
  v25[4] = self;
  v26 = messageCopy;
  v27 = dCopy;
  v28 = historyCopy;
  v29 = languageCopy;
  v30 = &v33;
  responsesCopy = responses;
  optionsCopy = options;
  v19 = languageCopy;
  v20 = historyCopy;
  v21 = dCopy;
  v22 = messageCopy;
  dispatch_sync(dispatchQueue, v25);
  v23 = v34[5];

  _Block_object_dispose(&v33, 8);

  return v23;
}

uint64_t __121__RKMessageResponseManager_responsesForMessage_maximumResponses_recipientID_forConversationHistory_withLanguage_options___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) responsesForMessageImp:*(a1 + 40) maximumResponses:*(a1 + 80) forRecipientID:*(a1 + 48) forConversationHistory:*(a1 + 56) forContext:0 withLanguage:*(a1 + 64) options:RKMessageResponseDontOverrideLanguageID | *(a1 + 88)];
  v3 = *(*(a1 + 72) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)responsesForMessageWithLanguageDetection:(id)detection maximumResponses:(unint64_t)responses forConversationHistory:(id)history forContext:(id)context withLanguage:(id *)language options:(unint64_t)options completionBlock:(id)block
{
  detectionCopy = detection;
  historyCopy = history;
  contextCopy = context;
  blockCopy = block;
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x3032000000;
  v32[3] = __Block_byref_object_copy__2;
  v32[4] = __Block_byref_object_dispose__2;
  v33 = *language;
  dispatchQueue = self->_dispatchQueue;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __157__RKMessageResponseManager_responsesForMessageWithLanguageDetection_maximumResponses_forConversationHistory_forContext_withLanguage_options_completionBlock___block_invoke;
  v24[3] = &unk_279B10818;
  v24[4] = self;
  v25 = detectionCopy;
  v26 = historyCopy;
  v27 = contextCopy;
  responsesCopy = responses;
  optionsCopy = options;
  v28 = blockCopy;
  v29 = v32;
  v20 = blockCopy;
  v21 = contextCopy;
  v22 = historyCopy;
  v23 = detectionCopy;
  dispatch_async(dispatchQueue, v24);

  _Block_object_dispose(v32, 8);
}

void __157__RKMessageResponseManager_responsesForMessageWithLanguageDetection_maximumResponses_forConversationHistory_forContext_withLanguage_options_completionBlock___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  v6 = a1[10];
  v7 = *(a1[9] + 8);
  obj = *(v7 + 40);
  v8 = [v2 responsesForMessageWithLanguageDetectionImp:v3 maximumResponses:v6 forRecipientID:0 forConversationHistory:v4 forContext:v5 withLanguage:&obj inputModes:0 options:a1[11]];
  objc_storeStrong((v7 + 40), obj);
  v9 = *(*(a1[9] + 8) + 40);
  (*(a1[8] + 16))();
}

- (id)responsesForMessage:(id)message maximumResponses:(unint64_t)responses forContext:(id)context withLanguage:(id)language options:(unint64_t)options
{
  messageCopy = message;
  contextCopy = context;
  languageCopy = language;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__2;
  v37 = __Block_byref_object_dispose__2;
  v38 = 0;
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x3032000000;
  v31[3] = __Block_byref_object_copy__2;
  v31[4] = __Block_byref_object_dispose__2;
  v32 = languageCopy;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3032000000;
  v29[3] = __Block_byref_object_copy__2;
  v29[4] = __Block_byref_object_dispose__2;
  v30 = 0;
  dispatchQueue = self->_dispatchQueue;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __97__RKMessageResponseManager_responsesForMessage_maximumResponses_forContext_withLanguage_options___block_invoke;
  v21[3] = &unk_279B10840;
  v21[4] = self;
  v22 = messageCopy;
  v23 = contextCopy;
  v24 = &v33;
  v25 = v29;
  v26 = v31;
  responsesCopy = responses;
  optionsCopy = options;
  v16 = contextCopy;
  v17 = messageCopy;
  v18 = languageCopy;
  dispatch_sync(dispatchQueue, v21);
  v19 = v34[5];

  _Block_object_dispose(v29, 8);
  _Block_object_dispose(v31, 8);

  _Block_object_dispose(&v33, 8);

  return v19;
}

void __97__RKMessageResponseManager_responsesForMessage_maximumResponses_forContext_withLanguage_options___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = *(*(a1[8] + 8) + 40);
  v6 = *(a1[9] + 8);
  obj = *(v6 + 40);
  v7 = [v2 responsesForMessageWithLanguageDetectionImp:v3 maximumResponses:a1[10] forRecipientID:0 forConversationHistory:v5 forContext:v4 withLanguage:&obj inputModes:0 options:RKMessageResponseDontOverrideLanguageID | a1[11]];
  objc_storeStrong((v6 + 40), obj);
  v8 = *(a1[7] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

- (id)responsesForMessage:(id)message maximumResponses:(unint64_t)responses forConversationHistory:(id)history withLanguage:(id)language options:(unint64_t)options
{
  messageCopy = message;
  historyCopy = history;
  languageCopy = language;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__2;
  v34 = __Block_byref_object_dispose__2;
  v35 = 0;
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = __Block_byref_object_copy__2;
  v28[4] = __Block_byref_object_dispose__2;
  v29 = languageCopy;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __109__RKMessageResponseManager_responsesForMessage_maximumResponses_forConversationHistory_withLanguage_options___block_invoke;
  block[3] = &unk_279B10868;
  block[4] = self;
  v22 = messageCopy;
  v23 = historyCopy;
  v24 = &v30;
  v25 = v28;
  responsesCopy = responses;
  optionsCopy = options;
  v16 = historyCopy;
  v17 = messageCopy;
  v18 = languageCopy;
  dispatch_sync(dispatchQueue, block);
  v19 = v31[5];

  _Block_object_dispose(v28, 8);
  _Block_object_dispose(&v30, 8);

  return v19;
}

void __109__RKMessageResponseManager_responsesForMessage_maximumResponses_forConversationHistory_withLanguage_options___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[9];
  v6 = *(a1[8] + 8);
  obj = *(v6 + 40);
  v7 = [v2 responsesForMessageWithLanguageDetectionImp:v3 maximumResponses:v5 forRecipientID:0 forConversationHistory:v4 forContext:0 withLanguage:&obj inputModes:0 options:RKMessageResponseDontOverrideLanguageID | a1[10]];
  objc_storeStrong((v6 + 40), obj);
  v8 = *(a1[7] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

- (id)responsesForMessage:(id)message maximumResponses:(unint64_t)responses forConversationHistory:(id)history withLanguage:(id)language inputModes:(id)modes options:(unint64_t)options
{
  messageCopy = message;
  historyCopy = history;
  languageCopy = language;
  modesCopy = modes;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__2;
  v39 = __Block_byref_object_dispose__2;
  v40 = 0;
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x3032000000;
  v33[3] = __Block_byref_object_copy__2;
  v33[4] = __Block_byref_object_dispose__2;
  v34 = languageCopy;
  dispatchQueue = self->_dispatchQueue;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __120__RKMessageResponseManager_responsesForMessage_maximumResponses_forConversationHistory_withLanguage_inputModes_options___block_invoke;
  v25[3] = &unk_279B10890;
  v25[4] = self;
  v26 = messageCopy;
  v29 = &v35;
  v30 = v33;
  v27 = historyCopy;
  v28 = modesCopy;
  responsesCopy = responses;
  optionsCopy = options;
  v19 = modesCopy;
  v20 = historyCopy;
  v21 = messageCopy;
  v22 = languageCopy;
  dispatch_sync(dispatchQueue, v25);
  v23 = v36[5];

  _Block_object_dispose(v33, 8);
  _Block_object_dispose(&v35, 8);

  return v23;
}

void __120__RKMessageResponseManager_responsesForMessage_maximumResponses_forConversationHistory_withLanguage_inputModes_options___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[10];
  v6 = *(a1[9] + 8);
  obj = *(v6 + 40);
  v7 = [v2 responsesForMessageWithLanguageDetectionImp:v3 maximumResponses:v5 forRecipientID:0 forConversationHistory:v4 forContext:0 withLanguage:&obj inputModes:a1[7] options:RKMessageResponseDontOverrideLanguageID | a1[11]];
  objc_storeStrong((v6 + 40), obj);
  v8 = *(a1[8] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

- (id)responsesForMessageWithLanguageDetection:(id)detection maximumResponses:(unint64_t)responses forConversationHistory:(id)history forContext:(id)context withLanguage:(id *)language options:(unint64_t)options
{
  detectionCopy = detection;
  historyCopy = history;
  contextCopy = context;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__2;
  v35 = __Block_byref_object_dispose__2;
  v36 = 0;
  dispatchQueue = self->_dispatchQueue;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __141__RKMessageResponseManager_responsesForMessageWithLanguageDetection_maximumResponses_forConversationHistory_forContext_withLanguage_options___block_invoke;
  v23[3] = &unk_279B108B8;
  v23[4] = self;
  v24 = detectionCopy;
  v27 = &v31;
  responsesCopy = responses;
  v25 = historyCopy;
  v26 = contextCopy;
  languageCopy = language;
  optionsCopy = options;
  v18 = contextCopy;
  v19 = historyCopy;
  v20 = detectionCopy;
  dispatch_sync(dispatchQueue, v23);
  v21 = v32[5];

  _Block_object_dispose(&v31, 8);

  return v21;
}

uint64_t __141__RKMessageResponseManager_responsesForMessageWithLanguageDetection_maximumResponses_forConversationHistory_forContext_withLanguage_options___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) responsesForMessageWithLanguageDetectionImp:*(a1 + 40) maximumResponses:*(a1 + 72) forRecipientID:0 forConversationHistory:*(a1 + 48) forContext:*(a1 + 56) withLanguage:*(a1 + 80) inputModes:0 options:*(a1 + 88)];
  v3 = *(*(a1 + 64) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)responsesForMessageImp:(id)imp maximumResponses:(unint64_t)responses forRecipientID:(id)d forConversationHistory:(id)history forContext:(id)context withLanguage:(id)language options:(unint64_t)options
{
  languageCopy = language;
  v15 = RKMessageResponseDontOverrideLanguageID | options;
  languageCopy2 = language;
  v17 = [(RKMessageResponseManager *)self responsesForMessageWithLanguageDetectionImp:imp maximumResponses:responses forRecipientID:d forConversationHistory:history forContext:context withLanguage:&languageCopy inputModes:0 options:v15];
  v18 = languageCopy;

  return v17;
}

- (id)responseWithAttributesMatchingProactiveGrammarForMessage:(id)message languageID:(id)d kbdInputModes:(id)modes
{
  messageCopy = message;
  dCopy = d;
  modesCopy = modes;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__2;
  v28 = __Block_byref_object_dispose__2;
  v29 = 0;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = __Block_byref_object_copy__2;
  v22[4] = __Block_byref_object_dispose__2;
  v23 = dCopy;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __110__RKMessageResponseManager_responseWithAttributesMatchingProactiveGrammarForMessage_languageID_kbdInputModes___block_invoke;
  block[3] = &unk_279B108E0;
  block[4] = self;
  v18 = messageCopy;
  v20 = &v24;
  v21 = v22;
  v19 = modesCopy;
  v12 = modesCopy;
  v13 = messageCopy;
  v14 = dCopy;
  dispatch_sync(dispatchQueue, block);
  v15 = v25[5];

  _Block_object_dispose(v22, 8);
  _Block_object_dispose(&v24, 8);

  return v15;
}

void __110__RKMessageResponseManager_responseWithAttributesMatchingProactiveGrammarForMessage_languageID_kbdInputModes___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = *(a1[8] + 8);
  obj = *(v5 + 40);
  v6 = [v2 responseWithAttributesMatchingProactiveGrammarForMessageImp:v3 languageID:&obj kbdInputModes:v4];
  objc_storeStrong((v5 + 40), obj);
  v7 = *(a1[7] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (void)responseWithAttributesMatchingProactiveGrammarForMessage:(id)message languageID:(id)d kbdInputModes:(id)modes completionBlock:(id)block
{
  messageCopy = message;
  dCopy = d;
  modesCopy = modes;
  blockCopy = block;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = __Block_byref_object_copy__2;
  v24[4] = __Block_byref_object_dispose__2;
  v25 = dCopy;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __126__RKMessageResponseManager_responseWithAttributesMatchingProactiveGrammarForMessage_languageID_kbdInputModes_completionBlock___block_invoke;
  block[3] = &unk_279B10908;
  block[4] = self;
  v20 = messageCopy;
  v22 = blockCopy;
  v23 = v24;
  v21 = modesCopy;
  v15 = blockCopy;
  v16 = modesCopy;
  v17 = messageCopy;
  v18 = dCopy;
  dispatch_async(dispatchQueue, block);

  _Block_object_dispose(v24, 8);
}

void __126__RKMessageResponseManager_responseWithAttributesMatchingProactiveGrammarForMessage_languageID_kbdInputModes_completionBlock___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = *(a1[8] + 8);
  obj = *(v5 + 40);
  v6 = [v2 responseWithAttributesMatchingProactiveGrammarForMessageImp:v3 languageID:&obj kbdInputModes:v4];
  objc_storeStrong((v5 + 40), obj);
  (*(a1[7] + 16))();
}

- (id)responseWithAttributesMatchingProactiveGrammarForMessageImp:(id)imp languageID:(id *)d kbdInputModes:(id)modes
{
  v41 = *MEMORY[0x277D85DE8];
  modesCopy = modes;
  v8 = MEMORY[0x277CCA900];
  impCopy = imp;
  whitespaceCharacterSet = [v8 whitespaceCharacterSet];
  v11 = [impCopy stringByTrimmingCharactersInSet:whitespaceCharacterSet];

  if ([v11 length] && objc_msgSend(v11, "length") <= 0x800 && !+[RKUtilities RKRepairStringNeeded:](RKUtilities, "RKRepairStringNeeded:", v11))
  {
    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v16 = [RKUtilities canonicalLanguageAndScriptCodeIdentifierForIdentifier:*d];
    [v15 addObject:v16];

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v17 = modesCopy;
    v18 = [v17 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v36;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v36 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = [RKUtilities canonicalLanguageAndScriptCodeIdentifierForIdentifier:*(*(&v35 + 1) + 8 * i)];
          if (([v15 containsObject:v22] & 1) == 0)
          {
            [v15 addObject:v22];
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v19);
    }

    v23 = +[RKProactiveGrammar sharedManager];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v24 = v15;
    v12 = [v24 countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v12)
    {
      v25 = *v32;
      while (2)
      {
        for (j = 0; j != v12; j = (j + 1))
        {
          if (*v32 != v25)
          {
            objc_enumerationMutation(v24);
          }

          v27 = [v23 copyAttributedTokenForText:v11 forLanguage:{*(*(&v31 + 1) + 8 * j), v31}];
          if (v27)
          {
            v28 = v27;
            v29 = [RKResponse alloc];
            v30 = RKLinguisticCategoryToPreferenceKey(43);
            v12 = [(RKResponse *)v29 initWithString:0 attributes:v28 category:v30];

            goto LABEL_27;
          }
        }

        v12 = [v24 countByEnumeratingWithState:&v31 objects:v39 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

LABEL_27:
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)responsesForMessageWithLanguageDetectionImp:(id)imp maximumResponses:(unint64_t)responses forRecipientID:(id)d forConversationHistory:(id)history forContext:(id)context withLanguage:(id *)language inputModes:(id)modes options:(unint64_t)self0
{
  v219[1] = *MEMORY[0x277D85DE8];
  impCopy = imp;
  dCopy = d;
  historyCopy = history;
  contextCopy = context;
  modesCopy = modes;
  v174 = historyCopy;
  v18 = [objc_opt_class() _chronologicalConversationHistory:historyCopy];
  v180 = [objc_opt_class() _needsMirroredAnalysisForMessage:impCopy forChronologicalConversationHistory:v18];
  selfCopy = self;
  if (![impCopy length])
  {
    [objc_opt_class() _mostRecentTextFromChronologicalConversationHistory:v18];
    v20 = v19 = contextCopy;

    impCopy = v20;
    contextCopy = v19;
  }

  v171 = v18;
  if ([RKUtilities RKRepairStringNeeded:impCopy])
  {
    v21 = 0;
    goto LABEL_156;
  }

  v168 = contextCopy;
  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v23 = [impCopy stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  v24 = [v23 stringByReplacingOccurrencesOfString:@"‘" withString:&stru_2874A9C90];

  v25 = [v24 stringByReplacingOccurrencesOfString:@"’" withString:&stru_2874A9C90];

  impCopy = [v25 stringByReplacingOccurrencesOfString:@"'" withString:&stru_2874A9C90];

  if ([impCopy length] > 0x800)
  {
    v21 = 0;
    contextCopy = v168;
    goto LABEL_156;
  }

  if (!responses)
  {
    responses = 0x7FFFFFFFLL;
  }

  v26 = [v174 mutableCopy];
  v165 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"timestamp" ascending:0];
  v219[0] = v165;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v219 count:1];
  [v26 sortUsingDescriptors:v27];

  preferredLanguages = [(RKMessageResponseManager *)self preferredLanguages];
  [RKMessageClassifier setPreferredLanguages:preferredLanguages];

  v167 = v26;
  v29 = [RKMessageClassifier messageClassification:impCopy withLanguageIdentifier:*language conversationTurns:v26];
  language = [v29 language];

  if (!language)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      [RKMessageResponseManager responsesForMessageWithLanguageDetectionImp:maximumResponses:forRecipientID:forConversationHistory:forContext:withLanguage:inputModes:options:];
    }

    v21 = 0;
    contextCopy = v168;
    v39 = v29;
    goto LABEL_155;
  }

  v176 = RKLinguisticCategoryToPreferenceKey([v29 sentenceType]);
  v179 = v29;
  language2 = [v29 language];
  [RKCoreAnalytics sendCoreAnalyticsEvent:0 forAction:@"triggered" withLanguageID:language2];

  if ((RKMessageResponseDontOverrideLanguageID & options) == 0)
  {
    *language = [v179 language];
  }

  if ((options & 0x200) == 0)
  {
LABEL_20:
    array = [MEMORY[0x277CBEB18] array];
    if ((options & 1) == 0)
    {
      customResponses = [v179 customResponses];
      v43 = [customResponses count];

      if (v43)
      {
        if ([v179 sentenceType] != 6 || (objc_msgSend(v179, "customResponses"), v44 = objc_claimAutoreleasedReturnValue(), v45 = objc_msgSend(v44, "count"), v44, v45 <= responses))
        {
          customResponses2 = [v179 customResponses];
          [array addObjectsFromArray:customResponses2];

          if ([array count] > responses)
          {
            v47 = [array subarrayWithRange:{0, responses}];
            v48 = [v47 mutableCopy];

            array = v48;
          }

          responses -= [array count];
        }
      }
    }

    v49 = MEMORY[0x277CBEAF8];
    if (*language)
    {
      currentLocale = [MEMORY[0x277CBEAF8] canonicalLanguageIdentifierFromString:?];
      v166 = currentLocale;
    }

    else
    {
      currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
      localeIdentifier = [currentLocale localeIdentifier];
      v166 = [v49 canonicalLanguageIdentifierFromString:localeIdentifier];
    }

    language3 = [v179 language];
    if (language3 && (v53 = language3, [v179 language], v54 = objc_claimAutoreleasedReturnValue(), v55 = objc_msgSend(v54, "isEqualToString:", @"und"), v54, v53, (v55 & 1) == 0))
    {
      language4 = [v179 language];
      v62 = [RKUtilities canonicalLanguageAndScriptCodeIdentifierForIdentifier:language4];

      v63 = [RKUtilities canonicalLanguageAndScriptCodeIdentifierForIdentifier:v166];
      if (([v62 isEqualToString:v63] & 1) == 0)
      {
        language5 = [v179 language];

        v166 = language5;
      }

      v39 = v179;

      if (responses)
      {
LABEL_33:
        if ([(RKMessageResponseManager *)self usePersonalizedRanking])
        {
          getRankLearner = [(RKMessageResponseManager *)self getRankLearner];
          rankLearner = self->_rankLearner;
          self->_rankLearner = getRankLearner;

          if ([v39 sentenceType] == 1)
          {
            [v39 setSentenceType:2];
          }

          rankLearner = [(RKMessageResponseManager *)self rankLearner];
          v59 = RKLinguisticCategoryToPreferenceKey([v39 sentenceType]);
          language6 = [v39 language];
          v164 = [rankLearner getRankedResponses:v59 forRecipientID:dCopy withLanguageID:language6];
        }

        else
        {
          v164 = 0;
        }

        if ([v39 sentenceType] == 6)
        {
          if ((options & 0x40) == 0)
          {
            goto LABEL_46;
          }
        }

        else
        {
          collection = [(RKMessageResponseManager *)self collection];
          v89 = [collection responsesForCategory:objc_msgSend(v39 gender:"sentenceType") maximumResponses:objc_msgSend(v39 withLanguage:"gender") context:responses options:{v166, v168, options}];
          [array addObjectsFromArray:v89];

          if ((options & 0x40) == 0)
          {
LABEL_46:
            if ((options & 0x80) != 0)
            {
              goto LABEL_48;
            }

            goto LABEL_47;
          }
        }

LABEL_41:
        v206[0] = MEMORY[0x277D85DD0];
        v206[1] = 3221225472;
        v206[2] = __170__RKMessageResponseManager_responsesForMessageWithLanguageDetectionImp_maximumResponses_forRecipientID_forConversationHistory_forContext_withLanguage_inputModes_options___block_invoke;
        v206[3] = &unk_279B100A0;
        v207 = array;
        [v207 enumerateObjectsUsingBlock:v206];

        if ((options & 0x80) != 0)
        {
LABEL_48:
          if ([v39 sentenceType] == 6)
          {
            if (responsesForMessageWithLanguageDetectionImp_maximumResponses_forRecipientID_forConversationHistory_forContext_withLanguage_inputModes_options__onceToken != -1)
            {
              [RKMessageResponseManager responsesForMessageWithLanguageDetectionImp:maximumResponses:forRecipientID:forConversationHistory:forContext:withLanguage:inputModes:options:];
            }

            v202[0] = MEMORY[0x277D85DD0];
            v202[1] = 3221225472;
            v202[2] = __170__RKMessageResponseManager_responsesForMessageWithLanguageDetectionImp_maximumResponses_forRecipientID_forConversationHistory_forContext_withLanguage_inputModes_options___block_invoke_6;
            v202[3] = &unk_279B100A0;
            v203 = array;
            [v203 enumerateObjectsUsingBlock:v202];
          }

          if ((options & 0x20) == 0)
          {
            v200[0] = MEMORY[0x277D85DD0];
            v200[1] = 3221225472;
            v200[2] = __170__RKMessageResponseManager_responsesForMessageWithLanguageDetectionImp_maximumResponses_forRecipientID_forConversationHistory_forContext_withLanguage_inputModes_options___block_invoke_8;
            v200[3] = &unk_279B100A0;
            v201 = array;
            [v201 enumerateObjectsUsingBlock:v200];
          }

          if ([v39 isSensitive])
          {

            array = 0;
          }

          standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
          [standardUserDefaults synchronize];
          v163 = standardUserDefaults;
          if ([standardUserDefaults BOOLForKey:@"RKSuppressGeneralStatementResponse"] && (!objc_msgSend(v39, "sentenceType") || objc_msgSend(v39, "sentenceType") == 31))
          {

            array = 0;
          }

          whitespaceAndNewlineCharacterSet2 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
          v67 = [impCopy stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet2];

          collection2 = [(RKMessageResponseManager *)selfCopy collection];
          v69 = [collection2 responsesForCategory:objc_msgSend(v39 gender:"sentenceType") maximumResponses:objc_msgSend(v39 withLanguage:"gender") context:responses options:{v166, v168, options & 0xFFFFFFFFFFFFFFE0 | 0xF}];

          v70 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF CONTAINS[c] %@", v67];
          v161 = v69;
          v71 = [v69 filteredArrayUsingPredicate:v70];
          v72 = [v71 count];

          v162 = v67;
          if (v72)
          {
            v73 = [MEMORY[0x277CCAC30] predicateWithFormat:@"NOT (SELF CONTAINS[c] %@)", v67];
            v74 = [array filteredArrayUsingPredicate:v73];
            v75 = [v74 mutableCopy];

            array = v75;
          }

          v76 = v180;
          array2 = [MEMORY[0x277CBEB18] array];
          v196 = 0u;
          v197 = 0u;
          v198 = 0u;
          v199 = 0u;
          v78 = array;
          v79 = [v78 countByEnumeratingWithState:&v196 objects:v218 count:16];
          if (v79)
          {
            v80 = v79;
            v81 = *v197;
            do
            {
              for (i = 0; i != v80; ++i)
              {
                if (*v197 != v81)
                {
                  objc_enumerationMutation(v78);
                }

                v83 = *(*(&v196 + 1) + 8 * i);
                if (([array2 containsObject:v83] & 1) == 0)
                {
                  [array2 addObject:v83];
                }
              }

              v80 = [v78 countByEnumeratingWithState:&v196 objects:v218 count:16];
            }

            while (v80);
          }

          v84 = [array2 copy];
          if (![v84 count])
          {

            v84 = 0;
          }

          if ([v84 count])
          {
            v85 = MEMORY[0x277D86220];
            v86 = MEMORY[0x277D86220];
            if (os_log_type_enabled(v85, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_2620A2000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Non-intent based responses have been sunset.", buf, 2u);
            }

            obj = 0;
            array3 = 0;
            v84 = 0;
            if ((options & 0x200) != 0)
            {
              goto LABEL_92;
            }
          }

          else if ((options & 0x200) != 0)
          {
            if (v84)
            {
              array3 = [MEMORY[0x277CBEB18] array];
              v192 = 0u;
              v193 = 0u;
              v194 = 0u;
              v195 = 0u;
              obj = v84;
              v90 = [obj countByEnumeratingWithState:&v192 objects:v217 count:16];
              if (v90)
              {
                v91 = v90;
                v92 = *v193;
                do
                {
                  for (j = 0; j != v91; ++j)
                  {
                    if (*v193 != v92)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v94 = [[RKResponse alloc] initWithString:*(*(&v192 + 1) + 8 * j) attributes:0 category:v176];
                    [array3 addObject:v94];
                  }

                  v91 = [obj countByEnumeratingWithState:&v192 objects:v217 count:16];
                }

                while (v91);
              }
            }

            else
            {
              obj = 0;
              array3 = 0;
            }

LABEL_92:
            v95 = objc_opt_new();
            v160 = RKLinguisticCategoryToPreferenceKey([v39 sentenceType]);
            [v95 setObject:? forKey:?];
            v96 = +[RKMessageIntentRecognizer sharedManager];
            language7 = [v39 language];
            v158 = v96;
            v159 = v95;
            v98 = [v96 copyAttributedTokensForMessage:impCopy conversationTurns:v167 metadata:v95 languageID:language7];

            if ([v98 count] && !array3)
            {
              array3 = objc_opt_new();
            }

            v178 = array3;
            v190 = 0u;
            v191 = 0u;
            v188 = 0u;
            v189 = 0u;
            v185 = v98;
            v99 = [v185 countByEnumeratingWithState:&v188 objects:v216 count:16];
            v184 = array2;
            if (v99)
            {
              v100 = v99;
              v101 = 0;
              v102 = *v189;
              v177 = impCopy;
              v182 = *v189;
              do
              {
                for (k = 0; k != v100; ++k)
                {
                  if (*v189 != v102)
                  {
                    objc_enumerationMutation(v185);
                  }

                  v104 = *(*(&v188 + 1) + 8 * k);
                  IntentType = NLMessageIntentCandidateGetIntentType();
                  v106 = NLMessageIntentCandidateCopyAttributes();
                  NLMessageIntentCandidateGetScore();
                  v109 = v107 < 0.5 || IntentType != 1;
                  if (((v109 | v76) & 1) == 0)
                  {
                    v110 = objc_opt_new();
                    [v110 setObject:@"photosharing" forKey:@"type"];
                    v111 = [v106 objectForKey:*MEMORY[0x277D2B838]];
                    v112 = [v111 componentsSeparatedByString:{@", "}];
                    [v110 setObject:v112 forKey:@"keywords"];
                    v113 = [RKMessageIntentRecognizer getRangesOfKeywords:v112 forMessage:impCopy];
                    if ([v113 count])
                    {
                      [v110 setObject:v113 forKey:@"keywordranges"];
                      [v110 setObject:impCopy forKey:@"message"];
                      v114 = RKLinguisticCategoryToPreferenceKey(45);
                      v186 = [[RKResponse alloc] initWithString:0 attributes:v110 category:v114];
                      language8 = [v179 language];
                      [RKCoreAnalytics sendCoreAnalyticsEvent:v114 forAction:@"triggered" withLanguageID:language8];

                      [v178 insertObject:v186 atIndex:0];
                      v76 = v180;

                      impCopy = v177;
                      v101 = 1;
                    }

                    v102 = v182;
                    array2 = v184;
                  }
                }

                v100 = [v185 countByEnumeratingWithState:&v188 objects:v216 count:16];
              }

              while (v100);
            }

            else
            {
              v101 = 0;
            }

            v187 = +[RKPaymentIdentifier sharedManager];
            v116 = [v187 copyAttributedTokensForText:impCopy];
            v183 = v116;
            if (v116)
            {
              v117 = v116;
              language10 = RKLinguisticCategoryToPreferenceKey(44);
              v119 = [[RKResponse alloc] initWithString:0 attributes:v117 category:language10];
              v39 = v179;
              array4 = v178;
              if (!v178)
              {
                array4 = [MEMORY[0x277CBEB18] array];
              }

              language9 = [v179 language];
              [RKCoreAnalytics sendCoreAnalyticsEvent:language10 forAction:@"triggered" withLanguageID:language9];

              [array4 insertObject:v119 atIndex:0];
            }

            else
            {
              v39 = v179;
              if (v101)
              {
                array4 = v178;
                goto LABEL_122;
              }

              language10 = [v179 language];
              [RKCoreAnalytics sendCoreAnalyticsEvent:v160 forAction:@"triggered" withLanguageID:language10];
              array4 = v178;
            }

LABEL_122:
            v122 = [(RKMessageResponseManager *)selfCopy responseWithAttributesMatchingProactiveGrammarForMessageImp:impCopy languageID:language kbdInputModes:modesCopy];
            if ([objc_opt_class() _responseLooksLikeIncomingCheckInResponse:v122])
            {
              if (v76)
              {
                v123 = MEMORY[0x277D86220];
                v124 = MEMORY[0x277D86220];
                if (os_log_type_enabled(v123, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  v125 = MEMORY[0x277D86220];
                  v126 = "Incoming check-in response is not valid for outgoing messages";
LABEL_140:
                  _os_log_impl(&dword_2620A2000, v125, OS_LOG_TYPE_INFO, v126, buf, 2u);
                  goto LABEL_141;
                }

                goto LABEL_141;
              }
            }

            else
            {
              if (![objc_opt_class() _responseLooksLikeOutgoingCheckInResponse:v122])
              {
                if (!v76)
                {
                  if ([objc_opt_class() _responseTypeIsSunsetted:v122])
                  {
                    v152 = MEMORY[0x277D86220];
                    v153 = MEMORY[0x277D86220];
                    language11 = v163;
                    if (os_log_type_enabled(v152, OS_LOG_TYPE_INFO))
                    {
                      attributes = [v122 attributes];
                      v155 = [attributes objectForKeyedSubscript:@"type"];
                      *buf = 138412290;
                      v209 = v155;
                      _os_log_impl(&dword_2620A2000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Responses of this type (%@) have been sunsetted", buf, 0xCu);
                    }

                    contextCopy = v168;
                    array2 = v184;
                    goto LABEL_152;
                  }

                  contextCopy = v168;
                  language11 = v163;
                  array2 = v184;
                  if (!v122)
                  {
LABEL_152:
                    v21 = array4;

                    goto LABEL_153;
                  }

LABEL_149:
                  if (!array4)
                  {
                    array4 = [MEMORY[0x277CBEB18] array];
                  }

                  [array4 insertObject:v122 atIndex:0];
                  goto LABEL_152;
                }

                attributes2 = [v122 attributes];
                v128 = [attributes2 copy];

                v133 = [objc_opt_class() _isMirroredResponseValidForResponse:v122];
                v134 = MEMORY[0x277D86220];
                v135 = MEMORY[0x277D86220];
                if (os_log_type_enabled(v134, OS_LOG_TYPE_INFO))
                {
                  v136 = [v128 objectForKeyedSubscript:@"type"];
                  v137 = [v128 objectForKeyedSubscript:@"subtype"];
                  v138 = [v128 objectForKeyedSubscript:@"field"];
                  v139 = v138;
                  v140 = @"No";
                  *buf = 138413058;
                  v209 = v136;
                  if (v133)
                  {
                    v140 = @"Yes";
                  }

                  v210 = 2112;
                  v211 = v137;
                  v212 = 2112;
                  v213 = v138;
                  v214 = 2112;
                  v215 = v140;
                  _os_log_impl(&dword_2620A2000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Response with type: %@, subtype: %@, field: %@ is valid for mirroring: %@", buf, 0x2Au);
                }

                language11 = v163;
                if (v133)
                {
                  v131 = [v128 mutableCopy];
                  [v131 setObject:@"mirrored" forKeyedSubscript:@"pov"];
                  v141 = [v131 copy];
                  [v122 setAttributes:v141];

                  v142 = MEMORY[0x277D86220];
                  v143 = MEMORY[0x277D86220];
                  if (os_log_type_enabled(v142, OS_LOG_TYPE_INFO))
                  {
                    attributes3 = [v122 attributes];
                    v144 = [attributes3 objectForKeyedSubscript:@"type"];
                    attributes4 = [v122 attributes];
                    v146 = [attributes4 objectForKeyedSubscript:@"subtype"];
                    attributes5 = [v122 attributes];
                    [attributes5 objectForKeyedSubscript:@"field"];
                    v149 = v148 = impCopy;
                    *buf = 138412802;
                    v209 = v144;
                    v210 = 2112;
                    v211 = v146;
                    v212 = 2112;
                    v213 = v149;
                    _os_log_impl(&dword_2620A2000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Response after mirroring has type: %@, subtype: %@, field: %@", buf, 0x20u);

                    impCopy = v148;
                    v39 = v179;

                    language11 = v163;
                  }
                }

                else
                {
                  v131 = v122;
                  v122 = 0;
                }

                array2 = v184;
LABEL_148:

                contextCopy = v168;
                if (!v122)
                {
                  goto LABEL_152;
                }

                goto LABEL_149;
              }

              if ((v76 & 1) == 0)
              {
                v150 = MEMORY[0x277D86220];
                v151 = MEMORY[0x277D86220];
                if (os_log_type_enabled(v150, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  v125 = MEMORY[0x277D86220];
                  v126 = "Outgoing check-in response is not valid for incoming messages";
                  goto LABEL_140;
                }

LABEL_141:

                contextCopy = v168;
                language11 = v163;
                goto LABEL_152;
              }
            }

            attributes6 = [v122 attributes];
            v128 = [attributes6 mutableCopy];

            v129 = [@"event" copy];
            [v128 setObject:v129 forKeyedSubscript:@"type"];

            v130 = [@"traveling home" copy];
            [v128 setObject:v130 forKeyedSubscript:@"subtype"];

            [v128 setObject:0 forKeyedSubscript:@"request"];
            v131 = [v128 copy];
            [v122 setAttributes:v131];
            language11 = v163;
            goto LABEL_148;
          }

          v21 = v84;
          obj = v21;
          contextCopy = v168;
          language11 = v163;
LABEL_153:

          v32 = obj;
          goto LABEL_154;
        }

LABEL_47:
        v204[0] = MEMORY[0x277D85DD0];
        v204[1] = 3221225472;
        v204[2] = __170__RKMessageResponseManager_responsesForMessageWithLanguageDetectionImp_maximumResponses_forRecipientID_forConversationHistory_forContext_withLanguage_inputModes_options___block_invoke_2;
        v204[3] = &unk_279B100A0;
        v205 = array;
        [v205 enumerateObjectsUsingBlock:v204];

        goto LABEL_48;
      }
    }

    else
    {
      v39 = v179;
      if (responses)
      {
        goto LABEL_33;
      }
    }

    v164 = 0;
    if ((options & 0x40) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_41;
  }

  v32 = [RKResponseCollection responsesForFullScreenMoments:impCopy];
  v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (!v32 || ![v32 count])
  {

    goto LABEL_20;
  }

  v33 = [v32 objectAtIndexedSubscript:0];
  v34 = [v33 objectForKey:@"subtype"];
  v35 = RKLinguisticCategoryForFSMType(v34);

  v36 = [RKResponse alloc];
  v37 = [v32 objectAtIndexedSubscript:0];
  v38 = [(RKResponse *)v36 initWithString:0 attributes:v37 category:v35];

  v164 = v38;
  [v21 insertObject:v38 atIndex:0];
  v39 = v179;
  language11 = [v179 language];
  v166 = v35;
  [RKCoreAnalytics sendCoreAnalyticsEvent:v35 forAction:@"triggered" withLanguageID:language11];
  contextCopy = v168;
LABEL_154:

LABEL_155:
LABEL_156:

  v156 = *MEMORY[0x277D85DE8];

  return v21;
}

void __170__RKMessageResponseManager_responsesForMessageWithLanguageDetectionImp_maximumResponses_forRecipientID_forConversationHistory_forContext_withLanguage_inputModes_options___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 stringByReplacingOccurrencesOfString:@"“" withString:@""];
  v6 = [v5 stringByReplacingOccurrencesOfString:@"”" withString:@""];

  v7 = [v6 stringByReplacingOccurrencesOfString:@"‘" withString:@"'"];

  v8 = [v7 stringByReplacingOccurrencesOfString:@"’" withString:@"'"];

  [*(a1 + 32) setObject:v8 atIndexedSubscript:a3];
}

void __170__RKMessageResponseManager_responsesForMessageWithLanguageDetectionImp_maximumResponses_forRecipientID_forConversationHistory_forContext_withLanguage_inputModes_options___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 componentsSeparatedByString:@"\n"];
  v6 = [v5 mutableCopy];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __170__RKMessageResponseManager_responsesForMessageWithLanguageDetectionImp_maximumResponses_forRecipientID_forConversationHistory_forContext_withLanguage_inputModes_options___block_invoke_3;
  v9[3] = &unk_279B100A0;
  v10 = v6;
  v7 = v6;
  [v7 enumerateObjectsUsingBlock:v9];
  v8 = [v7 componentsJoinedByString:@"\n"];
  [*(a1 + 32) setObject:v8 atIndexedSubscript:a3];
}

void __170__RKMessageResponseManager_responsesForMessageWithLanguageDetectionImp_maximumResponses_forRecipientID_forConversationHistory_forContext_withLanguage_inputModes_options___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 uppercaseFirstWordString];
  [*(a1 + 32) setObject:v5 atIndexedSubscript:a3];
}

uint64_t __170__RKMessageResponseManager_responsesForMessageWithLanguageDetectionImp_maximumResponses_forRecipientID_forConversationHistory_forContext_withLanguage_inputModes_options___block_invoke_4()
{
  v0 = [MEMORY[0x277CBEB38] dictionary];
  v1 = responsesForMessageWithLanguageDetectionImp_maximumResponses_forRecipientID_forConversationHistory_forContext_withLanguage_inputModes_options__sAppleProducts;
  responsesForMessageWithLanguageDetectionImp_maximumResponses_forRecipientID_forConversationHistory_forContext_withLanguage_inputModes_options__sAppleProducts = v0;

  return [&unk_2874E6FE8 enumerateObjectsUsingBlock:&__block_literal_global_339];
}

void __170__RKMessageResponseManager_responsesForMessageWithLanguageDetectionImp_maximumResponses_forRecipientID_forConversationHistory_forContext_withLanguage_inputModes_options___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = a2;
  v4 = [v2 stringWithFormat:@"\\b%@\\b", v3];
  v5 = [v4 stringByReplacingOccurrencesOfString:@" " withString:@"\\s*"];

  [responsesForMessageWithLanguageDetectionImp_maximumResponses_forRecipientID_forConversationHistory_forContext_withLanguage_inputModes_options__sAppleProducts setObject:v3 forKeyedSubscript:v5];
}

void __170__RKMessageResponseManager_responsesForMessageWithLanguageDetectionImp_maximumResponses_forRecipientID_forConversationHistory_forContext_withLanguage_inputModes_options___block_invoke_6(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 mutableCopy];
  v6 = responsesForMessageWithLanguageDetectionImp_maximumResponses_forRecipientID_forConversationHistory_forContext_withLanguage_inputModes_options__sAppleProducts;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __170__RKMessageResponseManager_responsesForMessageWithLanguageDetectionImp_maximumResponses_forRecipientID_forConversationHistory_forContext_withLanguage_inputModes_options___block_invoke_7;
  v8[3] = &unk_279B10950;
  v9 = v5;
  v10 = *(a1 + 32);
  v11 = a3;
  v7 = v5;
  [v6 enumerateKeysAndObjectsUsingBlock:v8];
}

void __170__RKMessageResponseManager_responsesForMessageWithLanguageDetectionImp_maximumResponses_forRecipientID_forConversationHistory_forContext_withLanguage_inputModes_options___block_invoke_7(void *a1, void *a2, void *a3)
{
  v5 = a1[4];
  v6 = a3;
  v7 = a2;
  v8 = [v5 replaceOccurrencesOfString:v7 withString:v6 options:1025 range:{0, objc_msgSend(v5, "length")}];

  if (v8)
  {
    v10 = a1[4];
    v9 = a1[5];
    v11 = a1[6];

    [v9 setObject:v10 atIndexedSubscript:v11];
  }
}

void __170__RKMessageResponseManager_responsesForMessageWithLanguageDetectionImp_maximumResponses_forRecipientID_forConversationHistory_forContext_withLanguage_inputModes_options___block_invoke_8(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = [a2 componentsSeparatedByString:@"\n"];
  if ([v6 count] >= 2)
  {
    v5 = [v6 objectAtIndex:{arc4random() % objc_msgSend(v6, "count")}];
    [*(a1 + 32) setObject:v5 atIndexedSubscript:a3];
  }
}

- (id)categoryForMessage:(id)message langID:(id)d
{
  messageCopy = message;
  dCopy = d;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__2;
  v21 = __Block_byref_object_dispose__2;
  v22 = 0;
  dispatchQueue = [(RKMessageResponseManager *)self dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__RKMessageResponseManager_categoryForMessage_langID___block_invoke;
  block[3] = &unk_279B10978;
  v14 = messageCopy;
  v15 = dCopy;
  v16 = &v17;
  v9 = dCopy;
  v10 = messageCopy;
  dispatch_sync(dispatchQueue, block);

  v11 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v11;
}

void __54__RKMessageResponseManager_categoryForMessage_langID___block_invoke(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [RKMessageClassifier messageClassification:a1[4] withLanguageIdentifier:a1[5]];
  v4 = RKLinguisticCategoryToPreferenceKey([v3 sentenceType]);
  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if ([*(*(a1[6] + 8) + 40) isEqualToString:@"QueryGeneral"])
  {
    v7 = *(a1[6] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = @"QueryPolar";
  }

  objc_autoreleasePoolPop(v2);
}

- (id)categoryForMessageWithoutQueue:(id)queue langID:(id)d
{
  queueCopy = queue;
  dCopy = d;
  v7 = objc_autoreleasePoolPush();
  v8 = [RKMessageClassifier messageClassification:queueCopy withLanguageIdentifier:dCopy];
  v9 = RKLinguisticCategoryToPreferenceKey([v8 sentenceType]);
  if ([(__CFString *)v9 isEqualToString:@"QueryGeneral"])
  {

    v9 = @"QueryPolar";
  }

  objc_autoreleasePoolPop(v7);

  return v9;
}

- (void)registerResponse:(id)response forMessage:(id)message forContext:(id)context withEffectiveDate:(id)date withLanguage:(id)language
{
  responseCopy = response;
  messageCopy = message;
  contextCopy = context;
  dateCopy = date;
  languageCopy = language;
  dispatchQueue = [(RKMessageResponseManager *)self dispatchQueue];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __98__RKMessageResponseManager_registerResponse_forMessage_forContext_withEffectiveDate_withLanguage___block_invoke;
  v23[3] = &unk_279B109A0;
  v24 = responseCopy;
  v25 = messageCopy;
  selfCopy = self;
  v27 = languageCopy;
  v28 = contextCopy;
  v29 = dateCopy;
  v18 = dateCopy;
  v19 = contextCopy;
  v20 = languageCopy;
  v21 = messageCopy;
  v22 = responseCopy;
  dispatch_sync(dispatchQueue, v23);
}

void __98__RKMessageResponseManager_registerResponse_forMessage_forContext_withEffectiveDate_withLanguage___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    if (*(a1 + 40))
    {
      v2 = [*(a1 + 48) collection];
      [v2 registerResponse:*(a1 + 32) forMessage:*(a1 + 40) withLanguage:*(a1 + 56) context:*(a1 + 64) effectiveDate:*(a1 + 72)];
    }

    else
    {
      NSLog(&cfstr_WarningMessage.isa);
    }
  }

  else
  {
    NSLog(&cfstr_WarningRespons.isa);
  }
}

- (void)registerResponse:(id)response forMessage:(id)message metadata:(id)metadata withLanguage:(id)language
{
  responseCopy = response;
  messageCopy = message;
  metadataCopy = metadata;
  languageCopy = language;
  dispatchQueue = [(RKMessageResponseManager *)self dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__RKMessageResponseManager_registerResponse_forMessage_metadata_withLanguage___block_invoke;
  block[3] = &unk_279B109C8;
  v20 = messageCopy;
  v21 = responseCopy;
  selfCopy = self;
  v23 = languageCopy;
  v24 = metadataCopy;
  v15 = metadataCopy;
  v16 = languageCopy;
  v17 = responseCopy;
  v18 = messageCopy;
  dispatch_async(dispatchQueue, block);
}

void __78__RKMessageResponseManager_registerResponse_forMessage_metadata_withLanguage___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    if ([v2 length] <= 0x800)
    {
      v3 = *(a1 + 40);
      if (v3)
      {
        if ([v3 length] <= 0x14)
        {
          if ([*(a1 + 48) usePersonalizedRanking])
          {
            v4 = [*(a1 + 48) getRankLearner];
            v5 = *(a1 + 48);
            v6 = *(v5 + 32);
            *(v5 + 32) = v4;
          }

          if (*(*(a1 + 48) + 32))
          {
            v7 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:*(a1 + 56)];
            v30 = [v7 objectForKey:*MEMORY[0x277CBE6C8]];

            v8 = objc_opt_new();
            v9 = [*(a1 + 64) objectForKeyedSubscript:@"recipient"];
            [v8 setObject:v9 forKeyedSubscript:@"recipient"];

            v10 = [*(a1 + 64) objectForKeyedSubscript:@"source"];
            [v8 setObject:v10 forKeyedSubscript:@"source"];

            v11 = [*(a1 + 64) objectForKeyedSubscript:@"inputmethod"];
            v29 = v8;
            [v8 setObject:v11 forKeyedSubscript:@"inputmethod"];

            v31 = a1;
            v12 = [*(a1 + 64) objectForKeyedSubscript:@"rankedlist"];
            v13 = objc_opt_new();
            v33 = 0u;
            v34 = 0u;
            v35 = 0u;
            v36 = 0u;
            obj = v12;
            v14 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
            if (v14)
            {
              v15 = v14;
              v16 = *v34;
              do
              {
                for (i = 0; i != v15; ++i)
                {
                  if (*v34 != v16)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v18 = *(*(&v33 + 1) + 8 * i);
                  v19 = objc_opt_new();
                  v20 = [v18 string];
                  [v19 addObject:v20];

                  v21 = [v18 attributes];
                  v22 = [v21 objectForKey:@"rank"];
                  [v19 addObject:v22];

                  v23 = [v18 attributes];
                  v24 = [v23 objectForKey:@"selected"];
                  [v19 addObject:v24];

                  v25 = [v19 componentsJoinedByString:@":"];
                  [v13 addObject:v25];
                }

                v15 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
              }

              while (v15);
            }

            v26 = [*(v31 + 48) categoryForMessageWithoutQueue:*(v31 + 32) langID:*(v31 + 56)];
            [v29 setObject:v26 forKeyedSubscript:@"category"];
            v27 = [v13 componentsJoinedByString:@""];;
            [v29 setObject:v27 forKeyedSubscript:@"rankedlist"];
            [v29 setObject:*(v31 + 32) forKeyedSubscript:@"message"];
            [v29 setObject:*(v31 + 40) forKeyedSubscript:@"response"];
            if ([*(*(v31 + 48) + 32) insertRankingInfo:v29 forLanguageID:v30])
            {
              [*(*(v31 + 48) + 32) flushRankingData:v30];
            }
          }
        }
      }
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (id)getRankLearner
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__RKMessageResponseManager_getRankLearner__block_invoke;
  block[3] = &unk_279B10270;
  block[4] = self;
  if (getRankLearner_onceToken != -1)
  {
    dispatch_once(&getRankLearner_onceToken, block);
  }

  return self->_rankLearner;
}

uint64_t __42__RKMessageResponseManager_getRankLearner__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(RKRankLearner);
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;

  return MEMORY[0x2821F96F8]();
}

- (BOOL)usePersonalizedRanking
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_2620A2000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Rank learning has been sunset across all platforms.", v3, 2u);
  }

  return 0;
}

- (void)prunePersonalizedUserDatabase:(id)database
{
  databaseCopy = database;
  if ([(RKMessageResponseManager *)self usePersonalizedRanking])
  {
    v4 = objc_alloc_init(RKRankLearner);
    v5 = [(RKRankLearner *)v4 getDBManager:databaseCopy];
    [v5 pruneUserDatabase];
  }
}

- (void)resetRegisteredResponses
{
  dispatchQueue = [(RKMessageResponseManager *)self dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__RKMessageResponseManager_resetRegisteredResponses__block_invoke;
  block[3] = &unk_279B10270;
  block[4] = self;
  dispatch_sync(dispatchQueue, block);
}

void __52__RKMessageResponseManager_resetRegisteredResponses__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) collection];
  [v1 resetRegisteredResponses];
}

- (void)flushDynamicData
{
  dispatchQueue = [(RKMessageResponseManager *)self dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__RKMessageResponseManager_flushDynamicData__block_invoke;
  block[3] = &unk_279B10270;
  block[4] = self;
  dispatch_sync(dispatchQueue, block);
}

void __44__RKMessageResponseManager_flushDynamicData__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) collection];
  [v1 flushDynamicData];
}

+ (BOOL)_needsMirroredAnalysisForMessage:(id)message forChronologicalConversationHistory:(id)history
{
  historyCopy = history;
  if ([message length] || !objc_msgSend(historyCopy, "count"))
  {
    v7 = 0;
  }

  else
  {
    v8 = [self _mostRecentTextFromChronologicalConversationHistory:historyCopy];
    v7 = [v8 length] != 0;
  }

  return v7;
}

+ (BOOL)_responseTypeIsSunsetted:(id)sunsetted
{
  if (!sunsetted)
  {
    return 0;
  }

  attributes = [sunsetted attributes];
  v4 = [attributes objectForKeyedSubscript:@"type"];

  if ([v4 isEqualToString:@"event"])
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 isEqualToString:@"health"];
  }

  return v5;
}

+ (BOOL)_responseLooksLikeIncomingCheckInResponse:(id)response
{
  if (!response)
  {
    return 0;
  }

  attributes = [response attributes];
  v4 = [attributes objectForKeyedSubscript:@"request"];

  LOBYTE(attributes) = [v4 containsString:@"xCHECKININCOMINGx"];
  return attributes;
}

+ (BOOL)_responseLooksLikeOutgoingCheckInResponse:(id)response
{
  if (!response)
  {
    return 0;
  }

  attributes = [response attributes];
  v4 = [attributes objectForKeyedSubscript:@"request"];

  LOBYTE(attributes) = [v4 containsString:@"xCHECKINOUTGOINGx"];
  return attributes;
}

+ (BOOL)_isMirroredResponseValidForResponse:(id)response
{
  attributes = [response attributes];
  v4 = [attributes objectForKeyedSubscript:@"type"];
  v5 = [attributes objectForKeyedSubscript:@"subtype"];
  v6 = [attributes objectForKeyedSubscript:@"field"];
  if ([v6 length] || !objc_msgSend(v4, "containsString:", @"location"))
  {
    v7 = 0;
  }

  else
  {
    v7 = [v5 containsString:@"current location"];
  }

  return v7;
}

+ (id)_mostRecentTextFromChronologicalConversationHistory:(id)history
{
  historyCopy = history;
  if ([historyCopy count])
  {
    v4 = [objc_opt_class() _chronologicalConversationHistory:historyCopy];
    lastObject = [v4 lastObject];
    text = [lastObject text];
  }

  else
  {
    text = 0;
  }

  return text;
}

uint64_t __62__RKMessageResponseManager__chronologicalConversationHistory___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 timestamp];
  v6 = [v4 timestamp];

  v7 = [v5 compare:v6];
  return v7;
}

@end