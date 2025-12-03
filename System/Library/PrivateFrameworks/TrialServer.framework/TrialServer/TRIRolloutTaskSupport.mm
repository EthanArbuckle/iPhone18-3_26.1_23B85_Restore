@interface TRIRolloutTaskSupport
- (TRIRolloutTaskSupport)initWithRolloutDeployment:(id)deployment;
- (id)dimensions;
- (id)metrics;
- (id)tags;
- (id)trialSystemTelemetry;
- (void)addDimension:(id)dimension;
- (void)addMetric:(id)metric;
- (void)mergeTelemetry:(id)telemetry;
@end

@implementation TRIRolloutTaskSupport

- (TRIRolloutTaskSupport)initWithRolloutDeployment:(id)deployment
{
  deploymentCopy = deployment;
  v15.receiver = self;
  v15.super_class = TRIRolloutTaskSupport;
  v6 = [(TRIRolloutTaskSupport *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rolloutDeployment, deployment);
    v8 = objc_opt_new();
    v9 = v8[1];
    v8[1] = 0;

    v10 = v8[2];
    v8[2] = 0;

    v11 = v8[3];
    v8[3] = 0;

    v12 = [objc_alloc(MEMORY[0x277D425F8]) initWithGuardedData:v8];
    lock = v7->_lock;
    v7->_lock = v12;
  }

  return v7;
}

- (id)tags
{
  v8[2] = *MEMORY[0x277D85DE8];
  taskTag = [(TRIRolloutDeployment *)self->_rolloutDeployment taskTag];
  v8[0] = taskTag;
  rolloutId = [(TRIRolloutDeployment *)self->_rolloutDeployment rolloutId];
  v8[1] = rolloutId;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)addMetric:(id)metric
{
  metricCopy = metric;
  lock = self->_lock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__TRIRolloutTaskSupport_addMetric___block_invoke;
  v7[3] = &unk_279DE4FC8;
  v8 = metricCopy;
  v6 = metricCopy;
  [(_PASLock *)lock runWithLockAcquired:v7];
}

uint64_t __35__TRIRolloutTaskSupport_addMetric___block_invoke(uint64_t a1, void *a2)
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
  v7[2] = __38__TRIRolloutTaskSupport_addDimension___block_invoke;
  v7[3] = &unk_279DE4FC8;
  v8 = dimensionCopy;
  v6 = dimensionCopy;
  [(_PASLock *)lock runWithLockAcquired:v7];
}

uint64_t __38__TRIRolloutTaskSupport_addDimension___block_invoke(uint64_t a1, void *a2)
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
  v7[2] = __40__TRIRolloutTaskSupport_mergeTelemetry___block_invoke;
  v7[3] = &unk_279DE4FC8;
  v8 = telemetryCopy;
  v6 = telemetryCopy;
  [(_PASLock *)lock runWithLockAcquired:v7];
}

void __40__TRIRolloutTaskSupport_mergeTelemetry___block_invoke(uint64_t a1, id *location)
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
  v5[2] = __32__TRIRolloutTaskSupport_metrics__block_invoke;
  v5[3] = &unk_279DE4FF0;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void *__32__TRIRolloutTaskSupport_metrics__block_invoke(uint64_t a1, uint64_t a2)
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
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __35__TRIRolloutTaskSupport_dimensions__block_invoke;
  v8[3] = &unk_279DE4FC8;
  v6 = v4;
  v9 = v6;
  [(_PASLock *)lock runWithLockAcquired:v8];

  objc_autoreleasePoolPop(v3);

  return v6;
}

uint64_t __35__TRIRolloutTaskSupport_dimensions__block_invoke(uint64_t result, uint64_t a2)
{
  if (*(a2 + 16))
  {
    return [*(result + 32) addObjectsFromArray:?];
  }

  return result;
}

- (id)trialSystemTelemetry
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__57;
  v11 = __Block_byref_object_dispose__57;
  v12 = objc_alloc_init(MEMORY[0x277D73BE0]);
  lock = self->_lock;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__TRIRolloutTaskSupport_trialSystemTelemetry__block_invoke;
  v6[3] = &unk_279DE5018;
  v6[4] = self;
  v6[5] = &v7;
  [(_PASLock *)lock runWithLockAcquired:v6];
  v4 = [v8[5] copy];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __45__TRIRolloutTaskSupport_trialSystemTelemetry__block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 24))
  {
    [*(*(*(a1 + 40) + 8) + 40) mergeFrom:?];
  }

  v3 = [*(*(a1 + 32) + 16) rolloutId];
  v4 = [*(*(*(a1 + 40) + 8) + 40) ensureRolloutFields];
  [v4 setClientRolloutId:v3];

  v6 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(*(*(a1 + 32) + 16), "deploymentId")}];
  v5 = [v6 stringValue];
  [*(*(*(a1 + 40) + 8) + 40) setClientDeploymentId:v5];
}

@end