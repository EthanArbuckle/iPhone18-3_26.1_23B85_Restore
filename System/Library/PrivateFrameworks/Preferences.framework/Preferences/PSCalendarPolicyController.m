@interface PSCalendarPolicyController
+ (id)loadPrivacySettingsBundle;
+ (unint64_t)authorizationRightforAccessLevel:(int)a3;
+ (void)setCalendarAccessForApp:(id)a3 toValue:(int)a4 shouldPrompt:(BOOL)a5;
- (id)appSpecifierWithName:(id)a3 bundleID:(id)a4;
- (id)calendarStatus:(id)a3;
- (void)setCalendarStatus:(id)a3 specifier:(id)a4;
@end

@implementation PSCalendarPolicyController

+ (id)loadPrivacySettingsBundle
{
  v2 = MEMORY[0x1E696AAE8];
  v4 = v3 = @"/System/Library/PrivateFrameworks/Settings/PrivacySettingsUI.framework";
  v5 = [v2 bundleWithPath:v4];

  [v5 load];

  return v5;
}

- (id)appSpecifierWithName:(id)a3 bundleID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  PSCalendarAuthorizationStates(&v18, &v17, &v16);
  v8 = v18;
  v9 = v17;
  v10 = v16;
  if (([v8 containsObject:v7] & 1) != 0 || (objc_msgSend(v9, "containsObject:", v7) & 1) != 0 || objc_msgSend(v10, "containsObject:", v7))
  {
    v11 = [PSSpecifier preferenceSpecifierNamed:v6 target:self set:sel_setCalendarStatus_specifier_ get:sel_calendarStatus_ detail:objc_opt_class() cell:2 edit:0];
    v12 = MEMORY[0x1E695E118];
    [v11 setProperty:MEMORY[0x1E695E118] forKey:@"useLazyIcons"];
    [v11 setProperty:v7 forKey:@"BUNDLE_ID"];
    [v11 setProperty:v7 forKey:@"APP_NAME"];
    [v11 setObject:v12 forKeyedSubscript:@"enabled"];
    [v11 setProperty:v7 forKey:@"id"];
    [v11 setObject:@"com.apple.mobilecal" forKeyedSubscript:@"appIDForLazyIcon"];
    v13 = [MEMORY[0x1E695DF70] array];
    v14 = [MEMORY[0x1E695DF70] array];
    if (appSpecifierWithName_bundleID__onceToken != -1)
    {
      [PSCalendarPolicyController appSpecifierWithName:bundleID:];
    }

    [v13 addObject:appSpecifierWithName_bundleID__noAccessStr];
    [v14 addObject:&unk_1EFE659E8];
    [v13 addObject:appSpecifierWithName_bundleID__writeAccessStr];
    [v14 addObject:&unk_1EFE659B8];
    [v13 addObject:appSpecifierWithName_bundleID__fullAccessStr];
    [v14 addObject:&unk_1EFE659D0];
    [v11 setValues:v14 titles:v13];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __60__PSCalendarPolicyController_appSpecifierWithName_bundleID___block_invoke()
{
  v6 = +[PSCalendarPolicyController loadPrivacySettingsBundle];
  v0 = [v6 localizedStringForKey:@"CALENDARS_FULL_ACCESS_AUTHORIZATION" value:&stru_1EFE45030 table:@"Privacy"];
  v1 = appSpecifierWithName_bundleID__fullAccessStr;
  appSpecifierWithName_bundleID__fullAccessStr = v0;

  v2 = [v6 localizedStringForKey:@"CALENDARS_WRITE_ONLY_ACCESS_AUTHORIZATION" value:&stru_1EFE45030 table:@"Privacy"];
  v3 = appSpecifierWithName_bundleID__writeAccessStr;
  appSpecifierWithName_bundleID__writeAccessStr = v2;

  v4 = [v6 localizedStringForKey:@"CALENDARS_NO_ACCESS_AUTHORIZATION" value:&stru_1EFE45030 table:@"Privacy"];
  v5 = appSpecifierWithName_bundleID__noAccessStr;
  appSpecifierWithName_bundleID__noAccessStr = v4;
}

- (id)calendarStatus:(id)a3
{
  v3 = [a3 propertyForKey:@"BUNDLE_ID"];
  v11 = 0;
  v12 = 0;
  v10 = 0;
  PSCalendarAuthorizationStates(&v12, &v11, &v10);
  v4 = v12;
  v5 = v11;
  v6 = v10;
  if ([v4 containsObject:v3])
  {
    v7 = &unk_1EFE659D0;
  }

  else if ([v5 containsObject:v3])
  {
    v7 = &unk_1EFE659B8;
  }

  else
  {
    if (([v6 containsObject:v3] & 1) == 0)
    {
      v8 = _PSLoggingFacility();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(PSCalendarPolicyController *)v3 calendarStatus:v8];
      }
    }

    v7 = &unk_1EFE659E8;
  }

  return v7;
}

