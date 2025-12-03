@interface TRIActivateTreatmentTask
+ (id)parseFromData:(id)data;
- (BOOL)isEqual:(id)equal;
- (NSArray)dependencies;
- (NSString)description;
- (TRIActivateTreatmentTask)initWithCoder:(id)coder;
- (id)_asPersistedTask;
- (id)_nextTasksForRunStatus:(int)status;
- (id)metrics;
- (id)runTaskUsingContext:(id)context experiment:(id)experiment;
- (id)serialize;
- (unint64_t)hash;
- (unint64_t)requiredCapabilities;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TRIActivateTreatmentTask

- (TRIActivateTreatmentTask)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = TRIActivateTreatmentTask;
  v5 = [(TRIActivateTreatmentTask *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pb"];
    if (v6)
    {
      v7 = [objc_opt_class() parseFromData:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIActivateTreatmentTask.m" lineNumber:80 description:{@"Don't use NSSecureCoding to persist tasks to disk, use -[TRITask serialize]."}];
  }

  serialize = [(TRIActivateTreatmentTask *)self serialize];
  [coderCopy encodeObject:serialize forKey:@"pb"];
}

- (unint64_t)requiredCapabilities
{
  v3.receiver = self;
  v3.super_class = TRIActivateTreatmentTask;
  return [(TRIBaseTask *)&v3 requiredCapabilities];
}

- (NSArray)dependencies
{
  v30 = *MEMORY[0x277D85DE8];
  if ([(TRIActivateTreatmentTask *)self testingIgnoreDependencies])
  {
    v3 = 0;
    goto LABEL_14;
  }

  if (![(TRIActivateTreatmentBaseTask *)self requiresTreatmentInstallation])
  {
    experiment = [(TRIExperimentBaseTask *)self experiment];
    taskAttributing = [(TRITreatmentBaseTask *)self taskAttributing];
    v12 = [TRIFetchExperimentTask taskWithExperimentDeployment:experiment taskAttributing:taskAttributing];
    v23 = v12;
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];

LABEL_13:
    goto LABEL_14;
  }

  v3 = objc_opt_new();
  factorPackSetId = [(TRIActivateTreatmentTask *)self factorPackSetId];

  if (factorPackSetId)
  {
    factorPackSetId2 = [(TRIActivateTreatmentTask *)self factorPackSetId];
    treatmentId = [(TRITreatmentBaseTask *)self treatmentId];
    taskAttributing2 = [(TRITreatmentBaseTask *)self taskAttributing];
    experiment2 = [(TRIExperimentBaseTask *)self experiment];
    v9 = [TRIFetchFactorPackSetTask taskWithFactorPackSetId:factorPackSetId2 treatmentId:treatmentId isCounterfactualTreatment:0 taskAttribution:taskAttributing2 experimentDeployment:experiment2];
    [v3 addObject:v9];
  }

  else
  {
    factorPackSetId2 = [(TRIExperimentBaseTask *)self experiment];
    treatmentId = [(TRITreatmentBaseTask *)self treatmentId];
    taskAttributing2 = [(TRITreatmentBaseTask *)self taskAttributing];
    experiment2 = [TRIFetchTreatmentTask taskWithExperiment:factorPackSetId2 treatmentId:treatmentId taskAttributing:taskAttributing2 capabilityModifier:self->_capabilityModifier];
    [v3 addObject:experiment2];
  }

  counterfactualTreatments = [(TRIActivateTreatmentTask *)self counterfactualTreatments];

  if (counterfactualTreatments)
  {
    counterfactualTreatments2 = [(TRIActivateTreatmentTask *)self counterfactualTreatments];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __40__TRIActivateTreatmentTask_dependencies__block_invoke;
    v21[3] = &unk_279DE3B38;
    v21[4] = self;
    v22 = v3;
    [counterfactualTreatments2 enumerateKeysAndObjectsUsingBlock:v21];
  }

  if (![v3 count])
  {
    experiment = TRILogCategory_Server();
    if (os_log_type_enabled(experiment, OS_LOG_TYPE_FAULT))
    {
      experiment3 = [(TRIExperimentBaseTask *)self experiment];
      experimentId = [experiment3 experimentId];
      treatmentId2 = [(TRITreatmentBaseTask *)self treatmentId];
      factorPackSetId3 = [(TRIActivateTreatmentTask *)self factorPackSetId];
      *buf = 138412802;
      v25 = experimentId;
      v26 = 2112;
      v27 = treatmentId2;
      v28 = 2112;
      v29 = factorPackSetId3;
      _os_log_fault_impl(&dword_26F567000, experiment, OS_LOG_TYPE_FAULT, "Activate treatment task isn't queueing a fetch FPS or fetch treatmentV1. (ExperimentId: %@, TreatmentId: %@, FPSId:%@)", buf, 0x20u);
    }

    goto LABEL_13;
  }

LABEL_14:
  v15 = *MEMORY[0x277D85DE8];

  return v3;
}

void __40__TRIActivateTreatmentTask_dependencies__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  v7 = TRILogCategory_Server();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 32) experiment];
    v9 = [v8 experimentId];
    v10 = [*(a1 + 32) treatmentId];
    v11 = [*(a1 + 32) factorPackSetId];
    v17 = 138412802;
    v18 = v9;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v11;
    _os_log_impl(&dword_26F567000, v7, OS_LOG_TYPE_DEFAULT, "Queueing counterfactual FPS fetch (ExperimentId: %@, TreatmentId: %@, FPSId: %@)", &v17, 0x20u);
  }

  v12 = *(a1 + 40);
  v13 = [*(a1 + 32) taskAttributing];
  v14 = [*(a1 + 32) experiment];
  v15 = [TRIFetchFactorPackSetTask taskWithFactorPackSetId:v5 treatmentId:v6 isCounterfactualTreatment:1 taskAttribution:v13 experimentDeployment:v14];

  [v12 addObject:v15];
  v16 = *MEMORY[0x277D85DE8];
}

