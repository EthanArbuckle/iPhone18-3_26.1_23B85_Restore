@interface UNCSettingsPersistenceConnectionListener
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (UNCSettingsPersistenceConnectionListener)init;
- (UNCSettingsPersistenceConnectionListener)initWithPersistentStore:(id)a3;
- (void)activate;
- (void)activeSectionIDsWithHandler:(id)a3;
- (void)addActiveSectionID:(id)a3 withHandler:(id)a4;
- (void)allSectionIDsWithHandler:(id)a3;
- (void)allSectionInfosByIDWithHandler:(id)a3;
- (void)clearedInfoForSectionID:(id)a3 withHandler:(id)a4;
- (void)clearedSectionsByIDWithHandler:(id)a3;
- (void)dealloc;
- (void)getEffectiveGlobalAnnounceCarPlaySettingWithHandler:(id)a3;
- (void)getEffectiveGlobalAnnounceHeadphonesSettingWithHandler:(id)a3;
- (void)getEffectiveGlobalAnnounceSettingWithHandler:(id)a3;
- (void)getEffectiveGlobalContentPreviewsSettingWithHandler:(id)a3;
- (void)getEffectiveGlobalNotificationListDisplayStyleSettingWithHandler:(id)a3;
- (void)getEffectiveGlobalScheduledDeliverySettingWithHandler:(id)a3;
- (void)getEffectiveGlobalScheduledDeliveryShowNextSummarySettingWithHandler:(id)a3;
- (void)getEffectiveGlobalScheduledDeliveryTimesWithHandler:(id)a3;
- (void)hasSectionInfoLegacyFileWithHandler:(id)a3;
- (void)pairedSyncDeviceCountWithHandler:(id)a3;
- (void)readSavedClearedSectionsWithHandler:(id)a3;
- (void)readSectionInfoLegacyFileWithHandler:(id)a3;
- (void)readSectionInfoWithHandler:(id)a3;
- (void)readSectionInfoWithVersionNumberForMigrationWithHandler:(id)a3;
- (void)readSectionOrderWithHandler:(id)a3;
- (void)removeSectionWithID:(id)a3 withHandler:(id)a4;
- (void)setClearedInfo:(id)a3 forSectionID:(id)a4 withHandler:(id)a5;
- (void)setEffectiveGlobalAnnounceCarPlaySetting:(int64_t)a3 withHandler:(id)a4;
- (void)setEffectiveGlobalAnnounceHeadphonesSetting:(int64_t)a3 withHandler:(id)a4;
- (void)setEffectiveGlobalAnnounceSetting:(int64_t)a3 withHandler:(id)a4;
- (void)setEffectiveGlobalContentPreviewsSetting:(int64_t)a3 withHandler:(id)a4;
- (void)setEffectiveGlobalNotificationListDisplayStyleSetting:(int64_t)a3 withHandler:(id)a4;
- (void)setEffectiveGlobalScheduledDeliverySetting:(int64_t)a3 withHandler:(id)a4;
- (void)setEffectiveGlobalScheduledDeliveryShowNextSummarySetting:(int64_t)a3 withHandler:(id)a4;
- (void)setEffectiveGlobalScheduledDeliveryTimes:(id)a3 withHandler:(id)a4;
- (void)setSectionInfo:(id)a3 forSectionID:(id)a4 withHandler:(id)a5;
- (void)sortedSectionIDsWithHandler:(id)a3;
- (void)writeClearedSections:(id)a3;
- (void)writeSectionInfo:(id)a3;
- (void)writeSectionOrder:(id)a3;
@end

@implementation UNCSettingsPersistenceConnectionListener

- (UNCSettingsPersistenceConnectionListener)init
{
  v3 = objc_alloc_init(UNCNotificationSettingsPersistentStore);
  v4 = [(UNCSettingsPersistenceConnectionListener *)self initWithPersistentStore:v3];

  return v4;
}

