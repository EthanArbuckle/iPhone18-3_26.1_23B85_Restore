@interface PSSuggester
@end

@implementation PSSuggester

void __56___PSSuggester_initWithConfiguration_feedbackRecording___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E695DFF8];
  v3 = [MEMORY[0x1E6997910] peopleDirectory];
  v4 = [v2 fileURLWithPath:v3 isDirectory:1];
  v5 = [v2 fileURLWithPath:@"Feedback" isDirectory:1 relativeToURL:v4];

  v6 = [MEMORY[0x1E696AC08] defaultManager];
  v7 = [v5 path];
  LOBYTE(v4) = [v6 fileExistsAtPath:v7];

  if ((v4 & 1) != 0 || ((v26 = 0, v8 = [v6 createDirectoryAtURL:v5 withIntermediateDirectories:1 attributes:0 error:&v26], v9 = v26, v8) ? (v10 = v9 == 0) : (v10 = 0), v10))
  {
    v32 = 0;
    v33 = &v32;
    v34 = 0x2050000000;
    v13 = getBMStoreConfigClass_softClass;
    v35 = getBMStoreConfigClass_softClass;
    if (!getBMStoreConfigClass_softClass)
    {
      v27 = MEMORY[0x1E69E9820];
      v28 = 3221225472;
      v29 = __getBMStoreConfigClass_block_invoke;
      v30 = &unk_1E7C23BF0;
      v31 = &v32;
      BiomeStorageLibraryCore();
      Class = objc_getClass("BMStoreConfig");
      *(v31[1] + 24) = Class;
      getBMStoreConfigClass_softClass = *(v31[1] + 24);
      v13 = v33[3];
    }

    v15 = v13;
    _Block_object_dispose(&v32, 8);
    v16 = [v13 alloc];
    v17 = [v5 path];
    v32 = 0;
    v33 = &v32;
    v34 = 0x2020000000;
    v18 = getbm_defaultStoreSegmentSizeSymbolLoc_ptr;
    v35 = getbm_defaultStoreSegmentSizeSymbolLoc_ptr;
    if (!getbm_defaultStoreSegmentSizeSymbolLoc_ptr)
    {
      v27 = MEMORY[0x1E69E9820];
      v28 = 3221225472;
      v29 = __getbm_defaultStoreSegmentSizeSymbolLoc_block_invoke;
      v30 = &unk_1E7C23BF0;
      v31 = &v32;
      __getbm_defaultStoreSegmentSizeSymbolLoc_block_invoke(&v27);
      v18 = v33[3];
    }

    _Block_object_dispose(&v32, 8);
    if (!v18)
    {
      v25 = [_PSBlockedHandlesCache beginSyncingWithTU];
      _Block_object_dispose(&v32, 8);
      _Unwind_Resume(v25);
    }

    v11 = [v16 initWithStoreBasePath:v17 segmentSize:*v18];

    v32 = 0;
    v33 = &v32;
    v34 = 0x2050000000;
    v19 = getBMStoreStreamClass_softClass;
    v35 = getBMStoreStreamClass_softClass;
    if (!getBMStoreStreamClass_softClass)
    {
      v27 = MEMORY[0x1E69E9820];
      v28 = 3221225472;
      v29 = __getBMStoreStreamClass_block_invoke;
      v30 = &unk_1E7C23BF0;
      v31 = &v32;
      BiomeStreamsLibraryCore();
      v20 = objc_getClass("BMStoreStream");
      *(v31[1] + 24) = v20;
      getBMStoreStreamClass_softClass = *(v31[1] + 24);
      v19 = v33[3];
    }

    v21 = v19;
    _Block_object_dispose(&v32, 8);
    v12 = [[v19 alloc] initWithPrivateStreamIdentifier:@"CNA" storeConfig:v11];
    v22 = [v12 source];
    v23 = *(a1 + 32);
    v24 = *(v23 + 40);
    *(v23 + 40) = v22;
  }

  else
  {
    v11 = v9;
    v12 = +[_PSLogging feedbackChannel];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __56___PSSuggester_initWithConfiguration_feedbackRecording___block_invoke_cold_1();
    }
  }
}

id __46___PSSuggester_candidatesForShareSheetRanking__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 conversationIdentifier];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [v2 derivedIntentIdentifier];
  }

  v6 = v5;

  return v6;
}

void __46___PSSuggester_candidatesForShareSheetRanking__block_invoke_70(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[_PSLogging suggestionSignpost];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __91___PSContactSuggester_contactSuggestionsWithMaxSuggestions_excludeContactsWithIdentifiers___block_invoke_cold_1();
  }
}

