@interface TRIDeactivateTreatmentTask
+ (id)parseFromData:(id)data;
+ (id)prevTelemetryFieldsFromActivationEventDatabase:(id)database deactivatedRecord:(id)record;
- (NSString)description;
- (TRIDeactivateTreatmentTask)initWithCoder:(id)coder;
- (id)_asPersistedTask;
- (id)runUsingContext:(id)context withTaskQueue:(id)queue;
- (id)serialize;
- (id)trialSystemTelemetry;
- (unint64_t)requiredCapabilities;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TRIDeactivateTreatmentTask

- (id)runUsingContext:(id)context withTaskQueue:(id)queue
{
  v203 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  queueCopy = queue;
  v6 = objc_opt_new();
  v180 = contextCopy;
  v171 = [TRIExperimentPostLaunchRecorder recorderFromContext:contextCopy];
  experimentDatabase = [contextCopy experimentDatabase];
  experiment = [(TRIExperimentBaseTask *)self experiment];
  experimentId = [experiment experimentId];
  v192[0] = MEMORY[0x277D85DD0];
  v192[1] = 3221225472;
  v192[2] = __60__TRIDeactivateTreatmentTask_runUsingContext_withTaskQueue___block_invoke_2;
  v192[3] = &unk_279DE08A8;
  v192[4] = self;
  v168 = v6;
  v193 = v168;
  LOBYTE(v6) = [experimentDatabase enumerateExperimentRecordsMatchingExperimentId:experimentId block:v192];

  if (v6)
  {

    if ([v168 count])
    {
      v172 = objc_opt_new();
      v190 = 0u;
      v191 = 0u;
      v188 = 0u;
      v189 = 0u;
      obj = v168;
      v179 = [obj countByEnumeratingWithState:&v188 objects:v202 count:16];
      if (v179)
      {
        v175 = 0;
        v10 = 0;
        treatmentId2 = 0;
        v178 = *v189;
        v11 = 2;
        deploymentId = -1;
        do
        {
          for (i = 0; i != v179; ++i)
          {
            if (*v189 != v178)
            {
              objc_enumerationMutation(obj);
            }

            v13 = *(*(&v188 + 1) + 8 * i);
            v14 = objc_autoreleasePoolPush();
            if ([v13 status] == 1 || objc_msgSend(v13, "status") == 2)
            {
              v15 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v13, "type")}];
              v16 = [&unk_287FC5080 containsObject:v15];

              if (v16)
              {
                if (treatmentId2)
                {
                  v17 = TRILogCategory_Server();
                  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
                  {
                    experimentDeployment = [v13 experimentDeployment];
                    shortDesc = [experimentDeployment shortDesc];
                    treatmentId = [v13 treatmentId];
                    *buf = 138543874;
                    *&buf[4] = shortDesc;
                    *&buf[12] = 2112;
                    *&buf[14] = treatmentId2;
                    *&buf[22] = 2112;
                    v201 = treatmentId;
                    _os_log_error_impl(&dword_26F567000, v17, OS_LOG_TYPE_ERROR, "Same experiment %{public}@ has multiple treatments that can be deactivated.(%@, %@)", buf, 0x20u);
                  }
                }

                else
                {
                  treatmentId2 = [v13 treatmentId];
                  experimentDeployment2 = [v13 experimentDeployment];
                  deploymentId = [experimentDeployment2 deploymentId];

                  v17 = TRIDeploymentEnvironment_EnumDescriptor();
                  v24 = -[NSObject textFormatNameForValue:](v17, "textFormatNameForValue:", [v13 deploymentEnvironment]);

                  v175 = v24;
                }

                v25 = TRILogCategory_Server();
                if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
                {
                  treatmentId3 = [v13 treatmentId];
                  experimentDeployment3 = [v13 experimentDeployment];
                  shortDesc2 = [experimentDeployment3 shortDesc];
                  *buf = 138412546;
                  *&buf[4] = treatmentId3;
                  *&buf[12] = 2114;
                  *&buf[14] = shortDesc2;
                  _os_log_impl(&dword_26F567000, v25, OS_LOG_TYPE_DEFAULT, "Deactivating treatment %@ of experiment %{public}@.", buf, 0x16u);
                }

                *buf = 0;
                *&buf[8] = buf;
                *&buf[16] = 0x2020000000;
                LOBYTE(v201) = 1;
                paths = [v180 paths];
                namespaceDescriptorsExperimentDir = [paths namespaceDescriptorsExperimentDir];

                namespaces = [v13 namespaces];

                if (namespaces)
                {
                  namespaces2 = [v13 namespaces];
                  v185[0] = MEMORY[0x277D85DD0];
                  v185[1] = 3221225472;
                  v185[2] = __60__TRIDeactivateTreatmentTask_runUsingContext_withTaskQueue___block_invoke_66;
                  v185[3] = &unk_279DE3BD8;
                  v187 = buf;
                  v186 = namespaceDescriptorsExperimentDir;
                  [namespaces2 enumerateObjectsUsingBlock:v185];
                }

                if (*(*&buf[8] + 24) != 1)
                {
                  goto LABEL_51;
                }

                artifact = [v13 artifact];
                experiment2 = [artifact experiment];
                projectId = [experiment2 projectId];

                paths2 = [v180 paths];
                v37 = [TRILogTreatmentProvider providerWithProjectId:projectId paths:paths2];

                if (v37 || ([v180 paths], v38 = objc_claimAutoreleasedReturnValue(), +[TRILogTreatmentProvider providerWithProjectId:paths:](TRILogTreatmentProvider, "providerWithProjectId:paths:", 1, v38), v37 = objc_claimAutoreleasedReturnValue(), v38, v37))
                {
                  treatmentId4 = [v13 treatmentId];

                  if (treatmentId4)
                  {
                    treatmentId5 = [v13 treatmentId];
                    [v37 removeTreatment:treatmentId5];
                  }
                }

                else
                {
                  *(*&buf[8] + 24) = 0;
                }

                if (*(*&buf[8] + 24))
                {
                  v41 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v13, "type")}];
                  v42 = [&unk_287FC5098 containsObject:v41];

                  if ((v42 & 1) == 0)
                  {
                    currentHandler = [MEMORY[0x277CCA890] currentHandler];
                    treatmentId6 = [v13 treatmentId];
                    experimentDeployment4 = [v13 experimentDeployment];
                    shortDesc3 = [experimentDeployment4 shortDesc];
                    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIDeactivateTreatmentTask.m" lineNumber:233 description:{@"Cannot deactivate treatment %@ of experiment %@ because the type is %d.", treatmentId6, shortDesc3, objc_msgSend(v13, "type")}];
                  }

                  artifact2 = [v13 artifact];
                  experiment3 = [artifact2 experiment];
                  projectId2 = [experiment3 projectId];

                  paths3 = [v180 paths];
                  v47 = [TRILogTreatmentProvider providerWithProjectId:projectId2 paths:paths3];

                  treatmentId7 = [v13 treatmentId];

                  if (treatmentId7)
                  {
                    treatmentId8 = [v13 treatmentId];
                    [v47 removeTreatment:treatmentId8];
                  }

                  experimentDatabase2 = [v180 experimentDatabase];
                  experimentDeployment5 = [v13 experimentDeployment];
                  v52 = [experimentDatabase2 setStatus:3 forExperimentDeployment:experimentDeployment5 usingTransaction:0];

                  if ((v52 & 1) == 0)
                  {
                    v53 = TRILogCategory_Server();
                    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
                    {
                      experimentDeployment6 = [v13 experimentDeployment];
                      shortDesc4 = [experimentDeployment6 shortDesc];
                      *v198 = 138412546;
                      *&v198[4] = shortDesc4;
                      *&v198[12] = 2112;
                      *&v198[14] = treatmentId2;
                      _os_log_error_impl(&dword_26F567000, v53, OS_LOG_TYPE_ERROR, "Failed to update status for experiment (%@, %@) to finished", v198, 0x16u);
                    }

                    v11 = 1;
                  }

                  if ([v13 status] == 1)
                  {
                    treatmentId9 = [v13 treatmentId];

                    if (treatmentId9)
                    {
                      activationEventDatabase = [v180 activationEventDatabase];
                      v56 = [TRIDeactivateTreatmentTask prevTelemetryFieldsFromActivationEventDatabase:activationEventDatabase deactivatedRecord:v13];

                      v57 = [TRIExperimentPostLaunchEvent deactivationEventWithTriggerEvent:[(TRIDeactivateTreatmentTask *)self triggerEvent] experimentRecord:v13 additionalTelemetry:v56];
                      [v171 recordEvent:v57];
                    }

                    if ([v13 type] == 1 && objc_msgSend(v13, "requiresTreatmentInstall"))
                    {
                      treatmentId10 = [v13 treatmentId];
                      if (treatmentId10)
                      {
                        namespaces3 = [v13 namespaces];
                        firstObject = [namespaces3 firstObject];
                        name = [firstObject name];

                        if (name)
                        {
                          namespaceDatabase = [v180 namespaceDatabase];
                          v62 = [namespaceDatabase dynamicNamespaceRecordWithNamespaceName:name];

                          if (v62)
                          {
                            appContainer = [v62 appContainer];
                          }

                          else
                          {
                            appContainer = 0;
                          }

                          v80 = appContainer;
                        }

                        else
                        {
                          v80 = 0;
                        }

                        log = v80;
                        v81 = [TRIContentTracker contentIdentifierForTreatmentArtifactWithTreatmentId:treatmentId10 container:?];
                        contentTracker = [v180 contentTracker];
                        v83 = [contentTracker dropRefWithContentIdentifier:v81];

                        if ((v83 & 1) == 0)
                        {
                          v84 = TRILogCategory_Server();
                          if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
                          {
                            treatmentId11 = [v13 treatmentId];
                            *v198 = 138412290;
                            *&v198[4] = treatmentId11;
                            _os_log_error_impl(&dword_26F567000, v84, OS_LOG_TYPE_ERROR, "Failed to drop reference on artifact for treatment %@.", v198, 0xCu);
                          }
                        }
                      }

                      else
                      {
                        log = TRILogCategory_Server();
                        if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
                        {
                          experimentDeployment7 = [v13 experimentDeployment];
                          shortDesc5 = [experimentDeployment7 shortDesc];
                          *v198 = 138543362;
                          *&v198[4] = shortDesc5;
                          _os_log_error_impl(&dword_26F567000, log, OS_LOG_TYPE_ERROR, "Can't drop reference when deactivating experiment %{public}@; no treatmentId available.", v198, 0xCu);
                        }
                      }
                    }

                    experimentDeployment8 = [v13 experimentDeployment];
                    v86 = [TRIContentTracker contentIdentifierForExperimentArtifactWithDeployment:experimentDeployment8];

                    contentTracker2 = [v180 contentTracker];
                    v88 = [contentTracker2 dropRefWithContentIdentifier:v86];

                    if ((v88 & 1) == 0)
                    {
                      v89 = TRILogCategory_Server();
                      if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
                      {
                        experimentDeployment9 = [v13 experimentDeployment];
                        shortDesc6 = [experimentDeployment9 shortDesc];
                        *v198 = 138543362;
                        *&v198[4] = shortDesc6;
                        _os_log_error_impl(&dword_26F567000, v89, OS_LOG_TYPE_ERROR, "Failed to drop reference on artifact for experiment %{public}@.", v198, 0xCu);
                      }
                    }

                    [TRIBiomeExperimentUpdateStreamWriter writeExperimentUpdateWithRecord:v13 withExperimentStateIsActive:0 withUserId:0];
                  }

                  else if ([v13 status] == 2)
                  {
                    treatmentId12 = [v13 treatmentId];

                    if (treatmentId12)
                    {
                      activationEventDatabase2 = [v180 activationEventDatabase];
                      v66 = [TRIDeactivateTreatmentTask prevTelemetryFieldsFromActivationEventDatabase:activationEventDatabase2 deactivatedRecord:v13];

                      triggerEvent = [(TRIDeactivateTreatmentTask *)self triggerEvent];
                      experimentHistoryDatabase = [v180 experimentHistoryDatabase];
                      v69 = [TRIExperimentPostLaunchEvent obsoletionOrDeactivationEventWithTriggerEvent:triggerEvent previousStateProvider:experimentHistoryDatabase experimentRecord:v13 additionalTelemetry:v66];

                      [v171 recordEvent:v69];
                    }
                  }

                  *v198 = 0;
                  *&v198[8] = v198;
                  *&v198[16] = 0x2020000000;
                  v199 = 0;
                  experimentDatabase3 = [v180 experimentDatabase];
                  v182[0] = MEMORY[0x277D85DD0];
                  v182[1] = 3221225472;
                  v182[2] = __60__TRIDeactivateTreatmentTask_runUsingContext_withTaskQueue___block_invoke_78;
                  v182[3] = &unk_279DE3C00;
                  v183 = v180;
                  v184 = v198;
                  [experimentDatabase3 writeTransactionWithFailableBlock:v182];

                  if ((*(*&v198[8] + 24) & 1) == 0)
                  {
                    v91 = TRILogCategory_Server();
                    if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
                    {
                      *v194 = 0;
                      _os_log_error_impl(&dword_26F567000, v91, OS_LOG_TYPE_ERROR, "Unable to update the factor providers for experiment deactivation.", v194, 2u);
                    }

                    v11 = 3;
                  }

                  v92 = TRILogCategory_Server();
                  if (os_log_type_enabled(v92, OS_LOG_TYPE_DEBUG))
                  {
                    experimentDeployment10 = [v13 experimentDeployment];
                    shortDesc7 = [experimentDeployment10 shortDesc];
                    treatmentId13 = [v13 treatmentId];
                    *v194 = 138543618;
                    v195 = shortDesc7;
                    v196 = 2112;
                    v197 = treatmentId13;
                    _os_log_debug_impl(&dword_26F567000, v92, OS_LOG_TYPE_DEBUG, "Experiment %{public}@ with treatment %@ deactivated.", v194, 0x16u);
                  }

                  v93 = TRILogCategory_Server();
                  if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
                  {
                    treatmentId14 = [v13 treatmentId];
                    experimentDeployment11 = [v13 experimentDeployment];
                    shortDesc8 = [experimentDeployment11 shortDesc];
                    *v194 = 138412546;
                    v195 = treatmentId14;
                    v196 = 2114;
                    v197 = shortDesc8;
                    _os_log_impl(&dword_26F567000, v93, OS_LOG_TYPE_DEFAULT, "Notify about updates to namespaces in treatment %@ of experiment %{public}@ (deactivated treatment).", v194, 0x16u);
                  }

                  namespaces4 = [v13 namespaces];
                  v181[0] = MEMORY[0x277D85DD0];
                  v181[1] = 3221225472;
                  v181[2] = __60__TRIDeactivateTreatmentTask_runUsingContext_withTaskQueue___block_invoke_81;
                  v181[3] = &unk_279DE3C28;
                  v181[4] = v13;
                  [namespaces4 enumerateObjectsUsingBlock:v181];

                  v98 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:(60 * arc4random_uniform(0x1Eu))];
                  experiment4 = [(TRIExperimentBaseTask *)self experiment];
                  experimentId2 = [experiment4 experimentId];
                  v101 = [TRIUnsubscribeChannelTask taskWithExperimentId:experimentId2 startTime:v98];

                  [v172 addObject:v101];
                  _Block_object_dispose(v198, 8);
                }

                else
                {
LABEL_51:
                  v11 = 1;
                }

                _Block_object_dispose(buf, 8);
              }

              else
              {
                v21 = TRILogCategory_Server();
                if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
                {
                  treatmentId15 = [v13 treatmentId];
                  experimentDeployment12 = [v13 experimentDeployment];
                  shortDesc9 = [experimentDeployment12 shortDesc];
                  type = [v13 type];
                  *buf = 138412802;
                  *&buf[4] = treatmentId15;
                  *&buf[12] = 2114;
                  *&buf[14] = shortDesc9;
                  *&buf[22] = 1024;
                  LODWORD(v201) = type;
                  _os_log_error_impl(&dword_26F567000, v21, OS_LOG_TYPE_ERROR, "Cannot deactivate treatment %@ of experiment %{public}@ because the type is %d.", buf, 0x1Cu);
                }

                if (v11 == 2)
                {
                  v11 = 3;
                }

                else
                {
                  v11 = v11;
                }
              }

              v10 = 1;
            }

            else
            {
              v22 = TRILogCategory_Server();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
              {
                experiment5 = [(TRIExperimentBaseTask *)self experiment];
                experimentId3 = [experiment5 experimentId];
                *buf = 138543362;
                *&buf[4] = experimentId3;
                _os_log_debug_impl(&dword_26F567000, v22, OS_LOG_TYPE_DEBUG, "Experiment %{public}@ is already deactivated, nothing to do.", buf, 0xCu);
              }
            }

            objc_autoreleasePoolPop(v14);
          }

          v179 = [obj countByEnumeratingWithState:&v188 objects:v202 count:16];
        }

        while (v179);

        if (treatmentId2)
        {
          activationEventDatabase3 = [v180 activationEventDatabase];
          experiment6 = [(TRIExperimentBaseTask *)self experiment];
          experimentId4 = [experiment6 experimentId];
          v115 = [activationEventDatabase3 activationEventRecordWithParentId:experimentId4 factorPackSetId:treatmentId2 deploymentId:deploymentId];

          if (v115)
          {
            v116 = objc_opt_new();
            osBuild = [v115 osBuild];
            [v116 setPrevOsBuild:osBuild];

            v118 = MEMORY[0x277CCACA8];
            languageCode = [v115 languageCode];
            regionCode = [v115 regionCode];
            if (regionCode)
            {
              regionCode2 = [v115 regionCode];
              v121 = [v118 stringWithFormat:@"%@-%@", languageCode, regionCode2];
            }

            else
            {
              v121 = [v118 stringWithFormat:@"%@-%@", languageCode, &stru_287FA0430];
            }

            [v116 setPrevBcp47DeviceLocale:v121];
            carrierBundleIdentifier = [v115 carrierBundleIdentifier];
            [v116 setPrevCarrierBundleIdentifier:carrierBundleIdentifier];

            carrierCountryIsoCode = [v115 carrierCountryIsoCode];
            [v116 setPrevCarrierCountryIsoCode:carrierCountryIsoCode];

            ensureExperimentFields = [v116 ensureExperimentFields];
            [ensureExperimentFields setClientTreatmentId:treatmentId2];

            if (v175)
            {
              [v116 setClientDeploymentEnv:v175];
            }

            activationEventDatabase4 = [v180 activationEventDatabase];
            experiment7 = [(TRIExperimentBaseTask *)self experiment];
            experimentId5 = [experiment7 experimentId];
            v148 = [activationEventDatabase4 deleteRecordWithParentId:experimentId5 factorPackSetId:treatmentId2 deploymentId:deploymentId];

            if (!v148)
            {
              v149 = TRILogCategory_Server();
              if (os_log_type_enabled(v149, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                *&buf[4] = treatmentId2;
                _os_log_error_impl(&dword_26F567000, v149, OS_LOG_TYPE_ERROR, "Unable to delete row from treatments db for treatment %@.", buf, 0xCu);
              }
            }
          }

          else
          {
            v121 = TRILogCategory_Server();
            if (os_log_type_enabled(v121, OS_LOG_TYPE_DEFAULT))
            {
              experiment8 = [(TRIExperimentBaseTask *)self experiment];
              experimentId6 = [experiment8 experimentId];
              *buf = 138543874;
              *&buf[4] = experimentId6;
              *&buf[12] = 2112;
              *&buf[14] = treatmentId2;
              *&buf[22] = 1024;
              LODWORD(v201) = deploymentId;
              _os_log_impl(&dword_26F567000, v121, OS_LOG_TYPE_DEFAULT, "Unable to retrieve activation event for experiment id %{public}@, treatment id %@, deployment id %ul", buf, 0x1Cu);
            }

            v116 = 0;
          }

          if (deploymentId != -1)
          {
            v150 = [MEMORY[0x277CCABB0] numberWithInt:?];
            stringValue = [v150 stringValue];
            [v116 setClientDeploymentId:stringValue];
          }

          v152 = MEMORY[0x277D73B40];
          v153 = [TRIDeactivationTriggerEventString categoricalValueForTriggerEvent:self->_triggerEvent];
          v154 = [v152 metricWithName:@"trigger_event" categoricalValue:v153];
          [(TRIExperimentBaseTask *)self addMetric:v154];

          if (v116)
          {
            [(TRIExperimentBaseTask *)self mergeTelemetry:v116];
          }

          v137 = 1;
        }

        else
        {
          v116 = 0;
          treatmentId2 = 0;
          v137 = 0;
        }
      }

      else
      {

        v116 = 0;
        v175 = 0;
        treatmentId2 = 0;
        v10 = 0;
        v137 = 0;
        v11 = 2;
      }

      v155 = [obj _pas_filteredArrayWithTest:&__block_literal_global_98];
      v156 = [v155 count];
      v157 = v137 ^ 1;
      if (!v156)
      {
        v157 = 1;
      }

      if ((v157 & 1) == 0)
      {
        v158 = objc_opt_new();
        [v172 addObject:v158];
      }

      if (v172)
      {
        v159 = v172;
      }

      else
      {
        v159 = MEMORY[0x277CBEBF8];
      }

      v128 = [TRITaskRunResult resultWithRunStatus:v11 reportResultToServer:v10 & 1 nextTasks:v159 earliestRetryDate:0];
    }

    else
    {
      failOnUnrecognizedExperiment = [(TRIDeactivateTreatmentTask *)self failOnUnrecognizedExperiment];
      v130 = TRILogCategory_Server();
      v131 = v130;
      if (failOnUnrecognizedExperiment)
      {
        if (os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
        {
          experiment9 = [(TRIExperimentBaseTask *)self experiment];
          experimentId7 = [experiment9 experimentId];
          *buf = 138543362;
          *&buf[4] = experimentId7;
          _os_log_error_impl(&dword_26F567000, v131, OS_LOG_TYPE_ERROR, "cannot deactivate experiment %{public}@: experiment not found in database", buf, 0xCu);
        }

        experiment10 = [(TRIExperimentBaseTask *)self experiment];
        experimentId8 = [experiment10 experimentId];
        experiment11 = [(TRIExperimentBaseTask *)self experiment];
        v135 = +[TRIExperimentDeploymentTreatment treatmentTripleWithExperimentId:deploymentId:treatmentId:](TRIExperimentDeploymentTreatment, "treatmentTripleWithExperimentId:deploymentId:treatmentId:", experimentId8, [experiment11 deploymentId], @"unspecified-or-default-treatment");

        v136 = [TRIExperimentPostLaunchEvent failureEventWithEventType:9 treatmentTriple:v135 failureReason:@"experiment-not-found"];
        if (!v136)
        {
          currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
          [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIDeactivateTreatmentTask.m" lineNumber:152 description:{@"Expression was unexpectedly nil/false: %@", @"[TRIExperimentPostLaunchEvent failureEventWithEventType:TRIInternalExperimentAllocationStatusTypeTreatmentDeactivationFailure treatmentTriple:triple failureReason:kDeactivateFailureReasonExperimentNotFound]"}];
        }

        [v171 recordEvent:v136];
        v128 = [TRITaskRunResult resultWithRunStatus:3 reportResultToServer:1 nextTasks:MEMORY[0x277CBEBF8] earliestRetryDate:0];
      }

      else
      {
        if (os_log_type_enabled(v130, OS_LOG_TYPE_DEFAULT))
        {
          experiment12 = [(TRIExperimentBaseTask *)self experiment];
          experimentId9 = [experiment12 experimentId];
          *buf = 138543362;
          *&buf[4] = experimentId9;
          _os_log_impl(&dword_26F567000, v131, OS_LOG_TYPE_DEFAULT, "Unable to find experiment %{public}@ in database. Completing", buf, 0xCu);
        }

        v128 = [TRITaskRunResult resultWithRunStatus:2 reportResultToServer:0 nextTasks:MEMORY[0x277CBEBF8] earliestRetryDate:0];
      }
    }
  }

  else
  {
    experiment13 = [(TRIExperimentBaseTask *)self experiment];
    experimentId10 = [experiment13 experimentId];
    experiment14 = [(TRIExperimentBaseTask *)self experiment];
    v126 = +[TRIExperimentDeploymentTreatment treatmentTripleWithExperimentId:deploymentId:treatmentId:](TRIExperimentDeploymentTreatment, "treatmentTripleWithExperimentId:deploymentId:treatmentId:", experimentId10, [experiment14 deploymentId], @"unspecified-or-default-treatment");

    v127 = [TRIExperimentPostLaunchEvent failureEventWithEventType:9 treatmentTriple:v126 failureReason:@"database-failure"];
    if (!v127)
    {
      currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler3 handleFailureInMethod:a2 object:self file:@"TRIDeactivateTreatmentTask.m" lineNumber:137 description:{@"Expression was unexpectedly nil/false: %@", @"[TRIExperimentPostLaunchEvent failureEventWithEventType:TRIInternalExperimentAllocationStatusTypeTreatmentDeactivationFailure treatmentTriple:triple failureReason:kDeactivateFailureReasonDatabaseFailure]"}];
    }

    [v171 recordEvent:v127];
    v128 = [TRITaskRunResult resultWithRunStatus:3 reportResultToServer:1 nextTasks:MEMORY[0x277CBEBF8] earliestRetryDate:0];
  }

  v160 = *MEMORY[0x277D85DE8];

  return v128;
}

