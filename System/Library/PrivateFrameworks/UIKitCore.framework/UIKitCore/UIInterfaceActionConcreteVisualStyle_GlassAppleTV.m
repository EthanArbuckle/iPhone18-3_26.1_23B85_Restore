@interface UIInterfaceActionConcreteVisualStyle_GlassAppleTV
- (id)actionViewStateForAttachingToActionRepresentationView:(id)a3;
- (id)newActionBackgroundViewForViewState:(id)a3;
@end

@implementation UIInterfaceActionConcreteVisualStyle_GlassAppleTV

- (id)actionViewStateForAttachingToActionRepresentationView:(id)a3
{
  v3 = a3;
  v4 = [[_UIInterfaceActionRepresentationViewContext_GlassAppleTV alloc] initWithHighlightTransformTargetView:v3];

  return v4;
}

- (id)newActionBackgroundViewForViewState:(id)a3
{
  v4 = a3;
  v5 = [v4 action];
  v6 = objc_alloc_init(_UIAlertControllerGlassTVActionBackgroundView);
  if ([v5 type] == 2)
  {
    v7 = 1;
  }

  else
  {
    v7 = [v4 isPreferred];
  }

  [(_UIAlertControllerModernTVActionBackgroundView *)v6 setShouldUseTintColorAsHighlightColor:v7];
  [(UIInterfaceActionConcreteVisualStyle_GlassAppleTV *)self _actionBackgroundCornerRadius];
  [(_UIAlertControllerTVBackgroundView *)v6 _setContinuousCornerRadius:?];
  if ([v5 type] == 2)
  {
    v8 = +[UIColor systemRedColor];
LABEL_8:
    v9 = v8;
    [(UIView *)v6 setTintColor:v8];

    [(_UIAlertControllerTVBackgroundView *)v6 setAlpha:0 forState:0.2];
    v10 = [(UIView *)v6 layer];
    [v10 setCompositingFilter:*MEMORY[0x1E6979CC0]];

    goto LABEL_15;
  }

  if ([v4 isPreferred])
  {
    v8 = [v4 tintColor];
    goto LABEL_8;
  }

  v11 = [v4 traitCollection];
  v12 = [v11 userInterfaceStyle];

  if (v12 == 1)
  {
    +[UIColor blackColor];
  }

  else
  {
    +[UIColor whiteColor];
  }
  v13 = ;
  [(UIView *)v6 setTintColor:v13];

  v14 = [(UIView *)v6 layer];
  v15 = v14;
  v16 = MEMORY[0x1E6979CE8];
  if (v12 != 1)
  {
    v16 = MEMORY[0x1E6979CF8];
  }

  [v14 setCompositingFilter:*v16];

  [(_UIAlertControllerTVBackgroundView *)v6 setAlpha:0 forState:0.1];
  [(_UIAlertControllerTVBackgroundView *)v6 setAlpha:4 forState:0.2];
LABEL_15:
  [(_UIAlertControllerTVBackgroundView *)v6 setAlpha:1 forState:1.0];
  [(_UIAlertControllerTVBackgroundView *)v6 setAlpha:8 forState:1.0];
  [(_UIAlertControllerTVBackgroundView *)v6 setShouldUseTintColorAsBackgroundColor:1];

  return v6;
}

@end