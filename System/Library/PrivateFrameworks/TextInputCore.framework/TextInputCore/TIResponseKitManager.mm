@interface TIResponseKitManager
+ (id)rewriteMoneyAttributes:(id)attributes;
+ (id)singletonInstance;
- (TIResponseKitManager)init;
- (id)cannedResponsesForString:(id)string withLanguageID:(id)d withClientID:(id)iD withRecipientID:(id)recipientID withAdditionalPredictions:(id)predictions desiredCandidateCount:(unint64_t)count shouldDisableAutoCaps:(BOOL)caps isBlocklisted:(BOOL)self0;
- (id)indexesOfDuplicatesInCandidates:(id)candidates;
- (id)responseKitResponseCandidatesForString:(id)string withLanguageID:(id)d withClientID:(id)iD withRecipientID:(id)recipientID shouldDisableAutoCaps:(BOOL)caps;
- (void)addNewConversationTurnToHistory:(id)history;
- (void)generateResponseKitSuggestionsForString:(id)string withLanguage:(id)language withClientID:(id)d withRecipientID:(id)iD withAdditionalPredictions:(id)predictions desiredCandidateCount:(unint64_t)count shouldDisableAutoCaps:(BOOL)caps stringIsBlocklisted:(BOOL)self0 async:(BOOL)self1 completionHandler:(id)self2;
- (void)registerResponseKitResponse:(id)response forMessage:(id)message withLanguage:(id)language withClientID:(id)d withSenderID:(id)iD withRecipientID:(id)recipientID withTimestamp:(id)timestamp shouldUpdateConversationHistory:(BOOL)self0;
- (void)updateResponseKitConversationHistoryWithMessage:(id)message withSenderID:(id)d withTimestamp:(id)timestamp;
@end

@implementation TIResponseKitManager

