@interface SymptomsFileCleaner
- (SymptomsFileCleaner)initWithQueue:(id)a3;
- (void)cleanupFiles:(id)a3;
- (void)netDiagnosticTaskStatusChangedFor:(id)a3 toStatus:(int)a4;
@end

@implementation SymptomsFileCleaner

- (SymptomsFileCleaner)initWithQueue:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SymptomsFileCleaner;
  v5 = [(SymptomsFileCleaner *)&v13 init];
  if (v5)
  {
    if (v4)
    {
      v6 = v4;
      queue = v5->_queue;
      v5->_queue = v6;
    }

    else
    {
      queue = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
      v8 = dispatch_queue_create("com.apple.symptoms.autobugcapture.cleanup", queue);
      v9 = v5->_queue;
      v5->_queue = v8;
    }

    v10 = [[NetDiagnosticsShim alloc] initWithTaskName:@"deletefilesforsymptoms" queue:v5->_queue];
    netDiags = v5->_netDiags;
    v5->_netDiags = v10;

    [(NetDiagnosticsShim *)v5->_netDiags setDelegate:v5];
  }

  return v5;
}

- (void)cleanupFiles:(id)a3
{
  v4 = a3;
  [(SymptomsFileCleaner *)self setFilesToDelete:v4];
  v5 = [(SymptomsFileCleaner *)self netDiags];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB38] dictionary];
    [v6 setObject:@"deletefilesforsymptoms" forKeyedSubscript:@"taskName"];
    [v6 setObject:v4 forKeyedSubscript:@"taskFileDicts"];
    v7 = [(SymptomsFileCleaner *)self queue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __36__SymptomsFileCleaner_cleanupFiles___block_invoke;
    v9[3] = &unk_27898A7D0;
    v10 = v5;
    v11 = v6;
    v8 = v6;
    dispatch_async(v7, v9);
  }
}

void __36__SymptomsFileCleaner_cleanupFiles___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v4;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "SymptomsFileCleaner NetDiagnosticShim start called:%@ error:%@", &v8, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)netDiagnosticTaskStatusChangedFor:(id)a3 toStatus:(int)a4
{
  v6 = [a3 isEqualToString:@"deletefilesforsymptoms"];
  if (a4 == 3 && v6)
  {
    v7 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_INFO, "Completed kNetDiagTaskDeleteFilesForSymptoms", v11, 2u);
    }

    v8 = [(SymptomsFileCleaner *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = [(SymptomsFileCleaner *)self delegate];
      [v10 fileCleanupComplete];
    }

    [(NetDiagnosticsShim *)self->_netDiags setDelegate:0];
  }
}

@end