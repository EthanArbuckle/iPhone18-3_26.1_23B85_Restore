@interface PHAGraphRebuildTask
- (BOOL)runWithGraphManager:(id)manager progressReporter:(id)reporter error:(id *)error;
- (BOOL)runWithGraphManager:(id)manager withIncrementalChange:(id)change progressReporter:(id)reporter error:(id *)error;
- (BOOL)shouldRunIncrementallyWithGraphManager:(id)manager incrementalChange:(id)change timeIntervalSinceNonIncrementalRun:(double)run;
- (BOOL)shouldRunWithGraphManager:(id)manager;
- (PHAGraphRebuildTask)initWithMode:(unint64_t)mode;
- (id)taskClassDependencies;
- (void)timeoutFatal:(BOOL)fatal;
@end

@implementation PHAGraphRebuildTask

- (void)timeoutFatal:(BOOL)fatal
{
  if (fatal)
  {
    __assert_rtn("[PHAGraphRebuildTask timeoutFatal:]", "PHAGraphRebuildTask.m", 242, "NO");
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    *v3 = 0;
    _os_log_fault_impl(&dword_22FA28000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "PHAGraphRebuildTask is stuck", v3, 2u);
  }
}

- (BOOL)runWithGraphManager:(id)manager withIncrementalChange:(id)change progressReporter:(id)reporter error:(id *)error
{
  managerCopy = manager;
  changeCopy = change;
  reporterCopy = reporter;
  if ([changeCopy hasAnythingToDo])
  {
    throughputReportBlock = [reporterCopy throughputReportBlock];
    [managerCopy setThroughputReportBlock:throughputReportBlock];

    v13 = [objc_alloc(MEMORY[0x277D3B9D0]) initWithGraphManager:managerCopy];
    v14 = dispatch_group_create();
    dispatch_group_enter(v14);
    v37 = 0;
    v38 = &v37;
    v39 = 0x2020000000;
    v40 = 1;
    v31 = 0;
    v32 = &v31;
    v33 = 0x3032000000;
    v34 = __Block_byref_object_copy__578;
    v35 = __Block_byref_object_dispose__579;
    v36 = 0;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __88__PHAGraphRebuildTask_runWithGraphManager_withIncrementalChange_progressReporter_error___block_invoke_246;
    v22[3] = &unk_2788B2BB8;
    v24 = &v37;
    v25 = &v31;
    date = v14;
    v23 = date;
    [v13 applyChangesFromGraphUpdate:changeCopy progressReporter:reporterCopy completionHandler:v22];
    dispatch_group_wait(date, 0xFFFFFFFFFFFFFFFFLL);
    if (error)
    {
      *error = v32[5];
    }

    [managerCopy setThroughputReportBlock:0];
    v16 = *(v38 + 24);
    v17 = v23;
  }

  else
  {
    v18 = dispatch_block_create(0, &__block_literal_global_243);
    date = [MEMORY[0x277CBEAA8] date];
    v37 = 0;
    v38 = &v37;
    v39 = 0x2020000000;
    v40 = 1;
    v31 = 0;
    v32 = &v31;
    v33 = 0x3032000000;
    v34 = __Block_byref_object_copy__578;
    v35 = __Block_byref_object_dispose__579;
    v36 = 0;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __88__PHAGraphRebuildTask_runWithGraphManager_withIncrementalChange_progressReporter_error___block_invoke_2;
    v27[3] = &unk_2788B1D30;
    v29 = &v37;
    v30 = &v31;
    v13 = v18;
    v28 = v13;
    [managerCopy setGraphInfoDateOfLastIncrementalUpdateInvocationWithDate:date completionBlock:v27];
    dispatch_block_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
    workingContext = [managerCopy workingContext];
    loggingConnection = [workingContext loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22FA28000, loggingConnection, OS_LOG_TYPE_DEFAULT, "PHAGraphRebuildTask: IncrementalChange has nothing to do", buf, 2u);
    }

    if (error)
    {
      *error = v32[5];
    }

    v16 = *(v38 + 24);
    v17 = v28;
  }

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v37, 8);

  return v16 & 1;
}

