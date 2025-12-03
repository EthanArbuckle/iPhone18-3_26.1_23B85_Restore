@interface TRIExperimentTaskSupport
- (TRIExperimentTaskSupport)initWithExperimentDeployment:(id)deployment;
- (id)dimensions;
- (id)metrics;
- (id)tags;
- (id)trialSystemTelemetry;
- (void)addDimension:(id)dimension;
- (void)addMetric:(id)metric;
- (void)mergeTelemetry:(id)telemetry;
- (void)setIdentifyTelemetryAsV1Rollout:(BOOL)rollout;
@end

@implementation TRIExperimentTaskSupport

- (TRIExperimentTaskSupport)initWithExperimentDeployment:(id)deployment
{
  deploymentCopy = deployment;
  v16.receiver = self;
  v16.super_class = TRIExperimentTaskSupport;
  v6 = [(TRIExperimentTaskSupport *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_experimentDeployment, deployment);
    v8 = objc_opt_new();
    v9 = *(v8 + 8);
    *(v8 + 8) = 0;

    v10 = *(v8 + 16);
    *(v8 + 16) = 0;

    *(v8 + 32) = 0;
    v11 = objc_opt_new();
    v12 = *(v8 + 24);
    *(v8 + 24) = v11;

    v13 = [objc_alloc(MEMORY[0x277D425F8]) initWithGuardedData:v8];
    lock = v7->_lock;
    v7->_lock = v13;
  }

  return v7;
}

- (id)tags
{
  v8[2] = *MEMORY[0x277D85DE8];
  taskTag = [(TRIExperimentDeployment *)self->_experimentDeployment taskTag];
  v8[0] = taskTag;
  experimentId = [(TRIExperimentDeployment *)self->_experimentDeployment experimentId];
  v8[1] = experimentId;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)setIdentifyTelemetryAsV1Rollout:(BOOL)rollout
{
  lock = self->_lock;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __60__TRIExperimentTaskSupport_setIdentifyTelemetryAsV1Rollout___block_invoke;
  v4[3] = &__block_descriptor_33_e45_v16__0__TRIExperimentTaskSupportGuardedData_8l;
  rolloutCopy = rollout;
  [(_PASLock *)lock runWithLockAcquired:v4];
}

- (void)addMetric:(id)metric
{
  metricCopy = metric;
  lock = self->_lock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__TRIExperimentTaskSupport_addMetric___block_invoke;
  v7[3] = &unk_279DE4F50;
  v8 = metricCopy;
  v6 = metricCopy;
  [(_PASLock *)lock runWithLockAcquired:v7];
}

uint64_t __38__TRIExperimentTaskSupport_addMetric___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2[1];
  if (!v3)
  {
    v5 = a2;
    v6 = objc_opt_new();
    v7 = a2[1];
    a2[1] = v6;

    v3 = a2[1];
  }

  v8 = *(a1 + 32);

  return [v3 addObject:v8];
}

- (void)addDimension:(id)dimension
{
  dimensionCopy = dimension;
  lock = self->_lock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__TRIExperimentTaskSupport_addDimension___block_invoke;
  v7[3] = &unk_279DE4F50;
  v8 = dimensionCopy;
  v6 = dimensionCopy;
  [(_PASLock *)lock runWithLockAcquired:v7];
}

uint64_t __41__TRIExperimentTaskSupport_addDimension___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2[2];
  if (!v3)
  {
    v5 = a2;
    v6 = objc_opt_new();
    v7 = a2[2];
    a2[2] = v6;

    v3 = a2[2];
  }

  v8 = *(a1 + 32);

  return [v3 addObject:v8];
}

- (void)mergeTelemetry:(id)telemetry
{
  telemetryCopy = telemetry;
  lock = self->_lock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__TRIExperimentTaskSupport_mergeTelemetry___block_invoke;
  v7[3] = &unk_279DE4F50;
  v8 = telemetryCopy;
  v6 = telemetryCopy;
  [(_PASLock *)lock runWithLockAcquired:v7];
}

void __43__TRIExperimentTaskSupport_mergeTelemetry___block_invoke(uint64_t a1, id *location)
{
  v5 = location[3];
  v4 = location + 3;
  v3 = v5;
  if (v5)
  {
    [v3 mergeFrom:*(a1 + 32)];
  }

  else
  {
    objc_storeStrong(v4, *(a1 + 32));
  }
}

- (id)metrics
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__57;
  v10 = __Block_byref_object_dispose__57;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __35__TRIExperimentTaskSupport_metrics__block_invoke;
  v5[3] = &unk_279DE4F78;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void *__35__TRIExperimentTaskSupport_metrics__block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 8);
  if (result)
  {
    v4 = [result copy];
    v5 = *(*(a1 + 32) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

- (id)dimensions
{
  v3 = objc_autoreleasePoolPush();
  v4 = objc_opt_new();
  lock = self->_lock;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __38__TRIExperimentTaskSupport_dimensions__block_invoke;
  v10[3] = &unk_279DE4F50;
  v11 = v4;
  v6 = v4;
  [(_PASLock *)lock runWithLockAcquired:v10];
  if ([v6 count])
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  objc_autoreleasePoolPop(v3);

  return v8;
}

uint64_t __38__TRIExperimentTaskSupport_dimensions__block_invoke(uint64_t result, uint64_t a2)
{
  if (*(a2 + 16))
  {
    return [*(result + 32) addObjectsFromArray:?];
  }

  return result;
}

- (id)trialSystemTelemetry
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__57;
  v10 = __Block_byref_object_dispose__57;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__TRIExperimentTaskSupport_trialSystemTelemetry__block_invoke;
  v5[3] = &unk_279DE4FA0;
  v5[4] = self;
  v5[5] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __48__TRIExperimentTaskSupport_trialSystemTelemetry__block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = v10[3];
  if (v3)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v3);
  }

  if ([*(*(a1 + 32) + 16) hasDeploymentId])
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(*(*(a1 + 32) + 16), "deploymentId")}];
    v5 = [v4 stringValue];
    [*(*(*(a1 + 40) + 8) + 40) setClientDeploymentId:v5];
  }

  v6 = *(v10 + 32);
  v7 = [*(*(a1 + 32) + 16) experimentId];
  v8 = *(*(*(a1 + 40) + 8) + 40);
  if (v6 == 1)
  {
    v9 = [v8 ensureRolloutFields];
    [v9 setClientRolloutId:v7];
  }

  else
  {
    v9 = [v8 ensureExperimentFields];
    [v9 setClientExperimentId:v7];
  }
}

@end