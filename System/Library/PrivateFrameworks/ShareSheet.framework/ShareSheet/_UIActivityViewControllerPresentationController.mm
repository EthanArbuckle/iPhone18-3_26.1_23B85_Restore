@interface _UIActivityViewControllerPresentationController
- (BOOL)hasSourceItem;
- (BOOL)isCompactSize;
- (UIEdgeInsets)layoutMargins;
- (_UIActivityViewControllerPresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController;
- (void)_update;
- (void)_updateCornerConfiguration;
- (void)_updatePresentationDirection;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)setCompactCornerRadius:(double)radius;
- (void)setSourceItem:(id)item;
- (void)setSourceView:(id)view;
- (void)updateWithCompactSize:(BOOL)size applyImmediately:(BOOL)immediately;
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

- (_UIActivityViewControllerPresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController
{
  v22 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = _UIActivityViewControllerPresentationController;
  v4 = [(_UIActivityViewControllerPresentationController *)&v15 initWithPresentedViewController:controller presentingViewController:viewController];
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

    hasSourceItem = [(_UIActivityViewControllerPresentationController *)v5 hasSourceItem];
    v7 = 9.0;
    if (!hasSourceItem)
    {
      v7 = 0.0;
    }

    [(_UIActivityViewControllerPresentationController *)v5 setLayoutMargins:0.0, v7, 9.0, v7];
    [(_UIActivityViewControllerPresentationController *)v5 layoutMargins];
    [(_UIActivityViewControllerPresentationController *)v5 setPopoverLayoutMargins:?];
    [(_UIActivityViewControllerPresentationController *)v5 setPresentationDirectionType:1];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(_UIActivityViewControllerPresentationController *)v5 setPopoverBackgroundColor:clearColor];

    [(_UIActivityViewControllerPresentationController *)v5 setCompactCornerRadius:-1.0];
    [(_UIActivityViewControllerPresentationController *)v5 setCornerRadius:-1.0];
  }

  v9 = share_sheet_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = v10;
    presentedViewController = [(_UIActivityViewControllerPresentationController *)v5 presentedViewController];
    presentingViewController = [(_UIActivityViewControllerPresentationController *)v5 presentingViewController];
    *buf = 138412802;
    v17 = v10;
    v18 = 2112;
    v19 = presentedViewController;
    v20 = 2112;
    v21 = presentingViewController;
    _os_log_impl(&dword_18B359000, v9, OS_LOG_TYPE_DEFAULT, "%@: initialized with presentedVC:%@ presentingVC:%@", buf, 0x20u);
  }

  return v5;
}

- (void)updateWithCompactSize:(BOOL)size applyImmediately:(BOOL)immediately
{
  immediatelyCopy = immediately;
  if (!size)
  {
    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [(_UIActivityViewControllerPresentationController *)self setPopoverBackgroundColor:systemBackgroundColor];

    [(_UIActivityViewControllerPresentationController *)self setLayoutMargins:1.0, 0.0, 0.0, 0.0];
    v10 = -1.0;
    goto LABEL_7;
  }

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(_UIActivityViewControllerPresentationController *)self setPopoverBackgroundColor:clearColor];

  hasSourceItem = [(_UIActivityViewControllerPresentationController *)self hasSourceItem];
  v8 = 9.0;
  if (!hasSourceItem)
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

  if (immediatelyCopy)
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

  popoverBackgroundColor = [(_UIActivityViewControllerPresentationController *)self popoverBackgroundColor];
  presentedViewController = [(_UIActivityViewControllerPresentationController *)self presentedViewController];
  view = [presentedViewController view];
  [view setBackgroundColor:popoverBackgroundColor];
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

