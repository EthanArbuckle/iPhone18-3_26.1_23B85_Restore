@interface TRIRolloutTargeter
+ (id)_targetingErrorWithDeployment:(id)a3 errorType:(id)a4 details:(id)a5;
+ (id)targetingErrorWithDeployment:(id)a3 errorType:(id)a4;
- ($A5A652246548B43F8BC05201A1C72A70)_targetRollout:(id)a3 factorPackSetId:(id *)a4 relatedRampDeployment:(id *)a5 recurseOnRamp:(BOOL)a6 error:(id *)a7;
- (TRIRolloutTargeter)initWithDatabase:(id)a3 systemCovariateProvider:(id)a4 userCovariateProvider:(id)a5;
- (id)_activeRecordForRolloutId:(id)a3;
@end

@implementation TRIRolloutTargeter

- (TRIRolloutTargeter)initWithDatabase:(id)a3 systemCovariateProvider:(id)a4 userCovariateProvider:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = TRIRolloutTargeter;
  v12 = [(TRIRolloutTargeter *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_db, a3);
    objc_storeStrong(&v13->_systemCovariateProvider, a4);
    objc_storeStrong(&v13->_userCovariateProvider, a5);
  }

  return v13;
}

+ (id)_targetingErrorWithDeployment:(id)a3 errorType:(id)a4 details:(id)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v10)
  {
    v27 = [MEMORY[0x277CCA890] currentHandler];
    [v27 handleFailureInMethod:a2 object:a1 file:@"TRIRolloutTargeter.m" lineNumber:55 description:{@"Invalid parameter not satisfying: %@", @"errorType != nil"}];
  }

  v12 = objc_alloc(MEMORY[0x277CCACA8]);
  v13 = v12;
  if (v9)
  {
    v14 = [v9 shortDesc];
    v15 = [v13 initWithFormat:@"Targeting error for rollout %@: %@", v14, v10];

    if (!v11)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v15 = [v12 initWithFormat:@"Targeting error: %@", v10];
  if (v11)
  {
LABEL_5:
    v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ -- %@", v15, v11];

    v15 = v16;
  }

LABEL_6:
  v17 = TRILogCategory_Server();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v31 = v15;
    _os_log_error_impl(&dword_26F567000, v17, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v28[0] = *MEMORY[0x277CCA450];
  v18 = [MEMORY[0x277CCA8D8] mainBundle];
  v19 = [v18 localizedStringForKey:v15 value:&stru_287FA0430 table:0];
  v28[1] = @"logMessage";
  v29[0] = v19;
  v29[1] = v10;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];
  v21 = [v20 mutableCopy];

  if (v9)
  {
    v22 = [v9 rolloutId];
    [v21 setObject:v22 forKeyedSubscript:@"rolloutId"];

    v23 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v9, "deploymentId")}];
    [v21 setObject:v23 forKeyedSubscript:@"deploymentId"];
  }

  v24 = [MEMORY[0x277CCA9B8] errorWithDomain:@"triald" code:1 userInfo:v21];

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

+ (id)targetingErrorWithDeployment:(id)a3 errorType:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_opt_class() _targetingErrorWithDeployment:v6 errorType:v5 details:0];

  return v7;
}

