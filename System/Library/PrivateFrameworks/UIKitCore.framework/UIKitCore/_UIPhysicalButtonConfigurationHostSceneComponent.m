@interface _UIPhysicalButtonConfigurationHostSceneComponent
- (NSString)debugDescription;
- (void)_evaluateProxyInteractionEligibilityForFinalAttempt:(uint64_t)a1;
- (void)_installProxyInteractionIfPossibleForHostingController:(uint64_t)a1;
- (void)_physicalButtonInteraction:(id)a3 handleAction:(id)a4 withActiveActions:(id)a5;
- (void)_physicalButtonProxyInteraction:(id)a3 didReceiveBSAction:(id)a4;
- (void)appendDescriptionToStream:(id)a3;
- (void)scene:(id)a3 didUpdateClientSettings:(id)a4;
- (void)setScene:(id)a3;
@end

@implementation _UIPhysicalButtonConfigurationHostSceneComponent

- (void)setScene:(id)a3
{
  v4.receiver = self;
  v4.super_class = _UIPhysicalButtonConfigurationHostSceneComponent;
  [(FBSSceneComponent *)&v4 setScene:a3];
  *&self->_flags |= 3u;
}

- (void)_installProxyInteractionIfPossibleForHostingController:(uint64_t)a1
{
  v3 = a2;
  if (a1 && v3 && (*(a1 + 24) & 2) != 0)
  {
    v6 = v3;
    v4 = [v3 sceneView];
    v5 = v4;
    if (v4 && *(a1 + 40))
    {
      [v4 addInteraction:?];
    }

    v3 = v6;
  }
}

- (void)_evaluateProxyInteractionEligibilityForFinalAttempt:(uint64_t)a1
{
  if (a1 && (*(a1 + 24) & 1) != 0)
  {
    v4 = [a1 hostScene];
    v8 = [v4 uiSceneHostingController];

    if (v8 || a2)
    {
      *(a1 + 24) &= ~1u;
      *(a1 + 24) = *(a1 + 24) & 0xFD | (2 * (v8 != 0));
    }

    [(_UIPhysicalButtonConfigurationHostSceneComponent *)a1 _installProxyInteractionIfPossibleForHostingController:v8];
    if ((*(a1 + 24) & 2) == 0)
    {
      v5 = [*(a1 + 40) view];
      [v5 removeInteraction:*(a1 + 40)];

      v6 = *(a1 + 40);
      *(a1 + 40) = 0;

      v7 = *(a1 + 32);
      *(a1 + 32) = 0;
    }
  }
}