- (id)runTaskUsingContext:(id)context experiment:(id)experiment
{
  v147 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  experimentCopy = experiment;
  v111 = contextCopy;
  v109 = experimentCopy;
  if ([TRIUserAdjustableSettings getExperimentOptOut:contextCopy])
  {
    v9 = TRILogCategory_Server();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      experimentDeployment = [v109 experimentDeployment];
      experimentId = [experimentDeployment experimentId];
      experimentDeployment2 = [v109 experimentDeployment];
      *buf = 138543618;
      *&buf[4] = experimentId;
      *&buf[12] = 1026;
      *&buf[14] = [experimentDeployment2 deploymentId];
      _os_log_impl(&dword_26F567000, v9, OS_LOG_TYPE_DEFAULT, "Skipping activation of treatment for experiment: %{public}@ (deployment: %{public}d) due to user opt-out of experiments", buf, 0x12u);
    }

    v13 = [TRITaskRunResult resultWithRunStatus:4 reportResultToServer:1 nextTasks:MEMORY[0x277CBEBF8] earliestRetryDate:0];
  }

  else
  {
    v96 = a2;
    selfCopy = self;
    v136[0] = MEMORY[0x277D85DD0];
    v136[1] = 3221225472;
    v136[2] = __59__TRIActivateTreatmentTask_runTaskUsingContext_experiment___block_invoke;
    v136[3] = &unk_279DE3B60;
    v14 = experimentCopy;
    v137 = v14;
    v102 = MEMORY[0x2743948D0](v136);
    paths = [contextCopy paths];
    namespaceDescriptorsExperimentDir = [paths namespaceDescriptorsExperimentDir];

    if (!namespaceDescriptorsExperimentDir)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"TRIActivateTreatmentTask.m" lineNumber:211 description:@"no namespace descriptor directory"];
    }

    experimentDeployment3 = [v14 experimentDeployment];
    v132 = 0;
    v133 = &v132;
    v134 = 0x2020000000;
    v135 = 3;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v144 = __Block_byref_object_copy__44;
    v145 = __Block_byref_object_dispose__44;
    v146 = @"reason-not-set";
    v16 = [TRISystemCovariates alloc];
    paths2 = [contextCopy paths];
    v112 = [(TRISystemCovariates *)v16 initWithPaths:paths2];

    dictionary = [(TRISystemCovariates *)v112 dictionary];
    v105 = [dictionary valueForKey:@"OSBuild"];

    dictionary2 = [(TRISystemCovariates *)v112 dictionary];
    v108 = [dictionary2 valueForKey:@"UserSettingsLanguageCode"];

    dictionary3 = [(TRISystemCovariates *)v112 dictionary];
    v107 = [dictionary3 valueForKey:@"UserSettingsRegionCode"];

    dictionary4 = [(TRISystemCovariates *)v112 dictionary];
    v104 = [dictionary4 valueForKey:@"BCP47DeviceLocale"];

    if (v104)
    {
      v22 = [v104 componentsSeparatedByString:@"-"];
      firstObject = [v22 firstObject];

      v24 = [v104 componentsSeparatedByString:@"-"];
      lastObject = [v24 lastObject];

      if (lastObject)
      {
        v26 = lastObject;
      }

      else
      {
        v26 = &stru_287FA0430;
      }

      v107 = v26;

      v108 = firstObject;
    }

    dictionary5 = [(TRISystemCovariates *)v112 dictionary];
    v28 = [dictionary5 valueForKey:@"CarrierBundleIdentifier"];
    v29 = v28;
    if (v28)
    {
      v30 = v28;
    }

    else
    {
      v30 = &stru_287FA0430;
    }

    v101 = v30;

    dictionary6 = [(TRISystemCovariates *)v112 dictionary];
    v32 = [dictionary6 valueForKey:@"CarrierCountryIsoCode"];
    v33 = v32;
    if (v32)
    {
      v34 = v32;
    }

    else
    {
      v34 = &stru_287FA0430;
    }

    v100 = v34;

    dictionary7 = [(TRISystemCovariates *)v112 dictionary];
    v36 = [dictionary7 valueForKey:@"DiagnosticsUsageEnabled"];
    bOOLValue = [v36 BOOLValue];

    dictionary8 = [(TRISystemCovariates *)v112 dictionary];
    v39 = [dictionary8 valueForKey:@"HasANE"];
    bOOLValue2 = [v39 BOOLValue];

    dictionary9 = [(TRISystemCovariates *)v112 dictionary];
    v42 = [dictionary9 valueForKey:@"ANEVersion"];
    v43 = v42;
    if (v42)
    {
      v44 = v42;
    }

    else
    {
      v44 = &stru_287FA0430;
    }

    v99 = v44;

    if (!v105)
    {
      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler2 handleFailureInMethod:v96 object:selfCopy file:@"TRIActivateTreatmentTask.m" lineNumber:243 description:{@"Invalid parameter not satisfying: %@", @"osBuild"}];
    }

    if (!v108)
    {
      currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler3 handleFailureInMethod:v96 object:selfCopy file:@"TRIActivateTreatmentTask.m" lineNumber:244 description:{@"Invalid parameter not satisfying: %@", @"languageCode"}];
    }

    if (!v107)
    {
      currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler4 handleFailureInMethod:v96 object:selfCopy file:@"TRIActivateTreatmentTask.m" lineNumber:245 description:{@"Invalid parameter not satisfying: %@", @"regionCode"}];
    }

    experimentDatabase = [contextCopy experimentDatabase];
    v46 = [experimentDatabase experimentRecordWithExperimentDeployment:experimentDeployment3];

    if (v46 && [v46 status] == 1)
    {
      v47 = TRILogCategory_Server();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        experiment = [(TRIExperimentBaseTask *)selfCopy experiment];
        experimentId2 = [experiment experimentId];
        *v139 = 138543362;
        v140 = experimentId2;
        _os_log_impl(&dword_26F567000, v47, OS_LOG_TYPE_DEFAULT, "Experiment %{public}@ is already activated, nothing to do.", v139, 0xCu);
      }

      notify_post("com.apple.trial.ActivateTreatmentTaskComplete");
      v13 = v102[2](v102, 2, MEMORY[0x277CBEBF8], 0, 0);
    }

    else
    {

      experimentDatabase2 = [contextCopy experimentDatabase];
      v117[0] = MEMORY[0x277D85DD0];
      v117[1] = 3221225472;
      v117[2] = __59__TRIActivateTreatmentTask_runTaskUsingContext_experiment___block_invoke_171;
      v117[3] = &unk_279DE3BB0;
      v97 = contextCopy;
      v118 = v97;
      v119 = experimentDeployment3;
      v120 = selfCopy;
      v128 = &v132;
      v129 = buf;
      v121 = v105;
      v122 = v108;
      v123 = v107;
      v124 = v101;
      v125 = v100;
      v130 = bOOLValue;
      v131 = bOOLValue2;
      v126 = v99;
      v98 = v14;
      v127 = v98;
      [experimentDatabase2 writeTransactionWithFailableBlock:v117];

      endTime = [(TRIActivateTreatmentBaseTask *)selfCopy endTime];
      v52 = endTime == 0;

      if (v52)
      {
        endDate = [v98 endDate];
        [(TRIActivateTreatmentBaseTask *)selfCopy setEndTime:endDate];
      }

      v54 = TRILogCategory_Server();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        treatmentId = [(TRITreatmentBaseTask *)selfCopy treatmentId];
        experiment2 = [(TRIExperimentBaseTask *)selfCopy experiment];
        shortDesc = [experiment2 shortDesc];
        *v139 = 138412546;
        v140 = treatmentId;
        v141 = 2114;
        v142 = shortDesc;
        _os_log_impl(&dword_26F567000, v54, OS_LOG_TYPE_DEFAULT, "notify about updates to namespaces in treatment %@ for experiment %{public}@", v139, 0x16u);
      }

      v115 = 0u;
      v116 = 0u;
      v113 = 0u;
      v114 = 0u;
      namespaces = [v98 namespaces];
      v59 = [namespaces countByEnumeratingWithState:&v113 objects:v138 count:16];
      if (v59)
      {
        v60 = *v114;
        do
        {
          for (i = 0; i != v59; ++i)
          {
            if (*v114 != v60)
            {
              objc_enumerationMutation(namespaces);
            }

            v62 = *(*(&v113 + 1) + 8 * i);
            v63 = TRILogCategory_Server();
            if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
            {
              name = [v62 name];
              *v139 = 138543362;
              v140 = name;
              _os_log_impl(&dword_26F567000, v63, OS_LOG_TYPE_DEFAULT, "notify about updates to namespace %{public}@", v139, 0xCu);
            }

            v65 = MEMORY[0x277D73790];
            name2 = [v62 name];
            [v65 notifyUpdateForNamespaceName:name2];
          }

          v59 = [namespaces countByEnumeratingWithState:&v113 objects:v138 count:16];
        }

        while (v59);
      }

      if (*(v133 + 6) == 2)
      {
        [TRIBiomeExperimentUpdateStreamWriter writeExperimentUpdateWithRecord:v98 withExperimentStateIsActive:1 withUserId:0];
        experiment3 = [(TRIExperimentBaseTask *)selfCopy experiment];
        v68 = [TRIContentTracker contentIdentifierForExperimentArtifactWithDeployment:experiment3];

        contentTracker = [v97 contentTracker];
        [contentTracker addRefWithContentIdentifier:v68];

        v70 = [TRIExperimentPostLaunchEvent activatedEventWithExperimentRecord:v98];
        v71 = [TRIExperimentPostLaunchRecorder recorderFromContext:v97];
        if (([v71 recordEvent:v70] & 1) == 0)
        {
          v72 = TRILogCategory_Server();
          if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
          {
            treatmentId2 = [(TRITreatmentBaseTask *)selfCopy treatmentId];
            experiment4 = [(TRIExperimentBaseTask *)selfCopy experiment];
            *v139 = 138412546;
            v140 = treatmentId2;
            v141 = 2114;
            v142 = experiment4;
            _os_log_error_impl(&dword_26F567000, v72, OS_LOG_TYPE_ERROR, "Treatment is active but we failed to update experiment history database for treatment %@ for experiment %{public}@:. We will retry running the task.", v139, 0x16u);
          }

          *(v133 + 6) = 1;
        }

        if ([(TRIActivateTreatmentBaseTask *)selfCopy requiresTreatmentInstallation])
        {
          v73 = [(TRIExperimentBaseTask *)selfCopy containerForFirstNamespaceInExperimentWithContext:v97];
          treatmentId3 = [(TRITreatmentBaseTask *)selfCopy treatmentId];
          v75 = [TRIContentTracker contentIdentifierForTreatmentArtifactWithTreatmentId:treatmentId3 container:v73];

          contentTracker2 = [v97 contentTracker];
          [contentTracker2 addRefWithContentIdentifier:v75];
        }
      }

      v77 = *(v133 + 6);
      if (v77 == 3)
      {
        experiment5 = [(TRIExperimentBaseTask *)selfCopy experiment];
        experimentId3 = [experiment5 experimentId];
        experiment6 = [(TRIExperimentBaseTask *)selfCopy experiment];
        deploymentId = [experiment6 deploymentId];
        treatmentId4 = [(TRITreatmentBaseTask *)selfCopy treatmentId];
        v83 = [TRIExperimentDeploymentTreatment treatmentTripleWithExperimentId:experimentId3 deploymentId:deploymentId treatmentId:treatmentId4];

        v84 = [TRIExperimentPostLaunchEvent failureEventWithEventType:8 treatmentTriple:v83 failureReason:*(*&buf[8] + 40)];
        if (!v84)
        {
          currentHandler5 = [MEMORY[0x277CCA890] currentHandler];
          [currentHandler5 handleFailureInMethod:v96 object:selfCopy file:@"TRIActivateTreatmentTask.m" lineNumber:484 description:{@"Expression was unexpectedly nil/false: %@", @"[TRIExperimentPostLaunchEvent failureEventWithEventType:TRIInternalExperimentAllocationStatusTypeTreatmentActivationFailure treatmentTriple:triple failureReason:failureReason]"}];
        }

        v85 = [TRIExperimentPostLaunchRecorder recorderFromContext:v97];
        [v85 recordEvent:v84];

        v77 = *(v133 + 6);
      }

      v86 = [(TRIActivateTreatmentTask *)selfCopy _nextTasksForRunStatus:v77];
      v13 = (v102)[2](v102, v77, v86, 1, 0);

      notify_post("com.apple.trial.ActivateTreatmentTaskComplete");
      v46 = v118;
    }

    _Block_object_dispose(buf, 8);
    _Block_object_dispose(&v132, 8);
  }

  v87 = *MEMORY[0x277D85DE8];

  return v13;
}

