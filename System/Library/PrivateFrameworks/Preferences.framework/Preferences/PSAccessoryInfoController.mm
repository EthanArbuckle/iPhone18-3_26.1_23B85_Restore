@interface PSAccessoryInfoController
- (CGSize)preferredContentSize;
- (PSAccessoryInfoController)init;
- (PSAccessoryInfoController)initWithDevice:(id)device session:(id)session;
- (id)isAppAllowed:(id)allowed;
- (id)specifiers;
- (id)specifiersForApps:(id)apps;
- (id)specifiersForHeader;
- (void)forgetDevice:(id)device;
- (void)setAppAllowed:(id)allowed specifier:(id)specifier;
@end

@implementation PSAccessoryInfoController

- (PSAccessoryInfoController)init
{
  v3.receiver = self;
  v3.super_class = PSAccessoryInfoController;
  result = [(PSListController *)&v3 init];
  if (result)
  {
    result->_useAsHeader = 0;
  }

  return result;
}

- (PSAccessoryInfoController)initWithDevice:(id)device session:(id)session
{
  deviceCopy = device;
  sessionCopy = session;
  v9 = sessionCopy;
  selfCopy = 0;
  if (deviceCopy && sessionCopy)
  {
    v13.receiver = self;
    v13.super_class = PSAccessoryInfoController;
    v11 = [(PSListController *)&v13 init];
    objc_storeStrong(&v11->_session, session);
    objc_storeStrong(&v11->_device, device);
    v11->_useAsHeader = 1;
    self = v11;
    selfCopy = self;
  }

  return selfCopy;
}

- (CGSize)preferredContentSize
{
  +[PSAccessoryInfoHeaderCell headerHeight];
  v4 = v3 + 0.0 + 44.0 + 20.0;
  appAccessInfoMap = [(DADevice *)self->_device appAccessInfoMap];
  v6 = v4 + (44 * [appAccessInfoMap count]);

  if (self->_useAsHeader)
  {
    v7 = v6 + 150.0;
  }

  else
  {
    v7 = v6 + 150.0 + 20.0 + 44.0;
  }

  view = [(PSAccessoryInfoController *)self view];
  [view bounds];
  v10 = v9;

  v11 = v10;
  v12 = v7;
  result.height = v12;
  result.width = v11;
  return result;
}

- (id)specifiers
{
  v19[2] = *MEMORY[0x1E69E9840];
  specifiers = self->super._specifiers;
  if (specifiers)
  {
    v3 = specifiers;
  }

  else
  {
    array = [MEMORY[0x1E695DF70] array];
    specifiersForHeader = [(PSAccessoryInfoController *)self specifiersForHeader];
    [array addObjectsFromArray:specifiersForHeader];

    v7 = PS_LocalizedStringForAccessories(@"ACCESSORY_APP_ACCESS_HEADER");
    v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:0 get:0 detail:0 cell:0 edit:0];

    [v8 setIdentifier:@"appAccess"];
    v9 = PS_LocalizedStringForAccessories(@"ACCESSORY_APP_ACCESS_FOOTER");
    [v8 setObject:v9 forKeyedSubscript:@"footerText"];

    [array addObject:v8];
    appAccessInfoMap = [(DADevice *)self->_device appAccessInfoMap];
    v11 = [(PSAccessoryInfoController *)self specifiersForApps:appAccessInfoMap];
    [array addObjectsFromArray:v11];

    if (!self->_useAsHeader)
    {
      v12 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:0 edit:0];
      [v12 setIdentifier:@"manage"];
      v13 = PS_LocalizedStringForAccessories(@"ACCESSORY_FORGET_DEVICE");
      v14 = [PSSpecifier preferenceSpecifierNamed:v13 target:self set:0 get:0 detail:0 cell:13 edit:0];

      [v14 setButtonAction:sel_forgetDevice_];
      v19[0] = v12;
      v19[1] = v14;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
      [array addObjectsFromArray:v15];
    }

    v16 = [array copy];
    v17 = self->super._specifiers;
    self->super._specifiers = v16;

    v3 = self->super._specifiers;
  }

  return v3;
}

