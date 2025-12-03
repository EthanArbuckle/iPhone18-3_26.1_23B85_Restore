@interface UIInterfaceActionConcreteVisualStyle_AlternativeAppleTV
- (CGSize)minimumActionContentSize;
- (double)actionSpacingForGroupViewState:(id)state;
- (id)actionTitleLabelColorForViewState:(id)state;
- (id)actionViewStateForAttachingToActionRepresentationView:(id)view;
- (id)newActionBackgroundViewForViewState:(id)state;
@end

@implementation UIInterfaceActionConcreteVisualStyle_AlternativeAppleTV

- (CGSize)minimumActionContentSize
{
  v2 = 68.0;
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
      if ([stateCopy isPreferred])
      {
        tintColor = [stateCopy tintColor];
        self = [(UIInterfaceActionConcreteVisualStyle_ModernAppleTV *)self _vibrancyStyleColorForUnfocusedTitleLabelWithTintColor:tintColor];

        goto LABEL_11;
      }

      v7 = +[UIColor labelColor];
    }

    else
    {
      v7 = +[UIColor secondaryLabelColor];
    }
  }

  else
  {
    if (type != 2)
    {
      goto LABEL_11;
    }

    v7 = +[UIColor whiteColor];
  }

  self = v7;
LABEL_11:

  return self;
}

- (double)actionSpacingForGroupViewState:(id)state
{
  isVerticalLayoutAxis = [state isVerticalLayoutAxis];
  result = 24.0;
  if (isVerticalLayoutAxis)
  {
    return 8.0;
  }

  return result;
}

- (id)actionViewStateForAttachingToActionRepresentationView:(id)view
{
  viewCopy = view;
  v4 = [(_UIInterfaceActionRepresentationViewContext_GlassAppleTV *)[_UIInterfaceActionRepresentationViewContext_AlternativeAppleTV alloc] initWithHighlightTransformTargetView:viewCopy];

  return v4;
}

- (id)newActionBackgroundViewForViewState:(id)state
{
  stateCopy = state;
  action = [stateCopy action];
  v6 = objc_alloc_init(_UIAlertControllerAlternativeTVActionBackgroundView);
  [(_UIAlertControllerModernTVActionBackgroundView *)v6 setShouldUseTintColorAsHighlightColor:1];
  [(UIInterfaceActionConcreteVisualStyle_GlassAppleTV *)self _actionBackgroundCornerRadius];
  [(_UIAlertControllerTVBackgroundView *)v6 _setContinuousCornerRadius:?];
  if ([action type] == 2)
  {
    tintColor = +[UIColor systemRedColor];
LABEL_5:
    v8 = tintColor;
    v9 = 1.0;
    v10 = 0.8;
    goto LABEL_6;
  }

  if ([stateCopy isPreferred])
  {
    tintColor = [stateCopy tintColor];
    goto LABEL_5;
  }

  traitCollection = [stateCopy traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle == 1)
  {
    v8 = +[UIColor blackColor];
    v10 = 0.35;
    v9 = 0.1;
  }

  else
  {
    v8 = +[UIColor whiteColor];
    v10 = 0.8;
    v9 = 0.4;
  }

LABEL_6:
  [(UIView *)v6 setTintColor:v8];

  [(_UIAlertControllerTVBackgroundView *)v6 setAlpha:0 forState:v9];
  [(_UIAlertControllerTVBackgroundView *)v6 setAlpha:4 forState:v10];
  [(_UIAlertControllerTVBackgroundView *)v6 setAlpha:1 forState:v10];
  [(_UIAlertControllerTVBackgroundView *)v6 setShouldUseTintColorAsBackgroundColor:1];

  return v6;
}

@end