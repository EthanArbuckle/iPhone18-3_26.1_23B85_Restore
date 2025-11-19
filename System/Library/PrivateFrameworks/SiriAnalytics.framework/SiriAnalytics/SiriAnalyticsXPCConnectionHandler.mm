@interface SiriAnalyticsXPCConnectionHandler
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (SiriAnalyticsXPCConnectionHandler)initWithConnection:(id)a3 entitlementsKey:(id)a4 queue:(id)a5 delegate:(id)a6;
- (id)mapToAnnotatedMessage:(id)a3;
- (void)createTag:(id)a3 completion:(id)a4;
- (void)fetchKillSwitchEnabledWithCompletion:(id)a3;
- (void)fetchLogicalClocksWithCompletion:(id)a3;
- (void)fetchStateForPluginWithCompletion:(id)a3;
- (void)fetchTags:(id)a3;
- (void)publishLargeMessage:(id)a3 completion:(id)a4;
- (void)publishMessages:(id)a3 completion:(id)a4;
- (void)publishUnorderedMessages:(id)a3 topic:(id)a4 completion:(id)a5;
- (void)purgeStagedMessagesWithCompletion:(id)a3;
- (void)resetLogicalClockWithCompletion:(id)a3;
- (void)resolveMessages:(id)a3 completion:(id)a4;
- (void)runPipelineWithCompletion:(id)a3;
- (void)saveState:(id)a3 forPluginWithCompletion:(id)a4;
- (void)sensitiveCondition:(int)a3 endedAt:(unint64_t)a4 completion:(id)a5;
- (void)sensitiveCondition:(int)a3 startedAt:(unint64_t)a4 completion:(id)a5;
- (void)setKillSwitchEnabled:(BOOL)a3 completion:(id)a4;
- (void)vendResource:(int64_t)a3 readonly:(BOOL)a4 completion:(id)a5;
- (void)vendSandboxExtensionWithResource:(int64_t)a3 readonly:(BOOL)a4 completion:(id)a5;
@end

@implementation SiriAnalyticsXPCConnectionHandler

- (id)mapToAnnotatedMessage:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E69CF568]);
  [v4 setAnyEventType:{objc_msgSend(v3, "messageType")}];
  v5 = [v3 messageBody];
  [v4 setPayload:v5];

  v6 = [v4 unwrap];
  if (v6)
  {
    v7 = objc_alloc_init(SiriAnalyticsTimeAnnotatedMessage);
    -[SiriAnalyticsTimeAnnotatedMessage setTimestamp:](v7, "setTimestamp:", [v3 timestamp]);
    v8 = [v3 streamUUID];
    [(SiriAnalyticsTimeAnnotatedMessage *)v7 setStreamUUID:v8];

    v9 = [v3 messageUUID];
    [(SiriAnalyticsTimeAnnotatedMessage *)v7 setMessageUUID:v9];

    [(SiriAnalyticsTimeAnnotatedMessage *)v7 setMessage:v6];
  }

  else
  {
    if (SiriAnalyticsLoggingInit_once != -1)
    {
      dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
    }

    v10 = SiriAnalyticsLogContextXPC;
    if (os_log_type_enabled(SiriAnalyticsLogContextXPC, OS_LOG_TYPE_ERROR))
    {
      v13 = v10;
      v14 = 136315394;
      v15 = "[SiriAnalyticsXPCConnectionHandler mapToAnnotatedMessage:]";
      v16 = 2048;
      v17 = [v3 messageType];
      _os_log_error_impl(&dword_1D9863000, v13, OS_LOG_TYPE_ERROR, "%s Unable to unwrap anyEventType: %lu", &v14, 0x16u);
    }

    v7 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)setKillSwitchEnabled:(BOOL)a3 completion:(id)a4
{
  v6 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__SiriAnalyticsXPCConnectionHandler_setKillSwitchEnabled_completion___block_invoke;
  block[3] = &unk_1E8587D08;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(queue, block);
}

