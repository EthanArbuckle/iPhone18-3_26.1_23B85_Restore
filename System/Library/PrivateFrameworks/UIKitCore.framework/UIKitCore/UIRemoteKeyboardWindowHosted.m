@interface UIRemoteKeyboardWindowHosted
+ (BOOL)_isHostedInAnotherProcess;
- (CGSize)keyboardScreenReferenceSize;
- (double)_adjustedWindowLevelFromLevel:(double)a3;
- (double)keyboardWidthForCurrentDevice;
@end

@implementation UIRemoteKeyboardWindowHosted

+ (BOOL)_isHostedInAnotherProcess
{
  if (qword_1ED499730 != -1)
  {
    dispatch_once(&qword_1ED499730, &__block_literal_global_248_0);
  }

  if (byte_1ED499712 != 1)
  {
    return 1;
  }

  v2 = +[UIWindow _applicationKeyWindow];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 _isHostedInAnotherProcess];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

void __57__UIRemoteKeyboardWindowHosted__isHostedInAnotherProcess__block_invoke()
{
  v0 = _UIMainBundleIdentifier();
  byte_1ED499712 = [v0 isEqualToString:@"com.apple.InCallService"];
}

- (double)_adjustedWindowLevelFromLevel:(double)a3
{
  if (dyld_program_sdk_at_least() && (_UIApplicationIsSystemApplication() & 1) == 0 && ([UIApp _isSpringBoard] & 1) == 0 && !_AXSProcessDrawsAssistiveUI())
  {
    return -9999999.0;
  }

  v6.receiver = self;
  v6.super_class = UIRemoteKeyboardWindowHosted;
  [(UIRemoteKeyboardWindow *)&v6 _adjustedWindowLevelFromLevel:a3];
  return result;
}

- (CGSize)keyboardScreenReferenceSize
{
  MEMORY[0x1EEE0C5E8](self, a2);
  result.height = v3;
  result.width = v2;
  return result;
}

- (double)keyboardWidthForCurrentDevice
{
  v3 = [(UITextEffectsWindow *)self interfaceOrientation]- 1;
  [(UIRemoteKeyboardWindowHosted *)self keyboardScreenReferenceSize];
  if (v3 >= 2)
  {
    return v5;
  }

  return result;
}

@end