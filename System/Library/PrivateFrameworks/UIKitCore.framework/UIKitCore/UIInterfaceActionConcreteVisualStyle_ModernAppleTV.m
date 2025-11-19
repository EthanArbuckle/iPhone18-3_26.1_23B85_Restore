@interface UIInterfaceActionConcreteVisualStyle_ModernAppleTV
- (CGSize)minimumActionContentSize;
- (UIEdgeInsets)actionSequenceEdgeInsets;
- (UIEdgeInsets)contentMargin;
- (double)actionSpacingForGroupViewState:(id)a3;
- (double)contentCornerRadius;
- (id)_vibrancyStyleColorForUnfocusedTitleLabelWithTintColor:(id)a3;
- (id)actionTitleLabelColorForViewState:(id)a3;
- (id)actionTitleLabelCompositingFilterForViewState:(id)a3;
- (id)actionViewStateForAttachingToActionRepresentationView:(id)a3;
- (id)newActionBackgroundViewForViewState:(id)a3;
- (void)configureAttributesForActionScrollView:(id)a3 groupViewState:(id)a4;
@end

@implementation UIInterfaceActionConcreteVisualStyle_ModernAppleTV

- (id)actionViewStateForAttachingToActionRepresentationView:(id)a3
{
  v3 = a3;
  v4 = [[_UIInterfaceActionRepresentationViewContext_AppleTV alloc] initWithHighlightTransformTargetView:v3];

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
  v2 = [objc_opt_class() associatedAlertBackgroundViewClass];

  [v2 contentCornerRadius];
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

- (id)actionTitleLabelColorForViewState:(id)a3
{
  v5 = a3;
  v6 = [v5 action];
  v7 = [v6 type];
  if (v7 < 2 || v7 == 100)
  {
    if (([v6 isEnabled] & 1) == 0)
    {
      v11 = +[UIColor secondaryLabelColor];
      goto LABEL_11;
    }

    v9 = [v5 isHighlighted];
    v10 = [v5 isPreferred];
    if (!v9)
    {
      if (v10)
      {
        v8 = [v5 tintColor];
        goto LABEL_14;
      }

      v11 = +[UIColor labelColor];
LABEL_11:
      v3 = v11;
      goto LABEL_15;
    }

    if ((v10 & 1) == 0)
    {
      v11 = +[UIColor blackColor];
      goto LABEL_11;
    }

LABEL_9:
    v11 = +[UIColor whiteColor];
    goto LABEL_11;
  }

  if (v7 != 2)
  {
    goto LABEL_15;
  }

  if ([v5 isHighlighted])
  {
    goto LABEL_9;
  }

  v8 = +[UIColor systemRedColor];
LABEL_14:
  v12 = v8;
  v3 = [(UIInterfaceActionConcreteVisualStyle_ModernAppleTV *)self _vibrancyStyleColorForUnfocusedTitleLabelWithTintColor:v8];

LABEL_15:

  return v3;
}

- (id)_vibrancyStyleColorForUnfocusedTitleLabelWithTintColor:(id)a3
{
  v3 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __109__UIInterfaceActionConcreteVisualStyle_ModernAppleTV__vibrancyStyleColorForUnfocusedTitleLabelWithTintColor___block_invoke;
  v7[3] = &unk_1E70F3870;
  v8 = v3;
  v4 = v3;
  v5 = [UIColor colorWithDynamicProvider:v7];

  return v5;
}

- (id)actionTitleLabelCompositingFilterForViewState:(id)a3
{
  v3 = a3;
  v4 = [v3 action];
  if ([v4 type] == 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = [v3 isPreferred] ^ 1;
  }

  v6 = 0;
  if (([v3 isFocused] & 1) == 0 && (v5 & 1) == 0)
  {
    v7 = [v3 traitCollection];
    v8 = [v7 userInterfaceStyle];

    v9 = MEMORY[0x1E6979CE8];
    if (v8 != 1)
    {
      v9 = MEMORY[0x1E6979CF8];
    }

    v6 = *v9;
  }

  return v6;
}

- (id)newActionBackgroundViewForViewState:(id)a3
{
  v4 = a3;
  v5 = [v4 action];
  v6 = objc_alloc_init(_UIAlertControllerModernTVActionBackgroundView);
  if ([v5 type] == 2)
  {
    v7 = 1;
  }

  else
  {
    v7 = [v4 isPreferred];
  }

  [(_UIAlertControllerModernTVActionBackgroundView *)v6 setShouldUseTintColorAsHighlightColor:v7];
  [(UIInterfaceActionConcreteVisualStyle_ModernAppleTV *)self _actionBackgroundCornerRadius];
  [(_UIAlertControllerTVBackgroundView *)v6 _setContinuousCornerRadius:?];
  if ([v5 type] == 2)
  {
    v8 = +[UIColor systemRedColor];
  }

  else
  {
    if (![v4 isPreferred])
    {
      v10 = +[UIColor systemGray5Color];
      [(UIView *)v6 setTintColor:v10];

      [(_UIAlertControllerModernTVActionBackgroundView *)v6 setVibrantCompositing:1 forState:0];
      goto LABEL_10;
    }

    v8 = [v4 tintColor];
  }

  v9 = v8;
  [(UIView *)v6 setTintColor:v8];

  [(_UIAlertControllerTVBackgroundView *)v6 setAlpha:0 forState:0.2];
LABEL_10:
  [(_UIAlertControllerTVBackgroundView *)v6 setShouldUseTintColorAsBackgroundColor:1];

  return v6;
}

- (double)actionSpacingForGroupViewState:(id)a3
{
  v3 = [a3 isVerticalLayoutAxis];
  result = 24.0;
  if (v3)
  {
    return 16.0;
  }

  return result;
}

- (void)configureAttributesForActionScrollView:(id)a3 groupViewState:(id)a4
{
  v32[4] = *MEMORY[0x1E69E9840];
  v5 = a3;
  [objc_msgSend(objc_opt_class() "associatedAlertBackgroundViewClass")];
  v7 = v6;
  [v5 _setGradientMaskLengths:{50.0, -30.0, 50.0, -30.0}];
  [v5 _setGradientMaskEdgeInsets:{v7, 0.0, v7, 0.0}];
  [v5 setClipsToBounds:0];
  if ([(UIInterfaceActionConcreteVisualStyle_ModernAppleTV *)self wantsVisualEffectBackdropView]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    v8 = [objc_msgSend(objc_opt_class() "associatedAlertBackgroundViewClass")];
    [objc_msgSend(objc_opt_class() "associatedAlertBackgroundViewClass")];
    v10 = v9;
    v11 = objc_alloc_init(UIView);
    [(UIView *)v11 addSubview:v8];
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    v26 = MEMORY[0x1E69977A0];
    v31 = [v8 topAnchor];
    v30 = [(UIView *)v11 topAnchor];
    v29 = [v31 constraintEqualToAnchor:v30 constant:v10];
    v32[0] = v29;
    v28 = [v8 bottomAnchor];
    v27 = [(UIView *)v11 bottomAnchor];
    v25 = [v28 constraintEqualToAnchor:v27 constant:-v10];
    v32[1] = v25;
    v24 = [v8 leadingAnchor];
    v12 = [(UIView *)v11 leadingAnchor];
    v13 = [v24 constraintEqualToAnchor:v12 constant:v10];
    v32[2] = v13;
    v14 = [v8 trailingAnchor];
    v15 = [(UIView *)v11 trailingAnchor];
    v16 = [v14 constraintEqualToAnchor:v15 constant:-v10];
    v32[3] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:4];
    [v26 activateConstraints:v17];

    [(UIInterfaceActionConcreteVisualStyle_ModernAppleTV *)self contentCornerRadius];
    v19 = v18 - v10;
    v20 = [v8 layer];
    [v20 setCornerRadius:v19];

    v21 = *MEMORY[0x1E69796E8];
    v22 = [v8 layer];
    [v22 setCornerCurve:v21];

    v23 = [v8 layer];
    [v23 setMasksToBounds:1];

    [v5 setBackgroundView:v11];
  }
}

@end