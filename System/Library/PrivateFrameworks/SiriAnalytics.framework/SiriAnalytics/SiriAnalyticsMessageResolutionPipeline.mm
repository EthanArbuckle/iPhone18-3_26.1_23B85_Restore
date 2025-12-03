@interface SiriAnalyticsMessageResolutionPipeline
- (SiriAnalyticsMessageResolutionPipeline)initWithQueue:(id)queue;
- (void)registerMessageResolver:(id)resolver;
- (void)resolveAndEmitMessage:(id)message isolatedStreamUUID:(id)d;
- (void)resolveMessage:(id)message completion:(id)completion;
@end

@implementation SiriAnalyticsMessageResolutionPipeline

- (void)registerMessageResolver:(id)resolver
{
  resolverCopy = resolver;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__SiriAnalyticsMessageResolutionPipeline_registerMessageResolver___block_invoke;
  v7[3] = &unk_1E8587870;
  v8 = resolverCopy;
  selfCopy = self;
  v6 = resolverCopy;
  dispatch_async(queue, v7);
}

uint64_t __66__SiriAnalyticsMessageResolutionPipeline_registerMessageResolver___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v2 = SiriAnalyticsLogContextResolution;
  if (os_log_type_enabled(SiriAnalyticsLogContextResolution, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v10 = 136315394;
    v11 = "[SiriAnalyticsMessageResolutionPipeline registerMessageResolver:]_block_invoke";
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_1D9863000, v2, OS_LOG_TYPE_INFO, "%s Registering message resolver: %@", &v10, 0x16u);
  }

  v4 = *(*(a1 + 40) + 16);
  if (!v4)
  {
    v5 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v6 = *(a1 + 40);
    v7 = *(v6 + 16);
    *(v6 + 16) = v5;

    v4 = *(*(a1 + 40) + 16);
  }

  result = [v4 addObject:*(a1 + 32)];
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)resolveMessage:(id)message completion:(id)completion
{
  v34 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  completionCopy = completion;
  allObjects = [(NSHashTable *)self->_resolvers allObjects];
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v9 = SiriAnalyticsLogContextResolution;
  if (os_log_type_enabled(SiriAnalyticsLogContextResolution, OS_LOG_TYPE_INFO))
  {
    v10 = v9;
    *buf = 136315650;
    *&buf[4] = "[SiriAnalyticsMessageResolutionPipeline resolveMessage:completion:]";
    *&buf[12] = 2112;
    *&buf[14] = messageCopy;
    *&buf[22] = 2048;
    v31 = [allObjects count];
    _os_log_impl(&dword_1D9863000, v10, OS_LOG_TYPE_INFO, "%s Resolving message: %@ with %lu resolvers", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v31 = __Block_byref_object_copy__865;
  v32 = __Block_byref_object_dispose__866;
  v33 = 0;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __68__SiriAnalyticsMessageResolutionPipeline_resolveMessage_completion___block_invoke;
  v21[3] = &unk_1E8587820;
  v11 = messageCopy;
  v22 = v11;
  v23 = buf;
  [allObjects enumerateObjectsUsingBlock:v21];
  if (*(*&buf[8] + 40))
  {
    if (SiriAnalyticsLoggingInit_once != -1)
    {
      dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
    }

    v12 = SiriAnalyticsLogContextResolution;
    if (os_log_type_enabled(SiriAnalyticsLogContextResolution, OS_LOG_TYPE_DEBUG))
    {
      v16 = *(*&buf[8] + 40);
      *v24 = 136315650;
      v25 = "[SiriAnalyticsMessageResolutionPipeline resolveMessage:completion:]";
      v26 = 2112;
      v27 = v16;
      v28 = 2112;
      v29 = v11;
      _os_log_debug_impl(&dword_1D9863000, v12, OS_LOG_TYPE_DEBUG, "%s Using resolver: %@ for message: %@", v24, 0x20u);
    }

    v13 = *(*&buf[8] + 40);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __68__SiriAnalyticsMessageResolutionPipeline_resolveMessage_completion___block_invoke_3;
    v17[3] = &unk_1E8587848;
    v20 = buf;
    v18 = v11;
    v19 = completionCopy;
    [v13 resolveMessage:v18 completion:v17];
  }

  else
  {
    if (SiriAnalyticsLoggingInit_once != -1)
    {
      dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
    }

    v14 = SiriAnalyticsLogContextResolution;
    if (os_log_type_enabled(SiriAnalyticsLogContextResolution, OS_LOG_TYPE_ERROR))
    {
      *v24 = 136315394;
      v25 = "[SiriAnalyticsMessageResolutionPipeline resolveMessage:completion:]";
      v26 = 2112;
      v27 = v11;
      _os_log_error_impl(&dword_1D9863000, v14, OS_LOG_TYPE_ERROR, "%s No applicable resolvers found for message: %@, dropping.", v24, 0x16u);
    }

    (*(completionCopy + 2))(completionCopy, 0);
  }

  _Block_object_dispose(buf, 8);
  v15 = *MEMORY[0x1E69E9840];
}

void __68__SiriAnalyticsMessageResolutionPipeline_resolveMessage_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 handlesMessage:*(a1 + 32)])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

