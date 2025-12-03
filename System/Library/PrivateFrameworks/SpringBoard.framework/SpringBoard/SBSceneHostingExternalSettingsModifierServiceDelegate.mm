@interface SBSceneHostingExternalSettingsModifierServiceDelegate
- (SBSceneHostingExternalSettingsModifierServiceDelegate)init;
- (id)settingsModifiersForClientProcessIdentity:(id)identity hostedBy:(id)by;
@end

@implementation SBSceneHostingExternalSettingsModifierServiceDelegate

- (SBSceneHostingExternalSettingsModifierServiceDelegate)init
{
  v6.receiver = self;
  v6.super_class = SBSceneHostingExternalSettingsModifierServiceDelegate;
  v2 = [(SBSceneHostingExternalSettingsModifierServiceDelegate *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D777C0]);
    externalSettingsModifierService = v2->_externalSettingsModifierService;
    v2->_externalSettingsModifierService = v3;

    [(UISSceneHostingExternalSettingsModifierService *)v2->_externalSettingsModifierService setDelegate:v2];
  }

  return v2;
}

- (id)settingsModifiersForClientProcessIdentity:(id)identity hostedBy:(id)by
{
  v5 = MEMORY[0x277D0AAC0];
  byCopy = by;
  identityCopy = identity;
  sharedInstance = [v5 sharedInstance];
  v9 = [byCopy pid];

  v10 = [sharedInstance processForPID:v9];

  mEMORY[0x277D0AAC0] = [MEMORY[0x277D0AAC0] sharedInstance];
  v12 = [mEMORY[0x277D0AAC0] processForIdentity:identityCopy];

  if (v10 == v12 || ![v12 isExtensionProcess])
  {
    v30 = 0;
  }

  else
  {
    sb_bundleIdentifierWithFallback = [v12 sb_bundleIdentifierWithFallback];
    v14 = [MEMORY[0x277CC1ED8] pluginKitProxyForIdentifier:sb_bundleIdentifierWithFallback];
    containingBundle = [v14 containingBundle];

    bundleType = [containingBundle bundleType];
    v17 = [bundleType isEqualToString:*MEMORY[0x277CC1E40]];

    if (v17)
    {
      bundleIdentifier = [containingBundle bundleIdentifier];
      v19 = +[SBApplicationController sharedInstance];
      v20 = [v19 applicationWithBundleIdentifier:bundleIdentifier];

      if (v20 && (v21 = [(SBApplication *)v20 _classicModeForHostingExtensionContainedInThisApplicationInUnknownHostingHierarchy], _SBApplicationClassicModeIsClassic(v21)))
      {
        mainConfiguration = [MEMORY[0x277D0AA90] mainConfiguration];
        v22 = [v20 restrictedClassicModeDisplayConfigurationForDisplayConfiguration:mainConfiguration];
        [v20 defaultLaunchingSizeForDisplayConfiguration:v22];
        v24 = v23;
        v26 = v25;
        -[SBApplication _screenTypeForClassicMode:](v20, [v20 _classicMode]);
        SBHDisplayCornerRadiusForScreenType();
        v28 = [objc_alloc(MEMORY[0x277CF0BE8]) initWithCornerRadius:v27];
        v29 = [objc_alloc(MEMORY[0x277D761D0]) initWithMainDisplayConfiguration:v22 maximumPortraitSize:v28 cornerRadiusConfiguration:{v24, v26}];
        v30 = [MEMORY[0x277CBEB98] setWithObject:v29];
      }

      else
      {
        v30 = 0;
      }
    }

    else
    {
      v30 = 0;
    }
  }

  return v30;
}

@end