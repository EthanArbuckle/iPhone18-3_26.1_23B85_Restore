@interface TRITargetingTask
+ (id)parseFromData:(id)a3;
- (BOOL)_isExperimentEligibleWithArtifact:(id)a3 context:(id)a4;
- (BOOL)getFactorPackSetId:(id *)a3 forExperiment:(id)a4 treatmentId:(id)a5 error:(id *)a6;
- (BOOL)getTreatment:(id *)a3 forExperiment:(id)a4 isServerSideExperiment:(BOOL)a5 systemCovariates:(id)a6 userCovariates:(id)a7 experimentCovariates:(id)a8 experimentEndDate:(id)a9 error:(id *)a10;
- (BOOL)isEqual:(id)a3;
- (BOOL)validateSystemCovariates:(id)a3 experiment:(id)a4 error:(id *)a5;
- (NSArray)dependencies;
- (NSString)description;
- (TRITargetingTask)initWithCoder:(id)a3;
- (TRITargetingTask)initWithExperiment:(id)a3 includeDependencies:(BOOL)a4 taskAttribution:(id)a5;
- (id)_asPersistedTask;
- (id)_targetingErrorWithExperiment:(id)a3 errorType:(id)a4 details:(id)a5;
- (id)runTaskUsingContext:(id)a3 withTaskQueue:(id)a4 systemCovariates:(id)a5 userCovariates:(id)a6 error:(id *)a7;
- (id)runUsingContext:(id)a3 withTaskQueue:(id)a4;
- (id)serialize;
- (id)systemCovariatesWithPaths:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)runDequeueHandlerUsingContext:(id)a3;
- (void)runEnqueueHandlerUsingContext:(id)a3;
@end

@implementation TRITargetingTask

- (TRITargetingTask)initWithExperiment:(id)a3 includeDependencies:(BOOL)a4 taskAttribution:(id)a5
{
  v9 = a3;
  v10 = a5;
  if (!v9)
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"TRITargetingTask.m" lineNumber:98 description:{@"Invalid parameter not satisfying: %@", @"experiment"}];
  }

  if (([v9 hasDeploymentId] & 1) == 0)
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"TRITargetingTask.m" lineNumber:99 description:{@"Invalid parameter not satisfying: %@", @"experiment.hasDeploymentId"}];
  }

  v18.receiver = self;
  v18.super_class = TRITargetingTask;
  v11 = [(TRITargetingTask *)&v18 init];
  if (v11)
  {
    v12 = [[TRIExperimentTaskSupport alloc] initWithExperimentDeployment:v9];
    support = v11->_support;
    v11->_support = v12;

    v11->_includeDependencies = a4;
    objc_storeStrong(&v11->_taskAttributing, a5);
    v14 = [TRITelemetryFactory containerOriginTelemetryForTaskAttribution:v10];
    [(TRIExperimentTaskSupport *)v11->_support mergeTelemetry:v14];
  }

  return v11;
}

- (NSArray)dependencies
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (self->_includeDependencies)
  {
    v3 = [(TRITargetingTask *)self experiment];
    v4 = [TRIFetchExperimentTask taskWithExperimentDeployment:v3 taskAttributing:self->_taskAttributing];
    v8[0] = v4;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)runEnqueueHandlerUsingContext:(id)a3
{
  v4 = a3;
  v5 = [(TRITargetingTask *)self experiment];
  v7 = [TRIContentTracker contentIdentifierForExperimentArtifactWithDeployment:v5];

  v6 = [v4 contentTracker];

  [v6 addRefWithContentIdentifier:v7];
}

- (void)runDequeueHandlerUsingContext:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(TRITargetingTask *)self experiment];
  v6 = [TRIContentTracker contentIdentifierForExperimentArtifactWithDeployment:v5];

  v7 = [v4 contentTracker];

  LOBYTE(v4) = [v7 dropRefWithContentIdentifier:v6];
  if ((v4 & 1) == 0)
  {
    v8 = TRILogCategory_Server();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = [(TRITargetingTask *)self experiment];
      v11 = [v10 shortDesc];
      v12 = 138543362;
      v13 = v11;
      _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, "Failed to drop reference on artifact for experiment %{public}@", &v12, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)systemCovariatesWithPaths:(id)a3
{
  v3 = a3;
  v4 = [[TRISystemCovariates alloc] initWithPaths:v3];

  return v4;
}

- (id)_targetingErrorWithExperiment:(id)a3 errorType:(id)a4 details:(id)a5
{
  v40 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v10)
  {
    v33 = [MEMORY[0x277CCA890] currentHandler];
    [v33 handleFailureInMethod:a2 object:self file:@"TRITargetingTask.m" lineNumber:146 description:{@"Invalid parameter not satisfying: %@", @"errorType != nil"}];
  }

  if (!v9 || ([v9 experimentId], (v12 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"Targeting error: %@", v10];
    if (!v11)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v13 = v12;
  v14 = [v9 hasDeploymentId];
  v15 = MEMORY[0x277CCACA8];
  v16 = [v9 experimentId];
  v17 = v16;
  if (v14)
  {
    [v15 stringWithFormat:@"Targeting error for experiment %@.%u: %@", v16, objc_msgSend(v9, "deploymentId"), v10];
  }

  else
  {
    [v15 stringWithFormat:@"Targeting error for experiment %@: %@", v16, v10, v34];
  }
  v18 = ;

  if (v11)
  {
LABEL_8:
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ -- %@", v18, v11];

    v18 = v19;
  }

LABEL_9:
  v35 = v11;
  v20 = TRILogCategory_Server();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v39 = v18;
    _os_log_error_impl(&dword_26F567000, v20, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v21 = MEMORY[0x277CCA9B8];
  v36[0] = *MEMORY[0x277CCA450];
  v22 = [MEMORY[0x277CCA8D8] mainBundle];
  v23 = [v22 localizedStringForKey:v18 value:&stru_287FA0430 table:0];
  v37[0] = v23;
  v36[1] = @"experimentId";
  v24 = [v9 experimentId];
  v25 = v24;
  if (v24)
  {
    v26 = v24;
  }

  else
  {
    v26 = &stru_287FA0430;
  }

  v37[1] = v26;
  v36[2] = @"deploymentId";
  v27 = [v9 hasDeploymentId];
  if (v27)
  {
    v28 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v9, "deploymentId")}];
  }

  else
  {
    v28 = &unk_287FC4DE0;
  }

  v36[3] = @"logMessage";
  v37[2] = v28;
  v37[3] = v10;
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:4];
  v30 = [v21 errorWithDomain:@"triald" code:1 userInfo:v29];

  if (v27)
  {
  }

  v31 = *MEMORY[0x277D85DE8];

  return v30;
}

- (BOOL)validateSystemCovariates:(id)a3 experiment:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 tri_contextValueWithName:@"OSBuild"];
  if (!v10)
  {
    goto LABEL_12;
  }

  v11 = [v8 tri_contextValueWithName:@"DeviceModelCode"];
  if (!v11)
  {
    goto LABEL_11;
  }

  v12 = [v8 tri_contextValueWithName:@"DeviceClass"];
  if (!v12)
  {
LABEL_10:

LABEL_11:
    goto LABEL_12;
  }

  v13 = [v8 tri_contextValueWithName:@"DeviceId"];
  if (!v13)
  {
LABEL_9:

    goto LABEL_10;
  }

  v14 = [v8 tri_contextValueWithName:@"DeviceChipId"];
  if (!v14)
  {

    goto LABEL_9;
  }

  v15 = [v8 tri_contextValueWithName:@"DeviceHardwareModel"];

  if (v15)
  {
    v16 = 1;
    goto LABEL_15;
  }

LABEL_12:
  v17 = [(TRITargetingTask *)self _targetingErrorWithExperiment:v9 errorType:@"Unable to retrieve context -- no results from mobile gestalt"];
  if (a5)
  {
    objc_storeStrong(a5, v17);
  }

  v16 = 0;
