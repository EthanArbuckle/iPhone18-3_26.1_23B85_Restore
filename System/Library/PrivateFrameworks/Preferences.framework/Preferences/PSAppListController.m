@interface PSAppListController
+ (BOOL)canUseOnBoardingKitFOrPrivacyDisplayForBundleName:(id)a3;
+ (BOOL)canUseOnBoardingKitForPrivacyDisplayForBundleID:(id)a3;
+ (id)_typeErrorStringForKeyWithName:(id)a3 expectedType:(Class)a4 actualType:(Class)a5;
+ (id)allowedPrivacyBundlesForID;
+ (id)allowedPrivacyBundlesForName;
+ (id)childPaneSpecifierFromDictionary:(id)a3 stringsTable:(id)a4 parentSpecifier:(id)a5 target:(id)a6;
+ (id)groupSpecifierFromDictionary:(id)a3 stringsTable:(id)a4 parentSpecifier:(id)a5 target:(id)a6;
+ (id)localizedTitlesFromUnlocalizedTitles:(id)a3 stringsTable:(id)a4 parentSpecifier:(id)a5;
+ (id)multiValueSpecifierFromDictionary:(id)a3 stringsTable:(id)a4 parentSpecifier:(id)a5 target:(id)a6;
+ (id)onBoardingKitBundleIDDict;
+ (id)onBoardingKitBundleNameDict;
+ (id)radioGroupSpecifiersFromDictionary:(id)a3 stringsTable:(id)a4 parentSpecifier:(id)a5 target:(id)a6;
+ (id)sliderSpecifierFromDictionary:(id)a3 stringsTable:(id)a4 parentSpecifier:(id)a5 target:(id)a6;
+ (id)specifiersFromDictionary:(id)a3 stringsTable:(id)a4 parentSpecifier:(id)a5 target:(id)a6;
+ (id)textFieldSpecifierFromDictionary:(id)a3 stringsTable:(id)a4 parentSpecifier:(id)a5 target:(id)a6;
+ (id)titleValueSpecifierFromDictionary:(id)a3 stringsTable:(id)a4 parentSpecifier:(id)a5 target:(id)a6;
+ (id)toggleSwitchSpecifierFromDictionary:(id)a3 stringsTable:(id)a4 parentSpecifier:(id)a5 target:(id)a6;
- (id)_readToggleSwitchSpecifierValue:(id)a3;
- (id)_uiValueFromValue:(id)a3 specifier:(id)a4;
- (id)_valueFromUIValue:(id)a3 specifier:(id)a4;
- (id)bundle;
- (id)specifiers;
- (void)_setToggleSwitchSpecifierValue:(id)a3 specifier:(id)a4;
- (void)postThirdPartySettingDidChangeNotificationForSpecifier:(id)a3;
- (void)setPreferenceValue:(id)a3 specifier:(id)a4;
- (void)showPrivacyControllerForBundleID:(id)a3;
- (void)showPrivacyControllerForBundleName:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation PSAppListController

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
  v5 = [(PSViewController *)self readPreferenceValue:v4];
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
    [(PSAppListController *)self setPreferenceValue:v10 specifier:v4];
LABEL_7:
    v11 = [(PSAppListController *)self _uiValueFromValue:v6 specifier:v4];
    [v4 setProperty:v11 forKey:@"value"];

    goto LABEL_8;
  }

  v11 = 0;
LABEL_8:

  return v11;
}

- (void)_setToggleSwitchSpecifierValue:(id)a3 specifier:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [(PSAppListController *)self _valueFromUIValue:v12 specifier:v6];
  v8 = [v6 propertyForKey:@"defaults"];
  v9 = [v6 propertyForKey:@"key"];
  if (v8)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10 || v7 == 0)
  {
    NSLog(&cfstr_ErrorCouldnTWr.isa, v7, v9, v8);
  }

  else
  {
    [(PSAppListController *)self setPreferenceValue:v12 specifier:v6];
    GSSendAppPreferencesChanged();
  }
}

- (void)showPrivacyControllerForBundleID:(id)a3
{
  v4 = a3;
  v5 = +[PSAppListController onBoardingKitBundleIDDict];
  v6 = [v4 propertyForKey:@"AppBundleID"];

  v8 = [v5 objectForKey:v6];

  if ([v8 length])
  {
    v7 = [getOBPrivacyPresenterClass() presenterForPrivacySplashWithIdentifier:v8];
    [v7 setPresentingViewController:self];
    [v7 present];
  }
}

- (void)showPrivacyControllerForBundleName:(id)a3
{
  v12 = a3;
  v4 = +[PSAppListController onBoardingKitBundleNameDict];
  v5 = [v12 propertyForKey:@"AppBundleID"];
  v6 = [v4 objectForKey:v5];

  if ([v6 length])
  {
    v7 = [v12 objectForKeyedSubscript:@"AppSettingsBundle"];
    v8 = [v7 bundlePath];
    v9 = [v8 stringByDeletingLastPathComponent];
    v10 = [v9 stringByAppendingPathComponent:v6];
    v11 = [getOBPrivacyPresenterClass() presenterForPrivacySplashWithBundleAtPath:v10];
    [v11 setPresentingViewController:self];
    [v11 present];
  }
}

+ (id)allowedPrivacyBundlesForID
{
  if (allowedPrivacyBundlesForID_onceToken != -1)
  {
    +[PSAppListController allowedPrivacyBundlesForID];
  }

  v3 = allowedPrivacyBundlesForID_allowedPrivacyBundlesForID;

  return v3;
}

void __49__PSAppListController_allowedPrivacyBundlesForID__block_invoke()
{
  v2 = +[PSAppListController onBoardingKitBundleIDDict];
  v0 = [v2 allKeys];
  v1 = allowedPrivacyBundlesForID_allowedPrivacyBundlesForID;
  allowedPrivacyBundlesForID_allowedPrivacyBundlesForID = v0;
}

+ (id)allowedPrivacyBundlesForName
{
  if (allowedPrivacyBundlesForName_onceToken != -1)
  {
    +[PSAppListController allowedPrivacyBundlesForName];
  }

  v3 = allowedPrivacyBundlesForName_allowedPrivacyBundlesForName;

  return v3;
}

void __51__PSAppListController_allowedPrivacyBundlesForName__block_invoke()
{
  v2 = +[PSAppListController onBoardingKitBundleNameDict];
  v0 = [v2 allKeys];
  v1 = allowedPrivacyBundlesForName_allowedPrivacyBundlesForName;
  allowedPrivacyBundlesForName_allowedPrivacyBundlesForName = v0;
}

+ (id)onBoardingKitBundleIDDict
{
  if (onBoardingKitBundleIDDict_onceToken != -1)
  {
    +[PSAppListController onBoardingKitBundleIDDict];
  }

  v3 = onBoardingKitBundleIDDict_dict;

  return v3;
}

void __48__PSAppListController_onBoardingKitBundleIDDict__block_invoke()
{
  v0 = onBoardingKitBundleIDDict_dict;
  onBoardingKitBundleIDDict_dict = MEMORY[0x1E695E0F8];
}

