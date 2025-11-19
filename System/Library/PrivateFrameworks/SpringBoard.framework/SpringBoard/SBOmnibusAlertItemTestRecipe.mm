@interface SBOmnibusAlertItemTestRecipe
- (id)_anyAppIcon;
- (id)_anySUDescriptor;
- (id)_anyUserInstalledAppIcon;
- (id)_mapsApp;
- (id)_nextAlertItemToTest;
- (id)iconController;
- (void)_dismissCurrentItem;
- (void)handleVolumeDecrease;
- (void)handleVolumeIncrease;
@end

@implementation SBOmnibusAlertItemTestRecipe

- (void)_dismissCurrentItem
{
  [(SBAlertItem *)self->_item deactivateForReason:4];
  item = self->_item;
  self->_item = 0;
}

- (void)handleVolumeIncrease
{
  while (!self->_item)
  {
    v3 = [(SBOmnibusAlertItemTestRecipe *)self _nextAlertItemToTest];
    item = self->_item;
    self->_item = v3;

    if (![(SBAlertItem *)self->_item shouldShowInLockScreen])
    {
      v5 = +[SBLockStateAggregator sharedInstance];
      v6 = [v5 hasAnyLockState];

      if (v6)
      {
        [(SBOmnibusAlertItemTestRecipe *)self _dismissCurrentItem];
      }
    }
  }

  v7 = +[SBAlertItemsController sharedInstance];
  [v7 activateAlertItem:self->_item];
}

- (void)handleVolumeDecrease
{
  if (self->_item)
  {
    [(SBOmnibusAlertItemTestRecipe *)self _dismissCurrentItem];
  }
}

- (id)iconController
{
  v2 = [SBApp windowSceneManager];
  v3 = [v2 embeddedDisplayWindowScene];
  v4 = [v3 iconController];

  return v4;
}

