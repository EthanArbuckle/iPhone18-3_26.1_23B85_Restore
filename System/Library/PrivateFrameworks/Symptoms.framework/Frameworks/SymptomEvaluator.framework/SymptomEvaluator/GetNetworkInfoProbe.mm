@interface GetNetworkInfoProbe
- (BOOL)startNetDiagnosticsTask:(id)task;
- (GetNetworkInfoProbe)initWithQueue:(id)queue;
- (id)probeOutputFilePaths;
- (void)dealloc;
- (void)netDiagnosticTaskStatusChangedFor:(id)for toStatus:(int)status;
- (void)stopTest;
@end

@implementation GetNetworkInfoProbe

- (GetNetworkInfoProbe)initWithQueue:(id)queue
{
  v6.receiver = self;
  v6.super_class = GetNetworkInfoProbe;
  v3 = [(TestProbe *)&v6 initWithQueue:queue];
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

- (BOOL)startNetDiagnosticsTask:(id)task
{
  v18 = *MEMORY[0x277D85DE8];
  taskCopy = task;
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

  setUpDefaultTaskDictionary = [(NetDiagnosticProbe *)self setUpDefaultTaskDictionary];
  v9 = +[SystemSettingsRelay defaultRelay];
  autoBugCaptureConfiguration = [v9 autoBugCaptureConfiguration];
  v11 = [autoBugCaptureConfiguration objectForKey:@"autoBugCaptureSensitivePayloads"];

  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = &unk_2847EFB18;
  }

  [setUpDefaultTaskDictionary setObject:v12 forKeyedSubscript:@"taskGNISensitive"];
  [(GetNetworkInfoProbe *)self setCompletionBlock:_Block_copy(taskCopy)];
  v15.receiver = self;
  v15.super_class = GetNetworkInfoProbe;
  [(NetDiagnosticProbe *)&v15 startNetDiagnosticsTask:taskCopy];

  v13 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)netDiagnosticTaskStatusChangedFor:(id)for toStatus:(int)status
{
  forCopy = for;
  taskName = [(NetDiagnosticProbe *)self taskName];
  v7 = [forCopy isEqualToString:?];

  if (status == 3)
  {
    if (v7)
    {
      [(TestProbe *)self setStatus:2];
      completionBlock = [(GetNetworkInfoProbe *)self completionBlock];

      if (completionBlock)
      {
        completionBlock2 = [(GetNetworkInfoProbe *)self completionBlock];
        completionBlock2[2](completionBlock2, [(TestProbe *)self status]);
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
  array = [MEMORY[0x277CBEB18] array];
  ndFilePath = [(NetDiagnosticProbe *)self ndFilePath];

  if (ndFilePath)
  {
    ndFilePath2 = [(NetDiagnosticProbe *)self ndFilePath];
    [array addObject:ndFilePath2];
  }

  return array;
}

@end