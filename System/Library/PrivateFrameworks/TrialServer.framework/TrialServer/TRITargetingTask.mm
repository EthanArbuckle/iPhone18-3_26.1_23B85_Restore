@interface TRITargetingTask
+ (id)parseFromData:(id)data;
- (BOOL)_isExperimentEligibleWithArtifact:(id)artifact context:(id)context;
- (BOOL)getFactorPackSetId:(id *)id forExperiment:(id)experiment treatmentId:(id)treatmentId error:(id *)error;
- (BOOL)getTreatment:(id *)treatment forExperiment:(id)experiment isServerSideExperiment:(BOOL)sideExperiment systemCovariates:(id)covariates userCovariates:(id)userCovariates experimentCovariates:(id)experimentCovariates experimentEndDate:(id)date error:(id *)self0;
- (BOOL)isEqual:(id)equal;
- (BOOL)validateSystemCovariates:(id)covariates experiment:(id)experiment error:(id *)error;
- (NSArray)dependencies;
- (NSString)description;
- (TRITargetingTask)initWithCoder:(id)coder;
- (TRITargetingTask)initWithExperiment:(id)experiment includeDependencies:(BOOL)dependencies taskAttribution:(id)attribution;
- (id)_asPersistedTask;
- (id)_targetingErrorWithExperiment:(id)experiment errorType:(id)type details:(id)details;
- (id)runTaskUsingContext:(id)context withTaskQueue:(id)queue systemCovariates:(id)covariates userCovariates:(id)userCovariates error:(id *)error;
- (id)runUsingContext:(id)context withTaskQueue:(id)queue;
- (id)serialize;
- (id)systemCovariatesWithPaths:(id)paths;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)runDequeueHandlerUsingContext:(id)context;
- (void)runEnqueueHandlerUsingContext:(id)context;
@end

@implementation TRITargetingTask

