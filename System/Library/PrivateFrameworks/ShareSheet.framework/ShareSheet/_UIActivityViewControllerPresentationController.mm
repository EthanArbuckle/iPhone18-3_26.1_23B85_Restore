@interface _UIActivityViewControllerPresentationController
- (BOOL)hasSourceItem;
- (BOOL)isCompactSize;
- (UIEdgeInsets)layoutMargins;
- (_UIActivityViewControllerPresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4;
- (void)_update;
- (void)_updateCornerConfiguration;
- (void)_updatePresentationDirection;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)setCompactCornerRadius:(double)a3;
- (void)setSourceItem:(id)a3;
- (void)setSourceView:(id)a3;
- (void)updateWithCompactSize:(BOOL)a3 applyImmediately:(BOOL)a4;
@end

@implementation _UIActivityViewControllerPresentationController

- (UIEdgeInsets)layoutMargins
{
  top = self->_layoutMargins.top;
  left = self->_layoutMargins.left;
  bottom = self->_layoutMargins.bottom;
  right = self->_layoutMargins.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (_UIActivityViewControllerPresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = _UIActivityViewControllerPresentationController;
  v4 = [(_UIActivityViewControllerPresentationController *)&v15 initWithPresentedViewController:a3 presentingViewController:a4];
  v5 = v4;
  if (v4)
  {
    [(_UIActivityViewControllerPresentationController *)v4 _setIgnoresKeyboardNotifications:1];
    [(_UIActivityViewControllerPresentationController *)v5 _setShouldHideArrow:1];
    [(_UIActivityViewControllerPresentationController *)v5 setCanOverlapSourceViewRect:1];
    if (objc_opt_respondsToSelector())
    {
      [(_UIActivityViewControllerPresentationController *)v5 _setBottomAlignsPopoverIfSourceViewNotSet:1];
    }

    else
    {
      [(_UIActivityViewControllerPresentationController *)v5 _setCentersPopoverIfSourceViewNotSet:1];
    }

    if (objc_opt_respondsToSelector())
    {
      [(_UIActivityViewControllerPresentationController *)v5 _setIgnoredEdgesForSafeArea:4];
    }

    v6 = [(_UIActivityViewControllerPresentationController *)v5 hasSourceItem];
    v7 = 9.0;
    if (!v6)
    {
      v7 = 0.0;
    }

    [(_UIActivityViewControllerPresentationController *)v5 setLayoutMargins:0.0, v7, 9.0, v7];
    [(_UIActivityViewControllerPresentationController *)v5 layoutMargins];
    [(_UIActivityViewControllerPresentationController *)v5 setPopoverLayoutMargins:?];
    [(_UIActivityViewControllerPresentationController *)v5 setPresentationDirectionType:1];
    v8 = [MEMORY[0x1E69DC888] clearColor];
    [(_UIActivityViewControllerPresentationController *)v5 setPopoverBackgroundColor:v8];

    [(_UIActivityViewControllerPresentationController *)v5 setCompactCornerRadius:-1.0];
    [(_UIActivityViewControllerPresentationController *)v5 setCornerRadius:-1.0];
  }

  v9 = share_sheet_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = v10;
    v12 = [(_UIActivityViewControllerPresentationController *)v5 presentedViewController];
    v13 = [(_UIActivityViewControllerPresentationController *)v5 presentingViewController];
    *buf = 138412802;
    v17 = v10;
    v18 = 2112;
    v19 = v12;
    v20 = 2112;
    v21 = v13;
    _os_log_impl(&dword_18B359000, v9, OS_LOG_TYPE_DEFAULT, "%@: initialized with presentedVC:%@ presentingVC:%@", buf, 0x20u);
  }

  return v5;
}

