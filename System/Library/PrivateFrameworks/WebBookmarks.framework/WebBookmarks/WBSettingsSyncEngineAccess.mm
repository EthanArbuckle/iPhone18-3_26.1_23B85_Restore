@interface WBSettingsSyncEngineAccess
- (BOOL)_isKnownPerSiteSetting:(id)a3;
- (BOOL)_isShowBackgroundImageEnabled;
- (BOOL)backgroundImageAppearanceIsLight;
- (BOOL)backgroundImageExists;
- (NSArray)syncSettingsUpDictionary;
- (id)_deviceClass;
- (id)_perSitePreferencesStore;
- (id)_startPageSectionOrder;
- (id)startPageSectionsManager;
- (int64_t)_settingForValue:(id)a3;
- (void)_attemptUpdatingSavingPerSiteSettingsWithRecord:(id)a3;
- (void)_didUpdateIOSDefaultBrowserWithRecord:(id)a3;
- (void)_didUpdateStartPageBackgroundImageVisibilityWithRecord:(id)a3;
- (void)_installMobileAssetIfApplicableWithURL:(id)a3;
- (void)_updatePerSiteSettingsWithRecord:(id)a3;
- (void)_updatePerSiteSettingsWithRecord:(id)a3 completionHandler:(id)a4;
- (void)_updateStartPageBackgroundImageWithRecord:(id)a3;
- (void)_updateStartPageCloudTabsConsent:(id)a3;
- (void)_updateStartPageSectionOrder:(id)a3;
- (void)_updateStartPageSectionVisibilityWithIdentifier:(id)a3 record:(id)a4;
- (void)deleteBackgroundImageDirectory;
- (void)didDeleteRemoteRecordWithID:(id)a3;
- (void)didReceiveRemoteCloudSettingsUpdateWithRecord:(id)a3;
@end

@implementation WBSettingsSyncEngineAccess

- (int64_t)_settingForValue:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:*MEMORY[0x277D4A400]])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:*MEMORY[0x277D4A3D0]])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:*MEMORY[0x277D4A3D8]])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:*MEMORY[0x277D4A3E8]])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:*MEMORY[0x277D4A408]])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:*MEMORY[0x277D4A3C8]])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:*MEMORY[0x277D4A3F0]])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:*MEMORY[0x277D4A3C0]])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:*MEMORY[0x277D4A3E0]])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:*MEMORY[0x277D4A3F8]])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:*MEMORY[0x277D4A418]])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:*MEMORY[0x277D4A250]] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x277D4A258]))
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:*MEMORY[0x277D4A410]])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:*MEMORY[0x277D4A3A8]])
  {
    v4 = 14;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)didReceiveRemoteCloudSettingsUpdateWithRecord:(id)a3
{
  v8 = a3;
  if ([(WBSettingsSyncEngineAccess *)self syncEnabled])
  {
    if ([v8 safari_isCloudBackgroundImageRecord] && objc_msgSend(MEMORY[0x277D49A08], "isStartPageSettingSyncEnabled"))
    {
      [(WBSettingsSyncEngineAccess *)self _updateStartPageBackgroundImageWithRecord:v8];
    }

    else if ([v8 safari_isCloudPerSiteSettingRecord] && objc_msgSend(MEMORY[0x277D49A08], "isPerSiteSettingSyncEnabled"))
    {
      [(WBSettingsSyncEngineAccess *)self _updatePerSiteSettingsWithRecord:v8];
    }

    else if ([v8 safari_isCloudSettingRecord] && objc_msgSend(MEMORY[0x277D49A08], "isStartPageSettingSyncEnabled"))
    {
      v4 = [v8 recordID];
      v5 = [v4 recordName];
      v6 = [(WBSettingsSyncEngineAccess *)self _settingForValue:v5];

      v7 = MEMORY[0x277D4A4B0];
      switch(v6)
      {
        case 1:
          [(WBSettingsSyncEngineAccess *)self _updateStartPageSectionOrder:v8];
          break;
        case 2:
          goto LABEL_24;
        case 3:
          v7 = MEMORY[0x277D4A4B8];
          goto LABEL_24;
        case 4:
          v7 = MEMORY[0x277D4A4E0];
          goto LABEL_24;
        case 5:
          v7 = MEMORY[0x277D4A510];
          goto LABEL_24;
        case 6:
          v7 = MEMORY[0x277D4A4A8];
          goto LABEL_24;
        case 7:
          v7 = MEMORY[0x277D4A500];
          goto LABEL_24;
        case 8:
          [(WBSettingsSyncEngineAccess *)self _didUpdateStartPageBackgroundImageVisibilityWithRecord:v8];
          break;
        case 9:
          v7 = MEMORY[0x277D4A4C0];
          goto LABEL_24;
        case 10:
          v7 = MEMORY[0x277D4A508];
          goto LABEL_24;
        case 11:
          v7 = MEMORY[0x277D4A520];
          goto LABEL_24;
        case 12:
          [(WBSettingsSyncEngineAccess *)self _didUpdateIOSDefaultBrowserWithRecord:v8];
          break;
        case 13:
          v7 = MEMORY[0x277D4A518];
LABEL_24:
          [(WBSettingsSyncEngineAccess *)self _updateStartPageSectionVisibilityWithIdentifier:*v7 record:v8];
          break;
        case 14:
          [(WBSettingsSyncEngineAccess *)self _updateStartPageCloudTabsConsent:v8];
          break;
        default:
          break;
      }
    }
  }
}

