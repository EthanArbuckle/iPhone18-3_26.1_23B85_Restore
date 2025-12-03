@interface PSGInputSuggesterClient
+ (BOOL)_allowSingleCharacterContactsAutocompleteTriggerForLanguage:(id)language;
+ (BOOL)_shouldGenerateWordBoundaryPredictionsForContext:(id)context localeIdentifier:(id)identifier;
+ (BOOL)_zkwItemsContainsOnlyTextualResponses:(id)responses;
+ (PSGInputSuggesterClient)sharedInstance;
+ (id)_getContactsAutocompleteItemForQueryField:(id)field searchTerm:(id)term localeIdentifier:(id)identifier;
+ (id)_getQueryFieldFromTextContentType:(id)type;
- (PSGInputSuggesterClient)init;
- (PSGInputSuggesterClient)initWithStructuredInfoCache:(id)cache;
- (id)_appConnectionTriggerForTextContentType:(id)type;
- (id)_cachedStructuredSuggestionsForContext:(id)context localeIdentifier:(id)identifier maxSuggestions:(unint64_t)suggestions;
- (id)_combineMLAndRKItems:(id)items mlItems:(id)mlItems;
- (id)_fillSuggestionsForResponseItems:(id)items localeIdentifier:(id)identifier recipients:(id)recipients recipientNames:(id)names bundleIdentifier:(id)bundleIdentifier timeoutSeconds:(double)seconds structuredInfoFetchLimit:(unint64_t)limit availableApps:(id)self0 textualResponseLimit:(unint64_t)self1 structuredInfoLimit:(unint64_t)self2 totalSuggestionsLimit:(unint64_t)self3 explanationSet:(id)self4 error:(id *)self5;
- (id)_getFTLinkShareTrigger;
- (id)_getWordBoundaryResultForRequest:(id)request explanationSet:(id)set;
- (id)_getZKWResultsForRequest:(id)request explanationSet:(id)set;
- (id)_logTriggerForItems:(id)items request:(id)request;
- (id)_maybeModifyTrigger:(id)trigger bundleIdentifier:(id)identifier;
- (id)_rewriteMoneyAttributes:(id)attributes;
- (id)_rkResponsesForContext:(id)context conversationTurns:(id)turns languageID:(id)d maximumResponses:(unint64_t)responses shouldDisableAutoCaps:(BOOL)caps adaptationContextID:(id)iD;
- (id)_textualSuggestionsAndTriggersForRequest:(id)request explanationSet:(id)set;
- (id)_wordBoundaryPredictionsForContext:(id)context localeIdentifier:(id)identifier textContentType:(id)type recipientNames:(id)names availableApps:(id)apps request:(id)request explanationSet:(id)set;
- (void)inputSuggestionsWithRequest:(id)request completion:(id)completion;
- (void)logEngagement:(id)engagement request:(id)request position:(unint64_t)position;
- (void)logImpression:(id)impression request:(id)request;
- (void)logPrediction:(id)prediction request:(id)request latencyMillis:(double)millis;
- (void)logTrigger:(id)trigger request:(id)request;
- (void)warmUpWithCompletion:(id)completion;
@end

@implementation PSGInputSuggesterClient

- (void)warmUpWithCompletion:(id)completion
{
  completionCopy = completion;
  _remoteObjectProxy = [(PSGInputSuggesterClient *)self _remoteObjectProxy];
  [_remoteObjectProxy warmUpWithCompletion:completionCopy];
}

