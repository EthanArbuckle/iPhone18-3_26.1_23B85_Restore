@interface RETrainingSimulationServer
+ (id)sharedServer;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (id)_init;
- (void)_safelyEnumerateObserversWithBlock:(id)block observerAccessBlock:(id)accessBlock completion:(id)completion;
- (void)availableRelevanceEngines:(id)engines;
- (void)availableRelevanceEnginesDidChange;
- (void)dealloc;
- (void)fetchAllElementIdentifiersInRelevanceEngine:(id)engine completion:(id)completion;
- (void)fetchAllElementsInRelevanceEngine:(id)engine completion:(id)completion;
- (void)gatherDiagnosticLogsForRelevanceEngine:(id)engine completion:(id)completion;
- (void)relevanceEngine:(id)engine createElementFromDescription:(id)description completion:(id)completion;
- (void)relevanceEngine:(id)engine encodedObjectAtPath:(id)path completion:(id)completion;
- (void)relevanceEngine:(id)engine performCommand:(id)command withOptions:(id)options completion:(id)completion;
- (void)relevanceEngine:(id)engine runActionOfElementWithDescription1:(id)description1 completion:(id)completion;
@end

@implementation RETrainingSimulationServer

+ (id)sharedServer
{
  if (_fetchedInternalBuildOnceToken != -1)
  {
    +[RETrainingSimulationServer sharedServer];
  }

  if (_isInternalDevice == 1)
  {
    os_unfair_lock_lock(&sharedServer_ServerLock);
    WeakRetained = objc_loadWeakRetained(&sharedServer_SharedServer);
    if (!WeakRetained)
    {
      WeakRetained = [[RETrainingSimulationServer alloc] _init];
      objc_storeWeak(&sharedServer_SharedServer, WeakRetained);
    }

    os_unfair_lock_unlock(&sharedServer_ServerLock);
  }

  else
  {
    WeakRetained = 0;
  }

  return WeakRetained;
}

uint64_t __42__RETrainingSimulationServer_sharedServer__block_invoke()
{
  result = _REGetIsInternalBuild();
  _isInternalDevice = result;
  return result;
}

- (id)_init
{
  v15.receiver = self;
  v15.super_class = RETrainingSimulationServer;
  v2 = [(RETrainingSimulationServer *)&v15 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB58] set];
    connections = v2->_connections;
    v2->_connections = v3;

    v5 = objc_alloc_init(REObserverStore);
    observers = v2->_observers;
    v2->_observers = v5;

    v7 = RECreateSharedQueue(@"TrainingSimulationClient");
    queue = v2->_queue;
    v2->_queue = v7;

    processInfo = [MEMORY[0x277CCAC38] processInfo];
    processName = [processInfo processName];

    v11 = RETrainingSimulationMachServiceForProcessName(processName);
    v12 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:v11];
    listener = v2->_listener;
    v2->_listener = v12;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    [(NSXPCListener *)v2->_listener resume];
  }

  return v2;
}

- (void)dealloc
{
  [(NSXPCListener *)self->_listener invalidate];
  [(NSXPCListener *)self->_listener setDelegate:0];
  listener = self->_listener;
  self->_listener = 0;

  v4.receiver = self;
  v4.super_class = RETrainingSimulationServer;
  [(RETrainingSimulationServer *)&v4 dealloc];
}

- (void)availableRelevanceEnginesDidChange
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__RETrainingSimulationServer_availableRelevanceEnginesDidChange__block_invoke;
  block[3] = &unk_2785F9AB8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __64__RETrainingSimulationServer_availableRelevanceEnginesDidChange__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = *(*(a1 + 32) + 8);
  v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v9;
    do
    {
      v5 = 0;
      do
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = [*(*(&v8 + 1) + 8 * v5) remoteObjectProxyWithErrorHandler:{&__block_literal_global_10, v8}];
        [v6 availableRelevanceEnginesDidChange];

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __64__RETrainingSimulationServer_availableRelevanceEnginesDidChange__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = RELogForDomain(10);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __64__RETrainingSimulationServer_availableRelevanceEnginesDidChange__block_invoke_2_cold_1(v2, v3);
  }
}