id __59__TRIActivateTreatmentTask_runTaskUsingContext_experiment___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = MEMORY[0x277CBEBF8];
  if (a3)
  {
    v7 = a3;
  }

  v8 = v7;
  v9 = [*(a1 + 32) artifact];
  v10 = [v9 experiment];
  v11 = [v10 hasLowLevelConfiguration];

  if (v11)
  {
    v12 = objc_opt_new();
    v13 = [v8 arrayByAddingObject:v12];

    v8 = v13;
  }

  v14 = [TRITaskRunResult resultWithRunStatus:a2 reportResultToServer:a4 nextTasks:v8 earliestRetryDate:0];

  return v14;
}

uint64_t __59__TRIActivateTreatmentTask_runTaskUsingContext_experiment___block_invoke_171(uint64_t a1, void *a2)
{
  v86 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) experimentDatabase];
  v5 = [v4 setStatus:1 forExperimentDeployment:*(a1 + 40) usingTransaction:v3];

  if ((v5 & 1) == 0)
  {
    v42 = TRILogCategory_Server();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v50 = [*(a1 + 48) treatmentId];
      v51 = [*(a1 + 48) experiment];
      *buf = 138412546;
      *&buf[4] = v50;
      *&buf[12] = 2114;
      *&buf[14] = v51;
      _os_log_error_impl(&dword_26F567000, v42, OS_LOG_TYPE_ERROR, "failed to activate treatment %@ for experiment %{public}@: failed to update database", buf, 0x16u);
    }

    goto LABEL_25;
  }

  v6 = *(*(a1 + 48) + 96);
  if (v6)
  {
    if ([v6 hasIsManuallyTargeted])
    {
      v7 = [*(a1 + 32) experimentDatabase];
      v8 = [v7 setManuallyTargeted:objc_msgSend(*(*(a1 + 48) + 96) forExperimentDeployment:"isManuallyTargeted") usingTransaction:{*(a1 + 40), v3}];

      if ((v8 & 1) == 0)
      {
        v46 = TRILogCategory_Server();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          v69 = [*(a1 + 48) treatmentId];
          v70 = [*(a1 + 48) experiment];
          *buf = 138412546;
          *&buf[4] = v69;
          *&buf[12] = 2114;
          *&buf[14] = v70;
          _os_log_error_impl(&dword_26F567000, v46, OS_LOG_TYPE_ERROR, "failed to activate treatment %@ for experiment %{public}@: failed to update database", buf, 0x16u);
        }

        *(*(*(a1 + 112) + 8) + 24) = 3;
        v47 = *(*(a1 + 120) + 8);
        v48 = *(v47 + 40);
        *(v47 + 40) = @"database-failure";

        goto LABEL_26;
      }
    }
  }

  v9 = [*(a1 + 32) activationEventDatabase];
  v10 = [*(a1 + 40) experimentId];
  v11 = [*(a1 + 48) treatmentId];
  v12 = [*(a1 + 40) deploymentId];
  if (*(a1 + 72))
  {
    v13 = *(a1 + 72);
  }

  else
  {
    v13 = &stru_287FA0430;
  }

  LOWORD(v75) = *(a1 + 128);
  v14 = [v9 addRecordWithParentId:v10 factorPackSetId:v11 deploymentId:v12 osBuild:*(a1 + 56) languageCode:*(a1 + 64) regionCode:v13 carrierBundleId:*(a1 + 80) carrierCountryCode:*(a1 + 88) diagnosticsUsageEnabled:v75 hasAne:*(a1 + 96) aneVersion:v3 transaction:?];

  if (!v14)
  {
    v15 = TRILogCategory_Server();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v65 = [*(a1 + 48) treatmentId];
      v66 = [*(a1 + 48) experiment];
      *buf = 138412546;
      *&buf[4] = v65;
      *&buf[12] = 2114;
      *&buf[14] = v66;
      _os_log_error_impl(&dword_26F567000, v15, OS_LOG_TYPE_ERROR, "error during activation of treatment %@ for experiment %{public}@: failed to update activation event database", buf, 0x16u);
    }
  }

  if (![*(a1 + 48) requiresTreatmentInstallation])
  {
    goto LABEL_48;
  }

  v16 = [*(a1 + 32) experimentDatabase];
  v17 = [v16 treatmentURLsForExperimentDeployment:*(a1 + 40) usingTransaction:v3];

  if (!v17)
  {
    v42 = TRILogCategory_Server();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v67 = [*(a1 + 48) treatmentId];
      v68 = [*(a1 + 48) experiment];
      *buf = 138412546;
      *&buf[4] = v67;
      *&buf[12] = 2114;
      *&buf[14] = v68;
      _os_log_error_impl(&dword_26F567000, v42, OS_LOG_TYPE_ERROR, "cannot activate treatment %@ for experiment %{public}@: failed to read treatment paths", buf, 0x16u);
    }

