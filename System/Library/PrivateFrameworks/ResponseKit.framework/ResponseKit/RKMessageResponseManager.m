@interface RKMessageResponseManager
+ (BOOL)_isMirroredResponseValidForResponse:(id)a3;
+ (BOOL)_needsMirroredAnalysisForMessage:(id)a3 forChronologicalConversationHistory:(id)a4;
+ (BOOL)_responseLooksLikeIncomingCheckInResponse:(id)a3;
+ (BOOL)_responseLooksLikeOutgoingCheckInResponse:(id)a3;
+ (BOOL)_responseTypeIsSunsetted:(id)a3;
+ (id)_mostRecentTextFromChronologicalConversationHistory:(id)a3;
+ (id)sharedManager;
- (BOOL)usePersonalizedRanking;
- (RKMessageResponseManager)initWithAssetPlistURL:(id)a3;
- (RKMessageResponseManager)initWithDynamicDataURL:(id)a3;
- (RKMessageResponseManager)initWithDynamicDataURL:(id)a3 displayStringsProvider:(id)a4;
- (RKMessageResponseManager)initWithDynamicDataURL:(id)a3 withBundleURL:(id)a4;
- (id)categoryForMessage:(id)a3 langID:(id)a4;
- (id)categoryForMessageWithoutQueue:(id)a3 langID:(id)a4;
- (id)dispatchQueue;
- (id)getRankLearner;
- (id)responseWithAttributesMatchingProactiveGrammarForMessage:(id)a3 languageID:(id)a4 kbdInputModes:(id)a5;
- (id)responseWithAttributesMatchingProactiveGrammarForMessageImp:(id)a3 languageID:(id *)a4 kbdInputModes:(id)a5;
- (id)responsesForMessage:(id)a3 maximumResponses:(unint64_t)a4 forContext:(id)a5 withLanguage:(id)a6 options:(unint64_t)a7;
- (id)responsesForMessage:(id)a3 maximumResponses:(unint64_t)a4 forConversationHistory:(id)a5 withLanguage:(id)a6 inputModes:(id)a7 options:(unint64_t)a8;
- (id)responsesForMessage:(id)a3 maximumResponses:(unint64_t)a4 forConversationHistory:(id)a5 withLanguage:(id)a6 options:(unint64_t)a7;
- (id)responsesForMessage:(id)a3 maximumResponses:(unint64_t)a4 recipientID:(id)a5 forConversationHistory:(id)a6 withLanguage:(id)a7 options:(unint64_t)a8;
- (id)responsesForMessageImp:(id)a3 maximumResponses:(unint64_t)a4 forRecipientID:(id)a5 forConversationHistory:(id)a6 forContext:(id)a7 withLanguage:(id)a8 options:(unint64_t)a9;
- (id)responsesForMessageWithLanguageDetection:(id)a3 maximumResponses:(unint64_t)a4 forConversationHistory:(id)a5 forContext:(id)a6 withLanguage:(id *)a7 options:(unint64_t)a8;
- (id)responsesForMessageWithLanguageDetectionImp:(id)a3 maximumResponses:(unint64_t)a4 forRecipientID:(id)a5 forConversationHistory:(id)a6 forContext:(id)a7 withLanguage:(id *)a8 inputModes:(id)a9 options:(unint64_t)a10;
- (void)flushDynamicData;
- (void)prunePersonalizedUserDatabase:(id)a3;
- (void)registerResponse:(id)a3 forMessage:(id)a4 forContext:(id)a5 withEffectiveDate:(id)a6 withLanguage:(id)a7;
- (void)registerResponse:(id)a3 forMessage:(id)a4 metadata:(id)a5 withLanguage:(id)a6;
- (void)resetRegisteredResponses;
- (void)responseWithAttributesMatchingProactiveGrammarForMessage:(id)a3 languageID:(id)a4 kbdInputModes:(id)a5 completionBlock:(id)a6;
- (void)responsesForMessage:(id)a3 maximumResponses:(unint64_t)a4 forContext:(id)a5 withLanguage:(id)a6 options:(unint64_t)a7 completionBlock:(id)a8;
- (void)responsesForMessage:(id)a3 maximumResponses:(unint64_t)a4 forConversationHistory:(id)a5 withLanguage:(id)a6 options:(unint64_t)a7 completionBlock:(id)a8;
- (void)responsesForMessage:(id)a3 maximumResponses:(unint64_t)a4 recipientID:(id)a5 forConversationHistory:(id)a6 withLanguage:(id)a7 options:(unint64_t)a8 completionBlock:(id)a9;
- (void)responsesForMessageWithLanguageDetection:(id)a3 maximumResponses:(unint64_t)a4 forConversationHistory:(id)a5 forContext:(id)a6 withLanguage:(id *)a7 options:(unint64_t)a8 completionBlock:(id)a9;
@end

@implementation RKMessageResponseManager

