@interface TRIRolloutTargetingOperation
- (BOOL)_targetRolloutDeployment:(id)deployment appendingTelemetryToSupport:(id)support reportTelemetryToServer:(BOOL *)server factorPackSetIdToActivate:(id *)activate shouldDisenroll:(BOOL *)disenroll error:(id *)error;
- (BOOL)targetRolloutDeployment:(id)deployment appendingTelemetryToSupport:(id)support reportTelemetryToServer:(BOOL *)server factorPackSetIdToActivate:(id *)activate shouldDisenroll:(BOOL *)disenroll error:(id *)error;
- (TRIRolloutTargetingOperation)initWithRolloutTargeter:(id)targeter rolloutDatabase:(id)database context:(id)context;
@end

@implementation TRIRolloutTargetingOperation

- (TRIRolloutTargetingOperation)initWithRolloutTargeter:(id)targeter rolloutDatabase:(id)database context:(id)context
{
  targeterCopy = targeter;
  databaseCopy = database;
  contextCopy = context;
  v15.receiver = self;
  v15.super_class = TRIRolloutTargetingOperation;
  v12 = [(TRIRolloutTargetingOperation *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_targeter, targeter);
    objc_storeStrong(&v13->_rolloutDatabase, database);
    objc_storeStrong(&v13->_context, context);
  }

  return v13;
}

- (BOOL)targetRolloutDeployment:(id)deployment appendingTelemetryToSupport:(id)support reportTelemetryToServer:(BOOL *)server factorPackSetIdToActivate:(id *)activate shouldDisenroll:(BOOL *)disenroll error:(id *)error
{
  deploymentCopy = deployment;
  supportCopy = support;
  v16 = objc_autoreleasePoolPush();
  v17 = [(TRIRolloutTargetingOperation *)self _targetRolloutDeployment:deploymentCopy appendingTelemetryToSupport:supportCopy reportTelemetryToServer:server factorPackSetIdToActivate:activate shouldDisenroll:disenroll error:error];
  if (*error)
  {
    userInfo = [*error userInfo];
    v19 = [userInfo objectForKeyedSubscript:@"logMessage"];
    v20 = v19;
    v21 = @"unknown";
    if (v19)
    {
      v21 = v19;
    }

    v22 = v21;

    v23 = [MEMORY[0x277D73B40] metricWithName:@"targeting_error" categoricalValue:v22];

    [supportCopy addMetric:v23];
  }

  objc_autoreleasePoolPop(v16);

  return v17;
}

