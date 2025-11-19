@interface AssistantSiriAnalyticsService
- (AssistantSiriAnalyticsService)initWithQueue:(id)a3 delegate:(id)a4;
- (BOOL)_analyticsEnabled;
- (void)_bootstrapStorageOnQueueWithCompletion:(id)a3;
- (void)_bootstrapStorageWithCompletion:(id)a3;
- (void)_buildDependenciesOnQueue;
- (void)_buildDependenciesWithCompletion:(id)a3;
- (void)_pruneStorageWithCompletion:(id)a3;
- (void)_setupIncomingConnections;
- (void)_setupMaintenanceWorkOnQueueWithCompletion:(id)a3;
- (void)_setupMaintenanceWorkWithCompletion:(id)a3;
- (void)handler:(id)a3 createTag:(id)a4 completion:(id)a5;
- (void)handler:(id)a3 fetchKillSwitchWithCompletion:(id)a4;
- (void)handler:(id)a3 fetchLogicalClocks:(id)a4;
- (void)handler:(id)a3 fetchStateForPluginName:(id)a4 completion:(id)a5;
- (void)handler:(id)a3 fetchTags:(id)a4;
- (void)handler:(id)a3 largeMessageReceivedWithPath:(id)a4 requestIdentifier:(id)a5 messageWrapper:(id)a6 completion:(id)a7;
- (void)handler:(id)a3 messagesReceived:(id)a4;
- (void)handler:(id)a3 purgeStagedMessagesWithCompletion:(id)a4;
- (void)handler:(id)a3 resetLogicalClockWithCompletion:(id)a4;
- (void)handler:(id)a3 runPipelineWithCompletion:(id)a4;
- (void)handler:(id)a3 saveState:(id)a4 forPluginName:(id)a5 completion:(id)a6;
- (void)handler:(id)a3 unorderedMessagesReceived:(id)a4 topic:(id)a5;
- (void)registerMessageResolver:(id)a3;
- (void)registerSensitiveConditionsObserver:(id)a3;
- (void)sensitiveCondition:(int)a3 endedAt:(unint64_t)a4;
- (void)sensitiveCondition:(int)a3 startedAt:(unint64_t)a4;
@end

@implementation AssistantSiriAnalyticsService