+ (id)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__RKMessageResponseManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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

- (RKMessageResponseManager)initWithDynamicDataURL:(id)a3
{
  v4 = a3;
  v5 = [RKBundleDataProvider alloc];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [(RKBundleDataProvider *)v5 initWithBundle:v6];
  v8 = [(RKMessageResponseManager *)self initWithDynamicDataURL:v4 displayStringsProvider:v7];

  return v8;
}

- (RKMessageResponseManager)initWithDynamicDataURL:(id)a3 withBundleURL:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [RKBundleDataProvider alloc];
  v9 = [MEMORY[0x277CCA8D8] bundleWithURL:v6];

  v10 = [(RKBundleDataProvider *)v8 initWithBundle:v9];
  v11 = [(RKMessageResponseManager *)self initWithDynamicDataURL:v7 displayStringsProvider:v10];

  return v11;
}

- (RKMessageResponseManager)initWithAssetPlistURL:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v25.receiver = self;
  v25.super_class = RKMessageResponseManager;
  v5 = [(RKMessageResponseManager *)&v25 init];
  v6 = [(RKMessageResponseManager *)v5 dispatchQueue];
  dispatchQueue = v5->_dispatchQueue;
  v5->_dispatchQueue = v6;

  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = [MEMORY[0x277CBEAF8] preferredLanguages];
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
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
          objc_enumerationMutation(v9);
        }

        v14 = [RKUtilities canonicalLanguageAndScriptCodeIdentifierForIdentifier:*(*(&v21 + 1) + 8 * v13)];
        [v8 addObject:v14];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v11);
  }

  [(RKMessageResponseManager *)v5 setPreferredLanguages:v8];
  if (v5)
  {
    v15 = [RKResponseCollection alloc];
    v16 = [[RKBundleDataProvider alloc] initWithAssetPlist:v4];
    v17 = [(RKResponseCollection *)v15 initWithDynamicDataURL:0 displayStringsProvider:v16];
    collection = v5->_collection;
    v5->_collection = v17;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v5;
}

- (RKMessageResponseManager)initWithDynamicDataURL:(id)a3 displayStringsProvider:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v24.receiver = self;
  v24.super_class = RKMessageResponseManager;
  v6 = [(RKMessageResponseManager *)&v24 init];
  v7 = [(RKMessageResponseManager *)v6 dispatchQueue];
  dispatchQueue = v6->_dispatchQueue;
  v6->_dispatchQueue = v7;

  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = [MEMORY[0x277CBEAF8] preferredLanguages];
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
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
          objc_enumerationMutation(v10);
        }

        v15 = [RKUtilities canonicalLanguageAndScriptCodeIdentifierForIdentifier:*(*(&v20 + 1) + 8 * v14)];
        if (v15)
        {
          [v9 addObject:v15];
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v12);
  }

  [(RKMessageResponseManager *)v6 setPreferredLanguages:v9];
  if (v6)
  {
    v16 = [[RKResponseCollection alloc] initWithDynamicDataURL:0 displayStringsProvider:v5];
    collection = v6->_collection;
    v6->_collection = v16;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)responsesForMessage:(id)a3 maximumResponses:(unint64_t)a4 forContext:(id)a5 withLanguage:(id)a6 options:(unint64_t)a7 completionBlock:(id)a8
{
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a8;
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
  v24 = v14;
  v25 = v15;
  v26 = v16;
  v29 = a4;
  v30 = a7;
  v27 = v17;
  v28 = v31;
  v19 = v17;
  v20 = v16;
  v21 = v15;
  v22 = v14;
  dispatch_async(dispatchQueue, v23);

  _Block_object_dispose(v31, 8);
}

void __113__RKMessageResponseManager_responsesForMessage_maximumResponses_forContext_withLanguage_options_completionBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) responsesForMessageImp:*(a1 + 40) maximumResponses:*(a1 + 80) forRecipientID:0 forConversationHistory:*(*(*(a1 + 72) + 8) + 40) forContext:*(a1 + 48) withLanguage:*(a1 + 56) options:RKMessageResponseDontOverrideLanguageID | *(a1 + 88)];
  (*(*(a1 + 64) + 16))();
}

- (void)responsesForMessage:(id)a3 maximumResponses:(unint64_t)a4 forConversationHistory:(id)a5 withLanguage:(id)a6 options:(unint64_t)a7 completionBlock:(id)a8
{
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a8;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __125__RKMessageResponseManager_responsesForMessage_maximumResponses_forConversationHistory_withLanguage_options_completionBlock___block_invoke;
  block[3] = &unk_279B107A0;
  block[4] = self;
  v24 = v14;
  v25 = v15;
  v26 = v16;
  v28 = a4;
  v29 = a7;
  v27 = v17;
  v19 = v17;
  v20 = v16;
  v21 = v15;
  v22 = v14;
  dispatch_async(dispatchQueue, block);
}