LABEL_25:

    *(*(*(a1 + 112) + 8) + 24) = 1;
    goto LABEL_26;
  }

  v76 = [[TRIUserCovariates alloc] initWithContext:*(a1 + 32)];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v83 = __Block_byref_object_copy__44;
  v84 = __Block_byref_object_dispose__44;
  v85 = 0;
  v18 = [*(a1 + 32) experimentDatabase];
  v19 = [*(a1 + 48) experiment];
  v77[0] = MEMORY[0x277D85DD0];
  v77[1] = 3221225472;
  v77[2] = __59__TRIActivateTreatmentTask_runTaskUsingContext_experiment___block_invoke_173;
  v77[3] = &unk_279DE3B88;
  v77[4] = buf;
  [v18 enumerateNamespaceRecordsForExperimentDeployment:v19 usingTransaction:v3 block:v77];

  if (*(*&buf[8] + 40))
  {
    v20 = [*(a1 + 32) namespaceDatabase];
    v21 = [v20 dynamicNamespaceRecordWithNamespaceName:*(*&buf[8] + 40)];

    if (v21)
    {
      v22 = [*(a1 + 48) taskAttributing];
      v23 = [v22 applicationBundleIdentifier];

      if (v23)
      {
        v24 = [MEMORY[0x277D73BE8] dimensionWithName:@"client_app_bundle_id" value:v23];
        [*(a1 + 48) addDimension:v24];
        v25 = [(TRIUserCovariates *)v76 tri_shortVersionStringForBundleId:v23];
        v26 = [MEMORY[0x277D73BE8] dimensionWithName:@"client_app_version" value:v25];
        [*(a1 + 48) addDimension:v26];
      }
    }
  }

  v27 = *(a1 + 48);
  v28 = [*(a1 + 32) paths];
  v29 = [v27 _writeNamespaceDescriptorsWithPaths:v28 toTreatmentLayer:4 forExperiment:*(a1 + 104) treatmentURLs:v17 context:*(a1 + 32)];

  if (v29)
  {
    v30 = [TRINamespaceResolverStorage alloc];
    v31 = [*(a1 + 32) paths];
    v32 = [(TRINamespaceResolverStorage *)v30 initWithPaths:v31];

    v33 = *(a1 + 48);
    if (v33[14])
    {
      v34 = [TRIFactorPackSetStorage alloc];
      v35 = [*(a1 + 32) paths];
      v36 = [(TRIFactorPackSetStorage *)v34 initWithPaths:v35];

      v37 = [(TRIFactorPackSetStorage *)v36 hasFactorPackSetWithId:*(*(a1 + 48) + 112) path:0];
      v38 = *(a1 + 48);
      if (v37)
      {
        v39 = [v38 experiment];
        v40 = [*(a1 + 48) treatmentId];
        v41 = [v32 rewriteExperimentDeployment:v39 targetedTreatmentId:v40 factorPackSetId:*(*(a1 + 48) + 112)];

        if (v41)
        {
          goto LABEL_46;
        }

        goto LABEL_43;
      }

      v55 = [v38 experiment];
      v56 = [*(a1 + 48) treatmentId];
      v54 = [v32 rewriteExperimentDeployment:v55 targetedTreatmentId:v56];

      v57 = TRILogCategory_Server();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        v73 = [*(a1 + 48) treatmentId];
        v74 = *(*(a1 + 48) + 112);
        *v78 = 138412546;
        v79 = v73;
        v80 = 2112;
        v81 = v74;
        _os_log_error_impl(&dword_26F567000, v57, OS_LOG_TYPE_ERROR, "Activating treatment (%@) without FPS (%@): The fetch seems to have failed.", v78, 0x16u);
      }
    }

    else
    {
      v52 = [v33 experiment];
      v53 = [*(a1 + 48) treatmentId];
      v54 = [v32 rewriteExperimentDeployment:v52 targetedTreatmentId:v53];
    }

    if (v54)
    {
LABEL_46:

      goto LABEL_47;
    }