- (BOOL)_analyticsEnabled
{
  if (self->_killSwitchEnabled)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    v2 = [v5 analyticsEnabled];
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

- (void)_pruneStorageWithCompletion:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v5 = SiriAnalyticsLogContextAssistant;
  if (os_log_type_enabled(SiriAnalyticsLogContextAssistant, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v12 = "[AssistantSiriAnalyticsService _pruneStorageWithCompletion:]";
    _os_log_debug_impl(&dword_1D9863000, v5, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__AssistantSiriAnalyticsService__pruneStorageWithCompletion___block_invoke;
  aBlock[3] = &unk_1E8587C18;
  v10 = v4;
  v6 = v4;
  v7 = _Block_copy(aBlock);
  [(SiriAnalyticsMetastore *)self->_metastore prune];
  [(SiriAnalyticsMessageStore *)self->_messageStore prune];
  [(SiriAnalyticsRawUnifiedStream *)self->_rawUnifiedStream prune];
  [(SiriAnalyticsMessageStaging *)self->_messageStaging pruneWithCompletionHandler:v7];

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t __61__AssistantSiriAnalyticsService__pruneStorageWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)handler:(id)a3 createTag:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__AssistantSiriAnalyticsService_handler_createTag_completion___block_invoke;
  block[3] = &unk_1E8587CE0;
  block[4] = self;
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_async(queue, block);
}

- (void)handler:(id)a3 saveState:(id)a4 forPluginName:(id)a5 completion:(id)a6
{
  v26 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a5;
  v11 = a6;
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v12 = SiriAnalyticsLogContextAssistant;
  if (os_log_type_enabled(SiriAnalyticsLogContextAssistant, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v23 = "[AssistantSiriAnalyticsService handler:saveState:forPluginName:completion:]";
    v24 = 2112;
    v25 = v10;
    _os_log_impl(&dword_1D9863000, v12, OS_LOG_TYPE_INFO, "%s plugin: %@", buf, 0x16u);
  }

  queue = self->_queue;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __76__AssistantSiriAnalyticsService_handler_saveState_forPluginName_completion___block_invoke;
  v18[3] = &unk_1E8587C40;
  v18[4] = self;
  v19 = v9;
  v20 = v10;
  v21 = v11;
  v14 = v11;
  v15 = v10;
  v16 = v9;
  dispatch_async(queue, v18);

  v17 = *MEMORY[0x1E69E9840];
}

uint64_t __76__AssistantSiriAnalyticsService_handler_saveState_forPluginName_completion___block_invoke(void *a1)
{
  [*(a1[4] + 72) setPluginState:a1[5] forBundleIdentifier:a1[6]];
  result = a1[7];
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)handler:(id)a3 fetchStateForPluginName:(id)a4 completion:(id)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v9 = SiriAnalyticsLogContextAssistant;
  if (os_log_type_enabled(SiriAnalyticsLogContextAssistant, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v18 = "[AssistantSiriAnalyticsService handler:fetchStateForPluginName:completion:]";
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&dword_1D9863000, v9, OS_LOG_TYPE_INFO, "%s plugin: %@", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__AssistantSiriAnalyticsService_handler_fetchStateForPluginName_completion___block_invoke;
  block[3] = &unk_1E8587CE0;
  block[4] = self;
  v15 = v7;
  v16 = v8;
  v11 = v8;
  v12 = v7;
  dispatch_async(queue, block);

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t __76__AssistantSiriAnalyticsService_handler_fetchStateForPluginName_completion___block_invoke(void *a1)
{
  [*(a1[4] + 72) pluginStateForBundleIdentifier:a1[5]];
  objc_claimAutoreleasedReturnValue();
  v2 = a1[6];
  if (v2)
  {
    (*(v2 + 16))();
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)handler:(id)a3 fetchTags:(id)a4
{
  v7 = a4;
  v5 = [[SiriAnalyticsTaggingXPCHandler alloc] initWithMetastore:self->_metastore];
  v6 = [(SiriAnalyticsTaggingXPCHandler *)v5 all];
  if (v7)
  {
    v7[2](v7, 1, v6, 0);
  }
}

- (void)handler:(id)a3 fetchLogicalClocks:(id)a4
{
  v5 = a4;
  v6 = [[SiriAnalyticsLogicalClocksXPCHandler alloc] initWithLogicalClocks:self->_logicalClocks];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__AssistantSiriAnalyticsService_handler_fetchLogicalClocks___block_invoke;
  v8[3] = &unk_1E8587260;
  v9 = v5;
  v7 = v5;
  [(SiriAnalyticsLogicalClocksXPCHandler *)v6 allWithCompletionHandler:v8];
}

uint64_t __60__AssistantSiriAnalyticsService_handler_fetchLogicalClocks___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1, a2, 0);
  }

  return result;
}

- (void)handler:(id)a3 purgeStagedMessagesWithCompletion:(id)a4
{
  v5 = a4;
  messageStaging = self->_messageStaging;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __75__AssistantSiriAnalyticsService_handler_purgeStagedMessagesWithCompletion___block_invoke;
  v8[3] = &unk_1E8587C18;
  v9 = v5;
  v7 = v5;
  [(SiriAnalyticsMessageStaging *)messageStaging purgeWithCompletionHandler:v8];
}

uint64_t __75__AssistantSiriAnalyticsService_handler_purgeStagedMessagesWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1, 0);
  }

  return result;
}

