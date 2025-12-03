@interface STSHardwareManagerWrapper
- (id)manager;
- (void)hardwareStateDidChange;
@end

@implementation STSHardwareManagerWrapper

- (id)manager
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  mEMORY[0x277D2C848] = [MEMORY[0x277D2C848] sharedHardwareManagerWithNoUI];
  if ([(STSHardwareManagerWrapper *)selfCopy resolvedHwManagerState])
  {
    v4 = [mEMORY[0x277D2C848] getHwSupport] == 2;
  }

  else
  {
    [mEMORY[0x277D2C848] registerEventListener:selfCopy];
    getHwSupport = [mEMORY[0x277D2C848] getHwSupport];
    if (getHwSupport == 2)
    {
      v4 = 1;
    }

    else if (getHwSupport == 4)
    {
      v4 = 0;
    }

    else
    {
      v6 = [(STSHardwareManagerWrapper *)selfCopy sem];

      if (!v6)
      {
        v7 = dispatch_semaphore_create(0);
        [(STSHardwareManagerWrapper *)selfCopy setSem:v7];
      }

      v8 = [(STSHardwareManagerWrapper *)selfCopy sem];
      v9 = dispatch_time(0, 60000000000);
      v10 = dispatch_semaphore_wait(v8, v9);

      if (v10)
      {
        sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSHardwareManagerWrapper manager]", 47, selfCopy, @"NF state timeout", v11, v12, v16);
        v4 = 0;
      }

      else
      {
        v4 = [mEMORY[0x277D2C848] getHwSupport] == 2;
      }
    }

    [(STSHardwareManagerWrapper *)selfCopy setResolvedHwManagerState:1];
    [mEMORY[0x277D2C848] unregisterEventListener:selfCopy];
  }

  if (v4)
  {
    v13 = mEMORY[0x277D2C848];
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  objc_sync_exit(selfCopy);

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