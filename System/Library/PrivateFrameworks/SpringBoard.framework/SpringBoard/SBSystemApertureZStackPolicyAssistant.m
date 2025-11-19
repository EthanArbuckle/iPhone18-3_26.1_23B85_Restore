@interface SBSystemApertureZStackPolicyAssistant
- (id)initWithDelegate:(id *)a1;
- (id)initWithParticipant:(id *)a1;
- (uint64_t)suppressSystemApertureForSystemChromeSuppression;
- (void)_resolveProposedPolicies;
- (void)homeGrabberViewDidUpdateHidden:(id)a3;
- (void)sceneHandle:(id)a3 didUpdateClientSettings:(id)a4;
- (void)setForegroundExclusiveSceneHandle:(void *)a3 homeGrabberView:;
@end

@implementation SBSystemApertureZStackPolicyAssistant

- (void)_resolveProposedPolicies
{
  if (!a1)
  {
    return;
  }

  v2 = *(a1 + 24);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained sceneIfExists];
  v4 = [v3 clientSettings];
  v5 = objc_opt_class();
  v6 = v4;
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

  v9 = [v8 statusBarHidden];
  v10 = [v8 homeIndicatorAutoHidden];

  if (v10)
  {
    v11 = objc_loadWeakRetained((a1 + 40));
    v12 = [v11 isHidden];

    v9 |= v12;
  }

  v13 = v2 != (v9 & 1);
  if (v2 != (v9 & 1))
  {
    *(a1 + 24) = v9 & 1;
  }

  v14 = [WeakRetained application];
  v15 = [v14 bundleIdentifier];

  v16 = [*(a1 + 48) anyObject];
  v17 = BSEqualStrings();

  if ((v17 & 1) == 0)
  {
    if (v15)
    {
      v18 = [MEMORY[0x277CBEB98] setWithObject:v15];
    }

    else
    {
      v18 = 0;
    }

    v19 = *(a1 + 48);
    *(a1 + 48) = v18;

    v13 = 1;
  }

  v20 = [WeakRetained sceneIdentifier];
  v21 = [*(a1 + 56) anyObject];
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
    if (v20)
    {
      v23 = [MEMORY[0x277CBEB98] setWithObject:v20];
    }

    else
    {
      v23 = 0;
    }

    v24 = *(a1 + 56);
    *(a1 + 56) = v23;
  }

  v25 = *(a1 + 16);
  v26 = [objc_opt_class() description];
  [v25 setNeedsUpdatePreferencesWithReason:v26];

  v27 = objc_loadWeakRetained((a1 + 8));
  [v27 systemApertureZStackPolicyAssistantDidChange:a1];

LABEL_24:
}

- (uint64_t)suppressSystemApertureForSystemChromeSuppression
{
  if (a1)
  {
    v1 = *(a1 + 24);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

- (id)initWithParticipant:(id *)a1
{
  v4 = a2;
  if (a1)
  {
    v8.receiver = a1;
    v8.super_class = SBSystemApertureZStackPolicyAssistant;
    a1 = objc_msgSendSuper2(&v8, sel_init);
    if (a1)
    {
      v5 = v4;
      if (!v5)
      {
        [(SBSystemApertureZStackPolicyAssistant *)sel_initWithParticipant_ initWithParticipant:a1];
      }

      v6 = v5;
      objc_opt_class();
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [(SBSystemApertureZStackPolicyAssistant *)v6 initWithParticipant:a1];
      }

      objc_storeStrong(a1 + 2, a2);
    }
  }

  return a1;
}

- (id)initWithDelegate:(id *)a1
{
  v3 = a2;
  if (a1)
  {
    v6.receiver = a1;
    v6.super_class = SBSystemApertureZStackPolicyAssistant;
    v4 = objc_msgSendSuper2(&v6, sel_init);
    a1 = v4;
    if (v4)
    {
      if (!v3)
      {
        [(SBSystemApertureZStackPolicyAssistant *)sel_initWithDelegate_ initWithDelegate:v4];
      }

      objc_storeWeak(v4 + 1, v3);
    }
  }

  return a1;
}

- (void)sceneHandle:(id)a3 didUpdateClientSettings:(id)a4
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_foregroundExclusiveSceneHandle);

  if (WeakRetained == v5)
  {

    [(SBSystemApertureZStackPolicyAssistant *)self _resolveProposedPolicies];
  }
}

- (void)homeGrabberViewDidUpdateHidden:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_foregroundExclusiveHomeGrabberView);

  if (WeakRetained == v4)
  {

    [(SBSystemApertureZStackPolicyAssistant *)self _resolveProposedPolicies];
  }
}

- (void)setForegroundExclusiveSceneHandle:(void *)a3 homeGrabberView:
{
  obj = a2;
  v5 = a3;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (WeakRetained == obj)
    {
      v7 = (a1 + 40);
      v8 = objc_loadWeakRetained((a1 + 40));
      if (v8 == v5)
      {
LABEL_4:

        goto LABEL_5;
      }
    }

    else
    {
      [WeakRetained removeObserver:a1];
      objc_storeWeak((a1 + 32), obj);
      [obj addObserver:a1];
      v7 = (a1 + 40);
      v8 = objc_loadWeakRetained((a1 + 40));
      if (v8 == v5)
      {
LABEL_10:
        [(SBSystemApertureZStackPolicyAssistant *)a1 _resolveProposedPolicies];
        goto LABEL_4;
      }
    }

    [v8 removeObserver:a1];
    objc_storeWeak(v7, v5);
    [v5 addObserver:a1];
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