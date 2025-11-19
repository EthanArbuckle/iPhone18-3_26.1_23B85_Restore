@interface _SBActiveDisplayKeyboardFocusTracker
- (SBWindowScene)activeWindowScene;
@end

@implementation _SBActiveDisplayKeyboardFocusTracker

- (SBWindowScene)activeWindowScene
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = +[SBMainWorkspace sharedInstanceIfExists];
  v3 = [v2 keyboardFocusController];

  v4 = [v3 windowSceneWithFocus];
  if ([v4 isInvalidated])
  {
    v5 = SBLogKeyboardFocus();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543362;
      v8 = v3;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Trying to explaining invalid activeWindowScene: %{public}@", &v7, 0xCu);
    }
  }

  return v4;
}

@end