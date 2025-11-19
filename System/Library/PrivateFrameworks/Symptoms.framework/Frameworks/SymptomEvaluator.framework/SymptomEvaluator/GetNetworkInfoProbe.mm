@interface GetNetworkInfoProbe
- (BOOL)startNetDiagnosticsTask:(id)a3;
- (GetNetworkInfoProbe)initWithQueue:(id)a3;
- (id)probeOutputFilePaths;
- (void)dealloc;
- (void)netDiagnosticTaskStatusChangedFor:(id)a3 toStatus:(int)a4;
- (void)stopTest;
@end

@implementation GetNetworkInfoProbe

- (GetNetworkInfoProbe)initWithQueue:(id)a3
{
  v6.receiver = self;
  v6.super_class = GetNetworkInfoProbe;
  v3 = [(TestProbe *)&v6 initWithQueue:a3];
  if (v3)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:kNetDiagTaskGetNetworkInfo[0]];
    [(NetDiagnosticProbe *)v3 setTaskName:v4];
  }

  return v3;
}

- (void)dealloc
{
  [(GetNetworkInfoProbe *)self stopTest];
  v3.receiver = self;
  v3.super_class = GetNetworkInfoProbe;
  [(NetDiagnosticProbe *)&v3 dealloc];
}

- (BOOL)startNetDiagnosticsTask:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(TestProbe *)self status]!= -1)
  {
    v5 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      v6 = v5;
      v7 = [TestProbe testProbeStatusString:[(TestProbe *)self status]];
      *buf = 138412290;
      v17 = v7;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "Probe status should be Unknown. It is incorrectly %@", buf, 0xCu);
    }
  }

  v8 = [(NetDiagnosticProbe *)self setUpDefaultTaskDictionary];
  v9 = +[SystemSettingsRelay defaultRelay];
  v10 = [v9 autoBugCaptureConfiguration];
  v11 = [v10 objectForKey:@"autoBugCaptureSensitivePayloads"];

  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = &unk_2847EFB18;
  }

  [v8 setObject:v12 forKeyedSubscript:@"taskGNISensitive"];
  [(GetNetworkInfoProbe *)self setCompletionBlock:_Block_copy(v4)];
  v15.receiver = self;
  v15.super_class = GetNetworkInfoProbe;
  [(NetDiagnosticProbe *)&v15 startNetDiagnosticsTask:v4];

  v13 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)netDiagnosticTaskStatusChangedFor:(id)a3 toStatus:(int)a4
{
  v6 = a3;
  v10 = [(NetDiagnosticProbe *)self taskName];
  v7 = [v6 isEqualToString:?];

  if (a4 == 3)
  {
    if (v7)
    {
      [(TestProbe *)self setStatus:2];
      v8 = [(GetNetworkInfoProbe *)self completionBlock];

      if (v8)
      {
        v9 = [(GetNetworkInfoProbe *)self completionBlock];
        v9[2](v9, [(TestProbe *)self status]);
      }
    }
  }
}

- (void)stopTest
{
  completionBlock = self->_completionBlock;
  if (completionBlock)
  {
    _Block_release(completionBlock);
    self->_completionBlock = 0;
  }
}

- (id)probeOutputFilePaths
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(NetDiagnosticProbe *)self ndFilePath];

  if (v4)
  {
    v5 = [(NetDiagnosticProbe *)self ndFilePath];
    [v3 addObject:v5];
  }

  return v3;
}

@end