- (id)_logTriggerForItems:(id)items request:(id)request
{
  v24 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  requestCopy = request;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = itemsCopy;
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

        v13 = *(*(&v19 + 1) + 8 * i);
        structuredInfoSuggestion = [v13 structuredInfoSuggestion];

        if (structuredInfoSuggestion)
        {
          structuredInfoSuggestion2 = [v13 structuredInfoSuggestion];
          proactiveTrigger = [structuredInfoSuggestion2 proactiveTrigger];

          if (proactiveTrigger)
          {
            [(PSGInputSuggesterClient *)self logTrigger:proactiveTrigger request:requestCopy];
            goto LABEL_12;
          }
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

  proactiveTrigger = 0;
LABEL_12:

  v17 = *MEMORY[0x277D85DE8];

  return proactiveTrigger;
}

- (void)logEngagement:(id)engagement request:(id)request position:(unint64_t)position
{
  requestCopy = request;
  engagementCopy = engagement;
  _remoteObjectProxy = [(PSGInputSuggesterClient *)self _remoteObjectProxy];
  [_remoteObjectProxy logEngagement:engagementCopy request:requestCopy position:position];
}

- (void)logImpression:(id)impression request:(id)request
{
  requestCopy = request;
  impressionCopy = impression;
  _remoteObjectProxy = [(PSGInputSuggesterClient *)self _remoteObjectProxy];
  [_remoteObjectProxy logImpression:impressionCopy request:requestCopy];
}

- (void)logPrediction:(id)prediction request:(id)request latencyMillis:(double)millis
{
  requestCopy = request;
  predictionCopy = prediction;
  _remoteObjectProxy = [(PSGInputSuggesterClient *)self _remoteObjectProxy];
  [_remoteObjectProxy logPrediction:predictionCopy request:requestCopy latencyMillis:millis];
}

- (void)logTrigger:(id)trigger request:(id)request
{
  requestCopy = request;
  triggerCopy = trigger;
  _remoteObjectProxy = [(PSGInputSuggesterClient *)self _remoteObjectProxy];
  [_remoteObjectProxy logTrigger:triggerCopy request:requestCopy];
}

- (void)inputSuggestionsWithRequest:(id)request completion:(id)completion
{
  v92 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  completionCopy = completion;
  v8 = psg_default_log_handle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_260D18000, v8, OS_LOG_TYPE_DEBUG, "[Client] inputSuggestionsWithRequest called", buf, 2u);
  }

  if (inputSuggestionsWithRequest_completion__onceToken != -1)
  {
    dispatch_once(&inputSuggestionsWithRequest_completion__onceToken, &__block_literal_global_125);
  }

  v83 = mach_absolute_time();
  localeIdentifier = [requestCopy localeIdentifier];
  v10 = localeIdentifier;
  if (localeIdentifier)
  {
    localeIdentifier2 = localeIdentifier;
  }

  else
  {
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    localeIdentifier2 = [currentLocale localeIdentifier];
  }

  v13 = +[PSGUtilities sharedInstance];
  v14 = [v13 prewarmCacheForLocale:localeIdentifier2 usingQueue:inputSuggestionsWithRequest_completion__prewarmQueue];

  v15 = objc_opt_new();
  textContentType = [requestCopy textContentType];
  v17 = [textContentType length];

  if (v17)
  {
    contextBeforeInput = psg_default_log_handle();
    if (os_log_type_enabled(contextBeforeInput, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_260D18000, contextBeforeInput, OS_LOG_TYPE_DEBUG, "Skip prefix-based structured info cache lookup for tagged text field.", buf, 2u);
    }

    v19 = 0;
  }

  else
  {
    contextBeforeInput = [requestCopy contextBeforeInput];
    localeIdentifier3 = [requestCopy localeIdentifier];
    v19 = -[PSGInputSuggesterClient _cachedStructuredSuggestionsForContext:localeIdentifier:maxSuggestions:](self, "_cachedStructuredSuggestionsForContext:localeIdentifier:maxSuggestions:", contextBeforeInput, localeIdentifier3, [requestCopy structuredInfoLimit]);
  }

  v21 = [v19 count];
  v22 = psg_default_log_handle();
  v23 = v22;
  selfCopy = self;
  if (v21)
  {
    v24 = -1.0;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v25 = [v19 count];
      *buf = 134217984;
      v89 = *&v25;
      _os_log_impl(&dword_260D18000, v23, OS_LOG_TYPE_INFO, "Got %tu item(s) from structured suggestions cache", buf, 0xCu);
    }

    v26 = 0;
    v27 = 0xFFFFFFFFLL;
    v28 = -1.0;
  }

  else
  {
    v80 = v14;
    v81 = localeIdentifier2;
    v79 = completionCopy;
    v29 = os_signpost_id_generate(v22);

    v30 = psg_default_log_handle();
    v31 = v30;
    if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_260D18000, v31, OS_SIGNPOST_INTERVAL_BEGIN, v29, "PSGInputSuggesterClient_inputSuggestionsWithRequest_triggering", &unk_260D2DE82, buf, 2u);
    }

    v32 = mach_absolute_time();
    v33 = [(PSGInputSuggesterClient *)self _textualSuggestionsAndTriggersForRequest:requestCopy explanationSet:v15];

    v28 = *&inputSuggestionsWithRequest_completion__timeMillisMultiplier * (mach_absolute_time() - v32);
    v34 = psg_default_log_handle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v89 = v28;
      _os_log_debug_impl(&dword_260D18000, v34, OS_LOG_TYPE_DEBUG, "[Client] Triggering time: %.1f ms", buf, 0xCu);
    }

    v35 = psg_default_log_handle();
    v36 = v35;
    if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_260D18000, v36, OS_SIGNPOST_INTERVAL_END, v29, "PSGInputSuggesterClient_inputSuggestionsWithRequest_triggering", &unk_260D2DE82, buf, 2u);
    }

    v78 = [v33 count];
    v37 = psg_default_log_handle();
    v38 = os_signpost_id_generate(v37);

    v39 = psg_default_log_handle();
    v40 = v39;
    v41 = v38 - 1;
    if (v38 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v39))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_260D18000, v40, OS_SIGNPOST_INTERVAL_BEGIN, v38, "PSGInputSuggesterClient_inputSuggestionsWithRequest_serving", &unk_260D2DE82, buf, 2u);
    }

    v42 = [v33 count];
    v43 = psg_default_log_handle();
    v44 = v43;
    v14 = v80;
    spid = v38;
    if (v42)
    {
      v75 = v38 - 1;
      v77 = v15;
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        v45 = [v33 count];
        *buf = 134217984;
        v89 = *&v45;
        _os_log_impl(&dword_260D18000, v44, OS_LOG_TYPE_DEFAULT, "[Client] Triggered %tu item(s)", buf, 0xCu);
      }

      v73 = [(PSGInputSuggesterClient *)self _logTriggerForItems:v33 request:requestCopy];
      v74 = mach_absolute_time();
      textContentType2 = [requestCopy textContentType];
      v47 = [textContentType2 length];

      structuredInfoLimit = [requestCopy structuredInfoLimit];
      v49 = 100;
      if (v47)
      {
        v50 = 0.5;
      }

      else
      {
        v49 = 10;
        v50 = 0.2;
      }

      if (v49 <= structuredInfoLimit)
      {
        v51 = structuredInfoLimit;
      }

      else
      {
        v51 = v49;
      }

      recipients = [requestCopy recipients];
      recipientNames = [requestCopy recipientNames];
      bundleIdentifier = [requestCopy bundleIdentifier];
      availableApps = [requestCopy availableApps];
      selfCopy2 = self;
      textualResponseLimit = [requestCopy textualResponseLimit];
      structuredInfoLimit2 = [requestCopy structuredInfoLimit];
      v87 = 0;
      totalSuggestionsLimit = [requestCopy totalSuggestionsLimit];
      v59 = selfCopy2;
      v15 = v77;
      v23 = [(PSGInputSuggesterClient *)v59 _fillSuggestionsForResponseItems:v33 localeIdentifier:v81 recipients:recipients recipientNames:recipientNames bundleIdentifier:bundleIdentifier timeoutSeconds:v51 structuredInfoFetchLimit:v50 availableApps:availableApps textualResponseLimit:textualResponseLimit structuredInfoLimit:structuredInfoLimit2 totalSuggestionsLimit:totalSuggestionsLimit explanationSet:v77 error:&v87];
      v26 = v87;

      v60 = (mach_absolute_time() - v74);
      v61 = *&inputSuggestionsWithRequest_completion__timeMillisMultiplier;
      if (v73 && [v77 count])
      {
        v84[0] = MEMORY[0x277D85DD0];
        v84[1] = 3221225472;
        v84[2] = __66__PSGInputSuggesterClient_inputSuggestionsWithRequest_completion___block_invoke_129;
        v84[3] = &unk_279ABD090;
        v84[4] = selfCopy;
        v85 = requestCopy;
        v86 = v73;
        [v77 enumerateExplanationCodeWithBlock:v84];
      }

      v24 = v61 * v60;
      v62 = psg_default_log_handle();
      completionCopy = v79;
      v14 = v80;
      v41 = v75;
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        v63 = [v23 count];
        *buf = 134218240;
        v89 = *&v63;
        v90 = 2048;
        v91 = v24;
        _os_log_impl(&dword_260D18000, v62, OS_LOG_TYPE_DEFAULT, "[Client] Predicted %tu item(s). Serving time: %.1f ms", buf, 0x16u);
      }
    }

    else
    {
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_260D18000, v44, OS_LOG_TYPE_DEBUG, "[Client] No triggering item.", buf, 2u);
      }

      v24 = -1.0;
      if (![v15 count])
      {
        [v15 pushInternalExplanationCode:5];
      }

      v26 = 0;
      v23 = v33;
      completionCopy = v79;
    }

    localeIdentifier2 = v81;
    v64 = psg_default_log_handle();
    v65 = v64;
    if (v41 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v64))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_260D18000, v65, OS_SIGNPOST_INTERVAL_END, spid, "PSGInputSuggesterClient_inputSuggestionsWithRequest_serving", &unk_260D2DE82, buf, 2u);
    }

    if (!v26)
    {
      v27 = v78;
      goto LABEL_56;
    }

    v66 = psg_default_log_handle();
    if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v89 = *&v26;
      _os_log_error_impl(&dword_260D18000, v66, OS_LOG_TYPE_ERROR, "[Client] error: %@", buf, 0xCu);
    }

    v19 = 0;
    v27 = v78;
  }

  v23 = v19;
LABEL_56:
  v67 = *&inputSuggestionsWithRequest_completion__timeMillisMultiplier * (mach_absolute_time() - v83);
  v68 = [[PSGInputSuggestionsResponse alloc] initWithResponseItems:v23 explanationSet:v15];
  [(PSGInputSuggestionsResponse *)v68 setTriggeringTimeMillis:v28];
  [(PSGInputSuggestionsResponse *)v68 setTriggeredItemsCount:v27];
  [(PSGInputSuggestionsResponse *)v68 setServingTimeMillis:v24];
  if (-[NSObject count](v23, "count") || ([v15 hasPETLoggingData] & 1) != 0)
  {
    [(PSGInputSuggesterClient *)selfCopy logPrediction:v68 request:requestCopy latencyMillis:v67];
  }

  else
  {
    v71 = psg_default_log_handle();
    if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_260D18000, v71, OS_LOG_TYPE_DEBUG, "[Client] Skip logging predictions due to empty item set and unworthy explanation set", buf, 2u);
    }
  }

  v69 = psg_default_log_handle();
  if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v89 = v67;
    _os_log_impl(&dword_260D18000, v69, OS_LOG_TYPE_DEFAULT, "[Client] Total prediction time: %.1f ms", buf, 0xCu);
  }

  completionCopy[2](completionCopy, v68, v26);
  if (v14)
  {
    dispatch_block_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
  }

  v70 = *MEMORY[0x277D85DE8];
}

