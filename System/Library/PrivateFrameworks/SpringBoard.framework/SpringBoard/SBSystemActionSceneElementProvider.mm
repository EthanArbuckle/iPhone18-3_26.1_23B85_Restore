@interface SBSystemActionSceneElementProvider
+ (id)previewContextForSystemAction:(uint64_t)action;
+ (uint64_t)providesSceneElementForSystemAction:(uint64_t)action;
+ (void)_getClientIdentifier:(void *)identifier elementIdentifier:(void *)elementIdentifier forSystemAction:(void *)action withContext:;
- (UIView)leadingView;
- (UIView)trailingView;
- (id)initWithSystemAction:(void *)action systemApertureController:(void *)controller context:;
- (id)previewForReason:(uint64_t)reason;
- (void)_configureIdentificationWithContext:(uint64_t)context;
- (void)_configurePlaceholderContentProviders;
- (void)_deactivateAndRemoveSceneElementIfNecessaryWithReason:(uint64_t)reason;
- (void)noteSceneClientWantsControlOfElementWithAssertionTransferBlock:(id)block;
- (void)preferredContentSizeDidInvalidateForContentViewProvider:(id)provider;
- (void)providesElementForSystemAction:(void *)action withContext:;
@end

@implementation SBSystemActionSceneElementProvider

+ (uint64_t)providesSceneElementForSystemAction:(uint64_t)action
{
  v2 = a2;
  objc_opt_self();
  configuredAction = [v2 configuredAction];

  sectionIdentifier = [configuredAction sectionIdentifier];

  if ([sectionIdentifier isEqualToString:@"VoiceMemos"] & 1) != 0 || (objc_msgSend(sectionIdentifier, "isEqualToString:", @"Translate") & 1) != 0 || (objc_msgSend(sectionIdentifier, "isEqualToString:", @"MusicRecognition"))
  {
    v5 = 1;
  }

  else
  {
    v5 = [sectionIdentifier isEqualToString:@"Shortcuts"];
  }

  return v5;
}

+ (id)previewContextForSystemAction:(uint64_t)action
{
  v2 = a2;
  objc_opt_self();
  v3 = +[SBSystemApertureSceneElement activeElements];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __68__SBSystemActionSceneElementProvider_previewContextForSystemAction___block_invoke;
  v9[3] = &unk_2783AFCA8;
  v10 = v2;
  v4 = v2;
  v5 = [v3 bs_firstObjectPassingTest:v9];

  userInfo = [v5 userInfo];
  v7 = [userInfo objectForKey:@"SBSystemActionSceneElementPreviewContext"];

  return v7;
}

uint64_t __68__SBSystemActionSceneElementProvider_previewContextForSystemAction___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 userInfo];
  v4 = [v3 objectForKey:@"SBSystemActionSceneElementSystemAction"];

  v5 = [v4 isEqual:*(a1 + 32)];
  return v5;
}

- (id)initWithSystemAction:(void *)action systemApertureController:(void *)controller context:
{
  v8 = a2;
  actionCopy = action;
  controllerCopy = controller;
  if (self)
  {
    if (!v8)
    {
      [SBSystemActionSceneElementProvider initWithSystemAction:? systemApertureController:? context:?];
    }

    if (!actionCopy)
    {
      [SBSystemActionSceneElementProvider initWithSystemAction:? systemApertureController:? context:?];
    }

    v13.receiver = self;
    v13.super_class = SBSystemActionSceneElementProvider;
    v11 = objc_msgSendSuper2(&v13, sel_init);
    self = v11;
    if (v11)
    {
      objc_storeStrong(v11 + 10, a2);
      objc_storeWeak(self + 1, actionCopy);
      objc_storeStrong(self + 4, controller);
      [(SBSystemActionSceneElementProvider *)self _configureIdentificationWithContext:controllerCopy];
      [(SBSystemActionSceneElementProvider *)self _configurePlaceholderContentProviders];
    }
  }

  return self;
}