+ (id)onBoardingKitBundleNameDict
{
  if (onBoardingKitBundleNameDict_onceToken != -1)
  {
    +[PSAppListController onBoardingKitBundleNameDict];
  }

  v3 = onBoardingKitBundleNameDict_dict;

  return v3;
}

void __50__PSAppListController_onBoardingKitBundleNameDict__block_invoke()
{
  v0 = onBoardingKitBundleNameDict_dict;
  onBoardingKitBundleNameDict_dict = &unk_1EFE65990;
}

+ (BOOL)canUseOnBoardingKitForPrivacyDisplayForBundleID:(id)a3
{
  v3 = a3;
  v4 = +[PSAppListController allowedPrivacyBundlesForID];
  v5 = [v4 containsObject:v3];

  return v5;
}

+ (BOOL)canUseOnBoardingKitFOrPrivacyDisplayForBundleName:(id)a3
{
  v3 = a3;
  v4 = +[PSAppListController allowedPrivacyBundlesForName];
  v5 = [v4 containsObject:v3];

  return v5;
}

+ (id)localizedTitlesFromUnlocalizedTitles:(id)a3 stringsTable:(id)a4 parentSpecifier:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 count];
  v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:v10];
  if (v10)
  {
    for (i = 0; i != v10; ++i)
    {
      v13 = [v9 propertyForKey:@"AppSettingsBundle"];
      v14 = [v7 objectAtIndex:i];
      v15 = [v13 localizedStringForKey:v14 value:&stru_1EFE45030 table:v8];
      [v11 addObject:v15];
    }
  }

  return v11;
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
  v7.super_class = PSAppListController;
  v6 = a4;
  [(PSViewController *)&v7 setPreferenceValue:a3 specifier:v6];
  [(PSAppListController *)self postThirdPartySettingDidChangeNotificationForSpecifier:v6, v7.receiver, v7.super_class];
}

+ (id)groupSpecifierFromDictionary:(id)a3 stringsTable:(id)a4 parentSpecifier:(id)a5 target:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  objc_opt_class();
  v13 = [v12 objectForKeyedSubscript:@"Title"];
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  objc_opt_class();
  v16 = [v12 objectForKeyedSubscript:@"FooterText"];

  if (objc_opt_isKindOfClass())
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  v19 = [v10 propertyForKey:@"AppSettingsBundle"];
  v20 = [v19 localizedStringForKey:v15 value:&stru_1EFE45030 table:v11];

  v21 = [v10 propertyForKey:@"AppSettingsBundle"];

  v22 = [v21 localizedStringForKey:v18 value:&stru_1EFE45030 table:v11];

  v23 = [PSSpecifier preferenceSpecifierNamed:v20 target:v9 set:0 get:0 detail:0 cell:0 edit:0];

  [v23 setProperty:v22 forKey:@"footerText"];
  v24 = [v23 identifier];
  v25 = [v24 length];

  if (!v25)
  {
    [v23 setIdentifier:v15];
  }

  v26 = [v23 identifier];
  v27 = [v26 length];

  if (!v27)
  {
    [v23 setIdentifier:v18];
  }

  v28 = [v23 identifier];
  v29 = [v28 length];

  if (!v29)
  {
    v30 = [MEMORY[0x1E696AFB0] UUID];
    v31 = [v30 UUIDString];
    [v23 setIdentifier:v31];
  }

  return v23;
}

+ (id)radioGroupSpecifiersFromDictionary:(id)a3 stringsTable:(id)a4 parentSpecifier:(id)a5 target:(id)a6
{
  v73 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v57 = a4;
  v10 = a5;
  v60 = a6;
  objc_opt_class();
  v11 = [v10 objectForKeyedSubscript:@"AppBundleID"];
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  objc_opt_class();
  v14 = [v9 objectForKeyedSubscript:@"Key"];
  if (objc_opt_isKindOfClass())
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  v62 = [v9 objectForKey:@"DefaultValue"];
  objc_opt_class();
  v17 = [v9 objectForKeyedSubscript:@"Values"];
  if (objc_opt_isKindOfClass())
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  objc_opt_class();
  v20 = [v9 objectForKeyedSubscript:@"Titles"];
  if (objc_opt_isKindOfClass())
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  v22 = v21;

  objc_opt_class();
  v23 = [v9 objectForKeyedSubscript:@"DisplaySortedByTitle"];
  if (objc_opt_isKindOfClass())
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  v25 = v24;

  v26 = [v25 BOOLValue];
  v56 = v13;
  v27 = v13;
  v28 = v16;
  v61 = v10;
  if (-[__CFString length](v27, "length") && [v16 length] && v62 && v19 && v22 && objc_msgSend(v19, "count") && (v29 = objc_msgSend(v19, "count"), v29 == objc_msgSend(v22, "count")))
  {
    v30 = v57;
    v31 = [a1 groupSpecifierFromDictionary:v9 stringsTable:v57 parentSpecifier:v10 target:v60];
    v32 = [v61 propertyForKey:@"AppBundleID"];
    v33 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v31 setProperty:v33 forKey:@"isRadioGroup"];

    [v31 setProperty:v32 forKey:@"defaults"];
    [v31 setProperty:v28 forKey:@"key"];
    [v31 setProperty:v62 forKey:@"default"];
    [v31 setProperty:v32 forKey:@"AppBundleID"];
    [v31 setProperty:v32 forKey:@"containerBundleID"];
    v34 = [a1 localizedTitlesFromUnlocalizedTitles:v22 stringsTable:v57 parentSpecifier:v61];
    [v31 setValues:v19 titles:v34 shortTitles:0 usingLocalizedTitleSorting:v26];
    v35 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v19, "count") + 1}];
    [v35 addObject:v31];
    [PSRootController readPreferenceValue:v31];
    v36 = v59 = v28;
    v37 = [v31 values];
    v63[0] = MEMORY[0x1E69E9820];
    v63[1] = 3221225472;
    v63[2] = __94__PSAppListController_radioGroupSpecifiersFromDictionary_stringsTable_parentSpecifier_target___block_invoke;
    v63[3] = &unk_1E71DBDB8;
    v64 = v31;
    v65 = v36;
    v38 = v35;
    v66 = v38;
    v39 = v31;
    v40 = v36;
    [v37 enumerateObjectsUsingBlock:v63];

    v41 = v61;
    v28 = v59;
    v42 = v56;
  }

  else
  {
    v32 = [MEMORY[0x1E696AD60] string];
    v43 = objc_opt_class();
    v44 = [a1 _typeErrorStringForKeyWithName:@"Key" expectedType:v43 actualType:objc_opt_class()];
    v45 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v16, "length")}];
    [v32 appendFormat:@"\n\t%@ String length is %@ (must be greater than 0).", v44, v45];

    v46 = objc_opt_class();
    v47 = [a1 _typeErrorStringForKeyWithName:@"Values" expectedType:v46 actualType:objc_opt_class()];
    v48 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v19, "count")}];
    [v32 appendFormat:@"\n\t%@ Number of items is %@ (must be greater than 0).", v47, v48];

    v49 = objc_opt_class();
    v50 = [a1 _typeErrorStringForKeyWithName:@"Titles" expectedType:v49 actualType:objc_opt_class()];
    v51 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v22, "count")}];
    [v32 appendFormat:@"\n\t%@ Number of items is %@ (must be greater than 0).", v50, v51];

    v34 = PKLogForCategory(2);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v53 = objc_opt_class();
      v54 = NSStringFromClass(v53);
      v55 = @"unknown";
      *buf = 138543874;
      v42 = v56;
      v68 = v54;
      if (v56)
      {
        v55 = v56;
      }

      v69 = 2114;
      v70 = v55;
      v71 = 2114;
      v72 = v32;
      _os_log_error_impl(&dword_18B008000, v34, OS_LOG_TYPE_ERROR, "%{public}@: Could not create radio group specifiers for application '%{public}@' due to invalid input. %{public}@", buf, 0x20u);

      v38 = 0;
      v30 = v57;
    }

    else
    {
      v38 = 0;
      v42 = v56;
      v30 = v57;
    }

    v41 = v61;
  }

  return v38;
}

