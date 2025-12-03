@interface _UIContextMenuPreviewPresentationController
- (BOOL)_wantsAutomaticFirstResponderWhenPresentingRemoteViewController;
- (CGRect)frameOfPresentedViewInContainerView;
- (CGSize)platterContentSize;
- (UIEdgeInsets)_baseContentInsetsWithLeftMargin:(double *)margin rightMargin:(double *)rightMargin;
- (_UIContextMenuPreviewPresentationControllerDelegate)menuPresentationDelegate;
- (id)_traitCollectionForChildEnvironment:(id)environment;
- (id)_viewForRemoteTextEffectsWindowMatchAnimation;
- (id)preferredFocusEnvironments;
- (void)_updatePlatterContentSizeWithPreferredContentSize:(CGSize)size;
- (void)dismissalTransitionWillBegin;
- (void)menuLayoutDidProducePreviewSize:(CGSize)size;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)presentationTransitionWillBegin;
- (void)systemLayoutFittingSizeDidChangeForChildContentContainer:(id)container;
@end

@implementation _UIContextMenuPreviewPresentationController

- (CGSize)platterContentSize
{
  width = self->_platterContentSize.width;
  height = self->_platterContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (_UIContextMenuPreviewPresentationControllerDelegate)menuPresentationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_menuPresentationDelegate);

  return WeakRetained;
}

- (void)presentationTransitionWillBegin
{
  v17.receiver = self;
  v17.super_class = _UIContextMenuPreviewPresentationController;
  [(UIPresentationController *)&v17 presentationTransitionWillBegin];
  presentedView = [(UIPresentationController *)self presentedView];
  containerView = [(UIPresentationController *)self containerView];
  [containerView setUserInteractionEnabled:0];
  [containerView frame];
  Width = CGRectGetWidth(v18);
  CATransform3DMakeTranslation(&v16, -Width, 0.0, 0.0);
  layer = [containerView layer];
  v15 = v16;
  [layer setSublayerTransform:&v15];

  [containerView setAlpha:0.0];
  [containerView addSubview:presentedView];
  presentedViewController = [(UIPresentationController *)self presentedViewController];
  [presentedViewController preferredContentSize];
  [(_UIContextMenuPreviewPresentationController *)self _updatePlatterContentSizeWithPreferredContentSize:?];

  [(_UIContextMenuPreviewPresentationController *)self platterContentSize];
  [presentedView setFrame:{0.0, 0.0, v8, v9}];
  [presentedView _continuousCornerRadius];
  if (v10 == 0.0)
  {
    traitCollection = [containerView traitCollection];
    v12 = _UIContextMenuGetPlatformMetrics([traitCollection userInterfaceIdiom]);

    [v12 previewPlatterCornerRadius];
    v13 = [UICornerRadius fixedRadius:?];
    v14 = [UICornerConfiguration configurationWithRadius:v13];
    [presentedView setCornerConfiguration:v14];
  }

  [containerView setNeedsLayout];
  [containerView layoutIfNeeded];
}

