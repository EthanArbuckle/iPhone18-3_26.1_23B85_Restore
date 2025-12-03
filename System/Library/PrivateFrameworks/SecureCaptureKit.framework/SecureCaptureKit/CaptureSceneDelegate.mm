@interface CaptureSceneDelegate
- (UIWindow)window;
- (void)scene:(id)scene openURLContexts:(id)contexts;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)setWindow:(id)window;
@end

@implementation CaptureSceneDelegate

- (UIWindow)window
{
  v3 = OBJC_IVAR____TtC16SecureCaptureKit20CaptureSceneDelegate_window;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setWindow:(id)window
{
  v5 = OBJC_IVAR____TtC16SecureCaptureKit20CaptureSceneDelegate_window;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = window;
  windowCopy = window;
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_264F10FE0(sceneCopy, optionsCopy);
}

- (void)scene:(id)scene openURLContexts:(id)contexts
{
  sub_264F10430();
  sub_264F11C68();
  v5 = sub_264F13374();
  selfCopy = self;
  sub_264F106F8(v5);
}

- (void)sceneDidDisconnect:(id)disconnect
{
  v4 = OBJC_IVAR____TtC16SecureCaptureKit20CaptureSceneDelegate_window;
  swift_beginAccess();
  v5 = *(&self->super.super.isa + v4);
  *(&self->super.super.isa + v4) = 0;
}

@end