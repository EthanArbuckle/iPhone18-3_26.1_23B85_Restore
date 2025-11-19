@interface TRIActivateTargetedRolloutDeploymentTask
+ (id)parseFromData:(id)a3;
+ (id)taskWithDeployment:(id)a3 factorPackSetId:(id)a4 taskAttribution:(id)a5 capabilityModifier:(id)a6;
- (BOOL)isEqual:(id)a3;
- (NSArray)dependencies;
- (NSString)description;
- (TRIActivateTargetedRolloutDeploymentTask)initWithCoder:(id)a3;
- (TRIActivateTargetedRolloutDeploymentTask)initWithDeployment:(id)a3 factorPackSetId:(id)a4 taskAttribution:(id)a5 capabilityModifier:(id)a6;
- (id)_asPersistedTask;
- (id)runUsingContext:(id)a3 withTaskQueue:(id)a4;
- (id)serialize;
- (unint64_t)hash;
- (unint64_t)requiredCapabilities;
- (void)encodeWithCoder:(id)a3;
- (void)runDequeueHandlerUsingContext:(id)a3;
- (void)runEnqueueHandlerUsingContext:(id)a3;
@end

@implementation TRIActivateTargetedRolloutDeploymentTask

- (TRIActivateTargetedRolloutDeploymentTask)initWithDeployment:(id)a3 factorPackSetId:(id)a4 taskAttribution:(id)a5 capabilityModifier:(id)a6
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (v12)
  {
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_8:
    v30 = [MEMORY[0x277CCA890] currentHandler];
    [v30 handleFailureInMethod:a2 object:self file:@"TRIActivateTargetedRolloutDeploymentTask.m" lineNumber:57 description:{@"Invalid parameter not satisfying: %@", @"factorPackSetId"}];

    if (v14)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v29 = [MEMORY[0x277CCA890] currentHandler];
  [v29 handleFailureInMethod:a2 object:self file:@"TRIActivateTargetedRolloutDeploymentTask.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"deployment"}];

  if (!v13)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v14)
  {
    goto LABEL_4;
  }

LABEL_9:
  v31 = [MEMORY[0x277CCA890] currentHandler];
  [v31 handleFailureInMethod:a2 object:self file:@"TRIActivateTargetedRolloutDeploymentTask.m" lineNumber:58 description:{@"Invalid parameter not satisfying: %@", @"taskAttribution"}];

LABEL_4:
  v32.receiver = self;
  v32.super_class = TRIActivateTargetedRolloutDeploymentTask;
  v16 = [(TRIActivateTargetedRolloutDeploymentTask *)&v32 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_deployment, a3);
    objc_storeStrong(&v17->_factorPackSetId, a4);
    objc_storeStrong(&v17->_taskAttribution, a5);
    v18 = [[TRIRolloutTaskSupport alloc] initWithRolloutDeployment:v17->_deployment];
    support = v17->_support;
    v17->_support = v18;

    objc_storeStrong(&v17->_capabilityModifier, a6);
    v20 = objc_opt_new();
    v21 = [v12 rolloutId];
    v22 = [v20 ensureRolloutFields];
    [v22 setClientRolloutId:v21];

    v23 = loggableFactorPackSetIdFromFactorPackSetId(v13);
    v24 = [v20 ensureRolloutFields];
    [v24 setClientFactorPackSetId:v23];

    v25 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v12, "deploymentId")}];
    v26 = [v25 stringValue];
    [v20 setClientDeploymentId:v26];

    v27 = [TRITelemetryFactory containerOriginTelemetryForTaskAttribution:v14];
    [(TRIRolloutTaskSupport *)v17->_support mergeTelemetry:v20];
    [(TRIRolloutTaskSupport *)v17->_support mergeTelemetry:v27];
  }

  return v17;
}

+ (id)taskWithDeployment:(id)a3 factorPackSetId:(id)a4 taskAttribution:(id)a5 capabilityModifier:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[a1 alloc] initWithDeployment:v13 factorPackSetId:v12 taskAttribution:v11 capabilityModifier:v10];

  return v14;
}

- (NSArray)dependencies
{
  v8[2] = *MEMORY[0x277D85DE8];
  v3 = [TRIFetchSingleRolloutNotificationTask taskWithDeployment:self->_deployment taskAttributing:self->_taskAttribution];
  v8[0] = v3;
  v4 = [TRIFetchFactorPackSetTask taskWithFactorPackSetId:self->_factorPackSetId taskAttribution:self->_taskAttribution rolloutDeployment:self->_deployment capabilityModifier:self->_capabilityModifier];
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)runEnqueueHandlerUsingContext:(id)a3
{
  factorPackSetId = self->_factorPackSetId;
  v5 = a3;
  v9 = [TRIContentTracker contentIdentifierForFactorPackSetWithId:factorPackSetId];
  v6 = [v5 contentTracker];
  [v6 addRefWithContentIdentifier:v9];

  v7 = [TRIContentTracker contentIdentifierForRolloutArtifactWithDeployment:self->_deployment];
  v8 = [v5 contentTracker];

  [v8 addRefWithContentIdentifier:v7];
}

