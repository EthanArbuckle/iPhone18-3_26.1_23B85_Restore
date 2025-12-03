@interface UIEditMenuInteraction
+ (BOOL)_isOutOfProcessEditMenusEnabled;
+ (void)_registerPlatformMetrics;
- ($9638EFF0CCCAFE90921E224CC361F7AC)_anchorForPreferredArrowDirection:(SEL)direction;
- (BOOL)isDisplayingMenu;
- (CGPoint)locationInView:(UIView *)view;
- (CGRect)_editMenuPresentation:(id)presentation targetRectForConfiguration:(id)configuration;
- (CGRect)_targetRectForConfiguration:(id)configuration;
- (CGRect)menuFrameInCoordinateSpace:(id)space;
- (UIEditMenuInteraction)initWithDelegate:(id)delegate;
- (UIMenuLeaf)_selectedMenuLeaf;
- (UIView)view;
- (id)_contextMenuInteraction:(id)interaction styleForMenuWithConfiguration:(id)configuration;
- (id)_defaultSuggestedActionsAtLocation:(CGPoint)location configuration:(id)configuration;
- (id)_editMenuPresentation:(id)presentation preferredLayoutRectsForConfiguration:(id)configuration;
- (id)_editMenuPresentation:(id)presentation titleViewForMenu:(id)menu configuration:(id)configuration;
- (id)_menuForSuggestedActions:(id)actions configuration:(id)configuration;
- (id)_menuPreparationContextForConfiguration:(id)configuration;
- (id)_proxySender;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (id)contextMenuInteraction:(id)interaction previewForDismissingMenuWithConfiguration:(id)configuration;
- (id)contextMenuInteraction:(id)interaction previewForHighlightingMenuWithConfiguration:(id)configuration;
- (id)delegate;
- (id)firstResponderTargetForConfiguration:(id)configuration;
- (void)_contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location completion:(id)completion;
- (void)_didMoveFromWindow:(id)window toWindow:(id)toWindow;
- (void)_dismissMenuWithPresentationType:(int64_t)type;
- (void)_editMenuPresentation:(id)presentation didSelectMenuLeaf:(id)leaf completion:(id)completion;
- (void)_editMenuPresentation:(id)presentation didTransitionMenuForConfiguration:(id)configuration;
- (void)_editMenuPresentation:(id)presentation handoffDisplayedMenuWithContext:(id)context;
- (void)_editMenuPresentation:(id)presentation preparedMenuForDisplay:(id)display completion:(id)completion;
- (void)_editMenuPresentation:(id)presentation willDismissMenuForConfiguration:(id)configuration animator:(id)animator;
- (void)_editMenuPresentation:(id)presentation willPresentMenuForConfiguration:(id)configuration animator:(id)animator;
- (void)_prepareMenuAtLocation:(CGPoint)location configuration:(id)configuration completionHandler:(id)handler;
- (void)_setProxySender:(id)sender;
- (void)_updateContextMenuInteractionDrivers;
- (void)_updateVisibleMenuWithReason:(int64_t)reason updateBlock:(id)block;
- (void)_viewTraitCollectionDidChange:(id)change;
- (void)_willDismissMenuForConfiguration:(id)configuration animator:(id)animator;
- (void)_willPresentMenuForConfiguration:(id)configuration animator:(id)animator;
- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator;
- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator;
- (void)deferredMenuElementWasFulfilled:(id)fulfilled;
- (void)didMoveToView:(id)view;
- (void)presentEditMenuWithConfiguration:(UIEditMenuConfiguration *)configuration;
- (void)reloadVisibleMenu;
- (void)setPresentsContextMenuAsSecondaryAction:(BOOL)action;
- (void)updateVisibleMenuPositionAnimated:(BOOL)animated;
- (void)willMoveToView:(id)view;
@end

@implementation UIEditMenuInteraction

- (BOOL)isDisplayingMenu
{
  activeEditMenuPresentation = [(UIEditMenuInteraction *)self activeEditMenuPresentation];
  displayedMenu = [activeEditMenuPresentation displayedMenu];
  if (displayedMenu)
  {
    _hasVisibleMenu = 1;
  }

  else
  {
    _hasVisibleMenu = [(UIContextMenuInteraction *)self->_contextMenuInteraction _hasVisibleMenu];
  }

  return _hasVisibleMenu;
}

- (id)_proxySender
{
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->__proxySender);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    selfCopy = WeakRetained;
  }

  v5 = selfCopy;

  return selfCopy;
}

- (void)_updateContextMenuInteractionDrivers
{
  array = [MEMORY[0x1E695DF70] array];
  if ([(UIEditMenuInteraction *)self presentsContextMenuAsSecondaryAction])
  {
    v3 = objc_opt_new();
    [array addObject:v3];
  }

  [(UIContextMenuInteraction *)self->_contextMenuInteraction setDrivers:array];
}

