@interface AeroMLTracerSpan
- (id)createSubEventWithName:(id)a3 details:(id)a4 attributes:(id)a5;
- (id)createSubSpanWithName:(id)a3;
- (id)getProcessName;
- (id)getSpanId;
- (id)initSpanWithSpanName:(id)a3 traceSession:(id)a4 parentSpanId:(id)a5;
- (id)serializeAttributes:(id)a3;
- (id)stringForQoSClass:(unsigned int)a3;
- (unsigned)getMonotonicTimeInMilliseconds;
- (void)addAttributes:(id)a3;
- (void)addDeviceIdentifier:(id)a3;
- (void)addTrialDeploymentId:(id)a3 trialExperimentId:(id)a4 trialTreatmentId:(id)a5;
- (void)emitPETEvent;
- (void)end;
- (void)logDebugEventWithName:(id)a3 details:(id)a4 attributes:(id)a5;
- (void)logErrorEventWithName:(id)a3 details:(id)a4 attributes:(id)a5;
- (void)logErrorMessageWithCA:(id)a3;
- (void)logInfoEventWithName:(id)a3 details:(id)a4 attributes:(id)a5;
- (void)logInfoMessageWithCA:(id)a3;
- (void)logSchedulingInformation;
- (void)start;
@end

@implementation AeroMLTracerSpan

- (void)emitPETEvent
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69C5B48] sharedInstance];
  v4 = [(AeroMLTracerSpan *)self spanEvent];
  v5 = [(AeroMLTracerSpan *)self traceSession];
  v6 = [v5 projectName];
  [v3 logMessage:v4 subGroup:v6];

  v7 = [(AeroMLTracerSession *)self->_traceSession traceChannel];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [(AeroMLTracerSpan *)self spanEvent];
    *buf = 138412290;
    v19 = v8;
    _os_log_impl(&dword_1B5ED1000, v7, OS_LOG_TYPE_INFO, "emitted PET message with spanEvent: %@", buf, 0xCu);
  }

  [(AeroMLTracerSpan *)self logInfoMessageWithCA:@"PET_Message_Sent"];
  if (emitPETEvent__pasOnceToken24 != -1)
  {
    [AeroMLTracerSpan emitPETEvent];
  }

  v9 = MEMORY[0x1E698ECA8];
  v10 = emitPETEvent__pasExprOnceResult;
  v11 = [v9 alloc];
  v12 = [(AeroMLTracerSpan *)self spanEvent];
  v13 = [v11 initWithSoftwareTracing:v12];

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
  v1 = [a1 spanEvent];
  v2 = [v1 spanId];
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
  v2 = [MEMORY[0x1E696AE30] processInfo];
  v3 = [v2 processName];

  return v3;
}

