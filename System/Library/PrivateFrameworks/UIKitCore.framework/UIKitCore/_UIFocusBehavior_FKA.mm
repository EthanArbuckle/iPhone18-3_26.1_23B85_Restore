@interface _UIFocusBehavior_FKA
+ (id)sharedInstance;
- (BOOL)supportsGameControllers;
- (int64_t)requiredInputDevices;
@end

@implementation _UIFocusBehavior_FKA

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38___UIFocusBehavior_FKA_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_1ED49DB78 != -1)
  {
    dispatch_once(&qword_1ED49DB78, block);
  }

  v2 = _MergedGlobals_1078;

  return v2;
}

- (int64_t)requiredInputDevices
{
  if (_AXSFullKeyboardAccessUsesSimulatedKeyboardForAutomation())
  {
    return 0;
  }

  if ([(_UIFocusBehavior_FKA *)self supportsGameControllers])
  {
    return 3;
  }

  return 1;
}

- (BOOL)supportsGameControllers
{
  v2 = +[_UIApplicationInfoParser mainBundleInfoParser];
  requiresGameControllerBasedFocus = [v2 requiresGameControllerBasedFocus];

  return requiresGameControllerBasedFocus;
}

@end