- (void)updateWithCompactSize:(BOOL)a3 applyImmediately:(BOOL)a4
{
  v4 = a4;
  if (!a3)
  {
    v11 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [(_UIActivityViewControllerPresentationController *)self setPopoverBackgroundColor:v11];

    [(_UIActivityViewControllerPresentationController *)self setLayoutMargins:1.0, 0.0, 0.0, 0.0];
    v10 = -1.0;
    goto LABEL_7;
  }

  v6 = [MEMORY[0x1E69DC888] clearColor];
  [(_UIActivityViewControllerPresentationController *)self setPopoverBackgroundColor:v6];

  v7 = [(_UIActivityViewControllerPresentationController *)self hasSourceItem];
  v8 = 9.0;
  if (!v7)
  {
    v8 = 0.0;
  }

  [(_UIActivityViewControllerPresentationController *)self setLayoutMargins:0.0, v8, 9.0, v8];
  [(_UIActivityViewControllerPresentationController *)self compactCornerRadius];
  if (v9 > 0.0)
  {
    [(_UIActivityViewControllerPresentationController *)self compactCornerRadius];
LABEL_7:
    [(_UIActivityViewControllerPresentationController *)self setCornerRadius:v10];
  }

  if (v4)
  {

    [(_UIActivityViewControllerPresentationController *)self _update];
  }
}

- (void)_update
{
  [(_UIActivityViewControllerPresentationController *)self layoutMargins];
  [(_UIActivityViewControllerPresentationController *)self setPopoverLayoutMargins:?];
  if (objc_opt_respondsToSelector())
  {
    [(_UIActivityViewControllerPresentationController *)self _updateCornerConfiguration];
  }

  else
  {
    [(_UIActivityViewControllerPresentationController *)self cornerRadius];
    [(_UIActivityViewControllerPresentationController *)self _setCornerRadius:?];
  }

  v5 = [(_UIActivityViewControllerPresentationController *)self popoverBackgroundColor];
  v3 = [(_UIActivityViewControllerPresentationController *)self presentedViewController];
  v4 = [v3 view];
  [v4 setBackgroundColor:v5];
}

- (BOOL)isCompactSize
{
  [(_UIActivityViewControllerPresentationController *)self layoutMargins];
  if (v3 <= 0.0)
  {
    return 0;
  }

  [(_UIActivityViewControllerPresentationController *)self layoutMargins];
  if (v4 <= 0.0)
  {
    return 0;
  }

  [(_UIActivityViewControllerPresentationController *)self layoutMargins];
  return v5 > 0.0;
}

- (void)setCompactCornerRadius:(double)a3
{
  if (objc_opt_respondsToSelector())
  {

    [(_UIActivityViewControllerPresentationController *)self _updateCornerConfiguration];
  }

  else if (a3 > 0.0)
  {
    self->_compactCornerRadius = a3;

    [(_UIActivityViewControllerPresentationController *)self setCornerRadius:a3];
  }
}

- (void)_updateCornerConfiguration
{
  v9 = [MEMORY[0x1E69DC900] fixedRadius:38.0];
  v3 = [MEMORY[0x1E69DC900] containerConcentricRadiusWithMinimum:38.0];
  if ([(_UIActivityViewControllerPresentationController *)self presentationDirectionType]== 1)
  {
    v4 = v9;
    v5 = v9;
    v6 = v3;
    v7 = v3;
  }

  else
  {
    v4 = v9;
    v5 = v9;
    v6 = v9;
    v7 = v9;
  }

  v8 = [MEMORY[0x1E69DC8F8] configurationWithTopLeftRadius:v4 topRightRadius:v5 bottomLeftRadius:v6 bottomRightRadius:v7];
  [(_UIActivityViewControllerPresentationController *)self _setCornerConfiguration:v8];
}

- (void)setSourceView:(id)a3
{
  v4.receiver = self;
  v4.super_class = _UIActivityViewControllerPresentationController;
  [(_UIActivityViewControllerPresentationController *)&v4 setSourceView:a3];
  [(_UIActivityViewControllerPresentationController *)self _updatePresentationDirection];
}

- (void)setSourceItem:(id)a3
{
  v4.receiver = self;
  v4.super_class = _UIActivityViewControllerPresentationController;
  [(_UIActivityViewControllerPresentationController *)&v4 setSourceItem:a3];
  [(_UIActivityViewControllerPresentationController *)self _updatePresentationDirection];
}

