@interface PSPhotosPolicyController
- (id)_photosStatus:(id)status;
- (id)appSpecifierWithName:(id)name bundleID:(id)d;
- (id)appSpecifierWithName:(id)name bundleID:(id)d showPhotosAccess:(BOOL)access showPhotosAddAccess:(BOOL)addAccess showPickerUsage:(BOOL)usage;
- (void)_setPhotosStatus:(id)status specifier:(id)specifier;
- (void)getAuthorizationStatesForService:(__CFString *)service allowedArray:(id *)array limitedArray:(id *)limitedArray deniedArray:(id *)deniedArray;
- (void)setTCCForService:(__CFString *)service appIdentifier:(id)identifier value:(int)value completion:(id)completion;
@end

@implementation PSPhotosPolicyController

- (id)appSpecifierWithName:(id)name bundleID:(id)d
{
  nameCopy = name;
  dCopy = d;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v8 = tcc_server_create();
  v9 = tcc_message_options_create();
  tcc_message_options_set_request_prompt_policy();
  tcc_message_options_set_reply_handler_policy();
  [dCopy UTF8String];
  v10 = tcc_identity_create();
  v16 = MEMORY[0x1E69E9820];
  tcc_server_message_get_authorization_records_by_identity();
  v11 = PSPhotosPolicyBundleIdentifiersWithRecentPickerUsage();
  v12 = [v11 containsObject:{dCopy, v16, 3221225472, __58__PSPhotosPolicyController_appSpecifierWithName_bundleID___block_invoke, &unk_1E71DC0B0, &v17, &v21}];

  v13 = *(v18 + 24);
  if ((*(v22 + 24) | v13 | v12))
  {
    v14 = [PSPhotosPolicyController appSpecifierWithName:"appSpecifierWithName:bundleID:showPhotosAccess:showPhotosAddAccess:showPickerUsage:" bundleID:nameCopy showPhotosAccess:dCopy showPhotosAddAccess:v13 & 1 showPickerUsage:?];
  }

  else
  {
    v14 = 0;
  }

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);

  return v14;
}

void __58__PSPhotosPolicyController_appSpecifierWithName_bundleID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v9 = v3;
    v4 = tcc_authorization_record_get_service();
    CF_name = tcc_service_get_CF_name();
    if (CFStringCompare(CF_name, *MEMORY[0x1E69D55C8], 0))
    {
      if (CFStringCompare(CF_name, *MEMORY[0x1E69D55D0], 0))
      {
LABEL_7:

        v3 = v9;
        goto LABEL_8;
      }

      *(*(*(a1 + 40) + 8) + 24) = 1;
      has_prompted_for_allow = tcc_authorization_record_get_has_prompted_for_allow();
      v7 = *(*(a1 + 32) + 8);
      v8 = *(v7 + 24) | has_prompted_for_allow;
    }

    else
    {
      v7 = *(*(a1 + 32) + 8);
      v8 = 1;
    }

    *(v7 + 24) = v8;
    goto LABEL_7;
  }

LABEL_8:
}