- (CGRect)frameOfPresentedViewInContainerView
{
  v13.receiver = self;
  v13.super_class = _UIContextMenuPreviewPresentationController;
  [(UIPresentationController *)&v13 frameOfPresentedViewInContainerView];
  v4 = v3;
  v6 = v5;
  [(_UIContextMenuPreviewPresentationController *)self platterContentSize];
  v8 = v7;
  v10 = v9;
  v11 = v4;
  v12 = v6;
  result.size.height = v10;
  result.size.width = v8;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (BOOL)_wantsAutomaticFirstResponderWhenPresentingRemoteViewController
{
  menuStyle = [(_UIContextMenuPreviewPresentationController *)self menuStyle];
  inputViewVisibility = [menuStyle inputViewVisibility];

  if (inputViewVisibility != 1)
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = _UIContextMenuPreviewPresentationController;
  return [(UIPresentationController *)&v6 _wantsAutomaticFirstResponderWhenPresentingRemoteViewController];
}

- (UIEdgeInsets)_baseContentInsetsWithLeftMargin:(double *)margin rightMargin:(double *)rightMargin
{
  v8.receiver = self;
  v8.super_class = _UIContextMenuPreviewPresentationController;
  [(UIPresentationController *)&v8 _baseContentInsetsWithLeftMargin:margin rightMargin:rightMargin];
  v4 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  result.right = v7;
  result.bottom = v6;
  result.left = v5;
  result.top = v4;
  return result;
}

- (void)dismissalTransitionWillBegin
{
  containerView = [(UIPresentationController *)self containerView];
  [containerView setUserInteractionEnabled:0];

  v4.receiver = self;
  v4.super_class = _UIContextMenuPreviewPresentationController;
  [(UIPresentationController *)&v4 dismissalTransitionWillBegin];
}

- (id)preferredFocusEnvironments
{
  menuStyle = [(_UIContextMenuPreviewPresentationController *)self menuStyle];
  hasInteractivePreview = [menuStyle hasInteractivePreview];

  menuPresentationDelegate = [(_UIContextMenuPreviewPresentationController *)self menuPresentationDelegate];
  v6 = [menuPresentationDelegate preferredFocusEnvironmentsForContextMenuPreviewPresentationController:self];
  v7 = [v6 mutableCopy];

  if (hasInteractivePreview)
  {
    v10.receiver = self;
    v10.super_class = _UIContextMenuPreviewPresentationController;
    preferredFocusEnvironments = [(UIPresentationController *)&v10 preferredFocusEnvironments];
    if ([preferredFocusEnvironments count])
    {
      [v7 addObjectsFromArray:preferredFocusEnvironments];
    }
  }

  return v7;
}

- (void)menuLayoutDidProducePreviewSize:(CGSize)size
{
  width = size.width;
  [(_UIContextMenuPreviewPresentationController *)self platterContentSize];
  v6 = v5;
  v8 = v7;
  menuStyle = [(_UIContextMenuPreviewPresentationController *)self menuStyle];
  ignoresDefaultSizingRules = [menuStyle ignoresDefaultSizingRules];

  if (ignoresDefaultSizingRules)
  {
    [(_UIContextMenuPreviewPresentationController *)self platterContentSize];
    v12 = v11 / width;
    if (v12 < 1.0)
    {
      v12 = 1.0;
    }

    CGAffineTransformMakeScale(&v18, v12, v12);
    containerView = [(UIPresentationController *)self containerView];
    UIRoundToViewScale(containerView);
    v6 = v14;
    containerView2 = [(UIPresentationController *)self containerView];
    UIRoundToViewScale(containerView2);
    v8 = v16;
  }

  presentedView = [(UIPresentationController *)self presentedView];
  [presentedView setFrame:{0.0, 0.0, v6, v8}];
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  v9.receiver = self;
  v9.super_class = _UIContextMenuPreviewPresentationController;
  containerCopy = container;
  [(UIPresentationController *)&v9 preferredContentSizeDidChangeForChildContentContainer:containerCopy];
  [containerCopy preferredContentSize];
  v6 = v5;
  v8 = v7;

  [(_UIContextMenuPreviewPresentationController *)self _updatePlatterContentSizeWithPreferredContentSize:v6, v8];
}

- (void)systemLayoutFittingSizeDidChangeForChildContentContainer:(id)container
{
  v14.receiver = self;
  v14.super_class = _UIContextMenuPreviewPresentationController;
  containerCopy = container;
  [(UIPresentationController *)&v14 systemLayoutFittingSizeDidChangeForChildContentContainer:containerCopy];
  v5 = [(UIPresentationController *)self presentedView:v14.receiver];
  [containerCopy preferredContentSize];
  v7 = v6;
  v9 = v8;

  [v5 systemLayoutSizeFittingSize:{v7, v9}];
  v11 = v10;
  v13 = v12;

  [(_UIContextMenuPreviewPresentationController *)self _updatePlatterContentSizeWithPreferredContentSize:v11, v13];
}

- (void)_updatePlatterContentSizeWithPreferredContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  containerView = [(UIPresentationController *)self containerView];
  traitCollection = [containerView traitCollection];
  v7 = _UIContextMenuGetPlatformMetrics([traitCollection userInterfaceIdiom]);

  [v7 previewPlatterMaximumSize];
  v9 = v8;
  [v7 previewPlatterMaximumSize];
  v11 = v10;
  menuStyle = [(_UIContextMenuPreviewPresentationController *)self menuStyle];
  if ([menuStyle preferredLayout] == 1)
  {

LABEL_3:
    v13 = containerView;
    goto LABEL_39;
  }

  menuStyle2 = [(_UIContextMenuPreviewPresentationController *)self menuStyle];
  preferredLayout = [menuStyle2 preferredLayout];

  v13 = containerView;
  if (preferredLayout != 3)
  {
    if (containerView)
    {
      traitCollection2 = [containerView traitCollection];
      verticalSizeClass = [traitCollection2 verticalSizeClass];

      if (verticalSizeClass == 1)
      {
        v18 = v9 / v11;
        [containerView bounds];
        v11 = CGRectGetHeight(v83);
        v9 = v18 * v11;
      }

      else
      {
        [containerView bounds];
        v20 = v19;
        v22 = v21;
        menuStyle3 = [(_UIContextMenuPreviewPresentationController *)self menuStyle];
        preferredLayout2 = [menuStyle3 preferredLayout];

        if (!preferredLayout2)
        {
          v80 = v20;
          v25 = containerView;
          [v25 safeAreaInsets];
          v27 = v26;
          v29 = v28;
          v31 = v30;
          v33 = v32;
          traitCollection3 = [v25 traitCollection];
          verticalSizeClass2 = [traitCollection3 verticalSizeClass];

          v36 = v33 + 0.0;
          if (verticalSizeClass2 == 1)
          {
            v36 = v33;
          }

          v79 = v36;
          if (verticalSizeClass2 == 1)
          {
            v37 = v27;
          }

          else
          {
            v31 = v31 + 20.0;
            v29 = v29 + 0.0;
            v37 = v27 + 20.0;
          }

          v38 = v25;
          traitCollection4 = [v38 traitCollection];
          userInterfaceIdiom = [traitCollection4 userInterfaceIdiom];

          v41 = _UIContextMenuGetPlatformMetrics(userInterfaceIdiom);
          [UIViewController _horizontalContentMarginForView:v38];
          v43 = v42;
          contentSpacingForContainer = [v41 contentSpacingForContainer];
          v45 = contentSpacingForContainer;
          if (contentSpacingForContainer)
          {
            v43 = (*(contentSpacingForContainer + 16))(contentSpacingForContainer, v38);
          }

          traitCollection5 = [v38 traitCollection];
          userInterfaceIdiom2 = [traitCollection5 userInterfaceIdiom];

          v48 = _UIContextMenuGetPlatformMetrics(userInterfaceIdiom2);
          [v48 preferredDefaultContentInsets];
          v50 = fmax(fmax(v37, 20.0), v49);
          v52 = fmax(fmax(v29, v43), v51);
          v54 = fmax(fmax(v31, 20.0), v53);
          v56 = fmax(fmax(v79, v43), v55);

          [v38 bounds];
          v84.origin.x = v52 + v57;
          v84.origin.y = v50 + v58;
          v84.size.width = v59 - (v52 + v56);
          v84.size.height = v60 - (v50 + v54) - (v52 + 135.0);
          v20 = v80;
          v22 = CGRectGetHeight(v84) * (v80 / v84.size.width);
        }

        traitCollection6 = [containerView traitCollection];
        userInterfaceIdiom3 = [traitCollection6 userInterfaceIdiom];

        if (!userInterfaceIdiom3)
        {
          [containerView bounds];
          v63 = CGRectGetWidth(v85);
          v11 = v11 * (v63 / v9);
          v9 = v63;
        }

        if (v20 < v9)
        {
          v9 = v20;
        }

        if (v22 < v11)
        {
          v11 = v22;
        }
      }
    }

    if (width <= 0.0)
    {
      v64 = v9;
    }

    else
    {
      v64 = width;
    }

    if (height <= 0.0)
    {
      v65 = v11;
    }

    else
    {
      v65 = height;
    }

    menuStyle4 = [(_UIContextMenuPreviewPresentationController *)self menuStyle];
    ignoresDefaultSizingRules = [menuStyle4 ignoresDefaultSizingRules];

    if (ignoresDefaultSizingRules)
    {
      height = v65;
      goto LABEL_3;
    }

    v68 = fmin(v9 / v64, 1.0);
    v13 = containerView;
    if (width == *MEMORY[0x1E695F060] && height == *(MEMORY[0x1E695F060] + 8))
    {
      if (v65 * v68 >= v11)
      {
        height = v11;
      }

      else
      {
        height = v65 * v68;
      }
    }

    else
    {
      v69 = fmin(v11 / v65, 1.0);
      if (v68 >= v69)
      {
        v68 = v69;
      }

      height = v65 * v68;
    }
  }

LABEL_39:
  UIRoundToViewScale(v13);
  if (v70 >= 1.0)
  {
    v71 = v70;
  }

  else
  {
    v71 = 1.0;
  }

  _screen = [containerView _screen];
  [_screen scale];
  UIFloorToScale(height, v73);
  v75 = v74;

  if (v75 < 1.0)
  {
    v75 = 1.0;
  }

  [(_UIContextMenuPreviewPresentationController *)self platterContentSize];
  if (v71 != v77 || v75 != v76)
  {
    [(_UIContextMenuPreviewPresentationController *)self setPlatterContentSize:v71, v75];
    menuPresentationDelegate = [(_UIContextMenuPreviewPresentationController *)self menuPresentationDelegate];
    [menuPresentationDelegate contextMenuPreviewPresentationController:self didChangePreviewContentSize:{v71, v75}];
  }
}

