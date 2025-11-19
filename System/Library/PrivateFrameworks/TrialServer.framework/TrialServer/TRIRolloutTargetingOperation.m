@interface TRIRolloutTargetingOperation
- (BOOL)_targetRolloutDeployment:(id)a3 appendingTelemetryToSupport:(id)a4 reportTelemetryToServer:(BOOL *)a5 factorPackSetIdToActivate:(id *)a6 shouldDisenroll:(BOOL *)a7 error:(id *)a8;
- (BOOL)targetRolloutDeployment:(id)a3 appendingTelemetryToSupport:(id)a4 reportTelemetryToServer:(BOOL *)a5 factorPackSetIdToActivate:(id *)a6 shouldDisenroll:(BOOL *)a7 error:(id *)a8;
- (TRIRolloutTargetingOperation)initWithRolloutTargeter:(id)a3 rolloutDatabase:(id)a4 context:(id)a5;
@end

@implementation TRIRolloutTargetingOperation

- (TRIRolloutTargetingOperation)initWithRolloutTargeter:(id)a3 rolloutDatabase:(id)a4 context:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = TRIRolloutTargetingOperation;
  v12 = [(TRIRolloutTargetingOperation *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_targeter, a3);
    objc_storeStrong(&v13->_rolloutDatabase, a4);
    objc_storeStrong(&v13->_context, a5);
  }

  return v13;
}

- (BOOL)targetRolloutDeployment:(id)a3 appendingTelemetryToSupport:(id)a4 reportTelemetryToServer:(BOOL *)a5 factorPackSetIdToActivate:(id *)a6 shouldDisenroll:(BOOL *)a7 error:(id *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = objc_autoreleasePoolPush();
  v17 = [(TRIRolloutTargetingOperation *)self _targetRolloutDeployment:v14 appendingTelemetryToSupport:v15 reportTelemetryToServer:a5 factorPackSetIdToActivate:a6 shouldDisenroll:a7 error:a8];
  if (*a8)
  {
    v18 = [*a8 userInfo];
    v19 = [v18 objectForKeyedSubscript:@"logMessage"];
    v20 = v19;
    v21 = @"unknown";
    if (v19)
    {
      v21 = v19;
    }

    v22 = v21;

    v23 = [MEMORY[0x277D73B40] metricWithName:@"targeting_error" categoricalValue:v22];

    [v15 addMetric:v23];
  }

  objc_autoreleasePoolPop(v16);

  return v17;
}

