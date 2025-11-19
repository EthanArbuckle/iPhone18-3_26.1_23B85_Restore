@interface PSContactsPolicyController
- (id)appSpecifierWithName:(id)a3 bundleID:(id)a4;
- (id)appSpecifierWithName:(id)a3 bundleID:(id)a4 showContactsAccess:(BOOL)a5 showPickerUsage:(BOOL)a6;
- (id)contactsStatus:(id)a3;
- (void)_setContactsTCCStatus:(id)a3 specifier:(id)a4;
- (void)setTCCForService:(__CFString *)a3 appIdentifier:(id)a4 value:(int)a5;
- (void)updateContactsAuthorizationStatus;
@end

@implementation PSContactsPolicyController

- (void)setTCCForService:(__CFString *)a3 appIdentifier:(id)a4 value:(int)a5
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = _PSLoggingFacility();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (a5 != 4)
  {
    if (v10)
    {
      *buf = 138412802;
      v28 = a3;
      v29 = 2112;
      v30 = v8;
      v31 = 1024;
      v32 = a5;
      _os_log_impl(&dword_18B008000, v9, OS_LOG_TYPE_DEFAULT, "Setting TCC auth for service: %@ appIdentifier:%@, accessLevel:%d", buf, 0x1Cu);
    }

    if (setTCCForService_appIdentifier_value__onceToken != -1)
    {
      [PSContactsPolicyController setTCCForService:appIdentifier:value:];
    }

    [(__CFString *)v8 cStringUsingEncoding:4];
    v9 = tcc_identity_create();
    v11 = tcc_service_singleton_for_CF_name();
    switch(a5)
    {
      case 1:
        v17 = [(PSContactsPolicyController *)self contactsLimitedAccessAppIDs];
        v18 = [v17 containsObject:v8];

        if ((v18 & 1) == 0)
        {
          goto LABEL_20;
        }

        break;
      case 3:
        goto LABEL_20;
      case 2:
        v12 = [(PSContactsPolicyController *)self contactsFullAccessAllowedAppIDs];
        v13 = [v12 containsObject:v8];

        if ((v13 & 1) == 0)
        {
          if (_os_feature_enabled_impl())
          {
            v21 = MEMORY[0x1E69E9820];
            v22 = 3221225472;
            v23 = __67__PSContactsPolicyController_setTCCForService_appIdentifier_value___block_invoke_2;
            v24 = &unk_1E71DBEC0;
            v25 = self;
            v14 = v8;
            v26 = v14;
            v15 = _Block_copy(&v21);
            v16 = _PSLoggingFacility();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v28 = a3;
              v29 = 2112;
              v30 = v14;
              _os_log_impl(&dword_18B008000, v16, OS_LOG_TYPE_DEFAULT, "Setting %@ auth for app %@ to full, after prompt", buf, 0x16u);
            }

            tcc_server_message_prompt_authorization_value();
            goto LABEL_21;
          }

LABEL_20:
          tcc_server_message_set_authorization_value();
LABEL_21:
          [(PSContactsPolicyController *)self updateContactsAuthorizationStatus:v21];
        }

        break;
      default:
        v19 = [(PSContactsPolicyController *)self contactsDeniedAppIDs];
        v20 = [v19 containsObject:v8];

        if ((v20 & 1) == 0)
        {
          goto LABEL_20;
        }

        break;
    }

    goto LABEL_23;
  }

  if (v10)
  {
    *buf = 138412290;
    v28 = v8;
    _os_log_impl(&dword_18B008000, v9, OS_LOG_TYPE_DEFAULT, "Access level is picker only; Skipping for app: %@", buf, 0xCu);
  }

LABEL_23:
}

void __67__PSContactsPolicyController_setTCCForService_appIdentifier_value___block_invoke()
{
  v0 = tcc_server_create();
  v1 = setTCCForService_appIdentifier_value__tccServer;
  setTCCForService_appIdentifier_value__tccServer = v0;
}