- (void)start
{
  v29 = *MEMORY[0x1E69E9840];
  [(AeroMLTracerSpan *)self logSchedulingInformation];
  v3 = [(AeroMLTracerSpan *)self traceSession];
  v4 = [v3 traceSignpost];
  [(AeroMLTracerSpan *)self setIntervalId:os_signpost_id_generate(v4)];

  v5 = [(AeroMLTracerSpan *)self getMonotonicTimeInMilliseconds];
  v6 = [(AeroMLTracerSpan *)self spanEvent];
  [v6 setPrivatizedStartTime:v5];

  v7 = [(AeroMLTracerSpan *)self spanEvent];
  v8 = [v7 parentSpanId];
  v9 = [v8 isEqualToString:@"-1"];

  v10 = [(AeroMLTracerSpan *)self traceSession];
  v11 = [v10 traceSignpost];

  v12 = [(AeroMLTracerSpan *)self intervalId];
  v13 = v12;
  if (v9)
  {
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      v14 = [(AeroMLTracerSpan *)self spanEvent];
      v15 = [v14 traceId];
      v16 = [(AeroMLTracerSpan *)self spanEvent];
      v17 = [v16 name];
      v25 = 138543618;
      v26 = v15;
      v27 = 2114;
      v28 = v17;
      v18 = "RootSpanEvent";
LABEL_8:
      _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v13, v18, " TraceId=%{signpost.telemetry:string1,public}@  SpanName=%{signpost.telemetry:string2,public}@ ", &v25, 0x16u);
    }
  }

  else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    v14 = [(AeroMLTracerSpan *)self spanEvent];
    v15 = [v14 traceId];
    v16 = [(AeroMLTracerSpan *)self spanEvent];
    v17 = [v16 name];
    v25 = 138543618;
    v26 = v15;
    v27 = 2114;
    v28 = v17;
    v18 = "SubSpanEvent";
    goto LABEL_8;
  }

  v19 = [(AeroMLTracerSpan *)self getSpanIdFromIntervalId:[(AeroMLTracerSpan *)self intervalId]];
  v20 = [(AeroMLTracerSpan *)self spanEvent];
  [v20 setSpanId:v19];

  [(AeroMLTracerSpan *)self setIsStarted:1];
  v21 = [(AeroMLTracerSession *)self->_traceSession traceChannel];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = [(AeroMLTracerSpan *)self spanEvent];
    v23 = [v22 name];
    v25 = 138412290;
    v26 = v23;
    _os_log_impl(&dword_1B5ED1000, v21, OS_LOG_TYPE_INFO, "start span with spanEvent: %@", &v25, 0xCu);
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)logSchedulingInformation
{
  v3 = [(AeroMLTracerSession *)self->_traceSession traceChannel];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B5ED1000, v3, OS_LOG_TYPE_INFO, "start to record  logSchedulingInformation", buf, 2u);
  }

  v4 = dispatch_get_current_queue();
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:dispatch_queue_get_label(v4)];
  v6 = [(AeroMLTracerSpan *)self spanEvent];
  [v6 setGcdQueueName:v5];

  relative_priority_ptr = 0;
  dispatch_queue_get_qos_class(v4, &relative_priority_ptr);
  v7 = [(AeroMLTracerSpan *)self stringForQoSClass:qos_class_self()];
  v8 = [(AeroMLTracerSpan *)self spanEvent];
  [v8 setQosClassName:v7];

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", relative_priority_ptr];
  v10 = [(AeroMLTracerSpan *)self spanEvent];
  [v10 setRelativePriority:v9];

  v11 = [(AeroMLTracerSession *)self->_traceSession traceChannel];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *v12 = 0;
    _os_log_impl(&dword_1B5ED1000, v11, OS_LOG_TYPE_INFO, "finished recording  logSchedulingInformation", v12, 2u);
  }
}

- (id)getSpanId
{
  v2 = [(AeroMLTracerSpan *)self spanEvent];
  v3 = [v2 spanId];

  return v3;
}

- (id)initSpanWithSpanName:(id)a3 traceSession:(id)a4 parentSpanId:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20.receiver = self;
  v20.super_class = AeroMLTracerSpan;
  v11 = [(AeroMLTracerSpan *)&v20 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_traceSession, a4);
    v13 = objc_opt_new();
    spanEvent = v12->_spanEvent;
    v12->_spanEvent = v13;

    [(AeroMLTracerSpanEvent *)v12->_spanEvent setVersion:@"055366d53d9de83f5839aaa4511d5b5409bc1d12"];
    [(AeroMLTracerSpanEvent *)v12->_spanEvent setName:v8];
    v15 = [v9 traceId];
    [(AeroMLTracerSpanEvent *)v12->_spanEvent setTraceId:v15];

    if (v10)
    {
      v16 = v10;
    }

    else
    {
      v16 = @"-1";
    }

    [(AeroMLTracerSpanEvent *)v12->_spanEvent setParentSpanId:v16];
    v17 = [(AeroMLTracerSpan *)v12 getProcessName];
    [(AeroMLTracerSpanEvent *)v12->_spanEvent setProcessName:v17];

    v18 = [(AeroMLTracerSession *)v12->_traceSession projectName];
    [(AeroMLTracerSpanEvent *)v12->_spanEvent setProjectName:v18];

    *&v12->_isEnded = 0;
    v12->_intervalId = 0;
  }

  return v12;
}

