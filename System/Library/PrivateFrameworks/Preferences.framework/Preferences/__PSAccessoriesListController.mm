@interface __PSAccessoriesListController
- (id)specifierForDevice:(id)a3;
- (id)specifiers;
- (void)handleSessionEvent:(id)a3;
- (void)refreshDADevices;
- (void)viewDidLoad;
@end

@implementation __PSAccessoriesListController

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = __PSAccessoriesListController;
  [(PSListController *)&v13 viewDidLoad];
  v3 = [(PSSpecifier *)self->super.super._specifier propertyForKey:@"bundleID"];
  appBundleID = self->_appBundleID;
  self->_appBundleID = v3;

  if (!self->_appSession)
  {
    v5 = objc_alloc_init(getDADaemonSessionClass());
    appSession = self->_appSession;
    self->_appSession = v5;

    objc_initWeak(&location, self);
    v7 = MEMORY[0x1E69E9820];
    v8 = 3221225472;
    v9 = __44____PSAccessoriesListController_viewDidLoad__block_invoke;
    v10 = &unk_1E71DBCA0;
    objc_copyWeak(&v11, &location);
    [(DASession *)self->_appSession setEventHandler:&v7];
    [(DASession *)self->_appSession activate:v7];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

- (id)specifierForDevice:(id)a3
{
  v4 = a3;
  v5 = [v4 name];
  v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:0 get:0 detail:NSClassFromString(&cfstr_Asaccessoryinf.isa) cell:2 edit:0];

  v7 = [v4 identifier];
  [v6 setIdentifier:v7];

  v8 = [v4 bluetoothOTAName];
  if (v8)
  {
    [v6 setObject:v8 forKeyedSubscript:@"cellSubtitleText"];
  }

  else
  {
    v9 = [v4 SSID];
    [v6 setObject:v9 forKeyedSubscript:@"cellSubtitleText"];
  }

  [v6 setObject:objc_opt_class() forKeyedSubscript:@"cellClass"];
  [v6 setProperty:v4 forKey:@"device"];
  [v6 setProperty:self->_appSession forKey:@"session"];

  return v6;
}

- (id)specifiers
{
  v14[1] = *MEMORY[0x1E69E9840];
  specifiers = self->super._specifiers;
  if (!specifiers)
  {
    v4 = [PSSpecifier groupSpecifierWithID:@"ACCESSORIES_GROUP"];
    v5 = MEMORY[0x1E696AEC0];
    v6 = PS_LocalizedStringForAccessories(@"ACCESSORY_DEVICES_FOOTER");
    v7 = [MEMORY[0x1E69DC938] currentDevice];
    v8 = [v7 sf_isiPhone];
    v9 = @"iPad";
    if (v8)
    {
      v9 = @"iPhone";
    }

    v10 = [v5 stringWithFormat:v6, v9];
    [v4 setObject:v10 forKeyedSubscript:@"footerText"];

    v14[0] = v4;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    v12 = self->super._specifiers;
    self->super._specifiers = v11;

    specifiers = self->super._specifiers;
  }

  return specifiers;
}

- (void)handleSessionEvent:(id)a3
{
  v4 = [a3 eventType];
  if (v4 <= 0x2A && ((1 << v4) & 0x60000000400) != 0)
  {

    [(__PSAccessoriesListController *)self refreshDADevices];
  }
}

- (void)refreshDADevices
{
  appSession = self->_appSession;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __49____PSAccessoriesListController_refreshDADevices__block_invoke;
  v3[3] = &unk_1E71DBD10;
  v3[4] = self;
  [(DASession *)appSession getDevicesWithFlags:8 completionHandler:v3];
}

@end