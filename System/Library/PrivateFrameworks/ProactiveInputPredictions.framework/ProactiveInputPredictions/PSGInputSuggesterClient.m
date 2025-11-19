@interface PSGInputSuggesterClient
+ (BOOL)_allowSingleCharacterContactsAutocompleteTriggerForLanguage:(id)a3;
+ (BOOL)_shouldGenerateWordBoundaryPredictionsForContext:(id)a3 localeIdentifier:(id)a4;
+ (BOOL)_zkwItemsContainsOnlyTextualResponses:(id)a3;
+ (PSGInputSuggesterClient)sharedInstance;
+ (id)_getContactsAutocompleteItemForQueryField:(id)a3 searchTerm:(id)a4 localeIdentifier:(id)a5;
+ (id)_getQueryFieldFromTextContentType:(id)a3;
- (PSGInputSuggesterClient)init;
- (PSGInputSuggesterClient)initWithStructuredInfoCache:(id)a3;
- (id)_appConnectionTriggerForTextContentType:(id)a3;
- (id)_cachedStructuredSuggestionsForContext:(id)a3 localeIdentifier:(id)a4 maxSuggestions:(unint64_t)a5;
- (id)_combineMLAndRKItems:(id)a3 mlItems:(id)a4;
- (id)_fillSuggestionsForResponseItems:(id)a3 localeIdentifier:(id)a4 recipients:(id)a5 recipientNames:(id)a6 bundleIdentifier:(id)a7 timeoutSeconds:(double)a8 structuredInfoFetchLimit:(unint64_t)a9 availableApps:(id)a10 textualResponseLimit:(unint64_t)a11 structuredInfoLimit:(unint64_t)a12 totalSuggestionsLimit:(unint64_t)a13 explanationSet:(id)a14 error:(id *)a15;
- (id)_getFTLinkShareTrigger;
- (id)_getWordBoundaryResultForRequest:(id)a3 explanationSet:(id)a4;
- (id)_getZKWResultsForRequest:(id)a3 explanationSet:(id)a4;
- (id)_logTriggerForItems:(id)a3 request:(id)a4;
- (id)_maybeModifyTrigger:(id)a3 bundleIdentifier:(id)a4;
- (id)_rewriteMoneyAttributes:(id)a3;
- (id)_rkResponsesForContext:(id)a3 conversationTurns:(id)a4 languageID:(id)a5 maximumResponses:(unint64_t)a6 shouldDisableAutoCaps:(BOOL)a7 adaptationContextID:(id)a8;
- (id)_textualSuggestionsAndTriggersForRequest:(id)a3 explanationSet:(id)a4;
- (id)_wordBoundaryPredictionsForContext:(id)a3 localeIdentifier:(id)a4 textContentType:(id)a5 recipientNames:(id)a6 availableApps:(id)a7 request:(id)a8 explanationSet:(id)a9;
- (void)inputSuggestionsWithRequest:(id)a3 completion:(id)a4;
- (void)logEngagement:(id)a3 request:(id)a4 position:(unint64_t)a5;
- (void)logImpression:(id)a3 request:(id)a4;
- (void)logPrediction:(id)a3 request:(id)a4 latencyMillis:(double)a5;
- (void)logTrigger:(id)a3 request:(id)a4;
- (void)warmUpWithCompletion:(id)a3;
@end

@implementation PSGInputSuggesterClient

- (void)warmUpWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(PSGInputSuggesterClient *)self _remoteObjectProxy];
  [v5 warmUpWithCompletion:v4];
}

- (id)_logTriggerForItems:(id)a3 request:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v6;
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
        v14 = [v13 structuredInfoSuggestion];

        if (v14)
        {
          v15 = [v13 structuredInfoSuggestion];
          v16 = [v15 proactiveTrigger];

          if (v16)
          {
            [(PSGInputSuggesterClient *)self logTrigger:v16 request:v7];
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

  v16 = 0;
LABEL_12:

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (void)logEngagement:(id)a3 request:(id)a4 position:(unint64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(PSGInputSuggesterClient *)self _remoteObjectProxy];
  [v10 logEngagement:v9 request:v8 position:a5];
}

- (void)logImpression:(id)a3 request:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PSGInputSuggesterClient *)self _remoteObjectProxy];
  [v8 logImpression:v7 request:v6];
}

