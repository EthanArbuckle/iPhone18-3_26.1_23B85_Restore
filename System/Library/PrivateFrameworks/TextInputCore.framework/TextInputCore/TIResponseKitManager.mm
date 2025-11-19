@interface TIResponseKitManager
+ (id)rewriteMoneyAttributes:(id)a3;
+ (id)singletonInstance;
- (TIResponseKitManager)init;
- (id)cannedResponsesForString:(id)a3 withLanguageID:(id)a4 withClientID:(id)a5 withRecipientID:(id)a6 withAdditionalPredictions:(id)a7 desiredCandidateCount:(unint64_t)a8 shouldDisableAutoCaps:(BOOL)a9 isBlocklisted:(BOOL)a10;
- (id)indexesOfDuplicatesInCandidates:(id)a3;
- (id)responseKitResponseCandidatesForString:(id)a3 withLanguageID:(id)a4 withClientID:(id)a5 withRecipientID:(id)a6 shouldDisableAutoCaps:(BOOL)a7;
- (void)addNewConversationTurnToHistory:(id)a3;
- (void)generateResponseKitSuggestionsForString:(id)a3 withLanguage:(id)a4 withClientID:(id)a5 withRecipientID:(id)a6 withAdditionalPredictions:(id)a7 desiredCandidateCount:(unint64_t)a8 shouldDisableAutoCaps:(BOOL)a9 stringIsBlocklisted:(BOOL)a10 async:(BOOL)a11 completionHandler:(id)a12;
- (void)registerResponseKitResponse:(id)a3 forMessage:(id)a4 withLanguage:(id)a5 withClientID:(id)a6 withSenderID:(id)a7 withRecipientID:(id)a8 withTimestamp:(id)a9 shouldUpdateConversationHistory:(BOOL)a10;
- (void)updateResponseKitConversationHistoryWithMessage:(id)a3 withSenderID:(id)a4 withTimestamp:(id)a5;
@end

@implementation TIResponseKitManager

