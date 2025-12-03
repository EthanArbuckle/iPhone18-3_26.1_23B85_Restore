@interface AeroMLTracerSpan
- (id)createSubEventWithName:(id)name details:(id)details attributes:(id)attributes;
- (id)createSubSpanWithName:(id)name;
- (id)getProcessName;
- (id)getSpanId;
- (id)initSpanWithSpanName:(id)name traceSession:(id)session parentSpanId:(id)id;
- (id)serializeAttributes:(id)attributes;
- (id)stringForQoSClass:(unsigned int)class;
- (unsigned)getMonotonicTimeInMilliseconds;
- (void)addAttributes:(id)attributes;
- (void)addDeviceIdentifier:(id)identifier;
- (void)addTrialDeploymentId:(id)id trialExperimentId:(id)experimentId trialTreatmentId:(id)treatmentId;
- (void)emitPETEvent;
- (void)end;
- (void)logDebugEventWithName:(id)name details:(id)details attributes:(id)attributes;
- (void)logErrorEventWithName:(id)name details:(id)details attributes:(id)attributes;
- (void)logErrorMessageWithCA:(id)a;
- (void)logInfoEventWithName:(id)name details:(id)details attributes:(id)attributes;
- (void)logInfoMessageWithCA:(id)a;
- (void)logSchedulingInformation;
- (void)start;
@end

@implementation AeroMLTracerSpan

- (void)emitPETEvent
{
  v20 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69C5B48] = [MEMORY[0x1E69C5B48] sharedInstance];
  spanEvent = [(AeroMLTracerSpan *)self spanEvent];
  traceSession = [(AeroMLTracerSpan *)self traceSession];
  projectName = [traceSession projectName];
  [mEMORY[0x1E69C5B48] logMessage:spanEvent subGroup:projectName];

  traceChannel = [(AeroMLTracerSession *)self->_traceSession traceChannel];
  if (os_log_type_enabled(traceChannel, OS_LOG_TYPE_INFO))
  {
    spanEvent2 = [(AeroMLTracerSpan *)self spanEvent];
    *buf = 138412290;
    v19 = spanEvent2;
    _os_log_impl(&dword_1B5ED1000, traceChannel, OS_LOG_TYPE_INFO, "emitted PET message with spanEvent: %@", buf, 0xCu);
  }

  [(AeroMLTracerSpan *)self logInfoMessageWithCA:@"PET_Message_Sent"];
  if (emitPETEvent__pasOnceToken24 != -1)
  {
    [AeroMLTracerSpan emitPETEvent];
  }

  v9 = MEMORY[0x1E698ECA8];
  v10 = emitPETEvent__pasExprOnceResult;
  v11 = [v9 alloc];
  spanEvent3 = [(AeroMLTracerSpan *)self spanEvent];
  v13 = [v11 initWithSoftwareTracing:spanEvent3];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__AeroMLTracerSpan_emitPETEvent__block_invoke_2;
  block[3] = &unk_1E7C24268;
  v17 = v13;
  v14 = v13;
  dispatch_async(v10, block);

  v15 = *MEMORY[0x1E69E9840];
}

- (void)end
{
  v10 = *MEMORY[0x1E69E9840];
  spanEvent = [self spanEvent];
  spanId = [spanEvent spanId];
  OUTLINED_FUNCTION_0_4(&dword_1B5ED1000, v3, v4, "Try to end the span which is already ended: %@", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x1E69E9840];
}

- (unsigned)getMonotonicTimeInMilliseconds
{
  if (!dword_1EB92407C)
  {
    mach_timebase_info(&getMonotonicTimeInMilliseconds_timebase);
  }

  return mach_absolute_time() * getMonotonicTimeInMilliseconds_timebase / dword_1EB92407C / 0xF4240;
}

- (id)getProcessName
{
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  processName = [processInfo processName];

  return processName;
}

