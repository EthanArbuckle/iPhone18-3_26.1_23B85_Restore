@interface _UISceneExternalSettingsModifierHostComponent
- (BOOL)participatesInExternalSettingsModification;
- (BSServiceConnectionEndpoint)externalSettingsModifierEndpoint;
- (void)fetchSettingsModifiers;
- (void)scene:(id)a3 willUpdateSettings:(id)a4;
- (void)sceneWillActivate:(id)a3;
- (void)setExternalSettingsModifierEndpoint:(id)a3;
- (void)setParticipatesInExternalSettingsModification:(BOOL)a3;
@end

@implementation _UISceneExternalSettingsModifierHostComponent

- (void)fetchSettingsModifiers
{
  v56 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if ([a1 participatesInExternalSettingsModification])
    {
      if (![a1 participatesInExternalSettingsModification] || (objc_msgSend(a1, "externalSettingsModifierEndpoint"), v2 = objc_claimAutoreleasedReturnValue(), v2, !v2))
      {
        v35 = MEMORY[0x1E696AEC0];
        v36 = [a1 hostScene];
        v37 = [v36 identityToken];
        v38 = [v35 stringWithFormat:@"Scene %@ can not participate in external settings modification with no endpoint specified", v37];

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
          v49 = a1;
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

    if ([a1 participatesInExternalSettingsModification])
    {
      v3 = [a1 externalSettingsModifierEndpoint];
      if (v3)
      {
        v4 = v3;
        v5 = [a1 hostScene];
        v6 = [v5 ui_activationStateComponent];

        if (v6 && (*(a1 + 40) & 1) == 0)
        {
          if (!*(a1 + 24))
          {
            v7 = objc_alloc(MEMORY[0x1E69DEC20]);
            v8 = [a1 externalSettingsModifierEndpoint];
            v9 = [v7 initWithServerEndpoint:v8];

            v10 = *(a1 + 24);
            *(a1 + 24) = v9;
          }

          v11 = [a1 hostScene];
          v12 = [v11 ui_activationStateComponent];
          v13 = [v12 activationSuppressionAssertionForReason:@"querying endpoint for settings modification"];

          v14 = [a1 hostScene];
          v15 = [v14 definition];
          v16 = [v15 clientIdentity];
          v17 = [v16 processIdentity];

          if (!v17)
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
              v49 = a1;
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
            v20 = a1;
            v21 = v18;
            v22 = objc_opt_class();
            v23 = NSStringFromClass(v22);
            v24 = [v19 stringWithFormat:@"<%@: %p>", v23, v20];

            v25 = v24;
            v26 = [v20 hostScene];
            v27 = [v26 identityToken];
            v28 = [v20 externalSettingsModifierEndpoint];
            *buf = 138543874;
            v45 = v24;
            v46 = 2114;
            v47 = v27;
            v48 = 2114;
            v49 = v28;
            _os_log_impl(&dword_188A29000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@: Requesting settings modifiers for %{public}@ from endpoint %{public}@", buf, 0x20u);
          }

          v29 = *(a1 + 24);
          v42[0] = MEMORY[0x1E69E9820];
          v42[1] = 3221225472;
          v42[2] = __71___UISceneExternalSettingsModifierHostComponent_fetchSettingsModifiers__block_invoke;
          v42[3] = &unk_1E7122E80;
          v42[4] = a1;
          v43 = v13;
          v30 = v13;
          [v29 requestSettingsModifiersForProcessIdentity:v17 withCompletion:v42];
          *(a1 + 40) = 1;
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
  v2 = [(_UISceneInterfaceProtectionClientComponent *)self settings];
  v3 = [v2 participatesInExternalSettingsModification];

  return v3;
}

- (BSServiceConnectionEndpoint)externalSettingsModifierEndpoint
{
  v2 = [(_UISceneInterfaceProtectionClientComponent *)self settings];
  v3 = [v2 externalSettingsModifierEndpoint];

  return v3;
}

- (void)setExternalSettingsModifierEndpoint:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __85___UISceneExternalSettingsModifierHostComponent_setExternalSettingsModifierEndpoint___block_invoke;
  v6[3] = &unk_1E7122E38;
  v7 = v4;
  v5 = v4;
  [(_UISceneInterfaceProtectionHostComponent *)self updateSettings:v6];
}

- (void)setParticipatesInExternalSettingsModification:(BOOL)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = [(FBSSceneComponent *)self hostScene];
  v7 = [v6 isActive];

  if (v7)
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
      v19 = self;
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
  v13 = a3;
  [(_UISceneInterfaceProtectionHostComponent *)self updateSettings:v12];
}

- (void)scene:(id)a3 willUpdateSettings:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a4;
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
          v12 = [v5 settings];
          v13 = [v5 settingsDiff];
          v14 = [v11 updaterForProposedSettings:v12 withSettingsDiff:v13];

          if (v14)
          {
            v15 = [v5 mutableSettings];
            (v14)[2](v14, v15);
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

- (void)sceneWillActivate:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  if (self && [(NSSet *)self->_settingsModifiers count])
  {
    v4 = MEMORY[0x1E699FC30];
    v5 = [(FBSSceneComponent *)self hostScene];
    v6 = [v5 settings];
    v7 = [v4 diffFromSettings:0 toSettings:v6];

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
          v14 = [(FBSSceneComponent *)self hostScene];
          v15 = [v14 settings];
          v16 = [v13 updaterForProposedSettings:v15 withSettingsDiff:v7];

          if (v16)
          {
            v17 = [(FBSSceneComponent *)self hostScene];
            v18[0] = MEMORY[0x1E69E9820];
            v18[1] = 3221225472;
            v18[2] = __85___UISceneExternalSettingsModifierHostComponent_applyModifiersToCurrentSceneSettings__block_invoke;
            v18[3] = &unk_1E7122EA8;
            v19 = v16;
            [v17 updateSettings:v18];
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