@interface PLExpandedPlatterInteractionManager
+ (void)initialize;
- (BOOL)_contextMenuInteractionShouldAllowSwipeToDismiss:(id)dismiss;
- (BOOL)reachedForceThreshold;
- (PLExpandedPlatterInteractionHosting)presentingViewController;
- (PLExpandedPlatterInteractionManager)initWithPresentingViewController:(id)controller delegate:(id)delegate;
- (PLExpandedPlatterInteractionManagerDelegate)delegate;
- (id)_contextMenuConfigurationIdentifier;
- (id)_contextMenuInteraction:(id)interaction styleForMenuWithConfiguration:(id)configuration;
- (id)_identifier;
- (id)contextMenuInteraction:(id)interaction configuration:(id)configuration highlightPreviewForItemWithIdentifier:(id)identifier;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (unint64_t)_activationMethodForContextMenuInteraction:(id)interaction;
- (void)_contextMenuInteraction:(id)interaction shouldPresentWithCompletion:(id)completion;
- (void)_setPresentingViewControllerHighlighted:(BOOL)highlighted animated:(BOOL)animated;
- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator;
- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator;
- (void)presentAtLocation:(CGPoint)location completion:(id)completion;
- (void)updateVisibleMenuWithBlock:(id)block;
@end

@implementation PLExpandedPlatterInteractionManager

+ (void)initialize
{
  v3 = objc_opt_self();

  if (v3 == self)
  {

    PLRegisterPlatterKitLogging();
  }
}

- (PLExpandedPlatterInteractionManager)initWithPresentingViewController:(id)controller delegate:(id)delegate
{
  controllerCopy = controller;
  delegateCopy = delegate;
  v22.receiver = self;
  v22.super_class = PLExpandedPlatterInteractionManager;
  v8 = [(PLExpandedPlatterInteractionManager *)&v22 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_presentingViewController, controllerCopy);
    objc_storeWeak(&v9->_delegate, delegateCopy);
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

    viewForPreview = [controllerCopy viewForPreview];
    [viewForPreview addInteraction:v9->_contextMenuInteraction];
  }

  return v9;
}

- (void)presentAtLocation:(CGPoint)location completion:(id)completion
{
  y = location.y;
  x = location.x;
  completionCopy = completion;
  if (self->_cachedCompletion)
  {
    v8 = PLLogTransition;
    if (os_log_type_enabled(PLLogTransition, OS_LOG_TYPE_ERROR))
    {
      [PLExpandedPlatterInteractionManager presentAtLocation:v8 completion:?];
    }

    (*(self->_cachedCompletion + 2))();
  }

  v9 = [completionCopy copy];
  cachedCompletion = self->_cachedCompletion;
  self->_cachedCompletion = v9;

  [(UIContextMenuInteraction *)self->_contextMenuInteraction _presentMenuAtLocation:x, y];
}

- (void)updateVisibleMenuWithBlock:(id)block
{
  if (block)
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

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  interactionCopy = interaction;
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
    v29 = interactionCopy;
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
    _contextMenuConfigurationIdentifier = [(PLExpandedPlatterInteractionManager *)self _contextMenuConfigurationIdentifier];
    v24 = [v22 configurationWithIdentifier:_contextMenuConfigurationIdentifier previewProvider:v18 actionProvider:v21];

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
    interactionCopy = v29;
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

- (id)contextMenuInteraction:(id)interaction configuration:(id)configuration highlightPreviewForItemWithIdentifier:(id)identifier
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);
  v7 = PLLogTransition;
  if (os_log_type_enabled(PLLogTransition, OS_LOG_TYPE_DEBUG))
  {
    [PLExpandedPlatterInteractionManager contextMenuInteraction:v7 configuration:? highlightPreviewForItemWithIdentifier:?];
  }

  viewForPreview = [WeakRetained viewForPreview];
  window = [viewForPreview window];

  if (window)
  {
    [(PLExpandedPlatterInteractionManager *)self _setPresentingViewControllerHighlighted:1 animated:1];
    v10 = objc_alloc_init(MEMORY[0x277D758D8]);
    clearColor = [MEMORY[0x277D75348] clearColor];
    [v10 setBackgroundColor:clearColor];

    if (objc_opt_respondsToSelector())
    {
      visiblePath = [WeakRetained visiblePath];
      [v10 setVisiblePath:visiblePath];
    }

    v13 = [objc_alloc(MEMORY[0x277D75B90]) initWithView:viewForPreview parameters:v10];
  }

  else
  {
    v14 = PLLogTransition;
    if (os_log_type_enabled(PLLogTransition, OS_LOG_TYPE_ERROR))
    {
      [PLExpandedPlatterInteractionManager contextMenuInteraction:viewForPreview configuration:v14 highlightPreviewForItemWithIdentifier:?];
    }

    v13 = 0;
  }

  return v13;
}

- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  animatorCopy = animator;
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
    [animatorCopy addCompletion:v15];
  }

  if ((*&self->_expandedPlatterInteractionManagerDelegateFlags & 0x10) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained expandedPlatterInteractionManager:self willPresentContentWithAnimator:animatorCopy];
  }
}

- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator
{
  animatorCopy = animator;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __95__PLExpandedPlatterInteractionManager_contextMenuInteraction_willEndForConfiguration_animator___block_invoke;
  v8[3] = &unk_2784250D8;
  v8[4] = self;
  [animatorCopy addAnimations:v8];
  if ((*&self->_expandedPlatterInteractionManagerDelegateFlags & 0x80) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained expandedPlatterInteractionManager:self willDismissContentWithAnimator:animatorCopy];
  }
}

- (id)_contextMenuInteraction:(id)interaction styleForMenuWithConfiguration:(id)configuration
{
  defaultStyle = [MEMORY[0x277D75EA8] defaultStyle];
  [defaultStyle setHasInteractivePreview:1];
  if (objc_opt_respondsToSelector())
  {
    [defaultStyle setPrefersCenteredPreviewWhenActionsAreAbsent:0];
  }

  if (objc_opt_respondsToSelector())
  {
    [defaultStyle setKeepsInputViewsVisible:1];
  }

  if (objc_opt_respondsToSelector())
  {
    [defaultStyle setIgnoresDefaultSizingRules:1];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v7 = [WeakRetained expandedPlatterInteractionManagerContainerView:self];
    if (v7)
    {
      [defaultStyle setContainerView:v7];
    }
  }

  return defaultStyle;
}

- (BOOL)_contextMenuInteractionShouldAllowSwipeToDismiss:(id)dismiss
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

- (void)_contextMenuInteraction:(id)interaction shouldPresentWithCompletion:(id)completion
{
  if ((*&self->_expandedPlatterInteractionManagerDelegateFlags & 0x20) != 0)
  {
    completionCopy = completion;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained expandedPlatterInteractionManager:self shouldCommitInteraction:completionCopy];
  }
}

- (unint64_t)_activationMethodForContextMenuInteraction:(id)interaction
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
    uUIDString = [WeakRetained UUIDString];
    v4 = [@"com.apple.PlatterKit.PLExpandedPlatterInteractionManager" stringByAppendingPathExtension:uUIDString];
  }

  return v4;
}

- (id)_contextMenuConfigurationIdentifier
{
  _identifier = [(PLExpandedPlatterInteractionManager *)self _identifier];
  v3 = [_identifier stringByAppendingPathExtension:@"contextMenuConfiguration"];

  return v3;
}

- (void)_setPresentingViewControllerHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
  animatedCopy = animated;
  highlightedCopy = highlighted;
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);
  if (objc_opt_respondsToSelector())
  {
    if (animatedCopy)
    {
      newDefaultHighlightAnimator = [MEMORY[0x277D26718] newDefaultHighlightAnimator];
      v8 = MEMORY[0x277D85DD0];
      v9 = 3221225472;
      v10 = __88__PLExpandedPlatterInteractionManager__setPresentingViewControllerHighlighted_animated___block_invoke;
      v11 = &unk_278425100;
      v12 = WeakRetained;
      v13 = highlightedCopy;
      [newDefaultHighlightAnimator addAnimations:&v8];
      [newDefaultHighlightAnimator startAnimation];
    }

    else
    {
      [WeakRetained setHighlighted:highlightedCopy];
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