@interface SettingsExtensionHostViewController
- (_TtC8Settings35SettingsExtensionHostViewController)init;
- (void)hostViewController:(id)a3 didBeginHosting:(id)a4;
- (void)hostViewController:(id)a3 didEndHosting:(id)a4 error:(id)a5;
- (void)hostViewControllerDidActivate:(id)a3;
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

- (void)hostViewControllerDidActivate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21CE1B920(v4);
}

- (void)hostViewController:(id)a3 didEndHosting:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  v11 = a5;
  sub_21CE1BFE0(v8, v9, a5);
}

- (void)hostViewController:(id)a3 didBeginHosting:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_21CE1FF38();
}

@end