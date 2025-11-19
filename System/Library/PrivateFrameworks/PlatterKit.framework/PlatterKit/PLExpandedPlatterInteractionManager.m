@interface PLExpandedPlatterInteractionManager
+ (void)initialize;
- (BOOL)_contextMenuInteractionShouldAllowSwipeToDismiss:(id)a3;
- (BOOL)reachedForceThreshold;
- (PLExpandedPlatterInteractionHosting)presentingViewController;
- (PLExpandedPlatterInteractionManager)initWithPresentingViewController:(id)a3 delegate:(id)a4;
- (PLExpandedPlatterInteractionManagerDelegate)delegate;
- (id)_contextMenuConfigurationIdentifier;
- (id)_contextMenuInteraction:(id)a3 styleForMenuWithConfiguration:(id)a4;
- (id)_identifier;
- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 highlightPreviewForItemWithIdentifier:(id)a5;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (unint64_t)_activationMethodForContextMenuInteraction:(id)a3;
- (void)_contextMenuInteraction:(id)a3 shouldPresentWithCompletion:(id)a4;
- (void)_setPresentingViewControllerHighlighted:(BOOL)a3 animated:(BOOL)a4;
- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5;
- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5;
- (void)presentAtLocation:(CGPoint)a3 completion:(id)a4;
- (void)updateVisibleMenuWithBlock:(id)a3;
@end

@implementation PLExpandedPlatterInteractionManager

+ (void)initialize
{
  v3 = objc_opt_self();

  if (v3 == a1)
  {

    PLRegisterPlatterKitLogging();
  }
}

- (PLExpandedPlatterInteractionManager)initWithPresentingViewController:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v22.receiver = self;
  v22.super_class = PLExpandedPlatterInteractionManager;
  v8 = [(PLExpandedPlatterInteractionManager *)&v22 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_presentingViewController, v6);
    objc_storeWeak(&v9->_delegate, v7);
    *&v9->_expandedPlatterInteractionManagerDelegateFlags = *&v9->_expandedPlatterInteractionManagerDelegateFlags & 0xFFFE | objc_opt_respondsToSelector() & 1;
    if (objc_opt_respondsToSelector())
    {
      v10 = 2;
    }

    else
    {
      v10 = 0;
    }

    *&v9->_expandedPlatterInteractionManagerDelegateFlags = *&v9->_expandedPlatterInteractionManagerDelegateFlags & 0xFFFD | v10;
    if (objc_opt_respondsToSelector())
    {
      v11 = 4;
    }

    else
    {
      v11 = 0;
    }

    *&v9->_expandedPlatterInteractionManagerDelegateFlags = *&v9->_expandedPlatterInteractionManagerDelegateFlags & 0xFFFB | v11;
    if (objc_opt_respondsToSelector())
    {
      v12 = 8;
    }

    else
    {
      v12 = 0;
    }

    *&v9->_expandedPlatterInteractionManagerDelegateFlags = *&v9->_expandedPlatterInteractionManagerDelegateFlags & 0xFFF7 | v12;
    if (objc_opt_respondsToSelector())
    {
      v13 = 16;
    }

    else
    {
      v13 = 0;
    }

    *&v9->_expandedPlatterInteractionManagerDelegateFlags = *&v9->_expandedPlatterInteractionManagerDelegateFlags & 0xFFEF | v13;
    if (objc_opt_respondsToSelector())
    {
      v14 = 32;
    }

    else
    {
      v14 = 0;
    }

    *&v9->_expandedPlatterInteractionManagerDelegateFlags = *&v9->_expandedPlatterInteractionManagerDelegateFlags & 0xFFDF | v14;
    if (objc_opt_respondsToSelector())
    {
      v15 = 64;
    }

    else
    {
      v15 = 0;
    }

    *&v9->_expandedPlatterInteractionManagerDelegateFlags = *&v9->_expandedPlatterInteractionManagerDelegateFlags & 0xFFBF | v15;
    if (objc_opt_respondsToSelector())
    {
      v16 = 128;
    }

    else
    {
      v16 = 0;
    }

    *&v9->_expandedPlatterInteractionManagerDelegateFlags = *&v9->_expandedPlatterInteractionManagerDelegateFlags & 0xFF7F | v16;
    if (objc_opt_respondsToSelector())
    {
      v17 = 256;
    }

    else
    {
      v17 = 0;
    }

    *&v9->_expandedPlatterInteractionManagerDelegateFlags = *&v9->_expandedPlatterInteractionManagerDelegateFlags & 0xFEFF | v17;
    v18 = [[PLContextMenuInteraction alloc] initWithDelegate:v9];
    contextMenuInteraction = v9->_contextMenuInteraction;
    v9->_contextMenuInteraction = &v18->super;

    v20 = [v6 viewForPreview];
    [v20 addInteraction:v9->_contextMenuInteraction];
  }

  return v9;
}