- (void)handler:(id)a3 runPipelineWithCompletion:(id)a4
{
  v5 = a4;
  preprocessor = self->_preprocessor;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67__AssistantSiriAnalyticsService_handler_runPipelineWithCompletion___block_invoke;
  v8[3] = &unk_1E8587C18;
  v9 = v5;
  v7 = v5;
  [(SiriAnalyticsPreprocessor *)preprocessor triggerWithReason:2 completion:v8];
}

uint64_t __67__AssistantSiriAnalyticsService_handler_runPipelineWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1, 0);
  }

  return result;
}

- (void)handler:(id)a3 fetchKillSwitchWithCompletion:(id)a4
{
  if (a4)
  {
    preferences = self->_preferences;
    v6 = a4;
    (*(a4 + 2))(v6, [(SiriAnalyticsPreferences *)preferences killSwitchEnabled], 0);
  }
}

- (void)handler:(id)a3 resetLogicalClockWithCompletion:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a4;
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v6 = SiriAnalyticsLogContextAssistant;
  if (os_log_type_enabled(SiriAnalyticsLogContextAssistant, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v13 = "[AssistantSiriAnalyticsService handler:resetLogicalClockWithCompletion:]";
    _os_log_debug_impl(&dword_1D9863000, v6, OS_LOG_TYPE_DEBUG, "%s Resetting logical clock", buf, 0xCu);
  }

  whiteRose = self->_whiteRose;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __73__AssistantSiriAnalyticsService_handler_resetLogicalClockWithCompletion___block_invoke;
  v10[3] = &unk_1E85879E0;
  v11 = v5;
  v8 = v5;
  [(SiriAnalyticsWhiteRose *)whiteRose destroyActiveClockWithReason:3 completion:v10];

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t __73__AssistantSiriAnalyticsService_handler_resetLogicalClockWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1, a2, 0);
  }

  return result;
}

- (void)handler:(id)a3 largeMessageReceivedWithPath:(id)a4 requestIdentifier:(id)a5 messageWrapper:(id)a6 completion:(id)a7
{
  v15 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a7;
  if ([(AssistantSiriAnalyticsService *)self _analyticsEnabled])
  {
    [(SiriAnalyticsLargeMessageStorage *)self->_largeMessageStorage enqueueLargeMessageObjectFromPath:v15 messageWrapper:v12 requestIdentifier:v11 completion:v13];
  }

  else
  {
    v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.siri.analytics" code:0 userInfo:0];
    v13[2](v13, 0, v14);
  }
}

- (void)handler:(id)a3 unorderedMessagesReceived:(id)a4 topic:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  if ([(AssistantSiriAnalyticsService *)self _analyticsEnabled])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v16 = v7;
    obj = v7;
    v9 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      do
      {
        v12 = 0;
        do
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v19 + 1) + 8 * v12);
          v14 = [(SiriAnalyticsMessageTopics *)self->_messageTopics directUpload];
          v18[0] = MEMORY[0x1E69E9820];
          v18[1] = 3221225472;
          v18[2] = __73__AssistantSiriAnalyticsService_handler_unorderedMessagesReceived_topic___block_invoke;
          v18[3] = &unk_1E8587238;
          v18[4] = self;
          v18[5] = v13;
          [v14 append:v13 topic:v8 completionHandler:v18];

          ++v12;
        }

        while (v10 != v12);
        v10 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    v7 = v16;
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __73__AssistantSiriAnalyticsService_handler_unorderedMessagesReceived_topic___block_invoke(uint64_t a1, int a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    [*(*(a1 + 32) + 88) trackAnyEventEmitted:*(a1 + 40)];
  }

  if (v5)
  {
    if (SiriAnalyticsLoggingInit_once != -1)
    {
      dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
    }

    v6 = SiriAnalyticsLogContextAssistant;
    if (os_log_type_enabled(SiriAnalyticsLogContextAssistant, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "[AssistantSiriAnalyticsService handler:unorderedMessagesReceived:topic:]_block_invoke";
      v10 = 2112;
      v11 = v5;
      _os_log_error_impl(&dword_1D9863000, v6, OS_LOG_TYPE_ERROR, "%s Failed to persist message: %@", &v8, 0x16u);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)handler:(id)a3 messagesReceived:(id)a4
{
  v5 = a4;
  if ([(AssistantSiriAnalyticsService *)self _analyticsEnabled])
  {
    whiteRose = self->_whiteRose;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __58__AssistantSiriAnalyticsService_handler_messagesReceived___block_invoke;
    v7[3] = &unk_1E8587210;
    v7[4] = self;
    [(SiriAnalyticsWhiteRose *)whiteRose markTimeForAnnotatedMessages:v5 completion:v7];
  }
}

void __58__AssistantSiriAnalyticsService_handler_messagesReceived___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 168);
  v4 = a2;
  [v3 sendWithRuntimeEvents:v4];
  [*(*(a1 + 32) + 32) processWithMessages:v4];
  [*(*(a1 + 32) + 88) trackEmittedEvents:v4];
  [*(*(a1 + 32) + 80) tailWithMessages:v4];
}

