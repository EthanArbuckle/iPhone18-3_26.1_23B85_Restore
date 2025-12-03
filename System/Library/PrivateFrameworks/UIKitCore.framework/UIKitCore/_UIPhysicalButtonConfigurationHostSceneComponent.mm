@interface _UIPhysicalButtonConfigurationHostSceneComponent
- (NSString)debugDescription;
- (void)_evaluateProxyInteractionEligibilityForFinalAttempt:(uint64_t)attempt;
- (void)_installProxyInteractionIfPossibleForHostingController:(uint64_t)controller;
- (void)_physicalButtonInteraction:(id)interaction handleAction:(id)action withActiveActions:(id)actions;
- (void)_physicalButtonProxyInteraction:(id)interaction didReceiveBSAction:(id)action;
- (void)appendDescriptionToStream:(id)stream;
- (void)scene:(id)scene didUpdateClientSettings:(id)settings;
- (void)setScene:(id)scene;
@end

@implementation _UIPhysicalButtonConfigurationHostSceneComponent

- (void)setScene:(id)scene
{
  v4.receiver = self;
  v4.super_class = _UIPhysicalButtonConfigurationHostSceneComponent;
  [(FBSSceneComponent *)&v4 setScene:scene];
  *&self->_flags |= 3u;
}

- (void)_installProxyInteractionIfPossibleForHostingController:(uint64_t)controller
{
  v3 = a2;
  if (controller && v3 && (*(controller + 24) & 2) != 0)
  {
    v6 = v3;
    sceneView = [v3 sceneView];
    v5 = sceneView;
    if (sceneView && *(controller + 40))
    {
      [sceneView addInteraction:?];
    }

    v3 = v6;
  }
}

- (void)_evaluateProxyInteractionEligibilityForFinalAttempt:(uint64_t)attempt
{
  if (attempt && (*(attempt + 24) & 1) != 0)
  {
    hostScene = [attempt hostScene];
    uiSceneHostingController = [hostScene uiSceneHostingController];

    if (uiSceneHostingController || a2)
    {
      *(attempt + 24) &= ~1u;
      *(attempt + 24) = *(attempt + 24) & 0xFD | (2 * (uiSceneHostingController != 0));
    }

    [(_UIPhysicalButtonConfigurationHostSceneComponent *)attempt _installProxyInteractionIfPossibleForHostingController:uiSceneHostingController];
    if ((*(attempt + 24) & 2) == 0)
    {
      view = [*(attempt + 40) view];
      [view removeInteraction:*(attempt + 40)];

      v6 = *(attempt + 40);
      *(attempt + 40) = 0;

      v7 = *(attempt + 32);
      *(attempt + 32) = 0;
    }
  }
}

