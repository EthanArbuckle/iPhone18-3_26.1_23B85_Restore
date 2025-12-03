@interface AXCameraTorchManagerBackgroundAdapter
- (AXCameraTorchManagerBackgroundAdapter)initWithCameraTorchManager:(id)manager;
- (void)closeTorchDeviceWithCompletion:(id)completion;
- (void)openTorchDeviceWithCompletion:(id)completion;
- (void)turnTorchOffWithCompletion:(id)completion;
- (void)turnTorchOnWithCompletion:(id)completion;
@end

@implementation AXCameraTorchManagerBackgroundAdapter

- (AXCameraTorchManagerBackgroundAdapter)initWithCameraTorchManager:(id)manager
{
  managerCopy = manager;
  v11.receiver = self;
  v11.super_class = AXCameraTorchManagerBackgroundAdapter;
  v6 = [(AXCameraTorchManagerBackgroundAdapter *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_synchronousManager, manager);
    v8 = dispatch_queue_create("com.apple.accessibility.AXCameraTorchManagerBackgroundAdapter", 0);
    q = v7->_q;
    v7->_q = v8;
  }

  return v7;
}

- (void)openTorchDeviceWithCompletion:(id)completion
{
  completionCopy = completion;
  q = self->_q;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__AXCameraTorchManagerBackgroundAdapter_openTorchDeviceWithCompletion___block_invoke;
  v7[3] = &unk_279E2C588;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(q, v7);
}

uint64_t __71__AXCameraTorchManagerBackgroundAdapter_openTorchDeviceWithCompletion___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 16) openTorchDevice];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)closeTorchDeviceWithCompletion:(id)completion
{
  completionCopy = completion;
  q = self->_q;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__AXCameraTorchManagerBackgroundAdapter_closeTorchDeviceWithCompletion___block_invoke;
  v7[3] = &unk_279E2C588;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(q, v7);
}

uint64_t __72__AXCameraTorchManagerBackgroundAdapter_closeTorchDeviceWithCompletion___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 16) closeTorchDevice];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)turnTorchOnWithCompletion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  mEMORY[0x277CE6998] = [MEMORY[0x277CE6998] sharedInstance];
  ignoreLogging = [mEMORY[0x277CE6998] ignoreLogging];

  if ((ignoreLogging & 1) == 0)
  {
    identifier = [MEMORY[0x277CE6998] identifier];
    v8 = AXLoggerForFacility();

    v9 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = AXColorizeFormatLog();
      v11 = _AXStringForArgs();
      if (os_log_type_enabled(v8, v9))
      {
        *buf = 138543362;
        v18 = v11;
        _os_log_impl(&dword_27102A000, v8, v9, "%{public}@", buf, 0xCu);
      }
    }
  }

  q = self->_q;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __67__AXCameraTorchManagerBackgroundAdapter_turnTorchOnWithCompletion___block_invoke;
  v15[3] = &unk_279E2C588;
  v15[4] = self;
  v16 = completionCopy;
  v13 = completionCopy;
  dispatch_async(q, v15);

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __67__AXCameraTorchManagerBackgroundAdapter_turnTorchOnWithCompletion___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 16) turnTorchOn];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)turnTorchOffWithCompletion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  mEMORY[0x277CE6998] = [MEMORY[0x277CE6998] sharedInstance];
  ignoreLogging = [mEMORY[0x277CE6998] ignoreLogging];

  if ((ignoreLogging & 1) == 0)
  {
    identifier = [MEMORY[0x277CE6998] identifier];
    v8 = AXLoggerForFacility();

    v9 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = AXColorizeFormatLog();
      v11 = _AXStringForArgs();
      if (os_log_type_enabled(v8, v9))
      {
        *buf = 138543362;
        v18 = v11;
        _os_log_impl(&dword_27102A000, v8, v9, "%{public}@", buf, 0xCu);
      }
    }
  }

  q = self->_q;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __68__AXCameraTorchManagerBackgroundAdapter_turnTorchOffWithCompletion___block_invoke;
  v15[3] = &unk_279E2C588;
  v15[4] = self;
  v16 = completionCopy;
  v13 = completionCopy;
  dispatch_async(q, v15);

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __68__AXCameraTorchManagerBackgroundAdapter_turnTorchOffWithCompletion___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 16) turnTorchOff];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

@end