- (void)sensitiveCondition:(int)a3 endedAt:(unint64_t)a4
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__AssistantSiriAnalyticsService_sensitiveCondition_endedAt___block_invoke;
  block[3] = &unk_1E85871E8;
  v6 = a3;
  block[4] = self;
  block[5] = a4;
  dispatch_async(queue, block);
}

- (void)sensitiveCondition:(int)a3 startedAt:(unint64_t)a4
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__AssistantSiriAnalyticsService_sensitiveCondition_startedAt___block_invoke;
  block[3] = &unk_1E85871E8;
  v6 = a3;
  block[4] = self;
  block[5] = a4;
  dispatch_async(queue, block);
}

- (void)registerSensitiveConditionsObserver:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__AssistantSiriAnalyticsService_registerSensitiveConditionsObserver___block_invoke;
  v7[3] = &unk_1E8587870;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)registerMessageResolver:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__AssistantSiriAnalyticsService_registerMessageResolver___block_invoke;
  v7[3] = &unk_1E8587870;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)_setupIncomingConnections
{
  v3 = [[SiriAnalyticsXPCServiceListener alloc] initWithMachServiceName:@"com.apple.siri.analytics.assistant" entitlementsKey:@"com.apple.siri.analytics.assistant" queue:self->_queue delegate:self];
  siriAnalyticsListener = self->_siriAnalyticsListener;
  self->_siriAnalyticsListener = v3;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setupMaintenanceWorkOnQueueWithCompletion:(id)a3
{
  v4 = a3;
  [(SiriAnalyticsClockInactivityScheduler *)self->_inactivityScheduler startScheduling];
  v5 = dispatch_group_create();
  dispatch_group_enter(v5);
  whiteRose = self->_whiteRose;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __76__AssistantSiriAnalyticsService__setupMaintenanceWorkOnQueueWithCompletion___block_invoke;
  v12[3] = &unk_1E8587918;
  v13 = v5;
  v7 = v5;
  [(SiriAnalyticsWhiteRose *)whiteRose bootstrapWithCompletion:v12];
  queue = self->_queue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __76__AssistantSiriAnalyticsService__setupMaintenanceWorkOnQueueWithCompletion___block_invoke_2;
  v10[3] = &unk_1E8587C18;
  v11 = v4;
  v9 = v4;
  dispatch_group_notify(v7, queue, v10);
}

uint64_t __76__AssistantSiriAnalyticsService__setupMaintenanceWorkOnQueueWithCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_setupMaintenanceWorkWithCompletion:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__AssistantSiriAnalyticsService__setupMaintenanceWorkWithCompletion___block_invoke;
  v7[3] = &unk_1E8587C90;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __69__AssistantSiriAnalyticsService__setupMaintenanceWorkWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 160);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __69__AssistantSiriAnalyticsService__setupMaintenanceWorkWithCompletion___block_invoke_2;
  v4[3] = &unk_1E8587C90;
  v4[4] = v2;
  v5 = v1;
  [v3 afterFirstUnlock:v4];
}

