@interface PSThirdPartyAppController
- (id)_readToggleSwitchSpecifierValue:(id)value;
- (id)_uiValueFromValue:(id)value specifier:(id)specifier;
- (id)_valueFromUIValue:(id)value specifier:(id)specifier;
- (id)bundle;
- (id)loadSpecifiers;
- (id)plistFileURL;
- (void)_setToggleSwitchSpecifierValue:(id)value specifier:(id)specifier;
- (void)postThirdPartySettingDidChangeNotificationForSpecifier:(id)specifier;
- (void)setPreferenceValue:(id)value specifier:(id)specifier;
- (void)showController:(id)controller animate:(BOOL)animate;
- (void)showPrivacyControllerForBundleID:(id)d;
- (void)showPrivacyControllerForBundleName:(id)name;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PSThirdPartyAppController

- (id)_uiValueFromValue:(id)value specifier:(id)specifier
{
  valueCopy = value;
  v6 = [specifier propertyForKey:@"TrueValue"];
  v7 = MEMORY[0x1E695E4D0];
  if (!v6)
  {
    v6 = *MEMORY[0x1E695E4D0];
  }

  v8 = [valueCopy isEqual:v6];

  v9 = MEMORY[0x1E695E4C0];
  if (v8)
  {
    v9 = v7;
  }

  v10 = *v9;
  v11 = *v9;

  return v10;
}

- (id)_valueFromUIValue:(id)value specifier:(id)specifier
{
  specifierCopy = specifier;
  valueCopy = value;
  v7 = [specifierCopy propertyForKey:@"TrueValue"];
  v8 = [specifierCopy propertyForKey:@"FalseValue"];

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
  bOOLValue = [valueCopy BOOLValue];

  if (bOOLValue)
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

- (id)_readToggleSwitchSpecifierValue:(id)value
{
  valueCopy = value;
  v5 = [(PSSpecifierController *)self readPreferenceValue:valueCopy];
  if (v5)
  {
    v6 = v5;
    v7 = [valueCopy propertyForKey:@"negate"];
    bOOLValue = [v7 BOOLValue];

    if (bOOLValue)
    {
      v9 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v6, "BOOLValue") ^ 1}];

      v6 = v9;
    }

    [valueCopy setProperty:v6 forKey:@"value"];
    goto LABEL_7;
  }

  v10 = [valueCopy propertyForKey:@"default"];
  if (v10)
  {
    v6 = v10;
    [(PSThirdPartyAppController *)self setPreferenceValue:v10 specifier:valueCopy];
LABEL_7:
    v11 = [(PSThirdPartyAppController *)self _uiValueFromValue:v6 specifier:valueCopy];
    [valueCopy setProperty:v11 forKey:@"value"];

    goto LABEL_8;
  }

  v11 = MEMORY[0x1E695E110];
LABEL_8:

  return v11;
}

- (void)_setToggleSwitchSpecifierValue:(id)value specifier:(id)specifier
{
  specifierCopy = specifier;
  v6 = [(PSThirdPartyAppController *)self _valueFromUIValue:value specifier:specifierCopy];
  v7 = [specifierCopy propertyForKey:@"defaults"];
  v8 = [specifierCopy propertyForKey:@"key"];
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
    [(PSThirdPartyAppController *)self setPreferenceValue:v6 specifier:specifierCopy];
    GSSendAppPreferencesChanged();
  }
}

- (void)showPrivacyControllerForBundleID:(id)d
{
  dCopy = d;
  v5 = +[PSAppListController onBoardingKitBundleIDDict];
  v6 = [dCopy propertyForKey:@"AppBundleID"];

  v9 = [v5 objectForKey:v6];

  if ([v9 length])
  {
    v7 = [getOBPrivacyPresenterClass_0() presenterForPrivacySplashWithIdentifier:v9];
    viewController = [(PSSpecifierController *)self viewController];
    [v7 setPresentingViewController:viewController];

    [v7 present];
  }
}

- (void)showPrivacyControllerForBundleName:(id)name
{
  nameCopy = name;
  v4 = +[PSAppListController onBoardingKitBundleNameDict];
  v5 = [nameCopy propertyForKey:@"AppBundleID"];
  v6 = [v4 objectForKey:v5];

  if ([v6 length])
  {
    v7 = [nameCopy objectForKeyedSubscript:@"AppSettingsBundle"];
    bundlePath = [v7 bundlePath];
    stringByDeletingLastPathComponent = [bundlePath stringByDeletingLastPathComponent];
    v10 = [stringByDeletingLastPathComponent stringByAppendingPathComponent:v6];
    v11 = [getOBPrivacyPresenterClass_0() presenterForPrivacySplashWithBundleAtPath:v10];
    viewController = [(PSSpecifierController *)self viewController];
    [v11 setPresentingViewController:viewController];

    [v11 present];
  }
}

