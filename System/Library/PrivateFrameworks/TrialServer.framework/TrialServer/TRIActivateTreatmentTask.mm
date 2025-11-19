@interface TRIActivateTreatmentTask
+ (id)parseFromData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSArray)dependencies;
- (NSString)description;
- (TRIActivateTreatmentTask)initWithCoder:(id)a3;
- (id)_asPersistedTask;
- (id)_nextTasksForRunStatus:(int)a3;
- (id)metrics;
- (id)runTaskUsingContext:(id)a3 experiment:(id)a4;
- (id)serialize;
- (unint64_t)hash;
- (unint64_t)requiredCapabilities;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TRIActivateTreatmentTask

- (TRIActivateTreatmentTask)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TRIActivateTreatmentTask;
  v5 = [(TRIActivateTreatmentTask *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pb"];
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

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"TRIActivateTreatmentTask.m" lineNumber:80 description:{@"Don't use NSSecureCoding to persist tasks to disk, use -[TRITask serialize]."}];
  }

  v5 = [(TRIActivateTreatmentTask *)self serialize];
  [v7 encodeObject:v5 forKey:@"pb"];
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
    v10 = [(TRIExperimentBaseTask *)self experiment];
    v11 = [(TRITreatmentBaseTask *)self taskAttributing];
    v12 = [TRIFetchExperimentTask taskWithExperimentDeployment:v10 taskAttributing:v11];
    v23 = v12;
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];

