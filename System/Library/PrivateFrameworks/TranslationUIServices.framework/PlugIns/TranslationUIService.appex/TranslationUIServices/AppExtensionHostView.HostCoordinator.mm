@interface AppExtensionHostView.HostCoordinator
- (_TtCV20TranslationUIService20AppExtensionHostView15HostCoordinator)init;
- (void)hostViewControllerDidActivate:(id)activate;
- (void)hostViewControllerWillDeactivate:(id)deactivate error:(id)error;
@end

@implementation AppExtensionHostView.HostCoordinator

- (void)hostViewControllerDidActivate:(id)activate
{
  activateCopy = activate;
  selfCopy = self;
  sub_10000A780(activateCopy);
}

- (void)hostViewControllerWillDeactivate:(id)deactivate error:(id)error
{
  v6 = *(&self->super.isa + OBJC_IVAR____TtCV20TranslationUIService20AppExtensionHostView15HostCoordinator_connection);
  deactivateCopy = deactivate;
  selfCopy = self;
  errorCopy = error;
  [v6 invalidate];
  v9 = *(&selfCopy->super.isa + OBJC_IVAR____TtCV20TranslationUIService20AppExtensionHostView15HostCoordinator_remoteConnectionDidChange);
  if (v9)
  {
    v10 = *&selfCopy->connection[OBJC_IVAR____TtCV20TranslationUIService20AppExtensionHostView15HostCoordinator_remoteConnectionDidChange];

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