void __94__PSAppListController_radioGroupSpecifiersFromDictionary_stringsTable_parentSpecifier_target___block_invoke(id *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 titleDictionary];
  v6 = [v5 objectForKey:v4];
  v8 = [PSSpecifier preferenceSpecifierNamed:v6 target:0 set:0 get:0 detail:0 cell:3 edit:0];

  [v8 setProperty:v4 forKey:@"value"];
  v7 = [a1[5] isEqual:v4];

  if (v7)
  {
    [a1[4] setProperty:v8 forKey:@"radioGroupCheckedSpecifier"];
  }

  [a1[6] addObject:v8];
}

+ (id)textFieldSpecifierFromDictionary:(id)a3 stringsTable:(id)a4 parentSpecifier:(id)a5 target:(id)a6
{
  v67 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v60 = a6;
  objc_opt_class();
  v13 = [v10 objectForKeyedSubscript:@"Title"];
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v59 = v14;

  v15 = [v12 propertyForKey:@"AppBundleID"];
  objc_opt_class();
  v16 = [v10 objectForKeyedSubscript:@"Key"];
  if (objc_opt_isKindOfClass())
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  v19 = [v10 objectForKey:@"DefaultValue"];
  if (!v19)
  {
    v19 = [MEMORY[0x1E696AEC0] string];
  }

  v57 = v18;
  v58 = v15;
  v56 = v19;
  if (-[__CFString length](v15, "length") && [v18 length] && v19)
  {
    objc_opt_class();
    v20 = [v10 objectForKeyedSubscript:@"IsSecure"];
    if (objc_opt_isKindOfClass())
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    v22 = v21;

    v23 = [v22 BOOLValue];
    if (v23)
    {
      v24 = 12;
    }

    else
    {
      v24 = 8;
    }

    v54 = v12;
    v25 = [v12 propertyForKey:@"AppSettingsBundle"];
    v26 = v11;
    v27 = v25;
    v55 = v26;
    v28 = [v25 localizedStringForKey:v59 value:&stru_1EFE45030 table:?];
    v29 = [PSTextFieldSpecifier preferenceSpecifierNamed:v28 target:v60 set:sel_setPreferenceValue_specifier_ get:sel_readPreferenceValue_ detail:0 cell:v24 edit:0];

    [v29 setProperty:v15 forKey:@"defaults"];
    [v29 setProperty:v18 forKey:@"key"];
    [v29 setProperty:v19 forKey:@"default"];
    objc_opt_class();
    v30 = [v10 objectForKeyedSubscript:@"KeyboardType"];
    if (objc_opt_isKindOfClass())
    {
      v31 = v30;
    }

    else
    {
      v31 = 0;
    }

    v32 = v31;

    if (v32)
    {
      if ([v32 isEqualToString:@"Alphabet"])
      {
        v33 = 0;
      }

      else if ([v32 isEqualToString:@"NumbersAndPunctuation"])
      {
        v33 = 2;
      }

      else if ([v32 isEqualToString:@"NumberPad"])
      {
        v33 = 11;
      }

      else if ([v32 isEqualToString:@"URL"])
      {
        v33 = 3;
      }

      else
      {
        if (![v32 isEqualToString:@"EmailAddress"])
        {
          goto LABEL_38;
        }

        v33 = 7;
      }

      v29[9] = v33;
    }

LABEL_38:
    objc_opt_class();
    v45 = [v10 objectForKeyedSubscript:@"AutocapitalizationType"];
    if (objc_opt_isKindOfClass())
    {
      v46 = v45;
    }

    else
    {
      v46 = 0;
    }

    v47 = v46;

    if (v47)
    {
      if ([v47 isEqualToString:@"None"])
      {
        v48 = 0;
      }

      else if ([v47 isEqualToString:@"Sentences"])
      {
        v48 = 2;
      }

      else if ([v47 isEqualToString:@"Words"])
      {
        v48 = 1;
      }

      else
      {
        if (![v47 isEqualToString:@"AllCharacters"])
        {
          goto LABEL_51;
        }

        v48 = 3;
      }

      v29[10] = v48;
    }

LABEL_51:
    v35 = v59;
    v34 = v60;
    objc_opt_class();
    v49 = [v10 objectForKeyedSubscript:@"AutocorrectionType"];
    if (objc_opt_isKindOfClass())
    {
      v50 = v49;
    }

    else
    {
      v50 = 0;
    }

    v51 = v50;

    v36 = v54;
    v11 = v55;
    if (!v51)
    {
      goto LABEL_62;
    }

    if ([v51 isEqualToString:@"Default"])
    {
      v52 = 0;
    }

    else if ([v51 isEqualToString:@"No"])
    {
      v52 = 1;
    }

    else
    {
      if (![v51 isEqualToString:@"Yes"])
      {
LABEL_62:

        goto LABEL_63;
      }

      v52 = 2;
    }

    v29[11] = v52;
    goto LABEL_62;
  }

  v35 = v59;
  v34 = v60;
  v36 = v12;
  v37 = [MEMORY[0x1E696AD60] string];
  v38 = objc_opt_class();
  v39 = [a1 _typeErrorStringForKeyWithName:@"Key" expectedType:v38 actualType:objc_opt_class()];
  v40 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v18, "length")}];
  [v37 appendFormat:@"\n\t%@ String length is %@ (must be greater than 0).", v39, v40];

  v41 = PKLogForCategory(2);
  if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
  {
    v42 = objc_opt_class();
    v43 = NSStringFromClass(v42);
    v44 = @"unknown";
    *buf = 138543874;
    v62 = v43;
    if (v58)
    {
      v44 = v58;
    }

    v63 = 2114;
    v64 = v44;
    v65 = 2114;
    v66 = v37;
    _os_log_error_impl(&dword_18B008000, v41, OS_LOG_TYPE_ERROR, "%{public}@: Could not create text-field specifier for application '%{public}@' due to invalid input. %{public}@", buf, 0x20u);
  }

  v29 = 0;
LABEL_63:

  return v29;
}

