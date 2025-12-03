@interface UIInterfaceActionConcreteVisualStyle_GlassAppleTV
- (id)actionViewStateForAttachingToActionRepresentationView:(id)view;
- (id)newActionBackgroundViewForViewState:(id)state;
@end

@implementation UIInterfaceActionConcreteVisualStyle_GlassAppleTV

- (id)actionViewStateForAttachingToActionRepresentationView:(id)view
{
  viewCopy = view;
  v4 = [[_UIInterfaceActionRepresentationViewContext_GlassAppleTV alloc] initWithHighlightTransformTargetView:viewCopy];

  return v4;
}

- (id)newActionBackgroundViewForViewState:(id)state
{
  stateCopy = state;
  action = [stateCopy action];
  v6 = objc_alloc_init(_UIAlertControllerGlassTVActionBackgroundView);
  if ([action type] == 2)
  {
    isPreferred = 1;
  }

  else
  {
    isPreferred = [stateCopy isPreferred];
  }

  [(_UIAlertControllerModernTVActionBackgroundView *)v6 setShouldUseTintColorAsHighlightColor:isPreferred];
  [(UIInterfaceActionConcreteVisualStyle_GlassAppleTV *)self _actionBackgroundCornerRadius];
  [(_UIAlertControllerTVBackgroundView *)v6 _setContinuousCornerRadius:?];
  if ([action type] == 2)
  {
    tintColor = +[UIColor systemRedColor];
LABEL_8:
    v9 = tintColor;
    [(UIView *)v6 setTintColor:tintColor];

    [(_UIAlertControllerTVBackgroundView *)v6 setAlpha:0 forState:0.2];
    layer = [(UIView *)v6 layer];
    [layer setCompositingFilter:*MEMORY[0x1E6979CC0]];

    goto LABEL_15;
  }

  if ([stateCopy isPreferred])
  {
    tintColor = [stateCopy tintColor];
    goto LABEL_8;
  }

  traitCollection = [stateCopy traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle == 1)
  {
    +[UIColor blackColor];
  }

  else
  {
    +[UIColor whiteColor];
  }
  v13 = ;
  [(UIView *)v6 setTintColor:v13];

  layer2 = [(UIView *)v6 layer];
  v15 = layer2;
  v16 = MEMORY[0x1E6979CE8];
  if (userInterfaceStyle != 1)
  {
    v16 = MEMORY[0x1E6979CF8];
  }

  [layer2 setCompositingFilter:*v16];

  [(_UIAlertControllerTVBackgroundView *)v6 setAlpha:0 forState:0.1];
  [(_UIAlertControllerTVBackgroundView *)v6 setAlpha:4 forState:0.2];
LABEL_15:
  [(_UIAlertControllerTVBackgroundView *)v6 setAlpha:1 forState:1.0];
  [(_UIAlertControllerTVBackgroundView *)v6 setAlpha:8 forState:1.0];
  [(_UIAlertControllerTVBackgroundView *)v6 setShouldUseTintColorAsBackgroundColor:1];

  return v6;
}

@end