+ (void)_registerPlatformMetrics
{
  objc_opt_self();
  if (_registerPlatformMetrics___defaultRegistrationToken != -1)
  {

    dispatch_once(&_registerPlatformMetrics___defaultRegistrationToken, &__block_literal_global_162_1);
  }
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

void __49__UIEditMenuInteraction__registerPlatformMetrics__block_invoke()
{
  _UISolariumEnabled();
  v0 = +[_UIVisualStyleRegistry defaultRegistry];
  v1 = objc_opt_class();
  [v0 registerVisualStyleClass:v1 forStylableClass:objc_opt_class()];

  v3 = [_UIVisualStyleRegistry registryForIdiom:0];
  v2 = objc_opt_class();
  [v3 registerVisualStyleClass:v2 forStylableClass:objc_opt_class()];
}

+ (BOOL)_isOutOfProcessEditMenusEnabled
{
  if (qword_1ED4A2C58 != -1)
  {
    dispatch_once(&qword_1ED4A2C58, &__block_literal_global_706);
  }

  return _MergedGlobals_1390;
}

uint64_t __56__UIEditMenuInteraction__isOutOfProcessEditMenusEnabled__block_invoke()
{
  result = _os_feature_enabled_impl();
  _MergedGlobals_1390 = result;
  return result;
}

- (UIEditMenuInteraction)initWithDelegate:(id)delegate
{
  v4 = delegate;
  v21.receiver = self;
  v21.super_class = UIEditMenuInteraction;
  v5 = [(UIEditMenuInteraction *)&v21 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    v6->_presentsContextMenuAsSecondaryAction = 1;
    v7 = [(UIContextMenuInteraction *)[_UIEditMenuBridgedContextMenuInteraction alloc] initWithDelegate:v6];
    _proxySender = [(UIEditMenuInteraction *)v6 _proxySender];
    [(_UIEditMenuBridgedContextMenuInteraction *)v7 setProxySender:_proxySender];

    contextMenuInteraction = v6->_contextMenuInteraction;
    v6->_contextMenuInteraction = &v7->super;
    v10 = v7;

    [(UIEditMenuInteraction *)v6 _updateContextMenuInteractionDrivers];
    *&v6->_delegateImplements = *&v6->_delegateImplements & 0xFFFE | objc_opt_respondsToSelector() & 1;
    if (objc_opt_respondsToSelector())
    {
      v11 = 2;
    }

    else
    {
      v11 = 0;
    }

    *&v6->_delegateImplements = *&v6->_delegateImplements & 0xFFFD | v11;
    if (objc_opt_respondsToSelector())
    {
      v12 = 4;
    }

    else
    {
      v12 = 0;
    }

    *&v6->_delegateImplements = *&v6->_delegateImplements & 0xFFFB | v12;
    if (objc_opt_respondsToSelector())
    {
      v13 = 8;
    }

    else
    {
      v13 = 0;
    }

    *&v6->_delegateImplements = *&v6->_delegateImplements & 0xFFF7 | v13;
    if (objc_opt_respondsToSelector())
    {
      v14 = 16;
    }

    else
    {
      v14 = 0;
    }

    *&v6->_delegateImplements = *&v6->_delegateImplements & 0xFFEF | v14;
    if (objc_opt_respondsToSelector())
    {
      v15 = 32;
    }

    else
    {
      v15 = 0;
    }

    *&v6->_delegateImplements = *&v6->_delegateImplements & 0xFFDF | v15;
    if (objc_opt_respondsToSelector())
    {
      v16 = 64;
    }

    else
    {
      v16 = 0;
    }

    *&v6->_delegateImplements = *&v6->_delegateImplements & 0xFFBF | v16;
    if (objc_opt_respondsToSelector())
    {
      v17 = 128;
    }

    else
    {
      v17 = 0;
    }

    *&v6->_delegateImplements = *&v6->_delegateImplements & 0xFF7F | v17;
    if (objc_opt_respondsToSelector())
    {
      v18 = 256;
    }

    else
    {
      v18 = 0;
    }

    *&v6->_delegateImplements = *&v6->_delegateImplements & 0xFEFF | v18;
    if (objc_opt_respondsToSelector())
    {
      v19 = 512;
    }

    else
    {
      v19 = 0;
    }

    *&v6->_delegateImplements = *&v6->_delegateImplements & 0xFDFF | v19;
    +[UIEditMenuInteraction _registerPlatformMetrics];
  }

  return v6;
}

- (void)willMoveToView:(id)view
{
  contextMenuInteraction = self->_contextMenuInteraction;
  viewCopy = view;
  view = [(UIContextMenuInteraction *)contextMenuInteraction view];
  [view removeInteraction:self->_contextMenuInteraction];

  WeakRetained = objc_loadWeakRetained(&self->_view);
  if (WeakRetained == viewCopy)
  {
  }

  else
  {
    isDisplayingMenu = [(UIEditMenuInteraction *)self isDisplayingMenu];

    if (isDisplayingMenu)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __40__UIEditMenuInteraction_willMoveToView___block_invoke;
      v9[3] = &unk_1E70F3590;
      v9[4] = self;
      [UIView performWithoutAnimation:v9];
    }
  }

  objc_storeWeak(&self->_view, 0);
}

- (void)didMoveToView:(id)view
{
  viewCopy = view;
  objc_storeWeak(&self->_view, viewCopy);
  v4 = viewCopy;
  if (viewCopy)
  {
    [viewCopy addInteraction:self->_contextMenuInteraction];
    v4 = viewCopy;
  }
}

- (void)_didMoveFromWindow:(id)window toWindow:(id)toWindow
{
  if (!toWindow)
  {
    v7[7] = v4;
    v7[8] = v5;
    if ([(UIEditMenuInteraction *)self isDisplayingMenu])
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __53__UIEditMenuInteraction__didMoveFromWindow_toWindow___block_invoke;
      v7[3] = &unk_1E70F3590;
      v7[4] = self;
      [UIView performWithoutAnimation:v7];
    }
  }
}

- (void)_viewTraitCollectionDidChange:(id)change
{
  changeCopy = change;
  if ([(UIEditMenuInteraction *)self isDisplayingMenu])
  {
    activeEditMenuPresentation = [(UIEditMenuInteraction *)self activeEditMenuPresentation];
    [activeEditMenuPresentation sourceViewDidUpdateFromTraitCollection:changeCopy];
  }
}

- (void)setPresentsContextMenuAsSecondaryAction:(BOOL)action
{
  if (self->_presentsContextMenuAsSecondaryAction != action)
  {
    self->_presentsContextMenuAsSecondaryAction = action;
    [(UIEditMenuInteraction *)self _updateContextMenuInteractionDrivers];
  }
}

