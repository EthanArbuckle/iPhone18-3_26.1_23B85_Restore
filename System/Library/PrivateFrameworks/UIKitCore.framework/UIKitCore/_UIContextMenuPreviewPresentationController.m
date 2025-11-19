@interface _UIContextMenuPreviewPresentationController
- (BOOL)_wantsAutomaticFirstResponderWhenPresentingRemoteViewController;
- (CGRect)frameOfPresentedViewInContainerView;
- (CGSize)platterContentSize;
- (UIEdgeInsets)_baseContentInsetsWithLeftMargin:(double *)a3 rightMargin:(double *)a4;
- (_UIContextMenuPreviewPresentationControllerDelegate)menuPresentationDelegate;
- (id)_traitCollectionForChildEnvironment:(id)a3;
- (id)_viewForRemoteTextEffectsWindowMatchAnimation;
- (id)preferredFocusEnvironments;
- (void)_updatePlatterContentSizeWithPreferredContentSize:(CGSize)a3;
- (void)dismissalTransitionWillBegin;
- (void)menuLayoutDidProducePreviewSize:(CGSize)a3;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)presentationTransitionWillBegin;
- (void)systemLayoutFittingSizeDidChangeForChildContentContainer:(id)a3;
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
  v3 = [(UIPresentationController *)self presentedView];
  v4 = [(UIPresentationController *)self containerView];
  [v4 setUserInteractionEnabled:0];
  [v4 frame];
  Width = CGRectGetWidth(v18);
  CATransform3DMakeTranslation(&v16, -Width, 0.0, 0.0);
  v6 = [v4 layer];
  v15 = v16;
  [v6 setSublayerTransform:&v15];

  [v4 setAlpha:0.0];
  [v4 addSubview:v3];
  v7 = [(UIPresentationController *)self presentedViewController];
  [v7 preferredContentSize];
  [(_UIContextMenuPreviewPresentationController *)self _updatePlatterContentSizeWithPreferredContentSize:?];

  [(_UIContextMenuPreviewPresentationController *)self platterContentSize];
  [v3 setFrame:{0.0, 0.0, v8, v9}];
  [v3 _continuousCornerRadius];
  if (v10 == 0.0)
  {
    v11 = [v4 traitCollection];
    v12 = _UIContextMenuGetPlatformMetrics([v11 userInterfaceIdiom]);

    [v12 previewPlatterCornerRadius];
    v13 = [UICornerRadius fixedRadius:?];
    v14 = [UICornerConfiguration configurationWithRadius:v13];
    [v3 setCornerConfiguration:v14];
  }

  [v4 setNeedsLayout];
  [v4 layoutIfNeeded];
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
  v3 = [(_UIContextMenuPreviewPresentationController *)self menuStyle];
  v4 = [v3 inputViewVisibility];

  if (v4 != 1)
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = _UIContextMenuPreviewPresentationController;
  return [(UIPresentationController *)&v6 _wantsAutomaticFirstResponderWhenPresentingRemoteViewController];
}

- (UIEdgeInsets)_baseContentInsetsWithLeftMargin:(double *)a3 rightMargin:(double *)a4
{
  v8.receiver = self;
  v8.super_class = _UIContextMenuPreviewPresentationController;
  [(UIPresentationController *)&v8 _baseContentInsetsWithLeftMargin:a3 rightMargin:a4];
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
  v3 = [(UIPresentationController *)self containerView];
  [v3 setUserInteractionEnabled:0];

  v4.receiver = self;
  v4.super_class = _UIContextMenuPreviewPresentationController;
  [(UIPresentationController *)&v4 dismissalTransitionWillBegin];
}

- (id)preferredFocusEnvironments
{
  v3 = [(_UIContextMenuPreviewPresentationController *)self menuStyle];
  v4 = [v3 hasInteractivePreview];

  v5 = [(_UIContextMenuPreviewPresentationController *)self menuPresentationDelegate];
  v6 = [v5 preferredFocusEnvironmentsForContextMenuPreviewPresentationController:self];
  v7 = [v6 mutableCopy];

  if (v4)
  {
    v10.receiver = self;
    v10.super_class = _UIContextMenuPreviewPresentationController;
    v8 = [(UIPresentationController *)&v10 preferredFocusEnvironments];
    if ([v8 count])
    {
      [v7 addObjectsFromArray:v8];
    }
  }

  return v7;
}