void __69__SiriAnalyticsXPCConnectionHandler_setKillSwitchEnabled_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  [WeakRetained handler:*(a1 + 32) setKillSwitchEnabled:*(a1 + 48) completion:*(a1 + 40)];
}

- (void)fetchKillSwitchEnabledWithCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __74__SiriAnalyticsXPCConnectionHandler_fetchKillSwitchEnabledWithCompletion___block_invoke;
    v7[3] = &unk_1E8587C90;
    v7[4] = self;
    v8 = v4;
    dispatch_async(queue, v7);
  }
}

void __74__SiriAnalyticsXPCConnectionHandler_fetchKillSwitchEnabledWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  [WeakRetained handler:*(a1 + 32) fetchKillSwitchWithCompletion:*(a1 + 40)];
}

- (void)createTag:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__SiriAnalyticsXPCConnectionHandler_createTag_completion___block_invoke;
  block[3] = &unk_1E8587CE0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

void __58__SiriAnalyticsXPCConnectionHandler_createTag_completion___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 24));
  [WeakRetained handler:a1[4] createTag:a1[5] completion:a1[6]];
}

- (void)purgeStagedMessagesWithCompletion:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71__SiriAnalyticsXPCConnectionHandler_purgeStagedMessagesWithCompletion___block_invoke;
  v7[3] = &unk_1E8587C90;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __71__SiriAnalyticsXPCConnectionHandler_purgeStagedMessagesWithCompletion___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if ([*(*(a1 + 32) + 64) hasRuntimeManagement])
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
    [WeakRetained handler:*(a1 + 32) purgeStagedMessagesWithCompletion:*(a1 + 40)];
    v2 = *MEMORY[0x1E69E9840];
  }

  else
  {
    if (SiriAnalyticsLoggingInit_once != -1)
    {
      dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
    }

    v3 = SiriAnalyticsLogContextXPC;
    if (os_log_type_enabled(SiriAnalyticsLogContextXPC, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v8 = "[SiriAnalyticsXPCConnectionHandler purgeStagedMessagesWithCompletion:]_block_invoke";
      _os_log_error_impl(&dword_1D9863000, v3, OS_LOG_TYPE_ERROR, "%s Connection lacks entitlement", buf, 0xCu);
    }

    v4 = *(a1 + 40);
    if (v4)
    {
      (*(v4 + 16))(v4, 0, 0);
    }

    v5 = *MEMORY[0x1E69E9840];
  }
}

- (void)runPipelineWithCompletion:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__SiriAnalyticsXPCConnectionHandler_runPipelineWithCompletion___block_invoke;
  v7[3] = &unk_1E8587C90;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __63__SiriAnalyticsXPCConnectionHandler_runPipelineWithCompletion___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if ([*(*(a1 + 32) + 64) hasRuntimeManagement])
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
    [WeakRetained handler:*(a1 + 32) runPipelineWithCompletion:*(a1 + 40)];
    v2 = *MEMORY[0x1E69E9840];
  }

  else
  {
    if (SiriAnalyticsLoggingInit_once != -1)
    {
      dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
    }

    v3 = SiriAnalyticsLogContextXPC;
    if (os_log_type_enabled(SiriAnalyticsLogContextXPC, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v8 = "[SiriAnalyticsXPCConnectionHandler runPipelineWithCompletion:]_block_invoke";
      _os_log_error_impl(&dword_1D9863000, v3, OS_LOG_TYPE_ERROR, "%s Connection lacks entitlement", buf, 0xCu);
    }

    v4 = *(a1 + 40);
    if (v4)
    {
      (*(v4 + 16))(v4, 0, 0);
    }

    v5 = *MEMORY[0x1E69E9840];
  }
}

- (void)saveState:(id)a3 forPluginWithCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__SiriAnalyticsXPCConnectionHandler_saveState_forPluginWithCompletion___block_invoke;
  block[3] = &unk_1E8587CE0;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(queue, block);
}