void __60__TRIDeactivateTreatmentTask_runUsingContext_withTaskQueue___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [*(a1 + 32) experiment];
  if ([v3 deploymentId] == -1)
  {

    goto LABEL_5;
  }

  v4 = [*(a1 + 32) experiment];
  v5 = [v4 deploymentId];
  v6 = [v8 experimentDeployment];
  v7 = [v6 deploymentId];

  if (v5 == v7)
  {
LABEL_5:
    [*(a1 + 40) addObject:v8];
  }
}

void __60__TRIDeactivateTreatmentTask_runUsingContext_withTaskQueue___block_invoke_66(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D73750];
  v4 = [a2 name];
  *(*(*(a1 + 40) + 8) + 24) &= [v3 removeDescriptorWithNamespaceName:v4 fromDirectory:*(a1 + 32)];
}

uint64_t __60__TRIDeactivateTreatmentTask_runUsingContext_withTaskQueue___block_invoke_78(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [TRINamespaceResolverStorage alloc];
  v5 = [*(a1 + 32) paths];
  v6 = [(TRINamespaceResolverStorage *)v4 initWithPaths:v5];

  LOBYTE(v5) = [(TRINamespaceResolverStorage *)v6 overwriteActiveFactorProvidersUsingTransaction:v3 fromContext:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 24) = v5;
  LODWORD(a1) = *(*(*(a1 + 40) + 8) + 24);
  v7 = MEMORY[0x277D42670];
  v8 = MEMORY[0x277D42678];

  if (a1)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  return *v9;
}