- (id)_anyAppIcon
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(SBOmnibusAlertItemTestRecipe *)self iconController];
  v3 = [v2 iconModel];
  v4 = [v3 leafIcons];

  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if ([v8 isApplicationIcon])
        {
          v5 = v8;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

- (id)_anyUserInstalledAppIcon
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [(SBOmnibusAlertItemTestRecipe *)self iconController];
  v3 = [v2 iconModel];
  v4 = [v3 leafIcons];

  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ([v8 isApplicationIcon])
        {
          v9 = [v8 application];
          v10 = [v9 isSystemApplication];

          if (!v10)
          {
            v5 = v8;
            goto LABEL_12;
          }
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v5;
}

- (id)_anySUDescriptor
{
  v2 = objc_alloc_init(MEMORY[0x277D64878]);

  return v2;
}

- (id)_mapsApp
{
  v2 = +[SBApplicationController sharedInstance];
  v3 = [v2 applicationWithBundleIdentifier:@"com.apple.Maps"];

  return v3;
}

- (id)_nextAlertItemToTest
{
  v2 = _nextAlertItemToTest_alertItemIndex_0++;
  v3 = v2 % 35;
  switch(v2 % 35)
  {
    case 0:
      v34 = [[SBLowPowerAlertItem alloc] initWithLevel:5];
      goto LABEL_57;
    case 1:
      v34 = [[SBActivationFailedAlertItem alloc] initWithFailureCount:5 slot:1];
      goto LABEL_57;
    case 2:
      v26 = SBAppDeniedAlertItem;
      goto LABEL_16;
    case 3:
      v26 = SBAppProfileExpiredAlertItem;
      goto LABEL_16;
    case 4:
      v26 = SBAppProfileNotTrustedAlertItem;
LABEL_16:
      v30 = [v26 alloc];
      v24 = [(SBOmnibusAlertItemTestRecipe *)self _mapsApp];
      v25 = [v30 initWithApp:v24];
      goto LABEL_17;
    case 5:
      v38 = [SBBuddyLockScreenDismissOnlyAlertItem alloc];
      v5 = [MEMORY[0x277CCA8D8] mainBundle];
      v7 = [v5 localizedStringForKey:@"ACTIVATION_REQUIRED" value:@"Activation Required" table:@"SpringBoard"];
      v39 = [(SBDismissOnlyAlertItem *)v38 initWithTitle:v7 body:0];
      goto LABEL_48;
    case 6:
      v5 = [*MEMORY[0x277D76620] performSelector:sel__settingLanguageStringForNewLanguage];
      v40 = SBBuddyLockScreenDismissOnlyAlertItem;
      goto LABEL_35;
    case 7:
      v32 = [MEMORY[0x277CCA8D8] mainBundle];
      v16 = [v32 localizedStringForKey:@"CARRIER_DEBUGGING_TITLE" value:&stru_283094718 table:@"SpringBoard"];

      v33 = [MEMORY[0x277CCA8D8] mainBundle];
      v18 = [v33 localizedStringForKey:@"CARRIER_DEBUGGING_BODY" value:&stru_283094718 table:@"SpringBoard"];

      v19 = @"SBCarrierDebuggingAlert";
      goto LABEL_45;
    case 8:
    case 9:
      v5 = [SBApp telephonyStateProvider];
      if ([v5 isSIMPresentForSlot:1])
      {
        v6 = 1;
      }

      else
      {
        v6 = 2;
      }

      v7 = [v5 carrierBundleInfoForSlot:v6];
      v8 = [v7 carrierName];
      if (v3 == 8)
      {
        v9 = [[SBDataPlanCompletionAlertItem alloc] initWithCarrierName:v8 newAccount:1];
      }

      else
      {
        v9 = [[SBDataPlanFailureAlertItem alloc] initWithAccountURL:0 carrierName:v8 newAccount:1];
      }

      v31 = v9;

      goto LABEL_60;
    case 10:
      v12 = [SBDismissOnlyAlertItem alloc];
      v13 = @"Download Error";
      v14 = @"Some kind of download error";
      goto LABEL_40;
    case 11:
      v27 = [MEMORY[0x277CCA8D8] mainBundle];
      v16 = [v27 localizedStringForKey:@"WAITING_FOR_ACTIVATION_TITLE" value:&stru_283094718 table:@"SpringBoard"];

      v28 = [MEMORY[0x277CCA8D8] mainBundle];
      v18 = [v28 localizedStringForKey:@"WAITING_FOR_ACTIVATION_BODY" value:&stru_283094718 table:@"SpringBoard"];

      v29 = SBDismissOnlyAlertItem;
      goto LABEL_46;
    case 12:
      v35 = [MEMORY[0x277CCA8D8] mainBundle];
      v36 = v35;
      v37 = @"PHONE_ACTIVATED";
      goto LABEL_34;
    case 13:
      v35 = [MEMORY[0x277CCA8D8] mainBundle];
      v36 = v35;
      v37 = @"UNSUPPORTED_CHARGING_ACCESSORY";
LABEL_34:
      v5 = [v35 localizedStringForKey:v37 value:&stru_283094718 table:@"SpringBoard"];

      v40 = SBDismissOnlyAlertItem;
LABEL_35:
      v51 = [[v40 alloc] initWithTitle:v5 body:0];
      goto LABEL_38;
    case 14:
      v20 = [MEMORY[0x277CCA8D8] mainBundle];
      v21 = v20;
      v22 = @"RESTRICTED_URL_TITLE";
      goto LABEL_27;
    case 15:
      v20 = [MEMORY[0x277CCA8D8] mainBundle];
      v21 = v20;
      v22 = @"UNHANDLED_URL_BODY";
LABEL_27:
      v5 = [v20 localizedStringForKey:v22 value:&stru_283094718 table:@"SpringBoard"];

      v41 = MEMORY[0x277CCACA8];
      v42 = [MEMORY[0x277CCA8D8] mainBundle];
      v43 = [v42 localizedStringForKey:@"RESTRICTED_URL_BODY" value:&stru_283094718 table:@"SpringBoard"];
      v44 = [v41 stringWithFormat:v43, @"http://www.apple.com"];

      v31 = [(SBDismissOnlyAlertItem *)[SBUnsupportedURLAlertItem alloc] initWithTitle:v5 body:v44];
      goto LABEL_61;
    case 16:
      v15 = [MEMORY[0x277CCA8D8] mainBundle];
      v16 = [v15 localizedStringForKey:@"REORDER_INFO_TITLE" value:&stru_283094718 table:@"SpringBoard"];

      v17 = [MEMORY[0x277CCA8D8] mainBundle];
      v18 = [v17 localizedStringForKey:@"REORDER_INFO_BODY" value:&stru_283094718 table:@"SpringBoard"];

      v19 = @"SBHomeScreenNagAlert";
      goto LABEL_45;
    case 17:
      v5 = [(SBOmnibusAlertItemTestRecipe *)self _mapsApp];
      v45 = SBApplicationLaunchNotifyInCallAlertItem;
      goto LABEL_37;
    case 18:
      v5 = [(SBOmnibusAlertItemTestRecipe *)self _mapsApp];
      v45 = SBApplicationLaunchNotifyAirplaneModeAlertItem;
LABEL_37:
      v51 = [[v45 alloc] initWithApplication:v5];
LABEL_38:
      v31 = v51;
      goto LABEL_61;
    case 19:
      v56 = [SBPasscodeComplianceAlertItem alloc];
      v5 = [MEMORY[0x277CCA8D8] mainBundle];
      v7 = [v5 localizedStringForKey:@"NON_COMPLIANT_PASSCODE_CONTINUE" value:&stru_283094718 table:@"SpringBoard"];
      v39 = [(SBPasscodeComplianceAlertItem *)v56 initWithTitle:@"Non-compliant passcode!" message:@"Which is bad!" continueButtonTitle:v7 cancelButtonTitle:0];
LABEL_48:
      v31 = v39;
LABEL_60:

      goto LABEL_61;
    case 20:
      v46 = [SBPasscodeComplianceAlertItem alloc];
      v5 = [MEMORY[0x277CCA8D8] mainBundle];
      v47 = [v5 localizedStringForKey:@"NON_COMPLIANT_PASSCODE_CONTINUE" value:&stru_283094718 table:@"SpringBoard"];
      v48 = [MEMORY[0x277CCA8D8] mainBundle];
      v49 = [v48 localizedStringForKey:@"NON_COMPLIANT_PASSCODE_LATER" value:&stru_283094718 table:@"SpringBoard"];
      v50 = @"Which is bad, but whatevs?";
      goto LABEL_32;
    case 21:
      v46 = [SBPasscodeComplianceAlertItem alloc];
      v5 = [MEMORY[0x277CCA8D8] mainBundle];
      v47 = [v5 localizedStringForKey:@"NON_COMPLIANT_PASSCODE_CONTINUE" value:&stru_283094718 table:@"SpringBoard"];
      v48 = [MEMORY[0x277CCA8D8] mainBundle];
      v49 = [v48 localizedStringForKey:@"PASSCODE_REMINDER_CANCEL" value:&stru_283094718 table:@"SpringBoard"];
      v50 = @"Which is bad, so cancel!";
LABEL_32:
      v31 = [(SBPasscodeComplianceAlertItem *)v46 initWithTitle:@"Non-compliant passcode!" message:v50 continueButtonTitle:v47 cancelButtonTitle:v49];

LABEL_61:
      break;
    case 22:
      v54 = [MEMORY[0x277CCA8D8] mainBundle];
      v16 = [v54 localizedStringForKey:@"REORDER_INFO_TITLE" value:&stru_283094718 table:@"SpringBoard"];

      v55 = [MEMORY[0x277CCA8D8] mainBundle];
      v18 = [v55 localizedStringForKey:@"REORDER_INFO_BODY" value:&stru_283094718 table:@"SpringBoard"];

      v19 = @"SBReorderInfoAlert";
LABEL_45:
      v29 = NSClassFromString(&v19->isa);
LABEL_46:
      v31 = [[v29 alloc] initWithTitle:v16 body:v18];

      break;
    case 23:
      v34 = objc_alloc_init(SBRestoreFailureAlertItem);
      goto LABEL_57;
    case 24:
      v10 = [SBPasscodeAlertItem alloc];
      v11 = 0;
      goto LABEL_42;
    case 25:
      v10 = [SBPasscodeAlertItem alloc];
      v11 = 0;
      goto LABEL_51;
    case 26:
      v10 = [SBPasscodeAlertItem alloc];
      v11 = 0;
      goto LABEL_54;
    case 27:
      v10 = [SBPasscodeAlertItem alloc];
      v11 = 1;
      goto LABEL_42;
    case 28:
      v10 = [SBPasscodeAlertItem alloc];
      v11 = 1;
      goto LABEL_51;
    case 29:
      v10 = [SBPasscodeAlertItem alloc];
      v11 = 1;
      goto LABEL_54;
    case 30:
      v10 = [SBPasscodeAlertItem alloc];
      v11 = 2;
LABEL_42:
      v52 = 0;
      v53 = 1;
      goto LABEL_56;
    case 31:
      v10 = [SBPasscodeAlertItem alloc];
      v11 = 2;
LABEL_51:
      v52 = 1;
      goto LABEL_55;
    case 32:
      v10 = [SBPasscodeAlertItem alloc];
      v11 = 2;
LABEL_54:
      v52 = 2;
LABEL_55:
      v53 = 0xFFFFFFFFLL;
LABEL_56:
      v34 = [(SBPasscodeAlertItem *)v10 initWithPasscodeMode:v11 unlockScreenType:v52 simplePasscodeType:v53];
      goto LABEL_57;
    case 33:
      v23 = [SBApplication32BitDeprecationAlertItem alloc];
      v24 = [(SBOmnibusAlertItemTestRecipe *)self _mapsApp];
      v25 = [(SBApplication32BitDeprecationAlertItem *)v23 initWithApplication:v24];
LABEL_17:
      v31 = v25;

      break;
    case 34:
      v12 = [SBDismissOnlyAlertItem alloc];
      v13 = @"All Done";
      v14 = @"Bye bye now.";
LABEL_40:
      v34 = [(SBDismissOnlyAlertItem *)v12 initWithTitle:v13 body:v14];
LABEL_57:
      v31 = v34;
      break;
    default:
      v31 = 0;
      break;
  }

  return v31;
}

@end