void __71__SiriAnalyticsXPCConnectionHandler_saveState_forPluginWithCompletion___block_invoke(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (([*(a1[4] + 64) hasPluginState] & 1) == 0)
  {
    if (SiriAnalyticsLoggingInit_once != -1)
    {
      dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
    }

    v5 = SiriAnalyticsLogContextXPC;
    if (!os_log_type_enabled(SiriAnalyticsLogContextXPC, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 136315138;
    v11 = "[SiriAnalyticsXPCConnectionHandler saveState:forPluginWithCompletion:]_block_invoke";
    v6 = "%s Caller lacks entitlement.";
    goto LABEL_17;
  }

  v2 = *(a1[4] + 72);
  if (v2)
  {
    v9 = [v2 copy];
    WeakRetained = objc_loadWeakRetained((a1[4] + 24));
    [WeakRetained handler:a1[4] saveState:a1[5] forPluginName:v9 completion:a1[6]];

    v4 = *MEMORY[0x1E69E9840];

    return;
  }

  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v5 = SiriAnalyticsLogContextXPC;
  if (os_log_type_enabled(SiriAnalyticsLogContextXPC, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v11 = "[SiriAnalyticsXPCConnectionHandler saveState:forPluginWithCompletion:]_block_invoke";
    v6 = "%s Caller lacks application-identifier entitlement.";
LABEL_17:
    _os_log_error_impl(&dword_1D9863000, v5, OS_LOG_TYPE_ERROR, v6, buf, 0xCu);
  }

LABEL_13:
  v7 = a1[6];
  if (v7)
  {
    (*(v7 + 16))();
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)fetchStateForPluginWithCompletion:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71__SiriAnalyticsXPCConnectionHandler_fetchStateForPluginWithCompletion___block_invoke;
  v7[3] = &unk_1E8587C90;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __71__SiriAnalyticsXPCConnectionHandler_fetchStateForPluginWithCompletion___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (([*(*(a1 + 32) + 64) hasPluginState] & 1) == 0)
  {
    if (SiriAnalyticsLoggingInit_once != -1)
    {
      dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
    }

    v5 = SiriAnalyticsLogContextXPC;
    if (!os_log_type_enabled(SiriAnalyticsLogContextXPC, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 136315138;
    v11 = "[SiriAnalyticsXPCConnectionHandler fetchStateForPluginWithCompletion:]_block_invoke";
    v6 = "%s Caller lacks entitlement.";
    goto LABEL_17;
  }

  v2 = *(*(a1 + 32) + 72);
  if (v2)
  {
    v9 = [v2 copy];
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
    [WeakRetained handler:*(a1 + 32) fetchStateForPluginName:v9 completion:*(a1 + 40)];

    v4 = *MEMORY[0x1E69E9840];

    return;
  }

  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v5 = SiriAnalyticsLogContextXPC;
  if (os_log_type_enabled(SiriAnalyticsLogContextXPC, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v11 = "[SiriAnalyticsXPCConnectionHandler fetchStateForPluginWithCompletion:]_block_invoke";
    v6 = "%s Caller lacks application-identifier entitlement.";
LABEL_17:
    _os_log_error_impl(&dword_1D9863000, v5, OS_LOG_TYPE_ERROR, v6, buf, 0xCu);
  }

LABEL_13:
  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, 0);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)fetchTags:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__SiriAnalyticsXPCConnectionHandler_fetchTags___block_invoke;
  v7[3] = &unk_1E8587C90;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __47__SiriAnalyticsXPCConnectionHandler_fetchTags___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if ([*(*(a1 + 32) + 64) hasRuntimeIntrospection])
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
    [WeakRetained handler:*(a1 + 32) fetchTags:*(a1 + 40)];
    v2 = *MEMORY[0x1E69E9840];
  }

  else
  {
    if (SiriAnalyticsLoggingInit_once != -1)
    {
      dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
    }

    v3 = SiriAnalyticsLogContextXPC;
    if (os_log_type_enabled(SiriAnalyticsLogContextXPC, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v8 = "[SiriAnalyticsXPCConnectionHandler fetchTags:]_block_invoke";
      _os_log_error_impl(&dword_1D9863000, v3, OS_LOG_TYPE_ERROR, "%s Connection lacks entitlement", buf, 0xCu);
    }

    v4 = *(a1 + 40);
    if (v4)
    {
      (*(v4 + 16))(v4, 0, 0, 0);
    }

    v5 = *MEMORY[0x1E69E9840];
  }
}

- (void)fetchLogicalClocksWithCompletion:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__SiriAnalyticsXPCConnectionHandler_fetchLogicalClocksWithCompletion___block_invoke;
  v7[3] = &unk_1E8587C90;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __70__SiriAnalyticsXPCConnectionHandler_fetchLogicalClocksWithCompletion___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if ([*(*(a1 + 32) + 64) hasRuntimeIntrospection])
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
    [WeakRetained handler:*(a1 + 32) fetchLogicalClocks:*(a1 + 40)];
    v2 = *MEMORY[0x1E69E9840];
  }

  else
  {
    if (SiriAnalyticsLoggingInit_once != -1)
    {
      dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
    }

    v3 = SiriAnalyticsLogContextXPC;
    if (os_log_type_enabled(SiriAnalyticsLogContextXPC, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v8 = "[SiriAnalyticsXPCConnectionHandler fetchLogicalClocksWithCompletion:]_block_invoke";
      _os_log_error_impl(&dword_1D9863000, v3, OS_LOG_TYPE_ERROR, "%s Connection lacks entitlement", buf, 0xCu);
    }

    v4 = *(a1 + 40);
    if (v4)
    {
      (*(v4 + 16))(v4, 0, 0, 0);
    }

    v5 = *MEMORY[0x1E69E9840];
  }
}

- (void)vendResource:(int64_t)a3 readonly:(BOOL)a4 completion:(id)a5
{
  v8 = a5;
  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __70__SiriAnalyticsXPCConnectionHandler_vendResource_readonly_completion___block_invoke;
  v11[3] = &unk_1E8587CB8;
  v12 = v8;
  v13 = a3;
  v14 = a4;
  v11[4] = self;
  v10 = v8;
  dispatch_async(queue, v11);
}

void __70__SiriAnalyticsXPCConnectionHandler_vendResource_readonly_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  [WeakRetained handler:*(a1 + 32) vendResource:*(a1 + 48) readonly:*(a1 + 56) completion:*(a1 + 40)];
}

- (void)vendSandboxExtensionWithResource:(int64_t)a3 readonly:(BOOL)a4 completion:(id)a5
{
  v8 = a5;
  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __90__SiriAnalyticsXPCConnectionHandler_vendSandboxExtensionWithResource_readonly_completion___block_invoke;
  v11[3] = &unk_1E8587CB8;
  v12 = v8;
  v13 = a3;
  v14 = a4;
  v11[4] = self;
  v10 = v8;
  dispatch_async(queue, v11);
}

void __90__SiriAnalyticsXPCConnectionHandler_vendSandboxExtensionWithResource_readonly_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  [WeakRetained handler:*(a1 + 32) vendSandboxExtensionWithResource:*(a1 + 48) readonly:*(a1 + 56) completion:*(a1 + 40)];
}

- (void)resetLogicalClockWithCompletion:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__SiriAnalyticsXPCConnectionHandler_resetLogicalClockWithCompletion___block_invoke;
  v7[3] = &unk_1E8587C90;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __69__SiriAnalyticsXPCConnectionHandler_resetLogicalClockWithCompletion___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if ([*(*(a1 + 32) + 64) hasRuntimeManagement])
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
    [WeakRetained handler:*(a1 + 32) resetLogicalClockWithCompletion:*(a1 + 40)];
    v2 = *MEMORY[0x1E69E9840];
  }

  else
  {
    if (SiriAnalyticsLoggingInit_once != -1)
    {
      dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
    }

    v3 = SiriAnalyticsLogContextXPC;
    if (os_log_type_enabled(SiriAnalyticsLogContextXPC, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v8 = "[SiriAnalyticsXPCConnectionHandler resetLogicalClockWithCompletion:]_block_invoke";
      _os_log_error_impl(&dword_1D9863000, v3, OS_LOG_TYPE_ERROR, "%s Connection lacks entitlement", buf, 0xCu);
    }

    v4 = *(a1 + 40);
    if (v4)
    {
      (*(v4 + 16))(v4, 0, 0, 0);
    }

    v5 = *MEMORY[0x1E69E9840];
  }
}

