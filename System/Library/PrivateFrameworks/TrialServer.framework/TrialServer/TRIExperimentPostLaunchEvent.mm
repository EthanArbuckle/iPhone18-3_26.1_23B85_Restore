@interface TRIExperimentPostLaunchEvent
+ (id)activatedEventWithExperimentRecord:(id)record;
+ (id)deactivationEventWithTriggerEvent:(unint64_t)event experimentRecord:(id)record additionalTelemetry:(id)telemetry;
+ (id)fetchedEventWithExperimentRecord:(id)record;
+ (id)obsoletionOrDeactivationEventWithTriggerEvent:(unint64_t)event previousStateProvider:(id)provider experimentRecord:(id)record additionalTelemetry:(id)telemetry;
- (TRIExperimentPostLaunchEvent)initWithEventType:(unsigned __int8)type experimentStateName:(id)name experimentRecord:(id)record errorOrDeactivationReason:(id)reason telemetry:(id)telemetry;
- (TRIExperimentPostLaunchEvent)initWithEventType:(unsigned __int8)type experimentStateName:(id)name treatmentTriple:(id)triple errorOrDeactivationReason:(id)reason deploymentEnvironment:(int)environment versionedNamespaces:(id)namespaces telemetry:(id)telemetry;
- (id)experimentRecord;
@end

@implementation TRIExperimentPostLaunchEvent

- (id)experimentRecord
{
  treatmentTriple = [(TRIExperimentPostLaunchEvent *)self treatmentTriple];
  experimentId = [treatmentTriple experimentId];

  treatmentTriple2 = [(TRIExperimentPostLaunchEvent *)self treatmentTriple];
  deploymentId = [treatmentTriple2 deploymentId];

  treatmentTriple3 = [(TRIExperimentPostLaunchEvent *)self treatmentTriple];
  treatmentId = [treatmentTriple3 treatmentId];

  v9 = MEMORY[0x277D736C8];
  v10 = objc_opt_new();
  eventType = [(TRIExperimentPostLaunchEvent *)self eventType];
  deploymentEnvironment = [(TRIExperimentPostLaunchEvent *)self deploymentEnvironment];
  errorOrDeactivationReason = [(TRIExperimentPostLaunchEvent *)self errorOrDeactivationReason];
  versionedNamespaces = [(TRIExperimentPostLaunchEvent *)self versionedNamespaces];
  v15 = [v9 recordWithEventDate:v10 eventType:eventType deploymentEnvironment:deploymentEnvironment experimentId:experimentId deploymentId:deploymentId treatmentId:treatmentId errorOrDeactivationReason:errorOrDeactivationReason namespaces:versionedNamespaces];

  return v15;
}

- (TRIExperimentPostLaunchEvent)initWithEventType:(unsigned __int8)type experimentStateName:(id)name treatmentTriple:(id)triple errorOrDeactivationReason:(id)reason deploymentEnvironment:(int)environment versionedNamespaces:(id)namespaces telemetry:(id)telemetry
{
  nameCopy = name;
  tripleCopy = triple;
  reasonCopy = reason;
  namespacesCopy = namespaces;
  telemetryCopy = telemetry;
  if (!tripleCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIExperimentPostLaunchEvent.m" lineNumber:62 description:{@"Invalid parameter not satisfying: %@", @"treatmentTriple"}];
  }

  v26.receiver = self;
  v26.super_class = TRIExperimentPostLaunchEvent;
  v18 = [(TRIExperimentPostLaunchEvent *)&v26 init];
  v19 = v18;
  if (v18)
  {
    v18->_eventType = type;
    objc_storeStrong(&v18->_experimentStateName, name);
    objc_storeStrong(&v19->_treatmentTriple, triple);
    objc_storeStrong(&v19->_errorOrDeactivationReason, reason);
    v19->_deploymentEnvironment = environment;
    objc_storeStrong(&v19->_versionedNamespaces, namespaces);
    objc_storeStrong(&v19->_additionalTelemetry, telemetry);
  }

  return v19;
}

- (TRIExperimentPostLaunchEvent)initWithEventType:(unsigned __int8)type experimentStateName:(id)name experimentRecord:(id)record errorOrDeactivationReason:(id)reason telemetry:(id)telemetry
{
  typeCopy = type;
  telemetryCopy = telemetry;
  reasonCopy = reason;
  recordCopy = record;
  nameCopy = name;
  treatmentId = [recordCopy treatmentId];
  v16 = treatmentId;
  v17 = @"unspecified-or-default-treatment";
  if (treatmentId)
  {
    v17 = treatmentId;
  }

  v18 = v17;

  experimentDeployment = [recordCopy experimentDeployment];
  experimentId = [experimentDeployment experimentId];
  experimentDeployment2 = [recordCopy experimentDeployment];
  v22 = +[TRIExperimentDeploymentTreatment treatmentTripleWithExperimentId:deploymentId:treatmentId:](TRIExperimentDeploymentTreatment, "treatmentTripleWithExperimentId:deploymentId:treatmentId:", experimentId, [experimentDeployment2 deploymentId], v18);

  deploymentEnvironment = [recordCopy deploymentEnvironment];
  versionedNamespaces = [recordCopy versionedNamespaces];

  v25 = [(TRIExperimentPostLaunchEvent *)self initWithEventType:typeCopy experimentStateName:nameCopy treatmentTriple:v22 errorOrDeactivationReason:reasonCopy deploymentEnvironment:deploymentEnvironment versionedNamespaces:versionedNamespaces telemetry:telemetryCopy];
  return v25;
}