- (UNCSettingsPersistenceConnectionListener)initWithPersistentStore:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v17.receiver = self;
  v17.super_class = UNCSettingsPersistenceConnectionListener;
  v6 = [(UNCSettingsPersistenceConnectionListener *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_persistentSettingsStore, a3);
    v8 = +[UNCBulletinDefaults standardDefaults];
    bulletinDefaults = v7->_bulletinDefaults;
    v7->_bulletinDefaults = v8;

    v10 = [[UNCEffectiveSettings alloc] initWithBulletinDefaults:v7->_bulletinDefaults];
    effectiveSettingsProvider = v7->_effectiveSettingsProvider;
    v7->_effectiveSettingsProvider = v10;

    v12 = [[UNCSectionInfoStore alloc] initWithEffectiveSettings:v7->_effectiveSettingsProvider persistence:v7->_persistentSettingsStore];
    sectionInfoStore = v7->_sectionInfoStore;
    v7->_sectionInfoStore = v12;

    v14 = *MEMORY[0x1E6983388];
    if (os_log_type_enabled(*MEMORY[0x1E6983388], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v7;
      _os_log_impl(&dword_1DA7A9000, v14, OS_LOG_TYPE_DEFAULT, "SettingsPersistenceListener created %@", buf, 0xCu);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)activate
{
  v3 = [objc_alloc(MEMORY[0x1E696B0D8]) initWithMachServiceName:@"com.apple.bulletinboard.settingspersistenceconnection"];
  listener = self->_listener;
  self->_listener = v3;

  [(NSXPCListener *)self->_listener setDelegate:self];
  [(NSXPCListener *)self->_listener activate];
  v5 = *MEMORY[0x1E6983388];
  if (os_log_type_enabled(*MEMORY[0x1E6983388], OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1DA7A9000, v5, OS_LOG_TYPE_DEFAULT, "SettingsPersistenceListener activated for com.apple.bulletinboard.settingspersistenceconnection", v6, 2u);
  }
}

- (void)dealloc
{
  v3 = *MEMORY[0x1E69833A0];
  if (os_log_type_enabled(*MEMORY[0x1E69833A0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DA7A9000, v3, OS_LOG_TYPE_DEFAULT, "SettingsPersistenceListener dealloc", buf, 2u);
  }

  [(NSXPCListener *)self->_listener invalidate];
  v4.receiver = self;
  v4.super_class = UNCSettingsPersistenceConnectionListener;
  [(UNCSettingsPersistenceConnectionListener *)&v4 dealloc];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = +[UNCSettingsRemotePersistenceService clientInterface];
  [v7 setRemoteObjectInterface:v8];

  v9 = +[UNCSettingsRemotePersistenceService serverInterface];
  [v7 setExportedInterface:v9];

  [v7 setExportedObject:self];
  v10 = [MEMORY[0x1E698E620] tokenFromNSXPCConnection:v7];
  v11 = [v10 bundleID];
  if (v11)
  {
    v12 = [v10 bundleID];
  }

  else
  {
    v13 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v10, "pid")}];
    v12 = [v13 stringValue];
  }

  v14 = *MEMORY[0x1E6983388];
  if (os_log_type_enabled(*MEMORY[0x1E6983388], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = v12;
    _os_log_impl(&dword_1DA7A9000, v14, OS_LOG_TYPE_DEFAULT, "SettingsPersistenceListener accepting connection %@", buf, 0xCu);
  }

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __79__UNCSettingsPersistenceConnectionListener_listener_shouldAcceptNewConnection___block_invoke;
  v25[3] = &unk_1E85D6F70;
  v15 = v12;
  v26 = v15;
  [v7 setInterruptionHandler:v25];
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __79__UNCSettingsPersistenceConnectionListener_listener_shouldAcceptNewConnection___block_invoke_10;
  v23 = &unk_1E85D6F70;
  v16 = v15;
  v24 = v16;
  [v7 setInvalidationHandler:&v20];
  [v7 resume];
  v17 = self->_connections;
  objc_sync_enter(v17);
  [(NSMutableArray *)self->_connections addObject:v7];
  objc_sync_exit(v17);

  v18 = *MEMORY[0x1E69E9840];
  return 1;
}

void __79__UNCSettingsPersistenceConnectionListener_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E6983388];
  if (os_log_type_enabled(*MEMORY[0x1E6983388], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1DA7A9000, v2, OS_LOG_TYPE_DEFAULT, "SettingsPersistenceListener client connection interrupted: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __79__UNCSettingsPersistenceConnectionListener_listener_shouldAcceptNewConnection___block_invoke_10(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E6983388];
  if (os_log_type_enabled(*MEMORY[0x1E6983388], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1DA7A9000, v2, OS_LOG_TYPE_DEFAULT, "SettingsPersistenceListener client connection invalidated: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)setSectionInfo:(id)a3 forSectionID:(id)a4 withHandler:(id)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = MEMORY[0x1E6983388];
  v12 = *MEMORY[0x1E6983388];
  if (os_log_type_enabled(*MEMORY[0x1E6983388], OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412546;
    v16 = v9;
    v17 = 2112;
    v18 = v8;
    _os_log_impl(&dword_1DA7A9000, v12, OS_LOG_TYPE_DEFAULT, "Setting sectionInfo for ID %@: %@", &v15, 0x16u);
  }

  if (v8)
  {
    [(UNCSectionInfoStore *)self->_sectionInfoStore setSectionInfo:v8 forSectionID:v9];
    if (!v10)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v13 = *v11;
  if (os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
  {
    [UNCSettingsPersistenceConnectionListener setSectionInfo:v9 forSectionID:v13 withHandler:?];
    if (!v10)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v10)
  {
LABEL_8:
    v10[2](v10);
  }

LABEL_9:

  v14 = *MEMORY[0x1E69E9840];
}

- (void)removeSectionWithID:(id)a3 withHandler:(id)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x1E6983388];
  if (os_log_type_enabled(*MEMORY[0x1E6983388], OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&dword_1DA7A9000, v8, OS_LOG_TYPE_DEFAULT, "Removing section with ID %@", &v10, 0xCu);
  }

  [(UNCSectionInfoStore *)self->_sectionInfoStore removeSectionWithID:v6];
  if (v7)
  {
    v7[2](v7);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)allSectionIDsWithHandler:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(UNCSectionInfoStore *)self->_sectionInfoStore allUnsortedSectionInfoIDs];
  v6 = *MEMORY[0x1E6983388];
  if (os_log_type_enabled(*MEMORY[0x1E6983388], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v9 = 134217984;
    v10 = [v5 count];
    _os_log_impl(&dword_1DA7A9000, v7, OS_LOG_TYPE_DEFAULT, "Reading allSectionIDs. Count: %lu", &v9, 0xCu);
  }

  if (v4)
  {
    v4[2](v4, v5, 0);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)allSectionInfosByIDWithHandler:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(UNCSectionInfoStore *)self->_sectionInfoStore sectionInfoByID];
  v6 = *MEMORY[0x1E6983388];
  if (os_log_type_enabled(*MEMORY[0x1E6983388], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v9 = 134217984;
    v10 = [v5 count];
    _os_log_impl(&dword_1DA7A9000, v7, OS_LOG_TYPE_DEFAULT, "Reading allSectionInfosByID. Count %lu", &v9, 0xCu);
  }

  if (v4)
  {
    v4[2](v4, v5, 0);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)activeSectionIDsWithHandler:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(UNCSectionInfoStore *)self->_sectionInfoStore activeSectionIDs];
  v6 = *MEMORY[0x1E6983388];
  if (os_log_type_enabled(*MEMORY[0x1E6983388], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v9 = 134217984;
    v10 = [v5 count];
    _os_log_impl(&dword_1DA7A9000, v7, OS_LOG_TYPE_DEFAULT, "Reading activeSectionIDs. Count %lu", &v9, 0xCu);
  }

  if (v4)
  {
    v4[2](v4, v5, 0);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)addActiveSectionID:(id)a3 withHandler:(id)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x1E6983388];
  if (os_log_type_enabled(*MEMORY[0x1E6983388], OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&dword_1DA7A9000, v8, OS_LOG_TYPE_DEFAULT, "Adding activeSectionID %@", &v10, 0xCu);
  }

  [(UNCSectionInfoStore *)self->_sectionInfoStore addActiveSectionID:v6];
  if (v7)
  {
    v7[2](v7);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)clearedInfoForSectionID:(id)a3 withHandler:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x1E6983388];
  if (os_log_type_enabled(*MEMORY[0x1E6983388], OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&dword_1DA7A9000, v8, OS_LOG_TYPE_DEFAULT, "Reading clearedInfo for sectionID %@", &v11, 0xCu);
  }

  v9 = [(UNCSectionInfoStore *)self->_sectionInfoStore clearedInfoForSectionID:v6];
  if (v7)
  {
    v7[2](v7, v9, 0);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)clearedSectionsByIDWithHandler:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(UNCSectionInfoStore *)self->_sectionInfoStore clearedSectionsByID];
  v6 = *MEMORY[0x1E6983388];
  if (os_log_type_enabled(*MEMORY[0x1E6983388], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v9 = 134217984;
    v10 = [v5 count];
    _os_log_impl(&dword_1DA7A9000, v7, OS_LOG_TYPE_DEFAULT, "Reading clearedSectionsByID. Count %lu", &v9, 0xCu);
  }

  if (v4)
  {
    v4[2](v4, v5, 0);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setClearedInfo:(id)a3 forSectionID:(id)a4 withHandler:(id)a5
{
  v15 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = *MEMORY[0x1E6983388];
  if (os_log_type_enabled(*MEMORY[0x1E6983388], OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v9;
    _os_log_impl(&dword_1DA7A9000, v11, OS_LOG_TYPE_DEFAULT, "Setting clearedInfo for sectionID %@", &v13, 0xCu);
  }

  [(UNCSectionInfoStore *)self->_sectionInfoStore setClearedInfo:v8 forSectionID:v9];
  if (v10)
  {
    v10[2](v10);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)sortedSectionIDsWithHandler:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(UNCSectionInfoStore *)self->_sectionInfoStore sortedSectionIDs];
  v6 = *MEMORY[0x1E6983388];
  if (os_log_type_enabled(*MEMORY[0x1E6983388], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v9 = 134217984;
    v10 = [v5 count];
    _os_log_impl(&dword_1DA7A9000, v7, OS_LOG_TYPE_DEFAULT, "Reading sortedSectionIDs. Count %lu", &v9, 0xCu);
  }

  if (v4)
  {
    v4[2](v4, v5, 0);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)readSavedClearedSectionsWithHandler:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(UNCNotificationSettingsPersistentStore *)self->_persistentSettingsStore readClearedSections];
  v6 = MEMORY[0x1E6983388];
  v7 = *MEMORY[0x1E6983388];
  if (os_log_type_enabled(*MEMORY[0x1E6983388], OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v5;
    _os_log_impl(&dword_1DA7A9000, v7, OS_LOG_TYPE_DEFAULT, "UNCSettingsListener readSavedCleared: %@", &v10, 0xCu);
  }

  if (v4)
  {
    v8 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_1DA7A9000, v8, OS_LOG_TYPE_DEFAULT, "UNCSettingsListener readSavedCleared invoking handler", &v10, 2u);
    }

    v4[2](v4, v5, 0);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)readSectionInfoWithHandler:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(UNCNotificationSettingsPersistentStore *)self->_persistentSettingsStore readSectionInfo];
  v6 = MEMORY[0x1E6983388];
  v7 = *MEMORY[0x1E6983388];
  if (os_log_type_enabled(*MEMORY[0x1E6983388], OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v5;
    _os_log_impl(&dword_1DA7A9000, v7, OS_LOG_TYPE_DEFAULT, "UNCSettingsListener readSectionInfo %@", &v10, 0xCu);
  }

  if (v4)
  {
    v8 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_1DA7A9000, v8, OS_LOG_TYPE_DEFAULT, "UNCSettingsListener readSectionInfo invoking handler", &v10, 2u);
    }

    v4[2](v4, v5, 0);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)readSectionOrderWithHandler:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(UNCNotificationSettingsPersistentStore *)self->_persistentSettingsStore readSectionOrder];
  v6 = *MEMORY[0x1E6983388];
  if (os_log_type_enabled(*MEMORY[0x1E6983388], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_1DA7A9000, v6, OS_LOG_TYPE_DEFAULT, "UNCSettingsListener readSectionOrder %@", &v8, 0xCu);
  }

  if (v4)
  {
    v4[2](v4, v5, 0);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)writeClearedSections:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *MEMORY[0x1E6983388];
  if (os_log_type_enabled(*MEMORY[0x1E6983388], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1DA7A9000, v5, OS_LOG_TYPE_DEFAULT, "UNCSettingsListener writeClearedSections %@", &v7, 0xCu);
  }

  [(UNCNotificationSettingsPersistentStore *)self->_persistentSettingsStore writeClearedSections:v4];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)writeSectionInfo:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *MEMORY[0x1E6983388];
  if (os_log_type_enabled(*MEMORY[0x1E6983388], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1DA7A9000, v5, OS_LOG_TYPE_DEFAULT, "UNCSettingsListener writeSectionInfo %@", &v7, 0xCu);
  }

  [(UNCNotificationSettingsPersistentStore *)self->_persistentSettingsStore writeSectionInfo:v4];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)writeSectionOrder:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *MEMORY[0x1E6983388];
  if (os_log_type_enabled(*MEMORY[0x1E6983388], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1DA7A9000, v5, OS_LOG_TYPE_DEFAULT, "UNCSettingsListener writeSectionOrder %@", &v7, 0xCu);
  }

  [(UNCNotificationSettingsPersistentStore *)self->_persistentSettingsStore writeSectionOrder:v4];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)hasSectionInfoLegacyFileWithHandler:(id)a3
{
  v6 = a3;
  v4 = [(UNCNotificationSettingsPersistentStore *)self->_persistentSettingsStore hasSectionInfoLegacyFile];
  v5 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6, v4, 0);
    v5 = v6;
  }
}

