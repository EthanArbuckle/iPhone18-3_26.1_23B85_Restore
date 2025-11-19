@interface UIEditMenuInteraction
+ (BOOL)_isOutOfProcessEditMenusEnabled;
+ (void)_registerPlatformMetrics;
- ($9638EFF0CCCAFE90921E224CC361F7AC)_anchorForPreferredArrowDirection:(SEL)a3;
- (BOOL)isDisplayingMenu;
- (CGPoint)locationInView:(UIView *)view;
- (CGRect)_editMenuPresentation:(id)a3 targetRectForConfiguration:(id)a4;
- (CGRect)_targetRectForConfiguration:(id)a3;
- (CGRect)menuFrameInCoordinateSpace:(id)a3;
- (UIEditMenuInteraction)initWithDelegate:(id)delegate;
- (UIMenuLeaf)_selectedMenuLeaf;
- (UIView)view;
- (id)_contextMenuInteraction:(id)a3 styleForMenuWithConfiguration:(id)a4;
- (id)_defaultSuggestedActionsAtLocation:(CGPoint)a3 configuration:(id)a4;
- (id)_editMenuPresentation:(id)a3 preferredLayoutRectsForConfiguration:(id)a4;
- (id)_editMenuPresentation:(id)a3 titleViewForMenu:(id)a4 configuration:(id)a5;
- (id)_menuForSuggestedActions:(id)a3 configuration:(id)a4;
- (id)_menuPreparationContextForConfiguration:(id)a3;
- (id)_proxySender;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (id)contextMenuInteraction:(id)a3 previewForDismissingMenuWithConfiguration:(id)a4;
- (id)contextMenuInteraction:(id)a3 previewForHighlightingMenuWithConfiguration:(id)a4;
- (id)delegate;
- (id)firstResponderTargetForConfiguration:(id)a3;
- (void)_contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4 completion:(id)a5;
- (void)_didMoveFromWindow:(id)a3 toWindow:(id)a4;
- (void)_dismissMenuWithPresentationType:(int64_t)a3;
- (void)_editMenuPresentation:(id)a3 didSelectMenuLeaf:(id)a4 completion:(id)a5;
- (void)_editMenuPresentation:(id)a3 didTransitionMenuForConfiguration:(id)a4;
- (void)_editMenuPresentation:(id)a3 handoffDisplayedMenuWithContext:(id)a4;
- (void)_editMenuPresentation:(id)a3 preparedMenuForDisplay:(id)a4 completion:(id)a5;
- (void)_editMenuPresentation:(id)a3 willDismissMenuForConfiguration:(id)a4 animator:(id)a5;
- (void)_editMenuPresentation:(id)a3 willPresentMenuForConfiguration:(id)a4 animator:(id)a5;
- (void)_prepareMenuAtLocation:(CGPoint)a3 configuration:(id)a4 completionHandler:(id)a5;
- (void)_setProxySender:(id)a3;
- (void)_updateContextMenuInteractionDrivers;
- (void)_updateVisibleMenuWithReason:(int64_t)a3 updateBlock:(id)a4;
- (void)_viewTraitCollectionDidChange:(id)a3;
- (void)_willDismissMenuForConfiguration:(id)a3 animator:(id)a4;
- (void)_willPresentMenuForConfiguration:(id)a3 animator:(id)a4;
- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5;
- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5;
- (void)deferredMenuElementWasFulfilled:(id)a3;
- (void)didMoveToView:(id)a3;
- (void)presentEditMenuWithConfiguration:(UIEditMenuConfiguration *)configuration;
- (void)reloadVisibleMenu;
- (void)setPresentsContextMenuAsSecondaryAction:(BOOL)a3;
- (void)updateVisibleMenuPositionAnimated:(BOOL)animated;
- (void)willMoveToView:(id)a3;
@end

@implementation UIEditMenuInteraction

- (BOOL)isDisplayingMenu
{
  v3 = [(UIEditMenuInteraction *)self activeEditMenuPresentation];
  v4 = [v3 displayedMenu];
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = [(UIContextMenuInteraction *)self->_contextMenuInteraction _hasVisibleMenu];
  }

  return v5;
}

