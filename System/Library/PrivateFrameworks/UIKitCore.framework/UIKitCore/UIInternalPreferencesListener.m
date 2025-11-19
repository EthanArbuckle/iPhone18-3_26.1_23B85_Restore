@interface UIInternalPreferencesListener
@end

@implementation UIInternalPreferencesListener

void _UIInternalPreferencesListener___COUNTER___block_invoke()
{
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  [v0 postNotificationName:@"_UIVisualEffectViewPreferenceUpdate" object:0];
}

void _UIInternalPreferencesListener___COUNTER___block_invoke_0()
{
  if (_os_feature_enabled_impl())
  {
    v0 = [MEMORY[0x1E696AD88] defaultCenter];
    [v0 postNotificationName:@"_UIFocusBehaviorDidChangeNotification" object:0];
  }
}

void _UIInternalPreferencesListener___COUNTER___block_invoke_1()
{
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  [v0 postNotificationName:@"UIScrollPocketDebugViewModeHasChangedNotification" object:0];
}

@end