- (void)readSectionInfoLegacyFileWithHandler:(id)a3
{
  v5 = a3;
  v4 = [(UNCNotificationSettingsPersistentStore *)self->_persistentSettingsStore readSectionInfoLegacy];
  if (v5)
  {
    v5[2](v5, v4, 0);
  }
}

- (void)readSectionInfoWithVersionNumberForMigrationWithHandler:(id)a3
{
  if (a3)
  {
    persistentSettingsStore = self->_persistentSettingsStore;
    v4 = a3;
    v5 = [(UNCNotificationSettingsPersistentStore *)persistentSettingsStore readSectionInfoWithVersionNumberForMigration];
    v4[2](v4, v5, 0);
  }
}

- (void)getEffectiveGlobalAnnounceCarPlaySettingWithHandler:(id)a3
{
  if (a3)
  {
    effectiveSettingsProvider = self->_effectiveSettingsProvider;
    v5 = a3;
    (*(a3 + 2))(v5, [(UNCEffectiveSettings *)effectiveSettingsProvider effectiveGlobalAnnounceCarPlaySetting], 0);
  }
}

- (void)getEffectiveGlobalAnnounceHeadphonesSettingWithHandler:(id)a3
{
  if (a3)
  {
    effectiveSettingsProvider = self->_effectiveSettingsProvider;
    v5 = a3;
    (*(a3 + 2))(v5, [(UNCEffectiveSettings *)effectiveSettingsProvider effectiveGlobalAnnounceHeadphoneSetting], 0);
  }
}

