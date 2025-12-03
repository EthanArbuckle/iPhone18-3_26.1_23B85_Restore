@interface SBPlatformController
+ (id)sharedInstance;
- (BOOL)isHomeGestureEnabled;
- (BOOL)isRoundCornerPad;
- (BOOL)isRoundCornerPhone;
- (BOOL)isiPadMini;
- (BOOL)prefersAlwaysOnOrientation;
- (SBPlatformController)init;
- (id)deviceClass;
- (id)hardwareModel;
- (id)productType;
- (id)systemBuildVersion;
- (id)uniqueDeviceIdentifier;
- (void)_loadDefaultIconInfo;
@end

@implementation SBPlatformController

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_8 != -1)
  {
    +[SBPlatformController sharedInstance];
  }

  v3 = sharedInstance___sharedInstance_5;

  return v3;
}

- (BOOL)isRoundCornerPhone
{
  v2 = 1;
  v3 = SBFEffectiveArtworkSubtype();
  if (v3 <= 2621)
  {
    if (v3 <= 2435)
    {
      if (v3 == 1792 || v3 == 2340)
      {
        return v2;
      }
    }

    else if (v3 == 2436 || v3 == 2532 || v3 == 2556)
    {
      return v2;
    }

    return 0;
  }

  if (v3 <= 2735)
  {
    if (v3 == 2622 || v3 == 2688)
    {
      return v2;
    }

    return 0;
  }

  if (((v3 - 2736) > 0x3C || ((1 << (v3 + 80)) & 0x1000040000000001) == 0) && v3 != 2868)
  {
    return 0;
  }

  return v2;
}

- (BOOL)isHomeGestureEnabled
{
  v2 = +[SBHomeGestureDomain rootSettings];
  isHomeGestureEnabled = [v2 isHomeGestureEnabled];

  return isHomeGestureEnabled;
}

- (BOOL)prefersAlwaysOnOrientation
{
  if (prefersAlwaysOnOrientation_onceToken != -1)
  {
    [SBPlatformController prefersAlwaysOnOrientation];
  }

  return prefersAlwaysOnOrientation_sPrefersAlwaysOnOrientation;
}

uint64_t __38__SBPlatformController_sharedInstance__block_invoke()
{
  kdebug_trace();
  v0 = objc_alloc_init(SBPlatformController);
  v1 = sharedInstance___sharedInstance_5;
  sharedInstance___sharedInstance_5 = v0;

  return kdebug_trace();
}

- (SBPlatformController)init
{
  v12.receiver = self;
  v12.super_class = SBPlatformController;
  v2 = [(SBPlatformController *)&v12 init];
  if (v2)
  {
    v3 = MGCopyAnswer();
    localizedDeviceName = v2->_localizedDeviceName;
    v2->_localizedDeviceName = v3;

    v2->_internalInstall = MGGetBoolAnswer();
    v2->_carrierInstall = MGGetBoolAnswer();
    if (_os_feature_enabled_impl() && (MGGetBoolAnswer() & 1) != 0)
    {
      mEMORY[0x277CF0CA8] = [MEMORY[0x277CF0CA8] sharedInstance];
      v2->_supportsHWButtonBezelEffects = [mEMORY[0x277CF0CA8] deviceClass] == 0;
    }

    else
    {
      v2->_supportsHWButtonBezelEffects = 0;
    }

    v6 = +[SBDefaults localDefaults];
    workspaceDefaults = [v6 workspaceDefaults];
    medusaDeviceSimulation = [workspaceDefaults medusaDeviceSimulation];

    if ((medusaDeviceSimulation - 2) < 2)
    {
      v9 = 1;
    }

    else if (medusaDeviceSimulation == 4)
    {
      v9 = 2;
    }

    else if (medusaDeviceSimulation)
    {
      v9 = 0;
    }

    else
    {
      v9 = MGGetBoolAnswer();
      if (MGGetBoolAnswer())
      {
        v9 = 2;
      }
    }

    if (SBFEffectiveDeviceClass() == 2)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v2->_medusaCapabilities = v10;
    [(SBPlatformController *)v2 _loadDefaultIconInfo];
  }

  return v2;
}

- (id)systemBuildVersion
{
  v2 = MGCopyAnswer();

  return v2;
}

- (id)hardwareModel
{
  v2 = MGCopyAnswer();

  return v2;
}

- (id)productType
{
  v2 = MGCopyAnswer();

  return v2;
}

- (id)deviceClass
{
  v2 = MGCopyAnswer();

  return v2;
}

- (id)uniqueDeviceIdentifier
{
  v2 = MGCopyAnswer();

  return v2;
}

- (BOOL)isiPadMini
{
  v2 = isiPadMini_sScreenClass;
  if (isiPadMini_sScreenClass == -1)
  {
    v2 = MGGetSInt32Answer();
    isiPadMini_sScreenClass = v2;
  }

  return v2 == 7;
}

uint64_t __50__SBPlatformController_prefersAlwaysOnOrientation__block_invoke()
{
  result = [MEMORY[0x277CC1C78] isAlwaysOn];
  prefersAlwaysOnOrientation_sPrefersAlwaysOnOrientation = result;
  return result;
}

- (BOOL)isRoundCornerPad
{
  if (SBFEffectiveHomeButtonType() != 2)
  {
    return 0;
  }

  v2 = 1;
  v3 = SBFEffectiveArtworkSubtype();
  if (v3 > 2731)
  {
    if (v3 == 2732 || v3 == 2752)
    {
      return v2;
    }

    return 0;
  }

  if (((v3 - 2360) > 0x3C || ((1 << (v3 - 56)) & 0x1000000010000001) == 0) && v3 != 2266)
  {
    return 0;
  }

  return v2;
}

- (void)_loadDefaultIconInfo
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:a3 file:@"SBPlatformController.m" lineNumber:232 description:{@"already loaded defaultIconStateDisplayIdentifiers : %@", *self}];
}

@end