LABEL_15:

  return v16;
}

- (BOOL)getTreatment:(id *)a3 forExperiment:(id)a4 isServerSideExperiment:(BOOL)a5 systemCovariates:(id)a6 userCovariates:(id)a7 experimentCovariates:(id)a8 experimentEndDate:(id)a9 error:(id *)a10
{
  v13 = a5;
  v85[2] = *MEMORY[0x277D85DE8];
  v17 = a4;
  v18 = a6;
  v78 = a7;
  v19 = a8;
  v79 = a9;
  if (a3)
  {
    if (v17)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v66 = [MEMORY[0x277CCA890] currentHandler];
    [v66 handleFailureInMethod:a2 object:self file:@"TRITargetingTask.m" lineNumber:242 description:{@"Invalid parameter not satisfying: %@", @"treatmentId != nil"}];

    if (v17)
    {
LABEL_3:
      if (v18)
      {
        goto LABEL_4;
      }

LABEL_62:
      v68 = [MEMORY[0x277CCA890] currentHandler];
      [v68 handleFailureInMethod:a2 object:self file:@"TRITargetingTask.m" lineNumber:244 description:{@"Invalid parameter not satisfying: %@", @"systemCovariates != nil"}];

      if (v19)
      {
        goto LABEL_5;
      }

      goto LABEL_63;
    }
  }

  v67 = [MEMORY[0x277CCA890] currentHandler];
  [v67 handleFailureInMethod:a2 object:self file:@"TRITargetingTask.m" lineNumber:243 description:{@"Invalid parameter not satisfying: %@", @"experiment != nil"}];

  if (!v18)
  {
    goto LABEL_62;
  }

LABEL_4:
  if (v19)
  {
    goto LABEL_5;
  }

LABEL_63:
  v69 = [MEMORY[0x277CCA890] currentHandler];
  [v69 handleFailureInMethod:a2 object:self file:@"TRITargetingTask.m" lineNumber:245 description:{@"Invalid parameter not satisfying: %@", @"experimentCovariates != nil"}];

LABEL_5:
  context = objc_autoreleasePoolPush();
  if ([v17 hasExperimentId])
  {
    v20 = objc_alloc(MEMORY[0x277D736C0]);
    v21 = [v17 experimentId];
    v76 = [v20 initWithExperimentId:v21 deploymentId:{objc_msgSend(v17, "deploymentId")}];

    v22 = *a3;
    *a3 = 0;

    if (v79)
    {
      v23 = objc_opt_new();
      v24 = [v79 compare:v23];

      if (v24 == -1)
      {
        v37 = TRILogCategory_Server();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
        {
          v38 = [v17 experimentId];
          *buf = 138543362;
          v81 = v38;
          _os_log_impl(&dword_26F567000, v37, OS_LOG_TYPE_INFO, "experiment with id %{public}@ has end date in the past", buf, 0xCu);
        }

        v35 = 1;
        goto LABEL_58;
      }
    }

    if ([v17 hasAssignment])
    {
      if ([(TRITargetingTask *)self validateSystemCovariates:v18 experiment:v76 error:a10])
      {
        v85[0] = v18;
        v84[0] = @"SystemCovariates";
        v84[1] = @"TempValues";
        v25 = [MEMORY[0x277CBEC10] mutableCopy];
        v85[1] = v25;
        v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v85 forKeys:v84 count:2];
        v74 = [v26 mutableCopy];

        if (v78)
        {
          [v74 setObject:v78 forKeyedSubscript:@"UserCovariates"];
        }

        [v74 setObject:v19 forKeyedSubscript:@"ExperimentCovariates"];
        v75 = [v17 assignment];
        v27 = [v75 nsexpressionLanguage];
        if ([v27 hasSchemaVersion])
        {
          v28 = [v75 nsexpressionLanguage];
          v29 = [v28 schemaVersion];

          if (v29 >= 0xB)
          {
            v30 = TRILogCategory_Server();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109120;
              LODWORD(v81) = v29;
              _os_log_impl(&dword_26F567000, v30, OS_LOG_TYPE_DEFAULT, "Assigning to default treatment because assignment language schema version %u is incompatible.", buf, 8u);
            }

            if (!a10)
            {
              v35 = 1;
LABEL_57:

              goto LABEL_58;
            }

            v72 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Incompatible assignment language schema version %u", v29];
            v31 = [(TRITargetingTask *)self _targetingErrorWithExperiment:v76 errorType:v72];
            v32 = *a10;
            *a10 = v31;
LABEL_46:
            v35 = 1;
LABEL_56:

            goto LABEL_57;
          }
        }

        else
        {
        }

        v39 = [v75 nsexpressionLanguage];
        if ([v39 hasAssignmentExpression])
        {
          v40 = [v75 nsexpressionLanguage];
          v41 = [v40 assignmentExpression];
          v73 = [v41 length] == 0;

          if (!v73)
          {
            v42 = [v75 nsexpressionLanguage];
            v72 = [v42 assignmentExpression];

            v43 = objc_autoreleasePoolPush();
            v44 = [MEMORY[0x277CCA9C0] expressionWithFormat:v72];
            objc_autoreleasePoolPop(v43);
            v71 = v44;
            v45 = objc_opt_new();
            v46 = [v45 validateExpression:v44 outError:a10];

            if (v46)
            {
              v47 = TRILogCategory_Backtrace();
              if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
              {
                v48 = [v74 objectForKeyedSubscript:@"SystemCovariates"];
                v49 = [v48 dictionary];
                v50 = [v74 objectForKeyedSubscript:@"ExperimentCovariates"];
                [v50 dictionary];
                v70 = v48;
                *buf = 138412546;
                v81 = v49;
                v51 = v82 = 2112;
                v83 = v51;
                _os_log_impl(&dword_26F567000, v47, OS_LOG_TYPE_DEFAULT, "Using the following covariates for targeting. SystemCovariate: %@ ExperimentCovariates: %@", buf, 0x16u);
              }

              v52 = objc_autoreleasePoolPush();
              v53 = [v71 expressionValueWithObject:v74 context:0];
              objc_autoreleasePoolPop(v52);
              v54 = *a3;
              *a3 = v53;

              v55 = TRILogCategory_Server();
              if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
              {
                v56 = *a3;
                v57 = [v17 experimentId];
                *buf = 138412546;
                v81 = v56;
                v82 = 2114;
                v83 = v57;
                _os_log_impl(&dword_26F567000, v55, OS_LOG_TYPE_DEFAULT, "Targeting treatment %@ for experiment %{public}@.", buf, 0x16u);
              }

              if (![*a3 compare:@"default" options:1])
              {
                v58 = *a3;
                *a3 = 0;
              }

              if (!*a3 || ([*a3 triIsValidTreatmentId] & 1) != 0)
              {
                v35 = 1;
LABEL_55:
                v32 = v71;
                goto LABEL_56;
              }

              v61 = [MEMORY[0x277CCACA8] stringWithFormat:@"invalid treatment id %@", *a3];
              v62 = [(TRITargetingTask *)self _targetingErrorWithExperiment:v76 errorType:v61];

              if (a10)
              {
                objc_storeStrong(a10, v62);
              }

              v63 = *a3;
              *a3 = 0;
            }

            v35 = 0;
            goto LABEL_55;
          }
        }

        else
        {
        }

        if (!v13)
        {
          v60 = [(TRITargetingTask *)self _targetingErrorWithExperiment:v76 errorType:@"assignment string is missing or empty"];
          if (a10)
          {
            objc_storeStrong(a10, v60);
          }

          v32 = 0;
          v72 = 0;
          v35 = 0;
          goto LABEL_56;
        }

        v59 = TRILogCategory_Server();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_26F567000, v59, OS_LOG_TYPE_DEFAULT, "Assigning to default treatment because this server-side experiment is not using device-side allocation.", buf, 2u);
        }

        v32 = 0;
        v72 = 0;
        goto LABEL_46;
      }
    }

    else
    {
      v36 = [(TRITargetingTask *)self _targetingErrorWithExperiment:v76 errorType:@"missing treatment assignment"];
      if (a10)
      {
        objc_storeStrong(a10, v36);
      }
    }

    v35 = 0;
