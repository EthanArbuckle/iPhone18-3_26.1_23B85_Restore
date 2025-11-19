@interface PSGProactiveTriggerHandler
+ (id)sharedInstance;
- (BOOL)_handleOperationalTrigger:(id)a3 localeIdentifier:(id)a4 bundleIdentifier:(id)a5 recipientNames:(id)a6 availableApps:(id)a7 limit:(unint64_t)a8 explanationSet:(id)a9 results:(id)a10;
- (PSGProactiveTriggerHandler)initWithBroker:(id)a3 cache:(id)a4;
- (id)_handlePortraitTrigger:(id)a3 localeIdentifier:(id)a4 bundleIdentifier:(id)a5 recipients:(id)a6 limit:(unint64_t)a7 timeoutSeconds:(double)a8 explanationSet:(id)a9 results:(id)a10;
- (id)handleTrigger:(id)a3 localeIdentifier:(id)a4 bundleIdentifier:(id)a5 recipients:(id)a6 recipientNames:(id)a7 availableApps:(id)a8 timeoutSeconds:(double)a9 fetchLimit:(unint64_t)a10 maxSuggestions:(unint64_t)a11 explanationSet:(id)a12 error:(id *)a13;
@end

@implementation PSGProactiveTriggerHandler

- (id)handleTrigger:(id)a3 localeIdentifier:(id)a4 bundleIdentifier:(id)a5 recipients:(id)a6 recipientNames:(id)a7 availableApps:(id)a8 timeoutSeconds:(double)a9 fetchLimit:(unint64_t)a10 maxSuggestions:(unint64_t)a11 explanationSet:(id)a12 error:(id *)a13
{
  v61 = *MEMORY[0x277D85DE8];
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v56 = a7;
  v57 = a8;
  v58 = a12;
  v24 = [v20 triggerAttributes];
  v25 = [v24 objectForKeyedSubscript:*MEMORY[0x277D23050]];

  v26 = [v20 triggerAttributes];
  v27 = [v26 objectForKeyedSubscript:*MEMORY[0x277D23028]];

  v53 = v25;
  v54 = v27;
  if (([v25 isEqualToString:@"triggerTypeConnections"] & 1) == 0 && (objc_msgSend(v27, "isEqualToString:", *MEMORY[0x277D23008]) & 1) == 0 && !objc_msgSend(v27, "isEqualToString:", *MEMORY[0x277D23000]))
  {
    v28 = [(PSGStructuredInfoSuggestionCache *)self->_cache searchWithTrigger:v20 localeIdentifier:v21 maxSuggestions:a11];
    if ([v28 count])
    {
      v41 = psg_default_log_handle();
      v29 = v23;
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v60 = [v28 count];
        _os_log_impl(&dword_260D18000, v41, OS_LOG_TYPE_INFO, "Returning %tu item(s) from structured info cache.", buf, 0xCu);
      }

      objc_storeStrong(&self->_lastTrigger, a3);
      v28 = v28;
      v40 = v28;
    }

    else
    {
      v49 = +[PSGStructuredInfoSuggestionCache emptySuggestionsPlaceholder];

      loga = psg_default_log_handle();
      v50 = os_log_type_enabled(loga, OS_LOG_TYPE_INFO);
      v29 = v23;
      if (v28 != v49)
      {
        if (v50)
        {
          *buf = 138412290;
          v60 = v20;
          _os_log_impl(&dword_260D18000, loga, OS_LOG_TYPE_INFO, "Cache lookup returns nothing for %@", buf, 0xCu);
        }

        goto LABEL_7;
      }

      if (v50)
      {
        *buf = 0;
        _os_log_impl(&dword_260D18000, loga, OS_LOG_TYPE_INFO, "Returning nil since we get empty placeholder from structured info cache.", buf, 2u);
      }

      objc_storeStrong(&self->_lastTrigger, a3);
      v40 = 0;
    }

    v32 = v56;
    goto LABEL_39;
  }

  v28 = psg_default_log_handle();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v60 = v20;
    _os_log_impl(&dword_260D18000, v28, OS_LOG_TYPE_INFO, "Skip structured info cache lookup for %@", buf, 0xCu);
  }

  v29 = v23;
