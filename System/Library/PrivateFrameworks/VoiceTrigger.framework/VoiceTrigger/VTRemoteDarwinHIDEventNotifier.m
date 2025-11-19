@interface VTRemoteDarwinHIDEventNotifier
- (VTRemoteDarwinHIDEventNotifier)init;
- (void)_registerHIDEventNotification;
@end

@implementation VTRemoteDarwinHIDEventNotifier

- (void)_registerHIDEventNotification
{
  v3 = *MEMORY[0x277CBECE8];
  self->_hidManager = IOHIDManagerCreate(*MEMORY[0x277CBECE8], 0);
  Mutable = CFDictionaryCreateMutable(v3, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  valuePtr = 65280;
  v5 = CFNumberCreate(v3, kCFNumberLongType, &valuePtr);
  if (v5)
  {
    CFDictionarySetValue(Mutable, @"DeviceUsagePage", v5);
  }

  valuePtr = 83;
  v6 = CFNumberCreate(v3, kCFNumberLongType, &valuePtr);

  if (v6)
  {
    CFDictionarySetValue(Mutable, @"DeviceUsage", v6);
  }

  CFDictionarySetValue(Mutable, @"HIDRelayUSBInterface", @"SiriHIDDevice");
  IOHIDManagerRegisterDeviceMatchingCallback(self->_hidManager, __deviceCallback, 1);
  IOHIDManagerRegisterDeviceRemovalCallback(self->_hidManager, __deviceCallback, 0);
  IOHIDManagerRegisterInputReportCallback(self->_hidManager, __deviceReportCallback, 0);
  hidManager = self->_hidManager;
  Main = CFRunLoopGetMain();
  IOHIDManagerScheduleWithRunLoop(hidManager, Main, *MEMORY[0x277CBF058]);
  IOHIDManagerSetDeviceMatching(self->_hidManager, Mutable);
  IOHIDManagerOpen(self->_hidManager, 0);
}

- (VTRemoteDarwinHIDEventNotifier)init
{
  if (+[VTUtilities supportRemoteDarwinVoiceTrigger])
  {
    v5.receiver = self;
    v5.super_class = VTRemoteDarwinHIDEventNotifier;
    self = [(VTRemoteDarwinHIDEventNotifier *)&v5 init];
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end