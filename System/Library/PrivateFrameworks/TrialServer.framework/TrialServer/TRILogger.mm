@interface TRILogger
- (TRILogger)initWithClient:(id)a3 projectId:(int)a4 logHandlers:(id)a5;
- (id)messageWithOneofField:(id)a3 withName:(id)a4;
- (unint64_t)_incrementedLogEventCount;
- (void)_dispatchLogEvent:(id)a3;
- (void)logEvent:(id)a3;
- (void)logWithMLRuntimeDimensions:(id)a3 metrics:(id)a4 factorState:(id)a5;
- (void)logWithNamespaceName:(id)a3 metrics:(id)a4 dimensions:(id)a5;
- (void)logWithProjectNameAndTrackingId:(id)a3 metrics:(id)a4 dimensions:(id)a5 trialSystemTelemetry:(id)a6;
- (void)logWithTrackingId:(id)a3 logLevel:(int64_t)a4 message:(id)a5;
- (void)logWithTrackingId:(id)a3 logLevel:(int64_t)a4 message:(id)a5 args:(char *)a6;
- (void)logWithTrackingId:(id)a3 message:(id)a4;
- (void)logWithTrackingId:(id)a3 metric:(id)a4;
- (void)logWithTrackingId:(id)a3 metric:(id)a4 dimensions:(id)a5;
- (void)logWithTrackingId:(id)a3 metrics:(id)a4 dimensions:(id)a5;
- (void)logWithTrackingId:(id)a3 metrics:(id)a4 dimensions:(id)a5 systemDimensions:(id)a6 trialSystemTelemetry:(id)a7;
- (void)logWithTrackingId:(id)a3 metrics:(id)a4 dimensions:(id)a5 trialSystemTelemetry:(id)a6;
@end

@implementation TRILogger

- (TRILogger)initWithClient:(id)a3 projectId:(int)a4 logHandlers:(id)a5
{
  v8 = a3;
  v9 = a5;
  v22.receiver = self;
  v22.super_class = TRILogger;
  v10 = [(TRILogger *)&v22 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_client, v8);
    v11->_projectId = a4;
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = [v13 UTF8String];
    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_attr_make_with_qos_class(v15, QOS_CLASS_BACKGROUND, 0);
    v17 = dispatch_queue_create(v14, v16);
    loggingQueue = v11->_loggingQueue;
    v11->_loggingQueue = v17;

    v19 = [v9 copy];
    logHandlers = v11->_logHandlers;
    v11->_logHandlers = v19;
  }

  return v11;
}

- (id)messageWithOneofField:(id)a3 withName:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 descriptor];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = [v7 oneofs];
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = *v21;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = [v12 name];
        v14 = [v13 isEqualToString:v6];

        if (v14)
        {
          v15 = [v12 fields];
          v16 = [v15 objectAtIndexedSubscript:0];

          v17 = [v16 name];
          v9 = [v5 valueForKey:v17];

          goto LABEL_11;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
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

- (void)_dispatchLogEvent:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CCA8D8] mainBundle];
  v6 = [v5 bundleIdentifier];
  v7 = v6;
  if (!v6)
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

        [*(*(&v15 + 1) + 8 * i) logEvent:v4 subgroupName:v8 queue:{self->_loggingQueue, v15}];
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

- (void)logEvent:(id)a3
{
  v6 = a3;
  v4 = [(TRILogger *)self _incrementedLogEventCount];
  v5 = [v6 context];
  [v5 setProcessEventIndex:v4];

  [(TRILogger *)self _dispatchLogEvent:v6];
}

- (void)logWithTrackingId:(id)a3 logLevel:(int64_t)a4 message:(id)a5 args:(char *)a6
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

- (void)logWithTrackingId:(id)a3 message:(id)a4
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

- (void)logWithTrackingId:(id)a3 logLevel:(int64_t)a4 message:(id)a5
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