void __125__RKMessageResponseManager_responsesForMessage_maximumResponses_forConversationHistory_withLanguage_options_completionBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) responsesForMessageImp:*(a1 + 40) maximumResponses:*(a1 + 72) forRecipientID:0 forConversationHistory:*(a1 + 48) forContext:0 withLanguage:*(a1 + 56) options:RKMessageResponseDontOverrideLanguageID | *(a1 + 80)];
  (*(*(a1 + 64) + 16))();
}

- (void)responsesForMessage:(id)a3 maximumResponses:(unint64_t)a4 recipientID:(id)a5 forConversationHistory:(id)a6 withLanguage:(id)a7 options:(unint64_t)a8 completionBlock:(id)a9
{
  v15 = a3;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a9;
  dispatchQueue = self->_dispatchQueue;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __137__RKMessageResponseManager_responsesForMessage_maximumResponses_recipientID_forConversationHistory_withLanguage_options_completionBlock___block_invoke;
  v26[3] = &unk_279B107C8;
  v26[4] = self;
  v27 = v15;
  v28 = v16;
  v29 = v17;
  v32 = a4;
  v33 = a8;
  v30 = v18;
  v31 = v19;
  v21 = v19;
  v22 = v18;
  v23 = v17;
  v24 = v16;
  v25 = v15;
  dispatch_async(dispatchQueue, v26);
}

void __137__RKMessageResponseManager_responsesForMessage_maximumResponses_recipientID_forConversationHistory_withLanguage_options_completionBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) responsesForMessageImp:*(a1 + 40) maximumResponses:*(a1 + 80) forRecipientID:*(a1 + 48) forConversationHistory:*(a1 + 56) forContext:0 withLanguage:*(a1 + 64) options:RKMessageResponseDontOverrideLanguageID | *(a1 + 88)];
  (*(*(a1 + 72) + 16))();
}

