@interface UISceneSession
- (BOOL)isEqual:(id)a3;
- (NSDictionary)userInfo;
- (NSUserActivity)stateRestorationActivity;
- (UIScene)scene;
- (UISceneConfiguration)configuration;
- (UISceneSession)initWithCoder:(id)a3;
- (id)_copyWithoutUserInfo;
- (id)_init;
- (id)_initWithPersistentIdentifier:(id)a3 sessionRole:(id)a4 configurationName:(id)a5;
- (id)_internalUserInfo;
- (id)debugDescriptionWithMultilinePrefix:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (unint64_t)hash;
- (void)_loadInternalUserInfo;
- (void)_loadStateRestorationActivityIfNeeded;
- (void)_loadUserInfo;
- (void)_setConfigurationIsDirty:(BOOL)a3;
- (void)_setInternalUserInfo:(uint64_t)a1;
- (void)_setScene:(id)a3;
- (void)_setTrackingRefreshRequest:(BOOL)a3;
- (void)_setUserInfoIsDirty:(BOOL)a3;
- (void)_updateConfiguration:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setStateRestorationActivity:(NSUserActivity *)stateRestorationActivity;
- (void)setUserInfo:(NSDictionary *)userInfo;
@end

@implementation UISceneSession

- (UISceneConfiguration)configuration
{
  v2 = [(UISceneConfiguration *)self->_configuration copy];

  return v2;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = UISceneSession;
  return [(UISceneSession *)&v3 init];
}

- (unint64_t)hash
{
  persistentIdentifier = self->_persistentIdentifier;
  if (persistentIdentifier)
  {
    return [(NSString *)persistentIdentifier hash]+ 113569;
  }

  else
  {
    return 337;
  }
}

- (id)_copyWithoutUserInfo
{
  v3 = [[UISceneSession alloc] _init];
  objc_storeStrong(v3 + 3, self->_persistentIdentifier);
  objc_storeStrong(v3 + 2, self->_role);
  objc_storeStrong(v3 + 4, self->_configuration);
  v4 = v3[6];
  v5 = MEMORY[0x1E695E0F8];
  v3[6] = MEMORY[0x1E695E0F8];

  v6 = v3[7];
  v3[7] = v5;

  return v3;
}

- (NSUserActivity)stateRestorationActivity
{
  [(UISceneSession *)self _loadStateRestorationActivityIfNeeded];
  stateRestorationActivity = self->_stateRestorationActivity;

  return stateRestorationActivity;
}

- (void)_loadStateRestorationActivityIfNeeded
{
  v15 = *MEMORY[0x1E69E9840];
  if ((*&self->_sessionFlags & 2) == 0)
  {
    v3 = [(UISceneSession *)self persistentIdentifier];
    v4 = [_UISceneUserActivityManager _restorationUserActivityAvailableForSceneIdentifier:v3];

    if (v4)
    {
      v5 = [(UISceneSession *)self persistentIdentifier];
      v10 = 0;
      v6 = [_UISceneUserActivityManager _getRestorationUserActivityForPersistentIdentifier:v5 error:&v10];
      v7 = v10;
      stateRestorationActivity = self->_stateRestorationActivity;
      self->_stateRestorationActivity = v6;

      if (v7)
      {
        v9 = *(__UILogGetCategoryCachedImpl("SceneSession", &_loadStateRestorationActivityIfNeeded___s_category) + 8);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v12 = v7;
          v13 = 2114;
          v14 = self;
          _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "Failed to load scene session state restoration activity: %{public}@; scene session: %{public}@", buf, 0x16u);
        }
      }

      else
      {
        *&self->_sessionFlags = *&self->_sessionFlags & 0xFFFC | 2;
      }
    }
  }
}

- (NSDictionary)userInfo
{
  [(UISceneSession *)self _loadUserInfo];
  v3 = [(NSDictionary *)self->_userInfo copy];

  return v3;
}

- (void)_loadUserInfo
{
  v13 = *MEMORY[0x1E69E9840];
  if ((*&self->_sessionFlags & 0x20) == 0)
  {
    v3 = [(UISceneSession *)self persistentIdentifier];
    v8 = 0;
    v4 = [_UISceneUserActivityManager _getUserInfoForPersistentIdentifier:v3 error:&v8];
    v5 = v8;
    userInfo = self->_userInfo;
    self->_userInfo = v4;

    if (v5)
    {
      v7 = *(__UILogGetCategoryCachedImpl("SceneSession", &_loadUserInfo___s_category) + 8);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v10 = v5;
        v11 = 2114;
        v12 = self;
        _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "Failed to load scene session user info: %{public}@; scene session: %{public}@", buf, 0x16u);
      }
    }

    else
    {
      *&self->_sessionFlags |= 0x20u;
    }
  }
}