- (void)showController:(id)controller animate:(BOOL)animate
{
  animateCopy = animate;
  controllerCopy = controller;
  viewController = [(PSSpecifierController *)self viewController];
  [viewController presentViewController:controllerCopy animated:animateCopy completion:0];
}

- (void)postThirdPartySettingDidChangeNotificationForSpecifier:(id)specifier
{
  v5[1] = *MEMORY[0x1E69E9840];
  v3 = [specifier propertyForKey:@"AppBundleID"];
  v4 = v3;
  if (v3)
  {
    v5[0] = v3;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
    _CFPreferencesPostValuesChangedInDomains();
  }
}

- (void)setPreferenceValue:(id)value specifier:(id)specifier
{
  v7.receiver = self;
  v7.super_class = PSThirdPartyAppController;
  specifierCopy = specifier;
  [(PSSpecifierController *)&v7 setPreferenceValue:value specifier:specifierCopy];
  [(PSThirdPartyAppController *)self postThirdPartySettingDidChangeNotificationForSpecifier:specifierCopy, v7.receiver, v7.super_class];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PSThirdPartyAppController;
  [(PSSpecifierController *)&v4 viewWillAppear:appear];
  [(PSSpecifierController *)self reloadSpecifiers];
}

- (id)loadSpecifiers
{
  specifiers = [(PSSpecifierController *)self specifiers];

  if (specifiers)
  {
    goto LABEL_40;
  }

  array = [MEMORY[0x1E695DF70] array];
  specifier = [(PSSpecifierController *)self specifier];
  v6 = [specifier propertyForKey:@"id"];

  specifier2 = [(PSSpecifierController *)self specifier];
  v8 = [specifier2 propertyForKey:@"isThirdPartyDetail"];
  LODWORD(stringByDeletingPathExtension) = [v8 BOOLValue];

  if (stringByDeletingPathExtension)
  {
    v69 = 1;
  }

  else
  {
    appPolicy = [(PSThirdPartyAppController *)self appPolicy];

    if (!appPolicy)
    {
      v11 = [[PSSystemPolicyForApp alloc] initWithBundleIdentifier:v6];
      [(PSThirdPartyAppController *)self setAppPolicy:v11];

      appPolicy2 = [(PSThirdPartyAppController *)self appPolicy];
      [appPolicy2 setDelegate:self];

      appPolicy3 = [(PSThirdPartyAppController *)self appPolicy];
      [(PSThirdPartyAppController *)self setSystemPolicy:appPolicy3];
    }

    systemPolicy = [(PSThirdPartyAppController *)self systemPolicy];
    specifiers2 = [systemPolicy specifiers];

    v69 = [specifiers2 count] == 0;
    [array addObjectsFromArray:specifiers2];
  }

  viewController = [(PSSpecifierController *)self viewController];
  title = [viewController title];

  v18 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v19 = [(PSSpecifierController *)self loadSpecifiersFromPlistName:@"KeyboardExtension" target:self bundle:v18];

  v71 = v19;
  [array addObjectsFromArray:v19];
  viewController2 = [(PSSpecifierController *)self viewController];
  [viewController2 setTitle:title];

  array2 = [MEMORY[0x1E695DF70] array];
  plistFileURL = [(PSThirdPartyAppController *)self plistFileURL];
  v23 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:plistFileURL];
  v73 = v6;
  v72 = stringByDeletingPathExtension;
  v70 = plistFileURL;
  v74 = v23;
  if (v23)
  {
    v24 = v23;
    v75 = array2;
    v25 = [v23 objectForKey:@"StringsTable"];
    stringByDeletingPathExtension = [v25 stringByDeletingPathExtension];

    if (stringByDeletingPathExtension)
    {
      specifier3 = [(PSSpecifierController *)self specifier];
      [specifier3 setProperty:stringByDeletingPathExtension forKey:@"StringsTable"];
    }

    v27 = [v24 objectForKey:@"ApplicationGroupContainerIdentifier"];
    if (v27)
    {
      v28 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:v6];
      groupContainerURLs = [v28 groupContainerURLs];
      v30 = [groupContainerURLs objectForKey:v27];

      if (v30)
      {
        specifier4 = [(PSSpecifierController *)self specifier];
        [specifier4 setProperty:v27 forKey:@"appGroupBundleID"];

        specifier5 = [(PSSpecifierController *)self specifier];
        [specifier5 setProperty:v27 forKey:@"containerBundleID"];
      }

      v24 = v74;
    }

    v67 = title;
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
          specifier6 = [(PSSpecifierController *)self specifier];
          v39 = [PSAppListController specifiersFromDictionary:v37 stringsTable:stringByDeletingPathExtension parentSpecifier:specifier6 target:self];

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

    title = v67;
    v6 = v73;
    LODWORD(stringByDeletingPathExtension) = v72;
    array2 = v75;
  }

  else
  {
    NSLog(&cfstr_ErrorCouldnTLo.isa, plistFileURL);
  }

  if (!(([array2 count] == 0) | (stringByDeletingPathExtension | v69) & 1))
  {
    v40 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:v6];
    localizedName = [v40 localizedName];

    v42 = MEMORY[0x1E696AEC0];
    v43 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    [v43 localizedStringForKey:@"APP_SETTINGS" value:&stru_1EFE45030 table:@"PSSystemPolicy"];
    v45 = v44 = array2;
    stringByDeletingPathExtension = [v42 stringWithFormat:v45, localizedName];

    firstObject = [v44 firstObject];
    identifier = [firstObject identifier];
    LOBYTE(v45) = [identifier isEqualToString:stringByDeletingPathExtension];

    if (v45)
    {
LABEL_31:

      LOBYTE(stringByDeletingPathExtension) = v72;
      array2 = v44;
      v6 = v73;
      goto LABEL_32;
    }

    v68 = title;
    firstObject2 = [v44 firstObject];
    if ([firstObject2 cellType])
    {
    }

    else
    {
      firstObject3 = [v44 firstObject];
      name = [firstObject3 name];
      v51 = [name length];

      if (!v51)
      {
        firstObject4 = [v44 firstObject];
        [firstObject4 setName:stringByDeletingPathExtension];
        goto LABEL_30;
      }
    }

    firstObject4 = [PSSpecifier groupSpecifierWithName:stringByDeletingPathExtension];
    [array addObject:firstObject4];