uint64_t __46___PSSuggester_candidatesForShareSheetRanking__block_invoke_74(uint64_t a1, void *a2)
{
  v3 = [a2 allObjects];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8]();
}

void __47___PSSuggester_suggestInteractionsFromContext___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[_PSLogging suggestionSignpost];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __91___PSContactSuggester_contactSuggestionsWithMaxSuggestions_excludeContactsWithIdentifiers___block_invoke_cold_1();
  }
}

void __47___PSSuggester_suggestInteractionsFromContext___block_invoke_87(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v7 = a3;
  [*(a1 + 32) sync:v7];

  v8 = +[_PSLogging coreBehaviorChannel];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_1B5ED1000, v8, OS_LOG_TYPE_DEFAULT, "_PSSuggester: finished suggestInteractionsFromContext", v9, 2u);
  }
}

void __68___PSSuggester_showNotificationToFileARadarForUserStudyParticipants__block_invoke()
{
  v0 = [MEMORY[0x1E695DF70] array];
  v16 = [MEMORY[0x1E696AF60] queryItemWithName:@"Title" value:@"TTR Share Sheet People Suggestion Feedback"];
  [v0 addObject:?];
  v15 = [MEMORY[0x1E696AF60] queryItemWithName:@"Description" value:{@"How would you rate your experience using Share Sheet on iPhone? (Very positive, positive, neutral, negative, or very negative)\n\n\n\nWhat, if anything, did you like about this Share Sheet experience?\n\n\n\nWhat, if anything, did you dislike about this Share Sheet experience?\n\n\n\nAny other comments to share?\n\n\n\nFeel free to include screenshots or screen recordings (with or without audio) to this radar — thanks! :\n\n\n\n"}]);
  [v0 addObject:?];
  v1 = [MEMORY[0x1E696AF60] queryItemWithName:@"ComponentID" value:@"1650220"];
  v2 = [MEMORY[0x1E696AF60] queryItemWithName:@"ComponentName" value:@"Share Sheet User Study"];
  v3 = [MEMORY[0x1E696AF60] queryItemWithName:@"ComponentVersion" value:@"Feedback"];
  v4 = [MEMORY[0x1E696AF60] queryItemWithName:@"Reproducible" value:@"Not Applicable"];
  v5 = [MEMORY[0x1E696AF60] queryItemWithName:@"IncludeDevicePrefixInTitle" value:@"1"];
  v6 = [MEMORY[0x1E696AF60] queryItemWithName:@"Classification" value:@"UI/Usability"];
  v14 = v1;
  [v0 addObject:v1];
  v13 = v2;
  [v0 addObject:v2];
  [v0 addObject:v3];
  [v0 addObject:v4];
  [v0 addObject:v5];
  [v0 addObject:v6];
  v7 = [MEMORY[0x1E696AF20] componentsWithString:@"tap-to-radar://new"];
  [v7 setQueryItems:v0];
  v8 = [v7 URL];
  v9 = [MEMORY[0x1E6963608] defaultWorkspace];
  v17 = 0;
  v10 = [v9 openURL:v8 withOptions:0 error:&v17];
  v11 = v17;

  if ((v10 & 1) == 0)
  {
    v12 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __68___PSSuggester_showNotificationToFileARadarForUserStudyParticipants__block_invoke_cold_1();
    }
  }
}

void __68___PSSuggester_showNotificationToFileARadarForUserStudyParticipants__block_invoke_153(uint64_t a1)
{
  v10[7] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E695EE60];
  v9[0] = *MEMORY[0x1E695EE58];
  v9[1] = v2;
  v10[0] = @"ShareSheet Study Feedback request";
  v10[1] = @"Could you please share with us your feedback on your experience with the ShareSheet for this session?";
  v3 = *MEMORY[0x1E695EE98];
  v9[2] = *MEMORY[0x1E695EE78];
  v9[3] = v3;
  v10[2] = @"File a radar";
  v10[3] = @"Dismiss";
  v4 = *MEMORY[0x1E69D4500];
  v9[4] = *MEMORY[0x1E695EE68];
  v9[5] = v4;
  v10[4] = MEMORY[0x1E695E118];
  v10[5] = MEMORY[0x1E695E118];
  v9[6] = *MEMORY[0x1E69D44E0];
  v10[6] = MEMORY[0x1E695E118];
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:7];
  v6 = CFUserNotificationCreate(*MEMORY[0x1E695E480], 0.0, 1uLL, 0, v5);
  v8 = 0;
  CFUserNotificationReceiveResponse(v6, 0.0, &v8);
  if (v6)
  {
    CFRelease(v6);
  }

  if (!v8)
  {
    (*(*(a1 + 32) + 16))();
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __78___PSSuggester_asyncSuggestInteractionsFromContext_timeout_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[_PSLogging suggestionSignpost];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __91___PSContactSuggester_contactSuggestionsWithMaxSuggestions_excludeContactsWithIdentifiers___block_invoke_cold_1();
  }

  v5 = objc_alloc(MEMORY[0x1E696ABC0]);
  v13 = *MEMORY[0x1E696A578];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"XPC Error: %@", v3, 0];
  v14[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v8 = [v5 initWithDomain:@"com.apple.PeopleSuggester" code:1 userInfo:v7];

  v9 = +[_PSConstants suggestionPathXPCError];
  [*(a1 + 32) setSuggestionPath:v9];

  v10 = *(a1 + 40);
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"XPC Error: %@", v3, 0];
  [v10 logErrorEventWithName:@"XPCError" details:v11 attributes:MEMORY[0x1E695E0F8]];

  (*(*(a1 + 48) + 16))();
  v12 = *MEMORY[0x1E69E9840];
}