LABEL_43:
    v58 = TRILogCategory_Server();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      *v78 = 0;
      _os_log_error_impl(&dword_26F567000, v58, OS_LOG_TYPE_ERROR, "Unable to update on-disk experiment deployment directory.", v78, 2u);
    }

    goto LABEL_46;
  }

  v49 = TRILogCategory_Server();
  if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
  {
    v71 = [*(a1 + 48) treatmentId];
    v72 = [*(a1 + 48) experiment];
    *v78 = 138412546;
    v79 = v71;
    v80 = 2114;
    v81 = v72;
    _os_log_error_impl(&dword_26F567000, v49, OS_LOG_TYPE_ERROR, "cannot activate treatment %@ for experiment %{public}@: failed to save namespace descriptors", v78, 0x16u);
  }

  *(*(*(a1 + 112) + 8) + 24) = 1;
  v32 = *MEMORY[0x277D42678];
LABEL_47:
  _Block_object_dispose(buf, 8);

  if ((v29 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_48:
  v59 = [TRINamespaceResolverStorage alloc];
  v60 = [*(a1 + 32) paths];
  v61 = [(TRINamespaceResolverStorage *)v59 initWithPaths:v60];

  if ([(TRINamespaceResolverStorage *)v61 overwriteActiveFactorProvidersUsingTransaction:v3 fromContext:*(a1 + 32)])
  {

    *(*(*(a1 + 112) + 8) + 24) = 2;
    v43 = MEMORY[0x277D42670];
    goto LABEL_27;
  }

  v62 = TRILogCategory_Server();
  if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_26F567000, v62, OS_LOG_TYPE_ERROR, "Unable to update the factor providers after experiment activation.", buf, 2u);
  }

  *(*(*(a1 + 112) + 8) + 24) = 3;
  v63 = *(*(a1 + 120) + 8);
  v64 = *(v63 + 40);
  *(v63 + 40) = @"storage-overwrite-failure";

LABEL_26:
  v43 = MEMORY[0x277D42678];
LABEL_27:
  v32 = *v43;
LABEL_28:

  v44 = *MEMORY[0x277D85DE8];
  return v32;
}

void __59__TRIActivateTreatmentTask_runTaskUsingContext_experiment___block_invoke_173(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 name];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  *a3 = 1;
}