LABEL_30:
    title = v68;

    goto LABEL_31;
  }

LABEL_32:
  [array addObjectsFromArray:array2];
  if ((stringByDeletingPathExtension & 1) == 0)
  {
    driverPolicy = [(PSThirdPartyAppController *)self driverPolicy];

    if (!driverPolicy)
    {
      v54 = [[PSDriverPolicyForApp alloc] initWithBundleIdentifier:v6];
      [(PSThirdPartyAppController *)self setDriverPolicy:v54];

      driverPolicy2 = [(PSThirdPartyAppController *)self driverPolicy];
      [driverPolicy2 setDelegate:self];
    }

    driverPolicy3 = [(PSThirdPartyAppController *)self driverPolicy];
    specifiers3 = [driverPolicy3 specifiers];

    [array addObjectsFromArray:specifiers3];
  }

  specifier7 = [(PSSpecifierController *)self specifier];
  if (specifier7)
  {
    v59 = specifier7;
    specifier8 = [(PSSpecifierController *)self specifier];
    v61 = [specifier8 propertyForKey:@"id"];

    if (!v61)
    {
      specifier9 = [(PSSpecifierController *)self specifier];
      v63 = [specifier9 propertyForKey:@"AppBundleID"];

      specifier10 = [(PSSpecifierController *)self specifier];
      [specifier10 setProperty:v63 forKey:@"id"];
    }
  }

  v65 = [array copy];
  [(PSSpecifierController *)self setSpecifiers:v65];

LABEL_40:

  return [(PSSpecifierController *)self specifiers];
}

- (id)bundle
{
  specifier = [(PSSpecifierController *)self specifier];
  v4 = [specifier propertyForKey:@"AppSettingsBundle"];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  bundlePath = [v4 bundlePath];
  v7 = [defaultManager fileExistsAtPath:bundlePath];

  if (v7)
  {
    v8 = v4;
  }

  else
  {
    specifier2 = [(PSSpecifierController *)self specifier];
    v10 = [specifier2 propertyForKey:@"AppBundleID"];
    v11 = [PSSystemPolicyManager thirdPartyApplicationForBundleID:v10];

    record = [v11 record];
    v13 = [record URL];
    v14 = [v13 URLByAppendingPathComponent:@"Settings.bundle"];

    if (v14)
    {
      v8 = [MEMORY[0x1E696AAE8] bundleWithURL:v14];
      specifier3 = [(PSSpecifierController *)self specifier];
      [specifier3 setProperty:v8 forKey:@"AppSettingsBundle"];
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
  specifier = [(PSSpecifierController *)self specifier];
  v4 = [specifier propertyForKey:@"File"];

  bundle = [(PSThirdPartyAppController *)self bundle];
  v6 = [bundle URLForResource:v4 withExtension:@"plist"];
  if (!v6)
  {
    NSLog(&cfstr_ErrorCanTFindP.isa, v4, bundle);
  }

  return v6;
}

@end