- (BOOL)_targetRolloutDeployment:(id)deployment appendingTelemetryToSupport:(id)support reportTelemetryToServer:(BOOL *)server factorPackSetIdToActivate:(id *)activate shouldDisenroll:(BOOL *)disenroll error:(id *)error
{
  v91 = *MEMORY[0x277D85DE8];
  deploymentCopy = deployment;
  supportCopy = support;
  v17 = supportCopy;
  if (deploymentCopy)
  {
    if (supportCopy)
    {
      goto LABEL_3;
    }

LABEL_64:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIRolloutTargetingOperation.m" lineNumber:79 description:{@"Invalid parameter not satisfying: %@", @"support != nil"}];

    if (server)
    {
      goto LABEL_4;
    }

    goto LABEL_65;
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIRolloutTargetingOperation.m" lineNumber:78 description:{@"Invalid parameter not satisfying: %@", @"deployment != nil"}];

  if (!v17)
  {
    goto LABEL_64;
  }

LABEL_3:
  if (server)
  {
    goto LABEL_4;
  }

LABEL_65:
  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"TRIRolloutTargetingOperation.m" lineNumber:80 description:{@"Invalid parameter not satisfying: %@", @"reportTelemetryToServer != nil"}];

LABEL_4:
  *server = 1;
  if (!activate)
  {
    currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler4 handleFailureInMethod:a2 object:self file:@"TRIRolloutTargetingOperation.m" lineNumber:82 description:{@"Invalid parameter not satisfying: %@", @"factorPackSetIdToActivate != nil"}];
  }

  v18 = *activate;
  *activate = 0;

  if (!disenroll)
  {
    currentHandler5 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler5 handleFailureInMethod:a2 object:self file:@"TRIRolloutTargetingOperation.m" lineNumber:84 description:{@"Invalid parameter not satisfying: %@", @"shouldDisenroll != NULL"}];
  }

  v82 = v17;
  *disenroll = 0;
  if (!error)
  {
    currentHandler6 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler6 handleFailureInMethod:a2 object:self file:@"TRIRolloutTargetingOperation.m" lineNumber:86 description:{@"Invalid parameter not satisfying: %@", @"error != nil"}];
  }

  rolloutDatabase = [(TRIRolloutTargetingOperation *)self rolloutDatabase];
  v20 = [rolloutDatabase recordWithDeployment:deploymentCopy usingTransaction:0];

  if (v20)
  {
    artifact = [v20 artifact];
    rollout = [artifact rollout];

    v84 = 0;
    targeter = [(TRIRolloutTargetingOperation *)self targeter];
    v81 = rollout;
    v24 = [targeter targetRollout:rollout factorPackSetId:&v84 relatedRampDeployment:0 error:error];

    if (v24 <= 1u)
    {
      if (!v24)
      {
        v30 = 0;
        v52 = v81;
        v17 = v82;
LABEL_61:

        goto LABEL_62;
      }

      if (v24 == 1)
      {
        if (!v84)
        {
          currentHandler7 = [MEMORY[0x277CCA890] currentHandler];
          [currentHandler7 handleFailureInMethod:a2 object:self file:@"TRIRolloutTargetingOperation.m" lineNumber:104 description:{@"Invalid parameter not satisfying: %@", @"assignedFactorPackSetId"}];
        }

        v26 = objc_opt_new();
        ident = [(__CFString *)v84 ident];
        v32 = loggableFactorPackSetIdFromFactorPackSetId(ident);
        ensureRolloutFields = [v26 ensureRolloutFields];
        [ensureRolloutFields setClientFactorPackSetId:v32];

        if (([(__CFString *)v84 targetingRuleIndex]& 0x80000000) != 0)
        {
          goto LABEL_22;
        }

        targetingRuleIndex = [(__CFString *)v84 targetingRuleIndex];
        ensureRolloutFields2 = [v26 ensureRolloutFields];
        [ensureRolloutFields2 setClientTargetingRuleGroupOrdinal:targetingRuleIndex];
LABEL_21:

LABEL_22:
        [v82 mergeTelemetry:v26];
      }
    }

    else
    {
      if (v24 - 2 < 2)
      {
        v25 = v84;
        v84 = 0;

        v26 = objc_opt_new();
        ensureRolloutFields2 = [v26 ensureRolloutFields];
        [ensureRolloutFields2 setClientFactorPackSetId:@"no-op"];
        goto LABEL_21;
      }

      if (v24 == 4)
      {
        v30 = 1;
        *disenroll = 1;
        v38 = objc_opt_new();
        ensureRolloutFields3 = [(__CFString *)v38 ensureRolloutFields];
        [ensureRolloutFields3 setClientFactorPackSetId:@"disenroll"];

        v17 = v82;
        [v82 mergeTelemetry:v38];
        v52 = v81;
        goto LABEL_60;
      }
    }

    activeFactorPackSetId = [v20 activeFactorPackSetId];
    v36 = @"(Retargeting) ";
    if (!activeFactorPackSetId)
    {
      targetedFactorPackSetId = [v20 targetedFactorPackSetId];
      if (!targetedFactorPackSetId)
      {
        v36 = &stru_287FA0430;
      }
    }

    v38 = v36;
    if (v84)
    {
      v39 = TRILogCategory_Server();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v40 = v84;
        shortDesc = [deploymentCopy shortDesc];
        *buf = 138543874;
        v86 = v38;
        v87 = 2114;
        v88 = v40;
        v89 = 2114;
        v90 = shortDesc;
        v42 = "%{public}@Enrolling in factor pack set id %{public}@ for rollout %{public}@";
        v43 = v39;
        v44 = 32;
LABEL_32:
        _os_log_impl(&dword_26F567000, v43, OS_LOG_TYPE_DEFAULT, v42, buf, v44);
      }
    }

    else
    {
      *server = 0;
      v39 = TRILogCategory_Server();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        shortDesc = [deploymentCopy shortDesc];
        *buf = 138543618;
        v86 = v38;
        v87 = 2114;
        v88 = shortDesc;
        v42 = "%{public}@Targeting resulted in the default treatment (non-enrollment) for rollout %{public}@";
        v43 = v39;
        v44 = 22;
        goto LABEL_32;
      }
    }

    if (v84)
    {
      targetedFactorPackSetId2 = [v20 targetedFactorPackSetId];

      v80 = v38;
      if (targetedFactorPackSetId2)
      {
        ident2 = [(__CFString *)v84 ident];
        targetedFactorPackSetId3 = [v20 targetedFactorPackSetId];
        v48 = [ident2 isEqualToString:targetedFactorPackSetId3];

        v49 = TRILogCategory_Server();
        v50 = os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT);
        if (v48)
        {
          if (v50)
          {
            *buf = 0;
            v51 = "Retargeting resulted in no change to the targetedFactorPackSetId.";
LABEL_46:
            _os_log_impl(&dword_26F567000, v49, OS_LOG_TYPE_DEFAULT, v51, buf, 2u);
            goto LABEL_47;
          }

          goto LABEL_47;
        }

        if (v50)
        {
          targetedFactorPackSetId4 = [v20 targetedFactorPackSetId];
          *buf = 138543618;
          v86 = targetedFactorPackSetId4;
          v87 = 2114;
          v88 = v84;
          v60 = "Retargeting resulted in targetedFactorPackSetId change: %{public}@ --> %{public}@";
LABEL_52:
          _os_log_impl(&dword_26F567000, v49, OS_LOG_TYPE_DEFAULT, v60, buf, 0x16u);
        }
      }

      else
      {
        activeFactorPackSetId2 = [v20 activeFactorPackSetId];

        if (!activeFactorPackSetId2)
        {
          goto LABEL_54;
        }

        ident3 = [(__CFString *)v84 ident];
        activeFactorPackSetId3 = [v20 activeFactorPackSetId];
        v57 = [ident3 isEqualToString:activeFactorPackSetId3];

        v49 = TRILogCategory_Server();
        v58 = os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT);
        if (v57)
        {
          if (v58)
          {
            *buf = 0;
            v51 = "Retargeting resulted in no change to the activeFactorPackSetId. Still attempting activation";
            goto LABEL_46;
          }

LABEL_47:

          *server = 0;
          goto LABEL_54;
        }

        if (v58)
        {
          v61 = v84;
          targetedFactorPackSetId4 = [v20 activeFactorPackSetId];
          *buf = 138543618;
          v86 = v61;
          v87 = 2114;
          v88 = targetedFactorPackSetId4;
          v60 = "Retargeting result: targeted %{public}@, previously active: %{public}@";
          goto LABEL_52;
        }
      }