- (void)getEffectiveGlobalAnnounceSettingWithHandler:(id)a3
{
  if (a3)
  {
    effectiveSettingsProvider = self->_effectiveSettingsProvider;
    v5 = a3;
    (*(a3 + 2))(v5, [(UNCEffectiveSettings *)effectiveSettingsProvider effectiveGlobalAnnounceSetting], 0);
  }
}

- (void)getEffectiveGlobalContentPreviewsSettingWithHandler:(id)a3
{
  if (a3)
  {
    effectiveSettingsProvider = self->_effectiveSettingsProvider;
    v5 = a3;
    (*(a3 + 2))(v5, [(UNCEffectiveSettings *)effectiveSettingsProvider effectiveGlobalContentPreviewSetting], 0);
  }
}

- (void)getEffectiveGlobalNotificationListDisplayStyleSettingWithHandler:(id)a3
{
  if (a3)
  {
    effectiveSettingsProvider = self->_effectiveSettingsProvider;
    v5 = a3;
    (*(a3 + 2))(v5, [(UNCEffectiveSettings *)effectiveSettingsProvider effectiveGlobalNotificationListDisplayStyleSetting], 0);
  }
}

- (void)getEffectiveGlobalScheduledDeliverySettingWithHandler:(id)a3
{
  if (a3)
  {
    effectiveSettingsProvider = self->_effectiveSettingsProvider;
    v5 = a3;
    (*(a3 + 2))(v5, [(UNCEffectiveSettings *)effectiveSettingsProvider effectiveGlobalScheduledDeliverySetting], 0);
  }
}