- (void)logPrediction:(id)a3 request:(id)a4 latencyMillis:(double)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(PSGInputSuggesterClient *)self _remoteObjectProxy];
  [v10 logPrediction:v9 request:v8 latencyMillis:a5];
}

- (void)logTrigger:(id)a3 request:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PSGInputSuggesterClient *)self _remoteObjectProxy];
  [v8 logTrigger:v7 request:v6];
}

- (void)inputSuggestionsWithRequest:(id)a3 completion:(id)a4
{
  v92 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
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
  v9 = [v6 localeIdentifier];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v12 = [MEMORY[0x277CBEAF8] currentLocale];
    v11 = [v12 localeIdentifier];
  }

  v13 = +[PSGUtilities sharedInstance];
  v14 = [v13 prewarmCacheForLocale:v11 usingQueue:inputSuggestionsWithRequest_completion__prewarmQueue];

  v15 = objc_opt_new();
  v16 = [v6 textContentType];
  v17 = [v16 length];

  if (v17)
  {
    v18 = psg_default_log_handle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_260D18000, v18, OS_LOG_TYPE_DEBUG, "Skip prefix-based structured info cache lookup for tagged text field.", buf, 2u);
    }

    v19 = 0;
  }

  else
  {
    v18 = [v6 contextBeforeInput];
    v20 = [v6 localeIdentifier];
    v19 = -[PSGInputSuggesterClient _cachedStructuredSuggestionsForContext:localeIdentifier:maxSuggestions:](self, "_cachedStructuredSuggestionsForContext:localeIdentifier:maxSuggestions:", v18, v20, [v6 structuredInfoLimit]);
  }

  v21 = [v19 count];
  v22 = psg_default_log_handle();
  v23 = v22;
  v82 = self;
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
    v81 = v11;
    v79 = v7;
    v29 = os_signpost_id_generate(v22);

    v30 = psg_default_log_handle();
    v31 = v30;
    if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_260D18000, v31, OS_SIGNPOST_INTERVAL_BEGIN, v29, "PSGInputSuggesterClient_inputSuggestionsWithRequest_triggering", &unk_260D2DE82, buf, 2u);
    }

    v32 = mach_absolute_time();
    v33 = [(PSGInputSuggesterClient *)self _textualSuggestionsAndTriggersForRequest:v6 explanationSet:v15];

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

      v73 = [(PSGInputSuggesterClient *)self _logTriggerForItems:v33 request:v6];
      v74 = mach_absolute_time();
      v46 = [v6 textContentType];
      v47 = [v46 length];

      v48 = [v6 structuredInfoLimit];
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

      if (v49 <= v48)
      {
        v51 = v48;
      }

      else
      {
        v51 = v49;
      }

      v52 = [v6 recipients];
      v53 = [v6 recipientNames];
      v54 = [v6 bundleIdentifier];
      v55 = [v6 availableApps];
      v56 = self;
      v57 = [v6 textualResponseLimit];
      v58 = [v6 structuredInfoLimit];
      v87 = 0;
      v72 = [v6 totalSuggestionsLimit];
      v59 = v56;
      v15 = v77;
      v23 = [(PSGInputSuggesterClient *)v59 _fillSuggestionsForResponseItems:v33 localeIdentifier:v81 recipients:v52 recipientNames:v53 bundleIdentifier:v54 timeoutSeconds:v51 structuredInfoFetchLimit:v50 availableApps:v55 textualResponseLimit:v57 structuredInfoLimit:v58 totalSuggestionsLimit:v72 explanationSet:v77 error:&v87];
      v26 = v87;

      v60 = (mach_absolute_time() - v74);
      v61 = *&inputSuggestionsWithRequest_completion__timeMillisMultiplier;
      if (v73 && [v77 count])
      {
        v84[0] = MEMORY[0x277D85DD0];
        v84[1] = 3221225472;
        v84[2] = __66__PSGInputSuggesterClient_inputSuggestionsWithRequest_completion___block_invoke_129;
        v84[3] = &unk_279ABD090;
        v84[4] = v82;
        v85 = v6;
        v86 = v73;
        [v77 enumerateExplanationCodeWithBlock:v84];
      }

      v24 = v61 * v60;
      v62 = psg_default_log_handle();
      v7 = v79;
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
      v7 = v79;
    }

    v11 = v81;
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
    [(PSGInputSuggesterClient *)v82 logPrediction:v68 request:v6 latencyMillis:v67];
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

  v7[2](v7, v68, v26);
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

