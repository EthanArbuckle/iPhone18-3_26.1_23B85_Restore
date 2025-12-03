@interface PSListController(PIN)
+ (id)st_sharedPINSpecifier;
- (BOOL)st_shouldShowPINSheetForSpecifier:()PIN;
- (uint64_t)st_shouldShowPINSheetForPINSpecifier;
- (uint64_t)st_validatePIN:()PIN forPINController:;
- (void)st_devicePINController:()PIN didAcceptChangedPIN:;
- (void)st_devicePINController:()PIN didAcceptSetPIN:;
- (void)st_devicePINControllerDidDismissPINPane:()PIN;
- (void)st_didAcceptEnteredPIN:()PIN;
- (void)st_didAcceptRemovePIN;
- (void)st_didCancelEnteringPIN;
- (void)st_showPINSheet:()PIN completion:;
- (void)st_showPINSheetWithCompletion:()PIN;
@end

@implementation PSListController(PIN)

+ (id)st_sharedPINSpecifier
{
  if (st_sharedPINSpecifier_oneTime != -1)
  {
    +[PSListController(PIN) st_sharedPINSpecifier];
  }

  v1 = st_sharedPINSpecifier_specifier;

  return v1;
}

- (uint64_t)st_shouldShowPINSheetForPINSpecifier
{
  st_sharedPINSpecifier = [MEMORY[0x277D3FA48] st_sharedPINSpecifier];
  v3 = [self st_shouldShowPINSheetForSpecifier:st_sharedPINSpecifier];

  return v3;
}

- (BOOL)st_shouldShowPINSheetForSpecifier:()PIN
{
  v4 = a3;
  v5 = v4;
  if (v4 && ([v4 objectForKeyedSubscript:*MEMORY[0x277D400B8]], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_opt_class(), NSStringFromClass(v7), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v6, "isEqualToString:", v8), v8, v6, v9))
  {
    v10 = [v5 objectForKeyedSubscript:0x287675A28];
    bOOLValue = [v10 BOOLValue];

    v12 = [v5 objectForKeyedSubscript:0x287675A48];
    bOOLValue2 = [v12 BOOLValue];

    coordinator = [self coordinator];
    v15 = coordinator;
    v16 = (bOOLValue2 & 1) == 0 && (!bOOLValue || [coordinator isPasscodeEnabled] && (objc_msgSend(v15, "hasAlreadyEnteredPINForSession") & 1) == 0);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)st_showPINSheetWithCompletion:()PIN
{
  v4 = MEMORY[0x277D3FA48];
  v5 = a3;
  st_sharedPINSpecifier = [v4 st_sharedPINSpecifier];
  [self st_showPINSheet:st_sharedPINSpecifier completion:v5];
}

- (void)st_showPINSheet:()PIN completion:
{
  v7 = a3;
  if (a4)
  {
    v6 = _Block_copy(a4);
    [v7 setObject:v6 forKeyedSubscript:0x287675888];
  }

  [self showPINSheet:v7];
}

- (uint64_t)st_validatePIN:()PIN forPINController:
{
  v6 = a3;
  v7 = a4;
  specifier = [v7 specifier];
  v9 = [specifier objectForKeyedSubscript:0x287675868];

  if (v9)
  {
    v10 = (v9)[2](v9, v7, v6);
  }

  else
  {
    coordinator = [self coordinator];
    v10 = [coordinator validatePIN:v6];
  }

  return v10;
}

- (void)st_didAcceptEnteredPIN:()PIN
{
  presentedViewController = [self presentedViewController];
  specifier = [presentedViewController specifier];

  v3 = [specifier objectForKeyedSubscript:*MEMORY[0x277D400B8]];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 isEqualToString:v5];

  if (v6)
  {
    coordinator = [self coordinator];
    [coordinator setHasAlreadyEnteredPINForSession:1];
  }
}

- (void)st_didCancelEnteringPIN
{
  [self setShowingSetupController:0];
  [self setPendingURLResourceDictionary:0];
  [self setSpecifierIDPendingPush:0];
  presentedViewController = [self presentedViewController];
  specifier = [presentedViewController specifier];

  v3 = [specifier objectForKeyedSubscript:0x287675A68];
  bOOLValue = [v3 BOOLValue];

  if (bOOLValue)
  {
    [self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)st_didAcceptRemovePIN
{
  objc_initWeak(&location, val);
  coordinator = [val coordinator];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __46__PSListController_PIN__st_didAcceptRemovePIN__block_invoke;
  v3[3] = &unk_279B7DE80;
  objc_copyWeak(&v4, &location);
  [coordinator setPIN:0 recoveryAltDSID:0 completionHandler:v3];

  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (void)st_devicePINController:()PIN didAcceptSetPIN:
{
  v6 = a3;
  v7 = a4;
  specifier = [v6 specifier];
  v9 = [specifier objectForKeyedSubscript:0x287675828];

  if (v9)
  {
    (v9)[2](v9, v6, v7);
  }

  else
  {
    v10 = objc_initWeak(&location, self);
    coordinator = [self coordinator];
    [coordinator setPIN:v7 completionHandler:&__block_literal_global_8];

    objc_destroyWeak(&location);
  }
}

- (void)st_devicePINController:()PIN didAcceptChangedPIN:
{
  v6 = a3;
  v7 = a4;
  specifier = [v6 specifier];
  v9 = [specifier objectForKeyedSubscript:0x287675848];

  if (v9)
  {
    (v9)[2](v9, v6, v7);
  }

  else
  {
    v10 = objc_initWeak(&location, self);
    coordinator = [self coordinator];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __68__PSListController_PIN__st_devicePINController_didAcceptChangedPIN___block_invoke;
    v12[3] = &unk_279B7DE80;
    objc_copyWeak(&v13, &location);
    [coordinator setPIN:v7 completionHandler:v12];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

- (void)st_devicePINControllerDidDismissPINPane:()PIN
{
  v4 = a3;
  [self setShowingSetupController:0];
  specifier = [v4 specifier];
  success = [v4 success];

  if (success)
  {
    v6 = [specifier objectForKeyedSubscript:*MEMORY[0x277D401C0]];
    unsignedIntValue = [v6 unsignedIntValue];

    if (unsignedIntValue == 3)
    {
      if (([self handlePendingURL] & 1) == 0)
      {
        if ([specifier controllerLoadAction])
        {
          [specifier performControllerLoadAction];
        }

        if ([specifier buttonAction])
        {
          [specifier performButtonAction];
        }
      }
    }

    else if (!unsignedIntValue && [specifier controllerLoadAction])
    {
      [specifier performControllerLoadAction];
    }
  }

  v8 = [specifier objectForKeyedSubscript:0x287675888];
  v9 = v8;
  if (v8)
  {
    (*(v8 + 16))(v8, success);
    [specifier removePropertyForKey:0x287675888];
  }
}

@end