- (void)getEffectiveGlobalScheduledDeliveryShowNextSummarySettingWithHandler:(id)a3
{
  if (a3)
  {
    effectiveSettingsProvider = self->_effectiveSettingsProvider;
    v5 = a3;
    (*(a3 + 2))(v5, [(UNCEffectiveSettings *)effectiveSettingsProvider effectiveGlobalScheduledDeliveryShowNextSummarySetting], 0);
  }
}

- (void)getEffectiveGlobalScheduledDeliveryTimesWithHandler:(id)a3
{
  if (a3)
  {
    effectiveSettingsProvider = self->_effectiveSettingsProvider;
    v5 = a3;
    v6 = [(UNCEffectiveSettings *)effectiveSettingsProvider effectiveGlobalScheduledDeliveryTimes];
    (*(a3 + 2))(v5, v6, 0);
  }
}

- (void)setEffectiveGlobalAnnounceCarPlaySetting:(int64_t)a3 withHandler:(id)a4
{
  v7 = a4;
  [(UNCEffectiveSettings *)self->_effectiveSettingsProvider setGlobalAnnounceCarPlaySetting:a3];
  v6 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7);
    v6 = v7;
  }
}

- (void)setEffectiveGlobalAnnounceHeadphonesSetting:(int64_t)a3 withHandler:(id)a4
{
  v7 = a4;
  [(UNCEffectiveSettings *)self->_effectiveSettingsProvider setGlobalAnnounceHeadphoneSetting:a3];
  v6 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7);
    v6 = v7;
  }
}