+ (id)toggleSwitchSpecifierFromDictionary:(id)a3 stringsTable:(id)a4 parentSpecifier:(id)a5 target:(id)a6
{
  v52 = *MEMORY[0x1E69E9840];
  v45 = a4;
  v10 = a5;
  v43 = a6;
  v11 = a3;
  objc_opt_class();
  v12 = [v11 objectForKeyedSubscript:@"Title"];
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  v15 = [v10 propertyForKey:@"AppBundleID"];
  objc_opt_class();
  v16 = [v11 objectForKeyedSubscript:@"Key"];
  if (objc_opt_isKindOfClass())
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  v19 = [v11 objectForKey:@"DefaultValue"];
  v42 = [v11 objectForKey:@"TrueValue"];
  v41 = [v11 objectForKey:@"FalseValue"];

  v44 = v10;
  if ([v14 length] && -[__CFString length](v15, "length") && objc_msgSend(v18, "length") && v19)
  {
    v20 = [v10 propertyForKey:@"AppSettingsBundle"];
    v21 = v45;
    v22 = [v20 localizedStringForKey:v14 value:&stru_1EFE45030 table:v45];
    v23 = v43;
    v24 = [PSSpecifier preferenceSpecifierNamed:v22 target:v43 set:sel__setToggleSwitchSpecifierValue_specifier_ get:sel__readToggleSwitchSpecifierValue_ detail:0 cell:6 edit:0];

    v25 = v15;
    [v24 setProperty:v15 forKey:@"defaults"];
    [v24 setProperty:v18 forKey:@"key"];
    [v24 setProperty:v19 forKey:@"default"];
    v26 = v42;
    if (v42)
    {
      [v24 setProperty:v42 forKey:@"TrueValue"];
    }

    v27 = v41;
    if (v41)
    {
      [v24 setProperty:v41 forKey:@"FalseValue"];
    }

    v28 = v44;
  }

  else
  {
    v29 = [MEMORY[0x1E696AD60] string];
    v30 = objc_opt_class();
    v31 = [a1 _typeErrorStringForKeyWithName:@"Key" expectedType:v30 actualType:objc_opt_class()];
    v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v18, "length")}];
    [v29 appendFormat:@"\n\t%@ String length is %@ (must be greater than 0).", v31, v32];

    v33 = objc_opt_class();
    v34 = [a1 _typeErrorStringForKeyWithName:@"Title" expectedType:v33 actualType:objc_opt_class()];
    v35 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v14, "length")}];
    [v29 appendFormat:@"\n\t%@ String length is %@ (must be greater than 0).", v34, v35];

    if (!v19)
    {
      [v29 appendString:@"\n\t DefaultValue is missing (must be set)."];
    }

    v36 = PKLogForCategory(2);
    v21 = v45;
    v25 = v15;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v38 = objc_opt_class();
      v39 = NSStringFromClass(v38);
      v40 = @"unknown";
      *buf = 138543874;
      v47 = v39;
      if (v15)
      {
        v40 = v15;
      }

      v48 = 2114;
      v49 = v40;
      v50 = 2114;
      v51 = v29;
      _os_log_error_impl(&dword_18B008000, v36, OS_LOG_TYPE_ERROR, "%{public}@: Could not create toggle switch specifier for application '%{public}@' due to invalid input. %{public}@", buf, 0x20u);
    }

    v24 = 0;
    v23 = v43;
    v28 = v44;
    v27 = v41;
    v26 = v42;
  }

  return v24;
}

+ (id)sliderSpecifierFromDictionary:(id)a3 stringsTable:(id)a4 parentSpecifier:(id)a5 target:(id)a6
{
  v68 = *MEMORY[0x1E69E9840];
  v59 = a6;
  v8 = a5;
  v9 = a3;
  v58 = [v8 propertyForKey:@"AppSettingsBundle"];
  v10 = [v8 propertyForKey:@"AppBundleID"];

  objc_opt_class();
  v11 = [v9 objectForKeyedSubscript:@"Key"];
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  objc_opt_class();
  v14 = [v9 objectForKeyedSubscript:@"DefaultValue"];
  if (objc_opt_isKindOfClass())
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v61 = v15;

  objc_opt_class();
  v16 = [v9 objectForKeyedSubscript:@"MinimumValue"];
  if (objc_opt_isKindOfClass())
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  objc_opt_class();
  v19 = [v9 objectForKeyedSubscript:@"MaximumValue"];
  if (objc_opt_isKindOfClass())
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;

  objc_opt_class();
  v22 = [v9 objectForKeyedSubscript:@"MinimumValueImage"];
  if (objc_opt_isKindOfClass())
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  v57 = v23;

  objc_opt_class();
  v24 = [v9 objectForKeyedSubscript:@"MaximumValueImage"];

  if (objc_opt_isKindOfClass())
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  v26 = v25;

  v60 = v10;
  v27 = v10;
  v28 = v13;
  if ([v27 length] && objc_msgSend(v13, "length") && v61 && v18 && v21)
  {
    v29 = [PSSpecifier preferenceSpecifierNamed:0 target:v59 set:sel_setPreferenceValue_specifier_ get:sel_readPreferenceValue_ detail:0 cell:5 edit:0];
    [v29 setProperty:v60 forKey:@"defaults"];
    [v29 setProperty:v13 forKey:@"key"];
    [v29 setProperty:v61 forKey:@"default"];
    [v29 setProperty:v18 forKey:@"min"];
    [v29 setProperty:v21 forKey:@"max"];
    v30 = v57;
    if (v57)
    {
      v31 = MEMORY[0x1E69DCAB8];
      v32 = [MEMORY[0x1E69DCEB0] mainScreen];
      v33 = [v32 traitCollection];
      v34 = [v31 imageNamed:v57 inBundle:v58 compatibleWithTraitCollection:v33];

      if (v34)
      {
        [v29 setProperty:v34 forKey:@"leftImage"];
      }

      v28 = v13;
    }

    if (v26)
    {
      v35 = v28;
      v36 = MEMORY[0x1E69DCAB8];
      v37 = [MEMORY[0x1E69DCEB0] mainScreen];
      v38 = [v37 traitCollection];
      v39 = v58;
      v40 = [v36 imageNamed:v26 inBundle:v58 compatibleWithTraitCollection:v38];

      if (v40)
      {
        [v29 setProperty:v40 forKey:@"rightImage"];
      }

      v28 = v35;
    }

    else
    {
      v39 = v58;
    }
  }

  else
  {
    v41 = [MEMORY[0x1E696AD60] string];
    v42 = objc_opt_class();
    v43 = [a1 _typeErrorStringForKeyWithName:@"Key" expectedType:v42 actualType:objc_opt_class()];
    v44 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v13, "length")}];
    [v41 appendFormat:@"\n\t%@ String length is %@ (must be greater than 0).", v43, v44];

    v45 = objc_opt_class();
    v46 = [a1 _typeErrorStringForKeyWithName:@"DefaultValue" expectedType:v45 actualType:objc_opt_class()];
    [v41 appendFormat:@"\n\t%@", v46];

    v47 = objc_opt_class();
    v48 = [a1 _typeErrorStringForKeyWithName:@"MinimumValue" expectedType:v47 actualType:objc_opt_class()];
    [v41 appendFormat:@"\n\t%@", v48];

    v49 = objc_opt_class();
    v50 = [a1 _typeErrorStringForKeyWithName:@"MaximumValue" expectedType:v49 actualType:objc_opt_class()];
    [v41 appendFormat:@"\n\t%@", v50];

    v51 = PKLogForCategory(2);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      v53 = objc_opt_class();
      v54 = NSStringFromClass(v53);
      v55 = @"unknown";
      *buf = 138543874;
      v63 = v54;
      if (v60)
      {
        v55 = v60;
      }

      v64 = 2114;
      v65 = v55;
      v66 = 2114;
      v67 = v41;
      _os_log_error_impl(&dword_18B008000, v51, OS_LOG_TYPE_ERROR, "%{public}@: Could not create slider specifier for application '%{public}@' due to invalid input. %{public}@", buf, 0x20u);
    }

    v29 = 0;
    v30 = v57;
    v39 = v58;
  }

  return v29;
}

