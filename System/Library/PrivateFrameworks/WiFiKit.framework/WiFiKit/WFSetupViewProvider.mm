@interface WFSetupViewProvider
- (id)credentialsViewControllerWithContext:(id)context;
- (id)networkDetailsViewControllerWithContext:(id)context;
- (id)otherNetworkViewControllerWithContext:(id)context appearanceProxy:(id)proxy;
@end

@implementation WFSetupViewProvider

- (id)credentialsViewControllerWithContext:(id)context
{
  v4 = MEMORY[0x277D7B9F0];
  contextCopy = context;
  v6 = [v4 alloc];
  v7 = WFCurrentDeviceCapability();
  setupAppearanceProxy = [MEMORY[0x277D7B980] setupAppearanceProxy];
  v9 = [v6 initWithCredentialsProviderContext:contextCopy deviceCapability:v7 appearanceProxy:setupAppearanceProxy];

  credentialsViewControllerMap = [(WFSettingsViewProvider *)self credentialsViewControllerMap];
  [credentialsViewControllerMap setObject:v9 forKey:contextCopy];

  return v9;
}

- (id)networkDetailsViewControllerWithContext:(id)context
{
  contextCopy = context;
  v5 = [WFSettingsController alloc];
  setupAppearanceProxy = [MEMORY[0x277D7B980] setupAppearanceProxy];
  v7 = [(WFSettingsController *)v5 initWithDetailsContext:contextCopy appearanceProxy:setupAppearanceProxy];

  [(WFSettingsViewProvider *)self setSettingsController:v7];
  settingsController = [(WFSettingsViewProvider *)self settingsController];
  settingsViewController = [settingsController settingsViewController];

  return settingsViewController;
}

- (id)otherNetworkViewControllerWithContext:(id)context appearanceProxy:(id)proxy
{
  v4 = MEMORY[0x277D7B9F0];
  contextCopy = context;
  v6 = [v4 alloc];
  v7 = WFCurrentDeviceCapability();
  setupAppearanceProxy = [MEMORY[0x277D7B980] setupAppearanceProxy];
  v9 = [v6 initWithOtherNetworkProviderContext:contextCopy deviceCapability:v7 appearanceProxy:setupAppearanceProxy];

  [v9 setDelegate:contextCopy];

  return v9;
}

@end