- (void)sensitiveCondition:(int)a3 endedAt:(unint64_t)a4 completion:(id)a5
{
  v8 = a5;
  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __75__SiriAnalyticsXPCConnectionHandler_sensitiveCondition_endedAt_completion___block_invoke;
  v11[3] = &unk_1E8587C68;
  v14 = a3;
  v12 = v8;
  v13 = a4;
  v11[4] = self;
  v10 = v8;
  dispatch_async(queue, v11);
}

void __75__SiriAnalyticsXPCConnectionHandler_sensitiveCondition_endedAt_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  [WeakRetained handler:*(a1 + 32) sensitiveCondition:*(a1 + 56) endedAt:*(a1 + 48) completion:*(a1 + 40)];
}

- (void)sensitiveCondition:(int)a3 startedAt:(unint64_t)a4 completion:(id)a5
{
  v8 = a5;
  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __77__SiriAnalyticsXPCConnectionHandler_sensitiveCondition_startedAt_completion___block_invoke;
  v11[3] = &unk_1E8587C68;
  v14 = a3;
  v12 = v8;
  v13 = a4;
  v11[4] = self;
  v10 = v8;
  dispatch_async(queue, v11);
}

void __77__SiriAnalyticsXPCConnectionHandler_sensitiveCondition_startedAt_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  [WeakRetained handler:*(a1 + 32) sensitiveCondition:*(a1 + 56) startedAt:*(a1 + 48) completion:*(a1 + 40)];
}