- (void)_bootstrapStorageOnQueueWithCompletion:(id)a3
{
  v4 = a3;
  v5 = +[SiriAnalyticsPersistentStorage dataVault];
  [v5 migrate];

  [(SiriAnalyticsMetastore *)self->_metastore bootstrap];
  [(SiriAnalyticsMetastore *)self->_metastore prune];
  v6 = dispatch_group_create();
  dispatch_group_enter(v6);
  metastoreStreams = self->_metastoreStreams;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __72__AssistantSiriAnalyticsService__bootstrapStorageOnQueueWithCompletion___block_invoke;
  v17[3] = &unk_1E8587918;
  v8 = v6;
  v18 = v8;
  [(SiriAnalyticsMetastoreStreams *)metastoreStreams bootstrapAndPruneWithCompletionHandler:v17];
  dispatch_group_enter(v8);
  messageStaging = self->_messageStaging;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __72__AssistantSiriAnalyticsService__bootstrapStorageOnQueueWithCompletion___block_invoke_2;
  v15[3] = &unk_1E8587918;
  v16 = v8;
  v10 = v8;
  [(SiriAnalyticsMessageStaging *)messageStaging bootstrapWithCompletionHandler:v15];
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__AssistantSiriAnalyticsService__bootstrapStorageOnQueueWithCompletion___block_invoke_3;
  block[3] = &unk_1E8587C18;
  v14 = v4;
  v12 = v4;
  dispatch_group_notify(v10, queue, block);
}

uint64_t __72__AssistantSiriAnalyticsService__bootstrapStorageOnQueueWithCompletion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_bootstrapStorageWithCompletion:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__AssistantSiriAnalyticsService__bootstrapStorageWithCompletion___block_invoke;
  v7[3] = &unk_1E8587C90;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __65__AssistantSiriAnalyticsService__bootstrapStorageWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 160);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __65__AssistantSiriAnalyticsService__bootstrapStorageWithCompletion___block_invoke_2;
  v4[3] = &unk_1E8587C90;
  v4[4] = v2;
  v5 = v1;
  [v3 afterFirstUnlock:v4];
}

