@interface _UISceneExternalSettingsModifierHostComponent
- (BOOL)participatesInExternalSettingsModification;
- (BSServiceConnectionEndpoint)externalSettingsModifierEndpoint;
- (void)fetchSettingsModifiers;
- (void)scene:(id)scene willUpdateSettings:(id)settings;
- (void)sceneWillActivate:(id)activate;
- (void)setExternalSettingsModifierEndpoint:(id)endpoint;
- (void)setParticipatesInExternalSettingsModification:(BOOL)modification;
@end

@implementation _UISceneExternalSettingsModifierHostComponent

- (void)fetchSettingsModifiers
{
  v56 = *MEMORY[0x1E69E9840];
  if (self)
  {
    if ([self participatesInExternalSettingsModification])
    {
      if (![self participatesInExternalSettingsModification] || (objc_msgSend(self, "externalSettingsModifierEndpoint"), v2 = objc_claimAutoreleasedReturnValue(), v2, !v2))
      {
        v35 = MEMORY[0x1E696AEC0];
        hostScene = [self hostScene];
        identityToken = [hostScene identityToken];
        v38 = [v35 stringWithFormat:@"Scene %@ can not participate in external settings modification with no endpoint specified", identityToken];

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v39 = NSStringFromSelector(sel_isEligibleForEndpointManagement);
          v40 = objc_opt_class();
          v41 = NSStringFromClass(v40);
          *buf = 138544642;
          v45 = v39;
          v46 = 2114;
          v47 = v41;
          v48 = 2048;
          selfCopy2 = self;
          v50 = 2114;
          v51 = @"_UISceneExternalSettingsModifierHostComponent.m";
          v52 = 1024;
          v53 = 85;
          v54 = 2114;
          v55 = v38;
          _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        [v38 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x188DC0214);
      }
    }

    if ([self participatesInExternalSettingsModification])
    {
      externalSettingsModifierEndpoint = [self externalSettingsModifierEndpoint];
      if (externalSettingsModifierEndpoint)
      {
        v4 = externalSettingsModifierEndpoint;
        hostScene2 = [self hostScene];
        ui_activationStateComponent = [hostScene2 ui_activationStateComponent];

        if (ui_activationStateComponent && (*(self + 40) & 1) == 0)
        {
          if (!*(self + 24))
          {
            v7 = objc_alloc(MEMORY[0x1E69DEC20]);
            externalSettingsModifierEndpoint2 = [self externalSettingsModifierEndpoint];
            v9 = [v7 initWithServerEndpoint:externalSettingsModifierEndpoint2];

            v10 = *(self + 24);
            *(self + 24) = v9;
          }

          hostScene3 = [self hostScene];
          ui_activationStateComponent2 = [hostScene3 ui_activationStateComponent];
          v13 = [ui_activationStateComponent2 activationSuppressionAssertionForReason:@"querying endpoint for settings modification"];

          hostScene4 = [self hostScene];
          definition = [hostScene4 definition];
          clientIdentity = [definition clientIdentity];
          processIdentity = [clientIdentity processIdentity];

          if (!processIdentity)
          {
            v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"clientIdentity"];
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v32 = NSStringFromSelector(sel_fetchSettingsModifiers);
              v33 = objc_opt_class();
              v34 = NSStringFromClass(v33);
              *buf = 138544642;
              v45 = v32;
              v46 = 2114;
              v47 = v34;
              v48 = 2048;
              selfCopy2 = self;
              v50 = 2114;
              v51 = @"_UISceneExternalSettingsModifierHostComponent.m";
              v52 = 1024;
              v53 = 97;
              v54 = 2114;
              v55 = v31;
              _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
            }

            [v31 UTF8String];
            _bs_set_crash_log_message();
            __break(0);
            JUMPOUT(0x188DC00F8);
          }

          v18 = *(__UILogGetCategoryCachedImpl("SceneHostingExternalSettingsModifiers", &fetchSettingsModifiers___s_category) + 8);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = MEMORY[0x1E696AEC0];
            selfCopy3 = self;
            v21 = v18;
            v22 = objc_opt_class();
            v23 = NSStringFromClass(v22);
            selfCopy3 = [v19 stringWithFormat:@"<%@: %p>", v23, selfCopy3];

            v25 = selfCopy3;
            hostScene5 = [selfCopy3 hostScene];
            identityToken2 = [hostScene5 identityToken];
            externalSettingsModifierEndpoint3 = [selfCopy3 externalSettingsModifierEndpoint];
            *buf = 138543874;
            v45 = selfCopy3;
            v46 = 2114;
            v47 = identityToken2;
            v48 = 2114;
            selfCopy2 = externalSettingsModifierEndpoint3;
            _os_log_impl(&dword_188A29000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@: Requesting settings modifiers for %{public}@ from endpoint %{public}@", buf, 0x20u);
          }

          v29 = *(self + 24);
          v42[0] = MEMORY[0x1E69E9820];
          v42[1] = 3221225472;
          v42[2] = __71___UISceneExternalSettingsModifierHostComponent_fetchSettingsModifiers__block_invoke;
          v42[3] = &unk_1E7122E80;
          v42[4] = self;
          v43 = v13;
          v30 = v13;
          [v29 requestSettingsModifiersForProcessIdentity:processIdentity withCompletion:v42];
          *(self + 40) = 1;
        }
      }

      else
      {
      }
    }
  }
}