- (void)_configurePlaceholderContentProviders
{
  v5 = [objc_alloc(MEMORY[0x277D67E10]) initWithView:self];
  objc_storeStrong((a2 + 16), v5);
  trailingApertureView = [a3 trailingApertureView];
  v7 = trailingApertureView;
  if (trailingApertureView)
  {
    v8 = trailingApertureView;
  }

  else
  {
    v9 = objc_alloc(MEMORY[0x277D75D18]);
    v8 = [v9 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  }

  v10 = v8;

  v11 = [objc_alloc(MEMORY[0x277D67E10]) initWithView:v10];
  v12 = *(a2 + 24);
  *(a2 + 24) = v11;
  v13 = v11;

  keyColor = [self keyColor];
  v15 = *(a2 + 56);
  *(a2 + 56) = keyColor;
}

+ (void)_getClientIdentifier:(void *)identifier elementIdentifier:(void *)elementIdentifier forSystemAction:(void *)action withContext:
{
  actionCopy = action;
  elementIdentifierCopy = elementIdentifier;
  objc_opt_self();
  configuredAction = [elementIdentifierCopy configuredAction];

  sectionIdentifier = [configuredAction sectionIdentifier];
  clientIdentifier = [actionCopy clientIdentifier];
  v12 = clientIdentifier;
  if (clientIdentifier)
  {
    associatedBundleIdentifier = clientIdentifier;
  }

  else
  {
    associatedBundleIdentifier = [configuredAction associatedBundleIdentifier];
  }

  v14 = associatedBundleIdentifier;

  elementIdentifier = [actionCopy elementIdentifier];
  v16 = elementIdentifier;
  v17 = *MEMORY[0x277D67FF0];
  if (elementIdentifier)
  {
    v17 = elementIdentifier;
  }

  v18 = v17;

  if ([sectionIdentifier isEqualToString:@"VoiceMemos"])
  {
    v19 = *MEMORY[0x277D68040];

    v18 = v19;
  }

  v20 = v14;
  *a2 = v14;
  v21 = v18;
  *identifier = v18;
}

- (id)previewForReason:(uint64_t)reason
{
  v3 = a2;
  if (reason)
  {
    v4 = +[SBSystemApertureSceneElement activeElements];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __55__SBSystemActionSceneElementProvider_previewForReason___block_invoke;
    v26[3] = &unk_2783AFCA8;
    v26[4] = reason;
    v5 = [v4 bs_firstObjectPassingTest:v26];

    objc_initWeak(&location, reason);
    if (!v5)
    {
      WeakRetained = objc_loadWeakRetained((reason + 8));
      v7 = [SBSystemApertureSceneElement alloc];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __55__SBSystemActionSceneElementProvider_previewForReason___block_invoke_2;
      v21[3] = &unk_2783AFD20;
      objc_copyWeak(&v24, &location);
      v8 = WeakRetained;
      v22 = v8;
      reasonCopy = reason;
      v5 = [(SBSystemApertureSceneElement *)v7 initWithScene:0 placeholderContentProvider:reason statusBarBackgroundActivitiesSuppresser:v8 readyForPresentationHandler:v21];
      objc_storeStrong((reason + 88), v5);

      objc_destroyWeak(&v24);
    }

    if (![(SBSystemApertureSceneElement *)v5 isActivated])
    {
      [(SBSystemApertureSceneElement *)v5 activate];
    }

    userInfo = [(SBSystemApertureSceneElement *)v5 userInfo];
    [userInfo setObject:*(reason + 80) forKey:@"SBSystemActionSceneElementSystemAction"];
    v10 = *(reason + 32);
    if (v10)
    {
      [userInfo setObject:v10 forKey:@"SBSystemActionSceneElementPreviewContext"];
    }

    v11 = [userInfo objectForKey:@"SBSystemActionSceneElementCompoundPreviewAssertion"];
    if (!v11)
    {
      objc_initWeak(&from, v5);
      v12 = [SBSystemActionCompoundPreviewAssertion alloc];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __55__SBSystemActionSceneElementProvider_previewForReason___block_invoke_5;
      v17[3] = &unk_2783AFD48;
      objc_copyWeak(&v18, &from);
      objc_copyWeak(&v19, &location);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __55__SBSystemActionSceneElementProvider_previewForReason___block_invoke_6;
      v15[3] = &unk_2783AFD70;
      objc_copyWeak(&v16, &from);
      v11 = [(SBSystemActionCompoundPreviewAssertion *)v12 initWithIdentifier:v17 stateDidChangeBlock:v15 eventHandlingBlock:?];
      [userInfo setObject:v11 forKey:@"SBSystemActionSceneElementCompoundPreviewAssertion"];
      objc_destroyWeak(&v16);
      objc_destroyWeak(&v19);
      objc_destroyWeak(&v18);
      objc_destroyWeak(&from);
    }

    v13 = [(SBSystemActionCompoundPreviewAssertion *)v11 acquireForReason:v3];

    objc_destroyWeak(&location);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t __55__SBSystemActionSceneElementProvider_previewForReason___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 clientIdentifier];
  v5 = [*(*(a1 + 32) + 40) clientIdentifier];
  if ([v4 isEqualToString:v5])
  {
    v6 = [v3 elementIdentifier];
    v7 = [*(*(a1 + 32) + 40) elementIdentifier];
    v8 = [v6 isEqualToString:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __55__SBSystemActionSceneElementProvider_previewForReason___block_invoke_2(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained && a3)
  {
    v7 = [*(a1 + 32) registerElement:v5];
    v8 = WeakRetained[6];
    WeakRetained[6] = v7;

    v9 = WeakRetained[6];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __55__SBSystemActionSceneElementProvider_previewForReason___block_invoke_3;
    v10[3] = &unk_2783AFCF8;
    v10[4] = *(a1 + 40);
    [v9 addInvalidationBlock:v10];
  }
}

void __55__SBSystemActionSceneElementProvider_previewForReason___block_invoke_3(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 88);
  if ([v2 isActivated] && (objc_msgSend(v2, "isDeactivating") & 1) == 0)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __55__SBSystemActionSceneElementProvider_previewForReason___block_invoke_4;
    v5[3] = &unk_2783AFCD0;
    v5[4] = *(a1 + 32);
    [v2 deactivateWhenRemovedWithHandler:v5];
  }

  else
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 48);
    *(v3 + 48) = 0;
  }
}

