@interface STCoreDataPersistenceSource
- (id)_coreUserForIdentifier:(id)a3 inContext:(id)a4;
- (id)userDataWithIdentifier:(id)a3;
- (void)saveCommunicationSafetySettingsForDSID:(id)a3 checkForUnsafePhotos:(BOOL)a4 communicationSafetyNotificationEnabled:(BOOL)a5 communicationSafetyAnalyticsEnabled:(BOOL)a6 completionHandler:(id)a7;
@end

@implementation STCoreDataPersistenceSource

- (void)saveCommunicationSafetySettingsForDSID:(id)a3 checkForUnsafePhotos:(BOOL)a4 communicationSafetyNotificationEnabled:(BOOL)a5 communicationSafetyAnalyticsEnabled:(BOOL)a6 completionHandler:(id)a7
{
  v11 = a3;
  v12 = +[STAdminPersistenceController sharedController];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __184__STCoreDataPersistenceSource_saveCommunicationSafetySettingsForDSID_checkForUnsafePhotos_communicationSafetyNotificationEnabled_communicationSafetyAnalyticsEnabled_completionHandler___block_invoke;
  v14[3] = &unk_1E7CE7418;
  v14[4] = self;
  v15 = v11;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v13 = v11;
  [v12 performBackgroundTaskAndWait:v14];
}

void __184__STCoreDataPersistenceSource_saveCommunicationSafetySettingsForDSID_checkForUnsafePhotos_communicationSafetyNotificationEnabled_communicationSafetyAnalyticsEnabled_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) _coreUserForIdentifier:*(a1 + 40) inContext:v3];
  v5 = v4;
  if (v4)
  {
    [v4 setIsCommunicationSafetySendingRestricted:*(a1 + 48)];
    [v5 setIsCommunicationSafetyReceivingRestricted:*(a1 + 48)];
    [v5 setIsCommunicationSafetyNotificationEnabled:*(a1 + 49)];
    [v5 setIsCommunicationSafetyAnalyticsEnabled:*(a1 + 50)];
    v6 = +[STAdminPersistenceController sharedController];
    v10 = 0;
    v7 = [v6 saveContext:v3 error:&v10];
    v8 = v10;

    if ((v7 & 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v8;
      _os_log_impl(&dword_1B831F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Could not save Communication Safety settings changes. Error: %@", buf, 0xCu);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (id)userDataWithIdentifier:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__5;
  v16 = __Block_byref_object_dispose__5;
  v17 = 0;
  v5 = +[STAdminPersistenceController sharedController];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__STCoreDataPersistenceSource_userDataWithIdentifier___block_invoke;
  v9[3] = &unk_1E7CE7440;
  v9[4] = self;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [v5 performBackgroundTaskAndWait:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __54__STCoreDataPersistenceSource_userDataWithIdentifier___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _coreUserForIdentifier:*(a1 + 40) inContext:a2];
  if (v3)
  {
    v22 = v3;
    v4 = [STUserData alloc];
    v20 = *(a1 + 40);
    v21 = v4;
    v19 = [v22 givenName];
    v18 = [v22 isParent];
    v5 = [v22 localUserDeviceState];
    v6 = [v22 effectivePasscode];
    v7 = [v6 length] != 0;
    v8 = [v22 screenTimeEnabled];
    v9 = [v22 syncingEnabled];
    v10 = [v22 isCommunicationSafetySendingRestricted];
    v11 = [v22 isCommunicationSafetyNotificationEnabled];
    v12 = [v22 isCommunicationSafetyAnalyticsEnabled];
    v13 = [v22 familyMemberType];
    BYTE3(v17) = v12;
    BYTE2(v17) = v11;
    BYTE1(v17) = v10;
    LOBYTE(v17) = v9;
    v14 = [STUserData initWithIdentifier:v21 givenName:"initWithIdentifier:givenName:isParent:isRemote:hasPasscode:screenTimeEnabled:syncingEnabled:checkForUnsafePhotos:communicationSafetyNotificationEnabled:communicationSafetyAnalyticsEnabled:familyMemberType:" isParent:v20 isRemote:v19 hasPasscode:v18 screenTimeEnabled:v5 == 0 syncingEnabled:v7 checkForUnsafePhotos:v8 communicationSafetyNotificationEnabled:v17 communicationSafetyAnalyticsEnabled:v13 familyMemberType:?];
    v15 = *(*(a1 + 48) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    v3 = v22;
  }
}

- (id)_coreUserForIdentifier:(id)a3 inContext:(id)a4
{
  v4 = a3;
  v5 = objc_opt_new();
  [v5 setNumberStyle:1];
  v6 = [v5 numberFromString:v4];

  v7 = [STCoreUser fetchRequestForUsersWithDSID:v6];
  v8 = [v7 execute:0];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 firstObject];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end