- (void)runDequeueHandlerUsingContext:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  factorPackSetId = self->_factorPackSetId;
  v5 = a3;
  v6 = [TRIContentTracker contentIdentifierForFactorPackSetWithId:factorPackSetId];
  v7 = [v5 contentTracker];
  [v7 dropRefWithContentIdentifier:v6];

  v8 = [TRIContentTracker contentIdentifierForRolloutArtifactWithDeployment:self->_deployment];
  v9 = [v5 contentTracker];

  LOBYTE(v5) = [v9 dropRefWithContentIdentifier:v8];
  if ((v5 & 1) == 0)
  {
    v10 = TRILogCategory_Server();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = [(TRIRolloutDeployment *)self->_deployment shortDesc];
      v13 = 138543362;
      v14 = v12;
      _os_log_error_impl(&dword_26F567000, v10, OS_LOG_TYPE_ERROR, "Failed to drop reference on artifact for rollout %{public}@", &v13, 0xCu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)runUsingContext:(id)a3 withTaskQueue:(id)a4
{
  v158 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v121 = a4;
  v7 = [TRITaskRunResult alloc];
  v110 = [(TRITaskRunResult *)v7 initWithRunStatus:3 reportResultToServer:1 nextTasks:MEMORY[0x277CBEBF8] earliestRetryDate:0];
  v8 = objc_opt_new();
  v9 = [TRISystemCovariates alloc];
  v118 = v6;
  v10 = [v6 paths];
  v11 = [(TRISystemCovariates *)v9 initWithPaths:v10];

  v120 = v11;
  v12 = [(TRISystemCovariates *)v11 dictionary];
  v114 = [v12 valueForKey:@"OSBuild"];

  v13 = [(TRISystemCovariates *)v11 dictionary];
  v117 = [v13 valueForKey:@"UserSettingsLanguageCode"];

  v14 = [(TRISystemCovariates *)v11 dictionary];
  v116 = [v14 valueForKey:@"UserSettingsRegionCode"];

  v15 = [(TRISystemCovariates *)v11 dictionary];
  v115 = [v15 valueForKey:@"BCP47DeviceLocale"];

  if (v115)
  {
    v16 = [v115 componentsSeparatedByString:@"-"];
    v17 = [v16 firstObject];

    v18 = [v115 componentsSeparatedByString:@"-"];
    v19 = [v18 lastObject];

    v20 = &stru_287FA0430;
    if (v19)
    {
      v20 = v19;
    }

    v116 = v20;

    v117 = v17;
  }

  v21 = [(TRISystemCovariates *)v11 dictionary];
  v113 = [v21 valueForKey:@"CarrierBundleIdentifier"];

  v22 = [(TRISystemCovariates *)v11 dictionary];
  v112 = [v22 valueForKey:@"CarrierCountryIsoCode"];

  v23 = [(TRISystemCovariates *)v11 dictionary];
  v24 = [v23 valueForKey:@"DiagnosticsUsageEnabled"];
  v25 = [v24 BOOLValue];

  v26 = [(TRISystemCovariates *)v11 dictionary];
  v27 = [v26 valueForKey:@"HasANE"];
  v28 = [v27 BOOLValue];

  v29 = [(TRISystemCovariates *)v11 dictionary];
  v111 = [v29 valueForKey:@"ANEVersion"];

  if (!v114)
  {
    v94 = [MEMORY[0x277CCA890] currentHandler];
    [v94 handleFailureInMethod:a2 object:self file:@"TRIActivateTargetedRolloutDeploymentTask.m" lineNumber:163 description:{@"Invalid parameter not satisfying: %@", @"osBuild"}];
  }

  if (!v117)
  {
    v95 = [MEMORY[0x277CCA890] currentHandler];
    [v95 handleFailureInMethod:a2 object:self file:@"TRIActivateTargetedRolloutDeploymentTask.m" lineNumber:164 description:{@"Invalid parameter not satisfying: %@", @"languageCode"}];
  }

  if (!v116)
  {
    v96 = [MEMORY[0x277CCA890] currentHandler];
    [v96 handleFailureInMethod:a2 object:self file:@"TRIActivateTargetedRolloutDeploymentTask.m" lineNumber:165 description:{@"Invalid parameter not satisfying: %@", @"regionCode"}];
  }

  if (!v113)
  {
    v97 = [MEMORY[0x277CCA890] currentHandler];
    [v97 handleFailureInMethod:a2 object:self file:@"TRIActivateTargetedRolloutDeploymentTask.m" lineNumber:166 description:{@"Invalid parameter not satisfying: %@", @"carrierBundleId"}];
  }

  if (!v112)
  {
    v98 = [MEMORY[0x277CCA890] currentHandler];
    [v98 handleFailureInMethod:a2 object:self file:@"TRIActivateTargetedRolloutDeploymentTask.m" lineNumber:167 description:{@"Invalid parameter not satisfying: %@", @"carrierCountryCode"}];
  }

  if (!v111)
  {
    v99 = [MEMORY[0x277CCA890] currentHandler];
    [v99 handleFailureInMethod:a2 object:self file:@"TRIActivateTargetedRolloutDeploymentTask.m" lineNumber:168 description:{@"Invalid parameter not satisfying: %@", @"aneVersion"}];
  }

  v30 = [v118 rolloutDatabase];
  v119 = [v30 recordWithDeployment:self->_deployment usingTransaction:0];

  if (v119)
  {
    v31 = [v118 namespaceDatabase];
    v32 = [v118 paths];
    v33 = [v32 namespaceDescriptorsDefaultDir];
    v109 = [TRINamespaceDescriptorProvider providerWithNamespaceDatabase:v31 defaultDescriptorDirectoryPath:v33];

    v34 = [v119 artifact];
    v35 = [v34 rollout];
    v108 = [TRISetupAssistantFetchUtils getIncompatibleNamespaceNamesForTriClientRollout:v35 namespaceDescriptorProvider:v109];

    if ([v108 count])
    {
      v36 = TRILogCategory_Server();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        deployment = self->_deployment;
        *buf = 138543362;
        *&buf[4] = deployment;
        _os_log_error_impl(&dword_26F567000, v36, OS_LOG_TYPE_ERROR, "Rollout deployment %{public}@ does not match the device NCVs. Completing task without activating deployment.", buf, 0xCu);
      }

      v37 = [TRITaskRunResult alloc];
      v38 = [(TRITaskRunResult *)v37 initWithRunStatus:2 reportResultToServer:0 nextTasks:MEMORY[0x277CBEBF8] earliestRetryDate:0];
      goto LABEL_35;
    }

    v43 = objc_opt_new();
    v44 = [v119 rampId];

    if (v44)
    {
      v45 = [v119 rampId];
      v46 = [v43 ensureRolloutFields];
      [v46 setClientRampId:v45];
    }

    factorPackSetId = self->_factorPackSetId;
    v48 = [v119 targetedFactorPackSetId];
    if ([(TRIFactorPackSetId *)factorPackSetId isEqual:v48])
    {
      v49 = [v119 targetedTargetingRuleIndex];

      if (!v49)
      {
LABEL_31:
        [(TRIRolloutTaskSupport *)self->_support mergeTelemetry:v43];

        v52 = [v119 activeFactorPackSetId];
        v53 = [v52 isEqualToString:self->_factorPackSetId];

        if (!v53)
        {
          v148 = 0u;
          v149 = 0u;
          v146 = 0u;
          v147 = 0u;
          v60 = [v119 namespaces];
          v61 = [v60 countByEnumeratingWithState:&v146 objects:v157 count:16];
          if (v61)
          {
            v62 = *v147;
            do
            {
              for (i = 0; i != v61; ++i)
              {
                if (*v147 != v62)
                {
                  objc_enumerationMutation(v60);
                }

                [v8 addObject:*(*(&v146 + 1) + 8 * i)];
              }

              v61 = [v60 countByEnumeratingWithState:&v146 objects:v157 count:16];
            }

            while (v61);
          }

          v64 = [TRINamespaceResolverStorage alloc];
          v65 = [v118 paths];
          v107 = [(TRINamespaceResolverStorage *)v64 initWithPaths:v65];

          v66 = self->_deployment;
          v67 = [v119 rampId];
          LOBYTE(v66) = [(TRINamespaceResolverStorage *)v107 rewriteRolloutDeployment:v66 rampId:v67 targetedFactorPackSetId:self->_factorPackSetId];

          if (v66)
          {
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x2020000000;
            v156 = 0;
            v68 = objc_opt_new();
            v69 = objc_opt_new();
            v131[0] = MEMORY[0x277D85DD0];
            v131[1] = 3221225472;
            v131[2] = __74__TRIActivateTargetedRolloutDeploymentTask_runUsingContext_withTaskQueue___block_invoke;
            v131[3] = &unk_279DE3AC8;
            v131[4] = self;
            v104 = v119;
            v132 = v104;
            v143 = buf;
            v106 = v118;
            v133 = v106;
            v103 = v68;
            v134 = v103;
            v101 = v69;
            v135 = v101;
            v136 = v114;
            v137 = v117;
            v138 = v116;
            v139 = v113;
            v140 = v112;
            v144 = v25;
            v145 = v28;
            v141 = v111;
            v142 = v107;
            v105 = MEMORY[0x2743948D0](v131);
            v70 = [v106 rolloutDatabase];
            [v70 writeTransactionWithFailableBlock:v105];

            if (*(*&buf[8] + 24))
            {
              v129 = 0u;
              v130 = 0u;
              v127 = 0u;
              v128 = 0u;
              v71 = v103;
              v72 = [v71 countByEnumeratingWithState:&v127 objects:v154 count:16];
              if (v72)
              {
                v73 = *v128;
                do
                {
                  for (j = 0; j != v72; ++j)
                  {
                    if (*v128 != v73)
                    {
                      objc_enumerationMutation(v71);
                    }

                    v75 = [*(*(&v127 + 1) + 8 * j) taskTag];
                    v153 = self;
                    v76 = [MEMORY[0x277CBEA60] arrayWithObjects:&v153 count:1];
                    [v121 cancelTasksWithTag:v75 excludingTasks:v76];
                  }

                  v72 = [v71 countByEnumeratingWithState:&v127 objects:v154 count:16];
                }

                while (v72);
              }

              v77 = [v106 pushServiceMuxer];
              [v77 subscribeForRolloutDeployment:self->_deployment];

              v125 = 0u;
              v126 = 0u;
              v123 = 0u;
              v124 = 0u;
              v78 = v8;
              v79 = [v78 countByEnumeratingWithState:&v123 objects:v152 count:16];
              if (v79)
              {
                v80 = *v124;
                do
                {
                  for (k = 0; k != v79; ++k)
                  {
                    if (*v124 != v80)
                    {
                      objc_enumerationMutation(v78);
                    }

                    v82 = *(*(&v123 + 1) + 8 * k);
                    v83 = TRILogCategory_Server();
                    if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
                    {
                      *v150 = 138543362;
                      v151 = v82;
                      _os_log_impl(&dword_26F567000, v83, OS_LOG_TYPE_DEFAULT, "notify about updates to namespace %{public}@", v150, 0xCu);
                    }

                    [MEMORY[0x277D73790] notifyUpdateForNamespaceName:v82];
                  }

                  v79 = [v78 countByEnumeratingWithState:&v123 objects:v152 count:16];
                }

                while (v79);
              }

              v84 = [(TRIRolloutDeployment *)self->_deployment rolloutId];
              v85 = [v104 rampId];
              LOBYTE(v100) = 0;
              [TRITaskUtils updateRolloutHistoryDatabaseWithAllocationStatus:3 forRollout:v84 ramp:v85 deployment:[(TRIRolloutDeployment *)self->_deployment deploymentId] fps:self->_factorPackSetId namespaces:0 telemetryMetric:0 rolloutRecord:v104 isBecomingObsolete:v100 context:v106, v101];

              v86 = [TRITaskRunResult alloc];
              v87 = [(TRITaskRunResult *)v86 initWithRunStatus:2 reportResultToServer:1 nextTasks:MEMORY[0x277CBEBF8] earliestRetryDate:0];
            }

            else
            {
              v90 = [(TRIRolloutDeployment *)self->_deployment rolloutId];
              v91 = [v104 rampId];
              LOBYTE(v100) = 0;
              [TRITaskUtils updateRolloutHistoryDatabaseWithAllocationStatus:7 forRollout:v90 ramp:v91 deployment:[(TRIRolloutDeployment *)self->_deployment deploymentId] fps:self->_factorPackSetId namespaces:0 telemetryMetric:0 rolloutRecord:v104 isBecomingObsolete:v100 context:v106, v101, v103];

              v87 = v110;
            }

            v42 = v87;

            _Block_object_dispose(buf, 8);
          }

          else
          {
            v88 = [(TRIRolloutDeployment *)self->_deployment rolloutId];
            v89 = [v119 rampId];
            LOBYTE(v100) = 0;
            [TRITaskUtils updateRolloutHistoryDatabaseWithAllocationStatus:7 forRollout:v88 ramp:v89 deployment:[(TRIRolloutDeployment *)self->_deployment deploymentId] fps:self->_factorPackSetId namespaces:0 telemetryMetric:0 rolloutRecord:v119 isBecomingObsolete:v100 context:v118];

            v42 = v110;
          }

          goto LABEL_36;
        }

        v54 = TRILogCategory_Server();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          v55 = [(TRIRolloutDeployment *)self->_deployment shortDesc];
          v56 = self->_factorPackSetId;
          *buf = 138543618;
          *&buf[4] = v55;
          *&buf[12] = 2114;
          *&buf[14] = v56;
          _os_log_impl(&dword_26F567000, v54, OS_LOG_TYPE_DEFAULT, "Rollout deployment %{public}@ has already activated factor pack set %{public}@. Completing task without activating deployment again.", buf, 0x16u);
        }

        v57 = [TRITaskRunResult alloc];
        v38 = [(TRITaskRunResult *)v57 initWithRunStatus:2 reportResultToServer:0 nextTasks:MEMORY[0x277CBEBF8] earliestRetryDate:0];
LABEL_35:
        v42 = v38;
LABEL_36:

        goto LABEL_37;
      }

      v48 = [v119 targetedTargetingRuleIndex];
      v50 = [v48 intValue];
      v51 = [v43 ensureRolloutFields];
      [v51 setClientTargetingRuleGroupOrdinal:v50];
    }

    goto LABEL_31;
  }

  v39 = TRILogCategory_Server();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
  {
    v93 = [(TRIRolloutDeployment *)self->_deployment shortDesc];
    *buf = 138543362;
    *&buf[4] = v93;
    _os_log_error_impl(&dword_26F567000, v39, OS_LOG_TYPE_ERROR, "Unexpected failure to lookup rollout record for deployment %{public}@.", buf, 0xCu);
  }

  v40 = [(TRIRolloutDeployment *)self->_deployment rolloutId];
  v41 = [0 rampId];
  LOBYTE(v100) = 0;
  [TRITaskUtils updateRolloutHistoryDatabaseWithAllocationStatus:7 forRollout:v40 ramp:v41 deployment:[(TRIRolloutDeployment *)self->_deployment deploymentId] fps:self->_factorPackSetId namespaces:0 telemetryMetric:0 rolloutRecord:0 isBecomingObsolete:v100 context:v118];

  v42 = v110;
