@interface NSObject(AccessibilityActivation)
- (uint64_t)_accessibilityGetContextID;
- (uint64_t)_keyboardActivateEventDown:()AccessibilityActivation;
- (void)_keyboardActivate;
@end

@implementation NSObject(AccessibilityActivation)

- (void)_keyboardActivate
{
  v2 = [self _keyboardActivateEventDown:1];
  v3 = [self _keyboardActivateEventDown:0];
  [UIApp _enqueueHIDEvent:v2];
  CFRelease(v2);
  v4 = dispatch_time(0, 50000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__NSObject_AccessibilityActivation___keyboardActivate__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = v3;
  dispatch_after(v4, MEMORY[0x1E69E96A0], block);
}

- (uint64_t)_keyboardActivateEventDown:()AccessibilityActivation
{
  [self accessibilityActivationPoint];
  mach_absolute_time();
  DigitizerEvent = IOHIDEventCreateDigitizerEvent();
  DigitizerFingerEventWithQuality = IOHIDEventCreateDigitizerFingerEventWithQuality();
  IOHIDEventAppendEvent();
  [self _accessibilityGetContextID];
  BKSHIDEventSetDigitizerInfo();
  CFRelease(DigitizerFingerEventWithQuality);
  return DigitizerEvent;
}

- (uint64_t)_accessibilityGetContextID
{
  if ((objc_opt_respondsToSelector() & 1) == 0 || (v2 = [self _accessibilityWindow]) == 0)
  {
    v2 = [objc_msgSend(objc_opt_self() "mainScreen")];
  }

  return [v2 _contextId];
}

@end