- (void)relevanceEngine:(id)engine createElementFromDescription:(id)description completion:(id)completion
{
  engineCopy = engine;
  descriptionCopy = description;
  completionCopy = completion;
  v11 = dispatch_group_create();
  observers = self->_observers;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __86__RETrainingSimulationServer_relevanceEngine_createElementFromDescription_completion___block_invoke;
  v20[3] = &unk_2785FA018;
  v21 = v11;
  v22 = engineCopy;
  v23 = descriptionCopy;
  v13 = descriptionCopy;
  v14 = engineCopy;
  v15 = v11;
  [(REObserverStore *)observers enumerateObserversWithBlock:v20];
  queue = self->_queue;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __86__RETrainingSimulationServer_relevanceEngine_createElementFromDescription_completion___block_invoke_3;
  v18[3] = &unk_2785FA040;
  v19 = completionCopy;
  v17 = completionCopy;
  dispatch_group_notify(v15, queue, v18);
}

void __86__RETrainingSimulationServer_relevanceEngine_createElementFromDescription_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  dispatch_group_enter(v3);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __86__RETrainingSimulationServer_relevanceEngine_createElementFromDescription_completion___block_invoke_2;
  v7[3] = &unk_2785F9FF0;
  v8 = *(a1 + 32);
  [v4 relevanceEngine:v5 createElementFromDescription:v6 completion:v7];
}

- (void)relevanceEngine:(id)engine performCommand:(id)command withOptions:(id)options completion:(id)completion
{
  engineCopy = engine;
  commandCopy = command;
  optionsCopy = options;
  completionCopy = completion;
  v14 = dispatch_group_create();
  observers = self->_observers;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __84__RETrainingSimulationServer_relevanceEngine_performCommand_withOptions_completion___block_invoke;
  v24[3] = &unk_2785FA068;
  v25 = v14;
  v26 = engineCopy;
  v27 = commandCopy;
  v28 = optionsCopy;
  v16 = optionsCopy;
  v17 = commandCopy;
  v18 = engineCopy;
  v19 = v14;
  [(REObserverStore *)observers enumerateObserversWithBlock:v24];
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__RETrainingSimulationServer_relevanceEngine_performCommand_withOptions_completion___block_invoke_3;
  block[3] = &unk_2785FA040;
  v23 = completionCopy;
  v21 = completionCopy;
  dispatch_group_notify(v19, queue, block);
}

void __84__RETrainingSimulationServer_relevanceEngine_performCommand_withOptions_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  dispatch_group_enter(v3);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __84__RETrainingSimulationServer_relevanceEngine_performCommand_withOptions_completion___block_invoke_2;
  v8[3] = &unk_2785F9FF0;
  v9 = *(a1 + 32);
  [v4 relevanceEngine:v5 performCommand:v6 withOptions:v7 completion:v8];
}

- (void)_safelyEnumerateObserversWithBlock:(id)block observerAccessBlock:(id)accessBlock completion:(id)completion
{
  blockCopy = block;
  accessBlockCopy = accessBlock;
  completionCopy = completion;
  v11 = dispatch_group_create();
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2810000000;
  v21[3] = &unk_2286CA6BA;
  v22 = 0;
  observers = self->_observers;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __96__RETrainingSimulationServer__safelyEnumerateObserversWithBlock_observerAccessBlock_completion___block_invoke;
  v16[3] = &unk_2785FA0B8;
  v13 = v11;
  v17 = v13;
  v14 = accessBlockCopy;
  v18 = v14;
  v20 = v21;
  v15 = blockCopy;
  v19 = v15;
  [(REObserverStore *)observers enumerateObserversWithBlock:v16];
  dispatch_group_notify(v13, self->_queue, completionCopy);

  _Block_object_dispose(v21, 8);
}

void __96__RETrainingSimulationServer__safelyEnumerateObserversWithBlock_observerAccessBlock_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  dispatch_group_enter(v3);
  v5 = *(a1 + 40);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __96__RETrainingSimulationServer__safelyEnumerateObserversWithBlock_observerAccessBlock_completion___block_invoke_2;
  v8[3] = &unk_2785FA090;
  v7 = *(a1 + 48);
  v6 = v7;
  v10 = v7;
  v9 = *(a1 + 32);
  (*(v5 + 16))(v5, v4, v8);
}

void __96__RETrainingSimulationServer__safelyEnumerateObserversWithBlock_observerAccessBlock_completion___block_invoke_2(void *a1, void *a2)
{
  v3 = *(a1[6] + 8);
  v4 = a2;
  os_unfair_lock_lock(v3 + 8);
  (*(a1[5] + 16))();

  os_unfair_lock_unlock((*(a1[6] + 8) + 32));
  v5 = a1[4];

  dispatch_group_leave(v5);
}