- (id)appSpecifierWithName:(id)name bundleID:(id)d showPhotosAccess:(BOOL)access showPhotosAddAccess:(BOOL)addAccess showPickerUsage:(BOOL)usage
{
  usageCopy = usage;
  addAccessCopy = addAccess;
  accessCopy = access;
  dCopy = d;
  nameCopy = name;
  v13 = [PSSpecifier preferenceSpecifierNamed:nameCopy target:self set:sel__setPhotosStatus_specifier_ get:sel__photosStatus_ detail:objc_opt_class() cell:2 edit:0];

  [v13 setIdentifier:dCopy];
  [v13 setProperty:dCopy forKey:@"appBundleID"];

  v14 = PS_LocalizedStringForSystemPolicy(@"PHOTOS_AUTH_ONGOING_HEADER");
  [v13 setProperty:v14 forKey:@"staticHeaderText"];

  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  if (!accessCopy && !addAccessCopy || (PS_LocalizedStringForSystemPolicy(@"PHOTOS_NO_ACCESS_AUTHORIZATION"), v21 = objc_claimAutoreleasedReturnValue(), [array addObject:v21], v21, objc_msgSend(array2, "addObject:", &unk_1EFE65AA8), objc_msgSend(v13, "setProperty:forKey:", MEMORY[0x1E695E118], @"hasTCCOptions"), !addAccessCopy))
  {
    if (!accessCopy)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v22 = PS_LocalizedStringForSystemPolicy(@"PHOTOS_ADD_ONLY_AUTHORIZATION");
  [array addObject:v22];

  [array2 addObject:&unk_1EFE65AC0];
  if (accessCopy)
  {
LABEL_4:
    v17 = PS_LocalizedStringForSystemPolicy(@"PHOTOS_LIMITED_AUTHORIZATION");
    [array addObject:v17];

    [array2 addObject:&unk_1EFE65AD8];
    v18 = PS_LocalizedStringForSystemPolicy(@"PHOTOS_FULL_AUTHORIZATION");
    [array addObject:v18];

    [array2 addObject:&unk_1EFE65AF0];
  }

LABEL_5:
  if (usageCopy)
  {
    v19 = PS_LocalizedStringForSystemPolicy(@"PHOTOS_PICKER_ONLY_AUTHORIZATION");
    [array addObject:v19];

    [array2 addObject:&unk_1EFE65B08];
    [v13 setProperty:MEMORY[0x1E695E118] forKey:@"hasPickerInfo"];
  }

  [v13 setValues:array2 titles:array];

  return v13;
}

- (void)_setPhotosStatus:(id)status specifier:(id)specifier
{
  statusCopy = status;
  v7 = [specifier propertyForKey:@"appBundleID"];
  v8 = MEMORY[0x1E69D55D0];
  v9 = *MEMORY[0x1E69D55D0];
  v23 = 0;
  [(PSPhotosPolicyController *)self getAuthorizationStatesForService:v9 allowedArray:&v23 limitedArray:0 deniedArray:0];
  v10 = v23;
  v11 = MEMORY[0x1E69D55C8];
  v12 = *MEMORY[0x1E69D55C8];
  v21 = 0;
  v22 = 0;
  [(PSPhotosPolicyController *)self getAuthorizationStatesForService:v12 allowedArray:&v22 limitedArray:&v21 deniedArray:0];
  v13 = v22;
  v14 = v21;
  v15 = [v13 arrayByAddingObjectsFromArray:v14];
  if ([statusCopy intValue] == 2)
  {
    v16 = *v11;
    selfCopy4 = self;
    v18 = v7;
    v19 = 2;
LABEL_15:
    [(PSPhotosPolicyController *)selfCopy4 setTCCForService:v16 appIdentifier:v18 value:v19];
    goto LABEL_16;
  }

  if ([statusCopy intValue] == 1)
  {
    if ([v15 containsObject:v7])
    {
      [(PSPhotosPolicyController *)self setTCCForService:*v11 appIdentifier:v7 value:0];
    }

    v16 = *v8;
    selfCopy4 = self;
    v18 = v7;
    v19 = 1;
    goto LABEL_15;
  }

  if ([statusCopy intValue] == 3)
  {
    v16 = *v11;
    selfCopy4 = self;
    v18 = v7;
    v19 = 3;
    goto LABEL_15;
  }

  if ([statusCopy intValue] && objc_msgSend(statusCopy, "intValue") != 4)
  {
    v20 = _PSLoggingFacility();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [PSPhotosPolicyController _setPhotosStatus:statusCopy specifier:v20];
    }
  }

  else
  {
    if ([v15 containsObject:v7])
    {
      [(PSPhotosPolicyController *)self setTCCForService:*v11 appIdentifier:v7 value:0];
    }

    if ([v10 containsObject:v7])
    {
      v16 = *v8;
      selfCopy4 = self;
      v18 = v7;
      v19 = 0;
      goto LABEL_15;
    }
  }

LABEL_16:
}

- (id)_photosStatus:(id)status
{
  v4 = [status propertyForKey:@"appBundleID"];
  v5 = *MEMORY[0x1E69D55D0];
  v16 = 0;
  [(PSPhotosPolicyController *)self getAuthorizationStatesForService:v5 allowedArray:&v16 limitedArray:0 deniedArray:0];
  v6 = v16;
  v7 = *MEMORY[0x1E69D55C8];
  v14 = 0;
  v15 = 0;
  [(PSPhotosPolicyController *)self getAuthorizationStatesForService:v7 allowedArray:&v15 limitedArray:&v14 deniedArray:0];
  v8 = v15;
  v9 = v14;
  if ([v8 containsObject:v4])
  {
    v10 = &unk_1EFE65AF0;
  }

  else if ([v9 containsObject:v4])
  {
    v10 = &unk_1EFE65AD8;
  }

  else if ([v6 containsObject:v4])
  {
    v10 = &unk_1EFE65AC0;
  }

  else
  {
    v11 = PSPhotosPolicyBundleIdentifiersWithRecentPickerUsage();
    v12 = [v11 containsObject:v4];

    if (v12)
    {
      v10 = &unk_1EFE65B08;
    }

    else
    {
      v10 = &unk_1EFE65AA8;
    }
  }

  return v10;
}

