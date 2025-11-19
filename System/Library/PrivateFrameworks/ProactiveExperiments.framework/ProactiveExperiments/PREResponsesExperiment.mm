@interface PREResponsesExperiment
+ (BOOL)_isStringEmpty:(id)a3;
+ (BOOL)_shouldInsertSuggestion:(id)a3 forExistingSuggestions:(id)a4;
+ (id)_cannedRepliesForLanguage:(id)a3 inputPreferences:(id)a4;
+ (id)_getConversationHistoryFromRequest:(id)a3;
+ (id)_getFormattedPREResponseItems:(id)a3 inputPreferences:(id)a4;
+ (id)_inputMethodStringFrom:(int)a3;
+ (id)_rawStringsForMessages:(id)a3 excludingTapBacks:(BOOL)a4;
+ (id)_suggestionsWithDynamicResponseItems:(id)a3 cannedResponseItems:(id)a4 inputPreferences:(id)a5;
+ (id)sharedManager;
+ (id)stringArrayFromPreResponseItems:(id)a3;
+ (int)_preInputMethodFrom:(id)a3;
- (BOOL)shouldUseDefaultRKTreatmentForLanguage:(id)a3;
- (PREResponsesExperiment)init;
- (PREResponsesExperiment)initWithExperimentResolver:(id)a3 metricsClient:(id)a4 xpcClient:(id)a5 rkClient:(id)a6 tiPreferencesController:(id)a7;
- (id)_responsesForMessage:(id)a3 maximumResponses:(unint64_t)a4 outgoingMessageHistory:(id)a5 forConversationHistory:(id)a6 forContext:(id)a7 time:(id)a8 withLanguage:(id)a9 languageLastChangedDate:(id)a10 recipientHandles:(id)a11 options:(unint64_t)a12 preferredLocale:(id)a13;
- (id)activeExperimentNameForLanguage:(id)a3;
- (id)cacheKeyForMessage:(id)a3 maxResponses:(unint64_t)a4 time:(id)a5 language:(id)a6;
- (id)cachedResponsesGeneratedEvent;
- (id)clippedMessageIfNecessary:(id)a3;
- (id)fullNonEditableSuggestionsListForMessage:(id)a3 context:(id)a4 additionalSenderMessages:(id)a5 date:(id)a6 keyboardLanguageID:(id)a7 keyboardLanguageLastChangedDate:(id)a8 recipients:(id)a9 includeDynamicSuggestions:(BOOL)a10;
- (id)handlesFromRecipients:(id)a3;
- (id)nonEditableSuggestionsForMessage:(id)a3 messageDate:(id)a4 senderID:(id)a5 recipientHandles:(id)a6 outgoingMessageHistory:(id)a7 keyboardLanguageID:(id)a8 keyboardLanguageLastChangedDate:(id)a9 includeDynamicSuggestions:(BOOL)a10;
- (id)nonEditableSuggestionsForMessage:(id)a3 messageDate:(id)a4 senderID:(id)a5 recipients:(id)a6 outgoingMessageHistory:(id)a7 keyboardLanguageID:(id)a8 keyboardLanguageLastChangedDate:(id)a9 includeDynamicSuggestions:(BOOL)a10;
- (id)responsesForMessage:(id)a3 maximumResponses:(unint64_t)a4 forConversationHistory:(id)a5 forContext:(id)a6 time:(id)a7 withLanguage:(id)a8 recipientHandles:(id)a9 options:(unint64_t)a10;
- (id)responsesForMessage:(id)a3 maximumResponses:(unint64_t)a4 forConversationHistory:(id)a5 forContext:(id)a6 time:(id)a7 withLanguage:(id)a8 recipients:(id)a9 options:(unint64_t)a10;
- (id)suggestionsForRequest:(id)a3;
- (id)waitForPreResponseItemsForMessage:(id)a3 maximumResponses:(unint64_t)a4 forConversationHistory:(id)a5 forContext:(id)a6 time:(id)a7 withLanguage:(id)a8 recipientHandles:(id)a9 options:(unint64_t)a10;
- (unint64_t)mode;
- (void)_responsesForMessage:(id)a3 maximumResponses:(unint64_t)a4 outgoingMessageHistory:(id)a5 forConversationHistory:(id)a6 forContext:(id)a7 time:(id)a8 withLanguage:(id)a9 languageLastChangedDate:(id)a10 recipientHandles:(id)a11 options:(unint64_t)a12 preferredLocale:(id)a13 completionBlock:(id)a14;
- (void)fullNonEditableSuggestionsListForMessage:(id)a3 context:(id)a4 additionalSenderMessages:(id)a5 date:(id)a6 keyboardLanguageID:(id)a7 keyboardLanguageLastChangedDate:(id)a8 recipients:(id)a9 includeDynamicSuggestions:(BOOL)a10 completion:(id)a11;
- (void)nonEditableSuggestionsForMessage:(id)a3 messageDate:(id)a4 senderID:(id)a5 recipientHandles:(id)a6 outgoingMessageHistory:(id)a7 keyboardLanguageID:(id)a8 keyboardLanguageLastChangedDate:(id)a9 includeDynamicSuggestions:(BOOL)a10 completion:(id)a11;
- (void)nonEditableSuggestionsForMessage:(id)a3 messageDate:(id)a4 senderID:(id)a5 recipients:(id)a6 outgoingMessageHistory:(id)a7 keyboardLanguageID:(id)a8 keyboardLanguageLastChangedDate:(id)a9 includeDynamicSuggestions:(BOOL)a10 completion:(id)a11;
- (void)performWithResolvedModelAssetPathsUsingLanguage:(id)a3 block:(id)a4;
- (void)preResponseItemsForMessage:(id)a3 maximumResponses:(unint64_t)a4 forConversationHistory:(id)a5 forContext:(id)a6 time:(id)a7 withLanguage:(id)a8 recipientHandles:(id)a9 options:(unint64_t)a10 completionBlock:(id)a11;
- (void)predictionsForRequest:(id)a3 heads:(id)a4 completion:(id)a5;
- (void)predictionsForRequest:(id)a3 plistPath:(id)a4 espressoBinPath:(id)a5 vocabPath:(id)a6 heads:(id)a7 completion:(id)a8;
- (void)primeResponsesExperimentsIfNeeded;
- (void)registerResponse:(id)a3 forMessage:(id)a4 time:(id)a5 metadata:(id)a6 withLanguage:(id)a7;
- (void)registerResponseDisplayedAtIndex:(id)a3;
- (void)responsesForMessage:(id)a3 maximumResponses:(unint64_t)a4 forConversationHistory:(id)a5 forContext:(id)a6 time:(id)a7 withLanguage:(id)a8 recipientHandles:(id)a9 options:(unint64_t)a10 completionBlock:(id)a11;
- (void)responsesForMessage:(id)a3 maximumResponses:(unint64_t)a4 forConversationHistory:(id)a5 forContext:(id)a6 time:(id)a7 withLanguage:(id)a8 recipients:(id)a9 options:(unint64_t)a10 completionBlock:(id)a11;
- (void)setCachedResponsesGeneratedEvent:(id)a3;
- (void)suggestionsForRequest:(id)a3 withCompletion:(id)a4;
@end

