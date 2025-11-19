@interface PSFTZKWOrchestrator
@end

@implementation PSFTZKWOrchestrator

void __50___PSFTZKWOrchestrator_updateConfigWithTrialData___block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = *(a1 + 32);
  v4 = *(v3 + 56);
  *(v3 + 56) = v2;

  v5 = *(a1 + 32);
  v6 = *(v5 + 8);
  v7 = [*(v5 + 56) calendarEventConfig];
  [v6 updateWithConfig:v7];

  v8 = *(a1 + 32);
  v9 = *(v8 + 16);
  v10 = [*(v8 + 56) unstructuredCalendarConfig];
  [v9 updateWithCalendarConfig:v10];

  v11 = *(a1 + 32);
  v12 = *(v11 + 24);
  v13 = [*(v11 + 56) unstructuredRemindersConfig];
  [v12 updateWithRemindersConfig:v13];

  v14 = *(a1 + 32);
  v15 = *(v14 + 32);
  v16 = [*(v14 + 56) faceTimeInteractionsConfig];
  [v15 updateWithPrimaryInteractionsConfig:v16];

  v17 = *(a1 + 32);
  v18 = *(v17 + 40);
  v19 = [*(v17 + 56) fallbackInteractionsConfig];
  [v18 updateWithFallbackInteractionsConfig:v19];
}

_PSSuggestion *__64___PSFTZKWOrchestrator__getBlendingLayerSuggestionsWithContext___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 executableSpecification];
  v4 = [v3 executableObject];

  v5 = [v4 reason];

  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v7 = [_PSSuggestion alloc];
    v20 = [v4 bundleID];
    v8 = [v4 conversationIdentifier];
    v19 = [v4 groupName];
    v9 = [v4 recipients];
    v10 = [v4 derivedIntentIdentifier];
    v11 = [v4 image];
    v12 = MEMORY[0x1E696AEC0];
    v18 = [v2 clientModelSpecification];
    v17 = [v18 clientModelId];
    v13 = [v12 stringWithFormat:@"External Model (%@)", v17];
    v14 = [v4 score];
    LOBYTE(v16) = [v4 familySuggestion];
    v6 = [(_PSSuggestion *)v7 initWithBundleID:v20 conversationIdentifier:v8 groupName:v19 recipients:v9 derivedIntentIdentifier:v10 image:v11 reason:v13 reasonType:0 score:v14 familySuggestion:v16];
  }

  return v6;
}

void __69___PSFTZKWOrchestrator__getDirectSuggestionsWithContext_withTimeout___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) count])
  {
    v3 = 0;
    v4 = 0.0;
    *&v2 = 138413058;
    v22 = v2;
    do
    {
      v5 = [*(a1 + 32) objectAtIndexedSubscript:{v3, v22}];
      v6 = [v5 unsignedIntegerValue];

      v7 = [MEMORY[0x1E695DF00] now];
      v8 = *(a1 + 40);
      v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v6];
      v10 = [v8 objectForKeyedSubscript:v9];

      v11 = [v10 getSuggestionsWithPredictionContext:*(a1 + 48)];
      os_unfair_lock_lock((*(*(a1 + 64) + 8) + 32));
      v12 = *(a1 + 56);
      v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v6];
      [v12 setObject:v11 forKeyedSubscript:v13];

      os_unfair_lock_unlock((*(*(a1 + 64) + 8) + 32));
      v14 = [MEMORY[0x1E695DF00] now];
      [v14 timeIntervalSinceDate:v7];
      v16 = v15;

      v4 = v4 + v16;
      v17 = *(a1 + 72);
      v18 = +[_PSLogging generalChannel];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        *buf = v22;
        v24 = v20;
        v25 = 2048;
        v26 = v16;
        v27 = 2048;
        v28 = v4;
        v29 = 1024;
        v30 = v4 > v17;
        _os_log_impl(&dword_1B5ED1000, v18, OS_LOG_TYPE_DEFAULT, "ZKW FaceTime default route %@ took %f seconds, cummulative seconds %f, timed out %d", buf, 0x26u);
      }

      if (v4 > v17)
      {
        break;
      }

      ++v3;
    }

    while (v3 < [*(a1 + 32) count]);
  }

  v21 = *MEMORY[0x1E69E9840];
}