uint64_t __66__PSGInputSuggesterClient_inputSuggestionsWithRequest_completion___block_invoke_129(uint64_t result, int a2)
{
  if (a2 == 1)
  {
    return [*(result + 32) logErrorForRequest:*(result + 40) trigger:*(result + 48) errorType:3];
  }

  return result;
}

void __66__PSGInputSuggesterClient_inputSuggestionsWithRequest_completion___block_invoke()
{
  info = 0;
  mach_timebase_info(&info);
  *&inputSuggestionsWithRequest_completion__timeMillisMultiplier = (info.numer / info.denom) * 0.000001;
  v0 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"PSG-label-prewarm" qosClass:9];
  v1 = inputSuggestionsWithRequest_completion__prewarmQueue;
  inputSuggestionsWithRequest_completion__prewarmQueue = v0;
}

- (id)_cachedStructuredSuggestionsForContext:(id)context localeIdentifier:(id)identifier maxSuggestions:(unint64_t)suggestions
{
  v27 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  identifierCopy = identifier;
  if ([contextCopy length] && objc_msgSend(identifierCopy, "length"))
  {
    v10 = [(PSGStructuredInfoSuggestionCache *)self->_structuredSuggestionCache searchWithContext:contextCopy localeIdentifier:identifierCopy maxSuggestions:suggestions];
    if ([v10 count])
    {
      v11 = objc_opt_new();
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v12 = v10;
      v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v23;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v23 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v22 + 1) + 8 * i);
            v18 = [PSGInputSuggestionsResponseItem alloc];
            v19 = [(PSGInputSuggestionsResponseItem *)v18 initWithTextualResponseSuggestion:0 structuredInfoSuggestion:v17, v22];
            [v11 addObject:v19];
          }

          v14 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v14);
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)_appConnectionTriggerForTextContentType:(id)type
{
  v13 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  if ([typeCopy length])
  {
    v4 = psg_default_log_handle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v11 = 138412290;
      v12 = typeCopy;
      _os_log_debug_impl(&dword_260D18000, v4, OS_LOG_TYPE_DEBUG, "Client creating an app connection trigger for tagged text field: %@", &v11, 0xCu);
    }

    v5 = objc_opt_new();
    [v5 setValue:@"triggerTypeConnections" forKey:*MEMORY[0x277D23050]];
    [v5 setValue:typeCopy forKey:@"textContentTypeTag"];
    v6 = [[PSGProactiveTrigger alloc] initWithSourceType:2 category:@"TaggedTextFieldMeCard" attributes:v5];
    v7 = [[PSGStructuredInfoSuggestion alloc] initWithProactiveTrigger:v6 portraitItem:0 operationalItem:0];
    v8 = [[PSGInputSuggestionsResponseItem alloc] initWithTextualResponseSuggestion:0 structuredInfoSuggestion:v7];
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)_textualSuggestionsAndTriggersForRequest:(id)request explanationSet:(id)set
{
  v27 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  setCopy = set;
  v8 = psg_default_log_handle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v23) = 0;
    _os_log_debug_impl(&dword_260D18000, v8, OS_LOG_TYPE_DEBUG, "Client called to _textualSuggestionsAndTriggersForRequest", &v23, 2u);
  }

  conversationTurns = [requestCopy conversationTurns];
  lastObject = [conversationTurns lastObject];

  if (lastObject && ([lastObject senderID], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "length"), v11, !v12))
  {
    v16 = psg_default_log_handle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v23) = 0;
      _os_log_debug_impl(&dword_260D18000, v16, OS_LOG_TYPE_DEBUG, "[Client] Not returning responses because the last conversation turn has an ambiguous sender", &v23, 2u);
    }

    v17 = 0;
  }

  else
  {
    v13 = [(_PASLRUCache *)self->_triggeringCache objectForKey:requestCopy];
    if (v13)
    {
      v14 = v13;
      v15 = psg_default_log_handle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v21 = [v14 count];
        v23 = 134218242;
        v24 = v21;
        v25 = 2112;
        v26 = v14;
        _os_log_debug_impl(&dword_260D18000, v15, OS_LOG_TYPE_DEBUG, "[Client] returning from triggeringCache (%tu): %@", &v23, 0x16u);
      }
    }

    else
    {
      if ([requestCopy isDocumentEmpty])
      {
        [(PSGInputSuggesterClient *)self _getZKWResultsForRequest:requestCopy explanationSet:setCopy];
      }

      else
      {
        [(PSGInputSuggesterClient *)self _getWordBoundaryResultForRequest:requestCopy explanationSet:setCopy];
      }
      v14 = ;
      v18 = psg_default_log_handle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v22 = [v14 count];
        v23 = 134218242;
        v24 = v22;
        v25 = 2112;
        v26 = v14;
        _os_log_debug_impl(&dword_260D18000, v18, OS_LOG_TYPE_DEBUG, "[Client] got %tu textual suggestions or triggers: %@", &v23, 0x16u);
      }

      if ([v14 count] || (objc_msgSend(setCopy, "hasTriggeringXPCTimeout") & 1) == 0)
      {
        [(_PASLRUCache *)self->_triggeringCache setObject:v14 forKey:requestCopy];
      }
    }

    v16 = v14;
    v17 = v16;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)_getWordBoundaryResultForRequest:(id)request explanationSet:(id)set
{
  requestCopy = request;
  setCopy = set;
  contextBeforeInput = [requestCopy contextBeforeInput];

  if (contextBeforeInput)
  {
    contextBeforeInput2 = [requestCopy contextBeforeInput];
    localeIdentifier = [requestCopy localeIdentifier];
    textContentType = [requestCopy textContentType];
    recipientNames = [requestCopy recipientNames];
    availableApps = [requestCopy availableApps];
    v14 = [(PSGInputSuggesterClient *)self _wordBoundaryPredictionsForContext:contextBeforeInput2 localeIdentifier:localeIdentifier textContentType:textContentType recipientNames:recipientNames availableApps:availableApps request:requestCopy explanationSet:setCopy];
  }

  else
  {
    v15 = psg_default_log_handle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_260D18000, v15, OS_LOG_TYPE_DEFAULT, "Client document isn't empty, but no context before input", buf, 2u);
    }

    v14 = 0;
  }

  return v14;
}

