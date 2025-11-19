@interface SBSceneHostingExternalSettingsModifierServiceDelegate
- (SBSceneHostingExternalSettingsModifierServiceDelegate)init;
- (id)settingsModifiersForClientProcessIdentity:(id)a3 hostedBy:(id)a4;
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

- (id)settingsModifiersForClientProcessIdentity:(id)a3 hostedBy:(id)a4
{
  v5 = MEMORY[0x277D0AAC0];
  v6 = a4;
  v7 = a3;
  v8 = [v5 sharedInstance];
  v9 = [v6 pid];

  v10 = [v8 processForPID:v9];

  v11 = [MEMORY[0x277D0AAC0] sharedInstance];
  v12 = [v11 processForIdentity:v7];

  if (v10 == v12 || ![v12 isExtensionProcess])
  {
    v30 = 0;
  }

  else
  {
    v13 = [v12 sb_bundleIdentifierWithFallback];
    v14 = [MEMORY[0x277CC1ED8] pluginKitProxyForIdentifier:v13];
    v15 = [v14 containingBundle];

    v16 = [v15 bundleType];
    v17 = [v16 isEqualToString:*MEMORY[0x277CC1E40]];

    if (v17)
    {
      v18 = [v15 bundleIdentifier];
      v19 = +[SBApplicationController sharedInstance];
      v20 = [v19 applicationWithBundleIdentifier:v18];

      if (v20 && (v21 = [(SBApplication *)v20 _classicModeForHostingExtensionContainedInThisApplicationInUnknownHostingHierarchy], _SBApplicationClassicModeIsClassic(v21)))
      {
        v32 = [MEMORY[0x277D0AA90] mainConfiguration];
        v22 = [v20 restrictedClassicModeDisplayConfigurationForDisplayConfiguration:v32];
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