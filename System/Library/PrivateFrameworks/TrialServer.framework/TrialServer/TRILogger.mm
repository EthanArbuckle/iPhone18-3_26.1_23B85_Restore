@interface TRILogger
- (TRILogger)initWithClient:(id)client projectId:(int)id logHandlers:(id)handlers;
- (id)messageWithOneofField:(id)field withName:(id)name;
- (unint64_t)_incrementedLogEventCount;
- (void)_dispatchLogEvent:(id)event;
- (void)logEvent:(id)event;
- (void)logWithMLRuntimeDimensions:(id)dimensions metrics:(id)metrics factorState:(id)state;
- (void)logWithNamespaceName:(id)name metrics:(id)metrics dimensions:(id)dimensions;
- (void)logWithProjectNameAndTrackingId:(id)id metrics:(id)metrics dimensions:(id)dimensions trialSystemTelemetry:(id)telemetry;
- (void)logWithTrackingId:(id)id logLevel:(int64_t)level message:(id)message;
- (void)logWithTrackingId:(id)id logLevel:(int64_t)level message:(id)message args:(char *)args;
- (void)logWithTrackingId:(id)id message:(id)message;
- (void)logWithTrackingId:(id)id metric:(id)metric;
- (void)logWithTrackingId:(id)id metric:(id)metric dimensions:(id)dimensions;
- (void)logWithTrackingId:(id)id metrics:(id)metrics dimensions:(id)dimensions;
- (void)logWithTrackingId:(id)id metrics:(id)metrics dimensions:(id)dimensions systemDimensions:(id)systemDimensions trialSystemTelemetry:(id)telemetry;
- (void)logWithTrackingId:(id)id metrics:(id)metrics dimensions:(id)dimensions trialSystemTelemetry:(id)telemetry;
@end

@implementation TRILogger

- (TRILogger)initWithClient:(id)client projectId:(int)id logHandlers:(id)handlers
{
  clientCopy = client;
  handlersCopy = handlers;
  v22.receiver = self;
  v22.super_class = TRILogger;
  v10 = [(TRILogger *)&v22 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_client, clientCopy);
    v11->_projectId = id;
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    uTF8String = [v13 UTF8String];
    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_attr_make_with_qos_class(v15, QOS_CLASS_BACKGROUND, 0);
    v17 = dispatch_queue_create(uTF8String, v16);
    loggingQueue = v11->_loggingQueue;
    v11->_loggingQueue = v17;

    v19 = [handlersCopy copy];
    logHandlers = v11->_logHandlers;
    v11->_logHandlers = v19;
  }

  return v11;
}

- (id)messageWithOneofField:(id)field withName:(id)name
{
  v25 = *MEMORY[0x277D85DE8];
  fieldCopy = field;
  nameCopy = name;
  descriptor = [fieldCopy descriptor];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  oneofs = [descriptor oneofs];
  v9 = [oneofs countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = *v21;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(oneofs);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        name = [v12 name];
        v14 = [name isEqualToString:nameCopy];

        if (v14)
        {
          fields = [v12 fields];
          v16 = [fields objectAtIndexedSubscript:0];

          name2 = [v16 name];
          v9 = [fieldCopy valueForKey:name2];

          goto LABEL_11;
        }
      }

      v9 = [oneofs countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v18 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)_dispatchLogEvent:(id)event
{
  v20 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v7 = bundleIdentifier;
  if (!bundleIdentifier)
  {
    if (qword_281597818 != -1)
    {
      dispatch_once(&qword_281597818, &__block_literal_global_21);
    }

    v7 = _MergedGlobals_36;
  }

  v8 = v7;

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = self->_logHandlers;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v15 + 1) + 8 * i) logEvent:eventCopy subgroupName:v8 queue:{self->_loggingQueue, v15}];
      }

      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __31__TRILogger__dispatchLogEvent___block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x277D736B0] stringForCurrentProcessEntitlement:@"application-identifier"];
  v2 = _MergedGlobals_36;
  _MergedGlobals_36 = v1;

  objc_autoreleasePoolPop(v0);
}

- (unint64_t)_incrementedLogEventCount
{
  if (qword_281597820 != -1)
  {
    dispatch_once(&qword_281597820, &__block_literal_global_13);
  }

  [qword_281597828 lock];
  v2 = ++qword_281597830;
  [qword_281597828 unlock];
  return v2;
}

void __38__TRILogger__incrementedLogEventCount__block_invoke()
{
  v0 = objc_opt_new();
  v1 = qword_281597828;
  qword_281597828 = v0;

  qword_281597830 = 0;
}