LABEL_13:
    goto LABEL_14;
  }

  v3 = objc_opt_new();
  v4 = [(TRIActivateTreatmentTask *)self factorPackSetId];

  if (v4)
  {
    v5 = [(TRIActivateTreatmentTask *)self factorPackSetId];
    v6 = [(TRITreatmentBaseTask *)self treatmentId];
    v7 = [(TRITreatmentBaseTask *)self taskAttributing];
    v8 = [(TRIExperimentBaseTask *)self experiment];
    v9 = [TRIFetchFactorPackSetTask taskWithFactorPackSetId:v5 treatmentId:v6 isCounterfactualTreatment:0 taskAttribution:v7 experimentDeployment:v8];
    [v3 addObject:v9];
  }

  else
  {
    v5 = [(TRIExperimentBaseTask *)self experiment];
    v6 = [(TRITreatmentBaseTask *)self treatmentId];
    v7 = [(TRITreatmentBaseTask *)self taskAttributing];
    v8 = [TRIFetchTreatmentTask taskWithExperiment:v5 treatmentId:v6 taskAttributing:v7 capabilityModifier:self->_capabilityModifier];
    [v3 addObject:v8];
  }

  v13 = [(TRIActivateTreatmentTask *)self counterfactualTreatments];

  if (v13)
  {
    v14 = [(TRIActivateTreatmentTask *)self counterfactualTreatments];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __40__TRIActivateTreatmentTask_dependencies__block_invoke;
    v21[3] = &unk_279DE3B38;
    v21[4] = self;
    v22 = v3;
    [v14 enumerateKeysAndObjectsUsingBlock:v21];
  }

  if (![v3 count])
  {
    v10 = TRILogCategory_Server();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v17 = [(TRIExperimentBaseTask *)self experiment];
      v18 = [v17 experimentId];
      v19 = [(TRITreatmentBaseTask *)self treatmentId];
      v20 = [(TRIActivateTreatmentTask *)self factorPackSetId];
      *buf = 138412802;
      v25 = v18;
      v26 = 2112;
      v27 = v19;
      v28 = 2112;
      v29 = v20;
      _os_log_fault_impl(&dword_26F567000, v10, OS_LOG_TYPE_FAULT, "Activate treatment task isn't queueing a fetch FPS or fetch treatmentV1. (ExperimentId: %@, TreatmentId: %@, FPSId:%@)", buf, 0x20u);
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

- (id)runTaskUsingContext:(id)a3 experiment:(id)a4
{
  v147 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v111 = v7;
  v109 = v8;
  if ([TRIUserAdjustableSettings getExperimentOptOut:v7])
  {
    v9 = TRILogCategory_Server();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v109 experimentDeployment];
      v11 = [v10 experimentId];
      v12 = [v109 experimentDeployment];
      *buf = 138543618;
      *&buf[4] = v11;
      *&buf[12] = 1026;
      *&buf[14] = [v12 deploymentId];
      _os_log_impl(&dword_26F567000, v9, OS_LOG_TYPE_DEFAULT, "Skipping activation of treatment for experiment: %{public}@ (deployment: %{public}d) due to user opt-out of experiments", buf, 0x12u);
    }

    v13 = [TRITaskRunResult resultWithRunStatus:4 reportResultToServer:1 nextTasks:MEMORY[0x277CBEBF8] earliestRetryDate:0];
  }

  else
  {
    v96 = a2;
    v110 = self;
    v136[0] = MEMORY[0x277D85DD0];
    v136[1] = 3221225472;
    v136[2] = __59__TRIActivateTreatmentTask_runTaskUsingContext_experiment___block_invoke;
    v136[3] = &unk_279DE3B60;
    v14 = v8;
    v137 = v14;
    v102 = MEMORY[0x2743948D0](v136);
    v15 = [v7 paths];
    v103 = [v15 namespaceDescriptorsExperimentDir];

    if (!v103)
    {
      v91 = [MEMORY[0x277CCA890] currentHandler];
      [v91 handleFailureInMethod:a2 object:v110 file:@"TRIActivateTreatmentTask.m" lineNumber:211 description:@"no namespace descriptor directory"];
    }

    v106 = [v14 experimentDeployment];
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
    v17 = [v7 paths];
    v112 = [(TRISystemCovariates *)v16 initWithPaths:v17];

    v18 = [(TRISystemCovariates *)v112 dictionary];
    v105 = [v18 valueForKey:@"OSBuild"];

    v19 = [(TRISystemCovariates *)v112 dictionary];
    v108 = [v19 valueForKey:@"UserSettingsLanguageCode"];

    v20 = [(TRISystemCovariates *)v112 dictionary];
    v107 = [v20 valueForKey:@"UserSettingsRegionCode"];

    v21 = [(TRISystemCovariates *)v112 dictionary];
    v104 = [v21 valueForKey:@"BCP47DeviceLocale"];

    if (v104)
    {
      v22 = [v104 componentsSeparatedByString:@"-"];
      v23 = [v22 firstObject];

      v24 = [v104 componentsSeparatedByString:@"-"];
      v25 = [v24 lastObject];

      if (v25)
      {
        v26 = v25;
      }

      else
      {
        v26 = &stru_287FA0430;
      }

      v107 = v26;

      v108 = v23;
    }

    v27 = [(TRISystemCovariates *)v112 dictionary];
    v28 = [v27 valueForKey:@"CarrierBundleIdentifier"];
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

    v31 = [(TRISystemCovariates *)v112 dictionary];
    v32 = [v31 valueForKey:@"CarrierCountryIsoCode"];
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

    v35 = [(TRISystemCovariates *)v112 dictionary];
    v36 = [v35 valueForKey:@"DiagnosticsUsageEnabled"];
    v37 = [v36 BOOLValue];

    v38 = [(TRISystemCovariates *)v112 dictionary];
    v39 = [v38 valueForKey:@"HasANE"];
    v40 = [v39 BOOLValue];

    v41 = [(TRISystemCovariates *)v112 dictionary];
    v42 = [v41 valueForKey:@"ANEVersion"];
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
      v92 = [MEMORY[0x277CCA890] currentHandler];
      [v92 handleFailureInMethod:v96 object:v110 file:@"TRIActivateTreatmentTask.m" lineNumber:243 description:{@"Invalid parameter not satisfying: %@", @"osBuild"}];
    }

    if (!v108)
    {
      v93 = [MEMORY[0x277CCA890] currentHandler];
      [v93 handleFailureInMethod:v96 object:v110 file:@"TRIActivateTreatmentTask.m" lineNumber:244 description:{@"Invalid parameter not satisfying: %@", @"languageCode"}];
    }

    if (!v107)
    {
      v94 = [MEMORY[0x277CCA890] currentHandler];
      [v94 handleFailureInMethod:v96 object:v110 file:@"TRIActivateTreatmentTask.m" lineNumber:245 description:{@"Invalid parameter not satisfying: %@", @"regionCode"}];
    }

    v45 = [v7 experimentDatabase];
    v46 = [v45 experimentRecordWithExperimentDeployment:v106];

    if (v46 && [v46 status] == 1)
    {
      v47 = TRILogCategory_Server();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        v48 = [(TRIExperimentBaseTask *)v110 experiment];
        v49 = [v48 experimentId];
        *v139 = 138543362;
        v140 = v49;
        _os_log_impl(&dword_26F567000, v47, OS_LOG_TYPE_DEFAULT, "Experiment %{public}@ is already activated, nothing to do.", v139, 0xCu);
      }

      notify_post("com.apple.trial.ActivateTreatmentTaskComplete");
      v13 = v102[2](v102, 2, MEMORY[0x277CBEBF8], 0, 0);
    }

    else
    {

      v50 = [v7 experimentDatabase];
      v117[0] = MEMORY[0x277D85DD0];
      v117[1] = 3221225472;
      v117[2] = __59__TRIActivateTreatmentTask_runTaskUsingContext_experiment___block_invoke_171;
      v117[3] = &unk_279DE3BB0;
      v97 = v7;
      v118 = v97;
      v119 = v106;
      v120 = v110;
      v128 = &v132;
      v129 = buf;
      v121 = v105;
      v122 = v108;
      v123 = v107;
      v124 = v101;
      v125 = v100;
      v130 = v37;
      v131 = v40;
      v126 = v99;
      v98 = v14;
      v127 = v98;
      [v50 writeTransactionWithFailableBlock:v117];

      v51 = [(TRIActivateTreatmentBaseTask *)v110 endTime];
      v52 = v51 == 0;

      if (v52)
      {
        v53 = [v98 endDate];
        [(TRIActivateTreatmentBaseTask *)v110 setEndTime:v53];
      }

      v54 = TRILogCategory_Server();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        v55 = [(TRITreatmentBaseTask *)v110 treatmentId];
        v56 = [(TRIExperimentBaseTask *)v110 experiment];
        v57 = [v56 shortDesc];
        *v139 = 138412546;
        v140 = v55;
        v141 = 2114;
        v142 = v57;
        _os_log_impl(&dword_26F567000, v54, OS_LOG_TYPE_DEFAULT, "notify about updates to namespaces in treatment %@ for experiment %{public}@", v139, 0x16u);
      }

      v115 = 0u;
      v116 = 0u;
      v113 = 0u;
      v114 = 0u;
      v58 = [v98 namespaces];
      v59 = [v58 countByEnumeratingWithState:&v113 objects:v138 count:16];
      if (v59)
      {
        v60 = *v114;
        do
        {
          for (i = 0; i != v59; ++i)
          {
            if (*v114 != v60)
            {
              objc_enumerationMutation(v58);
            }

            v62 = *(*(&v113 + 1) + 8 * i);
            v63 = TRILogCategory_Server();
            if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
            {
              v64 = [v62 name];
              *v139 = 138543362;
              v140 = v64;
              _os_log_impl(&dword_26F567000, v63, OS_LOG_TYPE_DEFAULT, "notify about updates to namespace %{public}@", v139, 0xCu);
            }

            v65 = MEMORY[0x277D73790];
            v66 = [v62 name];
            [v65 notifyUpdateForNamespaceName:v66];
          }

          v59 = [v58 countByEnumeratingWithState:&v113 objects:v138 count:16];
        }

        while (v59);
      }

      if (*(v133 + 6) == 2)
      {
        [TRIBiomeExperimentUpdateStreamWriter writeExperimentUpdateWithRecord:v98 withExperimentStateIsActive:1 withUserId:0];
        v67 = [(TRIExperimentBaseTask *)v110 experiment];
        v68 = [TRIContentTracker contentIdentifierForExperimentArtifactWithDeployment:v67];

        v69 = [v97 contentTracker];
        [v69 addRefWithContentIdentifier:v68];

        v70 = [TRIExperimentPostLaunchEvent activatedEventWithExperimentRecord:v98];
        v71 = [TRIExperimentPostLaunchRecorder recorderFromContext:v97];
        if (([v71 recordEvent:v70] & 1) == 0)
        {
          v72 = TRILogCategory_Server();
          if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
          {
            v89 = [(TRITreatmentBaseTask *)v110 treatmentId];
            v90 = [(TRIExperimentBaseTask *)v110 experiment];
            *v139 = 138412546;
            v140 = v89;
            v141 = 2114;
            v142 = v90;
            _os_log_error_impl(&dword_26F567000, v72, OS_LOG_TYPE_ERROR, "Treatment is active but we failed to update experiment history database for treatment %@ for experiment %{public}@:. We will retry running the task.", v139, 0x16u);
          }

          *(v133 + 6) = 1;
        }

        if ([(TRIActivateTreatmentBaseTask *)v110 requiresTreatmentInstallation])
        {
          v73 = [(TRIExperimentBaseTask *)v110 containerForFirstNamespaceInExperimentWithContext:v97];
          v74 = [(TRITreatmentBaseTask *)v110 treatmentId];
          v75 = [TRIContentTracker contentIdentifierForTreatmentArtifactWithTreatmentId:v74 container:v73];

          v76 = [v97 contentTracker];
          [v76 addRefWithContentIdentifier:v75];
        }
      }

      v77 = *(v133 + 6);
      if (v77 == 3)
      {
        v78 = [(TRIExperimentBaseTask *)v110 experiment];
        v79 = [v78 experimentId];
        v80 = [(TRIExperimentBaseTask *)v110 experiment];
        v81 = [v80 deploymentId];
        v82 = [(TRITreatmentBaseTask *)v110 treatmentId];
        v83 = [TRIExperimentDeploymentTreatment treatmentTripleWithExperimentId:v79 deploymentId:v81 treatmentId:v82];

        v84 = [TRIExperimentPostLaunchEvent failureEventWithEventType:8 treatmentTriple:v83 failureReason:*(*&buf[8] + 40)];
        if (!v84)
        {
          v95 = [MEMORY[0x277CCA890] currentHandler];
          [v95 handleFailureInMethod:v96 object:v110 file:@"TRIActivateTreatmentTask.m" lineNumber:484 description:{@"Expression was unexpectedly nil/false: %@", @"[TRIExperimentPostLaunchEvent failureEventWithEventType:TRIInternalExperimentAllocationStatusTypeTreatmentActivationFailure treatmentTriple:triple failureReason:failureReason]"}];
        }

        v85 = [TRIExperimentPostLaunchRecorder recorderFromContext:v97];
        [v85 recordEvent:v84];

        v77 = *(v133 + 6);
      }

      v86 = [(TRIActivateTreatmentTask *)v110 _nextTasksForRunStatus:v77];
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

