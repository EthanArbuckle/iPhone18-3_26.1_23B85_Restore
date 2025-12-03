@interface CaptureUIInteraction
- (_TtC16ScreenSharingKit20CaptureUIInteraction)init;
- (int64_t)_deviceOrientation;
- (void)didMoveToView:(id)view;
- (void)setView:(id)view;
- (void)set_deviceOrientation:(int64_t)orientation;
- (void)willMoveToView:(id)view;
@end

@implementation CaptureUIInteraction

- (_TtC16ScreenSharingKit20CaptureUIInteraction)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)setView:(id)view
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction__view);
  *(&self->super.isa + OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction__view) = view;
  viewCopy = view;
}

- (void)willMoveToView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  CaptureUIInteraction.willMove(to:)(view);
}

- (void)didMoveToView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  CaptureUIInteraction.didMove(to:)(view);
}

- (int64_t)_deviceOrientation
{
  v3 = OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_deviceOrientation;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)set_deviceOrientation:(int64_t)orientation
{
  selfCopy = self;
  CaptureUIInteraction.deviceOrientation.setter(orientation);
}

@end