- (id)_getZKWResultsForRequest:(id)request explanationSet:(id)set
{
  v50 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  setCopy = set;
  responseContext = [requestCopy responseContext];
  textContentType = [requestCopy textContentType];
  if (![responseContext length] && !objc_msgSend(textContentType, "length"))
  {
    v7 = psg_default_log_handle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_260D18000, v7, OS_LOG_TYPE_INFO, "[ZKW] Response context and content type are both empty.", buf, 2u);
    }
  }

  v8 = psg_default_log_handle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [responseContext length];
    localeIdentifier = [requestCopy localeIdentifier];
    *buf = 134218498;
    *&buf[4] = v9;
    *&buf[12] = 2112;
    *&buf[14] = textContentType;
    *&buf[22] = 2112;
    v47 = localeIdentifier;
    _os_log_impl(&dword_260D18000, v8, OS_LOG_TYPE_INFO, "Response context length: %tu, text content type: %@, locale: %@", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v47 = __Block_byref_object_copy__697;
  v48 = __Block_byref_object_dispose__698;
  v49 = 0;
  if (![responseContext length] && (objc_msgSend(requestCopy, "conversationTurns"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "count") == 0, v11, v12))
  {
    v23 = 0;
  }

  else
  {
    v13 = dispatch_semaphore_create(0);
    _remoteObjectProxy = [(PSGInputSuggesterClient *)self _remoteObjectProxy];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __67__PSGInputSuggesterClient__getZKWResultsForRequest_explanationSet___block_invoke;
    v40[3] = &unk_279ABD028;
    v42 = buf;
    v15 = v13;
    v41 = v15;
    [_remoteObjectProxy inputSuggestionsWithRequest:requestCopy completion:v40];

    bundleIdentifier = [requestCopy bundleIdentifier];
    responseKitConversationTurns = [requestCopy responseKitConversationTurns];
    localeIdentifier2 = [requestCopy localeIdentifier];
    adaptationContextID = [requestCopy adaptationContextID];
    shouldDisableAutoCaps = [requestCopy shouldDisableAutoCaps];
    textualResponseLimit = [requestCopy textualResponseLimit];
    structuredInfoLimit = [requestCopy structuredInfoLimit];
    LOBYTE(v36) = [requestCopy isResponseContextBlacklisted];
    v23 = [(PSGInputSuggesterClient *)self _responseKitPredictionsForContext:responseContext bundleIdentifier:bundleIdentifier conversationTurns:responseKitConversationTurns languageID:localeIdentifier2 adaptationContextID:adaptationContextID shouldDisableAutoCaps:shouldDisableAutoCaps maximumResponses:structuredInfoLimit + textualResponseLimit isBlacklisted:v36];

    if ([MEMORY[0x277D425A0] waitForSemaphore:v15 timeoutSeconds:0.1] == 1)
    {
      v24 = psg_default_log_handle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *v44 = 134217984;
        v45 = 0x3FB999999999999ALL;
        _os_log_impl(&dword_260D18000, v24, OS_LOG_TYPE_DEFAULT, "[ZKW] timed out trying to fetch ML results (threshold: %.3f s)", v44, 0xCu);
      }

      [(PSGInputSuggesterClient *)self logErrorForRequest:requestCopy trigger:0 errorType:2];
      [setCopy pushInternalExplanationCode:7];
    }
  }

  if ([textContentType length] && (objc_msgSend(requestCopy, "textContentType"), v25 = objc_claimAutoreleasedReturnValue(), -[PSGInputSuggesterClient _appConnectionTriggerForTextContentType:](self, "_appConnectionTriggerForTextContentType:", v25), v26 = objc_claimAutoreleasedReturnValue(), v25, v26))
  {
    v43 = v26;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:1];
    v28 = [(PSGInputSuggesterClient *)self _combineMLAndRKItems:v23 mlItems:*(*&buf[8] + 40)];
    if (v28)
    {
      v29 = [v27 arrayByAddingObjectsFromArray:v28];

      v27 = v29;
    }
  }

  else
  {
    v27 = [(PSGInputSuggesterClient *)self _combineMLAndRKItems:v23 mlItems:*(*&buf[8] + 40)];
    v26 = 0;
  }

  if ([responseContext length] || !objc_msgSend(objc_opt_class(), "_zkwItemsContainsOnlyTextualResponses:", v27))
  {
    v32 = psg_default_log_handle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      v35 = [v27 count];
      *v44 = 134217984;
      v45 = v35;
      _os_log_debug_impl(&dword_260D18000, v32, OS_LOG_TYPE_DEBUG, "[ZKW] %tu zkw item(s)", v44, 0xCu);
    }

    v31 = v27;
  }

  else
  {
    v30 = psg_default_log_handle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      *v44 = 0;
      _os_log_impl(&dword_260D18000, v30, OS_LOG_TYPE_INFO, "[ZKW] Not providing responses for outgoing turns because there are no structured items", v44, 2u);
    }

    v31 = 0;
  }

  _Block_object_dispose(buf, 8);
  v33 = *MEMORY[0x277D85DE8];

  return v31;
}

void __67__PSGInputSuggesterClient__getZKWResultsForRequest_explanationSet___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = psg_default_log_handle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      v14 = v6;
      _os_log_error_impl(&dword_260D18000, v7, OS_LOG_TYPE_ERROR, "[ZKW] Error from triggering XPC: %@", &v13, 0xCu);
    }

LABEL_7:

    goto LABEL_8;
  }

  if (v5)
  {
    v8 = [v5 responseItems];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v7 = psg_default_log_handle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v12 = [*(*(*(a1 + 40) + 8) + 40) count];
      v13 = 134217984;
      v14 = v12;
      _os_log_debug_impl(&dword_260D18000, v7, OS_LOG_TYPE_DEBUG, "[ZKW] xpc call returned %tu ML item(s)", &v13, 0xCu);
    }

    goto LABEL_7;
  }

LABEL_8:
  dispatch_semaphore_signal(*(a1 + 32));

  v11 = *MEMORY[0x277D85DE8];
}

- (id)_combineMLAndRKItems:(id)items mlItems:(id)mlItems
{
  v46 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  mlItemsCopy = mlItems;
  v7 = psg_default_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218240;
    v43 = [itemsCopy count];
    v44 = 2048;
    v45 = [mlItemsCopy count];
    _os_log_debug_impl(&dword_260D18000, v7, OS_LOG_TYPE_DEBUG, "[Client] combining %tu rk item(s) & %tu ml item(s)", buf, 0x16u);
  }

  if ([mlItemsCopy count])
  {
    if ([itemsCopy count])
    {
      v35 = mlItemsCopy;
      v36 = itemsCopy;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v8 = itemsCopy;
      v9 = [v8 countByEnumeratingWithState:&v37 objects:v41 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v38;
        while (2)
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v38 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v37 + 1) + 8 * i);
            textualResponseSuggestion = [v13 textualResponseSuggestion];
            if (textualResponseSuggestion)
            {
              v15 = textualResponseSuggestion;
              textualResponseSuggestion2 = [v13 textualResponseSuggestion];
              responseCategory = [textualResponseSuggestion2 responseCategory];
              v18 = [responseCategory isEqualToString:@"QueryAlternative"];

              if (v18)
              {
                v24 = psg_default_log_handle();
                if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_260D18000, v24, OS_LOG_TYPE_INFO, "[Client] rk query alternative category found, discarding ml results", buf, 2u);
                }

                goto LABEL_29;
              }
            }

            structuredInfoSuggestion = [v13 structuredInfoSuggestion];
            if (structuredInfoSuggestion)
            {
              v20 = structuredInfoSuggestion;
              structuredInfoSuggestion2 = [v13 structuredInfoSuggestion];
              proactiveTrigger = [structuredInfoSuggestion2 proactiveTrigger];

              if (proactiveTrigger)
              {
                v24 = psg_default_log_handle();
                if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
                {
                  structuredInfoSuggestion3 = [v13 structuredInfoSuggestion];
                  proactiveTrigger2 = [structuredInfoSuggestion3 proactiveTrigger];
                  triggerAttributes = [proactiveTrigger2 triggerAttributes];
                  *buf = 138412290;
                  v43 = triggerAttributes;
                  _os_log_impl(&dword_260D18000, v24, OS_LOG_TYPE_INFO, "[Client] rk proactive trigger (%@) found, discarding ml results", buf, 0xCu);
                }

LABEL_29:
                mlItemsCopy = v35;
                itemsCopy = v36;

                v23 = psg_default_log_handle();
                if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
                {
                  v32 = [v8 count];
                  *buf = 134217984;
                  v43 = v32;
                  _os_log_debug_impl(&dword_260D18000, v23, OS_LOG_TYPE_DEBUG, "[Client] proactive trigger or alternative category is matched -- using rk results (%tu)", buf, 0xCu);
                }

                goto LABEL_31;
              }
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v37 objects:v41 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

      v23 = psg_default_log_handle();
      mlItemsCopy = v35;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        v34 = [v35 count];
        *buf = 134217984;
        v43 = v34;
        _os_log_debug_impl(&dword_260D18000, v23, OS_LOG_TYPE_DEBUG, "[Client] discarding rk responses and using ml results (%tu)", buf, 0xCu);
      }

      v8 = v35;
      itemsCopy = v36;
    }

    else
    {
      v23 = psg_default_log_handle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        v33 = [mlItemsCopy count];
        *buf = 134217984;
        v43 = v33;
        _os_log_debug_impl(&dword_260D18000, v23, OS_LOG_TYPE_DEBUG, "[Client] no rk responses and using ml results (%tu)", buf, 0xCu);
      }

      v8 = mlItemsCopy;
    }
  }

  else
  {
    v23 = psg_default_log_handle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v31 = [itemsCopy count];
      *buf = 134217984;
      v43 = v31;
      _os_log_debug_impl(&dword_260D18000, v23, OS_LOG_TYPE_DEBUG, "[Client] no ml items, returning rk results (%tu)", buf, 0xCu);
    }

    v8 = itemsCopy;
  }