LABEL_7:

  v28 = [v20 triggerCategory];
  if (v28 != @"TaggedTextFieldContactsAutocomplete")
  {
LABEL_8:

    goto LABEL_10;
  }

  p_lastTrigger = &self->_lastTrigger;
  v31 = [(PSGProactiveTrigger *)self->_lastTrigger triggerCategory];

  if (v31 != @"TaggedTextFieldContactsAutocomplete")
  {
LABEL_10:
    v28 = objc_opt_new();
    v32 = v56;
    if (![(PSGProactiveTriggerHandler *)self _handleOperationalTrigger:v20 localeIdentifier:v21 bundleIdentifier:v22 recipientNames:v56 availableApps:v57 limit:a10 explanationSet:v58 results:v28])
    {
      v33 = [(PSGProactiveTriggerHandler *)self _handlePortraitTrigger:v20 localeIdentifier:v21 bundleIdentifier:v22 recipients:v29 limit:a10 timeoutSeconds:v58 explanationSet:a9 results:v28];
      if (a13 && v33)
      {
        v33 = v33;
        *a13 = v33;
      }
    }

    if (![v28 count])
    {
      v34 = [v20 triggerCategory];
      if (v34 == @"TaggedTextFieldContactsAutocomplete")
      {
        v42 = [v58 hasContactsServingError];

        if ((v42 & 1) == 0)
        {
          [(PSGStructuredInfoSuggestionCache *)self->_cache addEmptyPlaceholderForTrigger:v20 localeIdentifier:v21];
LABEL_35:
          objc_storeStrong(&self->_lastTrigger, a3);
          if ([v28 count]<= a11)
          {
            v44 = v28;
            v28 = v44;
          }

          else
          {
            v44 = [v28 subarrayWithRange:0];
          }

          v40 = v44;
          goto LABEL_39;
        }
      }

      else
      {
      }
    }

    if (-[NSObject count](v28, "count") && [v20 triggerSourceType] != 5)
    {
      [(PSGStructuredInfoSuggestionCache *)self->_cache addStructuredInfoSuggestions:v28 localeIdentifier:v21];
    }

    else
    {
      v43 = [v20 triggerCategory];

      if (v43 != @"TaggedTextFieldContactsAutocomplete")
      {
        [(PSGStructuredInfoSuggestionCache *)self->_cache invalidate];
      }
    }

    goto LABEL_35;
  }

  log = v22;
  v35 = [v20 triggerAttributes];
  v28 = [PSGProactiveTrigger getSearchTerm:v35];

  v36 = [(PSGProactiveTrigger *)*p_lastTrigger triggerAttributes];
  v37 = [PSGProactiveTrigger getSearchTerm:v36];

  if (-[NSObject length](v28, "length") < 3 || ![v37 length] || !-[NSObject hasPrefix:](v28, "hasPrefix:", v37))
  {
    v47 = psg_default_log_handle();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      v48 = [v28 length];
      *buf = 134217984;
      v60 = v48;
      _os_log_impl(&dword_260D18000, v47, OS_LOG_TYPE_DEFAULT, "Contacts Autocomplete query name length: %tu", buf, 0xCu);
    }

    v22 = log;
    v29 = v23;
    goto LABEL_8;
  }

  v38 = v37;
  v39 = psg_default_log_handle();
  v29 = v23;
  if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_260D18000, v39, OS_LOG_TYPE_INFO, "Skipping Portrait XPC: no cached results for long Contacts Autocomplete query.", buf, 2u);
  }

  [v58 pushInternalExplanationCode:6];
  objc_storeStrong(p_lastTrigger, a3);

  v40 = 0;
  v22 = log;
  v32 = v56;
  v25 = v53;
LABEL_39:

  v45 = *MEMORY[0x277D85DE8];

  return v40;
}

