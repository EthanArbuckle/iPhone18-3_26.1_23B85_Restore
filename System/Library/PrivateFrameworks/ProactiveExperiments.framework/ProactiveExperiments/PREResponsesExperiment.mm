@interface PREResponsesExperiment
+ (BOOL)_isStringEmpty:(id)empty;
+ (BOOL)_shouldInsertSuggestion:(id)suggestion forExistingSuggestions:(id)suggestions;
+ (id)_cannedRepliesForLanguage:(id)language inputPreferences:(id)preferences;
+ (id)_getConversationHistoryFromRequest:(id)request;
+ (id)_getFormattedPREResponseItems:(id)items inputPreferences:(id)preferences;
+ (id)_inputMethodStringFrom:(int)from;
+ (id)_rawStringsForMessages:(id)messages excludingTapBacks:(BOOL)backs;
+ (id)_suggestionsWithDynamicResponseItems:(id)items cannedResponseItems:(id)responseItems inputPreferences:(id)preferences;
+ (id)sharedManager;
+ (id)stringArrayFromPreResponseItems:(id)items;
+ (int)_preInputMethodFrom:(id)from;
- (BOOL)shouldUseDefaultRKTreatmentForLanguage:(id)language;
- (PREResponsesExperiment)init;
- (PREResponsesExperiment)initWithExperimentResolver:(id)resolver metricsClient:(id)client xpcClient:(id)xpcClient rkClient:(id)rkClient tiPreferencesController:(id)controller;
- (id)_responsesForMessage:(id)message maximumResponses:(unint64_t)responses outgoingMessageHistory:(id)history forConversationHistory:(id)conversationHistory forContext:(id)context time:(id)time withLanguage:(id)language languageLastChangedDate:(id)self0 recipientHandles:(id)self1 options:(unint64_t)self2 preferredLocale:(id)self3;
- (id)activeExperimentNameForLanguage:(id)language;
- (id)cacheKeyForMessage:(id)message maxResponses:(unint64_t)responses time:(id)time language:(id)language;
- (id)cachedResponsesGeneratedEvent;
- (id)clippedMessageIfNecessary:(id)necessary;
- (id)fullNonEditableSuggestionsListForMessage:(id)message context:(id)context additionalSenderMessages:(id)messages date:(id)date keyboardLanguageID:(id)d keyboardLanguageLastChangedDate:(id)changedDate recipients:(id)recipients includeDynamicSuggestions:(BOOL)self0;
- (id)handlesFromRecipients:(id)recipients;
- (id)nonEditableSuggestionsForMessage:(id)message messageDate:(id)date senderID:(id)d recipientHandles:(id)handles outgoingMessageHistory:(id)history keyboardLanguageID:(id)iD keyboardLanguageLastChangedDate:(id)changedDate includeDynamicSuggestions:(BOOL)self0;
- (id)nonEditableSuggestionsForMessage:(id)message messageDate:(id)date senderID:(id)d recipients:(id)recipients outgoingMessageHistory:(id)history keyboardLanguageID:(id)iD keyboardLanguageLastChangedDate:(id)changedDate includeDynamicSuggestions:(BOOL)self0;
- (id)responsesForMessage:(id)message maximumResponses:(unint64_t)responses forConversationHistory:(id)history forContext:(id)context time:(id)time withLanguage:(id)language recipientHandles:(id)handles options:(unint64_t)self0;
- (id)responsesForMessage:(id)message maximumResponses:(unint64_t)responses forConversationHistory:(id)history forContext:(id)context time:(id)time withLanguage:(id)language recipients:(id)recipients options:(unint64_t)self0;
- (id)suggestionsForRequest:(id)request;
- (id)waitForPreResponseItemsForMessage:(id)message maximumResponses:(unint64_t)responses forConversationHistory:(id)history forContext:(id)context time:(id)time withLanguage:(id)language recipientHandles:(id)handles options:(unint64_t)self0;
- (unint64_t)mode;
- (void)_responsesForMessage:(id)message maximumResponses:(unint64_t)responses outgoingMessageHistory:(id)history forConversationHistory:(id)conversationHistory forContext:(id)context time:(id)time withLanguage:(id)language languageLastChangedDate:(id)self0 recipientHandles:(id)self1 options:(unint64_t)self2 preferredLocale:(id)self3 completionBlock:(id)self4;
- (void)fullNonEditableSuggestionsListForMessage:(id)message context:(id)context additionalSenderMessages:(id)messages date:(id)date keyboardLanguageID:(id)d keyboardLanguageLastChangedDate:(id)changedDate recipients:(id)recipients includeDynamicSuggestions:(BOOL)self0 completion:(id)self1;
- (void)nonEditableSuggestionsForMessage:(id)message messageDate:(id)date senderID:(id)d recipientHandles:(id)handles outgoingMessageHistory:(id)history keyboardLanguageID:(id)iD keyboardLanguageLastChangedDate:(id)changedDate includeDynamicSuggestions:(BOOL)self0 completion:(id)self1;
- (void)nonEditableSuggestionsForMessage:(id)message messageDate:(id)date senderID:(id)d recipients:(id)recipients outgoingMessageHistory:(id)history keyboardLanguageID:(id)iD keyboardLanguageLastChangedDate:(id)changedDate includeDynamicSuggestions:(BOOL)self0 completion:(id)self1;
- (void)performWithResolvedModelAssetPathsUsingLanguage:(id)language block:(id)block;
- (void)preResponseItemsForMessage:(id)message maximumResponses:(unint64_t)responses forConversationHistory:(id)history forContext:(id)context time:(id)time withLanguage:(id)language recipientHandles:(id)handles options:(unint64_t)self0 completionBlock:(id)self1;
- (void)predictionsForRequest:(id)request heads:(id)heads completion:(id)completion;
- (void)predictionsForRequest:(id)request plistPath:(id)path espressoBinPath:(id)binPath vocabPath:(id)vocabPath heads:(id)heads completion:(id)completion;
- (void)primeResponsesExperimentsIfNeeded;
- (void)registerResponse:(id)response forMessage:(id)message time:(id)time metadata:(id)metadata withLanguage:(id)language;
- (void)registerResponseDisplayedAtIndex:(id)index;
- (void)responsesForMessage:(id)message maximumResponses:(unint64_t)responses forConversationHistory:(id)history forContext:(id)context time:(id)time withLanguage:(id)language recipientHandles:(id)handles options:(unint64_t)self0 completionBlock:(id)self1;
- (void)responsesForMessage:(id)message maximumResponses:(unint64_t)responses forConversationHistory:(id)history forContext:(id)context time:(id)time withLanguage:(id)language recipients:(id)recipients options:(unint64_t)self0 completionBlock:(id)self1;
- (void)setCachedResponsesGeneratedEvent:(id)event;
- (void)suggestionsForRequest:(id)request withCompletion:(id)completion;
@end

@implementation PREResponsesExperiment

- (BOOL)shouldUseDefaultRKTreatmentForLanguage:(id)language
{
  languageCopy = language;
  v5 = pre_signpost_handle();
  ptr = 7;
  v6 = os_signpost_id_make_with_pointer(v5, &ptr);

  v7 = pre_signpost_handle();
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_260CE3000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "PRE-shouldUseDefaultRKTreatment", "Start", buf, 2u);
  }

  v9 = [(PREResponsesExperiment *)self activeExperimentNameForLanguage:languageCopy];

  v10 = [v9 isEqualToString:@"DEFAULT_RESPONSE_KIT"];
  v11 = pre_signpost_handle();
  v12 = v11;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *v14 = 0;
    _os_signpost_emit_with_name_impl(&dword_260CE3000, v12, OS_SIGNPOST_INTERVAL_END, v6, "PRE-shouldUseDefaultRKTreatment", "Completed", v14, 2u);
  }

  return v10;
}

- (id)handlesFromRecipients:(id)recipients
{
  v29 = *MEMORY[0x277D85DE8];
  recipientsCopy = recipients;
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(recipientsCopy, "count")}];
  v21 = 0;
  v22 = &v21;
  v23 = 0x2050000000;
  v5 = getCKEntityClass_softClass_1859;
  v24 = getCKEntityClass_softClass_1859;
  if (!getCKEntityClass_softClass_1859)
  {
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __getCKEntityClass_block_invoke_1860;
    v27 = &unk_279ABB3B0;
    v28 = &v21;
    __getCKEntityClass_block_invoke_1860(buf);
    v5 = v22[3];
  }

  v6 = v5;
  _Block_object_dispose(&v21, 8);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = recipientsCopy;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v8)
  {
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v17 + 1) + 8 * v10);
        if (objc_opt_isKindOfClass())
        {
          rawAddress = [v11 rawAddress];

          if (!rawAddress)
          {
            goto LABEL_14;
          }

          rawAddress2 = [v11 rawAddress];
          [v4 addObject:rawAddress2];
        }

        else
        {
          rawAddress2 = pre_responses_handle();
          if (os_log_type_enabled(rawAddress2, OS_LOG_TYPE_FAULT))
          {
            v14 = objc_opt_class();
            *buf = 138543619;
            *&buf[4] = v14;
            *&buf[12] = 2117;
            *&buf[14] = v11;
            _os_log_fault_impl(&dword_260CE3000, rawAddress2, OS_LOG_TYPE_FAULT, "PREResponsesExperiment unexpectedly received unknown object %{public}@ (%{sensitive}@) when expecting CKEntity", buf, 0x16u);
          }
        }

LABEL_14:
        ++v10;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v8);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)waitForPreResponseItemsForMessage:(id)message maximumResponses:(unint64_t)responses forConversationHistory:(id)history forContext:(id)context time:(id)time withLanguage:(id)language recipientHandles:(id)handles options:(unint64_t)self0
{
  messageCopy = message;
  historyCopy = history;
  contextCopy = context;
  timeCopy = time;
  languageCopy = language;
  handlesCopy = handles;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__1867;
  v34 = __Block_byref_object_dispose__1868;
  v35 = 0;
  v21 = dispatch_semaphore_create(0);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __154__PREResponsesExperiment_waitForPreResponseItemsForMessage_maximumResponses_forConversationHistory_forContext_time_withLanguage_recipientHandles_options___block_invoke;
  v27[3] = &unk_279ABB360;
  v29 = &v30;
  v22 = v21;
  v28 = v22;
  v23 = messageCopy;
  [(PREResponsesExperiment *)self preResponseItemsForMessage:messageCopy maximumResponses:responses forConversationHistory:historyCopy forContext:contextCopy time:timeCopy withLanguage:languageCopy recipientHandles:handlesCopy options:options completionBlock:v27];
  [MEMORY[0x277D425A0] waitForSemaphore:v22 timeoutSeconds:1.0];
  v24 = v31[5];

  _Block_object_dispose(&v30, 8);

  return v24;
}

void __154__PREResponsesExperiment_waitForPreResponseItemsForMessage_maximumResponses_forConversationHistory_forContext_time_withLanguage_recipientHandles_options___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __131__PREResponsesExperiment_registerGenerationWithPreResponseItems_language_isCached_responseTimePerf_promptMessage_generationStatus___block_invoke(uint64_t a1)
{
  v2 = pre_responses_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_260CE3000, v2, OS_LOG_TYPE_DEFAULT, "PREResponsesExperiment registering impression", buf, 2u);
  }

  v3 = pre_signpost_handle();
  ptr = 7;
  v4 = os_signpost_id_make_with_pointer(v3, &ptr);

  v5 = pre_signpost_handle();
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v10 = 0;
    _os_signpost_emit_with_name_impl(&dword_260CE3000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "PRE-RegisterImpression", "Start", v10, 2u);
  }

  [*(a1 + 32) registerResponsesGenerated:*(a1 + 40)];
  v7 = pre_signpost_handle();
  v8 = v7;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *v9 = 0;
    _os_signpost_emit_with_name_impl(&dword_260CE3000, v8, OS_SIGNPOST_INTERVAL_END, v4, "PRE-RegisterImpression", "Completed", v9, 2u);
  }
}

- (void)primeResponsesExperimentsIfNeeded
{
  v2 = [(PREResponsesExperiment *)self waitForPreResponseItemsForMessage:@"wake up maximumResponses:suggestd!" forConversationHistory:0 forContext:0 time:0 withLanguage:0 recipientHandles:0 options:0, 0];
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  localeIdentifier = [currentLocale localeIdentifier];

  preferredLanguages = [MEMORY[0x277CBEAF8] preferredLanguages];
  firstObject = [preferredLanguages firstObject];

  if (localeIdentifier)
  {
    v7 = +[PREExperimentResolver sharedInstance];
    [v7 warmupForLocale:localeIdentifier];
  }

  if (firstObject && ([localeIdentifier isEqualToString:firstObject] & 1) == 0)
  {
    v8 = +[PREExperimentResolver sharedInstance];
    [v8 warmupForLocale:firstObject];
  }

  v9 = pre_responses_handle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_260CE3000, v9, OS_LOG_TYPE_DEFAULT, "PREResponsesExperiment finished priming suggestd", buf, 2u);
  }
}

- (void)registerResponseDisplayedAtIndex:(id)index
{
  indexCopy = index;
  if (indexCopy)
  {
    objc_initWeak(location, self);
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __59__PREResponsesExperiment_registerResponseDisplayedAtIndex___block_invoke;
    v11 = &unk_279ABB310;
    objc_copyWeak(&v13, location);
    v12 = indexCopy;
    v5 = MEMORY[0x2666ECBF0](&v8);
    v6 = dispatch_get_global_queue(9, 0);
    [MEMORY[0x277D425A0] runAsyncOnQueue:v6 afterDelaySeconds:v5 block:{0.5, v8, v9, v10, v11}];

    objc_destroyWeak(&v13);
    objc_destroyWeak(location);
  }

  else
  {
    v7 = pre_responses_handle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&dword_260CE3000, v7, OS_LOG_TYPE_DEFAULT, "PREResponsesExperiment registerResponseDisplayed received invalid params", location, 2u);
    }
  }
}

void __59__PREResponsesExperiment_registerResponseDisplayedAtIndex___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = pre_responses_handle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_260CE3000, v3, OS_LOG_TYPE_DEFAULT, "PREResponsesExperiment logging responsesViewedEvent", v4, 2u);
    }

    [WeakRetained[2] registerResponseViewed:*(a1 + 32)];
  }
}