- (void)scene:(id)a3 didUpdateClientSettings:(id)a4
{
  v49 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if ((*&self->_flags & 2) != 0)
  {
    v9 = [v7 settingsDiff];
    v10 = [v9 containsProperty:sel_physicalButtonConfigurations];

    if (v10)
    {
      [(_UIPhysicalButtonConfigurationHostSceneComponent *)self _evaluateProxyInteractionEligibilityForFinalAttempt:?];
      v11 = [v8 settings];
      v12 = [v11 physicalButtonConfigurations];

      v13 = self->_clientPhysicalButtonConfigurations;
      v14 = v12;
      v15 = v14;
      if (v13 == v14)
      {
        v16 = 1;
      }

      else
      {
        v16 = 0;
        if (v14 && v13)
        {
          v16 = [(_UIPhysicalButtonConfigurationSet *)v13 isEqual:v14];
        }
      }

      v17 = *(__UILogGetCategoryCachedImpl("PhysicalButtonInteraction", &_MergedGlobals_3_0) + 8);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = MEMORY[0x1E696AEC0];
        v19 = self;
        v20 = v17;
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        v23 = [v18 stringWithFormat:@"<%@: %p>", v22, v19];

        v24 = v23;
        v25 = [(_UIPhysicalButtonConfigurationSet *)v15 succinctDescription];
        *buf = 138543874;
        v42 = v23;
        v43 = 1026;
        v44 = v16 ^ 1;
        v45 = 2114;
        *v46 = v25;
        _os_log_impl(&dword_188A29000, v20, OS_LOG_TYPE_DEFAULT, "Received resolved configurations update from client: self: %{public}@; didChange: %{public}d; configurations: %{public}@", buf, 0x1Cu);
      }

      if (v16)
      {
        goto LABEL_26;
      }

      v26 = self->_clientPhysicalButtonConfigurations;
      objc_storeStrong(&self->_clientPhysicalButtonConfigurations, v12);
      v27 = _UIPBIProxyOwnerActionsForState(self->_proxyPhysicalButtonInteraction, v26, self->_clientPhysicalButtonConfigurations);
      v28 = *(__UILogGetCategoryCachedImpl("PhysicalButtonInteraction", &qword_1ED499FA8) + 8);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = MEMORY[0x1E696AEC0];
        v30 = self;
        log = v28;
        v31 = objc_opt_class();
        NSStringFromClass(v31);
        v33 = v32 = v26;
        v34 = [v29 stringWithFormat:@"<%@: %p>", v33, v30];

        v26 = v32;
        *buf = 138544386;
        v42 = v34;
        v43 = 1026;
        v44 = v27 & 1;
        v45 = 1026;
        *v46 = HIBYTE(v27);
        *&v46[4] = 1026;
        *&v46[6] = HIWORD(v27) & 1;
        v47 = 1026;
        v48 = (v27 >> 8) & 1;
        _os_log_impl(&dword_188A29000, log, OS_LOG_TYPE_DEFAULT, "Actions for resolved configurations update from client: %{public}@; shouldCreate: %{public}d; shouldDisable: %{public}d; shouldEnable: %{public}d; shouldUpdate: %{public}d", buf, 0x24u);

        if ((v27 & 0x1000000) == 0)
        {
LABEL_13:
          if (v27)
          {
            goto LABEL_18;
          }

LABEL_17:
          if ((v27 & 0x100) == 0)
          {
LABEL_23:
            if ((v27 & 0x10000) != 0)
            {
              [(_UIPhysicalButtonInteraction *)self->_proxyPhysicalButtonInteraction _setEnabled:1];
            }

LABEL_26:
            goto LABEL_27;
          }

LABEL_18:
          v35 = [(_UIPhysicalButtonConfigurationSet *)&self->_clientPhysicalButtonConfigurations->super.isa _nsSetRepresentation];
          if (v27)
          {
            v36 = [[_UIPhysicalButtonProxyInteraction alloc] initWithConfigurations:v35 proxyDelegate:self];
            proxyPhysicalButtonInteraction = self->_proxyPhysicalButtonInteraction;
            self->_proxyPhysicalButtonInteraction = v36;

            v38 = [(FBSSceneComponent *)self hostScene];
            v39 = [v38 uiSceneHostingController];
            [(_UIPhysicalButtonConfigurationHostSceneComponent *)self _installProxyInteractionIfPossibleForHostingController:v39];
          }

          else if ((v27 & 0x100) != 0)
          {
            [(_UIPhysicalButtonInteraction *)self->_proxyPhysicalButtonInteraction _setConfigurations:v35];
          }

          goto LABEL_23;
        }
      }

      else if ((v27 & 0x1000000) == 0)
      {
        goto LABEL_13;
      }

      [(_UIPhysicalButtonInteraction *)self->_proxyPhysicalButtonInteraction _setEnabled:0];
      if (v27)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

LABEL_27:
}

- (void)_physicalButtonInteraction:(id)a3 handleAction:(id)a4 withActiveActions:(id)a5
{
  v8 = MEMORY[0x1E696AAA8];
  v9 = a4;
  v10 = a3;
  v11 = [v8 currentHandler];
  [v11 handleFailureInMethod:a2 object:self file:@"_UIPhysicalButtonConfigurationHostSceneComponent.m" lineNumber:184 description:{@"Unexpected request to handle a non-proxy action: self: %@; interaction: %@; action: %@", self, v10, v9}];
}

- (void)_physicalButtonProxyInteraction:(id)a3 didReceiveBSAction:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("PhysicalButtonInteraction", &_physicalButtonProxyInteraction_didReceiveBSAction____s_category);
  if (*CategoryCachedImpl)
  {
    v11 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      if (self)
      {
        v12 = MEMORY[0x1E696AEC0];
        v13 = self;
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        v16 = [v12 stringWithFormat:@"<%@: %p>", v15, v13];
      }

      else
      {
        v16 = @"(nil)";
      }

      v17 = v16;
      v18 = [v6 succinctDescription];
      *buf = 138412802;
      v20 = v16;
      v21 = 2112;
      v22 = v18;
      v23 = 2112;
      v24 = v7;
      _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "Received proxy physicalButtonBSAction from interaction: self: %@; proxyInteraction: %@; physicalButtonBSAction: %@", buf, 0x20u);
    }
  }

  v9 = [(FBSSceneComponent *)self hostScene];
  v10 = [MEMORY[0x1E695DFD8] setWithObject:v7];
  [v9 sendActions:v10];
}

- (void)appendDescriptionToStream:(id)a3
{
  v4 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __78___UIPhysicalButtonConfigurationHostSceneComponent_appendDescriptionToStream___block_invoke;
  v9[3] = &unk_1E70F35B8;
  v5 = v4;
  v10 = v5;
  v11 = self;
  [v5 appendProem:self block:v9];
  if ([v5 hasDebugStyle])
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __78___UIPhysicalButtonConfigurationHostSceneComponent_appendDescriptionToStream___block_invoke_2;
    v6[3] = &unk_1E70F35B8;
    v7 = v5;
    v8 = self;
    [v7 appendBodySectionWithName:0 block:v6];
  }
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E698E688];
  v4 = [MEMORY[0x1E698E690] debugStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:v4];

  return v5;
}

@end