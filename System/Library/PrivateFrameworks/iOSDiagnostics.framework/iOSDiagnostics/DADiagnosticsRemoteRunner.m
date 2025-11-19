@interface DADiagnosticsRemoteRunner
- (BOOL)_establishConnection;
- (DADiagnosticsRemoteRunner)initWithDelegate:(id)a3;
- (DADiagnosticsRemoteRunnerDelegate)delegate;
- (void)cancelTestWithID:(id)a3 completion:(id)a4;
- (void)createRemoteRunnerDeviceWithSerialNumber:(id)a3 completion:(id)a4;
- (void)dealloc;
- (void)destroyRemoteRunnerDeviceWithCompletion:(id)a3;
- (void)getReportWithCompletion:(id)a3;
- (void)getReportWithComponents:(id)a3 completion:(id)a4;
- (void)ping:(id)a3;
- (void)remoteRunnerDeviceEnded;
- (void)requestAsset:(id)a3 completion:(id)a4;
- (void)requestUploadAssets:(id)a3 completion:(id)a4;
- (void)runTestWithID:(id)a3 name:(id)a4 description:(id)a5 parameters:(id)a6 completion:(id)a7;
@end

@implementation DADiagnosticsRemoteRunner

- (DADiagnosticsRemoteRunner)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = DADiagnosticsRemoteRunner;
  v5 = [(DADiagnosticsRemoteRunner *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(DADiagnosticsRemoteRunner *)v5 setDelegate:v4];
    if (![(DADiagnosticsRemoteRunner *)v6 _establishConnection])
    {

      v6 = 0;
    }
  }

  return v6;
}

- (void)dealloc
{
  v3 = [(DADiagnosticsRemoteRunner *)self xpcConnection];

  if (v3)
  {
    v4 = [(DADiagnosticsRemoteRunner *)self xpcConnection];
    [v4 suspend];

    v5 = [(DADiagnosticsRemoteRunner *)self xpcConnection];
    [v5 invalidate];

    [(DADiagnosticsRemoteRunner *)self setXpcConnection:0];
  }

  [(DADiagnosticsRemoteRunner *)self setDelegate:0];
  v6.receiver = self;
  v6.super_class = DADiagnosticsRemoteRunner;
  [(DADiagnosticsRemoteRunner *)&v6 dealloc];
}

- (BOOL)_establishConnection
{
  v42[6] = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.diagnostics.remote-runner-service" options:4096];
  v22 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2884B79A0];
  v3 = MEMORY[0x277CBEB98];
  v42[0] = objc_opt_class();
  v42[1] = objc_opt_class();
  v42[2] = objc_opt_class();
  v42[3] = objc_opt_class();
  v42[4] = objc_opt_class();
  v42[5] = objc_opt_class();
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:6];
  v5 = [v3 setWithArray:v4];
  [v22 setClasses:v5 forSelector:sel_runTestWithID_name_description_parameters_completion_ argumentIndex:3 ofReply:0];

  v6 = MEMORY[0x277CBEB98];
  v41[0] = objc_opt_class();
  v41[1] = objc_opt_class();
  v41[2] = objc_opt_class();
  v41[3] = objc_opt_class();
  v41[4] = objc_opt_class();
  v41[5] = objc_opt_class();
  v41[6] = objc_opt_class();
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:7];
  v8 = [v6 setWithArray:v7];
  [v22 setClasses:v8 forSelector:sel_runTestWithID_name_description_parameters_completion_ argumentIndex:0 ofReply:1];

  [v2 setRemoteObjectInterface:v22];
  v9 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2884B7A70];
  [v2 setExportedInterface:v9];
  [v2 setExportedObject:self];
  [v2 activate];
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy_;
  v39 = __Block_byref_object_dispose_;
  v40 = 0;
  objc_initWeak(&location, self);
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __49__DADiagnosticsRemoteRunner__establishConnection__block_invoke;
  v32[3] = &unk_27A66EBD8;
  v32[4] = &v35;
  objc_copyWeak(&v33, &location);
  v10 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v32];
  if (v10 && !v36[5])
  {
    v12 = dispatch_queue_create("com.apple.Diagnostics.RemoteRunnerCheckQueue", MEMORY[0x277D85CD8]);
    diagsAliveCheckQueue = self->_diagsAliveCheckQueue;
    self->_diagsAliveCheckQueue = v12;

    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy_;
    v30 = __Block_byref_object_dispose_;
    v31 = dispatch_semaphore_create(0);
    v14 = self->_diagsAliveCheckQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__DADiagnosticsRemoteRunner__establishConnection__block_invoke_2;
    block[3] = &unk_27A66EC28;
    v15 = v10;
    v24 = v15;
    v25 = &v26;
    dispatch_async(v14, block);
    v16 = v27[5];
    v17 = dispatch_time(0, 2000000000);
    v18 = dispatch_semaphore_wait(v16, v17);
    v11 = v18 == 0;
    if (!v18)
    {
      [(DADiagnosticsRemoteRunner *)self setXpcConnection:v2];
      [(DADiagnosticsRemoteRunner *)self setRemoteRunnerServer:v15];
    }

    _Block_object_dispose(&v26, 8);
  }

  else
  {
    v11 = 0;
  }

  objc_destroyWeak(&v33);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v35, 8);

  v19 = *MEMORY[0x277D85DE8];
  return v11;
}