- (void)_buildDependenciesOnQueue
{
  v75 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(SiriAnalyticsPreferences);
  preferences = self->_preferences;
  self->_preferences = v3;

  v5 = [(SiriAnalyticsPreferences *)self->_preferences killSwitchEnabled];
  self->_killSwitchEnabled = v5;
  if (!v5)
  {
LABEL_6:
    if (SiriAnalyticsLoggingInit_once != -1)
    {
      dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
    }

    goto LABEL_8;
  }

  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v6 = SiriAnalyticsLogContextAssistant;
  if (os_log_type_enabled(SiriAnalyticsLogContextAssistant, OS_LOG_TYPE_INFO))
  {
    v7 = self->_preferences;
    v8 = v6;
    *buf = 136315394;
    v68 = "[AssistantSiriAnalyticsService _buildDependenciesOnQueue]";
    v69 = 2048;
    v70 = [(SiriAnalyticsPreferences *)v7 killSwitchEnabled];
    _os_log_impl(&dword_1D9863000, v8, OS_LOG_TYPE_INFO, "%s 💀 kill switch enabled with pref: %ld", buf, 0x16u);

    goto LABEL_6;
  }

LABEL_8:
  v9 = SiriAnalyticsLogContextAssistant;
  if (os_log_type_enabled(SiriAnalyticsLogContextAssistant, OS_LOG_TYPE_INFO))
  {
    queue = self->_queue;
    killSwitchEnabled = self->_killSwitchEnabled;
    *buf = 136315906;
    v68 = "[AssistantSiriAnalyticsService _buildDependenciesOnQueue]";
    v69 = 2112;
    v70 = self;
    v71 = 2112;
    v72 = queue;
    v73 = 2048;
    v74 = killSwitchEnabled;
    _os_log_impl(&dword_1D9863000, v9, OS_LOG_TYPE_INFO, "%s Analytics service: %@ created on queue: %@ with killSwitchEnabled: %ld", buf, 0x2Au);
  }

  v12 = objc_alloc_init(SiriAnalyticsTailToOSLog);
  messageTailing = self->_messageTailing;
  self->_messageTailing = v12;

  v14 = [[SiriAnalyticsInternalTelemetry alloc] initWithPreferences:self->_preferences];
  internalTelemetry = self->_internalTelemetry;
  self->_internalTelemetry = v14;

  [(SiriAnalyticsInternalTelemetry *)self->_internalTelemetry trackRuntimeBootstrapWithKillSwitchEnabled:self->_killSwitchEnabled];
  v16 = objc_alloc_init(SiriAnalyticsMetastore);
  metastore = self->_metastore;
  self->_metastore = v16;

  v18 = objc_alloc_init(SiriAnalyticsMetastoreStreams);
  metastoreStreams = self->_metastoreStreams;
  self->_metastoreStreams = v18;

  v20 = [(SiriAnalyticsMetastoreStreams *)self->_metastoreStreams logicalClocksProviderWithMetastore:self->_metastore queue:self->_queue];
  logicalClocks = self->_logicalClocks;
  self->_logicalClocks = v20;

  v22 = [[_TtC13SiriAnalytics27SiriAnalyticsMessageStaging alloc] initWithInternalTelemetry:self->_internalTelemetry];
  messageStaging = self->_messageStaging;
  self->_messageStaging = v22;

  v24 = [SiriAnalyticsLargeMessageStorage alloc];
  v25 = [[SiriAnalyticsLargeMessageUploadProcessor alloc] initWithQueue:self->_queue metastore:self->_metastore logicalClocks:self->_logicalClocks];
  v26 = [(SiriAnalyticsLargeMessageStorage *)v24 initWithApplicationIdentifier:@"com.apple.assistantd" processor:v25 runtimeQueue:self->_queue];
  largeMessageStorage = self->_largeMessageStorage;
  self->_largeMessageStorage = v26;

  v28 = [[SiriAnalyticsSensitiveConditionsObservers alloc] initWithQueue:self->_queue];
  sensitiveConditionsObservers = self->_sensitiveConditionsObservers;
  self->_sensitiveConditionsObservers = v28;

  v30 = [[SiriAnalyticsMessageStore alloc] initWithPrefs:self->_preferences];
  messageStore = self->_messageStore;
  self->_messageStore = v30;

  v32 = objc_alloc_init(SiriAnalyticsRawUnifiedStream);
  rawUnifiedStream = self->_rawUnifiedStream;
  self->_rawUnifiedStream = v32;

  v34 = [[SiriAnalyticsFBFStorage alloc] initWithApplicationIdentifier:@"com.apple.assistantd" telemetry:self->_internalTelemetry];
  fbf = self->_fbf;
  self->_fbf = v34;

  v36 = objc_alloc_init(SiriAnalyticsPrivateLearningStorageProvider);
  v37 = [[SiriAnalyticsMessageTopics alloc] initWithFbfStorage:self->_fbf messageTailing:self->_messageTailing rawStream:self->_rawUnifiedStream messageStore:self->_messageStore];
  messageTopics = self->_messageTopics;
  self->_messageTopics = v37;

  v39 = [[SiriAnalyticsPreprocessor alloc] initWithMetastore:self->_metastore logicalClocks:self->_logicalClocks metastoreQueue:self->_queue telemetry:self->_internalTelemetry messageStaging:self->_messageStaging messageTopics:self->_messageTopics];
  preprocessor = self->_preprocessor;
  self->_preprocessor = v39;

  v41 = [[SiriAnalyticsMessageProcessingStrategy alloc] initWithMessageStaging:self->_messageStaging];
  messageProcessingStrategy = self->_messageProcessingStrategy;
  self->_messageProcessingStrategy = v41;

  if (!self->_killSwitchEnabled)
  {
    objc_initWeak(buf, self);
    v43 = [SiriAnalyticsClockInactivityScheduler alloc];
    v44 = self->_queue;
    v65[0] = MEMORY[0x1E69E9820];
    v65[1] = 3221225472;
    v65[2] = __58__AssistantSiriAnalyticsService__buildDependenciesOnQueue__block_invoke;
    v65[3] = &unk_1E85871C0;
    objc_copyWeak(&v66, buf);
    v63[0] = MEMORY[0x1E69E9820];
    v63[1] = 3221225472;
    v63[2] = __58__AssistantSiriAnalyticsService__buildDependenciesOnQueue__block_invoke_3;
    v63[3] = &unk_1E85871C0;
    objc_copyWeak(&v64, buf);
    v45 = [(SiriAnalyticsClockInactivityScheduler *)v43 initWithSeconds:30 queue:v44 expiration:v65 creation:v63];
    inactivityScheduler = self->_inactivityScheduler;
    self->_inactivityScheduler = v45;

    objc_destroyWeak(&v64);
    objc_destroyWeak(&v66);
    objc_destroyWeak(buf);
  }

  v47 = [SiriAnalyticsDataCollectionPolicyClockObserver alloc];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v49 = [WeakRetained siriAssistantConfiguration];
  v50 = [(SiriAnalyticsDataCollectionPolicyClockObserver *)v47 initWithSiriConfiguration:v49 metastore:self->_metastore metastoreQueue:self->_queue];

  v51 = [[SiriAnalyticsMessageResolutionPipeline alloc] initWithQueue:self->_queue];
  messageResolutionPipeline = self->_messageResolutionPipeline;
  self->_messageResolutionPipeline = v51;

  v53 = [[AssistantSiriAnalyticsClockWatcher alloc] initWithInternalTelemetry:self->_internalTelemetry sensitiveConditionsObservers:self->_sensitiveConditionsObservers messageResolution:self->_messageResolutionPipeline preprocessor:self->_preprocessor logicalClocks:self->_logicalClocks scheduler:self->_inactivityScheduler dataPolicyObserver:v50];
  clockWatcher = self->_clockWatcher;
  self->_clockWatcher = v53;

  v55 = [[SiriAnalyticsWhiteRose alloc] initWithQueue:self->_queue delegate:self->_clockWatcher metastore:self->_metastore logicalClocks:self->_logicalClocks];
  whiteRose = self->_whiteRose;
  self->_whiteRose = v55;

  v57 = [[_TtC13SiriAnalytics32SiriAnalyticsFirstUnlockObserver alloc] initWithQueue:self->_queue];
  firstUnlockObserver = self->_firstUnlockObserver;
  self->_firstUnlockObserver = v57;

  v59 = [[SiriAnalyticsUserHistoryPolicy alloc] initWithMessageStaging:self->_messageStaging queue:self->_queue];
  userHistoryPolicy = self->_userHistoryPolicy;
  p_userHistoryPolicy = &self->_userHistoryPolicy;
  *p_userHistoryPolicy = v59;

  [*p_userHistoryPolicy startObserving];
  v62 = *MEMORY[0x1E69E9840];
}