- (id)responsesForMessage:(id)a3 maximumResponses:(unint64_t)a4 recipientID:(id)a5 forConversationHistory:(id)a6 withLanguage:(id)a7 options:(unint64_t)a8
{
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
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
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v29 = v17;
  v30 = &v33;
  v31 = a4;
  v32 = a8;
  v19 = v17;
  v20 = v16;
  v21 = v15;
  v22 = v14;
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

- (void)responsesForMessageWithLanguageDetection:(id)a3 maximumResponses:(unint64_t)a4 forConversationHistory:(id)a5 forContext:(id)a6 withLanguage:(id *)a7 options:(unint64_t)a8 completionBlock:(id)a9
{
  v15 = a3;
  v16 = a5;
  v17 = a6;
  v18 = a9;
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x3032000000;
  v32[3] = __Block_byref_object_copy__2;
  v32[4] = __Block_byref_object_dispose__2;
  v33 = *a7;
  dispatchQueue = self->_dispatchQueue;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __157__RKMessageResponseManager_responsesForMessageWithLanguageDetection_maximumResponses_forConversationHistory_forContext_withLanguage_options_completionBlock___block_invoke;
  v24[3] = &unk_279B10818;
  v24[4] = self;
  v25 = v15;
  v26 = v16;
  v27 = v17;
  v30 = a4;
  v31 = a8;
  v28 = v18;
  v29 = v32;
  v20 = v18;
  v21 = v17;
  v22 = v16;
  v23 = v15;
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

- (id)responsesForMessage:(id)a3 maximumResponses:(unint64_t)a4 forContext:(id)a5 withLanguage:(id)a6 options:(unint64_t)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
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
  v32 = v14;
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
  v22 = v12;
  v23 = v13;
  v24 = &v33;
  v25 = v29;
  v26 = v31;
  v27 = a4;
  v28 = a7;
  v16 = v13;
  v17 = v12;
  v18 = v14;
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

- (id)responsesForMessage:(id)a3 maximumResponses:(unint64_t)a4 forConversationHistory:(id)a5 withLanguage:(id)a6 options:(unint64_t)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
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
  v29 = v14;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __109__RKMessageResponseManager_responsesForMessage_maximumResponses_forConversationHistory_withLanguage_options___block_invoke;
  block[3] = &unk_279B10868;
  block[4] = self;
  v22 = v12;
  v23 = v13;
  v24 = &v30;
  v25 = v28;
  v26 = a4;
  v27 = a7;
  v16 = v13;
  v17 = v12;
  v18 = v14;
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

- (id)responsesForMessage:(id)a3 maximumResponses:(unint64_t)a4 forConversationHistory:(id)a5 withLanguage:(id)a6 inputModes:(id)a7 options:(unint64_t)a8
{
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
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
  v34 = v16;
  dispatchQueue = self->_dispatchQueue;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __120__RKMessageResponseManager_responsesForMessage_maximumResponses_forConversationHistory_withLanguage_inputModes_options___block_invoke;
  v25[3] = &unk_279B10890;
  v25[4] = self;
  v26 = v14;
  v29 = &v35;
  v30 = v33;
  v27 = v15;
  v28 = v17;
  v31 = a4;
  v32 = a8;
  v19 = v17;
  v20 = v15;
  v21 = v14;
  v22 = v16;
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

- (id)responsesForMessageWithLanguageDetection:(id)a3 maximumResponses:(unint64_t)a4 forConversationHistory:(id)a5 forContext:(id)a6 withLanguage:(id *)a7 options:(unint64_t)a8
{
  v14 = a3;
  v15 = a5;
  v16 = a6;
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
  v24 = v14;
  v27 = &v31;
  v28 = a4;
  v25 = v15;
  v26 = v16;
  v29 = a7;
  v30 = a8;
  v18 = v16;
  v19 = v15;
  v20 = v14;
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

- (id)responsesForMessageImp:(id)a3 maximumResponses:(unint64_t)a4 forRecipientID:(id)a5 forConversationHistory:(id)a6 forContext:(id)a7 withLanguage:(id)a8 options:(unint64_t)a9
{
  v20 = a8;
  v15 = RKMessageResponseDontOverrideLanguageID | a9;
  v16 = a8;
  v17 = [(RKMessageResponseManager *)self responsesForMessageWithLanguageDetectionImp:a3 maximumResponses:a4 forRecipientID:a5 forConversationHistory:a6 forContext:a7 withLanguage:&v20 inputModes:0 options:v15];
  v18 = v20;

  return v17;
}

- (id)responseWithAttributesMatchingProactiveGrammarForMessage:(id)a3 languageID:(id)a4 kbdInputModes:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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
  v23 = v9;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __110__RKMessageResponseManager_responseWithAttributesMatchingProactiveGrammarForMessage_languageID_kbdInputModes___block_invoke;
  block[3] = &unk_279B108E0;
  block[4] = self;
  v18 = v8;
  v20 = &v24;
  v21 = v22;
  v19 = v10;
  v12 = v10;
  v13 = v8;
  v14 = v9;
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

- (void)responseWithAttributesMatchingProactiveGrammarForMessage:(id)a3 languageID:(id)a4 kbdInputModes:(id)a5 completionBlock:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = __Block_byref_object_copy__2;
  v24[4] = __Block_byref_object_dispose__2;
  v25 = v11;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __126__RKMessageResponseManager_responseWithAttributesMatchingProactiveGrammarForMessage_languageID_kbdInputModes_completionBlock___block_invoke;
  block[3] = &unk_279B10908;
  block[4] = self;
  v20 = v10;
  v22 = v13;
  v23 = v24;
  v21 = v12;
  v15 = v13;
  v16 = v12;
  v17 = v10;
  v18 = v11;
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

- (id)responseWithAttributesMatchingProactiveGrammarForMessageImp:(id)a3 languageID:(id *)a4 kbdInputModes:(id)a5
{
  v41 = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = MEMORY[0x277CCA900];
  v9 = a3;
  v10 = [v8 whitespaceCharacterSet];
  v11 = [v9 stringByTrimmingCharactersInSet:v10];

  if ([v11 length] && objc_msgSend(v11, "length") <= 0x800 && !+[RKUtilities RKRepairStringNeeded:](RKUtilities, "RKRepairStringNeeded:", v11))
  {
    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v16 = [RKUtilities canonicalLanguageAndScriptCodeIdentifierForIdentifier:*a4];
    [v15 addObject:v16];

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v17 = v7;
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

- (id)responsesForMessageWithLanguageDetectionImp:(id)a3 maximumResponses:(unint64_t)a4 forRecipientID:(id)a5 forConversationHistory:(id)a6 forContext:(id)a7 withLanguage:(id *)a8 inputModes:(id)a9 options:(unint64_t)a10
{
  v219[1] = *MEMORY[0x277D85DE8];
  v15 = a3;
  v172 = a5;
  v16 = a6;
  v17 = a7;
  v173 = a9;
  v174 = v16;
  v18 = [objc_opt_class() _chronologicalConversationHistory:v16];
  v180 = [objc_opt_class() _needsMirroredAnalysisForMessage:v15 forChronologicalConversationHistory:v18];
  v170 = self;
  if (![v15 length])
  {
    [objc_opt_class() _mostRecentTextFromChronologicalConversationHistory:v18];
    v20 = v19 = v17;

    v15 = v20;
    v17 = v19;
  }

  v171 = v18;
  if ([RKUtilities RKRepairStringNeeded:v15])
  {
    v21 = 0;
    goto LABEL_156;
  }

  v168 = v17;
  v22 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v23 = [v15 stringByTrimmingCharactersInSet:v22];

  v24 = [v23 stringByReplacingOccurrencesOfString:@"‘" withString:&stru_2874A9C90];

  v25 = [v24 stringByReplacingOccurrencesOfString:@"’" withString:&stru_2874A9C90];

  v15 = [v25 stringByReplacingOccurrencesOfString:@"'" withString:&stru_2874A9C90];

  if ([v15 length] > 0x800)
  {
    v21 = 0;
    v17 = v168;
    goto LABEL_156;
  }

  if (!a4)
  {
    a4 = 0x7FFFFFFFLL;
  }

  v26 = [v174 mutableCopy];
  v165 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"timestamp" ascending:0];
  v219[0] = v165;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v219 count:1];
  [v26 sortUsingDescriptors:v27];

  v28 = [(RKMessageResponseManager *)self preferredLanguages];
  [RKMessageClassifier setPreferredLanguages:v28];

  v167 = v26;
  v29 = [RKMessageClassifier messageClassification:v15 withLanguageIdentifier:*a8 conversationTurns:v26];
  v30 = [v29 language];

  if (!v30)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      [RKMessageResponseManager responsesForMessageWithLanguageDetectionImp:maximumResponses:forRecipientID:forConversationHistory:forContext:withLanguage:inputModes:options:];
    }

    v21 = 0;
    v17 = v168;
    v39 = v29;
    goto LABEL_155;
  }

  v176 = RKLinguisticCategoryToPreferenceKey([v29 sentenceType]);
  v179 = v29;
  v31 = [v29 language];
  [RKCoreAnalytics sendCoreAnalyticsEvent:0 forAction:@"triggered" withLanguageID:v31];

  if ((RKMessageResponseDontOverrideLanguageID & a10) == 0)
  {
    *a8 = [v179 language];
  }

  if ((a10 & 0x200) == 0)
  {
LABEL_20:
    v41 = [MEMORY[0x277CBEB18] array];
    if ((a10 & 1) == 0)
    {
      v42 = [v179 customResponses];
      v43 = [v42 count];

      if (v43)
      {
        if ([v179 sentenceType] != 6 || (objc_msgSend(v179, "customResponses"), v44 = objc_claimAutoreleasedReturnValue(), v45 = objc_msgSend(v44, "count"), v44, v45 <= a4))
        {
          v46 = [v179 customResponses];
          [v41 addObjectsFromArray:v46];

          if ([v41 count] > a4)
          {
            v47 = [v41 subarrayWithRange:{0, a4}];
            v48 = [v47 mutableCopy];

            v41 = v48;
          }

          a4 -= [v41 count];
        }
      }
    }

    v49 = MEMORY[0x277CBEAF8];
    if (*a8)
    {
      v50 = [MEMORY[0x277CBEAF8] canonicalLanguageIdentifierFromString:?];
      v166 = v50;
    }

    else
    {
      v50 = [MEMORY[0x277CBEAF8] currentLocale];
      v51 = [v50 localeIdentifier];
      v166 = [v49 canonicalLanguageIdentifierFromString:v51];
    }

    v52 = [v179 language];
    if (v52 && (v53 = v52, [v179 language], v54 = objc_claimAutoreleasedReturnValue(), v55 = objc_msgSend(v54, "isEqualToString:", @"und"), v54, v53, (v55 & 1) == 0))
    {
      v61 = [v179 language];
      v62 = [RKUtilities canonicalLanguageAndScriptCodeIdentifierForIdentifier:v61];

      v63 = [RKUtilities canonicalLanguageAndScriptCodeIdentifierForIdentifier:v166];
      if (([v62 isEqualToString:v63] & 1) == 0)
      {
        v64 = [v179 language];

        v166 = v64;
      }

      v39 = v179;

      if (a4)
      {
LABEL_33:
        if ([(RKMessageResponseManager *)self usePersonalizedRanking])
        {
          v56 = [(RKMessageResponseManager *)self getRankLearner];
          rankLearner = self->_rankLearner;
          self->_rankLearner = v56;

          if ([v39 sentenceType] == 1)
          {
            [v39 setSentenceType:2];
          }

          v58 = [(RKMessageResponseManager *)self rankLearner];
          v59 = RKLinguisticCategoryToPreferenceKey([v39 sentenceType]);
          v60 = [v39 language];
          v164 = [v58 getRankedResponses:v59 forRecipientID:v172 withLanguageID:v60];
        }

        else
        {
          v164 = 0;
        }

        if ([v39 sentenceType] == 6)
        {
          if ((a10 & 0x40) == 0)
          {
            goto LABEL_46;
          }
        }

        else
        {
          v88 = [(RKMessageResponseManager *)self collection];
          v89 = [v88 responsesForCategory:objc_msgSend(v39 gender:"sentenceType") maximumResponses:objc_msgSend(v39 withLanguage:"gender") context:a4 options:{v166, v168, a10}];
          [v41 addObjectsFromArray:v89];

          if ((a10 & 0x40) == 0)
          {
LABEL_46:
            if ((a10 & 0x80) != 0)
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
        v207 = v41;
        [v207 enumerateObjectsUsingBlock:v206];

        if ((a10 & 0x80) != 0)
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
            v203 = v41;
            [v203 enumerateObjectsUsingBlock:v202];
          }

          if ((a10 & 0x20) == 0)
          {
            v200[0] = MEMORY[0x277D85DD0];
            v200[1] = 3221225472;
            v200[2] = __170__RKMessageResponseManager_responsesForMessageWithLanguageDetectionImp_maximumResponses_forRecipientID_forConversationHistory_forContext_withLanguage_inputModes_options___block_invoke_8;
            v200[3] = &unk_279B100A0;
            v201 = v41;
            [v201 enumerateObjectsUsingBlock:v200];
          }

          if ([v39 isSensitive])
          {

            v41 = 0;
          }

          v65 = [MEMORY[0x277CBEBD0] standardUserDefaults];
          [v65 synchronize];
          v163 = v65;
          if ([v65 BOOLForKey:@"RKSuppressGeneralStatementResponse"] && (!objc_msgSend(v39, "sentenceType") || objc_msgSend(v39, "sentenceType") == 31))
          {

            v41 = 0;
          }

          v66 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
          v67 = [v15 stringByTrimmingCharactersInSet:v66];

          v68 = [(RKMessageResponseManager *)v170 collection];
          v69 = [v68 responsesForCategory:objc_msgSend(v39 gender:"sentenceType") maximumResponses:objc_msgSend(v39 withLanguage:"gender") context:a4 options:{v166, v168, a10 & 0xFFFFFFFFFFFFFFE0 | 0xF}];

          v70 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF CONTAINS[c] %@", v67];
          v161 = v69;
          v71 = [v69 filteredArrayUsingPredicate:v70];
          v72 = [v71 count];

          v162 = v67;
          if (v72)
          {
            v73 = [MEMORY[0x277CCAC30] predicateWithFormat:@"NOT (SELF CONTAINS[c] %@)", v67];
            v74 = [v41 filteredArrayUsingPredicate:v73];
            v75 = [v74 mutableCopy];

            v41 = v75;
          }

          v76 = v180;
          v77 = [MEMORY[0x277CBEB18] array];
          v196 = 0u;
          v197 = 0u;
          v198 = 0u;
          v199 = 0u;
          v78 = v41;
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
                if (([v77 containsObject:v83] & 1) == 0)
                {
                  [v77 addObject:v83];
                }
              }

              v80 = [v78 countByEnumeratingWithState:&v196 objects:v218 count:16];
            }

            while (v80);
          }

          v84 = [v77 copy];
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
            v87 = 0;
            v84 = 0;
            if ((a10 & 0x200) != 0)
            {
              goto LABEL_92;
            }
          }

          else if ((a10 & 0x200) != 0)
          {
            if (v84)
            {
              v87 = [MEMORY[0x277CBEB18] array];
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
                    [v87 addObject:v94];
                  }

                  v91 = [obj countByEnumeratingWithState:&v192 objects:v217 count:16];
                }

                while (v91);
              }
            }

            else
            {
              obj = 0;
              v87 = 0;
            }

LABEL_92:
            v95 = objc_opt_new();
            v160 = RKLinguisticCategoryToPreferenceKey([v39 sentenceType]);
            [v95 setObject:? forKey:?];
            v96 = +[RKMessageIntentRecognizer sharedManager];
            v97 = [v39 language];
            v158 = v96;
            v159 = v95;
            v98 = [v96 copyAttributedTokensForMessage:v15 conversationTurns:v167 metadata:v95 languageID:v97];

            if ([v98 count] && !v87)
            {
              v87 = objc_opt_new();
            }

            v178 = v87;
            v190 = 0u;
            v191 = 0u;
            v188 = 0u;
            v189 = 0u;
            v185 = v98;
            v99 = [v185 countByEnumeratingWithState:&v188 objects:v216 count:16];
            v184 = v77;
            if (v99)
            {
              v100 = v99;
              v101 = 0;
              v102 = *v189;
              v177 = v15;
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
                    v113 = [RKMessageIntentRecognizer getRangesOfKeywords:v112 forMessage:v15];
                    if ([v113 count])
                    {
                      [v110 setObject:v113 forKey:@"keywordranges"];
                      [v110 setObject:v15 forKey:@"message"];
                      v114 = RKLinguisticCategoryToPreferenceKey(45);
                      v186 = [[RKResponse alloc] initWithString:0 attributes:v110 category:v114];
                      v115 = [v179 language];
                      [RKCoreAnalytics sendCoreAnalyticsEvent:v114 forAction:@"triggered" withLanguageID:v115];

                      [v178 insertObject:v186 atIndex:0];
                      v76 = v180;

                      v15 = v177;
                      v101 = 1;
                    }

                    v102 = v182;
                    v77 = v184;
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
            v116 = [v187 copyAttributedTokensForText:v15];
            v183 = v116;
            if (v116)
            {
              v117 = v116;
              v118 = RKLinguisticCategoryToPreferenceKey(44);
              v119 = [[RKResponse alloc] initWithString:0 attributes:v117 category:v118];
              v39 = v179;
              v120 = v178;
              if (!v178)
              {
                v120 = [MEMORY[0x277CBEB18] array];
              }

              v121 = [v179 language];
              [RKCoreAnalytics sendCoreAnalyticsEvent:v118 forAction:@"triggered" withLanguageID:v121];

              [v120 insertObject:v119 atIndex:0];
            }

            else
            {
              v39 = v179;
              if (v101)
              {
                v120 = v178;
                goto LABEL_122;
              }

              v118 = [v179 language];
              [RKCoreAnalytics sendCoreAnalyticsEvent:v160 forAction:@"triggered" withLanguageID:v118];
              v120 = v178;
            }

LABEL_122:
            v122 = [(RKMessageResponseManager *)v170 responseWithAttributesMatchingProactiveGrammarForMessageImp:v15 languageID:a8 kbdInputModes:v173];
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
                    v40 = v163;
                    if (os_log_type_enabled(v152, OS_LOG_TYPE_INFO))
                    {
                      v154 = [v122 attributes];
                      v155 = [v154 objectForKeyedSubscript:@"type"];
                      *buf = 138412290;
                      v209 = v155;
                      _os_log_impl(&dword_2620A2000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Responses of this type (%@) have been sunsetted", buf, 0xCu);
                    }

                    v17 = v168;
                    v77 = v184;
                    goto LABEL_152;
                  }

                  v17 = v168;
                  v40 = v163;
                  v77 = v184;
                  if (!v122)
                  {
LABEL_152:
                    v21 = v120;

                    goto LABEL_153;
                  }

LABEL_149:
                  if (!v120)
                  {
                    v120 = [MEMORY[0x277CBEB18] array];
                  }

                  [v120 insertObject:v122 atIndex:0];
                  goto LABEL_152;
                }

                v132 = [v122 attributes];
                v128 = [v132 copy];

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

                v40 = v163;
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
                    v181 = [v122 attributes];
                    v144 = [v181 objectForKeyedSubscript:@"type"];
                    v145 = [v122 attributes];
                    v146 = [v145 objectForKeyedSubscript:@"subtype"];
                    v147 = [v122 attributes];
                    [v147 objectForKeyedSubscript:@"field"];
                    v149 = v148 = v15;
                    *buf = 138412802;
                    v209 = v144;
                    v210 = 2112;
                    v211 = v146;
                    v212 = 2112;
                    v213 = v149;
                    _os_log_impl(&dword_2620A2000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Response after mirroring has type: %@, subtype: %@, field: %@", buf, 0x20u);

                    v15 = v148;
                    v39 = v179;

                    v40 = v163;
                  }
                }

                else
                {
                  v131 = v122;
                  v122 = 0;
                }

                v77 = v184;