+ (id)titleValueSpecifierFromDictionary:(id)a3 stringsTable:(id)a4 parentSpecifier:(id)a5 target:(id)a6
{
  v65 = *MEMORY[0x1E69E9840];
  v56 = a4;
  v9 = a5;
  v57 = a6;
  v10 = a3;
  objc_opt_class();
  v11 = [v10 objectForKeyedSubscript:@"Title"];
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  v55 = v9;
  v14 = [v9 propertyForKey:@"AppBundleID"];
  objc_opt_class();
  v15 = [v10 objectForKeyedSubscript:@"Key"];
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  v18 = [v10 objectForKey:@"DefaultValue"];
  objc_opt_class();
  v19 = [v10 objectForKeyedSubscript:@"Values"];
  if (objc_opt_isKindOfClass())
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;

  objc_opt_class();
  v22 = [v10 objectForKeyedSubscript:@"Titles"];

  if (objc_opt_isKindOfClass())
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  v24 = v23;

  v58 = v14;
  if (-[__CFString length](v14, "length") && [v17 length] && v18)
  {
    v53 = v24;
    v25 = v55;
    v26 = [v55 propertyForKey:@"AppSettingsBundle"];
    v27 = v56;
    [v26 localizedStringForKey:v13 value:&stru_1EFE45030 table:v56];
    v28 = v21;
    v30 = v29 = v18;
    v31 = v57;
    v32 = [PSSpecifier preferenceSpecifierNamed:v30 target:v57 set:0 get:sel_readPreferenceValue_ detail:0 cell:4 edit:0];

    v18 = v29;
    v21 = v28;

    [v32 setProperty:v58 forKey:@"defaults"];
    [v32 setProperty:v17 forKey:@"key"];
    [v32 setProperty:v18 forKey:@"default"];
    if (v28)
    {
      v24 = v53;
      if (v53 && [v21 count])
      {
        v33 = [v21 count];
        if (v33 == [v53 count])
        {
          v34 = [a1 localizedTitlesFromUnlocalizedTitles:v53 stringsTable:v56 parentSpecifier:v55];
          [v32 setValues:v21 titles:v34 shortTitles:0];
        }

        v31 = v57;
      }
    }

    else
    {
      v24 = v53;
    }
  }

  else
  {
    v35 = [MEMORY[0x1E696AD60] string];
    v36 = objc_opt_class();
    v37 = [a1 _typeErrorStringForKeyWithName:@"Key" expectedType:v36 actualType:objc_opt_class()];
    v38 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v17, "length")}];
    [v35 appendFormat:@"\n\t%@ String length is %@ (must be greater than 0).", v37, v38];

    v39 = objc_opt_class();
    v40 = [a1 _typeErrorStringForKeyWithName:@"Title" expectedType:v39 actualType:objc_opt_class()];
    v41 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v13, "length")}];
    [v35 appendFormat:@"\n\t%@ String length is %@ (must be greater than 0).", v40, v41];

    v42 = objc_opt_class();
    v43 = [a1 _typeErrorStringForKeyWithName:@"Values" expectedType:v42 actualType:objc_opt_class()];
    v44 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v21, "count")}];
    [v35 appendFormat:@"\n\t%@ Number of items is %@ (must be greater than 0).", v43, v44];

    v45 = objc_opt_class();
    v46 = [a1 _typeErrorStringForKeyWithName:@"Titles" expectedType:v45 actualType:objc_opt_class()];
    v47 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v24, "count")}];
    [v35 appendFormat:@"\n\t%@ Number of items is %@ (must be greater than 0).", v46, v47];

    v48 = PKLogForCategory(2);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      v50 = objc_opt_class();
      v51 = NSStringFromClass(v50);
      v52 = @"unknown";
      *buf = 138543874;
      v60 = v51;
      if (v14)
      {
        v52 = v14;
      }

      v61 = 2114;
      v62 = v52;
      v63 = 2114;
      v64 = v35;
      _os_log_error_impl(&dword_18B008000, v48, OS_LOG_TYPE_ERROR, "%{public}@: Could not create title-value specifier for application '%{public}@' due to invalid input. %{public}@", buf, 0x20u);
    }

    v32 = 0;
    v25 = v55;
    v27 = v56;
    v31 = v57;
  }

  return v32;
}

