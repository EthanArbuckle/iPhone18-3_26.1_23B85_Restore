@interface SettingsExtensionHostViewController
- (_TtC8Settings35SettingsExtensionHostViewController)init;
- (void)hostViewController:(id)controller didBeginHosting:(id)hosting;
- (void)hostViewController:(id)controller didEndHosting:(id)hosting error:(id)error;
- (void)hostViewControllerDidActivate:(id)activate;
@end

@implementation SettingsExtensionHostViewController

- (_TtC8Settings35SettingsExtensionHostViewController)init
{
  *(&self->super.isa + OBJC_IVAR____TtC8Settings35SettingsExtensionHostViewController_extensionProxies) = MEMORY[0x277D84F98];
  v3 = [objc_allocWithZone(MEMORY[0x277CC5E70]) init];
  *(&self->super.isa + OBJC_IVAR____TtC8Settings35SettingsExtensionHostViewController_viewController) = v3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for SettingsExtensionHostViewController();
  v4 = [(SettingsExtensionHostViewController *)&v6 init];
  [*(&v4->super.isa + OBJC_IVAR____TtC8Settings35SettingsExtensionHostViewController_viewController) setDelegate_];
  return v4;
}

- (void)hostViewControllerDidActivate:(id)activate
{
  activateCopy = activate;
  selfCopy = self;
  sub_21CE1B920(activateCopy);
}

- (void)hostViewController:(id)controller didEndHosting:(id)hosting error:(id)error
{
  controllerCopy = controller;
  hostingCopy = hosting;
  selfCopy = self;
  errorCopy = error;
  sub_21CE1BFE0(controllerCopy, hostingCopy, error);
}

- (void)hostViewController:(id)controller didBeginHosting:(id)hosting
{
  controllerCopy = controller;
  hostingCopy = hosting;
  selfCopy = self;
  sub_21CE1FF38();
}

@end