LABEL_148:

                v17 = v168;
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

                v17 = v168;
                v40 = v163;
                goto LABEL_152;
              }
            }

            v127 = [v122 attributes];
            v128 = [v127 mutableCopy];

            v129 = [@"event" copy];
            [v128 setObject:v129 forKeyedSubscript:@"type"];

            v130 = [@"traveling home" copy];
            [v128 setObject:v130 forKeyedSubscript:@"subtype"];

            [v128 setObject:0 forKeyedSubscript:@"request"];
            v131 = [v128 copy];
            [v122 setAttributes:v131];
            v40 = v163;
            goto LABEL_148;
          }

          v21 = v84;
          obj = v21;
          v17 = v168;
          v40 = v163;
LABEL_153:

          v32 = obj;
          goto LABEL_154;
        }

LABEL_47:
        v204[0] = MEMORY[0x277D85DD0];
        v204[1] = 3221225472;
        v204[2] = __170__RKMessageResponseManager_responsesForMessageWithLanguageDetectionImp_maximumResponses_forRecipientID_forConversationHistory_forContext_withLanguage_inputModes_options___block_invoke_2;
        v204[3] = &unk_279B100A0;
        v205 = v41;
        [v205 enumerateObjectsUsingBlock:v204];

        goto LABEL_48;
      }
    }

    else
    {
      v39 = v179;
      if (a4)
      {
        goto LABEL_33;
      }
    }

    v164 = 0;
    if ((a10 & 0x40) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_41;
  }

  v32 = [RKResponseCollection responsesForFullScreenMoments:v15];
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
  v40 = [v179 language];
  v166 = v35;
  [RKCoreAnalytics sendCoreAnalyticsEvent:v35 forAction:@"triggered" withLanguageID:v40];
  v17 = v168;
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

