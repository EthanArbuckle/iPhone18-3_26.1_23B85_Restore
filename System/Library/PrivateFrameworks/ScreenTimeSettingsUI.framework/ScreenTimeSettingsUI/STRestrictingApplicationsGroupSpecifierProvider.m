@interface STRestrictingApplicationsGroupSpecifierProvider
- (STRestrictingApplicationsGroupSpecifierProvider)init;
- (id)getCurrentAuthorizationRecords;
- (id)isFamilyControlsEnabled:(id)a3;
- (int64_t)getAuthorizationStatusForRecordIdentifier:(id)a3 fromRecords:(id)a4;
- (void)_updateAuthorizationRecords;
- (void)_updateSpecifiersWithAuthorizationRecords;
- (void)dealloc;
- (void)setFamilyControlsEnabled:(id)a3 forSpecifier:(id)a4;
@end

@implementation STRestrictingApplicationsGroupSpecifierProvider

- (STRestrictingApplicationsGroupSpecifierProvider)init
{
  v23.receiver = self;
  v23.super_class = STRestrictingApplicationsGroupSpecifierProvider;
  v2 = [(STGroupSpecifierProvider *)&v23 init];
  v3 = dispatch_queue_create("com.apple.ScreenTime.STRestrictingApplications.recordQueue", 0);
  recordQueue = v2->_recordQueue;
  v2->_recordQueue = v3;

  authorizationRecords = v2->_authorizationRecords;
  v2->_authorizationRecords = MEMORY[0x277CBEBF8];

  [(STGroupSpecifierProvider *)v2 setIsHidden:1];
  v6 = +[STScreenTimeSettingsUIBundle bundle];
  v7 = [v6 localizedStringForKey:@"STAccessListTitle" value:&stru_28766E5A8 table:0];
  v8 = [MEMORY[0x277D3FAD8] groupSpecifierWithName:v7];
  v9 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"STAccessListDetail"];
  v10 = [v6 localizedStringForKey:v9 value:&stru_28766E5A8 table:0];
  [v8 setObject:v10 forKeyedSubscript:*MEMORY[0x277D3FF88]];

  [v8 setTarget:v2];
  [(STGroupSpecifierProvider *)v2 setGroupSpecifier:v8];
  v11 = [*MEMORY[0x277D083D0] cStringUsingEncoding:4];
  v12 = v2->_recordQueue;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __55__STRestrictingApplicationsGroupSpecifierProvider_init__block_invoke;
  handler[3] = &unk_279B7E7F0;
  v13 = v2;
  v22 = v13;
  notify_register_dispatch(v11, &v2->_recordChangedNotificationToken, v12, handler);
  v14 = v2->_recordQueue;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __55__STRestrictingApplicationsGroupSpecifierProvider_init__block_invoke_2;
  v19[3] = &unk_279B7C998;
  v15 = v13;
  v20 = v15;
  dispatch_async(v14, v19);
  v16 = v20;
  v17 = v15;

  return v17;
}

- (void)dealloc
{
  notify_cancel(self->_recordChangedNotificationToken);
  v3.receiver = self;
  v3.super_class = STRestrictingApplicationsGroupSpecifierProvider;
  [(STGroupSpecifierProvider *)&v3 dealloc];
}