- (void)start
{
  v29 = *MEMORY[0x1E69E9840];
  [(AeroMLTracerSpan *)self logSchedulingInformation];
  traceSession = [(AeroMLTracerSpan *)self traceSession];
  traceSignpost = [traceSession traceSignpost];
  [(AeroMLTracerSpan *)self setIntervalId:os_signpost_id_generate(traceSignpost)];

  getMonotonicTimeInMilliseconds = [(AeroMLTracerSpan *)self getMonotonicTimeInMilliseconds];
  spanEvent = [(AeroMLTracerSpan *)self spanEvent];
  [spanEvent setPrivatizedStartTime:getMonotonicTimeInMilliseconds];

  spanEvent2 = [(AeroMLTracerSpan *)self spanEvent];
  parentSpanId = [spanEvent2 parentSpanId];
  v9 = [parentSpanId isEqualToString:@"-1"];

  traceSession2 = [(AeroMLTracerSpan *)self traceSession];
  traceSignpost2 = [traceSession2 traceSignpost];

  intervalId = [(AeroMLTracerSpan *)self intervalId];
  v13 = intervalId;
  if (v9)
  {
    if (intervalId - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(traceSignpost2))
    {
      spanEvent3 = [(AeroMLTracerSpan *)self spanEvent];
      traceId = [spanEvent3 traceId];
      spanEvent4 = [(AeroMLTracerSpan *)self spanEvent];
      name = [spanEvent4 name];
      v25 = 138543618;
      v26 = traceId;
      v27 = 2114;
      v28 = name;
      v18 = "RootSpanEvent";
LABEL_8:
      _os_signpost_emit_with_name_impl(&dword_1B5ED1000, traceSignpost2, OS_SIGNPOST_INTERVAL_BEGIN, v13, v18, " TraceId=%{signpost.telemetry:string1,public}@  SpanName=%{signpost.telemetry:string2,public}@ ", &v25, 0x16u);
    }
  }

  else if (intervalId - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(traceSignpost2))
  {
    spanEvent3 = [(AeroMLTracerSpan *)self spanEvent];
    traceId = [spanEvent3 traceId];
    spanEvent4 = [(AeroMLTracerSpan *)self spanEvent];
    name = [spanEvent4 name];
    v25 = 138543618;
    v26 = traceId;
    v27 = 2114;
    v28 = name;
    v18 = "SubSpanEvent";
    goto LABEL_8;
  }

  v19 = [(AeroMLTracerSpan *)self getSpanIdFromIntervalId:[(AeroMLTracerSpan *)self intervalId]];
  spanEvent5 = [(AeroMLTracerSpan *)self spanEvent];
  [spanEvent5 setSpanId:v19];

  [(AeroMLTracerSpan *)self setIsStarted:1];
  traceChannel = [(AeroMLTracerSession *)self->_traceSession traceChannel];
  if (os_log_type_enabled(traceChannel, OS_LOG_TYPE_INFO))
  {
    spanEvent6 = [(AeroMLTracerSpan *)self spanEvent];
    name2 = [spanEvent6 name];
    v25 = 138412290;
    v26 = name2;
    _os_log_impl(&dword_1B5ED1000, traceChannel, OS_LOG_TYPE_INFO, "start span with spanEvent: %@", &v25, 0xCu);
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)logSchedulingInformation
{
  traceChannel = [(AeroMLTracerSession *)self->_traceSession traceChannel];
  if (os_log_type_enabled(traceChannel, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B5ED1000, traceChannel, OS_LOG_TYPE_INFO, "start to record  logSchedulingInformation", buf, 2u);
  }

  v4 = dispatch_get_current_queue();
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:dispatch_queue_get_label(v4)];
  spanEvent = [(AeroMLTracerSpan *)self spanEvent];
  [spanEvent setGcdQueueName:v5];

  relative_priority_ptr = 0;
  dispatch_queue_get_qos_class(v4, &relative_priority_ptr);
  v7 = [(AeroMLTracerSpan *)self stringForQoSClass:qos_class_self()];
  spanEvent2 = [(AeroMLTracerSpan *)self spanEvent];
  [spanEvent2 setQosClassName:v7];

  relative_priority_ptr = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", relative_priority_ptr];
  spanEvent3 = [(AeroMLTracerSpan *)self spanEvent];
  [spanEvent3 setRelativePriority:relative_priority_ptr];

  traceChannel2 = [(AeroMLTracerSession *)self->_traceSession traceChannel];
  if (os_log_type_enabled(traceChannel2, OS_LOG_TYPE_INFO))
  {
    *v12 = 0;
    _os_log_impl(&dword_1B5ED1000, traceChannel2, OS_LOG_TYPE_INFO, "finished recording  logSchedulingInformation", v12, 2u);
  }
}