- (void)setTCCForService:(__CFString *)service appIdentifier:(id)identifier value:(int)value completion:(id)completion
{
  v32 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  completionCopy = completion;
  if (setTCCForService_appIdentifier_value_completion__onceToken != -1)
  {
    [PSPhotosPolicyController setTCCForService:appIdentifier:value:completion:];
  }

  v12 = _PSLoggingFacility();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    serviceCopy = service;
    v28 = 2112;
    v29 = identifierCopy;
    v30 = 1024;
    valueCopy = value;
    _os_log_impl(&dword_18B008000, v12, OS_LOG_TYPE_DEFAULT, "Setting TCC auth for service: %@ appIdentifier:%@, accessLevel:%d", buf, 0x1Cu);
  }

  [identifierCopy cStringUsingEncoding:4];
  v13 = tcc_identity_create();
  v14 = tcc_service_singleton_for_CF_name();
  v15 = 0;
  if ((value - 1) <= 2)
  {
    v15 = qword_18B103BC0[value - 1];
  }

  v16 = CFEqual(service, *MEMORY[0x1E69D55C8]);
  if (value == 2 && v16 && TCCLibraryCore() && gettcc_server_message_prompt_authorization_valueSymbolLoc())
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __76__PSPhotosPolicyController_setTCCForService_appIdentifier_value_completion___block_invoke_163;
    aBlock[3] = &unk_1E71DC100;
    aBlock[4] = self;
    v24 = identifierCopy;
    v25 = completionCopy;
    v17 = _Block_copy(aBlock);
    v18 = setTCCForService_appIdentifier_value_completion__tccServer;
    v19 = v13;
    v20 = v14;
    v21 = v17;
    v22 = gettcc_server_message_prompt_authorization_valueSymbolLoc();
    if (!v22)
    {
      [PSContactsAuthorizationLevelController dealloc];
    }

    v22(v18, 0, v19, v20, 0, v15, v21);
  }

  else
  {
    tcc_server_message_set_authorization_value();
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }
}

void __76__PSPhotosPolicyController_setTCCForService_appIdentifier_value_completion___block_invoke()
{
  v0 = tcc_server_create();
  v1 = setTCCForService_appIdentifier_value_completion__tccServer;
  setTCCForService_appIdentifier_value_completion__tccServer = v0;
}

void __76__PSPhotosPolicyController_setTCCForService_appIdentifier_value_completion___block_invoke_163(uint64_t a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v8 = @"PUIPhotosPrivacyUpgradePromptAppIdentifierKey";
  v9[0] = v3;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [v2 postNotificationName:@"PUIPhotosPrivacyUpgradePromptCompletedNotification" object:v4 userInfo:v5];

  if (*(a1 + 48))
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __76__PSPhotosPolicyController_setTCCForService_appIdentifier_value_completion___block_invoke_2;
    v6[3] = &unk_1E71DC0D8;
    v7 = *(a1 + 48);
    dispatch_async(MEMORY[0x1E69E96A0], v6);
  }
}

- (void)getAuthorizationStatesForService:(__CFString *)service allowedArray:(id *)array limitedArray:(id *)limitedArray deniedArray:(id *)deniedArray
{
  v24 = *MEMORY[0x1E69E9840];
  v10 = tcc_server_create();
  v11 = tcc_service_singleton_for_CF_name();
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  array3 = [MEMORY[0x1E695DF70] array];
  v15 = _PSLoggingFacility();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    serviceCopy = service;
    _os_log_impl(&dword_18B008000, v15, OS_LOG_TYPE_DEFAULT, "Requesting TCC auth records for service: %@", buf, 0xCu);
  }

  v16 = array;
  v17 = array2;
  v18 = array3;
  tcc_server_message_get_authorization_records_by_service();
  if (array)
  {
    v19 = v16;
    *array = v16;
  }

  if (limitedArray)
  {
    v20 = v17;
    *limitedArray = v17;
  }

  if (deniedArray)
  {
    v21 = v18;
    *deniedArray = v18;
  }
}

void __99__PSPhotosPolicyController_getAuthorizationStatesForService_allowedArray_limitedArray_deniedArray___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (v5)
  {
    v6 = tcc_authorization_record_get_subject_identity();
    authorization_right = tcc_authorization_record_get_authorization_right();
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:tcc_identity_get_identifier() encoding:4];
    if (v8)
    {
      switch(authorization_right)
      {
        case 0:
          v9 = 48;
          goto LABEL_14;
        case 2:
          v9 = 32;
          goto LABEL_14;
        case 3:
          v9 = 40;
LABEL_14:
          [*(a1 + v9) addObject:v8];
          break;
      }
    }

    goto LABEL_16;
  }

  v10 = _PSLoggingFacility();
  v6 = v10;
  if (a3)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __PSContactsAuthorizationStatesForService_block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 56);
    v12 = 138412290;
    v13 = v11;
    _os_log_impl(&dword_18B008000, v6, OS_LOG_TYPE_DEFAULT, "Finished getting authorization for service: %@", &v12, 0xCu);
  }

LABEL_16:
}

- (void)_setPhotosStatus:(uint64_t)a1 specifier:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_18B008000, a2, OS_LOG_TYPE_ERROR, "Unexpected value set for photos tcc access: %@", &v2, 0xCu);
}

@end