@implementation PREResponsesExperiment

- (BOOL)shouldUseDefaultRKTreatmentForLanguage:(id)a3
{
  v4 = a3;
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

  v9 = [(PREResponsesExperiment *)self activeExperimentNameForLanguage:v4];

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

- (id)handlesFromRecipients:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v3, "count")}];
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
  v7 = v3;
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
          v12 = [v11 rawAddress];

          if (!v12)
          {
            goto LABEL_14;
          }

          v13 = [v11 rawAddress];
          [v4 addObject:v13];
        }

        else
        {
          v13 = pre_responses_handle();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
          {
            v14 = objc_opt_class();
            *buf = 138543619;
            *&buf[4] = v14;
            *&buf[12] = 2117;
            *&buf[14] = v11;
            _os_log_fault_impl(&dword_260CE3000, v13, OS_LOG_TYPE_FAULT, "PREResponsesExperiment unexpectedly received unknown object %{public}@ (%{sensitive}@) when expecting CKEntity", buf, 0x16u);
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

- (id)waitForPreResponseItemsForMessage:(id)a3 maximumResponses:(unint64_t)a4 forConversationHistory:(id)a5 forContext:(id)a6 time:(id)a7 withLanguage:(id)a8 recipientHandles:(id)a9 options:(unint64_t)a10
{
  v15 = a3;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
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
  v23 = v15;
  [(PREResponsesExperiment *)self preResponseItemsForMessage:v15 maximumResponses:a4 forConversationHistory:v16 forContext:v17 time:v18 withLanguage:v19 recipientHandles:v20 options:a10 completionBlock:v27];
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
  v3 = [MEMORY[0x277CBEAF8] currentLocale];
  v4 = [v3 localeIdentifier];

  v5 = [MEMORY[0x277CBEAF8] preferredLanguages];
  v6 = [v5 firstObject];

  if (v4)
  {
    v7 = +[PREExperimentResolver sharedInstance];
    [v7 warmupForLocale:v4];
  }

  if (v6 && ([v4 isEqualToString:v6] & 1) == 0)
  {
    v8 = +[PREExperimentResolver sharedInstance];
    [v8 warmupForLocale:v6];
  }

  v9 = pre_responses_handle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_260CE3000, v9, OS_LOG_TYPE_DEFAULT, "PREResponsesExperiment finished priming suggestd", buf, 2u);
  }
}

- (void)registerResponseDisplayedAtIndex:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_initWeak(location, self);
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __59__PREResponsesExperiment_registerResponseDisplayedAtIndex___block_invoke;
    v11 = &unk_279ABB310;
    objc_copyWeak(&v13, location);
    v12 = v4;
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