- (void)didDeleteRemoteRecordWithID:(id)a3
{
  v6 = a3;
  if ([MEMORY[0x277D49A08] isStartPageSettingSyncEnabled])
  {
    v3 = [v6 recordName];
    v4 = [v3 isEqualToString:*MEMORY[0x277D4A360]];

    if (v4)
    {
      v5 = dispatch_get_global_queue(17, 0);
      dispatch_async(v5, &__block_literal_global_0);
    }
  }
}

void __58__WBSettingsSyncEngineAccess_didDeleteRemoteRecordWithID___block_invoke()
{
  v13 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCAA00] defaultManager];
  v1 = [MEMORY[0x277CCAA00] defaultManager];
  v2 = [v1 safari_startPageBackgroundImageFileURLForDefaultProfile];
  v10 = 0;
  v3 = [v0 removeItemAtURL:v2 error:&v10];
  v4 = v10;

  if (v3)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXCloudSettings();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *MEMORY[0x277D4A360];
      *buf = 138543362;
      v12 = v6;
      _os_log_impl(&dword_272C20000, v5, OS_LOG_TYPE_INFO, "[StartPageBackground] %{public}@ was removed in Default Profile successfully.", buf, 0xCu);
    }

    v7 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
    [v7 removeObjectForKey:*MEMORY[0x277D4A268]];

    dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_6);
  }

  else
  {
    v8 = WBS_LOG_CHANNEL_PREFIXCloudSettings();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __58__WBSettingsSyncEngineAccess_didDeleteRemoteRecordWithID___block_invoke_cold_1(v4, v8);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __58__WBSettingsSyncEngineAccess_didDeleteRemoteRecordWithID___block_invoke_4()
{
  v0 = [MEMORY[0x277CCA9A0] defaultCenter];
  [v0 postNotificationName:*MEMORY[0x277D4A368] object:0 userInfo:0 deliverImmediately:1];
}

- (void)_updateStartPageBackgroundImageWithRecord:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"data"];
  v6 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__WBSettingsSyncEngineAccess__updateStartPageBackgroundImageWithRecord___block_invoke;
  block[3] = &unk_279E752A8;
  v10 = v5;
  v11 = v4;
  v12 = self;
  v7 = v4;
  v8 = v5;
  dispatch_async(v6, block);
}

void __72__WBSettingsSyncEngineAccess__updateStartPageBackgroundImageWithRecord___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [*(a1 + 32) fileURL];
  v4 = [v3 path];
  v5 = [v2 isReadableFileAtPath:v4];

  if (v5)
  {
    v6 = [v2 safari_startPageBackgroundImageFileURLForDefaultProfile];
    v7 = [*(a1 + 32) fileURL];
    v19 = 0;
    v8 = [v2 safari_replaceItemAtURL:v6 withItemFromURL:v7 error:&v19];
    v9 = v19;

    if ((v8 & 1) == 0)
    {
      v10 = WBS_LOG_CHANNEL_PREFIXCloudSettings();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = [v9 safari_privacyPreservingDescription];
        __72__WBSettingsSyncEngineAccess__updateStartPageBackgroundImageWithRecord___block_invoke_cold_1(v11, buf, v10);
      }
    }

    v12 = [*(a1 + 40) safari_encryptedValues];
    v13 = [v12 objectForKeyedSubscript:@"isLightAppearance"];

    v14 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
    if ([v13 BOOLValue])
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }

    [v14 setInteger:v15 forKey:*MEMORY[0x277D4A268]];

    dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_16);
    v16 = *(a1 + 48);
    v17 = [*(a1 + 32) fileURL];
    [v16 _installMobileAssetIfApplicableWithURL:v17];
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __72__WBSettingsSyncEngineAccess__updateStartPageBackgroundImageWithRecord___block_invoke_14()
{
  v0 = [MEMORY[0x277CCA9A0] defaultCenter];
  [v0 postNotificationName:*MEMORY[0x277D4A370] object:0 userInfo:0 deliverImmediately:1];
}