- (void)registerResponse:(id)response forMessage:(id)message time:(id)time metadata:(id)metadata withLanguage:(id)language
{
  v73 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  messageCopy = message;
  timeCopy = time;
  metadataCopy = metadata;
  languageCopy = language;
  v15 = pre_signpost_handle();
  ptr = 7;
  spid = os_signpost_id_make_with_pointer(v15, &ptr);

  v16 = pre_signpost_handle();
  v17 = v16;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_260CE3000, v17, OS_SIGNPOST_INTERVAL_BEGIN, spid, "PRE-RegisterEngagementPreparation", "Start", buf, 2u);
  }

  cachedResponsesGeneratedEvent = [(PREResponsesExperiment *)self cachedResponsesGeneratedEvent];
  language = [cachedResponsesGeneratedEvent language];
  v20 = language;
  if (language)
  {
    v46 = language;
  }

  else
  {
    v21 = +[PRELocaleDetection sharedInstance];
    v46 = [v21 localeForMessage:messageCopy outgoingMessageHistory:0 defaultLocale:languageCopy defaultLocaleLastChangedDate:0 sender:0];
  }

  v44 = [(PREResponsesExperiment *)self shouldUseDefaultRKTreatmentForLanguage:v46];
  v22 = [(PREResponsesExperiment *)self clippedMessageIfNecessary:responseCopy];
  if (metadataCopy)
  {
    v23 = [metadataCopy objectForKeyedSubscript:*MEMORY[0x277D46C20]];
    v24 = v23;
    if (v23)
    {
      v25 = v23;
    }

    v26 = [metadataCopy objectForKeyedSubscript:*MEMORY[0x277D46C28]];
    if (v26)
    {
      v27 = [objc_opt_class() _preInputMethodFrom:v26];
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    v27 = 0;
    v24 = 0;
  }

  v28 = pre_responses_handle();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = [objc_opt_class() _inputMethodStringFrom:v27];
    *buf = 138412802;
    *&buf[4] = v24;
    *&buf[12] = 2112;
    *&buf[14] = languageCopy;
    *&buf[22] = 2112;
    v70 = v29;
    _os_log_impl(&dword_260CE3000, v28, OS_LOG_TYPE_DEFAULT, "PREResponsesExperiment user engaged prediction at position %@ with language %@ and method %@", buf, 0x20u);
  }

  cachedResponsesGeneratedEvent2 = [(PREResponsesExperiment *)self cachedResponsesGeneratedEvent];
  v30 = objc_opt_new();
  [v30 setResponsesGeneratedEvent:cachedResponsesGeneratedEvent2];
  [v30 setInputMethod:v27];
  [v30 setSelectedResponse:v22];
  [v30 setSelectedPosition:v24];
  if (cachedResponsesGeneratedEvent2)
  {
    v31 = mach_absolute_time();
    [v30 setTimeToTap:{PREMachTimeToMilliseconds(v31 - objc_msgSend(cachedResponsesGeneratedEvent2, "responseGenerationTime"))}];
  }

  [v30 setHasQuestionMark:{objc_msgSend(messageCopy, "containsString:", @"?"}];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v70 = __Block_byref_object_copy__1867;
  v71 = __Block_byref_object_dispose__1868;
  v72 = 0;
  v66[0] = 0;
  v66[1] = v66;
  v66[2] = 0x3032000000;
  v66[3] = __Block_byref_object_copy__1867;
  v66[4] = __Block_byref_object_dispose__1868;
  v67 = 0;
  v65[0] = MEMORY[0x277D85DD0];
  v65[1] = 3221225472;
  v65[2] = __81__PREResponsesExperiment_registerResponse_forMessage_time_metadata_withLanguage___block_invoke;
  v65[3] = &unk_279ABB2C0;
  v65[4] = buf;
  v65[5] = v66;
  [(PREResponsesExperiment *)self performWithResolvedModelAssetPathsUsingLanguage:languageCopy block:v65];
  objc_initWeak(&location, self);
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __81__PREResponsesExperiment_registerResponse_forMessage_time_metadata_withLanguage___block_invoke_2;
  v51[3] = &unk_279ABB2E8;
  objc_copyWeak(&v61, &location);
  v63 = v44;
  v51[4] = self;
  v48 = responseCopy;
  v52 = v48;
  v32 = messageCopy;
  v53 = v32;
  v33 = metadataCopy;
  v54 = v33;
  v34 = languageCopy;
  v55 = v34;
  v35 = v30;
  v56 = v35;
  v36 = v22;
  v57 = v36;
  v37 = v24;
  v62 = v27;
  v58 = v37;
  v59 = buf;
  v60 = v66;
  v38 = MEMORY[0x2666ECBF0](v51);
  v39 = dispatch_get_global_queue(9, 0);
  [MEMORY[0x277D425A0] runAsyncOnQueue:v39 afterDelaySeconds:v38 block:0.5];
  v40 = pre_signpost_handle();
  v41 = v40;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v40))
  {
    *v50 = 0;
    _os_signpost_emit_with_name_impl(&dword_260CE3000, v41, OS_SIGNPOST_INTERVAL_END, spid, "PRE-RegisterEngagementPreparation", "Completed", v50, 2u);
  }

  objc_destroyWeak(&v61);
  objc_destroyWeak(&location);
  _Block_object_dispose(v66, 8);

  _Block_object_dispose(buf, 8);
  v42 = *MEMORY[0x277D85DE8];
}

void __81__PREResponsesExperiment_registerResponse_forMessage_time_metadata_withLanguage___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v7 = a3;
  v8 = a5;
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;
  v13 = v7;

  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v8;
}

void __81__PREResponsesExperiment_registerResponse_forMessage_time_metadata_withLanguage___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 112));
  if (WeakRetained)
  {
    v3 = pre_responses_handle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_260CE3000, v3, OS_LOG_TYPE_DEFAULT, "PREResponsesExperiment registerResponse api called", buf, 2u);
    }

    v4 = pre_signpost_handle();
    ptr = 7;
    v5 = os_signpost_id_make_with_pointer(v4, &ptr);

    v6 = pre_signpost_handle();
    v7 = v6;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      *v11 = 0;
      _os_signpost_emit_with_name_impl(&dword_260CE3000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PRE-RegisterEngagement", "Start", v11, 2u);
    }

    if (*(a1 + 124) == 1)
    {
      [*(*(a1 + 32) + 32) registerResponse:*(a1 + 40) forMessage:*(a1 + 48) metadata:*(a1 + 56) withLanguage:*(a1 + 64)];
    }

    [WeakRetained[2] registerResponseTapped:*(a1 + 72)];
    [WeakRetained[3] registerResponse:*(a1 + 80) position:*(a1 + 88) isCanned:*(a1 + 120) == 1 isUsingQuickResponses:(*(a1 + 124) & 1) == 0 locale:*(a1 + 64) modelConfigPath:*(*(*(a1 + 96) + 8) + 40) vocabPath:*(*(*(a1 + 104) + 8) + 40)];
    v8 = pre_signpost_handle();
    v9 = v8;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      *v10 = 0;
      _os_signpost_emit_with_name_impl(&dword_260CE3000, v9, OS_SIGNPOST_INTERVAL_END, v5, "PRE-RegisterEngagement", "Completed", v10, 2u);
    }
  }
}

- (void)preResponseItemsForMessage:(id)message maximumResponses:(unint64_t)responses forConversationHistory:(id)history forContext:(id)context time:(id)time withLanguage:(id)language recipientHandles:(id)handles options:(unint64_t)self0 completionBlock:(id)self1
{
  v107 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  historyCopy = history;
  contextCopy = context;
  timeCopy = time;
  languageCopy = language;
  handlesCopy = handles;
  blockCopy = block;
  v18 = pre_signpost_handle();
  ptr = 7;
  spid = os_signpost_id_make_with_pointer(v18, &ptr);

  v19 = pre_signpost_handle();
  v20 = v19;
  if ((spid - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_260CE3000, v20, OS_SIGNPOST_INTERVAL_BEGIN, spid, "PRE-AsyncTotalResponsesForMessage", "Start", buf, 2u);
  }

  *buf = 0;
  v95 = buf;
  v96 = 0x3810000000;
  v99 = 0;
  v100 = 0;
  v97 = &unk_260D0A0E1;
  v98 = @"preResponseItemsForMessage";
  v99 = mach_absolute_time();
  v100 = 0;
  v21 = pre_responses_handle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v102) = 0;
    _os_log_impl(&dword_260CE3000, v21, OS_LOG_TYPE_DEFAULT, "PREResponsesExperiment async api called", &v102, 2u);
  }

  v57 = [(PREResponsesExperiment *)self clippedMessageIfNecessary:messageCopy];

  v22 = pre_signpost_handle();
  v93 = 7;
  v23 = os_signpost_id_make_with_pointer(v22, &v93);

  v24 = pre_signpost_handle();
  v25 = v24;
  if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
  {
    LOWORD(v102) = 0;
    _os_signpost_emit_with_name_impl(&dword_260CE3000, v25, OS_SIGNPOST_INTERVAL_BEGIN, v23, "PRE-ReadSharedCache", "Start", &v102, 2u);
  }

  v26 = [(PREResponsesExperiment *)self cacheKeyForMessage:v57 maxResponses:responses time:timeCopy language:languageCopy];
  v27 = [(_PASLRUCache *)self->_responsesGeneratedCache objectForKey:v26];
  v50 = v26;
  v28 = pre_signpost_handle();
  v29 = v28;
  if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
  {
    LOWORD(v102) = 0;
    _os_signpost_emit_with_name_impl(&dword_260CE3000, v29, OS_SIGNPOST_INTERVAL_END, v23, "PRE-ReadSharedCache", "Completed", &v102, 2u);
  }

  if (v27)
  {
    v30 = pre_responses_handle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = [v27 count];
      LODWORD(v102) = 134217984;
      *(&v102 + 4) = v31;
      _os_log_impl(&dword_260CE3000, v30, OS_LOG_TYPE_DEFAULT, "PREResponsesExperiment preResponseItemsForMessage api loaded %tu responses from cache", &v102, 0xCu);
    }

    v32 = PRERecordMeasurementState(v95 + 4);
    v33 = pre_signpost_handle();
    v34 = v33;
    if ((spid - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
    {
      LOWORD(v102) = 0;
      _os_signpost_emit_with_name_impl(&dword_260CE3000, v34, OS_SIGNPOST_INTERVAL_END, spid, "PRE-AsyncTotalResponsesForMessage", "Completed", &v102, 2u);
    }

    blockCopy[2](blockCopy, v27);
    [(PREResponsesExperiment *)self registerGenerationWithPreResponseItems:v27 language:languageCopy isCached:1 responseTimePerf:v32 promptMessage:v57 generationStatus:2];
  }

  else
  {
    objc_initWeak(&location, self);
    v88 = 0;
    v89 = &v88;
    v90 = 0x2020000000;
    v35 = pre_signpost_handle();
    v87 = 7;
    v36 = os_signpost_id_make_with_pointer(v35, &v87);

    v91 = v36;
    v37 = pre_signpost_handle();
    v38 = v37;
    v39 = v89[3];
    if (v39 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v37))
    {
      LOWORD(v102) = 0;
      _os_signpost_emit_with_name_impl(&dword_260CE3000, v38, OS_SIGNPOST_INTERVAL_BEGIN, v39, "PRE-AsyncSuggestdResponsesForMessage", "Start", &v102, 2u);
    }

    *&v102 = 0;
    *(&v102 + 1) = &v102;
    v103 = 0x3032000000;
    v104 = __Block_byref_object_copy__1867;
    v105 = __Block_byref_object_dispose__1868;
    v106 = 0;
    v81 = 0;
    v82 = &v81;
    v83 = 0x3032000000;
    v84 = __Block_byref_object_copy__1867;
    v85 = __Block_byref_object_dispose__1868;
    v86 = 0;
    v75 = 0;
    v76 = &v75;
    v77 = 0x3032000000;
    v78 = __Block_byref_object_copy__1867;
    v79 = __Block_byref_object_dispose__1868;
    v80 = 0;
    v69 = 0;
    v70 = &v69;
    v71 = 0x3032000000;
    v72 = __Block_byref_object_copy__1867;
    v73 = __Block_byref_object_dispose__1868;
    v74 = 0;
    v68[0] = MEMORY[0x277D85DD0];
    v68[1] = 3221225472;
    v68[2] = __163__PREResponsesExperiment_preResponseItemsForMessage_maximumResponses_forConversationHistory_forContext_time_withLanguage_recipientHandles_options_completionBlock___block_invoke;
    v68[3] = &unk_279ABB220;
    v68[4] = &v102;
    v68[5] = &v81;
    v68[6] = &v75;
    v68[7] = &v69;
    [(PREResponsesExperiment *)self performWithResolvedModelAssetPathsUsingLanguage:languageCopy block:v68];
    v48 = *(*(&v102 + 1) + 40);
    xpcClient = self->_xpcClient;
    v46 = v76[5];
    v47 = v82[5];
    v40 = v70[5];
    registerDisplayed = [(PREResponsesExperiment *)self registerDisplayed];
    includeCustomResponses = [(PREResponsesExperiment *)self includeCustomResponses];
    includeResponsesToRobots = [(PREResponsesExperiment *)self includeResponsesToRobots];
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __163__PREResponsesExperiment_preResponseItemsForMessage_maximumResponses_forConversationHistory_forContext_time_withLanguage_recipientHandles_options_completionBlock___block_invoke_2;
    v59[3] = &unk_279ABB298;
    v59[4] = self;
    v65 = &v88;
    v60 = v57;
    v67[1] = responses;
    v61 = contextCopy;
    v62 = languageCopy;
    v67[2] = options;
    objc_copyWeak(v67, &location);
    v66 = buf;
    v67[3] = spid;
    v64 = blockCopy;
    v63 = v50;
    BYTE2(v45) = includeResponsesToRobots;
    BYTE1(v45) = includeCustomResponses;
    LOBYTE(v45) = registerDisplayed;
    [PREResponsesProtocol preResponseItemsForMessage:"preResponseItemsForMessage:maximumResponses:conversationTurns:context:time:language:recipientHandles:modelFilePath:modelConfigPath:espressoBinFilePath:vocabFilePath:registerDisplayed:includeCustomResponses:includeResponsesToRobots:completion:" maximumResponses:v60 conversationTurns:responses context:historyCopy time:v61 language:timeCopy recipientHandles:v62 modelFilePath:handlesCopy modelConfigPath:v48 espressoBinFilePath:v47 vocabFilePath:v46 registerDisplayed:v40 includeCustomResponses:v45 includeResponsesToRobots:v59 completion:?];

    objc_destroyWeak(v67);
    _Block_object_dispose(&v69, 8);

    _Block_object_dispose(&v75, 8);
    _Block_object_dispose(&v81, 8);

    _Block_object_dispose(&v102, 8);
    _Block_object_dispose(&v88, 8);
    objc_destroyWeak(&location);
  }

  _Block_object_dispose(buf, 8);
  v44 = *MEMORY[0x277D85DE8];
}