- (id)_activeRecordForRolloutId:(id)a3
{
  v4 = a3;
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
  if ([(TRIRolloutDatabase *)db enumerateRecordsWithRolloutId:v4 usingTransaction:0 block:v9])
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

- ($A5A652246548B43F8BC05201A1C72A70)_targetRollout:(id)a3 factorPackSetId:(id *)a4 relatedRampDeployment:(id *)a5 recurseOnRamp:(BOOL)a6 error:(id *)a7
{
  v8 = a6;
  v124[2] = *MEMORY[0x277D85DE8];
  v13 = a3;
  if (v13)
  {
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_54:
    v72 = [MEMORY[0x277CCA890] currentHandler];
    [v72 handleFailureInMethod:a2 object:self file:@"TRIRolloutTargeter.m" lineNumber:117 description:{@"Invalid parameter not satisfying: %@", @"factorPackSetId"}];

    if (a7)
    {
      goto LABEL_4;
    }

    goto LABEL_55;
  }

  v71 = [MEMORY[0x277CCA890] currentHandler];
  [v71 handleFailureInMethod:a2 object:self file:@"TRIRolloutTargeter.m" lineNumber:116 description:{@"Invalid parameter not satisfying: %@", @"rollout"}];

  if (!a4)
  {
    goto LABEL_54;
  }

LABEL_3:
  if (a7)
  {
    goto LABEL_4;
  }

LABEL_55:
  v73 = [MEMORY[0x277CCA890] currentHandler];
  [v73 handleFailureInMethod:a2 object:self file:@"TRIRolloutTargeter.m" lineNumber:118 description:{@"Invalid parameter not satisfying: %@", @"error"}];

LABEL_4:
  v14 = *a4;
  *a4 = 0;

  if (a5)
  {
    v15 = *a5;
    *a5 = 0;
  }

  context = objc_autoreleasePoolPush();
  if ([v13 hasRolloutId] && (objc_msgSend(v13, "hasDeploymentId") & 1) != 0)
  {
    v16 = objc_alloc(MEMORY[0x277D737C8]);
    v17 = [v13 rolloutId];
    v18 = [v16 initWithRolloutId:v17 deploymentId:{objc_msgSend(v13, "deploymentId")}];

    v111 = v18;
    if (([v13 hasAssignment] & 1) == 0)
    {
      v32 = [objc_opt_class() targetingErrorWithDeployment:v18 errorType:@"missing rollout assignment"];
      v33 = *a7;
      *a7 = v32;

      v29.var0 = 0;
LABEL_91:

      goto LABEL_92;
    }

    v123[0] = @"SystemCovariates";
    v19 = [(TRIRolloutTargeter *)self systemCovariateProvider];
    v123[1] = @"TempValues";
    v124[0] = v19;
    v20 = [MEMORY[0x277CBEC10] mutableCopy];
    v124[1] = v20;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v124 forKeys:v123 count:2];
    v109 = [v21 mutableCopy];

    v110 = [(TRIRolloutTargeter *)self userCovariateProvider];
    if (v110)
    {
      [v109 setObject:v110 forKeyedSubscript:@"UserCovariates"];
    }

    v112 = [v13 assignment];
    v22 = [v112 nsexpressionLanguage];
    if ([v22 hasSchemaVersion])
    {
      v23 = [v112 nsexpressionLanguage];
      v24 = [v23 schemaVersion];

      if (v24 >= 0xB)
      {
        v25 = TRILogCategory_Server();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          LODWORD(v118) = v24;
          _os_log_impl(&dword_26F567000, v25, OS_LOG_TYPE_DEFAULT, "Assigning to default treatment because assignment language schema version %u is incompatible.", buf, 8u);
        }

        v26 = objc_opt_class();
        v108 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Incompatible assignment language schema version %u", v24];
        v27 = [v26 targetingErrorWithDeployment:v18 errorType:v108];
        v28 = *a7;
        *a7 = v27;
        v29.var0 = 2;
        goto LABEL_90;
      }
    }

    else
    {
    }

    v34 = [v112 nsexpressionLanguage];
    if ([v34 hasAssignmentExpression])
    {
      v35 = [v112 nsexpressionLanguage];
      v36 = [v35 assignmentExpression];
      v37 = [v36 length] == 0;

      if (!v37)
      {
        v38 = [v112 nsexpressionLanguage];
        v108 = [v38 assignmentExpression];

        v39 = objc_autoreleasePoolPush();
        v40 = [MEMORY[0x277CCA9C0] expressionWithFormat:v108];
        objc_autoreleasePoolPop(v39);
        v107 = v40;
        v41 = objc_opt_new();
        v42 = [v41 validateExpression:v40 outError:a7];

        if (!v42)
        {
          v29.var0 = 0;
          goto LABEL_89;
        }

        v43 = TRILogCategory_Backtrace();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          v44 = [(TRIRolloutTargeter *)self systemCovariateProvider];
          v45 = [v44 dictionary];
          *buf = 138412290;
          v118 = v45;
          _os_log_impl(&dword_26F567000, v43, OS_LOG_TYPE_DEFAULT, "Using the following covariates for targeting: %@", buf, 0xCu);
        }

        v46 = objc_autoreleasePoolPush();
        v47 = [v40 expressionValueWithObject:v109 context:0];
        objc_autoreleasePoolPop(v46);
        v106 = v47;
        if (!v47)
        {
          v60 = [objc_opt_class() targetingErrorWithDeployment:v111 errorType:@"assignment expression evaluated to nil"];
          v61 = *a7;
          *a7 = v60;

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
              v63 = [v111 shortDesc];
              *buf = 138543618;
              v118 = v63;
              v119 = 2114;
              v120 = @"empty";
              _os_log_impl(&dword_26F567000, v62, OS_LOG_TYPE_DEFAULT, "Rollout %{public}@ is targeted to %{public}@ (enroll with an empty factor pack set).", buf, 0x16u);
            }

            v64 = [[TRIRuleQualifiedFactorPackSetId alloc] initWithIdent:@"empty-fp-set" targetingRuleIndex:0xFFFFFFFFLL];
            v57 = *a4;
            *a4 = v64;
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
                v98 = [v111 shortDesc];
                *buf = 138543618;
                v118 = v98;
                v119 = 2114;
                v120 = v48;
                _os_log_error_impl(&dword_26F567000, v51, OS_LOG_TYPE_ERROR, "Assignment for %{public}@ evaluates to ill-formatted factor pack set id: %{public}@", buf, 0x16u);
              }

              v52 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"assignment evaluates to ill-formatted factor pack set id: %@", v48];
              v53 = [objc_opt_class() _targetingErrorWithDeployment:v111 errorType:v52 details:0];
              v54 = *a7;
              *a7 = v53;

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
                v74 = [v111 shortDesc];
                *buf = 138543618;
                v118 = v74;
                v119 = 2114;
                v120 = v48;
                _os_log_impl(&dword_26F567000, v70, OS_LOG_TYPE_DEFAULT, "Assignment for %{public}@ evaluates to legacy-format factor pack set id: %{public}@", buf, 0x16u);
              }
            }

            if (!v8)
            {
LABEL_76:
              v50 = TRIValidateFactorPackSetId();
              if (v50)
              {
                v91 = [TRIRuleQualifiedFactorPackSetId alloc];
                v92 = [(TRIRuleQualifiedFactorPackSetId *)v91 initWithIdent:v50 targetingRuleIndex:v116];
                v93 = *a4;
                *a4 = v92;

                v94 = TRILogCategory_Server();
                if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
                {
                  v95 = *a4;
                  v96 = [v111 shortDesc];
                  *buf = 138543874;
                  v118 = v95;
                  v119 = 2114;
                  v120 = v96;
                  v121 = 2114;
                  v122 = v108;
                  _os_log_impl(&dword_26F567000, v94, OS_LOG_TYPE_DEFAULT, "Targeting factor pack set id %{public}@ for rollout %{public}@ with assignment %{public}@.", buf, 0x20u);
                }

                v29.var0 = 1;
              }

              else
              {
                v97 = [objc_opt_class() targetingErrorWithDeployment:v111 errorType:@"targeted factor pack set id is not a suitable identifier"];
                v29.var0 = 0;
                v94 = *a7;
                *a7 = v97;
              }

              goto LABEL_82;
            }

            v75 = [v13 rolloutId];
            v50 = [(TRIRolloutTargeter *)self _activeRecordForRolloutId:v75];

            v76 = v50;
            if (v50)
            {
              v77 = [v50 deployment];
              v78 = [v77 isEqualToDeployment:v111];

              v76 = v50;
              if ((v78 & 1) == 0)
              {
                v79 = [v50 rampId];
                if (!v79 || ![v13 hasRampId])
                {

LABEL_74:
                  v76 = v50;
                  goto LABEL_75;
                }

                v80 = [v50 rampId];
                v81 = [v13 rampId];
                v82 = [v80 isEqualToString:v81];

                v76 = v50;
                if (v82)
                {
                  v83 = TRILogCategory_Server();
                  if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
                  {
                    v84 = [v111 shortDesc];
                    v85 = [v13 rampId];
                    *buf = 138543618;
                    v118 = v84;
                    v119 = 2114;
                    v120 = v85;
                    _os_log_impl(&dword_26F567000, v83, OS_LOG_TYPE_DEFAULT, "Rollout %{public}@ targeted successfully, but has the same rampId (%{public}@) as the current active deployment. Retargeting the active deployment.", buf, 0x16u);
                  }

                  obj = 0;
                  v115 = 0;
                  v86 = [v50 artifact];
                  v87 = [v86 rollout];
                  v88.var0 = [(TRIRolloutTargeter *)self _targetRollout:v87 factorPackSetId:&obj relatedRampDeployment:0 recurseOnRamp:0 error:&v115];

                  if (v88.var0 - 2 >= 3 && v88.var0)
                  {
                    if (v88.var0 == 1)
                    {
                      objc_storeStrong(a4, obj);
                      if (a5)
                      {
                        v89 = [v50 deployment];
                        v90 = *a5;
                        *a5 = v89;
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
                      v100 = [v50 deployment];
                      v101 = [v100 shortDesc];
                      v102 = off_279DE3A20[v88.var0];
                      *buf = 138543618;
                      v118 = v101;
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

          v65 = [v111 shortDesc];
          *buf = 138543618;
          v118 = v65;
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

          v58 = [v111 shortDesc];
          *buf = 138543618;
          v118 = v58;
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
    v56 = *a7;
    *a7 = v55;

    v28 = 0;
    v108 = 0;
    v29.var0 = 0;
LABEL_90:

    goto LABEL_91;
  }

  v30 = [objc_opt_class() targetingErrorWithDeployment:0 errorType:@"rollout identifiers missing in rollout definition"];
  v31 = *a7;
  *a7 = v30;

  v29.var0 = 0;
LABEL_92:
  objc_autoreleasePoolPop(context);

  v103 = *MEMORY[0x277D85DE8];
  return v29;
}

@end