LABEL_58:

    goto LABEL_59;
  }

  v33 = [(TRITargetingTask *)self experiment];
  v34 = [(TRITargetingTask *)self _targetingErrorWithExperiment:v33 errorType:@"experiment id is missing in experiment definition"];

  if (a10)
  {
    objc_storeStrong(a10, v34);
  }

  v35 = 0;
LABEL_59:
  objc_autoreleasePoolPop(context);

  v64 = *MEMORY[0x277D85DE8];
  return v35;
}

- (BOOL)getFactorPackSetId:(id *)a3 forExperiment:(id)a4 treatmentId:(id)a5 error:(id *)a6
{
  v46 = *MEMORY[0x277D85DE8];
  v11 = a4;
  v12 = a5;
  if (a3)
  {
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v34 = [MEMORY[0x277CCA890] currentHandler];
    [v34 handleFailureInMethod:a2 object:self file:@"TRITargetingTask.m" lineNumber:384 description:{@"Invalid parameter not satisfying: %@", @"factorPackSetId != nil"}];

    if (v11)
    {
LABEL_3:
      if (!v12)
      {
        goto LABEL_24;
      }

      goto LABEL_4;
    }
  }

  v35 = [MEMORY[0x277CCA890] currentHandler];
  [v35 handleFailureInMethod:a2 object:self file:@"TRITargetingTask.m" lineNumber:385 description:{@"Invalid parameter not satisfying: %@", @"experiment != nil"}];

  if (!v12)
  {
    goto LABEL_24;
  }

LABEL_4:
  if ([v11 factorPackSetMapping_Count])
  {
    v13 = [v11 factorPackSetMapping];
    v14 = [v13 objectForKeyedSubscript:v12];

    if (v14)
    {
      v15 = TRIValidateFactorPackSetId();
      v16 = TRILogCategory_Server();
      v17 = v16;
      if (v15)
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v18 = [v11 experimentId];
          *buf = 138544130;
          v41 = v18;
          v42 = 1024;
          *v43 = [v11 deploymentId];
          *&v43[4] = 2112;
          *&v43[6] = v12;
          v44 = 2112;
          v45 = v15;
          _os_log_impl(&dword_26F567000, v17, OS_LOG_TYPE_DEFAULT, "Experiment %{public}@.%u, treatment %@ successfully resolved to factor pack set: %@", buf, 0x26u);
        }

        v19 = v15;
        v20 = *a3;
        *a3 = v19;
        v21 = 1;
      }

      else
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v33 = [v11 experimentId];
          *buf = 138413058;
          v41 = v14;
          v42 = 2114;
          *v43 = v33;
          *&v43[8] = 1024;
          *&v43[10] = [v11 deploymentId];
          v44 = 2112;
          v45 = v12;
          _os_log_error_impl(&dword_26F567000, v17, OS_LOG_TYPE_ERROR, "Invalid fpsId %@ found for experiment %{public}@.%u, treatment %@.", buf, 0x26u);
        }

        v27 = objc_alloc(MEMORY[0x277D736C0]);
        v28 = [v11 experimentId];
        v20 = [v27 initWithExperimentId:v28 deploymentId:{objc_msgSend(v11, "deploymentId")}];

        v29 = *a3;
        *a3 = 0;

        if (a6)
        {
          v30 = [(TRITargetingTask *)self _targetingErrorWithExperiment:v20 errorType:@"Invalid fpsId found for experiment."];
          v31 = *a6;
          *a6 = v30;
        }

        v19 = 0;
        v21 = 0;
      }
    }

    else
    {
      v22 = TRILogCategory_Server();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v32 = [v11 experimentId];
        *buf = 138543874;
        v41 = v32;
        v42 = 1024;
        *v43 = [v11 deploymentId];
        *&v43[4] = 2112;
        *&v43[6] = v12;
        _os_log_error_impl(&dword_26F567000, v22, OS_LOG_TYPE_ERROR, "Could not find fpsId in experiment factor pack set map for experiment %{public}@.%u, treatment %@.", buf, 0x1Cu);
      }

      v23 = objc_alloc(MEMORY[0x277D736C0]);
      v24 = [v11 experimentId];
      v19 = [v23 initWithExperimentId:v24 deploymentId:{objc_msgSend(v11, "deploymentId")}];

      v25 = *a3;
      *a3 = 0;

      if (!a6)
      {
        v21 = 0;
        goto LABEL_20;
      }

      v26 = [(TRITargetingTask *)self _targetingErrorWithExperiment:v19 errorType:@"Could not find fpsId in experiment factor pack set map."];
      v21 = 0;
      v20 = *a6;
      *a6 = v26;
    }

LABEL_20:
    goto LABEL_27;
  }

LABEL_24:
  v36 = TRILogCategory_Server();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    v37 = [v11 experimentId];
    *buf = 138543874;
    v41 = v37;
    v42 = 1024;
    *v43 = [v11 deploymentId];
    *&v43[4] = 2112;
    *&v43[6] = v12;
    _os_log_impl(&dword_26F567000, v36, OS_LOG_TYPE_DEFAULT, "Experiment %{public}@.%u, treatment %@ will not consider using factor pack sets.", buf, 0x1Cu);
  }

  v14 = *a3;
  *a3 = 0;
  v21 = 1;
LABEL_27:

  v38 = *MEMORY[0x277D85DE8];
  return v21;
}

- (BOOL)_isExperimentEligibleWithArtifact:(id)a3 context:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 experimentDatabase];
  v9 = [v6 hasNamespacesAvailableForExperimentWithDatabase:v8];

  if ((v9 & 1) == 0)
  {
    v13 = TRILogCategory_Server();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
LABEL_10:
      v14 = 0;
      goto LABEL_11;
    }

    v15 = TRICloudKitSupport_NotificationType_EnumDescriptor();
    v16 = -[NSObject textFormatNameForValue:](v15, "textFormatNameForValue:", [v6 experimentType]);
    v17 = [v6 experimentDeployment];
    v18 = [v17 shortDesc];
    v21 = 138412546;
    v22 = v16;
    v23 = 2114;
    v24 = v18;
    _os_log_impl(&dword_26F567000, v13, OS_LOG_TYPE_DEFAULT, "No namespace available for %@ with id %{public}@.", &v21, 0x16u);

    goto LABEL_8;
  }

  v10 = [v7 namespaceDatabase];
  v11 = [v7 paths];
  v12 = [v11 namespaceDescriptorsDefaultDir];
  v13 = [TRINamespaceDescriptorProvider providerWithNamespaceDatabase:v10 defaultDescriptorDirectoryPath:v12];

  if (([v6 isCompatibleWithNamespaceDescriptorProvider:v13 error:0] & 1) == 0)
  {
    v16 = TRILogCategory_Server();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
LABEL_9:

      goto LABEL_10;
    }

    v15 = [(TRITargetingTask *)self experiment];
    v21 = 138543362;
    v22 = v15;
    _os_log_impl(&dword_26F567000, v16, OS_LOG_TYPE_DEFAULT, "Experiment not compatible with the namespaces on the device %{public}@.", &v21, 0xCu);
LABEL_8:

    goto LABEL_9;
  }

  v14 = 1;
LABEL_11:

  v19 = *MEMORY[0x277D85DE8];
  return v14;
}