BOOL __78___PSSuggester_asyncSuggestInteractionsFromContext_timeout_completionHandler___block_invoke_204(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 24));
  v2 = *(a1 + 32);
  v3 = *(*(*(a1 + 40) + 8) + 40) != 0;
  os_unfair_lock_unlock(v2 + 6);
  return v3;
}

void __78___PSSuggester_asyncSuggestInteractionsFromContext_timeout_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v35[1] = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  v8 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.coreduet.logging"];
  v9 = [v8 BOOLForKey:@"forceSuggesterEmptySuggestionForTesting"];

  if (v9)
  {
    v10 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v32) = 0;
      _os_log_impl(&dword_1B5ED1000, v10, OS_LOG_TYPE_DEFAULT, "Simulating a empty suggestion for testing", &v32, 2u);
    }

    v11 = *(*(a1 + 56) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = MEMORY[0x1E695E0F0];
  }

  os_unfair_lock_lock((*(a1 + 32) + 24));
  if (*(*(*(a1 + 64) + 8) + 40))
  {
    [*(a1 + 40) setTimedOut:*(*(*(a1 + 72) + 8) + 24)];
    [*(a1 + 40) sync:v7];
    [*(a1 + 32) showNotificationToFileARadarForUserStudyParticipants];
    v13 = [MEMORY[0x1E695DF00] date];
    [*(a1 + 40) setSuggestionCompletionDate:v13];

    if (*(*(*(a1 + 72) + 8) + 24) == 1)
    {
      v14 = objc_alloc(MEMORY[0x1E696ABC0]);
      v34 = *MEMORY[0x1E696A578];
      v35[0] = @"Suggestions timed out";
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:&v34 count:1];
      v16 = [v14 initWithDomain:@"com.apple.PeopleSuggester" code:1 userInfo:v15];

      v17 = +[_PSLogging suggestionSignpost];
      if (os_signpost_enabled(v17))
      {
        LOWORD(v32) = 0;
        _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v17, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_PSSuggestionAsyncFallbackTotalTime", &unk_1B5FD970D, &v32, 2u);
      }

      v18 = +[_PSLogging generalChannel];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v32) = 0;
        _os_log_impl(&dword_1B5ED1000, v18, OS_LOG_TYPE_DEFAULT, "Timed out people suggestions", &v32, 2u);
      }

      [*(a1 + 48) logErrorEventWithName:@"NormalPathTimedout" details:&stru_1F2D6CE98 attributes:MEMORY[0x1E695E0F8]];
    }

    else
    {
      v20 = +[_PSLogging suggestionSignpost];
      if (os_signpost_enabled(v20))
      {
        LOWORD(v32) = 0;
        _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v20, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_PSSuggestionAsyncTotalTime", &unk_1B5FD970D, &v32, 2u);
      }

      v16 = 0;
    }

    v21 = *(*(*(a1 + 56) + 8) + 40);
    v22 = *(*(*(a1 + 72) + 8) + 24);
    (*(*(*(*(a1 + 64) + 8) + 40) + 16))();
    v23 = *(*(a1 + 64) + 8);
    v24 = *(v23 + 40);
    *(v23 + 40) = 0;

    v25 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [MEMORY[0x1E696AD98] numberWithBool:*(*(*(a1 + 72) + 8) + 24)];
      v32 = 138412290;
      v33 = v26;
      _os_log_impl(&dword_1B5ED1000, v25, OS_LOG_TYPE_DEFAULT, "Finished fetching people suggestions, timedOut: %@", &v32, 0xCu);
    }
  }

  else
  {
    v19 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v32) = 0;
      _os_log_impl(&dword_1B5ED1000, v19, OS_LOG_TYPE_DEFAULT, "Received completion without valid reply block", &v32, 2u);
    }

    [*(a1 + 48) logErrorEventWithName:@"ReceivedNilReplyBlock" details:&stru_1F2D6CE98 attributes:MEMORY[0x1E695E0F8]];
  }

  v27 = *(a1 + 48);
  v28 = [*(a1 + 40) trialDeploymentId];
  v29 = [*(a1 + 40) trialExperimentId];
  v30 = [*(a1 + 40) trialTreatmentId];
  [v27 addTrialDeploymentId:v28 trialExperimentId:v29 trialTreatmentId:v30];

  [*(a1 + 48) end];
  os_unfair_lock_unlock((*(a1 + 32) + 24));

  v31 = *MEMORY[0x1E69E9840];
}

