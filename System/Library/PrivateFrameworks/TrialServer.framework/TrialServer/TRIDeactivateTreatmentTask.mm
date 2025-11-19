@interface TRIDeactivateTreatmentTask
+ (id)parseFromData:(id)a3;
+ (id)prevTelemetryFieldsFromActivationEventDatabase:(id)a3 deactivatedRecord:(id)a4;
- (NSString)description;
- (TRIDeactivateTreatmentTask)initWithCoder:(id)a3;
- (id)_asPersistedTask;
- (id)runUsingContext:(id)a3 withTaskQueue:(id)a4;
- (id)serialize;
- (id)trialSystemTelemetry;
- (unint64_t)requiredCapabilities;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TRIDeactivateTreatmentTask

- (id)runUsingContext:(id)a3 withTaskQueue:(id)a4
{
  v203 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v167 = a4;
  v6 = objc_opt_new();
  v180 = v5;
  v171 = [TRIExperimentPostLaunchRecorder recorderFromContext:v5];
  v7 = [v5 experimentDatabase];
  v8 = [(TRIExperimentBaseTask *)self experiment];
  v9 = [v8 experimentId];
  v192[0] = MEMORY[0x277D85DD0];
  v192[1] = 3221225472;
  v192[2] = __60__TRIDeactivateTreatmentTask_runUsingContext_withTaskQueue___block_invoke_2;
  v192[3] = &unk_279DE08A8;
  v192[4] = self;
  v168 = v6;
  v193 = v168;
  LOBYTE(v6) = [v7 enumerateExperimentRecordsMatchingExperimentId:v9 block:v192];

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
        v177 = 0;
        v178 = *v189;
        v11 = 2;
        v173 = -1;
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
                if (v177)
                {
                  v17 = TRILogCategory_Server();
                  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
                  {
                    v18 = [v13 experimentDeployment];
                    v19 = [v18 shortDesc];
                    v20 = [v13 treatmentId];
                    *buf = 138543874;
                    *&buf[4] = v19;
                    *&buf[12] = 2112;
                    *&buf[14] = v177;
                    *&buf[22] = 2112;
                    v201 = v20;
                    _os_log_error_impl(&dword_26F567000, v17, OS_LOG_TYPE_ERROR, "Same experiment %{public}@ has multiple treatments that can be deactivated.(%@, %@)", buf, 0x20u);
                  }
                }

                else
                {
                  v177 = [v13 treatmentId];
                  v23 = [v13 experimentDeployment];
                  v173 = [v23 deploymentId];

                  v17 = TRIDeploymentEnvironment_EnumDescriptor();
                  v24 = -[NSObject textFormatNameForValue:](v17, "textFormatNameForValue:", [v13 deploymentEnvironment]);

                  v175 = v24;
                }

                v25 = TRILogCategory_Server();
                if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
                {
                  v26 = [v13 treatmentId];
                  v27 = [v13 experimentDeployment];
                  v28 = [v27 shortDesc];
                  *buf = 138412546;
                  *&buf[4] = v26;
                  *&buf[12] = 2114;
                  *&buf[14] = v28;
                  _os_log_impl(&dword_26F567000, v25, OS_LOG_TYPE_DEFAULT, "Deactivating treatment %@ of experiment %{public}@.", buf, 0x16u);
                }

                *buf = 0;
                *&buf[8] = buf;
                *&buf[16] = 0x2020000000;
                LOBYTE(v201) = 1;
                v29 = [v180 paths];
                v30 = [v29 namespaceDescriptorsExperimentDir];

                v31 = [v13 namespaces];

                if (v31)
                {
                  v32 = [v13 namespaces];
                  v185[0] = MEMORY[0x277D85DD0];
                  v185[1] = 3221225472;
                  v185[2] = __60__TRIDeactivateTreatmentTask_runUsingContext_withTaskQueue___block_invoke_66;
                  v185[3] = &unk_279DE3BD8;
                  v187 = buf;
                  v186 = v30;
                  [v32 enumerateObjectsUsingBlock:v185];
                }

                if (*(*&buf[8] + 24) != 1)
                {
                  goto LABEL_51;
                }

                v33 = [v13 artifact];
                v34 = [v33 experiment];
                v35 = [v34 projectId];

                v36 = [v180 paths];
                v37 = [TRILogTreatmentProvider providerWithProjectId:v35 paths:v36];

                if (v37 || ([v180 paths], v38 = objc_claimAutoreleasedReturnValue(), +[TRILogTreatmentProvider providerWithProjectId:paths:](TRILogTreatmentProvider, "providerWithProjectId:paths:", 1, v38), v37 = objc_claimAutoreleasedReturnValue(), v38, v37))
                {
                  v39 = [v13 treatmentId];

                  if (v39)
                  {
                    v40 = [v13 treatmentId];
                    [v37 removeTreatment:v40];
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
                    v108 = [MEMORY[0x277CCA890] currentHandler];
                    v109 = [v13 treatmentId];
                    v110 = [v13 experimentDeployment];
                    v111 = [v110 shortDesc];
                    [v108 handleFailureInMethod:a2 object:self file:@"TRIDeactivateTreatmentTask.m" lineNumber:233 description:{@"Cannot deactivate treatment %@ of experiment %@ because the type is %d.", v109, v111, objc_msgSend(v13, "type")}];
                  }

                  v43 = [v13 artifact];
                  v44 = [v43 experiment];
                  v45 = [v44 projectId];

                  v46 = [v180 paths];
                  v47 = [TRILogTreatmentProvider providerWithProjectId:v45 paths:v46];

                  v48 = [v13 treatmentId];

                  if (v48)
                  {
                    v49 = [v13 treatmentId];
                    [v47 removeTreatment:v49];
                  }

                  v50 = [v180 experimentDatabase];
                  v51 = [v13 experimentDeployment];
                  v52 = [v50 setStatus:3 forExperimentDeployment:v51 usingTransaction:0];

                  if ((v52 & 1) == 0)
                  {
                    v53 = TRILogCategory_Server();
                    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
                    {
                      v78 = [v13 experimentDeployment];
                      v79 = [v78 shortDesc];
                      *v198 = 138412546;
                      *&v198[4] = v79;
                      *&v198[12] = 2112;
                      *&v198[14] = v177;
                      _os_log_error_impl(&dword_26F567000, v53, OS_LOG_TYPE_ERROR, "Failed to update status for experiment (%@, %@) to finished", v198, 0x16u);
                    }

                    v11 = 1;
                  }

                  if ([v13 status] == 1)
                  {
                    v54 = [v13 treatmentId];

                    if (v54)
                    {
                      v55 = [v180 activationEventDatabase];
                      v56 = [TRIDeactivateTreatmentTask prevTelemetryFieldsFromActivationEventDatabase:v55 deactivatedRecord:v13];

                      v57 = [TRIExperimentPostLaunchEvent deactivationEventWithTriggerEvent:[(TRIDeactivateTreatmentTask *)self triggerEvent] experimentRecord:v13 additionalTelemetry:v56];
                      [v171 recordEvent:v57];
                    }

                    if ([v13 type] == 1 && objc_msgSend(v13, "requiresTreatmentInstall"))
                    {
                      v58 = [v13 treatmentId];
                      if (v58)
                      {
                        v59 = [v13 namespaces];
                        v60 = [v59 firstObject];
                        v170 = [v60 name];

                        if (v170)
                        {
                          v61 = [v180 namespaceDatabase];
                          v62 = [v61 dynamicNamespaceRecordWithNamespaceName:v170];

                          if (v62)
                          {
                            v63 = [v62 appContainer];
                          }

                          else
                          {
                            v63 = 0;
                          }

                          v80 = v63;
                        }

                        else
                        {
                          v80 = 0;
                        }

                        log = v80;
                        v81 = [TRIContentTracker contentIdentifierForTreatmentArtifactWithTreatmentId:v58 container:?];
                        v82 = [v180 contentTracker];
                        v83 = [v82 dropRefWithContentIdentifier:v81];

                        if ((v83 & 1) == 0)
                        {
                          v84 = TRILogCategory_Server();
                          if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
                          {
                            v107 = [v13 treatmentId];
                            *v198 = 138412290;
                            *&v198[4] = v107;
                            _os_log_error_impl(&dword_26F567000, v84, OS_LOG_TYPE_ERROR, "Failed to drop reference on artifact for treatment %@.", v198, 0xCu);
                          }
                        }
                      }

                      else
                      {
                        log = TRILogCategory_Server();
                        if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
                        {
                          v76 = [v13 experimentDeployment];
                          v77 = [v76 shortDesc];
                          *v198 = 138543362;
                          *&v198[4] = v77;
                          _os_log_error_impl(&dword_26F567000, log, OS_LOG_TYPE_ERROR, "Can't drop reference when deactivating experiment %{public}@; no treatmentId available.", v198, 0xCu);
                        }
                      }
                    }

                    v85 = [v13 experimentDeployment];
                    v86 = [TRIContentTracker contentIdentifierForExperimentArtifactWithDeployment:v85];

                    v87 = [v180 contentTracker];
                    v88 = [v87 dropRefWithContentIdentifier:v86];

                    if ((v88 & 1) == 0)
                    {
                      v89 = TRILogCategory_Server();
                      if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
                      {
                        v105 = [v13 experimentDeployment];
                        v106 = [v105 shortDesc];
                        *v198 = 138543362;
                        *&v198[4] = v106;
                        _os_log_error_impl(&dword_26F567000, v89, OS_LOG_TYPE_ERROR, "Failed to drop reference on artifact for experiment %{public}@.", v198, 0xCu);
                      }
                    }

                    [TRIBiomeExperimentUpdateStreamWriter writeExperimentUpdateWithRecord:v13 withExperimentStateIsActive:0 withUserId:0];
                  }

                  else if ([v13 status] == 2)
                  {
                    v64 = [v13 treatmentId];

                    if (v64)
                    {
                      v65 = [v180 activationEventDatabase];
                      v66 = [TRIDeactivateTreatmentTask prevTelemetryFieldsFromActivationEventDatabase:v65 deactivatedRecord:v13];

                      v67 = [(TRIDeactivateTreatmentTask *)self triggerEvent];
                      v68 = [v180 experimentHistoryDatabase];
                      v69 = [TRIExperimentPostLaunchEvent obsoletionOrDeactivationEventWithTriggerEvent:v67 previousStateProvider:v68 experimentRecord:v13 additionalTelemetry:v66];

                      [v171 recordEvent:v69];
                    }
                  }

                  *v198 = 0;
                  *&v198[8] = v198;
                  *&v198[16] = 0x2020000000;
                  v199 = 0;
                  v90 = [v180 experimentDatabase];
                  v182[0] = MEMORY[0x277D85DD0];
                  v182[1] = 3221225472;
                  v182[2] = __60__TRIDeactivateTreatmentTask_runUsingContext_withTaskQueue___block_invoke_78;
                  v182[3] = &unk_279DE3C00;
                  v183 = v180;
                  v184 = v198;
                  [v90 writeTransactionWithFailableBlock:v182];

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
                    v102 = [v13 experimentDeployment];
                    v103 = [v102 shortDesc];
                    v104 = [v13 treatmentId];
                    *v194 = 138543618;
                    v195 = v103;
                    v196 = 2112;
                    v197 = v104;
                    _os_log_debug_impl(&dword_26F567000, v92, OS_LOG_TYPE_DEBUG, "Experiment %{public}@ with treatment %@ deactivated.", v194, 0x16u);
                  }

                  v93 = TRILogCategory_Server();
                  if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
                  {
                    v94 = [v13 treatmentId];
                    v95 = [v13 experimentDeployment];
                    v96 = [v95 shortDesc];
                    *v194 = 138412546;
                    v195 = v94;
                    v196 = 2114;
                    v197 = v96;
                    _os_log_impl(&dword_26F567000, v93, OS_LOG_TYPE_DEFAULT, "Notify about updates to namespaces in treatment %@ of experiment %{public}@ (deactivated treatment).", v194, 0x16u);
                  }

                  v97 = [v13 namespaces];
                  v181[0] = MEMORY[0x277D85DD0];
                  v181[1] = 3221225472;
                  v181[2] = __60__TRIDeactivateTreatmentTask_runUsingContext_withTaskQueue___block_invoke_81;
                  v181[3] = &unk_279DE3C28;
                  v181[4] = v13;
                  [v97 enumerateObjectsUsingBlock:v181];

                  v98 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:(60 * arc4random_uniform(0x1Eu))];
                  v99 = [(TRIExperimentBaseTask *)self experiment];
                  v100 = [v99 experimentId];
                  v101 = [TRIUnsubscribeChannelTask taskWithExperimentId:v100 startTime:v98];

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
                  v70 = [v13 treatmentId];
                  v71 = [v13 experimentDeployment];
                  v72 = [v71 shortDesc];
                  v73 = [v13 type];
                  *buf = 138412802;
                  *&buf[4] = v70;
                  *&buf[12] = 2114;
                  *&buf[14] = v72;
                  *&buf[22] = 1024;
                  LODWORD(v201) = v73;
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
                v74 = [(TRIExperimentBaseTask *)self experiment];
                v75 = [v74 experimentId];
                *buf = 138543362;
                *&buf[4] = v75;
                _os_log_debug_impl(&dword_26F567000, v22, OS_LOG_TYPE_DEBUG, "Experiment %{public}@ is already deactivated, nothing to do.", buf, 0xCu);
              }
            }

            objc_autoreleasePoolPop(v14);
          }

          v179 = [obj countByEnumeratingWithState:&v188 objects:v202 count:16];
        }

        while (v179);

        if (v177)
        {
          v112 = [v180 activationEventDatabase];
          v113 = [(TRIExperimentBaseTask *)self experiment];
          v114 = [v113 experimentId];
          v115 = [v112 activationEventRecordWithParentId:v114 factorPackSetId:v177 deploymentId:v173];

          if (v115)
          {
            v116 = objc_opt_new();
            v117 = [v115 osBuild];
            [v116 setPrevOsBuild:v117];

            v118 = MEMORY[0x277CCACA8];
            v119 = [v115 languageCode];
            v120 = [v115 regionCode];
            if (v120)
            {
              v121 = [v115 regionCode];
              v122 = [v118 stringWithFormat:@"%@-%@", v119, v121];
            }

            else
            {
              v122 = [v118 stringWithFormat:@"%@-%@", v119, &stru_287FA0430];
            }

            [v116 setPrevBcp47DeviceLocale:v122];
            v142 = [v115 carrierBundleIdentifier];
            [v116 setPrevCarrierBundleIdentifier:v142];

            v143 = [v115 carrierCountryIsoCode];
            [v116 setPrevCarrierCountryIsoCode:v143];

            v144 = [v116 ensureExperimentFields];
            [v144 setClientTreatmentId:v177];

            if (v175)
            {
              [v116 setClientDeploymentEnv:v175];
            }

            v145 = [v180 activationEventDatabase];
            v146 = [(TRIExperimentBaseTask *)self experiment];
            v147 = [v146 experimentId];
            v148 = [v145 deleteRecordWithParentId:v147 factorPackSetId:v177 deploymentId:v173];

            if (!v148)
            {
              v149 = TRILogCategory_Server();
              if (os_log_type_enabled(v149, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                *&buf[4] = v177;
                _os_log_error_impl(&dword_26F567000, v149, OS_LOG_TYPE_ERROR, "Unable to delete row from treatments db for treatment %@.", buf, 0xCu);
              }
            }
          }

          else
          {
            v122 = TRILogCategory_Server();
            if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
            {
              v140 = [(TRIExperimentBaseTask *)self experiment];
              v141 = [v140 experimentId];
              *buf = 138543874;
              *&buf[4] = v141;
              *&buf[12] = 2112;
              *&buf[14] = v177;
              *&buf[22] = 1024;
              LODWORD(v201) = v173;
              _os_log_impl(&dword_26F567000, v122, OS_LOG_TYPE_DEFAULT, "Unable to retrieve activation event for experiment id %{public}@, treatment id %@, deployment id %ul", buf, 0x1Cu);
            }

            v116 = 0;
          }

          if (v173 != -1)
          {
            v150 = [MEMORY[0x277CCABB0] numberWithInt:?];
            v151 = [v150 stringValue];
            [v116 setClientDeploymentId:v151];
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
          v177 = 0;
          v137 = 0;
        }
      }

      else
      {

        v116 = 0;
        v175 = 0;
        v177 = 0;
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
      v129 = [(TRIDeactivateTreatmentTask *)self failOnUnrecognizedExperiment];
      v130 = TRILogCategory_Server();
      v131 = v130;
      if (v129)
      {
        if (os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
        {
          v162 = [(TRIExperimentBaseTask *)self experiment];
          v163 = [v162 experimentId];
          *buf = 138543362;
          *&buf[4] = v163;
          _os_log_error_impl(&dword_26F567000, v131, OS_LOG_TYPE_ERROR, "cannot deactivate experiment %{public}@: experiment not found in database", buf, 0xCu);
        }

        v132 = [(TRIExperimentBaseTask *)self experiment];
        v133 = [v132 experimentId];
        v134 = [(TRIExperimentBaseTask *)self experiment];
        v135 = +[TRIExperimentDeploymentTreatment treatmentTripleWithExperimentId:deploymentId:treatmentId:](TRIExperimentDeploymentTreatment, "treatmentTripleWithExperimentId:deploymentId:treatmentId:", v133, [v134 deploymentId], @"unspecified-or-default-treatment");

        v136 = [TRIExperimentPostLaunchEvent failureEventWithEventType:9 treatmentTriple:v135 failureReason:@"experiment-not-found"];
        if (!v136)
        {
          v165 = [MEMORY[0x277CCA890] currentHandler];
          [v165 handleFailureInMethod:a2 object:self file:@"TRIDeactivateTreatmentTask.m" lineNumber:152 description:{@"Expression was unexpectedly nil/false: %@", @"[TRIExperimentPostLaunchEvent failureEventWithEventType:TRIInternalExperimentAllocationStatusTypeTreatmentDeactivationFailure treatmentTriple:triple failureReason:kDeactivateFailureReasonExperimentNotFound]"}];
        }

        [v171 recordEvent:v136];
        v128 = [TRITaskRunResult resultWithRunStatus:3 reportResultToServer:1 nextTasks:MEMORY[0x277CBEBF8] earliestRetryDate:0];
      }

      else
      {
        if (os_log_type_enabled(v130, OS_LOG_TYPE_DEFAULT))
        {
          v138 = [(TRIExperimentBaseTask *)self experiment];
          v139 = [v138 experimentId];
          *buf = 138543362;
          *&buf[4] = v139;
          _os_log_impl(&dword_26F567000, v131, OS_LOG_TYPE_DEFAULT, "Unable to find experiment %{public}@ in database. Completing", buf, 0xCu);
        }

        v128 = [TRITaskRunResult resultWithRunStatus:2 reportResultToServer:0 nextTasks:MEMORY[0x277CBEBF8] earliestRetryDate:0];
      }
    }
  }

  else
  {
    v123 = [(TRIExperimentBaseTask *)self experiment];
    v124 = [v123 experimentId];
    v125 = [(TRIExperimentBaseTask *)self experiment];
    v126 = +[TRIExperimentDeploymentTreatment treatmentTripleWithExperimentId:deploymentId:treatmentId:](TRIExperimentDeploymentTreatment, "treatmentTripleWithExperimentId:deploymentId:treatmentId:", v124, [v125 deploymentId], @"unspecified-or-default-treatment");

    v127 = [TRIExperimentPostLaunchEvent failureEventWithEventType:9 treatmentTriple:v126 failureReason:@"database-failure"];
    if (!v127)
    {
      v164 = [MEMORY[0x277CCA890] currentHandler];
      [v164 handleFailureInMethod:a2 object:self file:@"TRIDeactivateTreatmentTask.m" lineNumber:137 description:{@"Expression was unexpectedly nil/false: %@", @"[TRIExperimentPostLaunchEvent failureEventWithEventType:TRIInternalExperimentAllocationStatusTypeTreatmentDeactivationFailure treatmentTriple:triple failureReason:kDeactivateFailureReasonDatabaseFailure]"}];
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

+ (id)prevTelemetryFieldsFromActivationEventDatabase:(id)a3 deactivatedRecord:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v8 = [v6 treatmentId];

  if (v8)
  {
    v9 = [v6 experimentDeployment];
    v10 = [v9 experimentId];
    v11 = [v6 treatmentId];
    v12 = [v6 experimentDeployment];
    v13 = [v5 activationEventRecordWithParentId:v10 factorPackSetId:v11 deploymentId:{objc_msgSend(v12, "deploymentId")}];

    if (v13)
    {
      v14 = [v13 osBuild];
      [v7 setPrevOsBuild:v14];

      v15 = MEMORY[0x277CCACA8];
      v16 = [v13 languageCode];
      v17 = [v13 regionCode];
      if (v17)
      {
        v18 = [v13 regionCode];
        v19 = [v15 stringWithFormat:@"%@-%@", v16, v18];
      }

      else
      {
        v19 = [v15 stringWithFormat:@"%@-%@", v16, &stru_287FA0430];
      }

      [v7 setPrevBcp47DeviceLocale:v19];
      v22 = [v13 carrierBundleIdentifier];
      [v7 setPrevCarrierBundleIdentifier:v22];

      v23 = [v13 carrierCountryIsoCode];
      [v7 setPrevCarrierCountryIsoCode:v23];

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
  v4 = [(TRIExperimentBaseTask *)self experiment];
  v5 = [v4 experimentId];
  [v3 setExperimentId:v5];

  v6 = [(TRIExperimentBaseTask *)self experiment];
  [v3 setDeploymentId:{objc_msgSend(v6, "deploymentId")}];

  [v3 setFailOnUnrecognizedExperiment:{-[TRIDeactivateTreatmentTask failOnUnrecognizedExperiment](self, "failOnUnrecognizedExperiment")}];
  [v3 setRetryCount:{-[TRIDeactivateTreatmentTask retryCount](self, "retryCount")}];
  v7 = [(TRIDeactivateTreatmentTask *)self startTime];

  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x277D73B88]);
    v9 = [(TRIDeactivateTreatmentTask *)self startTime];
    v10 = [v8 initWithDate:v9];
    [v3 setStartTimestamp:v10];
  }

  taskAttribution = self->_taskAttribution;
  if (taskAttribution)
  {
    v12 = [(TRITaskAttributing *)taskAttribution asPersistedTaskAttribution];
    [v3 setTaskAttribution:v12];
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
  v4 = [(TRIDeactivateTreatmentTask *)self _asPersistedTask];
  v5 = [v4 data];

  if (!v5)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [v7 handleFailureInMethod:a2 object:self file:@"TRIDeactivateTreatmentTask.m" lineNumber:543 description:{@"Unexpected failure to serialize %@", v9}];
  }

  return v5;
}

+ (id)parseFromData:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v31 = 0;
  v3 = [(TRIPBMessage *)TRIDeactivateTreatmentPersistedTask parseFromData:a3 error:&v31];
  v4 = v31;
  if (v3)
  {
    if ([v3 hasExperimentId])
    {
      v5 = [v3 experimentId];
      v6 = [v5 length];

      if (v6)
      {
        if ([v3 hasFailOnUnrecognizedExperiment])
        {
          v7 = [v3 failOnUnrecognizedExperiment];
        }

        else
        {
          v7 = 0;
        }

        if ([v3 hasDeploymentId])
        {
          v17 = [v3 deploymentId];
        }

        else
        {
          v17 = 0xFFFFFFFFLL;
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
          v20 = [v3 taskAttribution];
          v8 = [TRITaskAttributionInternalInsecure taskAttributionFromPersistedTask:v20];

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
        v25 = [v3 experimentId];
        if ([v3 hasStartTimestamp])
        {
          v26 = [v3 startTimestamp];
          v27 = [v26 date];
          v21 = [v24 taskWithExperimentId:v25 deploymentId:v17 startTime:v27 failOnUnrecognizedExperiment:v7 triggerEvent:v19 taskAttribution:v8];
        }

        else
        {
          v21 = [v24 taskWithExperimentId:v25 deploymentId:v17 startTime:0 failOnUnrecognizedExperiment:v7 triggerEvent:v19 taskAttribution:v8];
        }

        if ([v3 hasRetryCount])
        {
          v28 = [v3 retryCount];
        }

        else
        {
          v28 = 0;
        }

        [v21 setRetryCount:v28];
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
  v3 = [(TRIDeactivateTreatmentTask *)self startTime];
  [v3 timeIntervalSince1970];
  v5 = llround(v4);

  v6 = MEMORY[0x277CCACA8];
  v7 = objc_opt_class();
  v8 = [(TRIExperimentBaseTask *)self experiment];
  v9 = [v8 experimentId];
  v10 = [(TRIExperimentBaseTask *)self experiment];
  v11 = [v6 stringWithFormat:@"<%@:%@, %d, %ld, r:%d>", v7, v9, objc_msgSend(v10, "deploymentId"), v5, -[TRIDeactivateTreatmentTask retryCount](self, "retryCount")];

  return v11;
}

- (id)trialSystemTelemetry
{
  v8.receiver = self;
  v8.super_class = TRIDeactivateTreatmentTask;
  v3 = [(TRIExperimentBaseTask *)&v8 trialSystemTelemetry];
  if (!v3)
  {
    v3 = objc_opt_new();
  }

  taskAttribution = self->_taskAttribution;
  if (taskAttribution)
  {
    v5 = [(TRITaskAttributing *)taskAttribution teamIdentifier];
    [v3 setClientTeamId:v5];

    if (([v3 hasContainerOriginFields] & 1) == 0)
    {
      v6 = [TRITelemetryFactory containerOriginTelemetryForTaskAttribution:self->_taskAttribution];
      [v3 mergeFrom:v6];
    }
  }

  return v3;
}

- (TRIDeactivateTreatmentTask)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TRIDeactivateTreatmentTask;
  v5 = [(TRIDeactivateTreatmentTask *)&v9 init];
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
    [v6 handleFailureInMethod:a2 object:self file:@"TRIDeactivateTreatmentTask.m" lineNumber:696 description:{@"Don't use NSSecureCoding to persist tasks to disk, use -[TRITask serialize]."}];
  }

  v5 = [(TRIDeactivateTreatmentTask *)self serialize];
  [v7 encodeObject:v5 forKey:@"pb"];
}

@end