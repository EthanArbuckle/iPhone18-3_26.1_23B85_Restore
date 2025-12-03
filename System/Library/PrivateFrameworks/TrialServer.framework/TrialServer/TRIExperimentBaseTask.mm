@interface TRIExperimentBaseTask
- (BOOL)isEqual:(id)equal;
- (TRIExperimentBaseTask)initWithExperiment:(id)experiment;
- (id)containerForFirstNamespaceInExperimentWithContext:(id)context;
- (id)description;
- (id)dimensions;
- (id)metrics;
- (id)nextTasksForRunStatus:(int)status;
- (id)tags;
- (id)trialSystemTelemetry;
- (unint64_t)hash;
- (void)addDimension:(id)dimension;
- (void)addMetric:(id)metric;
- (void)mergeTelemetry:(id)telemetry;
@end

@implementation TRIExperimentBaseTask

- (TRIExperimentBaseTask)initWithExperiment:(id)experiment
{
  experimentCopy = experiment;
  if (!experimentCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIExperimentBaseTask.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"experiment"}];
  }

  v17.receiver = self;
  v17.super_class = TRIExperimentBaseTask;
  v6 = [(TRIExperimentBaseTask *)&v17 init];
  if (v6)
  {
    v7 = [experimentCopy copy];
    experiment = v6->_experiment;
    v6->_experiment = v7;

    v9 = objc_opt_new();
    v10 = v9[1];
    v9[1] = 0;

    v11 = v9[2];
    v9[2] = 0;

    v12 = v9[3];
    v9[3] = 0;

    v13 = [objc_alloc(MEMORY[0x277D425F8]) initWithGuardedData:v9];
    lock = v6->_lock;
    v6->_lock = v13;
  }

  return v6;
}

- (id)tags
{
  v10[2] = *MEMORY[0x277D85DE8];
  experiment = [(TRIExperimentBaseTask *)self experiment];
  taskTag = [experiment taskTag];
  v10[0] = taskTag;
  experiment2 = [(TRIExperimentBaseTask *)self experiment];
  experimentId = [experiment2 experimentId];
  v10[1] = experimentId;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)nextTasksForRunStatus:(int)status
{
  v11[1] = *MEMORY[0x277D85DE8];
  if (status == 3)
  {
    experiment = [(TRIExperimentBaseTask *)self experiment];
    experimentId = [experiment experimentId];
    experiment2 = [(TRIExperimentBaseTask *)self experiment];
    v7 = +[TRIDeactivateTreatmentTask taskWithExperimentId:deploymentId:failOnUnrecognizedExperiment:triggerEvent:taskAttribution:](TRIDeactivateTreatmentTask, "taskWithExperimentId:deploymentId:failOnUnrecognizedExperiment:triggerEvent:taskAttribution:", experimentId, [experiment2 deploymentId], 0, 23, 0);
    v11[0] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)containerForFirstNamespaceInExperimentWithContext:(id)context
{
  contextCopy = context;
  experimentDatabase = [contextCopy experimentDatabase];
  experiment = [(TRIExperimentBaseTask *)self experiment];
  v7 = [experimentDatabase experimentRecordWithExperimentDeployment:experiment];

  if (v7)
  {
    namespaces = [v7 namespaces];
    firstObject = [namespaces firstObject];
    name = [firstObject name];

    if (name)
    {
      namespaceDatabase = [contextCopy namespaceDatabase];
      v12 = [namespaceDatabase dynamicNamespaceRecordWithNamespaceName:name];

      if (v12)
      {
        appContainer = [v12 appContainer];
      }

      else
      {
        appContainer = 0;
      }
    }

    else
    {
      appContainer = 0;
    }
  }

  else
  {
    appContainer = 0;
  }

  return appContainer;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = TRIExperimentBaseTask;
    if ([(TRIBaseTask *)&v10 isEqual:equalCopy])
    {
      v5 = equalCopy;
      experiment = [(TRIExperimentBaseTask *)self experiment];
      experiment2 = [(TRIExperimentBaseTask *)v5 experiment];

      v8 = [experiment isEqualToDeployment:experiment2];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v13.receiver = self;
  v13.super_class = TRIExperimentBaseTask;
  v3 = [(TRIBaseTask *)&v13 hash];
  experiment = [(TRIExperimentBaseTask *)self experiment];
  experimentId = [experiment experimentId];
  if (experimentId)
  {
    experiment2 = [(TRIExperimentBaseTask *)self experiment];
    experimentId2 = [experiment2 experimentId];
    v8 = [experimentId2 hash];
  }

  else
  {
    v8 = 0;
  }

  experiment3 = [(TRIExperimentBaseTask *)self experiment];
  if ([experiment3 hasDeploymentId])
  {
    experiment4 = [(TRIExperimentBaseTask *)self experiment];
    deploymentId = [experiment4 deploymentId];
  }

  else
  {
    deploymentId = -2;
  }

  return deploymentId + 37 * (v8 + 37 * v3);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  experiment = [(TRIExperimentBaseTask *)self experiment];
  shortDesc = [experiment shortDesc];
  v7 = [v3 stringWithFormat:@"<%@:%@>", v4, shortDesc];

  return v7;
}

- (void)addMetric:(id)metric
{
  metricCopy = metric;
  lock = self->_lock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__TRIExperimentBaseTask_addMetric___block_invoke;
  v7[3] = &unk_279DE3E18;
  v8 = metricCopy;
  v6 = metricCopy;
  [(_PASLock *)lock runWithLockAcquired:v7];
}

uint64_t __35__TRIExperimentBaseTask_addMetric___block_invoke(uint64_t a1, void *a2)
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
  v7[2] = __38__TRIExperimentBaseTask_addDimension___block_invoke;
  v7[3] = &unk_279DE3E18;
  v8 = dimensionCopy;
  v6 = dimensionCopy;
  [(_PASLock *)lock runWithLockAcquired:v7];
}

uint64_t __38__TRIExperimentBaseTask_addDimension___block_invoke(uint64_t a1, void *a2)
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
  v7[2] = __40__TRIExperimentBaseTask_mergeTelemetry___block_invoke;
  v7[3] = &unk_279DE3E18;
  v8 = telemetryCopy;
  v6 = telemetryCopy;
  [(_PASLock *)lock runWithLockAcquired:v7];
}