- (id)_nextTasksForRunStatus:(int)a3
{
  v33[1] = *MEMORY[0x277D85DE8];
  if (a3 == 2)
  {
    v12 = [(TRIActivateTreatmentBaseTask *)self endTime];

    if (!v12)
    {
      v5 = TRILogCategory_Server();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v25 = [(TRITreatmentBaseTask *)self treatmentId];
        v26 = [(TRIExperimentBaseTask *)self experiment];
        v27 = [v26 experimentId];
        v28 = 138412546;
        v29 = v25;
        v30 = 2114;
        v31 = v27;
        _os_log_debug_impl(&dword_26F567000, v5, OS_LOG_TYPE_DEBUG, "not scheduling deactivation of treatment %@ for experiment %{public}@ since end time is nil", &v28, 0x16u);
      }

      v11 = MEMORY[0x277CBEBF8];
      goto LABEL_9;
    }

    v13 = [(TRIExperimentBaseTask *)self experiment];
    v14 = [v13 experimentId];
    v15 = [(TRIExperimentBaseTask *)self experiment];
    v16 = [v15 deploymentId];
    v17 = [(TRIActivateTreatmentBaseTask *)self endTime];
    v18 = [(TRITreatmentBaseTask *)self taskAttributing];
    v5 = [TRIDeactivateTreatmentTask taskWithExperimentId:v14 deploymentId:v16 startTime:v17 failOnUnrecognizedExperiment:1 triggerEvent:2 taskAttribution:v18];

    v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:(60 * arc4random_uniform(0x1Eu))];
    v19 = [(TRIExperimentBaseTask *)self experiment];
    v20 = [v19 experimentId];
    v21 = [TRISubscribeChannelTask taskWithExperimentId:v20 startTime:v6];

    v32[0] = v5;
    v32[1] = v21;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];