- (id)getSpanId
{
  spanEvent = [(AeroMLTracerSpan *)self spanEvent];
  spanId = [spanEvent spanId];

  return spanId;
}

- (id)initSpanWithSpanName:(id)name traceSession:(id)session parentSpanId:(id)id
{
  nameCopy = name;
  sessionCopy = session;
  idCopy = id;
  v20.receiver = self;
  v20.super_class = AeroMLTracerSpan;
  v11 = [(AeroMLTracerSpan *)&v20 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_traceSession, session);
    v13 = objc_opt_new();
    spanEvent = v12->_spanEvent;
    v12->_spanEvent = v13;

    [(AeroMLTracerSpanEvent *)v12->_spanEvent setVersion:@"055366d53d9de83f5839aaa4511d5b5409bc1d12"];
    [(AeroMLTracerSpanEvent *)v12->_spanEvent setName:nameCopy];
    traceId = [sessionCopy traceId];
    [(AeroMLTracerSpanEvent *)v12->_spanEvent setTraceId:traceId];

    if (idCopy)
    {
      v16 = idCopy;
    }

    else
    {
      v16 = @"-1";
    }

    [(AeroMLTracerSpanEvent *)v12->_spanEvent setParentSpanId:v16];
    getProcessName = [(AeroMLTracerSpan *)v12 getProcessName];
    [(AeroMLTracerSpanEvent *)v12->_spanEvent setProcessName:getProcessName];

    projectName = [(AeroMLTracerSession *)v12->_traceSession projectName];
    [(AeroMLTracerSpanEvent *)v12->_spanEvent setProjectName:projectName];

    *&v12->_isEnded = 0;
    v12->_intervalId = 0;
  }

  return v12;
}

- (id)createSubSpanWithName:(id)name
{
  nameCopy = name;
  v5 = [AeroMLTracerSpan alloc];
  traceSession = [(AeroMLTracerSpan *)self traceSession];
  spanEvent = [(AeroMLTracerSpan *)self spanEvent];
  spanId = [spanEvent spanId];
  v9 = [(AeroMLTracerSpan *)v5 initSpanWithSpanName:nameCopy traceSession:traceSession parentSpanId:spanId];

  return v9;
}

