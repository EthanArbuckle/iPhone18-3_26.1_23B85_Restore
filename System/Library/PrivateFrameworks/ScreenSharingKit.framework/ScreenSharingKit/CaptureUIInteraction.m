@interface CaptureUIInteraction
- (_TtC16ScreenSharingKit20CaptureUIInteraction)init;
- (int64_t)_deviceOrientation;
- (void)didMoveToView:(id)a3;
- (void)setView:(id)a3;
- (void)set_deviceOrientation:(int64_t)a3;
- (void)willMoveToView:(id)a3;
@end

@implementation CaptureUIInteraction

- (_TtC16ScreenSharingKit20CaptureUIInteraction)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)setView:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction__view);
  *(&self->super.isa + OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction__view) = a3;
  v3 = a3;
}

- (void)willMoveToView:(id)a3
{
  v5 = a3;
  v6 = self;
  CaptureUIInteraction.willMove(to:)(a3);
}

- (void)didMoveToView:(id)a3
{
  v5 = a3;
  v6 = self;
  CaptureUIInteraction.didMove(to:)(a3);
}

- (int64_t)_deviceOrientation
{
  v3 = OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_deviceOrientation;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)set_deviceOrientation:(int64_t)a3
{
  v4 = self;
  CaptureUIInteraction.deviceOrientation.setter(a3);
}

@end