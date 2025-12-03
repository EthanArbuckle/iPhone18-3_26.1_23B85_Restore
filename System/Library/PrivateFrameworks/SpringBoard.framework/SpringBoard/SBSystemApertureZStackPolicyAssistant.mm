@interface SBSystemApertureZStackPolicyAssistant
- (id)initWithDelegate:(id *)delegate;
- (id)initWithParticipant:(id *)participant;
- (uint64_t)suppressSystemApertureForSystemChromeSuppression;
- (void)_resolveProposedPolicies;
- (void)homeGrabberViewDidUpdateHidden:(id)hidden;
- (void)sceneHandle:(id)handle didUpdateClientSettings:(id)settings;
- (void)setForegroundExclusiveSceneHandle:(void *)handle homeGrabberView:;
@end

@implementation SBSystemApertureZStackPolicyAssistant

- (void)_resolveProposedPolicies
{
  if (!self)
  {
    return;
  }

  v2 = *(self + 24);
  WeakRetained = objc_loadWeakRetained((self + 32));
  sceneIfExists = [WeakRetained sceneIfExists];
  clientSettings = [sceneIfExists clientSettings];
  v5 = objc_opt_class();
  v6 = clientSettings;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  statusBarHidden = [v8 statusBarHidden];
  homeIndicatorAutoHidden = [v8 homeIndicatorAutoHidden];

  if (homeIndicatorAutoHidden)
  {
    v11 = objc_loadWeakRetained((self + 40));
    isHidden = [v11 isHidden];

    statusBarHidden |= isHidden;
  }

  v13 = v2 != (statusBarHidden & 1);
  if (v2 != (statusBarHidden & 1))
  {
    *(self + 24) = statusBarHidden & 1;
  }

  application = [WeakRetained application];
  bundleIdentifier = [application bundleIdentifier];

  anyObject = [*(self + 48) anyObject];
  v17 = BSEqualStrings();

  if ((v17 & 1) == 0)
  {
    if (bundleIdentifier)
    {
      v18 = [MEMORY[0x277CBEB98] setWithObject:bundleIdentifier];
    }

    else
    {
      v18 = 0;
    }

    v19 = *(self + 48);
    *(self + 48) = v18;

    v13 = 1;
  }

  sceneIdentifier = [WeakRetained sceneIdentifier];
  anyObject2 = [*(self + 56) anyObject];
  v22 = BSEqualStrings();

  if (v22)
  {
    if (!v13)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if (sceneIdentifier)
    {
      v23 = [MEMORY[0x277CBEB98] setWithObject:sceneIdentifier];
    }

    else
    {
      v23 = 0;
    }

    v24 = *(self + 56);
    *(self + 56) = v23;
  }

  v25 = *(self + 16);
  v26 = [objc_opt_class() description];
  [v25 setNeedsUpdatePreferencesWithReason:v26];

  v27 = objc_loadWeakRetained((self + 8));
  [v27 systemApertureZStackPolicyAssistantDidChange:self];

LABEL_24:
}

- (uint64_t)suppressSystemApertureForSystemChromeSuppression
{
  if (self)
  {
    v1 = *(self + 24);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

- (id)initWithParticipant:(id *)participant
{
  v4 = a2;
  if (participant)
  {
    v8.receiver = participant;
    v8.super_class = SBSystemApertureZStackPolicyAssistant;
    participant = objc_msgSendSuper2(&v8, sel_init);
    if (participant)
    {
      v5 = v4;
      if (!v5)
      {
        [(SBSystemApertureZStackPolicyAssistant *)sel_initWithParticipant_ initWithParticipant:participant];
      }

      v6 = v5;
      objc_opt_class();
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [(SBSystemApertureZStackPolicyAssistant *)v6 initWithParticipant:participant];
      }

      objc_storeStrong(participant + 2, a2);
    }
  }

  return participant;
}

- (id)initWithDelegate:(id *)delegate
{
  v3 = a2;
  if (delegate)
  {
    v6.receiver = delegate;
    v6.super_class = SBSystemApertureZStackPolicyAssistant;
    v4 = objc_msgSendSuper2(&v6, sel_init);
    delegate = v4;
    if (v4)
    {
      if (!v3)
      {
        [(SBSystemApertureZStackPolicyAssistant *)sel_initWithDelegate_ initWithDelegate:v4];
      }

      objc_storeWeak(v4 + 1, v3);
    }
  }

  return delegate;
}

- (void)sceneHandle:(id)handle didUpdateClientSettings:(id)settings
{
  handleCopy = handle;
  WeakRetained = objc_loadWeakRetained(&self->_foregroundExclusiveSceneHandle);

  if (WeakRetained == handleCopy)
  {

    [(SBSystemApertureZStackPolicyAssistant *)self _resolveProposedPolicies];
  }
}

- (void)homeGrabberViewDidUpdateHidden:(id)hidden
{
  hiddenCopy = hidden;
  WeakRetained = objc_loadWeakRetained(&self->_foregroundExclusiveHomeGrabberView);

  if (WeakRetained == hiddenCopy)
  {

    [(SBSystemApertureZStackPolicyAssistant *)self _resolveProposedPolicies];
  }
}

- (void)setForegroundExclusiveSceneHandle:(void *)handle homeGrabberView:
{
  obj = a2;
  handleCopy = handle;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 32));
    if (WeakRetained == obj)
    {
      v7 = (self + 40);
      v8 = objc_loadWeakRetained((self + 40));
      if (v8 == handleCopy)
      {
LABEL_4:

        goto LABEL_5;
      }
    }

    else
    {
      [WeakRetained removeObserver:self];
      objc_storeWeak((self + 32), obj);
      [obj addObserver:self];
      v7 = (self + 40);
      v8 = objc_loadWeakRetained((self + 40));
      if (v8 == handleCopy)
      {
LABEL_10:
        [(SBSystemApertureZStackPolicyAssistant *)self _resolveProposedPolicies];
        goto LABEL_4;
      }
    }

    [v8 removeObserver:self];
    objc_storeWeak(v7, handleCopy);
    [handleCopy addObserver:self];
    goto LABEL_10;
  }

LABEL_5:
}

- (void)initWithParticipant:(uint64_t)a3 .cold.1(void *a1, const char *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCACA8];
  v6 = [a1 classForCoder];
  if (!v6)
  {
    v6 = objc_opt_class();
  }

  v7 = NSStringFromClass(v6);
  objc_opt_class();
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v5 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"participant", v7, v9];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v11 = NSStringFromSelector(a2);
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    *buf = 138544642;
    v15 = v11;
    v16 = 2114;
    v17 = v13;
    v18 = 2048;
    v19 = a3;
    v20 = 2114;
    v21 = @"SBSystemApertureZStackPolicyAssistant.m";
    v22 = 1024;
    v23 = 33;
    v24 = 2114;
    v25 = v10;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v10 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithParticipant:(const char *)a1 .cold.2(const char *a1, uint64_t a2)
{
  v4 = MEMORY[0x277CCACA8];
  objc_opt_class();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"participant", v6];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v8 = NSStringFromSelector(a1);
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    *buf = 138544642;
    v12 = v8;
    v13 = 2114;
    v14 = v10;
    v15 = 2048;
    v16 = a2;
    v17 = 2114;
    v18 = @"SBSystemApertureZStackPolicyAssistant.m";
    v19 = 1024;
    v20 = 33;
    v21 = 2114;
    v22 = v7;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v7 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithDelegate:(const char *)a1 .cold.1(const char *a1, uint64_t a2)
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
    v15 = @"SBSystemApertureZStackPolicyAssistant.m";
    v16 = 1024;
    v17 = 42;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end