- (id)runTaskUsingContext:(id)a3 withTaskQueue:(id)a4 systemCovariates:(id)a5 userCovariates:(id)a6 error:(id *)a7
{
  v220 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v181 = a4;
  v14 = a5;
  v15 = a6;
  if (a7)
  {
    if (v13)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v95 = [MEMORY[0x277CCA890] currentHandler];
    [v95 handleFailureInMethod:a2 object:self file:@"TRITargetingTask.m" lineNumber:475 description:{@"Invalid parameter not satisfying: %@", @"error != nil"}];

    if (v13)
    {
      goto LABEL_3;
    }
  }

  v96 = [MEMORY[0x277CCA890] currentHandler];
  [v96 handleFailureInMethod:a2 object:self file:@"TRITargetingTask.m" lineNumber:476 description:{@"Invalid parameter not satisfying: %@", @"context != nil"}];

LABEL_3:
  v182 = v14;
  if (v14)
  {
    if (v15)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v97 = [MEMORY[0x277CCA890] currentHandler];
    [v97 handleFailureInMethod:a2 object:self file:@"TRITargetingTask.m" lineNumber:477 description:{@"Invalid parameter not satisfying: %@", @"systemCovariates != nil"}];

    if (v15)
    {
      goto LABEL_5;
    }
  }

  v98 = [MEMORY[0x277CCA890] currentHandler];
  [v98 handleFailureInMethod:a2 object:self file:@"TRITargetingTask.m" lineNumber:478 description:{@"Invalid parameter not satisfying: %@", @"userCovariates != nil"}];

LABEL_5:
  v205[0] = MEMORY[0x277D85DD0];
  v205[1] = 3221225472;
  v205[2] = __92__TRITargetingTask_runTaskUsingContext_withTaskQueue_systemCovariates_userCovariates_error___block_invoke_2;
  v205[3] = &unk_279DE4EC0;
  v207 = a2;
  v205[4] = self;
  v16 = v13;
  v206 = v16;
  v17 = MEMORY[0x2743948D0](v205);
  v18 = [(TRITargetingTask *)self experiment];
  v19 = [v18 hasDeploymentId];

  if ((v19 & 1) == 0)
  {
    v25 = [(TRITargetingTask *)self experiment];
    v26 = [(TRITargetingTask *)self _targetingErrorWithExperiment:v25 errorType:@"deployment id is missing"];
    v27 = *a7;
    *a7 = v26;

    v28 = (v17)[2](v17, @"missing-deployment-id", @"unspecified-or-default-treatment", 0);
    goto LABEL_34;
  }

  v20 = [v16 experimentDatabase];
  v21 = [(TRITargetingTask *)self experiment];
  v183 = [v20 experimentRecordWithExperimentDeployment:v21];

  if ([v183 type] == 3)
  {
    v22 = TRILogCategory_Server();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [(TRITargetingTask *)self experiment];
      *buf = 138543362;
      *&buf[4] = v23;
      _os_log_impl(&dword_26F567000, v22, OS_LOG_TYPE_DEFAULT, "V1 Rollouts are no longer supported: %{public}@", buf, 0xCu);
    }

    v24 = [TRITaskRunResult resultWithRunStatus:2 reportResultToServer:1 nextTasks:MEMORY[0x277CBEBF8] earliestRetryDate:0];
    goto LABEL_32;
  }

  if (v183)
  {
    v29 = [v183 artifact];
    v180 = v29;
    if (v29)
    {
      v30 = [v29 experiment];
      v179 = v30;
      if (v30)
      {
        v31 = [v30 experimentId];
        v32 = [(TRITargetingTask *)self experiment];
        v33 = [v32 experimentId];
        if ([v31 isEqualToString:v33])
        {
          v34 = [v179 deploymentId];
          v35 = [(TRITargetingTask *)self experiment];
          LOBYTE(v34) = v34 == [v35 deploymentId];

          if (v34)
          {
            if ([(TRITargetingTask *)self _isExperimentEligibleWithArtifact:v180 context:v16])
            {
              v178 = [[TRIExperimentCovariates alloc] initWithExperimentRecord:v183];
              v36 = [TRIExperimentDependentSystemCovariates alloc];
              v37 = [v16 paths];
              v38 = [v183 endDate];
              v177 = [(TRIExperimentDependentSystemCovariates *)v36 initWithPaths:v37 baseSystemCovariates:v182 clientExperiment:v179 experimentEndDate:v38];

              v204 = 0;
              v200 = 0;
              v201 = &v200;
              v202 = 0x2020000000;
              LODWORD(v36) = [v180 requiresTreatmentInstallation];
              v39 = [v183 endDate];
              v40 = [(TRITargetingTask *)self getTreatment:&v204 forExperiment:v179 isServerSideExperiment:v36 ^ 1 systemCovariates:v177 userCovariates:v15 experimentCovariates:v178 experimentEndDate:v39 error:a7];

              v203 = v40;
              if ((v201[3] & 1) == 0)
              {
                if (*a7)
                {
                  v81 = *a7;
                  v82 = *a7;
                  *a7 = v81;
                }

                else
                {
                  v82 = [(TRITargetingTask *)self experiment];
                  v86 = [(TRITargetingTask *)self _targetingErrorWithExperiment:v82 errorType:@"unknown targeting error"];
                  v87 = *a7;
                  *a7 = v86;
                }

                if (v204)
                {
                  v88 = v204;
                }

                else
                {
                  v88 = @"unspecified-or-default-treatment";
                }

                v28 = (v17)[2](v17, @"unknown-targeting-error", v88, v183);
                goto LABEL_136;
              }

              v199 = 0;
              v41 = [(TRITargetingTask *)self getFactorPackSetId:&v199 forExperiment:v179 treatmentId:v204 error:a7];
              *(v201 + 24) = v41;
              if (!v41)
              {
                v83 = TRILogCategory_Server();
                if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
                {
                  v144 = [v179 experimentId];
                  v145 = [v179 deploymentId];
                  *buf = 138412802;
                  *&buf[4] = v144;
                  *&buf[12] = 1024;
                  *&buf[14] = v145;
                  *&buf[18] = 2112;
                  *&buf[20] = v204;
                  _os_log_error_impl(&dword_26F567000, v83, OS_LOG_TYPE_ERROR, "Failed to find the factor pack set corresponding to the experiment %@.%u, treatment %@.", buf, 0x1Cu);
                }

                if (*a7)
                {
                  v84 = *a7;
                  v85 = *a7;
                  *a7 = v84;
                }

                else
                {
                  v85 = [(TRITargetingTask *)self experiment];
                  v92 = [(TRITargetingTask *)self _targetingErrorWithExperiment:v85 errorType:@"unknown error with FPS map"];
                  v93 = *a7;
                  *a7 = v92;
                }

                if (v204)
                {
                  v94 = v204;
                }

                else
                {
                  v94 = @"unspecified-or-default-treatment";
                }

                v28 = (v17)[2](v17, @"unknown-fps-map-error", v94, v183);
                goto LABEL_135;
              }

              *buf = 0;
              *&buf[8] = buf;
              *&buf[16] = 0x3032000000;
              *&buf[24] = __Block_byref_object_copy__56;
              v218 = __Block_byref_object_dispose__56;
              v219 = objc_opt_new();
              v42 = [(TRITaskAttributing *)self->_taskAttributing networkOptions];
              v43 = [v42 allowsCellularAccess];

              if (v43)
              {
                v44 = objc_autoreleasePoolPush();
                v45 = [v183 artifact];
                v46 = [v45 namespaces];
                v196[0] = MEMORY[0x277D85DD0];
                v196[1] = 3221225472;
                v196[2] = __92__TRITargetingTask_runTaskUsingContext_withTaskQueue_systemCovariates_userCovariates_error___block_invoke_250;
                v196[3] = &unk_279DE4EE8;
                v197 = v16;
                v198 = buf;
                [v46 enumerateObjectsUsingBlock:v196];

                objc_autoreleasePoolPop(v44);
              }

              v47 = [v183 status];
              if (v47 > 2)
              {
                if (v47 == 4)
                {
                  goto LABEL_74;
                }

                if (v47 == 3)
                {
                  v89 = TRILogCategory_Server();
                  if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
                  {
                    v90 = [(TRITargetingTask *)self experiment];
                    *v215 = 138543362;
                    *&v215[4] = v90;
                    _os_log_impl(&dword_26F567000, v89, OS_LOG_TYPE_DEFAULT, "experiment %{public}@ already finished, not running re-targeting", v215, 0xCu);
                  }

                  v91 = [TRITaskRunResult resultWithRunStatus:2 reportResultToServer:1 nextTasks:MEMORY[0x277CBEBF8] earliestRetryDate:0];
                  goto LABEL_108;
                }
              }

              else
              {
                if ((v47 - 1) < 2)
                {
                  v48 = [v180 experimentType];
                  if (v48 == 1)
                  {
                    v49 = [v183 treatmentId];
                    v174 = v49;
                    if (v204)
                    {
                      v50 = [v49 isEqualToString:?];
                      v51 = TRILogCategory_Server();
                      v52 = os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT);
                      if (v50)
                      {
                        if (v52)
                        {
                          v53 = [(TRITargetingTask *)self experiment];
                          v54 = [v53 shortDesc];
                          *v215 = 138543362;
                          *&v215[4] = v54;
                          _os_log_impl(&dword_26F567000, v51, OS_LOG_TYPE_DEFAULT, "re-targeting for experiment %{public}@ resulted in no changes", v215, 0xCu);
                        }

                        v55 = objc_opt_new();
                        v56 = v204;
                        v57 = [v55 ensureExperimentFields];
                        [v57 setClientTreatmentId:v56];

                        v58 = TRIDeploymentEnvironment_EnumDescriptor();
                        v59 = [v58 textFormatNameForValue:{objc_msgSend(v180, "deploymentEnvironment")}];

                        if (!v59)
                        {
                          v59 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%ld", objc_msgSend(v180, "deploymentEnvironment")];
                        }

                        [v55 setClientDeploymentEnv:v59];
                        [(TRIExperimentTaskSupport *)self->_support mergeTelemetry:v55];
                        v60 = [TRITaskRunResult resultWithRunStatus:2 reportResultToServer:0 nextTasks:MEMORY[0x277CBEBF8] earliestRetryDate:0];
                        goto LABEL_122;
                      }

                      if (v52)
                      {
                        v146 = v204;
                        v147 = [(TRITargetingTask *)self experiment];
                        v148 = [v147 shortDesc];
                        *v215 = 138412802;
                        *&v215[4] = v174;
                        *&v215[12] = 2112;
                        *&v215[14] = v146;
                        *&v215[22] = 2114;
                        v216 = v148;
                        _os_log_impl(&dword_26F567000, v51, OS_LOG_TYPE_DEFAULT, "re-targeting with current treatment %@ resulted in treatment %@ which will be treated as a deactivation for %{public}@", v215, 0x20u);
                      }

                      v149 = [(TRITargetingTask *)self experiment];
                      v150 = [v149 experimentId];
                      v151 = [(TRITargetingTask *)self experiment];
                      v55 = +[TRIDeactivateTreatmentTask taskWithExperimentId:deploymentId:failOnUnrecognizedExperiment:triggerEvent:taskAttribution:](TRIDeactivateTreatmentTask, "taskWithExperimentId:deploymentId:failOnUnrecognizedExperiment:triggerEvent:taskAttribution:", v150, [v151 deploymentId], 1, 6, self->_taskAttributing);

                      v152 = [(TRITargetingTask *)self experiment];
                      v153 = [v152 taskTag];
                      [v181 cancelTasksWithTag:v153];

                      v208 = v55;
                      v59 = [MEMORY[0x277CBEA60] arrayWithObjects:&v208 count:1];
                      if (v59)
                      {
                        v139 = v59;
                      }

                      else
                      {
                        v139 = MEMORY[0x277CBEBF8];
                      }
                    }

                    else
                    {
                      v131 = TRILogCategory_Server();
                      if (os_log_type_enabled(v131, OS_LOG_TYPE_DEFAULT))
                      {
                        v132 = [(TRITargetingTask *)self experiment];
                        v133 = [v132 shortDesc];
                        *v215 = 138543362;
                        *&v215[4] = v133;
                        _os_log_impl(&dword_26F567000, v131, OS_LOG_TYPE_DEFAULT, "re-targeting of active experiment resulted in default treatment - scheduling deactivation of experiment %{public}@", v215, 0xCu);
                      }

                      v134 = [(TRITargetingTask *)self experiment];
                      v135 = [v134 taskTag];
                      [v181 cancelTasksWithTag:v135];

                      v136 = [(TRITargetingTask *)self experiment];
                      v137 = [v136 experimentId];
                      v138 = [(TRITargetingTask *)self experiment];
                      v55 = +[TRIDeactivateTreatmentTask taskWithExperimentId:deploymentId:failOnUnrecognizedExperiment:triggerEvent:taskAttribution:](TRIDeactivateTreatmentTask, "taskWithExperimentId:deploymentId:failOnUnrecognizedExperiment:triggerEvent:taskAttribution:", v137, [v138 deploymentId], 1, 7, self->_taskAttributing);

                      v209 = v55;
                      v59 = [MEMORY[0x277CBEA60] arrayWithObjects:&v209 count:1];
                      if (v59)
                      {
                        v139 = v59;
                      }

                      else
                      {
                        v139 = MEMORY[0x277CBEBF8];
                      }
                    }

                    v60 = [TRITaskRunResult resultWithRunStatus:2 reportResultToServer:1 nextTasks:v139 earliestRetryDate:0];
LABEL_122:
                    v28 = v60;

                    v143 = v174;
LABEL_133:

                    goto LABEL_134;
                  }

                  v124 = TRILogCategory_Server();
                  if (os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
                  {
                    v167 = [(TRITargetingTask *)self experiment];
                    v168 = [v167 shortDesc];
                    *v215 = 138543618;
                    *&v215[4] = v168;
                    *&v215[12] = 1024;
                    *&v215[14] = v48;
                    _os_log_error_impl(&dword_26F567000, v124, OS_LOG_TYPE_ERROR, "re-targeting for already active experiment %{public}@ with unexpected type %u", v215, 0x12u);
                  }

                  if (v204)
                  {
                    v125 = v204;
                  }

                  else
                  {
                    v125 = @"unspecified-or-default-treatment";
                  }

                  goto LABEL_107;
                }

                if (!v47)
                {
LABEL_74:
                  v99 = [v180 experimentType];
                  if (!v204)
                  {
                    v126 = TRILogCategory_Server();
                    if (os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT))
                    {
                      v127 = [(TRITargetingTask *)self experiment];
                      v128 = [v179 description];
                      *v215 = 138543618;
                      *&v215[4] = v127;
                      *&v215[12] = 2114;
                      *&v215[14] = v128;
                      _os_log_impl(&dword_26F567000, v126, OS_LOG_TYPE_DEFAULT, "targeting resulted in default treatment for experiment %{public}@ (%{public}@)", v215, 0x16u);
                    }

                    *(v201 + 24) = 0;
                    v129 = [v16 experimentDatabase];
                    v192[0] = MEMORY[0x277D85DD0];
                    v192[1] = 3221225472;
                    v192[2] = __92__TRITargetingTask_runTaskUsingContext_withTaskQueue_systemCovariates_userCovariates_error___block_invoke_253;
                    v192[3] = &unk_279DDF9C0;
                    v193 = v16;
                    v194 = self;
                    v195 = &v200;
                    [v129 writeTransactionWithFailableBlock:v192];

                    if (v201[3])
                    {
                      v130 = 2;
                    }

                    else
                    {
                      v140 = [(TRITargetingTask *)self experiment];
                      v141 = [(TRITargetingTask *)self _targetingErrorWithExperiment:v140 errorType:@"failed to update experiment database"];
                      v142 = *a7;
                      *a7 = v141;

                      v130 = 1;
                    }

                    v28 = [TRITaskRunResult resultWithRunStatus:v130 reportResultToServer:1 nextTasks:MEMORY[0x277CBEBF8] earliestRetryDate:0];
                    v143 = v193;
                    goto LABEL_133;
                  }

                  v100 = v99;
                  v101 = TRILogCategory_Server();
                  v102 = v101;
                  if (v100 == 1)
                  {
                    if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
                    {
                      v103 = v204;
                      v104 = [(TRITargetingTask *)self experiment];
                      v105 = [v179 description];
                      *v215 = 138412802;
                      *&v215[4] = v103;
                      *&v215[12] = 2114;
                      *&v215[14] = v104;
                      *&v215[22] = 2114;
                      v216 = v105;
                      _os_log_impl(&dword_26F567000, v102, OS_LOG_TYPE_DEFAULT, "enrolling in treatment %@ of experiment %{public}@ (%{public}@)", v215, 0x20u);
                    }

                    *v215 = 0;
                    *&v215[8] = v215;
                    *&v215[16] = 0x2020000000;
                    LODWORD(v216) = -1;
                    v106 = [v16 experimentDatabase];
                    v107 = [(TRITargetingTask *)self experiment];
                    v108 = [v107 experimentId];
                    v191[0] = MEMORY[0x277D85DD0];
                    v191[1] = 3221225472;
                    v191[2] = __92__TRITargetingTask_runTaskUsingContext_withTaskQueue_systemCovariates_userCovariates_error___block_invoke_255;
                    v191[3] = &unk_279DE19B0;
                    v191[4] = self;
                    v191[5] = v215;
                    [v106 enumerateExperimentRecordsMatchingExperimentId:v108 block:v191];

                    if (*(*&v215[8] + 24) != -1)
                    {
                      v109 = [(TRITargetingTask *)self experiment];
                      v110 = [v109 experimentId];
                      v214 = self;
                      v111 = [MEMORY[0x277CBEA60] arrayWithObjects:&v214 count:1];
                      [v181 cancelTasksWithTag:v110 excludingTasks:v111];

                      v112 = [(TRITargetingTask *)self experiment];
                      v113 = [v112 experimentId];
                      v114 = [TRIDeactivateTreatmentTask taskWithExperimentId:v113 deploymentId:*(*&v215[8] + 24) failOnUnrecognizedExperiment:0 triggerEvent:11 taskAttribution:self->_taskAttributing];

                      v115 = [v114 runUsingContext:v16 withTaskQueue:v181];
                      if ([v115 runStatus] != 2)
                      {
                        v116 = TRILogCategory_Server();
                        if (os_log_type_enabled(v116, OS_LOG_TYPE_ERROR))
                        {
                          v176 = [(TRITargetingTask *)self experiment];
                          v170 = [v176 shortDesc];
                          *v212 = 138543362;
                          v213 = v170;
                          _os_log_error_impl(&dword_26F567000, v116, OS_LOG_TYPE_ERROR, "Failed to deactivate one or more prior deployment(s) of experiment %{public}@, but forging boldly onward", v212, 0xCu);
                        }
                      }
                    }

                    _Block_object_dispose(v215, 8);
                    *(v201 + 24) = 0;
                    v117 = [v16 experimentDatabase];
                    v184[0] = MEMORY[0x277D85DD0];
                    v184[1] = 3221225472;
                    v184[2] = __92__TRITargetingTask_runTaskUsingContext_withTaskQueue_systemCovariates_userCovariates_error___block_invoke_258;
                    v184[3] = &unk_279DE1CB8;
                    v185 = v16;
                    v186 = self;
                    v187 = v204;
                    v188 = v199;
                    v189 = v183;
                    v190 = &v200;
                    [v117 writeTransactionWithFailableBlock:v184];

                    if (*(v201 + 24) == 1)
                    {
                      v175 = objc_opt_new();
                      v118 = v204;
                      v119 = [v175 ensureExperimentFields];
                      [v119 setClientTreatmentId:v118];

                      v120 = TRIDeploymentEnvironment_EnumDescriptor();
                      v121 = [v120 textFormatNameForValue:{objc_msgSend(v180, "deploymentEnvironment")}];

                      if (!v121)
                      {
                        v121 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%ld", objc_msgSend(v180, "deploymentEnvironment")];
                      }

                      [v175 setClientDeploymentEnv:v121];
                      if ([v179 hasStartDate])
                      {
                        v122 = [v179 startDate];
                        v173 = [v122 date];
                      }

                      else
                      {
                        v173 = 0;
                      }

                      v171 = [v180 counterfactualsTreatmentsToFactorPackSetIdsWithActiveTreatmentId:v204];
                      if (v199)
                      {
                        v172 = [(TRITargetingTask *)self experiment];
                        v157 = v204;
                        v158 = v199;
                        taskAttributing = self->_taskAttributing;
                        v160 = [v180 requiresTreatmentInstallation];
                        v161 = [TRIActivateTreatmentTask taskWithExperiment:v172 treatmentId:v157 factorPackSetId:v158 counterfactualTreatments:v171 taskAttributing:taskAttributing requiresTreatmentInstallation:v160 capabilityModifier:*(*&buf[8] + 40) startTime:v173 taskOptions:0];
                        v211 = v161;
                        [MEMORY[0x277CBEA60] arrayWithObjects:&v211 count:1];
                      }

                      else
                      {
                        v172 = [(TRITargetingTask *)self experiment];
                        v162 = v204;
                        v163 = self->_taskAttributing;
                        v164 = [v180 requiresTreatmentInstallation];
                        v161 = [TRIActivateTreatmentTask taskWithExperiment:v172 treatmentId:v162 taskAttributing:v163 requiresTreatmentInstallation:v164 capabilityModifier:*(*&buf[8] + 40) startTime:v173 taskOptions:0];
                        v210 = v161;
                        [MEMORY[0x277CBEA60] arrayWithObjects:&v210 count:1];
                      }
                      v165 = ;

                      [(TRIExperimentTaskSupport *)self->_support mergeTelemetry:v175];
                      if (v165)
                      {
                        v166 = v165;
                      }

                      else
                      {
                        v166 = MEMORY[0x277CBEBF8];
                      }

                      v28 = [TRITaskRunResult resultWithRunStatus:2 reportResultToServer:1 nextTasks:v166 earliestRetryDate:0];
                    }

                    else
                    {
                      v154 = [(TRITargetingTask *)self experiment];
                      v155 = [(TRITargetingTask *)self _targetingErrorWithExperiment:v154 errorType:@"failed update database"];
                      v156 = *a7;
                      *a7 = v155;

                      v28 = [TRITaskRunResult resultWithRunStatus:1 reportResultToServer:1 nextTasks:MEMORY[0x277CBEBF8] earliestRetryDate:0];
                    }

                    v143 = v185;
                    goto LABEL_133;
                  }

                  if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
                  {
                    v169 = [(TRITargetingTask *)self experiment];
                    *v215 = 138543362;
                    *&v215[4] = v169;
                    _os_log_error_impl(&dword_26F567000, v102, OS_LOG_TYPE_ERROR, "unexpected experimentType for experiment %{public}@", v215, 0xCu);
                  }

                  if (v204)
                  {
                    v125 = v204;
                  }

                  else
                  {
                    v125 = @"unspecified-or-default-treatment";
                  }

LABEL_107:
                  v91 = (v17)[2](v17, @"invalid-notification-type", v125, v183);
LABEL_108:
                  v28 = v91;
LABEL_134:
                  _Block_object_dispose(buf, 8);

LABEL_135:
LABEL_136:
                  _Block_object_dispose(&v200, 8);

                  goto LABEL_41;
                }
              }

              if (v204)
              {
                v123 = v204;
              }

              else
              {
                v123 = @"unspecified-or-default-treatment";
              }

              v91 = (v17)[2](v17, @"invalid-experiment-status", v123, v183);
              goto LABEL_108;
            }

            v73 = TRILogCategory_Server();
            if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
            {
              v74 = [(TRITargetingTask *)self experiment];
              *buf = 138543362;
              *&buf[4] = v74;
              _os_log_impl(&dword_26F567000, v73, OS_LOG_TYPE_DEFAULT, "Marking experiment:%{public}@ as ineligible", buf, 0xCu);
            }

            v75 = [v16 experimentDatabase];
            v76 = [(TRITargetingTask *)self experiment];
            v77 = [v75 setStatus:4 forExperimentDeployment:v76 usingTransaction:0];

            if (v77)
            {
              [TRITaskRunResult resultWithRunStatus:2 reportResultToServer:1 nextTasks:MEMORY[0x277CBEBF8] earliestRetryDate:0];
            }

            else
            {
              v78 = [(TRITargetingTask *)self experiment];
              v79 = [(TRITargetingTask *)self _targetingErrorWithExperiment:v78 errorType:@"failed to update experiment database"];
              v80 = *a7;
              *a7 = v79;

              [TRITaskRunResult resultWithRunStatus:1 reportResultToServer:1 nextTasks:MEMORY[0x277CBEBF8] earliestRetryDate:0];
            }
            v69 = ;
LABEL_40:
            v28 = v69;
LABEL_41:

            goto LABEL_33;
          }
        }

        else
        {
        }

        v70 = [(TRITargetingTask *)self experiment];
        v71 = [(TRITargetingTask *)self _targetingErrorWithExperiment:v70 errorType:@"loaded artifact with wrong experiment deployment"];
        v72 = *a7;
        *a7 = v71;

        v69 = (v17)[2](v17, @"encoded-experiment-mismatches-record", @"unspecified-or-default-treatment", v183);
        goto LABEL_40;
      }

      v66 = [(TRITargetingTask *)self experiment];
      v67 = [(TRITargetingTask *)self _targetingErrorWithExperiment:v66 errorType:@"decoded experiment definition is nil"];
      v68 = *a7;
      *a7 = v67;

      v69 = (v17)[2](v17, @"decoded-experiment-is-nil", @"unspecified-or-default-treatment", v183);
      goto LABEL_40;
    }
  }

  v61 = [(TRITargetingTask *)self experiment];
  v62 = [(TRITargetingTask *)self _targetingErrorWithExperiment:v61 errorType:@"experiment record not found"];
  v63 = *a7;
  *a7 = v62;

  v24 = (v17)[2](v17, @"experiment-not-found", @"unspecified-or-default-treatment", v183);
