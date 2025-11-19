@interface RETrainingSimulationClient
- (BOOL)relevanceEngine:(id)a3 performCommand:(id)a4 withOptions:(id)a5;
- (BOOL)relevanceEngine:(id)a3 runActionOfElementWithDescription1:(id)a4;
- (RETrainingSimulationClient)initWithConnection:(id)a3 delegate:(id)a4;
- (RETrainingSimulationClient)initWithServiceName:(id)a3 delegate:(id)a4;
- (RETrainingSimulationClient)initWithTargetProcessName:(id)a3 delegate:(id)a4;
- (RETrainingSimulationClientDelegate)delegate;
- (id)availableRelevanceEngines;
- (id)diagnosticLogFileForRelevanceEngine:(id)a3;
- (id)fetchAllElementIdentifiersInRelevanceEngine:(id)a3;
- (id)fetchAllElementsInRelevanceEngine:(id)a3;
- (id)relevanceEngine:(id)a3 encodedObjectAtPath:(id)a4;
- (void)_handleInterruption;
- (void)_handleInvalidation;
- (void)availableRelevanceEngines;
- (void)availableRelevanceEnginesDidChange;
- (void)dealloc;
- (void)relevanceEngine:(id)a3 createElementFromDescription:(id)a4;
@end

@implementation RETrainingSimulationClient

- (RETrainingSimulationClient)initWithServiceName:(id)a3 delegate:(id)a4
{
  v6 = MEMORY[0x277CCAE80];
  v7 = a4;
  v8 = a3;
  v9 = [[v6 alloc] initWithServiceName:v8];

  v10 = [(RETrainingSimulationClient *)self initWithConnection:v9 delegate:v7];
  return v10;
}

- (RETrainingSimulationClient)initWithTargetProcessName:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = RETrainingSimulationMachServiceForProcessName(v7);
  v10 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:v9 options:0];
  v11 = [(RETrainingSimulationClient *)self initWithConnection:v10 delegate:v8];

  if (v11)
  {
    objc_storeStrong(&v11->_targetProcessName, a3);
  }

  return v11;
}

- (RETrainingSimulationClient)initWithConnection:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v25.receiver = self;
  v25.super_class = RETrainingSimulationClient;
  v9 = [(RETrainingSimulationClient *)&v25 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_delegate, v8);
    v11 = dispatch_queue_create("com.apple.RelevanceEngine.TrainingSimulationClient", 0);
    queue = v10->_queue;
    v10->_queue = v11;

    objc_storeStrong(&v10->_connection, a3);
    connection = v10->_connection;
    v14 = RETrainingSimulationServerInterface();
    [(NSXPCConnection *)connection setRemoteObjectInterface:v14];

    v15 = v10->_connection;
    v16 = RETrainingSimulationClientInterface();
    [(NSXPCConnection *)v15 setExportedInterface:v16];

    [(NSXPCConnection *)v10->_connection setExportedObject:v10];
    objc_initWeak(&location, v10);
    v17 = v10->_connection;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __58__RETrainingSimulationClient_initWithConnection_delegate___block_invoke;
    v22[3] = &unk_2785F9A90;
    objc_copyWeak(&v23, &location);
    [(NSXPCConnection *)v17 setInterruptionHandler:v22];
    v18 = v10->_connection;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __58__RETrainingSimulationClient_initWithConnection_delegate___block_invoke_2;
    v20[3] = &unk_2785F9A90;
    objc_copyWeak(&v21, &location);
    [(NSXPCConnection *)v18 setInvalidationHandler:v20];
    [(NSXPCConnection *)v10->_connection resume];
    objc_destroyWeak(&v21);
    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  return v10;
}

void __58__RETrainingSimulationClient_initWithConnection_delegate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleInterruption];
}

void __58__RETrainingSimulationClient_initWithConnection_delegate___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleInvalidation];
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = RETrainingSimulationClient;
  [(RETrainingSimulationClient *)&v3 dealloc];
}