- (UIScene)scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

- (id)succinctDescription
{
  v2 = [(UISceneSession *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v4 = [MEMORY[0x1E698E680] builderWithObject:self];
  [v4 appendString:self->_role withName:@"role"];
  [v4 appendString:self->_persistentIdentifier withName:@"persistentIdentifier"];
  v5 = objc_loadWeakRetained(&self->_scene);
  if (v5)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v6 stringWithFormat:@"<%@: %p>", v8, v5];
  }

  else
  {
    v9 = @"(nil)";
  }

  v10 = [v4 appendObject:v9 withName:@"scene"];
  configuration = self->_configuration;
  if (configuration)
  {
    v12 = MEMORY[0x1E696AEC0];
    v13 = configuration;
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = [v12 stringWithFormat:@"<%@: %p>", v15, v13];
  }

  else
  {
    v16 = @"(nil)";
  }

  v17 = [v4 appendObject:v16 withName:@"configuration"];

  userInfo = self->_userInfo;
  if (userInfo)
  {
    v19 = MEMORY[0x1E696AEC0];
    v20 = userInfo;
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    v23 = [v19 stringWithFormat:@"<%@: %p>", v22, v20];
  }

  else
  {
    v23 = @"(nil)";
  }

  v24 = [v4 appendObject:v23 withName:@"userInfo"];

  if (has_internal_diagnostics)
  {
    internalUserInfo = self->_internalUserInfo;
    if (internalUserInfo)
    {
      v26 = MEMORY[0x1E696AEC0];
      v27 = internalUserInfo;
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      v30 = [v26 stringWithFormat:@"<%@: %p>", v29, v27];
    }

    else
    {
      v30 = @"(nil)";
    }

    v31 = [v4 appendObject:v30 withName:@"internalUserInfo"];
  }

  return v4;
}

- (id)_internalUserInfo
{
  if (a1)
  {
    v2 = a1;
    [(UISceneSession *)a1 _loadInternalUserInfo];
    a1 = [v2[7] copy];
    v1 = vars8;
  }

  return a1;
}

- (void)_setInternalUserInfo:(uint64_t)a1
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v12 = v3;
    v4 = [*(a1 + 56) isEqualToDictionary:v3];
    v3 = v12;
    if ((v4 & 1) == 0)
    {
      if (v12)
      {
        v5 = [MEMORY[0x1E696AE40] propertyList:v12 isValidForFormat:100];
        v3 = v12;
        if ((v5 & 1) == 0)
        {
          v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"internalUserInfo is not plist serializable: %@", v12];
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v9 = NSStringFromSelector(sel__setInternalUserInfo_);
            v10 = objc_opt_class();
            v11 = NSStringFromClass(v10);
            *buf = 138544642;
            v14 = v9;
            v15 = 2114;
            v16 = v11;
            v17 = 2048;
            v18 = a1;
            v19 = 2114;
            v20 = @"UISceneSession.m";
            v21 = 1024;
            v22 = 309;
            v23 = 2114;
            v24 = v8;
            _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
          }

          [v8 UTF8String];
          _bs_set_crash_log_message();
          __break(0);
          JUMPOUT(0x189370D6CLL);
        }
      }

      v6 = [v3 copy];
      v7 = *(a1 + 56);
      *(a1 + 56) = v6;

      *(a1 + 64) |= 0xC0u;
      [_UISceneUserActivityManager _scheduleDataSaveForSceneSession:a1 saveRestorationActivity:0];
      v3 = v12;
    }
  }
}

- (id)_initWithPersistentIdentifier:(id)a3 sessionRole:(id)a4 configurationName:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v20.receiver = self;
  v20.super_class = UISceneSession;
  v12 = [(UISceneSession *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_persistentIdentifier, a3);
    objc_storeStrong(&v13->_role, a4);
    userInfo = v13->_userInfo;
    v15 = MEMORY[0x1E695E0F8];
    v13->_userInfo = MEMORY[0x1E695E0F8];

    internalUserInfo = v13->_internalUserInfo;
    v13->_internalUserInfo = v15;

    v17 = [UISceneConfiguration configurationWithName:v11 sessionRole:v10];
    configuration = v13->_configuration;
    v13->_configuration = v17;

    *&v13->_sessionFlags = *&v13->_sessionFlags & 0xFE55 | 0xAA;
  }

  return v13;
}

- (void)setStateRestorationActivity:(NSUserActivity *)stateRestorationActivity
{
  objc_storeStrong(&self->_stateRestorationActivity, stateRestorationActivity);
  v5 = stateRestorationActivity;
  *&self->_sessionFlags |= 3u;
  [_UISceneUserActivityManager _scheduleDataSaveForSceneSession:self saveRestorationActivity:1];
}

