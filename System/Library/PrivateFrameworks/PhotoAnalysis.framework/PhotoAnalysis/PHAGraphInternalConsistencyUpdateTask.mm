@interface PHAGraphInternalConsistencyUpdateTask
- (BOOL)runWithGraphManager:(id)a3 progressReporter:(id)a4 error:(id *)a5;
- (BOOL)runWithGraphManager:(id)a3 withIncrementalChange:(id)a4 progressReporter:(id)a5 error:(id *)a6;
- (BOOL)shouldRunIncrementallyWithGraphManager:(id)a3 incrementalChange:(id)a4 timeIntervalSinceNonIncrementalRun:(double)a5;
- (void)timeoutFatal:(BOOL)a3;
@end

@implementation PHAGraphInternalConsistencyUpdateTask

- (void)timeoutFatal:(BOOL)a3
{
  if (a3)
  {
    __assert_rtn("[PHAGraphInternalConsistencyUpdateTask timeoutFatal:]", "PHAGraphInternalConsistencyUpdateTask.m", 125, "NO");
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    *v3 = 0;
    _os_log_fault_impl(&dword_22FA28000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "PHAGraphInternalConsistencyUpdateTask is stuck", v3, 2u);
  }
}

- (BOOL)runWithGraphManager:(id)a3 withIncrementalChange:(id)a4 progressReporter:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ([v10 hasAnythingToDo])
  {
    v12 = [objc_alloc(MEMORY[0x277D3B9D0]) initWithGraphManager:v9];
    v13 = dispatch_group_create();
    dispatch_group_enter(v13);
    v36 = 0;
    v37 = &v36;
    v38 = 0x2020000000;
    v39 = 1;
    v30 = 0;
    v31 = &v30;
    v32 = 0x3032000000;
    v33 = __Block_byref_object_copy__1857;
    v34 = __Block_byref_object_dispose__1858;
    v35 = 0;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __106__PHAGraphInternalConsistencyUpdateTask_runWithGraphManager_withIncrementalChange_progressReporter_error___block_invoke_235;
    v21[3] = &unk_2788B2BB8;
    v23 = &v36;
    v24 = &v30;
    v14 = v13;
    v22 = v14;
    [v12 applyChangesFromGraphUpdate:v10 progressReporter:v11 completionHandler:v21];
    dispatch_group_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
    if (a6)
    {
      *a6 = v31[5];
    }

    v15 = *(v37 + 24);
    v16 = v22;
  }

  else
  {
    v17 = dispatch_block_create(0, &__block_literal_global_1855);
    v14 = [MEMORY[0x277CBEAA8] date];
    v36 = 0;
    v37 = &v36;
    v38 = 0x2020000000;
    v39 = 1;
    v30 = 0;
    v31 = &v30;
    v32 = 0x3032000000;
    v33 = __Block_byref_object_copy__1857;
    v34 = __Block_byref_object_dispose__1858;
    v35 = 0;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __106__PHAGraphInternalConsistencyUpdateTask_runWithGraphManager_withIncrementalChange_progressReporter_error___block_invoke_232;
    v26[3] = &unk_2788B1D30;
    v28 = &v36;
    v29 = &v30;
    v12 = v17;
    v27 = v12;
    [v9 setGraphInfoDateOfLastIncrementalUpdateInvocationWithDate:v14 completionBlock:v26];
    dispatch_block_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
    v18 = [v9 workingContext];
    v19 = [v18 loggingConnection];

    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22FA28000, v19, OS_LOG_TYPE_DEFAULT, "PHAGraphInternalConsistencyUpdateTask: IncrementalChange has nothing to do", buf, 2u);
    }

    if (a6)
    {
      *a6 = v31[5];
    }

    v15 = *(v37 + 24);
    v16 = v27;
  }

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v36, 8);

  return v15 & 1;
}

void __106__PHAGraphInternalConsistencyUpdateTask_runWithGraphManager_withIncrementalChange_progressReporter_error___block_invoke_232(void *a1, char a2, id obj)
{
  *(*(a1[5] + 8) + 24) = a2;
  objc_storeStrong((*(a1[6] + 8) + 40), obj);
  v5 = obj;
  (*(a1[4] + 16))();
}

void __106__PHAGraphInternalConsistencyUpdateTask_runWithGraphManager_withIncrementalChange_progressReporter_error___block_invoke_235(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 32));
}

- (BOOL)runWithGraphManager:(id)a3 progressReporter:(id)a4 error:(id *)a5
{
  if (a5)
  {
    *a5 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:14 localizedDescription:@"The task does not support graph full rebuild which is handled by PHAGraphRebuildTask"];
  }

  return 0;
}

- (BOOL)shouldRunIncrementallyWithGraphManager:(id)a3 incrementalChange:(id)a4 timeIntervalSinceNonIncrementalRun:(double)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v18 = 0;
  v8 = [v6 isReadyWithError:&v18];
  v9 = v18;
  if (v8)
  {
    if (![v6 mePersonContactIdentifierDidChangeWithGraphUpdate:v7])
    {
      v16 = 1;
      goto LABEL_10;
    }

    v10 = [v6 workingContext];
    v11 = [v10 loggingConnection];

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v12 = "PHAGraphInternalConsistencyUpdateTask: Returning NO for shouldRunIncrementally: IncrementalChange contains a contactIdentifier update of Me person";
      v13 = v11;
      v14 = 2;
LABEL_7:
      _os_log_impl(&dword_22FA28000, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
    }
  }

  else
  {
    v15 = [v6 workingContext];
    v11 = [v15 loggingConnection];

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v9;
      v12 = "PHAGraphInternalConsistencyUpdateTask: Returning NO for shouldRunIncrementally: Graph is not ready and need a full rebuild: %@";
      v13 = v11;
      v14 = 12;
      goto LABEL_7;
    }
  }

  v16 = 0;
LABEL_10:

  return v16;
}

@end