+ (id)activatedEventWithExperimentRecord:(id)record
{
  v5 = [TRIExperimentPostLaunchEvent eventWithEventType:2 experimentRecord:record];
  if (!v5)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIExperimentPostLaunchEvent.m" lineNumber:169 description:{@"Expression was unexpectedly nil/false: %@", @"[TRIExperimentPostLaunchEvent eventWithEventType:TRIInternalExperimentAllocationStatusTypeActivatedTreatment experimentRecord:record]"}];
  }

  return v5;
}

+ (id)fetchedEventWithExperimentRecord:(id)record
{
  v5 = [TRIExperimentPostLaunchEvent eventWithEventType:4 experimentRecord:record];
  if (!v5)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIExperimentPostLaunchEvent.m" lineNumber:173 description:{@"Expression was unexpectedly nil/false: %@", @"[TRIExperimentPostLaunchEvent eventWithEventType:TRIInternalExperimentAllocationStatusTypeFetchedTreatment experimentRecord:record]"}];
  }

  return v5;
}

+ (id)deactivationEventWithTriggerEvent:(unint64_t)event experimentRecord:(id)record additionalTelemetry:(id)telemetry
{
  recordCopy = record;
  telemetryCopy = telemetry;
  v11 = telemetryCopy;
  if (recordCopy)
  {
    if (telemetryCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIExperimentPostLaunchEvent.m" lineNumber:179 description:{@"Invalid parameter not satisfying: %@", @"record"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIExperimentPostLaunchEvent.m" lineNumber:180 description:{@"Invalid parameter not satisfying: %@", @"telemetry"}];

LABEL_3:
  v12 = [TRIDeactivationTriggerEventString categoricalValueForTriggerEvent:event];
  v13 = [TRIExperimentPostLaunchEvent alloc];
  v14 = [TRIExperimentPostLaunchEvent _experimentStateNameForType:3];
  v15 = [(TRIExperimentPostLaunchEvent *)v13 initWithEventType:3 experimentStateName:v14 experimentRecord:recordCopy errorOrDeactivationReason:v12 telemetry:v11];

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

+ (id)obsoletionOrDeactivationEventWithTriggerEvent:(unint64_t)event previousStateProvider:(id)provider experimentRecord:(id)record additionalTelemetry:(id)telemetry
{
  providerCopy = provider;
  recordCopy = record;
  telemetryCopy = telemetry;
  if ([recordCopy status] == 2)
  {
    if (providerCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIExperimentPostLaunchEvent.m" lineNumber:233 description:@"Cannot attempt to obsolete for a record not in enrollment"];

    if (providerCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIExperimentPostLaunchEvent.m" lineNumber:234 description:{@"Invalid parameter not satisfying: %@", @"prevProvider"}];

LABEL_3:
  treatmentId = [recordCopy treatmentId];

  if (treatmentId)
  {
    if (telemetryCopy)
    {
      goto LABEL_5;
    }
  }

  else
  {
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"TRIExperimentPostLaunchEvent.m" lineNumber:235 description:{@"Invalid parameter not satisfying: %@", @"record.treatmentId"}];

    if (telemetryCopy)
    {
      goto LABEL_5;
    }
  }

  currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler4 handleFailureInMethod:a2 object:self file:@"TRIExperimentPostLaunchEvent.m" lineNumber:236 description:{@"Invalid parameter not satisfying: %@", @"telemetry"}];

LABEL_5:
  experimentDeployment = [recordCopy experimentDeployment];
  experimentId = [experimentDeployment experimentId];
  experimentDeployment2 = [recordCopy experimentDeployment];
  deploymentId = [experimentDeployment2 deploymentId];
  treatmentId2 = [recordCopy treatmentId];
  v20 = [TRIExperimentDeploymentTreatment treatmentTripleWithExperimentId:experimentId deploymentId:deploymentId treatmentId:treatmentId2];

  v21 = [providerCopy previousExperimentStateForTriple:v20];
  v22 = [TRIDeactivationTriggerEventString categoricalValueForTriggerEvent:event];
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

  v25 = [(TRIExperimentPostLaunchEvent *)v23 initWithEventType:3 experimentStateName:off_279DE2188[v24] experimentRecord:recordCopy errorOrDeactivationReason:v22 telemetry:telemetryCopy];

  return v25;
}

@end