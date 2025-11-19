@interface STSHardwareManagerWrapper
- (id)manager;
- (void)hardwareStateDidChange;
@end

@implementation STSHardwareManagerWrapper

- (id)manager
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [MEMORY[0x277D2C848] sharedHardwareManagerWithNoUI];
  if ([(STSHardwareManagerWrapper *)v2 resolvedHwManagerState])
  {
    v4 = [v3 getHwSupport] == 2;
  }

  else
  {
    [v3 registerEventListener:v2];
    v5 = [v3 getHwSupport];
    if (v5 == 2)
    {
      v4 = 1;
    }

    else if (v5 == 4)
    {
      v4 = 0;
    }

    else
    {
      v6 = [(STSHardwareManagerWrapper *)v2 sem];

      if (!v6)
      {
        v7 = dispatch_semaphore_create(0);
        [(STSHardwareManagerWrapper *)v2 setSem:v7];
      }

      v8 = [(STSHardwareManagerWrapper *)v2 sem];
      v9 = dispatch_time(0, 60000000000);
      v10 = dispatch_semaphore_wait(v8, v9);

      if (v10)
      {
        sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSHardwareManagerWrapper manager]", 47, v2, @"NF state timeout", v11, v12, v16);
        v4 = 0;
      }

      else
      {
        v4 = [v3 getHwSupport] == 2;
      }
    }

    [(STSHardwareManagerWrapper *)v2 setResolvedHwManagerState:1];
    [v3 unregisterEventListener:v2];
  }

  if (v4)
  {
    v13 = v3;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  objc_sync_exit(v2);

  return v14;
}

- (void)hardwareStateDidChange
{
  v3 = [(STSHardwareManagerWrapper *)self sem];

  if (v3)
  {
    v4 = [(STSHardwareManagerWrapper *)self sem];
    dispatch_semaphore_signal(v4);
  }
}

@end