void __60__TRIDeactivateTreatmentTask_runUsingContext_withTaskQueue___block_invoke_81(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 name];
    v6 = [*(a1 + 32) treatmentId];
    v7 = [*(a1 + 32) experimentDeployment];
    v8 = [v7 shortDesc];
    v12 = 138543874;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    v16 = 2114;
    v17 = v8;
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "Notify about updates to namespace %{public}@ (deactivate treatment %@ of experiment %{public}@.", &v12, 0x20u);
  }

  v9 = MEMORY[0x277D73790];
  v10 = [v3 name];
  [v9 notifyUpdateForNamespaceName:v10];

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __60__TRIDeactivateTreatmentTask_runUsingContext_withTaskQueue___block_invoke_95(uint64_t a1, void *a2)
{
  v2 = [a2 artifact];
  v3 = [v2 experiment];
  v4 = [v3 hasLowLevelConfiguration];

  return v4;
}

+ (id)prevTelemetryFieldsFromActivationEventDatabase:(id)database deactivatedRecord:(id)record
{
  databaseCopy = database;
  recordCopy = record;
  v7 = objc_opt_new();
  treatmentId = [recordCopy treatmentId];

  if (treatmentId)
  {
    experimentDeployment = [recordCopy experimentDeployment];
    experimentId = [experimentDeployment experimentId];
    treatmentId2 = [recordCopy treatmentId];
    experimentDeployment2 = [recordCopy experimentDeployment];
    v13 = [databaseCopy activationEventRecordWithParentId:experimentId factorPackSetId:treatmentId2 deploymentId:{objc_msgSend(experimentDeployment2, "deploymentId")}];

    if (v13)
    {
      osBuild = [v13 osBuild];
      [v7 setPrevOsBuild:osBuild];

      v15 = MEMORY[0x277CCACA8];
      languageCode = [v13 languageCode];
      regionCode = [v13 regionCode];
      if (regionCode)
      {
        regionCode2 = [v13 regionCode];
        v19 = [v15 stringWithFormat:@"%@-%@", languageCode, regionCode2];
      }

      else
      {
        v19 = [v15 stringWithFormat:@"%@-%@", languageCode, &stru_287FA0430];
      }

      [v7 setPrevBcp47DeviceLocale:v19];
      carrierBundleIdentifier = [v13 carrierBundleIdentifier];
      [v7 setPrevCarrierBundleIdentifier:carrierBundleIdentifier];

      carrierCountryIsoCode = [v13 carrierCountryIsoCode];
      [v7 setPrevCarrierCountryIsoCode:carrierCountryIsoCode];

      v24 = v7;
    }

    else
    {
      v21 = v7;
    }
  }

  else
  {
    v20 = v7;
  }

  return v7;
}