- (id)startPageSectionsManager
{
  lazyStartPageSectionsManager = self->_lazyStartPageSectionsManager;
  if (!lazyStartPageSectionsManager)
  {
    v4 = objc_alloc_init(MEMORY[0x277D4A080]);
    v5 = self->_lazyStartPageSectionsManager;
    self->_lazyStartPageSectionsManager = v4;

    lazyStartPageSectionsManager = self->_lazyStartPageSectionsManager;
  }

  return lazyStartPageSectionsManager;
}

- (void)_updateStartPageSectionVisibilityWithIdentifier:(id)a3 record:(id)a4
{
  v10 = a3;
  v6 = [a4 safari_encryptedValues];
  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277D4A158]];

  if (v7)
  {
    if ([v10 isEqualToString:*MEMORY[0x277D4A520]])
    {
      v8 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
      v9 = [v7 BOOLValue];
      [v8 setBool:v9 forKey:*MEMORY[0x277D4A490]];
    }

    else
    {
      v8 = [(WBSettingsSyncEngineAccess *)self startPageSectionsManager];
      [v8 setSectionIdentifier:v10 enabled:{objc_msgSend(v7, "BOOLValue")}];
    }
  }
}

- (void)_installMobileAssetIfApplicableWithURL:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = CGImageSourceCreateWithURL(v4, 0);
  v6 = v5;
  if (v5)
  {
    v7 = CGImageSourceCopyMetadataAtIndex(v5, 0, 0);
    v8 = v7;
    if (v7)
    {
      v9 = CGImageMetadataCopyTagWithPath(v7, 0, @"safari:fileName");
      v10 = v9;
      if (v9)
      {
        v11 = CGImageMetadataTagCopyValue(v9);
        CFRelease(v10);
      }

      else
      {
        v11 = 0;
      }

      CFRelease(v8);
    }

    else
    {
      v11 = 0;
    }

    CFRelease(v6);
    if (v11)
    {
      v12 = [MEMORY[0x277CCAA00] defaultManager];
      v13 = [v12 safari_startPageBackgroundImageMobileAssetFolderURL];
      v14 = [v13 URLByAppendingPathComponent:v11];

      v22 = 0;
      v15 = [v12 safari_replaceItemAtURL:v14 withItemFromURL:v4 error:&v22];
      v16 = v22;
      if ((v15 & 1) == 0)
      {
        v17 = WBS_LOG_CHANNEL_PREFIXCloudSettings();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = [v16 safari_privacyPreservingDescription];
          [(WBSettingsSyncEngineAccess *)v18 _installMobileAssetIfApplicableWithURL:buf, v17];
        }
      }

      v19 = [MEMORY[0x277CCAB98] defaultCenter];
      v23 = @"FileName";
      v24 = v11;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      [v19 postNotificationName:@"WBSBackgroundImageMobileAssetDidInstallBackgroundImage" object:self userInfo:v20];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_didUpdateStartPageBackgroundImageVisibilityWithRecord:(id)a3
{
  v8 = a3;
  v3 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v4 = [v8 safari_encryptedValues];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D4A158]];

  v6 = *MEMORY[0x277D4A478];
  v7 = [v3 safari_BOOLForKey:*MEMORY[0x277D4A478] defaultValue:1];
  if (v7 != [v5 BOOLValue])
  {
    [v3 setBool:objc_msgSend(v5 forKey:{"BOOLValue"), v6}];
  }
}