void __58__AssistantSiriAnalyticsService__buildDependenciesOnQueue__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__AssistantSiriAnalyticsService__buildDependenciesOnQueue__block_invoke_2;
  v6[3] = &unk_1E85875D0;
  objc_copyWeak(&v8, (a1 + 32));
  v5 = v3;
  v7 = v5;
  [WeakRetained _pruneStorageWithCompletion:v6];

  objc_destroyWeak(&v8);
}

void __58__AssistantSiriAnalyticsService__buildDependenciesOnQueue__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__AssistantSiriAnalyticsService__buildDependenciesOnQueue__block_invoke_4;
  v6[3] = &unk_1E85875D0;
  objc_copyWeak(&v8, (a1 + 32));
  v5 = v3;
  v7 = v5;
  [WeakRetained _pruneStorageWithCompletion:v6];

  objc_destroyWeak(&v8);
}

void __58__AssistantSiriAnalyticsService__buildDependenciesOnQueue__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained _getPreprocessor];
  [v2 triggerWithReason:1 completion:*(a1 + 32)];
}

void __58__AssistantSiriAnalyticsService__buildDependenciesOnQueue__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained _getPreprocessor];
  [v2 triggerWithReason:0 completion:*(a1 + 32)];
}

- (void)_buildDependenciesWithCompletion:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__AssistantSiriAnalyticsService__buildDependenciesWithCompletion___block_invoke;
  v7[3] = &unk_1E8587C90;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

