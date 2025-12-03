@interface UIInterfaceActionConcreteVisualStyle_AppleTV
- (CGSize)minimumActionContentSize;
- (UIEdgeInsets)actionSequenceEdgeInsets;
- (UIEdgeInsets)contentMargin;
- (id)actionImageViewTintColorForImageProperty:(id)property actionViewState:(id)state;
- (id)actionPropertiesAffectingActionRepresentationViewStyling;
- (id)actionPropertiesAffectingLabelStyling;
- (id)actionTitleLabelColorForViewState:(id)state;
- (id)actionViewStateForAttachingToActionRepresentationView:(id)view;
- (id)defaultScreen;
- (id)newActionBackgroundViewForViewState:(id)state;
- (id)newGroupBackgroundViewWithGroupViewState:(id)state;
- (void)configureAttributesForActionRepresentationView:(id)view actionViewState:(id)state;
- (void)configureAttributesForActionScrollView:(id)view groupViewState:(id)state;
- (void)configureAttributesForTitleLabel:(id)label classificationLabel:(id)classificationLabel actionViewState:(id)state;
@end

@implementation UIInterfaceActionConcreteVisualStyle_AppleTV

- (id)actionViewStateForAttachingToActionRepresentationView:(id)view
{
  viewCopy = view;
  v4 = [[_UIInterfaceActionRepresentationViewContext_AppleTV alloc] initWithHighlightTransformTargetView:viewCopy];

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

- (id)actionTitleLabelColorForViewState:(id)state
{
  stateCopy = state;
  action = [stateCopy action];
  type = [action type];
  if (type < 2 || type == 100)
  {
    if ([action isEnabled])
    {
      if ([stateCopy isHighlighted])
      {
        +[UIColor blackColor];
      }

      else
      {
        [stateCopy tintColor];
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
    if (type != 2)
    {
      goto LABEL_12;
    }

    v7 = +[UIColor whiteColor];
  }

  v3 = v7;
LABEL_12:

  return v3;
}

- (id)actionImageViewTintColorForImageProperty:(id)property actionViewState:(id)state
{
  stateCopy = state;
  action = [stateCopy action];
  _titleTextColor = [action _titleTextColor];
  v8 = _titleTextColor;
  if (_titleTextColor)
  {
    v9 = _titleTextColor;
  }

  else
  {
    v9 = [(UIInterfaceActionConcreteVisualStyle_AppleTV *)self actionTitleLabelColorForViewState:stateCopy];
  }

  v10 = v9;

  return v10;
}

- (id)newActionBackgroundViewForViewState:(id)state
{
  action = [state action];
  v4 = objc_alloc_init([objc_opt_class() associatedAlertBackgroundViewClass]);
  [v4 _setContinuousCornerRadius:4.5];
  if ([action type] == 2)
  {
    v5 = [UIColor colorWithRed:0.968627451 green:0.149019608 blue:0.17254902 alpha:1.0];
    [v4 setTintColor:v5];

    [v4 setAlpha:0 forState:0.4];
    [v4 setAlpha:4 forState:0.3];
  }

  [v4 setShouldUseTintColorAsBackgroundColor:1];

  return v4;
}

- (id)newGroupBackgroundViewWithGroupViewState:(id)state
{
  associatedAlertBackgroundViewClass = [objc_opt_class() associatedAlertBackgroundViewClass];

  return objc_alloc_init(associatedAlertBackgroundViewClass);
}

- (id)actionPropertiesAffectingLabelStyling
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = 0x1EFB16330;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (void)configureAttributesForTitleLabel:(id)label classificationLabel:(id)classificationLabel actionViewState:(id)state
{
  labelCopy = label;
  isFocused = [state isFocused];
  [labelCopy setMarqueeEnabled:isFocused];
  [labelCopy setMarqueeRunning:isFocused];
}

- (id)actionPropertiesAffectingActionRepresentationViewStyling
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = 0x1EFB16350;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (void)configureAttributesForActionRepresentationView:(id)view actionViewState:(id)state
{
  stateCopy = state;
  actionViewStateContext = [stateCopy actionViewStateContext];
  [actionViewStateContext setHighlighted:{objc_msgSend(stateCopy, "isHighlighted")}];
  isPressed = [stateCopy isPressed];

  [actionViewStateContext setPressed:isPressed];
}

- (void)configureAttributesForActionScrollView:(id)view groupViewState:(id)state
{
  viewCopy = view;
  [viewCopy setLayoutMargins:{0.0, 25.0, 0.0, 25.0}];
  [viewCopy _setGradientMaskInsets:{50.0, 0.0, 50.0, 0.0}];
}

@end