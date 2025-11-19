@interface TUAudioDeviceController
- (AVAudioDevice)currentInputDevice;
- (AVAudioDevice)currentOutputDevice;
- (BOOL)isFollowingSystemInputSetting;
- (BOOL)isFollowingSystemOutputSetting;
- (NSArray)devices;
- (NSArray)inputDevices;
- (NSArray)outputDevices;
- (NSString)debugDescription;
- (TUAudioDeviceController)init;
- (TUAudioDeviceController)initWithActionsDelegate:(id)a3 serialQueue:(id)a4;
- (TUAudioDeviceControllerActions)actionsDelegate;
- (void)_handleCallStatusChangedNotification:(id)a3;
- (void)addDelegate:(id)a3;
- (void)dealloc;
- (void)notifyDelegatesOfDeviceListChange;
- (void)removeDelegate:(id)a3;
- (void)setCurrentAudioInputDeviceToDeviceWithUID:(id)a3;
- (void)setCurrentAudioOutputDeviceToDeviceWithUID:(id)a3;
- (void)setCurrentOutputDevice:(id)a3;
@end

@implementation TUAudioDeviceController

- (TUAudioDeviceController)initWithActionsDelegate:(id)a3 serialQueue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20.receiver = self;
  v20.super_class = TUAudioDeviceController;
  v8 = [(TUAudioDeviceController *)&v20 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_actionsDelegate, v6);
    objc_storeStrong(&v9->_serialQueue, a4);
    v10 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    delegates = v9->_delegates;
    v9->_delegates = v10;

    v12 = [MEMORY[0x1E696AD88] defaultCenter];
    [v12 addObserver:v9 selector:sel__handleCallStatusChangedNotification_ name:@"TUCallCenterCallStatusChangedNotification" object:0];

    v13 = [MEMORY[0x1E696AD88] defaultCenter];
    [v13 addObserver:v9 selector:sel__handleCallStatusChangedNotification_ name:@"TUCallCenterVideoCallStatusChangedNotification" object:0];

    objc_initWeak(&location, v9);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __63__TUAudioDeviceController_initWithActionsDelegate_serialQueue___block_invoke;
    v17[3] = &unk_1E7424998;
    objc_copyWeak(&v18, &location);
    v14 = _Block_copy(v17);
    registerForMutedTalkerNotificationCallback = v9->_registerForMutedTalkerNotificationCallback;
    v9->_registerForMutedTalkerNotificationCallback = v14;

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  return v9;
}

void __63__TUAudioDeviceController_initWithActionsDelegate_serialQueue___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__TUAudioDeviceController_initWithActionsDelegate_serialQueue___block_invoke_2;
  block[3] = &unk_1E7424998;
  objc_copyWeak(&v2, (a1 + 32));
  if (AAFMediaTypeXML_block_invoke_once[0] != -1)
  {
    dispatch_once(AAFMediaTypeXML_block_invoke_once, block);
  }

  objc_destroyWeak(&v2);
}

void __63__TUAudioDeviceController_initWithActionsDelegate_serialQueue___block_invoke_2(uint64_t a1)
{
  v2 = CUTWeakLinkClass();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __63__TUAudioDeviceController_initWithActionsDelegate_serialQueue___block_invoke_3;
  v5[3] = &unk_1E7425748;
  objc_copyWeak(&v6, (a1 + 32));
  [v2 registerForMutedTalkerNotifications:v5];
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "Registered for registerForMutedTalkerNotification", v4, 2u);
  }

  objc_destroyWeak(&v6);
}

void __63__TUAudioDeviceController_initWithActionsDelegate_serialQueue___block_invoke_3(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained serialQueue];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __63__TUAudioDeviceController_initWithActionsDelegate_serialQueue___block_invoke_4;
    v6[3] = &unk_1E74256D0;
    v8 = a2;
    v7 = v4;
    dispatch_async(v5, v6);
  }
}

void __63__TUAudioDeviceController_initWithActionsDelegate_serialQueue___block_invoke_4(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  if (v2 == 1)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v3 = [*(a1 + 32) delegates];
    v9 = [v3 countByEnumeratingWithState:&v15 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v3);
          }

          v13 = *(*(&v15 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v13 audioDeviceControllerMutedTalkerDidEnd:*(a1 + 32)];
          }
        }

        v10 = [v3 countByEnumeratingWithState:&v15 objects:v23 count:16];
      }

      while (v10);
    }

    goto LABEL_22;
  }

  if (!v2)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v3 = [*(a1 + 32) delegates];
    v4 = [v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v20;
      do
      {
        for (j = 0; j != v5; ++j)
        {
          if (*v20 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v19 + 1) + 8 * j);
          if (objc_opt_respondsToSelector())
          {
            [v8 audioDeviceControllerMutedTalkerDidStart:*(a1 + 32)];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v5);
    }

LABEL_22:
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_handleCallStatusChangedNotification:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v4;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "notification: %@", &v13, 0xCu);
  }

  if (_TUIsInternalInstall())
  {
    v6 = [MEMORY[0x1E695E000] tu_defaults];
    v7 = [v6 BOOLForKey:@"shouldSuppressMutedTalkerNotification"] ^ 1;
  }

  else
  {
    v7 = 1;
  }

  v8 = [v4 object];
  v9 = v8;
  if (v7 && v8)
  {
    v10 = [v8 provider];
    if (![v10 isSystemProvider])
    {
LABEL_11:

      goto LABEL_12;
    }

    v11 = [v9 isActive];

    if (v11)
    {
      v10 = [(TUAudioDeviceController *)self registerForMutedTalkerNotificationCallback];
      v10[2]();
      goto LABEL_11;
    }
  }