void __163__PREResponsesExperiment_preResponseItemsForMessage_maximumResponses_forConversationHistory_forContext_time_withLanguage_recipientHandles_options_completionBlock___block_invoke(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = *(a1[4] + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v9;
  v23 = v9;

  v15 = *(a1[5] + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v10;
  v17 = v10;

  v18 = *(a1[6] + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v11;
  v20 = v11;

  v21 = *(a1[7] + 8);
  v22 = *(v21 + 40);
  *(v21 + 40) = v12;
}

void __163__PREResponsesExperiment_preResponseItemsForMessage_maximumResponses_forConversationHistory_forContext_time_withLanguage_recipientHandles_options_completionBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v50 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ([*(a1 + 32) useResponseKitAsFallback] && (!v5 || v6))
  {
    v17 = pre_responses_handle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v6 debugDescription];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v18;
      _os_log_impl(&dword_260CE3000, v17, OS_LOG_TYPE_DEFAULT, "PREResponsesExperiment preResponseItemsForMessage api got error or no response when calling XPC, falling back to RK: %@", &buf, 0xCu);
    }

    v19 = pre_signpost_handle();
    v20 = v19;
    v21 = *(*(*(a1 + 80) + 8) + 24);
    if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&dword_260CE3000, v20, OS_SIGNPOST_INTERVAL_END, v21, "PRE-AsyncSuggestdResponsesForMessage", "Completed", &buf, 2u);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v48 = 0x2020000000;
    v22 = pre_signpost_handle();
    ptr = 7;
    v23 = os_signpost_id_make_with_pointer(v22, &ptr);

    v49 = v23;
    v24 = pre_signpost_handle();
    v25 = v24;
    v26 = *(*(&buf + 1) + 24);
    if (v26 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
    {
      *v45 = 0;
      _os_signpost_emit_with_name_impl(&dword_260CE3000, v25, OS_SIGNPOST_INTERVAL_BEGIN, v26, "PRE-AsyncRKFallbackResponsesForMessage", "Start", v45, 2u);
    }

    v27 = *(a1 + 40);
    v28 = *(*(a1 + 32) + 32);
    v29 = *(a1 + 48);
    v30 = *(a1 + 56);
    v32 = *(a1 + 104);
    v31 = *(a1 + 112);
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __163__PREResponsesExperiment_preResponseItemsForMessage_maximumResponses_forConversationHistory_forContext_time_withLanguage_recipientHandles_options_completionBlock___block_invoke_330;
    v37[3] = &unk_279ABB270;
    objc_copyWeak(v44, (a1 + 96));
    v33 = *(a1 + 56);
    v34 = *(a1 + 88);
    v38 = v33;
    v35 = *(a1 + 120);
    v42 = v34;
    p_buf = &buf;
    v44[1] = v35;
    v41 = *(a1 + 72);
    v39 = v6;
    v40 = *(a1 + 40);
    [v28 responsesForMessage:v27 maximumResponses:v32 forContext:v29 withLanguage:v30 options:v31 completionBlock:v37];

    objc_destroyWeak(v44);
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 96));
    v8 = pre_responses_handle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = [v5 count];
      _os_log_impl(&dword_260CE3000, v8, OS_LOG_TYPE_DEFAULT, "PREResponsesExperiment preResponseItemsForMessage api returning %tu responses from suggestd", &buf, 0xCu);
    }

    v9 = PRERecordMeasurementState((*(*(a1 + 88) + 8) + 32));
    (*(*(a1 + 72) + 16))();
    v10 = pre_signpost_handle();
    v11 = v10;
    v12 = *(*(*(a1 + 80) + 8) + 24);
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&dword_260CE3000, v11, OS_SIGNPOST_INTERVAL_END, v12, "PRE-AsyncSuggestdResponsesForMessage", "Completed", &buf, 2u);
    }

    v13 = pre_signpost_handle();
    v14 = v13;
    v15 = *(a1 + 120);
    if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&dword_260CE3000, v14, OS_SIGNPOST_INTERVAL_END, v15, "PRE-AsyncTotalResponsesForMessage", "Completed", &buf, 2u);
    }

    if ([v5 count])
    {
      v16 = 1;
    }

    else
    {
      v16 = 5;
    }

    [WeakRetained registerGenerationWithPreResponseItems:v5 language:*(a1 + 56) isCached:0 responseTimePerf:v9 promptMessage:*(a1 + 40) generationStatus:v16];
    [WeakRetained[7] setObject:v5 forKey:*(a1 + 64)];
  }

  v36 = *MEMORY[0x277D85DE8];
}

void __163__PREResponsesExperiment_preResponseItemsForMessage_maximumResponses_forConversationHistory_forContext_time_withLanguage_recipientHandles_options_completionBlock___block_invoke_330(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v5 = pre_responses_handle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 134217984;
    v17 = [v3 count];
    _os_log_impl(&dword_260CE3000, v5, OS_LOG_TYPE_DEFAULT, "PREResponsesExperiment preResponseItemsForMessage api returning %tu responses from ResponseKit fallback", &v16, 0xCu);
  }

  v6 = [PREResponseItem responseItemArrayFromResponseKitArray:v3 forLocale:*(a1 + 32)];
  v7 = PRERecordMeasurementState((*(*(a1 + 64) + 8) + 32));
  v8 = pre_signpost_handle();
  v9 = v8;
  v10 = *(*(*(a1 + 72) + 8) + 24);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    LOWORD(v16) = 0;
    _os_signpost_emit_with_name_impl(&dword_260CE3000, v9, OS_SIGNPOST_INTERVAL_END, v10, "PRE-AsyncRKFallbackResponsesForMessage", "Completed", &v16, 2u);
  }

  v11 = pre_signpost_handle();
  v12 = v11;
  v13 = *(a1 + 88);
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    LOWORD(v16) = 0;
    _os_signpost_emit_with_name_impl(&dword_260CE3000, v12, OS_SIGNPOST_INTERVAL_END, v13, "PRE-AsyncTotalResponsesForMessage", "Completed", &v16, 2u);
  }

  (*(*(a1 + 56) + 16))();
  if (*(a1 + 40))
  {
    v14 = 4;
  }

  else
  {
    v14 = 3;
  }

  [WeakRetained registerGenerationWithPreResponseItems:v6 language:*(a1 + 32) isCached:0 responseTimePerf:v7 promptMessage:*(a1 + 48) generationStatus:v14];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)predictionsForRequest:(id)request plistPath:(id)path espressoBinPath:(id)binPath vocabPath:(id)vocabPath heads:(id)heads completion:(id)completion
{
  completionCopy = completion;
  headsCopy = heads;
  vocabPathCopy = vocabPath;
  binPathCopy = binPath;
  pathCopy = path;
  v19 = [PREResponsesExperiment _getConversationHistoryFromRequest:request];
  lastObject = [v19 lastObject];
  text = [lastObject text];

  xpcClient = self->_xpcClient;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __101__PREResponsesExperiment_predictionsForRequest_plistPath_espressoBinPath_vocabPath_heads_completion___block_invoke;
  v24[3] = &unk_279ABB248;
  v25 = completionCopy;
  v23 = completionCopy;
  [(PREResponsesProtocol *)xpcClient predictForMessage:text conversationTurns:v19 language:@"en" plistPath:pathCopy espressoBinPath:binPathCopy vocabPath:vocabPathCopy heads:headsCopy completion:v24];
}

- (void)predictionsForRequest:(id)request heads:(id)heads completion:(id)completion
{
  requestCopy = request;
  headsCopy = heads;
  completionCopy = completion;
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x3032000000;
  v40[3] = __Block_byref_object_copy__1867;
  v40[4] = __Block_byref_object_dispose__1868;
  v41 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__1867;
  v38 = __Block_byref_object_dispose__1868;
  v39 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__1867;
  v32 = __Block_byref_object_dispose__1868;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__1867;
  v26 = __Block_byref_object_dispose__1868;
  v27 = 0;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __65__PREResponsesExperiment_predictionsForRequest_heads_completion___block_invoke;
  v21[3] = &unk_279ABB220;
  v21[4] = v40;
  v21[5] = &v34;
  v21[6] = &v28;
  v21[7] = &v22;
  [(PREResponsesExperiment *)self performWithResolvedModelAssetPathsUsingLanguage:@"en" block:v21];
  v11 = [PREResponsesExperiment _getConversationHistoryFromRequest:requestCopy];
  lastObject = [v11 lastObject];
  text = [lastObject text];

  xpcClient = self->_xpcClient;
  v15 = v35[5];
  v16 = v29[5];
  v17 = v23[5];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __65__PREResponsesExperiment_predictionsForRequest_heads_completion___block_invoke_2;
  v19[3] = &unk_279ABB248;
  v18 = completionCopy;
  v20 = v18;
  [(PREResponsesProtocol *)xpcClient predictForMessage:text conversationTurns:v11 language:@"en" plistPath:v15 espressoBinPath:v16 vocabPath:v17 heads:headsCopy completion:v19];

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(v40, 8);
}

void __65__PREResponsesExperiment_predictionsForRequest_heads_completion___block_invoke(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = *(a1[4] + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v9;
  v23 = v9;

  v15 = *(a1[5] + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v10;
  v17 = v10;

  v18 = *(a1[6] + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v11;
  v20 = v11;

  v21 = *(a1[7] + 8);
  v22 = *(v21 + 40);
  *(v21 + 40) = v12;
}

- (void)performWithResolvedModelAssetPathsUsingLanguage:(id)language block:(id)block
{
  v35 = *MEMORY[0x277D85DE8];
  languageCopy = language;
  blockCopy = block;
  if ([(PREResponsesExperiment *)self mode]== 2)
  {
    v7 = [(NSUserDefaults *)self->_defaults stringForKey:@"experimentModelUserDirectory"];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v9 = defaultManager;
    if (v7)
    {
      if (([defaultManager isReadableFileAtPath:v7]& 1) != 0)
      {
        v10 = [v7 stringByAppendingPathComponent:@"model.chunk"];
        v26 = v10;
        if ([v9 isReadableFileAtPath:v10])
        {
          inferenceModelFilePath = v10;
        }

        else
        {
          inferenceModelFilePath = 0;
        }

        v20 = [v7 stringByAppendingPathComponent:@"config.plist"];
        v25 = v20;
        if ([v9 isReadableFileAtPath:v20])
        {
          inferenceModelConfigPath = v20;
        }

        else
        {
          inferenceModelConfigPath = 0;
        }

        v21 = [v7 stringByAppendingPathComponent:@"espresso.bin"];
        if ([v9 isReadableFileAtPath:v21])
        {
          espressoBinFilePath = v21;
        }

        else
        {
          espressoBinFilePath = 0;
        }

        v22 = [v7 stringByAppendingPathComponent:@"vocab.trie"];
        if ([v9 isReadableFileAtPath:v22])
        {
          vocabFilePath = v22;
        }

        else
        {
          vocabFilePath = 0;
        }

        goto LABEL_28;
      }

      v19 = pre_responses_handle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_260CE3000, v19, OS_LOG_TYPE_FAULT, "PREResponsesExperiment performWithResolvedModelAssetPaths could not read user-specified model directory. Is this in a location thie process can read from? Falling back on bundled assets.", buf, 2u);
      }
    }

    else
    {
      v18 = pre_responses_handle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_260CE3000, v18, OS_LOG_TYPE_FAULT, "PREResponsesExperiment performWithResolvedModelAssetPaths could not resolve user-specified model directory. Has this been specified correctly in user defaults? Falling back on bundled assets.", buf, 2u);
      }

      v7 = 0;
    }

    vocabFilePath = 0;
    espressoBinFilePath = 0;
    inferenceModelConfigPath = 0;
    inferenceModelFilePath = 0;
LABEL_28:

    goto LABEL_29;
  }

  if ([(PREResponsesExperiment *)self mode]!= 1)
  {
    v7 = [(PREExperimentResolverProtocol *)self->_experimentResolver getResponseSuggestionsExperimentConfig:languageCopy shouldDownloadAssets:1];
    inferenceModelFilePath = [v7 inferenceModelFilePath];
    inferenceModelConfigPath = [v7 inferenceModelConfigPath];
    espressoBinFilePath = [v7 espressoBinFilePath];
    vocabFilePath = [v7 vocabFilePath];
    v9 = pre_responses_handle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      experimentIdentifiers = [v7 experimentIdentifiers];
      experimentId = [experimentIdentifiers experimentId];
      experimentIdentifiers2 = [v7 experimentIdentifiers];
      treatmentId = [experimentIdentifiers2 treatmentId];
      v17 = [(PREResponsesExperiment *)self activeExperimentNameForLanguage:languageCopy];
      *buf = 138412802;
      v30 = experimentId;
      v31 = 2112;
      v32 = treatmentId;
      v33 = 2112;
      v34 = v17;
      _os_log_impl(&dword_260CE3000, v9, OS_LOG_TYPE_DEFAULT, "PREResponsesExperiment performWithResolvedModelAssets api is fetching experimental responses with experiment %@, treatment %@, model %@", buf, 0x20u);
    }

    goto LABEL_28;
  }

  vocabFilePath = 0;
  espressoBinFilePath = 0;
  inferenceModelConfigPath = 0;
  inferenceModelFilePath = 0;
