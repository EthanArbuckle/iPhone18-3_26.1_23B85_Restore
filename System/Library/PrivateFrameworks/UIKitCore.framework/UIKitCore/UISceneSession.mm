@interface UISceneSession
- (BOOL)isEqual:(id)equal;
- (NSDictionary)userInfo;
- (NSUserActivity)stateRestorationActivity;
- (UIScene)scene;
- (UISceneConfiguration)configuration;
- (UISceneSession)initWithCoder:(id)coder;
- (id)_copyWithoutUserInfo;
- (id)_init;
- (id)_initWithPersistentIdentifier:(id)identifier sessionRole:(id)role configurationName:(id)name;
- (id)_internalUserInfo;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (unint64_t)hash;
- (void)_loadInternalUserInfo;
- (void)_loadStateRestorationActivityIfNeeded;
- (void)_loadUserInfo;
- (void)_setConfigurationIsDirty:(BOOL)dirty;
- (void)_setInternalUserInfo:(uint64_t)info;
- (void)_setScene:(id)scene;
- (void)_setTrackingRefreshRequest:(BOOL)request;
- (void)_setUserInfoIsDirty:(BOOL)dirty;
- (void)_updateConfiguration:(id)configuration;
- (void)encodeWithCoder:(id)coder;
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
  _init = [[UISceneSession alloc] _init];
  objc_storeStrong(_init + 3, self->_persistentIdentifier);
  objc_storeStrong(_init + 2, self->_role);
  objc_storeStrong(_init + 4, self->_configuration);
  v4 = _init[6];
  v5 = MEMORY[0x1E695E0F8];
  _init[6] = MEMORY[0x1E695E0F8];

  v6 = _init[7];
  _init[7] = v5;

  return _init;
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
    persistentIdentifier = [(UISceneSession *)self persistentIdentifier];
    v4 = [_UISceneUserActivityManager _restorationUserActivityAvailableForSceneIdentifier:persistentIdentifier];

    if (v4)
    {
      persistentIdentifier2 = [(UISceneSession *)self persistentIdentifier];
      v10 = 0;
      v6 = [_UISceneUserActivityManager _getRestorationUserActivityForPersistentIdentifier:persistentIdentifier2 error:&v10];
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
          selfCopy = self;
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
    persistentIdentifier = [(UISceneSession *)self persistentIdentifier];
    v8 = 0;
    v4 = [_UISceneUserActivityManager _getUserInfoForPersistentIdentifier:persistentIdentifier error:&v8];
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
        selfCopy = self;
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
  succinctDescriptionBuilder = [(UISceneSession *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
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
  if (self)
  {
    selfCopy = self;
    [(UISceneSession *)self _loadInternalUserInfo];
    self = [selfCopy[7] copy];
    v1 = vars8;
  }

  return self;
}

- (void)_setInternalUserInfo:(uint64_t)info
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (info)
  {
    v12 = v3;
    v4 = [*(info + 56) isEqualToDictionary:v3];
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
            infoCopy = info;
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
      v7 = *(info + 56);
      *(info + 56) = v6;

      *(info + 64) |= 0xC0u;
      [_UISceneUserActivityManager _scheduleDataSaveForSceneSession:info saveRestorationActivity:0];
      v3 = v12;
    }
  }
}