- (void)logEvent:(id)event
{
  eventCopy = event;
  _incrementedLogEventCount = [(TRILogger *)self _incrementedLogEventCount];
  context = [eventCopy context];
  [context setProcessEventIndex:_incrementedLogEventCount];

  [(TRILogger *)self _dispatchLogEvent:eventCopy];
}

- (void)logWithTrackingId:(id)id logLevel:(int64_t)level message:(id)message args:(char *)args
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v8 = 136315138;
    v9 = "[TRILogger logWithTrackingId:logLevel:message:args:]";
    _os_log_error_impl(&dword_26F567000, v6, OS_LOG_TYPE_ERROR, "called deprecated method %s", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)logWithTrackingId:(id)id message:(id)message
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315138;
    v7 = "[TRILogger logWithTrackingId:message:]";
    _os_log_error_impl(&dword_26F567000, v4, OS_LOG_TYPE_ERROR, "called deprecated method %s", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)logWithTrackingId:(id)id logLevel:(int64_t)level message:(id)message
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315138;
    v8 = "[TRILogger logWithTrackingId:logLevel:message:]";
    _os_log_error_impl(&dword_26F567000, v5, OS_LOG_TYPE_ERROR, "called deprecated method %s", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logWithTrackingId:(id)id metrics:(id)metrics dimensions:(id)dimensions trialSystemTelemetry:(id)telemetry
{
  v29 = *MEMORY[0x277D85DE8];
  v10 = MEMORY[0x277D73B28];
  projectId = self->_projectId;
  telemetryCopy = telemetry;
  dimensionsCopy = dimensions;
  metricsCopy = metrics;
  v15 = [v10 eventWithTrackingId:id projectId:projectId];
  v16 = [metricsCopy mutableCopy];

  denormalizedEvent = [v15 denormalizedEvent];
  [denormalizedEvent setMetrics:v16];

  v18 = [dimensionsCopy mutableCopy];
  denormalizedEvent2 = [v15 denormalizedEvent];
  [denormalizedEvent2 setUserDimensions:v18];

  systemDimensions = [MEMORY[0x277D73BB8] systemDimensions];
  denormalizedEvent3 = [v15 denormalizedEvent];
  [denormalizedEvent3 setSystemDimensions:systemDimensions];

  v22 = [telemetryCopy copy];
  denormalizedEvent4 = [v15 denormalizedEvent];
  [denormalizedEvent4 setTrialSystemTelemetry:v22];

  v24 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    v25 = [v15 description];
    v27 = 138412290;
    v28 = v25;
    _os_log_impl(&dword_26F567000, v24, OS_LOG_TYPE_INFO, "Logging log event: %@", &v27, 0xCu);
  }

  [(TRILogger *)self logEvent:v15];
  v26 = *MEMORY[0x277D85DE8];
}

- (void)logWithTrackingId:(id)id metrics:(id)metrics dimensions:(id)dimensions systemDimensions:(id)systemDimensions trialSystemTelemetry:(id)telemetry
{
  v31 = *MEMORY[0x277D85DE8];
  v12 = MEMORY[0x277D73B28];
  projectId = self->_projectId;
  telemetryCopy = telemetry;
  systemDimensionsCopy = systemDimensions;
  dimensionsCopy = dimensions;
  metricsCopy = metrics;
  v18 = [v12 eventWithTrackingId:id projectId:projectId];
  v19 = [metricsCopy mutableCopy];

  denormalizedEvent = [v18 denormalizedEvent];
  [denormalizedEvent setMetrics:v19];

  v21 = [dimensionsCopy mutableCopy];
  denormalizedEvent2 = [v18 denormalizedEvent];
  [denormalizedEvent2 setUserDimensions:v21];

  denormalizedEvent3 = [v18 denormalizedEvent];
  [denormalizedEvent3 setSystemDimensions:systemDimensionsCopy];

  v24 = [telemetryCopy copy];
  denormalizedEvent4 = [v18 denormalizedEvent];
  [denormalizedEvent4 setTrialSystemTelemetry:v24];

  v26 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    v27 = [v18 description];
    v29 = 138412290;
    v30 = v27;
    _os_log_impl(&dword_26F567000, v26, OS_LOG_TYPE_INFO, "Logging log event: %@", &v29, 0xCu);
  }

  [(TRILogger *)self logEvent:v18];
  v28 = *MEMORY[0x277D85DE8];
}