- (id)getCurrentAuthorizationRecords
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__8;
  v10 = __Block_byref_object_dispose__8;
  v11 = 0;
  recordQueue = self->_recordQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __81__STRestrictingApplicationsGroupSpecifierProvider_getCurrentAuthorizationRecords__block_invoke;
  v5[3] = &unk_279B7E818;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(recordQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __81__STRestrictingApplicationsGroupSpecifierProvider_getCurrentAuthorizationRecords__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 56) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (void)_updateAuthorizationRecords
{
  v3 = [MEMORY[0x277D083D8] sharedCenter];
  v4 = [v3 authorizationRecords];
  authorizationRecords = self->_authorizationRecords;
  self->_authorizationRecords = v4;

  v6 = [MEMORY[0x277CCABD8] mainQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __78__STRestrictingApplicationsGroupSpecifierProvider__updateAuthorizationRecords__block_invoke;
  v7[3] = &unk_279B7C998;
  v7[4] = self;
  [v6 addOperationWithBlock:v7];
}

- (void)_updateSpecifiersWithAuthorizationRecords
{
  v67 = *MEMORY[0x277D85DE8];
  v3 = [(STRestrictingApplicationsGroupSpecifierProvider *)self getCurrentAuthorizationRecords];
  if ([v3 count])
  {
    v4 = objc_opt_new();
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v41 = v3;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v59 objects:v66 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v60;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v60 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v59 + 1) + 8 * i);
          v11 = [v10 recordIdentifier];
          [v4 setObject:v10 forKeyedSubscript:v11];
        }

        v7 = [v5 countByEnumeratingWithState:&v59 objects:v66 count:16];
      }

      while (v7);
    }

    v12 = self;
    v13 = [(STGroupSpecifierProvider *)self mutableSpecifiers];
    v44 = objc_opt_new();
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v14 = v13;
    v15 = [v14 countByEnumeratingWithState:&v55 objects:v65 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v56;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v56 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v55 + 1) + 8 * j);
          v20 = [v19 objectForKeyedSubscript:@"RecordID"];
          v21 = [v4 objectForKeyedSubscript:v20];

          if (v21)
          {
            [(STGroupSpecifierProvider *)v12 reloadSpecifier:v19 animated:1];
            [v4 setObject:0 forKeyedSubscript:v20];
          }

          else
          {
            [v44 addObject:v19];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v55 objects:v65 count:16];
      }

      while (v16);
    }

    v46 = v12;

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v22 = v44;
    v23 = [v22 countByEnumeratingWithState:&v51 objects:v64 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v52;
      do
      {
        for (k = 0; k != v24; ++k)
        {
          if (*v52 != v25)
          {
            objc_enumerationMutation(v22);
          }

          [v14 removeObject:*(*(&v51 + 1) + 8 * k)];
        }

        v24 = [v22 countByEnumeratingWithState:&v51 objects:v64 count:16];
      }

      while (v24);
    }

    v40 = v22;

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    obj = [v4 allValues];
    v27 = [obj countByEnumeratingWithState:&v47 objects:v63 count:16];
    if (v27)
    {
      v28 = v27;
      v45 = *v48;
      v43 = *MEMORY[0x277D3FFC0];
      do
      {
        for (m = 0; m != v28; ++m)
        {
          if (*v48 != v45)
          {
            objc_enumerationMutation(obj);
          }

          v30 = *(*(&v47 + 1) + 8 * m);
          v31 = [v30 bundleIdentifier];
          v32 = [v30 recordIdentifier];
          v33 = [MEMORY[0x277D4B8C0] sharedCache];
          v34 = [v33 appInfoForBundleIdentifier:v31];
          v35 = [v34 displayName];

          v36 = [MEMORY[0x277D4BD98] sharedCache];
          v37 = [v36 imageForBundleIdentifier:v31];

          v38 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v35 target:v46 set:sel_setFamilyControlsEnabled_forSpecifier_ get:sel_isFamilyControlsEnabled_ detail:0 cell:6 edit:{0, v40}];
          [v38 setObject:v37 forKeyedSubscript:v43];
          [v38 setObject:v32 forKeyedSubscript:@"RecordID"];
          [v14 addObject:v38];
        }

        v28 = [obj countByEnumeratingWithState:&v47 objects:v63 count:16];
      }

      while (v28);
    }

    -[STGroupSpecifierProvider setIsHidden:](v46, "setIsHidden:", [v14 count] == 0);
    v3 = v41;
  }

  else
  {
    v39 = [(STGroupSpecifierProvider *)self mutableSpecifiers];
    [v39 removeAllObjects];

    [(STGroupSpecifierProvider *)self setIsHidden:1];
  }
}

- (int64_t)getAuthorizationStatusForRecordIdentifier:(id)a3 fromRecords:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = a4;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [v11 recordIdentifier];
        v13 = [v12 UUIDString];
        v14 = [v5 UUIDString];
        v15 = [v13 isEqualToString:v14];

        if (v15)
        {
          v16 = [v11 status];
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v16 = 1;
LABEL_11:

  return v16;
}

