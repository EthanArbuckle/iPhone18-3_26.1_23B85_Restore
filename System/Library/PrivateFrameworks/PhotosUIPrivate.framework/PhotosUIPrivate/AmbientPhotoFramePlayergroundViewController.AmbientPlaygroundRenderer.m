@interface AmbientPhotoFramePlayergroundViewController.AmbientPlaygroundRenderer
- (PXPosterPreferences)px_preferences;
- (PXPosterRenderingEnvironment)px_environment;
- (UIView)backgroundView;
- (UIView)floatingView;
- (UIView)foregroundView;
- (id)px_extendRenderSessionForReason:(id)a3;
- (void)px_updatePreferences:(id)a3;
- (void)setPx_preferences:(id)a3;
@end

@implementation AmbientPhotoFramePlayergroundViewController.AmbientPlaygroundRenderer

- (UIView)backgroundView
{
  v2 = self;
  v3 = sub_1B3896540();

  return v3;
}

- (UIView)foregroundView
{
  v2 = self;
  v3 = sub_1B3896590();

  return v3;
}

- (UIView)floatingView
{
  v2 = self;
  v3 = sub_1B38965E0();

  return v3;
}

- (id)px_extendRenderSessionForReason:(id)a3
{
  sub_1B3C9C5E8();
  v4 = self;
  v5 = sub_1B389666C();

  return v5;
}

- (void)px_updatePreferences:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_1B3896718(v5, v4);
  _Block_release(v4);
}

- (PXPosterRenderingEnvironment)px_environment
{
  v2 = self;
  v3 = sub_1B38968BC();

  return v3;
}

- (PXPosterPreferences)px_preferences
{
  v2 = sub_1B3896938();

  return v2;
}

- (void)setPx_preferences:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_1B38969A8(a3);
}

@end