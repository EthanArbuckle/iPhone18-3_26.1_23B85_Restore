@interface TRIExperimentPostLaunchEvent
+ (id)activatedEventWithExperimentRecord:(id)a3;
+ (id)deactivationEventWithTriggerEvent:(unint64_t)a3 experimentRecord:(id)a4 additionalTelemetry:(id)a5;
+ (id)fetchedEventWithExperimentRecord:(id)a3;
+ (id)obsoletionOrDeactivationEventWithTriggerEvent:(unint64_t)a3 previousStateProvider:(id)a4 experimentRecord:(id)a5 additionalTelemetry:(id)a6;
- (TRIExperimentPostLaunchEvent)initWithEventType:(unsigned __int8)a3 experimentStateName:(id)a4 experimentRecord:(id)a5 errorOrDeactivationReason:(id)a6 telemetry:(id)a7;
- (TRIExperimentPostLaunchEvent)initWithEventType:(unsigned __int8)a3 experimentStateName:(id)a4 treatmentTriple:(id)a5 errorOrDeactivationReason:(id)a6 deploymentEnvironment:(int)a7 versionedNamespaces:(id)a8 telemetry:(id)a9;
- (id)experimentRecord;
@end

@implementation TRIExperimentPostLaunchEvent

- (id)experimentRecord
{
  v3 = [(TRIExperimentPostLaunchEvent *)self treatmentTriple];
  v4 = [v3 experimentId];

  v5 = [(TRIExperimentPostLaunchEvent *)self treatmentTriple];
  v6 = [v5 deploymentId];

  v7 = [(TRIExperimentPostLaunchEvent *)self treatmentTriple];
  v8 = [v7 treatmentId];

  v9 = MEMORY[0x277D736C8];
  v10 = objc_opt_new();
  v11 = [(TRIExperimentPostLaunchEvent *)self eventType];
  v12 = [(TRIExperimentPostLaunchEvent *)self deploymentEnvironment];
  v13 = [(TRIExperimentPostLaunchEvent *)self errorOrDeactivationReason];
  v14 = [(TRIExperimentPostLaunchEvent *)self versionedNamespaces];
  v15 = [v9 recordWithEventDate:v10 eventType:v11 deploymentEnvironment:v12 experimentId:v4 deploymentId:v6 treatmentId:v8 errorOrDeactivationReason:v13 namespaces:v14];

  return v15;
}

- (TRIExperimentPostLaunchEvent)initWithEventType:(unsigned __int8)a3 experimentStateName:(id)a4 treatmentTriple:(id)a5 errorOrDeactivationReason:(id)a6 deploymentEnvironment:(int)a7 versionedNamespaces:(id)a8 telemetry:(id)a9
{
  v25 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a8;
  v17 = a9;
  if (!v14)
  {
    v21 = [MEMORY[0x277CCA890] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"TRIExperimentPostLaunchEvent.m" lineNumber:62 description:{@"Invalid parameter not satisfying: %@", @"treatmentTriple"}];
  }

  v26.receiver = self;
  v26.super_class = TRIExperimentPostLaunchEvent;
  v18 = [(TRIExperimentPostLaunchEvent *)&v26 init];
  v19 = v18;
  if (v18)
  {
    v18->_eventType = a3;
    objc_storeStrong(&v18->_experimentStateName, a4);
    objc_storeStrong(&v19->_treatmentTriple, a5);
    objc_storeStrong(&v19->_errorOrDeactivationReason, a6);
    v19->_deploymentEnvironment = a7;
    objc_storeStrong(&v19->_versionedNamespaces, a8);
    objc_storeStrong(&v19->_additionalTelemetry, a9);
  }

  return v19;
}

- (TRIExperimentPostLaunchEvent)initWithEventType:(unsigned __int8)a3 experimentStateName:(id)a4 experimentRecord:(id)a5 errorOrDeactivationReason:(id)a6 telemetry:(id)a7
{
  v27 = a3;
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = [v13 treatmentId];
  v16 = v15;
  v17 = @"unspecified-or-default-treatment";
  if (v15)
  {
    v17 = v15;
  }

  v18 = v17;

  v19 = [v13 experimentDeployment];
  v20 = [v19 experimentId];
  v21 = [v13 experimentDeployment];
  v22 = +[TRIExperimentDeploymentTreatment treatmentTripleWithExperimentId:deploymentId:treatmentId:](TRIExperimentDeploymentTreatment, "treatmentTripleWithExperimentId:deploymentId:treatmentId:", v20, [v21 deploymentId], v18);

  v23 = [v13 deploymentEnvironment];
  v24 = [v13 versionedNamespaces];

  v25 = [(TRIExperimentPostLaunchEvent *)self initWithEventType:v27 experimentStateName:v14 treatmentTriple:v22 errorOrDeactivationReason:v12 deploymentEnvironment:v23 versionedNamespaces:v24 telemetry:v11];
  return v25;
}