- (void)logInfoEventWithName:(id)name details:(id)details attributes:(id)attributes
{
  v29 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  detailsCopy = details;
  v10 = [(AeroMLTracerSpan *)self createSubEventWithName:nameCopy details:detailsCopy attributes:attributes];
  [v10 setPrivatizedTimeStamp:{-[AeroMLTracerSpan getMonotonicTimeInMilliseconds](self, "getMonotonicTimeInMilliseconds")}];
  traceSession = [(AeroMLTracerSpan *)self traceSession];
  traceSignpost = [traceSession traceSignpost];

  if (os_signpost_enabled(traceSignpost))
  {
    spanEvent = [(AeroMLTracerSpan *)self spanEvent];
    traceId = [spanEvent traceId];
    attributes = [v10 attributes];
    v16 = [(AeroMLTracerSpan *)self serializeAttributes:attributes];
    v21 = 138544130;
    v22 = traceId;
    v23 = 2114;
    v24 = nameCopy;
    v25 = 2114;
    v26 = detailsCopy;
    v27 = 2114;
    v28 = v16;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, traceSignpost, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "InfoEvent", " TraceId=%{signpost.telemetry:string1,public}@  EventName=%{signpost.telemetry:string2,public}@  EventDetails=%{public, signpost.description:attribute}@  Attributes=%{public}@ ", &v21, 0x2Au);
  }

  spanEvent2 = [(AeroMLTracerSpan *)self spanEvent];
  [spanEvent2 addInfoEvents:v10];

  traceChannel = [(AeroMLTracerSession *)self->_traceSession traceChannel];
  if (os_log_type_enabled(traceChannel, OS_LOG_TYPE_INFO))
  {
    spanEvent3 = [(AeroMLTracerSpan *)self spanEvent];
    v21 = 138412290;
    v22 = spanEvent3;
    _os_log_impl(&dword_1B5ED1000, traceChannel, OS_LOG_TYPE_INFO, "log info event with spanEvent: %@", &v21, 0xCu);
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)logErrorEventWithName:(id)name details:(id)details attributes:(id)attributes
{
  v29 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  detailsCopy = details;
  v10 = [(AeroMLTracerSpan *)self createSubEventWithName:nameCopy details:detailsCopy attributes:attributes];
  [v10 setPrivatizedTimeStamp:{-[AeroMLTracerSpan getMonotonicTimeInMilliseconds](self, "getMonotonicTimeInMilliseconds")}];
  traceSession = [(AeroMLTracerSpan *)self traceSession];
  traceSignpost = [traceSession traceSignpost];

  if (os_signpost_enabled(traceSignpost))
  {
    spanEvent = [(AeroMLTracerSpan *)self spanEvent];
    traceId = [spanEvent traceId];
    attributes = [v10 attributes];
    v16 = [(AeroMLTracerSpan *)self serializeAttributes:attributes];
    v21 = 138544130;
    v22 = traceId;
    v23 = 2114;
    v24 = nameCopy;
    v25 = 2114;
    v26 = detailsCopy;
    v27 = 2114;
    v28 = v16;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, traceSignpost, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ErrorEvent", " TraceId=%{signpost.telemetry:string1,public}@  EventName=%{signpost.telemetry:string2,public}@  EventDetails=%{public, signpost.description:attribute}@  Attributes=%{public}@ ", &v21, 0x2Au);
  }

  spanEvent2 = [(AeroMLTracerSpan *)self spanEvent];
  [spanEvent2 addErrorEvents:v10];

  traceChannel = [(AeroMLTracerSession *)self->_traceSession traceChannel];
  if (os_log_type_enabled(traceChannel, OS_LOG_TYPE_INFO))
  {
    spanEvent3 = [(AeroMLTracerSpan *)self spanEvent];
    v21 = 138412290;
    v22 = spanEvent3;
    _os_log_impl(&dword_1B5ED1000, traceChannel, OS_LOG_TYPE_INFO, "log error event with spanEvent: %@", &v21, 0xCu);
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)logDebugEventWithName:(id)name details:(id)details attributes:(id)attributes
{
  v29 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  detailsCopy = details;
  v10 = [(AeroMLTracerSpan *)self createSubEventWithName:nameCopy details:detailsCopy attributes:attributes];
  [v10 setPrivatizedTimeStamp:{-[AeroMLTracerSpan getMonotonicTimeInMilliseconds](self, "getMonotonicTimeInMilliseconds")}];
  traceSession = [(AeroMLTracerSpan *)self traceSession];
  traceSignpost = [traceSession traceSignpost];

  if (os_signpost_enabled(traceSignpost))
  {
    spanEvent = [(AeroMLTracerSpan *)self spanEvent];
    traceId = [spanEvent traceId];
    attributes = [v10 attributes];
    v16 = [(AeroMLTracerSpan *)self serializeAttributes:attributes];
    v21 = 138544130;
    v22 = traceId;
    v23 = 2114;
    v24 = nameCopy;
    v25 = 2114;
    v26 = detailsCopy;
    v27 = 2114;
    v28 = v16;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, traceSignpost, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DebugEvent", " TraceId=%{signpost.telemetry:string1,public}@  EventName=%{signpost.telemetry:string2,public}@  EventDetails=%{public, signpost.description:attribute}@  Attributes=%{public}@ ", &v21, 0x2Au);
  }

  spanEvent2 = [(AeroMLTracerSpan *)self spanEvent];
  [spanEvent2 addDebugEvents:v10];

  traceChannel = [(AeroMLTracerSession *)self->_traceSession traceChannel];
  if (os_log_type_enabled(traceChannel, OS_LOG_TYPE_INFO))
  {
    spanEvent3 = [(AeroMLTracerSpan *)self spanEvent];
    v21 = 138412290;
    v22 = spanEvent3;
    _os_log_impl(&dword_1B5ED1000, traceChannel, OS_LOG_TYPE_INFO, "log debug event with spanEvent: %@", &v21, 0xCu);
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)addTrialDeploymentId:(id)id trialExperimentId:(id)experimentId trialTreatmentId:(id)treatmentId
{
  treatmentIdCopy = treatmentId;
  experimentIdCopy = experimentId;
  idCopy = id;
  spanEvent = [(AeroMLTracerSpan *)self spanEvent];
  [spanEvent setTrialDeploymentId:idCopy];

  spanEvent2 = [(AeroMLTracerSpan *)self spanEvent];
  [spanEvent2 setTrialExperimentId:experimentIdCopy];

  spanEvent3 = [(AeroMLTracerSpan *)self spanEvent];
  [spanEvent3 setTrialTreatmentId:treatmentIdCopy];
}

- (void)addDeviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  spanEvent = [(AeroMLTracerSpan *)self spanEvent];
  [spanEvent setDeviceIdentifier:identifierCopy];

  traceChannel = [(AeroMLTracerSession *)self->_traceSession traceChannel];
  if (os_log_type_enabled(traceChannel, OS_LOG_TYPE_DEBUG))
  {
    [(AeroMLTracerSpan *)identifierCopy addDeviceIdentifier:traceChannel];
  }
}

- (void)addAttributes:(id)attributes
{
  v19 = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [attributesCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(attributesCopy);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        v10 = objc_opt_new();
        [v10 setName:v9];
        v11 = [attributesCopy objectForKeyedSubscript:v9];
        [v10 setStringValue:v11];

        spanEvent = [(AeroMLTracerSpan *)self spanEvent];
        [spanEvent addAttributes:v10];

        ++v8;
      }

      while (v6 != v8);
      v6 = [attributesCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)logInfoMessageWithCA:(id)a
{
  aCopy = a;
  v3 = aCopy;
  AnalyticsSendEventLazy();
}

id __41__AeroMLTracerSpan_logInfoMessageWithCA___block_invoke(uint64_t a1)
{
  v15[5] = *MEMORY[0x1E69E9840];
  v14[0] = @"TraceId";
  v2 = [*(a1 + 32) spanEvent];
  v3 = [v2 traceId];
  v15[0] = v3;
  v14[1] = @"SpanId";
  v4 = [*(a1 + 32) spanEvent];
  v5 = [v4 spanId];
  v15[1] = v5;
  v14[2] = @"projectName";
  v6 = [*(a1 + 32) spanEvent];
  v7 = [v6 projectName];
  v15[2] = v7;
  v14[3] = @"processName";
  v8 = [*(a1 + 32) spanEvent];
  v9 = [v8 processName];
  v14[4] = @"infoMessage";
  v10 = *(a1 + 40);
  v15[3] = v9;
  v15[4] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:5];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)logErrorMessageWithCA:(id)a
{
  aCopy = a;
  v3 = aCopy;
  AnalyticsSendEventLazy();
}

id __42__AeroMLTracerSpan_logErrorMessageWithCA___block_invoke(uint64_t a1)
{
  v15[5] = *MEMORY[0x1E69E9840];
  v14[0] = @"TraceId";
  v2 = [*(a1 + 32) spanEvent];
  v3 = [v2 traceId];
  v15[0] = v3;
  v14[1] = @"SpanId";
  v4 = [*(a1 + 32) spanEvent];
  v5 = [v4 spanId];
  v15[1] = v5;
  v14[2] = @"projectName";
  v6 = [*(a1 + 32) spanEvent];
  v7 = [v6 projectName];
  v15[2] = v7;
  v14[3] = @"processName";
  v8 = [*(a1 + 32) spanEvent];
  v9 = [v8 processName];
  v14[4] = @"errorMessage";
  v10 = *(a1 + 40);
  v15[3] = v9;
  v15[4] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:5];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

void __32__AeroMLTracerSpan_emitPETEvent__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_attr_make_with_qos_class(v1, QOS_CLASS_UTILITY, 0);

  v3 = dispatch_queue_create("emitPETEvent", v2);
  v4 = emitPETEvent__pasExprOnceResult;
  emitPETEvent__pasExprOnceResult = v3;

  objc_autoreleasePoolPop(v0);
}

