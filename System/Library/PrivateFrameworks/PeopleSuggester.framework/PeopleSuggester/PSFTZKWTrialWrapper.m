@interface PSFTZKWTrialWrapper
@end

@implementation PSFTZKWTrialWrapper

void __38___PSFTZKWTrialWrapper_sharedInstance__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = objc_opt_new();
  v5 = sharedInstance__pasExprOnceResult_0;
  sharedInstance__pasExprOnceResult_0 = v4;

  objc_autoreleasePoolPop(v2);
}

void __28___PSFTZKWTrialWrapper_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained refresh];
    [v2 flagAsUpdated];
    WeakRetained = v2;
  }
}

void __35___PSFTZKWTrialWrapper_loadFactors__block_invoke(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(*(a1 + 32) + 24) experimentIdentifiersWithNamespaceName:@"COREML_SYSTEMS_FACETIME_CONTACT_PREDICTION"];
  [v3 setExperimentIdentifiers:v4];

  v5 = [v3 experimentIdentifiers];

  v6 = +[_PSLogging generalChannel];
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v8 = [v3 experimentIdentifiers];
      v9 = [v8 experimentId];
      v10 = [v3 experimentIdentifiers];
      v11 = [v10 deploymentId];
      v12 = [v3 experimentIdentifiers];
      v13 = [v12 treatmentId];
      v27 = 138412802;
      v28 = v9;
      v29 = 1024;
      v30 = v11;
      v31 = 2112;
      v32 = v13;
      _os_log_impl(&dword_1B5ED1000, v6, OS_LOG_TYPE_DEFAULT, "_PSFTZKWTrialWrapper: Device is enrolled in experiment with experiment ID = %@, deployment ID = %d, treatment ID = %@", &v27, 0x1Cu);
    }
  }

  else if (v7)
  {
    LOWORD(v27) = 0;
    _os_log_impl(&dword_1B5ED1000, v6, OS_LOG_TYPE_DEFAULT, "_PSFTZKWTrialWrapper: Device is not enrolled in an experiment.", &v27, 2u);
  }

  v14 = [*(*(a1 + 32) + 24) rolloutIdentifiersWithNamespaceName:@"COREML_SYSTEMS_FACETIME_CONTACT_PREDICTION"];
  [v3 setRolloutIdentifiers:v14];

  v15 = [v3 rolloutIdentifiers];

  v16 = +[_PSLogging generalChannel];
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if (v15)
  {
    if (v17)
    {
      v18 = [v3 rolloutIdentifiers];
      v19 = [v18 rolloutId];
      v20 = [v3 rolloutIdentifiers];
      v21 = [v20 deploymentId];
      v22 = [v3 rolloutIdentifiers];
      v23 = [v22 factorPackId];
      v27 = 138412802;
      v28 = v19;
      v29 = 1024;
      v30 = v21;
      v31 = 2112;
      v32 = v23;
      _os_log_impl(&dword_1B5ED1000, v16, OS_LOG_TYPE_DEFAULT, "_PSFTZKWTrialWrapper: Device is part of a rollout with rollout ID = %@, deployment ID = %d, factor pack ID = %@", &v27, 0x1Cu);
    }
  }

  else if (v17)
  {
    LOWORD(v27) = 0;
    _os_log_impl(&dword_1B5ED1000, v16, OS_LOG_TYPE_DEFAULT, "_PSFTZKWTrialWrapper: Device is not included in a rollout.", &v27, 2u);
  }

  v24 = [v3 experimentIdentifiers];
  if (!v24)
  {
    v25 = [v3 rolloutIdentifiers];

    if (v25)
    {
      goto LABEL_14;
    }

    v24 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v27) = 0;
      _os_log_impl(&dword_1B5ED1000, v24, OS_LOG_TYPE_DEFAULT, "_PSFTZKWTrialWrapper: Using device-local default factor values (levels).", &v27, 2u);
    }
  }

LABEL_14:
  [v3 setStructuredCalendarIsEnabled:{objc_msgSend(*(a1 + 32), "loadLevelAsBooleanFromFactor:withDefault:", @"structuredCalendarIsEnabled", 1)}];
  [v3 setStructuredCalendarDefaultConfidenceCategory:{objc_msgSend(*(a1 + 32), "loadLevelAsConfidenceCategoryFromFactor:withDefault:", @"structuredCalendarDefaultConfidenceCategory", 3)}];
  [v3 setUnstructuredCalendarIsEnabled:{objc_msgSend(*(a1 + 32), "loadLevelAsBooleanFromFactor:withDefault:", @"unstructuredCalendarIsEnabled", 1)}];
  [v3 setUnstructuredCalendarDefaultConfidenceCategory:{objc_msgSend(*(a1 + 32), "loadLevelAsConfidenceCategoryFromFactor:withDefault:", @"unstructuredCalendarDefaultConfidenceCategory", 3)}];
  [v3 setUnstructuredRemindersIsEnabled:{objc_msgSend(*(a1 + 32), "loadLevelAsBooleanFromFactor:withDefault:", @"unstructuredRemindersIsEnabled", 0)}];
  [v3 setUnstructuredRemindersDefaultConfidenceCategory:{objc_msgSend(*(a1 + 32), "loadLevelAsConfidenceCategoryFromFactor:withDefault:", @"unstructuredRemindersDefaultConfidenceCategory", 3)}];
  [v3 setPrimaryInteractionsIsEnabled:{objc_msgSend(*(a1 + 32), "loadLevelAsBooleanFromFactor:withDefault:", @"primaryInteractionsIsEnabled", 1)}];
  [v3 setPrimaryInteractionsDefaultConfidenceCategory:{objc_msgSend(*(a1 + 32), "loadLevelAsConfidenceCategoryFromFactor:withDefault:", @"primaryInteractionsDefaultConfidenceCategory", 3)}];
  [v3 setPrimaryInteractionsModelType:{objc_msgSend(*(a1 + 32), "loadLevelAsInteractionModelTypeFromFactor:withDefault:", @"primaryInteractionsModelType", 0)}];
  [v3 setFallbackInteractionsIsEnabled:{objc_msgSend(*(a1 + 32), "loadLevelAsBooleanFromFactor:withDefault:", @"fallbackInteractionsIsEnabled", 1)}];
  [v3 setFallbackInteractionsDefaultConfidenceCategory:{objc_msgSend(*(a1 + 32), "loadLevelAsConfidenceCategoryFromFactor:withDefault:", @"fallbackInteractionsDefaultConfidenceCategory", 3)}];
  [v3 setFallbackInteractionsModelType:{objc_msgSend(*(a1 + 32), "loadLevelAsInteractionModelTypeFromFactor:withDefault:", @"fallbackInteractionsModelType", 0)}];

  v26 = *MEMORY[0x1E69E9840];
}

void __37___PSFTZKWTrialWrapper_runIfUpdated___block_invoke(uint64_t a1, _BYTE *a2)
{
  if (a2[8] == 1)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = a2;
    [v4 runWithData:v5];
    a2[8] = 0;
  }
}

@end