void __67__PSContactsPolicyController_setTCCForService_appIdentifier_value___block_invoke_2(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v7 = @"PSContactsPrivacyUpgradePromptAppIdentifierKey";
  v8[0] = v3;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [v2 postNotificationName:@"PSContactsPrivacyUpgradePromptCompletedNotification" object:v4 userInfo:v5];

  v6 = dispatch_time(0, 100000000);
  dispatch_after(v6, MEMORY[0x1E69E96A0], &__block_literal_global_223);
}

- (void)updateContactsAuthorizationStatus
{
  v3 = *MEMORY[0x1E69D5500];
  v9 = 0;
  v10 = 0;
  v8 = 0;
  PSContactsAuthorizationStatesForService(v3, &v10, &v9, &v8);
  v4 = v10;
  v5 = v9;
  v6 = v8;
  [(PSContactsPolicyController *)self setContactsFullAccessAllowedAppIDs:v4];
  [(PSContactsPolicyController *)self setContactsLimitedAccessAppIDs:v5];
  [(PSContactsPolicyController *)self setContactsDeniedAppIDs:v6];

  v7 = bundleIdentifiersWithPickerAccess();
  [(PSContactsPolicyController *)self setPickerUsageAppIDs:v7];
}

- (id)contactsStatus:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = [a3 propertyForKey:@"appBundleID"];
  [(PSContactsPolicyController *)self updateContactsAuthorizationStatus];
  v5 = [(PSContactsPolicyController *)self contactsFullAccessAllowedAppIDs];
  v6 = [v5 containsObject:v4];

  if (v6)
  {
    v7 = _PSLoggingFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = v4;
      _os_log_impl(&dword_18B008000, v7, OS_LOG_TYPE_DEFAULT, "App %@ has full contacts access", &v17, 0xCu);
    }

    v8 = &unk_1EFE65A18;
    goto LABEL_19;
  }

  v9 = [(PSContactsPolicyController *)self contactsLimitedAccessAppIDs];
  v10 = [v9 containsObject:v4];

  if (v10)
  {
    v7 = _PSLoggingFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = v4;
      _os_log_impl(&dword_18B008000, v7, OS_LOG_TYPE_DEFAULT, "App %@ has limited contacts access", &v17, 0xCu);
    }

    v8 = &unk_1EFE65A00;
    goto LABEL_19;
  }

  v11 = [(PSContactsPolicyController *)self contactsDeniedAppIDs];
  v12 = [v11 containsObject:v4];

  if (v12)
  {
    v7 = _PSLoggingFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = v4;
      _os_log_impl(&dword_18B008000, v7, OS_LOG_TYPE_DEFAULT, "App %@ has no access to contacts", &v17, 0xCu);
    }

LABEL_18:
    v8 = &unk_1EFE65A30;
    goto LABEL_19;
  }

  v13 = [(PSContactsPolicyController *)self pickerUsageAppIDs];
  v14 = [v13 containsObject:v4];

  v15 = _PSLoggingFacility();
  v7 = v15;
  if (!v14)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(PSContactsPolicyController *)v4 contactsStatus:v7];
    }

    goto LABEL_18;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = v4;
    _os_log_impl(&dword_18B008000, v7, OS_LOG_TYPE_DEFAULT, "App %@ has private access to contacts", &v17, 0xCu);
  }

  v8 = &unk_1EFE65A48;
LABEL_19:

  return v8;
}