- (void)presentEditMenuWithConfiguration:(UIEditMenuConfiguration *)configuration
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = configuration;
  view = [(UIEditMenuInteraction *)self view];

  if (!view)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v12 = __UIFaultDebugAssertLog();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_7;
      }

      activeConfiguration = [(UIEditMenuInteraction *)self activeConfiguration];
      view2 = [(UIEditMenuInteraction *)self view];
      *buf = 138412546;
      v18 = activeConfiguration;
      v19 = 2112;
      v20 = view2;
      _os_log_fault_impl(&dword_188A29000, v12, OS_LOG_TYPE_FAULT, "The edit menu (configuration: %@) can only be presented when the view is in a window scene: %@", buf, 0x16u);
    }

    else
    {
      v11 = *(__UILogGetCategoryCachedImpl("Assert", &presentEditMenuWithConfiguration____s_category) + 8);
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_8;
      }

      v12 = v11;
      activeConfiguration = [(UIEditMenuInteraction *)self activeConfiguration];
      view2 = [(UIEditMenuInteraction *)self view];
      *buf = 138412546;
      v18 = activeConfiguration;
      v19 = 2112;
      v20 = view2;
      _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "The edit menu (configuration: %@) can only be presented when the view is in a window scene: %@", buf, 0x16u);
    }

LABEL_7:
    goto LABEL_8;
  }

  objc_storeStrong(&self->_pendingConfiguration, configuration);
  [(UIEditMenuConfiguration *)v5 sourcePoint];
  v8 = v7;
  v10 = v9;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __58__UIEditMenuInteraction_presentEditMenuWithConfiguration___block_invoke;
  v15[3] = &unk_1E710E090;
  v15[4] = self;
  v16 = v5;
  [(UIEditMenuInteraction *)self _prepareMenuAtLocation:v16 configuration:v15 completionHandler:v8, v10];

LABEL_8:
}

void __58__UIEditMenuInteraction_presentEditMenuWithConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 32);
    if (*(v4 + 72))
    {
      v14 = v3;
      v5 = *(v4 + 88);
      if (!v5)
      {
        if (!+[UIEditMenuInteraction _isOutOfProcessEditMenusEnabled](UIEditMenuInteraction, "_isOutOfProcessEditMenusEnabled") || (v6 = [_UIEditMenuOverlayUIClientPresentation alloc], v7 = *(a1 + 32), [v7 view], v8 = objc_claimAutoreleasedReturnValue(), v5 = -[_UIEditMenuOverlayUIClientPresentation initWithDelegate:sourceView:](v6, "initWithDelegate:sourceView:", v7, v8), v8, !v5))
        {
          v9 = [_UIEditMenuInProcessPresentation alloc];
          v10 = *(a1 + 32);
          v11 = [v10 view];
          v5 = [(_UIEditMenuPresentation *)v9 initWithDelegate:v10 sourceView:v11];
        }

        -[_UIEditMenuPresentation setEnforcesMenuControllerLifecycle:](v5, "setEnforcesMenuControllerLifecycle:", [*(a1 + 32) _enforcesMenuControllerLifecycle]);
        objc_storeStrong((*(a1 + 32) + 88), v5);
      }

      [(_UIEditMenuContentPresentation *)v5 displayMenu:v14 configuration:*(a1 + 40)];
      objc_storeStrong((*(a1 + 32) + 80), *(a1 + 40));
      v12 = *(a1 + 32);
      v13 = *(v12 + 72);
      *(v12 + 72) = 0;

      v3 = v14;
    }
  }
}

- (void)reloadVisibleMenu
{
  activeConfiguration = [(UIEditMenuInteraction *)self activeConfiguration];
  v4 = activeConfiguration;
  if (activeConfiguration)
  {
    [activeConfiguration sourcePoint];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __42__UIEditMenuInteraction_reloadVisibleMenu__block_invoke;
    v5[3] = &unk_1E70FE820;
    v5[4] = self;
    [(UIEditMenuInteraction *)self _prepareMenuAtLocation:v4 configuration:v5 completionHandler:?];
  }
}

void __42__UIEditMenuInteraction_reloadVisibleMenu__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__UIEditMenuInteraction_reloadVisibleMenu__block_invoke_2;
  v6[3] = &unk_1E70F6A48;
  v7 = v3;
  v5 = v3;
  [v4 _updateVisibleMenuWithReason:1 updateBlock:v6];
}

- (void)updateVisibleMenuPositionAnimated:(BOOL)animated
{
  v3 = animated;
  activeEditMenuPresentation = [(UIEditMenuInteraction *)self activeEditMenuPresentation];
  displayedMenu = [activeEditMenuPresentation displayedMenu];

  if (displayedMenu)
  {
    activeEditMenuPresentation2 = [(UIEditMenuInteraction *)self activeEditMenuPresentation];
    [activeEditMenuPresentation2 updateMenuPositionAnimated:v3];
  }
}

- (CGPoint)locationInView:(UIView *)view
{
  v4 = view;
  contextMenuInteraction = [(UIEditMenuInteraction *)self contextMenuInteraction];
  _hasVisibleMenu = [contextMenuInteraction _hasVisibleMenu];

  if (_hasVisibleMenu)
  {
    [(UIContextMenuInteraction *)self->_contextMenuInteraction locationInView:v4];
    v8 = v7;
    v10 = v9;
  }

  else
  {
    activeConfiguration = [(UIEditMenuInteraction *)self activeConfiguration];

    if (activeConfiguration)
    {
      activeConfiguration2 = [(UIEditMenuInteraction *)self activeConfiguration];
      [activeConfiguration2 sourcePoint];
      v8 = v13;
      v10 = v14;
    }

    else
    {
      v8 = 1.79769313e308;
      v10 = 1.79769313e308;
    }

    if (v8 == 1.79769313e308 && v10 == 1.79769313e308)
    {
      view = [(UIEditMenuInteraction *)self view];

      if (view == v4)
      {
        v8 = 1.79769313e308;
        v10 = 1.79769313e308;
      }

      else
      {
        view2 = [(UIEditMenuInteraction *)self view];
        [view2 convertPoint:v4 toView:{v8, 1.79769313e308}];
        v8 = v17;
        v10 = v18;
      }
    }
  }

  v19 = v8;
  v20 = v10;
  result.y = v20;
  result.x = v19;
  return result;
}