- (void)_didUpdateIOSDefaultBrowserWithRecord:(id)a3
{
  v11 = a3;
  v3 = [v11 safari_encryptedValues];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277D4A158]];

  if ([v4 intValue])
  {
    v5 = [v11 recordID];
    v6 = [v5 recordName];

    v7 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
    v8 = [v7 safari_numberForKey:v6];
    v9 = [v8 intValue];
    v10 = [v4 intValue];

    if (v9 != v10)
    {
      [v7 setInteger:objc_msgSend(v4 forKey:{"intValue"), v6}];
    }
  }
}

- (id)_perSitePreferencesStore
{
  if ([WBSettingsSyncEngineAccess _perSitePreferencesStore]::once != -1)
  {
    [WBSettingsSyncEngineAccess _perSitePreferencesStore];
  }

  v3 = [WBSettingsSyncEngineAccess _perSitePreferencesStore]::perSitePreferencesStore;

  return v3;
}

void __54__WBSettingsSyncEngineAccess__perSitePreferencesStore__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277D49FF0]);
  v3 = [MEMORY[0x277D49FF0] defaultDatabaseURL];
  v1 = [v0 initWithDatabaseURL:?];
  v2 = [WBSettingsSyncEngineAccess _perSitePreferencesStore]::perSitePreferencesStore;
  [WBSettingsSyncEngineAccess _perSitePreferencesStore]::perSitePreferencesStore = v1;
}

- (BOOL)_isKnownPerSiteSetting:(id)a3
{
  v3 = a3;
  if ([WBSettingsSyncEngineAccess _isKnownPerSiteSetting:]::once != -1)
  {
    [WBSettingsSyncEngineAccess _isKnownPerSiteSetting:];
  }

  v4 = [-[WBSettingsSyncEngineAccess _isKnownPerSiteSetting:]::knownPerSiteSettings containsObject:v3];

  return v4;
}

void __53__WBSettingsSyncEngineAccess__isKnownPerSiteSetting___block_invoke()
{
  v7[5] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v1 = *MEMORY[0x277D4A330];
  v7[0] = *MEMORY[0x277D4A310];
  v7[1] = v1;
  v2 = *MEMORY[0x277D4A318];
  v7[2] = *MEMORY[0x277D4A328];
  v7[3] = v2;
  v7[4] = *MEMORY[0x277D4A320];
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:5];
  v4 = [v0 setWithArray:v3];
  v5 = [WBSettingsSyncEngineAccess _isKnownPerSiteSetting:]::knownPerSiteSettings;
  [WBSettingsSyncEngineAccess _isKnownPerSiteSetting:]::knownPerSiteSettings = v4;

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_updatePerSiteSettingsWithRecord:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = WBS_LOG_CHANNEL_PREFIXCloudSettings();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [WBSettingsSyncEngineAccess _updatePerSiteSettingsWithRecord:];
  }

  v6 = [v4 safari_encryptedValues];
  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277D4A138]];

  if (v7 && ![(WBSettingsSyncEngineAccess *)self _isKnownPerSiteSetting:v7])
  {
    v12 = WBS_LOG_CHANNEL_PREFIXCloudSettings();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v15 = 138543362;
      v16 = v7;
      _os_log_impl(&dword_272C20000, v12, OS_LOG_TYPE_INFO, "Received a %{public}@ Per-Site Setting from CloudKit that is unrecognized to this device.", &v15, 0xCu);
    }
  }

  else
  {
    if (([v7 isEqualToString:*MEMORY[0x277D4A318]] & 1) == 0 && !objc_msgSend(v7, "isEqualToString:", *MEMORY[0x277D4A328]))
    {
      goto LABEL_9;
    }

    v8 = [v4 safari_encryptedValues];
    v9 = [v8 objectForKeyedSubscript:*MEMORY[0x277D4A128]];

    v10 = [(WBSettingsSyncEngineAccess *)self _deviceClass];
    v11 = [v10 isEqualToString:v9];

    if (v11)
    {

LABEL_9:
      [(WBSettingsSyncEngineAccess *)self _attemptUpdatingSavingPerSiteSettingsWithRecord:v4];
      goto LABEL_15;
    }

    v13 = WBS_LOG_CHANNEL_PREFIXCloudSettings();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v15 = 138543362;
      v16 = v7;
      _os_log_impl(&dword_272C20000, v13, OS_LOG_TYPE_INFO, "Received a %{public}@ Per-Site Setting from CloudKit that is not applicable to this device.", &v15, 0xCu);
    }
  }

