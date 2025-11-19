@interface CaptureSceneDelegate
- (UIWindow)window;
- (void)scene:(id)a3 openURLContexts:(id)a4;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidDisconnect:(id)a3;
- (void)setWindow:(id)a3;
@end

@implementation CaptureSceneDelegate

- (UIWindow)window
{
  v3 = OBJC_IVAR____TtC16SecureCaptureKit20CaptureSceneDelegate_window;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setWindow:(id)a3
{
  v5 = OBJC_IVAR____TtC16SecureCaptureKit20CaptureSceneDelegate_window;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = a3;
  v7 = a3;
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_264F10FE0(v8, v10);
}

- (void)scene:(id)a3 openURLContexts:(id)a4
{
  sub_264F10430();
  sub_264F11C68();
  v5 = sub_264F13374();
  v6 = self;
  sub_264F106F8(v5);
}

- (void)sceneDidDisconnect:(id)a3
{
  v4 = OBJC_IVAR____TtC16SecureCaptureKit20CaptureSceneDelegate_window;
  swift_beginAccess();
  v5 = *(&self->super.super.isa + v4);
  *(&self->super.super.isa + v4) = 0;
}

@end