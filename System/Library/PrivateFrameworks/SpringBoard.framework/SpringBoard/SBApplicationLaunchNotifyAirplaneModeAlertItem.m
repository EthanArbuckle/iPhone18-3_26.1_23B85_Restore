@interface SBApplicationLaunchNotifyAirplaneModeAlertItem
- (BOOL)_isOnCellular;
- (SBApplicationLaunchNotifyAirplaneModeAlertItem)initWithApplication:(id)a3;
- (id)_alertTitleForOnCellular:(int)a3 isMessagesApplication:;
- (id)_createSystemApertureElement;
- (uint64_t)_primaryActionTriggeredForOnCellular:(uint64_t)result;
- (void)_configureForAirplaneModeDataAlertOnCellular:(int)a3 isMessagesApplication:;
- (void)_isMessagesApplication;
- (void)_sendUserToSettings;
- (void)_turnOffAirplaneMode;
- (void)configure:(BOOL)a3 requirePasscodeForActions:(BOOL)a4;
@end

@implementation SBApplicationLaunchNotifyAirplaneModeAlertItem

- (SBApplicationLaunchNotifyAirplaneModeAlertItem)initWithApplication:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = SBApplicationLaunchNotifyAirplaneModeAlertItem;
  v5 = [(SBApplicationLaunchNotifyAlertItem *)&v7 initWithApplication:v4];
  if (v5)
  {
    v5->_usesCellNetwork = ([v4 dataUsage] & 4) != 0;
  }

  return v5;
}

- (void)configure:(BOOL)a3 requirePasscodeForActions:(BOOL)a4
{
  v5 = [(SBApplicationLaunchNotifyAirplaneModeAlertItem *)self _isOnCellular];
  v6 = [(SBApplicationLaunchNotifyAirplaneModeAlertItem *)self _isMessagesApplication];

  [(SBApplicationLaunchNotifyAirplaneModeAlertItem *)self _configureForAirplaneModeDataAlertOnCellular:v5 isMessagesApplication:v6];
}

void __78__SBApplicationLaunchNotifyAirplaneModeAlertItem__createSystemApertureElement__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(SBApplicationLaunchNotifyAirplaneModeAlertItem *)WeakRetained _primaryActionTriggeredForOnCellular:?];
}

- (BOOL)_isOnCellular
{
  if (!a1)
  {
    return 0;
  }

  v1 = [a1 application];
  v2 = [v1 dataUsage] != 0;

  return v2;
}

- (void)_isMessagesApplication
{
  if (result)
  {
    v1 = [result application];
    v2 = [v1 bundleIdentifier];
    v3 = [v2 isEqualToString:@"com.apple.MobileSMS"];

    return v3;
  }

  return result;
}

- (void)_configureForAirplaneModeDataAlertOnCellular:(int)a3 isMessagesApplication:
{
  if (a1)
  {
    v6 = [a1 alertController];
    v7 = [(SBApplicationLaunchNotifyAirplaneModeAlertItem *)a1 _alertTitleForOnCellular:a2 isMessagesApplication:a3];
    [v6 setTitle:v7];

    v8 = [MEMORY[0x277CCA8D8] mainBundle];
    v9 = v8;
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

    v12 = [v8 localizedStringForKey:v10 value:&stru_283094718 table:@"SpringBoard"];

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __117__SBApplicationLaunchNotifyAirplaneModeAlertItem__configureForAirplaneModeDataAlertOnCellular_isMessagesApplication___block_invoke;
    v18[3] = &unk_2783C0D28;
    v18[4] = a1;
    v19 = a2;
    v13 = [MEMORY[0x277D750F8] actionWithTitle:v12 style:0 handler:v18];
    [v6 addAction:v13];

    v14 = [MEMORY[0x277CCA8D8] mainBundle];
    v15 = [v14 localizedStringForKey:v11 value:&stru_283094718 table:@"SpringBoard"];

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __117__SBApplicationLaunchNotifyAirplaneModeAlertItem__configureForAirplaneModeDataAlertOnCellular_isMessagesApplication___block_invoke_2;
    v17[3] = &unk_2783A8A40;
    v17[4] = a1;
    v16 = [MEMORY[0x277D750F8] actionWithTitle:v15 style:a2 handler:v17];
    [v6 addAction:v16];
  }
}