- (id)_proxySender
{
  v2 = self;
  WeakRetained = objc_loadWeakRetained(&self->__proxySender);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v2 = WeakRetained;
  }

  v5 = v2;

  return v2;
}

- (void)_updateContextMenuInteractionDrivers
{
  v4 = [MEMORY[0x1E695DF70] array];
  if ([(UIEditMenuInteraction *)self presentsContextMenuAsSecondaryAction])
  {
    v3 = objc_opt_new();
    [v4 addObject:v3];
  }

  [(UIContextMenuInteraction *)self->_contextMenuInteraction setDrivers:v4];
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
    v8 = [(UIEditMenuInteraction *)v6 _proxySender];
    [(_UIEditMenuBridgedContextMenuInteraction *)v7 setProxySender:v8];

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

- (void)willMoveToView:(id)a3
{
  contextMenuInteraction = self->_contextMenuInteraction;
  v5 = a3;
  v6 = [(UIContextMenuInteraction *)contextMenuInteraction view];
  [v6 removeInteraction:self->_contextMenuInteraction];

  WeakRetained = objc_loadWeakRetained(&self->_view);
  if (WeakRetained == v5)
  {
  }

  else
  {
    v8 = [(UIEditMenuInteraction *)self isDisplayingMenu];

    if (v8)
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

- (void)didMoveToView:(id)a3
{
  v5 = a3;
  objc_storeWeak(&self->_view, v5);
  v4 = v5;
  if (v5)
  {
    [v5 addInteraction:self->_contextMenuInteraction];
    v4 = v5;
  }
}

- (void)_didMoveFromWindow:(id)a3 toWindow:(id)a4
{
  if (!a4)
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

- (void)_viewTraitCollectionDidChange:(id)a3
{
  v5 = a3;
  if ([(UIEditMenuInteraction *)self isDisplayingMenu])
  {
    v4 = [(UIEditMenuInteraction *)self activeEditMenuPresentation];
    [v4 sourceViewDidUpdateFromTraitCollection:v5];
  }
}

- (void)setPresentsContextMenuAsSecondaryAction:(BOOL)a3
{
  if (self->_presentsContextMenuAsSecondaryAction != a3)
  {
    self->_presentsContextMenuAsSecondaryAction = a3;
    [(UIEditMenuInteraction *)self _updateContextMenuInteractionDrivers];
  }
}

- (void)presentEditMenuWithConfiguration:(UIEditMenuConfiguration *)configuration
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = configuration;
  v6 = [(UIEditMenuInteraction *)self view];

  if (!v6)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v12 = __UIFaultDebugAssertLog();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_7;
      }

      v13 = [(UIEditMenuInteraction *)self activeConfiguration];
      v14 = [(UIEditMenuInteraction *)self view];
      *buf = 138412546;
      v18 = v13;
      v19 = 2112;
      v20 = v14;
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
      v13 = [(UIEditMenuInteraction *)self activeConfiguration];
      v14 = [(UIEditMenuInteraction *)self view];
      *buf = 138412546;
      v18 = v13;
      v19 = 2112;
      v20 = v14;
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
  v3 = [(UIEditMenuInteraction *)self activeConfiguration];
  v4 = v3;
  if (v3)
  {
    [v3 sourcePoint];
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
  v5 = [(UIEditMenuInteraction *)self activeEditMenuPresentation];
  v7 = [v5 displayedMenu];

  if (v7)
  {
    v6 = [(UIEditMenuInteraction *)self activeEditMenuPresentation];
    [v6 updateMenuPositionAnimated:v3];
  }
}

- (CGPoint)locationInView:(UIView *)view
{
  v4 = view;
  v5 = [(UIEditMenuInteraction *)self contextMenuInteraction];
  v6 = [v5 _hasVisibleMenu];

  if (v6)
  {
    [(UIContextMenuInteraction *)self->_contextMenuInteraction locationInView:v4];
    v8 = v7;
    v10 = v9;
  }

  else
  {
    v11 = [(UIEditMenuInteraction *)self activeConfiguration];

    if (v11)
    {
      v12 = [(UIEditMenuInteraction *)self activeConfiguration];
      [v12 sourcePoint];
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
      v15 = [(UIEditMenuInteraction *)self view];

      if (v15 == v4)
      {
        v8 = 1.79769313e308;
        v10 = 1.79769313e308;
      }

      else
      {
        v16 = [(UIEditMenuInteraction *)self view];
        [v16 convertPoint:v4 toView:{v8, 1.79769313e308}];
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

- (void)_dismissMenuWithPresentationType:(int64_t)a3
{
  v5 = [(UIEditMenuInteraction *)self pendingConfiguration];

  if (v5)
  {
    pendingConfiguration = self->_pendingConfiguration;
    self->_pendingConfiguration = 0;
  }

  v7 = [(UIEditMenuInteraction *)self activeEditMenuPresentation];
  v8 = v7;
  if (a3 == 2 || !v7)
  {
  }

  else
  {
    v9 = [(UIEditMenuInteraction *)self _activeHandoffContext];

    if (!v9)
    {
      v12 = [(UIEditMenuInteraction *)self activeEditMenuPresentation];
      [v12 hideMenuWithReason:0];
      goto LABEL_11;
    }
  }

  v10 = [(UIEditMenuInteraction *)self contextMenuInteraction];
  v11 = [v10 _hasVisibleMenu];

  if (a3 == 1 || !v11)
  {
    return;
  }

  v12 = [(UIEditMenuInteraction *)self contextMenuInteraction];
  [v12 dismissMenu];
LABEL_11:
}

- (void)_updateVisibleMenuWithReason:(int64_t)a3 updateBlock:(id)a4
{
  v13 = a4;
  v6 = [(UIEditMenuInteraction *)self activeEditMenuPresentation];
  v7 = [v6 displayedMenu];

  if (v7)
  {
    v8 = [v7 copy];
    v9 = v13[2](v13, v8);
    if (v9 != v8)
    {
      +[UIView areAnimationsEnabled];
      v10 = [(UIEditMenuInteraction *)self activeEditMenuPresentation];
      [v10 replaceVisibleMenuWithMenu:v9 reason:a3];
    }
  }

  else
  {
    v11 = [(UIEditMenuInteraction *)self contextMenuInteraction];
    v12 = [v11 _hasVisibleMenu];

    if (!v12)
    {
      goto LABEL_8;
    }

    v8 = [(UIEditMenuInteraction *)self contextMenuInteraction];
    [v8 updateVisibleMenuWithBlock:v13];
  }

LABEL_8:
}

- (CGRect)menuFrameInCoordinateSpace:(id)a3
{
  v4 = a3;
  v5 = [(UIEditMenuInteraction *)self activeEditMenuPresentation];

  if (v5)
  {
    v6 = [(UIEditMenuInteraction *)self activeEditMenuPresentation];
    [v6 menuFrameInCoordinateSpace:v4];
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

- (id)firstResponderTargetForConfiguration:(id)a3
{
  v4 = a3;
  if ((*&self->_delegateImplements & 0x80) == 0 || (-[UIEditMenuInteraction delegate](self, "delegate"), v5 = objc_claimAutoreleasedReturnValue(), [v5 _editMenuInteraction:self firstResponderTargetForConfiguration:v4], v6 = objc_claimAutoreleasedReturnValue(), v5, !v6))
  {
    v7 = [v4 _firstResponderTarget];
    if (!v7)
    {
      v7 = [(UIEditMenuInteraction *)self view];
    }

    v6 = v7;
  }

  return v6;
}

- (id)_defaultSuggestedActionsAtLocation:(CGPoint)a3 configuration:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = [(UIEditMenuInteraction *)self firstResponderTargetForConfiguration:a4];
  v8 = [(UIEditMenuInteraction *)self view];
  v9 = [_UIEditMenuProvider menuElementsFromResponderChain:v7 atLocation:v8 inCoordinateSpace:[(UIEditMenuInteraction *)self _includeMenuControllerItems] includeMenuControllerItems:x, y];

  return v9;
}

- (void)_editMenuPresentation:(id)a3 didSelectMenuLeaf:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_storeWeak(&self->__selectedMenuLeaf, v9);
  v11 = [(UIEditMenuInteraction *)self _proxySender];
  v17 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v9;
    v13 = [v8 activeConfiguration];
    v14 = [(UIEditMenuInteraction *)self firstResponderTargetForConfiguration:v13];

    [v12 set_useSenderForResolvingTarget:{-[UIEditMenuInteraction _useSenderAsResponderSender](self, "_useSenderAsResponderSender")}];
    v15 = [v12 _resolvedTargetFromFirstTarget:v14 sender:v11 shouldUseFallbackActionOut:&v17];

    if (!v15)
    {
      goto LABEL_10;
    }

    if (v17)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v12 _performFallbackActionWithSender:v11 target:v15];
        goto LABEL_8;
      }
    }
  }

  else
  {
    v15 = 0;
  }

  [v9 performWithSender:v11 target:v15];
LABEL_8:
  if ((*&self->_delegateImplements & 0x100) != 0)
  {
    v16 = [(UIEditMenuInteraction *)self delegate];
    [v16 _editMenuInteraction:self didPerformMenuLeaf:v9 target:v15];
  }

LABEL_10:
  self->_dismissedByMenuAction = ([v9 attributes] & 8) == 0;
  objc_storeWeak(&self->__selectedMenuLeaf, 0);
  v10[2](v10);
}

- (CGRect)_editMenuPresentation:(id)a3 targetRectForConfiguration:(id)a4
{
  v5 = a4;
  [(UIEditMenuInteraction *)self _targetRectForConfiguration:v5];
  x = v16.origin.x;
  y = v16.origin.y;
  width = v16.size.width;
  height = v16.size.height;
  if (CGRectIsNull(v16))
  {
    [v5 sourcePoint];
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

- (void)_editMenuPresentation:(id)a3 willPresentMenuForConfiguration:(id)a4 animator:(id)a5
{
  v7 = a5;
  v9 = a4;
  v8 = [(UIEditMenuInteraction *)self _outgoingPresentation];
  [v8 forceEndDismissalIfNeeded];

  [(UIEditMenuInteraction *)self _dismissMenuWithPresentationType:2];
  [(UIEditMenuInteraction *)self _willPresentMenuForConfiguration:v9 animator:v7];
}

- (void)_editMenuPresentation:(id)a3 willDismissMenuForConfiguration:(id)a4 animator:(id)a5
{
  v9 = a3;
  v10 = a5;
  [(UIEditMenuInteraction *)self _willDismissMenuForConfiguration:a4 animator:v10];
  activeEditMenuPresentation = self->_activeEditMenuPresentation;
  if (activeEditMenuPresentation == v9)
  {
    self->_activeEditMenuPresentation = 0;

    v12 = [(UIEditMenuInteraction *)self _outgoingPresentation];
    [v12 forceEndDismissalIfNeeded];

    objc_storeStrong(&self->__outgoingPresentation, a3);
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __88__UIEditMenuInteraction__editMenuPresentation_willDismissMenuForConfiguration_animator___block_invoke;
  v14[3] = &unk_1E70F35B8;
  v14[4] = self;
  v15 = v9;
  v13 = v9;
  [v10 addCompletion:v14];
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

- (void)_editMenuPresentation:(id)a3 preparedMenuForDisplay:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [a3 activeConfiguration];
  v11 = [(UIEditMenuInteraction *)self _menuPreparationContextForConfiguration:v10];

  v12 = v8;
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
    v16 = [v15 _resolvedElementSize];
    v17 = [v15 children];
    v18 = _menuElementsPreparedForDisplay(v17, v16, v13, &v20);
    v14 = [v15 menuByReplacingChildren:v18];

    LOBYTE(v20) = 1;
    if ([v13 supportsHeaderView])
    {
      v19 = [v12 headerView];
      HIBYTE(v20) |= v19 != 0;
    }

    [v14 setMetadata:v20 | (v21 << 32)];
  }

  v9[2](v9, v14);
}

- (void)_editMenuPresentation:(id)a3 didTransitionMenuForConfiguration:(id)a4
{
  if ((*&self->_delegateImplements & 0x20) != 0)
  {
    v6 = a4;
    v7 = [(UIEditMenuInteraction *)self delegate];
    [v7 _editMenuInteraction:self didTransitionMenuForConfiguration:v6];
  }
}

- (id)_editMenuPresentation:(id)a3 titleViewForMenu:(id)a4 configuration:(id)a5
{
  if ((*&self->_delegateImplements & 0x40) != 0)
  {
    v8 = a5;
    v9 = a4;
    v10 = [(UIEditMenuInteraction *)self delegate];
    v5 = [v10 _editMenuInteraction:self titleViewForMenu:v9 configuration:v8];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_editMenuPresentation:(id)a3 preferredLayoutRectsForConfiguration:(id)a4
{
  if ((*&self->_delegateImplements & 0x200) != 0)
  {
    v6 = a4;
    v7 = [(UIEditMenuInteraction *)self delegate];
    v4 = [v7 _editMenuInteraction:self preferredLayoutRectsForConfiguration:v6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_editMenuPresentation:(id)a3 handoffDisplayedMenuWithContext:(id)a4
{
  v14 = a3;
  v7 = a4;
  v8 = [v7 configuration];
  [v8 _setDidHandoff:1];

  objc_storeStrong(&self->_activeHandoffContext, a4);
  v9 = self->_contextMenuInteraction;
  v10 = [(UIContextMenuInteraction *)v9 view];

  if (!v10)
  {
    WeakRetained = objc_loadWeakRetained(&self->_view);
    [WeakRetained addInteraction:v9];
  }

  objc_storeStrong(&self->_activeHandoffPresentation, a3);
  v12 = [v7 configuration];
  [v12 sourcePoint];
  [(UIContextMenuInteraction *)v9 _presentMenuAtLocation:?];

  activeEditMenuPresentation = self->_activeEditMenuPresentation;
  if (activeEditMenuPresentation == v14)
  {
    self->_activeEditMenuPresentation = 0;
  }
}

- (void)_contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4 completion:(id)a5
{
  y = a4.y;
  x = a4.x;
  v8 = a5;
  v9 = [(UIEditMenuInteraction *)self _activeHandoffContext];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 configuration];
    activeConfiguration = self->_activeConfiguration;
    self->_activeConfiguration = v11;

    v13 = [v10 configuration];
    v14 = [v13 identifier];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __91__UIEditMenuInteraction__contextMenuInteraction_configurationForMenuAtLocation_completion___block_invoke;
    v22[3] = &unk_1E70F6A70;
    v23 = v10;
    v15 = [UIContextMenuConfiguration configurationWithIdentifier:v14 previewProvider:0 actionProvider:v22];

    v8[2](v8, v15);
    v16 = v23;
  }

  else
  {
    v16 = [MEMORY[0x1E696AFB0] UUID];
    v17 = [UIEditMenuConfiguration configurationWithIdentifier:v16 sourcePoint:x, y];
    v18 = self->_activeConfiguration;
    self->_activeConfiguration = v17;

    v19 = self->_activeConfiguration;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __91__UIEditMenuInteraction__contextMenuInteraction_configurationForMenuAtLocation_completion___block_invoke_2;
    v20[3] = &unk_1E710E108;
    v20[4] = self;
    v21 = v8;
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

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"UIEditMenuInteraction.m" lineNumber:718 description:@"This should never be called."];

  return 0;
}

- (id)contextMenuInteraction:(id)a3 previewForHighlightingMenuWithConfiguration:(id)a4
{
  v5 = a3;
  v6 = [(UIEditMenuInteraction *)self _activeHandoffContext];

  if (v6)
  {
    v7 = [(UIEditMenuInteraction *)self _activeHandoffContext];
    v8 = [v7 sourceView];

    v9 = objc_opt_new();
    v10 = +[UIColor clearColor];
    [(UIPreviewTarget *)v9 setBackgroundColor:v10];

    [(UIPreviewTarget *)v8 bounds];
    v13 = v12 + v11 * 0.5;
    v16 = v15 + v14 * 0.5;
    v17 = [v5 view];
    [(UIPreviewTarget *)v8 convertPoint:v17 toView:v13, v16];
    v19 = v18;
    v21 = v20;

    v22 = [UIPreviewTarget alloc];
    v23 = [v5 view];

    v24 = [(UIPreviewTarget *)v22 initWithContainer:v23 center:v19, v21];
    v25 = [UITargetedPreview alloc];
    v26 = v8;
    v27 = v9;
    v28 = v24;
  }

  else
  {
    v29 = [UIPreviewTarget alloc];
    v30 = [v5 view];

    [(UIEditMenuConfiguration *)self->_activeConfiguration sourcePoint];
    v8 = [(UIPreviewTarget *)v29 initWithContainer:v30 center:?];

    v9 = objc_opt_new();
    v31 = [UITargetedPreview alloc];
    v24 = objc_opt_new();
    v25 = v31;
    v26 = v9;
    v27 = v24;
    v28 = v8;
  }

  v32 = [(UITargetedPreview *)v25 initWithView:v26 parameters:v27 target:v28];

  return v32;
}

- (id)contextMenuInteraction:(id)a3 previewForDismissingMenuWithConfiguration:(id)a4
{
  v5 = a3;
  v6 = [v5 view];
  v7 = [v6 window];

  if (v7)
  {
    v8 = [UIPreviewTarget alloc];
    v9 = [v5 view];
    [(UIEditMenuConfiguration *)self->_activeConfiguration sourcePoint];
    v10 = [(UIPreviewTarget *)v8 initWithContainer:v9 center:?];

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

- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v10)
  {
    v12 = 0;
    v13 = v10;
  }

  else
  {
    v13 = objc_opt_new();
    v12 = v13;
  }

  v14 = [(UIEditMenuInteraction *)self _activeHandoffContext];

  if (!v14)
  {
    [(UIEditMenuInteraction *)self _dismissMenuWithPresentationType:1];
    v17 = [(UIEditMenuInteraction *)self activeConfiguration];
    [(UIEditMenuInteraction *)self _willPresentMenuForConfiguration:v17 animator:v13];

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
  v15 = [(UIEditMenuInteraction *)self activeHandoffPresentation];
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __89__UIEditMenuInteraction_contextMenuInteraction_willDisplayMenuForConfiguration_animator___block_invoke_2;
  v21 = &unk_1E70F2F80;
  objc_copyWeak(&v23, &location);
  v16 = v15;
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

- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v10)
  {
    v12 = 0;
    v13 = v10;
  }

  else
  {
    v13 = objc_opt_new();
    v12 = v13;
  }

  v14 = [(UIEditMenuInteraction *)self activeConfiguration];
  [(UIEditMenuInteraction *)self _willDismissMenuForConfiguration:v14 animator:v13];

  v15 = [(UIEditMenuInteraction *)self activeHandoffPresentation];
  v16 = v15;
  if (v15)
  {
    [v15 completeHandoff];
    activeHandoffPresentation = self->_activeHandoffPresentation;
    self->_activeHandoffPresentation = 0;
  }

  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __81__UIEditMenuInteraction_contextMenuInteraction_willEndForConfiguration_animator___block_invoke;
  v22 = &unk_1E70F35B8;
  v18 = v9;
  v23 = v18;
  v24 = self;
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

- (void)_setProxySender:(id)a3
{
  objc_storeWeak(&self->__proxySender, a3);
  contextMenuInteraction = self->_contextMenuInteraction;
  v5 = [(UIEditMenuInteraction *)self _proxySender];
  [(UIContextMenuInteraction *)contextMenuInteraction setProxySender:v5];
}

- (id)_contextMenuInteraction:(id)a3 styleForMenuWithConfiguration:(id)a4
{
  v5 = [_UIContextMenuStyle defaultStyle:a3];
  [v5 setPreferredLayout:3];
  v6 = [(UIEditMenuInteraction *)self _activeHandoffContext];
  if (v6)
  {
    [v5 setShouldMenuOverlapSourcePreview:1];
    -[UIEditMenuInteraction _anchorForPreferredArrowDirection:](self, "_anchorForPreferredArrowDirection:", [v6 arrowDirection]);
    v9[0] = v11;
    v9[1] = v12;
    v10 = v13;
    [v5 set_preferredAnchor:v9];
  }

  [v5 setInputViewVisibility:1];
  v7 = [(UIEditMenuInteraction *)self view];
  [v5 set_parentTraitEnvironmentForUserInterfaceStyle:v7];

  return v5;
}

- ($9638EFF0CCCAFE90921E224CC361F7AC)_anchorForPreferredArrowDirection:(SEL)a3
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
    v8 = [($9638EFF0CCCAFE90921E224CC361F7AC *)self view];
    if ([v8 _shouldReverseLayoutDirection])
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
    v7 = [($9638EFF0CCCAFE90921E224CC361F7AC *)self view];
    if ([v7 _shouldReverseLayoutDirection])
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

- (id)_menuPreparationContextForConfiguration:(id)a3
{
  v4 = [(UIEditMenuInteraction *)self firstResponderTargetForConfiguration:a3];
  v5 = [_UIMenuPreparationContext contextWithPreparer:self firstResponderTarget:v4];
  [v5 setDeferredElementDelegate:self];
  [v5 setSupportsCustomViewMenuElements:0];
  v6 = [(UIEditMenuInteraction *)self _proxySender];
  [v5 setSender:v6];

  [v5 setUseSenderAsResponderSender:{-[UIEditMenuInteraction _useSenderAsResponderSender](self, "_useSenderAsResponderSender")}];

  return v5;
}

- (void)_prepareMenuAtLocation:(CGPoint)a3 configuration:(id)a4 completionHandler:(id)a5
{
  y = a3.y;
  x = a3.x;
  v9 = a4;
  v10 = a5;
  v11 = [(UIEditMenuInteraction *)self _defaultSuggestedActionsAtLocation:v9 configuration:x, y];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __80__UIEditMenuInteraction__prepareMenuAtLocation_configuration_completionHandler___block_invoke;
  v19 = &unk_1E710E108;
  v12 = v11;
  v20 = v12;
  v21 = v10;
  v13 = v10;
  v14 = _Block_copy(&v16);
  if ((*&self->_delegateImplements & 0x10) != 0)
  {
    v15 = [(UIEditMenuInteraction *)self delegate:v16];
    [v15 _editMenuInteraction:self menuForConfiguration:v9 suggestedActions:v12 completionHandler:v14];
  }

  else
  {
    v15 = [(UIEditMenuInteraction *)self _menuForSuggestedActions:v12 configuration:v9, v16, v17, v18, v19, v20, v21];
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

- (void)deferredMenuElementWasFulfilled:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__UIEditMenuInteraction_deferredMenuElementWasFulfilled___block_invoke;
  v6[3] = &unk_1E70F6A48;
  v7 = v4;
  v5 = v4;
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

- (id)_menuForSuggestedActions:(id)a3 configuration:(id)a4
{
  if (*&self->_delegateImplements)
  {
    v7 = a4;
    v8 = a3;
    v9 = [(UIEditMenuInteraction *)self delegate];
    v4 = [v9 editMenuInteraction:self menuForConfiguration:v7 suggestedActions:v8];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (CGRect)_targetRectForConfiguration:(id)a3
{
  if ((*&self->_delegateImplements & 2) != 0)
  {
    v8 = a3;
    v9 = [(UIEditMenuInteraction *)self delegate];
    [v9 editMenuInteraction:self targetRectForConfiguration:v8];
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

- (void)_willPresentMenuForConfiguration:(id)a3 animator:(id)a4
{
  self->_lastDismissalTime = 0.0;
  self->_dismissedByMenuAction = 0;
  if ((*&self->_delegateImplements & 4) != 0)
  {
    v7 = a4;
    v8 = a3;
    v9 = [(UIEditMenuInteraction *)self delegate];
    [v9 editMenuInteraction:self willPresentMenuForConfiguration:v8 animator:v7];
  }
}

- (void)_willDismissMenuForConfiguration:(id)a3 animator:(id)a4
{
  v6 = a3;
  v7 = a4;
  self->_lastDismissalTime = CFAbsoluteTimeGetCurrent();
  if ((*&self->_delegateImplements & 8) != 0)
  {
    v8 = [(UIEditMenuInteraction *)self delegate];
    [v8 editMenuInteraction:self willDismissMenuForConfiguration:v6 animator:v7];
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67__UIEditMenuInteraction__willDismissMenuForConfiguration_animator___block_invoke;
  v10[3] = &unk_1E70F35B8;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v7 addCompletion:v10];
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