void __78___PSSuggester_asyncSuggestInteractionsFromContext_timeout_completionHandler___block_invoke_221(uint64_t a1)
{
  v2 = [*(a1 + 32) createSubSpanWithName:@"timeoutBlocksSpan"];
  [v2 start];
  v3 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.coreduet.logging"];
  v4 = [v3 BOOLForKey:@"shouldAllowShareSheetHangs"];

  if ((v4 & 1) == 0 && (*(*(a1 + 64) + 16))())
  {
    v5 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_1B5ED1000, v5, OS_LOG_TYPE_INFO, "Timeout. Falling back to cached suggestions.", v11, 2u);
    }

    os_unfair_lock_lock((*(a1 + 40) + 24));
    *(*(*(a1 + 80) + 8) + 24) = 1;
    os_unfair_lock_unlock((*(a1 + 40) + 24));
    [*(a1 + 48) reportShareSheetTimeoutWithReply:&__block_literal_global_231];
    v6 = +[_PSConstants suggestionPathCachedSuggestion];
    [*(a1 + 56) setSuggestionPath:v6];

    v7 = [*(a1 + 40) getCachedSuggestionsFetchingIfNeeded:1];
    v8 = +[_PSSuggesterCache defaultService];
    v9 = [v8 getCachedContext];
    [*(a1 + 56) setIsFallbackFetch:1];
    [*(a1 + 56) sync:v9];
    v10 = *(a1 + 56);
    (*(*(a1 + 72) + 16))();
    [v2 end];
  }
}

void __78___PSSuggester_asyncSuggestInteractionsFromContext_timeout_completionHandler___block_invoke_228(uint64_t a1, int a2, void *a3)
{
  v4 = a3;
  v5 = +[_PSLogging generalChannel];
  v6 = v5;
  if (a2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1B5ED1000, v6, OS_LOG_TYPE_DEFAULT, "Reported timeout successfully to DiagnosticRequest", v7, 2u);
    }
  }

  else
  {
    __78___PSSuggester_asyncSuggestInteractionsFromContext_timeout_completionHandler___block_invoke_228_cold_1(v5);
  }
}

void __78___PSSuggester_asyncSuggestInteractionsFromContext_timeout_completionHandler___block_invoke_235(uint64_t a1)
{
  v2 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B5ED1000, v2, OS_LOG_TYPE_DEFAULT, "Ensuring cache is populated", buf, 2u);
  }

  v3 = +[_PSConstants suggestionPathPopulateCache];
  [*(a1 + 32) setSuggestionPath:v3];

  if (*(a1 + 80) == 1)
  {
    [MEMORY[0x1E696AF00] sleepForTimeInterval:2.0];
  }

  v4 = [*(a1 + 40) createSubSpanWithName:@"performInitialFetchIfNeeded"];
  [v4 start];
  v5 = +[_PSSuggesterCache defaultService];
  [v5 performInitialFetchIfNeeded];

  [v4 end];
  if ((*(*(a1 + 64) + 16))())
  {
    v6 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.coreduet.logging"];
    v7 = [v6 BOOLForKey:@"forceSuggesterTimeoutForTesting"];

    v8 = +[_PSLogging generalChannel];
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v9)
      {
        v20 = 0;
        v10 = "Simulating a timeout for testing";
        v11 = &v20;
LABEL_11:
        _os_log_impl(&dword_1B5ED1000, v8, OS_LOG_TYPE_DEFAULT, v10, v11, 2u);
      }
    }

    else
    {
      if (v9)
      {
        *v19 = 0;
        _os_log_impl(&dword_1B5ED1000, v8, OS_LOG_TYPE_DEFAULT, "Fetching people suggestions", v19, 2u);
      }

      v12 = +[_PSConstants suggestionPathNormal];
      [*(a1 + 32) setSuggestionPath:v12];

      v8 = [*(a1 + 40) createSubSpanWithName:@"daemon_suggestInteractionsFromContext"];
      [v8 start];
      v13 = [v8 getSpanId];
      [*(a1 + 32) setCurrentSpanId:v13];

      v14 = *(a1 + 32);
      v15 = MEMORY[0x1E696AD98];
      v16 = *(a1 + 48);
      v17 = [*(a1 + 56) configuration];
      v18 = [v15 numberWithInteger:{objc_msgSend(v17, "maximumNumberOfSuggestions")}];
      [v16 suggestInteractionsFromContext:v14 maxSuggestions:v18 reply:*(a1 + 72)];

      [v8 end];
    }
  }

  else
  {
    v8 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      v10 = "Blocking on cache population consumed the entire timeout interval. Bailing prior to firing main daemon request.";
      v11 = v21;
      goto LABEL_11;
    }
  }
}

