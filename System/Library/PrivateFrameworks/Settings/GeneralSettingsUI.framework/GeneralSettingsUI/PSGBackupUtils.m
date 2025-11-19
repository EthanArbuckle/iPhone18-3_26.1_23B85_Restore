@interface PSGBackupUtils
+ (BOOL)hasValidDisplayNameOfDomain:(id)a3;
+ (BOOL)isDomainNameIgnored:(id)a3;
+ (BOOL)isDomainWhitelisted:(id)a3;
+ (BOOL)isiCloudPhotosEnabled;
+ (id)alertBodyForBackupDisabledAppsInfo:(id)a3 ofType:(unint64_t)a4;
+ (id)alertTitleForBackupDisabledAppsInfo:(id)a3;
+ (id)bundleIdForDomainInfo:(id)a3;
+ (id)displayNameForDomainInfo:(id)a3;
+ (void)configureAlertMessageOfType:(unint64_t)a3 AndTitleForBackUpDisabledApps:(id)a4 completion:(id)a5;
+ (void)fetchBackupDisabledAppsWithBackupManager:(id)a3 completion:(id)a4;
@end

@implementation PSGBackupUtils

+ (void)configureAlertMessageOfType:(unint64_t)a3 AndTitleForBackUpDisabledApps:(id)a4 completion:(id)a5
{
  v11 = a4;
  v8 = a5;
  if ([v11 backupDisabledAppCount] || objc_msgSend(v11, "includePhoto"))
  {
    v9 = [a1 alertTitleForBackupDisabledAppsInfo:v11];
    v10 = [a1 alertBodyForBackupDisabledAppsInfo:v11 ofType:a3];
    v8[2](v8, 1, v9, v10);
  }

  else
  {
    v8[2](v8, 0, 0, 0);
  }
}

+ (id)alertBodyForBackupDisabledAppsInfo:(id)a3 ofType:(unint64_t)a4
{
  v5 = a3;
  v6 = [v5 backupDisabledAppCount];
  v7 = @"_ERASE";
  if (!a4)
  {
    v7 = @"_BACKUP";
  }

  v8 = v7;
  v9 = [v5 backupDisabledAppsForDisplay];
  v10 = [v5 includePhoto];

  if (v10)
  {
    if (v6 != 2)
    {
      v11 = v6 - 1;
      if (v6 == 1)
      {
        v14 = MEMORY[0x277CCACA8];
        v12 = [@"PHOTO_AND_ONE_APP_BACK_UP_DISABLED_MESSAGE" stringByAppendingString:v8];
        v15 = PSG_LocalizedStringForBackupAlert(v12);
        v20 = [v9 firstObject];
        v16 = v20;
LABEL_19:
        v13 = [v14 localizedStringWithFormat:v15, v20, v23, v24];
        goto LABEL_20;
      }

      if (!v6)
      {
        v12 = [@"PHOTO_BACK_UP_DISABLED_ONLY_MESSAGE" stringByAppendingString:v8];
        v13 = PSG_LocalizedStringForBackupAlert(v12);
        goto LABEL_21;
      }

      v14 = MEMORY[0x277CCACA8];
      v19 = @"PHOTO_AND_MORE_THAN_TWO_APPS_BACK_UP_DISABLED_MESSAGE";
LABEL_18:
      v12 = [(__CFString *)v19 stringByAppendingString:v8];
      v15 = PSG_LocalizedStringForBackupAlert(v12);
      v20 = [v9 objectAtIndexedSubscript:0];
      v16 = v20;
      v23 = v11;
      v24 = v11;
      goto LABEL_19;
    }

    v14 = MEMORY[0x277CCACA8];
    v18 = @"PHOTO_AND_TWO_APPS_BACK_UP_DISABLED_MESSAGE";
    goto LABEL_15;
  }

  v14 = MEMORY[0x277CCACA8];
  if (v6 == 2)
  {
    v18 = @"TWO_APPS_BACK_UP_DISABLED_MESSAGE";
LABEL_15:
    v12 = [(__CFString *)v18 stringByAppendingString:v8];
    v15 = PSG_LocalizedStringForBackupAlert(v12);
    v16 = [v9 objectAtIndexedSubscript:0];
    v17 = [v9 objectAtIndexedSubscript:1];
    goto LABEL_16;
  }

  v11 = v6 - 1;
  if (v6 != 1)
  {
    v19 = @"TWO_MORE_APPS_BACK_UP_DISABLED_MESSAGE";
    goto LABEL_18;
  }

  v12 = [@"SINGAL_APP_BACK_UP_DISABLED_MESSAGE" stringByAppendingString:v8];
  v15 = PSG_LocalizedStringForBackupAlert(v12);
  v16 = [v9 firstObject];
  v17 = [v9 firstObject];
LABEL_16:
  v21 = v17;
  v13 = [v14 localizedStringWithFormat:v15, v16, v17];

LABEL_20:
LABEL_21:

  return v13;
}

