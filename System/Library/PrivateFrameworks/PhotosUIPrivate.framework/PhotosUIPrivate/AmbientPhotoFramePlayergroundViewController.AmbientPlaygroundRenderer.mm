@interface AmbientPhotoFramePlayergroundViewController.AmbientPlaygroundRenderer
- (PXPosterPreferences)px_preferences;
- (PXPosterRenderingEnvironment)px_environment;
- (UIView)backgroundView;
- (UIView)floatingView;
- (UIView)foregroundView;
- (id)px_extendRenderSessionForReason:(id)reason;
- (void)px_updatePreferences:(id)preferences;
- (void)setPx_preferences:(id)px_preferences;
@end

@implementation AmbientPhotoFramePlayergroundViewController.AmbientPlaygroundRenderer

- (UIView)backgroundView
{
  selfCopy = self;
  v3 = sub_1B3896540();

  return v3;
}

- (UIView)foregroundView
{
  selfCopy = self;
  v3 = sub_1B3896590();

  return v3;
}

- (UIView)floatingView
{
  selfCopy = self;
  v3 = sub_1B38965E0();

  return v3;
}

- (id)px_extendRenderSessionForReason:(id)reason
{
  sub_1B3C9C5E8();
  selfCopy = self;
  v5 = sub_1B389666C();

  return v5;
}

- (void)px_updatePreferences:(id)preferences
{
  v4 = _Block_copy(preferences);
  _Block_copy(v4);
  selfCopy = self;
  sub_1B3896718(selfCopy, v4);
  _Block_release(v4);
}

- (PXPosterRenderingEnvironment)px_environment
{
  selfCopy = self;
  v3 = sub_1B38968BC();

  return v3;
}

- (PXPosterPreferences)px_preferences
{
  v2 = sub_1B3896938();

  return v2;
}

- (void)setPx_preferences:(id)px_preferences
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1B38969A8(px_preferences);
}

@end