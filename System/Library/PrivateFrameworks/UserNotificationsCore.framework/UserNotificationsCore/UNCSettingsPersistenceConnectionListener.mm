@interface UNCSettingsPersistenceConnectionListener
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (UNCSettingsPersistenceConnectionListener)init;
- (UNCSettingsPersistenceConnectionListener)initWithPersistentStore:(id)store;
- (void)activate;
- (void)activeSectionIDsWithHandler:(id)handler;
- (void)addActiveSectionID:(id)d withHandler:(id)handler;
- (void)allSectionIDsWithHandler:(id)handler;
- (void)allSectionInfosByIDWithHandler:(id)handler;
- (void)clearedInfoForSectionID:(id)d withHandler:(id)handler;
- (void)clearedSectionsByIDWithHandler:(id)handler;
- (void)dealloc;
- (void)getEffectiveGlobalAnnounceCarPlaySettingWithHandler:(id)handler;
- (void)getEffectiveGlobalAnnounceHeadphonesSettingWithHandler:(id)handler;
- (void)getEffectiveGlobalAnnounceSettingWithHandler:(id)handler;
- (void)getEffectiveGlobalContentPreviewsSettingWithHandler:(id)handler;
- (void)getEffectiveGlobalNotificationListDisplayStyleSettingWithHandler:(id)handler;
- (void)getEffectiveGlobalScheduledDeliverySettingWithHandler:(id)handler;
- (void)getEffectiveGlobalScheduledDeliveryShowNextSummarySettingWithHandler:(id)handler;
- (void)getEffectiveGlobalScheduledDeliveryTimesWithHandler:(id)handler;
- (void)hasSectionInfoLegacyFileWithHandler:(id)handler;
- (void)pairedSyncDeviceCountWithHandler:(id)handler;
- (void)readSavedClearedSectionsWithHandler:(id)handler;
- (void)readSectionInfoLegacyFileWithHandler:(id)handler;
- (void)readSectionInfoWithHandler:(id)handler;
- (void)readSectionInfoWithVersionNumberForMigrationWithHandler:(id)handler;
- (void)readSectionOrderWithHandler:(id)handler;
- (void)removeSectionWithID:(id)d withHandler:(id)handler;
- (void)setClearedInfo:(id)info forSectionID:(id)d withHandler:(id)handler;
- (void)setEffectiveGlobalAnnounceCarPlaySetting:(int64_t)setting withHandler:(id)handler;
- (void)setEffectiveGlobalAnnounceHeadphonesSetting:(int64_t)setting withHandler:(id)handler;
- (void)setEffectiveGlobalAnnounceSetting:(int64_t)setting withHandler:(id)handler;
- (void)setEffectiveGlobalContentPreviewsSetting:(int64_t)setting withHandler:(id)handler;
- (void)setEffectiveGlobalNotificationListDisplayStyleSetting:(int64_t)setting withHandler:(id)handler;
- (void)setEffectiveGlobalScheduledDeliverySetting:(int64_t)setting withHandler:(id)handler;
- (void)setEffectiveGlobalScheduledDeliveryShowNextSummarySetting:(int64_t)setting withHandler:(id)handler;
- (void)setEffectiveGlobalScheduledDeliveryTimes:(id)times withHandler:(id)handler;
- (void)setSectionInfo:(id)info forSectionID:(id)d withHandler:(id)handler;
- (void)sortedSectionIDsWithHandler:(id)handler;
- (void)writeClearedSections:(id)sections;
- (void)writeSectionInfo:(id)info;
- (void)writeSectionOrder:(id)order;
@end

@implementation UNCSettingsPersistenceConnectionListener

- (UNCSettingsPersistenceConnectionListener)init
{
  v3 = objc_alloc_init(UNCNotificationSettingsPersistentStore);
  v4 = [(UNCSettingsPersistenceConnectionListener *)self initWithPersistentStore:v3];

  return v4;
}