void __88__PHAGraphRebuildTask_runWithGraphManager_withIncrementalChange_progressReporter_error___block_invoke_2(void *a1, char a2, id obj)
{
  *(*(a1[5] + 8) + 24) = a2;
  objc_storeStrong((*(a1[6] + 8) + 40), obj);
  v5 = obj;
  (*(a1[4] + 16))();
}

void __88__PHAGraphRebuildTask_runWithGraphManager_withIncrementalChange_progressReporter_error___block_invoke_246(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 32));
}

- (BOOL)runWithGraphManager:(id)manager progressReporter:(id)reporter error:(id *)error
{
  managerCopy = manager;
  reporterCopy = reporter;
  v10 = reporterCopy;
  if (self->_rebuildTaskMode == 2)
  {
    workingContext = [managerCopy workingContext];
    loggingConnection = [workingContext loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22FA28000, loggingConnection, OS_LOG_TYPE_DEFAULT, "PHAGraphRebuildTask: Returning NO for full rebuild run: Current mode is ForceIncrementalUpdate", buf, 2u);
    }

    if (error)
    {
      [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:14 localizedDescription:{@"Current mode is ForceIncrementalUpdate, the task does not support graph full rebuild"}];
      *error = v13 = 0;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    throughputReportBlock = [reporterCopy throughputReportBlock];
    [managerCopy setThroughputReportBlock:throughputReportBlock];

    v37 = 0;
    v38 = &v37;
    v39 = 0x2020000000;
    v40 = 1;
    *buf = 0;
    v32 = buf;
    v33 = 0x3032000000;
    v34 = __Block_byref_object_copy__578;
    v35 = __Block_byref_object_dispose__579;
    v36 = 0;
    v15 = dispatch_block_create(0, &__block_literal_global_584);
    v16 = [objc_alloc(MEMORY[0x277D3B9C8]) initWithGraphManager:managerCopy];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __66__PHAGraphRebuildTask_runWithGraphManager_progressReporter_error___block_invoke_2;
    v29[3] = &unk_2788B2258;
    v30 = v10;
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __66__PHAGraphRebuildTask_runWithGraphManager_progressReporter_error___block_invoke_3;
    v23 = &unk_2788B17D8;
    v17 = managerCopy;
    v24 = v17;
    v25 = v30;
    v27 = &v37;
    v28 = buf;
    v18 = v15;
    v26 = v18;
    [v16 performFullRebuildWithProgressBlock:v29 completionBlock:&v20];
    dispatch_block_wait(v18, 0xFFFFFFFFFFFFFFFFLL);
    if (error)
    {
      *error = *(v32 + 5);
    }

    [v17 setThroughputReportBlock:{0, v20, v21, v22, v23}];
    v13 = *(v38 + 24);

    _Block_object_dispose(buf, 8);
    _Block_object_dispose(&v37, 8);
  }

  return v13 & 1;
}

uint64_t __66__PHAGraphRebuildTask_runWithGraphManager_progressReporter_error___block_invoke_2(uint64_t a1, _BYTE *a2, double a3)
{
  result = [*(a1 + 32) isCancelledWithProgress:a3 * 0.7];
  *a2 = result;
  return result;
}

void __66__PHAGraphRebuildTask_runWithGraphManager_progressReporter_error___block_invoke_3(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __66__PHAGraphRebuildTask_runWithGraphManager_progressReporter_error___block_invoke_4;
    v10[3] = &unk_2788B2258;
    v6 = *(a1 + 32);
    v11 = *(a1 + 40);
    [v6 validateGraphConsistencyIfNeededWithProgressBlock:v10];
  }

  *(*(*(a1 + 56) + 8) + 24) = a2;
  v7 = *(*(a1 + 64) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v9 = v5;

  (*(*(a1 + 48) + 16))();
}