LABEL_54:
      v62 = objc_opt_new();
      rolloutDatabase2 = [(TRIRolloutTargetingOperation *)self rolloutDatabase];
      ident4 = [(__CFString *)v84 ident];
      if (([(__CFString *)v84 targetingRuleIndex]& 0x80000000) != 0)
      {
        v69 = [rolloutDatabase2 targetDeployment:deploymentCopy toFactorPackSetId:ident4 targetingRuleIndex:0 deallocatedDeployments:v62 usingTransaction:0];

        if (v69)
        {
          goto LABEL_56;
        }
      }

      else
      {
        v65 = [MEMORY[0x277CCABB0] numberWithInt:{-[__CFString targetingRuleIndex](v84, "targetingRuleIndex")}];
        v66 = [rolloutDatabase2 targetDeployment:deploymentCopy toFactorPackSetId:ident4 targetingRuleIndex:v65 deallocatedDeployments:v62 usingTransaction:0];

        if (v66)
        {
LABEL_56:
          v83[0] = MEMORY[0x277D85DD0];
          v83[1] = 3221225472;
          v83[2] = __157__TRIRolloutTargetingOperation__targetRolloutDeployment_appendingTelemetryToSupport_reportTelemetryToServer_factorPackSetIdToActivate_shouldDisenroll_error___block_invoke;
          v83[3] = &unk_279DE3A50;
          v83[4] = self;
          [v62 enumerateObjectsUsingBlock:v83];
          v67 = v84;
          v68 = *activate;
          *activate = v67;
          v30 = 1;
LABEL_59:
          v52 = v81;

          v17 = v82;
          v38 = v80;
          goto LABEL_60;
        }
      }

      v70 = [TRIRolloutTargeter targetingErrorWithDeployment:deploymentCopy errorType:@"failed update database"];
      v30 = 0;
      v68 = *error;
      *error = v70;
      goto LABEL_59;
    }

    v30 = 1;
    v52 = v81;
    v17 = v82;
LABEL_60:

    goto LABEL_61;
  }

  v28 = [TRIRolloutTargeter targetingErrorWithDeployment:deploymentCopy errorType:@"rollout artifact not found"];
  v29 = *error;
  *error = v28;

  v30 = 0;
LABEL_62:

  v71 = *MEMORY[0x277D85DE8];
  return v30;
}

void __157__TRIRolloutTargetingOperation__targetRolloutDeployment_appendingTelemetryToSupport_reportTelemetryToServer_factorPackSetIdToActivate_shouldDisenroll_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v11 = [v3 deployment];
  v4 = [v11 rolloutId];
  v5 = [v3 rampId];
  v6 = [v3 deployment];
  v7 = [v6 deploymentId];
  v8 = [v3 targetedFactorPackSetId];
  v9 = [v3 namespaces];

  LOBYTE(v10) = 1;
  [TRITaskUtils updateRolloutHistoryDatabaseWithAllocationStatus:4 forRollout:v4 ramp:v5 deployment:v7 fps:v8 namespaces:v9 telemetryMetric:0 rolloutRecord:0 isBecomingObsolete:v10 context:*(*(a1 + 32) + 24)];
}

@end