- (void)_handleInterruption
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__RETrainingSimulationClient__handleInterruption__block_invoke;
  block[3] = &unk_2785F9AB8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __49__RETrainingSimulationClient__handleInterruption__block_invoke(uint64_t a1)
{
  v2 = RELogForDomain(10);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __49__RETrainingSimulationClient__handleInterruption__block_invoke_cold_1(a1);
  }

  v3 = [*(a1 + 32) delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [*(a1 + 32) delegate];
    [v5 trainingSimulationClientWasInterrupted:*(a1 + 32)];
  }
}

- (void)_handleInvalidation
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__RETrainingSimulationClient__handleInvalidation__block_invoke;
  block[3] = &unk_2785F9AB8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __49__RETrainingSimulationClient__handleInvalidation__block_invoke(uint64_t a1)
{
  v2 = RELogForDomain(10);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __49__RETrainingSimulationClient__handleInvalidation__block_invoke_cold_1(a1);
  }

  [*(*(a1 + 32) + 16) setExportedObject:0];
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = 0;

  v5 = [*(a1 + 32) delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [*(a1 + 32) delegate];
    [v7 trainingSimulationClientWasInvalidated:*(a1 + 32)];
  }
}

- (void)relevanceEngine:(id)a3 createElementFromDescription:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13 = 0;
  v14[0] = &v13;
  v14[1] = 0x3032000000;
  v14[2] = __Block_byref_object_copy__23;
  v14[3] = __Block_byref_object_dispose__23;
  v15 = 0;
  connection = self->_connection;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __75__RETrainingSimulationClient_relevanceEngine_createElementFromDescription___block_invoke;
  v12[3] = &unk_2785FCF10;
  v12[4] = &v13;
  v9 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v12];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __75__RETrainingSimulationClient_relevanceEngine_createElementFromDescription___block_invoke_2;
  v11[3] = &unk_2785FCF10;
  v11[4] = &v13;
  [v9 relevanceEngine:v6 createElementFromDescription:v7 completion:v11];
  if (*(v14[0] + 40))
  {
    v10 = RELogForDomain(10);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [RETrainingSimulationClient relevanceEngine:v14 createElementFromDescription:?];
    }
  }

  _Block_object_dispose(&v13, 8);
}

- (BOOL)relevanceEngine:(id)a3 performCommand:(id)a4 withOptions:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18 = 0;
  v19[0] = &v18;
  v19[1] = 0x3032000000;
  v19[2] = __Block_byref_object_copy__23;
  v19[3] = __Block_byref_object_dispose__23;
  v20 = 0;
  connection = self->_connection;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __73__RETrainingSimulationClient_relevanceEngine_performCommand_withOptions___block_invoke;
  v17[3] = &unk_2785FCF10;
  v17[4] = &v18;
  v12 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v17];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __73__RETrainingSimulationClient_relevanceEngine_performCommand_withOptions___block_invoke_2;
  v16[3] = &unk_2785FCF10;
  v16[4] = &v18;
  [v12 relevanceEngine:v8 performCommand:v9 withOptions:v10 completion:v16];
  if (*(v19[0] + 40))
  {
    v13 = RELogForDomain(10);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [RETrainingSimulationClient relevanceEngine:v9 performCommand:v19 withOptions:v13];
    }

    v14 = *(v19[0] + 40) == 0;
  }

  else
  {
    v14 = 1;
  }

  _Block_object_dispose(&v18, 8);
  return v14;
}

- (id)availableRelevanceEngines
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__23;
  v16 = __Block_byref_object_dispose__23;
  v17 = 0;
  v9 = 0;
  v10[0] = &v9;
  v10[1] = 0x3032000000;
  v10[2] = __Block_byref_object_copy__23;
  v10[3] = __Block_byref_object_dispose__23;
  v11 = 0;
  connection = self->_connection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__RETrainingSimulationClient_availableRelevanceEngines__block_invoke;
  v8[3] = &unk_2785FCF10;
  v8[4] = &v9;
  v3 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v8];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__RETrainingSimulationClient_availableRelevanceEngines__block_invoke_2;
  v7[3] = &unk_2785FCF38;
  v7[4] = &v12;
  v7[5] = &v9;
  [v3 availableRelevanceEngines:v7];
  if (*(v10[0] + 40))
  {
    v4 = RELogForDomain(10);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(RETrainingSimulationClient *)v10 availableRelevanceEngines];
    }
  }

  v5 = v13[5];

  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v12, 8);

  return v5;
}