+ (id)activatedEventWithExperimentRecord:(id)a3
{
  v5 = [TRIExperimentPostLaunchEvent eventWithEventType:2 experimentRecord:a3];
  if (!v5)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:a2 object:a1 file:@"TRIExperimentPostLaunchEvent.m" lineNumber:169 description:{@"Expression was unexpectedly nil/false: %@", @"[TRIExperimentPostLaunchEvent eventWithEventType:TRIInternalExperimentAllocationStatusTypeActivatedTreatment experimentRecord:record]"}];
  }

  return v5;
}

+ (id)fetchedEventWithExperimentRecord:(id)a3
{
  v5 = [TRIExperimentPostLaunchEvent eventWithEventType:4 experimentRecord:a3];
  if (!v5)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:a2 object:a1 file:@"TRIExperimentPostLaunchEvent.m" lineNumber:173 description:{@"Expression was unexpectedly nil/false: %@", @"[TRIExperimentPostLaunchEvent eventWithEventType:TRIInternalExperimentAllocationStatusTypeFetchedTreatment experimentRecord:record]"}];
  }

  return v5;
}

+ (id)deactivationEventWithTriggerEvent:(unint64_t)a3 experimentRecord:(id)a4 additionalTelemetry:(id)a5
{
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:a2 object:a1 file:@"TRIExperimentPostLaunchEvent.m" lineNumber:179 description:{@"Invalid parameter not satisfying: %@", @"record"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  v18 = [MEMORY[0x277CCA890] currentHandler];
  [v18 handleFailureInMethod:a2 object:a1 file:@"TRIExperimentPostLaunchEvent.m" lineNumber:180 description:{@"Invalid parameter not satisfying: %@", @"telemetry"}];

LABEL_3:
  v12 = [TRIDeactivationTriggerEventString categoricalValueForTriggerEvent:a3];
  v13 = [TRIExperimentPostLaunchEvent alloc];
  v14 = [TRIExperimentPostLaunchEvent _experimentStateNameForType:3];
  v15 = [(TRIExperimentPostLaunchEvent *)v13 initWithEventType:3 experimentStateName:v14 experimentRecord:v9 errorOrDeactivationReason:v12 telemetry:v11];

  return v15;
}

id __115__TRIExperimentPostLaunchEvent_EventFactory__allocationEventWithTriple_isDynamicEnrollment_environment_namespaces___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D73808];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 name];
  v6 = [v3 compatibilityVersion];

  v7 = [v4 initWithName:v5 compatibilityVersion:v6];

  return v7;
}

+ (id)obsoletionOrDeactivationEventWithTriggerEvent:(unint64_t)a3 previousStateProvider:(id)a4 experimentRecord:(id)a5 additionalTelemetry:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([v12 status] == 2)
  {
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v27 = [MEMORY[0x277CCA890] currentHandler];
    [v27 handleFailureInMethod:a2 object:a1 file:@"TRIExperimentPostLaunchEvent.m" lineNumber:233 description:@"Cannot attempt to obsolete for a record not in enrollment"];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  v28 = [MEMORY[0x277CCA890] currentHandler];
  [v28 handleFailureInMethod:a2 object:a1 file:@"TRIExperimentPostLaunchEvent.m" lineNumber:234 description:{@"Invalid parameter not satisfying: %@", @"prevProvider"}];

LABEL_3:
  v14 = [v12 treatmentId];

  if (v14)
  {
    if (v13)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v29 = [MEMORY[0x277CCA890] currentHandler];
    [v29 handleFailureInMethod:a2 object:a1 file:@"TRIExperimentPostLaunchEvent.m" lineNumber:235 description:{@"Invalid parameter not satisfying: %@", @"record.treatmentId"}];

    if (v13)
    {
      goto LABEL_5;
    }
  }

  v30 = [MEMORY[0x277CCA890] currentHandler];
  [v30 handleFailureInMethod:a2 object:a1 file:@"TRIExperimentPostLaunchEvent.m" lineNumber:236 description:{@"Invalid parameter not satisfying: %@", @"telemetry"}];

LABEL_5:
  v15 = [v12 experimentDeployment];
  v16 = [v15 experimentId];
  v17 = [v12 experimentDeployment];
  v18 = [v17 deploymentId];
  v19 = [v12 treatmentId];
  v20 = [TRIExperimentDeploymentTreatment treatmentTripleWithExperimentId:v16 deploymentId:v18 treatmentId:v19];

  v21 = [v11 previousExperimentStateForTriple:v20];
  v22 = [TRIDeactivationTriggerEventString categoricalValueForTriggerEvent:a3];
  v23 = [TRIExperimentPostLaunchEvent alloc];
  v24 = 5;
  if (v21 != 1)
  {
    v24 = 0;
  }

  if (v21 == 4)
  {
    v24 = 6;
  }

  v25 = [(TRIExperimentPostLaunchEvent *)v23 initWithEventType:3 experimentStateName:off_279DE2188[v24] experimentRecord:v12 errorOrDeactivationReason:v22 telemetry:v13];

  return v25;
}

@end