- (id)cannedResponsesForString:(id)a3 withLanguageID:(id)a4 withClientID:(id)a5 withRecipientID:(id)a6 withAdditionalPredictions:(id)a7 desiredCandidateCount:(unint64_t)a8 shouldDisableAutoCaps:(BOOL)a9 isBlocklisted:(BOOL)a10
{
  v66 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  if (![v16 length])
  {
    v46 = v20;
    goto LABEL_33;
  }

  v21 = [(TIResponseKitManager *)self responseKitResponseCandidatesForString:v16 withLanguageID:v17 withClientID:v18 withRecipientID:v19 shouldDisableAutoCaps:a9];
  if (!v21)
  {
    v46 = v20;
    goto LABEL_32;
  }

  v49 = self;
  v50 = a8;
  v52 = v20;
  v53 = v19;
  v54 = v18;
  v55 = v16;
  v56 = [MEMORY[0x277CBEB18] array];
  v58 = [MEMORY[0x277CBEB18] array];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v51 = v21;
  v22 = v21;
  v23 = [v22 countByEnumeratingWithState:&v59 objects:v65 count:16];
  if (!v23)
  {
    goto LABEL_27;
  }

  v24 = v23;
  v25 = *v60;
  v57 = *MEMORY[0x277D46C00];
  do
  {
    v26 = 0;
    do
    {
      if (*v60 != v25)
      {
        objc_enumerationMutation(v22);
      }

      v27 = *(*(&v59 + 1) + 8 * v26);
      v28 = [v27 attributes];

      if (v28)
      {
        if (TICanLogMessageAtLevel_onceToken != -1)
        {
          dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
        }

        if (TICanLogMessageAtLevel_logLevel >= 2)
        {
          v29 = TIOSLogFacility();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
          {
            v42 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s DEBUG:ProactiveQuickType:TI: Response Kit has returned an attributed response.", "-[TIResponseKitManager cannedResponsesForString:withLanguageID:withClientID:withRecipientID:withAdditionalPredictions:desiredCandidateCount:shouldDisableAutoCaps:isBlocklisted:]"];
            *buf = 138412290;
            v64 = v42;
            _os_log_debug_impl(&dword_22CA55000, v29, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }

        v30 = [v27 category];
        v31 = [v30 isEqualToString:@"QueryPhotoSharing"];

        if (!v31 || !a10)
        {
          v32 = [v27 attributes];
          v33 = [v32 objectForKey:*MEMORY[0x277D23050]];

          if ([v33 isEqualToString:v57])
          {
            v34 = [v27 attributes];
            v35 = [TIResponseKitManager rewriteMoneyAttributes:v34];

            v36 = [TIProactiveTrigger alloc];
          }

          else
          {
            v41 = [TIProactiveTrigger alloc];
            v35 = [v27 attributes];
            v36 = v41;
          }

          v39 = [(TIProactiveTrigger *)v36 initWithSourceType:1 attributes:v35];

          [v58 addObject:v39];
          goto LABEL_24;
        }
      }

      else
      {
        v37 = [v27 string];

        if (v37 && !a10)
        {
          v38 = objc_alloc(MEMORY[0x277D6F568]);
          v39 = [v27 string];
          v33 = [v27 category];
          v40 = [v38 initWithCandidate:v39 responseKitCategory:v33];
          [v56 addObject:v40];

LABEL_24:
        }
      }

      ++v26;
    }

    while (v24 != v26);
    v24 = [v22 countByEnumeratingWithState:&v59 objects:v65 count:16];
  }

  while (v24);
LABEL_27:

  v20 = v52;
  if ([v56 count] < v50)
  {
    v43 = [v52 predictions];
    [v56 addObjectsFromArray:v43];

    v44 = [(TIResponseKitManager *)v49 indexesOfDuplicatesInCandidates:v56];
    [v56 removeObjectsAtIndexes:v44];

    v45 = [v52 proactiveTriggers];
    [v58 addObjectsFromArray:v45];
  }

  v46 = [MEMORY[0x277D6F328] listWithPredictions:v56 proactiveTriggers:v58];

  v16 = v55;
  v19 = v53;
  v18 = v54;
  v21 = v51;
LABEL_32:

LABEL_33:
  v47 = *MEMORY[0x277D85DE8];

  return v46;
}

- (id)indexesOfDuplicatesInCandidates:(id)a3
{
  v3 = MEMORY[0x277CBEB58];
  v4 = a3;
  v5 = [[v3 alloc] initWithCapacity:{objc_msgSend(v4, "count")}];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__TIResponseKitManager_indexesOfDuplicatesInCandidates___block_invoke;
  v9[3] = &unk_278732EF8;
  v10 = v5;
  v6 = v5;
  v7 = [v4 indexesOfObjectsPassingTest:v9];

  return v7;
}

BOOL __56__TIResponseKitManager_indexesOfDuplicatesInCandidates___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 candidate];
  v4 = [*(a1 + 32) member:v3];

  if (!v4)
  {
    [*(a1 + 32) addObject:v3];
  }

  return v4 != 0;
}

- (id)responseKitResponseCandidatesForString:(id)a3 withLanguageID:(id)a4 withClientID:(id)a5 withRecipientID:(id)a6 shouldDisableAutoCaps:(BOOL)a7
{
  v7 = a7;
  v12 = a5;
  v13 = a6;
  if (v7)
  {
    v14 = 704;
  }

  else
  {
    v14 = 576;
  }

  conversationTurns = self->_conversationTurns;
  v16 = a4;
  v17 = a3;
  if ([(NSMutableArray *)conversationTurns count])
  {
    v18 = [MEMORY[0x277D46BD8] sharedManager];
    v19 = [(TILanguageModelAdaptationContext *)v18 responsesForMessage:v17 maximumResponses:10 forConversationHistory:self->_conversationTurns withLanguage:v16 options:v14];
  }

  else
  {
    v18 = [[TILanguageModelAdaptationContext alloc] initWithClientIdentifier:v12 andRecipientContactInfo:v13];
    v20 = [MEMORY[0x277D46BD8] sharedManager];
    v21 = [(TILanguageModelAdaptationContext *)v18 identifierForResponseKit];
    v19 = [v20 responsesForMessage:v17 maximumResponses:10 forContext:v21 withLanguage:v16 options:v14];

    v16 = v21;
    v17 = v20;
  }

  return v19;
}