- (id)cannedResponsesForString:(id)string withLanguageID:(id)d withClientID:(id)iD withRecipientID:(id)recipientID withAdditionalPredictions:(id)predictions desiredCandidateCount:(unint64_t)count shouldDisableAutoCaps:(BOOL)caps isBlocklisted:(BOOL)self0
{
  v66 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  dCopy = d;
  iDCopy = iD;
  recipientIDCopy = recipientID;
  predictionsCopy = predictions;
  if (![stringCopy length])
  {
    v46 = predictionsCopy;
    goto LABEL_33;
  }

  v21 = [(TIResponseKitManager *)self responseKitResponseCandidatesForString:stringCopy withLanguageID:dCopy withClientID:iDCopy withRecipientID:recipientIDCopy shouldDisableAutoCaps:caps];
  if (!v21)
  {
    v46 = predictionsCopy;
    goto LABEL_32;
  }

  selfCopy = self;
  countCopy = count;
  v52 = predictionsCopy;
  v53 = recipientIDCopy;
  v54 = iDCopy;
  v55 = stringCopy;
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
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
      attributes = [v27 attributes];

      if (attributes)
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

        category = [v27 category];
        v31 = [category isEqualToString:@"QueryPhotoSharing"];

        if (!v31 || !blocklisted)
        {
          attributes2 = [v27 attributes];
          category2 = [attributes2 objectForKey:*MEMORY[0x277D23050]];

          if ([category2 isEqualToString:v57])
          {
            attributes3 = [v27 attributes];
            attributes4 = [TIResponseKitManager rewriteMoneyAttributes:attributes3];

            v36 = [TIProactiveTrigger alloc];
          }

          else
          {
            v41 = [TIProactiveTrigger alloc];
            attributes4 = [v27 attributes];
            v36 = v41;
          }

          string2 = [(TIProactiveTrigger *)v36 initWithSourceType:1 attributes:attributes4];

          [array2 addObject:string2];
          goto LABEL_24;
        }
      }

      else
      {
        string = [v27 string];

        if (string && !blocklisted)
        {
          v38 = objc_alloc(MEMORY[0x277D6F568]);
          string2 = [v27 string];
          category2 = [v27 category];
          v40 = [v38 initWithCandidate:string2 responseKitCategory:category2];
          [array addObject:v40];

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

  predictionsCopy = v52;
  if ([array count] < countCopy)
  {
    predictions = [v52 predictions];
    [array addObjectsFromArray:predictions];

    v44 = [(TIResponseKitManager *)selfCopy indexesOfDuplicatesInCandidates:array];
    [array removeObjectsAtIndexes:v44];

    proactiveTriggers = [v52 proactiveTriggers];
    [array2 addObjectsFromArray:proactiveTriggers];
  }

  v46 = [MEMORY[0x277D6F328] listWithPredictions:array proactiveTriggers:array2];

  stringCopy = v55;
  recipientIDCopy = v53;
  iDCopy = v54;
  v21 = v51;
LABEL_32:

LABEL_33:
  v47 = *MEMORY[0x277D85DE8];

  return v46;
}

- (id)indexesOfDuplicatesInCandidates:(id)candidates
{
  v3 = MEMORY[0x277CBEB58];
  candidatesCopy = candidates;
  v5 = [[v3 alloc] initWithCapacity:{objc_msgSend(candidatesCopy, "count")}];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__TIResponseKitManager_indexesOfDuplicatesInCandidates___block_invoke;
  v9[3] = &unk_278732EF8;
  v10 = v5;
  v6 = v5;
  v7 = [candidatesCopy indexesOfObjectsPassingTest:v9];

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

- (id)responseKitResponseCandidatesForString:(id)string withLanguageID:(id)d withClientID:(id)iD withRecipientID:(id)recipientID shouldDisableAutoCaps:(BOOL)caps
{
  capsCopy = caps;
  iDCopy = iD;
  recipientIDCopy = recipientID;
  if (capsCopy)
  {
    v14 = 704;
  }

  else
  {
    v14 = 576;
  }

  conversationTurns = self->_conversationTurns;
  dCopy = d;
  stringCopy = string;
  if ([(NSMutableArray *)conversationTurns count])
  {
    mEMORY[0x277D46BD8] = [MEMORY[0x277D46BD8] sharedManager];
    v19 = [(TILanguageModelAdaptationContext *)mEMORY[0x277D46BD8] responsesForMessage:stringCopy maximumResponses:10 forConversationHistory:self->_conversationTurns withLanguage:dCopy options:v14];
  }

  else
  {
    mEMORY[0x277D46BD8] = [[TILanguageModelAdaptationContext alloc] initWithClientIdentifier:iDCopy andRecipientContactInfo:recipientIDCopy];
    mEMORY[0x277D46BD8]2 = [MEMORY[0x277D46BD8] sharedManager];
    identifierForResponseKit = [(TILanguageModelAdaptationContext *)mEMORY[0x277D46BD8] identifierForResponseKit];
    v19 = [mEMORY[0x277D46BD8]2 responsesForMessage:stringCopy maximumResponses:10 forContext:identifierForResponseKit withLanguage:dCopy options:v14];

    dCopy = identifierForResponseKit;
    stringCopy = mEMORY[0x277D46BD8]2;
  }

  return v19;
}

- (void)addNewConversationTurnToHistory:(id)history
{
  historyCopy = history;
  conversationTurns = self->_conversationTurns;
  v9 = historyCopy;
  if (!conversationTurns)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_conversationTurns;
    self->_conversationTurns = v6;

    historyCopy = v9;
    conversationTurns = self->_conversationTurns;
  }

  [(NSMutableArray *)conversationTurns addObject:historyCopy];
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

- (void)updateResponseKitConversationHistoryWithMessage:(id)message withSenderID:(id)d withTimestamp:(id)timestamp
{
  messageCopy = message;
  dCopy = d;
  timestampCopy = timestamp;
  queue = self->_queue;
  v15 = messageCopy;
  v16 = dCopy;
  v17 = timestampCopy;
  v12 = timestampCopy;
  v13 = dCopy;
  v14 = messageCopy;
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

- (void)registerResponseKitResponse:(id)response forMessage:(id)message withLanguage:(id)language withClientID:(id)d withSenderID:(id)iD withRecipientID:(id)recipientID withTimestamp:(id)timestamp shouldUpdateConversationHistory:(BOOL)self0
{
  responseCopy = response;
  messageCopy = message;
  languageCopy = language;
  dCopy = d;
  iDCopy = iD;
  recipientIDCopy = recipientID;
  timestampCopy = timestamp;
  queue = self->_queue;
  v31 = dCopy;
  v32 = recipientIDCopy;
  v33 = responseCopy;
  v34 = messageCopy;
  v35 = languageCopy;
  v36 = timestampCopy;
  v24 = timestampCopy;
  v25 = iDCopy;
  v26 = languageCopy;
  v27 = messageCopy;
  v28 = responseCopy;
  v29 = recipientIDCopy;
  v30 = dCopy;
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

- (void)generateResponseKitSuggestionsForString:(id)string withLanguage:(id)language withClientID:(id)d withRecipientID:(id)iD withAdditionalPredictions:(id)predictions desiredCandidateCount:(unint64_t)count shouldDisableAutoCaps:(BOOL)caps stringIsBlocklisted:(BOOL)self0 async:(BOOL)self1 completionHandler:(id)self2
{
  stringCopy = string;
  languageCopy = language;
  dCopy = d;
  iDCopy = iD;
  predictionsCopy = predictions;
  handlerCopy = handler;
  if (async)
  {
    queue = self->_queue;
    v38 = MEMORY[0x277D85DD0];
    v39 = 3221225472;
    v40 = __220__TIResponseKitManager_generateResponseKitSuggestionsForString_withLanguage_withClientID_withRecipientID_withAdditionalPredictions_desiredCandidateCount_shouldDisableAutoCaps_stringIsBlocklisted_async_completionHandler___block_invoke;
    v41 = &unk_278732E58;
    selfCopy = self;
    v43 = stringCopy;
    v44 = languageCopy;
    v45 = dCopy;
    v46 = iDCopy;
    v47 = predictionsCopy;
    countCopy = count;
    capsCopy = caps;
    blocklistedCopy = blocklisted;
    v48 = handlerCopy;
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
    v27 = stringCopy;
    v28 = languageCopy;
    v29 = dCopy;
    v30 = iDCopy;
    v31 = predictionsCopy;
    TIDispatchSync();
    (*(handlerCopy + 2))(handlerCopy, v33[5]);

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

+ (id)rewriteMoneyAttributes:(id)attributes
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D22FF8];
  v26 = [attributes objectForKey:*MEMORY[0x277D22FF8]];
  v4 = [v26 objectForKey:*MEMORY[0x277D46C08]];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setValue:*MEMORY[0x277D46C00] forKey:*MEMORY[0x277D23050]];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  array = [MEMORY[0x277CBEB18] array];
  [dictionary2 setValue:array forKey:@"Currency"];
  v24 = dictionary;
  v25 = dictionary2;
  [dictionary setValue:dictionary2 forKey:*v3];
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
          dictionary3 = [v14 dictionary];
          currency = [v15 currency];
          [dictionary3 setObject:currency forKey:@"CurrencyType"];

          v18 = MEMORY[0x277CCACA8];
          [v15 value];
          v20 = v19;

          v21 = [v18 stringWithFormat:@"%.2f", v20];
          [dictionary3 setObject:v21 forKey:@"CurrencyValue"];

          [array addObject:dictionary3];
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