- (void)setCalendarStatus:(id)a3 specifier:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [a4 propertyForKey:@"BUNDLE_ID"];
  if ([v5 intValue] == 2)
  {
    v7 = _PSLoggingFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = v6;
      _os_log_impl(&dword_18B008000, v7, OS_LOG_TYPE_DEFAULT, "Requesting to set calendar auth for app %@ to full", &v15, 0xCu);
    }

    v8 = v6;
    v9 = 2;
    v10 = 1;
  }

  else
  {
    if ([v5 intValue] == 1)
    {
      v11 = _PSLoggingFacility();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138412290;
        v16 = v6;
        _os_log_impl(&dword_18B008000, v11, OS_LOG_TYPE_DEFAULT, "Setting calendar auth for app %@ to write-only", &v15, 0xCu);
      }

      v8 = v6;
      v9 = 1;
    }

    else
    {
      v12 = [v5 intValue];
      v13 = _PSLoggingFacility();
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      if (v12)
      {
        if (v14)
        {
          v15 = 138412290;
          v16 = v5;
          _os_log_impl(&dword_18B008000, v13, OS_LOG_TYPE_DEFAULT, "Unexpected value set for calendar tcc access: %@", &v15, 0xCu);
        }

        v8 = v6;
        v9 = 3;
      }

      else
      {
        if (v14)
        {
          v15 = 138412290;
          v16 = v6;
          _os_log_impl(&dword_18B008000, v13, OS_LOG_TYPE_DEFAULT, "Setting calendar auth for app %@ to denied", &v15, 0xCu);
        }

        v8 = v6;
        v9 = 0;
      }
    }

    v10 = 0;
  }

  [PSCalendarPolicyController setCalendarAccessForApp:v8 toValue:v9 shouldPrompt:v10];
}

+ (unint64_t)authorizationRightforAccessLevel:(int)a3
{
  if ((a3 - 1) > 2)
  {
    return 0;
  }

  else
  {
    return qword_18B103B80[a3 - 1];
  }
}

+ (void)setCalendarAccessForApp:(id)a3 toValue:(int)a4 shouldPrompt:(BOOL)a5
{
  v5 = a5;
  v6 = *&a4;
  v25 = *MEMORY[0x1E69E9840];
  v8 = a3;
  if (setCalendarAccessForApp_toValue_shouldPrompt__onceToken != -1)
  {
    +[PSCalendarPolicyController setCalendarAccessForApp:toValue:shouldPrompt:];
  }

  v9 = _PSLoggingFacility();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *MEMORY[0x1E69D5518];
    *buf = 138412802;
    v20 = v10;
    v21 = 2112;
    v22 = v8;
    v23 = 1024;
    v24 = v6;
    _os_log_impl(&dword_18B008000, v9, OS_LOG_TYPE_DEFAULT, "Setting TCC auth for service: %@ appIdentifier:%@, accessLevel:%d", buf, 0x1Cu);
  }

  [v8 cStringUsingEncoding:4];
  v11 = tcc_identity_create();
  v12 = tcc_service_singleton_for_CF_name();
  [PSCalendarPolicyController authorizationRightforAccessLevel:v6];
  if (v5)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __75__PSCalendarPolicyController_setCalendarAccessForApp_toValue_shouldPrompt___block_invoke_80;
    v16[3] = &unk_1E71DBE48;
    v18 = a1;
    v13 = v8;
    v17 = v13;
    v14 = _Block_copy(v16);
    v15 = _PSLoggingFacility();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v13;
      _os_log_impl(&dword_18B008000, v15, OS_LOG_TYPE_DEFAULT, "Setting calendar auth for app %@ to full, after prompt", buf, 0xCu);
    }

    tcc_server_message_prompt_authorization_value();
  }

  else
  {
    tcc_server_message_set_authorization_value();
  }
}

void __75__PSCalendarPolicyController_setCalendarAccessForApp_toValue_shouldPrompt___block_invoke()
{
  v0 = tcc_server_create();
  v1 = setCalendarAccessForApp_toValue_shouldPrompt__tccServer;
  setCalendarAccessForApp_toValue_shouldPrompt__tccServer = v0;
}

void __75__PSCalendarPolicyController_setCalendarAccessForApp_toValue_shouldPrompt___block_invoke_80(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = @"PSCalendarPrivacyUpgradePromptAppIdentifierKey";
  v7[0] = v3;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [v2 postNotificationName:@"PSCalendarPrivacyUpgradePromptCompletedNotification" object:v4 userInfo:v5];
}

- (void)calendarStatus:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_18B008000, a2, OS_LOG_TYPE_ERROR, "unknown state for %@, treating as denied", &v2, 0xCu);
}

@end