void __68__SiriAnalyticsMessageResolutionPipeline_resolveMessage_completion___block_invoke_3(void *a1, void *a2, int a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v6 = SiriAnalyticsLogContextResolution;
  v7 = os_log_type_enabled(SiriAnalyticsLogContextResolution, OS_LOG_TYPE_DEBUG);
  if (a3)
  {
    if (v7)
    {
      v8 = *(*(a1[6] + 8) + 40);
      v9 = a1[4];
      v13 = 136315650;
      v14 = "[SiriAnalyticsMessageResolutionPipeline resolveMessage:completion:]_block_invoke";
      v15 = 2112;
      v16 = v8;
      v17 = 2112;
      v18 = v9;
      _os_log_debug_impl(&dword_1D9863000, v6, OS_LOG_TYPE_DEBUG, "%s Resolver: %@ resolved message: %@", &v13, 0x20u);
    }
  }

  else if (v7)
  {
    v11 = *(*(a1[6] + 8) + 40);
    v12 = a1[4];
    v13 = 136315650;
    v14 = "[SiriAnalyticsMessageResolutionPipeline resolveMessage:completion:]_block_invoke";
    v15 = 2112;
    v16 = v11;
    v17 = 2112;
    v18 = v12;
    _os_log_debug_impl(&dword_1D9863000, v6, OS_LOG_TYPE_DEBUG, "%s Resolver: %@ did not resolve message: %@, dropping.", &v13, 0x20u);
  }

  (*(a1[5] + 16))();

  v10 = *MEMORY[0x1E69E9840];
}

- (void)resolveAndEmitMessage:(id)message isolatedStreamUUID:(id)d
{
  messageCopy = message;
  dCopy = d;
  v8 = mach_absolute_time();
  queue = self->_queue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __83__SiriAnalyticsMessageResolutionPipeline_resolveAndEmitMessage_isolatedStreamUUID___block_invoke;
  v12[3] = &unk_1E85877F8;
  v13 = messageCopy;
  selfCopy = self;
  v15 = dCopy;
  v16 = v8;
  v10 = dCopy;
  v11 = messageCopy;
  dispatch_async(queue, v12);
}

void __83__SiriAnalyticsMessageResolutionPipeline_resolveAndEmitMessage_isolatedStreamUUID___block_invoke(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __83__SiriAnalyticsMessageResolutionPipeline_resolveAndEmitMessage_isolatedStreamUUID___block_invoke_2;
    v4[3] = &unk_1E85877D0;
    v3 = a1[5];
    v2 = a1[6];
    v6 = a1[7];
    v5 = v2;
    [v3 resolveMessage:v1 completion:v4];
  }
}

void __83__SiriAnalyticsMessageResolutionPipeline_resolveAndEmitMessage_isolatedStreamUUID___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    v5 = +[AssistantSiriAnalytics sharedAnalytics];
    v4 = [v5 defaultMessageStream];
    [v4 emitMessage:v3 timestamp:*(a1 + 40) isolatedStreamUUID:*(a1 + 32)];
  }
}

- (SiriAnalyticsMessageResolutionPipeline)initWithQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = SiriAnalyticsMessageResolutionPipeline;
  v6 = [(SiriAnalyticsMessageResolutionPipeline *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
  }

  return v7;
}

@end