- (void)presentAtLocation:(CGPoint)a3 completion:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  if (self->_cachedCompletion)
  {
    v8 = PLLogTransition;
    if (os_log_type_enabled(PLLogTransition, OS_LOG_TYPE_ERROR))
    {
      [PLExpandedPlatterInteractionManager presentAtLocation:v8 completion:?];
    }

    (*(self->_cachedCompletion + 2))();
  }

  v9 = [v7 copy];
  cachedCompletion = self->_cachedCompletion;
  self->_cachedCompletion = v9;

  [(UIContextMenuInteraction *)self->_contextMenuInteraction _presentMenuAtLocation:x, y];
}

- (void)updateVisibleMenuWithBlock:(id)a3
{
  if (a3)
  {
    [(UIContextMenuInteraction *)self->_contextMenuInteraction updateVisibleMenuWithBlock:?];
  }
}

- (BOOL)reachedForceThreshold
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  contextMenuInteraction = self->_contextMenuInteraction;

  return [(UIContextMenuInteraction *)contextMenuInteraction _reachedForceThreshold];
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v8 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);
  v10 = PLLogTransition;
  if (os_log_type_enabled(PLLogTransition, OS_LOG_TYPE_DEBUG))
  {
    [PLExpandedPlatterInteractionManager contextMenuInteraction:v10 configurationForMenuAtLocation:?];
  }

  if ((*&self->_expandedPlatterInteractionManagerDelegateFlags & 8) != 0 && (v11 = objc_loadWeakRetained(&self->_delegate), v12 = [v11 expandedPlatterInteractionManager:self shouldBeginInteractionWithTouchAtLocation:{x, y}], v11, !v12))
  {
    v24 = 0;
  }

  else
  {
    v28 = WeakRetained;
    objc_initWeak(location, self);
    v13 = objc_loadWeakRetained(&self->_delegate);
    v14 = v13;
    expandedPlatterInteractionManagerDelegateFlags = self->_expandedPlatterInteractionManagerDelegateFlags;
    v16 = &unk_21FE0D000;
    v29 = v8;
    if ((expandedPlatterInteractionManagerDelegateFlags & 2) != 0)
    {
      v17 = v33;
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __93__PLExpandedPlatterInteractionManager_contextMenuInteraction_configurationForMenuAtLocation___block_invoke;
      v33[3] = &unk_278425760;
      v26 = &v34;
      v34 = v13;
      v27 = &v35;
      objc_copyWeak(&v35, location);
    }

    else
    {
      v17 = 0;
    }

    v18 = MEMORY[0x223D70F60](v17);
    v19 = self->_expandedPlatterInteractionManagerDelegateFlags;
    if ((v19 & 4) != 0)
    {
      v20 = v30;
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __93__PLExpandedPlatterInteractionManager_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_2;
      v30[3] = &unk_278425788;
      v16 = &v31;
      v31 = v14;
      v4 = &v32;
      objc_copyWeak(&v32, location);
    }

    else
    {
      v20 = 0;
    }

    v21 = MEMORY[0x223D70F60](v20);
    v22 = MEMORY[0x277D753B0];
    v23 = [(PLExpandedPlatterInteractionManager *)self _contextMenuConfigurationIdentifier];
    v24 = [v22 configurationWithIdentifier:v23 previewProvider:v18 actionProvider:v21];

    if ((v19 & 4) != 0)
    {
      objc_destroyWeak(v4);
    }

    if ((expandedPlatterInteractionManagerDelegateFlags & 2) != 0)
    {
      objc_destroyWeak(v27);
    }

    objc_destroyWeak(location);
    WeakRetained = v28;
    v8 = v29;
  }

  return v24;
}

