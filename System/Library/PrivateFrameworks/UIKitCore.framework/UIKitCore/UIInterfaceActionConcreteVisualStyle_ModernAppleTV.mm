@interface UIInterfaceActionConcreteVisualStyle_ModernAppleTV
- (CGSize)minimumActionContentSize;
- (UIEdgeInsets)actionSequenceEdgeInsets;
- (UIEdgeInsets)contentMargin;
- (double)actionSpacingForGroupViewState:(id)state;
- (double)contentCornerRadius;
- (id)_vibrancyStyleColorForUnfocusedTitleLabelWithTintColor:(id)color;
- (id)actionTitleLabelColorForViewState:(id)state;
- (id)actionTitleLabelCompositingFilterForViewState:(id)state;
- (id)actionViewStateForAttachingToActionRepresentationView:(id)view;
- (id)newActionBackgroundViewForViewState:(id)state;
- (void)configureAttributesForActionScrollView:(id)view groupViewState:(id)state;
@end

@implementation UIInterfaceActionConcreteVisualStyle_ModernAppleTV

- (id)actionViewStateForAttachingToActionRepresentationView:(id)view
{
  viewCopy = view;
  v4 = [[_UIInterfaceActionRepresentationViewContext_AppleTV alloc] initWithHighlightTransformTargetView:viewCopy];

  [(_UIInterfaceActionRepresentationViewContext_AppleTV *)v4 setFocusedSizeIncrease:20.0];

  return v4;
}