- (id)_asPersistedTask
{
  v3 = objc_opt_new();
  experiment = [(TRIExperimentBaseTask *)self experiment];
  experimentId = [experiment experimentId];
  [v3 setExperimentId:experimentId];

  experiment2 = [(TRIExperimentBaseTask *)self experiment];
  [v3 setDeploymentId:{objc_msgSend(experiment2, "deploymentId")}];

  [v3 setFailOnUnrecognizedExperiment:{-[TRIDeactivateTreatmentTask failOnUnrecognizedExperiment](self, "failOnUnrecognizedExperiment")}];
  [v3 setRetryCount:{-[TRIDeactivateTreatmentTask retryCount](self, "retryCount")}];
  startTime = [(TRIDeactivateTreatmentTask *)self startTime];

  if (startTime)
  {
    v8 = objc_alloc(MEMORY[0x277D73B88]);
    startTime2 = [(TRIDeactivateTreatmentTask *)self startTime];
    v10 = [v8 initWithDate:startTime2];
    [v3 setStartTimestamp:v10];
  }

  taskAttribution = self->_taskAttribution;
  if (taskAttribution)
  {
    asPersistedTaskAttribution = [(TRITaskAttributing *)taskAttribution asPersistedTaskAttribution];
    [v3 setTaskAttribution:asPersistedTaskAttribution];
  }

  triggerEvent = self->_triggerEvent;
  if (triggerEvent <= 0x19 && ((0x3FFDFFFu >> triggerEvent) & 1) != 0)
  {
    [v3 setTriggerEvent:dword_26F6C76F8[triggerEvent]];
  }

  return v3;
}

