@interface SBKeyboardFocusAccessibilityResolutionStage
- (SBKeyboardFocusAccessibilityResolutionDeelgate)delegate;
- (SBKeyboardFocusResolutionStageSceneProviding)sceneProvider;
- (void)resolveKeyboardFocusPolicy:(id)a3 context:(id)a4 stop:(BOOL *)a5;
@end

@implementation SBKeyboardFocusAccessibilityResolutionStage

- (void)resolveKeyboardFocusPolicy:(id)a3 context:(id)a4 stop:(BOOL *)a5
{
  v15 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (!WeakRetained)
  {
    [SBKeyboardFocusAccessibilityResolutionStage resolveKeyboardFocusPolicy:a2 context:self stop:?];
  }

  v11 = WeakRetained;
  v12 = [WeakRetained accessibilityKeyboardFocusOverrideTarget];
  if (v12)
  {
    v13 = [v15 auditHistory];
    v14 = [v15 keyboardFocusTarget];
    [v13 addItemWithFormat:@"-- SBKeyboardFocusAccessibilityResolutionStage overriding keyboard arbiter target (policy was %@, override is %@)", v14, v12];

    [v15 setKeyboardFocusTarget:v12];
    *a5 = 1;
  }
}

- (SBKeyboardFocusResolutionStageSceneProviding)sceneProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_sceneProvider);

  return WeakRetained;
}

- (SBKeyboardFocusAccessibilityResolutionDeelgate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)resolveKeyboardFocusPolicy:(const char *)a1 context:(uint64_t)a2 stop:.cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"delegate != ((void *)0)"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"SBKeyboardFocusAccessibilityResolutionStage.m";
    v16 = 1024;
    v17 = 28;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end