LABEL_31:

  v28 = v8;
  v29 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)_wordBoundaryPredictionsForContext:(id)context localeIdentifier:(id)identifier textContentType:(id)type recipientNames:(id)names availableApps:(id)apps request:(id)request explanationSet:(id)set
{
  v67[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  identifierCopy = identifier;
  typeCopy = type;
  namesCopy = names;
  appsCopy = apps;
  requestCopy = request;
  setCopy = set;
  if (![contextCopy length] || !objc_msgSend(identifierCopy, "length"))
  {
    v20 = psg_default_log_handle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      *&buf[4] = [contextCopy length];
      *&buf[12] = 2112;
      *&buf[14] = identifierCopy;
      _os_log_impl(&dword_260D18000, v20, OS_LOG_TYPE_DEFAULT, "Tried to get word boundary predications but either locale or context were missing {context length: %tu locale: %@}", buf, 0x16u);
    }

    goto LABEL_31;
  }

  v19 = psg_default_log_handle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218754;
    *&buf[4] = [contextCopy length];
    *&buf[12] = 2112;
    *&buf[14] = identifierCopy;
    *&buf[22] = 2048;
    v64 = [namesCopy count];
    LOWORD(v65) = 2112;
    *(&v65 + 2) = typeCopy;
    _os_log_impl(&dword_260D18000, v19, OS_LOG_TYPE_DEFAULT, "Context length: %tu, locale: %@, recipientNames count: %tu, textContentType: %@", buf, 0x2Au);
  }

  if (![namesCopy count])
  {
LABEL_13:
    v20 = [objc_opt_class() _getQueryFieldFromTextContentType:typeCopy];
    if (v20)
    {
      v27 = objc_autoreleasePoolPush();
      whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
      v29 = [contextCopy stringByTrimmingCharactersInSet:whitespaceCharacterSet];
      v30 = [v29 stringByReplacingOccurrencesOfString:@"​" withString:&stru_287343650];

      objc_autoreleasePoolPop(v27);
      if ([v30 length])
      {
        v31 = [objc_opt_class() _getContactsAutocompleteItemForQueryField:v20 searchTerm:v30 localeIdentifier:identifierCopy];
        v32 = v31;
        if (v31)
        {
          v66 = v31;
          v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v66 count:1];

          goto LABEL_32;
        }
      }
    }

    else
    {
      v30 = psg_default_log_handle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        *&buf[4] = typeCopy;
        _os_log_debug_impl(&dword_260D18000, v30, OS_LOG_TYPE_DEBUG, "Unsupported textContentType for Keyboard Contacts Autocomplete: %@", buf, 0xCu);
      }
    }

    if ([typeCopy length])
    {
      v33 = psg_default_log_handle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_260D18000, v33, OS_LOG_TYPE_DEBUG, "Word boundary prediction disabled for tagged text field", buf, 2u);
      }

LABEL_30:

LABEL_31:
      v26 = 0;
      goto LABEL_32;
    }

    if (([objc_opt_class() _shouldGenerateWordBoundaryPredictionsForContext:contextCopy localeIdentifier:identifierCopy] & 1) == 0)
    {
      v33 = psg_default_log_handle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_260D18000, v33, OS_LOG_TYPE_DEBUG, "Word boundary prediction disabled by _shouldGenerate check", buf, 2u);
      }

      goto LABEL_30;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v64 = __Block_byref_object_copy__697;
    *&v65 = __Block_byref_object_dispose__698;
    *(&v65 + 1) = 0;
    v34 = dispatch_semaphore_create(0);
    _remoteObjectProxy = [(PSGInputSuggesterClient *)self _remoteObjectProxy];
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __147__PSGInputSuggesterClient__wordBoundaryPredictionsForContext_localeIdentifier_textContentType_recipientNames_availableApps_request_explanationSet___block_invoke;
    v55[3] = &unk_279ABD028;
    v57 = buf;
    v36 = v34;
    v56 = v36;
    [_remoteObjectProxy inputSuggestionsWithRequest:requestCopy completion:v55];

    v50 = +[PSGWordBoundaryFSTGrammar sharedInstance];
    v37 = [v50 triggerAttributesForContext:contextCopy localeIdentifier:identifierCopy];
    bundleIdentifier = [requestCopy bundleIdentifier];
    v51 = [(PSGInputSuggesterClient *)self _maybeModifyTrigger:v37 bundleIdentifier:bundleIdentifier];

    if (v51)
    {
      v49 = [[PSGProactiveTrigger alloc] initWithSourceType:0 category:@"LMWordBoundaryTriggerCategory" attributes:v51];
      v39 = [[PSGStructuredInfoSuggestion alloc] initWithProactiveTrigger:v49 portraitItem:0 operationalItem:0];
      v40 = [[PSGInputSuggestionsResponseItem alloc] initWithTextualResponseSuggestion:0 structuredInfoSuggestion:v39];
      v41 = psg_default_log_handle();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        *v59 = 138412546;
        v60 = v51;
        v61 = 2112;
        v62 = v40;
        _os_log_impl(&dword_260D18000, v41, OS_LOG_TYPE_INFO, "Word-boundary trigger: %@ returning response item with proactive trigger %@", v59, 0x16u);
      }

      v58 = v40;
      v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v58 count:1];
    }

    else
    {
      if ([MEMORY[0x277D425A0] waitForSemaphore:v36 timeoutSeconds:0.1] == 1)
      {
        v44 = psg_default_log_handle();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          *v59 = 134217984;
          v60 = 0x3FB999999999999ALL;
          _os_log_impl(&dword_260D18000, v44, OS_LOG_TYPE_DEFAULT, "[WordBoundary] Timed out trying to fetch ml results (threshold: %.3f s)", v59, 0xCu);
        }

        [(PSGInputSuggesterClient *)self logErrorForRequest:requestCopy trigger:0 errorType:1];
        [setCopy pushInternalExplanationCode:7];
      }

      else
      {
        v45 = [*(*&buf[8] + 40) count];
        v46 = psg_default_log_handle();
        v47 = os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG);
        if (v45)
        {
          if (v47)
          {
            v48 = [*(*&buf[8] + 40) count];
            *v59 = 134217984;
            v60 = v48;
            _os_log_debug_impl(&dword_260D18000, v46, OS_LOG_TYPE_DEBUG, "[WordBoundary] No results from fst grammar but has %tu ML item(s)", v59, 0xCu);
          }

          v26 = *(*&buf[8] + 40);
          goto LABEL_47;
        }

        if (v47)
        {
          *v59 = 0;
          _os_log_debug_impl(&dword_260D18000, v46, OS_LOG_TYPE_DEBUG, "[WordBoundary] No results from either FST or ML", v59, 2u);
        }
      }

      v26 = 0;
    }