- (UNCSettingsPersistenceConnectionListener)initWithPersistentStore:(id)store
{
  v20 = *MEMORY[0x1E69E9840];
  storeCopy = store;
  v17.receiver = self;
  v17.super_class = UNCSettingsPersistenceConnectionListener;
  v6 = [(UNCSettingsPersistenceConnectionListener *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_persistentSettingsStore, store);
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

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v29 = *MEMORY[0x1E69E9840];
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = +[UNCSettingsRemotePersistenceService clientInterface];
  [connectionCopy setRemoteObjectInterface:v8];

  v9 = +[UNCSettingsRemotePersistenceService serverInterface];
  [connectionCopy setExportedInterface:v9];

  [connectionCopy setExportedObject:self];
  v10 = [MEMORY[0x1E698E620] tokenFromNSXPCConnection:connectionCopy];
  bundleID = [v10 bundleID];
  if (bundleID)
  {
    bundleID2 = [v10 bundleID];
  }

  else
  {
    v13 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v10, "pid")}];
    bundleID2 = [v13 stringValue];
  }

  v14 = *MEMORY[0x1E6983388];
  if (os_log_type_enabled(*MEMORY[0x1E6983388], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = bundleID2;
    _os_log_impl(&dword_1DA7A9000, v14, OS_LOG_TYPE_DEFAULT, "SettingsPersistenceListener accepting connection %@", buf, 0xCu);
  }

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __79__UNCSettingsPersistenceConnectionListener_listener_shouldAcceptNewConnection___block_invoke;
  v25[3] = &unk_1E85D6F70;
  v15 = bundleID2;
  v26 = v15;
  [connectionCopy setInterruptionHandler:v25];
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __79__UNCSettingsPersistenceConnectionListener_listener_shouldAcceptNewConnection___block_invoke_10;
  v23 = &unk_1E85D6F70;
  v16 = v15;
  v24 = v16;
  [connectionCopy setInvalidationHandler:&v20];
  [connectionCopy resume];
  v17 = self->_connections;
  objc_sync_enter(v17);
  [(NSMutableArray *)self->_connections addObject:connectionCopy];
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

- (void)setSectionInfo:(id)info forSectionID:(id)d withHandler:(id)handler
{
  v19 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  dCopy = d;
  handlerCopy = handler;
  v11 = MEMORY[0x1E6983388];
  v12 = *MEMORY[0x1E6983388];
  if (os_log_type_enabled(*MEMORY[0x1E6983388], OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412546;
    v16 = dCopy;
    v17 = 2112;
    v18 = infoCopy;
    _os_log_impl(&dword_1DA7A9000, v12, OS_LOG_TYPE_DEFAULT, "Setting sectionInfo for ID %@: %@", &v15, 0x16u);
  }

  if (infoCopy)
  {
    [(UNCSectionInfoStore *)self->_sectionInfoStore setSectionInfo:infoCopy forSectionID:dCopy];
    if (!handlerCopy)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v13 = *v11;
  if (os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
  {
    [UNCSettingsPersistenceConnectionListener setSectionInfo:dCopy forSectionID:v13 withHandler:?];
    if (!handlerCopy)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (handlerCopy)
  {
LABEL_8:
    handlerCopy[2](handlerCopy);
  }

LABEL_9:

  v14 = *MEMORY[0x1E69E9840];
}

- (void)removeSectionWithID:(id)d withHandler:(id)handler
{
  v12 = *MEMORY[0x1E69E9840];
  dCopy = d;
  handlerCopy = handler;
  v8 = *MEMORY[0x1E6983388];
  if (os_log_type_enabled(*MEMORY[0x1E6983388], OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = dCopy;
    _os_log_impl(&dword_1DA7A9000, v8, OS_LOG_TYPE_DEFAULT, "Removing section with ID %@", &v10, 0xCu);
  }

  [(UNCSectionInfoStore *)self->_sectionInfoStore removeSectionWithID:dCopy];
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)allSectionIDsWithHandler:(id)handler
{
  v11 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  allUnsortedSectionInfoIDs = [(UNCSectionInfoStore *)self->_sectionInfoStore allUnsortedSectionInfoIDs];
  v6 = *MEMORY[0x1E6983388];
  if (os_log_type_enabled(*MEMORY[0x1E6983388], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v9 = 134217984;
    v10 = [allUnsortedSectionInfoIDs count];
    _os_log_impl(&dword_1DA7A9000, v7, OS_LOG_TYPE_DEFAULT, "Reading allSectionIDs. Count: %lu", &v9, 0xCu);
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, allUnsortedSectionInfoIDs, 0);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)allSectionInfosByIDWithHandler:(id)handler
{
  v11 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  sectionInfoByID = [(UNCSectionInfoStore *)self->_sectionInfoStore sectionInfoByID];
  v6 = *MEMORY[0x1E6983388];
  if (os_log_type_enabled(*MEMORY[0x1E6983388], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v9 = 134217984;
    v10 = [sectionInfoByID count];
    _os_log_impl(&dword_1DA7A9000, v7, OS_LOG_TYPE_DEFAULT, "Reading allSectionInfosByID. Count %lu", &v9, 0xCu);
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, sectionInfoByID, 0);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)activeSectionIDsWithHandler:(id)handler
{
  v11 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  activeSectionIDs = [(UNCSectionInfoStore *)self->_sectionInfoStore activeSectionIDs];
  v6 = *MEMORY[0x1E6983388];
  if (os_log_type_enabled(*MEMORY[0x1E6983388], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v9 = 134217984;
    v10 = [activeSectionIDs count];
    _os_log_impl(&dword_1DA7A9000, v7, OS_LOG_TYPE_DEFAULT, "Reading activeSectionIDs. Count %lu", &v9, 0xCu);
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, activeSectionIDs, 0);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)addActiveSectionID:(id)d withHandler:(id)handler
{
  v12 = *MEMORY[0x1E69E9840];
  dCopy = d;
  handlerCopy = handler;
  v8 = *MEMORY[0x1E6983388];
  if (os_log_type_enabled(*MEMORY[0x1E6983388], OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = dCopy;
    _os_log_impl(&dword_1DA7A9000, v8, OS_LOG_TYPE_DEFAULT, "Adding activeSectionID %@", &v10, 0xCu);
  }

  [(UNCSectionInfoStore *)self->_sectionInfoStore addActiveSectionID:dCopy];
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)clearedInfoForSectionID:(id)d withHandler:(id)handler
{
  v13 = *MEMORY[0x1E69E9840];
  dCopy = d;
  handlerCopy = handler;
  v8 = *MEMORY[0x1E6983388];
  if (os_log_type_enabled(*MEMORY[0x1E6983388], OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = dCopy;
    _os_log_impl(&dword_1DA7A9000, v8, OS_LOG_TYPE_DEFAULT, "Reading clearedInfo for sectionID %@", &v11, 0xCu);
  }

  v9 = [(UNCSectionInfoStore *)self->_sectionInfoStore clearedInfoForSectionID:dCopy];
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v9, 0);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)clearedSectionsByIDWithHandler:(id)handler
{
  v11 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  clearedSectionsByID = [(UNCSectionInfoStore *)self->_sectionInfoStore clearedSectionsByID];
  v6 = *MEMORY[0x1E6983388];
  if (os_log_type_enabled(*MEMORY[0x1E6983388], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v9 = 134217984;
    v10 = [clearedSectionsByID count];
    _os_log_impl(&dword_1DA7A9000, v7, OS_LOG_TYPE_DEFAULT, "Reading clearedSectionsByID. Count %lu", &v9, 0xCu);
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, clearedSectionsByID, 0);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setClearedInfo:(id)info forSectionID:(id)d withHandler:(id)handler
{
  v15 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  dCopy = d;
  handlerCopy = handler;
  v11 = *MEMORY[0x1E6983388];
  if (os_log_type_enabled(*MEMORY[0x1E6983388], OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = dCopy;
    _os_log_impl(&dword_1DA7A9000, v11, OS_LOG_TYPE_DEFAULT, "Setting clearedInfo for sectionID %@", &v13, 0xCu);
  }

  [(UNCSectionInfoStore *)self->_sectionInfoStore setClearedInfo:infoCopy forSectionID:dCopy];
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)sortedSectionIDsWithHandler:(id)handler
{
  v11 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  sortedSectionIDs = [(UNCSectionInfoStore *)self->_sectionInfoStore sortedSectionIDs];
  v6 = *MEMORY[0x1E6983388];
  if (os_log_type_enabled(*MEMORY[0x1E6983388], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v9 = 134217984;
    v10 = [sortedSectionIDs count];
    _os_log_impl(&dword_1DA7A9000, v7, OS_LOG_TYPE_DEFAULT, "Reading sortedSectionIDs. Count %lu", &v9, 0xCu);
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, sortedSectionIDs, 0);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)readSavedClearedSectionsWithHandler:(id)handler
{
  v12 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  readClearedSections = [(UNCNotificationSettingsPersistentStore *)self->_persistentSettingsStore readClearedSections];
  v6 = MEMORY[0x1E6983388];
  v7 = *MEMORY[0x1E6983388];
  if (os_log_type_enabled(*MEMORY[0x1E6983388], OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = readClearedSections;
    _os_log_impl(&dword_1DA7A9000, v7, OS_LOG_TYPE_DEFAULT, "UNCSettingsListener readSavedCleared: %@", &v10, 0xCu);
  }

  if (handlerCopy)
  {
    v8 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_1DA7A9000, v8, OS_LOG_TYPE_DEFAULT, "UNCSettingsListener readSavedCleared invoking handler", &v10, 2u);
    }

    handlerCopy[2](handlerCopy, readClearedSections, 0);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)readSectionInfoWithHandler:(id)handler
{
  v12 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  readSectionInfo = [(UNCNotificationSettingsPersistentStore *)self->_persistentSettingsStore readSectionInfo];
  v6 = MEMORY[0x1E6983388];
  v7 = *MEMORY[0x1E6983388];
  if (os_log_type_enabled(*MEMORY[0x1E6983388], OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = readSectionInfo;
    _os_log_impl(&dword_1DA7A9000, v7, OS_LOG_TYPE_DEFAULT, "UNCSettingsListener readSectionInfo %@", &v10, 0xCu);
  }

  if (handlerCopy)
  {
    v8 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_1DA7A9000, v8, OS_LOG_TYPE_DEFAULT, "UNCSettingsListener readSectionInfo invoking handler", &v10, 2u);
    }

    handlerCopy[2](handlerCopy, readSectionInfo, 0);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)readSectionOrderWithHandler:(id)handler
{
  v10 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  readSectionOrder = [(UNCNotificationSettingsPersistentStore *)self->_persistentSettingsStore readSectionOrder];
  v6 = *MEMORY[0x1E6983388];
  if (os_log_type_enabled(*MEMORY[0x1E6983388], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = readSectionOrder;
    _os_log_impl(&dword_1DA7A9000, v6, OS_LOG_TYPE_DEFAULT, "UNCSettingsListener readSectionOrder %@", &v8, 0xCu);
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, readSectionOrder, 0);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)writeClearedSections:(id)sections
{
  v9 = *MEMORY[0x1E69E9840];
  sectionsCopy = sections;
  v5 = *MEMORY[0x1E6983388];
  if (os_log_type_enabled(*MEMORY[0x1E6983388], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = sectionsCopy;
    _os_log_impl(&dword_1DA7A9000, v5, OS_LOG_TYPE_DEFAULT, "UNCSettingsListener writeClearedSections %@", &v7, 0xCu);
  }

  [(UNCNotificationSettingsPersistentStore *)self->_persistentSettingsStore writeClearedSections:sectionsCopy];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)writeSectionInfo:(id)info
{
  v9 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v5 = *MEMORY[0x1E6983388];
  if (os_log_type_enabled(*MEMORY[0x1E6983388], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = infoCopy;
    _os_log_impl(&dword_1DA7A9000, v5, OS_LOG_TYPE_DEFAULT, "UNCSettingsListener writeSectionInfo %@", &v7, 0xCu);
  }

  [(UNCNotificationSettingsPersistentStore *)self->_persistentSettingsStore writeSectionInfo:infoCopy];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)writeSectionOrder:(id)order
{
  v9 = *MEMORY[0x1E69E9840];
  orderCopy = order;
  v5 = *MEMORY[0x1E6983388];
  if (os_log_type_enabled(*MEMORY[0x1E6983388], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = orderCopy;
    _os_log_impl(&dword_1DA7A9000, v5, OS_LOG_TYPE_DEFAULT, "UNCSettingsListener writeSectionOrder %@", &v7, 0xCu);
  }

  [(UNCNotificationSettingsPersistentStore *)self->_persistentSettingsStore writeSectionOrder:orderCopy];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)hasSectionInfoLegacyFileWithHandler:(id)handler
{
  handlerCopy = handler;
  hasSectionInfoLegacyFile = [(UNCNotificationSettingsPersistentStore *)self->_persistentSettingsStore hasSectionInfoLegacyFile];
  v5 = handlerCopy;
  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, hasSectionInfoLegacyFile, 0);
    v5 = handlerCopy;
  }
}

- (void)readSectionInfoLegacyFileWithHandler:(id)handler
{
  handlerCopy = handler;
  readSectionInfoLegacy = [(UNCNotificationSettingsPersistentStore *)self->_persistentSettingsStore readSectionInfoLegacy];
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, readSectionInfoLegacy, 0);
  }
}

- (void)readSectionInfoWithVersionNumberForMigrationWithHandler:(id)handler
{
  if (handler)
  {
    persistentSettingsStore = self->_persistentSettingsStore;
    handlerCopy = handler;
    readSectionInfoWithVersionNumberForMigration = [(UNCNotificationSettingsPersistentStore *)persistentSettingsStore readSectionInfoWithVersionNumberForMigration];
    handlerCopy[2](handlerCopy, readSectionInfoWithVersionNumberForMigration, 0);
  }
}

- (void)getEffectiveGlobalAnnounceCarPlaySettingWithHandler:(id)handler
{
  if (handler)
  {
    effectiveSettingsProvider = self->_effectiveSettingsProvider;
    handlerCopy = handler;
    (*(handler + 2))(handlerCopy, [(UNCEffectiveSettings *)effectiveSettingsProvider effectiveGlobalAnnounceCarPlaySetting], 0);
  }
}

- (void)getEffectiveGlobalAnnounceHeadphonesSettingWithHandler:(id)handler
{
  if (handler)
  {
    effectiveSettingsProvider = self->_effectiveSettingsProvider;
    handlerCopy = handler;
    (*(handler + 2))(handlerCopy, [(UNCEffectiveSettings *)effectiveSettingsProvider effectiveGlobalAnnounceHeadphoneSetting], 0);
  }
}

- (void)getEffectiveGlobalAnnounceSettingWithHandler:(id)handler
{
  if (handler)
  {
    effectiveSettingsProvider = self->_effectiveSettingsProvider;
    handlerCopy = handler;
    (*(handler + 2))(handlerCopy, [(UNCEffectiveSettings *)effectiveSettingsProvider effectiveGlobalAnnounceSetting], 0);
  }
}

- (void)getEffectiveGlobalContentPreviewsSettingWithHandler:(id)handler
{
  if (handler)
  {
    effectiveSettingsProvider = self->_effectiveSettingsProvider;
    handlerCopy = handler;
    (*(handler + 2))(handlerCopy, [(UNCEffectiveSettings *)effectiveSettingsProvider effectiveGlobalContentPreviewSetting], 0);
  }
}

- (void)getEffectiveGlobalNotificationListDisplayStyleSettingWithHandler:(id)handler
{
  if (handler)
  {
    effectiveSettingsProvider = self->_effectiveSettingsProvider;
    handlerCopy = handler;
    (*(handler + 2))(handlerCopy, [(UNCEffectiveSettings *)effectiveSettingsProvider effectiveGlobalNotificationListDisplayStyleSetting], 0);
  }
}

- (void)getEffectiveGlobalScheduledDeliverySettingWithHandler:(id)handler
{
  if (handler)
  {
    effectiveSettingsProvider = self->_effectiveSettingsProvider;
    handlerCopy = handler;
    (*(handler + 2))(handlerCopy, [(UNCEffectiveSettings *)effectiveSettingsProvider effectiveGlobalScheduledDeliverySetting], 0);
  }
}

- (void)getEffectiveGlobalScheduledDeliveryShowNextSummarySettingWithHandler:(id)handler
{
  if (handler)
  {
    effectiveSettingsProvider = self->_effectiveSettingsProvider;
    handlerCopy = handler;
    (*(handler + 2))(handlerCopy, [(UNCEffectiveSettings *)effectiveSettingsProvider effectiveGlobalScheduledDeliveryShowNextSummarySetting], 0);
  }
}

- (void)getEffectiveGlobalScheduledDeliveryTimesWithHandler:(id)handler
{
  if (handler)
  {
    effectiveSettingsProvider = self->_effectiveSettingsProvider;
    handlerCopy = handler;
    effectiveGlobalScheduledDeliveryTimes = [(UNCEffectiveSettings *)effectiveSettingsProvider effectiveGlobalScheduledDeliveryTimes];
    (*(handler + 2))(handlerCopy, effectiveGlobalScheduledDeliveryTimes, 0);
  }
}

- (void)setEffectiveGlobalAnnounceCarPlaySetting:(int64_t)setting withHandler:(id)handler
{
  handlerCopy = handler;
  [(UNCEffectiveSettings *)self->_effectiveSettingsProvider setGlobalAnnounceCarPlaySetting:setting];
  v6 = handlerCopy;
  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy);
    v6 = handlerCopy;
  }
}

- (void)setEffectiveGlobalAnnounceHeadphonesSetting:(int64_t)setting withHandler:(id)handler
{
  handlerCopy = handler;
  [(UNCEffectiveSettings *)self->_effectiveSettingsProvider setGlobalAnnounceHeadphoneSetting:setting];
  v6 = handlerCopy;
  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy);
    v6 = handlerCopy;
  }
}

- (void)setEffectiveGlobalAnnounceSetting:(int64_t)setting withHandler:(id)handler
{
  handlerCopy = handler;
  [(UNCEffectiveSettings *)self->_effectiveSettingsProvider setGlobalAnnounceSetting:setting];
  v6 = handlerCopy;
  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy);
    v6 = handlerCopy;
  }
}

- (void)setEffectiveGlobalContentPreviewsSetting:(int64_t)setting withHandler:(id)handler
{
  handlerCopy = handler;
  [(UNCEffectiveSettings *)self->_effectiveSettingsProvider setGlobalContentPreviewSetting:setting];
  v6 = handlerCopy;
  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy);
    v6 = handlerCopy;
  }
}

- (void)setEffectiveGlobalNotificationListDisplayStyleSetting:(int64_t)setting withHandler:(id)handler
{
  handlerCopy = handler;
  [(UNCEffectiveSettings *)self->_effectiveSettingsProvider setGlobalNotificationListDisplayStyleSetting:setting];
  v6 = handlerCopy;
  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy);
    v6 = handlerCopy;
  }
}

- (void)setEffectiveGlobalScheduledDeliverySetting:(int64_t)setting withHandler:(id)handler
{
  handlerCopy = handler;
  [(UNCEffectiveSettings *)self->_effectiveSettingsProvider setGlobalScheduledDeliverySetting:setting];
  v6 = handlerCopy;
  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy);
    v6 = handlerCopy;
  }
}

- (void)setEffectiveGlobalScheduledDeliveryShowNextSummarySetting:(int64_t)setting withHandler:(id)handler
{
  handlerCopy = handler;
  [(UNCEffectiveSettings *)self->_effectiveSettingsProvider setGlobalScheduledDeliveryShowNextSummarySetting:setting];
  v6 = handlerCopy;
  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy);
    v6 = handlerCopy;
  }
}

- (void)setEffectiveGlobalScheduledDeliveryTimes:(id)times withHandler:(id)handler
{
  handlerCopy = handler;
  [(UNCEffectiveSettings *)self->_effectiveSettingsProvider setGlobalScheduledDeliveryTimes:times];
  v6 = handlerCopy;
  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy);
    v6 = handlerCopy;
  }
}

- (void)pairedSyncDeviceCountWithHandler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler, 0);
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