- (id)_nextTasksForRunStatus:(int)status
{
  v33[1] = *MEMORY[0x277D85DE8];
  if (status == 2)
  {
    endTime = [(TRIActivateTreatmentBaseTask *)self endTime];

    if (!endTime)
    {
      experiment5 = TRILogCategory_Server();
      if (os_log_type_enabled(experiment5, OS_LOG_TYPE_DEBUG))
      {
        treatmentId = [(TRITreatmentBaseTask *)self treatmentId];
        experiment = [(TRIExperimentBaseTask *)self experiment];
        experimentId = [experiment experimentId];
        v28 = 138412546;
        v29 = treatmentId;
        v30 = 2114;
        v31 = experimentId;
        _os_log_debug_impl(&dword_26F567000, experiment5, OS_LOG_TYPE_DEBUG, "not scheduling deactivation of treatment %@ for experiment %{public}@ since end time is nil", &v28, 0x16u);
      }

      v11 = MEMORY[0x277CBEBF8];
      goto LABEL_9;
    }

    experiment2 = [(TRIExperimentBaseTask *)self experiment];
    experimentId2 = [experiment2 experimentId];
    experiment3 = [(TRIExperimentBaseTask *)self experiment];
    deploymentId = [experiment3 deploymentId];
    endTime2 = [(TRIActivateTreatmentBaseTask *)self endTime];
    taskAttributing = [(TRITreatmentBaseTask *)self taskAttributing];
    experiment5 = [TRIDeactivateTreatmentTask taskWithExperimentId:experimentId2 deploymentId:deploymentId startTime:endTime2 failOnUnrecognizedExperiment:1 triggerEvent:2 taskAttribution:taskAttributing];

    experimentId4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:(60 * arc4random_uniform(0x1Eu))];
    experiment4 = [(TRIExperimentBaseTask *)self experiment];
    experimentId3 = [experiment4 experimentId];
    v21 = [TRISubscribeChannelTask taskWithExperimentId:experimentId3 startTime:experimentId4];

    v32[0] = experiment5;
    v32[1] = v21;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];

LABEL_8:
LABEL_9:

    goto LABEL_11;
  }

  if (status == 3)
  {
    v4 = TRILogCategory_Server();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      treatmentId2 = [(TRITreatmentBaseTask *)self treatmentId];
      v28 = 138412290;
      v29 = treatmentId2;
      _os_log_error_impl(&dword_26F567000, v4, OS_LOG_TYPE_ERROR, "failed to activate treatment id %@", &v28, 0xCu);
    }

    experiment5 = [(TRIExperimentBaseTask *)self experiment];
    experimentId4 = [experiment5 experimentId];
    experiment6 = [(TRIExperimentBaseTask *)self experiment];
    deploymentId2 = [experiment6 deploymentId];
    taskAttributing2 = [(TRITreatmentBaseTask *)self taskAttributing];
    v10 = [TRIDeactivateTreatmentTask taskWithExperimentId:experimentId4 deploymentId:deploymentId2 failOnUnrecognizedExperiment:1 triggerEvent:10 taskAttribution:taskAttributing2];
    v33[0] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];

    goto LABEL_8;
  }

  v11 = MEMORY[0x277CBEBF8];
LABEL_11:
  v22 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)metrics
{
  v10.receiver = self;
  v10.super_class = TRIActivateTreatmentTask;
  metrics = [(TRITreatmentBaseTask *)&v10 metrics];
  v4 = metrics;
  v5 = MEMORY[0x277CBEBF8];
  if (metrics)
  {
    v5 = metrics;
  }

  v6 = v5;

  if (self->_treatmentMetric)
  {
    v7 = [v6 arrayByAddingObject:?];
  }

  else
  {
    v7 = v6;
  }

  v8 = v7;

  return v8;
}

- (id)_asPersistedTask
{
  v3 = objc_opt_new();
  experiment = [(TRIExperimentBaseTask *)self experiment];
  experimentId = [experiment experimentId];
  [v3 setExperimentId:experimentId];

  experiment2 = [(TRIExperimentBaseTask *)self experiment];
  [v3 setDeploymentId:{objc_msgSend(experiment2, "deploymentId")}];

  treatmentId = [(TRITreatmentBaseTask *)self treatmentId];
  [v3 setTreatmentId:treatmentId];

  factorPackSetId = [(TRIActivateTreatmentTask *)self factorPackSetId];

  if (factorPackSetId)
  {
    factorPackSetId2 = [(TRIActivateTreatmentTask *)self factorPackSetId];
    [v3 setFactorPackSetId:factorPackSetId2];
  }

  counterfactualTreatments = [(TRIActivateTreatmentTask *)self counterfactualTreatments];

  if (counterfactualTreatments)
  {
    counterfactualTreatments2 = [(TRIActivateTreatmentTask *)self counterfactualTreatments];
    v12 = [counterfactualTreatments2 mutableCopy];
    [v3 setCounterfactualTreatments:v12];
  }

  taskAttributing = [(TRITreatmentBaseTask *)self taskAttributing];
  asPersistedTaskAttribution = [taskAttributing asPersistedTaskAttribution];
  [v3 setTaskAttribution:asPersistedTaskAttribution];

  startTime = [(TRIActivateTreatmentBaseTask *)self startTime];

  if (startTime)
  {
    v16 = objc_alloc(MEMORY[0x277D73B88]);
    startTime2 = [(TRIActivateTreatmentBaseTask *)self startTime];
    v18 = [v16 initWithDate:startTime2];
    [v3 setStartTimestamp:v18];
  }

  endTime = [(TRIActivateTreatmentBaseTask *)self endTime];

  if (endTime)
  {
    v20 = objc_alloc(MEMORY[0x277D73B88]);
    endTime2 = [(TRIActivateTreatmentBaseTask *)self endTime];
    v22 = [v20 initWithDate:endTime2];
    [v3 setEndTimestamp:v22];
  }

  [v3 setRequiresTreatmentInstallation:{-[TRIActivateTreatmentBaseTask requiresTreatmentInstallation](self, "requiresTreatmentInstallation")}];
  asPersistedModifier = [(TRITaskCapabilityModifier *)self->_capabilityModifier asPersistedModifier];
  [v3 setCapabilityModifier:asPersistedModifier];

  if (self->_taskOptions)
  {
    [v3 setTaskOptions:?];
  }

  return v3;
}

- (id)serialize
{
  _asPersistedTask = [(TRIActivateTreatmentTask *)self _asPersistedTask];
  data = [_asPersistedTask data];

  if (!data)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIActivateTreatmentTask.m" lineNumber:573 description:{@"Unexpected failure to serialize %@", v9}];
  }

  return data;
}