void __55__RETrainingSimulationClient_availableRelevanceEngines__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (BOOL)relevanceEngine:(id)a3 runActionOfElementWithDescription1:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v15 = 0;
  v16[0] = &v15;
  v16[1] = 0x3032000000;
  v16[2] = __Block_byref_object_copy__23;
  v16[3] = __Block_byref_object_dispose__23;
  v17 = 0;
  connection = self->_connection;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __81__RETrainingSimulationClient_relevanceEngine_runActionOfElementWithDescription1___block_invoke;
  v14[3] = &unk_2785FCF10;
  v14[4] = &v15;
  v9 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v14];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __81__RETrainingSimulationClient_relevanceEngine_runActionOfElementWithDescription1___block_invoke_2;
  v13[3] = &unk_2785FCF60;
  v13[4] = &v18;
  v13[5] = &v15;
  [v9 relevanceEngine:v6 runActionOfElementWithDescription1:v7 completion:v13];
  if (*(v16[0] + 40))
  {
    v10 = RELogForDomain(10);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(RETrainingSimulationClient *)v16 availableRelevanceEngines];
    }
  }

  v11 = *(v19 + 24);

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v18, 8);

  return v11;
}

- (id)fetchAllElementIdentifiersInRelevanceEngine:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__23;
  v19 = __Block_byref_object_dispose__23;
  v20 = 0;
  v12 = 0;
  v13[0] = &v12;
  v13[1] = 0x3032000000;
  v13[2] = __Block_byref_object_copy__23;
  v13[3] = __Block_byref_object_dispose__23;
  v14 = 0;
  connection = self->_connection;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __74__RETrainingSimulationClient_fetchAllElementIdentifiersInRelevanceEngine___block_invoke;
  v11[3] = &unk_2785FCF10;
  v11[4] = &v12;
  v6 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v11];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __74__RETrainingSimulationClient_fetchAllElementIdentifiersInRelevanceEngine___block_invoke_2;
  v10[3] = &unk_2785FCF38;
  v10[4] = &v15;
  v10[5] = &v12;
  [v6 fetchAllElementIdentifiersInRelevanceEngine:v4 completion:v10];
  if (*(v13[0] + 40))
  {
    v7 = RELogForDomain(10);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(RETrainingSimulationClient *)v13 availableRelevanceEngines];
    }
  }

  v8 = v16[5];

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v15, 8);

  return v8;
}

void __74__RETrainingSimulationClient_fetchAllElementIdentifiersInRelevanceEngine___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)fetchAllElementsInRelevanceEngine:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__23;
  v19 = __Block_byref_object_dispose__23;
  v20 = 0;
  v12 = 0;
  v13[0] = &v12;
  v13[1] = 0x3032000000;
  v13[2] = __Block_byref_object_copy__23;
  v13[3] = __Block_byref_object_dispose__23;
  v14 = 0;
  connection = self->_connection;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __64__RETrainingSimulationClient_fetchAllElementsInRelevanceEngine___block_invoke;
  v11[3] = &unk_2785FCF10;
  v11[4] = &v12;
  v6 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v11];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__RETrainingSimulationClient_fetchAllElementsInRelevanceEngine___block_invoke_2;
  v10[3] = &unk_2785FCF38;
  v10[4] = &v15;
  v10[5] = &v12;
  [v6 fetchAllElementsInRelevanceEngine:v4 completion:v10];
  if (*(v13[0] + 40))
  {
    v7 = RELogForDomain(10);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(RETrainingSimulationClient *)v13 availableRelevanceEngines];
    }
  }

  v8 = v16[5];

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v15, 8);

  return v8;
}