- (BOOL)participatesInExternalSettingsModification
{
  settings = [(_UISceneInterfaceProtectionClientComponent *)self settings];
  participatesInExternalSettingsModification = [settings participatesInExternalSettingsModification];

  return participatesInExternalSettingsModification;
}

- (BSServiceConnectionEndpoint)externalSettingsModifierEndpoint
{
  settings = [(_UISceneInterfaceProtectionClientComponent *)self settings];
  externalSettingsModifierEndpoint = [settings externalSettingsModifierEndpoint];

  return externalSettingsModifierEndpoint;
}

- (void)setExternalSettingsModifierEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __85___UISceneExternalSettingsModifierHostComponent_setExternalSettingsModifierEndpoint___block_invoke;
  v6[3] = &unk_1E7122E38;
  v7 = endpointCopy;
  v5 = endpointCopy;
  [(_UISceneInterfaceProtectionHostComponent *)self updateSettings:v6];
}

- (void)setParticipatesInExternalSettingsModification:(BOOL)modification
{
  v26 = *MEMORY[0x1E69E9840];
  hostScene = [(FBSSceneComponent *)self hostScene];
  isActive = [hostScene isActive];

  if (isActive)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Modifying participatesInExternalSettingsModification while the scene is active is not allowed"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = NSStringFromSelector(a2);
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      *buf = 138544642;
      v15 = v9;
      v16 = 2114;
      v17 = v11;
      v18 = 2048;
      selfCopy = self;
      v20 = 2114;
      v21 = @"_UISceneExternalSettingsModifierHostComponent.m";
      v22 = 1024;
      v23 = 47;
      v24 = 2114;
      v25 = v8;
      _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v8 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18A01085CLL);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __95___UISceneExternalSettingsModifierHostComponent_setParticipatesInExternalSettingsModification___block_invoke;
  v12[3] = &__block_descriptor_33_e75_v16__0__FBSMutableSceneSettings__UISceneExternalSettingsModifierSettings__8l;
  modificationCopy = modification;
  [(_UISceneInterfaceProtectionHostComponent *)self updateSettings:v12];
}

- (void)scene:(id)scene willUpdateSettings:(id)settings
{
  v21 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  if ([(NSSet *)self->_settingsModifiers count])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = self->_settingsModifiers;
    v7 = [(NSSet *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        v10 = 0;
        do
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v16 + 1) + 8 * v10);
          settings = [settingsCopy settings];
          settingsDiff = [settingsCopy settingsDiff];
          v14 = [v11 updaterForProposedSettings:settings withSettingsDiff:settingsDiff];

          if (v14)
          {
            mutableSettings = [settingsCopy mutableSettings];
            (v14)[2](v14, mutableSettings);
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [(NSSet *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }
  }
}

- (void)sceneWillActivate:(id)activate
{
  v25 = *MEMORY[0x1E69E9840];
  if (self && [(NSSet *)self->_settingsModifiers count])
  {
    v4 = MEMORY[0x1E699FC30];
    hostScene = [(FBSSceneComponent *)self hostScene];
    settings = [hostScene settings];
    v7 = [v4 diffFromSettings:0 toSettings:settings];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = self->_settingsModifiers;
    v9 = [(NSSet *)v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      do
      {
        v12 = 0;
        do
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v20 + 1) + 8 * v12);
          hostScene2 = [(FBSSceneComponent *)self hostScene];
          settings2 = [hostScene2 settings];
          v16 = [v13 updaterForProposedSettings:settings2 withSettingsDiff:v7];

          if (v16)
          {
            hostScene3 = [(FBSSceneComponent *)self hostScene];
            v18[0] = MEMORY[0x1E69E9820];
            v18[1] = 3221225472;
            v18[2] = __85___UISceneExternalSettingsModifierHostComponent_applyModifiersToCurrentSceneSettings__block_invoke;
            v18[3] = &unk_1E7122EA8;
            v19 = v16;
            [hostScene3 updateSettings:v18];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [(NSSet *)v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v10);
    }
  }
}

@end