void __53___PSSuggester_shareExtensionSuggestionsFromContext___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[_PSLogging suggestionSignpost];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __91___PSContactSuggester_contactSuggestionsWithMaxSuggestions_excludeContactsWithIdentifiers___block_invoke_cold_1();
  }
}

void __84___PSSuggester_asyncShareExtensionSuggestionsFromContext_timeout_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[_PSLogging suggestionSignpost];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __91___PSContactSuggester_contactSuggestionsWithMaxSuggestions_excludeContactsWithIdentifiers___block_invoke_cold_1();
  }
}

void __84___PSSuggester_asyncShareExtensionSuggestionsFromContext_timeout_completionHandler___block_invoke_252()
{
  v0 = objc_autoreleasePoolPush();
  v1 = dispatch_semaphore_create(1);
  v2 = asyncShareExtensionSuggestionsFromContext_timeout_completionHandler___pasExprOnceResult;
  asyncShareExtensionSuggestionsFromContext_timeout_completionHandler___pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

void __84___PSSuggester_asyncShareExtensionSuggestionsFromContext_timeout_completionHandler___block_invoke_255(void *a1, void *a2)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v4 = a2;
  objc_storeStrong((*(a1[5] + 8) + 40), a2);
  os_unfair_lock_lock((a1[4] + 24));
  if (*(*(a1[6] + 8) + 24) == 1)
  {
    v5 = objc_alloc(MEMORY[0x1E696ABC0]);
    v16 = *MEMORY[0x1E696A578];
    v17[0] = @"Suggestions timed out";
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v7 = [v5 initWithDomain:@"com.apple.PeopleSuggester" code:1 userInfo:v6];
  }

  else
  {
    v7 = 0;
  }

  v8 = *(*(a1[7] + 8) + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, *(*(a1[5] + 8) + 40), *(*(a1[6] + 8) + 24), v7);
    v9 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [MEMORY[0x1E696AD98] numberWithBool:*(*(a1[6] + 8) + 24)];
      v14 = 138412290;
      v15 = v10;
      _os_log_impl(&dword_1B5ED1000, v9, OS_LOG_TYPE_DEFAULT, "Finished fetching people suggestions, timedOut: %@", &v14, 0xCu);
    }

    v11 = *(a1[7] + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = 0;
  }

  os_unfair_lock_unlock((a1[4] + 24));

  v13 = *MEMORY[0x1E69E9840];
}

void __84___PSSuggester_asyncShareExtensionSuggestionsFromContext_timeout_completionHandler___block_invoke_256(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v6) = 0;
    _os_log_impl(&dword_1B5ED1000, v2, OS_LOG_TYPE_DEFAULT, "Timed out app suggestions", &v6, 2u);
  }

  v3 = [*(a1 + 32) shareExtensionSuggestionsFromContext:*(a1 + 40)];
  v4 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 138477827;
    v7 = v3;
    _os_log_impl(&dword_1B5ED1000, v4, OS_LOG_TYPE_INFO, "Fetched %{private}@ app suggestions in process", &v6, 0xCu);
  }

  os_unfair_lock_lock((*(a1 + 32) + 24));
  *(*(*(a1 + 56) + 8) + 24) = 1;
  os_unfair_lock_unlock((*(a1 + 32) + 24));
  (*(*(a1 + 48) + 16))();

  v5 = *MEMORY[0x1E69E9840];
}

intptr_t __84___PSSuggester_asyncShareExtensionSuggestionsFromContext_timeout_completionHandler___block_invoke_257(uint64_t a1)
{
  v2 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1B5ED1000, v2, OS_LOG_TYPE_DEFAULT, "Fetching app extension suggestions", v4, 2u);
  }

  [*(a1 + 32) shareExtensionSuggestionsFromContext:*(a1 + 40) reply:*(a1 + 56)];
  return dispatch_semaphore_signal(*(a1 + 48));
}