- (void)availableRelevanceEngines:(id)engines
{
  enginesCopy = engines;
  array = [MEMORY[0x277CBEB18] array];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56__RETrainingSimulationServer_availableRelevanceEngines___block_invoke;
  v11[3] = &unk_2785FA0E0;
  v12 = array;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__RETrainingSimulationServer_availableRelevanceEngines___block_invoke_4;
  v8[3] = &unk_2785FA150;
  v9 = v12;
  v10 = enginesCopy;
  v6 = v12;
  v7 = enginesCopy;
  [(RETrainingSimulationServer *)self _safelyEnumerateObserversWithBlock:v11 observerAccessBlock:&__block_literal_global_16 completion:v8];
}

void __56__RETrainingSimulationServer_availableRelevanceEngines___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__RETrainingSimulationServer_availableRelevanceEngines___block_invoke_3;
  v6[3] = &unk_2785FA128;
  v7 = v4;
  v5 = v4;
  [a2 availableRelevanceEngines:v6];
}

- (void)fetchAllElementIdentifiersInRelevanceEngine:(id)engine completion:(id)completion
{
  engineCopy = engine;
  completionCopy = completion;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = __Block_byref_object_copy__1;
  v16[4] = __Block_byref_object_dispose__1;
  v17 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __85__RETrainingSimulationServer_fetchAllElementIdentifiersInRelevanceEngine_completion___block_invoke;
  v15[3] = &unk_2785FA178;
  v15[4] = v16;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __85__RETrainingSimulationServer_fetchAllElementIdentifiersInRelevanceEngine_completion___block_invoke_2;
  v13[3] = &unk_2785FA1A0;
  v8 = engineCopy;
  v14 = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __85__RETrainingSimulationServer_fetchAllElementIdentifiersInRelevanceEngine_completion___block_invoke_4;
  v10[3] = &unk_2785FA1C8;
  v9 = completionCopy;
  v11 = v9;
  v12 = v16;
  [(RETrainingSimulationServer *)self _safelyEnumerateObserversWithBlock:v15 observerAccessBlock:v13 completion:v10];

  _Block_object_dispose(v16, 8);
}

uint64_t __85__RETrainingSimulationServer_fetchAllElementIdentifiersInRelevanceEngine_completion___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(*(a1 + 32) + 8);
  v7 = *(v5 + 40);
  v6 = (v5 + 40);
  if (!v7)
  {
    v9 = v4;
    objc_storeStrong(v6, a2);
    v4 = v9;
  }

  return MEMORY[0x2821F96F8](v6, v4);
}

void __85__RETrainingSimulationServer_fetchAllElementIdentifiersInRelevanceEngine_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __85__RETrainingSimulationServer_fetchAllElementIdentifiersInRelevanceEngine_completion___block_invoke_3;
  v8[3] = &unk_2785FA128;
  v9 = v5;
  v7 = v5;
  [a2 fetchAllElementIdentifiersInRelevanceEngine:v6 completion:v8];
}

- (void)fetchAllElementsInRelevanceEngine:(id)engine completion:(id)completion
{
  engineCopy = engine;
  completionCopy = completion;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = __Block_byref_object_copy__1;
  v16[4] = __Block_byref_object_dispose__1;
  v17 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __75__RETrainingSimulationServer_fetchAllElementsInRelevanceEngine_completion___block_invoke;
  v15[3] = &unk_2785FA178;
  v15[4] = v16;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __75__RETrainingSimulationServer_fetchAllElementsInRelevanceEngine_completion___block_invoke_2;
  v13[3] = &unk_2785FA1A0;
  v8 = engineCopy;
  v14 = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __75__RETrainingSimulationServer_fetchAllElementsInRelevanceEngine_completion___block_invoke_4;
  v10[3] = &unk_2785FA1C8;
  v9 = completionCopy;
  v11 = v9;
  v12 = v16;
  [(RETrainingSimulationServer *)self _safelyEnumerateObserversWithBlock:v15 observerAccessBlock:v13 completion:v10];

  _Block_object_dispose(v16, 8);
}

