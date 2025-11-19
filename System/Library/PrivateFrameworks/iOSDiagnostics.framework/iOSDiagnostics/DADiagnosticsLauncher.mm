@interface DADiagnosticsLauncher
- (BOOL)_establishConnection;
- (DADiagnosticsLauncher)initWithDelegate:(id)a3;
- (void)_deinitProcessMonitor;
- (void)_establishConnection;
- (void)_initProcessMonitor;
- (void)dealloc;
- (void)diagnosticsAppLaunchedWithResult:(int64_t)a3;
- (void)diagnosticsExitingForReason:(int64_t)a3;
- (void)launchDiagnostics;
@end

@implementation DADiagnosticsLauncher

- (DADiagnosticsLauncher)initWithDelegate:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = DADiagnosticsLauncher;
  v6 = [(DADiagnosticsLauncher *)&v12 init];
  v7 = v6;
  if (v6)
  {
    v6->_isDiagsRunning = 0;
    xpcConnection = v6->_xpcConnection;
    v6->_xpcConnection = 0;

    diagsProcess = v7->_diagsProcess;
    v7->_diagsProcess = 0;

    processMonitor = v7->_processMonitor;
    v7->_processMonitor = 0;

    v7->_exitReason = -1;
    objc_storeStrong(&v7->_delegate, a3);
  }

  return v7;
}

- (void)dealloc
{
  v3 = [(DADiagnosticsLauncher *)self xpcConnection];

  if (v3)
  {
    v4 = [(DADiagnosticsLauncher *)self xpcConnection];
    [v4 suspend];

    v5 = [(DADiagnosticsLauncher *)self xpcConnection];
    [v5 invalidate];

    [(DADiagnosticsLauncher *)self setXpcConnection:0];
  }

  [(DADiagnosticsLauncher *)self _deinitProcessMonitor];
  v6.receiver = self;
  v6.super_class = DADiagnosticsLauncher;
  [(DADiagnosticsLauncher *)&v6 dealloc];
}

- (void)launchDiagnostics
{
  if ([MEMORY[0x277CF97F0] isCheckerBoardActive])
  {
    v3 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [DADiagnosticsLauncher launchDiagnostics];
    }

    [(DADiagnosticsLauncher *)self diagnosticsAppLaunchedWithResult:2];
  }

  else
  {
    v4 = [MEMORY[0x277D0AD78] serviceWithDefaultShellEndpoint];
    v5 = v4;
    if (v4)
    {
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __42__DADiagnosticsLauncher_launchDiagnostics__block_invoke;
      v7[3] = &unk_27A66EDB8;
      v8 = v4;
      v9 = self;
      dispatch_async(MEMORY[0x277D85CD0], v7);
    }

    else
    {
      v6 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [DADiagnosticsLauncher launchDiagnostics];
      }

      [(DADiagnosticsLauncher *)self diagnosticsAppLaunchedWithResult:2];
    }
  }
}

void __42__DADiagnosticsLauncher_launchDiagnostics__block_invoke(uint64_t a1)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D0AD60];
  v9[0] = *MEMORY[0x277D0AC40];
  v3 = [MEMORY[0x277CBEBC0] URLWithString:@"diags://"];
  v9[1] = *MEMORY[0x277D0AC58];
  v10[0] = v3;
  v10[1] = MEMORY[0x277CBEC38];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
  v5 = [v2 optionsWithDictionary:v4];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__DADiagnosticsLauncher_launchDiagnostics__block_invoke_2;
  v8[3] = &unk_27A66ED90;
  v6 = *(a1 + 32);
  v8[4] = *(a1 + 40);
  [v6 openApplication:@"com.apple.Diagnostics" withOptions:v5 completion:v8];

  v7 = *MEMORY[0x277D85DE8];
}

void __42__DADiagnosticsLauncher_launchDiagnostics__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__DADiagnosticsLauncher_launchDiagnostics__block_invoke_3;
  block[3] = &unk_27A66ED68;
  v11 = v6;
  v12 = v5;
  v13 = *(a1 + 32);
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, block);
}

uint64_t __42__DADiagnosticsLauncher_launchDiagnostics__block_invoke_3(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32) || !*(a1 + 40))
  {
    v3 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __42__DADiagnosticsLauncher_launchDiagnostics__block_invoke_3_cold_2(v2, v3);
    }

    [*(a1 + 48) setDiagsProcess:0];
    v4 = 2;
  }

  else
  {
    [*(a1 + 48) setDiagsProcess:?];
    [*(a1 + 48) setIsDiagsRunning:1];
    [*(a1 + 48) _initProcessMonitor];
    v6 = [*(a1 + 48) xpcConnection];
    if (v6)
    {

LABEL_10:
      v4 = 0;
      return [*(a1 + 48) diagnosticsAppLaunchedWithResult:v4];
    }

    if ([*(a1 + 48) _establishConnection])
    {
      goto LABEL_10;
    }

    v7 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __42__DADiagnosticsLauncher_launchDiagnostics__block_invoke_3_cold_1();
    }

    v4 = 1;
  }

  return [*(a1 + 48) diagnosticsAppLaunchedWithResult:v4];
}

