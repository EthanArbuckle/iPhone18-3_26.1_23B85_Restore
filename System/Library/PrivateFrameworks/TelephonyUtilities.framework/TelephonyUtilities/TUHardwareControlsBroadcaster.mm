@interface TUHardwareControlsBroadcaster
- (TUHardwareControlsBroadcaster)init;
- (void)dealloc;
- (void)longPressTimerFired:(id)fired;
@end

@implementation TUHardwareControlsBroadcaster

- (TUHardwareControlsBroadcaster)init
{
  v12.receiver = self;
  v12.super_class = TUHardwareControlsBroadcaster;
  v2 = [(TUHardwareControlsBroadcaster *)&v12 init];
  if (v2)
  {
    v3 = TUDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "TUHardwareControlsBroadcaster starting to listen for hardware controls.", v11, 2u);
    }

    v4 = *MEMORY[0x1E695E480];
    v2->_hidEventSystemClientRef = IOHIDEventSystemClientCreate();
    CFRunLoopGetCurrent();
    v5 = *MEMORY[0x1E695E8E0];
    IOHIDEventSystemClientScheduleWithRunLoop();
    hidEventSystemClientRef = v2->_hidEventSystemClientRef;
    IOHIDEventSystemClientRegisterEventCallback();
    array = [MEMORY[0x1E695DF70] array];
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObject:&unk_1F09C6328 forKey:@"DeviceUsage"];
    [array addObject:v8];
    v9 = v2->_hidEventSystemClientRef;
    IOHIDEventSystemClientSetMatchingMultiple();
  }

  return v2;
}

- (void)dealloc
{
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "TUHardwareControlsBroadcaster deallocating - stopping listening for hardware controls.", buf, 2u);
  }

  hidEventSystemClientRef = self->_hidEventSystemClientRef;
  CFRunLoopGetCurrent();
  v5 = *MEMORY[0x1E695E8E0];
  IOHIDEventSystemClientUnscheduleWithRunLoop();
  CFRelease(self->_hidEventSystemClientRef);
  v6.receiver = self;
  v6.super_class = TUHardwareControlsBroadcaster;
  [(TUHardwareControlsBroadcaster *)&v6 dealloc];
}

- (void)longPressTimerFired:(id)fired
{
  firedCopy = fired;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__TUHardwareControlsBroadcaster_longPressTimerFired___block_invoke;
  v6[3] = &unk_1E7424898;
  v7 = firedCopy;
  selfCopy = self;
  v5 = firedCopy;
  TUGuaranteeExecutionOnMainThreadAsync(v6);
}

void __53__TUHardwareControlsBroadcaster_longPressTimerFired___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) userInfo];
  v3 = [MEMORY[0x1E696AD80] notificationWithName:@"TUCarPlayHardwareControlEventNotification" object:0 userInfo:v2];
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 postNotification:v3];

  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "TUHardwareControlsBroadcaster long press timer fired, posting: %@", &v8, 0xCu);
  }

  v6 = [v2 valueForKey:@"kTUCarPlayHardwareControlButtonNameKey"];

  if (v6 == @"kTUCarPlayHardwareControlButtonWhiteTelephoneLongPress")
  {
    [*(a1 + 40) setEventTypeToIgnore:@"kTUCarPlayHardwareControlButtonWhiteTelephone"];
  }

  [*(a1 + 32) invalidate];

  v7 = *MEMORY[0x1E69E9840];
}

@end