- (void)registerResponse:(id)a3 forMessage:(id)a4 time:(id)a5 metadata:(id)a6 withLanguage:(id)a7
{
  v73 = *MEMORY[0x277D85DE8];
  v47 = a3;
  v12 = a4;
  v43 = a5;
  v13 = a6;
  v14 = a7;
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

  v18 = [(PREResponsesExperiment *)self cachedResponsesGeneratedEvent];
  v19 = [v18 language];
  v20 = v19;
  if (v19)
  {
    v46 = v19;
  }

  else
  {
    v21 = +[PRELocaleDetection sharedInstance];
    v46 = [v21 localeForMessage:v12 outgoingMessageHistory:0 defaultLocale:v14 defaultLocaleLastChangedDate:0 sender:0];
  }

  v44 = [(PREResponsesExperiment *)self shouldUseDefaultRKTreatmentForLanguage:v46];
  v22 = [(PREResponsesExperiment *)self clippedMessageIfNecessary:v47];
  if (v13)
  {
    v23 = [v13 objectForKeyedSubscript:*MEMORY[0x277D46C20]];
    v24 = v23;
    if (v23)
    {
      v25 = v23;
    }

    v26 = [v13 objectForKeyedSubscript:*MEMORY[0x277D46C28]];
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
    *&buf[14] = v14;
    *&buf[22] = 2112;
    v70 = v29;
    _os_log_impl(&dword_260CE3000, v28, OS_LOG_TYPE_DEFAULT, "PREResponsesExperiment user engaged prediction at position %@ with language %@ and method %@", buf, 0x20u);
  }

  v49 = [(PREResponsesExperiment *)self cachedResponsesGeneratedEvent];
  v30 = objc_opt_new();
  [v30 setResponsesGeneratedEvent:v49];
  [v30 setInputMethod:v27];
  [v30 setSelectedResponse:v22];
  [v30 setSelectedPosition:v24];
  if (v49)
  {
    v31 = mach_absolute_time();
    [v30 setTimeToTap:{PREMachTimeToMilliseconds(v31 - objc_msgSend(v49, "responseGenerationTime"))}];
  }

  [v30 setHasQuestionMark:{objc_msgSend(v12, "containsString:", @"?"}];
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
  [(PREResponsesExperiment *)self performWithResolvedModelAssetPathsUsingLanguage:v14 block:v65];
  objc_initWeak(&location, self);
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __81__PREResponsesExperiment_registerResponse_forMessage_time_metadata_withLanguage___block_invoke_2;
  v51[3] = &unk_279ABB2E8;
  objc_copyWeak(&v61, &location);
  v63 = v44;
  v51[4] = self;
  v48 = v47;
  v52 = v48;
  v32 = v12;
  v53 = v32;
  v33 = v13;
  v54 = v33;
  v34 = v14;
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

- (void)preResponseItemsForMessage:(id)a3 maximumResponses:(unint64_t)a4 forConversationHistory:(id)a5 forContext:(id)a6 time:(id)a7 withLanguage:(id)a8 recipientHandles:(id)a9 options:(unint64_t)a10 completionBlock:(id)a11
{
  v107 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v17 = a5;
  v51 = a6;
  v56 = a7;
  v58 = a8;
  v52 = a9;
  v55 = a11;
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

  v57 = [(PREResponsesExperiment *)self clippedMessageIfNecessary:v16];

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

  v26 = [(PREResponsesExperiment *)self cacheKeyForMessage:v57 maxResponses:a4 time:v56 language:v58];
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

    v55[2](v55, v27);
    [(PREResponsesExperiment *)self registerGenerationWithPreResponseItems:v27 language:v58 isCached:1 responseTimePerf:v32 promptMessage:v57 generationStatus:2];
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
    [(PREResponsesExperiment *)self performWithResolvedModelAssetPathsUsingLanguage:v58 block:v68];
    v48 = *(*(&v102 + 1) + 40);
    xpcClient = self->_xpcClient;
    v46 = v76[5];
    v47 = v82[5];
    v40 = v70[5];
    v41 = [(PREResponsesExperiment *)self registerDisplayed];
    v42 = [(PREResponsesExperiment *)self includeCustomResponses];
    v43 = [(PREResponsesExperiment *)self includeResponsesToRobots];
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __163__PREResponsesExperiment_preResponseItemsForMessage_maximumResponses_forConversationHistory_forContext_time_withLanguage_recipientHandles_options_completionBlock___block_invoke_2;
    v59[3] = &unk_279ABB298;
    v59[4] = self;
    v65 = &v88;
    v60 = v57;
    v67[1] = a4;
    v61 = v51;
    v62 = v58;
    v67[2] = a10;
    objc_copyWeak(v67, &location);
    v66 = buf;
    v67[3] = spid;
    v64 = v55;
    v63 = v50;
    BYTE2(v45) = v43;
    BYTE1(v45) = v42;
    LOBYTE(v45) = v41;
    [PREResponsesProtocol preResponseItemsForMessage:"preResponseItemsForMessage:maximumResponses:conversationTurns:context:time:language:recipientHandles:modelFilePath:modelConfigPath:espressoBinFilePath:vocabFilePath:registerDisplayed:includeCustomResponses:includeResponsesToRobots:completion:" maximumResponses:v60 conversationTurns:a4 context:v17 time:v61 language:v56 recipientHandles:v62 modelFilePath:v52 modelConfigPath:v48 espressoBinFilePath:v47 vocabFilePath:v46 registerDisplayed:v40 includeCustomResponses:v45 includeResponsesToRobots:v59 completion:?];

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

- (void)predictionsForRequest:(id)a3 plistPath:(id)a4 espressoBinPath:(id)a5 vocabPath:(id)a6 heads:(id)a7 completion:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = [PREResponsesExperiment _getConversationHistoryFromRequest:a3];
  v20 = [v19 lastObject];
  v21 = [v20 text];

  xpcClient = self->_xpcClient;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __101__PREResponsesExperiment_predictionsForRequest_plistPath_espressoBinPath_vocabPath_heads_completion___block_invoke;
  v24[3] = &unk_279ABB248;
  v25 = v14;
  v23 = v14;
  [(PREResponsesProtocol *)xpcClient predictForMessage:v21 conversationTurns:v19 language:@"en" plistPath:v18 espressoBinPath:v17 vocabPath:v16 heads:v15 completion:v24];
}

- (void)predictionsForRequest:(id)a3 heads:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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
  v11 = [PREResponsesExperiment _getConversationHistoryFromRequest:v8];
  v12 = [v11 lastObject];
  v13 = [v12 text];

  xpcClient = self->_xpcClient;
  v15 = v35[5];
  v16 = v29[5];
  v17 = v23[5];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __65__PREResponsesExperiment_predictionsForRequest_heads_completion___block_invoke_2;
  v19[3] = &unk_279ABB248;
  v18 = v10;
  v20 = v18;
  [(PREResponsesProtocol *)xpcClient predictForMessage:v13 conversationTurns:v11 language:@"en" plistPath:v15 espressoBinPath:v16 vocabPath:v17 heads:v9 completion:v19];

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

- (void)performWithResolvedModelAssetPathsUsingLanguage:(id)a3 block:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v28 = a3;
  v6 = a4;
  if ([(PREResponsesExperiment *)self mode]== 2)
  {
    v7 = [(NSUserDefaults *)self->_defaults stringForKey:@"experimentModelUserDirectory"];
    v8 = [MEMORY[0x277CCAA00] defaultManager];
    v9 = v8;
    if (v7)
    {
      if (([v8 isReadableFileAtPath:v7]& 1) != 0)
      {
        v10 = [v7 stringByAppendingPathComponent:@"model.chunk"];
        v26 = v10;
        if ([v9 isReadableFileAtPath:v10])
        {
          v11 = v10;
        }

        else
        {
          v11 = 0;
        }

        v20 = [v7 stringByAppendingPathComponent:@"config.plist"];
        v25 = v20;
        if ([v9 isReadableFileAtPath:v20])
        {
          v14 = v20;
        }

        else
        {
          v14 = 0;
        }

        v21 = [v7 stringByAppendingPathComponent:@"espresso.bin"];
        if ([v9 isReadableFileAtPath:v21])
        {
          v13 = v21;
        }

        else
        {
          v13 = 0;
        }

        v22 = [v7 stringByAppendingPathComponent:@"vocab.trie"];
        if ([v9 isReadableFileAtPath:v22])
        {
          v12 = v22;
        }

        else
        {
          v12 = 0;
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

    v12 = 0;
    v13 = 0;
    v14 = 0;
    v11 = 0;
LABEL_28:

    goto LABEL_29;
  }

  if ([(PREResponsesExperiment *)self mode]!= 1)
  {
    v7 = [(PREExperimentResolverProtocol *)self->_experimentResolver getResponseSuggestionsExperimentConfig:v28 shouldDownloadAssets:1];
    v11 = [v7 inferenceModelFilePath];
    v14 = [v7 inferenceModelConfigPath];
    v13 = [v7 espressoBinFilePath];
    v12 = [v7 vocabFilePath];
    v9 = pre_responses_handle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [v7 experimentIdentifiers];
      v15 = [v27 experimentId];
      v24 = [v7 experimentIdentifiers];
      v16 = [v24 treatmentId];
      v17 = [(PREResponsesExperiment *)self activeExperimentNameForLanguage:v28];
      *buf = 138412802;
      v30 = v15;
      v31 = 2112;
      v32 = v16;
      v33 = 2112;
      v34 = v17;
      _os_log_impl(&dword_260CE3000, v9, OS_LOG_TYPE_DEFAULT, "PREResponsesExperiment performWithResolvedModelAssets api is fetching experimental responses with experiment %@, treatment %@, model %@", buf, 0x20u);
    }

    goto LABEL_28;
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  v11 = 0;
LABEL_29:
  v6[2](v6, v11, v14, v13, v12);

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_responsesForMessage:(id)a3 maximumResponses:(unint64_t)a4 outgoingMessageHistory:(id)a5 forConversationHistory:(id)a6 forContext:(id)a7 time:(id)a8 withLanguage:(id)a9 languageLastChangedDate:(id)a10 recipientHandles:(id)a11 options:(unint64_t)a12 preferredLocale:(id)a13 completionBlock:(id)a14
{
  v53 = a3;
  v19 = a5;
  v56 = a6;
  v57 = a7;
  v55 = a8;
  v54 = a9;
  v52 = a10;
  v20 = a11;
  v21 = a13;
  v22 = a14;
  if ([objc_opt_class() _isPreferredLocaleValid:v21])
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
    [MEMORY[0x277D3A248] languageForLocaleIdentifier:v21];
    v50 = v28 = v53;
    v29 = [(PREResponsesExperiment *)self shouldUseDefaultRKTreatmentForLanguage:v50];
    if ([objc_opt_class() _isStringEmpty:v53])
    {
      v30 = pre_responses_handle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *v72 = 0;
        _os_log_impl(&dword_260CE3000, v30, OS_LOG_TYPE_DEFAULT, "PREResponsesExperiment responsesForMessage async received null message, returning empty array", v72, 2u);
      }

      v22[2](v22, MEMORY[0x277CBEBF8]);
      v31 = pre_signpost_handle();
      v32 = v31;
      if (v27 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v31))
      {
        goto LABEL_27;
      }

      *v72 = 0;
    }

    else if (v53 && [v19 count] && (objc_msgSend(v19, "firstObject"), v33 = objc_claimAutoreleasedReturnValue(), v34 = objc_msgSend(v53, "isEqualToString:", v33), v33, v34))
    {
      v35 = pre_responses_handle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *v72 = 0;
        _os_log_impl(&dword_260CE3000, v35, OS_LOG_TYPE_DEFAULT, "PREResponsesExperiment responsesForMessage async received message exactly matching first message in outgoing history; treating prompt as outgoing message and returning empty array", v72, 2u);
      }

      v22[2](v22, MEMORY[0x277CBEBF8]);
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
      v38 = [v37 isLanguageMismatchedForMessage:v53 withLocaleIdentifier:v21];

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
          v63 = v54;
          v68 = buf;
          v66 = v22;
          v64 = v50;
          v65 = v53;
          [(RKMessageResponseManager *)rkClient responsesForMessage:v65 maximumResponses:a4 forContext:v57 withLanguage:v64 options:a12 completionBlock:v62];

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
          v59 = v22;
          v60 = buf;
          v61[1] = spid;
          [(PREResponsesExperiment *)self preResponseItemsForMessage:v53 maximumResponses:a4 forConversationHistory:v56 forContext:v57 time:v55 withLanguage:v50 recipientHandles:v20 options:a12 completionBlock:v58];

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

      v22[2](v22, MEMORY[0x277CBEBF8]);
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

  v22[2](v22, MEMORY[0x277CBEBF8]);
  v28 = v53;
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

- (void)responsesForMessage:(id)a3 maximumResponses:(unint64_t)a4 forConversationHistory:(id)a5 forContext:(id)a6 time:(id)a7 withLanguage:(id)a8 recipientHandles:(id)a9 options:(unint64_t)a10 completionBlock:(id)a11
{
  v17 = a11;
  v18 = a9;
  v19 = a8;
  v20 = a7;
  v21 = a6;
  v22 = a5;
  v23 = a3;
  v24 = +[PRELocaleDetection sharedInstance];
  v26 = [v24 localeForMessage:v23 outgoingMessageHistory:0 defaultLocale:v19 defaultLocaleLastChangedDate:0 sender:v21];

  [(PREResponsesExperiment *)self _responsesForMessage:v23 maximumResponses:a4 outgoingMessageHistory:0 forConversationHistory:v22 forContext:v21 time:v20 withLanguage:v19 languageLastChangedDate:0 recipientHandles:v18 options:a10 preferredLocale:v26 completionBlock:v17];
}

- (void)responsesForMessage:(id)a3 maximumResponses:(unint64_t)a4 forConversationHistory:(id)a5 forContext:(id)a6 time:(id)a7 withLanguage:(id)a8 recipients:(id)a9 options:(unint64_t)a10 completionBlock:(id)a11
{
  v18 = a11;
  v19 = a8;
  v20 = a7;
  v21 = a6;
  v22 = a5;
  v23 = a3;
  v24 = [(PREResponsesExperiment *)self handlesFromRecipients:a9];
  [(PREResponsesExperiment *)self responsesForMessage:v23 maximumResponses:a4 forConversationHistory:v22 forContext:v21 time:v20 withLanguage:v19 recipientHandles:v24 options:a10 completionBlock:v18];
}

- (id)_responsesForMessage:(id)a3 maximumResponses:(unint64_t)a4 outgoingMessageHistory:(id)a5 forConversationHistory:(id)a6 forContext:(id)a7 time:(id)a8 withLanguage:(id)a9 languageLastChangedDate:(id)a10 recipientHandles:(id)a11 options:(unint64_t)a12 preferredLocale:(id)a13
{
  v64 = *MEMORY[0x277D85DE8];
  v18 = a3;
  v19 = a5;
  v54 = a6;
  v58 = a7;
  v57 = a8;
  v56 = a9;
  v55 = a10;
  v20 = a11;
  v21 = a13;
  if (![objc_opt_class() _isPreferredLocaleValid:v21])
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

  v26 = [MEMORY[0x277D3A248] languageForLocaleIdentifier:v21];
  v27 = [(PREResponsesExperiment *)self shouldUseDefaultRKTreatmentForLanguage:v26];
  if ([objc_opt_class() _isStringEmpty:v18])
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

  else if (v18 && [v19 count] && (objc_msgSend(v19, "firstObject"), v31 = objc_claimAutoreleasedReturnValue(), v32 = objc_msgSend(v18, "isEqualToString:", v31), v31, v32))
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
    v34 = [v33 isLanguageMismatchedForMessage:v18 withLocaleIdentifier:v21];

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

        v41 = [(RKMessageResponseManager *)self->_rkClient responsesForMessage:v18 maximumResponses:a4 forContext:v58 withLanguage:v26 options:a12];
        if (v41)
        {
          v42 = [PREResponseItem responseItemArrayFromResponseKitArray:v41 forLocale:v56];
        }

        else
        {
          v42 = MEMORY[0x277CBEBF8];
        }

        [(PREResponsesExperiment *)self registerGenerationWithPreResponseItems:v42 language:v26 isCached:0 responseTimePerf:PRERecordMeasurementState(v61) promptMessage:v18 generationStatus:1];
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
        v42 = [(PREResponsesExperiment *)self waitForPreResponseItemsForMessage:v18 maximumResponses:a4 forConversationHistory:0 forContext:v58 time:v57 withLanguage:v26 recipientHandles:v20 options:a12];
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

- (id)responsesForMessage:(id)a3 maximumResponses:(unint64_t)a4 forConversationHistory:(id)a5 forContext:(id)a6 time:(id)a7 withLanguage:(id)a8 recipientHandles:(id)a9 options:(unint64_t)a10
{
  v16 = a9;
  v17 = a8;
  v18 = a7;
  v19 = a6;
  v20 = a5;
  v21 = a3;
  v22 = +[PRELocaleDetection sharedInstance];
  v23 = [v22 localeForMessage:v21 outgoingMessageHistory:0 defaultLocale:v17 defaultLocaleLastChangedDate:0 sender:v19];

  v24 = [(PREResponsesExperiment *)self _responsesForMessage:v21 maximumResponses:a4 outgoingMessageHistory:0 forConversationHistory:v20 forContext:v19 time:v18 withLanguage:v17 languageLastChangedDate:0 recipientHandles:v16 options:a10 preferredLocale:v23];

  return v24;
}

- (void)nonEditableSuggestionsForMessage:(id)a3 messageDate:(id)a4 senderID:(id)a5 recipientHandles:(id)a6 outgoingMessageHistory:(id)a7 keyboardLanguageID:(id)a8 keyboardLanguageLastChangedDate:(id)a9 includeDynamicSuggestions:(BOOL)a10 completion:(id)a11
{
  v17 = a10;
  v18 = a3;
  v36 = a4;
  v37 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a11;
  if (!a10 && ![(PREResponsesExperiment *)self includeCannedResponses])
  {
    v23[2](v23, MEMORY[0x277CBEBF8]);
    v32 = v36;
    goto LABEL_18;
  }

  v35 = v19;
  v24 = +[PRELocaleDetection sharedInstance];
  v25 = [v24 localeForMessage:v18 outgoingMessageHistory:v20 defaultLocale:v21 defaultLocaleLastChangedDate:v22 sender:v37];

  exemptTermsDetector = self->_exemptTermsDetector;
  v27 = [PRELocaleDetection languageTagForLocaleIdentifier:v25];
  LODWORD(exemptTermsDetector) = [(PREPredictionExemptTermsDetector *)exemptTermsDetector checkForExemptContentInText:v18 languageCode:v27];

  if (exemptTermsDetector)
  {
    v28 = pre_responses_handle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_260CE3000, v28, OS_LOG_TYPE_DEFAULT, "PREResponsesExperiment received message contains exempt content", buf, 2u);
    }

    v17 = 0;
  }

  if (!-[PREResponsesExperiment includeCannedResponses](self, "includeCannedResponses") || ![objc_opt_class() _isPreferredLocaleValid:v25])
  {
    v30 = MEMORY[0x277CBEBF8];
    if (!v17)
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
    v40 = v23;
    v39 = v30;
    v34 = v33;
    v32 = v36;
    [(PREResponsesExperiment *)self _responsesForMessage:v18 maximumResponses:4 outgoingMessageHistory:v20 forConversationHistory:0 forContext:v37 time:v36 withLanguage:v21 languageLastChangedDate:v22 recipientHandles:v35 options:v34 preferredLocale:v25 completionBlock:v38];

    objc_destroyWeak(&v41);
    objc_destroyWeak(buf);
    goto LABEL_16;
  }

  v29 = [MEMORY[0x277D3A248] languageForLocaleIdentifier:v25];
  v30 = [PREResponsesExperiment _cannedRepliesForLanguage:v29 inputPreferences:self->_tiPreferencesController];

  if (v17)
  {
    goto LABEL_12;
  }

LABEL_10:
  v31 = [PREResponsesExperiment _suggestionsWithDynamicResponseItems:0 cannedResponseItems:v30 inputPreferences:self->_tiPreferencesController];
  (v23)[2](v23, v31);

  v32 = v36;
LABEL_16:

  v19 = v35;
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

- (void)nonEditableSuggestionsForMessage:(id)a3 messageDate:(id)a4 senderID:(id)a5 recipients:(id)a6 outgoingMessageHistory:(id)a7 keyboardLanguageID:(id)a8 keyboardLanguageLastChangedDate:(id)a9 includeDynamicSuggestions:(BOOL)a10 completion:(id)a11
{
  v18 = a11;
  v19 = a9;
  v20 = a8;
  v21 = a7;
  v22 = a5;
  v23 = a4;
  v24 = a3;
  v26 = [(PREResponsesExperiment *)self handlesFromRecipients:a6];
  LOBYTE(v25) = a10;
  [(PREResponsesExperiment *)self nonEditableSuggestionsForMessage:v24 messageDate:v23 senderID:v22 recipientHandles:v26 outgoingMessageHistory:v21 keyboardLanguageID:v20 keyboardLanguageLastChangedDate:v19 includeDynamicSuggestions:v25 completion:v18];
}

- (id)nonEditableSuggestionsForMessage:(id)a3 messageDate:(id)a4 senderID:(id)a5 recipientHandles:(id)a6 outgoingMessageHistory:(id)a7 keyboardLanguageID:(id)a8 keyboardLanguageLastChangedDate:(id)a9 includeDynamicSuggestions:(BOOL)a10
{
  v16 = a10;
  v17 = a3;
  v38 = a4;
  v18 = a5;
  v37 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  if (a10 || [(PREResponsesExperiment *)self includeCannedResponses])
  {
    v22 = +[PRELocaleDetection sharedInstance];
    v36 = v18;
    v23 = [v22 localeForMessage:v17 outgoingMessageHistory:v19 defaultLocale:v20 defaultLocaleLastChangedDate:v21 sender:v18];

    exemptTermsDetector = self->_exemptTermsDetector;
    v25 = [PRELocaleDetection languageTagForLocaleIdentifier:v23];
    LODWORD(exemptTermsDetector) = [(PREPredictionExemptTermsDetector *)exemptTermsDetector checkForExemptContentInText:v17 languageCode:v25];

    if (exemptTermsDetector)
    {
      v26 = pre_responses_handle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_260CE3000, v26, OS_LOG_TYPE_DEFAULT, "PREResponsesExperiment received message contains exempt content", buf, 2u);
      }

      v16 = 0;
    }

    if (-[PREResponsesExperiment includeCannedResponses](self, "includeCannedResponses") && [objc_opt_class() _isPreferredLocaleValid:v23])
    {
      v27 = [MEMORY[0x277D3A248] languageForLocaleIdentifier:v23];
      v28 = [PREResponsesExperiment _cannedRepliesForLanguage:v27 inputPreferences:self->_tiPreferencesController];

      if (!v16)
      {
LABEL_10:
        v29 = 0;
        v31 = v37;
        v30 = v38;
LABEL_15:
        v34 = [PREResponsesExperiment _suggestionsWithDynamicResponseItems:v29 cannedResponseItems:v28 inputPreferences:self->_tiPreferencesController];

        v18 = v36;
        goto LABEL_17;
      }
    }

    else
    {
      v28 = MEMORY[0x277CBEBF8];
      if (!v16)
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

    v31 = v37;
    v30 = v38;
    v29 = [(PREResponsesExperiment *)self _responsesForMessage:v17 maximumResponses:4 outgoingMessageHistory:v19 forConversationHistory:0 forContext:v36 time:v38 withLanguage:v20 languageLastChangedDate:v21 recipientHandles:v37 options:v33 preferredLocale:v23];
    goto LABEL_15;
  }

  v34 = MEMORY[0x277CBEBF8];
  v31 = v37;
  v30 = v38;
LABEL_17:

  return v34;
}

- (id)nonEditableSuggestionsForMessage:(id)a3 messageDate:(id)a4 senderID:(id)a5 recipients:(id)a6 outgoingMessageHistory:(id)a7 keyboardLanguageID:(id)a8 keyboardLanguageLastChangedDate:(id)a9 includeDynamicSuggestions:(BOOL)a10
{
  v17 = a9;
  v18 = a8;
  v19 = a7;
  v20 = a5;
  v21 = a4;
  v22 = a3;
  v23 = [(PREResponsesExperiment *)self handlesFromRecipients:a6];
  LOBYTE(v26) = a10;
  v24 = [(PREResponsesExperiment *)self nonEditableSuggestionsForMessage:v22 messageDate:v21 senderID:v20 recipientHandles:v23 outgoingMessageHistory:v19 keyboardLanguageID:v18 keyboardLanguageLastChangedDate:v17 includeDynamicSuggestions:v26];

  return v24;
}

- (void)fullNonEditableSuggestionsListForMessage:(id)a3 context:(id)a4 additionalSenderMessages:(id)a5 date:(id)a6 keyboardLanguageID:(id)a7 keyboardLanguageLastChangedDate:(id)a8 recipients:(id)a9 includeDynamicSuggestions:(BOOL)a10 completion:(id)a11
{
  v40 = a3;
  v39 = a4;
  v37 = a5;
  v17 = a6;
  v35 = a7;
  v33 = a8;
  v18 = a9;
  v19 = a11;
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
  v54 = v19;
  v55 = v21;
  v38 = v19;
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
  v42 = v40;
  v43 = v17;
  v44 = v39;
  v45 = v18;
  v46 = v37;
  v47 = v35;
  v48 = v33;
  v49 = v24;
  v51 = a10;
  v34 = v33;
  v36 = v35;
  v26 = v37;
  v27 = v18;
  v28 = v39;
  v29 = v17;
  v30 = v40;
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

- (id)fullNonEditableSuggestionsListForMessage:(id)a3 context:(id)a4 additionalSenderMessages:(id)a5 date:(id)a6 keyboardLanguageID:(id)a7 keyboardLanguageLastChangedDate:(id)a8 recipients:(id)a9 includeDynamicSuggestions:(BOOL)a10
{
  v16 = a9;
  v17 = a8;
  v18 = a7;
  v19 = a6;
  v20 = a5;
  v21 = a4;
  v22 = a3;
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

  LOBYTE(v32) = a10;
  v28 = [(PREResponsesExperiment *)self nonEditableSuggestionsForMessage:v22 messageDate:v19 senderID:v21 recipients:v16 outgoingMessageHistory:v20 keyboardLanguageID:v18 keyboardLanguageLastChangedDate:v17 includeDynamicSuggestions:v32];

  v29 = pre_signpost_handle();
  v30 = v29;
  if (v27 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
  {
    *v35 = 0;
    _os_signpost_emit_with_name_impl(&dword_260CE3000, v30, OS_SIGNPOST_INTERVAL_END, spid, "PRE-SyncFullNonEditableSuggestions", "Completed", v35, 2u);
  }

  return v28;
}

- (id)responsesForMessage:(id)a3 maximumResponses:(unint64_t)a4 forConversationHistory:(id)a5 forContext:(id)a6 time:(id)a7 withLanguage:(id)a8 recipients:(id)a9 options:(unint64_t)a10
{
  v16 = a8;
  v17 = a7;
  v18 = a6;
  v19 = a5;
  v20 = a3;
  v21 = [(PREResponsesExperiment *)self handlesFromRecipients:a9];
  v22 = [(PREResponsesExperiment *)self responsesForMessage:v20 maximumResponses:a4 forConversationHistory:v19 forContext:v18 time:v17 withLanguage:v16 recipientHandles:v21 options:a10];

  return v22;
}

- (void)suggestionsForRequest:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v26 = v7;
  v27 = &v29;
  v13 = v7;
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
  v21 = self;
  v22 = v14;
  v20 = v6;
  v16 = v6;
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

- (id)suggestionsForRequest:(id)a3
{
  v4 = a3;
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

  v10 = [v4 includesDynamicSuggestions];
  if (([v4 includesDynamicSuggestions] & 1) != 0 || -[PREResponsesExperiment includeCannedResponses](self, "includeCannedResponses"))
  {
    v50 = v9;
    v11 = objc_opt_class();
    v12 = [v4 receivedMessages];
    v13 = [v11 _rawStringsForMessages:v12 excludingTapBacks:1];

    v14 = objc_opt_class();
    v15 = [v4 senderMessages];
    v16 = [v14 _rawStringsForMessages:v15 excludingTapBacks:1];

    v17 = [v4 receivedMessages];
    v18 = [v17 firstObject];
    v19 = [v18 senderIdentifier];

    v20 = +[PRELocaleDetection sharedInstance];
    v21 = [v4 languageCode];
    v22 = [v4 languageLastChangedDate];
    v52 = v16;
    v49 = v19;
    v23 = [v20 localeForIncomingMessages:v13 outgoingMessages:v16 defaultLocale:v21 defaultLocaleLastChangedDate:v22 sender:v19];

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

      v10 = 0;
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
    if (v10)
    {
      v30 = [(TIPreferencesController *)self->_tiPreferencesController BOOLForKey:9];
      v31 = 384;
      if (v30)
      {
        v31 = 256;
      }

      v46 = v31;
      [PREResponsesExperiment _getConversationHistoryFromRequest:v4];
      v32 = v47 = v13;
      v33 = [v32 lastObject];
      v34 = [v33 text];

      v35 = [v4 recipients];
      v36 = [(PREResponsesExperiment *)self handlesFromRecipients:v35];

      v37 = [v4 requestDate];
      v38 = [v4 languageCode];
      v39 = [v4 languageLastChangedDate];
      v40 = [(PREResponsesExperiment *)self _responsesForMessage:v34 maximumResponses:4 outgoingMessageHistory:v52 forConversationHistory:v32 forContext:0 time:v37 withLanguage:v38 languageLastChangedDate:v39 recipientHandles:v36 options:v46 preferredLocale:v51];

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

- (id)activeExperimentNameForLanguage:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
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

  v10 = [(PREResponsesExperiment *)self mode];
  if (v10 == 2)
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

  else if (v10 == 1)
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

  else if (v10)
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

    v13 = [(PREExperimentResolverProtocol *)self->_experimentResolver getResponseSuggestionsExperimentConfig:v4 shouldDownloadAssets:0];
    v23 = [v13 treatmentName];
    v24 = pre_responses_handle();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
    if (v23)
    {
      if (v25)
      {
        *buf = 138412290;
        v33 = v23;
        _os_log_impl(&dword_260CE3000, v24, OS_LOG_TYPE_DEFAULT, "PREResponsesExperiment activeExperimentName from Trial: %@", buf, 0xCu);
      }

      v26 = pre_signpost_handle();
      v27 = v26;
      if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_260CE3000, v27, OS_SIGNPOST_INTERVAL_END, v20, "PRE-ReadTrialExperimentNameFactor", "Completed", buf, 2u);
      }

      v14 = v23;
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

- (id)cacheKeyForMessage:(id)a3 maxResponses:(unint64_t)a4 time:(id)a5 language:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  if (v11)
  {
    v12 = v11;
    v13 = [MEMORY[0x277D3A248] languageForLocaleIdentifier:v11];
  }

  else
  {
    v13 = 0;
  }

  if (v10)
  {
    v14 = objc_alloc(MEMORY[0x277CCACA8]);
    [v10 timeIntervalSinceReferenceDate];
    v16 = [v14 initWithFormat:@"%.02f", v15];
  }

  else
  {
    v16 = @"0";
  }

  v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@-%tu-%@-%@", v9, a4, v13, v16];

  return v17;
}

- (id)clippedMessageIfNecessary:(id)a3
{
  v3 = a3;
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

  if ([v3 length] >= 0x231)
  {
    v8 = objc_alloc(MEMORY[0x277CCACA8]);
    v9 = [v3 substringToIndex:280];
    v10 = [v3 substringFromIndex:{objc_msgSend(v3, "length") - 280}];
    v11 = [v8 initWithFormat:@"%@%@", v9, v10];

    v3 = v11;
  }

  v12 = pre_signpost_handle();
  v13 = v12;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *v15 = 0;
    _os_signpost_emit_with_name_impl(&dword_260CE3000, v13, OS_SIGNPOST_INTERVAL_END, v5, "PRE-ClipMessage", "Completed", v15, 2u);
  }

  return v3;
}

- (void)setCachedResponsesGeneratedEvent:(id)a3
{
  v4 = a3;
  guardedCachedResponsesGeneratedEvent = self->_guardedCachedResponsesGeneratedEvent;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__PREResponsesExperiment_setCachedResponsesGeneratedEvent___block_invoke;
  v7[3] = &unk_279ABB0C8;
  v8 = v4;
  v6 = v4;
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
  v6 = [MEMORY[0x277D46BD8] sharedManager];
  v7 = [MEMORY[0x277D6F470] sharedPreferencesController];
  v8 = [(PREResponsesExperiment *)self initWithExperimentResolver:v3 metricsClient:v4 xpcClient:v5 rkClient:v6 tiPreferencesController:v7];

  return v8;
}

- (PREResponsesExperiment)initWithExperimentResolver:(id)a3 metricsClient:(id)a4 xpcClient:(id)a5 rkClient:(id)a6 tiPreferencesController:(id)a7
{
  v31 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v33.receiver = self;
  v33.super_class = PREResponsesExperiment;
  v17 = [(PREResponsesExperiment *)&v33 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_experimentResolver, a3);
    objc_storeStrong(&v18->_metrics, a4);
    objc_storeStrong(&v18->_xpcClient, a5);
    objc_storeStrong(&v18->_rkClient, a6);
    objc_storeStrong(&v18->_tiPreferencesController, a7);
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

+ (BOOL)_isStringEmpty:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [MEMORY[0x277CBEB68] null];
    if ([v3 isEqual:v4])
    {
      v5 = 1;
    }

    else
    {
      v5 = [v3 isEqualToString:&stru_28733D8C0];
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

+ (int)_preInputMethodFrom:(id)a3
{
  v3 = [a3 unsignedIntegerValue];
  if (v3 == 1)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  if (v3 == 2)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

+ (id)_inputMethodStringFrom:(int)a3
{
  if (a3 > 5)
  {
    return @"canned";
  }

  else
  {
    return off_279ABB400[a3];
  }
}

+ (id)_suggestionsWithDynamicResponseItems:(id)a3 cannedResponseItems:(id)a4 inputPreferences:(id)a5
{
  v63 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_opt_new();
  v11 = objc_opt_class();
  if (v7)
  {
    obj = [v11 stringArrayFromPreResponseItems:v8];
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
    v45 = v8;
    v43 = [PREResponsesExperiment _suggestionsWithDynamicResponseItems:0 cannedResponseItems:v8 inputPreferences:v9];
    v44 = v9;
    v14 = [objc_opt_class() _getFormattedPREResponseItems:v7 inputPreferences:v9];
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

          v21 = [*(*(&v52 + 1) + 8 * i) replyText];
          v22 = objc_opt_new();
          v23 = [v21 copy];
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
    [v11 _getFormattedPREResponseItems:v8 inputPreferences:v9];
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
    v44 = v9;
    v45 = v8;
    v35 = *v57;
    do
    {
      for (k = 0; k != v34; ++k)
      {
        if (*v57 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v37 = [*(*(&v56 + 1) + 8 * k) replyText];
        if (([v37 isEqualToString:@"SMART_REPLIES_MARKER"] & 1) == 0)
        {
          v38 = objc_opt_new();
          v39 = [v37 copy];
          [v38 setTitle:v39];

          [v10 addObject:v38];
        }
      }

      v34 = [obj countByEnumeratingWithState:&v56 objects:v62 count:16];
    }

    while (v34);
  }

  v9 = v44;
  v8 = v45;
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

+ (BOOL)_shouldInsertSuggestion:(id)a3 forExistingSuggestions:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [a3 title];
  v7 = [v6 localizedLowercaseString];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v5;
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

        v13 = [*(*(&v19 + 1) + 8 * i) title];
        v14 = [v13 localizedLowercaseString];
        v15 = [v14 isEqualToString:v7];

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

+ (id)_cannedRepliesForLanguage:(id)a3 inputPreferences:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (_cannedRepliesForLanguage_inputPreferences__onceToken != -1)
  {
    dispatch_once(&_cannedRepliesForLanguage_inputPreferences__onceToken, &__block_literal_global_342);
  }

  v7 = [_cannedRepliesForLanguage_inputPreferences__store repliesForLanguage:v5];
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

        v14 = [[PREResponseItem alloc] initWithCategoryId:0 modelId:0 responseClassId:0 replySubgroupId:0 replyTextId:0 replyText:*(*(&v17 + 1) + 8 * i) language:v5 isCustomResponse:0 isRobotResponse:0];
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

+ (id)stringArrayFromPreResponseItems:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = v3;
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
          v11 = pre_responses_handle();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            v12 = v11;
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
            v15 = [v10 replyText];

            if (!v15)
            {
              goto LABEL_14;
            }

            v11 = [v10 replyText];
            [v4 addObject:v11];
          }

          else
          {
            v11 = pre_responses_handle();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
            {
              v16 = objc_opt_class();
              *buf = 138543619;
              v25 = v16;
              v26 = 2117;
              v27 = v10;
              v12 = v11;
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

+ (id)_getFormattedPREResponseItems:(id)a3 inputPreferences:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    if ([v6 BOOLForKey:9])
    {
      v8 = v5;
    }

    else
    {
      v8 = [v5 _pas_mappedArrayWithTransform:&__block_literal_global_319];
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

+ (id)_getConversationHistoryFromRequest:(id)a3
{
  v60[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"dateSent" ascending:1];
  v5 = [v3 receivedMessages];
  v46 = v4;
  v60[0] = v4;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:1];
  v7 = [v5 sortedArrayUsingDescriptors:v6];

  v47 = v3;
  v8 = [v3 senderMessages];
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
          v16 = [v15 title];
          v17 = v16;
          v18 = &stru_28733D8C0;
          if (v16)
          {
            v18 = v16;
          }

          v19 = v18;

          v20 = objc_alloc(MEMORY[0x277D01F70]);
          v21 = [v15 senderIdentifier];
          v22 = [v15 dateSent];
          v23 = [v20 initWithText:v19 senderID:v21 timestamp:v22];

          [v9 addObject:v23];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v53 objects:v59 count:16];
    }

    while (v12);
  }

  v48 = v9;
  v24 = [v9 lastObject];
  v25 = [v24 timestamp];

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v26 = v8;
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

        if (v25)
        {
          v31 = *(*(&v49 + 1) + 8 * j);
          v32 = [v31 dateSent];
          v33 = [v32 laterDate:v25];

          if (!v33 && ([v31 isTapBack] & 1) == 0 && (objc_msgSend(v31, "isEmote") & 1) == 0)
          {
            v34 = [v31 title];
            v35 = v34;
            v36 = &stru_28733D8C0;
            if (v34)
            {
              v36 = v34;
            }

            v37 = v36;

            v38 = objc_alloc(MEMORY[0x277D01F70]);
            v39 = [v31 senderIdentifier];
            v40 = [v31 dateSent];
            v41 = [v38 initWithText:v37 senderID:v39 timestamp:v40];

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

+ (id)_rawStringsForMessages:(id)a3 excludingTapBacks:(BOOL)a4
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__PREResponsesExperiment__rawStringsForMessages_excludingTapBacks___block_invoke;
  v6[3] = &__block_descriptor_33_e49___NSString_16__0__PREResponsesExperimentMessage_8l;
  v7 = a4;
  v4 = [a3 _pas_mappedArrayWithTransform:v6];

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