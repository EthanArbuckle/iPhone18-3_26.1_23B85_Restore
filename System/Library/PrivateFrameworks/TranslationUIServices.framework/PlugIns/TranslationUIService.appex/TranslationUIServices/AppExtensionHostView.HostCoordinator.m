@interface AppExtensionHostView.HostCoordinator
- (_TtCV20TranslationUIService20AppExtensionHostView15HostCoordinator)init;
- (void)hostViewControllerDidActivate:(id)a3;
- (void)hostViewControllerWillDeactivate:(id)a3 error:(id)a4;
@end

@implementation AppExtensionHostView.HostCoordinator

- (void)hostViewControllerDidActivate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10000A780(v4);
}

- (void)hostViewControllerWillDeactivate:(id)a3 error:(id)a4
{
  v6 = *(&self->super.isa + OBJC_IVAR____TtCV20TranslationUIService20AppExtensionHostView15HostCoordinator_connection);
  v11 = a3;
  v7 = self;
  v8 = a4;
  [v6 invalidate];
  v9 = *(&v7->super.isa + OBJC_IVAR____TtCV20TranslationUIService20AppExtensionHostView15HostCoordinator_remoteConnectionDidChange);
  if (v9)
  {
    v10 = *&v7->connection[OBJC_IVAR____TtCV20TranslationUIService20AppExtensionHostView15HostCoordinator_remoteConnectionDidChange];

    v9(0);
    sub_100009F24(v9);
  }
}

- (_TtCV20TranslationUIService20AppExtensionHostView15HostCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end