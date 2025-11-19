@interface _UIFocusBehavior_TV
+ (id)sharedInstance;
- (BOOL)supportsIndirectRotaryMovement;
- (_UIFocusBehavior_TV)init;
- (int64_t)indirectMovementPriority;
- (int64_t)pageButtonScrollingStyle;
- (void)_handleRemoteTouchSurfaceTypeDidChangeNotification:(id)a3;
- (void)dealloc;
@end

@implementation _UIFocusBehavior_TV

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37___UIFocusBehavior_TV_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (qword_1ED4A2A00 != -1)
  {
    dispatch_once(&qword_1ED4A2A00, block);
  }

  v2 = _MergedGlobals_1372;

  return v2;
}

- (_UIFocusBehavior_TV)init
{
  v5.receiver = self;
  v5.super_class = _UIFocusBehavior_TV;
  v2 = [(_UIFocusBehavior_TV *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 addObserver:v2 selector:sel__handleRemoteTouchSurfaceTypeDidChangeNotification_ name:@"_UIDeviceRemoteTouchSurfaceTypeDidChangeNotification" object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:@"_UIDeviceRemoteTouchSurfaceTypeDidChangeNotification" object:0];

  v4.receiver = self;
  v4.super_class = _UIFocusBehavior_TV;
  [(_UIFocusBehavior_TV *)&v4 dealloc];
}

- (BOOL)supportsIndirectRotaryMovement
{
  v2 = B519BehaviorEnabled();
  if (v2)
  {
    v3 = _os_feature_enabled_impl();
    LOBYTE(v2) = v3 & (_UIInternalPreferenceUsesDefault(&_UIInternalPreference_B519_SupportsIndirectRotaryMovement, @"B519_SupportsIndirectRotaryMovement", _UIInternalPreferenceUpdateBool) | (byte_1EA95E7C4 != 0));
  }

  return v2;
}

- (int64_t)pageButtonScrollingStyle
{
  if (!_os_feature_enabled_impl())
  {
    return 0;
  }

  v2 = _UIInternalPreferenceUsesDefault(&_UIInternalPreference_FocusPageButtonScrollingStyle, @"FocusPageButtonScrollingStyle", _UIInternalPreferenceUpdateInteger);
  v3 = qword_1EA95E7D0;
  if (v2)
  {
    v3 = 1;
  }

  if (v3 <= 3)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

- (int64_t)indirectMovementPriority
{
  if (!B519BehaviorEnabled())
  {
    return 0;
  }

  v2 = _UIInternalPreferenceUsesDefault(&_UIInternalPreference_B519_ButtonPressesCancelMovement, @"B519_ButtonPressesCancelMovement", _UIInternalPreferenceUpdateBool);
  if (byte_1EA95E7BC)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (void)_handleRemoteTouchSurfaceTypeDidChangeNotification:(id)a3
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"_UIFocusBehaviorDidChangeNotification" object:0];
}

@end