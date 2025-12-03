@interface RemoteExtensionScene
- (UIViewController)viewController;
- (_TtC13iCloudQuotaUI20RemoteExtensionScene)init;
- (void)setViewController:(id)controller;
@end

@implementation RemoteExtensionScene

- (UIViewController)viewController
{
  v3 = OBJC_IVAR____TtC13iCloudQuotaUI20RemoteExtensionScene_viewController;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setViewController:(id)controller
{
  v5 = OBJC_IVAR____TtC13iCloudQuotaUI20RemoteExtensionScene_viewController;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = controller;
  controllerCopy = controller;
}

- (_TtC13iCloudQuotaUI20RemoteExtensionScene)init
{
  *(&self->super.isa + OBJC_IVAR____TtC13iCloudQuotaUI20RemoteExtensionScene_viewController) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for RemoteExtensionScene();
  return [(RemoteExtensionScene *)&v3 init];
}

@end