- (void)_updatePresentationDirection
{
  v53 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69DC938] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  v5 = [(_UIActivityViewControllerPresentationController *)self sourceView];
  if (!v5 || (v6 = v5, [(_UIActivityViewControllerPresentationController *)self sourceView], v7 = objc_claimAutoreleasedReturnValue(), [(_UIActivityViewControllerPresentationController *)self containerView], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v6, v7 != v8))
  {
    if (v4 != 1)
    {
      v9 = [(_UIActivityViewControllerPresentationController *)self sourceView];

      if (v9)
      {
        v10 = [(_UIActivityViewControllerPresentationController *)self sourceView];
        v11 = [v10 window];

        v12 = [(_UIActivityViewControllerPresentationController *)self sourceView];

        if (!v12 || !v11)
        {
          goto LABEL_33;
        }

        v13 = [(_UIActivityViewControllerPresentationController *)self sourceView];
        v14 = [(_UIActivityViewControllerPresentationController *)self sourceView];
        [v14 bounds];
        [v13 convertRect:v11 toView:?];
        v16 = v15;
        v18 = v17;
        v20 = v19;
        v22 = v21;
      }

      else
      {
        v23 = [(_UIActivityViewControllerPresentationController *)self sourceItem];

        if (!v23)
        {
          return;
        }

        v24 = [(_UIActivityViewControllerPresentationController *)self sourceItem];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v26 = [(_UIActivityViewControllerPresentationController *)self sourceItem];
          v11 = [v26 window];
        }

        else
        {
          v11 = _ShareSheetApplicationKeyWindow();
        }

        v13 = [(_UIActivityViewControllerPresentationController *)self sourceItem];
        [v13 frameInView:v11];
        v16 = v27;
        v18 = v28;
        v20 = v29;
        v22 = v30;
      }

      [v11 bounds];
      Height = CGRectGetHeight(v54);
      v55.origin.x = v16;
      v55.origin.y = v18;
      v55.size.width = v20;
      v55.size.height = v22;
      MinY = CGRectGetMinY(v55);
      v56.origin.x = v16;
      v56.origin.y = v18;
      v56.size.width = v20;
      v56.size.height = v22;
      MaxY = CGRectGetMaxY(v56);
      v34 = MaxY >= 0.0;
      if (MinY > Height * 0.1)
      {
        v34 = 0;
      }

      v35 = MinY <= Height;
      if (MaxY < Height * 0.9)
      {
        v35 = 0;
      }

      if ((v34 || v35) && (!v34 || !v35))
      {
        if (v34)
        {
          v36 = 2;
        }

        else
        {
          v36 = 1;
        }

        v37 = self;
        goto LABEL_34;
      }

      v38 = share_sheet_log();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v39 = [(_UIActivityViewControllerPresentationController *)self sourceView];
        v40 = v39;
        if (!v39)
        {
          v40 = [(_UIActivityViewControllerPresentationController *)self sourceItem];
        }

        v41 = NSStringFromBOOL();
        v42 = NSStringFromBOOL();
        v45 = 138413058;
        v46 = v40;
        v47 = 2112;
        v48 = self;
        v49 = 2112;
        v50 = v41;
        v51 = 2112;
        v52 = v42;
        _os_log_impl(&dword_18B359000, v38, OS_LOG_TYPE_DEFAULT, "skipping anchor source:%@ noOverlap:%@ bothOverlap:%@ for presentationController:%@", &v45, 0x2Au);
        if (!v39)
        {
        }
      }

      v43 = [(_UIActivityViewControllerPresentationController *)self sourceView];

      if (v43)
      {
        [(_UIActivityViewControllerPresentationController *)self setSourceView:0];
      }

      else
      {
        v44 = [(_UIActivityViewControllerPresentationController *)self sourceItem];

        if (v44)
        {
          [(_UIActivityViewControllerPresentationController *)self setSourceItem:0];
        }
      }

LABEL_33:
      v37 = self;
      v36 = 1;
LABEL_34:
      [(_UIActivityViewControllerPresentationController *)v37 setPresentationDirectionType:v36];
    }
  }
}

- (BOOL)hasSourceItem
{
  v3 = [(_UIActivityViewControllerPresentationController *)self sourceView];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(_UIActivityViewControllerPresentationController *)self sourceItem];
    v4 = v5 != 0;
  }

  return v4;
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v4 = a3;
  [(_UIActivityViewControllerPresentationController *)self _update];
  v5.receiver = self;
  v5.super_class = _UIActivityViewControllerPresentationController;
  [(_UIActivityViewControllerPresentationController *)&v5 preferredContentSizeDidChangeForChildContentContainer:v4];
}

@end