LABEL_37:

  v58 = *MEMORY[0x277D85DE8];

  return v42;
}

uint64_t __74__TRIActivateTargetedRolloutDeploymentTask_runUsingContext_withTaskQueue___block_invoke(uint64_t a1, void *a2)
{
  v119 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v102 = objc_opt_new();
  v4 = *(*(a1 + 32) + 56);
  v5 = [*(a1 + 40) targetedFactorPackSetId];
  if ([v4 isEqual:v5])
  {
    v6 = [*(a1 + 40) targetedTargetingRuleIndex];
  }

  else
  {
    v6 = 0;
  }

  v7 = [*(a1 + 48) rolloutDatabase];
  *(*(*(a1 + 128) + 8) + 24) = [v7 activateDeployment:*(*(a1 + 32) + 48) withFactorPackSetId:*(*(a1 + 32) + 56) targetingRuleIndex:v6 deactivatedDeployments:*(a1 + 56) deactivatedFactorPackSetIds:v102 deactivationStateTransitions:*(a1 + 64) usingTransaction:v3];

  if (*(*(*(a1 + 128) + 8) + 24))
  {
    v8 = *(a1 + 64);
    v111[0] = MEMORY[0x277D85DD0];
    v111[1] = 3221225472;
    v111[2] = __74__TRIActivateTargetedRolloutDeploymentTask_runUsingContext_withTaskQueue___block_invoke_2;
    v111[3] = &unk_279DE3AA0;
    v112 = *(a1 + 40);
    v113 = *(a1 + 48);
    [v8 enumerateKeysAndObjectsUsingBlock:v111];
    v9 = [*(a1 + 48) activationEventDatabase];
    v10 = [*(*(a1 + 32) + 48) rolloutId];
    v11 = *(a1 + 32);
    v12 = *(v11 + 56);
    v13 = [*(v11 + 48) deploymentId];
    if (*(a1 + 88))
    {
      v14 = *(a1 + 88);
    }

    else
    {
      v14 = &stru_287FA0430;
    }

    LOWORD(v96) = *(a1 + 136);
    v15 = [v9 addRecordWithParentId:v10 factorPackSetId:v12 deploymentId:v13 osBuild:*(a1 + 72) languageCode:*(a1 + 80) regionCode:v14 carrierBundleId:*(a1 + 96) carrierCountryCode:*(a1 + 104) diagnosticsUsageEnabled:v96 hasAne:*(a1 + 112) aneVersion:v3 transaction:?];

    if (!v15)
    {
      v16 = TRILogCategory_Server();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v85 = *(a1 + 32);
        v86 = *(v85 + 56);
        v87 = *(v85 + 48);
        *buf = 138412546;
        v116 = v86;
        v117 = 2114;
        *v118 = v87;
        _os_log_error_impl(&dword_26F567000, v16, OS_LOG_TYPE_ERROR, "error during activation of factorPackSetId {public}%@ for rollout %{public}@: failed to update activation event database", buf, 0x16u);
      }
    }

    *(*(*(a1 + 128) + 8) + 24) = [*(a1 + 120) overwriteActiveFactorProvidersUsingTransaction:v3 fromContext:*(a1 + 48)];
    if (*(*(*(a1 + 128) + 8) + 24) == 1)
    {
      v98 = v6;
      v17 = TRILogCategory_Server();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(*(a1 + 32) + 48);
        *buf = 138543362;
        v116 = v18;
        _os_log_impl(&dword_26F567000, v17, OS_LOG_TYPE_DEFAULT, "Activated rollout deployment: %{public}@", buf, 0xCu);
      }

      v19 = 0x279DDD000uLL;
      v20 = [TRIContentTracker contentIdentifierForRolloutArtifactWithDeployment:*(*(a1 + 32) + 48)];
      v21 = [*(a1 + 48) contentTracker];
      v22 = [v21 addRefWithContentIdentifier:v20];

      if ((v22 & 1) == 0)
      {
        v23 = TRILogCategory_Server();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v88 = [*(*(a1 + 32) + 48) rolloutId];
          v89 = [*(*(a1 + 32) + 48) deploymentId];
          v90 = *(a1 + 32);
          v91 = objc_opt_class();
          v92 = NSStringFromClass(v91);
          *buf = 138543874;
          v116 = v88;
          v117 = 1024;
          *v118 = v89;
          *&v118[4] = 2114;
          *&v118[6] = v92;
          _os_log_error_impl(&dword_26F567000, v23, OS_LOG_TYPE_ERROR, "Unable to increment ref for rollout deployment: (r: %{public}@, d: %d) in %{public}@", buf, 0x1Cu);

          v19 = 0x279DDD000;
        }
      }

      v24 = [*(v19 + 3168) contentIdentifierForFactorPackSetWithId:*(*(a1 + 32) + 56)];
      v25 = [*(a1 + 48) contentTracker];
      v26 = [v25 addRefWithContentIdentifier:v24];

      if ((v26 & 1) == 0)
      {
        v27 = TRILogCategory_Server();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v93 = *(*(a1 + 32) + 56);
          v94 = objc_opt_class();
          v95 = NSStringFromClass(v94);
          *buf = 138543618;
          v116 = v93;
          v117 = 2114;
          *v118 = v95;
          _os_log_error_impl(&dword_26F567000, v27, OS_LOG_TYPE_ERROR, "Unable to increment ref for factor pack set: %{public}@ in %{public}@", buf, 0x16u);
        }
      }

      v109 = 0u;
      v110 = 0u;
      v107 = 0u;
      v108 = 0u;
      obj = *(a1 + 56);
      v105 = [obj countByEnumeratingWithState:&v107 objects:v114 count:16];
      if (v105)
      {
        v104 = *v108;
        v99 = a1;
        v100 = v3;
        do
        {
          v28 = 0;
          do
          {
            if (*v108 != v104)
            {
              objc_enumerationMutation(obj);
            }

            v29 = *(*(&v107 + 1) + 8 * v28);
            v30 = objc_autoreleasePoolPush();
            v31 = [*(a1 + 48) rolloutDatabase];
            v32 = [v31 recordWithDeployment:v29 usingTransaction:v3];

            if (v32)
            {
              v106 = v30;
              v33 = [v102 objectForKeyedSubscript:v29];
              if (v33)
              {
                v34 = [*(a1 + 48) activationEventDatabase];
                v35 = [v32 deployment];
                v36 = [v35 rolloutId];
                v37 = [v32 deployment];
                v38 = [v34 activationEventRecordWithParentId:v36 factorPackSetId:v33 deploymentId:{objc_msgSend(v37, "deploymentId")}];

                if (v38)
                {
                  v39 = [*(*(a1 + 32) + 32) trialSystemTelemetry];
                  v40 = [v39 hasPrevOsBuild];

                  if ((v40 & 1) == 0)
                  {
                    v41 = objc_opt_new();
                    v42 = [v38 osBuild];
                    [v41 setPrevOsBuild:v42];

                    v43 = [v38 regionCode];
                    [v41 setPrevRegionCode:v43];

                    v44 = [v38 languageCode];
                    [v41 setPrevLanguageCode:v44];

                    v45 = MEMORY[0x277CCACA8];
                    v46 = [v38 languageCode];
                    v47 = [v38 regionCode];
                    if (v47)
                    {
                      v48 = [v38 regionCode];
                      v49 = [v45 stringWithFormat:@"%@-%@", v46, v48];

                      a1 = v99;
                    }

                    else
                    {
                      v49 = [v45 stringWithFormat:@"%@-%@", v46, &stru_287FA0430];
                    }

                    [v41 setPrevBcp47DeviceLocale:v49];
                    v50 = [v38 carrierBundleIdentifier];
                    [v41 setPrevCarrierBundleIdentifier:v50];

                    v51 = [v38 carrierCountryIsoCode];
                    [v41 setPrevCarrierCountryIsoCode:v51];

                    [*(*(a1 + 32) + 32) mergeTelemetry:v41];
                  }
                }

                v103 = v38;
                v52 = [v32 deployment];
                v53 = [v52 rolloutId];
                v54 = [v32 rampId];
                [v32 deployment];
                v56 = v55 = a1;
                LOBYTE(v97) = 0;
                +[TRITaskUtils updateRolloutHistoryDatabaseWithAllocationStatus:forRollout:ramp:deployment:fps:namespaces:telemetryMetric:rolloutRecord:isBecomingObsolete:context:](TRITaskUtils, "updateRolloutHistoryDatabaseWithAllocationStatus:forRollout:ramp:deployment:fps:namespaces:telemetryMetric:rolloutRecord:isBecomingObsolete:context:", 4, v53, v54, [v56 deploymentId], v33, 0, 0, v32, v97, *(v55 + 48));

                v57 = [*(v55 + 48) activationEventDatabase];
                v58 = [v32 deployment];
                v59 = [v58 rolloutId];
                v60 = [v32 deployment];
                v61 = [v57 deleteRecordWithParentId:v59 factorPackSetId:v33 deploymentId:{objc_msgSend(v60, "deploymentId")}];

                v19 = 0x279DDD000uLL;
                if (!v61)
                {
                  v62 = TRILogCategory_Server();
                  if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
                  {
                    v80 = [v29 rolloutId];
                    *buf = 138543362;
                    v116 = v80;
                    _os_log_error_impl(&dword_26F567000, v62, OS_LOG_TYPE_ERROR, "Unable to clear activation record for deactivated rollout: %{public}@", buf, 0xCu);
                  }

                  v55 = v99;
                }

                v63 = [TRIContentTracker contentIdentifierForFactorPackSetWithId:v33];
                v64 = [*(v55 + 48) contentTracker];
                v65 = [v64 dropRefWithContentIdentifier:v63];

                a1 = v55;
                if ((v65 & 1) == 0)
                {
                  v66 = TRILogCategory_Server();
                  if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
                  {
                    v77 = *(*(v55 + 32) + 56);
                    v78 = objc_opt_class();
                    v79 = NSStringFromClass(v78);
                    *buf = 138543618;
                    v116 = v77;
                    v19 = 0x279DDD000;
                    v117 = 2114;
                    *v118 = v79;
                    _os_log_error_impl(&dword_26F567000, v66, OS_LOG_TYPE_ERROR, "Unable to decrement ref for factor pack set: %{public}@ in %{public}@", buf, 0x16u);
                  }
                }

                v3 = v100;
              }

              v30 = v106;
            }

            v67 = [*(v19 + 3168) contentIdentifierForRolloutArtifactWithDeployment:v29];
            v68 = [*(a1 + 48) contentTracker];
            v69 = [v68 dropRefWithContentIdentifier:v67];

            if ((v69 & 1) == 0)
            {
              v70 = TRILogCategory_Server();
              if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
              {
                v71 = [v29 rolloutId];
                v72 = [v29 deploymentId];
                v73 = *(a1 + 32);
                v74 = objc_opt_class();
                NSStringFromClass(v74);
                v76 = v75 = v30;
                *buf = 138543874;
                v116 = v71;
                v117 = 1024;
                *v118 = v72;
                v19 = 0x279DDD000;
                *&v118[4] = 2114;
                *&v118[6] = v76;
                _os_log_error_impl(&dword_26F567000, v70, OS_LOG_TYPE_ERROR, "Unable to decrement ref for rollout deployment: (r: %{public}@, d: %d) in %{public}@", buf, 0x1Cu);

                v30 = v75;
              }
            }

            objc_autoreleasePoolPop(v30);
            ++v28;
          }

          while (v105 != v28);
          v105 = [obj countByEnumeratingWithState:&v107 objects:v114 count:16];
        }

        while (v105);
      }

      v81 = MEMORY[0x277D42670];
      v6 = v98;
    }

    else
    {
      v81 = MEMORY[0x277D42678];
    }

    v82 = *v81;
  }

  else
  {
    v82 = *MEMORY[0x277D42678];
  }

  v83 = *MEMORY[0x277D85DE8];
  return v82;
}