- (UIEdgeInsets)contentMargin
{
  v2 = 12.0;
  v3 = 15.0;
  v4 = 12.0;
  v5 = 15.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (double)contentCornerRadius
{
  associatedAlertBackgroundViewClass = [objc_opt_class() associatedAlertBackgroundViewClass];

  [associatedAlertBackgroundViewClass contentCornerRadius];
  return result;
}

- (UIEdgeInsets)actionSequenceEdgeInsets
{
  [objc_msgSend(objc_opt_class() "associatedAlertBackgroundViewClass")];
  v3 = v2;
  [objc_msgSend(objc_opt_class() "associatedAlertBackgroundViewClass")];
  v5 = v4;
  v6 = v3;
  v7 = v5;
  v8 = v3;
  result.right = v8;
  result.bottom = v7;
  result.left = v6;
  result.top = v5;
  return result;
}

- (CGSize)minimumActionContentSize
{
  v2 = 66.0;
  v3 = 0.0;
  result.height = v2;
  result.width = v3;
  return result;
}

- (id)actionTitleLabelColorForViewState:(id)state
{
  stateCopy = state;
  action = [stateCopy action];
  type = [action type];
  if (type < 2 || type == 100)
  {
    if (([action isEnabled] & 1) == 0)
    {
      v11 = +[UIColor secondaryLabelColor];
      goto LABEL_11;
    }

    isHighlighted = [stateCopy isHighlighted];
    isPreferred = [stateCopy isPreferred];
    if (!isHighlighted)
    {
      if (isPreferred)
      {
        tintColor = [stateCopy tintColor];
        goto LABEL_14;
      }

      v11 = +[UIColor labelColor];
LABEL_11:
      v3 = v11;
      goto LABEL_15;
    }

    if ((isPreferred & 1) == 0)
    {
      v11 = +[UIColor blackColor];
      goto LABEL_11;
    }

LABEL_9:
    v11 = +[UIColor whiteColor];
    goto LABEL_11;
  }

  if (type != 2)
  {
    goto LABEL_15;
  }

  if ([stateCopy isHighlighted])
  {
    goto LABEL_9;
  }

  tintColor = +[UIColor systemRedColor];
LABEL_14:
  v12 = tintColor;
  v3 = [(UIInterfaceActionConcreteVisualStyle_ModernAppleTV *)self _vibrancyStyleColorForUnfocusedTitleLabelWithTintColor:tintColor];

LABEL_15:

  return v3;
}

- (id)_vibrancyStyleColorForUnfocusedTitleLabelWithTintColor:(id)color
{
  colorCopy = color;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __109__UIInterfaceActionConcreteVisualStyle_ModernAppleTV__vibrancyStyleColorForUnfocusedTitleLabelWithTintColor___block_invoke;
  v7[3] = &unk_1E70F3870;
  v8 = colorCopy;
  v4 = colorCopy;
  v5 = [UIColor colorWithDynamicProvider:v7];

  return v5;
}

- (id)actionTitleLabelCompositingFilterForViewState:(id)state
{
  stateCopy = state;
  action = [stateCopy action];
  if ([action type] == 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = [stateCopy isPreferred] ^ 1;
  }

  v6 = 0;
  if (([stateCopy isFocused] & 1) == 0 && (v5 & 1) == 0)
  {
    traitCollection = [stateCopy traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    v9 = MEMORY[0x1E6979CE8];
    if (userInterfaceStyle != 1)
    {
      v9 = MEMORY[0x1E6979CF8];
    }

    v6 = *v9;
  }

  return v6;
}

- (id)newActionBackgroundViewForViewState:(id)state
{
  stateCopy = state;
  action = [stateCopy action];
  v6 = objc_alloc_init(_UIAlertControllerModernTVActionBackgroundView);
  if ([action type] == 2)
  {
    isPreferred = 1;
  }

  else
  {
    isPreferred = [stateCopy isPreferred];
  }

  [(_UIAlertControllerModernTVActionBackgroundView *)v6 setShouldUseTintColorAsHighlightColor:isPreferred];
  [(UIInterfaceActionConcreteVisualStyle_ModernAppleTV *)self _actionBackgroundCornerRadius];
  [(_UIAlertControllerTVBackgroundView *)v6 _setContinuousCornerRadius:?];
  if ([action type] == 2)
  {
    tintColor = +[UIColor systemRedColor];
  }

  else
  {
    if (![stateCopy isPreferred])
    {
      v10 = +[UIColor systemGray5Color];
      [(UIView *)v6 setTintColor:v10];

      [(_UIAlertControllerModernTVActionBackgroundView *)v6 setVibrantCompositing:1 forState:0];
      goto LABEL_10;
    }

    tintColor = [stateCopy tintColor];
  }

  v9 = tintColor;
  [(UIView *)v6 setTintColor:tintColor];

  [(_UIAlertControllerTVBackgroundView *)v6 setAlpha:0 forState:0.2];
LABEL_10:
  [(_UIAlertControllerTVBackgroundView *)v6 setShouldUseTintColorAsBackgroundColor:1];

  return v6;
}

- (double)actionSpacingForGroupViewState:(id)state
{
  isVerticalLayoutAxis = [state isVerticalLayoutAxis];
  result = 24.0;
  if (isVerticalLayoutAxis)
  {
    return 16.0;
  }

  return result;
}

- (void)configureAttributesForActionScrollView:(id)view groupViewState:(id)state
{
  v32[4] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  [objc_msgSend(objc_opt_class() "associatedAlertBackgroundViewClass")];
  v7 = v6;
  [viewCopy _setGradientMaskLengths:{50.0, -30.0, 50.0, -30.0}];
  [viewCopy _setGradientMaskEdgeInsets:{v7, 0.0, v7, 0.0}];
  [viewCopy setClipsToBounds:0];
  if ([(UIInterfaceActionConcreteVisualStyle_ModernAppleTV *)self wantsVisualEffectBackdropView]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    v8 = [objc_msgSend(objc_opt_class() "associatedAlertBackgroundViewClass")];
    [objc_msgSend(objc_opt_class() "associatedAlertBackgroundViewClass")];
    v10 = v9;
    v11 = objc_alloc_init(UIView);
    [(UIView *)v11 addSubview:v8];
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    v26 = MEMORY[0x1E69977A0];
    topAnchor = [v8 topAnchor];
    topAnchor2 = [(UIView *)v11 topAnchor];
    v29 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v10];
    v32[0] = v29;
    bottomAnchor = [v8 bottomAnchor];
    bottomAnchor2 = [(UIView *)v11 bottomAnchor];
    v25 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-v10];
    v32[1] = v25;
    leadingAnchor = [v8 leadingAnchor];
    leadingAnchor2 = [(UIView *)v11 leadingAnchor];
    v13 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v10];
    v32[2] = v13;
    trailingAnchor = [v8 trailingAnchor];
    trailingAnchor2 = [(UIView *)v11 trailingAnchor];
    v16 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v10];
    v32[3] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:4];
    [v26 activateConstraints:v17];

    [(UIInterfaceActionConcreteVisualStyle_ModernAppleTV *)self contentCornerRadius];
    v19 = v18 - v10;
    layer = [v8 layer];
    [layer setCornerRadius:v19];

    v21 = *MEMORY[0x1E69796E8];
    layer2 = [v8 layer];
    [layer2 setCornerCurve:v21];

    layer3 = [v8 layer];
    [layer3 setMasksToBounds:1];

    [viewCopy setBackgroundView:v11];
  }
}

@end