@interface SFActivityScanner
- (SFActivityScanner)init;
- (SFActivityScanner)initWithDelegate:(id)delegate;
- (SFActivityScannerDelegate)delegate;
- (void)activityPayloadFromDevice:(id)device forAdvertisementPayload:(id)payload command:(id)command timeout:(int64_t)timeout withCompletionHandler:(id)handler;
- (void)dealloc;
- (void)scanForTypes:(unint64_t)types;
- (void)scanManager:(id)manager foundDeviceWithDevice:(id)device;
- (void)scanManager:(id)manager lostDeviceWithDevice:(id)device;
- (void)scanManager:(id)manager pairedDevicesChanged:(id)changed;
- (void)scanManager:(id)manager receivedAdvertisement:(id)advertisement;
@end

@implementation SFActivityScanner

- (SFActivityScanner)init
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"%s: should never be used.", "-[SFActivityScanner init]"}];

  return [(SFActivityScanner *)self initWithDelegate:0];
}

- (SFActivityScanner)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  selfCopy = +[SFContinuityScanManager sharedManager];

  if (selfCopy)
  {
    v10.receiver = self;
    v10.super_class = SFActivityScanner;
    v6 = [(SFActivityScanner *)&v10 init];
    v7 = v6;
    if (v6)
    {
      v6->_delegate = delegateCopy;
      v8 = +[SFContinuityScanManager sharedManager];
      [v8 addObserver:v7];
    }

    self = v7;
    selfCopy = self;
  }

  return selfCopy;
}

- (void)dealloc
{
  v3 = +[SFContinuityScanManager sharedManager];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = SFActivityScanner;
  [(SFActivityScanner *)&v4 dealloc];
}

- (SFActivityScannerDelegate)delegate
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_delegate;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)scanForTypes:(unint64_t)types
{
  v4 = +[SFContinuityScanManager sharedManager];
  [v4 scanForTypes:types];
}

- (void)activityPayloadFromDevice:(id)device forAdvertisementPayload:(id)payload command:(id)command timeout:(int64_t)timeout withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  commandCopy = command;
  payloadCopy = payload;
  deviceCopy = device;
  v15 = +[SFContinuityScanManager sharedManager];
  uniqueID = [deviceCopy uniqueID];

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __109__SFActivityScanner_activityPayloadFromDevice_forAdvertisementPayload_command_timeout_withCompletionHandler___block_invoke;
  v18[3] = &unk_1E788C938;
  v19 = handlerCopy;
  v17 = handlerCopy;
  [v15 activityPayloadFromDeviceUniqueID:uniqueID forAdvertisementPayload:payloadCopy command:commandCopy timeout:timeout withCompletionHandler:v18];
}

void __109__SFActivityScanner_activityPayloadFromDevice_forAdvertisementPayload_command_timeout_withCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __109__SFActivityScanner_activityPayloadFromDevice_forAdvertisementPayload_command_timeout_withCompletionHandler___block_invoke_2;
  block[3] = &unk_1E788C1C0;
  v7 = *(a1 + 32);
  v12 = v6;
  v13 = v7;
  v11 = v5;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)scanManager:(id)manager receivedAdvertisement:(id)advertisement
{
  advertisementCopy = advertisement;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__SFActivityScanner_scanManager_receivedAdvertisement___block_invoke;
  v7[3] = &unk_1E788A658;
  v7[4] = self;
  v8 = advertisementCopy;
  v6 = advertisementCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

uint64_t __55__SFActivityScanner_scanManager_receivedAdvertisement___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 32) + 8);

    return [v5 activityScanner:? receivedAdvertisement:?];
  }

  return result;
}

- (void)scanManager:(id)manager foundDeviceWithDevice:(id)device
{
  deviceCopy = device;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__SFActivityScanner_scanManager_foundDeviceWithDevice___block_invoke;
  v7[3] = &unk_1E788A658;
  v7[4] = self;
  v8 = deviceCopy;
  v6 = deviceCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

uint64_t __55__SFActivityScanner_scanManager_foundDeviceWithDevice___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 32) + 8);

    return [v5 activityScanner:? foundDeviceWithDevice:?];
  }

  return result;
}

- (void)scanManager:(id)manager lostDeviceWithDevice:(id)device
{
  deviceCopy = device;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__SFActivityScanner_scanManager_lostDeviceWithDevice___block_invoke;
  v7[3] = &unk_1E788A658;
  v7[4] = self;
  v8 = deviceCopy;
  v6 = deviceCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

uint64_t __54__SFActivityScanner_scanManager_lostDeviceWithDevice___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 32) + 8);

    return [v5 activityScanner:? lostDeviceWithDevice:?];
  }

  return result;
}

- (void)scanManager:(id)manager pairedDevicesChanged:(id)changed
{
  changedCopy = changed;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__SFActivityScanner_scanManager_pairedDevicesChanged___block_invoke;
  v7[3] = &unk_1E788A658;
  v7[4] = self;
  v8 = changedCopy;
  v6 = changedCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

uint64_t __54__SFActivityScanner_scanManager_pairedDevicesChanged___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 32) + 8);

    return [v5 activityScanner:? pairedDevicesChanged:?];
  }

  return result;
}

@end