- (void)setFamilyControlsEnabled:(id)a3 forSpecifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(STRestrictingApplicationsGroupSpecifierProvider *)self getCurrentAuthorizationRecords];
  v9 = [v7 objectForKeyedSubscript:@"RecordID"];
  v10 = [(STRestrictingApplicationsGroupSpecifierProvider *)self getAuthorizationStatusForRecordIdentifier:v9 fromRecords:v8];

  if (([v6 BOOLValue] & 1) == 0 && v10 == 2)
  {
    v11 = [MEMORY[0x277D083D8] sharedCenter];
    v12 = [v7 objectForKeyedSubscript:@"RecordID"];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __89__STRestrictingApplicationsGroupSpecifierProvider_setFamilyControlsEnabled_forSpecifier___block_invoke;
    v16[3] = &unk_279B7D7A8;
    v16[4] = self;
    v13 = &v17;
    v17 = v7;
    [v11 resetAuthorizationForRecordIdentifier:v12 completionHandler:v16];
LABEL_7:

    goto LABEL_8;
  }

  if ([v6 BOOLValue] && v10 <= 1)
  {
    v11 = [MEMORY[0x277D083D8] sharedCenter];
    v12 = [v7 objectForKeyedSubscript:@"RecordID"];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __89__STRestrictingApplicationsGroupSpecifierProvider_setFamilyControlsEnabled_forSpecifier___block_invoke_29;
    v14[3] = &unk_279B7D7A8;
    v14[4] = self;
    v13 = &v15;
    v15 = v7;
    [v11 requestAuthorizationForRecordIdentifier:v12 completionHandler:v14];
    goto LABEL_7;
  }

LABEL_8:
}

void __89__STRestrictingApplicationsGroupSpecifierProvider_setFamilyControlsEnabled_forSpecifier___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = [MEMORY[0x277CCABD8] mainQueue];
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __89__STRestrictingApplicationsGroupSpecifierProvider_setFamilyControlsEnabled_forSpecifier___block_invoke_2;
    v12 = &unk_279B7CAE0;
    v7 = *(a1 + 40);
    v13 = *(a1 + 32);
    v14 = v7;
    [v6 addOperationWithBlock:&v9];

    v8 = [STUILog accessList:v9];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __89__STRestrictingApplicationsGroupSpecifierProvider_setFamilyControlsEnabled_forSpecifier___block_invoke_cold_1(v5, v8);
    }
  }
}

void __89__STRestrictingApplicationsGroupSpecifierProvider_setFamilyControlsEnabled_forSpecifier___block_invoke_29(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = [MEMORY[0x277CCABD8] mainQueue];
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __89__STRestrictingApplicationsGroupSpecifierProvider_setFamilyControlsEnabled_forSpecifier___block_invoke_2_30;
    v12 = &unk_279B7CAE0;
    v7 = *(a1 + 40);
    v13 = *(a1 + 32);
    v14 = v7;
    [v6 addOperationWithBlock:&v9];

    v8 = [STUILog accessList:v9];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __89__STRestrictingApplicationsGroupSpecifierProvider_setFamilyControlsEnabled_forSpecifier___block_invoke_29_cold_1(v5, v8);
    }
  }
}

- (id)isFamilyControlsEnabled:(id)a3
{
  v4 = a3;
  v5 = [(STRestrictingApplicationsGroupSpecifierProvider *)self getCurrentAuthorizationRecords];
  v6 = [v4 objectForKeyedSubscript:@"RecordID"];

  if ([(STRestrictingApplicationsGroupSpecifierProvider *)self getAuthorizationStatusForRecordIdentifier:v6 fromRecords:v5]== 2)
  {
    v7 = MEMORY[0x277CBEC38];
  }

  else
  {
    v7 = MEMORY[0x277CBEC28];
  }

  v8 = v7;

  return v7;
}

void __89__STRestrictingApplicationsGroupSpecifierProvider_setFamilyControlsEnabled_forSpecifier___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_264BA2000, a2, OS_LOG_TYPE_ERROR, "Authorization's reset failed: %{public}@", &v2, 0xCu);
}

void __89__STRestrictingApplicationsGroupSpecifierProvider_setFamilyControlsEnabled_forSpecifier___block_invoke_29_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_264BA2000, a2, OS_LOG_TYPE_ERROR, "Request for authorization failed: %{public}@", &v2, 0xCu);
}

@end