LABEL_29:
  blockCopy[2](blockCopy, inferenceModelFilePath, inferenceModelConfigPath, espressoBinFilePath, vocabFilePath);

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_responsesForMessage:(id)message maximumResponses:(unint64_t)responses outgoingMessageHistory:(id)history forConversationHistory:(id)conversationHistory forContext:(id)context time:(id)time withLanguage:(id)language languageLastChangedDate:(id)self0 recipientHandles:(id)self1 options:(unint64_t)self2 preferredLocale:(id)self3 completionBlock:(id)self4
{
  messageCopy = message;
  historyCopy = history;
  conversationHistoryCopy = conversationHistory;
  contextCopy = context;
  timeCopy = time;
  languageCopy = language;
  dateCopy = date;
  handlesCopy = handles;
  localeCopy = locale;
  blockCopy = block;
  if ([objc_opt_class() _isPreferredLocaleValid:localeCopy])
  {
    v23 = pre_signpost_handle();
    ptr[0] = 7;
    v24 = os_signpost_id_make_with_pointer(v23, ptr);

    v25 = pre_signpost_handle();
    v26 = v25;
    v27 = v24 - 1;
    if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_260CE3000, v26, OS_SIGNPOST_INTERVAL_BEGIN, v24, "PRE-AsyncTotalResponsesForMessage", "Start", buf, 2u);
    }

    spid = v24;

    *buf = 0;
    v78 = buf;
    v79 = 0x3810000000;
    v82 = 0;
    v83 = 0;
    v80 = &unk_260D0A0E1;
    v81 = @"async-responsesForMessage";
    v82 = mach_absolute_time();
    v83 = 0;
    [MEMORY[0x277D3A248] languageForLocaleIdentifier:localeCopy];
    v50 = v28 = messageCopy;
    v29 = [(PREResponsesExperiment *)self shouldUseDefaultRKTreatmentForLanguage:v50];
    if ([objc_opt_class() _isStringEmpty:messageCopy])
    {
      v30 = pre_responses_handle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *v72 = 0;
        _os_log_impl(&dword_260CE3000, v30, OS_LOG_TYPE_DEFAULT, "PREResponsesExperiment responsesForMessage async received null message, returning empty array", v72, 2u);
      }

      blockCopy[2](blockCopy, MEMORY[0x277CBEBF8]);
      v31 = pre_signpost_handle();
      v32 = v31;
      if (v27 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v31))
      {
        goto LABEL_27;
      }

      *v72 = 0;
    }

    else if (messageCopy && [historyCopy count] && (objc_msgSend(historyCopy, "firstObject"), v33 = objc_claimAutoreleasedReturnValue(), v34 = objc_msgSend(messageCopy, "isEqualToString:", v33), v33, v34))
    {
      v35 = pre_responses_handle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *v72 = 0;
        _os_log_impl(&dword_260CE3000, v35, OS_LOG_TYPE_DEFAULT, "PREResponsesExperiment responsesForMessage async received message exactly matching first message in outgoing history; treating prompt as outgoing message and returning empty array", v72, 2u);
      }

      blockCopy[2](blockCopy, MEMORY[0x277CBEBF8]);
      v36 = pre_signpost_handle();
      v32 = v36;
      if (v27 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v36))
      {
        goto LABEL_27;
      }

      *v72 = 0;
    }

    else
    {
      v37 = +[PRELocaleDetection sharedInstance];
      v38 = [v37 isLanguageMismatchedForMessage:messageCopy withLocaleIdentifier:localeCopy];

      if (!v38)
      {
        if (v29)
        {
          v41 = pre_responses_handle();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            *v72 = 0;
            _os_log_impl(&dword_260CE3000, v41, OS_LOG_TYPE_DEFAULT, "PREResponsesExperiment async api is fetching default RK responses", v72, 2u);
          }

          objc_initWeak(&location, self);
          *v72 = 0;
          v73 = v72;
          v74 = 0x2020000000;
          v42 = pre_signpost_handle();
          v71 = 7;
          v43 = os_signpost_id_make_with_pointer(v42, &v71);

          v75 = v43;
          v44 = pre_signpost_handle();
          v45 = v44;
          v46 = *(v73 + 3);
          if (v46 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v44))
          {
            *v70 = 0;
            _os_signpost_emit_with_name_impl(&dword_260CE3000, v45, OS_SIGNPOST_INTERVAL_BEGIN, v46, "PRE-AsyncRKResponsesForMessage", "Start", v70, 2u);
          }

          rkClient = self->_rkClient;
          v62[0] = MEMORY[0x277D85DD0];
          v62[1] = 3221225472;
          v62[2] = __220__PREResponsesExperiment__responsesForMessage_maximumResponses_outgoingMessageHistory_forConversationHistory_forContext_time_withLanguage_languageLastChangedDate_recipientHandles_options_preferredLocale_completionBlock___block_invoke;
          v62[3] = &unk_279ABB270;
          objc_copyWeak(v69, &location);
          v67 = v72;
          v69[1] = spid;
          v63 = languageCopy;
          v68 = buf;
          v66 = blockCopy;
          v64 = v50;
          v65 = messageCopy;
          [(RKMessageResponseManager *)rkClient responsesForMessage:v65 maximumResponses:responses forContext:contextCopy withLanguage:v64 options:options completionBlock:v62];

          objc_destroyWeak(v69);
          _Block_object_dispose(v72, 8);
          p_location = &location;
        }

        else
        {
          objc_initWeak(v72, self);
          v58[0] = MEMORY[0x277D85DD0];
          v58[1] = 3221225472;
          v58[2] = __220__PREResponsesExperiment__responsesForMessage_maximumResponses_outgoingMessageHistory_forConversationHistory_forContext_time_withLanguage_languageLastChangedDate_recipientHandles_options_preferredLocale_completionBlock___block_invoke_316;
          v58[3] = &unk_279ABB1D8;
          objc_copyWeak(v61, v72);
          v59 = blockCopy;
          v60 = buf;
          v61[1] = spid;
          [(PREResponsesExperiment *)self preResponseItemsForMessage:messageCopy maximumResponses:responses forConversationHistory:conversationHistoryCopy forContext:contextCopy time:timeCopy withLanguage:v50 recipientHandles:handlesCopy options:options completionBlock:v58];

          objc_destroyWeak(v61);
          p_location = v72;
        }

        objc_destroyWeak(p_location);
        goto LABEL_37;
      }

      v39 = pre_responses_handle();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *v72 = 0;
        _os_log_impl(&dword_260CE3000, v39, OS_LOG_TYPE_DEFAULT, "PREResponsesExperiment responsesForMessage async detected language mismatch between prompt and previous outgoing messages in conversation, returning empty array", v72, 2u);
      }

      blockCopy[2](blockCopy, MEMORY[0x277CBEBF8]);
      v40 = pre_signpost_handle();
      v32 = v40;
      if (v27 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v40))
      {
LABEL_27:

        PRERecordMeasurementState(v78 + 4);
LABEL_37:

        _Block_object_dispose(buf, 8);
        goto LABEL_38;
      }

      *v72 = 0;
    }

    _os_signpost_emit_with_name_impl(&dword_260CE3000, v32, OS_SIGNPOST_INTERVAL_END, spid, "PRE-AsyncTotalResponsesForMessage", "Completed", v72, 2u);
    goto LABEL_27;
  }

  blockCopy[2](blockCopy, MEMORY[0x277CBEBF8]);
  v28 = messageCopy;
LABEL_38:
}

void __220__PREResponsesExperiment__responsesForMessage_maximumResponses_outgoingMessageHistory_forConversationHistory_forContext_time_withLanguage_languageLastChangedDate_recipientHandles_options_preferredLocale_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v5 = pre_responses_handle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 134217984;
    v17 = [v3 count];
    _os_log_impl(&dword_260CE3000, v5, OS_LOG_TYPE_DEFAULT, "PREResponsesExperiment async api returning %tu responses", &v16, 0xCu);
  }

  v6 = pre_signpost_handle();
  v7 = v6;
  v8 = *(*(*(a1 + 64) + 8) + 24);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    LOWORD(v16) = 0;
    _os_signpost_emit_with_name_impl(&dword_260CE3000, v7, OS_SIGNPOST_INTERVAL_END, v8, "PRE-AsyncRKResponsesForMessage", "Completed", &v16, 2u);
  }

  v9 = pre_signpost_handle();
  v10 = v9;
  v11 = *(a1 + 88);
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    LOWORD(v16) = 0;
    _os_signpost_emit_with_name_impl(&dword_260CE3000, v10, OS_SIGNPOST_INTERVAL_END, v11, "PRE-AsyncTotalResponsesForMessage", "Completed", &v16, 2u);
  }

  v12 = [PREResponseItem responseItemArrayFromResponseKitArray:v3 forLocale:*(a1 + 32)];
  v13 = [PREResponsesExperiment _getFormattedPREResponseItems:v12 inputPreferences:WeakRetained[5]];

  v14 = PRERecordMeasurementState((*(*(a1 + 72) + 8) + 32));
  (*(*(a1 + 56) + 16))();
  [WeakRetained registerGenerationWithPreResponseItems:v13 language:*(a1 + 40) isCached:0 responseTimePerf:v14 promptMessage:*(a1 + 48) generationStatus:1];

  v15 = *MEMORY[0x277D85DE8];
}

void __220__PREResponsesExperiment__responsesForMessage_maximumResponses_outgoingMessageHistory_forConversationHistory_forContext_time_withLanguage_languageLastChangedDate_recipientHandles_options_preferredLocale_completionBlock___block_invoke_316(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = [PREResponsesExperiment _getFormattedPREResponseItems:v3 inputPreferences:WeakRetained[5]];

    (*(*(a1 + 32) + 16))();
    PRERecordMeasurementState((*(*(a1 + 40) + 8) + 32));
    v6 = pre_signpost_handle();
    v7 = v6;
    v8 = *(a1 + 56);
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      *v9 = 0;
      _os_signpost_emit_with_name_impl(&dword_260CE3000, v7, OS_SIGNPOST_INTERVAL_END, v8, "PRE-AsyncTotalResponsesForMessage", "Completed", v9, 2u);
    }

    v3 = v5;
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)responsesForMessage:(id)message maximumResponses:(unint64_t)responses forConversationHistory:(id)history forContext:(id)context time:(id)time withLanguage:(id)language recipientHandles:(id)handles options:(unint64_t)self0 completionBlock:(id)self1
{
  blockCopy = block;
  handlesCopy = handles;
  languageCopy = language;
  timeCopy = time;
  contextCopy = context;
  historyCopy = history;
  messageCopy = message;
  v24 = +[PRELocaleDetection sharedInstance];
  v26 = [v24 localeForMessage:messageCopy outgoingMessageHistory:0 defaultLocale:languageCopy defaultLocaleLastChangedDate:0 sender:contextCopy];

  [(PREResponsesExperiment *)self _responsesForMessage:messageCopy maximumResponses:responses outgoingMessageHistory:0 forConversationHistory:historyCopy forContext:contextCopy time:timeCopy withLanguage:languageCopy languageLastChangedDate:0 recipientHandles:handlesCopy options:options preferredLocale:v26 completionBlock:blockCopy];
}

- (void)responsesForMessage:(id)message maximumResponses:(unint64_t)responses forConversationHistory:(id)history forContext:(id)context time:(id)time withLanguage:(id)language recipients:(id)recipients options:(unint64_t)self0 completionBlock:(id)self1
{
  blockCopy = block;
  languageCopy = language;
  timeCopy = time;
  contextCopy = context;
  historyCopy = history;
  messageCopy = message;
  v24 = [(PREResponsesExperiment *)self handlesFromRecipients:recipients];
  [(PREResponsesExperiment *)self responsesForMessage:messageCopy maximumResponses:responses forConversationHistory:historyCopy forContext:contextCopy time:timeCopy withLanguage:languageCopy recipientHandles:v24 options:options completionBlock:blockCopy];
}