- (void)menuLayoutDidProducePreviewSize:(CGSize)a3
{
  width = a3.width;
  [(_UIContextMenuPreviewPresentationController *)self platterContentSize];
  v6 = v5;
  v8 = v7;
  v9 = [(_UIContextMenuPreviewPresentationController *)self menuStyle];
  v10 = [v9 ignoresDefaultSizingRules];

  if (v10)
  {
    [(_UIContextMenuPreviewPresentationController *)self platterContentSize];
    v12 = v11 / width;
    if (v12 < 1.0)
    {
      v12 = 1.0;
    }

    CGAffineTransformMakeScale(&v18, v12, v12);
    v13 = [(UIPresentationController *)self containerView];
    UIRoundToViewScale(v13);
    v6 = v14;
    v15 = [(UIPresentationController *)self containerView];
    UIRoundToViewScale(v15);
    v8 = v16;
  }

  v17 = [(UIPresentationController *)self presentedView];
  [v17 setFrame:{0.0, 0.0, v6, v8}];
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v9.receiver = self;
  v9.super_class = _UIContextMenuPreviewPresentationController;
  v4 = a3;
  [(UIPresentationController *)&v9 preferredContentSizeDidChangeForChildContentContainer:v4];
  [v4 preferredContentSize];
  v6 = v5;
  v8 = v7;

  [(_UIContextMenuPreviewPresentationController *)self _updatePlatterContentSizeWithPreferredContentSize:v6, v8];
}

- (void)systemLayoutFittingSizeDidChangeForChildContentContainer:(id)a3
{
  v14.receiver = self;
  v14.super_class = _UIContextMenuPreviewPresentationController;
  v4 = a3;
  [(UIPresentationController *)&v14 systemLayoutFittingSizeDidChangeForChildContentContainer:v4];
  v5 = [(UIPresentationController *)self presentedView:v14.receiver];
  [v4 preferredContentSize];
  v7 = v6;
  v9 = v8;

  [v5 systemLayoutSizeFittingSize:{v7, v9}];
  v11 = v10;
  v13 = v12;

  [(_UIContextMenuPreviewPresentationController *)self _updatePlatterContentSizeWithPreferredContentSize:v11, v13];
}

- (void)_updatePlatterContentSizeWithPreferredContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v81 = [(UIPresentationController *)self containerView];
  v6 = [v81 traitCollection];
  v7 = _UIContextMenuGetPlatformMetrics([v6 userInterfaceIdiom]);

  [v7 previewPlatterMaximumSize];
  v9 = v8;
  [v7 previewPlatterMaximumSize];
  v11 = v10;
  v12 = [(_UIContextMenuPreviewPresentationController *)self menuStyle];
  if ([v12 preferredLayout] == 1)
  {

LABEL_3:
    v13 = v81;
    goto LABEL_39;
  }

  v14 = [(_UIContextMenuPreviewPresentationController *)self menuStyle];
  v15 = [v14 preferredLayout];

  v13 = v81;
  if (v15 != 3)
  {
    if (v81)
    {
      v16 = [v81 traitCollection];
      v17 = [v16 verticalSizeClass];

      if (v17 == 1)
      {
        v18 = v9 / v11;
        [v81 bounds];
        v11 = CGRectGetHeight(v83);
        v9 = v18 * v11;
      }

      else
      {
        [v81 bounds];
        v20 = v19;
        v22 = v21;
        v23 = [(_UIContextMenuPreviewPresentationController *)self menuStyle];
        v24 = [v23 preferredLayout];

        if (!v24)
        {
          v80 = v20;
          v25 = v81;
          [v25 safeAreaInsets];
          v27 = v26;
          v29 = v28;
          v31 = v30;
          v33 = v32;
          v34 = [v25 traitCollection];
          v35 = [v34 verticalSizeClass];

          v36 = v33 + 0.0;
          if (v35 == 1)
          {
            v36 = v33;
          }

          v79 = v36;
          if (v35 == 1)
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
          v39 = [v38 traitCollection];
          v40 = [v39 userInterfaceIdiom];

          v41 = _UIContextMenuGetPlatformMetrics(v40);
          [UIViewController _horizontalContentMarginForView:v38];
          v43 = v42;
          v44 = [v41 contentSpacingForContainer];
          v45 = v44;
          if (v44)
          {
            v43 = (*(v44 + 16))(v44, v38);
          }

          v46 = [v38 traitCollection];
          v47 = [v46 userInterfaceIdiom];

          v48 = _UIContextMenuGetPlatformMetrics(v47);
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

        v61 = [v81 traitCollection];
        v62 = [v61 userInterfaceIdiom];

        if (!v62)
        {
          [v81 bounds];
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

    v66 = [(_UIContextMenuPreviewPresentationController *)self menuStyle];
    v67 = [v66 ignoresDefaultSizingRules];

    if (v67)
    {
      height = v65;
      goto LABEL_3;
    }

    v68 = fmin(v9 / v64, 1.0);
    v13 = v81;
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

  v72 = [v81 _screen];
  [v72 scale];
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
    v78 = [(_UIContextMenuPreviewPresentationController *)self menuPresentationDelegate];
    [v78 contextMenuPreviewPresentationController:self didChangePreviewContentSize:{v71, v75}];
  }
}

- (id)_traitCollectionForChildEnvironment:(id)a3
{
  v15.receiver = self;
  v15.super_class = _UIContextMenuPreviewPresentationController;
  v4 = a3;
  v5 = [(UIPresentationController *)&v15 _traitCollectionForChildEnvironment:v4];
  v6 = [(UIPresentationController *)self presentedViewController];
  v7 = [v4 isEqual:v6];

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