void __64__RETrainingSimulationClient_fetchAllElementsInRelevanceEngine___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)diagnosticLogFileForRelevanceEngine:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__23;
  v19 = __Block_byref_object_dispose__23;
  v20 = 0;
  v12 = 0;
  v13[0] = &v12;
  v13[1] = 0x3032000000;
  v13[2] = __Block_byref_object_copy__23;
  v13[3] = __Block_byref_object_dispose__23;
  v14 = 0;
  connection = self->_connection;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __66__RETrainingSimulationClient_diagnosticLogFileForRelevanceEngine___block_invoke;
  v11[3] = &unk_2785FCF10;
  v11[4] = &v12;
  v6 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v11];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __66__RETrainingSimulationClient_diagnosticLogFileForRelevanceEngine___block_invoke_2;
  v10[3] = &unk_2785FCF88;
  v10[4] = &v15;
  v10[5] = &v12;
  [v6 gatherDiagnosticLogsForRelevanceEngine:v4 completion:v10];
  if (*(v13[0] + 40))
  {
    v7 = RELogForDomain(10);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(RETrainingSimulationClient *)v13 availableRelevanceEngines];
    }
  }

  v8 = v16[5];

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v15, 8);

  return v8;
}

void __66__RETrainingSimulationClient_diagnosticLogFileForRelevanceEngine___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (a2)
  {
    v7 = *(*(a1 + 40) + 8);
    obj = *(v7 + 40);
    v8 = [MEMORY[0x277CBEBC0] URLByResolvingBookmarkData:a2 options:0 relativeToURL:0 bookmarkDataIsStale:0 error:&obj];
    objc_storeStrong((v7 + 40), obj);
    v9 = *(*(a1 + 32) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }
}

- (id)relevanceEngine:(id)a3 encodedObjectAtPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__23;
  v22 = __Block_byref_object_dispose__23;
  v23 = 0;
  v15 = 0;
  v16[0] = &v15;
  v16[1] = 0x3032000000;
  v16[2] = __Block_byref_object_copy__23;
  v16[3] = __Block_byref_object_dispose__23;
  v17 = 0;
  connection = self->_connection;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __66__RETrainingSimulationClient_relevanceEngine_encodedObjectAtPath___block_invoke;
  v14[3] = &unk_2785FCF10;
  v14[4] = &v15;
  v9 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v14];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __66__RETrainingSimulationClient_relevanceEngine_encodedObjectAtPath___block_invoke_2;
  v13[3] = &unk_2785FCFB0;
  v13[4] = &v18;
  [v9 relevanceEngine:v6 encodedObjectAtPath:v7 completion:v13];
  if (*(v16[0] + 40))
  {
    v10 = RELogForDomain(10);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(RETrainingSimulationClient *)v16 availableRelevanceEngines];
    }
  }

  v11 = v19[5];

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v18, 8);

  return v11;
}

- (void)availableRelevanceEnginesDidChange
{
  v3 = [(RETrainingSimulationClient *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(RETrainingSimulationClient *)self delegate];
    [v5 availableRelevanceEnginesDidChangeForTrainingSimulationClient:self];
  }
}

- (RETrainingSimulationClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __49__RETrainingSimulationClient__handleInterruption__block_invoke_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(*(a1 + 32) + 24);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_4(&dword_22859F000, v2, v3, "Training Simulation connection (%@) was interrupted", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x277D85DE8];
}

void __49__RETrainingSimulationClient__handleInvalidation__block_invoke_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(*(a1 + 32) + 24);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_4(&dword_22859F000, v2, v3, "Training Simulation connection (%@) was invalidated", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)relevanceEngine:(uint64_t)a1 createElementFromDescription:.cold.1(uint64_t a1)
{
  OUTLINED_FUNCTION_0_8(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_4(&dword_22859F000, v1, v2, "Unable to create element: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)relevanceEngine:(uint64_t)a1 performCommand:(uint64_t)a2 withOptions:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(*a2 + 40);
  v5 = 138412546;
  v6 = a1;
  v7 = 2112;
  v8 = v3;
  _os_log_error_impl(&dword_22859F000, log, OS_LOG_TYPE_ERROR, "Unable to perform command %@: %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)availableRelevanceEngines
{
  OUTLINED_FUNCTION_0_8(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_4(&dword_22859F000, v1, v2, "Unable to access engines: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

@end