- (id)categoryForMessage:(id)a3 langID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__2;
  v21 = __Block_byref_object_dispose__2;
  v22 = 0;
  v8 = [(RKMessageResponseManager *)self dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__RKMessageResponseManager_categoryForMessage_langID___block_invoke;
  block[3] = &unk_279B10978;
  v14 = v6;
  v15 = v7;
  v16 = &v17;
  v9 = v7;
  v10 = v6;
  dispatch_sync(v8, block);

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

- (id)categoryForMessageWithoutQueue:(id)a3 langID:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  v8 = [RKMessageClassifier messageClassification:v5 withLanguageIdentifier:v6];
  v9 = RKLinguisticCategoryToPreferenceKey([v8 sentenceType]);
  if ([(__CFString *)v9 isEqualToString:@"QueryGeneral"])
  {

    v9 = @"QueryPolar";
  }

  objc_autoreleasePoolPop(v7);

  return v9;
}

- (void)registerResponse:(id)a3 forMessage:(id)a4 forContext:(id)a5 withEffectiveDate:(id)a6 withLanguage:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(RKMessageResponseManager *)self dispatchQueue];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __98__RKMessageResponseManager_registerResponse_forMessage_forContext_withEffectiveDate_withLanguage___block_invoke;
  v23[3] = &unk_279B109A0;
  v24 = v12;
  v25 = v13;
  v26 = self;
  v27 = v16;
  v28 = v14;
  v29 = v15;
  v18 = v15;
  v19 = v14;
  v20 = v16;
  v21 = v13;
  v22 = v12;
  dispatch_sync(v17, v23);
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