uint64_t __66__AssistantSiriAnalyticsService__buildDependenciesWithCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _buildDependenciesOnQueue];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (AssistantSiriAnalyticsService)initWithQueue:(id)a3 delegate:(id)a4
{
  v5 = a4;
  v27.receiver = self;
  v27.super_class = AssistantSiriAnalyticsService;
  v6 = [(AssistantSiriAnalyticsService *)&v27 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_UTILITY, 0);

    v9 = dispatch_queue_create("com.apple.siri.analytics.runtime", v8);
    queue = v6->_queue;
    v6->_queue = v9;

    objc_storeWeak(&v6->_delegate, v5);
    v11 = mach_continuous_time();
    v12 = dispatch_group_create();
    dispatch_group_enter(v12);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __56__AssistantSiriAnalyticsService_initWithQueue_delegate___block_invoke;
    v25[3] = &unk_1E8587918;
    v13 = v12;
    v26 = v13;
    [(AssistantSiriAnalyticsService *)v6 _buildDependenciesWithCompletion:v25];
    dispatch_group_enter(v13);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __56__AssistantSiriAnalyticsService_initWithQueue_delegate___block_invoke_2;
    v23[3] = &unk_1E8587918;
    v14 = v13;
    v24 = v14;
    [(AssistantSiriAnalyticsService *)v6 _bootstrapStorageWithCompletion:v23];
    dispatch_group_enter(v14);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __56__AssistantSiriAnalyticsService_initWithQueue_delegate___block_invoke_3;
    v21[3] = &unk_1E8587918;
    v22 = v14;
    v15 = v14;
    [(AssistantSiriAnalyticsService *)v6 _setupMaintenanceWorkWithCompletion:v21];
    v16 = v6->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__AssistantSiriAnalyticsService_initWithQueue_delegate___block_invoke_4;
    block[3] = &unk_1E8587198;
    v19 = v6;
    v20 = v11;
    dispatch_group_notify(v15, v16, block);
  }

  return v6;
}

uint64_t __56__AssistantSiriAnalyticsService_initWithQueue_delegate___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) _setupIncomingConnections];
  v2 = mach_continuous_time();
  v3 = *(a1 + 40);
  if (_SiriAnalyticsMachAbsoluteTimeRate_onceToken[0] != -1)
  {
    dispatch_once(_SiriAnalyticsMachAbsoluteTimeRate_onceToken, &__block_literal_global);
  }

  v4 = (*&_SiriAnalyticsMachAbsoluteTimeRate_rate * (v2 - v3));
  v5 = *(*(a1 + 32) + 88);

  return [v5 trackRuntimeBootstrapCompleteWithBootstrapTimeInNs:v4];
}

@end