- (id)createSubSpanWithName:(id)a3
{
  v4 = a3;
  v5 = [AeroMLTracerSpan alloc];
  v6 = [(AeroMLTracerSpan *)self traceSession];
  v7 = [(AeroMLTracerSpan *)self spanEvent];
  v8 = [v7 spanId];
  v9 = [(AeroMLTracerSpan *)v5 initSpanWithSpanName:v4 traceSession:v6 parentSpanId:v8];

  return v9;
}

- (void)logInfoEventWithName:(id)a3 details:(id)a4 attributes:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [(AeroMLTracerSpan *)self createSubEventWithName:v8 details:v9 attributes:a5];
  [v10 setPrivatizedTimeStamp:{-[AeroMLTracerSpan getMonotonicTimeInMilliseconds](self, "getMonotonicTimeInMilliseconds")}];
  v11 = [(AeroMLTracerSpan *)self traceSession];
  v12 = [v11 traceSignpost];

  if (os_signpost_enabled(v12))
  {
    v13 = [(AeroMLTracerSpan *)self spanEvent];
    v14 = [v13 traceId];
    v15 = [v10 attributes];
    v16 = [(AeroMLTracerSpan *)self serializeAttributes:v15];
    v21 = 138544130;
    v22 = v14;
    v23 = 2114;
    v24 = v8;
    v25 = 2114;
    v26 = v9;
    v27 = 2114;
    v28 = v16;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "InfoEvent", " TraceId=%{signpost.telemetry:string1,public}@  EventName=%{signpost.telemetry:string2,public}@  EventDetails=%{public, signpost.description:attribute}@  Attributes=%{public}@ ", &v21, 0x2Au);
  }

  v17 = [(AeroMLTracerSpan *)self spanEvent];
  [v17 addInfoEvents:v10];

  v18 = [(AeroMLTracerSession *)self->_traceSession traceChannel];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = [(AeroMLTracerSpan *)self spanEvent];
    v21 = 138412290;
    v22 = v19;
    _os_log_impl(&dword_1B5ED1000, v18, OS_LOG_TYPE_INFO, "log info event with spanEvent: %@", &v21, 0xCu);
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)logErrorEventWithName:(id)a3 details:(id)a4 attributes:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [(AeroMLTracerSpan *)self createSubEventWithName:v8 details:v9 attributes:a5];
  [v10 setPrivatizedTimeStamp:{-[AeroMLTracerSpan getMonotonicTimeInMilliseconds](self, "getMonotonicTimeInMilliseconds")}];
  v11 = [(AeroMLTracerSpan *)self traceSession];
  v12 = [v11 traceSignpost];

  if (os_signpost_enabled(v12))
  {
    v13 = [(AeroMLTracerSpan *)self spanEvent];
    v14 = [v13 traceId];
    v15 = [v10 attributes];
    v16 = [(AeroMLTracerSpan *)self serializeAttributes:v15];
    v21 = 138544130;
    v22 = v14;
    v23 = 2114;
    v24 = v8;
    v25 = 2114;
    v26 = v9;
    v27 = 2114;
    v28 = v16;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ErrorEvent", " TraceId=%{signpost.telemetry:string1,public}@  EventName=%{signpost.telemetry:string2,public}@  EventDetails=%{public, signpost.description:attribute}@  Attributes=%{public}@ ", &v21, 0x2Au);
  }

  v17 = [(AeroMLTracerSpan *)self spanEvent];
  [v17 addErrorEvents:v10];

  v18 = [(AeroMLTracerSession *)self->_traceSession traceChannel];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = [(AeroMLTracerSpan *)self spanEvent];
    v21 = 138412290;
    v22 = v19;
    _os_log_impl(&dword_1B5ED1000, v18, OS_LOG_TYPE_INFO, "log error event with spanEvent: %@", &v21, 0xCu);
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)logDebugEventWithName:(id)a3 details:(id)a4 attributes:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [(AeroMLTracerSpan *)self createSubEventWithName:v8 details:v9 attributes:a5];
  [v10 setPrivatizedTimeStamp:{-[AeroMLTracerSpan getMonotonicTimeInMilliseconds](self, "getMonotonicTimeInMilliseconds")}];
  v11 = [(AeroMLTracerSpan *)self traceSession];
  v12 = [v11 traceSignpost];

  if (os_signpost_enabled(v12))
  {
    v13 = [(AeroMLTracerSpan *)self spanEvent];
    v14 = [v13 traceId];
    v15 = [v10 attributes];
    v16 = [(AeroMLTracerSpan *)self serializeAttributes:v15];
    v21 = 138544130;
    v22 = v14;
    v23 = 2114;
    v24 = v8;
    v25 = 2114;
    v26 = v9;
    v27 = 2114;
    v28 = v16;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DebugEvent", " TraceId=%{signpost.telemetry:string1,public}@  EventName=%{signpost.telemetry:string2,public}@  EventDetails=%{public, signpost.description:attribute}@  Attributes=%{public}@ ", &v21, 0x2Au);
  }

  v17 = [(AeroMLTracerSpan *)self spanEvent];
  [v17 addDebugEvents:v10];

  v18 = [(AeroMLTracerSession *)self->_traceSession traceChannel];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = [(AeroMLTracerSpan *)self spanEvent];
    v21 = 138412290;
    v22 = v19;
    _os_log_impl(&dword_1B5ED1000, v18, OS_LOG_TYPE_INFO, "log debug event with spanEvent: %@", &v21, 0xCu);
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)addTrialDeploymentId:(id)a3 trialExperimentId:(id)a4 trialTreatmentId:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(AeroMLTracerSpan *)self spanEvent];
  [v11 setTrialDeploymentId:v10];

  v12 = [(AeroMLTracerSpan *)self spanEvent];
  [v12 setTrialExperimentId:v9];

  v13 = [(AeroMLTracerSpan *)self spanEvent];
  [v13 setTrialTreatmentId:v8];
}