- (void)diagnosticsExitingForReason:(int64_t)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134217984;
    v10 = a3;
    _os_log_impl(&dword_275BB3000, v5, OS_LOG_TYPE_DEFAULT, "Diagnostics app is exiting for %ld", &v9, 0xCu);
  }

  [(DADiagnosticsLauncher *)self setIsDiagsRunning:0];
  [(DADiagnosticsLauncher *)self _deinitProcessMonitor];
  v6 = [(DADiagnosticsLauncher *)self delegate];

  if (v6)
  {
    v7 = [(DADiagnosticsLauncher *)self delegate];
    [v7 diagnosticsAppDidExitWithReason:a3];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)_establishConnection
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.diagnostics.launcher-service" options:4096];
  v4 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2884C15B8];
  [v3 setRemoteObjectInterface:v4];
  v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2884C09C8];
  [v3 setExportedInterface:v5];
  [v3 setExportedObject:self];
  [v3 activate];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__0;
  v24 = __Block_byref_object_dispose__0;
  v25 = 0;
  objc_initWeak(&location, self);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __45__DADiagnosticsLauncher__establishConnection__block_invoke;
  v17[3] = &unk_27A66EBD8;
  v17[4] = &v20;
  objc_copyWeak(&v18, &location);
  v6 = [v3 synchronousRemoteObjectProxyWithErrorHandler:v17];
  if (v6)
  {
    *buf = 0;
    v27 = buf;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__0;
    v30 = __Block_byref_object_dispose__0;
    v31 = dispatch_semaphore_create(0);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __45__DADiagnosticsLauncher__establishConnection__block_invoke_65;
    v16[3] = &unk_27A66EC00;
    v16[4] = buf;
    [v6 ping:v16];
    v7 = *(v27 + 5);
    v8 = dispatch_time(0, 2000000000);
    v9 = dispatch_semaphore_wait(v7, v8);
    v10 = v9 == 0;
    if (v9)
    {
      v11 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [DADiagnosticsLauncher _establishConnection];
      }
    }

    else
    {
      [(DADiagnosticsLauncher *)self setXpcConnection:v3];
      [(DADiagnosticsLauncher *)self setDiagnosticsLauncherServer:v6];
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v12 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [v21[5] localizedDescription];
      [(DADiagnosticsLauncher *)v13 _establishConnection];
    }

    v10 = 0;
  }

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v20, 8);

  v14 = *MEMORY[0x277D85DE8];
  return v10;
}

void __45__DADiagnosticsLauncher__establishConnection__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setXpcConnection:0];
}

- (void)_initProcessMonitor
{
  v3 = [(DADiagnosticsLauncher *)self processMonitor];

  if (!v3)
  {
    v4 = [MEMORY[0x277D46FA0] predicateMatchingBundleIdentifier:@"com.apple.Diagnostics"];
    v5 = [MEMORY[0x277D46FB0] descriptor];
    v6 = MEMORY[0x277D46F80];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __44__DADiagnosticsLauncher__initProcessMonitor__block_invoke;
    v10[3] = &unk_27A66EE08;
    v11 = v4;
    v12 = v5;
    v13 = self;
    v7 = v5;
    v8 = v4;
    v9 = [v6 monitorWithConfiguration:v10];
    [(DADiagnosticsLauncher *)self setProcessMonitor:v9];
  }
}

void __44__DADiagnosticsLauncher__initProcessMonitor__block_invoke(void *a1, void *a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v8[0] = a1[4];
  v3 = MEMORY[0x277CBEA60];
  v4 = a2;
  v5 = [v3 arrayWithObjects:v8 count:1];
  [v4 setPredicates:v5];

  [v4 setStateDescriptor:a1[5]];
  [v4 setEvents:1];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__DADiagnosticsLauncher__initProcessMonitor__block_invoke_2;
  v7[3] = &unk_27A66EDE0;
  v7[4] = a1[6];
  [v4 setUpdateHandler:v7];

  v6 = *MEMORY[0x277D85DE8];
}

void __44__DADiagnosticsLauncher__initProcessMonitor__block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v18 = a3;
  v6 = a4;
  v7 = [*(a1 + 32) diagsProcess];
  if (v7)
  {
    v8 = v7;
    v9 = [*(a1 + 32) diagsProcess];
    v10 = [v9 pid];
    if (v10 == [v18 pid])
    {
      v11 = [v6 exitEvent];

      if (v11)
      {
        v12 = [v6 exitEvent];
        v13 = [v12 context];
        v14 = [v13 type];

        v15 = *(a1 + 32);
        if (v14 == 1)
        {
          v16 = v15;
          v17 = 0;
        }

        else
        {
          v17 = [v15 exitReason];
          v16 = v15;
        }

        [v16 diagnosticsExitingForReason:v17];
      }
    }

    else
    {
    }
  }
}

- (void)_deinitProcessMonitor
{
  v3 = [(DADiagnosticsLauncher *)self processMonitor];

  if (v3)
  {
    v4 = [(DADiagnosticsLauncher *)self processMonitor];
    [v4 invalidate];

    [(DADiagnosticsLauncher *)self setProcessMonitor:0];
  }
}

- (void)diagnosticsAppLaunchedWithResult:(int64_t)a3
{
  v5 = [(DADiagnosticsLauncher *)self delegate];

  if (v5)
  {
    v6 = [(DADiagnosticsLauncher *)self delegate];
    [v6 diagnosticsAppLaunchedWithResult:a3];
  }
}

void __42__DADiagnosticsLauncher_launchDiagnostics__block_invoke_3_cold_2(id *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [*a1 localizedDescription];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_275BB3000, a2, OS_LOG_TYPE_ERROR, "Failed to launch Diagnostics with error: %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_establishConnection
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_275BB3000, log, OS_LOG_TYPE_ERROR, "Failed to connect to Diagnostics launcher server with error: %@", buf, 0xCu);
}

@end