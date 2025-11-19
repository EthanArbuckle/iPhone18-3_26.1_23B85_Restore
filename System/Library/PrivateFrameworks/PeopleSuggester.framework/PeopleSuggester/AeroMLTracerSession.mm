@interface AeroMLTracerSession
+ (id)generateTraceId;
+ (id)logChannelWithSubsystem:(const char *)a3 category:(const char *)a4;
- (AeroMLTracerSession)initWithProjectName:(id)a3;
- (AeroMLTracerSession)initWithTraceId:(id)a3 projectName:(id)a4;
- (id)createRootSpanWithName:(id)a3;
- (id)createSubSpanWithName:(id)a3 parentSpanId:(id)a4;
@end

@implementation AeroMLTracerSession

+ (id)generateTraceId
{
  v2 = [MEMORY[0x1E696AFB0] UUID];
  v3 = [v2 UUIDString];

  return v3;
}

+ (id)logChannelWithSubsystem:(const char *)a3 category:(const char *)a4
{
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s-%s", a3, a4];
  if (logChannelWithSubsystem_category___pasOnceToken2 != -1)
  {
    +[AeroMLTracerSession logChannelWithSubsystem:category:];
  }

  v7 = logChannelWithSubsystem_category___pasExprOnceResult;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__7;
  v20 = __Block_byref_object_dispose__7;
  v21 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __56__AeroMLTracerSession_logChannelWithSubsystem_category___block_invoke_11;
  v11[3] = &unk_1E7C25A48;
  v13 = &v16;
  v8 = v6;
  v12 = v8;
  v14 = a3;
  v15 = a4;
  [v7 runWithLockAcquired:v11];
  v9 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v9;
}

void __56__AeroMLTracerSession_logChannelWithSubsystem_category___block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_alloc(MEMORY[0x1E69C5D60]);
  v2 = objc_opt_new();
  v3 = [v1 initWithGuardedData:v2];
  v4 = logChannelWithSubsystem_category___pasExprOnceResult;
  logChannelWithSubsystem_category___pasExprOnceResult = v3;

  objc_autoreleasePoolPop(v0);
}

void __56__AeroMLTracerSession_logChannelWithSubsystem_category___block_invoke_11(void *a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:a1[4]];
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (!*(*(a1[5] + 8) + 40))
  {
    v9 = a1[6];
    v8 = a1 + 6;
    v10 = os_log_create(v9, v8[1]);
    v11 = *(*(v8 - 1) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    [v3 setObject:*(*(*(v8 - 1) + 8) + 40) forKeyedSubscript:*(v8 - 2)];
    if (*(*(*(v8 - 1) + 8) + 40))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        v13 = *v8;
        v14 = v8[1];
        v15 = 136315394;
        v16 = v13;
        v17 = 2080;
        v18 = v14;
        _os_log_impl(&dword_1B5ED1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Successfully created os_log_t for subsystem: %s, category: %s", &v15, 0x16u);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __56__AeroMLTracerSession_logChannelWithSubsystem_category___block_invoke_11_cold_1(v8, v8 + 1);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (AeroMLTracerSession)initWithTraceId:(id)a3 projectName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = AeroMLTracerSession;
  v8 = [(AeroMLTracerSession *)&v18 init];
  if (v8)
  {
    if (v6)
    {
      v9 = [v6 copy];
    }

    else
    {
      v9 = +[AeroMLTracerSession generateTraceId];
    }

    traceId = v8->_traceId;
    v8->_traceId = v9;

    v11 = [v7 copy];
    projectName = v8->_projectName;
    v8->_projectName = v11;

    v13 = [objc_opt_class() logChannelWithSubsystem:objc_msgSend(v7 category:{"UTF8String"), "signpost"}];
    traceSignpost = v8->_traceSignpost;
    v8->_traceSignpost = v13;

    v15 = [objc_opt_class() logChannelWithSubsystem:objc_msgSend(v7 category:{"UTF8String"), "AMLTracer"}];
    traceChannel = v8->_traceChannel;
    v8->_traceChannel = v15;
  }

  return v8;
}

- (AeroMLTracerSession)initWithProjectName:(id)a3
{
  v4 = a3;
  v5 = +[AeroMLTracerSession generateTraceId];
  v6 = [(AeroMLTracerSession *)self initWithTraceId:v5 projectName:v4];

  return v6;
}

- (id)createRootSpanWithName:(id)a3
{
  v4 = a3;
  v5 = [[AeroMLTracerSpan alloc] initSpanWithSpanName:v4 traceSession:self parentSpanId:0];

  return v5;
}

- (id)createSubSpanWithName:(id)a3 parentSpanId:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[AeroMLTracerSpan alloc] initSpanWithSpanName:v7 traceSession:self parentSpanId:v6];

  return v8;
}

void __56__AeroMLTracerSession_logChannelWithSubsystem_category___block_invoke_11_cold_1(uint64_t *a1, uint64_t *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *a2;
  v5 = 136315394;
  v6 = v2;
  v7 = 2080;
  v8 = v3;
  _os_log_error_impl(&dword_1B5ED1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Couldn't create os_log_t for subsystem: %s, category: %s", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

@end