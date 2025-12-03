@interface _SBActiveDisplayKeyboardFocusTracker
- (SBWindowScene)activeWindowScene;
@end

@implementation _SBActiveDisplayKeyboardFocusTracker

- (SBWindowScene)activeWindowScene
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = +[SBMainWorkspace sharedInstanceIfExists];
  keyboardFocusController = [v2 keyboardFocusController];

  windowSceneWithFocus = [keyboardFocusController windowSceneWithFocus];
  if ([windowSceneWithFocus isInvalidated])
  {
    v5 = SBLogKeyboardFocus();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543362;
      v8 = keyboardFocusController;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Trying to explaining invalid activeWindowScene: %{public}@", &v7, 0xCu);
    }
  }

  return windowSceneWithFocus;
}

@end