uint64_t __32__AeroMLTracerSpan_emitPETEvent__block_invoke_2(uint64_t a1)
{
  if (kSqlEventFired_block_invoke__pasOnceToken25 != -1)
  {
    __32__AeroMLTracerSpan_emitPETEvent__block_invoke_2_cold_1();
  }

  v2 = kSqlEventFired_block_invoke__pasExprOnceResult;
  v3 = *(a1 + 32);

  return [v2 sendEvent:v3];
}

void __32__AeroMLTracerSpan_emitPETEvent__block_invoke_3()
{
  v0 = objc_autoreleasePoolPush();
  v1 = BiomeLibrary();
  v2 = [v1 MLSE];
  v3 = [v2 ShareSheet];
  v4 = [v3 Metrics];
  v5 = [v4 SystemResourceUsage];
  v6 = [v5 source];
  v7 = kSqlEventFired_block_invoke__pasExprOnceResult;
  kSqlEventFired_block_invoke__pasExprOnceResult = v6;

  objc_autoreleasePoolPop(v0);
}

- (id)createSubEventWithName:(id)name details:(id)details attributes:(id)attributes
{
  v26 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  detailsCopy = details;
  attributesCopy = attributes;
  v10 = objc_opt_new();
  [v10 setName:nameCopy];
  [v10 setDetails:detailsCopy];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = attributesCopy;
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v21 + 1) + 8 * i);
        v17 = objc_opt_new();
        [v17 setName:{v16, v21}];
        v18 = [v11 objectForKeyedSubscript:v16];
        [v17 setStringValue:v18];

        [v10 addAttributes:v17];
      }

      v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v13);
  }

  v19 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)serializeAttributes:(id)attributes
{
  v23 = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  string = [MEMORY[0x1E696AD60] string];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = attributesCopy;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        name = [v10 name];
        if (name)
        {
          v12 = name;
          stringValue = [v10 stringValue];

          if (stringValue)
          {
            name2 = [v10 name];
            stringValue2 = [v10 stringValue];
            [string appendFormat:@" %@:%@, ", name2, stringValue2, v18];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v16 = *MEMORY[0x1E69E9840];

  return string;
}

- (id)stringForQoSClass:(unsigned int)class
{
  HIDWORD(v4) = class - 9;
  LODWORD(v4) = class - 9;
  v3 = v4 >> 2;
  if (v3 > 6)
  {
    return @"Unspecified";
  }

  else
  {
    return off_1E7C25E48[v3];
  }
}

- (void)addDeviceIdentifier:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1B5ED1000, a2, OS_LOG_TYPE_DEBUG, "log device identifer: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end