- (BOOL)_targetRolloutDeployment:(id)a3 appendingTelemetryToSupport:(id)a4 reportTelemetryToServer:(BOOL *)a5 factorPackSetIdToActivate:(id *)a6 shouldDisenroll:(BOOL *)a7 error:(id *)a8
{
  v91 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v17 = v16;
  if (v15)
  {
    if (v16)
    {
      goto LABEL_3;
    }

LABEL_64:
    v74 = [MEMORY[0x277CCA890] currentHandler];
    [v74 handleFailureInMethod:a2 object:self file:@"TRIRolloutTargetingOperation.m" lineNumber:79 description:{@"Invalid parameter not satisfying: %@", @"support != nil"}];

    if (a5)
    {
      goto LABEL_4;
    }

    goto LABEL_65;
  }

  v73 = [MEMORY[0x277CCA890] currentHandler];
  [v73 handleFailureInMethod:a2 object:self file:@"TRIRolloutTargetingOperation.m" lineNumber:78 description:{@"Invalid parameter not satisfying: %@", @"deployment != nil"}];

  if (!v17)
  {
    goto LABEL_64;
  }

LABEL_3:
  if (a5)
  {
    goto LABEL_4;
  }

LABEL_65:
  v75 = [MEMORY[0x277CCA890] currentHandler];
  [v75 handleFailureInMethod:a2 object:self file:@"TRIRolloutTargetingOperation.m" lineNumber:80 description:{@"Invalid parameter not satisfying: %@", @"reportTelemetryToServer != nil"}];

LABEL_4:
  *a5 = 1;
  if (!a6)
  {
    v76 = [MEMORY[0x277CCA890] currentHandler];
    [v76 handleFailureInMethod:a2 object:self file:@"TRIRolloutTargetingOperation.m" lineNumber:82 description:{@"Invalid parameter not satisfying: %@", @"factorPackSetIdToActivate != nil"}];
  }

  v18 = *a6;
  *a6 = 0;

  if (!a7)
  {
    v77 = [MEMORY[0x277CCA890] currentHandler];
    [v77 handleFailureInMethod:a2 object:self file:@"TRIRolloutTargetingOperation.m" lineNumber:84 description:{@"Invalid parameter not satisfying: %@", @"shouldDisenroll != NULL"}];
  }

  v82 = v17;
  *a7 = 0;
  if (!a8)
  {
    v78 = [MEMORY[0x277CCA890] currentHandler];
    [v78 handleFailureInMethod:a2 object:self file:@"TRIRolloutTargetingOperation.m" lineNumber:86 description:{@"Invalid parameter not satisfying: %@", @"error != nil"}];
  }

  v19 = [(TRIRolloutTargetingOperation *)self rolloutDatabase];
  v20 = [v19 recordWithDeployment:v15 usingTransaction:0];

  if (v20)
  {
    v21 = [v20 artifact];
    v22 = [v21 rollout];

    v84 = 0;
    v23 = [(TRIRolloutTargetingOperation *)self targeter];
    v81 = v22;
    v24 = [v23 targetRollout:v22 factorPackSetId:&v84 relatedRampDeployment:0 error:a8];

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
          v79 = [MEMORY[0x277CCA890] currentHandler];
          [v79 handleFailureInMethod:a2 object:self file:@"TRIRolloutTargetingOperation.m" lineNumber:104 description:{@"Invalid parameter not satisfying: %@", @"assignedFactorPackSetId"}];
        }

        v26 = objc_opt_new();
        v31 = [(__CFString *)v84 ident];
        v32 = loggableFactorPackSetIdFromFactorPackSetId(v31);
        v33 = [v26 ensureRolloutFields];
        [v33 setClientFactorPackSetId:v32];

        if (([(__CFString *)v84 targetingRuleIndex]& 0x80000000) != 0)
        {
          goto LABEL_22;
        }

        v34 = [(__CFString *)v84 targetingRuleIndex];
        v27 = [v26 ensureRolloutFields];
        [v27 setClientTargetingRuleGroupOrdinal:v34];
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
        v27 = [v26 ensureRolloutFields];
        [v27 setClientFactorPackSetId:@"no-op"];
        goto LABEL_21;
      }

      if (v24 == 4)
      {
        v30 = 1;
        *a7 = 1;
        v38 = objc_opt_new();
        v53 = [(__CFString *)v38 ensureRolloutFields];
        [v53 setClientFactorPackSetId:@"disenroll"];

        v17 = v82;
        [v82 mergeTelemetry:v38];
        v52 = v81;
        goto LABEL_60;
      }
    }

    v35 = [v20 activeFactorPackSetId];
    v36 = @"(Retargeting) ";
    if (!v35)
    {
      v37 = [v20 targetedFactorPackSetId];
      if (!v37)
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
        v41 = [v15 shortDesc];
        *buf = 138543874;
        v86 = v38;
        v87 = 2114;
        v88 = v40;
        v89 = 2114;
        v90 = v41;
        v42 = "%{public}@Enrolling in factor pack set id %{public}@ for rollout %{public}@";
        v43 = v39;
        v44 = 32;
LABEL_32:
        _os_log_impl(&dword_26F567000, v43, OS_LOG_TYPE_DEFAULT, v42, buf, v44);
      }
    }

    else
    {
      *a5 = 0;
      v39 = TRILogCategory_Server();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v41 = [v15 shortDesc];
        *buf = 138543618;
        v86 = v38;
        v87 = 2114;
        v88 = v41;
        v42 = "%{public}@Targeting resulted in the default treatment (non-enrollment) for rollout %{public}@";
        v43 = v39;
        v44 = 22;
        goto LABEL_32;
      }
    }

    if (v84)
    {
      v45 = [v20 targetedFactorPackSetId];

      v80 = v38;
      if (v45)
      {
        v46 = [(__CFString *)v84 ident];
        v47 = [v20 targetedFactorPackSetId];
        v48 = [v46 isEqualToString:v47];

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
          v59 = [v20 targetedFactorPackSetId];
          *buf = 138543618;
          v86 = v59;
          v87 = 2114;
          v88 = v84;
          v60 = "Retargeting resulted in targetedFactorPackSetId change: %{public}@ --> %{public}@";
LABEL_52:
          _os_log_impl(&dword_26F567000, v49, OS_LOG_TYPE_DEFAULT, v60, buf, 0x16u);
        }
      }

      else
      {
        v54 = [v20 activeFactorPackSetId];

        if (!v54)
        {
          goto LABEL_54;
        }

        v55 = [(__CFString *)v84 ident];
        v56 = [v20 activeFactorPackSetId];
        v57 = [v55 isEqualToString:v56];

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

          *a5 = 0;
          goto LABEL_54;
        }

        if (v58)
        {
          v61 = v84;
          v59 = [v20 activeFactorPackSetId];
          *buf = 138543618;
          v86 = v61;
          v87 = 2114;
          v88 = v59;
          v60 = "Retargeting result: targeted %{public}@, previously active: %{public}@";
          goto LABEL_52;
        }
      }

LABEL_54:
      v62 = objc_opt_new();
      v63 = [(TRIRolloutTargetingOperation *)self rolloutDatabase];
      v64 = [(__CFString *)v84 ident];
      if (([(__CFString *)v84 targetingRuleIndex]& 0x80000000) != 0)
      {
        v69 = [v63 targetDeployment:v15 toFactorPackSetId:v64 targetingRuleIndex:0 deallocatedDeployments:v62 usingTransaction:0];

        if (v69)
        {
          goto LABEL_56;
        }
      }

      else
      {
        v65 = [MEMORY[0x277CCABB0] numberWithInt:{-[__CFString targetingRuleIndex](v84, "targetingRuleIndex")}];
        v66 = [v63 targetDeployment:v15 toFactorPackSetId:v64 targetingRuleIndex:v65 deallocatedDeployments:v62 usingTransaction:0];

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
          v68 = *a6;
          *a6 = v67;
          v30 = 1;
LABEL_59:
          v52 = v81;

          v17 = v82;
          v38 = v80;
          goto LABEL_60;
        }
      }

      v70 = [TRIRolloutTargeter targetingErrorWithDeployment:v15 errorType:@"failed update database"];
      v30 = 0;
      v68 = *a8;
      *a8 = v70;
      goto LABEL_59;
    }

    v30 = 1;
    v52 = v81;
    v17 = v82;
LABEL_60:

    goto LABEL_61;
  }

  v28 = [TRIRolloutTargeter targetingErrorWithDeployment:v15 errorType:@"rollout artifact not found"];
  v29 = *a8;
  *a8 = v28;

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