- (void)registerResponse:(id)a3 forMessage:(id)a4 metadata:(id)a5 withLanguage:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(RKMessageResponseManager *)self dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__RKMessageResponseManager_registerResponse_forMessage_metadata_withLanguage___block_invoke;
  block[3] = &unk_279B109C8;
  v20 = v11;
  v21 = v10;
  v22 = self;
  v23 = v13;
  v24 = v12;
  v15 = v12;
  v16 = v13;
  v17 = v10;
  v18 = v11;
  dispatch_async(v14, block);
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

- (void)prunePersonalizedUserDatabase:(id)a3
{
  v6 = a3;
  if ([(RKMessageResponseManager *)self usePersonalizedRanking])
  {
    v4 = objc_alloc_init(RKRankLearner);
    v5 = [(RKRankLearner *)v4 getDBManager:v6];
    [v5 pruneUserDatabase];
  }
}

- (void)resetRegisteredResponses
{
  v3 = [(RKMessageResponseManager *)self dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__RKMessageResponseManager_resetRegisteredResponses__block_invoke;
  block[3] = &unk_279B10270;
  block[4] = self;
  dispatch_sync(v3, block);
}

void __52__RKMessageResponseManager_resetRegisteredResponses__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) collection];
  [v1 resetRegisteredResponses];
}