- (TRITargetingTask)initWithExperiment:(id)experiment includeDependencies:(BOOL)dependencies taskAttribution:(id)attribution
{
  experimentCopy = experiment;
  attributionCopy = attribution;
  if (!experimentCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRITargetingTask.m" lineNumber:98 description:{@"Invalid parameter not satisfying: %@", @"experiment"}];
  }

  if (([experimentCopy hasDeploymentId] & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRITargetingTask.m" lineNumber:99 description:{@"Invalid parameter not satisfying: %@", @"experiment.hasDeploymentId"}];
  }

  v18.receiver = self;
  v18.super_class = TRITargetingTask;
  v11 = [(TRITargetingTask *)&v18 init];
  if (v11)
  {
    v12 = [[TRIExperimentTaskSupport alloc] initWithExperimentDeployment:experimentCopy];
    support = v11->_support;
    v11->_support = v12;

    v11->_includeDependencies = dependencies;
    objc_storeStrong(&v11->_taskAttributing, attribution);
    v14 = [TRITelemetryFactory containerOriginTelemetryForTaskAttribution:attributionCopy];
    [(TRIExperimentTaskSupport *)v11->_support mergeTelemetry:v14];
  }

  return v11;
}

- (NSArray)dependencies
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (self->_includeDependencies)
  {
    experiment = [(TRITargetingTask *)self experiment];
    v4 = [TRIFetchExperimentTask taskWithExperimentDeployment:experiment taskAttributing:self->_taskAttributing];
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

- (void)runEnqueueHandlerUsingContext:(id)context
{
  contextCopy = context;
  experiment = [(TRITargetingTask *)self experiment];
  v7 = [TRIContentTracker contentIdentifierForExperimentArtifactWithDeployment:experiment];

  contentTracker = [contextCopy contentTracker];

  [contentTracker addRefWithContentIdentifier:v7];
}

- (void)runDequeueHandlerUsingContext:(id)context
{
  v14 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  experiment = [(TRITargetingTask *)self experiment];
  v6 = [TRIContentTracker contentIdentifierForExperimentArtifactWithDeployment:experiment];

  contentTracker = [contextCopy contentTracker];

  LOBYTE(contextCopy) = [contentTracker dropRefWithContentIdentifier:v6];
  if ((contextCopy & 1) == 0)
  {
    v8 = TRILogCategory_Server();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      experiment2 = [(TRITargetingTask *)self experiment];
      shortDesc = [experiment2 shortDesc];
      v12 = 138543362;
      v13 = shortDesc;
      _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, "Failed to drop reference on artifact for experiment %{public}@", &v12, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)systemCovariatesWithPaths:(id)paths
{
  pathsCopy = paths;
  v4 = [[TRISystemCovariates alloc] initWithPaths:pathsCopy];

  return v4;
}

- (id)_targetingErrorWithExperiment:(id)experiment errorType:(id)type details:(id)details
{
  v40 = *MEMORY[0x277D85DE8];
  experimentCopy = experiment;
  typeCopy = type;
  detailsCopy = details;
  if (!typeCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRITargetingTask.m" lineNumber:146 description:{@"Invalid parameter not satisfying: %@", @"errorType != nil"}];
  }

  if (!experimentCopy || ([experimentCopy experimentId], (v12 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    typeCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Targeting error: %@", typeCopy];
    if (!detailsCopy)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v13 = v12;
  hasDeploymentId = [experimentCopy hasDeploymentId];
  v15 = MEMORY[0x277CCACA8];
  experimentId = [experimentCopy experimentId];
  v17 = experimentId;
  if (hasDeploymentId)
  {
    [v15 stringWithFormat:@"Targeting error for experiment %@.%u: %@", experimentId, objc_msgSend(experimentCopy, "deploymentId"), typeCopy];
  }

  else
  {
    [v15 stringWithFormat:@"Targeting error for experiment %@: %@", experimentId, typeCopy, v34];
  }
  typeCopy = ;

  if (detailsCopy)
  {
LABEL_8:
    detailsCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ -- %@", typeCopy, detailsCopy];

    typeCopy = detailsCopy;
  }

LABEL_9:
  v35 = detailsCopy;
  v20 = TRILogCategory_Server();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v39 = typeCopy;
    _os_log_error_impl(&dword_26F567000, v20, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v21 = MEMORY[0x277CCA9B8];
  v36[0] = *MEMORY[0x277CCA450];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v23 = [mainBundle localizedStringForKey:typeCopy value:&stru_287FA0430 table:0];
  v37[0] = v23;
  v36[1] = @"experimentId";
  experimentId2 = [experimentCopy experimentId];
  v25 = experimentId2;
  if (experimentId2)
  {
    v26 = experimentId2;
  }

  else
  {
    v26 = &stru_287FA0430;
  }

  v37[1] = v26;
  v36[2] = @"deploymentId";
  hasDeploymentId2 = [experimentCopy hasDeploymentId];
  if (hasDeploymentId2)
  {
    v28 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(experimentCopy, "deploymentId")}];
  }

  else
  {
    v28 = &unk_287FC4DE0;
  }

  v36[3] = @"logMessage";
  v37[2] = v28;
  v37[3] = typeCopy;
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:4];
  v30 = [v21 errorWithDomain:@"triald" code:1 userInfo:v29];

  if (hasDeploymentId2)
  {
  }

  v31 = *MEMORY[0x277D85DE8];

  return v30;
}

- (BOOL)validateSystemCovariates:(id)covariates experiment:(id)experiment error:(id *)error
{
  covariatesCopy = covariates;
  experimentCopy = experiment;
  v10 = [covariatesCopy tri_contextValueWithName:@"OSBuild"];
  if (!v10)
  {
    goto LABEL_12;
  }

  v11 = [covariatesCopy tri_contextValueWithName:@"DeviceModelCode"];
  if (!v11)
  {
    goto LABEL_11;
  }

  v12 = [covariatesCopy tri_contextValueWithName:@"DeviceClass"];
  if (!v12)
  {
LABEL_10:

LABEL_11:
    goto LABEL_12;
  }

  v13 = [covariatesCopy tri_contextValueWithName:@"DeviceId"];
  if (!v13)
  {
LABEL_9:

    goto LABEL_10;
  }

  v14 = [covariatesCopy tri_contextValueWithName:@"DeviceChipId"];
  if (!v14)
  {

    goto LABEL_9;
  }

  v15 = [covariatesCopy tri_contextValueWithName:@"DeviceHardwareModel"];

  if (v15)
  {
    v16 = 1;
    goto LABEL_15;
  }

LABEL_12:
  v17 = [(TRITargetingTask *)self _targetingErrorWithExperiment:experimentCopy errorType:@"Unable to retrieve context -- no results from mobile gestalt"];
  if (error)
  {
    objc_storeStrong(error, v17);
  }

  v16 = 0;
LABEL_15:

  return v16;
}

- (BOOL)getTreatment:(id *)treatment forExperiment:(id)experiment isServerSideExperiment:(BOOL)sideExperiment systemCovariates:(id)covariates userCovariates:(id)userCovariates experimentCovariates:(id)experimentCovariates experimentEndDate:(id)date error:(id *)self0
{
  sideExperimentCopy = sideExperiment;
  v85[2] = *MEMORY[0x277D85DE8];
  experimentCopy = experiment;
  covariatesCopy = covariates;
  userCovariatesCopy = userCovariates;
  experimentCovariatesCopy = experimentCovariates;
  dateCopy = date;
  if (treatment)
  {
    if (experimentCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRITargetingTask.m" lineNumber:242 description:{@"Invalid parameter not satisfying: %@", @"treatmentId != nil"}];

    if (experimentCopy)
    {
LABEL_3:
      if (covariatesCopy)
      {
        goto LABEL_4;
      }

LABEL_62:
      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRITargetingTask.m" lineNumber:244 description:{@"Invalid parameter not satisfying: %@", @"systemCovariates != nil"}];

      if (experimentCovariatesCopy)
      {
        goto LABEL_5;
      }

      goto LABEL_63;
    }
  }

  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"TRITargetingTask.m" lineNumber:243 description:{@"Invalid parameter not satisfying: %@", @"experiment != nil"}];

  if (!covariatesCopy)
  {
    goto LABEL_62;
  }

LABEL_4:
  if (experimentCovariatesCopy)
  {
    goto LABEL_5;
  }

LABEL_63:
  currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler4 handleFailureInMethod:a2 object:self file:@"TRITargetingTask.m" lineNumber:245 description:{@"Invalid parameter not satisfying: %@", @"experimentCovariates != nil"}];

LABEL_5:
  context = objc_autoreleasePoolPush();
  if ([experimentCopy hasExperimentId])
  {
    v20 = objc_alloc(MEMORY[0x277D736C0]);
    experimentId = [experimentCopy experimentId];
    v76 = [v20 initWithExperimentId:experimentId deploymentId:{objc_msgSend(experimentCopy, "deploymentId")}];

    v22 = *treatment;
    *treatment = 0;

    if (dateCopy)
    {
      v23 = objc_opt_new();
      v24 = [dateCopy compare:v23];

      if (v24 == -1)
      {
        v37 = TRILogCategory_Server();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
        {
          experimentId2 = [experimentCopy experimentId];
          *buf = 138543362;
          v81 = experimentId2;
          _os_log_impl(&dword_26F567000, v37, OS_LOG_TYPE_INFO, "experiment with id %{public}@ has end date in the past", buf, 0xCu);
        }

        v35 = 1;
        goto LABEL_58;
      }
    }

    if ([experimentCopy hasAssignment])
    {
      if ([(TRITargetingTask *)self validateSystemCovariates:covariatesCopy experiment:v76 error:error])
      {
        v85[0] = covariatesCopy;
        v84[0] = @"SystemCovariates";
        v84[1] = @"TempValues";
        v25 = [MEMORY[0x277CBEC10] mutableCopy];
        v85[1] = v25;
        v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v85 forKeys:v84 count:2];
        v74 = [v26 mutableCopy];

        if (userCovariatesCopy)
        {
          [v74 setObject:userCovariatesCopy forKeyedSubscript:@"UserCovariates"];
        }

        [v74 setObject:experimentCovariatesCopy forKeyedSubscript:@"ExperimentCovariates"];
        assignment = [experimentCopy assignment];
        nsexpressionLanguage = [assignment nsexpressionLanguage];
        if ([nsexpressionLanguage hasSchemaVersion])
        {
          nsexpressionLanguage2 = [assignment nsexpressionLanguage];
          schemaVersion = [nsexpressionLanguage2 schemaVersion];

          if (schemaVersion >= 0xB)
          {
            v30 = TRILogCategory_Server();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109120;
              LODWORD(v81) = schemaVersion;
              _os_log_impl(&dword_26F567000, v30, OS_LOG_TYPE_DEFAULT, "Assigning to default treatment because assignment language schema version %u is incompatible.", buf, 8u);
            }

            if (!error)
            {
              v35 = 1;
LABEL_57:

              goto LABEL_58;
            }

            assignmentExpression2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Incompatible assignment language schema version %u", schemaVersion];
            v31 = [(TRITargetingTask *)self _targetingErrorWithExperiment:v76 errorType:assignmentExpression2];
            v32 = *error;
            *error = v31;
LABEL_46:
            v35 = 1;
LABEL_56:

            goto LABEL_57;
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
          v73 = [assignmentExpression length] == 0;

          if (!v73)
          {
            nsexpressionLanguage5 = [assignment nsexpressionLanguage];
            assignmentExpression2 = [nsexpressionLanguage5 assignmentExpression];

            v43 = objc_autoreleasePoolPush();
            v44 = [MEMORY[0x277CCA9C0] expressionWithFormat:assignmentExpression2];
            objc_autoreleasePoolPop(v43);
            v71 = v44;
            v45 = objc_opt_new();
            v46 = [v45 validateExpression:v44 outError:error];

            if (v46)
            {
              v47 = TRILogCategory_Backtrace();
              if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
              {
                v48 = [v74 objectForKeyedSubscript:@"SystemCovariates"];
                dictionary = [v48 dictionary];
                v50 = [v74 objectForKeyedSubscript:@"ExperimentCovariates"];
                [v50 dictionary];
                v70 = v48;
                *buf = 138412546;
                v81 = dictionary;
                v51 = v82 = 2112;
                v83 = v51;
                _os_log_impl(&dword_26F567000, v47, OS_LOG_TYPE_DEFAULT, "Using the following covariates for targeting. SystemCovariate: %@ ExperimentCovariates: %@", buf, 0x16u);
              }

              v52 = objc_autoreleasePoolPush();
              v53 = [v71 expressionValueWithObject:v74 context:0];
              objc_autoreleasePoolPop(v52);
              v54 = *treatment;
              *treatment = v53;

              v55 = TRILogCategory_Server();
              if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
              {
                v56 = *treatment;
                experimentId3 = [experimentCopy experimentId];
                *buf = 138412546;
                v81 = v56;
                v82 = 2114;
                v83 = experimentId3;
                _os_log_impl(&dword_26F567000, v55, OS_LOG_TYPE_DEFAULT, "Targeting treatment %@ for experiment %{public}@.", buf, 0x16u);
              }

              if (![*treatment compare:@"default" options:1])
              {
                v58 = *treatment;
                *treatment = 0;
              }

              if (!*treatment || ([*treatment triIsValidTreatmentId] & 1) != 0)
              {
                v35 = 1;
LABEL_55:
                v32 = v71;
                goto LABEL_56;
              }

              v61 = [MEMORY[0x277CCACA8] stringWithFormat:@"invalid treatment id %@", *treatment];
              v62 = [(TRITargetingTask *)self _targetingErrorWithExperiment:v76 errorType:v61];

              if (error)
              {
                objc_storeStrong(error, v62);
              }

              v63 = *treatment;
              *treatment = 0;
            }

            v35 = 0;
            goto LABEL_55;
          }
        }

        else
        {
        }

        if (!sideExperimentCopy)
        {
          v60 = [(TRITargetingTask *)self _targetingErrorWithExperiment:v76 errorType:@"assignment string is missing or empty"];
          if (error)
          {
            objc_storeStrong(error, v60);
          }

          v32 = 0;
          assignmentExpression2 = 0;
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
        assignmentExpression2 = 0;
        goto LABEL_46;
      }
    }

    else
    {
      v36 = [(TRITargetingTask *)self _targetingErrorWithExperiment:v76 errorType:@"missing treatment assignment"];
      if (error)
      {
        objc_storeStrong(error, v36);
      }
    }

    v35 = 0;
LABEL_58:

    goto LABEL_59;
  }

  experiment = [(TRITargetingTask *)self experiment];
  v34 = [(TRITargetingTask *)self _targetingErrorWithExperiment:experiment errorType:@"experiment id is missing in experiment definition"];

  if (error)
  {
    objc_storeStrong(error, v34);
  }

  v35 = 0;
LABEL_59:
  objc_autoreleasePoolPop(context);

  v64 = *MEMORY[0x277D85DE8];
  return v35;
}

- (BOOL)getFactorPackSetId:(id *)id forExperiment:(id)experiment treatmentId:(id)treatmentId error:(id *)error
{
  v46 = *MEMORY[0x277D85DE8];
  experimentCopy = experiment;
  treatmentIdCopy = treatmentId;
  if (id)
  {
    if (experimentCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRITargetingTask.m" lineNumber:384 description:{@"Invalid parameter not satisfying: %@", @"factorPackSetId != nil"}];

    if (experimentCopy)
    {
LABEL_3:
      if (!treatmentIdCopy)
      {
        goto LABEL_24;
      }

      goto LABEL_4;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRITargetingTask.m" lineNumber:385 description:{@"Invalid parameter not satisfying: %@", @"experiment != nil"}];

  if (!treatmentIdCopy)
  {
    goto LABEL_24;
  }

LABEL_4:
  if ([experimentCopy factorPackSetMapping_Count])
  {
    factorPackSetMapping = [experimentCopy factorPackSetMapping];
    v14 = [factorPackSetMapping objectForKeyedSubscript:treatmentIdCopy];

    if (v14)
    {
      v15 = TRIValidateFactorPackSetId();
      v16 = TRILogCategory_Server();
      v17 = v16;
      if (v15)
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          experimentId = [experimentCopy experimentId];
          *buf = 138544130;
          v41 = experimentId;
          v42 = 1024;
          *v43 = [experimentCopy deploymentId];
          *&v43[4] = 2112;
          *&v43[6] = treatmentIdCopy;
          v44 = 2112;
          v45 = v15;
          _os_log_impl(&dword_26F567000, v17, OS_LOG_TYPE_DEFAULT, "Experiment %{public}@.%u, treatment %@ successfully resolved to factor pack set: %@", buf, 0x26u);
        }

        v19 = v15;
        v20 = *id;
        *id = v19;
        v21 = 1;
      }

      else
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          experimentId2 = [experimentCopy experimentId];
          *buf = 138413058;
          v41 = v14;
          v42 = 2114;
          *v43 = experimentId2;
          *&v43[8] = 1024;
          *&v43[10] = [experimentCopy deploymentId];
          v44 = 2112;
          v45 = treatmentIdCopy;
          _os_log_error_impl(&dword_26F567000, v17, OS_LOG_TYPE_ERROR, "Invalid fpsId %@ found for experiment %{public}@.%u, treatment %@.", buf, 0x26u);
        }

        v27 = objc_alloc(MEMORY[0x277D736C0]);
        experimentId3 = [experimentCopy experimentId];
        v20 = [v27 initWithExperimentId:experimentId3 deploymentId:{objc_msgSend(experimentCopy, "deploymentId")}];

        v29 = *id;
        *id = 0;

        if (error)
        {
          v30 = [(TRITargetingTask *)self _targetingErrorWithExperiment:v20 errorType:@"Invalid fpsId found for experiment."];
          v31 = *error;
          *error = v30;
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
        experimentId4 = [experimentCopy experimentId];
        *buf = 138543874;
        v41 = experimentId4;
        v42 = 1024;
        *v43 = [experimentCopy deploymentId];
        *&v43[4] = 2112;
        *&v43[6] = treatmentIdCopy;
        _os_log_error_impl(&dword_26F567000, v22, OS_LOG_TYPE_ERROR, "Could not find fpsId in experiment factor pack set map for experiment %{public}@.%u, treatment %@.", buf, 0x1Cu);
      }

      v23 = objc_alloc(MEMORY[0x277D736C0]);
      experimentId5 = [experimentCopy experimentId];
      v19 = [v23 initWithExperimentId:experimentId5 deploymentId:{objc_msgSend(experimentCopy, "deploymentId")}];

      v25 = *id;
      *id = 0;

      if (!error)
      {
        v21 = 0;
        goto LABEL_20;
      }

      v26 = [(TRITargetingTask *)self _targetingErrorWithExperiment:v19 errorType:@"Could not find fpsId in experiment factor pack set map."];
      v21 = 0;
      v20 = *error;
      *error = v26;
    }

LABEL_20:
    goto LABEL_27;
  }

LABEL_24:
  v36 = TRILogCategory_Server();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    experimentId6 = [experimentCopy experimentId];
    *buf = 138543874;
    v41 = experimentId6;
    v42 = 1024;
    *v43 = [experimentCopy deploymentId];
    *&v43[4] = 2112;
    *&v43[6] = treatmentIdCopy;
    _os_log_impl(&dword_26F567000, v36, OS_LOG_TYPE_DEFAULT, "Experiment %{public}@.%u, treatment %@ will not consider using factor pack sets.", buf, 0x1Cu);
  }

  v14 = *id;
  *id = 0;
  v21 = 1;
LABEL_27:

  v38 = *MEMORY[0x277D85DE8];
  return v21;
}

- (BOOL)_isExperimentEligibleWithArtifact:(id)artifact context:(id)context
{
  v25 = *MEMORY[0x277D85DE8];
  artifactCopy = artifact;
  contextCopy = context;
  experimentDatabase = [contextCopy experimentDatabase];
  v9 = [artifactCopy hasNamespacesAvailableForExperimentWithDatabase:experimentDatabase];

  if ((v9 & 1) == 0)
  {
    v13 = TRILogCategory_Server();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
LABEL_10:
      v14 = 0;
      goto LABEL_11;
    }

    experiment = TRICloudKitSupport_NotificationType_EnumDescriptor();
    v16 = -[NSObject textFormatNameForValue:](experiment, "textFormatNameForValue:", [artifactCopy experimentType]);
    experimentDeployment = [artifactCopy experimentDeployment];
    shortDesc = [experimentDeployment shortDesc];
    v21 = 138412546;
    v22 = v16;
    v23 = 2114;
    v24 = shortDesc;
    _os_log_impl(&dword_26F567000, v13, OS_LOG_TYPE_DEFAULT, "No namespace available for %@ with id %{public}@.", &v21, 0x16u);

    goto LABEL_8;
  }

  namespaceDatabase = [contextCopy namespaceDatabase];
  paths = [contextCopy paths];
  namespaceDescriptorsDefaultDir = [paths namespaceDescriptorsDefaultDir];
  v13 = [TRINamespaceDescriptorProvider providerWithNamespaceDatabase:namespaceDatabase defaultDescriptorDirectoryPath:namespaceDescriptorsDefaultDir];

  if (([artifactCopy isCompatibleWithNamespaceDescriptorProvider:v13 error:0] & 1) == 0)
  {
    v16 = TRILogCategory_Server();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
LABEL_9:

      goto LABEL_10;
    }

    experiment = [(TRITargetingTask *)self experiment];
    v21 = 138543362;
    v22 = experiment;
    _os_log_impl(&dword_26F567000, v16, OS_LOG_TYPE_DEFAULT, "Experiment not compatible with the namespaces on the device %{public}@.", &v21, 0xCu);
LABEL_8:

    goto LABEL_9;
  }

  v14 = 1;
LABEL_11:

  v19 = *MEMORY[0x277D85DE8];
  return v14;
}