void __54___PSSuggester_rankedNameSuggestionsFromContext_name___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[_PSLogging suggestionSignpost];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __91___PSContactSuggester_contactSuggestionsWithMaxSuggestions_excludeContactsWithIdentifiers___block_invoke_cold_1();
  }
}

void __64___PSSuggester_rankedGlobalSuggestionsFromContext_contactsOnly___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[_PSLogging suggestionSignpost];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __91___PSContactSuggester_contactSuggestionsWithMaxSuggestions_excludeContactsWithIdentifiers___block_invoke_cold_1();
  }
}

void __87___PSSuggester_rankedSiriNLContactSuggestionsFromContext_maxSuggestions_interactionId___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[_PSLogging suggestionSignpost];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __91___PSContactSuggester_contactSuggestionsWithMaxSuggestions_excludeContactsWithIdentifiers___block_invoke_cold_1();
  }
}

void __48___PSSuggester_rankedZKWSuggestionsFromContext___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[_PSLogging suggestionSignpost];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __91___PSContactSuggester_contactSuggestionsWithMaxSuggestions_excludeContactsWithIdentifiers___block_invoke_cold_1();
  }
}

void __48___PSSuggester_rankedZKWSuggestionsFromContext___block_invoke_270()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x1E696AE30] processInfo];
  v2 = [v1 processName];
  v3 = rankedZKWSuggestionsFromContext___pasExprOnceResult;
  rankedZKWSuggestionsFromContext___pasExprOnceResult = v2;

  objc_autoreleasePoolPop(v0);
}

void __63___PSSuggester_autocompleteSearchResultsWithPredictionContext___block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = autocompleteSearchResultsWithPredictionContext___pasExprOnceResult;
  autocompleteSearchResultsWithPredictionContext___pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

void __63___PSSuggester_autocompleteSearchResultsWithPredictionContext___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) isCancelled])
  {
    v2 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B5ED1000, v2, OS_LOG_TYPE_DEFAULT, "autocompleteSearchResultsWithPredictionContext request was already cancelled when lock was acquired", buf, 2u);
    }

    v3 = *(*(a1 + 48) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = MEMORY[0x1E695E0F0];
  }

  else
  {
    v5 = [*(a1 + 32) searchPrefix];
    v6 = [v5 length];

    v7 = *(a1 + 40);
    if (v6)
    {
      v8 = [v7 _getUserDaemonXPCConnection];
      if (v8)
      {
        v9 = +[_PSLogging suggestionSignpost];
        if (os_signpost_enabled(v9))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v9, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_PSAutocompleteSearchResultsTotalTime", " enableTelemetry=YES ", buf, 2u);
        }

        v10 = [v8 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_283];
        v11 = *(a1 + 32);
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __63___PSSuggester_autocompleteSearchResultsWithPredictionContext___block_invoke_284;
        v18[3] = &unk_1E7C243A0;
        v18[4] = *(a1 + 48);
        [v10 autocompleteSearchResultsWithPredictionContext:v11 reply:v18];
        v12 = +[_PSLogging suggestionSignpost];
        if (os_signpost_enabled(v12))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v12, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_PSAutocompleteSearchResultsTotalTime", &unk_1B5FD970D, buf, 2u);
        }
      }

      else
      {
        v16 = +[_PSLogging generalChannel];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          __63___PSSuggester_autocompleteSearchResultsWithPredictionContext___block_invoke_2_cold_1();
        }

        v17 = *(*(a1 + 48) + 8);
        v10 = *(v17 + 40);
        *(v17 + 40) = MEMORY[0x1E695E0F0];
      }
    }

    else
    {
      v13 = [v7 rankedZKWSuggestionsFromContext:*(a1 + 32)];
      v14 = *(*(a1 + 48) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;

      MEMORY[0x1EEE66BB8]();
    }
  }
}

void __63___PSSuggester_autocompleteSearchResultsWithPredictionContext___block_invoke_281(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __91___PSContactSuggester_contactSuggestionsWithMaxSuggestions_excludeContactsWithIdentifiers___block_invoke_cold_1();
  }
}

void __68___PSSuggester_rankedAutocompleteSuggestionsFromContext_candidates___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[_PSLogging suggestionSignpost];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __91___PSContactSuggester_contactSuggestionsWithMaxSuggestions_excludeContactsWithIdentifiers___block_invoke_cold_1();
  }
}

void __39___PSSuggester_rankedFamilySuggestions__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[_PSLogging suggestionSignpost];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __91___PSContactSuggester_contactSuggestionsWithMaxSuggestions_excludeContactsWithIdentifiers___block_invoke_cold_1();
  }
}

