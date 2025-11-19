@interface RemoteExtensionScene
- (UIViewController)viewController;
- (_TtC13iCloudQuotaUI20RemoteExtensionScene)init;
- (void)setViewController:(id)a3;
@end

@implementation RemoteExtensionScene

- (UIViewController)viewController
{
  v3 = OBJC_IVAR____TtC13iCloudQuotaUI20RemoteExtensionScene_viewController;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setViewController:(id)a3
{
  v5 = OBJC_IVAR____TtC13iCloudQuotaUI20RemoteExtensionScene_viewController;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (_TtC13iCloudQuotaUI20RemoteExtensionScene)init
{
  *(&self->super.isa + OBJC_IVAR____TtC13iCloudQuotaUI20RemoteExtensionScene_viewController) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for RemoteExtensionScene();
  return [(RemoteExtensionScene *)&v3 init];
}

@end