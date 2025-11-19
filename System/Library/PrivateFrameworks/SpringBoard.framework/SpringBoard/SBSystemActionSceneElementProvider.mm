@interface SBSystemActionSceneElementProvider
+ (id)previewContextForSystemAction:(uint64_t)a1;
+ (uint64_t)providesSceneElementForSystemAction:(uint64_t)a1;
+ (void)_getClientIdentifier:(void *)a3 elementIdentifier:(void *)a4 forSystemAction:(void *)a5 withContext:;
- (UIView)leadingView;
- (UIView)trailingView;
- (id)initWithSystemAction:(void *)a3 systemApertureController:(void *)a4 context:;
- (id)previewForReason:(uint64_t)a1;
- (void)_configureIdentificationWithContext:(uint64_t)a1;
- (void)_configurePlaceholderContentProviders;
- (void)_deactivateAndRemoveSceneElementIfNecessaryWithReason:(uint64_t)a1;
- (void)noteSceneClientWantsControlOfElementWithAssertionTransferBlock:(id)a3;
- (void)preferredContentSizeDidInvalidateForContentViewProvider:(id)a3;
- (void)providesElementForSystemAction:(void *)a3 withContext:;
@end

@implementation SBSystemActionSceneElementProvider

+ (uint64_t)providesSceneElementForSystemAction:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  v3 = [v2 configuredAction];

  v4 = [v3 sectionIdentifier];

  if ([v4 isEqualToString:@"VoiceMemos"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"Translate") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"MusicRecognition"))
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 isEqualToString:@"Shortcuts"];
  }

  return v5;
}

+ (id)previewContextForSystemAction:(uint64_t)a1
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

  v6 = [v5 userInfo];
  v7 = [v6 objectForKey:@"SBSystemActionSceneElementPreviewContext"];

  return v7;
}

uint64_t __68__SBSystemActionSceneElementProvider_previewContextForSystemAction___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 userInfo];
  v4 = [v3 objectForKey:@"SBSystemActionSceneElementSystemAction"];

  v5 = [v4 isEqual:*(a1 + 32)];
  return v5;
}

- (id)initWithSystemAction:(void *)a3 systemApertureController:(void *)a4 context:
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (a1)
  {
    if (!v8)
    {
      [SBSystemActionSceneElementProvider initWithSystemAction:? systemApertureController:? context:?];
    }

    if (!v9)
    {
      [SBSystemActionSceneElementProvider initWithSystemAction:? systemApertureController:? context:?];
    }

    v13.receiver = a1;
    v13.super_class = SBSystemActionSceneElementProvider;
    v11 = objc_msgSendSuper2(&v13, sel_init);
    a1 = v11;
    if (v11)
    {
      objc_storeStrong(v11 + 10, a2);
      objc_storeWeak(a1 + 1, v9);
      objc_storeStrong(a1 + 4, a4);
      [(SBSystemActionSceneElementProvider *)a1 _configureIdentificationWithContext:v10];
      [(SBSystemActionSceneElementProvider *)a1 _configurePlaceholderContentProviders];
    }
  }

  return a1;
}

- (void)_configurePlaceholderContentProviders
{
  v5 = [objc_alloc(MEMORY[0x277D67E10]) initWithView:a1];
  objc_storeStrong((a2 + 16), v5);
  v6 = [a3 trailingApertureView];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
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

  v14 = [a1 keyColor];
  v15 = *(a2 + 56);
  *(a2 + 56) = v14;
}

+ (void)_getClientIdentifier:(void *)a3 elementIdentifier:(void *)a4 forSystemAction:(void *)a5 withContext:
{
  v22 = a5;
  v8 = a4;
  objc_opt_self();
  v9 = [v8 configuredAction];

  v10 = [v9 sectionIdentifier];
  v11 = [v22 clientIdentifier];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = [v9 associatedBundleIdentifier];
  }

  v14 = v13;

  v15 = [v22 elementIdentifier];
  v16 = v15;
  v17 = *MEMORY[0x277D67FF0];
  if (v15)
  {
    v17 = v15;
  }

  v18 = v17;

  if ([v10 isEqualToString:@"VoiceMemos"])
  {
    v19 = *MEMORY[0x277D68040];

    v18 = v19;
  }

  v20 = v14;
  *a2 = v14;
  v21 = v18;
  *a3 = v18;
}