void __69___PSSuggester_familyRecommendationSuggestionsWithPredictionContext___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[_PSLogging suggestionSignpost];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __91___PSContactSuggester_contactSuggestionsWithMaxSuggestions_excludeContactsWithIdentifiers___block_invoke_cold_1();
  }
}

void __67___PSSuggester_photosRelationshipSuggestionsWithPredictionContext___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[_PSLogging suggestionSignpost];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __91___PSContactSuggester_contactSuggestionsWithMaxSuggestions_excludeContactsWithIdentifiers___block_invoke_cold_1();
  }
}

void __72___PSSuggester_photosContactInferencesSuggestionsWithPredictionContext___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[_PSLogging suggestionSignpost];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __91___PSContactSuggester_contactSuggestionsWithMaxSuggestions_excludeContactsWithIdentifiers___block_invoke_cold_1();
  }
}

void __75___PSSuggester_relativeAppUsageProbabilitiesForCandidateBundleIds_daysAgo___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[_PSLogging suggestionSignpost];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __91___PSContactSuggester_contactSuggestionsWithMaxSuggestions_excludeContactsWithIdentifiers___block_invoke_cold_1();
  }
}

id __37___PSSuggester_generatePSRTelemetry___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) copy];

  return v1;
}

void __46___PSSuggester_provideFeedbackForSuggestions___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[_PSLogging feedbackChannel];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __91___PSContactSuggester_contactSuggestionsWithMaxSuggestions_excludeContactsWithIdentifiers___block_invoke_cold_1();
  }
}

void __46___PSSuggester_provideFeedbackForSuggestions___block_invoke_433(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = +[_PSLogging feedbackChannel];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:a2];
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_1B5ED1000, v3, OS_LOG_TYPE_DEFAULT, "Persisted feedback, reply: %@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

id __46___PSSuggester_provideFeedbackForSuggestions___block_invoke_471(uint64_t a1)
{
  v1 = [*(a1 + 32) copy];

  return v1;
}

void __72___PSSuggester__recordFeedbackToInteractionStoreWithFeedback_mechanism___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[_PSLogging feedbackChannel];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __91___PSContactSuggester_contactSuggestionsWithMaxSuggestions_excludeContactsWithIdentifiers___block_invoke_cold_1();
  }
}

void __72___PSSuggester__recordFeedbackToInteractionStoreWithFeedback_mechanism___block_invoke_490(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = MEMORY[0x1E6997890];
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v22 = [v6 alloc];
  v20 = [v9 identifier];
  v10 = [v9 cloudIdentifier];
  v11 = [v9 photoLocalIdentifier];
  v12 = [v9 UTI];
  v13 = MEMORY[0x1E696AD98];
  v21 = [v9 imageData];
  v14 = [v13 numberWithUnsignedInteger:{objc_msgSend(v21, "length")}];
  v15 = [v9 creationDate];
  v16 = [v9 contentURL];
  v17 = [v9 contentText];

  v23 = [v22 initWithIdentifier:v20 cloudIdentifier:v10 photoLocalIdentifier:v11 type:v12 sizeInBytes:v14 creationDate:v15 contentURL:v16 contentText:v17 photoSceneDescriptor:v8 personInPhoto:v7];
  v18 = v23;
  if (v23)
  {
    [*(a1 + 32) addObject:v23];
    v18 = v23;
  }
}

id __72___PSSuggester__recordFeedbackToInteractionStoreWithFeedback_mechanism___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 handleType];
  v4 = [v2 displayName];

  if (v4)
  {
    v5 = [v2 displayName];
  }

  else
  {
    v6 = [v2 givenName];

    if (!v6)
    {
      goto LABEL_6;
    }

    v5 = [v2 givenName];
  }

  v6 = v5;
LABEL_6:
  if (v3 == 1)
  {
    v7 = 2;
  }

  else
  {
    v7 = v3 == 2;
  }

  v8 = objc_alloc(MEMORY[0x1E69978A0]);
  v9 = [v2 handle];
  v10 = [v2 contact];
  v11 = [v10 identifier];
  v12 = [v8 initWithIdentifier:v9 type:v7 displayName:v6 personId:v11 personIdType:3];

  return v12;
}

void __72___PSSuggester__recordFeedbackToInteractionStoreWithFeedback_mechanism___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = +[_PSLogging feedbackChannel];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:a2];
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_1B5ED1000, v3, OS_LOG_TYPE_INFO, "Persisted interaction for feedback, reply: %@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __62___PSSuggester_deleteInteractionsMatchingSuggestLessFeedback___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[_PSLogging feedbackChannel];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __91___PSContactSuggester_contactSuggestionsWithMaxSuggestions_excludeContactsWithIdentifiers___block_invoke_cold_1();
  }
}