LABEL_47:

    _Block_object_dispose(buf, 8);
    goto LABEL_32;
  }

  v20 = +[PSGNameMentionsHandler sharedInstance];
  v21 = objc_autoreleasePoolPush();
  v22 = [v20 getNameMentionsTriggerForContext:contextCopy recipientNames:namesCopy availableApps:appsCopy localeIdentifier:identifierCopy explanationSet:setCopy];
  objc_autoreleasePoolPop(v21);
  if (!v22)
  {

    goto LABEL_13;
  }

  v23 = [[PSGStructuredInfoSuggestion alloc] initWithProactiveTrigger:v22 portraitItem:0 operationalItem:0];
  v24 = [[PSGInputSuggestionsResponseItem alloc] initWithTextualResponseSuggestion:0 structuredInfoSuggestion:v23];
  v25 = psg_default_log_handle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_260D18000, v25, OS_LOG_TYPE_DEFAULT, "Returning NameMentions trigger", buf, 2u);
  }

  v67[0] = v24;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:1];

LABEL_32:
  v42 = *MEMORY[0x277D85DE8];

  return v26;
}

void __147__PSGInputSuggesterClient__wordBoundaryPredictionsForContext_localeIdentifier_textContentType_recipientNames_availableApps_request_explanationSet___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = psg_default_log_handle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      v14 = v6;
      _os_log_error_impl(&dword_260D18000, v7, OS_LOG_TYPE_ERROR, "[WordBoundary] Error from triggering XPC: %@", &v13, 0xCu);
    }
  }

  else
  {
    if (!v5)
    {
      goto LABEL_5;
    }

    v9 = [v5 responseItems];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    v7 = psg_default_log_handle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v12 = *(*(*(a1 + 40) + 8) + 40);
      v13 = 138412290;
      v14 = v12;
      _os_log_impl(&dword_260D18000, v7, OS_LOG_TYPE_INFO, "Client word boundary ml items %@", &v13, 0xCu);
    }
  }

LABEL_5:
  dispatch_semaphore_signal(*(a1 + 32));

  v8 = *MEMORY[0x277D85DE8];
}

- (id)_maybeModifyTrigger:(id)trigger bundleIdentifier:(id)identifier
{
  triggerCopy = trigger;
  identifierCopy = identifier;
  if (_maybeModifyTrigger_bundleIdentifier___pasOnceToken14 != -1)
  {
    dispatch_once(&_maybeModifyTrigger_bundleIdentifier___pasOnceToken14, &__block_literal_global_91);
  }

  v8 = _maybeModifyTrigger_bundleIdentifier___pasExprOnceResult;
  _getFTLinkShareTrigger = [(PSGInputSuggesterClient *)self _getFTLinkShareTrigger];
  v10 = [triggerCopy isEqualToDictionary:_getFTLinkShareTrigger];

  if (v10 && [identifierCopy length] && objc_msgSend(v8, "containsObject:", identifierCopy))
  {
    v11 = psg_default_log_handle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *v14 = 0;
      _os_log_impl(&dword_260D18000, v11, OS_LOG_TYPE_INFO, "PSGClient: FT Link share suppressed for Messages app.", v14, 2u);
    }

    v12 = 0;
  }

  else
  {
    v12 = triggerCopy;
  }

  return v12;
}

void __64__PSGInputSuggesterClient__maybeModifyTrigger_bundleIdentifier___block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_autoreleasePoolPush();
  v2 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"com.apple.MobileSMS", @"com.apple.MobileSMS.MessagesNotificationExtension", 0}];
  objc_autoreleasePoolPop(v1);
  v3 = _maybeModifyTrigger_bundleIdentifier___pasExprOnceResult;
  _maybeModifyTrigger_bundleIdentifier___pasExprOnceResult = v2;

  objc_autoreleasePoolPop(v0);
}

- (id)_getFTLinkShareTrigger
{
  if (_getFTLinkShareTrigger__pasOnceToken11 != -1)
  {
    dispatch_once(&_getFTLinkShareTrigger__pasOnceToken11, &__block_literal_global_88);
  }

  v3 = _getFTLinkShareTrigger__pasExprOnceResult;

  return v3;
}

void __49__PSGInputSuggesterClient__getFTLinkShareTrigger__block_invoke()
{
  v8[3] = *MEMORY[0x277D85DE8];
  v0 = objc_autoreleasePoolPush();
  v1 = *MEMORY[0x277D23058];
  v2 = *MEMORY[0x277D23028];
  v7[0] = *MEMORY[0x277D23050];
  v7[1] = v2;
  v3 = *MEMORY[0x277D22F58];
  v8[0] = v1;
  v8[1] = v3;
  v7[2] = *MEMORY[0x277D22F30];
  v8[2] = *MEMORY[0x277D22F10];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:3];
  v5 = _getFTLinkShareTrigger__pasExprOnceResult;
  _getFTLinkShareTrigger__pasExprOnceResult = v4;

  objc_autoreleasePoolPop(v0);
  v6 = *MEMORY[0x277D85DE8];
}