- (id)serialize
{
  _asPersistedTask = [(TRIDeactivateTreatmentTask *)self _asPersistedTask];
  data = [_asPersistedTask data];

  if (!data)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIDeactivateTreatmentTask.m" lineNumber:543 description:{@"Unexpected failure to serialize %@", v9}];
  }

  return data;
}

+ (id)parseFromData:(id)data
{
  v34 = *MEMORY[0x277D85DE8];
  v31 = 0;
  v3 = [(TRIPBMessage *)TRIDeactivateTreatmentPersistedTask parseFromData:data error:&v31];
  v4 = v31;
  if (v3)
  {
    if ([v3 hasExperimentId])
    {
      experimentId = [v3 experimentId];
      v6 = [experimentId length];

      if (v6)
      {
        if ([v3 hasFailOnUnrecognizedExperiment])
        {
          failOnUnrecognizedExperiment = [v3 failOnUnrecognizedExperiment];
        }

        else
        {
          failOnUnrecognizedExperiment = 0;
        }

        if ([v3 hasDeploymentId])
        {
          deploymentId = [v3 deploymentId];
        }

        else
        {
          deploymentId = 0xFFFFFFFFLL;
        }

        if ([v3 hasTriggerEvent] && (v18 = objc_msgSend(v3, "triggerEvent") - 2, v18 <= 0x17))
        {
          v19 = qword_26F6C7760[v18];
        }

        else
        {
          v19 = 0;
        }

        if ([v3 hasTaskAttribution])
        {
          taskAttribution = [v3 taskAttribution];
          v8 = [TRITaskAttributionInternalInsecure taskAttributionFromPersistedTask:taskAttribution];

          if (!v8)
          {
            v8 = TRILogCategory_Server();
            if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_27;
            }

            *buf = 0;
            v9 = "invalid de-serialized TRITaskAttribution pb message";
            v10 = v8;
            v11 = 2;
            goto LABEL_8;
          }
        }

        else
        {
          v8 = 0;
        }

        v24 = objc_opt_class();
        experimentId2 = [v3 experimentId];
        if ([v3 hasStartTimestamp])
        {
          startTimestamp = [v3 startTimestamp];
          date = [startTimestamp date];
          v21 = [v24 taskWithExperimentId:experimentId2 deploymentId:deploymentId startTime:date failOnUnrecognizedExperiment:failOnUnrecognizedExperiment triggerEvent:v19 taskAttribution:v8];
        }

        else
        {
          v21 = [v24 taskWithExperimentId:experimentId2 deploymentId:deploymentId startTime:0 failOnUnrecognizedExperiment:failOnUnrecognizedExperiment triggerEvent:v19 taskAttribution:v8];
        }

        if ([v3 hasRetryCount])
        {
          retryCount = [v3 retryCount];
        }

        else
        {
          retryCount = 0;
        }

        [v21 setRetryCount:retryCount];
        goto LABEL_28;
      }

      v8 = TRILogCategory_Server();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_27;
      }

      v16 = objc_opt_class();
      v14 = NSStringFromClass(v16);
      *buf = 138412290;
      v33 = v14;
      v15 = "Cannot decode message of type %@ with field of length 0: experimentId";
    }

    else
    {
      v12 = TRILogCategory_Server();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v29 = objc_opt_class();
        v30 = NSStringFromClass(v29);
        *buf = 138412290;
        v33 = v30;
        _os_log_error_impl(&dword_26F567000, v12, OS_LOG_TYPE_ERROR, "Cannot decode message of type %@ with missing field: experimentId", buf, 0xCu);
      }

      v8 = TRILogCategory_Server();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_27;
      }

      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      *buf = 138412290;
      v33 = v14;
      v15 = "Cannot decode message of type %@ with missing field: experimentId";
    }

    _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, v15, buf, 0xCu);

    goto LABEL_27;
  }

  v8 = TRILogCategory_Server();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v33 = v4;
    v9 = "Unable to parse buffer as TRIDeactivateTreatmentPersistedTask: %{public}@";
    v10 = v8;
    v11 = 12;