- (id)_responsesForMessage:(id)message maximumResponses:(unint64_t)responses outgoingMessageHistory:(id)history forConversationHistory:(id)conversationHistory forContext:(id)context time:(id)time withLanguage:(id)language languageLastChangedDate:(id)self0 recipientHandles:(id)self1 options:(unint64_t)self2 preferredLocale:(id)self3
{
  v64 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  historyCopy = history;
  conversationHistoryCopy = conversationHistory;
  contextCopy = context;
  timeCopy = time;
  languageCopy = language;
  dateCopy = date;
  handlesCopy = handles;
  localeCopy = locale;
  if (![objc_opt_class() _isPreferredLocaleValid:localeCopy])
  {
    v30 = MEMORY[0x277CBEBF8];
    goto LABEL_42;
  }

  v61[2] = 0;
  v61[0] = @"sync-responsesForMessage";
  v61[1] = mach_absolute_time();
  v22 = pre_signpost_handle();
  ptr = 7;
  spid = os_signpost_id_make_with_pointer(v22, &ptr);

  v23 = pre_signpost_handle();
  v24 = v23;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_260CE3000, v24, OS_SIGNPOST_INTERVAL_BEGIN, spid, "PRE-SyncTotalResponsesForMessage", "Start", buf, 2u);
  }

  v25 = pre_responses_handle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_260CE3000, v25, OS_LOG_TYPE_DEFAULT, "PREResponsesExperiment sync api called", buf, 2u);
  }

  v26 = [MEMORY[0x277D3A248] languageForLocaleIdentifier:localeCopy];
  v27 = [(PREResponsesExperiment *)self shouldUseDefaultRKTreatmentForLanguage:v26];
  if ([objc_opt_class() _isStringEmpty:messageCopy])
  {
    v28 = pre_responses_handle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v29 = "PREResponsesExperiment sync received null message, returning empty array";
LABEL_19:
      _os_log_impl(&dword_260CE3000, v28, OS_LOG_TYPE_DEFAULT, v29, buf, 2u);
    }
  }

  else if (messageCopy && [historyCopy count] && (objc_msgSend(historyCopy, "firstObject"), v31 = objc_claimAutoreleasedReturnValue(), v32 = objc_msgSend(messageCopy, "isEqualToString:", v31), v31, v32))
  {
    v28 = pre_responses_handle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v29 = "PREResponsesExperiment sync received message exactly matching first message in outgoing history; treating prompt as outgoing message and returning empty array";
      goto LABEL_19;
    }
  }

  else
  {
    v33 = +[PRELocaleDetection sharedInstance];
    v34 = [v33 isLanguageMismatchedForMessage:messageCopy withLocaleIdentifier:localeCopy];

    if (!v34)
    {
      if (v27)
      {
        v35 = pre_responses_handle();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_260CE3000, v35, OS_LOG_TYPE_DEFAULT, "PREResponsesExperiment sync api is fetching default RK responses", buf, 2u);
        }

        v36 = pre_signpost_handle();
        v59 = 7;
        v37 = os_signpost_id_make_with_pointer(v36, &v59);

        v38 = pre_signpost_handle();
        v39 = v38;
        v40 = v37 - 1;
        if (v37 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_260CE3000, v39, OS_SIGNPOST_INTERVAL_BEGIN, v37, "PRE-SyncRKResponsesForMessage", "Start", buf, 2u);
        }

        v41 = [(RKMessageResponseManager *)self->_rkClient responsesForMessage:messageCopy maximumResponses:responses forContext:contextCopy withLanguage:v26 options:options];
        if (v41)
        {
          v42 = [PREResponseItem responseItemArrayFromResponseKitArray:v41 forLocale:languageCopy];
        }

        else
        {
          v42 = MEMORY[0x277CBEBF8];
        }

        [(PREResponsesExperiment *)self registerGenerationWithPreResponseItems:v42 language:v26 isCached:0 responseTimePerf:PRERecordMeasurementState(v61) promptMessage:messageCopy generationStatus:1];
        v52 = v37;
        v43 = pre_signpost_handle();
        v44 = v43;
        if (v40 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v43))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_260CE3000, v44, OS_SIGNPOST_INTERVAL_END, v52, "PRE-SyncRKResponsesForMessage", "Completed", buf, 2u);
        }
      }

      else
      {
        v42 = [(PREResponsesExperiment *)self waitForPreResponseItemsForMessage:messageCopy maximumResponses:responses forConversationHistory:0 forContext:contextCopy time:timeCopy withLanguage:v26 recipientHandles:handlesCopy options:options];
      }

      v45 = pre_signpost_handle();
      v46 = v45;
      if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v45))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_260CE3000, v46, OS_SIGNPOST_INTERVAL_END, spid, "PRE-SyncTotalResponsesForMessage", "Completed", buf, 2u);
      }

      v47 = pre_responses_handle();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        v48 = [v42 count];
        *buf = 134217984;
        v63 = v48;
        _os_log_impl(&dword_260CE3000, v47, OS_LOG_TYPE_DEFAULT, "PREResponsesExperiment sync api returning %tu responses", buf, 0xCu);
      }

      v30 = [objc_opt_class() _getFormattedPREResponseItems:v42 inputPreferences:self->_tiPreferencesController];

      goto LABEL_41;
    }

    v28 = pre_responses_handle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v29 = "PREResponsesExperiment sync detected language mismatch between prompt and previous outgoing messages in conversation, returning empty array";
      goto LABEL_19;
    }
  }

  PRERecordMeasurementState(v61);
  v30 = MEMORY[0x277CBEBF8];
LABEL_41:

  PRERecordMeasurementState(v61);
LABEL_42:

  v49 = *MEMORY[0x277D85DE8];

  return v30;
}

- (id)responsesForMessage:(id)message maximumResponses:(unint64_t)responses forConversationHistory:(id)history forContext:(id)context time:(id)time withLanguage:(id)language recipientHandles:(id)handles options:(unint64_t)self0
{
  handlesCopy = handles;
  languageCopy = language;
  timeCopy = time;
  contextCopy = context;
  historyCopy = history;
  messageCopy = message;
  v22 = +[PRELocaleDetection sharedInstance];
  v23 = [v22 localeForMessage:messageCopy outgoingMessageHistory:0 defaultLocale:languageCopy defaultLocaleLastChangedDate:0 sender:contextCopy];

  v24 = [(PREResponsesExperiment *)self _responsesForMessage:messageCopy maximumResponses:responses outgoingMessageHistory:0 forConversationHistory:historyCopy forContext:contextCopy time:timeCopy withLanguage:languageCopy languageLastChangedDate:0 recipientHandles:handlesCopy options:options preferredLocale:v23];

  return v24;
}

- (void)nonEditableSuggestionsForMessage:(id)message messageDate:(id)date senderID:(id)d recipientHandles:(id)handles outgoingMessageHistory:(id)history keyboardLanguageID:(id)iD keyboardLanguageLastChangedDate:(id)changedDate includeDynamicSuggestions:(BOOL)self0 completion:(id)self1
{
  suggestionsCopy = suggestions;
  messageCopy = message;
  dateCopy = date;
  dCopy = d;
  handlesCopy = handles;
  historyCopy = history;
  iDCopy = iD;
  changedDateCopy = changedDate;
  completionCopy = completion;
  if (!suggestions && ![(PREResponsesExperiment *)self includeCannedResponses])
  {
    completionCopy[2](completionCopy, MEMORY[0x277CBEBF8]);
    v32 = dateCopy;
    goto LABEL_18;
  }

  v35 = handlesCopy;
  v24 = +[PRELocaleDetection sharedInstance];
  v25 = [v24 localeForMessage:messageCopy outgoingMessageHistory:historyCopy defaultLocale:iDCopy defaultLocaleLastChangedDate:changedDateCopy sender:dCopy];

  exemptTermsDetector = self->_exemptTermsDetector;
  v27 = [PRELocaleDetection languageTagForLocaleIdentifier:v25];
  LODWORD(exemptTermsDetector) = [(PREPredictionExemptTermsDetector *)exemptTermsDetector checkForExemptContentInText:messageCopy languageCode:v27];

  if (exemptTermsDetector)
  {
    v28 = pre_responses_handle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_260CE3000, v28, OS_LOG_TYPE_DEFAULT, "PREResponsesExperiment received message contains exempt content", buf, 2u);
    }

    suggestionsCopy = 0;
  }

  if (!-[PREResponsesExperiment includeCannedResponses](self, "includeCannedResponses") || ![objc_opt_class() _isPreferredLocaleValid:v25])
  {
    v30 = MEMORY[0x277CBEBF8];
    if (!suggestionsCopy)
    {
      goto LABEL_10;
    }

LABEL_12:
    if ([(TIPreferencesController *)self->_tiPreferencesController BOOLForKey:9])
    {
      v33 = 256;
    }

    else
    {
      v33 = 384;
    }

    objc_initWeak(buf, self);
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __208__PREResponsesExperiment_nonEditableSuggestionsForMessage_messageDate_senderID_recipientHandles_outgoingMessageHistory_keyboardLanguageID_keyboardLanguageLastChangedDate_includeDynamicSuggestions_completion___block_invoke;
    v38[3] = &unk_279ABB118;
    objc_copyWeak(&v41, buf);
    v40 = completionCopy;
    v39 = v30;
    v34 = v33;
    v32 = dateCopy;
    [(PREResponsesExperiment *)self _responsesForMessage:messageCopy maximumResponses:4 outgoingMessageHistory:historyCopy forConversationHistory:0 forContext:dCopy time:dateCopy withLanguage:iDCopy languageLastChangedDate:changedDateCopy recipientHandles:v35 options:v34 preferredLocale:v25 completionBlock:v38];

    objc_destroyWeak(&v41);
    objc_destroyWeak(buf);
    goto LABEL_16;
  }

  v29 = [MEMORY[0x277D3A248] languageForLocaleIdentifier:v25];
  v30 = [PREResponsesExperiment _cannedRepliesForLanguage:v29 inputPreferences:self->_tiPreferencesController];

  if (suggestionsCopy)
  {
    goto LABEL_12;
  }

LABEL_10:
  v31 = [PREResponsesExperiment _suggestionsWithDynamicResponseItems:0 cannedResponseItems:v30 inputPreferences:self->_tiPreferencesController];
  (completionCopy)[2](completionCopy, v31);

  v32 = dateCopy;
LABEL_16:

  handlesCopy = v35;
LABEL_18:
}

void __208__PREResponsesExperiment_nonEditableSuggestionsForMessage_messageDate_senderID_recipientHandles_outgoingMessageHistory_keyboardLanguageID_keyboardLanguageLastChangedDate_includeDynamicSuggestions_completion___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = *(a1 + 40);
  if (WeakRetained)
  {
    v5 = [PREResponsesExperiment _suggestionsWithDynamicResponseItems:v6 cannedResponseItems:*(a1 + 32) inputPreferences:WeakRetained[5]];
    (*(v4 + 16))(v4, v5);
  }

  else
  {
    (*(v4 + 16))(*(a1 + 40), MEMORY[0x277CBEBF8]);
  }
}

- (void)nonEditableSuggestionsForMessage:(id)message messageDate:(id)date senderID:(id)d recipients:(id)recipients outgoingMessageHistory:(id)history keyboardLanguageID:(id)iD keyboardLanguageLastChangedDate:(id)changedDate includeDynamicSuggestions:(BOOL)self0 completion:(id)self1
{
  completionCopy = completion;
  changedDateCopy = changedDate;
  iDCopy = iD;
  historyCopy = history;
  dCopy = d;
  dateCopy = date;
  messageCopy = message;
  v26 = [(PREResponsesExperiment *)self handlesFromRecipients:recipients];
  LOBYTE(v25) = suggestions;
  [(PREResponsesExperiment *)self nonEditableSuggestionsForMessage:messageCopy messageDate:dateCopy senderID:dCopy recipientHandles:v26 outgoingMessageHistory:historyCopy keyboardLanguageID:iDCopy keyboardLanguageLastChangedDate:changedDateCopy includeDynamicSuggestions:v25 completion:completionCopy];
}

- (id)nonEditableSuggestionsForMessage:(id)message messageDate:(id)date senderID:(id)d recipientHandles:(id)handles outgoingMessageHistory:(id)history keyboardLanguageID:(id)iD keyboardLanguageLastChangedDate:(id)changedDate includeDynamicSuggestions:(BOOL)self0
{
  suggestionsCopy = suggestions;
  messageCopy = message;
  dateCopy = date;
  dCopy = d;
  handlesCopy = handles;
  historyCopy = history;
  iDCopy = iD;
  changedDateCopy = changedDate;
  if (suggestions || [(PREResponsesExperiment *)self includeCannedResponses])
  {
    v22 = +[PRELocaleDetection sharedInstance];
    v36 = dCopy;
    v23 = [v22 localeForMessage:messageCopy outgoingMessageHistory:historyCopy defaultLocale:iDCopy defaultLocaleLastChangedDate:changedDateCopy sender:dCopy];

    exemptTermsDetector = self->_exemptTermsDetector;
    v25 = [PRELocaleDetection languageTagForLocaleIdentifier:v23];
    LODWORD(exemptTermsDetector) = [(PREPredictionExemptTermsDetector *)exemptTermsDetector checkForExemptContentInText:messageCopy languageCode:v25];

    if (exemptTermsDetector)
    {
      v26 = pre_responses_handle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_260CE3000, v26, OS_LOG_TYPE_DEFAULT, "PREResponsesExperiment received message contains exempt content", buf, 2u);
      }

      suggestionsCopy = 0;
    }

    if (-[PREResponsesExperiment includeCannedResponses](self, "includeCannedResponses") && [objc_opt_class() _isPreferredLocaleValid:v23])
    {
      v27 = [MEMORY[0x277D3A248] languageForLocaleIdentifier:v23];
      v28 = [PREResponsesExperiment _cannedRepliesForLanguage:v27 inputPreferences:self->_tiPreferencesController];

      if (!suggestionsCopy)
      {
LABEL_10:
        v29 = 0;
        v31 = handlesCopy;
        v30 = dateCopy;
LABEL_15:
        v34 = [PREResponsesExperiment _suggestionsWithDynamicResponseItems:v29 cannedResponseItems:v28 inputPreferences:self->_tiPreferencesController];

        dCopy = v36;
        goto LABEL_17;
      }
    }

    else
    {
      v28 = MEMORY[0x277CBEBF8];
      if (!suggestionsCopy)
      {
        goto LABEL_10;
      }
    }

    v32 = [(TIPreferencesController *)self->_tiPreferencesController BOOLForKey:9];
    v33 = 384;
    if (v32)
    {
      v33 = 256;
    }

    v31 = handlesCopy;
    v30 = dateCopy;
    v29 = [(PREResponsesExperiment *)self _responsesForMessage:messageCopy maximumResponses:4 outgoingMessageHistory:historyCopy forConversationHistory:0 forContext:v36 time:dateCopy withLanguage:iDCopy languageLastChangedDate:changedDateCopy recipientHandles:handlesCopy options:v33 preferredLocale:v23];
    goto LABEL_15;
  }

  v34 = MEMORY[0x277CBEBF8];
  v31 = handlesCopy;
  v30 = dateCopy;
LABEL_17:

  return v34;
}

- (id)nonEditableSuggestionsForMessage:(id)message messageDate:(id)date senderID:(id)d recipients:(id)recipients outgoingMessageHistory:(id)history keyboardLanguageID:(id)iD keyboardLanguageLastChangedDate:(id)changedDate includeDynamicSuggestions:(BOOL)self0
{
  changedDateCopy = changedDate;
  iDCopy = iD;
  historyCopy = history;
  dCopy = d;
  dateCopy = date;
  messageCopy = message;
  v23 = [(PREResponsesExperiment *)self handlesFromRecipients:recipients];
  LOBYTE(v26) = suggestions;
  v24 = [(PREResponsesExperiment *)self nonEditableSuggestionsForMessage:messageCopy messageDate:dateCopy senderID:dCopy recipientHandles:v23 outgoingMessageHistory:historyCopy keyboardLanguageID:iDCopy keyboardLanguageLastChangedDate:changedDateCopy includeDynamicSuggestions:v26];

  return v24;
}