LABEL_32:
  v28 = v24;
LABEL_33:

LABEL_34:
  v64 = *MEMORY[0x277D85DE8];

  return v28;
}

id __92__TRITargetingTask_runTaskUsingContext_withTaskQueue_systemCovariates_userCovariates_error___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    [v18 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"TRITargetingTask.m" lineNumber:490 description:{@"Invalid parameter not satisfying: %@", @"failureReason"}];

    if (v8)
    {
      goto LABEL_3;
    }
  }

  v19 = [MEMORY[0x277CCA890] currentHandler];
  [v19 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"TRITargetingTask.m" lineNumber:491 description:{@"Invalid parameter not satisfying: %@", @"assignedTreatment"}];

LABEL_3:
  v10 = [TRIExperimentPostLaunchRecorder recorderFromContext:*(a1 + 40)];
  v11 = [*(a1 + 32) experiment];
  v12 = [v11 experimentId];
  v13 = [*(a1 + 32) experiment];
  v14 = +[TRIExperimentDeploymentTreatment treatmentTripleWithExperimentId:deploymentId:treatmentId:](TRIExperimentDeploymentTreatment, "treatmentTripleWithExperimentId:deploymentId:treatmentId:", v12, [v13 deploymentId], v8);

  v15 = [TRIExperimentPostLaunchEvent failureEventWithEventType:6 treatmentTriple:v14 failureReason:v7];
  if (!v15)
  {
    v20 = [MEMORY[0x277CCA890] currentHandler];
    [v20 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"TRITargetingTask.m" lineNumber:507 description:{@"Expression was unexpectedly nil/false: %@", @"[TRIExperimentPostLaunchEvent failureEventWithEventType:TRIInternalExperimentAllocationStatusTypeAllocationFailure treatmentTriple:triple failureReason:failureReason]"}];
  }

  [v10 recordEvent:v15];
  v16 = [TRITaskRunResult resultWithRunStatus:3 reportResultToServer:1 nextTasks:MEMORY[0x277CBEBF8] earliestRetryDate:0];

  return v16;
}