LABEL_15:

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_attemptUpdatingSavingPerSiteSettingsWithRecord:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __78__WBSettingsSyncEngineAccess__attemptUpdatingSavingPerSiteSettingsWithRecord___block_invoke;
  v6[3] = &unk_279E75320;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(WBSettingsSyncEngineAccess *)self _updatePerSiteSettingsWithRecord:v5 completionHandler:v6];
}

void __78__WBSettingsSyncEngineAccess__attemptUpdatingSavingPerSiteSettingsWithRecord___block_invoke(uint64_t a1, int a2)
{
  v4 = WBS_LOG_CHANNEL_PREFIXCloudSettings();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (a2)
  {
    if (v5)
    {
      __78__WBSettingsSyncEngineAccess__attemptUpdatingSavingPerSiteSettingsWithRecord___block_invoke_cold_3();
    }

    v6 = [MEMORY[0x277CCA9A0] defaultCenter];
    [v6 postNotificationName:*MEMORY[0x277D4A378] object:0];

    v7 = [*(a1 + 32) _perSitePreferencesStore];
    v8 = *(a1 + 40);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __78__WBSettingsSyncEngineAccess__attemptUpdatingSavingPerSiteSettingsWithRecord___block_invoke_33;
    v16[3] = &unk_279E752D0;
    v17 = v8;
    [v7 savePerSiteSettingCloudKitRecordToDisk:v17 completionHandler:v16];

    v9 = v17;
  }

  else
  {
    if (v5)
    {
      __78__WBSettingsSyncEngineAccess__attemptUpdatingSavingPerSiteSettingsWithRecord___block_invoke_cold_1();
    }

    v10 = WBS_LOG_CHANNEL_PREFIXCloudSettings();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __78__WBSettingsSyncEngineAccess__attemptUpdatingSavingPerSiteSettingsWithRecord___block_invoke_cold_2();
    }

    v11 = MEMORY[0x277CBEBB8];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __78__WBSettingsSyncEngineAccess__attemptUpdatingSavingPerSiteSettingsWithRecord___block_invoke_36;
    v14[3] = &unk_279E752F8;
    v12 = *(a1 + 40);
    v14[4] = *(a1 + 32);
    v15 = v12;
    v13 = [v11 scheduledTimerWithTimeInterval:0 repeats:v14 block:30.0];
    v9 = v15;
  }
}

void __78__WBSettingsSyncEngineAccess__attemptUpdatingSavingPerSiteSettingsWithRecord___block_invoke_33(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = WBS_LOG_CHANNEL_PREFIXCloudSettings();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [*(a1 + 32) recordID];
    v6 = [v5 recordName];
    v7 = @"NO";
    if (a2)
    {
      v7 = @"YES";
    }

    v8 = v7;
    v10 = 138543618;
    v11 = v6;
    v12 = 2114;
    v13 = v8;
    _os_log_impl(&dword_272C20000, v4, OS_LOG_TYPE_INFO, "Save with record name %{public}@ in WBSPerSitePreferencesSQLiteStore did finish with success: %{public}@", &v10, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)_deviceClass
{
  v2 = [MEMORY[0x277D499F0] currentDevice];
  v3 = [v2 deviceClass];

  v4 = @"UndefinedDeviceClass";
  if (v3 == 3)
  {
    v4 = @"iPad";
  }

  if (v3 == 1)
  {
    return @"iPhone";
  }

  else
  {
    return v4;
  }
}

- (void)_updatePerSiteSettingsWithRecord:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 safari_encryptedValues];
  v9 = [v8 objectForKeyedSubscript:*MEMORY[0x277D4A148]];

  v10 = [v6 safari_encryptedValues];
  v11 = [v10 objectForKeyedSubscript:*MEMORY[0x277D4A138]];

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __81__WBSettingsSyncEngineAccess__updatePerSiteSettingsWithRecord_completionHandler___block_invoke;
  v21[3] = &unk_279E75348;
  v12 = v7;
  v22 = v12;
  v13 = MEMORY[0x2743D6830](v21);
  v14 = [v6 objectForKeyedSubscript:*MEMORY[0x277D4A140]];

  if (v14)
  {
    v15 = [(WBSettingsSyncEngineAccess *)self _perSitePreferencesStore];
    v16 = [v6 recordID];
    v17 = [v16 recordName];
    [v15 removePreferenceValueWithRecordName:v17 completionHandler:v13];
  }

  else
  {
    v18 = [v6 safari_encryptedValues];
    v19 = *MEMORY[0x277D4A130];
    v20 = [v18 objectForKeyedSubscript:*MEMORY[0x277D4A130]];

    if (!v20)
    {
      v15 = [(WBSettingsSyncEngineAccess *)self _perSitePreferencesStore];
      [v15 setDefaultValue:v9 forPreference:v11 completionHandler:v13];
      goto LABEL_6;
    }

    v15 = [(WBSettingsSyncEngineAccess *)self _perSitePreferencesStore];
    v16 = [v6 safari_encryptedValues];
    v17 = [v16 objectForKeyedSubscript:v19];
    [v15 setValue:v9 ofPreference:v11 forDomain:v17 withTimestamp:0 completionHandler:v13];
  }