void __49__DADiagnosticsRemoteRunner__establishConnection__block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained delegate];

  if (v5)
  {
    v6 = objc_loadWeakRetained((a1 + 40));
    v7 = [v6 delegate];
    [v7 remoteRunnerConnectionEndedWithError:v9];

    v8 = objc_loadWeakRetained((a1 + 40));
    [v8 setXpcConnection:0];
  }
}

uint64_t __49__DADiagnosticsRemoteRunner__establishConnection__block_invoke_2(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __49__DADiagnosticsRemoteRunner__establishConnection__block_invoke_3;
  v3[3] = &unk_27A66EC00;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 ping:v3];
}

- (void)cancelTestWithID:(id)a3 completion:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(DADiagnosticsRemoteRunner *)self remoteRunnerServer];

  if (v7)
  {
    v8 = [(DADiagnosticsRemoteRunner *)self remoteRunnerServer];
    [v8 cancelTestWithID:v9 completion:v6];
  }
}

- (void)createRemoteRunnerDeviceWithSerialNumber:(id)a3 completion:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(DADiagnosticsRemoteRunner *)self remoteRunnerServer];

  if (v7)
  {
    v8 = [(DADiagnosticsRemoteRunner *)self remoteRunnerServer];
    [v8 createRemoteRunnerDeviceWithSerialNumber:v9 completion:v6];
  }
}

- (void)destroyRemoteRunnerDeviceWithCompletion:(id)a3
{
  v6 = a3;
  v4 = [(DADiagnosticsRemoteRunner *)self remoteRunnerServer];

  if (v4)
  {
    v5 = [(DADiagnosticsRemoteRunner *)self remoteRunnerServer];
    [v5 destroyRemoteRunnerDeviceWithCompletion:v6];
  }
}

- (void)getReportWithComponents:(id)a3 completion:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(DADiagnosticsRemoteRunner *)self remoteRunnerServer];

  if (v6 && v7)
  {
    v8 = [(DADiagnosticsRemoteRunner *)self remoteRunnerServer];
    [v8 getReportWithComponents:v9 completion:v6];
  }
}

- (void)getReportWithCompletion:(id)a3
{
  v6 = a3;
  v4 = [(DADiagnosticsRemoteRunner *)self remoteRunnerServer];

  if (v6 && v4)
  {
    v5 = [(DADiagnosticsRemoteRunner *)self remoteRunnerServer];
    [v5 getReportWithCompletion:v6];
  }
}

- (void)runTestWithID:(id)a3 name:(id)a4 description:(id)a5 parameters:(id)a6 completion:(id)a7
{
  v18 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [(DADiagnosticsRemoteRunner *)self remoteRunnerServer];

  if (v18 && v16)
  {
    v17 = [(DADiagnosticsRemoteRunner *)self remoteRunnerServer];
    [v17 runTestWithID:v18 name:v12 description:v13 parameters:v14 completion:v15];
  }
}

- (void)ping:(id)a3
{
  v6 = a3;
  v4 = [(DADiagnosticsRemoteRunner *)self remoteRunnerServer];

  if (v4)
  {
    v5 = [(DADiagnosticsRemoteRunner *)self remoteRunnerServer];
    [v5 ping:v6];
  }
}

- (void)remoteRunnerDeviceEnded
{
  v3 = [(DADiagnosticsRemoteRunner *)self delegate];

  if (v3)
  {
    v4 = [(DADiagnosticsRemoteRunner *)self delegate];
    [v4 remoteRunnerDeviceEnded];
  }
}

- (void)requestAsset:(id)a3 completion:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(DADiagnosticsRemoteRunner *)self delegate];

  if (v7)
  {
    v8 = [(DADiagnosticsRemoteRunner *)self delegate];
    [v8 requestAsset:v9 completion:v6];
  }

  else
  {
    v6[2](v6, 0);
  }
}

- (void)requestUploadAssets:(id)a3 completion:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(DADiagnosticsRemoteRunner *)self delegate];

  if (v7)
  {
    v8 = [(DADiagnosticsRemoteRunner *)self delegate];
    [v8 requestUploadAssets:v9 completion:v6];
  }

  else
  {
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DADiagnosticsRemoteRunner" code:-6 userInfo:0];
    v6[2](v6, &unk_2884B58F8, v8);
  }
}

- (DADiagnosticsRemoteRunnerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end