- (void)fullNonEditableSuggestionsListForMessage:(id)message context:(id)context additionalSenderMessages:(id)messages date:(id)date keyboardLanguageID:(id)d keyboardLanguageLastChangedDate:(id)changedDate recipients:(id)recipients includeDynamicSuggestions:(BOOL)self0 completion:(id)self1
{
  messageCopy = message;
  contextCopy = context;
  messagesCopy = messages;
  dateCopy = date;
  dCopy = d;
  changedDateCopy = changedDate;
  recipientsCopy = recipients;
  completionCopy = completion;
  v20 = pre_signpost_handle();
  ptr[0] = 7;
  v21 = os_signpost_id_make_with_pointer(v20, ptr);

  v22 = pre_signpost_handle();
  v23 = v22;
  if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
  {
    LOWORD(buf[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_260CE3000, v23, OS_SIGNPOST_INTERVAL_BEGIN, v21, "PRE-AsyncFullNonEditableSuggestions", "Start", buf, 2u);
  }

  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __204__PREResponsesExperiment_fullNonEditableSuggestionsListForMessage_context_additionalSenderMessages_date_keyboardLanguageID_keyboardLanguageLastChangedDate_recipients_includeDynamicSuggestions_completion___block_invoke;
  v53[3] = &unk_279ABB188;
  v54 = completionCopy;
  v55 = v21;
  v38 = completionCopy;
  v24 = MEMORY[0x2666ECBF0](v53);
  if (fullNonEditableSuggestionsListForMessage_context_additionalSenderMessages_date_keyboardLanguageID_keyboardLanguageLastChangedDate_recipients_includeDynamicSuggestions_completion___pasOnceToken833 != -1)
  {
    dispatch_once(&fullNonEditableSuggestionsListForMessage_context_additionalSenderMessages_date_keyboardLanguageID_keyboardLanguageLastChangedDate_recipients_includeDynamicSuggestions_completion___pasOnceToken833, &__block_literal_global_307);
  }

  v25 = fullNonEditableSuggestionsListForMessage_context_additionalSenderMessages_date_keyboardLanguageID_keyboardLanguageLastChangedDate_recipients_includeDynamicSuggestions_completion___pasExprOnceResult;
  objc_initWeak(buf, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __204__PREResponsesExperiment_fullNonEditableSuggestionsListForMessage_context_additionalSenderMessages_date_keyboardLanguageID_keyboardLanguageLastChangedDate_recipients_includeDynamicSuggestions_completion___block_invoke_2;
  block[3] = &unk_279ABB1B0;
  objc_copyWeak(&v50, buf);
  v42 = messageCopy;
  v43 = dateCopy;
  v44 = contextCopy;
  v45 = recipientsCopy;
  v46 = messagesCopy;
  v47 = dCopy;
  v48 = changedDateCopy;
  v49 = v24;
  suggestionsCopy = suggestions;
  v34 = changedDateCopy;
  v36 = dCopy;
  v26 = messagesCopy;
  v27 = recipientsCopy;
  v28 = contextCopy;
  v29 = dateCopy;
  v30 = messageCopy;
  v31 = v24;
  v32 = dispatch_block_create(0, block);
  dispatch_async(v25, v32);

  objc_destroyWeak(&v50);
  objc_destroyWeak(buf);
}

void __204__PREResponsesExperiment_fullNonEditableSuggestionsListForMessage_context_additionalSenderMessages_date_keyboardLanguageID_keyboardLanguageLastChangedDate_recipients_includeDynamicSuggestions_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = pre_signpost_handle();
  v5 = v4;
  v6 = *(a1 + 40);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_260CE3000, v5, OS_SIGNPOST_INTERVAL_END, v6, "PRE-AsyncFullNonEditableSuggestions", "Completed", v7, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void __204__PREResponsesExperiment_fullNonEditableSuggestionsListForMessage_context_additionalSenderMessages_date_keyboardLanguageID_keyboardLanguageLastChangedDate_recipients_includeDynamicSuggestions_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    LOBYTE(v3) = *(a1 + 104);
    [WeakRetained nonEditableSuggestionsForMessage:*(a1 + 32) messageDate:*(a1 + 40) senderID:*(a1 + 48) recipients:*(a1 + 56) outgoingMessageHistory:*(a1 + 64) keyboardLanguageID:*(a1 + 72) keyboardLanguageLastChangedDate:*(a1 + 80) includeDynamicSuggestions:v3 completion:*(a1 + 88)];
  }

  else
  {
    (*(*(a1 + 88) + 16))();
  }
}

void __204__PREResponsesExperiment_fullNonEditableSuggestionsListForMessage_context_additionalSenderMessages_date_keyboardLanguageID_keyboardLanguageLastChangedDate_recipients_includeDynamicSuggestions_completion___block_invoke_305()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"PRE-asyncFullNonEditableSuggestionsQueue"];
  v2 = fullNonEditableSuggestionsListForMessage_context_additionalSenderMessages_date_keyboardLanguageID_keyboardLanguageLastChangedDate_recipients_includeDynamicSuggestions_completion___pasExprOnceResult;
  fullNonEditableSuggestionsListForMessage_context_additionalSenderMessages_date_keyboardLanguageID_keyboardLanguageLastChangedDate_recipients_includeDynamicSuggestions_completion___pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

- (id)fullNonEditableSuggestionsListForMessage:(id)message context:(id)context additionalSenderMessages:(id)messages date:(id)date keyboardLanguageID:(id)d keyboardLanguageLastChangedDate:(id)changedDate recipients:(id)recipients includeDynamicSuggestions:(BOOL)self0
{
  recipientsCopy = recipients;
  changedDateCopy = changedDate;
  dCopy = d;
  dateCopy = date;
  messagesCopy = messages;
  contextCopy = context;
  messageCopy = message;
  v23 = pre_signpost_handle();
  ptr = 7;
  v24 = os_signpost_id_make_with_pointer(v23, &ptr);

  v25 = pre_signpost_handle();
  v26 = v25;
  spid = v24;
  v27 = v24 - 1;
  if (v27 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_260CE3000, v26, OS_SIGNPOST_INTERVAL_BEGIN, spid, "PRE-SyncFullNonEditableSuggestions", "Start", buf, 2u);
  }

  LOBYTE(v32) = suggestions;
  v28 = [(PREResponsesExperiment *)self nonEditableSuggestionsForMessage:messageCopy messageDate:dateCopy senderID:contextCopy recipients:recipientsCopy outgoingMessageHistory:messagesCopy keyboardLanguageID:dCopy keyboardLanguageLastChangedDate:changedDateCopy includeDynamicSuggestions:v32];

  v29 = pre_signpost_handle();
  v30 = v29;
  if (v27 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
  {
    *v35 = 0;
    _os_signpost_emit_with_name_impl(&dword_260CE3000, v30, OS_SIGNPOST_INTERVAL_END, spid, "PRE-SyncFullNonEditableSuggestions", "Completed", v35, 2u);
  }

  return v28;
}

- (id)responsesForMessage:(id)message maximumResponses:(unint64_t)responses forConversationHistory:(id)history forContext:(id)context time:(id)time withLanguage:(id)language recipients:(id)recipients options:(unint64_t)self0
{
  languageCopy = language;
  timeCopy = time;
  contextCopy = context;
  historyCopy = history;
  messageCopy = message;
  v21 = [(PREResponsesExperiment *)self handlesFromRecipients:recipients];
  v22 = [(PREResponsesExperiment *)self responsesForMessage:messageCopy maximumResponses:responses forConversationHistory:historyCopy forContext:contextCopy time:timeCopy withLanguage:languageCopy recipientHandles:v21 options:options];

  return v22;
}

- (void)suggestionsForRequest:(id)request withCompletion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v8 = pre_signpost_handle();
  ptr = 7;
  v9 = os_signpost_id_make_with_pointer(v8, &ptr);

  v32 = v9;
  v10 = pre_signpost_handle();
  v11 = v10;
  v12 = v30[3];
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_260CE3000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v12, "PRE-AsyncFullNonEditableSuggestions", "Start", &buf, 2u);
  }

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __63__PREResponsesExperiment_suggestionsForRequest_withCompletion___block_invoke;
  v25[3] = &unk_279ABB0F0;
  v26 = completionCopy;
  v27 = &v29;
  v13 = completionCopy;
  v14 = MEMORY[0x2666ECBF0](v25);
  if (suggestionsForRequest_withCompletion___pasOnceToken823 != -1)
  {
    dispatch_once(&suggestionsForRequest_withCompletion___pasOnceToken823, &__block_literal_global_285);
  }

  v15 = suggestionsForRequest_withCompletion___pasExprOnceResult;
  objc_initWeak(&buf, self);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __63__PREResponsesExperiment_suggestionsForRequest_withCompletion___block_invoke_2;
  v19[3] = &unk_279ABB140;
  objc_copyWeak(&v23, &buf);
  selfCopy = self;
  v22 = v14;
  v20 = requestCopy;
  v16 = requestCopy;
  v17 = v14;
  v18 = dispatch_block_create(0, v19);
  dispatch_async(v15, v18);

  objc_destroyWeak(&v23);
  objc_destroyWeak(&buf);

  _Block_object_dispose(&v29, 8);
}

void __63__PREResponsesExperiment_suggestionsForRequest_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = pre_signpost_handle();
  v5 = v4;
  v6 = *(*(*(a1 + 40) + 8) + 24);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_260CE3000, v5, OS_SIGNPOST_INTERVAL_END, v6, "PRE-AsyncFullNonEditableSuggestions", "Completed", v7, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void __63__PREResponsesExperiment_suggestionsForRequest_withCompletion___block_invoke_2(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  if (!WeakRetained)
  {
    v3 = a1[6];
    v4 = [[PREResponsesExperimentSuggestionsResponse alloc] initWithSuggestions:0];
    v3[2](v3, v4);
  }

  v5 = [a1[4] includesDynamicSuggestions];
  if ((v5 & 1) == 0 && ([WeakRetained includeCannedResponses] & 1) == 0)
  {
    v42 = a1[6];
    v43 = [[PREResponsesExperimentSuggestionsResponse alloc] initWithSuggestions:0];
    v42[2](v42, v43);

    goto LABEL_16;
  }

  v46 = v5;
  v6 = a1[5];
  v7 = objc_opt_class();
  v8 = [a1[4] receivedMessages];
  [v7 _rawStringsForMessages:v8 excludingTapBacks:1];
  v10 = v9 = WeakRetained;

  v11 = a1[5];
  v12 = objc_opt_class();
  v13 = [a1[4] senderMessages];
  v14 = [v12 _rawStringsForMessages:v13 excludingTapBacks:1];

  v15 = [a1[4] receivedMessages];
  v16 = [v15 firstObject];
  v17 = [v16 senderIdentifier];

  v18 = +[PRELocaleDetection sharedInstance];
  v19 = [a1[4] languageCode];
  v20 = [a1[4] languageLastChangedDate];
  v21 = v10;
  v48 = v17;
  v49 = v14;
  v22 = v14;
  v23 = v10;
  WeakRetained = v9;
  v24 = [v18 localeForIncomingMessages:v21 outgoingMessages:v22 defaultLocale:v19 defaultLocaleLastChangedDate:v20 sender:v17];

  v25 = v9[9];
  v26 = [v23 componentsJoinedByString:@"\n"];
  v27 = [PRELocaleDetection languageTagForLocaleIdentifier:v24];
  LODWORD(v25) = [v25 checkForExemptContentInText:v26 languageCode:v27];

  if (v25)
  {
    v28 = pre_responses_handle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_260CE3000, v28, OS_LOG_TYPE_DEFAULT, "PREResponsesExperiment received messages contain exempt content", buf, 2u);
    }
  }

  else if (v46)
  {
    v29 = [v9[5] BOOLForKey:9];
    v30 = 384;
    if (v29)
    {
      v30 = 256;
    }

    v47 = v30;
    v31 = [PREResponsesExperiment _getConversationHistoryFromRequest:a1[4]];
    v32 = [v31 lastObject];
    v33 = [v32 text];

    v34 = a1[5];
    v35 = [a1[4] recipients];
    v45 = [v34 handlesFromRecipients:v35];

    objc_initWeak(buf, a1[5]);
    v44 = a1[5];
    v36 = [a1[4] requestDate];
    v37 = [a1[4] languageCode];
    v38 = [a1[4] languageLastChangedDate];
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __63__PREResponsesExperiment_suggestionsForRequest_withCompletion___block_invoke_288;
    v50[3] = &unk_279ABB118;
    objc_copyWeak(&v53, buf);
    v39 = a1[6];
    v51 = MEMORY[0x277CBEBF8];
    v52 = v39;
    v40 = v49;
    [v44 _responsesForMessage:v33 maximumResponses:4 outgoingMessageHistory:v49 forConversationHistory:v31 forContext:0 time:v36 withLanguage:v37 languageLastChangedDate:v38 recipientHandles:v45 options:v47 preferredLocale:v24 completionBlock:v50];

    objc_destroyWeak(&v53);
    objc_destroyWeak(buf);

    goto LABEL_14;
  }

  v31 = [PREResponsesExperiment _suggestionsWithDynamicResponseItems:0 cannedResponseItems:MEMORY[0x277CBEBF8] inputPreferences:WeakRetained[5]];
  v41 = a1[6];
  v33 = [[PREResponsesExperimentSuggestionsResponse alloc] initWithSuggestions:v31];
  v41[2](v41, v33);
  v40 = v49;
LABEL_14:

LABEL_16:
}

void __63__PREResponsesExperiment_suggestionsForRequest_withCompletion___block_invoke_288(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = [PREResponsesExperiment _suggestionsWithDynamicResponseItems:v8 cannedResponseItems:*(a1 + 32) inputPreferences:WeakRetained[5]];
    v5 = *(a1 + 40);
    v6 = [[PREResponsesExperimentSuggestionsResponse alloc] initWithSuggestions:v4];
    (*(v5 + 16))(v5, v6);
  }

  else
  {
    v7 = *(a1 + 40);
    v4 = [[PREResponsesExperimentSuggestionsResponse alloc] initWithSuggestions:0];
    (*(v7 + 16))(v7, v4);
  }
}

void __63__PREResponsesExperiment_suggestionsForRequest_withCompletion___block_invoke_283()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"PRE-asyncFullNonEditableSuggestionsQueue"];
  v2 = suggestionsForRequest_withCompletion___pasExprOnceResult;
  suggestionsForRequest_withCompletion___pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