LABEL_6:
}

- (void)_updateStartPageSectionOrder:(id)a3
{
  v20 = a3;
  v3 = [v20 safari_encryptedValues];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277D4A158]];
  v5 = [v4 mutableCopy];

  v19 = [MEMORY[0x277D4A080] allSections];
  v6 = [MEMORY[0x277CBEB18] array];
  v7 = MEMORY[0x277CBEB98];
  v8 = [MEMORY[0x277D4A080] defaultManager];
  v9 = [v8 enabledSectionIdentifiers];
  v10 = [v7 setWithArray:v9];

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __59__WBSettingsSyncEngineAccess__updateStartPageSectionOrder___block_invoke;
  v25[3] = &unk_279E75370;
  v11 = v19;
  v26 = v11;
  v12 = v6;
  v27 = v12;
  [v5 enumerateObjectsUsingBlock:v25];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __59__WBSettingsSyncEngineAccess__updateStartPageSectionOrder___block_invoke_2;
  v21[3] = &unk_279E753C0;
  v13 = v12;
  v22 = v13;
  v14 = v5;
  v23 = v14;
  v15 = v10;
  v24 = v15;
  [v11 enumerateObjectsUsingBlock:v21];
  v16 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v17 = [v14 copy];
  [v16 setObject:v17 forKey:*MEMORY[0x277D49BD0]];

  if (v13)
  {
    v18 = [MEMORY[0x277D4A080] defaultManager];
    [v18 reorderSectionsToMatchOrderedIdentifiers:v13];
  }
}

void __59__WBSettingsSyncEngineAccess__updateStartPageSectionOrder___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) containsObject:?])
  {
    [*(a1 + 40) addObject:v3];
  }
}

void __59__WBSettingsSyncEngineAccess__updateStartPageSectionOrder___block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  if (([a1[4] containsObject:v3] & 1) == 0)
  {
    v4 = [MEMORY[0x277D4A080] preferredVisiblePositionForNewSectionWithIdentifier:v3];
    if (v4 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [a1[5] addObject:v3];
      [a1[4] addObject:v3];
    }

    else
    {
      v12[0] = 0;
      v12[1] = v12;
      v12[2] = 0x2020000000;
      v12[3] = 0;
      v5 = a1[4];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __59__WBSettingsSyncEngineAccess__updateStartPageSectionOrder___block_invoke_3;
      v8[3] = &unk_279E75398;
      v10 = v12;
      v11 = v4;
      v9 = a1[6];
      v6 = [v5 indexOfObjectPassingTest:v8];
      v7 = a1[5];
      if (v6 == 0x7FFFFFFFFFFFFFFFLL)
      {
        [v7 addObject:v3];
        [a1[4] addObject:v3];
      }

      else
      {
        [v7 insertObject:v3 atIndex:v6];
        [a1[4] insertObject:v3 atIndex:v6];
      }

      _Block_object_dispose(v12, 8);
    }
  }
}

BOOL __59__WBSettingsSyncEngineAccess__updateStartPageSectionOrder___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 48);
  v5 = *(*(*(a1 + 40) + 8) + 24);
  if (v5 != v4 && [*(a1 + 32) containsObject:v3])
  {
    ++*(*(*(a1 + 40) + 8) + 24);
  }

  return v5 == v4;
}