+ (id)multiValueSpecifierFromDictionary:(id)a3 stringsTable:(id)a4 parentSpecifier:(id)a5 target:(id)a6
{
  v76 = *MEMORY[0x1E69E9840];
  v64 = a4;
  v10 = a5;
  v62 = a6;
  v11 = a3;
  objc_opt_class();
  v12 = [v11 objectForKeyedSubscript:@"Title"];
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  v63 = v10;
  v15 = [v10 propertyForKey:@"AppBundleID"];
  objc_opt_class();
  v16 = [v11 objectForKeyedSubscript:@"Key"];
  if (objc_opt_isKindOfClass())
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v69 = v17;

  v66 = [v11 objectForKey:@"DefaultValue"];
  objc_opt_class();
  v18 = [v11 objectForKeyedSubscript:@"Values"];
  if (objc_opt_isKindOfClass())
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  v67 = v19;

  objc_opt_class();
  v20 = [v11 objectForKeyedSubscript:@"Titles"];
  if (objc_opt_isKindOfClass())
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  v22 = v21;

  objc_opt_class();
  v23 = [v11 objectForKeyedSubscript:@"ShortTitles"];
  if (objc_opt_isKindOfClass())
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  v61 = v24;

  objc_opt_class();
  v25 = [v11 objectForKeyedSubscript:@"DisplaySortedByTitle"];

  if (objc_opt_isKindOfClass())
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  v27 = v26;

  v28 = [v27 BOOLValue];
  v68 = v14;
  v65 = v15;
  if ([v14 length] && -[__CFString length](v15, "length") && objc_msgSend(v69, "length") && v66 && v67 && v22 && objc_msgSend(v67, "count") && (v29 = objc_msgSend(v67, "count"), v29 == objc_msgSend(v22, "count")))
  {
    v30 = v10;
    v59 = [v10 propertyForKey:@"AppSettingsBundle"];
    v31 = v64;
    v32 = [v59 localizedStringForKey:v14 value:&stru_1EFE45030 table:v64];
    v33 = v15;
    v34 = v62;
    v35 = [PSSpecifier preferenceSpecifierNamed:v32 target:v62 set:sel_setPreferenceValue_specifier_ get:sel_readPreferenceValue_ detail:objc_opt_class() cell:2 edit:0];

    [v35 setProperty:v33 forKey:@"defaults"];
    [v35 setProperty:v69 forKey:@"key"];
    [v35 setProperty:v66 forKey:@"default"];
    v60 = [a1 localizedTitlesFromUnlocalizedTitles:v22 stringsTable:v64 parentSpecifier:v63];
    v36 = v61;
    if (v61)
    {
      v37 = [v61 count];
      v38 = v37 == [v22 count];
      v39 = v67;
      if (v38)
      {
        v58 = [a1 localizedTitlesFromUnlocalizedTitles:v61 stringsTable:v64 parentSpecifier:v63];
      }

      else
      {
        v58 = 0;
      }
    }

    else
    {
      v58 = 0;
      v39 = v67;
    }

    [v35 setValues:v39 titles:v60 shortTitles:v58 usingLocalizedTitleSorting:v28];
  }

  else
  {
    v40 = [MEMORY[0x1E696AD60] string];
    v41 = objc_opt_class();
    v42 = [a1 _typeErrorStringForKeyWithName:@"Key" expectedType:v41 actualType:objc_opt_class()];
    v43 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v69, "length")}];
    [v40 appendFormat:@"\n\t%@ String length is %@ (must be greater than 0).", v42, v43];

    v44 = objc_opt_class();
    v45 = [a1 _typeErrorStringForKeyWithName:@"Title" expectedType:v44 actualType:objc_opt_class()];
    v46 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v14, "length")}];
    [v40 appendFormat:@"\n\t%@ String length is %@ (must be greater than 0).", v45, v46];

    v47 = objc_opt_class();
    v39 = v67;
    v48 = [a1 _typeErrorStringForKeyWithName:@"Values" expectedType:v47 actualType:objc_opt_class()];
    v49 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v67, "count")}];
    [v40 appendFormat:@"\n\t%@ Number of items is %@ (must be greater than 0).", v48, v49];

    v50 = objc_opt_class();
    v51 = [a1 _typeErrorStringForKeyWithName:@"Titles" expectedType:v50 actualType:objc_opt_class()];
    v52 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v22, "count")}];
    [v40 appendFormat:@"\n\t%@ Number of items is %@ (must be greater than 0).", v51, v52];

    v53 = PKLogForCategory(2);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      v55 = objc_opt_class();
      v56 = NSStringFromClass(v55);
      v57 = @"unknown";
      *buf = 138543874;
      v71 = v56;
      if (v65)
      {
        v57 = v65;
      }

      v72 = 2114;
      v73 = v57;
      v74 = 2114;
      v75 = v40;
      _os_log_error_impl(&dword_18B008000, v53, OS_LOG_TYPE_ERROR, "%{public}@: Could not multi-value specifier for application '%{public}@' due to invalid input. %{public}@", buf, 0x20u);
    }

    v35 = 0;
    v30 = v63;
    v31 = v64;
    v36 = v61;
    v34 = v62;
  }

  return v35;
}

+ (id)childPaneSpecifierFromDictionary:(id)a3 stringsTable:(id)a4 parentSpecifier:(id)a5 target:(id)a6
{
  v65 = *MEMORY[0x1E69E9840];
  v57 = a4;
  v9 = a5;
  v10 = a6;
  v11 = a3;
  objc_opt_class();
  v12 = [v11 objectForKeyedSubscript:@"Title"];
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  objc_opt_class();
  v15 = [v11 objectForKeyedSubscript:@"File"];
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  objc_opt_class();
  v18 = [v11 objectForKeyedSubscript:@"ShouldShowGDPR"];
  if (objc_opt_isKindOfClass())
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;

  objc_opt_class();
  v21 = [v11 objectForKeyedSubscript:@"ShouldShowGDPRFromAppBundle"];

  if (objc_opt_isKindOfClass())
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  v23 = v22;

  v56 = v20;
  if ([v20 BOOLValue])
  {
    v24 = [v9 propertyForKey:@"AppBundleID"];
    v25 = [PSAppListController canUseOnBoardingKitForPrivacyDisplayForBundleID:v24];
  }

  else
  {
    v25 = 0;
  }

  v55 = v10;
  if ([v23 BOOLValue])
  {
    v26 = [v9 propertyForKey:@"AppBundleID"];
    v27 = [PSAppListController canUseOnBoardingKitFOrPrivacyDisplayForBundleName:v26];
  }

  else
  {
    v27 = 0;
  }

  v58 = v9;
  if ([v14 length])
  {
    if (v25)
    {
      v28 = [v9 propertyForKey:@"AppSettingsBundle"];
      v29 = v57;
      v30 = [v28 localizedStringForKey:v14 value:&stru_1EFE45030 table:v57];
      v31 = v55;
      v32 = [PSSpecifier preferenceSpecifierNamed:v30 target:v55 set:0 get:0 detail:0 cell:1 edit:0];

      [v32 setProperty:MEMORY[0x1E695E118] forKey:@"enabled"];
      [v32 setProperty:MEMORY[0x1E695E110] forKey:@"searchable"];
      [v32 setButtonAction:sel_showPrivacyControllerForBundleID_];
      v33 = v17;
    }

    else
    {
      v29 = v57;
      v33 = v17;
      if (v27)
      {
        v42 = [v9 propertyForKey:@"AppSettingsBundle"];
        v43 = [v42 localizedStringForKey:v14 value:&stru_1EFE45030 table:v57];
        v31 = v55;
        v32 = [PSSpecifier preferenceSpecifierNamed:v43 target:v55 set:0 get:0 detail:0 cell:1 edit:0];

        [v32 setProperty:MEMORY[0x1E695E118] forKey:@"enabled"];
        [v32 setProperty:MEMORY[0x1E695E110] forKey:@"searchable"];
        [v32 setButtonAction:sel_showPrivacyControllerForBundleName_];
      }

      else if ([v17 length])
      {
        v44 = [v9 propertyForKey:@"AppSettingsBundle"];
        v45 = [v44 localizedStringForKey:v14 value:&stru_1EFE45030 table:v57];
        v31 = v55;
        v32 = [PSSpecifier preferenceSpecifierNamed:v45 target:v55 set:0 get:0 detail:objc_opt_class() cell:1 edit:0];

        [v32 setProperty:v17 forKey:@"File"];
      }

      else
      {
        v32 = 0;
        v31 = v55;
      }
    }

    [v32 setProperty:v14 forKey:@"id"];
  }

  else
  {
    v34 = [MEMORY[0x1E696AD60] string];
    v35 = objc_opt_class();
    v36 = [a1 _typeErrorStringForKeyWithName:@"Title" expectedType:v35 actualType:objc_opt_class()];
    v37 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v14, "length")}];
    [v34 appendFormat:@"\n\t%@ String length is %@ (must be greater than 0).", v36, v37];

    v38 = objc_opt_class();
    v39 = [a1 _typeErrorStringForKeyWithName:@"File" expectedType:v38 actualType:objc_opt_class()];
    v33 = v17;
    v40 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v17, "length")}];
    [v34 appendFormat:@"\n\t%@ String length is %@ (must be greater than 0).", v39, v40];

    v41 = PKLogForCategory(2);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v47 = objc_opt_class();
      v48 = NSStringFromClass(v47);
      objc_opt_class();
      v49 = [v9 objectForKeyedSubscript:@"AppBundleID"];
      if (objc_opt_isKindOfClass())
      {
        v50 = v49;
      }

      else
      {
        v50 = 0;
      }

      v51 = v50;
      v52 = v51;
      v53 = @"unknown";
      *buf = 138543874;
      v60 = v48;
      if (v51)
      {
        v53 = v51;
      }

      v61 = 2114;
      v62 = v53;
      v63 = 2114;
      v64 = v34;
      _os_log_error_impl(&dword_18B008000, v41, OS_LOG_TYPE_ERROR, "%{public}@: Could not create child pane specifier for application '%{public}@' due to invalid input. %{public}@", buf, 0x20u);
    }

    v32 = 0;
    v29 = v57;
    v31 = v55;
  }

  return v32;
}