- (id)_fillSuggestionsForResponseItems:(id)items localeIdentifier:(id)identifier recipients:(id)recipients recipientNames:(id)names bundleIdentifier:(id)bundleIdentifier timeoutSeconds:(double)seconds structuredInfoFetchLimit:(unint64_t)limit availableApps:(id)self0 textualResponseLimit:(unint64_t)self1 structuredInfoLimit:(unint64_t)self2 totalSuggestionsLimit:(unint64_t)self3 explanationSet:(id)self4 error:(id *)self5
{
  infoLimitCopy3 = infoLimit;
  suggestionsLimitCopy3 = suggestionsLimit;
  v87 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  identifierCopy = identifier;
  recipientsCopy = recipients;
  namesCopy = names;
  bundleIdentifierCopy = bundleIdentifier;
  appsCopy = apps;
  setCopy = set;
  v55 = +[PSGProactiveTriggerHandler sharedInstance];
  v23 = objc_opt_new();
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v24 = itemsCopy;
  v64 = [v24 countByEnumeratingWithState:&v76 objects:v86 count:16];
  if (v64)
  {
    v25 = 0;
    v26 = 0;
    if (infoLimit >= suggestionsLimit)
    {
      infoLimitCopy2 = suggestionsLimit;
    }

    else
    {
      infoLimitCopy2 = infoLimit;
    }

    v62 = infoLimitCopy2;
    v63 = *v77;
    obj = v24;
    do
    {
      for (i = 0; i != v64; ++i)
      {
        if (*v77 != v63)
        {
          objc_enumerationMutation(obj);
        }

        structuredInfoSuggestion = [*(*(&v76 + 1) + 8 * i) structuredInfoSuggestion];
        if (structuredInfoSuggestion)
        {
          v67 = structuredInfoSuggestion;
          proactiveTrigger = [structuredInfoSuggestion proactiveTrigger];
          v31 = [v55 handleTrigger:proactiveTrigger localeIdentifier:identifierCopy bundleIdentifier:bundleIdentifierCopy recipients:recipientsCopy recipientNames:namesCopy availableApps:appsCopy timeoutSeconds:seconds fetchLimit:limit maxSuggestions:infoLimitCopy3 explanationSet:setCopy error:error];

          v74 = 0u;
          v75 = 0u;
          v72 = 0u;
          v73 = 0u;
          v32 = v31;
          v33 = [v32 countByEnumeratingWithState:&v72 objects:v85 count:16];
          if (v33)
          {
            v34 = v33;
            v35 = *v73;
            v36 = v26;
            while (2)
            {
              v37 = 0;
              v65 = v26;
              if (v62 >= v26)
              {
                v38 = v62 - v26;
              }

              else
              {
                v38 = 0;
              }

              do
              {
                if (*v73 != v35)
                {
                  objc_enumerationMutation(v32);
                }

                if (v38 == v37)
                {
                  v41 = v34 - 1;
                  if (v38 < v34 - 1)
                  {
                    v41 = v38;
                  }

                  v36 = v65 + v41;
                  goto LABEL_25;
                }

                v39 = *(*(&v72 + 1) + 8 * v37);
                v25 |= [v39 isApplePay];
                v40 = [[PSGInputSuggestionsResponseItem alloc] initWithTextualResponseSuggestion:0 structuredInfoSuggestion:v39];
                [v23 addObject:v40];
                ++v36;

                ++v37;
              }

              while (v34 != v37);
              v34 = [v32 countByEnumeratingWithState:&v72 objects:v85 count:16];
              v26 = v36;
              if (v34)
              {
                continue;
              }

              break;
            }
          }

          else
          {
            v36 = v26;
          }

LABEL_25:

          v26 = v36;
          infoLimitCopy3 = infoLimit;
          structuredInfoSuggestion = v67;
        }
      }

      v24 = obj;
      v64 = [obj countByEnumeratingWithState:&v76 objects:v86 count:16];
    }

    while (v64);

    if (!((v26 == 0) | v25 & 1))
    {
      v42 = psg_default_log_handle();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_260D18000, v42, OS_LOG_TYPE_DEBUG, "Non-ApplePay structured suggestion generated. Skipping textual ones.", buf, 2u);
      }

      goto LABEL_45;
    }

    suggestionsLimitCopy3 = suggestionsLimit;
  }

  else
  {

    v26 = 0;
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v42 = v24;
  v43 = [v42 countByEnumeratingWithState:&v68 objects:v84 count:16];
  if (!v43)
  {
LABEL_45:
    v45 = 0;
    goto LABEL_46;
  }

  v44 = v43;
  v66 = v26;
  v45 = 0;
  v46 = *v69;
  do
  {
    for (j = 0; j != v44; ++j)
    {
      if (*v69 != v46)
      {
        objc_enumerationMutation(v42);
      }

      v48 = *(*(&v68 + 1) + 8 * j);
      textualResponseSuggestion = [v48 textualResponseSuggestion];

      if (textualResponseSuggestion)
      {
        if (v45 >= responseLimit || [v23 count] >= suggestionsLimitCopy3)
        {
          goto LABEL_42;
        }

        [v23 addObject:v48];
        ++v45;
      }
    }

    v44 = [v42 countByEnumeratingWithState:&v68 objects:v84 count:16];
  }

  while (v44);
LABEL_42:
  v26 = v66;
LABEL_46:

  v50 = psg_default_log_handle();
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218240;
    v81 = v45;
    v82 = 2048;
    v83 = v26;
    _os_log_debug_impl(&dword_260D18000, v50, OS_LOG_TYPE_DEBUG, "[Client] Returning %tu textual and %tu structurd predictions", buf, 0x16u);
  }

  v51 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)_rewriteMoneyAttributes:(id)attributes
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D22FF8];
  v4 = [attributes objectForKey:*MEMORY[0x277D22FF8]];
  if ([v4 count])
  {
    v5 = [v4 objectForKey:*MEMORY[0x277D46C08]];
    if ([v5 count])
    {
      v29 = v4;
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      [dictionary setValue:*MEMORY[0x277D46C00] forKey:*MEMORY[0x277D23050]];
      dictionary2 = [MEMORY[0x277CBEB38] dictionary];
      array = [MEMORY[0x277CBEB18] array];
      [dictionary2 setValue:array forKey:@"Currency"];
      v26 = dictionary2;
      v27 = dictionary;
      [dictionary setValue:dictionary2 forKey:*v3];
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v28 = v5;
      v9 = v5;
      v10 = [v9 countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v31;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v31 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v30 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = MEMORY[0x277CBEB38];
              v16 = v14;
              dictionary3 = [v15 dictionary];
              currency = [v16 currency];
              [dictionary3 setObject:currency forKey:@"CurrencyType"];

              v19 = objc_alloc(MEMORY[0x277CCACA8]);
              [v16 value];
              v21 = v20;

              v22 = [v19 initWithFormat:@"%.2f", v21];
              [dictionary3 setObject:v22 forKey:@"CurrencyValue"];

              [array addObject:dictionary3];
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v30 objects:v34 count:16];
        }

        while (v11);
      }

      v5 = v28;
      v4 = v29;
      v23 = v27;
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)_rkResponsesForContext:(id)context conversationTurns:(id)turns languageID:(id)d maximumResponses:(unint64_t)responses shouldDisableAutoCaps:(BOOL)caps adaptationContextID:(id)iD
{
  capsCopy = caps;
  turnsCopy = turns;
  iDCopy = iD;
  if (capsCopy)
  {
    v15 = 704;
  }

  else
  {
    v15 = 576;
  }

  dCopy = d;
  contextCopy = context;
  v18 = [turnsCopy count];
  mEMORY[0x277D46BD8] = [MEMORY[0x277D46BD8] sharedManager];
  v20 = mEMORY[0x277D46BD8];
  if (v18)
  {
    [mEMORY[0x277D46BD8] responsesForMessage:contextCopy maximumResponses:responses forConversationHistory:turnsCopy withLanguage:dCopy options:v15];
  }

  else
  {
    [mEMORY[0x277D46BD8] responsesForMessage:contextCopy maximumResponses:responses forContext:iDCopy withLanguage:dCopy options:v15];
  }
  v21 = ;

  return v21;
}