id __93__PLExpandedPlatterInteractionManager_contextMenuInteraction_configurationForMenuAtLocation___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [v1 expandedPlatterInteractionManagerContentViewController:WeakRetained];

  return v3;
}

id __93__PLExpandedPlatterInteractionManager_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = [v3 expandedPlatterInteractionManager:WeakRetained menuWithSuggestedActions:v4];

  return v6;
}

- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 highlightPreviewForItemWithIdentifier:(id)a5
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);
  v7 = PLLogTransition;
  if (os_log_type_enabled(PLLogTransition, OS_LOG_TYPE_DEBUG))
  {
    [PLExpandedPlatterInteractionManager contextMenuInteraction:v7 configuration:? highlightPreviewForItemWithIdentifier:?];
  }

  v8 = [WeakRetained viewForPreview];
  v9 = [v8 window];

  if (v9)
  {
    [(PLExpandedPlatterInteractionManager *)self _setPresentingViewControllerHighlighted:1 animated:1];
    v10 = objc_alloc_init(MEMORY[0x277D758D8]);
    v11 = [MEMORY[0x277D75348] clearColor];
    [v10 setBackgroundColor:v11];

    if (objc_opt_respondsToSelector())
    {
      v12 = [WeakRetained visiblePath];
      [v10 setVisiblePath:v12];
    }

    v13 = [objc_alloc(MEMORY[0x277D75B90]) initWithView:v8 parameters:v10];
  }

  else
  {
    v14 = PLLogTransition;
    if (os_log_type_enabled(PLLogTransition, OS_LOG_TYPE_ERROR))
    {
      [PLExpandedPlatterInteractionManager contextMenuInteraction:v8 configuration:v14 highlightPreviewForItemWithIdentifier:?];
    }

    v13 = 0;
  }

  return v13;
}

- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (self->_cachedCompletion)
  {
    v11 = MEMORY[0x223D70F60]();
    cachedCompletion = self->_cachedCompletion;
    self->_cachedCompletion = 0;

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __103__PLExpandedPlatterInteractionManager_contextMenuInteraction_willDisplayMenuForConfiguration_animator___block_invoke;
    v15[3] = &unk_2784256E8;
    v16 = v11;
    v13 = v11;
    [v10 addCompletion:v15];
  }

  if ((*&self->_expandedPlatterInteractionManagerDelegateFlags & 0x10) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained expandedPlatterInteractionManager:self willPresentContentWithAnimator:v10];
  }
}

- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5
{
  v6 = a5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __95__PLExpandedPlatterInteractionManager_contextMenuInteraction_willEndForConfiguration_animator___block_invoke;
  v8[3] = &unk_2784250D8;
  v8[4] = self;
  [v6 addAnimations:v8];
  if ((*&self->_expandedPlatterInteractionManagerDelegateFlags & 0x80) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained expandedPlatterInteractionManager:self willDismissContentWithAnimator:v6];
  }
}

- (id)_contextMenuInteraction:(id)a3 styleForMenuWithConfiguration:(id)a4
{
  v5 = [MEMORY[0x277D75EA8] defaultStyle];
  [v5 setHasInteractivePreview:1];
  if (objc_opt_respondsToSelector())
  {
    [v5 setPrefersCenteredPreviewWhenActionsAreAbsent:0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v5 setKeepsInputViewsVisible:1];
  }

  if (objc_opt_respondsToSelector())
  {
    [v5 setIgnoresDefaultSizingRules:1];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v7 = [WeakRetained expandedPlatterInteractionManagerContainerView:self];
    if (v7)
    {
      [v5 setContainerView:v7];
    }
  }

  return v5;
}