- (id)_traitCollectionForChildEnvironment:(id)environment
{
  v15.receiver = self;
  v15.super_class = _UIContextMenuPreviewPresentationController;
  environmentCopy = environment;
  v5 = [(UIPresentationController *)&v15 _traitCollectionForChildEnvironment:environmentCopy];
  presentedViewController = [(UIPresentationController *)self presentedViewController];
  v7 = [environmentCopy isEqual:presentedViewController];

  if (v7)
  {
    [(_UIContextMenuPreviewPresentationController *)self platterContentSize];
    v9 = _UIUserInterfaceSizeClassForWidth(v8);
    [(_UIContextMenuPreviewPresentationController *)self platterContentSize];
    v11 = _UIUserInterfaceSizeClassForHeight(v10);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __83___UIContextMenuPreviewPresentationController__traitCollectionForChildEnvironment___block_invoke;
    v14[3] = &__block_descriptor_48_e86_v24__0_____UITraitCollection____8_____UITraitCollection_UIMutableTraitsInternal_____16l;
    v14[4] = v9;
    v14[5] = v11;
    v12 = [(UITraitCollection *)v5 _traitCollectionByModifyingTraitsCopyOnWrite:v14];

    v5 = v12;
  }

  return v5;
}

- (id)_viewForRemoteTextEffectsWindowMatchAnimation
{
  WeakRetained = objc_loadWeakRetained(&self->_viewForRemoteTextEffectsWindowMatchAnimation);

  return WeakRetained;
}

@end