- (id)_createSystemApertureElement
{
  v3 = objc_alloc_init(MEMORY[0x277D67DF0]);
  v4 = [objc_alloc(MEMORY[0x277D67E20]) initWithSystemImageName:@"airplane"];
  v5 = [MEMORY[0x277D75348] systemOrangeColor];
  [v4 setContentColor:v5];

  [v3 setLeadingContentViewProvider:v4];
  v6 = [(SBApplicationLaunchNotifyAirplaneModeAlertItem *)self _isOnCellular];
  v7 = [(SBApplicationLaunchNotifyAirplaneModeAlertItem *)self _isMessagesApplication];
  v8 = [(SBApplicationLaunchNotifyAirplaneModeAlertItem *)self _alertTitleForOnCellular:v6 isMessagesApplication:v7];
  v9 = [objc_alloc(MEMORY[0x277D67E58]) initWithText:v8 style:0];
  [v9 setNumberOfLines:0];
  [v3 setPrimaryContentViewProvider:v9];
  objc_initWeak(&location, self);
  v10 = [MEMORY[0x277CCA8D8] mainBundle];
  if (v6)
  {
    [v10 localizedStringForKey:@"AIRPLANE_DISABLE" value:&stru_283094718 table:@"SpringBoard"];
  }

  else
  {
    [v10 localizedStringForKey:@"AIRPLANE_DATA_GO_TO_SETTINGS" value:&stru_283094718 table:@"SpringBoard"];
  }
  v11 = ;

  v12 = objc_alloc(MEMORY[0x277D67DD8]);
  v13 = MEMORY[0x277D750C8];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __78__SBApplicationLaunchNotifyAirplaneModeAlertItem__createSystemApertureElement__block_invoke;
  v18[3] = &unk_2783B3190;
  objc_copyWeak(&v19, &location);
  v20 = v6;
  v14 = [v13 actionWithTitle:v11 image:0 identifier:0 handler:v18];
  v15 = [v12 initWithDefaultTextActionConfigurationWithAction:v14];

  [v3 setActionContentViewProvider:v15];
  v16 = [(SBSystemApertureProvidedContentElement *)[SBAlertProvidedContentElement alloc] initWithIdentifier:self contentProvider:v3];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);

  return v16;
}

- (id)_alertTitleForOnCellular:(int)a3 isMessagesApplication:
{
  if (a1)
  {
    if (a3)
    {
      v3 = [MEMORY[0x277CCA8D8] mainBundle];
      v4 = v3;
      v5 = @"AIRPLANE_CELL_PROMPT_SMS";
    }

    else if (a2)
    {
      v3 = [MEMORY[0x277CCA8D8] mainBundle];
      v4 = v3;
      v5 = @"AIRPLANE_CELL_PROMPT";
    }

    else if (MGGetBoolAnswer())
    {
      v6 = MGGetBoolAnswer();
      v3 = [MEMORY[0x277CCA8D8] mainBundle];
      v4 = v3;
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
      v3 = [MEMORY[0x277CCA8D8] mainBundle];
      v4 = v3;
      v5 = @"AIRPLANE_DATA_PROMPT_NO_WIFI";
    }

    v7 = [v3 localizedStringForKey:v5 value:&stru_283094718 table:@"SpringBoard"];
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
  if (a1)
  {
    v1 = +[SBAirplaneModeController sharedInstance];
    [v1 setInAirplaneMode:0];
  }
}

- (void)_sendUserToSettings
{
  if (a1)
  {
    v1 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=ROOT#AIRPLANE_MODE"];
    SBWorkspaceActivateApplicationFromURL(v1, 0, 0);
  }
}

@end