@interface PHAGraphForceGraphRebuildTask
- (BOOL)shouldRunWithGraphManager:(id)manager;
- (id)taskClassDependencies;
@end

@implementation PHAGraphForceGraphRebuildTask

- (BOOL)shouldRunWithGraphManager:(id)manager
{
  managerCopy = manager;
  v10.receiver = self;
  v10.super_class = PHAGraphForceGraphRebuildTask;
  if (-[PHAGraphRebuildTask shouldRunWithGraphManager:](&v10, sel_shouldRunWithGraphManager_, managerCopy) && ([managerCopy isReady] & 1) == 0)
  {
    workingContext = [managerCopy workingContext];
    loggingConnection = [workingContext loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_22FA28000, loggingConnection, OS_LOG_TYPE_INFO, "[PHAGraphForceGraphRebuildTask] Graph is not available, forcing to rebuild", v9, 2u);
    }

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)taskClassDependencies
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

@end