- (id)_handlePortraitTrigger:(id)a3 localeIdentifier:(id)a4 bundleIdentifier:(id)a5 recipients:(id)a6 limit:(unint64_t)a7 timeoutSeconds:(double)a8 explanationSet:(id)a9 results:(id)a10
{
  v74[1] = *MEMORY[0x277D85DE8];
  v17 = a3;
  v51 = a4;
  v53 = a5;
  v54 = a6;
  v52 = a9;
  v18 = a10;
  v19 = [v17 triggerCategory];
  LODWORD(a6) = [v19 isEqualToString:@"TaggedTextFieldContactsAutocomplete"];

  if (!a6)
  {
    v28 = MEMORY[0x277D3A480];
    v29 = [v17 triggerAttributes];
    v27 = [v28 quickTypeQueryFromLMTokens:v29 localeIdentifier:v51 recipients:v54 bundleIdentifier:v53];

    if ([v17 triggerSourceType] == 1 || objc_msgSend(v17, "triggerSourceType") == 4)
    {
      [v27 setTimeoutSeconds:&unk_287345560];
    }

LABEL_7:
    *v63 = 0;
    v64 = v63;
    v65 = 0x3032000000;
    v66 = __Block_byref_object_copy__330;
    v67 = __Block_byref_object_dispose__331;
    v68 = 0;
    v30 = dispatch_semaphore_create(0);
    v31 = psg_default_log_handle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_260D18000, v31, OS_LOG_TYPE_DEFAULT, "Kicking off Portrait XPC", buf, 2u);
    }

    broker = self->_broker;
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __142__PSGProactiveTriggerHandler__handlePortraitTrigger_localeIdentifier_bundleIdentifier_recipients_limit_timeoutSeconds_explanationSet_results___block_invoke;
    v59[3] = &unk_279ABCF50;
    v62 = v63;
    v33 = v52;
    v60 = v33;
    v34 = v30;
    v61 = v34;
    [(PPQuickTypeBroker *)broker quickTypeItemsWithQuery:v27 limit:a7 completion:v59];
    v35 = [MEMORY[0x277CBEB68] null];
    v36 = [v17 triggerAttributes];
    v37 = [v36 objectForKeyedSubscript:*MEMORY[0x277D22F30]];
    v38 = [v35 isEqual:v37];

    if (v38)
    {
      v39 = psg_default_log_handle();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_260D18000, v39, OS_LOG_TYPE_DEBUG, "Handling a priming token. Skip waiting for async call.", buf, 2u);
      }

      [v33 pushInternalExplanationCode:3];
      goto LABEL_13;
    }

    if ([MEMORY[0x277D425A0] waitForSemaphore:v34 timeoutSeconds:a8] == 1)
    {
      v41 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%.3f", *&a8];
      v42 = psg_default_log_handle();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v73 = v41;
        _os_log_error_impl(&dword_260D18000, v42, OS_LOG_TYPE_ERROR, "Portrait timeout (threshold: %@ s)", buf, 0xCu);
      }

      [v33 pushInternalExplanationCode:1];
      v43 = MEMORY[0x277CCA9B8];
      v70 = @"thresholdSecs";
      v71 = v41;
      v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
      v40 = [v43 errorWithDomain:@"PSGErrorDomain" code:1 userInfo:v44];
    }

    else
    {
      if (![*(v64 + 5) count])
      {
LABEL_13:
        v40 = 0;
LABEL_27:

        _Block_object_dispose(v63, 8);
        v21 = v27;
        goto LABEL_28;
      }

      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v41 = *(v64 + 5);
      v40 = [v41 countByEnumeratingWithState:&v55 objects:v69 count:16];
      if (v40)
      {
        v45 = *v56;
        do
        {
          for (i = 0; i != v40; i = i + 1)
          {
            if (*v56 != v45)
            {
              objc_enumerationMutation(v41);
            }

            v47 = [[PSGStructuredInfoSuggestion alloc] initWithProactiveTrigger:v17 portraitItem:*(*(&v55 + 1) + 8 * i) operationalItem:0];
            [v18 addObject:v47];
          }

          v40 = [v41 countByEnumeratingWithState:&v55 objects:v69 count:16];
        }

        while (v40);
      }
    }

    goto LABEL_27;
  }

  v20 = [v17 triggerAttributes];
  v21 = [v20 objectForKeyedSubscript:@"SearchField"];

  v22 = [v21 unsignedIntegerValue];
  v23 = [v17 triggerAttributes];
  v24 = [v23 objectForKeyedSubscript:@"SearchTerm"];

  if ([v24 length])
  {
    v25 = MEMORY[0x277D3A480];
    v74[0] = v24;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v74 count:1];
    v27 = [v25 quickTypeQueryWithType:1 subtype:12 semanticTag:0 fields:v22 time:0 subFields:0 label:0 people:v26 localeIdentifier:v51 bundleIdentifier:v53 recipients:v54];

    [v27 setTimeoutSeconds:&unk_287345550];
    goto LABEL_7;
  }

  v50 = psg_default_log_handle();
  if (os_log_type_enabled(v50, OS_LOG_TYPE_FAULT))
  {
    *v63 = 0;
    _os_log_fault_impl(&dword_260D18000, v50, OS_LOG_TYPE_FAULT, "Search term not specified for Contacts Autocomplete trigger.", v63, 2u);
  }

  v40 = [MEMORY[0x277CCA9B8] errorWithDomain:@"PSGErrorDomain" code:2 userInfo:0];