- (id)suggestionsForRequest:(id)request
{
  requestCopy = request;
  v5 = pre_signpost_handle();
  ptr = 7;
  v6 = os_signpost_id_make_with_pointer(v5, &ptr);

  v7 = pre_signpost_handle();
  v8 = v7;
  spid = v6;
  v9 = v6 - 1;
  if (v9 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_260CE3000, v8, OS_SIGNPOST_INTERVAL_BEGIN, spid, "PRE-SyncFullNonEditableSuggestions", "Start", buf, 2u);
  }

  includesDynamicSuggestions = [requestCopy includesDynamicSuggestions];
  if (([requestCopy includesDynamicSuggestions] & 1) != 0 || -[PREResponsesExperiment includeCannedResponses](self, "includeCannedResponses"))
  {
    v50 = v9;
    v11 = objc_opt_class();
    receivedMessages = [requestCopy receivedMessages];
    v13 = [v11 _rawStringsForMessages:receivedMessages excludingTapBacks:1];

    v14 = objc_opt_class();
    senderMessages = [requestCopy senderMessages];
    v16 = [v14 _rawStringsForMessages:senderMessages excludingTapBacks:1];

    receivedMessages2 = [requestCopy receivedMessages];
    firstObject = [receivedMessages2 firstObject];
    senderIdentifier = [firstObject senderIdentifier];

    v20 = +[PRELocaleDetection sharedInstance];
    languageCode = [requestCopy languageCode];
    languageLastChangedDate = [requestCopy languageLastChangedDate];
    v52 = v16;
    v49 = senderIdentifier;
    v23 = [v20 localeForIncomingMessages:v13 outgoingMessages:v16 defaultLocale:languageCode defaultLocaleLastChangedDate:languageLastChangedDate sender:senderIdentifier];

    exemptTermsDetector = self->_exemptTermsDetector;
    v25 = [v13 componentsJoinedByString:@"\n"];
    v26 = [PRELocaleDetection languageTagForLocaleIdentifier:v23];
    LODWORD(exemptTermsDetector) = [(PREPredictionExemptTermsDetector *)exemptTermsDetector checkForExemptContentInText:v25 languageCode:v26];

    if (exemptTermsDetector)
    {
      v27 = pre_responses_handle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *v54 = 0;
        _os_log_impl(&dword_260CE3000, v27, OS_LOG_TYPE_DEFAULT, "PREResponsesExperiment received messages contain exempt content", v54, 2u);
      }

      includesDynamicSuggestions = 0;
    }

    if (-[PREResponsesExperiment includeCannedResponses](self, "includeCannedResponses") && [objc_opt_class() _isPreferredLocaleValid:v23])
    {
      v28 = [MEMORY[0x277D3A248] languageForLocaleIdentifier:v23];
      v29 = [PREResponsesExperiment _cannedRepliesForLanguage:v28 inputPreferences:self->_tiPreferencesController];
    }

    else
    {
      v29 = MEMORY[0x277CBEBF8];
    }

    v51 = v23;
    if (includesDynamicSuggestions)
    {
      v30 = [(TIPreferencesController *)self->_tiPreferencesController BOOLForKey:9];
      v31 = 384;
      if (v30)
      {
        v31 = 256;
      }

      v46 = v31;
      [PREResponsesExperiment _getConversationHistoryFromRequest:requestCopy];
      v32 = v47 = v13;
      lastObject = [v32 lastObject];
      text = [lastObject text];

      recipients = [requestCopy recipients];
      v36 = [(PREResponsesExperiment *)self handlesFromRecipients:recipients];

      requestDate = [requestCopy requestDate];
      languageCode2 = [requestCopy languageCode];
      languageLastChangedDate2 = [requestCopy languageLastChangedDate];
      v40 = [(PREResponsesExperiment *)self _responsesForMessage:text maximumResponses:4 outgoingMessageHistory:v52 forConversationHistory:v32 forContext:0 time:requestDate withLanguage:languageCode2 languageLastChangedDate:languageLastChangedDate2 recipientHandles:v36 options:v46 preferredLocale:v51];

      v13 = v47;
    }

    else
    {
      v40 = 0;
    }

    v41 = pre_signpost_handle();
    v42 = v41;
    if (v50 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
    {
      *v53 = 0;
      _os_signpost_emit_with_name_impl(&dword_260CE3000, v42, OS_SIGNPOST_INTERVAL_END, spid, "PRE-SyncFullNonEditableSuggestions", "Completed", v53, 2u);
    }

    v43 = [PREResponsesExperiment _suggestionsWithDynamicResponseItems:v40 cannedResponseItems:v29 inputPreferences:self->_tiPreferencesController];
    v44 = [[PREResponsesExperimentSuggestionsResponse alloc] initWithSuggestions:v43];
  }

  else
  {
    v44 = 0;
  }

  return v44;
}

- (id)activeExperimentNameForLanguage:(id)language
{
  v34 = *MEMORY[0x277D85DE8];
  languageCopy = language;
  v5 = pre_signpost_handle();
  ptr = 7;
  v6 = os_signpost_id_make_with_pointer(v5, &ptr);

  v7 = pre_signpost_handle();
  v8 = v7;
  v9 = v6 - 1;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_260CE3000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "PRE-ReadExperimentNameDefaults", "Start", buf, 2u);
  }

  mode = [(PREResponsesExperiment *)self mode];
  if (mode == 2)
  {
    v14 = [(NSUserDefaults *)self->_defaults stringForKey:@"experimentModelUserLabel"];
    v17 = pre_responses_handle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v33 = v14;
      _os_log_impl(&dword_260CE3000, v17, OS_LOG_TYPE_DEFAULT, "PREResponsesExperiment activeExperimentName from defaults (user-specified model): %@", buf, 0xCu);
    }

    v18 = pre_signpost_handle();
    v13 = v18;
    if (v9 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_260CE3000, v13, OS_SIGNPOST_INTERVAL_END, v6, "PRE-ReadExperimentNameDefaults", "Completed", buf, 2u);
    }
  }

  else if (mode == 1)
  {
    v15 = pre_responses_handle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v33 = @"QR_CHUNK_PLIST_BUNDLED_ON_DEVICE";
      _os_log_impl(&dword_260CE3000, v15, OS_LOG_TYPE_DEFAULT, "PREResponsesExperiment activeExperimentName from defaults (bundled in build): %@", buf, 0xCu);
    }

    v16 = pre_signpost_handle();
    v13 = v16;
    if (v9 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_260CE3000, v13, OS_SIGNPOST_INTERVAL_END, v6, "PRE-ReadExperimentNameDefaults", "Completed", buf, 2u);
    }

    v14 = @"QR_CHUNK_PLIST_BUNDLED_ON_DEVICE";
  }

  else if (mode)
  {
    v19 = pre_signpost_handle();
    v30 = 7;
    v20 = os_signpost_id_make_with_pointer(v19, &v30);

    v21 = pre_signpost_handle();
    v22 = v21;
    if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_260CE3000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v20, "PRE-ReadTrialExperimentNameFactor", "Start", buf, 2u);
    }

    v13 = [(PREExperimentResolverProtocol *)self->_experimentResolver getResponseSuggestionsExperimentConfig:languageCopy shouldDownloadAssets:0];
    treatmentName = [v13 treatmentName];
    v24 = pre_responses_handle();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
    if (treatmentName)
    {
      if (v25)
      {
        *buf = 138412290;
        v33 = treatmentName;
        _os_log_impl(&dword_260CE3000, v24, OS_LOG_TYPE_DEFAULT, "PREResponsesExperiment activeExperimentName from Trial: %@", buf, 0xCu);
      }

      v26 = pre_signpost_handle();
      v27 = v26;
      if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_260CE3000, v27, OS_SIGNPOST_INTERVAL_END, v20, "PRE-ReadTrialExperimentNameFactor", "Completed", buf, 2u);
      }

      v14 = treatmentName;
    }

    else
    {
      if (v25)
      {
        *buf = 138412290;
        v33 = @"DEFAULT_RESPONSE_KIT";
        _os_log_impl(&dword_260CE3000, v24, OS_LOG_TYPE_DEFAULT, "PREResponsesExperiment activeExperimentName got nothing from defaults or trials, returning fallback: %@", buf, 0xCu);
      }

      v14 = @"DEFAULT_RESPONSE_KIT";
    }
  }

  else
  {
    v11 = pre_responses_handle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v33 = @"DEFAULT_RESPONSE_KIT";
      _os_log_impl(&dword_260CE3000, v11, OS_LOG_TYPE_DEFAULT, "PREResponsesExperiment activeExperimentName from defaults (response kit): %@", buf, 0xCu);
    }

    v12 = pre_signpost_handle();
    v13 = v12;
    if (v9 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_260CE3000, v13, OS_SIGNPOST_INTERVAL_END, v6, "PRE-ReadExperimentNameDefaults", "Completed", buf, 2u);
    }

    v14 = @"DEFAULT_RESPONSE_KIT";
  }

  v28 = *MEMORY[0x277D85DE8];

  return v14;
}

- (unint64_t)mode
{
  v2 = [(NSUserDefaults *)self->_defaults objectForKey:@"experimentModelName"];
  if ([v2 isEqualToString:@"DEFAULT_RESPONSE_KIT"])
  {
    v3 = 0;
  }

  else if ([v2 isEqualToString:@"QR_CHUNK_PLIST_BUNDLED_ON_DEVICE"])
  {
    v3 = 1;
  }

  else if ([v2 isEqualToString:@"USER_SPECIFIED_MODEL"])
  {
    v3 = 2;
  }

  else
  {
    v3 = 3;
  }

  return v3;
}

- (id)cacheKeyForMessage:(id)message maxResponses:(unint64_t)responses time:(id)time language:(id)language
{
  messageCopy = message;
  timeCopy = time;
  languageCopy = language;
  if (languageCopy)
  {
    v12 = languageCopy;
    v13 = [MEMORY[0x277D3A248] languageForLocaleIdentifier:languageCopy];
  }

  else
  {
    v13 = 0;
  }

  if (timeCopy)
  {
    v14 = objc_alloc(MEMORY[0x277CCACA8]);
    [timeCopy timeIntervalSinceReferenceDate];
    v16 = [v14 initWithFormat:@"%.02f", v15];
  }

  else
  {
    v16 = @"0";
  }

  v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@-%tu-%@-%@", messageCopy, responses, v13, v16];

  return v17;
}

- (id)clippedMessageIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  v4 = pre_signpost_handle();
  ptr = 7;
  v5 = os_signpost_id_make_with_pointer(v4, &ptr);

  v6 = pre_signpost_handle();
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_260CE3000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PRE-ClipMessage", "Start", buf, 2u);
  }

  if ([necessaryCopy length] >= 0x231)
  {
    v8 = objc_alloc(MEMORY[0x277CCACA8]);
    v9 = [necessaryCopy substringToIndex:280];
    v10 = [necessaryCopy substringFromIndex:{objc_msgSend(necessaryCopy, "length") - 280}];
    v11 = [v8 initWithFormat:@"%@%@", v9, v10];

    necessaryCopy = v11;
  }

  v12 = pre_signpost_handle();
  v13 = v12;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *v15 = 0;
    _os_signpost_emit_with_name_impl(&dword_260CE3000, v13, OS_SIGNPOST_INTERVAL_END, v5, "PRE-ClipMessage", "Completed", v15, 2u);
  }

  return necessaryCopy;
}

- (void)setCachedResponsesGeneratedEvent:(id)event
{
  eventCopy = event;
  guardedCachedResponsesGeneratedEvent = self->_guardedCachedResponsesGeneratedEvent;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__PREResponsesExperiment_setCachedResponsesGeneratedEvent___block_invoke;
  v7[3] = &unk_279ABB0C8;
  v8 = eventCopy;
  v6 = eventCopy;
  [(_PASLock *)guardedCachedResponsesGeneratedEvent runWithLockAcquired:v7];
}

- (id)cachedResponsesGeneratedEvent
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1867;
  v10 = __Block_byref_object_dispose__1868;
  v11 = 0;
  guardedCachedResponsesGeneratedEvent = self->_guardedCachedResponsesGeneratedEvent;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__PREResponsesExperiment_cachedResponsesGeneratedEvent__block_invoke;
  v5[3] = &unk_279ABB0A0;
  v5[4] = &v6;
  [(_PASLock *)guardedCachedResponsesGeneratedEvent runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __55__PREResponsesExperiment_cachedResponsesGeneratedEvent__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 event];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

- (PREResponsesExperiment)init
{
  v3 = +[PREExperimentResolver sharedInstance];
  v4 = objc_opt_new();
  v5 = +[PREResponsesClient sharedInstance];
  mEMORY[0x277D46BD8] = [MEMORY[0x277D46BD8] sharedManager];
  mEMORY[0x277D6F470] = [MEMORY[0x277D6F470] sharedPreferencesController];
  v8 = [(PREResponsesExperiment *)self initWithExperimentResolver:v3 metricsClient:v4 xpcClient:v5 rkClient:mEMORY[0x277D46BD8] tiPreferencesController:mEMORY[0x277D6F470]];

  return v8;
}

- (PREResponsesExperiment)initWithExperimentResolver:(id)resolver metricsClient:(id)client xpcClient:(id)xpcClient rkClient:(id)rkClient tiPreferencesController:(id)controller
{
  resolverCopy = resolver;
  clientCopy = client;
  xpcClientCopy = xpcClient;
  rkClientCopy = rkClient;
  controllerCopy = controller;
  v33.receiver = self;
  v33.super_class = PREResponsesExperiment;
  v17 = [(PREResponsesExperiment *)&v33 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_experimentResolver, resolver);
    objc_storeStrong(&v18->_metrics, client);
    objc_storeStrong(&v18->_xpcClient, xpcClient);
    objc_storeStrong(&v18->_rkClient, rkClient);
    objc_storeStrong(&v18->_tiPreferencesController, controller);
    v19 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.proactive.experiments.responses"];
    defaults = v18->_defaults;
    v18->_defaults = v19;

    v21 = [objc_alloc(MEMORY[0x277D425D0]) initWithCountLimit:50];
    responsesGeneratedCache = v18->_responsesGeneratedCache;
    v18->_responsesGeneratedCache = v21;

    v23 = objc_alloc(MEMORY[0x277D425F8]);
    v24 = objc_opt_new();
    v25 = [v23 initWithGuardedData:v24];
    guardedCachedResponsesGeneratedEvent = v18->_guardedCachedResponsesGeneratedEvent;
    v18->_guardedCachedResponsesGeneratedEvent = v25;

    v18->_useResponseKitAsFallback = 1;
    *&v18->_registerDisplayed = 16843009;
    v27 = objc_opt_new();
    exemptTermsDetector = v18->_exemptTermsDetector;
    v18->_exemptTermsDetector = v27;

    v29 = pre_responses_handle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_260CE3000, v29, OS_LOG_TYPE_DEFAULT, "PREResponsesExperiment init", buf, 2u);
    }
  }

  return v18;
}