- (id)_initWithPersistentIdentifier:(id)identifier sessionRole:(id)role configurationName:(id)name
{
  identifierCopy = identifier;
  roleCopy = role;
  nameCopy = name;
  v20.receiver = self;
  v20.super_class = UISceneSession;
  v12 = [(UISceneSession *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_persistentIdentifier, identifier);
    objc_storeStrong(&v13->_role, role);
    userInfo = v13->_userInfo;
    v15 = MEMORY[0x1E695E0F8];
    v13->_userInfo = MEMORY[0x1E695E0F8];

    internalUserInfo = v13->_internalUserInfo;
    v13->_internalUserInfo = v15;

    v17 = [UISceneConfiguration configurationWithName:nameCopy sessionRole:roleCopy];
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

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(UISceneSession *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(UISceneSession *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v6 = [MEMORY[0x1E698E680] builderWithObject:self];
  [v6 setActiveMultilinePrefix:prefixCopy];

  [v6 appendString:self->_role withName:@"role"];
  [v6 appendString:self->_persistentIdentifier withName:@"persistentIdentifier"];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __56__UISceneSession_descriptionBuilderWithMultilinePrefix___block_invoke;
  v11[3] = &unk_1E70F5AF0;
  v7 = v6;
  v14 = has_internal_diagnostics;
  v12 = v7;
  selfCopy = self;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    goto LABEL_8;
  }

  v5 = objc_opt_class();
  if (![v5 isEqual:objc_opt_class()])
  {
    goto LABEL_7;
  }

  v6 = [(UISceneSession *)self hash];
  if (v6 != [(UISceneSession *)equalCopy hash])
  {
    goto LABEL_7;
  }

  persistentIdentifier = self->_persistentIdentifier;
  if (persistentIdentifier == equalCopy->_persistentIdentifier)
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

- (void)_setScene:(id)scene
{
  sessionFlags = self->_sessionFlags;
  v6 = objc_storeWeak(&self->_scene, scene);
  sceneCopy4 = scene;
  if (scene)
  {
    if ((sessionFlags & 0x100) != 0)
    {
      _isInternal = [scene _isInternal];
      sceneCopy4 = scene;
      if ((_isInternal & 1) == 0)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"UISceneSession.m" lineNumber:228 description:{@"Internal session given a non-internal scene: self: %@, scene:", self, scene}];

        sceneCopy4 = scene;
      }
    }

    _isInternal2 = [sceneCopy4 _isInternal];
    sceneCopy4 = scene;
    if (_isInternal2)
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

- (void)_updateConfiguration:(id)configuration
{
  v17 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  if (![(UISceneConfiguration *)self->_configuration isEqual:configurationCopy])
  {
    role = [configurationCopy role];
    v6 = [role isEqualToString:self->_role];

    if (v6)
    {
LABEL_3:
      v7 = [[UISceneConfiguration alloc] _initWithConfiguration:configurationCopy];
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

      role2 = [configurationCopy role];
      role3 = [(UISceneSession *)self role];
      v13 = 138412546;
      v14 = role2;
      v15 = 2112;
      v16 = role3;
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
      role2 = [configurationCopy role];
      role3 = [(UISceneSession *)self role];
      v13 = 138412546;
      v14 = role2;
      v15 = 2112;
      v16 = role3;
      _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "BUG IN CLIENT OF UIKIT: Attempting to define a mismatched UISceneSessionRole! This will be an assert in future UIKit releases! Assigning a UISceneConfiguration with role %@ for a UISceneSession with role %@.", &v13, 0x16u);
    }

LABEL_9:
    goto LABEL_3;
  }

LABEL_4:
}

- (void)_setTrackingRefreshRequest:(BOOL)request
{
  if (request)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_sessionFlags = *&self->_sessionFlags & 0xFFFB | v3;
}

- (void)_setConfigurationIsDirty:(BOOL)dirty
{
  if (dirty)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_sessionFlags = *&self->_sessionFlags & 0xFFF7 | v3;
}

- (void)_setUserInfoIsDirty:(BOOL)dirty
{
  if (dirty)
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
  if (self && (*(self + 64) & 0x80) == 0)
  {
    persistentIdentifier = [self persistentIdentifier];
    v7 = 0;
    v3 = [_UISceneUserActivityManager _getInternalUserInfoForPersistentIdentifier:persistentIdentifier error:&v7];
    v4 = v7;
    v5 = *(self + 56);
    *(self + 56) = v3;

    if (v4)
    {
      v6 = *(__UILogGetCategoryCachedImpl("SceneSession", &_loadInternalUserInfo___s_category) + 8);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v9 = v4;
        v10 = 2114;
        selfCopy = self;
        _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "Failed to load scene session internal user info: %{public}@; scene session: %{public}@", buf, 0x16u);
      }
    }

    else
    {
      *(self + 64) |= 0x80u;
    }
  }
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if ([UIApp _appAdoptsUISceneLifecycle])
  {
    [coderCopy encodeObject:self->_configuration forKey:@"_UISceneSessionSceneConfiguration"];
  }

  [coderCopy encodeObject:self->_role forKey:@"_UISceneSessionRole"];
  [coderCopy encodeObject:self->_persistentIdentifier forKey:@"_UISceneSessionPersistentIdentifier"];
}

- (UISceneSession)initWithCoder:(id)coder
{
  coderCopy = coder;
  _init = [(UISceneSession *)self _init];
  if (_init)
  {
    v6 = objc_opt_self();
    v7 = [coderCopy decodeObjectOfClass:v6 forKey:@"_UISceneSessionRole"];
    role = _init->_role;
    _init->_role = v7;

    if ([UIApp _appAdoptsUISceneLifecycle])
    {
      v9 = objc_opt_self();
      v10 = [coderCopy decodeObjectOfClass:v9 forKey:@"_UISceneSessionSceneConfiguration"];
      v11 = v10;
      if (v10)
      {
        v12 = v10;
      }

      else
      {
        v12 = [[UISceneConfiguration alloc] _initWithLoadErrorForSessionRole:_init->_role];
      }

      configuration = _init->_configuration;
      _init->_configuration = v12;
    }

    else
    {
      v13 = [UISceneConfiguration configurationWithName:0 sessionRole:_init->_role];
      v9 = _init->_configuration;
      _init->_configuration = v13;
    }

    v15 = objc_opt_self();
    v16 = [coderCopy decodeObjectOfClass:v15 forKey:@"_UISceneSessionPersistentIdentifier"];
    persistentIdentifier = _init->_persistentIdentifier;
    _init->_persistentIdentifier = v16;

    *&_init->_sessionFlags &= 0xFF5Du;
  }

  return _init;
}

@end