LABEL_28:
  v48 = *MEMORY[0x277D85DE8];

  return v40;
}

void __142__PSGProactiveTriggerHandler__handlePortraitTrigger_localeIdentifier_bundleIdentifier_recipients_limit_timeoutSeconds_explanationSet_results___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = psg_default_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v15 = [v5 count];
    v16 = 2048;
    v17 = [v6 count];
    _os_log_impl(&dword_260D18000, v7, OS_LOG_TYPE_DEFAULT, "Portrait XPC returns %tu item(s) and %tu explanation(s)", buf, 0x16u);
  }

  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v10 = v5;

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __142__PSGProactiveTriggerHandler__handlePortraitTrigger_localeIdentifier_bundleIdentifier_recipients_limit_timeoutSeconds_explanationSet_results___block_invoke_91;
  v12[3] = &unk_279ABCF28;
  v13 = *(a1 + 32);
  [v6 enumerateWithBlock:v12];
  dispatch_semaphore_signal(*(a1 + 40));

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __142__PSGProactiveTriggerHandler__handlePortraitTrigger_localeIdentifier_bundleIdentifier_recipients_limit_timeoutSeconds_explanationSet_results___block_invoke_91(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = psg_default_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [MEMORY[0x277D3A470] stringFromExplanation:a2];
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_260D18000, v4, OS_LOG_TYPE_DEFAULT, "Portrait Exp Code: %@", &v8, 0xCu);
  }

  result = [*(a1 + 32) pushPortraitExplanationCode:a2];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)_handleOperationalTrigger:(id)a3 localeIdentifier:(id)a4 bundleIdentifier:(id)a5 recipientNames:(id)a6 availableApps:(id)a7 limit:(unint64_t)a8 explanationSet:(id)a9 results:(id)a10
{
  v132[1] = *MEMORY[0x277D85DE8];
  v14 = a3;
  v118 = a4;
  v120 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a9;
  v18 = a10;
  v19 = [v14 triggerAttributes];
  v20 = [v19 valueForKey:*MEMORY[0x277D23050]];

  v21 = [v14 triggerAttributes];
  v22 = [v21 valueForKey:*MEMORY[0x277D23028]];

  v23 = [v14 triggerAttributes];
  v117 = [v23 objectForKeyedSubscript:@"pov"];

  v24 = [v14 triggerAttributes];
  v119 = [v24 valueForKey:*MEMORY[0x277D22FF8]];

  v25 = [v15 count];
  if ([v20 isEqualToString:*MEMORY[0x277D22FB8]] && objc_msgSend(v22, "isEqualToString:", *MEMORY[0x277D22F28]) && objc_msgSend(objc_opt_class(), "_isCurrentLocationSupportedPlatform"))
  {
    if ([v16 containsObject:@"com.apple.messages.currentLocation"])
    {
      v112 = objc_opt_new();
      [v112 setObject:@"com.apple.messages.currentLocation" forKey:@"bundleID"];
      v26 = [v117 containsString:@"mirrored"];
      v27 = @"currentLocation";
      if (v26)
      {
        v27 = @"requestLocation";
      }

      v115 = v27;
      v28 = [v117 containsString:@"mirrored"];
      v29 = psg_default_log_handle();
      v30 = os_log_type_enabled(v29, OS_LOG_TYPE_INFO);
      if (v28)
      {
        if (v30)
        {
          *buf = 0;
          _os_log_impl(&dword_260D18000, v29, OS_LOG_TYPE_INFO, "[PSGProactiveTriggerHandler] Preparing prediction for requesting location.", buf, 2u);
        }

        if (v25 >= 2)
        {
          v31 = psg_default_log_handle();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_260D18000, v31, OS_LOG_TYPE_INFO, "[PSGProactiveTriggerHandler] Request location predictions are not allowed for group chats", buf, 2u);
          }

          v32 = 0;
          v33 = v112;
          v34 = v31;
          goto LABEL_39;
        }

        v88 = +[PSGUtilities sharedInstance];
        v89 = [v88 localizedStringForKey:@"REQUEST_LOCATION_BUTTON_CAPTION" withLocale:v118];
        v110 = _PASValidatedFormat(v89, v90, v91, v92, v93, v94, v95, v96, @"");

        v33 = v112;
        v85 = [[PSGOperationalPredictedItem alloc] initWithItemIdentifier:v115 value:v110 bundleIdentifier:v120 operationData:v112];
        v132[0] = v85;
        v86 = MEMORY[0x277CBEA60];
        v87 = v132;
      }

      else
      {
        if (v30)
        {
          *buf = 0;
          _os_log_impl(&dword_260D18000, v29, OS_LOG_TYPE_INFO, "[PSGProactiveTriggerHandler] Preparing prediction for sharing location.", buf, 2u);
        }

        v76 = +[PSGUtilities sharedInstance];
        v77 = [v76 localizedStringForKey:@"SEND_CURRENT_LOCATION_BUTTON_CAPTION" withLocale:v118];
        v110 = _PASValidatedFormat(v77, v78, v79, v80, v81, v82, v83, v84, @"");

        v33 = v112;
        v85 = [[PSGOperationalPredictedItem alloc] initWithItemIdentifier:v115 value:v110 bundleIdentifier:v120 operationData:v112];
        v131 = v85;
        v86 = MEMORY[0x277CBEA60];
        v87 = &v131;
      }

      v32 = [v86 arrayWithObjects:v87 count:1];

      v34 = v110;
LABEL_39:

LABEL_44:
      v116 = 1;
      goto LABEL_45;
    }