- (void)setCompactCornerRadius:(double)radius
{
  if (objc_opt_respondsToSelector())
  {

    [(_UIActivityViewControllerPresentationController *)self _updateCornerConfiguration];
  }

  else if (radius > 0.0)
  {
    self->_compactCornerRadius = radius;

    [(_UIActivityViewControllerPresentationController *)self setCornerRadius:radius];
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

- (void)setSourceView:(id)view
{
  v4.receiver = self;
  v4.super_class = _UIActivityViewControllerPresentationController;
  [(_UIActivityViewControllerPresentationController *)&v4 setSourceView:view];
  [(_UIActivityViewControllerPresentationController *)self _updatePresentationDirection];
}

- (void)setSourceItem:(id)item
{
  v4.receiver = self;
  v4.super_class = _UIActivityViewControllerPresentationController;
  [(_UIActivityViewControllerPresentationController *)&v4 setSourceItem:item];
  [(_UIActivityViewControllerPresentationController *)self _updatePresentationDirection];
}

- (void)_updatePresentationDirection
{
  v53 = *MEMORY[0x1E69E9840];
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  sourceView = [(_UIActivityViewControllerPresentationController *)self sourceView];
  if (!sourceView || (v6 = sourceView, [(_UIActivityViewControllerPresentationController *)self sourceView], v7 = objc_claimAutoreleasedReturnValue(), [(_UIActivityViewControllerPresentationController *)self containerView], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v6, v7 != v8))
  {
    if (userInterfaceIdiom != 1)
    {
      sourceView2 = [(_UIActivityViewControllerPresentationController *)self sourceView];

      if (sourceView2)
      {
        sourceView3 = [(_UIActivityViewControllerPresentationController *)self sourceView];
        window = [sourceView3 window];

        sourceView4 = [(_UIActivityViewControllerPresentationController *)self sourceView];

        if (!sourceView4 || !window)
        {
          goto LABEL_33;
        }

        sourceView5 = [(_UIActivityViewControllerPresentationController *)self sourceView];
        sourceView6 = [(_UIActivityViewControllerPresentationController *)self sourceView];
        [sourceView6 bounds];
        [sourceView5 convertRect:window toView:?];
        v16 = v15;
        v18 = v17;
        v20 = v19;
        v22 = v21;
      }

      else
      {
        sourceItem = [(_UIActivityViewControllerPresentationController *)self sourceItem];

        if (!sourceItem)
        {
          return;
        }

        sourceItem2 = [(_UIActivityViewControllerPresentationController *)self sourceItem];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          sourceItem3 = [(_UIActivityViewControllerPresentationController *)self sourceItem];
          window = [sourceItem3 window];
        }

        else
        {
          window = _ShareSheetApplicationKeyWindow();
        }

        sourceView5 = [(_UIActivityViewControllerPresentationController *)self sourceItem];
        [sourceView5 frameInView:window];
        v16 = v27;
        v18 = v28;
        v20 = v29;
        v22 = v30;
      }

      [window bounds];
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

        selfCopy3 = self;
        goto LABEL_34;
      }

      v38 = share_sheet_log();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        sourceView7 = [(_UIActivityViewControllerPresentationController *)self sourceView];
        sourceItem4 = sourceView7;
        if (!sourceView7)
        {
          sourceItem4 = [(_UIActivityViewControllerPresentationController *)self sourceItem];
        }

        v41 = NSStringFromBOOL();
        v42 = NSStringFromBOOL();
        v45 = 138413058;
        v46 = sourceItem4;
        v47 = 2112;
        selfCopy2 = self;
        v49 = 2112;
        v50 = v41;
        v51 = 2112;
        v52 = v42;
        _os_log_impl(&dword_18B359000, v38, OS_LOG_TYPE_DEFAULT, "skipping anchor source:%@ noOverlap:%@ bothOverlap:%@ for presentationController:%@", &v45, 0x2Au);
        if (!sourceView7)
        {
        }
      }

      sourceView8 = [(_UIActivityViewControllerPresentationController *)self sourceView];

      if (sourceView8)
      {
        [(_UIActivityViewControllerPresentationController *)self setSourceView:0];
      }

      else
      {
        sourceItem5 = [(_UIActivityViewControllerPresentationController *)self sourceItem];

        if (sourceItem5)
        {
          [(_UIActivityViewControllerPresentationController *)self setSourceItem:0];
        }
      }

LABEL_33:
      selfCopy3 = self;
      v36 = 1;
LABEL_34:
      [(_UIActivityViewControllerPresentationController *)selfCopy3 setPresentationDirectionType:v36];
    }
  }
}

- (BOOL)hasSourceItem
{
  sourceView = [(_UIActivityViewControllerPresentationController *)self sourceView];
  if (sourceView)
  {
    v4 = 1;
  }

  else
  {
    sourceItem = [(_UIActivityViewControllerPresentationController *)self sourceItem];
    v4 = sourceItem != 0;
  }

  return v4;
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  containerCopy = container;
  [(_UIActivityViewControllerPresentationController *)self _update];
  v5.receiver = self;
  v5.super_class = _UIActivityViewControllerPresentationController;
  [(_UIActivityViewControllerPresentationController *)&v5 preferredContentSizeDidChangeForChildContentContainer:containerCopy];
}

@end