+ (id)specifiersFromDictionary:(id)a3 stringsTable:(id)a4 parentSpecifier:(id)a5 target:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v14 = [v10 objectForKeyedSubscript:@"Type"];
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    v17 = [v10 objectForKey:@"SupportedUserInterfaceIdioms"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v17 = 0;
    }

    v18 = [MEMORY[0x1E69DC938] currentDevice];
    v19 = [v18 userInterfaceIdiom];

    v20 = [v12 propertyForKey:@"AppBundleID"];
    if (!v17 || (v19 ? (v21 = @"Pad") : (v21 = @"Phone"), [v17 containsObject:v21]))
    {
      if ([v16 isEqualToString:@"PSGroupSpecifier"])
      {
        v22 = [a1 groupSpecifierFromDictionary:v10 stringsTable:v11 parentSpecifier:v12 target:v13];
        goto LABEL_29;
      }

      if ([v16 isEqualToString:@"PSTextFieldSpecifier"])
      {
        v22 = [a1 textFieldSpecifierFromDictionary:v10 stringsTable:v11 parentSpecifier:v12 target:v13];
        goto LABEL_29;
      }

      if ([v16 isEqualToString:@"PSToggleSwitchSpecifier"])
      {
        v22 = [a1 toggleSwitchSpecifierFromDictionary:v10 stringsTable:v11 parentSpecifier:v12 target:v13];
        goto LABEL_29;
      }

      if ([v16 isEqualToString:@"PSSliderSpecifier"])
      {
        v22 = [a1 sliderSpecifierFromDictionary:v10 stringsTable:v11 parentSpecifier:v12 target:v13];
        goto LABEL_29;
      }

      if ([v16 isEqualToString:@"PSTitleValueSpecifier"])
      {
        v22 = [a1 titleValueSpecifierFromDictionary:v10 stringsTable:v11 parentSpecifier:v12 target:v13];
        goto LABEL_29;
      }

      if ([v16 isEqualToString:@"PSMultiValueSpecifier"])
      {
        v22 = [a1 multiValueSpecifierFromDictionary:v10 stringsTable:v11 parentSpecifier:v12 target:v13];
        goto LABEL_29;
      }

      if ([v16 isEqualToString:@"PSChildPaneSpecifier"])
      {
        v22 = [a1 childPaneSpecifierFromDictionary:v10 stringsTable:v11 parentSpecifier:v12 target:v13];
LABEL_29:
        v23 = v22;
        if (v22)
        {
          v24 = [MEMORY[0x1E695DEC8] arrayWithObject:v22];
LABEL_35:
          v27[0] = MEMORY[0x1E69E9820];
          v27[1] = 3221225472;
          v27[2] = __84__PSAppListController_specifiersFromDictionary_stringsTable_parentSpecifier_target___block_invoke;
          v27[3] = &unk_1E71DBDE0;
          v28 = v20;
          v29 = v12;
          v25 = v20;
          [v24 enumerateObjectsUsingBlock:v27];

          goto LABEL_36;
        }

LABEL_34:
        v24 = 0;
        goto LABEL_35;
      }

      if ([v16 isEqualToString:@"PSRadioGroupSpecifier"])
      {
        v24 = [a1 radioGroupSpecifiersFromDictionary:v10 stringsTable:v11 parentSpecifier:v12 target:v13];
        v23 = 0;
        goto LABEL_35;
      }
    }

    v23 = 0;
    goto LABEL_34;
  }

  v23 = PKLogForCategory(2);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    [PSAppListController specifiersFromDictionary:a1 stringsTable:v23 parentSpecifier:? target:?];
  }

  v24 = MEMORY[0x1E695E0F0];
LABEL_36:

  return v24;
}

void __84__PSAppListController_specifiersFromDictionary_stringsTable_parentSpecifier_target___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  [v7 setProperty:*(a1 + 32) forKey:@"AppBundleID"];
  [v7 setProperty:*(a1 + 32) forKey:@"containerBundleID"];
  v3 = [*(a1 + 40) propertyForKey:@"AppSettingsBundle"];
  [v7 setProperty:v3 forKey:@"AppSettingsBundle"];

  [v7 setProperty:MEMORY[0x1E695E118] forKey:@"isThirdPartyDetail"];
  v4 = [*(a1 + 40) propertyForKey:@"appGroupBundleID"];

  if (v4)
  {
    v5 = [*(a1 + 40) propertyForKey:@"appGroupBundleID"];
    [v7 setProperty:v5 forKey:@"containerBundleID"];

    v6 = [*(a1 + 40) propertyForKey:@"appGroupBundleID"];
    [v7 setProperty:v6 forKey:@"appGroupBundleID"];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PSAppListController;
  [(PSListController *)&v4 viewWillAppear:a3];
  [(PSListController *)self reloadSpecifierID:@"NOTIFICATIONS"];
  [(PSListController *)self reloadSpecifierID:@"SIRI"];
  [(PSListController *)self reloadSpecifierID:@"SEARCH"];
}