LABEL_8:
    _os_log_error_impl(&dword_26F567000, v10, OS_LOG_TYPE_ERROR, v9, buf, v11);
  }

LABEL_27:
  v21 = 0;
LABEL_28:

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (unint64_t)requiredCapabilities
{
  v3.receiver = self;
  v3.super_class = TRIDeactivateTreatmentTask;
  return [(TRIBaseTask *)&v3 requiredCapabilities];
}

- (NSString)description
{
  startTime = [(TRIDeactivateTreatmentTask *)self startTime];
  [startTime timeIntervalSince1970];
  v5 = llround(v4);

  v6 = MEMORY[0x277CCACA8];
  v7 = objc_opt_class();
  experiment = [(TRIExperimentBaseTask *)self experiment];
  experimentId = [experiment experimentId];
  experiment2 = [(TRIExperimentBaseTask *)self experiment];
  v11 = [v6 stringWithFormat:@"<%@:%@, %d, %ld, r:%d>", v7, experimentId, objc_msgSend(experiment2, "deploymentId"), v5, -[TRIDeactivateTreatmentTask retryCount](self, "retryCount")];

  return v11;
}

- (id)trialSystemTelemetry
{
  v8.receiver = self;
  v8.super_class = TRIDeactivateTreatmentTask;
  trialSystemTelemetry = [(TRIExperimentBaseTask *)&v8 trialSystemTelemetry];
  if (!trialSystemTelemetry)
  {
    trialSystemTelemetry = objc_opt_new();
  }

  taskAttribution = self->_taskAttribution;
  if (taskAttribution)
  {
    teamIdentifier = [(TRITaskAttributing *)taskAttribution teamIdentifier];
    [trialSystemTelemetry setClientTeamId:teamIdentifier];

    if (([trialSystemTelemetry hasContainerOriginFields] & 1) == 0)
    {
      v6 = [TRITelemetryFactory containerOriginTelemetryForTaskAttribution:self->_taskAttribution];
      [trialSystemTelemetry mergeFrom:v6];
    }
  }

  return trialSystemTelemetry;
}

- (TRIDeactivateTreatmentTask)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = TRIDeactivateTreatmentTask;
  v5 = [(TRIDeactivateTreatmentTask *)&v9 init];
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
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIDeactivateTreatmentTask.m" lineNumber:696 description:{@"Don't use NSSecureCoding to persist tasks to disk, use -[TRITask serialize]."}];
  }

  serialize = [(TRIDeactivateTreatmentTask *)self serialize];
  [coderCopy encodeObject:serialize forKey:@"pb"];
}

@end