- (void)_dismissMenuWithPresentationType:(int64_t)type
{
  pendingConfiguration = [(UIEditMenuInteraction *)self pendingConfiguration];

  if (pendingConfiguration)
  {
    pendingConfiguration = self->_pendingConfiguration;
    self->_pendingConfiguration = 0;
  }

  activeEditMenuPresentation = [(UIEditMenuInteraction *)self activeEditMenuPresentation];
  v8 = activeEditMenuPresentation;
  if (type == 2 || !activeEditMenuPresentation)
  {
  }

  else
  {
    _activeHandoffContext = [(UIEditMenuInteraction *)self _activeHandoffContext];

    if (!_activeHandoffContext)
    {
      activeEditMenuPresentation2 = [(UIEditMenuInteraction *)self activeEditMenuPresentation];
      [activeEditMenuPresentation2 hideMenuWithReason:0];
      goto LABEL_11;
    }
  }

  contextMenuInteraction = [(UIEditMenuInteraction *)self contextMenuInteraction];
  _hasVisibleMenu = [contextMenuInteraction _hasVisibleMenu];

  if (type == 1 || !_hasVisibleMenu)
  {
    return;
  }

  activeEditMenuPresentation2 = [(UIEditMenuInteraction *)self contextMenuInteraction];
  [activeEditMenuPresentation2 dismissMenu];
LABEL_11:
}

- (void)_updateVisibleMenuWithReason:(int64_t)reason updateBlock:(id)block
{
  blockCopy = block;
  activeEditMenuPresentation = [(UIEditMenuInteraction *)self activeEditMenuPresentation];
  displayedMenu = [activeEditMenuPresentation displayedMenu];

  if (displayedMenu)
  {
    contextMenuInteraction2 = [displayedMenu copy];
    v9 = blockCopy[2](blockCopy, contextMenuInteraction2);
    if (v9 != contextMenuInteraction2)
    {
      +[UIView areAnimationsEnabled];
      activeEditMenuPresentation2 = [(UIEditMenuInteraction *)self activeEditMenuPresentation];
      [activeEditMenuPresentation2 replaceVisibleMenuWithMenu:v9 reason:reason];
    }
  }

  else
  {
    contextMenuInteraction = [(UIEditMenuInteraction *)self contextMenuInteraction];
    _hasVisibleMenu = [contextMenuInteraction _hasVisibleMenu];

    if (!_hasVisibleMenu)
    {
      goto LABEL_8;
    }

    contextMenuInteraction2 = [(UIEditMenuInteraction *)self contextMenuInteraction];
    [contextMenuInteraction2 updateVisibleMenuWithBlock:blockCopy];
  }

LABEL_8:
}

- (CGRect)menuFrameInCoordinateSpace:(id)space
{
  spaceCopy = space;
  activeEditMenuPresentation = [(UIEditMenuInteraction *)self activeEditMenuPresentation];

  if (activeEditMenuPresentation)
  {
    activeEditMenuPresentation2 = [(UIEditMenuInteraction *)self activeEditMenuPresentation];
    [activeEditMenuPresentation2 menuFrameInCoordinateSpace:spaceCopy];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v8 = *MEMORY[0x1E695F050];
    v10 = *(MEMORY[0x1E695F050] + 8);
    v12 = *(MEMORY[0x1E695F050] + 16);
    v14 = *(MEMORY[0x1E695F050] + 24);
  }

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (id)firstResponderTargetForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if ((*&self->_delegateImplements & 0x80) == 0 || (-[UIEditMenuInteraction delegate](self, "delegate"), v5 = objc_claimAutoreleasedReturnValue(), [v5 _editMenuInteraction:self firstResponderTargetForConfiguration:configurationCopy], v6 = objc_claimAutoreleasedReturnValue(), v5, !v6))
  {
    _firstResponderTarget = [configurationCopy _firstResponderTarget];
    if (!_firstResponderTarget)
    {
      _firstResponderTarget = [(UIEditMenuInteraction *)self view];
    }

    v6 = _firstResponderTarget;
  }

  return v6;
}

- (id)_defaultSuggestedActionsAtLocation:(CGPoint)location configuration:(id)configuration
{
  y = location.y;
  x = location.x;
  v7 = [(UIEditMenuInteraction *)self firstResponderTargetForConfiguration:configuration];
  view = [(UIEditMenuInteraction *)self view];
  v9 = [_UIEditMenuProvider menuElementsFromResponderChain:v7 atLocation:view inCoordinateSpace:[(UIEditMenuInteraction *)self _includeMenuControllerItems] includeMenuControllerItems:x, y];

  return v9;
}

- (void)_editMenuPresentation:(id)presentation didSelectMenuLeaf:(id)leaf completion:(id)completion
{
  presentationCopy = presentation;
  leafCopy = leaf;
  completionCopy = completion;
  objc_storeWeak(&self->__selectedMenuLeaf, leafCopy);
  _proxySender = [(UIEditMenuInteraction *)self _proxySender];
  v17 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = leafCopy;
    activeConfiguration = [presentationCopy activeConfiguration];
    v14 = [(UIEditMenuInteraction *)self firstResponderTargetForConfiguration:activeConfiguration];

    [v12 set_useSenderForResolvingTarget:{-[UIEditMenuInteraction _useSenderAsResponderSender](self, "_useSenderAsResponderSender")}];
    v15 = [v12 _resolvedTargetFromFirstTarget:v14 sender:_proxySender shouldUseFallbackActionOut:&v17];

    if (!v15)
    {
      goto LABEL_10;
    }

    if (v17)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v12 _performFallbackActionWithSender:_proxySender target:v15];
        goto LABEL_8;
      }
    }
  }

  else
  {
    v15 = 0;
  }

  [leafCopy performWithSender:_proxySender target:v15];
