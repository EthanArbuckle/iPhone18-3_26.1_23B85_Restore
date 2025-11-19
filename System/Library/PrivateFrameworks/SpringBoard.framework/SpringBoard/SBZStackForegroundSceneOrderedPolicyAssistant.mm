@interface SBZStackForegroundSceneOrderedPolicyAssistant
- (SBZStackForegroundSceneOrderedPolicyAssistant)initWithDelegate:(id)a3;
- (SBZStackForegroundSceneOrderedPolicyAssistant)initWithParticipant:(id)a3;
- (id)_foregroundScenes;
- (id)observedSceneSettings;
- (int64_t)resolveProposedPoliciesForForegroundScenes:(id)a3;
- (void)_didUpdateClientSettings:(id)a3;
- (void)_invokePropertyResolution;
- (void)dealloc;
- (void)scene:(id)a3 didUpdateClientSettings:(id)a4;
- (void)sceneHandle:(id)a3 didUpdateClientSettings:(id)a4;
- (void)setForegroundScenes:(id)a3;
@end

@implementation SBZStackForegroundSceneOrderedPolicyAssistant

- (id)_foregroundScenes
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [(NSArray *)self->_foregroundScenes reverseObjectEnumerator];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = [v8 sceneIfExists];
          if (v9)
          {
            if (!v5)
            {
              v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
            }

            [v5 addObject:v9];
          }
        }

        else
        {
          if (!v5)
          {
            v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
          }

          [v5 addObject:v8];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_invokePropertyResolution
{
  v3 = [(SBZStackForegroundSceneOrderedPolicyAssistant *)self _foregroundScenes];
  v4 = [(SBZStackForegroundSceneOrderedPolicyAssistant *)self resolveProposedPoliciesForForegroundScenes:v3];

  if (v4 == 1)
  {
    v7 = [objc_opt_class() description];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained foregroundSceneZStackPolicyAssistantDidChange:self forReason:v7];

    v6 = objc_loadWeakRetained(&self->_zStackParticipant);
    [v6 setNeedsUpdatePreferencesWithReason:v7];
  }
}

- (SBZStackForegroundSceneOrderedPolicyAssistant)initWithDelegate:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = SBZStackForegroundSceneOrderedPolicyAssistant;
  v6 = [(SBZStackForegroundSceneOrderedPolicyAssistant *)&v11 init];
  v7 = v6;
  if (v6)
  {
    if (!v5)
    {
      [(SBZStackForegroundSceneOrderedPolicyAssistant *)a2 initWithDelegate:v6];
    }

    objc_storeWeak(&v6->_delegate, v5);
    v8 = [(SBZStackForegroundSceneOrderedPolicyAssistant *)v7 observedSceneSettings];
    observedSceneSettingSelectors = v7->_observedSceneSettingSelectors;
    v7->_observedSceneSettingSelectors = v8;
  }

  return v7;
}

- (SBZStackForegroundSceneOrderedPolicyAssistant)initWithParticipant:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = SBZStackForegroundSceneOrderedPolicyAssistant;
  v6 = [(SBZStackForegroundSceneOrderedPolicyAssistant *)&v12 init];
  if (v6)
  {
    v7 = v5;
    if (!v7)
    {
      [(SBZStackForegroundSceneOrderedPolicyAssistant *)a2 initWithParticipant:v6];
    }

    v8 = v7;
    objc_opt_class();
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(SBZStackForegroundSceneOrderedPolicyAssistant *)v8 initWithParticipant:a2, v6];
    }

    objc_storeWeak(&v6->_zStackParticipant, v8);
    v9 = [(SBZStackForegroundSceneOrderedPolicyAssistant *)v6 observedSceneSettings];
    observedSceneSettingSelectors = v6->_observedSceneSettingSelectors;
    v6->_observedSceneSettingSelectors = v9;
  }

  return v6;
}

- (void)dealloc
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_foregroundScenes;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) removeObserver:self];
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8.receiver = self;
  v8.super_class = SBZStackForegroundSceneOrderedPolicyAssistant;
  [(SBZStackForegroundSceneOrderedPolicyAssistant *)&v8 dealloc];
}

- (void)setForegroundScenes:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 && ![v4 count])
  {

    v5 = 0;
  }

  if ((BSEqualArrays() & 1) == 0)
  {
    v6 = [v5 bs_differenceWithArray:self->_foregroundScenes];
    v7 = [(NSArray *)self->_foregroundScenes bs_differenceWithArray:v5];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v24;
      do
      {
        v11 = 0;
        do
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v23 + 1) + 8 * v11++) removeObserver:self];
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v9);
    }

    v12 = [v5 copy];
    foregroundScenes = self->_foregroundScenes;
    self->_foregroundScenes = v12;

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v14 = v6;
    v15 = [v14 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v20;
      do
      {
        v18 = 0;
        do
        {
          if (*v20 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [*(*(&v19 + 1) + 8 * v18++) addObserver:{self, v19}];
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v16);
    }

    [(SBZStackForegroundSceneOrderedPolicyAssistant *)self _invokePropertyResolution];
  }
}

- (void)scene:(id)a3 didUpdateClientSettings:(id)a4
{
  v6 = a4;
  if ([(NSArray *)self->_foregroundScenes containsObject:a3])
  {
    [(SBZStackForegroundSceneOrderedPolicyAssistant *)self _didUpdateClientSettings:v6];
  }
}

- (void)sceneHandle:(id)a3 didUpdateClientSettings:(id)a4
{
  v6 = a4;
  if ([(NSArray *)self->_foregroundScenes containsObject:a3])
  {
    [(SBZStackForegroundSceneOrderedPolicyAssistant *)self _didUpdateClientSettings:v6];
  }
}

- (id)observedSceneSettings
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"subclass plz implement me"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    v14 = self;
    v15 = 2114;
    v16 = @"SBZStackForegroundSceneOrderedPolicyAssistant.m";
    v17 = 1024;
    v18 = 141;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (int64_t)resolveProposedPoliciesForForegroundScenes:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"subclass plz implement me"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v7 = NSStringFromSelector(a2);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v11 = 138544642;
    v12 = v7;
    v13 = 2114;
    v14 = v9;
    v15 = 2048;
    v16 = self;
    v17 = 2114;
    v18 = @"SBZStackForegroundSceneOrderedPolicyAssistant.m";
    v19 = 1024;
    v20 = 145;
    v21 = 2114;
    v22 = v6;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v11, 0x3Au);
  }

  [v6 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (void)_didUpdateClientSettings:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = [a3 settingsDiff];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_observedSceneSettingSelectors;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if ([v4 containsProperty:{objc_msgSend(*(*(&v10 + 1) + 8 * v9), "pointerValue", v10)}])
        {

          [(SBZStackForegroundSceneOrderedPolicyAssistant *)self _invokePropertyResolution];
          goto LABEL_11;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
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
    v15 = @"SBZStackForegroundSceneOrderedPolicyAssistant.m";
    v16 = 1024;
    v17 = 51;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
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
    v21 = @"SBZStackForegroundSceneOrderedPolicyAssistant.m";
    v22 = 1024;
    v23 = 61;
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
    v18 = @"SBZStackForegroundSceneOrderedPolicyAssistant.m";
    v19 = 1024;
    v20 = 61;
    v21 = 2114;
    v22 = v7;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v7 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end