- (void)logWithProjectNameAndTrackingId:(id)id metrics:(id)metrics dimensions:(id)dimensions trialSystemTelemetry:(id)telemetry
{
  v35 = *MEMORY[0x277D85DE8];
  v10 = MEMORY[0x277D73B28];
  projectId = self->_projectId;
  telemetryCopy = telemetry;
  dimensionsCopy = dimensions;
  metricsCopy = metrics;
  v15 = [v10 eventWithTrackingId:id projectId:projectId];
  v16 = [metricsCopy mutableCopy];

  denormalizedEvent = [v15 denormalizedEvent];
  [denormalizedEvent setMetrics:v16];

  v18 = [dimensionsCopy mutableCopy];
  denormalizedEvent2 = [v15 denormalizedEvent];
  [denormalizedEvent2 setUserDimensions:v18];

  systemDimensions = [MEMORY[0x277D73BB8] systemDimensions];
  denormalizedEvent3 = [v15 denormalizedEvent];
  [denormalizedEvent3 setSystemDimensions:systemDimensions];

  v22 = [telemetryCopy copy];
  denormalizedEvent4 = [v15 denormalizedEvent];
  [denormalizedEvent4 setTrialSystemTelemetry:v22];

  denormalizedEvent5 = [v15 denormalizedEvent];
  LOBYTE(v22) = [denormalizedEvent5 hasTrialSystemTelemetry];

  if ((v22 & 1) == 0)
  {
    v25 = objc_opt_new();
    denormalizedEvent6 = [v15 denormalizedEvent];
    [denormalizedEvent6 setTrialSystemTelemetry:v25];
  }

  v27 = [MEMORY[0x277D73B98] projectNameFromId:self->_projectId];
  denormalizedEvent7 = [v15 denormalizedEvent];
  trialSystemTelemetry = [denormalizedEvent7 trialSystemTelemetry];
  [trialSystemTelemetry setClientProjectId:v27];

  v30 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    v31 = [v15 description];
    v33 = 138412290;
    v34 = v31;
    _os_log_impl(&dword_26F567000, v30, OS_LOG_TYPE_INFO, "Logging log event: %@", &v33, 0xCu);
  }

  [(TRILogger *)self logEvent:v15];
  v32 = *MEMORY[0x277D85DE8];
}

- (void)logWithMLRuntimeDimensions:(id)dimensions metrics:(id)metrics factorState:(id)state
{
  stateCopy = state;
  v8 = MEMORY[0x277D73B28];
  metricsCopy = metrics;
  dimensionsCopy = dimensions;
  WeakRetained = objc_loadWeakRetained(&self->_client);
  trackingId = [WeakRetained trackingId];
  v13 = [v8 eventWithTrackingId:trackingId projectId:self->_projectId];

  v14 = [metricsCopy mutableCopy];
  denormalizedEvent = [v13 denormalizedEvent];
  [denormalizedEvent setMetrics:v14];

  v16 = [dimensionsCopy copy];
  denormalizedEvent2 = [v13 denormalizedEvent];
  [denormalizedEvent2 setMlruntimeDimensions:v16];

  systemDimensions = [MEMORY[0x277D73BB8] systemDimensions];
  denormalizedEvent3 = [v13 denormalizedEvent];
  [denormalizedEvent3 setSystemDimensions:systemDimensions];

  if (stateCopy)
  {
    v20 = objc_opt_new();
    denormalizedEvent4 = [v13 denormalizedEvent];
    [denormalizedEvent4 setTrialSystemTelemetry:v20];

    experimentIdentifiers = [stateCopy experimentIdentifiers];

    if (experimentIdentifiers)
    {
      denormalizedEvent5 = [v13 denormalizedEvent];
      trialSystemTelemetry = [denormalizedEvent5 trialSystemTelemetry];
      ensureExperimentFields = [trialSystemTelemetry ensureExperimentFields];

      experimentIdentifiers2 = [stateCopy experimentIdentifiers];
      experimentId = [experimentIdentifiers2 experimentId];
      [ensureExperimentFields setClientExperimentId:experimentId];

      experimentIdentifiers3 = [stateCopy experimentIdentifiers];
      treatmentId = [experimentIdentifiers3 treatmentId];
      [ensureExperimentFields setClientTreatmentId:treatmentId];

      v30 = MEMORY[0x277CCABB0];
      experimentIdentifiers4 = [stateCopy experimentIdentifiers];
      v32 = [v30 numberWithInt:{objc_msgSend(experimentIdentifiers4, "deploymentId")}];
      stringValue = [v32 stringValue];
      denormalizedEvent6 = [v13 denormalizedEvent];
      trialSystemTelemetry2 = [denormalizedEvent6 trialSystemTelemetry];
      [trialSystemTelemetry2 setClientDeploymentId:stringValue];
    }
  }

  [(TRILogger *)self logEvent:v13];
}