LABEL_8:
LABEL_9:

    goto LABEL_11;
  }

  if (a3 == 3)
  {
    v4 = TRILogCategory_Server();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v24 = [(TRITreatmentBaseTask *)self treatmentId];
      v28 = 138412290;
      v29 = v24;
      _os_log_error_impl(&dword_26F567000, v4, OS_LOG_TYPE_ERROR, "failed to activate treatment id %@", &v28, 0xCu);
    }

    v5 = [(TRIExperimentBaseTask *)self experiment];
    v6 = [v5 experimentId];
    v7 = [(TRIExperimentBaseTask *)self experiment];
    v8 = [v7 deploymentId];
    v9 = [(TRITreatmentBaseTask *)self taskAttributing];
    v10 = [TRIDeactivateTreatmentTask taskWithExperimentId:v6 deploymentId:v8 failOnUnrecognizedExperiment:1 triggerEvent:10 taskAttribution:v9];
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
  v3 = [(TRITreatmentBaseTask *)&v10 metrics];
  v4 = v3;
  v5 = MEMORY[0x277CBEBF8];
  if (v3)
  {
    v5 = v3;
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
  v4 = [(TRIExperimentBaseTask *)self experiment];
  v5 = [v4 experimentId];
  [v3 setExperimentId:v5];

  v6 = [(TRIExperimentBaseTask *)self experiment];
  [v3 setDeploymentId:{objc_msgSend(v6, "deploymentId")}];

  v7 = [(TRITreatmentBaseTask *)self treatmentId];
  [v3 setTreatmentId:v7];

  v8 = [(TRIActivateTreatmentTask *)self factorPackSetId];

  if (v8)
  {
    v9 = [(TRIActivateTreatmentTask *)self factorPackSetId];
    [v3 setFactorPackSetId:v9];
  }

  v10 = [(TRIActivateTreatmentTask *)self counterfactualTreatments];

  if (v10)
  {
    v11 = [(TRIActivateTreatmentTask *)self counterfactualTreatments];
    v12 = [v11 mutableCopy];
    [v3 setCounterfactualTreatments:v12];
  }

  v13 = [(TRITreatmentBaseTask *)self taskAttributing];
  v14 = [v13 asPersistedTaskAttribution];
  [v3 setTaskAttribution:v14];

  v15 = [(TRIActivateTreatmentBaseTask *)self startTime];

  if (v15)
  {
    v16 = objc_alloc(MEMORY[0x277D73B88]);
    v17 = [(TRIActivateTreatmentBaseTask *)self startTime];
    v18 = [v16 initWithDate:v17];
    [v3 setStartTimestamp:v18];
  }

  v19 = [(TRIActivateTreatmentBaseTask *)self endTime];

  if (v19)
  {
    v20 = objc_alloc(MEMORY[0x277D73B88]);
    v21 = [(TRIActivateTreatmentBaseTask *)self endTime];
    v22 = [v20 initWithDate:v21];
    [v3 setEndTimestamp:v22];
  }

  [v3 setRequiresTreatmentInstallation:{-[TRIActivateTreatmentBaseTask requiresTreatmentInstallation](self, "requiresTreatmentInstallation")}];
  v23 = [(TRITaskCapabilityModifier *)self->_capabilityModifier asPersistedModifier];
  [v3 setCapabilityModifier:v23];

  if (self->_taskOptions)
  {
    [v3 setTaskOptions:?];
  }

  return v3;
}

