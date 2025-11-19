@interface UIInterfaceActionConcreteVisualStyle_AlternativeAppleTV
- (CGSize)minimumActionContentSize;
- (double)actionSpacingForGroupViewState:(id)a3;
- (id)actionTitleLabelColorForViewState:(id)a3;
- (id)actionViewStateForAttachingToActionRepresentationView:(id)a3;
- (id)newActionBackgroundViewForViewState:(id)a3;
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

- (id)actionTitleLabelColorForViewState:(id)a3
{
  v4 = a3;
  v5 = [v4 action];
  v6 = [v5 type];
  if (v6 < 2 || v6 == 100)
  {
    if ([v5 isEnabled])
    {
      if ([v4 isPreferred])
      {
        v8 = [v4 tintColor];
        self = [(UIInterfaceActionConcreteVisualStyle_ModernAppleTV *)self _vibrancyStyleColorForUnfocusedTitleLabelWithTintColor:v8];

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
    if (v6 != 2)
    {
      goto LABEL_11;
    }

    v7 = +[UIColor whiteColor];
  }

  self = v7;
LABEL_11:

  return self;
}

- (double)actionSpacingForGroupViewState:(id)a3
{
  v3 = [a3 isVerticalLayoutAxis];
  result = 24.0;
  if (v3)
  {
    return 8.0;
  }

  return result;
}

- (id)actionViewStateForAttachingToActionRepresentationView:(id)a3
{
  v3 = a3;
  v4 = [(_UIInterfaceActionRepresentationViewContext_GlassAppleTV *)[_UIInterfaceActionRepresentationViewContext_AlternativeAppleTV alloc] initWithHighlightTransformTargetView:v3];

  return v4;
}

- (id)newActionBackgroundViewForViewState:(id)a3
{
  v4 = a3;
  v5 = [v4 action];
  v6 = objc_alloc_init(_UIAlertControllerAlternativeTVActionBackgroundView);
  [(_UIAlertControllerModernTVActionBackgroundView *)v6 setShouldUseTintColorAsHighlightColor:1];
  [(UIInterfaceActionConcreteVisualStyle_GlassAppleTV *)self _actionBackgroundCornerRadius];
  [(_UIAlertControllerTVBackgroundView *)v6 _setContinuousCornerRadius:?];
  if ([v5 type] == 2)
  {
    v7 = +[UIColor systemRedColor];
LABEL_5:
    v8 = v7;
    v9 = 1.0;
    v10 = 0.8;
    goto LABEL_6;
  }

  if ([v4 isPreferred])
  {
    v7 = [v4 tintColor];
    goto LABEL_5;
  }

  v12 = [v4 traitCollection];
  v13 = [v12 userInterfaceStyle];

  if (v13 == 1)
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