void __55__SBSystemActionSceneElementProvider_previewForReason___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 48);
  *(v1 + 48) = 0;
}

void __55__SBSystemActionSceneElementProvider_previewForReason___block_invoke_5(uint64_t a1, uint64_t a2)
{
  v3 = [(SBSystemActionCompoundPreviewAssertion *)a2 state];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setPreviewing:v3 & 1];
  [WeakRetained setUrgent:HIBYTE(v3) & 1];
  [WeakRetained setExpanding:(v3 >> 8) & 1];
  [WeakRetained setProminent:HIWORD(v3) & 1];
  if ((v3 & 1) == 0)
  {
    v4 = objc_loadWeakRetained((a1 + 40));
    [(SBSystemActionSceneElementProvider *)v4 _deactivateAndRemoveSceneElementIfNecessaryWithReason:?];
  }
}

void __55__SBSystemActionSceneElementProvider_previewForReason___block_invoke_6(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained pop];
  }
}

- (UIView)leadingView
{
  leadingView = self->_leadingView;
  if (!leadingView)
  {
    v4 = self->_leadingPlaceholderContentViewProvider;
    [(SBUISystemApertureContentViewProviding *)v4 setContentContainer:self];
    providedView = [(SBUISystemApertureContentViewProviding *)v4 providedView];
    v6 = self->_leadingView;
    self->_leadingView = providedView;

    leadingView = self->_leadingView;
  }

  return leadingView;
}

- (UIView)trailingView
{
  trailingView = self->_trailingView;
  if (!trailingView)
  {
    v4 = self->_trailingPlaceholderContentViewProvider;
    [(SBUISystemApertureContentViewProviding *)v4 setContentContainer:self];
    providedView = [(SBUISystemApertureContentViewProviding *)v4 providedView];
    v6 = self->_trailingView;
    self->_trailingView = providedView;

    trailingView = self->_trailingView;
  }

  return trailingView;
}

- (void)noteSceneClientWantsControlOfElementWithAssertionTransferBlock:(id)block
{
  elementAssertion = self->_elementAssertion;
  self->_elementAssertion = 0;
  v5 = elementAssertion;
  blockCopy = block;

  blockCopy[2](blockCopy, v5);
}

- (void)_configureIdentificationWithContext:(uint64_t)context
{
  if (context)
  {
    v8 = 0;
    v9 = 0;
    [SBSystemActionSceneElementProvider _getClientIdentifier:&v8 elementIdentifier:*(context + 80) forSystemAction:a2 withContext:?];
    v3 = v9;
    v4 = v8;
    v7 = v3;
    v5 = [[SBSAElementIdentification alloc] initWithClientIdentifier:v7 elementIdentifier:v4];
    v6 = *(context + 40);
    *(context + 40) = v5;
  }
}

- (void)providesElementForSystemAction:(void *)action withContext:
{
  selfCopy = self;
  if (self)
  {
    v9 = 0;
    v10 = 0;
    [SBSystemActionSceneElementProvider _getClientIdentifier:&v9 elementIdentifier:a2 forSystemAction:action withContext:?];
    v4 = v10;
    v5 = v9;
    clientIdentifier = [selfCopy clientIdentifier];
    if ([clientIdentifier isEqualToString:v4])
    {
      elementIdentifier = [selfCopy elementIdentifier];
      selfCopy = [elementIdentifier isEqualToString:v5];
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (void)_deactivateAndRemoveSceneElementIfNecessaryWithReason:(uint64_t)reason
{
  v5 = a2;
  if (reason)
  {
    v3 = *(reason + 88);
    v4 = *(reason + 48);
    if (v4)
    {
      if ([v3 isActivated] && (objc_msgSend(v3, "isDeactivating") & 1) == 0)
      {
        [v3 deactivateWhenRemovedWithHandler:0];
      }

      if ([v4 isValid])
      {
        [v4 invalidateWithReason:v5];
      }
    }
  }
}

- (void)preferredContentSizeDidInvalidateForContentViewProvider:(id)provider
{
  if (self)
  {
    sceneElement = self->_sceneElement;
  }

  else
  {
    sceneElement = 0;
  }

  v4 = sceneElement;
  layoutHost = [(SBSystemApertureSceneElement *)v4 layoutHost];
  [layoutHost preferredEdgeOutsetsDidInvalidateForLayoutSpecifier:v4];
}

- (void)initWithSystemAction:(const char *)a1 systemApertureController:context:.cold.1(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"systemApertureController != ((void *)0)"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    v8 = @"SBSystemActionSceneElementProvider.m";
    v9 = 1024;
    v10 = 72;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithSystemAction:(const char *)a1 systemApertureController:context:.cold.2(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"systemAction != ((void *)0)"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    v8 = @"SBSystemActionSceneElementProvider.m";
    v9 = 1024;
    v10 = 71;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end