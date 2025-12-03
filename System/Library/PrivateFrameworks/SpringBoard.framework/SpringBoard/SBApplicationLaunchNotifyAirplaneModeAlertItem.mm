@interface SBApplicationLaunchNotifyAirplaneModeAlertItem
- (BOOL)_isOnCellular;
- (SBApplicationLaunchNotifyAirplaneModeAlertItem)initWithApplication:(id)application;
- (id)_alertTitleForOnCellular:(int)cellular isMessagesApplication:;
- (id)_createSystemApertureElement;
- (uint64_t)_primaryActionTriggeredForOnCellular:(uint64_t)result;
- (void)_configureForAirplaneModeDataAlertOnCellular:(int)cellular isMessagesApplication:;
- (void)_isMessagesApplication;
- (void)_sendUserToSettings;
- (void)_turnOffAirplaneMode;
- (void)configure:(BOOL)configure requirePasscodeForActions:(BOOL)actions;
@end

@implementation SBApplicationLaunchNotifyAirplaneModeAlertItem

- (SBApplicationLaunchNotifyAirplaneModeAlertItem)initWithApplication:(id)application
{
  applicationCopy = application;
  v7.receiver = self;
  v7.super_class = SBApplicationLaunchNotifyAirplaneModeAlertItem;
  v5 = [(SBApplicationLaunchNotifyAlertItem *)&v7 initWithApplication:applicationCopy];
  if (v5)
  {
    v5->_usesCellNetwork = ([applicationCopy dataUsage] & 4) != 0;
  }

  return v5;
}

- (void)configure:(BOOL)configure requirePasscodeForActions:(BOOL)actions
{
  _isOnCellular = [(SBApplicationLaunchNotifyAirplaneModeAlertItem *)self _isOnCellular];
  _isMessagesApplication = [(SBApplicationLaunchNotifyAirplaneModeAlertItem *)self _isMessagesApplication];

  [(SBApplicationLaunchNotifyAirplaneModeAlertItem *)self _configureForAirplaneModeDataAlertOnCellular:_isOnCellular isMessagesApplication:_isMessagesApplication];
}

void __78__SBApplicationLaunchNotifyAirplaneModeAlertItem__createSystemApertureElement__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(SBApplicationLaunchNotifyAirplaneModeAlertItem *)WeakRetained _primaryActionTriggeredForOnCellular:?];
}

- (BOOL)_isOnCellular
{
  if (!self)
  {
    return 0;
  }

  application = [self application];
  v2 = [application dataUsage] != 0;

  return v2;
}

- (void)_isMessagesApplication
{
  if (result)
  {
    application = [result application];
    bundleIdentifier = [application bundleIdentifier];
    v3 = [bundleIdentifier isEqualToString:@"com.apple.MobileSMS"];

    return v3;
  }

  return result;
}

- (void)_configureForAirplaneModeDataAlertOnCellular:(int)cellular isMessagesApplication:
{
  if (self)
  {
    alertController = [self alertController];
    v7 = [(SBApplicationLaunchNotifyAirplaneModeAlertItem *)self _alertTitleForOnCellular:a2 isMessagesApplication:cellular];
    [alertController setTitle:v7];

    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v9 = mainBundle;
    if (a2)
    {
      v10 = @"AIRPLANE_DISABLE";
    }

    else
    {
      v10 = @"AIRPLANE_DATA_SETTINGS";
    }

    if (a2)
    {
      v11 = @"AIRPLANE_CANCEL";
    }

    else
    {
      v11 = @"AIRPLANE_DATA_OK";
    }

    v12 = [mainBundle localizedStringForKey:v10 value:&stru_283094718 table:@"SpringBoard"];

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __117__SBApplicationLaunchNotifyAirplaneModeAlertItem__configureForAirplaneModeDataAlertOnCellular_isMessagesApplication___block_invoke;
    v18[3] = &unk_2783C0D28;
    v18[4] = self;
    v19 = a2;
    v13 = [MEMORY[0x277D750F8] actionWithTitle:v12 style:0 handler:v18];
    [alertController addAction:v13];

    mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
    v15 = [mainBundle2 localizedStringForKey:v11 value:&stru_283094718 table:@"SpringBoard"];

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __117__SBApplicationLaunchNotifyAirplaneModeAlertItem__configureForAirplaneModeDataAlertOnCellular_isMessagesApplication___block_invoke_2;
    v17[3] = &unk_2783A8A40;
    v17[4] = self;
    v16 = [MEMORY[0x277D750F8] actionWithTitle:v15 style:a2 handler:v17];
    [alertController addAction:v16];
  }
}

