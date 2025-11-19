@interface TRIPETLogHandler
- (void)logEvent:(id)a3 subgroupName:(id)a4 queue:(id)a5;
@end

@implementation TRIPETLogHandler

- (void)logEvent:(id)a3 subgroupName:(id)a4 queue:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([MEMORY[0x277D737A8] callerIsRunningFromSystemContext])
  {
    v10 = [MEMORY[0x277D737E0] sharedPaths];
    v11 = [v10 systemInteropDirectory];

    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __48__TRIPETLogHandler_logEvent_subgroupName_queue___block_invoke;
    v22[3] = &unk_279DDEEE0;
    v23 = v11;
    v12 = logEvent_subgroupName_queue___pasOnceToken2;
    v13 = v11;
    if (v12 != -1)
    {
      dispatch_once(&logEvent_subgroupName_queue___pasOnceToken2, v22);
    }

    v14 = MEMORY[0x277CCACA8];
    v15 = [v7 logEventId];
    v16 = [v14 stringWithFormat:@"%@.log", v15];

    v17 = [v13 stringByAppendingPathComponent:v16];

    v18 = [v7 data];
    [v18 writeToFile:v17 atomically:1];
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__TRIPETLogHandler_logEvent_subgroupName_queue___block_invoke_2;
    block[3] = &unk_279DDF7A0;
    v20 = v8;
    v21 = v7;
    dispatch_async(v9, block);

    v16 = v20;
  }
}

void __48__TRIPETLogHandler_logEvent_subgroupName_queue___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  [v3 createDirectoryAtPath:*(a1 + 32) withIntermediateDirectories:1 attributes:0 error:0];

  objc_autoreleasePoolPop(v2);
}

void __48__TRIPETLogHandler_logEvent_subgroupName_queue___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277D41DA8] sharedInstance];
  v4 = *(a1 + 40);
  v5 = v3;
  if (v2)
  {
    [v3 logMessage:v4 subGroup:*(a1 + 32)];
  }

  else
  {
    [v3 logMessage:v4];
  }
}

@end