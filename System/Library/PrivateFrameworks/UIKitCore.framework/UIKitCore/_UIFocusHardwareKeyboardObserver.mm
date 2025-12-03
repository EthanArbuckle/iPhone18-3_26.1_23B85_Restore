@interface _UIFocusHardwareKeyboardObserver
- (BOOL)isActive;
- (_UIFocusHardwareKeyboardObserver)init;
- (void)dealloc;
@end

@implementation _UIFocusHardwareKeyboardObserver

- (_UIFocusHardwareKeyboardObserver)init
{
  v5.receiver = self;
  v5.super_class = _UIFocusHardwareKeyboardObserver;
  v2 = [(_UIFocusStateObserver *)&v5 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__hardwareKeyboardAvailabilityChanged_ name:@"_UIDeviceHardwareKeyboardAvailabilityDidChangeNotification" object:0];
  }

  return v2;
}

- (BOOL)isActive
{
  v2 = +[UIDevice currentDevice];
  _isHardwareKeyboardAvailable = [v2 _isHardwareKeyboardAvailable];

  return _isHardwareKeyboardAvailable;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"_UIDeviceHardwareKeyboardAvailabilityDidChangeNotification" object:0];

  v4.receiver = self;
  v4.super_class = _UIFocusHardwareKeyboardObserver;
  [(_UIFocusHardwareKeyboardObserver *)&v4 dealloc];
}

@end