- (void)publishUnorderedMessages:(id)a3 topic:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __79__SiriAnalyticsXPCConnectionHandler_publishUnorderedMessages_topic_completion___block_invoke;
  aBlock[3] = &unk_1E8587C18;
  v11 = v10;
  v19 = v11;
  v12 = _Block_copy(aBlock);
  if ([v8 count])
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __79__SiriAnalyticsXPCConnectionHandler_publishUnorderedMessages_topic_completion___block_invoke_2;
    block[3] = &unk_1E8587C40;
    block[4] = self;
    v17 = v12;
    v15 = v8;
    v16 = v9;
    dispatch_async(queue, block);
  }

  else
  {
    v12[2](v12);
  }
}

uint64_t __79__SiriAnalyticsXPCConnectionHandler_publishUnorderedMessages_topic_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __79__SiriAnalyticsXPCConnectionHandler_publishUnorderedMessages_topic_completion___block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if ([*(*(a1 + 32) + 64) canPublishUnordered])
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v3 = *(a1 + 40);
    v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v17;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v17 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v16 + 1) + 8 * i);
          v9 = objc_alloc(MEMORY[0x1E69CF568]);
          v10 = [v8 eventTypeId];
          v11 = [v8 payload];
          v12 = [v9 initWithAnyEventType:v10 payload:v11];

          [v2 addObject:v12];
        }

        v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v5);
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
    [WeakRetained handler:*(a1 + 32) unorderedMessagesReceived:v2 topic:*(a1 + 48)];

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    if (SiriAnalyticsLoggingInit_once != -1)
    {
      dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
    }

    v14 = SiriAnalyticsLogContextXPC;
    if (os_log_type_enabled(SiriAnalyticsLogContextXPC, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v22 = "[SiriAnalyticsXPCConnectionHandler publishUnorderedMessages:topic:completion:]_block_invoke_2";
      _os_log_error_impl(&dword_1D9863000, v14, OS_LOG_TYPE_ERROR, "%s Connection lacks entitlement", buf, 0xCu);
    }

    (*(*(a1 + 56) + 16))();
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)publishLargeMessage:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__SiriAnalyticsXPCConnectionHandler_publishLargeMessage_completion___block_invoke;
  block[3] = &unk_1E8587CE0;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

