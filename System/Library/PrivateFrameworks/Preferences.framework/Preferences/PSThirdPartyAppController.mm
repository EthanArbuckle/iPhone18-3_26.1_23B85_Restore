@interface PSThirdPartyAppController
- (id)_readToggleSwitchSpecifierValue:(id)a3;
- (id)_uiValueFromValue:(id)a3 specifier:(id)a4;
- (id)_valueFromUIValue:(id)a3 specifier:(id)a4;
- (id)bundle;
- (id)loadSpecifiers;
- (id)plistFileURL;
- (void)_setToggleSwitchSpecifierValue:(id)a3 specifier:(id)a4;
- (void)postThirdPartySettingDidChangeNotificationForSpecifier:(id)a3;
- (void)setPreferenceValue:(id)a3 specifier:(id)a4;
- (void)showController:(id)a3 animate:(BOOL)a4;
- (void)showPrivacyControllerForBundleID:(id)a3;
- (void)showPrivacyControllerForBundleName:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation PSThirdPartyAppController

- (id)_uiValueFromValue:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = [a4 propertyForKey:@"TrueValue"];
  v7 = MEMORY[0x1E695E4D0];
  if (!v6)
  {
    v6 = *MEMORY[0x1E695E4D0];
  }

  v8 = [v5 isEqual:v6];

  v9 = MEMORY[0x1E695E4C0];
  if (v8)
  {
    v9 = v7;
  }

  v10 = *v9;
  v11 = *v9;

  return v10;
}

- (id)_valueFromUIValue:(id)a3 specifier:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 propertyForKey:@"TrueValue"];
  v8 = [v5 propertyForKey:@"FalseValue"];

  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = *MEMORY[0x1E695E4D0];
    if (v8)
    {
      goto LABEL_3;
    }
  }

  v8 = *MEMORY[0x1E695E4C0];
LABEL_3:
  v9 = [v6 BOOLValue];

  if (v9)
  {
    v10 = v7;
  }

  else
  {
    v10 = v8;
  }

  v11 = v10;

  return v10;
}

- (id)_readToggleSwitchSpecifierValue:(id)a3
{
  v4 = a3;
  v5 = [(PSSpecifierController *)self readPreferenceValue:v4];
  if (v5)
  {
    v6 = v5;
    v7 = [v4 propertyForKey:@"negate"];
    v8 = [v7 BOOLValue];

    if (v8)
    {
      v9 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v6, "BOOLValue") ^ 1}];

      v6 = v9;
    }

    [v4 setProperty:v6 forKey:@"value"];
    goto LABEL_7;
  }

  v10 = [v4 propertyForKey:@"default"];
  if (v10)
  {
    v6 = v10;
    [(PSThirdPartyAppController *)self setPreferenceValue:v10 specifier:v4];
LABEL_7:
    v11 = [(PSThirdPartyAppController *)self _uiValueFromValue:v6 specifier:v4];
    [v4 setProperty:v11 forKey:@"value"];

    goto LABEL_8;
  }

  v11 = MEMORY[0x1E695E110];
LABEL_8:

  return v11;
}

- (void)_setToggleSwitchSpecifierValue:(id)a3 specifier:(id)a4
{
  v11 = a4;
  v6 = [(PSThirdPartyAppController *)self _valueFromUIValue:a3 specifier:v11];
  v7 = [v11 propertyForKey:@"defaults"];
  v8 = [v11 propertyForKey:@"key"];
  if (v7)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9 || v6 == 0)
  {
    NSLog(&cfstr_ErrorCouldnTWr.isa, v6, v8, v7);
  }

  else
  {
    [(PSThirdPartyAppController *)self setPreferenceValue:v6 specifier:v11];
    GSSendAppPreferencesChanged();
  }
}

- (void)showPrivacyControllerForBundleID:(id)a3
{
  v4 = a3;
  v5 = +[PSAppListController onBoardingKitBundleIDDict];
  v6 = [v4 propertyForKey:@"AppBundleID"];

  v9 = [v5 objectForKey:v6];

  if ([v9 length])
  {
    v7 = [getOBPrivacyPresenterClass_0() presenterForPrivacySplashWithIdentifier:v9];
    v8 = [(PSSpecifierController *)self viewController];
    [v7 setPresentingViewController:v8];

    [v7 present];
  }
}