void __74__TRIActivateTargetedRolloutDeploymentTask_runUsingContext_withTaskQueue___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v15 = a3;
  v5 = a2;
  v6 = [v15 isEqualToString:@"obsoleted-unknown-previous-state"];
  v7 = [v5 deployment];
  v8 = [v7 rolloutId];
  v9 = [v5 rampId];
  v10 = [v5 deployment];
  v11 = [v10 deploymentId];
  if (v6)
  {
    v12 = [v5 targetedFactorPackSetId];
    v13 = [v5 namespaces];

    LOBYTE(v14) = 1;
    [TRITaskUtils updateRolloutHistoryDatabaseWithAllocationStatus:4 forRollout:v8 ramp:v9 deployment:v11 fps:v12 namespaces:v13 telemetryMetric:0 rolloutRecord:*(a1 + 32) isBecomingObsolete:v14 context:*(a1 + 40)];
  }

  else
  {
    v12 = [v5 activeFactorPackSetId];
    v13 = [v5 namespaces];

    LOBYTE(v14) = 0;
    [TRITaskUtils updateRolloutHistoryDatabaseWithAllocationStatus:4 forRollout:v8 ramp:v9 deployment:v11 fps:v12 namespaces:v13 telemetryMetric:v15 rolloutRecord:*(a1 + 32) isBecomingObsolete:v14 context:*(a1 + 40)];
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = TRIActivateTargetedRolloutDeploymentTask;
    if ([(TRIBaseTask *)&v8 isEqual:v4]&& [(TRIActivateTargetedRolloutDeploymentTask *)v4 isMemberOfClass:objc_opt_class()])
    {
      v5 = v4;
      if ([(TRIRolloutDeployment *)self->_deployment isEqualToDeployment:v5->_deployment]&& [(TRIFactorPackSetId *)self->_factorPackSetId isEqualToString:v5->_factorPackSetId])
      {
        v6 = [(TRITaskAttributing *)self->_taskAttribution isEqual:v5->_taskAttribution];
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = TRIActivateTargetedRolloutDeploymentTask;
  v3 = [(TRIBaseTask *)&v7 hash];
  v4 = [(TRIRolloutDeployment *)self->_deployment hash]+ 37 * v3;
  v5 = [(TRIFactorPackSetId *)self->_factorPackSetId hash]+ 37 * v4;
  return [(TRITaskAttributing *)self->_taskAttribution hash]+ 37 * v5;
}

- (id)_asPersistedTask
{
  v3 = objc_opt_new();
  v4 = [(TRIRolloutDeployment *)self->_deployment rolloutId];
  [v3 setRolloutId:v4];

  [v3 setDeploymentId:{-[TRIRolloutDeployment deploymentId](self->_deployment, "deploymentId")}];
  [v3 setFactorPackSetId:self->_factorPackSetId];
  v5 = [(TRITaskAttributing *)self->_taskAttribution asPersistedTaskAttribution];
  [v3 setTaskAttribution:v5];

  v6 = [(TRITaskCapabilityModifier *)self->_capabilityModifier asPersistedModifier];
  [v3 setCapabilityModifier:v6];

  return v3;
}

- (id)serialize
{
  v4 = [(TRIActivateTargetedRolloutDeploymentTask *)self _asPersistedTask];
  v5 = [v4 data];

  if (!v5)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [v7 handleFailureInMethod:a2 object:self file:@"TRIActivateTargetedRolloutDeploymentTask.m" lineNumber:437 description:{@"Unexpected failure to serialize %@", v9}];
  }

  return v5;
}

+ (id)parseFromData:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v32 = 0;
  v3 = [(TRIPBMessage *)TRIActivateTargetedRolloutDeploymentPersistedTask parseFromData:a3 error:&v32];
  v4 = v32;
  if (!v3)
  {
    v8 = TRILogCategory_Server();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v34 = v4;
      _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, "Unable to parse buffer as TRIActivateTargetedRolloutDeploymentPersistedTask: %{public}@", buf, 0xCu);
    }

    goto LABEL_26;
  }

  if (([v3 hasRolloutId] & 1) == 0)
  {
    v19 = TRILogCategory_Server();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v30 = objc_opt_class();
      v31 = NSStringFromClass(v30);
      *buf = 138412290;
      v34 = v31;
      _os_log_error_impl(&dword_26F567000, v19, OS_LOG_TYPE_ERROR, "Cannot decode message of type %@ with missing field: rolloutId", buf, 0xCu);
    }

    v8 = TRILogCategory_Server();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    *buf = 138412290;
    v34 = v21;
    v22 = "Cannot decode message of type %@ with missing field: rolloutId";
    goto LABEL_25;
  }

  v5 = [v3 rolloutId];
  v6 = [v5 length];

  if (!v6)
  {
    v8 = TRILogCategory_Server();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    v23 = objc_opt_class();
    v21 = NSStringFromClass(v23);
    *buf = 138412290;
    v34 = v21;
    v22 = "Cannot decode message of type %@ with field of length 0: rolloutId";
LABEL_25:
    _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, v22, buf, 0xCu);

    goto LABEL_26;
  }

  if (([v3 hasDeploymentId] & 1) == 0)
  {
    v8 = TRILogCategory_Server();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    v24 = objc_opt_class();
    v21 = NSStringFromClass(v24);
    *buf = 138412290;
    v34 = v21;
    v22 = "Cannot decode message of type %@ with missing field: deploymentId";
    goto LABEL_25;
  }

  if (([v3 hasFactorPackSetId] & 1) == 0)
  {
    v8 = TRILogCategory_Server();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    v25 = objc_opt_class();
    v21 = NSStringFromClass(v25);
    *buf = 138412290;
    v34 = v21;
    v22 = "Cannot decode message of type %@ with missing field: factorPackSetId";
    goto LABEL_25;
  }

  if (([v3 hasTaskAttribution] & 1) == 0)
  {
    v8 = TRILogCategory_Server();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v26 = objc_opt_class();
      v21 = NSStringFromClass(v26);
      *buf = 138412290;
      v34 = v21;
      v22 = "Cannot decode message of type %@ with missing field: taskAttribution";
      goto LABEL_25;
    }