- (void)addDeviceIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(AeroMLTracerSpan *)self spanEvent];
  [v5 setDeviceIdentifier:v4];

  v6 = [(AeroMLTracerSession *)self->_traceSession traceChannel];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(AeroMLTracerSpan *)v4 addDeviceIdentifier:v6];
  }
}

- (void)addAttributes:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        v10 = objc_opt_new();
        [v10 setName:v9];
        v11 = [v4 objectForKeyedSubscript:v9];
        [v10 setStringValue:v11];

        v12 = [(AeroMLTracerSpan *)self spanEvent];
        [v12 addAttributes:v10];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)logInfoMessageWithCA:(id)a3
{
  v4 = a3;
  v3 = v4;
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

- (void)logErrorMessageWithCA:(id)a3
{
  v4 = a3;
  v3 = v4;
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

- (id)createSubEventWithName:(id)a3 details:(id)a4 attributes:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_opt_new();
  [v10 setName:v7];
  [v10 setDetails:v8];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = v9;
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

- (id)serializeAttributes:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E696AD60] string];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = v3;
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
        v11 = [v10 name];
        if (v11)
        {
          v12 = v11;
          v13 = [v10 stringValue];

          if (v13)
          {
            v14 = [v10 name];
            v15 = [v10 stringValue];
            [v4 appendFormat:@" %@:%@, ", v14, v15, v18];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v16 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)stringForQoSClass:(unsigned int)a3
{
  HIDWORD(v4) = a3 - 9;
  LODWORD(v4) = a3 - 9;
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