- (id)_createSystemApertureElement
{
  v3 = objc_alloc_init(MEMORY[0x277D67DF0]);
  v4 = [objc_alloc(MEMORY[0x277D67E20]) initWithSystemImageName:@"airplane"];
  systemOrangeColor = [MEMORY[0x277D75348] systemOrangeColor];
  [v4 setContentColor:systemOrangeColor];

  [v3 setLeadingContentViewProvider:v4];
  _isOnCellular = [(SBApplicationLaunchNotifyAirplaneModeAlertItem *)self _isOnCellular];
  _isMessagesApplication = [(SBApplicationLaunchNotifyAirplaneModeAlertItem *)self _isMessagesApplication];
  v8 = [(SBApplicationLaunchNotifyAirplaneModeAlertItem *)self _alertTitleForOnCellular:_isOnCellular isMessagesApplication:_isMessagesApplication];
  v9 = [objc_alloc(MEMORY[0x277D67E58]) initWithText:v8 style:0];
  [v9 setNumberOfLines:0];
  [v3 setPrimaryContentViewProvider:v9];
  objc_initWeak(&location, self);
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  if (_isOnCellular)
  {
    [mainBundle localizedStringForKey:@"AIRPLANE_DISABLE" value:&stru_283094718 table:@"SpringBoard"];
  }

  else
  {
    [mainBundle localizedStringForKey:@"AIRPLANE_DATA_GO_TO_SETTINGS" value:&stru_283094718 table:@"SpringBoard"];
  }
  v11 = ;

  v12 = objc_alloc(MEMORY[0x277D67DD8]);
  v13 = MEMORY[0x277D750C8];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __78__SBApplicationLaunchNotifyAirplaneModeAlertItem__createSystemApertureElement__block_invoke;
  v18[3] = &unk_2783B3190;
  objc_copyWeak(&v19, &location);
  v20 = _isOnCellular;
  v14 = [v13 actionWithTitle:v11 image:0 identifier:0 handler:v18];
  v15 = [v12 initWithDefaultTextActionConfigurationWithAction:v14];

  [v3 setActionContentViewProvider:v15];
  v16 = [(SBSystemApertureProvidedContentElement *)[SBAlertProvidedContentElement alloc] initWithIdentifier:self contentProvider:v3];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);

  return v16;
}

- (id)_alertTitleForOnCellular:(int)cellular isMessagesApplication:
{
  if (self)
  {
    if (cellular)
    {
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      v4 = mainBundle;
      v5 = @"AIRPLANE_CELL_PROMPT_SMS";
    }

    else if (a2)
    {
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      v4 = mainBundle;
      v5 = @"AIRPLANE_CELL_PROMPT";
    }

    else if (MGGetBoolAnswer())
    {
      v6 = MGGetBoolAnswer();
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      v4 = mainBundle;
      if (v6)
      {
        v5 = @"AIRPLANE_DATA_PROMPT_WLAN";
      }

      else
      {
        v5 = @"AIRPLANE_DATA_PROMPT";
      }
    }

    else
    {
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      v4 = mainBundle;
      v5 = @"AIRPLANE_DATA_PROMPT_NO_WIFI";
    }

    v7 = [mainBundle localizedStringForKey:v5 value:&stru_283094718 table:@"SpringBoard"];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (uint64_t)_primaryActionTriggeredForOnCellular:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    if (a2)
    {
      [(SBApplicationLaunchNotifyAirplaneModeAlertItem *)result _turnOffAirplaneMode];
    }

    else
    {
      [(SBApplicationLaunchNotifyAirplaneModeAlertItem *)result _sendUserToSettings];
    }

    return [v2 deactivateForButton];
  }

  return result;
}

- (void)_turnOffAirplaneMode
{
  if (self)
  {
    v1 = +[SBAirplaneModeController sharedInstance];
    [v1 setInAirplaneMode:0];
  }
}

- (void)_sendUserToSettings
{
  if (self)
  {
    v1 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=ROOT#AIRPLANE_MODE"];
    SBWorkspaceActivateApplicationFromURL(v1, 0, 0);
  }
}

@end