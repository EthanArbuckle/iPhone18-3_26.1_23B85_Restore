@interface _UIFocusGameControllerObserver
- (BOOL)isActive;
- (_UIFocusGameControllerObserver)init;
- (void)_registerObserver;
- (void)_unregisterObserver;
- (void)dealloc;
@end

@implementation _UIFocusGameControllerObserver

- (BOOL)isActive
{
  hidManager = self->_hidManager;
  if (!hidManager)
  {
    return 0;
  }

  v3 = IOHIDManagerCopyDevices(hidManager);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = CFSetGetCount(v3) > 0;
  CFRelease(v4);
  return v5;
}

- (void)_registerObserver
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = IOHIDManagerCreate(*MEMORY[0x1E695E480], 0);
  v11[0] = @"DeviceUsagePage";
  v11[1] = @"DeviceUsage";
  v12[0] = &unk_1EFE300E8;
  v12[1] = &unk_1EFE30100;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v9[0] = @"DeviceUsagePage";
  v9[1] = @"DeviceUsage";
  v10[0] = &unk_1EFE300E8;
  v10[1] = &unk_1EFE30118;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  v8[0] = v4;
  v8[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
  IOHIDManagerSetDeviceMatchingMultiple(v3, v6);
  IOHIDManagerRegisterDeviceMatchingCallback(v3, deviceAddedCallback, self);
  IOHIDManagerRegisterDeviceRemovalCallback(v3, deviceRemovedCallback, self);
  Main = CFRunLoopGetMain();
  IOHIDManagerScheduleWithRunLoop(v3, Main, *MEMORY[0x1E695E8E0]);
  self->_hidManager = v3;
}

- (_UIFocusGameControllerObserver)init
{
  v5.receiver = self;
  v5.super_class = _UIFocusGameControllerObserver;
  v2 = [(_UIFocusStateObserver *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(_UIFocusGameControllerObserver *)v2 _registerObserver];
  }

  return v3;
}

- (void)dealloc
{
  [(_UIFocusGameControllerObserver *)self _unregisterObserver];
  v3.receiver = self;
  v3.super_class = _UIFocusGameControllerObserver;
  [(_UIFocusGameControllerObserver *)&v3 dealloc];
}

- (void)_unregisterObserver
{
  hidManager = self->_hidManager;
  if (hidManager)
  {
    Main = CFRunLoopGetMain();
    IOHIDManagerUnscheduleFromRunLoop(hidManager, Main, *MEMORY[0x1E695E8E0]);
    IOHIDManagerClose(hidManager, 0);
    CFRelease(hidManager);
    self->_hidManager = 0;
  }
}

@end