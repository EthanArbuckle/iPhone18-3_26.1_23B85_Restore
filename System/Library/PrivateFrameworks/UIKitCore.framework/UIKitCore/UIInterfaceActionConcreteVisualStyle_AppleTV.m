@interface UIInterfaceActionConcreteVisualStyle_AppleTV
- (CGSize)minimumActionContentSize;
- (UIEdgeInsets)actionSequenceEdgeInsets;
- (UIEdgeInsets)contentMargin;
- (id)actionImageViewTintColorForImageProperty:(id)a3 actionViewState:(id)a4;
- (id)actionPropertiesAffectingActionRepresentationViewStyling;
- (id)actionPropertiesAffectingLabelStyling;
- (id)actionTitleLabelColorForViewState:(id)a3;
- (id)actionViewStateForAttachingToActionRepresentationView:(id)a3;
- (id)defaultScreen;
- (id)newActionBackgroundViewForViewState:(id)a3;
- (id)newGroupBackgroundViewWithGroupViewState:(id)a3;
- (void)configureAttributesForActionRepresentationView:(id)a3 actionViewState:(id)a4;
- (void)configureAttributesForActionScrollView:(id)a3 groupViewState:(id)a4;
- (void)configureAttributesForTitleLabel:(id)a3 classificationLabel:(id)a4 actionViewState:(id)a5;
@end

@implementation UIInterfaceActionConcreteVisualStyle_AppleTV

- (id)actionViewStateForAttachingToActionRepresentationView:(id)a3
{
  v3 = a3;
  v4 = [[_UIInterfaceActionRepresentationViewContext_AppleTV alloc] initWithHighlightTransformTargetView:v3];

  return v4;
}

- (id)defaultScreen
{
  v2 = objc_opt_self();

  return [v2 mainScreen];
}

- (UIEdgeInsets)contentMargin
{
  [objc_msgSend(objc_opt_class() "associatedAlertBackgroundViewClass")];
  v3 = v2 + 40.0;
  v4 = 12.0;
  v5 = 12.0;
  v6 = v3;
  result.right = v6;
  result.bottom = v5;
  result.left = v3;
  result.top = v4;
  return result;
}

- (UIEdgeInsets)actionSequenceEdgeInsets
{
  [objc_msgSend(objc_opt_class() "associatedAlertBackgroundViewClass")];
  v3 = v2 + 5.0;
  v4 = 50.0;
  v5 = 0.0;
  v6 = v3;
  result.right = v6;
  result.bottom = v4;
  result.left = v3;
  result.top = v5;
  return result;
}

- (CGSize)minimumActionContentSize
{
  v2 = 80.0;
  v3 = 0.0;
  result.height = v2;
  result.width = v3;
  return result;
}

- (id)actionTitleLabelColorForViewState:(id)a3
{
  v4 = a3;
  v5 = [v4 action];
  v6 = [v5 type];
  if (v6 < 2 || v6 == 100)
  {
    if ([v5 isEnabled])
    {
      if ([v4 isHighlighted])
      {
        +[UIColor blackColor];
      }

      else
      {
        [v4 tintColor];
      }
      v7 = ;
    }

    else
    {
      v7 = [UIColor colorWithWhite:1.0 alpha:0.3];
    }
  }

  else
  {
    if (v6 != 2)
    {
      goto LABEL_12;
    }

    v7 = +[UIColor whiteColor];
  }

  v3 = v7;
LABEL_12:

  return v3;
}

- (id)actionImageViewTintColorForImageProperty:(id)a3 actionViewState:(id)a4
{
  v5 = a4;
  v6 = [v5 action];
  v7 = [v6 _titleTextColor];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [(UIInterfaceActionConcreteVisualStyle_AppleTV *)self actionTitleLabelColorForViewState:v5];
  }

  v10 = v9;

  return v10;
}

- (id)newActionBackgroundViewForViewState:(id)a3
{
  v3 = [a3 action];
  v4 = objc_alloc_init([objc_opt_class() associatedAlertBackgroundViewClass]);
  [v4 _setContinuousCornerRadius:4.5];
  if ([v3 type] == 2)
  {
    v5 = [UIColor colorWithRed:0.968627451 green:0.149019608 blue:0.17254902 alpha:1.0];
    [v4 setTintColor:v5];

    [v4 setAlpha:0 forState:0.4];
    [v4 setAlpha:4 forState:0.3];
  }

  [v4 setShouldUseTintColorAsBackgroundColor:1];

  return v4;
}

- (id)newGroupBackgroundViewWithGroupViewState:(id)a3
{
  v3 = [objc_opt_class() associatedAlertBackgroundViewClass];

  return objc_alloc_init(v3);
}

- (id)actionPropertiesAffectingLabelStyling
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = 0x1EFB16330;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (void)configureAttributesForTitleLabel:(id)a3 classificationLabel:(id)a4 actionViewState:(id)a5
{
  v7 = a3;
  v6 = [a5 isFocused];
  [v7 setMarqueeEnabled:v6];
  [v7 setMarqueeRunning:v6];
}

- (id)actionPropertiesAffectingActionRepresentationViewStyling
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = 0x1EFB16350;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (void)configureAttributesForActionRepresentationView:(id)a3 actionViewState:(id)a4
{
  v4 = a4;
  v6 = [v4 actionViewStateContext];
  [v6 setHighlighted:{objc_msgSend(v4, "isHighlighted")}];
  v5 = [v4 isPressed];

  [v6 setPressed:v5];
}

- (void)configureAttributesForActionScrollView:(id)a3 groupViewState:(id)a4
{
  v4 = a3;
  [v4 setLayoutMargins:{0.0, 25.0, 0.0, 25.0}];
  [v4 _setGradientMaskInsets:{50.0, 0.0, 50.0, 0.0}];
}

@end