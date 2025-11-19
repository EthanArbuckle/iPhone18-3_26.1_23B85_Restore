@interface PHAContactUpdateTask
- (BOOL)runWithGraphManager:(id)a3 progressReporter:(id)a4 error:(id *)a5;
- (BOOL)shouldRunWithGraphManager:(id)a3;
- (id)taskClassDependencies;
- (void)timeoutFatal:(BOOL)a3;
@end

@implementation PHAContactUpdateTask

- (void)timeoutFatal:(BOOL)a3
{
  if (a3)
  {
    __assert_rtn("[PHAContactUpdateTask timeoutFatal:]", "PHAContactUpdateTask.m", 113, "NO");
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    *v3 = 0;
    _os_log_fault_impl(&dword_22FA28000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "PHAContactUpdateTask is stuck", v3, 2u);
  }
}

- (BOOL)runWithGraphManager:(id)a3 progressReporter:(id)a4 error:(id *)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [v7 workingContext];
  v10 = [v9 loggingConnection];

  v11 = [v7 graphUpdateForContactsChangesWithProgressReporter:v8];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v11;
    _os_log_impl(&dword_22FA28000, v10, OS_LOG_TYPE_DEFAULT, "PHAContactUpdateTask: Graph update %@", &buf, 0xCu);
  }

  if ([v11 hasAnythingToDo])
  {
    v12 = [v11 numberOfConsolidatedChanges];
    v13 = [objc_alloc(MEMORY[0x277D3B9D0]) initWithGraphManager:v7];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v11;
      _os_log_impl(&dword_22FA28000, v10, OS_LOG_TYPE_INFO, "PHAContactUpdateTask: Run with graphUpdate= %@", &buf, 0xCu);
    }

    v14 = dispatch_group_create();
    dispatch_group_enter(v14);
    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v28 = 1;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy__7130;
    v32 = __Block_byref_object_dispose__7131;
    v33 = 0;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __67__PHAContactUpdateTask_runWithGraphManager_progressReporter_error___block_invoke;
    v21[3] = &unk_2788B2BB8;
    v23 = &v25;
    p_buf = &buf;
    v15 = v14;
    v22 = v15;
    [v13 applyChangesFromGraphUpdate:v11 progressReporter:v8 completionHandler:v21];
    dispatch_group_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
    v16 = [v8 throughputReportBlock];
    v17 = v16 == 0;

    if (!v17)
    {
      v18 = [v8 throughputReportBlock];
      v18[2](v18, v12, 0);
    }

    if (a5)
    {
      *a5 = *(*(&buf + 1) + 40);
    }

    v19 = *(v26 + 24);

    _Block_object_dispose(&buf, 8);
    _Block_object_dispose(&v25, 8);
  }

  else
  {
    v19 = 1;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_22FA28000, v10, OS_LOG_TYPE_INFO, "PHAContactUpdateTask: There is nothing to apply from Contacts update", &buf, 2u);
    }
  }

  return v19 & 1;
}

void __67__PHAContactUpdateTask_runWithGraphManager_progressReporter_error___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 32));
}

- (BOOL)shouldRunWithGraphManager:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v9 = 0;
  v4 = [v3 isReadyWithError:&v9];
  v5 = v9;
  if ((v4 & 1) == 0)
  {
    v6 = [v3 workingContext];
    v7 = [v6 loggingConnection];

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v5;
      _os_log_error_impl(&dword_22FA28000, v7, OS_LOG_TYPE_ERROR, "Returning NO for shouldRunWithGraphManager: Graph is not ready and need a full rebuild: %@", buf, 0xCu);
    }
  }

  return v4;
}

- (id)taskClassDependencies
{
  v4[1] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3BA40] graphConsistencyCheckIsEnabled])
  {
    v4[0] = objc_opt_class();
    v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  }

  else
  {
    v2 = MEMORY[0x277CBEBF8];
  }

  return v2;
}

@end