- (id)_startPageSectionOrder
{
  v3 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v4 = *MEMORY[0x277D49BD0];
  v5 = [v3 arrayForKey:*MEMORY[0x277D49BD0]];

  if (v5)
  {
    v6 = [v3 arrayForKey:v4];
  }

  else
  {
    v7 = [(WBSettingsSyncEngineAccess *)self startPageSectionsManager];
    v6 = [v7 sectionIdentifiers];
  }

  return v6;
}

- (void)_updateStartPageCloudTabsConsent:(id)a3
{
  v3 = a3;
  v4 = WBS_LOG_CHANNEL_PREFIXCloudSettings();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [WBSettingsSyncEngineAccess _updateStartPageCloudTabsConsent:];
  }

  v5 = [v3 safari_encryptedValues];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D4A158]];

  v7 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v8 = [v6 BOOLValue];
  [v7 setBool:v8 forKey:*MEMORY[0x277D4A160]];

  v9 = [MEMORY[0x277CCA9A0] defaultCenter];
  [v9 postNotificationName:*MEMORY[0x277D4A388] object:0 userInfo:0 deliverImmediately:1];
}

- (NSArray)syncSettingsUpDictionary
{
  v54[15] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB98];
  v4 = [(WBSettingsSyncEngineAccess *)self startPageSectionsManager];
  v5 = [v4 enabledSectionIdentifiers];
  v53 = [v3 setWithArray:v5];

  v6 = MEMORY[0x277CCABB0];
  v7 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v8 = *MEMORY[0x277D4A250];
  v52 = v7;
  v49 = [v6 numberWithInteger:{objc_msgSend(v7, "integerForKey:", *MEMORY[0x277D4A250])}];
  v50 = makeSettingDictionary(v8, v49);
  v54[0] = v50;
  v9 = MEMORY[0x277CCABB0];
  v10 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v11 = *MEMORY[0x277D4A258];
  v51 = v10;
  v47 = [v9 numberWithInteger:{objc_msgSend(v10, "integerForKey:", *MEMORY[0x277D4A258])}];
  v48 = makeSettingDictionary(v11, v47);
  v54[1] = v48;
  v45 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v53, "containsObject:", *MEMORY[0x277D4A4B0])}];
  v46 = makeSettingDictionary(*MEMORY[0x277D4A3D0], v45);
  v54[2] = v46;
  v43 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v53, "containsObject:", *MEMORY[0x277D4A4B8])}];
  v44 = makeSettingDictionary(*MEMORY[0x277D4A3D8], v43);
  v54[3] = v44;
  v41 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v53, "containsObject:", *MEMORY[0x277D4A4E0])}];
  v42 = makeSettingDictionary(*MEMORY[0x277D4A3E8], v41);
  v54[4] = v42;
  v39 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v53, "containsObject:", *MEMORY[0x277D4A510])}];
  v40 = makeSettingDictionary(*MEMORY[0x277D4A408], v39);
  v54[5] = v40;
  v37 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v53, "containsObject:", *MEMORY[0x277D4A4A8])}];
  v38 = makeSettingDictionary(*MEMORY[0x277D4A3C8], v37);
  v54[6] = v38;
  v35 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v53, "containsObject:", *MEMORY[0x277D4A500])}];
  v36 = makeSettingDictionary(*MEMORY[0x277D4A3F0], v35);
  v54[7] = v36;
  v33 = [MEMORY[0x277CCABB0] numberWithBool:{-[WBSettingsSyncEngineAccess _isShowBackgroundImageEnabled](self, "_isShowBackgroundImageEnabled")}];
  v34 = makeSettingDictionary(*MEMORY[0x277D4A3C0], v33);
  v54[8] = v34;
  v31 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v53, "containsObject:", *MEMORY[0x277D4A4C0])}];
  v32 = makeSettingDictionary(*MEMORY[0x277D4A3E0], v31);
  v54[9] = v32;
  v28 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v53, "containsObject:", *MEMORY[0x277D4A518])}];
  v29 = makeSettingDictionary(*MEMORY[0x277D4A410], v28);
  v54[10] = v29;
  v12 = MEMORY[0x277CCABB0];
  v30 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v13 = [v12 numberWithBool:{objc_msgSend(v30, "BOOLForKey:", *MEMORY[0x277D4A160])}];
  v14 = makeSettingDictionary(*MEMORY[0x277D4A3A8], v13);
  v54[11] = v14;
  v15 = [(WBSettingsSyncEngineAccess *)self _startPageSectionOrder];
  v16 = makeSettingDictionary(*MEMORY[0x277D4A400], v15);
  v54[12] = v16;
  v17 = MEMORY[0x277CCABB0];
  v18 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v19 = [v17 numberWithBool:{objc_msgSend(v18, "BOOLForKey:", *MEMORY[0x277D4A490])}];
  v20 = makeSettingDictionary(*MEMORY[0x277D4A418], v19);
  v54[13] = v20;
  v21 = MEMORY[0x277CCABB0];
  v22 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v23 = [v21 numberWithBool:{objc_msgSend(v22, "BOOLForKey:", *MEMORY[0x277D4A488])}];
  v24 = makeSettingDictionary(*MEMORY[0x277D4A3F8], v23);
  v54[14] = v24;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:15];

  v25 = *MEMORY[0x277D85DE8];

  return v27;
}