- (void)showPrivacyControllerForBundleName:(id)a3
{
  v13 = a3;
  v4 = +[PSAppListController onBoardingKitBundleNameDict];
  v5 = [v13 propertyForKey:@"AppBundleID"];
  v6 = [v4 objectForKey:v5];

  if ([v6 length])
  {
    v7 = [v13 objectForKeyedSubscript:@"AppSettingsBundle"];
    v8 = [v7 bundlePath];
    v9 = [v8 stringByDeletingLastPathComponent];
    v10 = [v9 stringByAppendingPathComponent:v6];
    v11 = [getOBPrivacyPresenterClass_0() presenterForPrivacySplashWithBundleAtPath:v10];
    v12 = [(PSSpecifierController *)self viewController];
    [v11 setPresentingViewController:v12];

    [v11 present];
  }
}

- (void)showController:(id)a3 animate:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(PSSpecifierController *)self viewController];
  [v7 presentViewController:v6 animated:v4 completion:0];
}

- (void)postThirdPartySettingDidChangeNotificationForSpecifier:(id)a3
{
  v5[1] = *MEMORY[0x1E69E9840];
  v3 = [a3 propertyForKey:@"AppBundleID"];
  v4 = v3;
  if (v3)
  {
    v5[0] = v3;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
    _CFPreferencesPostValuesChangedInDomains();
  }
}

- (void)setPreferenceValue:(id)a3 specifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = PSThirdPartyAppController;
  v6 = a4;
  [(PSSpecifierController *)&v7 setPreferenceValue:a3 specifier:v6];
  [(PSThirdPartyAppController *)self postThirdPartySettingDidChangeNotificationForSpecifier:v6, v7.receiver, v7.super_class];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PSThirdPartyAppController;
  [(PSSpecifierController *)&v4 viewWillAppear:a3];
  [(PSSpecifierController *)self reloadSpecifiers];
}

- (id)loadSpecifiers
{
  v3 = [(PSSpecifierController *)self specifiers];

  if (v3)
  {
    goto LABEL_40;
  }

  v4 = [MEMORY[0x1E695DF70] array];
  v5 = [(PSSpecifierController *)self specifier];
  v6 = [v5 propertyForKey:@"id"];

  v7 = [(PSSpecifierController *)self specifier];
  v8 = [v7 propertyForKey:@"isThirdPartyDetail"];
  LODWORD(v9) = [v8 BOOLValue];

  if (v9)
  {
    v69 = 1;
  }

  else
  {
    v10 = [(PSThirdPartyAppController *)self appPolicy];

    if (!v10)
    {
      v11 = [[PSSystemPolicyForApp alloc] initWithBundleIdentifier:v6];
      [(PSThirdPartyAppController *)self setAppPolicy:v11];

      v12 = [(PSThirdPartyAppController *)self appPolicy];
      [v12 setDelegate:self];

      v13 = [(PSThirdPartyAppController *)self appPolicy];
      [(PSThirdPartyAppController *)self setSystemPolicy:v13];
    }

    v14 = [(PSThirdPartyAppController *)self systemPolicy];
    v15 = [v14 specifiers];

    v69 = [v15 count] == 0;
    [v4 addObjectsFromArray:v15];
  }

  v16 = [(PSSpecifierController *)self viewController];
  v17 = [v16 title];

  v18 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v19 = [(PSSpecifierController *)self loadSpecifiersFromPlistName:@"KeyboardExtension" target:self bundle:v18];

  v71 = v19;
  [v4 addObjectsFromArray:v19];
  v20 = [(PSSpecifierController *)self viewController];
  [v20 setTitle:v17];

  v21 = [MEMORY[0x1E695DF70] array];
  v22 = [(PSThirdPartyAppController *)self plistFileURL];
  v23 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v22];
  v73 = v6;
  v72 = v9;
  v70 = v22;
  v74 = v23;
  if (v23)
  {
    v24 = v23;
    v75 = v21;
    v25 = [v23 objectForKey:@"StringsTable"];
    v9 = [v25 stringByDeletingPathExtension];

    if (v9)
    {
      v26 = [(PSSpecifierController *)self specifier];
      [v26 setProperty:v9 forKey:@"StringsTable"];
    }

    v27 = [v24 objectForKey:@"ApplicationGroupContainerIdentifier"];
    if (v27)
    {
      v28 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:v6];
      v29 = [v28 groupContainerURLs];
      v30 = [v29 objectForKey:v27];

      if (v30)
      {
        v31 = [(PSSpecifierController *)self specifier];
        [v31 setProperty:v27 forKey:@"appGroupBundleID"];

        v32 = [(PSSpecifierController *)self specifier];
        [v32 setProperty:v27 forKey:@"containerBundleID"];
      }

      v24 = v74;
    }

    v67 = v17;
    v33 = [v24 objectForKey:@"PreferenceSpecifiers"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v34 = [v33 count];
      if (v34)
      {
        v35 = v34;
        for (i = 0; i != v35; ++i)
        {
          v37 = [v33 objectAtIndex:i];
          v38 = [(PSSpecifierController *)self specifier];
          v39 = [PSAppListController specifiersFromDictionary:v37 stringsTable:v9 parentSpecifier:v38 target:self];

          if (v39)
          {
            [v75 addObjectsFromArray:v39];
          }
        }
      }
    }

    else
    {
      NSLog(&cfstr_ErrorPreferenc.isa);
    }

    v17 = v67;
    v6 = v73;
    LODWORD(v9) = v72;
    v21 = v75;
  }

  else
  {
    NSLog(&cfstr_ErrorCouldnTLo.isa, v22);
  }

  if (!(([v21 count] == 0) | (v9 | v69) & 1))
  {
    v40 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:v6];
    v41 = [v40 localizedName];

    v42 = MEMORY[0x1E696AEC0];
    v43 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    [v43 localizedStringForKey:@"APP_SETTINGS" value:&stru_1EFE45030 table:@"PSSystemPolicy"];
    v45 = v44 = v21;
    v9 = [v42 stringWithFormat:v45, v41];

    v46 = [v44 firstObject];
    v47 = [v46 identifier];
    LOBYTE(v45) = [v47 isEqualToString:v9];

    if (v45)
    {
LABEL_31:

      LOBYTE(v9) = v72;
      v21 = v44;
      v6 = v73;
      goto LABEL_32;
    }

    v68 = v17;
    v48 = [v44 firstObject];
    if ([v48 cellType])
    {
    }

    else
    {
      v49 = [v44 firstObject];
      v50 = [v49 name];
      v51 = [v50 length];

      if (!v51)
      {
        v52 = [v44 firstObject];
        [v52 setName:v9];
        goto LABEL_30;
      }
    }

    v52 = [PSSpecifier groupSpecifierWithName:v9];
    [v4 addObject:v52];
