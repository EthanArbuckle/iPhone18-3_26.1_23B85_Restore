@interface SBTestableAlertItemTestRecipe
+ (id)nameForCase:(int64_t)a3;
+ (id)testCases;
+ (id)testCasesGrouped;
- (id)_anyAppIcon;
- (id)_anySUDescriptor;
- (id)_anyUserInstalledAppIcon;
- (id)_mapsApp;
- (id)_nextAlertItemToTest;
- (id)alertForIndex:(int64_t)a3;
- (id)dataPlanAlertItemForCase:(int64_t)a3;
- (id)iconController;
- (void)_dismissCurrentItem;
- (void)handleVolumeDecrease;
- (void)handleVolumeIncrease;
@end

@implementation SBTestableAlertItemTestRecipe

+ (id)testCases
{
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:52];
  for (i = 0; i != 52; ++i)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInteger:i];
    [v2 addObject:v4];
  }

  v5 = [MEMORY[0x277CBEA60] arrayWithArray:v2];

  return v5;
}

+ (id)testCasesGrouped
{
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:52];
  for (i = 0; i != 52; ++i)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInteger:i];
    [v2 addObject:v4];
  }

  v5 = [MEMORY[0x277CBEA60] arrayWithArray:v2];

  return v5;
}

+ (id)nameForCase:(int64_t)a3
{
  if (a3 > 0x32)
  {
    return @"Not a Real Test";
  }

  else
  {
    return off_2783B4D10[a3];
  }
}

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
    v3 = [(SBTestableAlertItemTestRecipe *)self _nextAlertItemToTest];
    item = self->_item;
    self->_item = v3;

    if (![(SBAlertItem *)self->_item shouldShowInLockScreen])
    {
      v5 = +[SBLockStateAggregator sharedInstance];
      v6 = [v5 hasAnyLockState];

      if (v6)
      {
        [(SBTestableAlertItemTestRecipe *)self _dismissCurrentItem];
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
    [(SBTestableAlertItemTestRecipe *)self _dismissCurrentItem];
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
  v2 = [(SBTestableAlertItemTestRecipe *)self iconController];
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
  v2 = [(SBTestableAlertItemTestRecipe *)self iconController];
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

- (id)dataPlanAlertItemForCase:(int64_t)a3
{
  v4 = [SBApp telephonyStateProvider];
  if ([v4 isSIMPresentForSlot:1])
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  v6 = [v4 carrierBundleInfoForSlot:v5];
  v7 = [v6 carrierName];
  v8 = 0;
  if (a3 <= 27)
  {
    if (a3 > 25)
    {
      v9 = [SBDataPlanActivationAlertItem alloc];
      v10 = a3 != 26;
      v15 = 1;
    }

    else
    {
      if (a3 == 24)
      {
        v9 = [SBDataPlanActivationAlertItem alloc];
        v10 = 0;
      }

      else
      {
        if (a3 != 25)
        {
          goto LABEL_23;
        }

        v9 = [SBDataPlanActivationAlertItem alloc];
        v10 = 1;
      }

      v15 = 0;
    }

    v11 = [(SBDataPlanActivationAlertItem *)v9 initWithAccountURL:0 newAccount:v10 promptToDisable:v15];
    goto LABEL_20;
  }

  if (a3 <= 29)
  {
    if (a3 == 28)
    {
      v11 = [[SBDataPlanCompletionAlertItem alloc] initWithCarrierName:v7 newAccount:1];
    }

    else
    {
      v11 = [[SBDataPlanFailureAlertItem alloc] initWithAccountURL:0 carrierName:v7 newAccount:1];
    }

LABEL_20:
    v8 = v11;
    goto LABEL_23;
  }

  if (a3 == 30)
  {
    v16 = [SBDataPlanUsageAlertItem alloc];
    LODWORD(v17) = 0.5;
    v13 = [MEMORY[0x277CCABB0] numberWithFloat:v17];
    v14 = [(SBDataPlanUsageAlertItem *)v16 initWithAccountURL:0 usage:v13];
  }

  else
  {
    if (a3 != 31)
    {
      goto LABEL_23;
    }

    v12 = [SBDataPlanExpirationAlertItem alloc];
    v13 = [MEMORY[0x277CBEAA8] date];
    v14 = [(SBDataPlanExpirationAlertItem *)v12 initWithAccountURL:0 expirationDate:v13];
  }

  v8 = v14;

LABEL_23:

  return v8;
}

- (id)_nextAlertItemToTest
{
  v3 = [(NSArray *)self->_recipesToTest count];
  if (v3)
  {
    recipesToTest = self->_recipesToTest;
    v5 = _nextAlertItemToTest_alertItemIndex++;
    v6 = [(NSArray *)recipesToTest objectAtIndex:v5 % v3];
    v7 = [v6 integerValue];
  }

  else
  {
    v8 = _nextAlertItemToTest_alertItemIndex++;
    v7 = v8 % 52;
  }

  return [(SBTestableAlertItemTestRecipe *)self alertForIndex:v7];
}

- (id)alertForIndex:(int64_t)a3
{
  v3 = 0;
  switch(a3)
  {
    case 0:
      v37 = [SBBuddyLockScreenDismissOnlyAlertItem alloc];
      v9 = [MEMORY[0x277CCA8D8] mainBundle];
      v10 = [v9 localizedStringForKey:@"ACTIVATION_REQUIRED" value:@"Activation Required" table:@"SpringBoard"];
      v11 = [(SBDismissOnlyAlertItem *)v37 initWithTitle:v10 body:0];
      goto LABEL_28;
    case 1:
      v9 = [*MEMORY[0x277D76620] performSelector:sel__settingLanguageStringForNewLanguage];
      v28 = SBBuddyLockScreenDismissOnlyAlertItem;
      goto LABEL_26;
    case 2:
      v26 = [SBActivationFailedAlertItem alloc];
      v27 = 1;
      goto LABEL_33;
    case 3:
      v26 = [SBActivationFailedAlertItem alloc];
      v27 = 5;
LABEL_33:
      v5 = [(SBActivationFailedAlertItem *)v26 initWithFailureCount:v27 slot:1];
      goto LABEL_59;
    case 4:
      v5 = [[SBLowPowerAlertItem alloc] initWithLevel:5];
      goto LABEL_59;
    case 5:
      v5 = [[SBBluetoothAccessoryLowPowerAlertItem alloc] initWithAccessory:@" Pencil" batteryLevel:5];
      goto LABEL_59;
    case 6:
      v9 = [(SBTestableAlertItemTestRecipe *)self _mapsApp];
      v42 = SBApplicationLaunchNotifyInCallAlertItem;
      goto LABEL_41;
    case 7:
      v9 = [(SBTestableAlertItemTestRecipe *)self _mapsApp];
      v42 = SBApplicationLaunchNotifyAirplaneModeAlertItem;
LABEL_41:
      v36 = [[v42 alloc] initWithApplication:v9];
      goto LABEL_54;
    case 8:
      v12 = [SBDismissOnlyAlertItem alloc];
      v13 = @"Download Error";
      v14 = @"Some kind of download error";
      goto LABEL_14;
    case 9:
      v43 = [MEMORY[0x277CCA8D8] mainBundle];
      v32 = [v43 localizedStringForKey:@"WAITING_FOR_ACTIVATION_TITLE" value:&stru_283094718 table:@"SpringBoard"];

      v44 = [MEMORY[0x277CCA8D8] mainBundle];
      v34 = [v44 localizedStringForKey:@"WAITING_FOR_ACTIVATION_BODY" value:&stru_283094718 table:@"SpringBoard"];

      v35 = SBDismissOnlyAlertItem;
      goto LABEL_43;
    case 10:
      v23 = [MEMORY[0x277CCA8D8] mainBundle];
      v24 = v23;
      v25 = @"PHONE_ACTIVATED";
      goto LABEL_25;
    case 11:
      v23 = [MEMORY[0x277CCA8D8] mainBundle];
      v24 = v23;
      v25 = @"UNSUPPORTED_CHARGING_ACCESSORY";
LABEL_25:
      v9 = [v23 localizedStringForKey:v25 value:&stru_283094718 table:@"SpringBoard"];

      v28 = SBDismissOnlyAlertItem;
LABEL_26:
      v36 = [[v28 alloc] initWithTitle:v9 body:0];
      goto LABEL_54;
    case 12:
      v31 = [MEMORY[0x277CCA8D8] mainBundle];
      v32 = [v31 localizedStringForKey:@"CARRIER_DEBUGGING_TITLE" value:&stru_283094718 table:@"SpringBoard"];

      v33 = [MEMORY[0x277CCA8D8] mainBundle];
      v34 = [v33 localizedStringForKey:@"CARRIER_DEBUGGING_BODY" value:&stru_283094718 table:@"SpringBoard"];

      v35 = NSClassFromString(&cfstr_Sbcarrierdebug.isa);
LABEL_43:
      v3 = [[v35 alloc] initWithTitle:v32 body:v34];

      break;
    case 13:
      v16 = NSClassFromString(&cfstr_Sbreorderinfoa.isa);
      goto LABEL_35;
    case 14:
      v16 = SBRestoreFailureAlertItem;
      goto LABEL_35;
    case 15:
      v39 = [MEMORY[0x277CCA8D8] mainBundle];
      v40 = v39;
      v41 = @"RESTRICTED_URL_TITLE";
      goto LABEL_48;
    case 16:
      v39 = [MEMORY[0x277CCA8D8] mainBundle];
      v40 = v39;
      v41 = @"UNHANDLED_URL_BODY";
LABEL_48:
      v9 = [v39 localizedStringForKey:v41 value:&stru_283094718 table:@"SpringBoard"];

      v45 = MEMORY[0x277CCACA8];
      v46 = [MEMORY[0x277CCA8D8] mainBundle];
      v47 = [v46 localizedStringForKey:@"RESTRICTED_URL_BODY" value:&stru_283094718 table:@"SpringBoard"];
      v48 = [v45 stringWithFormat:v47, @"http://www.apple.com"];

      v3 = [(SBDismissOnlyAlertItem *)[SBUnsupportedURLAlertItem alloc] initWithTitle:v9 body:v48];
      goto LABEL_55;
    case 17:
      v15 = SBAppProfileExpiredAlertItem;
      goto LABEL_53;
    case 18:
      v15 = SBAppDeniedAlertItem;
      goto LABEL_53;
    case 19:
      v15 = SBAppProfileNotTrustedAlertItem;
      goto LABEL_53;
    case 20:
      v15 = SBAppFreeDevProfileNotTrustedAlertItem;
LABEL_53:
      v50 = [v15 alloc];
      v9 = [(SBTestableAlertItemTestRecipe *)self _mapsApp];
      v36 = [v50 initWithApp:v9];
LABEL_54:
      v3 = v36;
      goto LABEL_55;
    case 21:
      v16 = SBInsecureDrawingAlertItem;
LABEL_35:
      v5 = objc_alloc_init(v16);
      goto LABEL_59;
    case 22:
      v29 = [SBFairPlayFamilyLeaveAlertItem alloc];
      v9 = +[SBApplicationController sharedInstance];
      v10 = [v9 musicApplication];
      v30 = [v10 info];
      v3 = [(SBFairPlayFamilyLeaveAlertItem *)v29 initWithAppInfo:v30];

      goto LABEL_29;
    case 23:
      v22 = [SBVPPAppRequiresHealingAlertItem alloc];
      v9 = +[SBApplicationController sharedInstance];
      v10 = [v9 cameraApplication];
      v11 = [(SBVPPAppRequiresHealingAlertItem *)v22 initWithApplication:v10];
      goto LABEL_28;
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
      v5 = [(SBTestableAlertItemTestRecipe *)self dataPlanAlertItemForCase:?];
      goto LABEL_59;
    case 32:
      v8 = [SBPasscodeComplianceAlertItem alloc];
      v9 = [MEMORY[0x277CCA8D8] mainBundle];
      v10 = [v9 localizedStringForKey:@"NON_COMPLIANT_PASSCODE_CONTINUE" value:&stru_283094718 table:@"SpringBoard"];
      v11 = [(SBPasscodeComplianceAlertItem *)v8 initWithTitle:@"Non-compliant passcode!" message:@"Which is bad!" continueButtonTitle:v10 cancelButtonTitle:0];
LABEL_28:
      v3 = v11;
LABEL_29:

      goto LABEL_55;
    case 33:
      v17 = [SBPasscodeComplianceAlertItem alloc];
      v9 = [MEMORY[0x277CCA8D8] mainBundle];
      v18 = [v9 localizedStringForKey:@"NON_COMPLIANT_PASSCODE_CONTINUE" value:&stru_283094718 table:@"SpringBoard"];
      v19 = [MEMORY[0x277CCA8D8] mainBundle];
      v20 = [v19 localizedStringForKey:@"NON_COMPLIANT_PASSCODE_LATER" value:&stru_283094718 table:@"SpringBoard"];
      v21 = @"Which is bad, but whatevs?";
      goto LABEL_46;
    case 34:
      v17 = [SBPasscodeComplianceAlertItem alloc];
      v9 = [MEMORY[0x277CCA8D8] mainBundle];
      v18 = [v9 localizedStringForKey:@"NON_COMPLIANT_PASSCODE_CONTINUE" value:&stru_283094718 table:@"SpringBoard"];
      v19 = [MEMORY[0x277CCA8D8] mainBundle];
      v20 = [v19 localizedStringForKey:@"PASSCODE_REMINDER_CANCEL" value:&stru_283094718 table:@"SpringBoard"];
      v21 = @"Which is bad, so cancel!";
LABEL_46:
      v3 = [(SBPasscodeComplianceAlertItem *)v17 initWithTitle:@"Non-compliant passcode!" message:v21 continueButtonTitle:v18 cancelButtonTitle:v20];

LABEL_55:
      break;
    case 35:
      v6 = [SBPasscodeAlertItem alloc];
      v7 = 0;
      goto LABEL_57;
    case 36:
      v6 = [SBPasscodeAlertItem alloc];
      v7 = 0;
      goto LABEL_50;
    case 37:
      v6 = [SBPasscodeAlertItem alloc];
      v7 = 0;
      goto LABEL_37;
    case 38:
      v6 = [SBPasscodeAlertItem alloc];
      v7 = 1;
      goto LABEL_57;
    case 39:
      v6 = [SBPasscodeAlertItem alloc];
      v7 = 1;
      goto LABEL_50;
    case 40:
      v6 = [SBPasscodeAlertItem alloc];
      v7 = 1;
      goto LABEL_37;
    case 41:
      v6 = [SBPasscodeAlertItem alloc];
      v7 = 2;
LABEL_57:
      v38 = 0;
      v49 = 1;
      goto LABEL_58;
    case 42:
      v6 = [SBPasscodeAlertItem alloc];
      v7 = 2;
LABEL_50:
      v38 = 1;
      goto LABEL_51;
    case 43:
      v6 = [SBPasscodeAlertItem alloc];
      v7 = 2;
LABEL_37:
      v38 = 2;
LABEL_51:
      v49 = 0xFFFFFFFFLL;
LABEL_58:
      v5 = [(SBPasscodeAlertItem *)v6 initWithPasscodeMode:v7 unlockScreenType:v38 simplePasscodeType:v49];
      goto LABEL_59;
    case 51:
      v12 = [SBDismissOnlyAlertItem alloc];
      v13 = @"All Done";
      v14 = @"Bye bye now.";
LABEL_14:
      v5 = [(SBDismissOnlyAlertItem *)v12 initWithTitle:v13 body:v14];
LABEL_59:
      v3 = v5;
      break;
    default:
      break;
  }

  return v3;
}

@end