uint64_t __75__RETrainingSimulationServer_fetchAllElementsInRelevanceEngine_completion___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(*(a1 + 32) + 8);
  v7 = *(v5 + 40);
  v6 = (v5 + 40);
  if (!v7)
  {
    v9 = v4;
    objc_storeStrong(v6, a2);
    v4 = v9;
  }

  return MEMORY[0x2821F96F8](v6, v4);
}

void __75__RETrainingSimulationServer_fetchAllElementsInRelevanceEngine_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __75__RETrainingSimulationServer_fetchAllElementsInRelevanceEngine_completion___block_invoke_3;
  v8[3] = &unk_2785FA128;
  v9 = v5;
  v7 = v5;
  [a2 fetchAllElementsInRelevanceEngine:v6 completion:v8];
}

- (void)gatherDiagnosticLogsForRelevanceEngine:(id)engine completion:(id)completion
{
  engineCopy = engine;
  completionCopy = completion;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = __Block_byref_object_copy__1;
  v19[4] = __Block_byref_object_dispose__1;
  v20 = 0;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = __Block_byref_object_copy__1;
  v17[4] = __Block_byref_object_dispose__1;
  v18 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __80__RETrainingSimulationServer_gatherDiagnosticLogsForRelevanceEngine_completion___block_invoke;
  v16[3] = &unk_2785FA1F0;
  v16[4] = v19;
  v16[5] = v17;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __80__RETrainingSimulationServer_gatherDiagnosticLogsForRelevanceEngine_completion___block_invoke_2;
  v14[3] = &unk_2785FA1A0;
  v8 = engineCopy;
  v15 = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __80__RETrainingSimulationServer_gatherDiagnosticLogsForRelevanceEngine_completion___block_invoke_4;
  v10[3] = &unk_2785FA240;
  v9 = completionCopy;
  v11 = v9;
  v12 = v19;
  v13 = v17;
  [(RETrainingSimulationServer *)self _safelyEnumerateObserversWithBlock:v16 observerAccessBlock:v14 completion:v10];

  _Block_object_dispose(v17, 8);
  _Block_object_dispose(v19, 8);
}

uint64_t __80__RETrainingSimulationServer_gatherDiagnosticLogsForRelevanceEngine_completion___block_invoke(uint64_t a1, void *a2)
{
  isKindOfClass = a2;
  v5 = isKindOfClass;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    v11 = isKindOfClass;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
      v6 = *(*(a1 + 40) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = 0;
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v5 = v11;
      if ((isKindOfClass & 1) == 0)
      {
        goto LABEL_7;
      }

      v8 = *(*(a1 + 40) + 8);
      v9 = v11;
      v7 = *(v8 + 40);
      *(v8 + 40) = v9;
    }

    v5 = v11;
  }

LABEL_7:

  return MEMORY[0x2821F96F8](isKindOfClass, v5);
}

void __80__RETrainingSimulationServer_gatherDiagnosticLogsForRelevanceEngine_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __80__RETrainingSimulationServer_gatherDiagnosticLogsForRelevanceEngine_completion___block_invoke_3;
  v8[3] = &unk_2785FA218;
  v9 = v5;
  v7 = v5;
  [a2 gatherDiagnosticLogsForRelevanceEngine:v6 completion:v8];
}

uint64_t __80__RETrainingSimulationServer_gatherDiagnosticLogsForRelevanceEngine_completion___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (!a2)
  {
    a2 = a3;
  }

  return (*(v3 + 16))(v3, a2);
}

- (void)relevanceEngine:(id)engine runActionOfElementWithDescription1:(id)description1 completion:(id)completion
{
  engineCopy = engine;
  description1Copy = description1;
  completionCopy = completion;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v22 = 0;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __92__RETrainingSimulationServer_relevanceEngine_runActionOfElementWithDescription1_completion___block_invoke;
  v20[3] = &unk_2785FA178;
  v20[4] = v21;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __92__RETrainingSimulationServer_relevanceEngine_runActionOfElementWithDescription1_completion___block_invoke_2;
  v17[3] = &unk_2785FA290;
  v11 = engineCopy;
  v18 = v11;
  v12 = description1Copy;
  v19 = v12;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __92__RETrainingSimulationServer_relevanceEngine_runActionOfElementWithDescription1_completion___block_invoke_4;
  v14[3] = &unk_2785FA1C8;
  v13 = completionCopy;
  v15 = v13;
  v16 = v21;
  [(RETrainingSimulationServer *)self _safelyEnumerateObserversWithBlock:v20 observerAccessBlock:v17 completion:v14];

  _Block_object_dispose(v21, 8);
}