LABEL_8:
  if ((*&self->_delegateImplements & 0x100) != 0)
  {
    delegate = [(UIEditMenuInteraction *)self delegate];
    [delegate _editMenuInteraction:self didPerformMenuLeaf:leafCopy target:v15];
  }

LABEL_10:
  self->_dismissedByMenuAction = ([leafCopy attributes] & 8) == 0;
  objc_storeWeak(&self->__selectedMenuLeaf, 0);
  completionCopy[2](completionCopy);
}

- (CGRect)_editMenuPresentation:(id)presentation targetRectForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  [(UIEditMenuInteraction *)self _targetRectForConfiguration:configurationCopy];
  x = v16.origin.x;
  y = v16.origin.y;
  width = v16.size.width;
  height = v16.size.height;
  if (CGRectIsNull(v16))
  {
    [configurationCopy sourcePoint];
    x = v10;
    y = v11;
    width = *MEMORY[0x1E695F060];
    height = *(MEMORY[0x1E695F060] + 8);
  }

  v12 = x;
  v13 = y;
  v14 = width;
  v15 = height;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (void)_editMenuPresentation:(id)presentation willPresentMenuForConfiguration:(id)configuration animator:(id)animator
{
  animatorCopy = animator;
  configurationCopy = configuration;
  _outgoingPresentation = [(UIEditMenuInteraction *)self _outgoingPresentation];
  [_outgoingPresentation forceEndDismissalIfNeeded];

  [(UIEditMenuInteraction *)self _dismissMenuWithPresentationType:2];
  [(UIEditMenuInteraction *)self _willPresentMenuForConfiguration:configurationCopy animator:animatorCopy];
}

- (void)_editMenuPresentation:(id)presentation willDismissMenuForConfiguration:(id)configuration animator:(id)animator
{
  presentationCopy = presentation;
  animatorCopy = animator;
  [(UIEditMenuInteraction *)self _willDismissMenuForConfiguration:configuration animator:animatorCopy];
  activeEditMenuPresentation = self->_activeEditMenuPresentation;
  if (activeEditMenuPresentation == presentationCopy)
  {
    self->_activeEditMenuPresentation = 0;

    _outgoingPresentation = [(UIEditMenuInteraction *)self _outgoingPresentation];
    [_outgoingPresentation forceEndDismissalIfNeeded];

    objc_storeStrong(&self->__outgoingPresentation, presentation);
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __88__UIEditMenuInteraction__editMenuPresentation_willDismissMenuForConfiguration_animator___block_invoke;
  v14[3] = &unk_1E70F35B8;
  v14[4] = self;
  v15 = presentationCopy;
  v13 = presentationCopy;
  [animatorCopy addCompletion:v14];
}

void __88__UIEditMenuInteraction__editMenuPresentation_willDismissMenuForConfiguration_animator___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(v1 + 96);
  if (v3 == v2)
  {
    *(v1 + 96) = 0;
  }
}

- (void)_editMenuPresentation:(id)presentation preparedMenuForDisplay:(id)display completion:(id)completion
{
  displayCopy = display;
  completionCopy = completion;
  activeConfiguration = [presentation activeConfiguration];
  v11 = [(UIEditMenuInteraction *)self _menuPreparationContextForConfiguration:activeConfiguration];

  v12 = displayCopy;
  v13 = v11;
  if ([v12 metadata])
  {
    v14 = v12;
  }

  else
  {
    [v13 setTracksSelection:{(objc_msgSend(v12, "options") & 0x80) == 0}];
    v21 = 0;
    v20 = 0;
    v15 = [_UIActionBridge validatedCommandMenuForMenu:v12 context:v13];
    _resolvedElementSize = [v15 _resolvedElementSize];
    children = [v15 children];
    v18 = _menuElementsPreparedForDisplay(children, _resolvedElementSize, v13, &v20);
    v14 = [v15 menuByReplacingChildren:v18];

    LOBYTE(v20) = 1;
    if ([v13 supportsHeaderView])
    {
      headerView = [v12 headerView];
      HIBYTE(v20) |= headerView != 0;
    }

    [v14 setMetadata:v20 | (v21 << 32)];
  }

  completionCopy[2](completionCopy, v14);
}

- (void)_editMenuPresentation:(id)presentation didTransitionMenuForConfiguration:(id)configuration
{
  if ((*&self->_delegateImplements & 0x20) != 0)
  {
    configurationCopy = configuration;
    delegate = [(UIEditMenuInteraction *)self delegate];
    [delegate _editMenuInteraction:self didTransitionMenuForConfiguration:configurationCopy];
  }
}