- (void)flushDynamicData
{
  v3 = [(RKMessageResponseManager *)self dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__RKMessageResponseManager_flushDynamicData__block_invoke;
  block[3] = &unk_279B10270;
  block[4] = self;
  dispatch_sync(v3, block);
}

void __44__RKMessageResponseManager_flushDynamicData__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) collection];
  [v1 flushDynamicData];
}

+ (BOOL)_needsMirroredAnalysisForMessage:(id)a3 forChronologicalConversationHistory:(id)a4
{
  v6 = a4;
  if ([a3 length] || !objc_msgSend(v6, "count"))
  {
    v7 = 0;
  }

  else
  {
    v8 = [a1 _mostRecentTextFromChronologicalConversationHistory:v6];
    v7 = [v8 length] != 0;
  }

  return v7;
}

+ (BOOL)_responseTypeIsSunsetted:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = [a3 attributes];
  v4 = [v3 objectForKeyedSubscript:@"type"];

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

+ (BOOL)_responseLooksLikeIncomingCheckInResponse:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = [a3 attributes];
  v4 = [v3 objectForKeyedSubscript:@"request"];

  LOBYTE(v3) = [v4 containsString:@"xCHECKININCOMINGx"];
  return v3;
}

+ (BOOL)_responseLooksLikeOutgoingCheckInResponse:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = [a3 attributes];
  v4 = [v3 objectForKeyedSubscript:@"request"];

  LOBYTE(v3) = [v4 containsString:@"xCHECKINOUTGOINGx"];
  return v3;
}

+ (BOOL)_isMirroredResponseValidForResponse:(id)a3
{
  v3 = [a3 attributes];
  v4 = [v3 objectForKeyedSubscript:@"type"];
  v5 = [v3 objectForKeyedSubscript:@"subtype"];
  v6 = [v3 objectForKeyedSubscript:@"field"];
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

+ (id)_mostRecentTextFromChronologicalConversationHistory:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = [objc_opt_class() _chronologicalConversationHistory:v3];
    v5 = [v4 lastObject];
    v6 = [v5 text];
  }

  else
  {
    v6 = 0;
  }

  return v6;
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