uint64_t __92__RETrainingSimulationServer_relevanceEngine_runActionOfElementWithDescription1_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 8);
  if (*(v2 + 24))
  {
    result = 1;
  }

  else
  {
    result = [a2 BOOLValue];
    v2 = *(*(a1 + 32) + 8);
  }

  *(v2 + 24) = result;
  return result;
}

void __92__RETrainingSimulationServer_relevanceEngine_runActionOfElementWithDescription1_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __92__RETrainingSimulationServer_relevanceEngine_runActionOfElementWithDescription1_completion___block_invoke_3;
  v9[3] = &unk_2785FA268;
  v10 = v5;
  v8 = v5;
  [a2 relevanceEngine:v7 runActionOfElementWithDescription1:v6 completion:v9];
}

void __92__RETrainingSimulationServer_relevanceEngine_runActionOfElementWithDescription1_completion___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithBool:a2];
  (*(v2 + 16))(v2, v3);
}

- (void)relevanceEngine:(id)engine encodedObjectAtPath:(id)path completion:(id)completion
{
  engineCopy = engine;
  pathCopy = path;
  completionCopy = completion;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy__1;
  v21[4] = __Block_byref_object_dispose__1;
  v22 = 0;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __77__RETrainingSimulationServer_relevanceEngine_encodedObjectAtPath_completion___block_invoke;
  v20[3] = &unk_2785FA178;
  v20[4] = v21;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __77__RETrainingSimulationServer_relevanceEngine_encodedObjectAtPath_completion___block_invoke_2;
  v17[3] = &unk_2785FA290;
  v11 = engineCopy;
  v18 = v11;
  v12 = pathCopy;
  v19 = v12;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __77__RETrainingSimulationServer_relevanceEngine_encodedObjectAtPath_completion___block_invoke_3;
  v14[3] = &unk_2785FA1C8;
  v13 = completionCopy;
  v15 = v13;
  v16 = v21;
  [(RETrainingSimulationServer *)self _safelyEnumerateObserversWithBlock:v20 observerAccessBlock:v17 completion:v14];

  _Block_object_dispose(v21, 8);
}

uint64_t __77__RETrainingSimulationServer_relevanceEngine_encodedObjectAtPath_completion___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(*(a1 + 32) + 8);
  v7 = *(v5 + 40);
  v6 = (v5 + 40);
  if (!v7)
  {
    v9 = v4;
    objc_storeStrong(v6, a2);
    v4 = v9;
  }

  return MEMORY[0x2821F96F8](v6, v4);
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = RETrainingSimulationClientInterface();
  [connectionCopy setRemoteObjectInterface:v8];

  v9 = RETrainingSimulationServerInterface();
  [connectionCopy setExportedInterface:v9];

  [connectionCopy setExportedObject:self];
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__RETrainingSimulationServer_listener_shouldAcceptNewConnection___block_invoke;
  block[3] = &unk_2785F9AE0;
  block[4] = self;
  v11 = connectionCopy;
  v17 = v11;
  dispatch_async(queue, block);
  objc_initWeak(&location, v11);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __65__RETrainingSimulationServer_listener_shouldAcceptNewConnection___block_invoke_2;
  v13[3] = &unk_2785FA2E0;
  v13[4] = self;
  objc_copyWeak(&v14, &location);
  [v11 setInvalidationHandler:v13];
  [v11 resume];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  return 1;
}

void __65__RETrainingSimulationServer_listener_shouldAcceptNewConnection___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __65__RETrainingSimulationServer_listener_shouldAcceptNewConnection___block_invoke_3;
  v3[3] = &unk_2785FA2B8;
  objc_copyWeak(&v4, (a1 + 40));
  v3[4] = *(a1 + 32);
  dispatch_async(v2, v3);
  objc_destroyWeak(&v4);
}

uint64_t __65__RETrainingSimulationServer_listener_shouldAcceptNewConnection___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    WeakRetained = [*(*(a1 + 32) + 8) removeObject:WeakRetained];
    v3 = v5;
  }

  return MEMORY[0x2821F96F8](WeakRetained, v3);
}

void __64__RETrainingSimulationServer_availableRelevanceEnginesDidChange__block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_22859F000, a2, OS_LOG_TYPE_ERROR, "Unable to access remote object: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end