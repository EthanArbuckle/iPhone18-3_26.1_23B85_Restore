@interface __PSAccessoriesListController
- (id)specifierForDevice:(id)device;
- (id)specifiers;
- (void)handleSessionEvent:(id)event;
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

- (id)specifierForDevice:(id)device
{
  deviceCopy = device;
  name = [deviceCopy name];
  v6 = [PSSpecifier preferenceSpecifierNamed:name target:self set:0 get:0 detail:NSClassFromString(&cfstr_Asaccessoryinf.isa) cell:2 edit:0];

  identifier = [deviceCopy identifier];
  [v6 setIdentifier:identifier];

  bluetoothOTAName = [deviceCopy bluetoothOTAName];
  if (bluetoothOTAName)
  {
    [v6 setObject:bluetoothOTAName forKeyedSubscript:@"cellSubtitleText"];
  }

  else
  {
    sSID = [deviceCopy SSID];
    [v6 setObject:sSID forKeyedSubscript:@"cellSubtitleText"];
  }

  [v6 setObject:objc_opt_class() forKeyedSubscript:@"cellClass"];
  [v6 setProperty:deviceCopy forKey:@"device"];
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
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    sf_isiPhone = [currentDevice sf_isiPhone];
    v9 = @"iPad";
    if (sf_isiPhone)
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

- (void)handleSessionEvent:(id)event
{
  eventType = [event eventType];
  if (eventType <= 0x2A && ((1 << eventType) & 0x60000000400) != 0)
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