- (BOOL)backgroundImageExists
{
  v2 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v3 = [v2 integerForKey:*MEMORY[0x277D4A268]] != 0;

  return v3;
}

- (BOOL)backgroundImageAppearanceIsLight
{
  v2 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v3 = [v2 integerForKey:*MEMORY[0x277D4A268]];

  return v3 == 1;
}

- (BOOL)_isShowBackgroundImageEnabled
{
  v2 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v3 = [v2 objectForKey:*MEMORY[0x277D4A478]];

  if (v3 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)deleteBackgroundImageDirectory
{
  if ([MEMORY[0x277D49A08] isStartPageSettingSyncEnabled])
  {
    v2 = WBS_LOG_CHANNEL_PREFIXCloudSettings();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      [WBSettingsSyncEngineAccess deleteBackgroundImageDirectory];
    }

    v3 = dispatch_get_global_queue(17, 0);
    dispatch_async(v3, &__block_literal_global_53);
  }
}

void __60__WBSettingsSyncEngineAccess_deleteBackgroundImageDirectory__block_invoke()
{
  v18 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCAA00] defaultManager];
  v1 = [MEMORY[0x277CCAA00] defaultManager];
  v2 = [v1 safari_startPageBackgroundImageFolderURL];
  v13 = 0;
  v3 = [v0 removeItemAtURL:v2 error:&v13];
  v4 = v13;

  if (v3)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXCloudSettings();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __60__WBSettingsSyncEngineAccess_deleteBackgroundImageDirectory__block_invoke_cold_1();
    }

    v6 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
    [v6 removeObjectForKey:*MEMORY[0x277D4A268]];

    dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_56);
  }

  else
  {
    v7 = WBS_LOG_CHANNEL_PREFIXCloudSettings();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = [MEMORY[0x277CCAA00] defaultManager];
      v10 = [v9 safari_startPageBackgroundImageFolderURL];
      v11 = [v10 path];
      v12 = [v4 safari_privacyPreservingDescription];
      *buf = 138543618;
      v15 = v11;
      v16 = 2114;
      v17 = v12;
      _os_log_error_impl(&dword_272C20000, v7, OS_LOG_TYPE_ERROR, "[StartPageBackground] Failed to remove image directory (%{public}@). Error: %{public}@.", buf, 0x16u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __60__WBSettingsSyncEngineAccess_deleteBackgroundImageDirectory__block_invoke_54()
{
  v0 = [MEMORY[0x277CCA9A0] defaultCenter];
  [v0 postNotificationName:*MEMORY[0x277D4A368] object:0 userInfo:0 deliverImmediately:1];
}

void __58__WBSettingsSyncEngineAccess_didDeleteRemoteRecordWithID___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D4A360];
  v4 = 138543618;
  v5 = v2;
  v6 = 2114;
  v7 = a1;
  _os_log_error_impl(&dword_272C20000, a2, OS_LOG_TYPE_ERROR, "[StartPageBackground] Removing %{public}@ in Default Profile failed with error: %{public}@.", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

void __72__WBSettingsSyncEngineAccess__updateStartPageBackgroundImageWithRecord___block_invoke_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_272C20000, log, OS_LOG_TYPE_ERROR, "[StartPageBackground] FileManager could not update image with record for Default Profile. %{public}@", buf, 0xCu);
}

- (void)_installMobileAssetIfApplicableWithURL:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_272C20000, log, OS_LOG_TYPE_ERROR, "[StartPageBackground] FileManager could not install mobile asset image. %{public}@", buf, 0xCu);
}

@end