LABEL_43:
    [v17 pushInternalExplanationCode:2];
    v32 = 0;
    goto LABEL_44;
  }

  if ([v20 isEqualToString:*MEMORY[0x277D46C00]])
  {
    if ([v16 containsObject:@"com.apple.messages.surf"])
    {
      v113 = v22;
      v35 = v20;
      v36 = v17;
      v37 = v16;
      v38 = [MEMORY[0x277CBEB38] dictionary];
      [v38 setObject:@"com.apple.messages.surf" forKey:@"bundleID"];
      v39 = [v119 objectForKey:@"Currency"];
      if (v39)
      {
        [v38 setObject:v39 forKey:@"Currency"];
        v40 = [[PSGOperationalPredictedItem alloc] initWithItemIdentifier:@"surf" value:@"Pay" bundleIdentifier:v120 operationData:v38];
        v130 = v40;
        v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v130 count:1];
      }

      else
      {
        v32 = 0;
      }

      v116 = 1;
      v16 = v37;
      v17 = v36;
      v20 = v35;
      v22 = v113;
      goto LABEL_45;
    }

    goto LABEL_43;
  }

  if ([v20 isEqualToString:*MEMORY[0x277D46C10]])
  {
    if ([v16 containsObject:@"com.apple.messages.photos"])
    {
      v41 = MEMORY[0x277CBEB38];
      v42 = [v14 triggerAttributes];
      [v41 dictionaryWithDictionary:v42];
      v43 = v107 = v16;

      [v43 setObject:@"com.apple.messages.photos" forKey:@"bundleID"];
      v44 = +[PSGUtilities sharedInstance];
      v45 = [v44 localizedStringForKey:@"CHOOSE_PHOTOS_CAPTION" withLocale:v118];
      _PASValidatedFormat(v45, v46, v47, v48, v49, v50, v51, v52, @"");
      v54 = v53 = v22;

      v55 = [[PSGOperationalPredictedItem alloc] initWithItemIdentifier:@"choosePhotos" value:v54 bundleIdentifier:v120 operationData:v43];
      v129 = v55;
      v116 = 1;
      v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v129 count:1];

      v22 = v53;
      v56 = v120;
      v57 = v118;

      v16 = v107;
      goto LABEL_46;
    }

    goto LABEL_43;
  }

  if ([v20 isEqualToString:@"event"])
  {
    v56 = v120;
    v57 = v118;
    if (![v22 isEqualToString:@"traveling home"] || !objc_msgSend(objc_opt_class(), "_isCheckInSupportedPlatform"))
    {
      v32 = 0;
      v116 = 0;
      goto LABEL_46;
    }

    v58 = psg_default_log_handle();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_260D18000, v58, OS_LOG_TYPE_DEFAULT, "SafetyMonitor: text input has a match", buf, 2u);
    }

    if ([v16 containsObject:@"com.apple.SafetyMonitorApp.SafetyMonitorMessages"])
    {
      v109 = v17;
      v59 = v16;
      v60 = MEMORY[0x277CBEB38];
      v61 = [v14 triggerAttributes];
      v62 = [v60 dictionaryWithDictionary:v61];

      v63 = [@"com.apple.SafetyMonitorApp.SafetyMonitorMessages" copy];
      [v62 setObject:v63 forKeyedSubscript:@"bundleID"];

      v64 = +[PSGUtilities sharedInstance];
      v65 = [v64 localizedStringForKey:@"START_CHECK_IN_SESSION_CAPTION" withLocale:v118];
      v73 = _PASValidatedFormat(v65, v66, v67, v68, v69, v70, v71, v72, @"");

      v74 = [[PSGOperationalPredictedItem alloc] initWithItemIdentifier:@"start check-in" value:v73 bundleIdentifier:v120 operationData:v62];
      v128 = v74;
      v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v128 count:1];

      v75 = psg_default_log_handle();
      if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_260D18000, v75, OS_LOG_TYPE_DEFAULT, "SafetyMonitor: predicted item formed", buf, 2u);
      }

      v116 = 1;
      v16 = v59;
      v17 = v109;
      goto LABEL_45;
    }

    v97 = psg_default_log_handle();
    if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v127 = @"com.apple.SafetyMonitorApp.SafetyMonitorMessages";
      _os_log_impl(&dword_260D18000, v97, OS_LOG_TYPE_DEFAULT, "SafetyMonitor: ignoring the trigger -- %@ not supported", buf, 0xCu);
    }

    goto LABEL_43;
  }

  v32 = 0;
  v116 = 0;
