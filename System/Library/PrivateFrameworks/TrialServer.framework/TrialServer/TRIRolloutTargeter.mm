@interface TRIRolloutTargeter
+ (id)_targetingErrorWithDeployment:(id)deployment errorType:(id)type details:(id)details;
+ (id)targetingErrorWithDeployment:(id)deployment errorType:(id)type;
- ($A5A652246548B43F8BC05201A1C72A70)_targetRollout:(id)rollout factorPackSetId:(id *)id relatedRampDeployment:(id *)deployment recurseOnRamp:(BOOL)ramp error:(id *)error;
- (TRIRolloutTargeter)initWithDatabase:(id)database systemCovariateProvider:(id)provider userCovariateProvider:(id)covariateProvider;
- (id)_activeRecordForRolloutId:(id)id;
@end

@implementation TRIRolloutTargeter

- (TRIRolloutTargeter)initWithDatabase:(id)database systemCovariateProvider:(id)provider userCovariateProvider:(id)covariateProvider
{
  databaseCopy = database;
  providerCopy = provider;
  covariateProviderCopy = covariateProvider;
  v15.receiver = self;
  v15.super_class = TRIRolloutTargeter;
  v12 = [(TRIRolloutTargeter *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_db, database);
    objc_storeStrong(&v13->_systemCovariateProvider, provider);
    objc_storeStrong(&v13->_userCovariateProvider, covariateProvider);
  }

  return v13;
}