void __69___PSFTZKWOrchestrator__getDirectSuggestionsWithContext_withTimeout___block_invoke_53()
{
  v0 = objc_autoreleasePoolPush();
  v1 = dispatch_queue_create("ps_ft_zkw_queue", 0);
  v2 = _getDirectSuggestionsWithContext_withTimeout___pasExprOnceResult;
  _getDirectSuggestionsWithContext_withTimeout___pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

void __60___PSFTZKWOrchestrator_getSuggestionsWithPredictionContext___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 56) useBlendingLayer];
  v3 = +[_PSLogging suggestionSignpost];
  v4 = os_signpost_enabled(v3);
  if (v2)
  {
    if (v4)
    {
      LOWORD(v18) = 0;
      _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_PSZKWFaceTimeBlendingRouteTotalTime", " enableTelemetry=YES ", &v18, 2u);
    }

    v5 = [*(a1 + 32) _getBlendingLayerSuggestionsWithContext:*(a1 + 40)];
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = +[_PSLogging suggestionSignpost];
    if (os_signpost_enabled(v8))
    {
      LOWORD(v18) = 0;
      _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v8, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_PSZKWFaceTimeBlendingRouteTotalTime", &unk_1B5FD970D, &v18, 2u);
    }

    v9 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(*(*(a1 + 48) + 8) + 40);
      v18 = 138412290;
      v19 = v10;
      v11 = "ZKW FaceTime suggestions going through blending layer route: %@";
LABEL_14:
      _os_log_impl(&dword_1B5ED1000, v9, OS_LOG_TYPE_DEFAULT, v11, &v18, 0xCu);
    }
  }

  else
  {
    if (v4)
    {
      LOWORD(v18) = 0;
      _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_PSZKWFaceTimeDefaultRouteTotalTime", " enableTelemetry=YES ", &v18, 2u);
    }

    v12 = [*(a1 + 32) _getDirectSuggestionsWithContext:*(a1 + 40)];
    v13 = *(*(a1 + 48) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    v15 = +[_PSLogging suggestionSignpost];
    if (os_signpost_enabled(v15))
    {
      LOWORD(v18) = 0;
      _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v15, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_PSZKWFaceTimeDefaultRouteTotalTime", &unk_1B5FD970D, &v18, 2u);
    }

    v9 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(*(*(a1 + 48) + 8) + 40);
      v18 = 138412290;
      v19 = v16;
      v11 = "ZKW FaceTime suggestions going through default route: %@";
      goto LABEL_14;
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __38___PSFTZKWOrchestrator_populateCaches__block_invoke(uint64_t a1)
{
  v14[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = +[_PSLogging suggestionSignpost];
    if (os_signpost_enabled(v3))
    {
      *v13 = 0;
      _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_PSZKWFaceTimeCacheTotalTime", " enableTelemetry=YES ", v13, 2u);
    }

    v4 = [WeakRetained _getDirectSuggestionsWithContext:*(a1 + 32) withTimeout:0.2];
    v5 = [[_PSFTZKWSuggestionsTransformerFactory alloc] initWithInteractionStore:WeakRetained[8]];
    v6 = MEMORY[0x1E695DF70];
    v7 = [(_PSFTZKWSuggestionsTransformerFactory *)v5 mapRecipientsToContactsWithUnmapped:0];
    v14[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    v9 = [v6 arrayWithArray:v8];
    v10 = [_PSFTZKWSuggestionsTransformerFactory getResultsFromTransformers:v9 suggestions:v4];

    v11 = +[_PSLogging suggestionSignpost];
    if (os_signpost_enabled(v11))
    {
      *v13 = 0;
      _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_PSZKWFaceTimeCacheTotalTime", &unk_1B5FD970D, v13, 2u);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

@end