LABEL_45:
  v56 = v120;
  v57 = v118;
LABEL_46:
  if ([v32 count])
  {
    v111 = v17;
    v114 = v22;
    v106 = v20;
    v108 = v16;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v98 = v32;
    v99 = [v98 countByEnumeratingWithState:&v121 objects:v125 count:16];
    if (v99)
    {
      v100 = v99;
      v101 = *v122;
      do
      {
        for (i = 0; i != v100; ++i)
        {
          if (*v122 != v101)
          {
            objc_enumerationMutation(v98);
          }

          v103 = [[PSGStructuredInfoSuggestion alloc] initWithProactiveTrigger:v14 portraitItem:0 operationalItem:*(*(&v121 + 1) + 8 * i)];
          [v18 addObject:v103];
        }

        v100 = [v98 countByEnumeratingWithState:&v121 objects:v125 count:16];
      }

      while (v100);
    }

    v56 = v120;
    v16 = v108;
    v17 = v111;
    v20 = v106;
    v22 = v114;
  }

  v104 = *MEMORY[0x277D85DE8];
  return v116;
}

- (PSGProactiveTriggerHandler)initWithBroker:(id)a3 cache:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PSGProactiveTriggerHandler;
  v9 = [(PSGProactiveTriggerHandler *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_broker, a3);
    objc_storeStrong(&v10->_cache, a4);
  }

  return v10;
}

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken2_383 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken2_383, &__block_literal_global_384);
  }

  v3 = sharedInstance__pasExprOnceResult_385;

  return v3;
}

void __44__PSGProactiveTriggerHandler_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [PSGProactiveTriggerHandler alloc];
  v2 = [MEMORY[0x277D3A468] sharedInstance];
  v3 = +[PSGStructuredInfoSuggestionCache sharedInstance];
  v4 = [(PSGProactiveTriggerHandler *)v1 initWithBroker:v2 cache:v3];
  v5 = sharedInstance__pasExprOnceResult_385;
  sharedInstance__pasExprOnceResult_385 = v4;

  objc_autoreleasePoolPop(v0);
}

@end