- (id)_editMenuPresentation:(id)presentation titleViewForMenu:(id)menu configuration:(id)configuration
{
  if ((*&self->_delegateImplements & 0x40) != 0)
  {
    configurationCopy = configuration;
    menuCopy = menu;
    delegate = [(UIEditMenuInteraction *)self delegate];
    v5 = [delegate _editMenuInteraction:self titleViewForMenu:menuCopy configuration:configurationCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_editMenuPresentation:(id)presentation preferredLayoutRectsForConfiguration:(id)configuration
{
  if ((*&self->_delegateImplements & 0x200) != 0)
  {
    configurationCopy = configuration;
    delegate = [(UIEditMenuInteraction *)self delegate];
    v4 = [delegate _editMenuInteraction:self preferredLayoutRectsForConfiguration:configurationCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_editMenuPresentation:(id)presentation handoffDisplayedMenuWithContext:(id)context
{
  presentationCopy = presentation;
  contextCopy = context;
  configuration = [contextCopy configuration];
  [configuration _setDidHandoff:1];

  objc_storeStrong(&self->_activeHandoffContext, context);
  v9 = self->_contextMenuInteraction;
  view = [(UIContextMenuInteraction *)v9 view];

  if (!view)
  {
    WeakRetained = objc_loadWeakRetained(&self->_view);
    [WeakRetained addInteraction:v9];
  }

  objc_storeStrong(&self->_activeHandoffPresentation, presentation);
  configuration2 = [contextCopy configuration];
  [configuration2 sourcePoint];
  [(UIContextMenuInteraction *)v9 _presentMenuAtLocation:?];

  activeEditMenuPresentation = self->_activeEditMenuPresentation;
  if (activeEditMenuPresentation == presentationCopy)
  {
    self->_activeEditMenuPresentation = 0;
  }
}

- (void)_contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location completion:(id)completion
{
  y = location.y;
  x = location.x;
  completionCopy = completion;
  _activeHandoffContext = [(UIEditMenuInteraction *)self _activeHandoffContext];
  v10 = _activeHandoffContext;
  if (_activeHandoffContext)
  {
    configuration = [_activeHandoffContext configuration];
    activeConfiguration = self->_activeConfiguration;
    self->_activeConfiguration = configuration;

    configuration2 = [v10 configuration];
    identifier = [configuration2 identifier];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __91__UIEditMenuInteraction__contextMenuInteraction_configurationForMenuAtLocation_completion___block_invoke;
    v22[3] = &unk_1E70F6A70;
    v23 = v10;
    v15 = [UIContextMenuConfiguration configurationWithIdentifier:identifier previewProvider:0 actionProvider:v22];

    completionCopy[2](completionCopy, v15);
    uUID = v23;
  }

  else
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    v17 = [UIEditMenuConfiguration configurationWithIdentifier:uUID sourcePoint:x, y];
    v18 = self->_activeConfiguration;
    self->_activeConfiguration = v17;

    v19 = self->_activeConfiguration;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __91__UIEditMenuInteraction__contextMenuInteraction_configurationForMenuAtLocation_completion___block_invoke_2;
    v20[3] = &unk_1E710E108;
    v20[4] = self;
    v21 = completionCopy;
    [(UIEditMenuInteraction *)self _prepareMenuAtLocation:v19 configuration:v20 completionHandler:x, y];
  }
}

void __91__UIEditMenuInteraction__contextMenuInteraction_configurationForMenuAtLocation_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 children];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [*(*(a1 + 32) + 80) identifier];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __91__UIEditMenuInteraction__contextMenuInteraction_configurationForMenuAtLocation_completion___block_invoke_3;
    v8[3] = &unk_1E70F6A70;
    v9 = v3;
    v7 = [UIContextMenuConfiguration configurationWithIdentifier:v6 previewProvider:0 actionProvider:v8];
  }

  else
  {
    v7 = 0;
  }

  (*(*(a1 + 40) + 16))();
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UIEditMenuInteraction.m" lineNumber:718 description:@"This should never be called."];

  return 0;
}

- (id)contextMenuInteraction:(id)interaction previewForHighlightingMenuWithConfiguration:(id)configuration
{
  interactionCopy = interaction;
  _activeHandoffContext = [(UIEditMenuInteraction *)self _activeHandoffContext];

  if (_activeHandoffContext)
  {
    _activeHandoffContext2 = [(UIEditMenuInteraction *)self _activeHandoffContext];
    sourceView = [_activeHandoffContext2 sourceView];

    v9 = objc_opt_new();
    v10 = +[UIColor clearColor];
    [(UIPreviewTarget *)v9 setBackgroundColor:v10];

    [(UIPreviewTarget *)sourceView bounds];
    v13 = v12 + v11 * 0.5;
    v16 = v15 + v14 * 0.5;
    view = [interactionCopy view];
    [(UIPreviewTarget *)sourceView convertPoint:view toView:v13, v16];
    v19 = v18;
    v21 = v20;

    v22 = [UIPreviewTarget alloc];
    view2 = [interactionCopy view];

    v24 = [(UIPreviewTarget *)v22 initWithContainer:view2 center:v19, v21];
    v25 = [UITargetedPreview alloc];
    v26 = sourceView;
    v27 = v9;
    v28 = v24;
  }

  else
  {
    v29 = [UIPreviewTarget alloc];
    view3 = [interactionCopy view];

    [(UIEditMenuConfiguration *)self->_activeConfiguration sourcePoint];
    sourceView = [(UIPreviewTarget *)v29 initWithContainer:view3 center:?];

    v9 = objc_opt_new();
    v31 = [UITargetedPreview alloc];
    v24 = objc_opt_new();
    v25 = v31;
    v26 = v9;
    v27 = v24;
    v28 = sourceView;
  }

  v32 = [(UITargetedPreview *)v25 initWithView:v26 parameters:v27 target:v28];

  return v32;
}

- (id)contextMenuInteraction:(id)interaction previewForDismissingMenuWithConfiguration:(id)configuration
{
  interactionCopy = interaction;
  view = [interactionCopy view];
  window = [view window];

  if (window)
  {
    v8 = [UIPreviewTarget alloc];
    view2 = [interactionCopy view];
    [(UIEditMenuConfiguration *)self->_activeConfiguration sourcePoint];
    v10 = [(UIPreviewTarget *)v8 initWithContainer:view2 center:?];

    v11 = objc_opt_new();
    v12 = [UITargetedPreview alloc];
    v13 = objc_opt_new();
    v14 = [(UITargetedPreview *)v12 initWithView:v11 parameters:v13 target:v10];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  animatorCopy = animator;
  v11 = animatorCopy;
  if (animatorCopy)
  {
    v12 = 0;
    v13 = animatorCopy;
  }

  else
  {
    v13 = objc_opt_new();
    v12 = v13;
  }

  _activeHandoffContext = [(UIEditMenuInteraction *)self _activeHandoffContext];

  if (!_activeHandoffContext)
  {
    [(UIEditMenuInteraction *)self _dismissMenuWithPresentationType:1];
    activeConfiguration = [(UIEditMenuInteraction *)self activeConfiguration];
    [(UIEditMenuInteraction *)self _willPresentMenuForConfiguration:activeConfiguration animator:v13];

    if (!v12)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  objc_initWeak(&location, self);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __89__UIEditMenuInteraction_contextMenuInteraction_willDisplayMenuForConfiguration_animator___block_invoke;
  v24[3] = &unk_1E70F5A28;
  objc_copyWeak(&v25, &location);
  [v11 addAnimations:v24];
  activeHandoffPresentation = [(UIEditMenuInteraction *)self activeHandoffPresentation];
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __89__UIEditMenuInteraction_contextMenuInteraction_willDisplayMenuForConfiguration_animator___block_invoke_2;
  v21 = &unk_1E70F2F80;
  objc_copyWeak(&v23, &location);
  v16 = activeHandoffPresentation;
  v22 = v16;
  [v11 addCompletion:&v18];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
  if (v12)
  {
LABEL_6:
    [v12 runAnimations];
    [v12 runCompletions];
  }

LABEL_7:
}

void __89__UIEditMenuInteraction_contextMenuInteraction_willDisplayMenuForConfiguration_animator___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[7];
    WeakRetained[7] = 0;
    v3 = WeakRetained;

    WeakRetained = v3;
  }
}

void __89__UIEditMenuInteraction_contextMenuInteraction_willDisplayMenuForConfiguration_animator___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) completeHandoff];
  v2 = [WeakRetained activeHandoffPresentation];
  v3 = *(a1 + 32);

  if (v2 == v3)
  {
    v4 = WeakRetained[13];
    WeakRetained[13] = 0;
  }
}

- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  animatorCopy = animator;
  v11 = animatorCopy;
  if (animatorCopy)
  {
    v12 = 0;
    v13 = animatorCopy;
  }

  else
  {
    v13 = objc_opt_new();
    v12 = v13;
  }

  activeConfiguration = [(UIEditMenuInteraction *)self activeConfiguration];
  [(UIEditMenuInteraction *)self _willDismissMenuForConfiguration:activeConfiguration animator:v13];

  activeHandoffPresentation = [(UIEditMenuInteraction *)self activeHandoffPresentation];
  v16 = activeHandoffPresentation;
  if (activeHandoffPresentation)
  {
    [activeHandoffPresentation completeHandoff];
    activeHandoffPresentation = self->_activeHandoffPresentation;
    self->_activeHandoffPresentation = 0;
  }

  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __81__UIEditMenuInteraction_contextMenuInteraction_willEndForConfiguration_animator___block_invoke;
  v22 = &unk_1E70F35B8;
  v18 = configurationCopy;
  v23 = v18;
  selfCopy = self;
  [v13 addAnimations:&v19];
  if (v12)
  {
    [v12 runAnimations];
    [v12 runCompletions];
  }
}

void __81__UIEditMenuInteraction_contextMenuInteraction_willEndForConfiguration_animator___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) identifier];
  v3 = [*(*(a1 + 40) + 80) identifier];

  if (v2 == v3)
  {
    v4 = *(a1 + 40);
    v5 = *(v4 + 80);
    *(v4 + 80) = 0;
  }
}

- (void)_setProxySender:(id)sender
{
  objc_storeWeak(&self->__proxySender, sender);
  contextMenuInteraction = self->_contextMenuInteraction;
  _proxySender = [(UIEditMenuInteraction *)self _proxySender];
  [(UIContextMenuInteraction *)contextMenuInteraction setProxySender:_proxySender];
}

- (id)_contextMenuInteraction:(id)interaction styleForMenuWithConfiguration:(id)configuration
{
  v5 = [_UIContextMenuStyle defaultStyle:interaction];
  [v5 setPreferredLayout:3];
  _activeHandoffContext = [(UIEditMenuInteraction *)self _activeHandoffContext];
  if (_activeHandoffContext)
  {
    [v5 setShouldMenuOverlapSourcePreview:1];
    -[UIEditMenuInteraction _anchorForPreferredArrowDirection:](self, "_anchorForPreferredArrowDirection:", [_activeHandoffContext arrowDirection]);
    v9[0] = v11;
    v9[1] = v12;
    v10 = v13;
    [v5 set_preferredAnchor:v9];
  }

  [v5 setInputViewVisibility:1];
  view = [(UIEditMenuInteraction *)self view];
  [v5 set_parentTraitEnvironmentForUserInterfaceStyle:view];

  return v5;
}