void __92__TRITargetingTask_runTaskUsingContext_withTaskQueue_systemCovariates_userCovariates_error___block_invoke_250(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = MEMORY[0x277D73750];
  v8 = [*(a1 + 32) paths];
  v9 = [v8 namespaceDescriptorsDefaultDir];
  v10 = [v7 loadWithNamespaceName:v6 fromDirectory:v9];

  if (([v10 expensiveNetworkingAllowed] & 1) == 0)
  {
    v11 = TRILogCategory_Server();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v6;
      _os_log_impl(&dword_26F567000, v11, OS_LOG_TYPE_DEFAULT, "Changing TRIFetchTreatmentTask to require inexpensive networking since %@ does not support expensive networking", &v16, 0xCu);
    }

    v12 = [[TRITaskCapabilityModifier alloc] initWithAdd:1 remove:2];
    v13 = *(*(a1 + 40) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    *a4 = 1;
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __92__TRITargetingTask_runTaskUsingContext_withTaskQueue_systemCovariates_userCovariates_error___block_invoke_253(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 experimentDatabase];
  v6 = [*(a1 + 40) experiment];
  v7 = [v5 setStatus:4 forExperimentDeployment:v6 usingTransaction:v4];

  *(*(*(a1 + 48) + 8) + 24) = v7;
  v8 = MEMORY[0x277D42670];
  if (!v7)
  {
    v8 = MEMORY[0x277D42678];
  }

  return *v8;
}

void __92__TRITargetingTask_runTaskUsingContext_withTaskQueue_systemCovariates_userCovariates_error___block_invoke_255(uint64_t a1, void *a2, _BYTE *a3)
{
  v11 = a2;
  v5 = [v11 experimentDeployment];
  if (([v5 hasDeploymentId] & 1) == 0)
  {
    goto LABEL_4;
  }

  v6 = [v11 experimentDeployment];
  v7 = [v6 deploymentId];
  v8 = [*(a1 + 32) experiment];
  if (v7 == [v8 deploymentId])
  {

LABEL_4:
    goto LABEL_5;
  }

  if ([v11 status] == 2)
  {
  }

  else
  {
    v9 = [v11 status];

    if (v9 != 1)
    {
      goto LABEL_5;
    }
  }

  v10 = [v11 experimentDeployment];
  *(*(*(a1 + 40) + 8) + 24) = [v10 deploymentId];

  *a3 = 1;
LABEL_5:
}

uint64_t __92__TRITargetingTask_runTaskUsingContext_withTaskQueue_systemCovariates_userCovariates_error___block_invoke_258(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) experimentDatabase];
  v5 = [*(a1 + 40) experiment];
  v6 = [v4 setStatus:2 forExperimentDeployment:v5 usingTransaction:v3];

  if (v6)
  {
    v7 = [*(a1 + 32) experimentDatabase];
    v9 = *(a1 + 48);
    v8 = *(a1 + 56);
    v10 = [*(a1 + 40) experiment];
    v11 = [v7 setTreatmentId:v9 factorPackSetId:v8 forExperimentDeployment:v10 usingTransaction:v3];
  }

  else
  {
    v11 = 0;
  }

  v12 = [*(a1 + 64) status] == 4;
  v13 = [*(a1 + 40) experiment];
  v14 = [v13 experimentId];
  v15 = [*(a1 + 40) experiment];
  v16 = +[TRIExperimentDeploymentTreatment treatmentTripleWithExperimentId:deploymentId:treatmentId:](TRIExperimentDeploymentTreatment, "treatmentTripleWithExperimentId:deploymentId:treatmentId:", v14, [v15 deploymentId], *(a1 + 48));

  v17 = [*(a1 + 64) deploymentEnvironment];
  v18 = [*(a1 + 64) namespaces];
  v19 = [TRIExperimentPostLaunchEvent allocationEventWithTriple:v16 isDynamicEnrollment:v12 environment:v17 namespaces:v18];

  v20 = [TRIExperimentPostLaunchRecorder recorderFromContext:*(a1 + 32)];
  v21 = v20;
  if (v11)
  {
    v22 = [v20 recordEvent:v19];
    *(*(*(a1 + 72) + 8) + 24) = v22 & 1;
    if (v22)
    {
      v23 = MEMORY[0x277D42670];
    }

    else
    {
      v23 = MEMORY[0x277D42678];
    }
  }

  else
  {
    *(*(*(a1 + 72) + 8) + 24) = 0;
    v23 = MEMORY[0x277D42678];
  }

  return *v23;
}