+ (id)alertTitleForBackupDisabledAppsInfo:(id)a3
{
  v3 = a3;
  if ([v3 includePhoto])
  {
    v4 = [v3 backupDisabledAppCount];
    if (v4 > 2)
    {
      v5 = @"PHOTO_AND_OTHER_APPS_BACK_UP_DISABLED_TITLE";
    }

    else
    {
      v5 = off_2783256E8[v4];
    }
  }

  else
  {
    v5 = @"APP_BACK_UP_DISABLED_TITLE";
  }

  v6 = PSG_LocalizedStringForBackupAlert(v5);

  return v6;
}

+ (void)fetchBackupDisabledAppsWithBackupManager:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  if (v6)
  {
    v9 = dispatch_get_global_queue(2, 0);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __70__PSGBackupUtils_fetchBackupDisabledAppsWithBackupManager_completion___block_invoke;
    v10[3] = &unk_2783256C8;
    v11 = v6;
    v14 = a1;
    v12 = v8;
    v13 = v7;
    dispatch_async(v9, v10);
  }

  else
  {
    (*(v7 + 2))(v7, v8);
  }
}

void __70__PSGBackupUtils_fetchBackupDisabledAppsWithBackupManager_completion___block_invoke(id *a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = [a1[4] disabledDomainInfos];
  v19 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    v8 = *v24;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        v11 = a1[7];
        v12 = [v10 bundleID];
        LOBYTE(v11) = [v11 shouldIgnoreBundleId:v12];

        if ((v11 & 1) == 0)
        {
          if ([v10 isCameraRollDomain])
          {
            v6 |= [a1[7] isiCloudPhotosEnabled] ^ 1;
          }

          else if (v7 > 1 || ([a1[7] isDomainNameIgnored:v10] & 1) != 0)
          {
            v7 += [a1[7] hasValidDisplayNameOfDomain:v10];
          }

          else
          {
            v13 = [a1[7] displayNameForDomainInfo:v10];
            if (v13)
            {
              [v19 addObject:v13];
              ++v7;
            }
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v5);
  }

  else
  {
    LOBYTE(v6) = 0;
    v7 = 0;
  }

  [a1[5] setBackupDisabledAppCount:v7];
  [a1[5] setBackupDisabledAppsForDisplay:v19];
  [a1[5] setIncludePhoto:v6 & 1];
  v14 = _PSGLoggingFacility();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = a1[7];
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    *buf = 138543618;
    v28 = v17;
    v29 = 1024;
    v30 = v7;
    _os_log_impl(&dword_21CF20000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: Backup disabled app count: %d", buf, 0x12u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__PSGBackupUtils_fetchBackupDisabledAppsWithBackupManager_completion___block_invoke_63;
  block[3] = &unk_2783256A0;
  v22 = a1[6];
  v21 = a1[5];
  dispatch_async(MEMORY[0x277D85CD0], block);

  v18 = *MEMORY[0x277D85DE8];
}

+ (id)displayNameForDomainInfo:(id)a3
{
  v4 = a3;
  if ([v4 isCameraRollDomain])
  {
    v5 = @"PHOTO_LIBRARY";
LABEL_7:
    v10 = PSG_LocalizedStringForBackupInfo(v5);
    goto LABEL_8;
  }

  v6 = [v4 domainName];
  v7 = [v6 isEqualToString:@"KeyboardDomain"];

  if (v7)
  {
    v5 = @"CJ_KEYBOARD_DATA";
    goto LABEL_7;
  }

  v8 = [v4 domainName];
  v9 = [v8 isEqualToString:@"HealthDomain"];

  if (v9)
  {
    NSLog(&cfstr_FoundHealthDom.isa);
    v5 = @"HEALTH_DATA";
    goto LABEL_7;
  }

  if (([v4 isAppDomain] & 1) != 0 || objc_msgSend(a1, "isDomainWhitelisted:", v4))
  {
    v12 = [v4 bundleID];
    v13 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:v12];
    v14 = v13;
    if (v13 && ([v13 appState], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "isInstalled"), v15, v16))
    {
      v10 = [v14 localizedName];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

LABEL_8:

  return v10;
}

+ (BOOL)hasValidDisplayNameOfDomain:(id)a3
{
  v4 = a3;
  v5 = [v4 domainName];
  if ([v5 isEqualToString:@"BooksDomain"])
  {
    v6 = 0;
  }

  else
  {
    v7 = [v4 domainName];
    v8 = [v7 isEqualToString:@"AppDomain-com.apple.Health"];

    if (v8)
    {
      v6 = 0;
      goto LABEL_8;
    }

    if ([v4 isCameraRollDomain])
    {
      v6 = 1;
      goto LABEL_8;
    }

    v5 = [v4 domainName];
    if ([v5 isEqualToString:@"KeyboardDomain"])
    {
      v6 = 1;
    }

    else
    {
      v10 = [v4 domainName];
      if ([v10 isEqualToString:@"HealthDomain"] & 1) != 0 || (objc_msgSend(v4, "isAppDomain"))
      {
        v6 = 1;
      }

      else
      {
        v6 = [a1 isDomainWhitelisted:v4];
      }
    }
  }

LABEL_8:
  return v6;
}

+ (BOOL)isiCloudPhotosEnabled
{
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [v2 fileExistsAtPath:@"/var/mobile/Media/PhotoData/CPL/initialsync_marker"];

  return v3;
}

+ (id)bundleIdForDomainInfo:(id)a3
{
  v4 = a3;
  if ([v4 isCameraRollDomain])
  {
    v5 = @"com.apple.camera";
  }

  else
  {
    v6 = [v4 domainName];
    v7 = [v6 isEqualToString:@"KeyboardDomain"];

    if (v7)
    {
      v5 = @"com.apple.keyboard";
    }

    else
    {
      v8 = [v4 domainName];
      v9 = [v8 isEqualToString:@"HealthDomain"];

      if (v9)
      {
        NSLog(&cfstr_FoundHealthDom.isa);
        v5 = @"com.apple.Health";
      }

      else if (([v4 isAppDomain] & 1) != 0 || objc_msgSend(a1, "isDomainWhitelisted:", v4))
      {
        v5 = [v4 bundleID];
      }

      else
      {
        v5 = 0;
      }
    }
  }

  return v5;
}

+ (BOOL)isDomainWhitelisted:(id)a3
{
  v3 = isDomainWhitelisted__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    +[PSGBackupUtils isDomainWhitelisted:];
  }

  v5 = isDomainWhitelisted__whitelist;
  v6 = [v4 bundleID];

  v7 = [v5 containsObject:v6];
  return v7;
}

void __38__PSGBackupUtils_isDomainWhitelisted___block_invoke()
{
  v5[4] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D3FDE0];
  v5[0] = *MEMORY[0x277D3FDE8];
  v5[1] = v0;
  v1 = *MEMORY[0x277D3FDD0];
  v5[2] = *MEMORY[0x277D3FDC8];
  v5[3] = v1;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:4];
  v3 = isDomainWhitelisted__whitelist;
  isDomainWhitelisted__whitelist = v2;

  v4 = *MEMORY[0x277D85DE8];
}

+ (BOOL)isDomainNameIgnored:(id)a3
{
  v3 = [a3 domainName];
  if ([v3 isEqualToString:@"BooksDomain"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"AppDomain-com.apple.Health"];
  }

  return v4;
}

@end