- (void)scene:(id)scene didUpdateClientSettings:(id)settings
{
  v49 = *MEMORY[0x1E69E9840];
  sceneCopy = scene;
  settingsCopy = settings;
  v8 = settingsCopy;
  if ((*&self->_flags & 2) != 0)
  {
    settingsDiff = [settingsCopy settingsDiff];
    v10 = [settingsDiff containsProperty:sel_physicalButtonConfigurations];

    if (v10)
    {
      [(_UIPhysicalButtonConfigurationHostSceneComponent *)self _evaluateProxyInteractionEligibilityForFinalAttempt:?];
      settings = [v8 settings];
      physicalButtonConfigurations = [settings physicalButtonConfigurations];

      v13 = self->_clientPhysicalButtonConfigurations;
      v14 = physicalButtonConfigurations;
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
        selfCopy = self;
        v20 = v17;
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        selfCopy = [v18 stringWithFormat:@"<%@: %p>", v22, selfCopy];

        v24 = selfCopy;
        succinctDescription = [(_UIPhysicalButtonConfigurationSet *)v15 succinctDescription];
        *buf = 138543874;
        v42 = selfCopy;
        v43 = 1026;
        v44 = v16 ^ 1;
        v45 = 2114;
        *v46 = succinctDescription;
        _os_log_impl(&dword_188A29000, v20, OS_LOG_TYPE_DEFAULT, "Received resolved configurations update from client: self: %{public}@; didChange: %{public}d; configurations: %{public}@", buf, 0x1Cu);
      }

      if (v16)
      {
        goto LABEL_26;
      }

      v26 = self->_clientPhysicalButtonConfigurations;
      objc_storeStrong(&self->_clientPhysicalButtonConfigurations, physicalButtonConfigurations);
      v27 = _UIPBIProxyOwnerActionsForState(self->_proxyPhysicalButtonInteraction, v26, self->_clientPhysicalButtonConfigurations);
      v28 = *(__UILogGetCategoryCachedImpl("PhysicalButtonInteraction", &qword_1ED499FA8) + 8);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = MEMORY[0x1E696AEC0];
        selfCopy2 = self;
        log = v28;
        v31 = objc_opt_class();
        NSStringFromClass(v31);
        v33 = v32 = v26;
        selfCopy2 = [v29 stringWithFormat:@"<%@: %p>", v33, selfCopy2];

        v26 = v32;
        *buf = 138544386;
        v42 = selfCopy2;
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
          _nsSetRepresentation = [(_UIPhysicalButtonConfigurationSet *)&self->_clientPhysicalButtonConfigurations->super.isa _nsSetRepresentation];
          if (v27)
          {
            v36 = [[_UIPhysicalButtonProxyInteraction alloc] initWithConfigurations:_nsSetRepresentation proxyDelegate:self];
            proxyPhysicalButtonInteraction = self->_proxyPhysicalButtonInteraction;
            self->_proxyPhysicalButtonInteraction = v36;

            hostScene = [(FBSSceneComponent *)self hostScene];
            uiSceneHostingController = [hostScene uiSceneHostingController];
            [(_UIPhysicalButtonConfigurationHostSceneComponent *)self _installProxyInteractionIfPossibleForHostingController:uiSceneHostingController];
          }

          else if ((v27 & 0x100) != 0)
          {
            [(_UIPhysicalButtonInteraction *)self->_proxyPhysicalButtonInteraction _setConfigurations:_nsSetRepresentation];
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

- (void)_physicalButtonInteraction:(id)interaction handleAction:(id)action withActiveActions:(id)actions
{
  v8 = MEMORY[0x1E696AAA8];
  actionCopy = action;
  interactionCopy = interaction;
  currentHandler = [v8 currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIPhysicalButtonConfigurationHostSceneComponent.m" lineNumber:184 description:{@"Unexpected request to handle a non-proxy action: self: %@; interaction: %@; action: %@", self, interactionCopy, actionCopy}];
}

- (void)_physicalButtonProxyInteraction:(id)interaction didReceiveBSAction:(id)action
{
  v25 = *MEMORY[0x1E69E9840];
  interactionCopy = interaction;
  actionCopy = action;
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("PhysicalButtonInteraction", &_physicalButtonProxyInteraction_didReceiveBSAction____s_category);
  if (*CategoryCachedImpl)
  {
    v11 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      if (self)
      {
        v12 = MEMORY[0x1E696AEC0];
        selfCopy = self;
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        selfCopy = [v12 stringWithFormat:@"<%@: %p>", v15, selfCopy];
      }

      else
      {
        selfCopy = @"(nil)";
      }

      v17 = selfCopy;
      succinctDescription = [interactionCopy succinctDescription];
      *buf = 138412802;
      v20 = selfCopy;
      v21 = 2112;
      v22 = succinctDescription;
      v23 = 2112;
      v24 = actionCopy;
      _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "Received proxy physicalButtonBSAction from interaction: self: %@; proxyInteraction: %@; physicalButtonBSAction: %@", buf, 0x20u);
    }
  }

  hostScene = [(FBSSceneComponent *)self hostScene];
  v10 = [MEMORY[0x1E695DFD8] setWithObject:actionCopy];
  [hostScene sendActions:v10];
}

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __78___UIPhysicalButtonConfigurationHostSceneComponent_appendDescriptionToStream___block_invoke;
  v9[3] = &unk_1E70F35B8;
  v5 = streamCopy;
  v10 = v5;
  selfCopy = self;
  [v5 appendProem:self block:v9];
  if ([v5 hasDebugStyle])
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __78___UIPhysicalButtonConfigurationHostSceneComponent_appendDescriptionToStream___block_invoke_2;
    v6[3] = &unk_1E70F35B8;
    v7 = v5;
    selfCopy2 = self;
    [v7 appendBodySectionWithName:0 block:v6];
  }
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E698E688];
  debugStyle = [MEMORY[0x1E698E690] debugStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:debugStyle];

  return v5;
}

@end