- (id)runUsingContext:(id)a3 withTaskQueue:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 paths];
  v9 = [(TRITargetingTask *)self systemCovariatesWithPaths:v8];

  v10 = [[TRIUserCovariates alloc] initWithContext:v7];
  v23 = 0;
  v11 = [(TRITargetingTask *)self runTaskUsingContext:v7 withTaskQueue:v6 systemCovariates:v9 userCovariates:v10 error:&v23];

  v12 = [v11 runStatus];
  v13 = 0;
  if (v12 != 2 || v23 != 0)
  {
    v15 = @"unknown";
    if (v23)
    {
      v16 = [v23 userInfo];
      v17 = [v16 objectForKeyedSubscript:@"logMessage"];
      v18 = v17;
      if (v17)
      {
        v19 = v17;
      }

      else
      {
        v19 = @"unknown";
      }

      v15 = v19;
    }

    support = self->_support;
    v21 = [MEMORY[0x277D73B40] metricWithName:@"targeting_error" categoricalValue:v15];
    [(TRIExperimentTaskSupport *)support addMetric:v21];

    v13 = v23;
  }

  return v11;
}

- (id)_asPersistedTask
{
  v3 = objc_opt_new();
  v4 = [(TRITargetingTask *)self experiment];
  v5 = [v4 experimentId];
  [v3 setExperimentId:v5];

  v6 = [(TRITargetingTask *)self experiment];
  [v3 setDeploymentId:{objc_msgSend(v6, "deploymentId")}];

  [v3 setIncludeDependencies:self->_includeDependencies];
  v7 = [(TRITaskAttributing *)self->_taskAttributing asPersistedTaskAttribution];
  [v3 setTaskAttribution:v7];

  [v3 setRetryCount:{-[TRITargetingTask retryCount](self, "retryCount")}];

  return v3;
}