- (void)logWithTrackingId:(id)a3 metrics:(id)a4 dimensions:(id)a5 trialSystemTelemetry:(id)a6
{
  v29 = *MEMORY[0x277D85DE8];
  v10 = MEMORY[0x277D73B28];
  projectId = self->_projectId;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = [v10 eventWithTrackingId:a3 projectId:projectId];
  v16 = [v14 mutableCopy];

  v17 = [v15 denormalizedEvent];
  [v17 setMetrics:v16];

  v18 = [v13 mutableCopy];
  v19 = [v15 denormalizedEvent];
  [v19 setUserDimensions:v18];

  v20 = [MEMORY[0x277D73BB8] systemDimensions];
  v21 = [v15 denormalizedEvent];
  [v21 setSystemDimensions:v20];

  v22 = [v12 copy];
  v23 = [v15 denormalizedEvent];
  [v23 setTrialSystemTelemetry:v22];

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

- (void)logWithTrackingId:(id)a3 metrics:(id)a4 dimensions:(id)a5 systemDimensions:(id)a6 trialSystemTelemetry:(id)a7
{
  v31 = *MEMORY[0x277D85DE8];
  v12 = MEMORY[0x277D73B28];
  projectId = self->_projectId;
  v14 = a7;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = [v12 eventWithTrackingId:a3 projectId:projectId];
  v19 = [v17 mutableCopy];

  v20 = [v18 denormalizedEvent];
  [v20 setMetrics:v19];

  v21 = [v16 mutableCopy];
  v22 = [v18 denormalizedEvent];
  [v22 setUserDimensions:v21];

  v23 = [v18 denormalizedEvent];
  [v23 setSystemDimensions:v15];

  v24 = [v14 copy];
  v25 = [v18 denormalizedEvent];
  [v25 setTrialSystemTelemetry:v24];

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

- (void)logWithProjectNameAndTrackingId:(id)a3 metrics:(id)a4 dimensions:(id)a5 trialSystemTelemetry:(id)a6
{
  v35 = *MEMORY[0x277D85DE8];
  v10 = MEMORY[0x277D73B28];
  projectId = self->_projectId;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = [v10 eventWithTrackingId:a3 projectId:projectId];
  v16 = [v14 mutableCopy];

  v17 = [v15 denormalizedEvent];
  [v17 setMetrics:v16];

  v18 = [v13 mutableCopy];
  v19 = [v15 denormalizedEvent];
  [v19 setUserDimensions:v18];

  v20 = [MEMORY[0x277D73BB8] systemDimensions];
  v21 = [v15 denormalizedEvent];
  [v21 setSystemDimensions:v20];

  v22 = [v12 copy];
  v23 = [v15 denormalizedEvent];
  [v23 setTrialSystemTelemetry:v22];

  v24 = [v15 denormalizedEvent];
  LOBYTE(v22) = [v24 hasTrialSystemTelemetry];

  if ((v22 & 1) == 0)
  {
    v25 = objc_opt_new();
    v26 = [v15 denormalizedEvent];
    [v26 setTrialSystemTelemetry:v25];
  }

  v27 = [MEMORY[0x277D73B98] projectNameFromId:self->_projectId];
  v28 = [v15 denormalizedEvent];
  v29 = [v28 trialSystemTelemetry];
  [v29 setClientProjectId:v27];

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

- (void)logWithMLRuntimeDimensions:(id)a3 metrics:(id)a4 factorState:(id)a5
{
  v36 = a5;
  v8 = MEMORY[0x277D73B28];
  v9 = a4;
  v10 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_client);
  v12 = [WeakRetained trackingId];
  v13 = [v8 eventWithTrackingId:v12 projectId:self->_projectId];

  v14 = [v9 mutableCopy];
  v15 = [v13 denormalizedEvent];
  [v15 setMetrics:v14];

  v16 = [v10 copy];
  v17 = [v13 denormalizedEvent];
  [v17 setMlruntimeDimensions:v16];

  v18 = [MEMORY[0x277D73BB8] systemDimensions];
  v19 = [v13 denormalizedEvent];
  [v19 setSystemDimensions:v18];

  if (v36)
  {
    v20 = objc_opt_new();
    v21 = [v13 denormalizedEvent];
    [v21 setTrialSystemTelemetry:v20];

    v22 = [v36 experimentIdentifiers];

    if (v22)
    {
      v23 = [v13 denormalizedEvent];
      v24 = [v23 trialSystemTelemetry];
      v25 = [v24 ensureExperimentFields];

      v26 = [v36 experimentIdentifiers];
      v27 = [v26 experimentId];
      [v25 setClientExperimentId:v27];

      v28 = [v36 experimentIdentifiers];
      v29 = [v28 treatmentId];
      [v25 setClientTreatmentId:v29];

      v30 = MEMORY[0x277CCABB0];
      v31 = [v36 experimentIdentifiers];
      v32 = [v30 numberWithInt:{objc_msgSend(v31, "deploymentId")}];
      v33 = [v32 stringValue];
      v34 = [v13 denormalizedEvent];
      v35 = [v34 trialSystemTelemetry];
      [v35 setClientDeploymentId:v33];
    }
  }

  [(TRILogger *)self logEvent:v13];
}

- (void)logWithTrackingId:(id)a3 metrics:(id)a4 dimensions:(id)a5
{
  v8 = MEMORY[0x277D73B28];
  projectId = self->_projectId;
  v10 = a5;
  v11 = a4;
  v18 = [v8 eventWithTrackingId:a3 projectId:projectId];
  v12 = [v11 mutableCopy];

  v13 = [v18 denormalizedEvent];
  [v13 setMetrics:v12];

  v14 = [v10 mutableCopy];
  v15 = [v18 denormalizedEvent];
  [v15 setUserDimensions:v14];

  v16 = [MEMORY[0x277D73BB8] systemDimensions];
  v17 = [v18 denormalizedEvent];
  [v17 setSystemDimensions:v16];

  [(TRILogger *)self logEvent:v18];
}

- (void)logWithTrackingId:(id)a3 metric:(id)a4 dimensions:(id)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v10)
  {
    v24 = self;
    v25 = v9;
    v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v10, "count")}];
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

    v9 = v25;
    self = v24;
  }

  else
  {
    v12 = 0;
  }

  v30 = v9;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
  [(TRILogger *)self logWithTrackingId:v8 metrics:v22 dimensions:v12];

  v23 = *MEMORY[0x277D85DE8];
}