- ($9638EFF0CCCAFE90921E224CC361F7AC)_anchorForPreferredArrowDirection:(SEL)direction
{
  v5 = 0;
  v6 = 1;
  if (a4 > 1)
  {
    if (a4 == 4)
    {
      v5 = 1;
      v6 = 2;
      goto LABEL_18;
    }

    if (a4 == 3)
    {
      v5 = 1;
      v6 = 8;
      goto LABEL_18;
    }

    if (a4 != 2)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  if (!a4)
  {
LABEL_12:
    view = [($9638EFF0CCCAFE90921E224CC361F7AC *)self view];
    if ([view _shouldReverseLayoutDirection])
    {
      v5 = 2;
    }

    else
    {
      v5 = 8;
    }

    v6 = 1;
    goto LABEL_18;
  }

  if (a4 == 1)
  {
    view2 = [($9638EFF0CCCAFE90921E224CC361F7AC *)self view];
    if ([view2 _shouldReverseLayoutDirection])
    {
      v5 = 2;
    }

    else
    {
      v5 = 8;
    }

    v6 = 4;
  }

LABEL_18:
  retstr->var0 = v6;
  retstr->var1 = v5;
  retstr->var3 = 0.0;
  retstr->var4 = 0;
  retstr->var2 = 0.0;
  return self;
}

- (id)_menuPreparationContextForConfiguration:(id)configuration
{
  v4 = [(UIEditMenuInteraction *)self firstResponderTargetForConfiguration:configuration];
  v5 = [_UIMenuPreparationContext contextWithPreparer:self firstResponderTarget:v4];
  [v5 setDeferredElementDelegate:self];
  [v5 setSupportsCustomViewMenuElements:0];
  _proxySender = [(UIEditMenuInteraction *)self _proxySender];
  [v5 setSender:_proxySender];

  [v5 setUseSenderAsResponderSender:{-[UIEditMenuInteraction _useSenderAsResponderSender](self, "_useSenderAsResponderSender")}];

  return v5;
}

- (void)_prepareMenuAtLocation:(CGPoint)location configuration:(id)configuration completionHandler:(id)handler
{
  y = location.y;
  x = location.x;
  configurationCopy = configuration;
  handlerCopy = handler;
  v11 = [(UIEditMenuInteraction *)self _defaultSuggestedActionsAtLocation:configurationCopy configuration:x, y];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __80__UIEditMenuInteraction__prepareMenuAtLocation_configuration_completionHandler___block_invoke;
  v19 = &unk_1E710E108;
  v12 = v11;
  v20 = v12;
  v21 = handlerCopy;
  v13 = handlerCopy;
  v14 = _Block_copy(&v16);
  if ((*&self->_delegateImplements & 0x10) != 0)
  {
    v15 = [(UIEditMenuInteraction *)self delegate:v16];
    [v15 _editMenuInteraction:self menuForConfiguration:configurationCopy suggestedActions:v12 completionHandler:v14];
  }

  else
  {
    v15 = [(UIEditMenuInteraction *)self _menuForSuggestedActions:v12 configuration:configurationCopy, v16, v17, v18, v19, v20, v21];
    v14[2](v14, v15);
  }
}

void __80__UIEditMenuInteraction__prepareMenuAtLocation_configuration_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v3 = [UIMenu menuWithChildren:*(a1 + 32)];
  }

  v4 = v3;
  (*(*(a1 + 40) + 16))();
}

- (void)deferredMenuElementWasFulfilled:(id)fulfilled
{
  fulfilledCopy = fulfilled;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__UIEditMenuInteraction_deferredMenuElementWasFulfilled___block_invoke;
  v6[3] = &unk_1E70F6A48;
  v7 = fulfilledCopy;
  v5 = fulfilledCopy;
  [(UIEditMenuInteraction *)self _updateVisibleMenuWithReason:2 updateBlock:v6];
}

id __57__UIEditMenuInteraction_deferredMenuElementWasFulfilled___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (isDeferredElementVisibleInMenu(*(a1 + 32), v3))
  {
    v4 = [v3 copy];
  }

  else
  {
    v4 = v3;
  }

  v5 = v4;

  return v5;
}

- (id)_menuForSuggestedActions:(id)actions configuration:(id)configuration
{
  if (*&self->_delegateImplements)
  {
    configurationCopy = configuration;
    actionsCopy = actions;
    delegate = [(UIEditMenuInteraction *)self delegate];
    v4 = [delegate editMenuInteraction:self menuForConfiguration:configurationCopy suggestedActions:actionsCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (CGRect)_targetRectForConfiguration:(id)configuration
{
  if ((*&self->_delegateImplements & 2) != 0)
  {
    configurationCopy = configuration;
    delegate = [(UIEditMenuInteraction *)self delegate];
    [delegate editMenuInteraction:self targetRectForConfiguration:configurationCopy];
    v3 = v10;
    v4 = v11;
    v5 = v12;
    v6 = v13;
  }

  else
  {
    v3 = *MEMORY[0x1E695F050];
    v4 = *(MEMORY[0x1E695F050] + 8);
    v5 = *(MEMORY[0x1E695F050] + 16);
    v6 = *(MEMORY[0x1E695F050] + 24);
  }

  v14 = v3;
  v15 = v4;
  v16 = v5;
  v17 = v6;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (void)_willPresentMenuForConfiguration:(id)configuration animator:(id)animator
{
  self->_lastDismissalTime = 0.0;
  self->_dismissedByMenuAction = 0;
  if ((*&self->_delegateImplements & 4) != 0)
  {
    animatorCopy = animator;
    configurationCopy = configuration;
    delegate = [(UIEditMenuInteraction *)self delegate];
    [delegate editMenuInteraction:self willPresentMenuForConfiguration:configurationCopy animator:animatorCopy];
  }
}

- (void)_willDismissMenuForConfiguration:(id)configuration animator:(id)animator
{
  configurationCopy = configuration;
  animatorCopy = animator;
  self->_lastDismissalTime = CFAbsoluteTimeGetCurrent();
  if ((*&self->_delegateImplements & 8) != 0)
  {
    delegate = [(UIEditMenuInteraction *)self delegate];
    [delegate editMenuInteraction:self willDismissMenuForConfiguration:configurationCopy animator:animatorCopy];
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67__UIEditMenuInteraction__willDismissMenuForConfiguration_animator___block_invoke;
  v10[3] = &unk_1E70F35B8;
  v10[4] = self;
  v11 = configurationCopy;
  v9 = configurationCopy;
  [animatorCopy addCompletion:v10];
}

void __67__UIEditMenuInteraction__willDismissMenuForConfiguration_animator___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) activeConfiguration];
  v3 = *(a1 + 40);

  if (v2 == v3)
  {
    v4 = *(a1 + 32);

    [v4 setActiveConfiguration:0];
  }
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIMenuLeaf)_selectedMenuLeaf
{
  WeakRetained = objc_loadWeakRetained(&self->__selectedMenuLeaf);

  return WeakRetained;
}

@end