- (PSGInputSuggesterClient)initWithStructuredInfoCache:(id)cache
{
  cacheCopy = cache;
  v15.receiver = self;
  v15.super_class = PSGInputSuggesterClient;
  v6 = [(PSGInputSuggesterClient *)&v15 init];
  if (v6)
  {
    v7 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287347F18];
    v8 = objc_alloc(MEMORY[0x277D42650]);
    v9 = psg_default_log_handle();
    v10 = [v8 initWithServiceName:@"com.apple.proactive.input.suggester" whitelistedServerInterface:v7 whitelistedClientInterface:0 serverInitiatedRequestHandler:0 interruptionHandler:&__block_literal_global_740 invalidationHandler:&__block_literal_global_57 logHandle:v9];
    clientHelper = v6->_clientHelper;
    v6->_clientHelper = v10;

    objc_storeStrong(&v6->_structuredSuggestionCache, cache);
    v12 = [objc_alloc(MEMORY[0x277D425D0]) initWithCountLimit:3];
    triggeringCache = v6->_triggeringCache;
    v6->_triggeringCache = v12;
  }

  return v6;
}

void __55__PSGInputSuggesterClient_initWithStructuredInfoCache___block_invoke_55()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = psg_default_log_handle();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    v2 = 138412290;
    v3 = @"com.apple.proactive.input.suggester";
    _os_log_impl(&dword_260D18000, v0, OS_LOG_TYPE_INFO, "Connection to %@ invalidated.", &v2, 0xCu);
  }

  v1 = *MEMORY[0x277D85DE8];
}

void __55__PSGInputSuggesterClient_initWithStructuredInfoCache___block_invoke()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = psg_default_log_handle();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    v2 = 138412290;
    v3 = @"com.apple.proactive.input.suggester";
    _os_log_error_impl(&dword_260D18000, v0, OS_LOG_TYPE_ERROR, "Connection to %@ interrupted.", &v2, 0xCu);
  }

  v1 = *MEMORY[0x277D85DE8];
}

- (PSGInputSuggesterClient)init
{
  v3 = +[PSGStructuredInfoSuggestionCache sharedInstance];
  v4 = [(PSGInputSuggesterClient *)self initWithStructuredInfoCache:v3];

  return v4;
}

+ (BOOL)_zkwItemsContainsOnlyTextualResponses:(id)responses
{
  v26 = *MEMORY[0x277D85DE8];
  responsesCopy = responses;
  v4 = psg_default_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_260D18000, v4, OS_LOG_TYPE_DEBUG, "Checking for any structured suggestions.", buf, 2u);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = responsesCopy;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        structuredInfoSuggestion = [v10 structuredInfoSuggestion];

        if (structuredInfoSuggestion)
        {
          v13 = psg_default_log_handle();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            structuredInfoSuggestion2 = [v10 structuredInfoSuggestion];
            proactiveTrigger = [structuredInfoSuggestion2 proactiveTrigger];
            triggerCategory = [proactiveTrigger triggerCategory];
            *buf = 138412290;
            v24 = triggerCategory;
            _os_log_debug_impl(&dword_260D18000, v13, OS_LOG_TYPE_DEBUG, "--- found one of category: %@", buf, 0xCu);
          }

          v12 = 0;
          goto LABEL_15;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v25 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v12 = 1;
LABEL_15:

  v14 = *MEMORY[0x277D85DE8];
  return v12;
}

+ (id)_getContactsAutocompleteItemForQueryField:(id)field searchTerm:(id)term localeIdentifier:(id)identifier
{
  v24 = *MEMORY[0x277D85DE8];
  fieldCopy = field;
  termCopy = term;
  identifierCopy = identifier;
  decimalDigitCharacterSet = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
  if ([termCopy rangeOfCharacterFromSet:decimalDigitCharacterSet options:0 range:{0, 1}] == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([termCopy length] != 1)
    {
LABEL_5:
      v20[0] = *MEMORY[0x277D23050];
      v20[1] = @"SearchField";
      v21[0] = @"ContactsAutocomplete";
      v21[1] = fieldCopy;
      v20[2] = @"SearchTerm";
      v21[2] = termCopy;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:3];
      v14 = [[PSGProactiveTrigger alloc] initWithSourceType:2 category:@"TaggedTextFieldContactsAutocomplete" attributes:v13];
      v15 = [[PSGStructuredInfoSuggestion alloc] initWithProactiveTrigger:v14 portraitItem:0 operationalItem:0];
      v16 = [[PSGInputSuggestionsResponseItem alloc] initWithTextualResponseSuggestion:0 structuredInfoSuggestion:v15];

      goto LABEL_12;
    }

    v12 = [MEMORY[0x277CBEAF8] componentsFromLocaleIdentifier:identifierCopy];
    v13 = [v12 objectForKeyedSubscript:*MEMORY[0x277CBE6C8]];

    if ([self _allowSingleCharacterContactsAutocompleteTriggerForLanguage:v13])
    {

      goto LABEL_5;
    }

    v17 = psg_default_log_handle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v23 = identifierCopy;
      _os_log_debug_impl(&dword_260D18000, v17, OS_LOG_TYPE_DEBUG, "Single character SearchTerm for locale %@. Suppress ContactsAutocomplete trigger.", buf, 0xCu);
    }
  }

  else
  {
    v13 = psg_default_log_handle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_260D18000, v13, OS_LOG_TYPE_DEBUG, "SearchTerm starts with a digit. Suppress ContactsAutocomplete trigger.", buf, 2u);
    }
  }

  v16 = 0;
LABEL_12:

  v18 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (BOOL)_allowSingleCharacterContactsAutocompleteTriggerForLanguage:(id)language
{
  languageCopy = language;
  if ([languageCopy hasPrefix:@"zh"] & 1) != 0 || (objc_msgSend(languageCopy, "isEqualToString:", @"ko"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [languageCopy isEqualToString:@"ja"];
  }

  return v4;
}

+ (id)_getQueryFieldFromTextContentType:(id)type
{
  typeCopy = type;
  if (_getQueryFieldFromTextContentType__once != -1)
  {
    dispatch_once(&_getQueryFieldFromTextContentType__once, &__block_literal_global_111);
  }

  if ([typeCopy length])
  {
    v4 = [_getQueryFieldFromTextContentType__map objectForKeyedSubscript:typeCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __61__PSGInputSuggesterClient__getQueryFieldFromTextContentType___block_invoke()
{
  v4[3] = *MEMORY[0x277D85DE8];
  v3[0] = @"tel";
  v3[1] = @"email";
  v4[0] = &unk_287345508;
  v4[1] = &unk_287345520;
  v3[2] = @"street-address";
  v4[2] = &unk_287345538;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:3];
  v1 = _getQueryFieldFromTextContentType__map;
  _getQueryFieldFromTextContentType__map = v0;

  v2 = *MEMORY[0x277D85DE8];
}

+ (BOOL)_shouldGenerateWordBoundaryPredictionsForContext:(id)context localeIdentifier:(id)identifier
{
  contextCopy = context;
  if ([identifier hasPrefix:@"zh"])
  {
    v6 = 1;
  }

  else
  {
    v7 = [contextCopy rangeOfComposedCharacterSequenceAtIndex:{objc_msgSend(contextCopy, "length") - 1}];
    v9 = [contextCopy substringWithRange:{v7, v8}];
    whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v6 = [v9 rangeOfCharacterFromSet:whitespaceCharacterSet] != 0x7FFFFFFFFFFFFFFFLL;
  }

  return v6;
}

+ (PSGInputSuggesterClient)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__PSGInputSuggesterClient_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance__pasOnceToken4 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken4, block);
  }

  v2 = sharedInstance__pasExprOnceResult_770;

  return v2;
}

void __41__PSGInputSuggesterClient_sharedInstance__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = objc_opt_new();
  v5 = sharedInstance__pasExprOnceResult_770;
  sharedInstance__pasExprOnceResult_770 = v4;

  objc_autoreleasePoolPop(v2);
}

@end