- (id)_cachedStructuredSuggestionsForContext:(id)a3 localeIdentifier:(id)a4 maxSuggestions:(unint64_t)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if ([v8 length] && objc_msgSend(v9, "length"))
  {
    v10 = [(PSGStructuredInfoSuggestionCache *)self->_structuredSuggestionCache searchWithContext:v8 localeIdentifier:v9 maxSuggestions:a5];
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

- (id)_appConnectionTriggerForTextContentType:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 length])
  {
    v4 = psg_default_log_handle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v11 = 138412290;
      v12 = v3;
      _os_log_debug_impl(&dword_260D18000, v4, OS_LOG_TYPE_DEBUG, "Client creating an app connection trigger for tagged text field: %@", &v11, 0xCu);
    }

    v5 = objc_opt_new();
    [v5 setValue:@"triggerTypeConnections" forKey:*MEMORY[0x277D23050]];
    [v5 setValue:v3 forKey:@"textContentTypeTag"];
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

- (id)_textualSuggestionsAndTriggersForRequest:(id)a3 explanationSet:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = psg_default_log_handle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v23) = 0;
    _os_log_debug_impl(&dword_260D18000, v8, OS_LOG_TYPE_DEBUG, "Client called to _textualSuggestionsAndTriggersForRequest", &v23, 2u);
  }

  v9 = [v6 conversationTurns];
  v10 = [v9 lastObject];

  if (v10 && ([v10 senderID], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "length"), v11, !v12))
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
    v13 = [(_PASLRUCache *)self->_triggeringCache objectForKey:v6];
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
      if ([v6 isDocumentEmpty])
      {
        [(PSGInputSuggesterClient *)self _getZKWResultsForRequest:v6 explanationSet:v7];
      }

      else
      {
        [(PSGInputSuggesterClient *)self _getWordBoundaryResultForRequest:v6 explanationSet:v7];
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

      if ([v14 count] || (objc_msgSend(v7, "hasTriggeringXPCTimeout") & 1) == 0)
      {
        [(_PASLRUCache *)self->_triggeringCache setObject:v14 forKey:v6];
      }
    }

    v16 = v14;
    v17 = v16;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)_getWordBoundaryResultForRequest:(id)a3 explanationSet:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 contextBeforeInput];

  if (v8)
  {
    v9 = [v6 contextBeforeInput];
    v10 = [v6 localeIdentifier];
    v11 = [v6 textContentType];
    v12 = [v6 recipientNames];
    v13 = [v6 availableApps];
    v14 = [(PSGInputSuggesterClient *)self _wordBoundaryPredictionsForContext:v9 localeIdentifier:v10 textContentType:v11 recipientNames:v12 availableApps:v13 request:v6 explanationSet:v7];
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

- (id)_getZKWResultsForRequest:(id)a3 explanationSet:(id)a4
{
  v50 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v37 = a4;
  v6 = [v5 responseContext];
  v38 = [v5 textContentType];
  if (![v6 length] && !objc_msgSend(v38, "length"))
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
    v9 = [v6 length];
    v10 = [v5 localeIdentifier];
    *buf = 134218498;
    *&buf[4] = v9;
    *&buf[12] = 2112;
    *&buf[14] = v38;
    *&buf[22] = 2112;
    v47 = v10;
    _os_log_impl(&dword_260D18000, v8, OS_LOG_TYPE_INFO, "Response context length: %tu, text content type: %@, locale: %@", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v47 = __Block_byref_object_copy__697;
  v48 = __Block_byref_object_dispose__698;
  v49 = 0;
  if (![v6 length] && (objc_msgSend(v5, "conversationTurns"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "count") == 0, v11, v12))
  {
    v23 = 0;
  }

  else
  {
    v13 = dispatch_semaphore_create(0);
    v14 = [(PSGInputSuggesterClient *)self _remoteObjectProxy];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __67__PSGInputSuggesterClient__getZKWResultsForRequest_explanationSet___block_invoke;
    v40[3] = &unk_279ABD028;
    v42 = buf;
    v15 = v13;
    v41 = v15;
    [v14 inputSuggestionsWithRequest:v5 completion:v40];

    v16 = [v5 bundleIdentifier];
    v17 = [v5 responseKitConversationTurns];
    v18 = [v5 localeIdentifier];
    v19 = [v5 adaptationContextID];
    v20 = [v5 shouldDisableAutoCaps];
    v21 = [v5 textualResponseLimit];
    v22 = [v5 structuredInfoLimit];
    LOBYTE(v36) = [v5 isResponseContextBlacklisted];
    v23 = [(PSGInputSuggesterClient *)self _responseKitPredictionsForContext:v6 bundleIdentifier:v16 conversationTurns:v17 languageID:v18 adaptationContextID:v19 shouldDisableAutoCaps:v20 maximumResponses:v22 + v21 isBlacklisted:v36];

    if ([MEMORY[0x277D425A0] waitForSemaphore:v15 timeoutSeconds:0.1] == 1)
    {
      v24 = psg_default_log_handle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *v44 = 134217984;
        v45 = 0x3FB999999999999ALL;
        _os_log_impl(&dword_260D18000, v24, OS_LOG_TYPE_DEFAULT, "[ZKW] timed out trying to fetch ML results (threshold: %.3f s)", v44, 0xCu);
      }

      [(PSGInputSuggesterClient *)self logErrorForRequest:v5 trigger:0 errorType:2];
      [v37 pushInternalExplanationCode:7];
    }
  }

  if ([v38 length] && (objc_msgSend(v5, "textContentType"), v25 = objc_claimAutoreleasedReturnValue(), -[PSGInputSuggesterClient _appConnectionTriggerForTextContentType:](self, "_appConnectionTriggerForTextContentType:", v25), v26 = objc_claimAutoreleasedReturnValue(), v25, v26))
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

  if ([v6 length] || !objc_msgSend(objc_opt_class(), "_zkwItemsContainsOnlyTextualResponses:", v27))
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

- (id)_combineMLAndRKItems:(id)a3 mlItems:(id)a4
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = psg_default_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218240;
    v43 = [v5 count];
    v44 = 2048;
    v45 = [v6 count];
    _os_log_debug_impl(&dword_260D18000, v7, OS_LOG_TYPE_DEBUG, "[Client] combining %tu rk item(s) & %tu ml item(s)", buf, 0x16u);
  }

  if ([v6 count])
  {
    if ([v5 count])
    {
      v35 = v6;
      v36 = v5;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v8 = v5;
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
            v14 = [v13 textualResponseSuggestion];
            if (v14)
            {
              v15 = v14;
              v16 = [v13 textualResponseSuggestion];
              v17 = [v16 responseCategory];
              v18 = [v17 isEqualToString:@"QueryAlternative"];

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

            v19 = [v13 structuredInfoSuggestion];
            if (v19)
            {
              v20 = v19;
              v21 = [v13 structuredInfoSuggestion];
              v22 = [v21 proactiveTrigger];

              if (v22)
              {
                v24 = psg_default_log_handle();
                if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
                {
                  v25 = [v13 structuredInfoSuggestion];
                  v26 = [v25 proactiveTrigger];
                  v27 = [v26 triggerAttributes];
                  *buf = 138412290;
                  v43 = v27;
                  _os_log_impl(&dword_260D18000, v24, OS_LOG_TYPE_INFO, "[Client] rk proactive trigger (%@) found, discarding ml results", buf, 0xCu);
                }

LABEL_29:
                v6 = v35;
                v5 = v36;

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
      v6 = v35;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        v34 = [v35 count];
        *buf = 134217984;
        v43 = v34;
        _os_log_debug_impl(&dword_260D18000, v23, OS_LOG_TYPE_DEBUG, "[Client] discarding rk responses and using ml results (%tu)", buf, 0xCu);
      }

      v8 = v35;
      v5 = v36;
    }

    else
    {
      v23 = psg_default_log_handle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        v33 = [v6 count];
        *buf = 134217984;
        v43 = v33;
        _os_log_debug_impl(&dword_260D18000, v23, OS_LOG_TYPE_DEBUG, "[Client] no rk responses and using ml results (%tu)", buf, 0xCu);
      }

      v8 = v6;
    }
  }

  else
  {
    v23 = psg_default_log_handle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v31 = [v5 count];
      *buf = 134217984;
      v43 = v31;
      _os_log_debug_impl(&dword_260D18000, v23, OS_LOG_TYPE_DEBUG, "[Client] no ml items, returning rk results (%tu)", buf, 0xCu);
    }

    v8 = v5;
  }

LABEL_31:

  v28 = v8;
  v29 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)_wordBoundaryPredictionsForContext:(id)a3 localeIdentifier:(id)a4 textContentType:(id)a5 recipientNames:(id)a6 availableApps:(id)a7 request:(id)a8 explanationSet:(id)a9
{
  v67[1] = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v53 = a7;
  v52 = a8;
  v54 = a9;
  if (![v15 length] || !objc_msgSend(v16, "length"))
  {
    v20 = psg_default_log_handle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      *&buf[4] = [v15 length];
      *&buf[12] = 2112;
      *&buf[14] = v16;
      _os_log_impl(&dword_260D18000, v20, OS_LOG_TYPE_DEFAULT, "Tried to get word boundary predications but either locale or context were missing {context length: %tu locale: %@}", buf, 0x16u);
    }

    goto LABEL_31;
  }

  v19 = psg_default_log_handle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218754;
    *&buf[4] = [v15 length];
    *&buf[12] = 2112;
    *&buf[14] = v16;
    *&buf[22] = 2048;
    v64 = [v18 count];
    LOWORD(v65) = 2112;
    *(&v65 + 2) = v17;
    _os_log_impl(&dword_260D18000, v19, OS_LOG_TYPE_DEFAULT, "Context length: %tu, locale: %@, recipientNames count: %tu, textContentType: %@", buf, 0x2Au);
  }

  if (![v18 count])
  {
LABEL_13:
    v20 = [objc_opt_class() _getQueryFieldFromTextContentType:v17];
    if (v20)
    {
      v27 = objc_autoreleasePoolPush();
      v28 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
      v29 = [v15 stringByTrimmingCharactersInSet:v28];
      v30 = [v29 stringByReplacingOccurrencesOfString:@"​" withString:&stru_287343650];

      objc_autoreleasePoolPop(v27);
      if ([v30 length])
      {
        v31 = [objc_opt_class() _getContactsAutocompleteItemForQueryField:v20 searchTerm:v30 localeIdentifier:v16];
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
        *&buf[4] = v17;
        _os_log_debug_impl(&dword_260D18000, v30, OS_LOG_TYPE_DEBUG, "Unsupported textContentType for Keyboard Contacts Autocomplete: %@", buf, 0xCu);
      }
    }

    if ([v17 length])
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

    if (([objc_opt_class() _shouldGenerateWordBoundaryPredictionsForContext:v15 localeIdentifier:v16] & 1) == 0)
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
    v35 = [(PSGInputSuggesterClient *)self _remoteObjectProxy];
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __147__PSGInputSuggesterClient__wordBoundaryPredictionsForContext_localeIdentifier_textContentType_recipientNames_availableApps_request_explanationSet___block_invoke;
    v55[3] = &unk_279ABD028;
    v57 = buf;
    v36 = v34;
    v56 = v36;
    [v35 inputSuggestionsWithRequest:v52 completion:v55];

    v50 = +[PSGWordBoundaryFSTGrammar sharedInstance];
    v37 = [v50 triggerAttributesForContext:v15 localeIdentifier:v16];
    v38 = [v52 bundleIdentifier];
    v51 = [(PSGInputSuggesterClient *)self _maybeModifyTrigger:v37 bundleIdentifier:v38];

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

        [(PSGInputSuggesterClient *)self logErrorForRequest:v52 trigger:0 errorType:1];
        [v54 pushInternalExplanationCode:7];
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
  v22 = [v20 getNameMentionsTriggerForContext:v15 recipientNames:v18 availableApps:v53 localeIdentifier:v16 explanationSet:v54];
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

- (id)_maybeModifyTrigger:(id)a3 bundleIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (_maybeModifyTrigger_bundleIdentifier___pasOnceToken14 != -1)
  {
    dispatch_once(&_maybeModifyTrigger_bundleIdentifier___pasOnceToken14, &__block_literal_global_91);
  }

  v8 = _maybeModifyTrigger_bundleIdentifier___pasExprOnceResult;
  v9 = [(PSGInputSuggesterClient *)self _getFTLinkShareTrigger];
  v10 = [v6 isEqualToDictionary:v9];

  if (v10 && [v7 length] && objc_msgSend(v8, "containsObject:", v7))
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
    v12 = v6;
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

- (id)_fillSuggestionsForResponseItems:(id)a3 localeIdentifier:(id)a4 recipients:(id)a5 recipientNames:(id)a6 bundleIdentifier:(id)a7 timeoutSeconds:(double)a8 structuredInfoFetchLimit:(unint64_t)a9 availableApps:(id)a10 textualResponseLimit:(unint64_t)a11 structuredInfoLimit:(unint64_t)a12 totalSuggestionsLimit:(unint64_t)a13 explanationSet:(id)a14 error:(id *)a15
{
  v20 = a12;
  v21 = a13;
  v87 = *MEMORY[0x277D85DE8];
  v22 = a3;
  v61 = a4;
  v60 = a5;
  v59 = a6;
  v58 = a7;
  v57 = a10;
  v56 = a14;
  v55 = +[PSGProactiveTriggerHandler sharedInstance];
  v23 = objc_opt_new();
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v24 = v22;
  v64 = [v24 countByEnumeratingWithState:&v76 objects:v86 count:16];
  if (v64)
  {
    v25 = 0;
    v26 = 0;
    if (a12 >= a13)
    {
      v27 = a13;
    }

    else
    {
      v27 = a12;
    }

    v62 = v27;
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

        v29 = [*(*(&v76 + 1) + 8 * i) structuredInfoSuggestion];
        if (v29)
        {
          v67 = v29;
          v30 = [v29 proactiveTrigger];
          v31 = [v55 handleTrigger:v30 localeIdentifier:v61 bundleIdentifier:v58 recipients:v60 recipientNames:v59 availableApps:v57 timeoutSeconds:a8 fetchLimit:a9 maxSuggestions:v20 explanationSet:v56 error:a15];

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
          v20 = a12;
          v29 = v67;
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

    v21 = a13;
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
      v49 = [v48 textualResponseSuggestion];

      if (v49)
      {
        if (v45 >= a11 || [v23 count] >= v21)
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

- (id)_rewriteMoneyAttributes:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D22FF8];
  v4 = [a3 objectForKey:*MEMORY[0x277D22FF8]];
  if ([v4 count])
  {
    v5 = [v4 objectForKey:*MEMORY[0x277D46C08]];
    if ([v5 count])
    {
      v29 = v4;
      v6 = [MEMORY[0x277CBEB38] dictionary];
      [v6 setValue:*MEMORY[0x277D46C00] forKey:*MEMORY[0x277D23050]];
      v7 = [MEMORY[0x277CBEB38] dictionary];
      v8 = [MEMORY[0x277CBEB18] array];
      [v7 setValue:v8 forKey:@"Currency"];
      v26 = v7;
      v27 = v6;
      [v6 setValue:v7 forKey:*v3];
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
              v17 = [v15 dictionary];
              v18 = [v16 currency];
              [v17 setObject:v18 forKey:@"CurrencyType"];

              v19 = objc_alloc(MEMORY[0x277CCACA8]);
              [v16 value];
              v21 = v20;

              v22 = [v19 initWithFormat:@"%.2f", v21];
              [v17 setObject:v22 forKey:@"CurrencyValue"];

              [v8 addObject:v17];
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

- (id)_rkResponsesForContext:(id)a3 conversationTurns:(id)a4 languageID:(id)a5 maximumResponses:(unint64_t)a6 shouldDisableAutoCaps:(BOOL)a7 adaptationContextID:(id)a8
{
  v9 = a7;
  v13 = a4;
  v14 = a8;
  if (v9)
  {
    v15 = 704;
  }

  else
  {
    v15 = 576;
  }

  v16 = a5;
  v17 = a3;
  v18 = [v13 count];
  v19 = [MEMORY[0x277D46BD8] sharedManager];
  v20 = v19;
  if (v18)
  {
    [v19 responsesForMessage:v17 maximumResponses:a6 forConversationHistory:v13 withLanguage:v16 options:v15];
  }

  else
  {
    [v19 responsesForMessage:v17 maximumResponses:a6 forContext:v14 withLanguage:v16 options:v15];
  }
  v21 = ;

  return v21;
}

- (PSGInputSuggesterClient)initWithStructuredInfoCache:(id)a3
{
  v5 = a3;
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

    objc_storeStrong(&v6->_structuredSuggestionCache, a3);
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

+ (BOOL)_zkwItemsContainsOnlyTextualResponses:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a3;
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
  v5 = v3;
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
        v11 = [v10 structuredInfoSuggestion];

        if (v11)
        {
          v13 = psg_default_log_handle();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            v16 = [v10 structuredInfoSuggestion];
            v17 = [v16 proactiveTrigger];
            v18 = [v17 triggerCategory];
            *buf = 138412290;
            v24 = v18;
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

+ (id)_getContactsAutocompleteItemForQueryField:(id)a3 searchTerm:(id)a4 localeIdentifier:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
  if ([v9 rangeOfCharacterFromSet:v11 options:0 range:{0, 1}] == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([v9 length] != 1)
    {
LABEL_5:
      v20[0] = *MEMORY[0x277D23050];
      v20[1] = @"SearchField";
      v21[0] = @"ContactsAutocomplete";
      v21[1] = v8;
      v20[2] = @"SearchTerm";
      v21[2] = v9;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:3];
      v14 = [[PSGProactiveTrigger alloc] initWithSourceType:2 category:@"TaggedTextFieldContactsAutocomplete" attributes:v13];
      v15 = [[PSGStructuredInfoSuggestion alloc] initWithProactiveTrigger:v14 portraitItem:0 operationalItem:0];
      v16 = [[PSGInputSuggestionsResponseItem alloc] initWithTextualResponseSuggestion:0 structuredInfoSuggestion:v15];

      goto LABEL_12;
    }

    v12 = [MEMORY[0x277CBEAF8] componentsFromLocaleIdentifier:v10];
    v13 = [v12 objectForKeyedSubscript:*MEMORY[0x277CBE6C8]];

    if ([a1 _allowSingleCharacterContactsAutocompleteTriggerForLanguage:v13])
    {

      goto LABEL_5;
    }

    v17 = psg_default_log_handle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v23 = v10;
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

+ (BOOL)_allowSingleCharacterContactsAutocompleteTriggerForLanguage:(id)a3
{
  v3 = a3;
  if ([v3 hasPrefix:@"zh"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"ko"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"ja"];
  }

  return v4;
}

+ (id)_getQueryFieldFromTextContentType:(id)a3
{
  v3 = a3;
  if (_getQueryFieldFromTextContentType__once != -1)
  {
    dispatch_once(&_getQueryFieldFromTextContentType__once, &__block_literal_global_111);
  }

  if ([v3 length])
  {
    v4 = [_getQueryFieldFromTextContentType__map objectForKeyedSubscript:v3];
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

+ (BOOL)_shouldGenerateWordBoundaryPredictionsForContext:(id)a3 localeIdentifier:(id)a4
{
  v5 = a3;
  if ([a4 hasPrefix:@"zh"])
  {
    v6 = 1;
  }

  else
  {
    v7 = [v5 rangeOfComposedCharacterSequenceAtIndex:{objc_msgSend(v5, "length") - 1}];
    v9 = [v5 substringWithRange:{v7, v8}];
    v10 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v6 = [v9 rangeOfCharacterFromSet:v10] != 0x7FFFFFFFFFFFFFFFLL;
  }

  return v6;
}

+ (PSGInputSuggesterClient)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__PSGInputSuggesterClient_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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