- (id)specifiersForHeader
{
  v13[1] = *MEMORY[0x1E69E9840];
  device = self->_device;
  if (!device)
  {
    v4 = [(PSSpecifier *)self->super.super._specifier propertyForKey:@"device"];
    v5 = self->_device;
    self->_device = v4;

    v6 = [(PSSpecifier *)self->super.super._specifier propertyForKey:@"session"];
    session = self->_session;
    self->_session = v6;

    device = self->_device;
  }

  discoveryConfiguration = [(DADevice *)device discoveryConfiguration];
  displayName = [discoveryConfiguration displayName];
  [(PSListController *)self setTitle:displayName];

  v10 = [PSSpecifier preferenceSpecifierNamed:&stru_1EFE45030 target:self set:0 get:0 detail:0 cell:-1 edit:0];
  [v10 setUserInfo:self->_device];
  [v10 setObject:objc_opt_class() forKeyedSubscript:@"cellClass"];
  [v10 setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"enabled"];
  v13[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];

  return v11;
}

- (id)specifiersForApps:(id)apps
{
  v23 = *MEMORY[0x1E69E9840];
  appsCopy = apps;
  array = [MEMORY[0x1E695DF70] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v13 = appsCopy;
  obj = [appsCopy allKeys];
  v4 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v15 = *v19;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v18 + 1) + 8 * i);
        v8 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v7 allowPlaceholder:1 error:0];
        localizedName = [v8 localizedName];
        v10 = [PSSpecifier preferenceSpecifierNamed:localizedName target:self set:sel_setAppAllowed_specifier_ get:sel_isAppAllowed_ detail:0 cell:6 edit:0];
        v11 = [MEMORY[0x1E696AD98] numberWithBool:1];
        [v10 setProperty:v11 forKey:@"useLazyIcons"];

        [v10 setProperty:v7 forKey:@"appIDForLazyIcon"];
        [v10 setProperty:v7 forKey:@"PSAccessoryAccessApplicationKey"];
        [array addObject:v10];
      }

      v5 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }

  return array;
}

- (void)setAppAllowed:(id)allowed specifier:(id)specifier
{
  allowedCopy = allowed;
  v10 = [specifier propertyForKey:@"PSAccessoryAccessApplicationKey"];
  appAccessInfoMap = [(DADevice *)self->_device appAccessInfoMap];
  v8 = [appAccessInfoMap objectForKeyedSubscript:v10];

  LODWORD(appAccessInfoMap) = [allowedCopy BOOLValue];
  if (appAccessInfoMap)
  {
    v9 = 25;
  }

  else
  {
    v9 = 28;
  }

  [v8 setState:v9];
  [(DASession *)self->_session setDeviceAppAccessInfo:v8 device:self->_device completionHandler:&__block_literal_global_9];
}

- (id)isAppAllowed:(id)allowed
{
  v4 = [allowed propertyForKey:@"PSAccessoryAccessApplicationKey"];
  appAccessInfoMap = [(DADevice *)self->_device appAccessInfoMap];
  v6 = [appAccessInfoMap objectForKeyedSubscript:v4];

  v7 = MEMORY[0x1E696AD98];
  v8 = [v6 state] == 20 || objc_msgSend(v6, "state") == 25;
  v9 = [v7 numberWithInt:v8];

  return v9;
}

- (void)forgetDevice:(id)device
{
  v4 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:0 preferredStyle:0];
  v5 = MEMORY[0x1E69DC648];
  v6 = PS_LocalizedStringForAccessories(@"ACCESSORY_FORGET_DEVICE_CONFIRM");
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __42__PSAccessoryInfoController_forgetDevice___block_invoke;
  v11[3] = &unk_1E71DC288;
  v11[4] = self;
  v7 = [v5 actionWithTitle:v6 style:2 handler:v11];

  v8 = MEMORY[0x1E69DC648];
  v9 = PS_LocalizedStringForAccessories(@"ACCESSORY_FORGET_DEVICE_CANCEL");
  v10 = [v8 actionWithTitle:v9 style:0 handler:0];

  [v4 addAction:v7];
  [v4 addAction:v10];
  [(PSAccessoryInfoController *)self presentViewController:v4 animated:1 completion:0];
}

void __42__PSAccessoryInfoController_forgetDevice___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1464) appAccessInfoMap];
  v3 = [v2 allValues];
  v6 = [v3 firstObject];

  [v6 setState:0];
  [*(*(a1 + 32) + 1456) setDeviceAppAccessInfo:v6 device:*(*(a1 + 32) + 1464) completionHandler:&__block_literal_global_43];
  v4 = [*(a1 + 32) navigationController];
  v5 = [v4 popViewControllerAnimated:1];
}

@end