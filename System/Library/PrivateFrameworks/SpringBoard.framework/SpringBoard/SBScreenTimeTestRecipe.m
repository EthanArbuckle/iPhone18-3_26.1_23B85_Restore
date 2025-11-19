@interface SBScreenTimeTestRecipe
+ (void)_setApplicationBundleIdentifiers:(id)a3 blockedForScreenTimeExpiration:(BOOL)a4;
- (id)_defaultIdentifiers;
- (void)handleVolumeDecrease;
- (void)handleVolumeIncrease;
@end

@implementation SBScreenTimeTestRecipe

- (void)handleVolumeIncrease
{
  v3 = objc_opt_class();
  v4 = [(SBScreenTimeTestRecipe *)self _defaultIdentifiers];
  [v3 _setApplicationBundleIdentifiers:v4 blockedForScreenTimeExpiration:1];
}

- (void)handleVolumeDecrease
{
  v3 = objc_opt_class();
  v4 = [(SBScreenTimeTestRecipe *)self _defaultIdentifiers];
  [v3 _setApplicationBundleIdentifiers:v4 blockedForScreenTimeExpiration:0];
}

- (id)_defaultIdentifiers
{
  v4[6] = *MEMORY[0x277D85DE8];
  v4[0] = @"com.apple.mobilecal";
  v4[1] = @"com.apple.mobilesafari";
  v4[2] = @"com.apple.calculator";
  v4[3] = @"com.apple.MobileSMS";
  v4[4] = @"com.apple.Maps";
  v4[5] = @"com.apple.facetime";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:6];

  return v2;
}

+ (void)_setApplicationBundleIdentifiers:(id)a3 blockedForScreenTimeExpiration:(BOOL)a4
{
  v23 = a4;
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v22 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:512 valueOptions:512];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        v11 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:{v10, v22}];
        v12 = [v11 bundleURL];

        if (v12)
        {
          v13 = [[_SBDMPolicyTestAppInfo alloc] initWithApplicationProxy:v11];
          [(_SBDMPolicyTestAppInfo *)v13 setTestAppBlocked:v23];
          v14 = +[SBApplicationController sharedInstance];
          v15 = [v14 applicationWithBundleIdentifier:v10];
          v16 = [v15 info];

          if (v16)
          {
            [v22 setObject:v13 forKey:v16];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v7);
  }

  v17 = v5;

  v18 = objc_opt_class();
  v19 = +[SBApplicationController sharedInstance];
  v20 = [v19 _appLibraryObserver];
  v21 = SBSafeCast(v18, v20);

  [v21 _didUpdateApplications:v22];
}

@end