LABEL_26:
    v27 = 0;
    goto LABEL_27;
  }

  v7 = [v3 taskAttribution];
  v8 = [TRITaskAttributionInternalInsecure taskAttributionFromPersistedTask:v7];

  if (v8)
  {
    v9 = [v3 factorPackSetId];
    v10 = TRIValidateFactorPackSetId();

    if (v10)
    {
      v11 = objc_alloc(MEMORY[0x277D737C8]);
      v12 = [v3 rolloutId];
      v13 = [v11 initWithRolloutId:v12 deploymentId:{objc_msgSend(v3, "deploymentId")}];

      if ([v3 hasCapabilityModifier])
      {
        v14 = [TRITaskCapabilityModifier alloc];
        v15 = [v3 capabilityModifier];
        v16 = [v15 add];
        v17 = [v3 capabilityModifier];
        v18 = -[TRITaskCapabilityModifier initWithAdd:remove:](v14, "initWithAdd:remove:", v16, [v17 remove]);
      }

      else
      {
        v18 = objc_opt_new();
      }

      v27 = [objc_opt_class() taskWithDeployment:v13 factorPackSetId:v10 taskAttribution:v8 capabilityModifier:v18];

      goto LABEL_35;
    }
  }

  else
  {
    v10 = TRILogCategory_Server();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26F567000, v10, OS_LOG_TYPE_ERROR, "invalid de-serialized TRITaskAttribution pb message", buf, 2u);
    }
  }

  v27 = 0;
LABEL_35:

LABEL_27:
  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

- (unint64_t)requiredCapabilities
{
  v3.receiver = self;
  v3.super_class = TRIActivateTargetedRolloutDeploymentTask;
  return [(TRIBaseTask *)&v3 requiredCapabilities];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(TRIRolloutDeployment *)self->_deployment shortDesc];
  factorPackSetId = self->_factorPackSetId;
  v7 = [(TRITaskAttributing *)self->_taskAttribution applicationBundleIdentifier];
  v8 = [v3 stringWithFormat:@"<%@:%@, %@, %@>", v4, v5, factorPackSetId, v7];

  return v8;
}

- (TRIActivateTargetedRolloutDeploymentTask)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TRIActivateTargetedRolloutDeploymentTask;
  v5 = [(TRIActivateTargetedRolloutDeploymentTask *)&v9 init];
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
    [v6 handleFailureInMethod:a2 object:self file:@"TRIActivateTargetedRolloutDeploymentTask.m" lineNumber:487 description:{@"Don't use NSSecureCoding to persist tasks to disk, use -[TRITask serialize]."}];
  }

  v5 = [(TRIActivateTargetedRolloutDeploymentTask *)self serialize];
  [v7 encodeObject:v5 forKey:@"pb"];
}

@end