- (void)_setContactsTCCStatus:(id)a3 specifier:(id)a4
{
  *&v16[13] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [a4 propertyForKey:@"appBundleID"];
  v8 = [v6 intValue];

  if (v8 > 4)
  {
    v9 = @"unsupported";
  }

  else
  {
    v9 = off_1E71DBF38[v8];
  }

  v10 = _PSLoggingFacility();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412802;
    v14 = v7;
    v15 = 1024;
    *v16 = v8;
    v16[2] = 2112;
    *&v16[3] = v9;
    _os_log_impl(&dword_18B008000, v10, OS_LOG_TYPE_DEFAULT, "Selected contacts auth for app %@: %d(%@)", &v13, 0x1Cu);
  }

  v11 = _PSLoggingFacility();
  v12 = v11;
  if (v8 > 2)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      v13 = 138412802;
      v14 = v7;
      v15 = 1024;
      *v16 = v8;
      v16[2] = 2112;
      *&v16[3] = v9;
      _os_log_fault_impl(&dword_18B008000, v12, OS_LOG_TYPE_FAULT, "Unexpected value set for contacts tcc access for app %@: %d(%@)", &v13, 0x1Cu);
    }
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412546;
      v14 = v7;
      v15 = 2112;
      *v16 = v9;
      _os_log_impl(&dword_18B008000, v12, OS_LOG_TYPE_DEFAULT, "Setting contacts auth for app %@ to %@", &v13, 0x16u);
    }

    [(PSContactsPolicyController *)self setTCCForService:*MEMORY[0x1E69D5500] appIdentifier:v7 value:v8];
  }
}

- (id)appSpecifierWithName:(id)a3 bundleID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x1E69D5500];
  v20 = 0;
  v21 = 0;
  v19 = 0;
  PSContactsAuthorizationStatesForService(v8, &v21, &v20, &v19);
  v9 = v21;
  v10 = v20;
  v11 = v19;
  v12 = [v9 setByAddingObjectsFromSet:v10];
  v13 = [v12 setByAddingObjectsFromSet:v11];

  v14 = bundleIdentifiersWithPickerAccess();
  v15 = [v13 containsObject:v7];
  v16 = [v14 containsObject:v7];
  if ((v15 & 1) != 0 || (v17 = 0, v16))
  {
    v17 = [(PSContactsPolicyController *)self appSpecifierWithName:v6 bundleID:v7 showContactsAccess:v15 showPickerUsage:v16];
  }

  return v17;
}

- (id)appSpecifierWithName:(id)a3 bundleID:(id)a4 showContactsAccess:(BOOL)a5 showPickerUsage:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [PSSpecifier preferenceSpecifierNamed:v11 target:self set:sel__setContactsTCCStatus_specifier_ get:sel_contactsStatus_ detail:objc_opt_class() cell:2 edit:0];

  v13 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v10 allowPlaceholder:1 error:0];
  [v12 setIdentifier:v10];
  [v12 setProperty:v10 forKey:@"appBundleID"];

  v14 = [v13 localizedName];
  [v12 setProperty:v14 forKey:@"appLocalizedDisplayName"];

  v15 = PS_LocalizedStringForSystemPolicy(@"CONTACTS_AUTH_HEADER");
  [v12 setProperty:v15 forKey:@"staticHeaderText"];

  v16 = [MEMORY[0x1E695DF70] array];
  v17 = [MEMORY[0x1E695DF70] array];
  if (v7)
  {
    v18 = PS_LocalizedStringForSystemPolicy(@"CONTACTS_NO_ACCESS_AUTHORIZATION");
    [v16 addObject:v18];

    [v17 addObject:&unk_1EFE65A30];
    [v12 setProperty:MEMORY[0x1E695E118] forKey:@"hasTCCOptions"];
    v19 = PS_LocalizedStringForSystemPolicy(@"CONTACTS_LIMITED_ACCESS_AUTHORIZATION");
    [v16 addObject:v19];

    [v17 addObject:&unk_1EFE65A00];
    v20 = PS_LocalizedStringForSystemPolicy(@"CONTACTS_FULL_ACCESS_AUTHORIZATION");
    [v16 addObject:v20];

    [v17 addObject:&unk_1EFE65A18];
  }

  if (v6)
  {
    v21 = PS_LocalizedStringForSystemPolicy(@"CONTACTS_PICKER_ONLY_AUTHORIZATION");
    [v16 addObject:v21];

    [v17 addObject:&unk_1EFE65A48];
    [v12 setProperty:MEMORY[0x1E695E118] forKey:@"hasPickerInfo"];
  }

  [v12 setValues:v17 titles:v16];

  return v12;
}

- (void)contactsStatus:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_18B008000, a2, OS_LOG_TYPE_ERROR, "Unknown or unexpected status for contacts access, not in any array; Defaulting to denied: %@", &v2, 0xCu);
}

@end