- (void)setUserInfo:(NSDictionary *)userInfo
{
  v6 = userInfo;
  if (![(NSDictionary *)self->_userInfo isEqualToDictionary:?])
  {
    [MEMORY[0x1E696AE40] propertyList:v6 isValidForFormat:100];
    v4 = [(NSDictionary *)v6 copy];
    v5 = self->_userInfo;
    self->_userInfo = v4;

    [(UISceneSession *)self _setUserInfoIsDirty:1];
    [_UISceneUserActivityManager _scheduleDataSaveForSceneSession:self saveRestorationActivity:0];
  }
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(UISceneSession *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v3 = [(UISceneSession *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v6 = [MEMORY[0x1E698E680] builderWithObject:self];
  [v6 setActiveMultilinePrefix:v4];

  [v6 appendString:self->_role withName:@"role"];
  [v6 appendString:self->_persistentIdentifier withName:@"persistentIdentifier"];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __56__UISceneSession_descriptionBuilderWithMultilinePrefix___block_invoke;
  v11[3] = &unk_1E70F5AF0;
  v7 = v6;
  v14 = has_internal_diagnostics;
  v12 = v7;
  v13 = self;
  v8 = [v7 modifyBody:v11];
  v9 = v7;

  return v7;
}

void __56__UISceneSession_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 activeMultilinePrefix];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__UISceneSession_descriptionBuilderWithMultilinePrefix___block_invoke_2;
  v6[3] = &unk_1E70F5AF0;
  v9 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = v4;
  v8 = v5;
  [v2 appendBodySectionWithName:0 multilinePrefix:v3 block:v6];
}

uint64_t __56__UISceneSession_descriptionBuilderWithMultilinePrefix___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = *(a1 + 32);
    v3 = [v2 activeMultilinePrefix];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __56__UISceneSession_descriptionBuilderWithMultilinePrefix___block_invoke_3;
    v15[3] = &unk_1E70F35B8;
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v16 = v4;
    v17 = v5;
    [v2 appendBodySectionWithName:@"sessionFlags" multilinePrefix:v3 block:v15];
  }

  v6 = *(a1 + 32);
  v7 = objc_loadWeakRetained((*(a1 + 40) + 8));
  if (v7)
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [v8 stringWithFormat:@"<%@: %p>", v10, v7];
  }

  else
  {
    v11 = @"(nil)";
  }

  v12 = [v6 appendObject:v11 withName:@"scene"];
  v13 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 32) withName:@"configuration"];
  result = [*(a1 + 32) appendDictionarySection:*(*(a1 + 40) + 48) withName:@"userInfo" skipIfEmpty:1];
  if (*(a1 + 48) == 1)
  {
    return [*(a1 + 32) appendDictionarySection:*(*(a1 + 40) + 56) withName:@"internalUserInfo" skipIfEmpty:1];
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    goto LABEL_8;
  }

  v5 = objc_opt_class();
  if (![v5 isEqual:objc_opt_class()])
  {
    goto LABEL_7;
  }

  v6 = [(UISceneSession *)self hash];
  if (v6 != [(UISceneSession *)v4 hash])
  {
    goto LABEL_7;
  }

  persistentIdentifier = self->_persistentIdentifier;
  if (persistentIdentifier == v4->_persistentIdentifier)
  {
LABEL_8:
    v8 = 1;
    goto LABEL_9;
  }

  if (!persistentIdentifier)
  {
LABEL_7:
    v8 = 0;
    goto LABEL_9;
  }

  v8 = [(NSString *)persistentIdentifier isEqualToString:?];
LABEL_9:

  return v8;
}

- (void)_setScene:(id)a3
{
  sessionFlags = self->_sessionFlags;
  v6 = objc_storeWeak(&self->_scene, a3);
  v7 = a3;
  if (a3)
  {
    if ((sessionFlags & 0x100) != 0)
    {
      v8 = [a3 _isInternal];
      v7 = a3;
      if ((v8 & 1) == 0)
      {
        v11 = [MEMORY[0x1E696AAA8] currentHandler];
        [v11 handleFailureInMethod:a2 object:self file:@"UISceneSession.m" lineNumber:228 description:{@"Internal session given a non-internal scene: self: %@, scene:", self, a3}];

        v7 = a3;
      }
    }

    v9 = [v7 _isInternal];
    v7 = a3;
    if (v9)
    {
      v10 = 256;
    }

    else
    {
      v10 = 0;
    }

    *&self->_sessionFlags = *&self->_sessionFlags & 0xFEFF | v10;
  }
}