+ (BOOL)_isStringEmpty:(id)empty
{
  emptyCopy = empty;
  if (emptyCopy)
  {
    null = [MEMORY[0x277CBEB68] null];
    if ([emptyCopy isEqual:null])
    {
      v5 = 1;
    }

    else
    {
      v5 = [emptyCopy isEqualToString:&stru_28733D8C0];
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

+ (int)_preInputMethodFrom:(id)from
{
  unsignedIntegerValue = [from unsignedIntegerValue];
  if (unsignedIntegerValue == 1)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  if (unsignedIntegerValue == 2)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

+ (id)_inputMethodStringFrom:(int)from
{
  if (from > 5)
  {
    return @"canned";
  }

  else
  {
    return off_279ABB400[from];
  }
}

+ (id)_suggestionsWithDynamicResponseItems:(id)items cannedResponseItems:(id)responseItems inputPreferences:(id)preferences
{
  v63 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  responseItemsCopy = responseItems;
  preferencesCopy = preferences;
  v10 = objc_opt_new();
  v11 = objc_opt_class();
  if (itemsCopy)
  {
    obj = [v11 stringArrayFromPreResponseItems:responseItemsCopy];
    v12 = [obj indexOfObject:@"SMART_REPLIES_MARKER"];
    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = 0;
    }

    else
    {
      v13 = v12;
    }

    v42 = v13;
    v45 = responseItemsCopy;
    v43 = [PREResponsesExperiment _suggestionsWithDynamicResponseItems:0 cannedResponseItems:responseItemsCopy inputPreferences:preferencesCopy];
    v44 = preferencesCopy;
    v14 = [objc_opt_class() _getFormattedPREResponseItems:itemsCopy inputPreferences:preferencesCopy];
    v15 = objc_opt_new();
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v16 = v14;
    v17 = [v16 countByEnumeratingWithState:&v52 objects:v61 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v53;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v53 != v19)
          {
            objc_enumerationMutation(v16);
          }

          replyText = [*(*(&v52 + 1) + 8 * i) replyText];
          v22 = objc_opt_new();
          v23 = [replyText copy];
          [v22 setTitle:v23];

          [v22 setDynamicReply:1];
          [v15 addObject:v22];
        }

        v18 = [v16 countByEnumeratingWithState:&v52 objects:v61 count:16];
      }

      while (v18);
    }

    v24 = v43;
    [v10 addObjectsFromArray:v43];
    if ([v15 count])
    {
      v25 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{v42, objc_msgSend(v15, "count")}];
      [v10 insertObjects:v15 atIndexes:v25];

      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v26 = v43;
      v27 = [v26 countByEnumeratingWithState:&v48 objects:v60 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v49;
        do
        {
          for (j = 0; j != v28; ++j)
          {
            if (*v49 != v29)
            {
              objc_enumerationMutation(v26);
            }

            v31 = *(*(&v48 + 1) + 8 * j);
            if (![PREResponsesExperiment _shouldInsertSuggestion:v31 forExistingSuggestions:v15])
            {
              v47[0] = MEMORY[0x277D85DD0];
              v47[1] = 3221225472;
              v47[2] = __100__PREResponsesExperiment__suggestionsWithDynamicResponseItems_cannedResponseItems_inputPreferences___block_invoke;
              v47[3] = &unk_279ABB388;
              v47[4] = v31;
              v32 = [v10 indexOfObjectWithOptions:2 passingTest:v47];
              if (v32 != 0x7FFFFFFFFFFFFFFFLL)
              {
                [v10 removeObjectAtIndex:v32];
              }
            }
          }

          v28 = [v26 countByEnumeratingWithState:&v48 objects:v60 count:16];
        }

        while (v28);
      }

      v24 = v43;
    }
  }

  else
  {
    [v11 _getFormattedPREResponseItems:responseItemsCopy inputPreferences:preferencesCopy];
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    obj = v59 = 0u;
    v33 = [obj countByEnumeratingWithState:&v56 objects:v62 count:16];
    if (!v33)
    {
      goto LABEL_35;
    }

    v34 = v33;
    v44 = preferencesCopy;
    v45 = responseItemsCopy;
    v35 = *v57;
    do
    {
      for (k = 0; k != v34; ++k)
      {
        if (*v57 != v35)
        {
          objc_enumerationMutation(obj);
        }

        replyText2 = [*(*(&v56 + 1) + 8 * k) replyText];
        if (([replyText2 isEqualToString:@"SMART_REPLIES_MARKER"] & 1) == 0)
        {
          v38 = objc_opt_new();
          v39 = [replyText2 copy];
          [v38 setTitle:v39];

          [v10 addObject:v38];
        }
      }

      v34 = [obj countByEnumeratingWithState:&v56 objects:v62 count:16];
    }

    while (v34);
  }

  preferencesCopy = v44;
  responseItemsCopy = v45;
LABEL_35:

  v40 = *MEMORY[0x277D85DE8];

  return v10;
}

uint64_t __100__PREResponsesExperiment__suggestionsWithDynamicResponseItems_cannedResponseItems_inputPreferences___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 title];
  v5 = [v3 title];

  v6 = [v4 isEqualToString:v5];
  return v6;
}

+ (BOOL)_shouldInsertSuggestion:(id)suggestion forExistingSuggestions:(id)suggestions
{
  v24 = *MEMORY[0x277D85DE8];
  suggestionsCopy = suggestions;
  title = [suggestion title];
  localizedLowercaseString = [title localizedLowercaseString];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = suggestionsCopy;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        title2 = [*(*(&v19 + 1) + 8 * i) title];
        localizedLowercaseString2 = [title2 localizedLowercaseString];
        v15 = [localizedLowercaseString2 isEqualToString:localizedLowercaseString];

        if (v15)
        {
          v16 = 0;
          goto LABEL_11;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v16 = 1;
LABEL_11:

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

+ (id)_cannedRepliesForLanguage:(id)language inputPreferences:(id)preferences
{
  v22 = *MEMORY[0x277D85DE8];
  languageCopy = language;
  preferencesCopy = preferences;
  if (_cannedRepliesForLanguage_inputPreferences__onceToken != -1)
  {
    dispatch_once(&_cannedRepliesForLanguage_inputPreferences__onceToken, &__block_literal_global_342);
  }

  v7 = [_cannedRepliesForLanguage_inputPreferences__store repliesForLanguage:languageCopy];
  v8 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [[PREResponseItem alloc] initWithCategoryId:0 modelId:0 responseClassId:0 replySubgroupId:0 replyTextId:0 replyText:*(*(&v17 + 1) + 8 * i) language:languageCopy isCustomResponse:0 isRobotResponse:0];
        [v8 addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v8;
}

void __69__PREResponsesExperiment__cannedRepliesForLanguage_inputPreferences___block_invoke()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2050000000;
  v0 = getWRCannedRepliesStoreClass_softClass;
  v8 = getWRCannedRepliesStoreClass_softClass;
  if (!getWRCannedRepliesStoreClass_softClass)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __getWRCannedRepliesStoreClass_block_invoke;
    v4[3] = &unk_279ABB3B0;
    v4[4] = &v5;
    __getWRCannedRepliesStoreClass_block_invoke(v4);
    v0 = v6[3];
  }

  v1 = v0;
  _Block_object_dispose(&v5, 8);
  v2 = [[v0 alloc] initWithCategory:1];
  v3 = _cannedRepliesForLanguage_inputPreferences__store;
  _cannedRepliesForLanguage_inputPreferences__store = v2;
}

+ (id)stringArrayFromPreResponseItems:(id)items
{
  v29 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(itemsCopy, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = itemsCopy;
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      v9 = 0;
      do
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v20 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v4 addObject:v10];
          replyText2 = pre_responses_handle();
          if (os_log_type_enabled(replyText2, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            v12 = replyText2;
            v13 = "PREResponsesExperiment unexpectedly received NSString when expecting PREResponseItem";
            v14 = 2;
LABEL_17:
            _os_log_fault_impl(&dword_260CE3000, v12, OS_LOG_TYPE_FAULT, v13, buf, v14);
          }
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            replyText = [v10 replyText];

            if (!replyText)
            {
              goto LABEL_14;
            }

            replyText2 = [v10 replyText];
            [v4 addObject:replyText2];
          }

          else
          {
            replyText2 = pre_responses_handle();
            if (os_log_type_enabled(replyText2, OS_LOG_TYPE_FAULT))
            {
              v16 = objc_opt_class();
              *buf = 138543619;
              v25 = v16;
              v26 = 2117;
              v27 = v10;
              v12 = replyText2;
              v13 = "PREResponsesExperiment unexpectedly received unknown object %{public}@ (%{sensitive}@) when expecting PREResponseItem";
              v14 = 22;
              goto LABEL_17;
            }
          }
        }

LABEL_14:
        ++v9;
      }

      while (v7 != v9);
      v17 = [v5 countByEnumeratingWithState:&v20 objects:v28 count:16];
      v7 = v17;
    }

    while (v17);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)_getFormattedPREResponseItems:(id)items inputPreferences:(id)preferences
{
  itemsCopy = items;
  preferencesCopy = preferences;
  v7 = preferencesCopy;
  if (itemsCopy)
  {
    if ([preferencesCopy BOOLForKey:9])
    {
      v8 = itemsCopy;
    }

    else
    {
      v8 = [itemsCopy _pas_mappedArrayWithTransform:&__block_literal_global_319];
    }

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

PREResponseItem *__73__PREResponsesExperiment__getFormattedPREResponseItems_inputPreferences___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 replyText];
  v4 = [v3 isEqualToString:@"SMART_REPLIES_MARKER"];

  if (v4)
  {
    goto LABEL_4;
  }

  v5 = [v2 isCustomResponse];
  v6 = [v5 BOOLValue];

  if (v6 || ([v2 isRobotResponse], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "BOOLValue"), v7, v8))
  {
LABEL_4:
    v9 = v2;
  }

  else
  {
    v21 = [PREResponseItem alloc];
    v19 = [v2 categoryId];
    v11 = [v2 modelId];
    v12 = [v2 responseClassId];
    v13 = [v2 replySubgroupId];
    v14 = [v2 replyTextId];
    v20 = [v2 replyText];
    v15 = [v20 localizedLowercaseString];
    v16 = [v2 language];
    v17 = [v2 isCustomResponse];
    v18 = [v2 isRobotResponse];
    v9 = [(PREResponseItem *)v21 initWithCategoryId:v19 modelId:v11 responseClassId:v12 replySubgroupId:v13 replyTextId:v14 replyText:v15 language:v16 isCustomResponse:v17 isRobotResponse:v18];
  }

  return v9;
}

+ (id)_getConversationHistoryFromRequest:(id)request
{
  v60[1] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v4 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"dateSent" ascending:1];
  receivedMessages = [requestCopy receivedMessages];
  v46 = v4;
  v60[0] = v4;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:1];
  v7 = [receivedMessages sortedArrayUsingDescriptors:v6];

  v47 = requestCopy;
  senderMessages = [requestCopy senderMessages];
  v9 = objc_opt_new();
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v53 objects:v59 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v54;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v54 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v53 + 1) + 8 * i);
        if (([v15 isTapBack] & 1) == 0 && (objc_msgSend(v15, "isEmote") & 1) == 0)
        {
          title = [v15 title];
          v17 = title;
          v18 = &stru_28733D8C0;
          if (title)
          {
            v18 = title;
          }

          v19 = v18;

          v20 = objc_alloc(MEMORY[0x277D01F70]);
          senderIdentifier = [v15 senderIdentifier];
          dateSent = [v15 dateSent];
          v23 = [v20 initWithText:v19 senderID:senderIdentifier timestamp:dateSent];

          [v9 addObject:v23];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v53 objects:v59 count:16];
    }

    while (v12);
  }

  v48 = v9;
  lastObject = [v9 lastObject];
  timestamp = [lastObject timestamp];

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v26 = senderMessages;
  v27 = [v26 countByEnumeratingWithState:&v49 objects:v58 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v50;
    do
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v50 != v29)
        {
          objc_enumerationMutation(v26);
        }

        if (timestamp)
        {
          v31 = *(*(&v49 + 1) + 8 * j);
          dateSent2 = [v31 dateSent];
          v33 = [dateSent2 laterDate:timestamp];

          if (!v33 && ([v31 isTapBack] & 1) == 0 && (objc_msgSend(v31, "isEmote") & 1) == 0)
          {
            title2 = [v31 title];
            v35 = title2;
            v36 = &stru_28733D8C0;
            if (title2)
            {
              v36 = title2;
            }

            v37 = v36;

            v38 = objc_alloc(MEMORY[0x277D01F70]);
            senderIdentifier2 = [v31 senderIdentifier];
            dateSent3 = [v31 dateSent];
            v41 = [v38 initWithText:v37 senderID:senderIdentifier2 timestamp:dateSent3];

            [v48 addObject:v41];
          }
        }
      }

      v28 = [v26 countByEnumeratingWithState:&v49 objects:v58 count:16];
    }

    while (v28);
  }

  v42 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"timestamp" ascending:1];
  v57 = v42;
  v43 = [MEMORY[0x277CBEA60] arrayWithObjects:&v57 count:1];
  [v48 sortUsingDescriptors:v43];

  v44 = *MEMORY[0x277D85DE8];

  return v48;
}

+ (id)_rawStringsForMessages:(id)messages excludingTapBacks:(BOOL)backs
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__PREResponsesExperiment__rawStringsForMessages_excludingTapBacks___block_invoke;
  v6[3] = &__block_descriptor_33_e49___NSString_16__0__PREResponsesExperimentMessage_8l;
  backsCopy = backs;
  v4 = [messages _pas_mappedArrayWithTransform:v6];

  return v4;
}

id __67__PREResponsesExperiment__rawStringsForMessages_excludingTapBacks___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32) == 1 && ([v3 isTapBack] & 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [v4 title];
  }

  return v5;
}

+ (id)sharedManager
{
  if (sharedManager__pasOnceToken791 != -1)
  {
    dispatch_once(&sharedManager__pasOnceToken791, &__block_literal_global_1886);
  }

  v3 = sharedManager__pasExprOnceResult;

  return v3;
}

void __39__PREResponsesExperiment_sharedManager__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedManager__pasExprOnceResult;
  sharedManager__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

@end