void __68__SiriAnalyticsXPCConnectionHandler_publishLargeMessage_completion___block_invoke(uint64_t a1)
{
  v7 = [*(a1 + 32) largeMessagePath];
  v2 = [*(a1 + 32) requestIdentifier];
  v3 = objc_alloc(MEMORY[0x1E69CEAC8]);
  v4 = [*(a1 + 32) serializedDataUploadMessage];
  v5 = [v3 initWithData:v4];

  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 24));
  [WeakRetained handler:*(a1 + 40) largeMessageReceivedWithPath:v7 requestIdentifier:v2 messageWrapper:v5 completion:*(a1 + 48)];
}

- (void)resolveMessages:(id)a3 completion:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__SiriAnalyticsXPCConnectionHandler_resolveMessages_completion___block_invoke;
  aBlock[3] = &unk_1E8587C18;
  v5 = v4;
  v10 = v5;
  v6 = _Block_copy(aBlock);
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v7 = SiriAnalyticsLogContextXPC;
  if (os_log_type_enabled(SiriAnalyticsLogContextXPC, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v12 = "[SiriAnalyticsXPCConnectionHandler resolveMessages:completion:]";
    _os_log_error_impl(&dword_1D9863000, v7, OS_LOG_TYPE_ERROR, "%s Remote message resolution not available.", buf, 0xCu);
  }

  v6[2](v6);

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t __64__SiriAnalyticsXPCConnectionHandler_resolveMessages_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)publishMessages:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__SiriAnalyticsXPCConnectionHandler_publishMessages_completion___block_invoke;
  aBlock[3] = &unk_1E8587C18;
  v8 = v7;
  v16 = v8;
  v9 = _Block_copy(aBlock);
  if ([v6 count])
  {
    queue = self->_queue;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __64__SiriAnalyticsXPCConnectionHandler_publishMessages_completion___block_invoke_2;
    v11[3] = &unk_1E8587CE0;
    v12 = v6;
    v13 = self;
    v14 = v9;
    dispatch_async(queue, v11);
  }

  else
  {
    v9[2](v9);
  }
}

uint64_t __64__SiriAnalyticsXPCConnectionHandler_publishMessages_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __64__SiriAnalyticsXPCConnectionHandler_publishMessages_completion___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(a1 + 40) mapToAnnotatedMessage:{*(*(&v11 + 1) + 8 * v7), v11}];
        if (v8)
        {
          [v2 addObject:v8];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 24));
  [WeakRetained handler:*(a1 + 40) messagesReceived:v2];

  (*(*(a1 + 48) + 16))();
  v10 = *MEMORY[0x1E69E9840];
}

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  v3 = *&self[1].var0[4];
  *retstr->var0 = *self[1].var0;
  *&retstr->var0[4] = v3;
  return self;
}

- (SiriAnalyticsXPCConnectionHandler)initWithConnection:(id)a3 entitlementsKey:(id)a4 queue:(id)a5 delegate:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v26.receiver = self;
  v26.super_class = SiriAnalyticsXPCConnectionHandler;
  v15 = [(SiriAnalyticsXPCConnectionHandler *)&v26 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_connection, a3);
    objc_storeStrong(&v16->_queue, a5);
    objc_storeWeak(&v16->_delegate, v14);
    if (v11)
    {
      [v11 auditToken];
    }

    else
    {
      v24 = 0u;
      v25 = 0u;
    }

    *v16->_auditToken.val = v24;
    *&v16->_auditToken.val[4] = v25;
    v17 = [SiriAnalyticsXPCConnectionEntitlements alloc];
    v18 = [v11 valueForEntitlement:v12];
    v19 = [(SiriAnalyticsXPCConnectionEntitlements *)v17 initWithEntitlements:v18];
    entitlements = v16->_entitlements;
    v16->_entitlements = v19;

    v21 = [v11 valueForEntitlement:@"application-identifier"];
    connectionApplicationIdentifier = v16->_connectionApplicationIdentifier;
    v16->_connectionApplicationIdentifier = v21;
  }

  return v16;
}

@end