- (void)_updateConfiguration:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![(UISceneConfiguration *)self->_configuration isEqual:v4])
  {
    v5 = [v4 role];
    v6 = [v5 isEqualToString:self->_role];

    if (v6)
    {
LABEL_3:
      v7 = [[UISceneConfiguration alloc] _initWithConfiguration:v4];
      configuration = self->_configuration;
      self->_configuration = v7;

      *&self->_sessionFlags |= 8u;
      goto LABEL_4;
    }

    if (os_variant_has_internal_diagnostics())
    {
      v10 = __UIFaultDebugAssertLog();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_9;
      }

      v11 = [v4 role];
      v12 = [(UISceneSession *)self role];
      v13 = 138412546;
      v14 = v11;
      v15 = 2112;
      v16 = v12;
      _os_log_fault_impl(&dword_188A29000, v10, OS_LOG_TYPE_FAULT, "BUG IN CLIENT OF UIKIT: Attempting to define a mismatched UISceneSessionRole! This will be an assert in future UIKit releases! Assigning a UISceneConfiguration with role %@ for a UISceneSession with role %@.", &v13, 0x16u);
    }

    else
    {
      v9 = *(__UILogGetCategoryCachedImpl("Assert", &_updateConfiguration____s_category) + 8);
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_3;
      }

      v10 = v9;
      v11 = [v4 role];
      v12 = [(UISceneSession *)self role];
      v13 = 138412546;
      v14 = v11;
      v15 = 2112;
      v16 = v12;
      _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "BUG IN CLIENT OF UIKIT: Attempting to define a mismatched UISceneSessionRole! This will be an assert in future UIKit releases! Assigning a UISceneConfiguration with role %@ for a UISceneSession with role %@.", &v13, 0x16u);
    }

LABEL_9:
    goto LABEL_3;
  }

LABEL_4:
}

- (void)_setTrackingRefreshRequest:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_sessionFlags = *&self->_sessionFlags & 0xFFFB | v3;
}

- (void)_setConfigurationIsDirty:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_sessionFlags = *&self->_sessionFlags & 0xFFF7 | v3;
}

- (void)_setUserInfoIsDirty:(BOOL)a3
{
  if (a3)
  {
    v3 = 48;
  }

  else
  {
    v3 = 32;
  }

  *&self->_sessionFlags = *&self->_sessionFlags & 0xFFCF | v3;
}

- (void)_loadInternalUserInfo
{
  v12 = *MEMORY[0x1E69E9840];
  if (a1 && (*(a1 + 64) & 0x80) == 0)
  {
    v2 = [a1 persistentIdentifier];
    v7 = 0;
    v3 = [_UISceneUserActivityManager _getInternalUserInfoForPersistentIdentifier:v2 error:&v7];
    v4 = v7;
    v5 = *(a1 + 56);
    *(a1 + 56) = v3;

    if (v4)
    {
      v6 = *(__UILogGetCategoryCachedImpl("SceneSession", &_loadInternalUserInfo___s_category) + 8);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v9 = v4;
        v10 = 2114;
        v11 = a1;
        _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "Failed to load scene session internal user info: %{public}@; scene session: %{public}@", buf, 0x16u);
      }
    }

    else
    {
      *(a1 + 64) |= 0x80u;
    }
  }
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  if ([UIApp _appAdoptsUISceneLifecycle])
  {
    [v4 encodeObject:self->_configuration forKey:@"_UISceneSessionSceneConfiguration"];
  }

  [v4 encodeObject:self->_role forKey:@"_UISceneSessionRole"];
  [v4 encodeObject:self->_persistentIdentifier forKey:@"_UISceneSessionPersistentIdentifier"];
}

- (UISceneSession)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(UISceneSession *)self _init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [v4 decodeObjectOfClass:v6 forKey:@"_UISceneSessionRole"];
    role = v5->_role;
    v5->_role = v7;

    if ([UIApp _appAdoptsUISceneLifecycle])
    {
      v9 = objc_opt_self();
      v10 = [v4 decodeObjectOfClass:v9 forKey:@"_UISceneSessionSceneConfiguration"];
      v11 = v10;
      if (v10)
      {
        v12 = v10;
      }

      else
      {
        v12 = [[UISceneConfiguration alloc] _initWithLoadErrorForSessionRole:v5->_role];
      }

      configuration = v5->_configuration;
      v5->_configuration = v12;
    }

    else
    {
      v13 = [UISceneConfiguration configurationWithName:0 sessionRole:v5->_role];
      v9 = v5->_configuration;
      v5->_configuration = v13;
    }

    v15 = objc_opt_self();
    v16 = [v4 decodeObjectOfClass:v15 forKey:@"_UISceneSessionPersistentIdentifier"];
    persistentIdentifier = v5->_persistentIdentifier;
    v5->_persistentIdentifier = v16;

    *&v5->_sessionFlags &= 0xFF5Du;
  }

  return v5;
}

@end