void __62___PSSuggester_deleteInteractionsMatchingSuggestLessFeedback___block_invoke_529(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[_PSLogging feedbackChannel];
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __62___PSSuggester_deleteInteractionsMatchingSuggestLessFeedback___block_invoke_529_cold_1(a1);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 32) contactId];
    v8 = [*(a1 + 32) bundleId];
    v9 = [*(a1 + 32) conversationId];
    v11 = 138478339;
    v12 = v7;
    v13 = 2113;
    v14 = v8;
    v15 = 2113;
    v16 = v9;
    _os_log_impl(&dword_1B5ED1000, v6, OS_LOG_TYPE_DEFAULT, "SuggestLess: Deleted all interactions for contact id: %{private}@ bundle: %{private}@ conversation id: %{private}@", &v11, 0x20u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __64___PSSuggester_deleteUIInteractionsMatchingSuggestLessFeedback___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = [v4 eventBody];
  v6 = [v5 conversationId];
  v7 = [*(a1 + 32) conversationId];
  v8 = [v6 isEqualToString:v7];
  if (v8)
  {
LABEL_4:
    v11 = [*(a1 + 32) bundleId];
    v12 = [v4 eventBody];
    v13 = [v12 bundleID];
    v14 = [v11 isEqualToString:v13];

    v10 = v17;
    v9 = v19;
    if (v8)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v9 = [v4 eventBody];
  v10 = [v9 conversationId];
  v2 = [*(a1 + 32) derivedIntentId];
  if ([v10 isEqualToString:v2])
  {
    v16 = v10;
    v18 = v9;
    goto LABEL_4;
  }

  v14 = 0;
LABEL_7:

LABEL_8:
  return v14;
}

void __66___PSSuggester_provideFeedbackForContactsAutocompleteSuggestions___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[_PSLogging feedbackChannel];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __91___PSContactSuggester_contactSuggestionsWithMaxSuggestions_excludeContactsWithIdentifiers___block_invoke_cold_1();
  }
}

void __64___PSSuggester_writeFeedbackForContactsAutocompleteSuggestions___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 40))
  {
    v2 = *(a1 + 40);
    v3 = *(*(a1 + 32) + 40);

    [v3 sendEvent:v2];
  }

  else
  {
    v4 = +[_PSLogging feedbackChannel];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __64___PSSuggester_writeFeedbackForContactsAutocompleteSuggestions___block_invoke_cold_1();
    }
  }
}

uint64_t __96___PSSuggester_InteractionInformation__interactionCountForHandle_fetchLimit_interactionStoreDB___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (![v3 isInteractionMechanismCalls])
  {
    goto LABEL_7;
  }

  v4 = [v3 startDate];
  v5 = [v3 endDate];
  v6 = v5;
  if (!v4 || !v5)
  {
LABEL_6:

LABEL_7:
    v9 = 1;
    goto LABEL_8;
  }

  [v5 timeIntervalSinceDate:v4];
  v8 = v7;
  if (v7 >= 30.0)
  {
    [*(a1 + 40) addObject:v3];
    goto LABEL_6;
  }

  v12 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 32);
    v14 = 138478083;
    v15 = v13;
    v16 = 2048;
    v17 = v8;
    _os_log_impl(&dword_1B5ED1000, v12, OS_LOG_TYPE_DEFAULT, "_PSSuggester: Dropped interaction for handle: %{private}@ since call interval is %f", &v14, 0x16u);
  }

  v9 = 0;
LABEL_8:

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t __54___PSSuggester_InteractionInformation___dateFormatter__block_invoke()
{
  v0 = objc_opt_new();
  v1 = _dateFormatter_dateFormatter;
  _dateFormatter_dateFormatter = v0;

  [_dateFormatter_dateFormatter setDoesRelativeDateFormatting:1];
  [_dateFormatter_dateFormatter setDateStyle:2];
  v2 = _dateFormatter_dateFormatter;

  return [v2 setTimeStyle:2];
}

void __56___PSSuggester_initWithConfiguration_feedbackRecording___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __68___PSSuggester_showNotificationToFileARadarForUserStudyParticipants__block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __78___PSSuggester_asyncSuggestInteractionsFromContext_timeout_completionHandler___block_invoke_228_cold_1(NSObject *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_7();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }

  v1 = *MEMORY[0x1E69E9840];
}

void __63___PSSuggester_autocompleteSearchResultsWithPredictionContext___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __62___PSSuggester_deleteInteractionsMatchingSuggestLessFeedback___block_invoke_529_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) contactId];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

void __64___PSSuggester_writeFeedbackForContactsAutocompleteSuggestions___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end