uint64_t __66__PHAGraphRebuildTask_runWithGraphManager_progressReporter_error___block_invoke_4(uint64_t a1, _BYTE *a2, double a3)
{
  result = [*(a1 + 32) isCancelledWithProgress:a3 * 0.3 + 0.7];
  *a2 = result;
  return result;
}

- (BOOL)shouldRunIncrementallyWithGraphManager:(id)manager incrementalChange:(id)change timeIntervalSinceNonIncrementalRun:(double)run
{
  v25 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  changeCopy = change;
  if (self->_rebuildTaskMode != 1)
  {
    v22 = 0;
    v12 = [managerCopy isReadyWithError:&v22];
    loggingConnection2 = v22;
    if (v12)
    {
      if (self->_rebuildTaskMode == 2)
      {
        workingContext = [managerCopy workingContext];
        loggingConnection = [workingContext loggingConnection];

        if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
        {
          rebuildTaskMode = self->_rebuildTaskMode;
          *buf = 134217984;
          v24 = rebuildTaskMode;
          _os_log_impl(&dword_22FA28000, loggingConnection, OS_LOG_TYPE_DEFAULT, "Returning YES for shouldRunIncrementally: Current mode is IncrementalUpdate, %lu", buf, 0xCu);
        }

        v11 = 1;
        goto LABEL_14;
      }

      if (![managerCopy mePersonContactIdentifierDidChangeWithGraphUpdate:changeCopy])
      {
        v11 = 1;
        goto LABEL_15;
      }

      workingContext2 = [managerCopy workingContext];
      loggingConnection = [workingContext2 loggingConnection];

      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v17 = "Returning NO for shouldRunIncrementally: IncrementalChange contains a contactIdentifier update of Me person";
        v18 = loggingConnection;
        v19 = 2;
        goto LABEL_12;
      }
    }

    else
    {
      workingContext3 = [managerCopy workingContext];
      loggingConnection = [workingContext3 loggingConnection];

      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v24 = loggingConnection2;
        v17 = "Returning NO for shouldRunIncrementally: Graph is not ready and need a full rebuild: %@";
        v18 = loggingConnection;
        v19 = 12;
LABEL_12:
        _os_log_impl(&dword_22FA28000, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
      }
    }

    v11 = 0;
LABEL_14:

    goto LABEL_15;
  }

  workingContext4 = [managerCopy workingContext];
  loggingConnection2 = [workingContext4 loggingConnection];

  if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22FA28000, loggingConnection2, OS_LOG_TYPE_DEFAULT, "Returning NO for shouldRunIncrementally: Current mode is ForceRebuild", buf, 2u);
  }

  v11 = 0;
LABEL_15:

  return v11;
}

- (BOOL)shouldRunWithGraphManager:(id)manager
{
  managerCopy = manager;
  libraryAnalysisState = [managerCopy libraryAnalysisState];
  if (libraryAnalysisState == 1)
  {
    workingContext = [managerCopy workingContext];
    loggingConnection = [workingContext loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_22FA28000, loggingConnection, OS_LOG_TYPE_DEFAULT, "PHAGraphRebuildTask: Graph is already rebuilding, skipping rebuild tasks", v8, 2u);
    }
  }

  return libraryAnalysisState != 1;
}

- (id)taskClassDependencies
{
  v4[4] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3BA40] graphConsistencyCheckIsEnabled])
  {
    v4[0] = objc_opt_class();
    v4[1] = objc_opt_class();
    v4[2] = objc_opt_class();
    v4[3] = objc_opt_class();
    v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:4];
  }

  else
  {
    v2 = MEMORY[0x277CBEBF8];
  }

  return v2;
}

- (PHAGraphRebuildTask)initWithMode:(unint64_t)mode
{
  v5.receiver = self;
  v5.super_class = PHAGraphRebuildTask;
  result = [(PHAGraphRebuildTask *)&v5 init];
  if (result)
  {
    result->_rebuildTaskMode = mode;
  }

  return result;
}

@end