LABEL_30:
    v17 = v68;

    goto LABEL_31;
  }

LABEL_32:
  [v4 addObjectsFromArray:v21];
  if ((v9 & 1) == 0)
  {
    v53 = [(PSThirdPartyAppController *)self driverPolicy];

    if (!v53)
    {
      v54 = [[PSDriverPolicyForApp alloc] initWithBundleIdentifier:v6];
      [(PSThirdPartyAppController *)self setDriverPolicy:v54];

      v55 = [(PSThirdPartyAppController *)self driverPolicy];
      [v55 setDelegate:self];
    }

    v56 = [(PSThirdPartyAppController *)self driverPolicy];
    v57 = [v56 specifiers];

    [v4 addObjectsFromArray:v57];
  }

  v58 = [(PSSpecifierController *)self specifier];
  if (v58)
  {
    v59 = v58;
    v60 = [(PSSpecifierController *)self specifier];
    v61 = [v60 propertyForKey:@"id"];

    if (!v61)
    {
      v62 = [(PSSpecifierController *)self specifier];
      v63 = [v62 propertyForKey:@"AppBundleID"];

      v64 = [(PSSpecifierController *)self specifier];
      [v64 setProperty:v63 forKey:@"id"];
    }
  }

  v65 = [v4 copy];
  [(PSSpecifierController *)self setSpecifiers:v65];

LABEL_40:

  return [(PSSpecifierController *)self specifiers];
}

- (id)bundle
{
  v3 = [(PSSpecifierController *)self specifier];
  v4 = [v3 propertyForKey:@"AppSettingsBundle"];

  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [v4 bundlePath];
  v7 = [v5 fileExistsAtPath:v6];

  if (v7)
  {
    v8 = v4;
  }

  else
  {
    v9 = [(PSSpecifierController *)self specifier];
    v10 = [v9 propertyForKey:@"AppBundleID"];
    v11 = [PSSystemPolicyManager thirdPartyApplicationForBundleID:v10];

    v12 = [v11 record];
    v13 = [v12 URL];
    v14 = [v13 URLByAppendingPathComponent:@"Settings.bundle"];

    if (v14)
    {
      v8 = [MEMORY[0x1E696AAE8] bundleWithURL:v14];
      v15 = [(PSSpecifierController *)self specifier];
      [v15 setProperty:v8 forKey:@"AppSettingsBundle"];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)plistFileURL
{
  v3 = [(PSSpecifierController *)self specifier];
  v4 = [v3 propertyForKey:@"File"];

  v5 = [(PSThirdPartyAppController *)self bundle];
  v6 = [v5 URLForResource:v4 withExtension:@"plist"];
  if (!v6)
  {
    NSLog(&cfstr_ErrorCanTFindP.isa, v4, v5);
  }

  return v6;
}

@end