+ (id)_targetingErrorWithDeployment:(id)deployment errorType:(id)type details:(id)details
{
  v32 = *MEMORY[0x277D85DE8];
  deploymentCopy = deployment;
  typeCopy = type;
  detailsCopy = details;
  if (!typeCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIRolloutTargeter.m" lineNumber:55 description:{@"Invalid parameter not satisfying: %@", @"errorType != nil"}];
  }

  v12 = objc_alloc(MEMORY[0x277CCACA8]);
  v13 = v12;
  if (deploymentCopy)
  {
    shortDesc = [deploymentCopy shortDesc];
    typeCopy = [v13 initWithFormat:@"Targeting error for rollout %@: %@", shortDesc, typeCopy];

    if (!detailsCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  typeCopy = [v12 initWithFormat:@"Targeting error: %@", typeCopy];
  if (detailsCopy)
  {
LABEL_5:
    detailsCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ -- %@", typeCopy, detailsCopy];

    typeCopy = detailsCopy;
  }

LABEL_6:
  v17 = TRILogCategory_Server();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v31 = typeCopy;
    _os_log_error_impl(&dword_26F567000, v17, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v28[0] = *MEMORY[0x277CCA450];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v19 = [mainBundle localizedStringForKey:typeCopy value:&stru_287FA0430 table:0];
  v28[1] = @"logMessage";
  v29[0] = v19;
  v29[1] = typeCopy;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];
  v21 = [v20 mutableCopy];

  if (deploymentCopy)
  {
    rolloutId = [deploymentCopy rolloutId];
    [v21 setObject:rolloutId forKeyedSubscript:@"rolloutId"];

    v23 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(deploymentCopy, "deploymentId")}];
    [v21 setObject:v23 forKeyedSubscript:@"deploymentId"];
  }

  v24 = [MEMORY[0x277CCA9B8] errorWithDomain:@"triald" code:1 userInfo:v21];

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

+ (id)targetingErrorWithDeployment:(id)deployment errorType:(id)type
{
  typeCopy = type;
  deploymentCopy = deployment;
  v7 = [objc_opt_class() _targetingErrorWithDeployment:deploymentCopy errorType:typeCopy details:0];

  return v7;
}

- (id)_activeRecordForRolloutId:(id)id
{
  idCopy = id;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__41;
  v14 = __Block_byref_object_dispose__41;
  v15 = 0;
  db = self->_db;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__TRIRolloutTargeter__activeRecordForRolloutId___block_invoke;
  v9[3] = &unk_279DE0818;
  v9[4] = &v10;
  if ([(TRIRolloutDatabase *)db enumerateRecordsWithRolloutId:idCopy usingTransaction:0 block:v9])
  {
    v6 = v11[5];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __48__TRIRolloutTargeter__activeRecordForRolloutId___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v7 = a2;
  v6 = [v7 activeFactorPackSetId];

  if (v6)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a3 = 1;
  }
}

- ($A5A652246548B43F8BC05201A1C72A70)_targetRollout:(id)rollout factorPackSetId:(id *)id relatedRampDeployment:(id *)deployment recurseOnRamp:(BOOL)ramp error:(id *)error
{
  rampCopy = ramp;
  v124[2] = *MEMORY[0x277D85DE8];
  rolloutCopy = rollout;
  if (rolloutCopy)
  {
    if (id)
    {
      goto LABEL_3;
    }

LABEL_54:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIRolloutTargeter.m" lineNumber:117 description:{@"Invalid parameter not satisfying: %@", @"factorPackSetId"}];

    if (error)
    {
      goto LABEL_4;
    }

    goto LABEL_55;
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIRolloutTargeter.m" lineNumber:116 description:{@"Invalid parameter not satisfying: %@", @"rollout"}];

  if (!id)
  {
    goto LABEL_54;
  }

LABEL_3:
  if (error)
  {
    goto LABEL_4;
  }

LABEL_55:
  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"TRIRolloutTargeter.m" lineNumber:118 description:{@"Invalid parameter not satisfying: %@", @"error"}];

LABEL_4:
  v14 = *id;
  *id = 0;

  if (deployment)
  {
    v15 = *deployment;
    *deployment = 0;
  }

  context = objc_autoreleasePoolPush();
  if ([rolloutCopy hasRolloutId] && (objc_msgSend(rolloutCopy, "hasDeploymentId") & 1) != 0)
  {
    v16 = objc_alloc(MEMORY[0x277D737C8]);
    rolloutId = [rolloutCopy rolloutId];
    v18 = [v16 initWithRolloutId:rolloutId deploymentId:{objc_msgSend(rolloutCopy, "deploymentId")}];

    v111 = v18;
    if (([rolloutCopy hasAssignment] & 1) == 0)
    {
      v32 = [objc_opt_class() targetingErrorWithDeployment:v18 errorType:@"missing rollout assignment"];
      v33 = *error;
      *error = v32;

      v29.var0 = 0;
LABEL_91:

      goto LABEL_92;
    }

    v123[0] = @"SystemCovariates";
    systemCovariateProvider = [(TRIRolloutTargeter *)self systemCovariateProvider];
    v123[1] = @"TempValues";
    v124[0] = systemCovariateProvider;
    v20 = [MEMORY[0x277CBEC10] mutableCopy];
    v124[1] = v20;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v124 forKeys:v123 count:2];
    v109 = [v21 mutableCopy];

    userCovariateProvider = [(TRIRolloutTargeter *)self userCovariateProvider];
    if (userCovariateProvider)
    {
      [v109 setObject:userCovariateProvider forKeyedSubscript:@"UserCovariates"];
    }

    assignment = [rolloutCopy assignment];
    nsexpressionLanguage = [assignment nsexpressionLanguage];
    if ([nsexpressionLanguage hasSchemaVersion])
    {
      nsexpressionLanguage2 = [assignment nsexpressionLanguage];
      schemaVersion = [nsexpressionLanguage2 schemaVersion];

      if (schemaVersion >= 0xB)
      {
        v25 = TRILogCategory_Server();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          LODWORD(v118) = schemaVersion;
          _os_log_impl(&dword_26F567000, v25, OS_LOG_TYPE_DEFAULT, "Assigning to default treatment because assignment language schema version %u is incompatible.", buf, 8u);
        }

        v26 = objc_opt_class();
        assignmentExpression2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Incompatible assignment language schema version %u", schemaVersion];
        v27 = [v26 targetingErrorWithDeployment:v18 errorType:assignmentExpression2];
        v28 = *error;
        *error = v27;
        v29.var0 = 2;
        goto LABEL_90;
      }
    }

    else
    {
    }

    nsexpressionLanguage3 = [assignment nsexpressionLanguage];
    if ([nsexpressionLanguage3 hasAssignmentExpression])
    {
      nsexpressionLanguage4 = [assignment nsexpressionLanguage];
      assignmentExpression = [nsexpressionLanguage4 assignmentExpression];
      v37 = [assignmentExpression length] == 0;

      if (!v37)
      {
        nsexpressionLanguage5 = [assignment nsexpressionLanguage];
        assignmentExpression2 = [nsexpressionLanguage5 assignmentExpression];

        v39 = objc_autoreleasePoolPush();
        v40 = [MEMORY[0x277CCA9C0] expressionWithFormat:assignmentExpression2];
        objc_autoreleasePoolPop(v39);
        v107 = v40;
        v41 = objc_opt_new();
        v42 = [v41 validateExpression:v40 outError:error];

        if (!v42)
        {
          v29.var0 = 0;
          goto LABEL_89;
        }

        v43 = TRILogCategory_Backtrace();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          systemCovariateProvider2 = [(TRIRolloutTargeter *)self systemCovariateProvider];
          dictionary = [systemCovariateProvider2 dictionary];
          *buf = 138412290;
          v118 = dictionary;
          _os_log_impl(&dword_26F567000, v43, OS_LOG_TYPE_DEFAULT, "Using the following covariates for targeting: %@", buf, 0xCu);
        }

        v46 = objc_autoreleasePoolPush();
        v47 = [v40 expressionValueWithObject:v109 context:0];
        objc_autoreleasePoolPop(v46);
        v106 = v47;
        if (!v47)
        {
          v60 = [objc_opt_class() targetingErrorWithDeployment:v111 errorType:@"assignment expression evaluated to nil"];
          v61 = *error;
          *error = v60;

          v57 = TRILogCategory_Server();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v118 = v107;
            _os_log_error_impl(&dword_26F567000, v57, OS_LOG_TYPE_ERROR, "assignment expression evaluated to nil: %@", buf, 0xCu);
          }

          v29.var0 = 0;
          goto LABEL_83;
        }

        if ([v47 caseInsensitiveCompare:@"no-op"] && objc_msgSend(v47, "caseInsensitiveCompare:", @"default"))
        {
          if (![v47 caseInsensitiveCompare:@"empty"])
          {
            v62 = TRILogCategory_Server();
            if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
            {
              shortDesc = [v111 shortDesc];
              *buf = 138543618;
              v118 = shortDesc;
              v119 = 2114;
              v120 = @"empty";
              _os_log_impl(&dword_26F567000, v62, OS_LOG_TYPE_DEFAULT, "Rollout %{public}@ is targeted to %{public}@ (enroll with an empty factor pack set).", buf, 0x16u);
            }

            v64 = [[TRIRuleQualifiedFactorPackSetId alloc] initWithIdent:@"empty-fp-set" targetingRuleIndex:0xFFFFFFFFLL];
            v57 = *id;
            *id = v64;
            v29.var0 = 1;
            goto LABEL_83;
          }

          if ([v47 caseInsensitiveCompare:@"disenroll"])
          {
            v48 = v47;
            v116 = -1;
            v49 = [(__CFString *)v48 componentsSeparatedByString:@":"];
            v50 = v49;
            if ([v49 count] > 2)
            {
LABEL_30:
              v105 = v48;
              v51 = TRILogCategory_Server();
              if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
              {
                shortDesc2 = [v111 shortDesc];
                *buf = 138543618;
                v118 = shortDesc2;
                v119 = 2114;
                v120 = v48;
                _os_log_error_impl(&dword_26F567000, v51, OS_LOG_TYPE_ERROR, "Assignment for %{public}@ evaluates to ill-formatted factor pack set id: %{public}@", buf, 0x16u);
              }

              v52 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"assignment evaluates to ill-formatted factor pack set id: %@", v48];
              v53 = [objc_opt_class() _targetingErrorWithDeployment:v111 errorType:v52 details:0];
              v54 = *error;
              *error = v53;

              v29.var0 = 0;
LABEL_82:

              v57 = v105;
              goto LABEL_83;
            }

            if ([v49 count] == 2)
            {
              v66 = MEMORY[0x277D73748];
              v67 = [v49 objectAtIndexedSubscript:1];
              v68 = [v66 convertFromString:v67 usingBase:10 toI64:&v116];

              if (v116 >> 31)
              {
                v69 = 0;
              }

              else
              {
                v69 = v68;
              }

              if ((v69 & 1) == 0)
              {
                goto LABEL_30;
              }

              [v50 objectAtIndexedSubscript:0];
              v105 = v70 = v48;
            }

            else
            {
              v70 = TRILogCategory_Server();
              v105 = v48;
              if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
              {
                shortDesc3 = [v111 shortDesc];
                *buf = 138543618;
                v118 = shortDesc3;
                v119 = 2114;
                v120 = v48;
                _os_log_impl(&dword_26F567000, v70, OS_LOG_TYPE_DEFAULT, "Assignment for %{public}@ evaluates to legacy-format factor pack set id: %{public}@", buf, 0x16u);
              }
            }

            if (!rampCopy)
            {
LABEL_76:
              v50 = TRIValidateFactorPackSetId();
              if (v50)
              {
                v91 = [TRIRuleQualifiedFactorPackSetId alloc];
                v92 = [(TRIRuleQualifiedFactorPackSetId *)v91 initWithIdent:v50 targetingRuleIndex:v116];
                v93 = *id;
                *id = v92;

                v94 = TRILogCategory_Server();
                if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
                {
                  v95 = *id;
                  shortDesc4 = [v111 shortDesc];
                  *buf = 138543874;
                  v118 = v95;
                  v119 = 2114;
                  v120 = shortDesc4;
                  v121 = 2114;
                  v122 = assignmentExpression2;
                  _os_log_impl(&dword_26F567000, v94, OS_LOG_TYPE_DEFAULT, "Targeting factor pack set id %{public}@ for rollout %{public}@ with assignment %{public}@.", buf, 0x20u);
                }

                v29.var0 = 1;
              }

              else
              {
                v97 = [objc_opt_class() targetingErrorWithDeployment:v111 errorType:@"targeted factor pack set id is not a suitable identifier"];
                v29.var0 = 0;
                v94 = *error;
                *error = v97;
              }

              goto LABEL_82;
            }

            rolloutId2 = [rolloutCopy rolloutId];
            v50 = [(TRIRolloutTargeter *)self _activeRecordForRolloutId:rolloutId2];

            v76 = v50;
            if (v50)
            {
              deployment = [v50 deployment];
              v78 = [deployment isEqualToDeployment:v111];

              v76 = v50;
              if ((v78 & 1) == 0)
              {
                rampId = [v50 rampId];
                if (!rampId || ![rolloutCopy hasRampId])
                {

LABEL_74:
                  v76 = v50;
                  goto LABEL_75;
                }

                rampId2 = [v50 rampId];
                rampId3 = [rolloutCopy rampId];
                v82 = [rampId2 isEqualToString:rampId3];

                v76 = v50;
                if (v82)
                {
                  v83 = TRILogCategory_Server();
                  if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
                  {
                    shortDesc5 = [v111 shortDesc];
                    rampId4 = [rolloutCopy rampId];
                    *buf = 138543618;
                    v118 = shortDesc5;
                    v119 = 2114;
                    v120 = rampId4;
                    _os_log_impl(&dword_26F567000, v83, OS_LOG_TYPE_DEFAULT, "Rollout %{public}@ targeted successfully, but has the same rampId (%{public}@) as the current active deployment. Retargeting the active deployment.", buf, 0x16u);
                  }

                  obj = 0;
                  v115 = 0;
                  artifact = [v50 artifact];
                  rollout = [artifact rollout];
                  v88.var0 = [(TRIRolloutTargeter *)self _targetRollout:rollout factorPackSetId:&obj relatedRampDeployment:0 recurseOnRamp:0 error:&v115];

                  if (v88.var0 - 2 >= 3 && v88.var0)
                  {
                    if (v88.var0 == 1)
                    {
                      objc_storeStrong(id, obj);
                      if (deployment)
                      {
                        deployment2 = [v50 deployment];
                        v90 = *deployment;
                        *deployment = deployment2;
                      }

                      v29.var0 = 3;
                      goto LABEL_82;
                    }
                  }

                  else
                  {
                    v99 = TRILogCategory_Server();
                    if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
                    {
                      deployment3 = [v50 deployment];
                      shortDesc6 = [deployment3 shortDesc];
                      v102 = off_279DE3A20[v88.var0];
                      *buf = 138543618;
                      v118 = shortDesc6;
                      v119 = 2114;
                      v120 = v102;
                      _os_log_impl(&dword_26F567000, v99, OS_LOG_TYPE_DEFAULT, "Retargeting of prior ramp deployment %{public}@ resulted in %{public}@; taking the new deployment instead.", buf, 0x16u);
                    }
                  }

                  goto LABEL_74;
                }
              }
            }

LABEL_75:

            goto LABEL_76;
          }

          v57 = TRILogCategory_Server();
          if (!os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
          {
            v29.var0 = 4;
            goto LABEL_83;
          }

          shortDesc7 = [v111 shortDesc];
          *buf = 138543618;
          v118 = shortDesc7;
          v119 = 2114;
          v120 = @"disenroll";
          v59 = v57;
          _os_log_impl(&dword_26F567000, v57, OS_LOG_TYPE_DEFAULT, "Rollout %{public}@ is targeted to %{public}@ (emergency disenroll!!!).", buf, 0x16u);

          v29.var0 = 4;
        }

        else
        {
          v57 = TRILogCategory_Server();
          if (!os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
          {
            v29.var0 = 2;
            goto LABEL_83;
          }

          shortDesc8 = [v111 shortDesc];
          *buf = 138543618;
          v118 = shortDesc8;
          v119 = 2114;
          v120 = @"no-op";
          v59 = v57;
          _os_log_impl(&dword_26F567000, v57, OS_LOG_TYPE_DEFAULT, "Rollout %{public}@ is targeted to %{public}@ (ignoring the deployment).", buf, 0x16u);

          v29.var0 = 2;
        }

        v57 = v59;
LABEL_83:

LABEL_89:
        v28 = v107;
        goto LABEL_90;
      }
    }

    else
    {
    }

    v55 = [objc_opt_class() targetingErrorWithDeployment:v111 errorType:@"assignment string is missing or empty"];
    v56 = *error;
    *error = v55;

    v28 = 0;
    assignmentExpression2 = 0;
    v29.var0 = 0;
LABEL_90:

    goto LABEL_91;
  }

  v30 = [objc_opt_class() targetingErrorWithDeployment:0 errorType:@"rollout identifiers missing in rollout definition"];
  v31 = *error;
  *error = v30;

  v29.var0 = 0;
LABEL_92:
  objc_autoreleasePoolPop(context);

  v103 = *MEMORY[0x277D85DE8];
  return v29;
}

@end