- (void)setEffectiveGlobalAnnounceSetting:(int64_t)a3 withHandler:(id)a4
{
  v7 = a4;
  [(UNCEffectiveSettings *)self->_effectiveSettingsProvider setGlobalAnnounceSetting:a3];
  v6 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7);
    v6 = v7;
  }
}

- (void)setEffectiveGlobalContentPreviewsSetting:(int64_t)a3 withHandler:(id)a4
{
  v7 = a4;
  [(UNCEffectiveSettings *)self->_effectiveSettingsProvider setGlobalContentPreviewSetting:a3];
  v6 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7);
    v6 = v7;
  }
}

- (void)setEffectiveGlobalNotificationListDisplayStyleSetting:(int64_t)a3 withHandler:(id)a4
{
  v7 = a4;
  [(UNCEffectiveSettings *)self->_effectiveSettingsProvider setGlobalNotificationListDisplayStyleSetting:a3];
  v6 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7);
    v6 = v7;
  }
}

- (void)setEffectiveGlobalScheduledDeliverySetting:(int64_t)a3 withHandler:(id)a4
{
  v7 = a4;
  [(UNCEffectiveSettings *)self->_effectiveSettingsProvider setGlobalScheduledDeliverySetting:a3];
  v6 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7);
    v6 = v7;
  }
}

- (void)setEffectiveGlobalScheduledDeliveryShowNextSummarySetting:(int64_t)a3 withHandler:(id)a4
{
  v7 = a4;
  [(UNCEffectiveSettings *)self->_effectiveSettingsProvider setGlobalScheduledDeliveryShowNextSummarySetting:a3];
  v6 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7);
    v6 = v7;
  }
}

- (void)setEffectiveGlobalScheduledDeliveryTimes:(id)a3 withHandler:(id)a4
{
  v7 = a4;
  [(UNCEffectiveSettings *)self->_effectiveSettingsProvider setGlobalScheduledDeliveryTimes:a3];
  v6 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7);
    v6 = v7;
  }
}

- (void)pairedSyncDeviceCountWithHandler:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3, 0);
  }
}

- (void)setSectionInfo:(uint64_t)a1 forSectionID:(NSObject *)a2 withHandler:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1DA7A9000, a2, OS_LOG_TYPE_ERROR, "-setSectionInfo:forSectionID: called with nil section info for ID %@. Use -removeSectionWithID instead", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end