- (void)logWithNamespaceName:(id)a3 metrics:(id)a4 dimensions:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v30 = objc_opt_new();
  v11 = objc_opt_new();
  v12 = [v11 UUIDString];
  [v30 setLogEventId:v12];

  v13 = objc_opt_new();
  v14 = MEMORY[0x277D73B30];
  v15 = [MEMORY[0x277CBEAA8] date];
  v16 = [v14 logTimeFromDate:v15];
  [v13 setDeviceLogTime:v16];

  [v13 setProjectId:self->_projectId];
  [v30 setContext:v13];
  v17 = objc_opt_new();
  [v30 setDenormalizedEvent:v17];

  v18 = objc_opt_new();
  WeakRetained = objc_loadWeakRetained(&self->_client);
  v20 = [WeakRetained experimentIdentifiersWithNamespaceName:v10];

  v21 = [v20 experimentId];
  [v18 setExperimentId:v21];

  [v18 setDeploymentId:{objc_msgSend(v20, "deploymentId")}];
  v22 = [v20 treatmentId];
  [v18 setTreatmentId:v22];

  [v18 addNamespaceName:v10];
  v23 = [v30 denormalizedEvent];
  [v23 addTreatment:v18];

  v24 = [v9 mutableCopy];
  v25 = [v30 denormalizedEvent];
  [v25 setMetrics:v24];

  v26 = [v8 mutableCopy];
  v27 = [v30 denormalizedEvent];
  [v27 setUserDimensions:v26];

  v28 = [MEMORY[0x277D73BB8] systemDimensions];
  v29 = [v30 denormalizedEvent];
  [v29 setSystemDimensions:v28];

  [(TRILogger *)self logEvent:v30];
}

- (void)logWithTrackingId:(id)a3 metric:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v10 = 136315138;
    v11 = "[TRILogger logWithTrackingId:metric:]";
    _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, "called deprecated method %s", &v10, 0xCu);
  }

  [(TRILogger *)self logWithTrackingId:v7 metric:v6 dimensions:0];
  v9 = *MEMORY[0x277D85DE8];
}

@end