- (id)serialize
{
  v4 = [(TRITargetingTask *)self _asPersistedTask];
  v5 = [v4 data];

  if (!v5)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [v7 handleFailureInMethod:a2 object:self file:@"TRITargetingTask.m" lineNumber:863 description:{@"Unexpected failure to serialize %@", v9}];
  }

  return v5;
}

+ (id)parseFromData:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v26 = 0;
  v3 = [(TRIPBMessage *)TRITargetingPersistedTask parseFromData:a3 error:&v26];
  v4 = v26;
  if (!v3)
  {
    v8 = TRILogCategory_Server();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v28 = v4;
      _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, "Unable to parse buffer as TRITargetingPersistedTask: %{public}@", buf, 0xCu);
    }

    goto LABEL_25;
  }

  if (([v3 hasExperimentId] & 1) == 0)
  {
    v14 = TRILogCategory_Server();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      *buf = 138412290;
      v28 = v25;
      _os_log_error_impl(&dword_26F567000, v14, OS_LOG_TYPE_ERROR, "Cannot decode message of type %@ with missing field: experimentId", buf, 0xCu);
    }

    v8 = TRILogCategory_Server();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    *buf = 138412290;
    v28 = v16;
    v17 = "Cannot decode message of type %@ with missing field: experimentId";
    goto LABEL_24;
  }

  v5 = [v3 experimentId];
  v6 = [v5 length];

  if (!v6)
  {
    v8 = TRILogCategory_Server();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    v18 = objc_opt_class();
    v16 = NSStringFromClass(v18);
    *buf = 138412290;
    v28 = v16;
    v17 = "Cannot decode message of type %@ with field of length 0: experimentId";
LABEL_24:
    _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, v17, buf, 0xCu);

    goto LABEL_25;
  }

  if (([v3 hasDeploymentId] & 1) == 0)
  {
    v8 = TRILogCategory_Server();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    v19 = objc_opt_class();
    v16 = NSStringFromClass(v19);
    *buf = 138412290;
    v28 = v16;
    v17 = "Cannot decode message of type %@ with missing field: deploymentId";
    goto LABEL_24;
  }

  if (([v3 hasIncludeDependencies] & 1) == 0)
  {
    v8 = TRILogCategory_Server();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    v20 = objc_opt_class();
    v16 = NSStringFromClass(v20);
    *buf = 138412290;
    v28 = v16;
    v17 = "Cannot decode message of type %@ with missing field: includeDependencies";
    goto LABEL_24;
  }

  if (([v3 hasTaskAttribution] & 1) == 0)
  {
    v8 = TRILogCategory_Server();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v21 = objc_opt_class();
      v16 = NSStringFromClass(v21);
      *buf = 138412290;
      v28 = v16;
      v17 = "Cannot decode message of type %@ with missing field: taskAttribution";
      goto LABEL_24;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_26;
  }

  v7 = [v3 taskAttribution];
  v8 = [TRITaskAttributionInternalInsecure taskAttributionFromPersistedTask:v7];

  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x277D736C0]);
    v10 = [v3 experimentId];
    v11 = [v9 initWithExperimentId:v10 deploymentId:{objc_msgSend(v3, "deploymentId")}];

    v12 = [objc_opt_class() taskWithExperiment:v11 includeDependencies:objc_msgSend(v3 taskAttribution:{"includeDependencies"), v8}];
    if ([v3 hasRetryCount])
    {
      v13 = [v3 retryCount];
    }

    else
    {
      v13 = 0;
    }

    [v12 setRetryCount:v13];
  }

  else
  {
    v11 = TRILogCategory_Server();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26F567000, v11, OS_LOG_TYPE_ERROR, "invalid de-serialized TRITaskAttribution pb message", buf, 2u);
    }

    v12 = 0;
  }

LABEL_26:
  v22 = *MEMORY[0x277D85DE8];

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = TRITargetingTask;
  if ([(TRIBaseTask *)&v10 isEqual:v4])
  {
    v5 = v4;
    v6 = [(TRITargetingTask *)self experiment];
    v7 = [v5 experiment];

    v8 = [v6 isEqualToDeployment:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v13.receiver = self;
  v13.super_class = TRITargetingTask;
  v3 = [(TRIBaseTask *)&v13 hash];
  v4 = [(TRITargetingTask *)self experiment];
  v5 = [v4 experimentId];
  if (v5)
  {
    v6 = [(TRITargetingTask *)self experiment];
    v7 = [v6 experimentId];
    v8 = [v7 hash];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(TRITargetingTask *)self experiment];
  if ([v9 hasDeploymentId])
  {
    v10 = [(TRITargetingTask *)self experiment];
    v11 = [v10 deploymentId];
  }

  else
  {
    v11 = -2;
  }

  return v11 + 37 * (v8 + 37 * v3);
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(TRITargetingTask *)self experiment];
  v6 = [v5 shortDesc];
  v7 = [v3 stringWithFormat:@"<%@:%@, r:%d>", v4, v6, -[TRITargetingTask retryCount](self, "retryCount")];

  return v7;
}

- (TRITargetingTask)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TRITargetingTask;
  v5 = [(TRITargetingTask *)&v9 init];
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
    [v6 handleFailureInMethod:a2 object:self file:@"TRITargetingTask.m" lineNumber:924 description:{@"Don't use NSSecureCoding to persist tasks to disk, use -[TRITask serialize]."}];
  }

  v5 = [(TRITargetingTask *)self serialize];
  [v7 encodeObject:v5 forKey:@"pb"];
}

@end