+ (id)parseFromData:(id)data
{
  v71 = *MEMORY[0x277D85DE8];
  v68 = 0;
  v4 = [(TRIPBMessage *)TRIActivateTreatmentPersistedTask parseFromData:data error:&v68];
  v5 = v68;
  if (!v4)
  {
    v11 = TRILogCategory_Server();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
LABEL_32:
      v36 = 0;
      goto LABEL_33;
    }

    *buf = 138543362;
    v70 = v5;
    v21 = "Unable to parse buffer as TRIActivateTreatmentPersistedTask: %{public}@";
    v22 = v11;
    v23 = 12;
LABEL_14:
    _os_log_error_impl(&dword_26F567000, v22, OS_LOG_TYPE_ERROR, v21, buf, v23);
    goto LABEL_32;
  }

  if (([v4 hasExperimentId] & 1) == 0)
  {
    v24 = TRILogCategory_Server();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v33 = objc_opt_class();
      v34 = NSStringFromClass(v33);
      *buf = 138412290;
      v70 = v34;
      _os_log_error_impl(&dword_26F567000, v24, OS_LOG_TYPE_ERROR, "Cannot decode message of type %@ with missing field: experimentId", buf, 0xCu);
    }

    v11 = TRILogCategory_Server();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    *buf = 138412290;
    v70 = v26;
    v27 = "Cannot decode message of type %@ with missing field: experimentId";
    goto LABEL_31;
  }

  experimentId = [v4 experimentId];
  v7 = [experimentId length];

  if (!v7)
  {
    v11 = TRILogCategory_Server();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

    v28 = objc_opt_class();
    v26 = NSStringFromClass(v28);
    *buf = 138412290;
    v70 = v26;
    v27 = "Cannot decode message of type %@ with field of length 0: experimentId";
LABEL_31:
    _os_log_error_impl(&dword_26F567000, v11, OS_LOG_TYPE_ERROR, v27, buf, 0xCu);

    goto LABEL_32;
  }

  if (([v4 hasTreatmentId] & 1) == 0)
  {
    v29 = TRILogCategory_Server();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v39 = objc_opt_class();
      v40 = NSStringFromClass(v39);
      *buf = 138412290;
      v70 = v40;
      _os_log_error_impl(&dword_26F567000, v29, OS_LOG_TYPE_ERROR, "Cannot decode message of type %@ with missing field: treatmentId", buf, 0xCu);
    }

    v11 = TRILogCategory_Server();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

    v30 = objc_opt_class();
    v26 = NSStringFromClass(v30);
    *buf = 138412290;
    v70 = v26;
    v27 = "Cannot decode message of type %@ with missing field: treatmentId";
    goto LABEL_31;
  }

  treatmentId = [v4 treatmentId];
  v9 = [treatmentId length];

  if (!v9)
  {
    v11 = TRILogCategory_Server();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

    v31 = objc_opt_class();
    v26 = NSStringFromClass(v31);
    *buf = 138412290;
    v70 = v26;
    v27 = "Cannot decode message of type %@ with field of length 0: treatmentId";
    goto LABEL_31;
  }

  if (([v4 hasDeploymentId] & 1) == 0)
  {
    v11 = TRILogCategory_Server();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

    v32 = objc_opt_class();
    v26 = NSStringFromClass(v32);
    *buf = 138412290;
    v70 = v26;
    v27 = "Cannot decode message of type %@ with missing field: deploymentId";
    goto LABEL_31;
  }

  if (([v4 hasTaskAttribution] & 1) == 0)
  {
    v11 = TRILogCategory_Server();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

    v35 = objc_opt_class();
    v26 = NSStringFromClass(v35);
    *buf = 138412290;
    v70 = v26;
    v27 = "Cannot decode message of type %@ with missing field: taskAttribution";
    goto LABEL_31;
  }

  if ([v4 deploymentId] == -1)
  {
    v11 = TRILogCategory_Server();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

    *buf = 0;
    v21 = "TRIActivateTreatmentPersistedTask encodes unspecified deploymentId.";
    v22 = v11;
    v23 = 2;
    goto LABEL_14;
  }

  taskAttribution = [v4 taskAttribution];
  v11 = [TRITaskAttributionInternalInsecure taskAttributionFromPersistedTask:taskAttribution];

  if (!v11)
  {
    v14 = TRILogCategory_Server();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26F567000, v14, OS_LOG_TYPE_ERROR, "invalid de-serialized TRITaskAttribution pb message", buf, 2u);
    }

    v36 = 0;
    goto LABEL_75;
  }

  v12 = objc_alloc(MEMORY[0x277D736C0]);
  experimentId2 = [v4 experimentId];
  v14 = [v12 initWithExperimentId:experimentId2 deploymentId:{objc_msgSend(v4, "deploymentId")}];

  if ([v4 hasCapabilityModifier])
  {
    v15 = [TRITaskCapabilityModifier alloc];
    capabilityModifier = [v4 capabilityModifier];
    v17 = [capabilityModifier add];
    [v4 capabilityModifier];
    v19 = v18 = v14;
    v20 = -[TRITaskCapabilityModifier initWithAdd:remove:](v15, "initWithAdd:remove:", v17, [v19 remove]);

    v14 = v18;
  }

  else
  {
    v20 = objc_opt_new();
  }

  if ([v4 counterfactualTreatments_Count])
  {
    v41 = objc_opt_new();
    counterfactualTreatments = [v4 counterfactualTreatments];
    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v66[2] = __42__TRIActivateTreatmentTask_parseFromData___block_invoke;
    v66[3] = &unk_279DDF658;
    v65 = v41;
    v67 = v65;
    [counterfactualTreatments enumerateKeysAndObjectsUsingBlock:v66];
  }

  else
  {
    v65 = 0;
  }

  hasFactorPackSetId = [v4 hasFactorPackSetId];
  v44 = objc_opt_class();
  treatmentId2 = [v4 treatmentId];
  if (hasFactorPackSetId)
  {
    factorPackSetId = [v4 factorPackSetId];
    if ([v4 hasRequiresTreatmentInstallation])
    {
      requiresTreatmentInstallation = [v4 requiresTreatmentInstallation];
    }

    else
    {
      requiresTreatmentInstallation = 1;
    }

    hasStartTimestamp = [v4 hasStartTimestamp];
    if (hasStartTimestamp)
    {
      hasFactorPackSetId = [v4 startTimestamp];
      date = [hasFactorPackSetId date];
    }

    else
    {
      date = 0;
    }

    if ([v4 hasTaskOptions])
    {
      [v4 taskOptions];
      v60 = hasFactorPackSetId;
      v49 = factorPackSetId;
      v50 = treatmentId2;
      v51 = v20;
      v53 = v52 = v14;
      v36 = [v44 taskWithExperiment:v52 treatmentId:v50 factorPackSetId:v49 counterfactualTreatments:v65 taskAttributing:v11 requiresTreatmentInstallation:requiresTreatmentInstallation capabilityModifier:v51 startTime:date taskOptions:v53];

      v14 = v52;
      v20 = v51;
      treatmentId2 = v50;
      factorPackSetId = v49;
      hasFactorPackSetId = v60;
    }

    else
    {
      v36 = [v44 taskWithExperiment:v14 treatmentId:treatmentId2 factorPackSetId:factorPackSetId counterfactualTreatments:v65 taskAttributing:v11 requiresTreatmentInstallation:requiresTreatmentInstallation capabilityModifier:v20 startTime:date taskOptions:0];
    }

    if (!hasStartTimestamp)
    {
      goto LABEL_68;
    }
  }

  else
  {
    v63 = v44;
    if ([v4 hasRequiresTreatmentInstallation])
    {
      requiresTreatmentInstallation2 = [v4 requiresTreatmentInstallation];
    }

    else
    {
      requiresTreatmentInstallation2 = 1;
    }

    hasStartTimestamp2 = [v4 hasStartTimestamp];
    if (hasStartTimestamp2)
    {
      factorPackSetId = [v4 startTimestamp];
      hasFactorPackSetId = [factorPackSetId date];
    }

    else
    {
      hasFactorPackSetId = 0;
    }

    if ([v4 hasTaskOptions])
    {
      [v4 taskOptions];
      v62 = factorPackSetId;
      v54 = treatmentId2;
      v56 = v55 = v20;
      v36 = [v63 taskWithExperiment:v14 treatmentId:v54 taskAttributing:v11 requiresTreatmentInstallation:requiresTreatmentInstallation2 capabilityModifier:v55 startTime:hasFactorPackSetId taskOptions:v56];

      v20 = v55;
      treatmentId2 = v54;
      factorPackSetId = v62;
    }

    else
    {
      v36 = [v63 taskWithExperiment:v14 treatmentId:treatmentId2 taskAttributing:v11 requiresTreatmentInstallation:requiresTreatmentInstallation2 capabilityModifier:v20 startTime:hasFactorPackSetId taskOptions:0];
    }

    if (!hasStartTimestamp2)
    {
      goto LABEL_69;
    }
  }