- (id)specifiers
{
  specifiers = self->super._specifiers;
  if (!specifiers)
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v5 = [(PSSpecifier *)self->super.super._specifier propertyForKey:?];
    v6 = [(PSSpecifier *)self->super.super._specifier propertyForKey:@"isThirdPartyDetail"];
    v7 = [v6 BOOLValue];

    v74 = v7;
    if (v7)
    {
      v66 = 1;
    }

    else
    {
      v8 = [(PSAppListController *)self appPolicy];

      if (!v8)
      {
        v9 = [[PSSystemPolicyForApp alloc] initWithBundleIdentifier:v5];
        [(PSAppListController *)self setAppPolicy:v9];

        v10 = [(PSAppListController *)self appPolicy];
        [v10 setDelegate:self];

        v11 = [(PSAppListController *)self appPolicy];
        [(PSAppListController *)self setSystemPolicy:v11];
      }

      v12 = [(PSAppListController *)self systemPolicy];
      v13 = [v12 specifiers];

      v66 = [v13 count] == 0;
      [(NSArray *)v4 addObjectsFromArray:v13];
    }

    v14 = [(PSAppListController *)self title];
    v15 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v16 = [(PSListController *)self loadSpecifiersFromPlistName:@"KeyboardExtension" target:self bundle:v15];

    v69 = v16;
    [(NSArray *)v4 addObjectsFromArray:v16];
    v70 = v14;
    [(PSListController *)self setTitle:v14];
    v17 = [MEMORY[0x1E695DF70] array];
    v18 = [(PSSpecifier *)self->super.super._specifier propertyForKey:@"File"];
    v19 = [(PSAppListController *)self bundle];
    v20 = [v19 pathForResource:v18 ofType:@"plist"];
    if (![v20 length])
    {
      NSLog(&cfstr_ErrorCanTFindP.isa, v18, v19);
    }

    v67 = v19;
    v68 = v18;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v20];
    v22 = 0x1E696A000uLL;
    v71 = v20;
    v72 = v5;
    v73 = v21;
    if (v21)
    {
      objc_opt_class();
      v23 = [v21 objectForKeyedSubscript:@"StringsTable"];
      if (objc_opt_isKindOfClass())
      {
        v24 = v23;
      }

      else
      {
        v24 = 0;
      }

      v25 = v24;

      if (v25)
      {
        specifier = self->super.super._specifier;
        v27 = [v25 stringByDeletingPathExtension];
        [(PSSpecifier *)specifier setProperty:v27 forKey:@"StringsTable"];
      }

      v65 = v4;
      objc_opt_class();
      v28 = [v21 objectForKeyedSubscript:@"ApplicationGroupContainerIdentifier"];
      if (objc_opt_isKindOfClass())
      {
        v29 = v28;
      }

      else
      {
        v29 = 0;
      }

      v30 = v29;

      if (v30)
      {
        v31 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:v5];
        v32 = [v31 groupContainerURLs];
        v33 = [v32 objectForKey:v30];

        if (v33)
        {
          [(PSSpecifier *)self->super.super._specifier setProperty:v30 forKey:@"appGroupBundleID"];
          [(PSSpecifier *)self->super.super._specifier setProperty:v30 forKey:@"containerBundleID"];
        }
      }

      objc_opt_class();
      v34 = [v73 objectForKeyedSubscript:@"PreferenceSpecifiers"];
      if (objc_opt_isKindOfClass())
      {
        v35 = v34;
      }

      else
      {
        v35 = 0;
      }

      v36 = v35;

      v37 = [v36 count];
      if (v37)
      {
        v38 = v37;
        for (i = 0; i != v38; ++i)
        {
          v40 = [v36 objectAtIndex:i];
          v41 = [objc_opt_class() specifiersFromDictionary:v40 stringsTable:v25 parentSpecifier:self->super.super._specifier target:self];
          if (v41)
          {
            [v17 addObjectsFromArray:v41];
          }
        }
      }

      v4 = v65;
      v20 = v71;
      v5 = v72;
      v21 = v73;
      v22 = 0x1E696A000;
    }

    else
    {
      NSLog(&cfstr_ErrorCouldnTLo.isa, v20);
    }

    if (!(([v17 count] == 0) | (v74 | v66) & 1))
    {
      v42 = v5;
      v43 = v4;
      v44 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:v42];
      v45 = [v44 localizedName];

      v46 = *(v22 + 3776);
      v47 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v48 = [v47 localizedStringForKey:@"APP_SETTINGS" value:&stru_1EFE45030 table:@"PSSystemPolicy"];
      v49 = [v46 stringWithFormat:v48, v45];
      v50 = [v49 localizedUppercaseString];

      v51 = [v17 firstObject];
      v52 = [v51 name];
      v53 = [v52 length];

      if (v53)
      {
        v54 = [PSSpecifier groupSpecifierWithName:v50];
        v4 = v43;
        [(NSArray *)v43 addObject:v54];
      }

      else
      {
        v54 = [v17 firstObject];
        [v54 setName:v50];
        v4 = v43;
      }

      v20 = v71;
      v5 = v72;
      v21 = v73;
    }

    [(NSArray *)v4 addObjectsFromArray:v17];
    if ((v74 & 1) == 0)
    {
      v55 = [(PSAppListController *)self driverPolicy];

      if (!v55)
      {
        v56 = [[PSDriverPolicyForApp alloc] initWithBundleIdentifier:v5];
        [(PSAppListController *)self setDriverPolicy:v56];

        v57 = [(PSAppListController *)self driverPolicy];
        [v57 setDelegate:self];
      }

      v58 = [(PSAppListController *)self driverPolicy];
      v59 = [v58 specifiers];

      [(NSArray *)v4 addObjectsFromArray:v59];
    }

    v60 = self->super.super._specifier;
    if (v60)
    {
      v61 = [(PSSpecifier *)v60 propertyForKey:@"id"];

      if (!v61)
      {
        v62 = [(PSSpecifier *)self->super.super._specifier propertyForKey:@"AppBundleID"];
        [(PSSpecifier *)self->super.super._specifier setProperty:v62 forKey:@"id"];
      }
    }

    v63 = self->super._specifiers;
    self->super._specifiers = v4;

    specifiers = self->super._specifiers;
  }

  return specifiers;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v11.receiver = self;
  v11.super_class = PSAppListController;
  v6 = a4;
  [(PSListController *)&v11 tableView:a3 didSelectRowAtIndexPath:v6];
  v7 = [v6 section];

  v8 = [(PSListController *)self specifierAtIndex:[(PSListController *)self indexOfGroup:v7]];
  if ([v8 isRadioGroup])
  {
    v9 = [v8 propertyForKey:@"radioGroupCheckedSpecifier"];
    v10 = [v9 propertyForKey:@"value"];
    [(PSAppListController *)self setPreferenceValue:v10 specifier:v8];
  }
}

- (id)bundle
{
  v3 = [(PSSpecifier *)self->super.super._specifier propertyForKey:@"AppSettingsBundle"];
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [v3 bundlePath];
  v6 = [v4 fileExistsAtPath:v5];

  if (v6)
  {
    v7 = v3;
  }

  else
  {
    v8 = [(PSSpecifier *)self->super.super._specifier propertyForKey:@"AppBundleID"];
    v9 = [PSSystemPolicyManager thirdPartyApplicationForBundleID:v8];

    v10 = [v9 record];
    v11 = [v10 URL];
    v12 = [v11 URLByAppendingPathComponent:@"Settings.bundle"];

    if (v12)
    {
      v7 = [MEMORY[0x1E696AAE8] bundleWithURL:v12];
      [(PSSpecifier *)self->super.super._specifier setProperty:v7 forKey:@"AppSettingsBundle"];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

+ (id)_typeErrorStringForKeyWithName:(id)a3 expectedType:(Class)a4 actualType:(Class)a5
{
  v7 = MEMORY[0x1E696AEC0];
  v8 = a3;
  v9 = NSStringFromClass(a5);
  v10 = NSStringFromClass(a4);
  v11 = [v7 stringWithFormat:@"The type of the '%@' key is %@ (expected %@)", v8, v9, v10];

  return v11;
}

+ (void)specifiersFromDictionary:(uint64_t)a1 stringsTable:(NSObject *)a2 parentSpecifier:target:.cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_18B008000, a2, OS_LOG_TYPE_ERROR, "%{public}@: Preference Items array contains an object that isn't a dictionary", &v5, 0xCu);
}

@end