- (void)addNewConversationTurnToHistory:(id)a3
{
  v4 = a3;
  conversationTurns = self->_conversationTurns;
  v9 = v4;
  if (!conversationTurns)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_conversationTurns;
    self->_conversationTurns = v6;

    v4 = v9;
    conversationTurns = self->_conversationTurns;
  }

  [(NSMutableArray *)conversationTurns addObject:v4];
  v8 = *MEMORY[0x277D46C18];
  if ([(NSMutableArray *)self->_conversationTurns count]> v8)
  {
    [(NSMutableArray *)self->_conversationTurns removeObjectsInRange:0, [(NSMutableArray *)self->_conversationTurns count]- v8];
  }
}

void __59__TIResponseKitManager_persistResponseKitDynamicDataToDisk__block_invoke()
{
  v0 = [MEMORY[0x277D46BD8] sharedManager];
  [v0 flushDynamicData];
}

void __40__TIResponseKitManager_resetResponseKit__block_invoke()
{
  v0 = [MEMORY[0x277D46BD8] sharedManager];
  [v0 resetRegisteredResponses];
}

- (void)updateResponseKitConversationHistoryWithMessage:(id)a3 withSenderID:(id)a4 withTimestamp:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  TIDispatchAsync();
}

void __99__TIResponseKitManager_updateResponseKitConversationHistoryWithMessage_withSenderID_withTimestamp___block_invoke(uint64_t a1)
{
  if (*(a1 + 32) && *(a1 + 40) && *(a1 + 48))
  {
    v2 = [objc_alloc(MEMORY[0x277D46BC0]) initWithString:*(a1 + 32) senderID:*(a1 + 40) timestamp:*(a1 + 48)];
    [*(a1 + 56) addNewConversationTurnToHistory:v2];
  }
}

- (void)registerResponseKitResponse:(id)a3 forMessage:(id)a4 withLanguage:(id)a5 withClientID:(id)a6 withSenderID:(id)a7 withRecipientID:(id)a8 withTimestamp:(id)a9 shouldUpdateConversationHistory:(BOOL)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  queue = self->_queue;
  v31 = v19;
  v32 = v21;
  v33 = v16;
  v34 = v17;
  v35 = v18;
  v36 = v22;
  v24 = v22;
  v25 = v20;
  v26 = v18;
  v27 = v17;
  v28 = v16;
  v29 = v21;
  v30 = v19;
  TIDispatchAsync();
}

void __164__TIResponseKitManager_registerResponseKitResponse_forMessage_withLanguage_withClientID_withSenderID_withRecipientID_withTimestamp_shouldUpdateConversationHistory___block_invoke(uint64_t a1)
{
  v7 = [[TILanguageModelAdaptationContext alloc] initWithClientIdentifier:*(a1 + 32) andRecipientContactInfo:*(a1 + 40)];
  v2 = [MEMORY[0x277D46BD8] sharedManager];
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = [(TILanguageModelAdaptationContext *)v7 identifierForResponseKit];
  [v2 registerResponse:v3 forMessage:v4 forContext:v5 withLanguage:*(a1 + 64)];

  if (*(a1 + 96) == 1 && *(a1 + 48) && *(a1 + 72) && *(a1 + 80))
  {
    v6 = [objc_alloc(MEMORY[0x277D46BC0]) initWithString:*(a1 + 48) senderID:*(a1 + 72) timestamp:*(a1 + 80)];
    [*(a1 + 88) addNewConversationTurnToHistory:v6];
  }
}

- (void)generateResponseKitSuggestionsForString:(id)a3 withLanguage:(id)a4 withClientID:(id)a5 withRecipientID:(id)a6 withAdditionalPredictions:(id)a7 desiredCandidateCount:(unint64_t)a8 shouldDisableAutoCaps:(BOOL)a9 stringIsBlocklisted:(BOOL)a10 async:(BOOL)a11 completionHandler:(id)a12
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a12;
  if (a11)
  {
    queue = self->_queue;
    v38 = MEMORY[0x277D85DD0];
    v39 = 3221225472;
    v40 = __220__TIResponseKitManager_generateResponseKitSuggestionsForString_withLanguage_withClientID_withRecipientID_withAdditionalPredictions_desiredCandidateCount_shouldDisableAutoCaps_stringIsBlocklisted_async_completionHandler___block_invoke;
    v41 = &unk_278732E58;
    v42 = self;
    v43 = v17;
    v44 = v18;
    v45 = v19;
    v46 = v20;
    v47 = v21;
    v49 = a8;
    v50 = a9;
    v51 = a10;
    v48 = v22;
    TIDispatchAsync();

    v24 = v43;
  }

  else
  {
    v32 = 0;
    v33 = &v32;
    v34 = 0x3032000000;
    v35 = __Block_byref_object_copy__19501;
    v36 = __Block_byref_object_dispose__19502;
    v37 = 0;
    v25 = self->_queue;
    v27 = v17;
    v28 = v18;
    v29 = v19;
    v30 = v20;
    v31 = v21;
    TIDispatchSync();
    (*(v22 + 2))(v22, v33[5]);

    _Block_object_dispose(&v32, 8);
    v24 = v37;
  }
}