LABEL_12:

  v12 = *MEMORY[0x1E69E9840];
}

- (void)notifyDelegatesOfDeviceListChange
{
  v3 = [(TUAudioDeviceController *)self serialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__TUAudioDeviceController_notifyDelegatesOfDeviceListChange__block_invoke;
  block[3] = &unk_1E7424950;
  block[4] = self;
  dispatch_async(v3, block);
}

void __60__TUAudioDeviceController_notifyDelegatesOfDeviceListChange__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "Audio devices changed", buf, 2u);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [*(a1 + 32) delegates];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 audioDeviceControllerDeviceListChanged:*(a1 + 32)];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  [CUTWeakLinkClass() unregisterFromMutedTalkerNotifications];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.facetime.audioInputChangedNotification", 0);
  v4.receiver = self;
  v4.super_class = TUAudioDeviceController;
  [(TUAudioDeviceController *)&v4 dealloc];
}

- (TUAudioDeviceController)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"TUAudioDeviceController.m" lineNumber:173 description:{@"%s is not available. Use a designated initializer instead.", "-[TUAudioDeviceController init]"}];

  return 0;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(TUAudioDeviceController *)self devices];
  v6 = [v3 stringWithFormat:@"<%@ %p devices=%@>", v4, self, v5];

  return v6;
}

- (void)addDelegate:(id)a3
{
  v4 = a3;
  v5 = [(TUAudioDeviceController *)self serialQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(TUAudioDeviceController *)self delegates];
  [v6 addObject:v4];
}

- (void)removeDelegate:(id)a3
{
  v4 = a3;
  v5 = [(TUAudioDeviceController *)self serialQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(TUAudioDeviceController *)self delegates];
  [v6 removeObject:v4];
}

- (AVAudioDevice)currentInputDevice
{
  v2 = [(TUAudioDeviceController *)self audioClient];
  v3 = [objc_opt_class() currentInputDevice];

  return v3;
}

- (void)setCurrentAudioInputDeviceToDeviceWithUID:(id)a3
{
  v3 = [(TUAudioDeviceController *)self serialQueue];
  dispatch_assert_queue_V2(v3);
}

- (AVAudioDevice)currentOutputDevice
{
  v3 = [(TUAudioDeviceController *)self serialQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(TUAudioDeviceController *)self audioClient];
  v5 = [objc_opt_class() currentOutputDevice];

  return v5;
}

- (void)setCurrentOutputDevice:(id)a3
{
  v3 = [(TUAudioDeviceController *)self serialQueue];
  dispatch_assert_queue_V2(v3);
}

- (void)setCurrentAudioOutputDeviceToDeviceWithUID:(id)a3
{
  v3 = [(TUAudioDeviceController *)self serialQueue];
  dispatch_assert_queue_V2(v3);
}

- (BOOL)isFollowingSystemInputSetting
{
  v2 = TUPreferredFaceTimeBundleIdentifier();
  v3 = CFPreferencesCopyValue(@"PreferredAudioInputDeviceUID", v2, *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
  v4 = [v3 length] == 0;

  return v4;
}

- (BOOL)isFollowingSystemOutputSetting
{
  v2 = TUPreferredFaceTimeBundleIdentifier();
  v3 = CFPreferencesCopyValue(@"PreferredAudioOutputDeviceUID", v2, *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
  v4 = [v3 length] == 0;

  return v4;
}

- (NSArray)devices
{
  v3 = [(TUAudioDeviceController *)self serialQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(TUAudioDeviceController *)self audioClient];
  v5 = [v4 devices];

  return v5;
}

- (NSArray)inputDevices
{
  v3 = [(TUAudioDeviceController *)self serialQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(TUAudioDeviceController *)self audioClient];
  v5 = [v4 inputDevices];

  return v5;
}

- (NSArray)outputDevices
{
  v3 = [(TUAudioDeviceController *)self serialQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(TUAudioDeviceController *)self audioClient];
  v5 = [v4 outputDevices];

  return v5;
}

- (TUAudioDeviceControllerActions)actionsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionsDelegate);

  return WeakRetained;
}

@end