- (BOOL)_contextMenuInteractionShouldAllowSwipeToDismiss:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = WeakRetained;
  if (self->_initialPanOccurred)
  {
    v6 = 1;
  }

  else
  {
    v6 = 1;
    if ((*&self->_expandedPlatterInteractionManagerDelegateFlags & 0x40) == 0 || (v6 = [WeakRetained expandedPlatterInteractionManagerShouldAllowInitialSwipeToDismiss:self], !self->_initialPanOccurred))
    {
      self->_initialPanOccurred = 1;
    }
  }

  return v6;
}

- (void)_contextMenuInteraction:(id)a3 shouldPresentWithCompletion:(id)a4
{
  if ((*&self->_expandedPlatterInteractionManagerDelegateFlags & 0x20) != 0)
  {
    v6 = a4;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained expandedPlatterInteractionManager:self shouldCommitInteraction:v6];
  }
}

- (unint64_t)_activationMethodForContextMenuInteraction:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = WeakRetained;
  if ((*&self->_expandedPlatterInteractionManagerDelegateFlags & 0x100) != 0)
  {
    v6 = [WeakRetained expandedPlatterInteractionManagerShouldAllowLongPressGesture:self] ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_identifier
{
  if (*&self->_expandedPlatterInteractionManagerDelegateFlags)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v4 = [WeakRetained expandedPlatterInteractionManagerIdentifier:self];
  }

  else
  {
    WeakRetained = [MEMORY[0x277CCAD78] UUID];
    v3 = [WeakRetained UUIDString];
    v4 = [@"com.apple.PlatterKit.PLExpandedPlatterInteractionManager" stringByAppendingPathExtension:v3];
  }

  return v4;
}

- (id)_contextMenuConfigurationIdentifier
{
  v2 = [(PLExpandedPlatterInteractionManager *)self _identifier];
  v3 = [v2 stringByAppendingPathExtension:@"contextMenuConfiguration"];

  return v3;
}

- (void)_setPresentingViewControllerHighlighted:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);
  if (objc_opt_respondsToSelector())
  {
    if (v4)
    {
      v7 = [MEMORY[0x277D26718] newDefaultHighlightAnimator];
      v8 = MEMORY[0x277D85DD0];
      v9 = 3221225472;
      v10 = __88__PLExpandedPlatterInteractionManager__setPresentingViewControllerHighlighted_animated___block_invoke;
      v11 = &unk_278425100;
      v12 = WeakRetained;
      v13 = v5;
      [v7 addAnimations:&v8];
      [v7 startAnimation];
    }

    else
    {
      [WeakRetained setHighlighted:v5];
    }
  }
}

- (PLExpandedPlatterInteractionHosting)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

- (PLExpandedPlatterInteractionManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)contextMenuInteraction:(uint64_t)a1 configurationForMenuAtLocation:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&dword_21FDE2000, a2, OS_LOG_TYPE_DEBUG, "Configuring context menu configuration for expanded platter presentation from view controller: %{public}@", &v2, 0xCu);
}

- (void)contextMenuInteraction:(uint64_t)a1 configuration:(NSObject *)a2 highlightPreviewForItemWithIdentifier:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&dword_21FDE2000, a2, OS_LOG_TYPE_DEBUG, "Configuring targeted preview for expanded platter presentation from view controller: %{public}@", &v2, 0xCu);
}

- (void)contextMenuInteraction:(uint64_t)a1 configuration:(NSObject *)a2 highlightPreviewForItemWithIdentifier:.cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_21FDE2000, a2, OS_LOG_TYPE_ERROR, "View for preview isn't in a window: %{public}@", &v2, 0xCu);
}

@end