void __220__TIResponseKitManager_generateResponseKitSuggestionsForString_withLanguage_withClientID_withRecipientID_withAdditionalPredictions_desiredCandidateCount_shouldDisableAutoCaps_stringIsBlocklisted_async_completionHandler___block_invoke(uint64_t a1)
{
  LOWORD(v4) = *(a1 + 96);
  v2 = [*(a1 + 32) cannedResponsesForString:*(a1 + 40) withLanguageID:*(a1 + 48) withClientID:*(a1 + 56) withRecipientID:*(a1 + 64) withAdditionalPredictions:*(a1 + 72) desiredCandidateCount:*(a1 + 88) shouldDisableAutoCaps:v4 isBlocklisted:?];
  v5 = *(a1 + 80);
  v3 = v2;
  TIDispatchAsync();
}

uint64_t __220__TIResponseKitManager_generateResponseKitSuggestionsForString_withLanguage_withClientID_withRecipientID_withAdditionalPredictions_desiredCandidateCount_shouldDisableAutoCaps_stringIsBlocklisted_async_completionHandler___block_invoke_2(uint64_t a1)
{
  LOWORD(v6) = *(a1 + 96);
  v2 = [*(a1 + 32) cannedResponsesForString:*(a1 + 40) withLanguageID:*(a1 + 48) withClientID:*(a1 + 56) withRecipientID:*(a1 + 64) withAdditionalPredictions:*(a1 + 72) desiredCandidateCount:*(a1 + 88) shouldDisableAutoCaps:v6 isBlocklisted:?];
  v3 = *(*(a1 + 80) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

{
  return (*(*(a1 + 40) + 16))(*(a1 + 40), *(a1 + 32));
}

- (TIResponseKitManager)init
{
  v7.receiver = self;
  v7.super_class = TIResponseKitManager;
  v2 = [(TIResponseKitManager *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("com.apple.TextInput.ResponseKitManager", v3);
    queue = v2->_queue;
    v2->_queue = v4;
  }

  return v2;
}

+ (id)rewriteMoneyAttributes:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D22FF8];
  v26 = [a3 objectForKey:*MEMORY[0x277D22FF8]];
  v4 = [v26 objectForKey:*MEMORY[0x277D46C08]];
  v5 = [MEMORY[0x277CBEB38] dictionary];
  [v5 setValue:*MEMORY[0x277D46C00] forKey:*MEMORY[0x277D23050]];
  v6 = [MEMORY[0x277CBEB38] dictionary];
  v7 = [MEMORY[0x277CBEB18] array];
  [v6 setValue:v7 forKey:@"Currency"];
  v24 = v5;
  v25 = v6;
  [v5 setValue:v6 forKey:*v3];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v28;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v27 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = MEMORY[0x277CBEB38];
          v15 = v13;
          v16 = [v14 dictionary];
          v17 = [v15 currency];
          [v16 setObject:v17 forKey:@"CurrencyType"];

          v18 = MEMORY[0x277CCACA8];
          [v15 value];
          v20 = v19;

          v21 = [v18 stringWithFormat:@"%.2f", v20];
          [v16 setObject:v21 forKey:@"CurrencyValue"];

          [v7 addObject:v16];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v10);
  }

  v22 = *MEMORY[0x277D85DE8];

  return v24;
}

+ (id)singletonInstance
{
  if (singletonInstance_onceToken_19525 != -1)
  {
    dispatch_once(&singletonInstance_onceToken_19525, &__block_literal_global_19526);
  }

  v3 = singletonInstance_singleton_19527;

  return v3;
}

uint64_t __41__TIResponseKitManager_singletonInstance__block_invoke()
{
  v0 = objc_alloc_init(TIResponseKitManager);
  v1 = singletonInstance_singleton_19527;
  singletonInstance_singleton_19527 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end