- (id)serialize
{
  v4 = [(TRIActivateTreatmentTask *)self _asPersistedTask];
  v5 = [v4 data];

  if (!v5)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [v7 handleFailureInMethod:a2 object:self file:@"TRIActivateTreatmentTask.m" lineNumber:573 description:{@"Unexpected failure to serialize %@", v9}];
  }

  return v5;
}

+ (id)parseFromData:(id)a3
{
  v71 = *MEMORY[0x277D85DE8];
  v68 = 0;
  v4 = [(TRIPBMessage *)TRIActivateTreatmentPersistedTask parseFromData:a3 error:&v68];
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

  v6 = [v4 experimentId];
  v7 = [v6 length];

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

  v8 = [v4 treatmentId];
  v9 = [v8 length];

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

  v10 = [v4 taskAttribution];
  v11 = [TRITaskAttributionInternalInsecure taskAttributionFromPersistedTask:v10];

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
  v13 = [v4 experimentId];
  v14 = [v12 initWithExperimentId:v13 deploymentId:{objc_msgSend(v4, "deploymentId")}];

  if ([v4 hasCapabilityModifier])
  {
    v15 = [TRITaskCapabilityModifier alloc];
    v16 = [v4 capabilityModifier];
    v17 = [v16 add];
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
    v42 = [v4 counterfactualTreatments];
    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v66[2] = __42__TRIActivateTreatmentTask_parseFromData___block_invoke;
    v66[3] = &unk_279DDF658;
    v65 = v41;
    v67 = v65;
    [v42 enumerateKeysAndObjectsUsingBlock:v66];
  }

  else
  {
    v65 = 0;
  }

  v43 = [v4 hasFactorPackSetId];
  v44 = objc_opt_class();
  v45 = [v4 treatmentId];
  if (v43)
  {
    v3 = [v4 factorPackSetId];
    if ([v4 hasRequiresTreatmentInstallation])
    {
      v61 = [v4 requiresTreatmentInstallation];
    }

    else
    {
      v61 = 1;
    }

    v47 = [v4 hasStartTimestamp];
    if (v47)
    {
      v43 = [v4 startTimestamp];
      v64 = [v43 date];
    }

    else
    {
      v64 = 0;
    }

    if ([v4 hasTaskOptions])
    {
      [v4 taskOptions];
      v60 = v43;
      v49 = v3;
      v50 = v45;
      v51 = v20;
      v53 = v52 = v14;
      v36 = [v44 taskWithExperiment:v52 treatmentId:v50 factorPackSetId:v49 counterfactualTreatments:v65 taskAttributing:v11 requiresTreatmentInstallation:v61 capabilityModifier:v51 startTime:v64 taskOptions:v53];

      v14 = v52;
      v20 = v51;
      v45 = v50;
      v3 = v49;
      v43 = v60;
    }

    else
    {
      v36 = [v44 taskWithExperiment:v14 treatmentId:v45 factorPackSetId:v3 counterfactualTreatments:v65 taskAttributing:v11 requiresTreatmentInstallation:v61 capabilityModifier:v20 startTime:v64 taskOptions:0];
    }

    if (!v47)
    {
      goto LABEL_68;
    }
  }

  else
  {
    v63 = v44;
    if ([v4 hasRequiresTreatmentInstallation])
    {
      v46 = [v4 requiresTreatmentInstallation];
    }

    else
    {
      v46 = 1;
    }

    v48 = [v4 hasStartTimestamp];
    if (v48)
    {
      v3 = [v4 startTimestamp];
      v43 = [v3 date];
    }

    else
    {
      v43 = 0;
    }

    if ([v4 hasTaskOptions])
    {
      [v4 taskOptions];
      v62 = v3;
      v54 = v45;
      v56 = v55 = v20;
      v36 = [v63 taskWithExperiment:v14 treatmentId:v54 taskAttributing:v11 requiresTreatmentInstallation:v46 capabilityModifier:v55 startTime:v43 taskOptions:v56];

      v20 = v55;
      v45 = v54;
      v3 = v62;
    }

    else
    {
      v36 = [v63 taskWithExperiment:v14 treatmentId:v45 taskAttributing:v11 requiresTreatmentInstallation:v46 capabilityModifier:v20 startTime:v43 taskOptions:0];
    }

    if (!v48)
    {
      goto LABEL_69;
    }
  }

LABEL_68:
LABEL_69:

  if ([v4 hasEndTimestamp])
  {
    v57 = [v4 endTimestamp];
    v58 = [v57 date];
    [v36 setEndTime:v58];
  }

  if ([v4 hasRetryCount])
  {
    v59 = [v4 retryCount];
  }

  else
  {
    v59 = 0;
  }

  [v36 setRetryCount:v59];

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
  v5 = [(TRIExperimentBaseTask *)self experiment];
  v6 = [v5 shortDesc];
  v7 = [(TRITreatmentBaseTask *)self treatmentId];
  v8 = [(TRIActivateTreatmentTask *)self factorPackSetId];
  v9 = [(TRITreatmentBaseTask *)self taskAttributing];
  v10 = [v9 applicationBundleIdentifier];
  v11 = [v3 stringWithFormat:@"<%@:%@, %@, %@, %@, r:%d>", v4, v6, v7, v8, v10, -[TRIActivateTreatmentTask retryCount](self, "retryCount")];

  return v11;
}