LABEL_68:
LABEL_69:

  if ([v4 hasEndTimestamp])
  {
    endTimestamp = [v4 endTimestamp];
    date2 = [endTimestamp date];
    [v36 setEndTime:date2];
  }

  if ([v4 hasRetryCount])
  {
    retryCount = [v4 retryCount];
  }

  else
  {
    retryCount = 0;
  }

  [v36 setRetryCount:retryCount];

LABEL_75:
LABEL_33:

  v37 = *MEMORY[0x277D85DE8];

  return v36;
}

void __42__TRIActivateTreatmentTask_parseFromData___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = TRIValidateFactorPackSetId();
  if (v7)
  {
    [*(a1 + 32) setObject:v7 forKeyedSubscript:v5];
  }

  else
  {
    v8 = TRILogCategory_Server();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 138543362;
      v11 = v6;
      _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, "Invalid FPS ID for counterfactuals in TRIActivateTreatmentPersistedTask: %{public}@", &v10, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  experiment = [(TRIExperimentBaseTask *)self experiment];
  shortDesc = [experiment shortDesc];
  treatmentId = [(TRITreatmentBaseTask *)self treatmentId];
  factorPackSetId = [(TRIActivateTreatmentTask *)self factorPackSetId];
  taskAttributing = [(TRITreatmentBaseTask *)self taskAttributing];
  applicationBundleIdentifier = [taskAttributing applicationBundleIdentifier];
  v11 = [v3 stringWithFormat:@"<%@:%@, %@, %@, %@, r:%d>", v4, shortDesc, treatmentId, factorPackSetId, applicationBundleIdentifier, -[TRIActivateTreatmentTask retryCount](self, "retryCount")];

  return v11;
}

- (unint64_t)hash
{
  v8.receiver = self;
  v8.super_class = TRIActivateTreatmentTask;
  v3 = [(TRIActivateTreatmentBaseTask *)&v8 hash];
  factorPackSetId = [(TRIActivateTreatmentTask *)self factorPackSetId];
  if (factorPackSetId)
  {
    factorPackSetId2 = [(TRIActivateTreatmentTask *)self factorPackSetId];
    v6 = [factorPackSetId2 hash];
  }

  else
  {
    v6 = 0;
  }

  return v6 + 37 * v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(factorPackSetId2) = 1;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = TRIActivateTreatmentTask;
    v5 = [(TRIActivateTreatmentBaseTask *)&v13 isEqual:equalCopy];
    LOBYTE(factorPackSetId2) = 0;
    if (equalCopy && v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = equalCopy;
        factorPackSetId = [(TRIActivateTreatmentTask *)self factorPackSetId];

        factorPackSetId2 = [(TRIActivateTreatmentTask *)v7 factorPackSetId];

        if (factorPackSetId)
        {
          if (!factorPackSetId2)
          {
LABEL_13:

            goto LABEL_14;
          }

          factorPackSetId3 = [(TRIActivateTreatmentTask *)self factorPackSetId];
          factorPackSetId4 = [(TRIActivateTreatmentTask *)v7 factorPackSetId];
          v11 = [factorPackSetId3 isEqualToString:factorPackSetId4];

          if (v11)
          {
LABEL_8:
            LOBYTE(factorPackSetId2) = 1;
            goto LABEL_13;
          }
        }

        else if (!factorPackSetId2)
        {
          goto LABEL_8;
        }

        LOBYTE(factorPackSetId2) = 0;
        goto LABEL_13;
      }

      LOBYTE(factorPackSetId2) = 0;
    }
  }

LABEL_14:

  return factorPackSetId2;
}

@end