- (void)logWithTrackingId:(id)id metrics:(id)metrics dimensions:(id)dimensions
{
  v8 = MEMORY[0x277D73B28];
  projectId = self->_projectId;
  dimensionsCopy = dimensions;
  metricsCopy = metrics;
  v18 = [v8 eventWithTrackingId:id projectId:projectId];
  v12 = [metricsCopy mutableCopy];

  denormalizedEvent = [v18 denormalizedEvent];
  [denormalizedEvent setMetrics:v12];

  v14 = [dimensionsCopy mutableCopy];
  denormalizedEvent2 = [v18 denormalizedEvent];
  [denormalizedEvent2 setUserDimensions:v14];

  systemDimensions = [MEMORY[0x277D73BB8] systemDimensions];
  denormalizedEvent3 = [v18 denormalizedEvent];
  [denormalizedEvent3 setSystemDimensions:systemDimensions];

  [(TRILogger *)self logEvent:v18];
}

- (void)logWithTrackingId:(id)id metric:(id)metric dimensions:(id)dimensions
{
  v32 = *MEMORY[0x277D85DE8];
  idCopy = id;
  metricCopy = metric;
  dimensionsCopy = dimensions;
  v11 = dimensionsCopy;
  if (dimensionsCopy)
  {
    selfCopy = self;
    v25 = metricCopy;
    v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(dimensionsCopy, "count")}];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v13 = v11;
    v14 = [v13 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v27;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v27 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v26 + 1) + 8 * i);
          v19 = [v13 objectForKeyedSubscript:v18];
          v20 = v19;
          if (v19 && [v19 length])
          {
            v21 = objc_opt_new();
            [v21 setName:v18];
            [v21 setValue:v20];
            [v12 addObject:v21];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v15);
    }

    metricCopy = v25;
    self = selfCopy;
  }

  else
  {
    v12 = 0;
  }

  v30 = metricCopy;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
  [(TRILogger *)self logWithTrackingId:idCopy metrics:v22 dimensions:v12];

  v23 = *MEMORY[0x277D85DE8];
}

- (void)logWithNamespaceName:(id)name metrics:(id)metrics dimensions:(id)dimensions
{
  dimensionsCopy = dimensions;
  metricsCopy = metrics;
  nameCopy = name;
  v30 = objc_opt_new();
  v11 = objc_opt_new();
  uUIDString = [v11 UUIDString];
  [v30 setLogEventId:uUIDString];

  v13 = objc_opt_new();
  v14 = MEMORY[0x277D73B30];
  date = [MEMORY[0x277CBEAA8] date];
  v16 = [v14 logTimeFromDate:date];
  [v13 setDeviceLogTime:v16];

  [v13 setProjectId:self->_projectId];
  [v30 setContext:v13];
  v17 = objc_opt_new();
  [v30 setDenormalizedEvent:v17];

  v18 = objc_opt_new();
  WeakRetained = objc_loadWeakRetained(&self->_client);
  v20 = [WeakRetained experimentIdentifiersWithNamespaceName:nameCopy];

  experimentId = [v20 experimentId];
  [v18 setExperimentId:experimentId];

  [v18 setDeploymentId:{objc_msgSend(v20, "deploymentId")}];
  treatmentId = [v20 treatmentId];
  [v18 setTreatmentId:treatmentId];

  [v18 addNamespaceName:nameCopy];
  denormalizedEvent = [v30 denormalizedEvent];
  [denormalizedEvent addTreatment:v18];

  v24 = [metricsCopy mutableCopy];
  denormalizedEvent2 = [v30 denormalizedEvent];
  [denormalizedEvent2 setMetrics:v24];

  v26 = [dimensionsCopy mutableCopy];
  denormalizedEvent3 = [v30 denormalizedEvent];
  [denormalizedEvent3 setUserDimensions:v26];

  systemDimensions = [MEMORY[0x277D73BB8] systemDimensions];
  denormalizedEvent4 = [v30 denormalizedEvent];
  [denormalizedEvent4 setSystemDimensions:systemDimensions];

  [(TRILogger *)self logEvent:v30];
}

- (void)logWithTrackingId:(id)id metric:(id)metric
{
  v12 = *MEMORY[0x277D85DE8];
  metricCopy = metric;
  idCopy = id;
  v8 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v10 = 136315138;
    v11 = "[TRILogger logWithTrackingId:metric:]";
    _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, "called deprecated method %s", &v10, 0xCu);
  }

  [(TRILogger *)self logWithTrackingId:idCopy metric:metricCopy dimensions:0];
  v9 = *MEMORY[0x277D85DE8];
}

@end