- (unint64_t)hash
{
  v8.receiver = self;
  v8.super_class = TRIActivateTreatmentTask;
  v3 = [(TRIActivateTreatmentBaseTask *)&v8 hash];
  v4 = [(TRIActivateTreatmentTask *)self factorPackSetId];
  if (v4)
  {
    v5 = [(TRIActivateTreatmentTask *)self factorPackSetId];
    v6 = [v5 hash];
  }

  else
  {
    v6 = 0;
  }

  return v6 + 37 * v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = TRIActivateTreatmentTask;
    v5 = [(TRIActivateTreatmentBaseTask *)&v13 isEqual:v4];
    LOBYTE(v6) = 0;
    if (v4 && v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v4;
        v8 = [(TRIActivateTreatmentTask *)self factorPackSetId];

        v6 = [(TRIActivateTreatmentTask *)v7 factorPackSetId];

        if (v8)
        {
          if (!v6)
          {
LABEL_13:

            goto LABEL_14;
          }

          v9 = [(TRIActivateTreatmentTask *)self factorPackSetId];
          v10 = [(TRIActivateTreatmentTask *)v7 factorPackSetId];
          v11 = [v9 isEqualToString:v10];

          if (v11)
          {
LABEL_8:
            LOBYTE(v6) = 1;
            goto LABEL_13;
          }
        }

        else if (!v6)
        {
          goto LABEL_8;
        }

        LOBYTE(v6) = 0;
        goto LABEL_13;
      }

      LOBYTE(v6) = 0;
    }
  }

LABEL_14:

  return v6;
}

@end