void __40__TRIExperimentBaseTask_mergeTelemetry___block_invoke(uint64_t a1, id *location)
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
  v9 = __Block_byref_object_copy__46;
  v10 = __Block_byref_object_dispose__46;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __32__TRIExperimentBaseTask_metrics__block_invoke;
  v5[3] = &unk_279DE3E40;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void *__32__TRIExperimentBaseTask_metrics__block_invoke(uint64_t a1, uint64_t a2)
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
  experiment = [(TRIExperimentBaseTask *)self experiment];
  if (experiment)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = __Block_byref_object_copy__46;
    v13 = __Block_byref_object_dispose__46;
    v14 = MEMORY[0x277CBEBF8];
    lock = self->_lock;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __35__TRIExperimentBaseTask_dimensions__block_invoke;
    v8[3] = &unk_279DE3E40;
    v8[4] = &v9;
    [(_PASLock *)lock runWithLockAcquired:v8];
    v6 = v10[5];
    _Block_object_dispose(&v9, 8);
  }

  else
  {
    v6 = 0;
  }

  objc_autoreleasePoolPop(v3);

  return v6;
}

uint64_t __35__TRIExperimentBaseTask_dimensions__block_invoke(uint64_t result, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v2 = result;
    v3 = [*(*(*(result + 32) + 8) + 40) arrayByAddingObjectsFromArray:?];
    v4 = *(*(v2 + 32) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

- (id)trialSystemTelemetry
{
  v3 = objc_autoreleasePoolPush();
  experiment = [(TRIExperimentBaseTask *)self experiment];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__46;
  v16 = __Block_byref_object_dispose__46;
  v17 = 0;
  lock = self->_lock;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __45__TRIExperimentBaseTask_trialSystemTelemetry__block_invoke;
  v9[3] = &unk_279DE3E68;
  v11 = &v12;
  v6 = experiment;
  v10 = v6;
  [(_PASLock *)lock runWithLockAcquired:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);
  objc_autoreleasePoolPop(v3);

  return v7;
}

void __45__TRIExperimentBaseTask_trialSystemTelemetry__block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = v11[3];
  if (v3)
  {
    v4 = [v3 copy];
  }

  else
  {
    v4 = objc_opt_new();
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if ([*(a1 + 32) hasDeploymentId])
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(*(a1 + 32), "deploymentId")}];
    v8 = [v7 stringValue];
    [*(*(*(a1 + 40) + 8) + 40) setClientDeploymentId:v8];
  }

  v9 = [*(a1 + 32) experimentId];
  v10 = [*(*(*(a1 + 40) + 8) + 40) ensureExperimentFields];
  [v10 setClientExperimentId:v9];
}

@end