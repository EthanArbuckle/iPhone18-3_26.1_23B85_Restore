@interface AppExtensionHostView.HostCoordinator
- (_TtCV21TranslationAPISupport20AppExtensionHostView15HostCoordinator)init;
- (void)hostViewControllerDidActivate:(id)activate;
- (void)hostViewControllerWillDeactivate:(id)deactivate error:(id)error;
@end

@implementation AppExtensionHostView.HostCoordinator

- (void)hostViewControllerDidActivate:(id)activate
{
  activateCopy = activate;
  selfCopy = self;
  sub_26F36F818(activateCopy);
}

- (void)hostViewControllerWillDeactivate:(id)deactivate error:(id)error
{
  v6 = *(&self->super.isa + OBJC_IVAR____TtCV21TranslationAPISupport20AppExtensionHostView15HostCoordinator_connection);
  deactivateCopy = deactivate;
  selfCopy = self;
  errorCopy = error;
  [v6 invalidate];
  v9 = *(&selfCopy->super.isa + OBJC_IVAR____TtCV21TranslationAPISupport20AppExtensionHostView15HostCoordinator_remoteConnectionDidChange);
  if (v9)
  {
    v10 = *&selfCopy->_anon_0[OBJC_IVAR____TtCV21TranslationAPISupport20AppExtensionHostView15HostCoordinator_remoteConnectionDidChange];

    v9(0);
    sub_26F370E9C(v9);
  }
}

- (_TtCV21TranslationAPISupport20AppExtensionHostView15HostCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end