- (id)runTaskUsingContext:(id)context withTaskQueue:(id)queue systemCovariates:(id)covariates userCovariates:(id)userCovariates error:(id *)error
{
  v220 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  queueCopy = queue;
  covariatesCopy = covariates;
  userCovariatesCopy = userCovariates;
  if (error)
  {
    if (contextCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRITargetingTask.m" lineNumber:475 description:{@"Invalid parameter not satisfying: %@", @"error != nil"}];

    if (contextCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRITargetingTask.m" lineNumber:476 description:{@"Invalid parameter not satisfying: %@", @"context != nil"}];

LABEL_3:
  v182 = covariatesCopy;
  if (covariatesCopy)
  {
    if (userCovariatesCopy)
    {
      goto LABEL_5;
    }
  }

  else
  {
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"TRITargetingTask.m" lineNumber:477 description:{@"Invalid parameter not satisfying: %@", @"systemCovariates != nil"}];

    if (userCovariatesCopy)
    {
      goto LABEL_5;
    }
  }

  currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler4 handleFailureInMethod:a2 object:self file:@"TRITargetingTask.m" lineNumber:478 description:{@"Invalid parameter not satisfying: %@", @"userCovariates != nil"}];

LABEL_5:
  v205[0] = MEMORY[0x277D85DD0];
  v205[1] = 3221225472;
  v205[2] = __92__TRITargetingTask_runTaskUsingContext_withTaskQueue_systemCovariates_userCovariates_error___block_invoke_2;
  v205[3] = &unk_279DE4EC0;
  v207 = a2;
  v205[4] = self;
  v16 = contextCopy;
  v206 = v16;
  v17 = MEMORY[0x2743948D0](v205);
  experiment = [(TRITargetingTask *)self experiment];
  hasDeploymentId = [experiment hasDeploymentId];

  if ((hasDeploymentId & 1) == 0)
  {
    experiment2 = [(TRITargetingTask *)self experiment];
    v26 = [(TRITargetingTask *)self _targetingErrorWithExperiment:experiment2 errorType:@"deployment id is missing"];
    v27 = *error;
    *error = v26;

    v28 = (v17)[2](v17, @"missing-deployment-id", @"unspecified-or-default-treatment", 0);
    goto LABEL_34;
  }

  experimentDatabase = [v16 experimentDatabase];
  experiment3 = [(TRITargetingTask *)self experiment];
  v183 = [experimentDatabase experimentRecordWithExperimentDeployment:experiment3];

  if ([v183 type] == 3)
  {
    v22 = TRILogCategory_Server();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      experiment4 = [(TRITargetingTask *)self experiment];
      *buf = 138543362;
      *&buf[4] = experiment4;
      _os_log_impl(&dword_26F567000, v22, OS_LOG_TYPE_DEFAULT, "V1 Rollouts are no longer supported: %{public}@", buf, 0xCu);
    }

    v24 = [TRITaskRunResult resultWithRunStatus:2 reportResultToServer:1 nextTasks:MEMORY[0x277CBEBF8] earliestRetryDate:0];
    goto LABEL_32;
  }

  if (v183)
  {
    artifact = [v183 artifact];
    v180 = artifact;
    if (artifact)
    {
      experiment5 = [artifact experiment];
      v179 = experiment5;
      if (experiment5)
      {
        experimentId = [experiment5 experimentId];
        experiment6 = [(TRITargetingTask *)self experiment];
        experimentId2 = [experiment6 experimentId];
        if ([experimentId isEqualToString:experimentId2])
        {
          deploymentId = [v179 deploymentId];
          experiment7 = [(TRITargetingTask *)self experiment];
          LOBYTE(deploymentId) = deploymentId == [experiment7 deploymentId];

          if (deploymentId)
          {
            if ([(TRITargetingTask *)self _isExperimentEligibleWithArtifact:v180 context:v16])
            {
              v178 = [[TRIExperimentCovariates alloc] initWithExperimentRecord:v183];
              v36 = [TRIExperimentDependentSystemCovariates alloc];
              paths = [v16 paths];
              endDate = [v183 endDate];
              v177 = [(TRIExperimentDependentSystemCovariates *)v36 initWithPaths:paths baseSystemCovariates:v182 clientExperiment:v179 experimentEndDate:endDate];

              v204 = 0;
              v200 = 0;
              v201 = &v200;
              v202 = 0x2020000000;
              LODWORD(v36) = [v180 requiresTreatmentInstallation];
              endDate2 = [v183 endDate];
              v40 = [(TRITargetingTask *)self getTreatment:&v204 forExperiment:v179 isServerSideExperiment:v36 ^ 1 systemCovariates:v177 userCovariates:userCovariatesCopy experimentCovariates:v178 experimentEndDate:endDate2 error:error];

              v203 = v40;
              if ((v201[3] & 1) == 0)
              {
                if (*error)
                {
                  v81 = *error;
                  experiment8 = *error;
                  *error = v81;
                }

                else
                {
                  experiment8 = [(TRITargetingTask *)self experiment];
                  v86 = [(TRITargetingTask *)self _targetingErrorWithExperiment:experiment8 errorType:@"unknown targeting error"];
                  v87 = *error;
                  *error = v86;
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
              v41 = [(TRITargetingTask *)self getFactorPackSetId:&v199 forExperiment:v179 treatmentId:v204 error:error];
              *(v201 + 24) = v41;
              if (!v41)
              {
                v83 = TRILogCategory_Server();
                if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
                {
                  experimentId3 = [v179 experimentId];
                  deploymentId2 = [v179 deploymentId];
                  *buf = 138412802;
                  *&buf[4] = experimentId3;
                  *&buf[12] = 1024;
                  *&buf[14] = deploymentId2;
                  *&buf[18] = 2112;
                  *&buf[20] = v204;
                  _os_log_error_impl(&dword_26F567000, v83, OS_LOG_TYPE_ERROR, "Failed to find the factor pack set corresponding to the experiment %@.%u, treatment %@.", buf, 0x1Cu);
                }

                if (*error)
                {
                  v84 = *error;
                  experiment9 = *error;
                  *error = v84;
                }

                else
                {
                  experiment9 = [(TRITargetingTask *)self experiment];
                  v92 = [(TRITargetingTask *)self _targetingErrorWithExperiment:experiment9 errorType:@"unknown error with FPS map"];
                  v93 = *error;
                  *error = v92;
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
              networkOptions = [(TRITaskAttributing *)self->_taskAttributing networkOptions];
              allowsCellularAccess = [networkOptions allowsCellularAccess];

              if (allowsCellularAccess)
              {
                v44 = objc_autoreleasePoolPush();
                artifact2 = [v183 artifact];
                namespaces = [artifact2 namespaces];
                v196[0] = MEMORY[0x277D85DD0];
                v196[1] = 3221225472;
                v196[2] = __92__TRITargetingTask_runTaskUsingContext_withTaskQueue_systemCovariates_userCovariates_error___block_invoke_250;
                v196[3] = &unk_279DE4EE8;
                v197 = v16;
                v198 = buf;
                [namespaces enumerateObjectsUsingBlock:v196];

                objc_autoreleasePoolPop(v44);
              }

              status = [v183 status];
              if (status > 2)
              {
                if (status == 4)
                {
                  goto LABEL_74;
                }

                if (status == 3)
                {
                  v89 = TRILogCategory_Server();
                  if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
                  {
                    experiment10 = [(TRITargetingTask *)self experiment];
                    *v215 = 138543362;
                    *&v215[4] = experiment10;
                    _os_log_impl(&dword_26F567000, v89, OS_LOG_TYPE_DEFAULT, "experiment %{public}@ already finished, not running re-targeting", v215, 0xCu);
                  }

                  v91 = [TRITaskRunResult resultWithRunStatus:2 reportResultToServer:1 nextTasks:MEMORY[0x277CBEBF8] earliestRetryDate:0];
                  goto LABEL_108;
                }
              }

              else
              {
                if ((status - 1) < 2)
                {
                  experimentType = [v180 experimentType];
                  if (experimentType == 1)
                  {
                    treatmentId = [v183 treatmentId];
                    v174 = treatmentId;
                    if (v204)
                    {
                      v50 = [treatmentId isEqualToString:?];
                      v51 = TRILogCategory_Server();
                      v52 = os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT);
                      if (v50)
                      {
                        if (v52)
                        {
                          experiment11 = [(TRITargetingTask *)self experiment];
                          shortDesc = [experiment11 shortDesc];
                          *v215 = 138543362;
                          *&v215[4] = shortDesc;
                          _os_log_impl(&dword_26F567000, v51, OS_LOG_TYPE_DEFAULT, "re-targeting for experiment %{public}@ resulted in no changes", v215, 0xCu);
                        }

                        v55 = objc_opt_new();
                        v56 = v204;
                        ensureExperimentFields = [v55 ensureExperimentFields];
                        [ensureExperimentFields setClientTreatmentId:v56];

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
                        experiment12 = [(TRITargetingTask *)self experiment];
                        shortDesc2 = [experiment12 shortDesc];
                        *v215 = 138412802;
                        *&v215[4] = v174;
                        *&v215[12] = 2112;
                        *&v215[14] = v146;
                        *&v215[22] = 2114;
                        v216 = shortDesc2;
                        _os_log_impl(&dword_26F567000, v51, OS_LOG_TYPE_DEFAULT, "re-targeting with current treatment %@ resulted in treatment %@ which will be treated as a deactivation for %{public}@", v215, 0x20u);
                      }

                      experiment13 = [(TRITargetingTask *)self experiment];
                      experimentId4 = [experiment13 experimentId];
                      experiment14 = [(TRITargetingTask *)self experiment];
                      v55 = +[TRIDeactivateTreatmentTask taskWithExperimentId:deploymentId:failOnUnrecognizedExperiment:triggerEvent:taskAttribution:](TRIDeactivateTreatmentTask, "taskWithExperimentId:deploymentId:failOnUnrecognizedExperiment:triggerEvent:taskAttribution:", experimentId4, [experiment14 deploymentId], 1, 6, self->_taskAttributing);

                      experiment15 = [(TRITargetingTask *)self experiment];
                      taskTag = [experiment15 taskTag];
                      [queueCopy cancelTasksWithTag:taskTag];

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
                        experiment16 = [(TRITargetingTask *)self experiment];
                        shortDesc3 = [experiment16 shortDesc];
                        *v215 = 138543362;
                        *&v215[4] = shortDesc3;
                        _os_log_impl(&dword_26F567000, v131, OS_LOG_TYPE_DEFAULT, "re-targeting of active experiment resulted in default treatment - scheduling deactivation of experiment %{public}@", v215, 0xCu);
                      }

                      experiment17 = [(TRITargetingTask *)self experiment];
                      taskTag2 = [experiment17 taskTag];
                      [queueCopy cancelTasksWithTag:taskTag2];

                      experiment18 = [(TRITargetingTask *)self experiment];
                      experimentId5 = [experiment18 experimentId];
                      experiment19 = [(TRITargetingTask *)self experiment];
                      v55 = +[TRIDeactivateTreatmentTask taskWithExperimentId:deploymentId:failOnUnrecognizedExperiment:triggerEvent:taskAttribution:](TRIDeactivateTreatmentTask, "taskWithExperimentId:deploymentId:failOnUnrecognizedExperiment:triggerEvent:taskAttribution:", experimentId5, [experiment19 deploymentId], 1, 7, self->_taskAttributing);

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
                    experiment20 = [(TRITargetingTask *)self experiment];
                    shortDesc4 = [experiment20 shortDesc];
                    *v215 = 138543618;
                    *&v215[4] = shortDesc4;
                    *&v215[12] = 1024;
                    *&v215[14] = experimentType;
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

                if (!status)
                {
LABEL_74:
                  experimentType2 = [v180 experimentType];
                  if (!v204)
                  {
                    v126 = TRILogCategory_Server();
                    if (os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT))
                    {
                      experiment21 = [(TRITargetingTask *)self experiment];
                      v128 = [v179 description];
                      *v215 = 138543618;
                      *&v215[4] = experiment21;
                      *&v215[12] = 2114;
                      *&v215[14] = v128;
                      _os_log_impl(&dword_26F567000, v126, OS_LOG_TYPE_DEFAULT, "targeting resulted in default treatment for experiment %{public}@ (%{public}@)", v215, 0x16u);
                    }

                    *(v201 + 24) = 0;
                    experimentDatabase2 = [v16 experimentDatabase];
                    v192[0] = MEMORY[0x277D85DD0];
                    v192[1] = 3221225472;
                    v192[2] = __92__TRITargetingTask_runTaskUsingContext_withTaskQueue_systemCovariates_userCovariates_error___block_invoke_253;
                    v192[3] = &unk_279DDF9C0;
                    v193 = v16;
                    selfCopy = self;
                    v195 = &v200;
                    [experimentDatabase2 writeTransactionWithFailableBlock:v192];

                    if (v201[3])
                    {
                      v130 = 2;
                    }

                    else
                    {
                      experiment22 = [(TRITargetingTask *)self experiment];
                      v141 = [(TRITargetingTask *)self _targetingErrorWithExperiment:experiment22 errorType:@"failed to update experiment database"];
                      v142 = *error;
                      *error = v141;

                      v130 = 1;
                    }

                    v28 = [TRITaskRunResult resultWithRunStatus:v130 reportResultToServer:1 nextTasks:MEMORY[0x277CBEBF8] earliestRetryDate:0];
                    v143 = v193;
                    goto LABEL_133;
                  }

                  v100 = experimentType2;
                  v101 = TRILogCategory_Server();
                  v102 = v101;
                  if (v100 == 1)
                  {
                    if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
                    {
                      v103 = v204;
                      experiment23 = [(TRITargetingTask *)self experiment];
                      v105 = [v179 description];
                      *v215 = 138412802;
                      *&v215[4] = v103;
                      *&v215[12] = 2114;
                      *&v215[14] = experiment23;
                      *&v215[22] = 2114;
                      v216 = v105;
                      _os_log_impl(&dword_26F567000, v102, OS_LOG_TYPE_DEFAULT, "enrolling in treatment %@ of experiment %{public}@ (%{public}@)", v215, 0x20u);
                    }

                    *v215 = 0;
                    *&v215[8] = v215;
                    *&v215[16] = 0x2020000000;
                    LODWORD(v216) = -1;
                    experimentDatabase3 = [v16 experimentDatabase];
                    experiment24 = [(TRITargetingTask *)self experiment];
                    experimentId6 = [experiment24 experimentId];
                    v191[0] = MEMORY[0x277D85DD0];
                    v191[1] = 3221225472;
                    v191[2] = __92__TRITargetingTask_runTaskUsingContext_withTaskQueue_systemCovariates_userCovariates_error___block_invoke_255;
                    v191[3] = &unk_279DE19B0;
                    v191[4] = self;
                    v191[5] = v215;
                    [experimentDatabase3 enumerateExperimentRecordsMatchingExperimentId:experimentId6 block:v191];

                    if (*(*&v215[8] + 24) != -1)
                    {
                      experiment25 = [(TRITargetingTask *)self experiment];
                      experimentId7 = [experiment25 experimentId];
                      selfCopy2 = self;
                      v111 = [MEMORY[0x277CBEA60] arrayWithObjects:&selfCopy2 count:1];
                      [queueCopy cancelTasksWithTag:experimentId7 excludingTasks:v111];

                      experiment26 = [(TRITargetingTask *)self experiment];
                      experimentId8 = [experiment26 experimentId];
                      v114 = [TRIDeactivateTreatmentTask taskWithExperimentId:experimentId8 deploymentId:*(*&v215[8] + 24) failOnUnrecognizedExperiment:0 triggerEvent:11 taskAttribution:self->_taskAttributing];

                      v115 = [v114 runUsingContext:v16 withTaskQueue:queueCopy];
                      if ([v115 runStatus] != 2)
                      {
                        v116 = TRILogCategory_Server();
                        if (os_log_type_enabled(v116, OS_LOG_TYPE_ERROR))
                        {
                          experiment27 = [(TRITargetingTask *)self experiment];
                          shortDesc5 = [experiment27 shortDesc];
                          *v212 = 138543362;
                          v213 = shortDesc5;
                          _os_log_error_impl(&dword_26F567000, v116, OS_LOG_TYPE_ERROR, "Failed to deactivate one or more prior deployment(s) of experiment %{public}@, but forging boldly onward", v212, 0xCu);
                        }
                      }
                    }

                    _Block_object_dispose(v215, 8);
                    *(v201 + 24) = 0;
                    experimentDatabase4 = [v16 experimentDatabase];
                    v184[0] = MEMORY[0x277D85DD0];
                    v184[1] = 3221225472;
                    v184[2] = __92__TRITargetingTask_runTaskUsingContext_withTaskQueue_systemCovariates_userCovariates_error___block_invoke_258;
                    v184[3] = &unk_279DE1CB8;
                    v185 = v16;
                    selfCopy3 = self;
                    v187 = v204;
                    v188 = v199;
                    v189 = v183;
                    v190 = &v200;
                    [experimentDatabase4 writeTransactionWithFailableBlock:v184];

                    if (*(v201 + 24) == 1)
                    {
                      v175 = objc_opt_new();
                      v118 = v204;
                      ensureExperimentFields2 = [v175 ensureExperimentFields];
                      [ensureExperimentFields2 setClientTreatmentId:v118];

                      v120 = TRIDeploymentEnvironment_EnumDescriptor();
                      v121 = [v120 textFormatNameForValue:{objc_msgSend(v180, "deploymentEnvironment")}];

                      if (!v121)
                      {
                        v121 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%ld", objc_msgSend(v180, "deploymentEnvironment")];
                      }

                      [v175 setClientDeploymentEnv:v121];
                      if ([v179 hasStartDate])
                      {
                        startDate = [v179 startDate];
                        date = [startDate date];
                      }

                      else
                      {
                        date = 0;
                      }

                      v171 = [v180 counterfactualsTreatmentsToFactorPackSetIdsWithActiveTreatmentId:v204];
                      if (v199)
                      {
                        experiment28 = [(TRITargetingTask *)self experiment];
                        v157 = v204;
                        v158 = v199;
                        taskAttributing = self->_taskAttributing;
                        requiresTreatmentInstallation = [v180 requiresTreatmentInstallation];
                        v161 = [TRIActivateTreatmentTask taskWithExperiment:experiment28 treatmentId:v157 factorPackSetId:v158 counterfactualTreatments:v171 taskAttributing:taskAttributing requiresTreatmentInstallation:requiresTreatmentInstallation capabilityModifier:*(*&buf[8] + 40) startTime:date taskOptions:0];
                        v211 = v161;
                        [MEMORY[0x277CBEA60] arrayWithObjects:&v211 count:1];
                      }

                      else
                      {
                        experiment28 = [(TRITargetingTask *)self experiment];
                        v162 = v204;
                        v163 = self->_taskAttributing;
                        requiresTreatmentInstallation2 = [v180 requiresTreatmentInstallation];
                        v161 = [TRIActivateTreatmentTask taskWithExperiment:experiment28 treatmentId:v162 taskAttributing:v163 requiresTreatmentInstallation:requiresTreatmentInstallation2 capabilityModifier:*(*&buf[8] + 40) startTime:date taskOptions:0];
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
                      experiment29 = [(TRITargetingTask *)self experiment];
                      v155 = [(TRITargetingTask *)self _targetingErrorWithExperiment:experiment29 errorType:@"failed update database"];
                      v156 = *error;
                      *error = v155;

                      v28 = [TRITaskRunResult resultWithRunStatus:1 reportResultToServer:1 nextTasks:MEMORY[0x277CBEBF8] earliestRetryDate:0];
                    }

                    v143 = v185;
                    goto LABEL_133;
                  }

                  if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
                  {
                    experiment30 = [(TRITargetingTask *)self experiment];
                    *v215 = 138543362;
                    *&v215[4] = experiment30;
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
              experiment31 = [(TRITargetingTask *)self experiment];
              *buf = 138543362;
              *&buf[4] = experiment31;
              _os_log_impl(&dword_26F567000, v73, OS_LOG_TYPE_DEFAULT, "Marking experiment:%{public}@ as ineligible", buf, 0xCu);
            }

            experimentDatabase5 = [v16 experimentDatabase];
            experiment32 = [(TRITargetingTask *)self experiment];
            v77 = [experimentDatabase5 setStatus:4 forExperimentDeployment:experiment32 usingTransaction:0];

            if (v77)
            {
              [TRITaskRunResult resultWithRunStatus:2 reportResultToServer:1 nextTasks:MEMORY[0x277CBEBF8] earliestRetryDate:0];
            }

            else
            {
              experiment33 = [(TRITargetingTask *)self experiment];
              v79 = [(TRITargetingTask *)self _targetingErrorWithExperiment:experiment33 errorType:@"failed to update experiment database"];
              v80 = *error;
              *error = v79;

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

        experiment34 = [(TRITargetingTask *)self experiment];
        v71 = [(TRITargetingTask *)self _targetingErrorWithExperiment:experiment34 errorType:@"loaded artifact with wrong experiment deployment"];
        v72 = *error;
        *error = v71;

        v69 = (v17)[2](v17, @"encoded-experiment-mismatches-record", @"unspecified-or-default-treatment", v183);
        goto LABEL_40;
      }

      experiment35 = [(TRITargetingTask *)self experiment];
      v67 = [(TRITargetingTask *)self _targetingErrorWithExperiment:experiment35 errorType:@"decoded experiment definition is nil"];
      v68 = *error;
      *error = v67;

      v69 = (v17)[2](v17, @"decoded-experiment-is-nil", @"unspecified-or-default-treatment", v183);
      goto LABEL_40;
    }
  }

  experiment36 = [(TRITargetingTask *)self experiment];
  v62 = [(TRITargetingTask *)self _targetingErrorWithExperiment:experiment36 errorType:@"experiment record not found"];
  v63 = *error;
  *error = v62;

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

- (id)runUsingContext:(id)context withTaskQueue:(id)queue
{
  queueCopy = queue;
  contextCopy = context;
  paths = [contextCopy paths];
  v9 = [(TRITargetingTask *)self systemCovariatesWithPaths:paths];

  v10 = [[TRIUserCovariates alloc] initWithContext:contextCopy];
  v23 = 0;
  v11 = [(TRITargetingTask *)self runTaskUsingContext:contextCopy withTaskQueue:queueCopy systemCovariates:v9 userCovariates:v10 error:&v23];

  runStatus = [v11 runStatus];
  v13 = 0;
  if (runStatus != 2 || v23 != 0)
  {
    v15 = @"unknown";
    if (v23)
    {
      userInfo = [v23 userInfo];
      v17 = [userInfo objectForKeyedSubscript:@"logMessage"];
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
  experiment = [(TRITargetingTask *)self experiment];
  experimentId = [experiment experimentId];
  [v3 setExperimentId:experimentId];

  experiment2 = [(TRITargetingTask *)self experiment];
  [v3 setDeploymentId:{objc_msgSend(experiment2, "deploymentId")}];

  [v3 setIncludeDependencies:self->_includeDependencies];
  asPersistedTaskAttribution = [(TRITaskAttributing *)self->_taskAttributing asPersistedTaskAttribution];
  [v3 setTaskAttribution:asPersistedTaskAttribution];

  [v3 setRetryCount:{-[TRITargetingTask retryCount](self, "retryCount")}];

  return v3;
}

- (id)serialize
{
  _asPersistedTask = [(TRITargetingTask *)self _asPersistedTask];
  data = [_asPersistedTask data];

  if (!data)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRITargetingTask.m" lineNumber:863 description:{@"Unexpected failure to serialize %@", v9}];
  }

  return data;
}

+ (id)parseFromData:(id)data
{
  v29 = *MEMORY[0x277D85DE8];
  v26 = 0;
  v3 = [(TRIPBMessage *)TRITargetingPersistedTask parseFromData:data error:&v26];
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

  experimentId = [v3 experimentId];
  v6 = [experimentId length];

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

  taskAttribution = [v3 taskAttribution];
  v8 = [TRITaskAttributionInternalInsecure taskAttributionFromPersistedTask:taskAttribution];

  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x277D736C0]);
    experimentId2 = [v3 experimentId];
    v11 = [v9 initWithExperimentId:experimentId2 deploymentId:{objc_msgSend(v3, "deploymentId")}];

    v12 = [objc_opt_class() taskWithExperiment:v11 includeDependencies:objc_msgSend(v3 taskAttribution:{"includeDependencies"), v8}];
    if ([v3 hasRetryCount])
    {
      retryCount = [v3 retryCount];
    }

    else
    {
      retryCount = 0;
    }

    [v12 setRetryCount:retryCount];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v10.receiver = self;
  v10.super_class = TRITargetingTask;
  if ([(TRIBaseTask *)&v10 isEqual:equalCopy])
  {
    v5 = equalCopy;
    experiment = [(TRITargetingTask *)self experiment];
    experiment2 = [v5 experiment];

    v8 = [experiment isEqualToDeployment:experiment2];
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
  experiment = [(TRITargetingTask *)self experiment];
  experimentId = [experiment experimentId];
  if (experimentId)
  {
    experiment2 = [(TRITargetingTask *)self experiment];
    experimentId2 = [experiment2 experimentId];
    v8 = [experimentId2 hash];
  }

  else
  {
    v8 = 0;
  }

  experiment3 = [(TRITargetingTask *)self experiment];
  if ([experiment3 hasDeploymentId])
  {
    experiment4 = [(TRITargetingTask *)self experiment];
    deploymentId = [experiment4 deploymentId];
  }

  else
  {
    deploymentId = -2;
  }

  return deploymentId + 37 * (v8 + 37 * v3);
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  experiment = [(TRITargetingTask *)self experiment];
  shortDesc = [experiment shortDesc];
  v7 = [v3 stringWithFormat:@"<%@:%@, r:%d>", v4, shortDesc, -[TRITargetingTask retryCount](self, "retryCount")];

  return v7;
}

- (TRITargetingTask)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = TRITargetingTask;
  v5 = [(TRITargetingTask *)&v9 init];
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
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRITargetingTask.m" lineNumber:924 description:{@"Don't use NSSecureCoding to persist tasks to disk, use -[TRITask serialize]."}];
  }

  serialize = [(TRITargetingTask *)self serialize];
  [coderCopy encodeObject:serialize forKey:@"pb"];
}

@end