- (id)previewForReason:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = +[SBSystemApertureSceneElement activeElements];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __55__SBSystemActionSceneElementProvider_previewForReason___block_invoke;
    v26[3] = &unk_2783AFCA8;
    v26[4] = a1;
    v5 = [v4 bs_firstObjectPassingTest:v26];

    objc_initWeak(&location, a1);
    if (!v5)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 8));
      v7 = [SBSystemApertureSceneElement alloc];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __55__SBSystemActionSceneElementProvider_previewForReason___block_invoke_2;
      v21[3] = &unk_2783AFD20;
      objc_copyWeak(&v24, &location);
      v8 = WeakRetained;
      v22 = v8;
      v23 = a1;
      v5 = [(SBSystemApertureSceneElement *)v7 initWithScene:0 placeholderContentProvider:a1 statusBarBackgroundActivitiesSuppresser:v8 readyForPresentationHandler:v21];
      objc_storeStrong((a1 + 88), v5);

      objc_destroyWeak(&v24);
    }

    if (![(SBSystemApertureSceneElement *)v5 isActivated])
    {
      [(SBSystemApertureSceneElement *)v5 activate];
    }

    v9 = [(SBSystemApertureSceneElement *)v5 userInfo];
    [v9 setObject:*(a1 + 80) forKey:@"SBSystemActionSceneElementSystemAction"];
    v10 = *(a1 + 32);
    if (v10)
    {
      [v9 setObject:v10 forKey:@"SBSystemActionSceneElementPreviewContext"];
    }

    v11 = [v9 objectForKey:@"SBSystemActionSceneElementCompoundPreviewAssertion"];
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
      [v9 setObject:v11 forKey:@"SBSystemActionSceneElementCompoundPreviewAssertion"];
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
    v5 = [(SBUISystemApertureContentViewProviding *)v4 providedView];
    v6 = self->_leadingView;
    self->_leadingView = v5;

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
    v5 = [(SBUISystemApertureContentViewProviding *)v4 providedView];
    v6 = self->_trailingView;
    self->_trailingView = v5;

    trailingView = self->_trailingView;
  }

  return trailingView;
}

- (void)noteSceneClientWantsControlOfElementWithAssertionTransferBlock:(id)a3
{
  elementAssertion = self->_elementAssertion;
  self->_elementAssertion = 0;
  v5 = elementAssertion;
  v6 = a3;

  v6[2](v6, v5);
}

- (void)_configureIdentificationWithContext:(uint64_t)a1
{
  if (a1)
  {
    v8 = 0;
    v9 = 0;
    [SBSystemActionSceneElementProvider _getClientIdentifier:&v8 elementIdentifier:*(a1 + 80) forSystemAction:a2 withContext:?];
    v3 = v9;
    v4 = v8;
    v7 = v3;
    v5 = [[SBSAElementIdentification alloc] initWithClientIdentifier:v7 elementIdentifier:v4];
    v6 = *(a1 + 40);
    *(a1 + 40) = v5;
  }
}

- (void)providesElementForSystemAction:(void *)a3 withContext:
{
  v3 = a1;
  if (a1)
  {
    v9 = 0;
    v10 = 0;
    [SBSystemActionSceneElementProvider _getClientIdentifier:&v9 elementIdentifier:a2 forSystemAction:a3 withContext:?];
    v4 = v10;
    v5 = v9;
    v6 = [v3 clientIdentifier];
    if ([v6 isEqualToString:v4])
    {
      v7 = [v3 elementIdentifier];
      v3 = [v7 isEqualToString:v5];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (void)_deactivateAndRemoveSceneElementIfNecessaryWithReason:(uint64_t)a1
{
  v5 = a2;
  if (a1)
  {
    v3 = *(a1 + 88);
    v4 = *(a1 + 48);
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

- (void)preferredContentSizeDidInvalidateForContentViewProvider:(id)a3
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
  v5 = [(SBSystemApertureSceneElement *)v4 layoutHost];
  [v5 preferredEdgeOutsetsDidInvalidateForLayoutSpecifier:v4];
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