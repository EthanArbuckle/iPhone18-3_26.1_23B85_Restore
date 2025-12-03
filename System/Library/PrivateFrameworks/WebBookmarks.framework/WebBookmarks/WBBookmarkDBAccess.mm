@interface WBBookmarkDBAccess
- (BOOL)addItem:(void *)item underFolderWithServerId:(id)id database:(void *)database;
- (BOOL)changeIsDAVMoveChange:(void *)change;
- (BOOL)changeIsMoveChange:(void *)change;
- (BOOL)item:(void *)item isEqualToItem:(void *)toItem;
- (BOOL)item:(void *)item isInFolderWithServerSyncId:(id)id;
- (BOOL)performMaintenanceOnDatabase:(void *)database afterVersion:(id)version;
- (NSString)description;
- (WBBookmarkDBAccess)initWithCollectionType:(int64_t)type storeOwner:(int64_t)owner;
- (__CFArray)copyChangesWithDatabase:(void *)database changeToken:(const void *)token;
- (__CFData)copySyncDataWithDatabase:(void *)database;
- (__CFData)copySyncDataWithItem:(void *)item;
- (__CFString)copyParentServerIdWithItem:(void *)item;
- (__CFString)copyServerIdWithChange:(void *)change;
- (__CFString)copyServerIdWithItem:(void *)item;
- (__CFString)copySyncKeyWithItem:(void *)item;
- (id)copyAccountHashWithDatabase:(void *)database;
- (id)copyAttributesWithItem:(void *)item;
- (id)copyChangeTokenWithDatabase:(void *)database;
- (id)copyDeletedBookmarkSyncDataWithChange:(void *)change;
- (id)copyDeviceIdentifier;
- (id)copyFirstServerIdInFolderWithServerId:(id)id database:(void *)database;
- (id)copyLastServerIdInFolderWithServerId:(id)id database:(void *)database;
- (id)copyLocalIDsInFolderWithLocalID:(id)d database:(void *)database;
- (id)copyModifiedAttributesWithChange:(void *)change;
- (id)copySaveURLForAssetWithKey:(id)key item:(void *)item;
- (id)copyServerIdInFolderAfterServerId:(id)id database:(void *)database;
- (id)copyServerIdInFolderBeforeServerId:(id)id database:(void *)database;
- (id)copyServerIdsInFolderWithServerId:(id)id database:(void *)database;
- (id)copyUsernameAccountHashWithDatabase:(void *)database;
- (id)copyValueForKey:(id)key item:(void *)item;
- (int)changeTypeForChange:(void *)change;
- (int64_t)bookmarkTypeForChange:(void *)change;
- (int64_t)bookmarkTypeWithBookmark:(void *)bookmark;
- (int64_t)folderTypeForChange:(void *)change;
- (int64_t)folderTypeWithFolder:(void *)folder;
- (int64_t)itemTypeForChange:(void *)change;
- (int64_t)itemTypeWithItem:(void *)item;
- (int64_t)localCloudKitMigrationState:(void *)state;
- (void)beginMergingChangesWithDatabase:(void *)database;
- (void)clearAllSyncDataWithDatabase:(void *)database;
- (void)clearChangesWithChangeToken:(void *)token database:(void *)database;
- (void)clearlAllLocalBookmarksForAutomatedTestingWithDatabase:(void *)database;
- (void)closeDatabase:(void *)database shouldSave:(BOOL)save;
- (void)copyChangedItemWithChange:(void *)change;
- (void)copyDeviceIdentifier;
- (void)copyItemWithLocalID:(id)d database:(void *)database;
- (void)copyItemWithServerId:(id)id database:(void *)database;
- (void)createBookmarkWithType:(int64_t)type database:(void *)database;
- (void)createDatabase;
- (void)createFolderWithType:(int64_t)type database:(void *)database;
- (void)finishMergingChangesWithDatabase:(void *)database;
- (void)notifyForSaveOfAssetWithKey:(id)key item:(void *)item;
- (void)openDatabase:(void *)database;
- (void)performDeduplicationWithDatabase:(void *)database mode:(int64_t)mode;
- (void)removeItemWithServerId:(__CFString *)id database:(void *)database;
- (void)resetDeviceIdentifier;
- (void)saveDatabase:(void *)database;
- (void)setAccountHash:(id)hash database:(void *)database;
- (void)setChildrenOrder:(id)order forFolderWithServerId:(id)id database:(void *)database;
- (void)setDeletedBookmarkSyncData:(id)data change:(void *)change;
- (void)setLocalCloudKitMigrationState:(int64_t)state database:(void *)database;
- (void)setModifiedAttributes:(id)attributes item:(void *)item;
- (void)setServerId:(__CFString *)id item:(void *)item;
- (void)setSyncData:(__CFData *)data database:(void *)database;
- (void)setSyncData:(__CFData *)data item:(void *)item;
- (void)setSyncKey:(__CFString *)key item:(void *)item;
@end

@implementation WBBookmarkDBAccess

- (WBBookmarkDBAccess)initWithCollectionType:(int64_t)type storeOwner:(int64_t)owner
{
  v10.receiver = self;
  v10.super_class = WBBookmarkDBAccess;
  v6 = [(WBBookmarkDBAccess *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_collectionType = type;
    v6->_storeOwner = owner;
    v8 = v6;
  }

  return v7;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = WBNSStringFromCollectionType(self->_collectionType);
  v6 = WBNSStringFromCollectionStoreOwner(self->_storeOwner);
  v7 = [v3 stringWithFormat:@"<%@: %p, type: %@, store owner: %@>", v4, self, v5, v6];

  return v7;
}

- (void)createDatabase
{
  v25 = *MEMORY[0x277D85DE8];
  collectionType = self->_collectionType;
  storeOwner = self->_storeOwner;
  v4 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v24 = 136315138;
    *&v24[4] = "WebBookmarkDatabaseCreate";
    _os_log_impl(&dword_272C20000, v4, OS_LOG_TYPE_INFO, "-> %s()", v24, 0xCu);
  }

  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v7 = [bundleIdentifier hasPrefix:@"com.apple.dataaccess"];

  if (collectionType == 1)
  {
    v10 = objc_opt_class();
    v11 = +[WBCollectionConfiguration safariTabCollectionConfiguration];
LABEL_9:
    v12 = v11;
    goto LABEL_11;
  }

  if (!collectionType)
  {
    v8 = off_279E74A70;
    if (!v7)
    {
      v8 = off_279E74A68;
    }

    v9 = *v8;
    v10 = objc_opt_class();
    v11 = +[WBCollectionConfiguration safariBookmarkCollectionConfiguration];
    goto LABEL_9;
  }

  v12 = 0;
  v10 = 0;
LABEL_11:
  [v12 setStoreOwner:storeOwner];
  lockSync = [v10 lockSync];
  v14 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
  if (lockSync)
  {
    if (v15)
    {
      *v24 = 136315138;
      *&v24[4] = "WebBookmarkDatabaseCreate";
      _os_log_impl(&dword_272C20000, v14, OS_LOG_TYPE_INFO, "@@ %s: Did successfully lock database", v24, 0xCu);
    }

    v16 = [[v10 alloc] initWithConfiguration:v12 checkIntegrity:0];
    v17 = v16;
    if (v16)
    {
      if (!v7 || ![v16 _syncType])
      {
        v21 = WBS_LOG_CHANNEL_PREFIXBookmarks();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          *v24 = 136315394;
          *&v24[4] = "WebBookmarkDatabaseCreate";
          *&v24[12] = 2114;
          *&v24[14] = v17;
          _os_log_impl(&dword_272C20000, v21, OS_LOG_TYPE_INFO, "<- %s -> database: %{public}@", v24, 0x16u);
        }

        v20 = v17;
        goto LABEL_29;
      }

      v18 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *v24 = 136315138;
        *&v24[4] = "WebBookmarkDatabaseCreate";
        v19 = "<- %s -> database: NULL due to not running in data access process with DAV enabled";
LABEL_27:
        _os_log_impl(&dword_272C20000, v18, OS_LOG_TYPE_INFO, v19, v24, 0xCu);
      }
    }

    else
    {
      v18 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *v24 = 136315138;
        *&v24[4] = "WebBookmarkDatabaseCreate";
        v19 = "<- %s -> database: NULL due to failure to allocate WebBookmarkCollection";
        goto LABEL_27;
      }
    }

    [v10 unlockSync];
    v20 = 0;
LABEL_29:

    goto LABEL_30;
  }

  if (v15)
  {
    *v24 = 136315138;
    *&v24[4] = "WebBookmarkDatabaseCreate";
    _os_log_impl(&dword_272C20000, v14, OS_LOG_TYPE_INFO, "<- %s -> database: NULL due to failure to obtain lock", v24, 0xCu);
  }

  v20 = 0;
LABEL_30:

  v22 = *MEMORY[0x277D85DE8];
  return v20;
}

- (void)openDatabase:(void *)database
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "BADatabaseOpen";
    v10 = 2114;
    databaseCopy = database;
    _os_log_impl(&dword_272C20000, v4, OS_LOG_TYPE_INFO, "-> %s(database: %{public}@)", &v8, 0x16u);
  }

  databaseCopy2 = database;
  if (([databaseCopy2 maintainsSyncMetadata] & 1) == 0)
  {
    [databaseCopy2 beginSyncTransaction];
  }

  v6 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 136315138;
    v9 = "BADatabaseOpen";
    _os_log_impl(&dword_272C20000, v6, OS_LOG_TYPE_INFO, "<- %s", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)saveDatabase:(void *)database
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "BADatabaseSave";
    v10 = 2114;
    databaseCopy = database;
    _os_log_impl(&dword_272C20000, v4, OS_LOG_TYPE_INFO, "-> %s(database: %{public}@)", &v8, 0x16u);
  }

  databaseCopy2 = database;
  if (([databaseCopy2 maintainsSyncMetadata] & 1) == 0)
  {
    [databaseCopy2 commitSyncTransaction];
  }

  [databaseCopy2 _postBookmarksDidReloadNotificationAndStartReadingListFetcherIfChangesWereMade];
  if (([databaseCopy2 maintainsSyncMetadata] & 1) == 0)
  {
    [databaseCopy2 beginSyncTransaction];
  }

  v6 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 136315138;
    v9 = "BADatabaseSave";
    _os_log_impl(&dword_272C20000, v6, OS_LOG_TYPE_INFO, "<- %s", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)closeDatabase:(void *)database shouldSave:(BOOL)save
{
  saveCopy = save;
  v17 = *MEMORY[0x277D85DE8];
  v6 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v11 = 136315650;
    v12 = "BADatabaseClose";
    v13 = 2114;
    databaseCopy = database;
    v15 = 1024;
    v16 = saveCopy;
    _os_log_impl(&dword_272C20000, v6, OS_LOG_TYPE_INFO, "-> %s(database: %{public}@, shouldSave: %d)", &v11, 0x1Cu);
  }

  databaseCopy2 = database;
  maintainsSyncMetadata = [databaseCopy2 maintainsSyncMetadata];
  if (saveCopy)
  {
    if ((maintainsSyncMetadata & 1) == 0)
    {
      [databaseCopy2 commitSyncTransaction];
    }

    [databaseCopy2 _restoreMissingSpecialBookmarksWithChangeNotification:0];
    [databaseCopy2 _postBookmarksDidReloadNotificationAndStartReadingListFetcherIfChangesWereMade];
  }

  else if ((maintainsSyncMetadata & 1) == 0)
  {
    [databaseCopy2 rollbackSyncTransaction];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [objc_opt_class() unlockSync];
    }
  }

  v9 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = 136315138;
    v12 = "BADatabaseClose";
    _os_log_impl(&dword_272C20000, v9, OS_LOG_TYPE_INFO, "<- %s", &v11, 0xCu);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (__CFData)copySyncDataWithDatabase:(void *)database
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v11 = 136315394;
    v12 = "BADatabaseCopySyncData";
    v13 = 2114;
    databaseCopy = database;
    _os_log_impl(&dword_272C20000, v4, OS_LOG_TYPE_INFO, "-> %s(database: %{public}@)", &v11, 0x16u);
  }

  databaseCopy2 = database;
  v6 = [databaseCopy2 syncDataForKey:@"BASyncData"];
  v7 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    if (v6)
    {
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "length")}];
    }

    else
    {
      v8 = @"(null)";
    }

    v11 = 136315394;
    v12 = "BADatabaseCopySyncData";
    v13 = 2114;
    databaseCopy = v8;
    _os_log_impl(&dword_272C20000, v7, OS_LOG_TYPE_INFO, "<- %s -> Return data of size: %{public}@", &v11, 0x16u);
    if (v6)
    {
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)setSyncData:(__CFData *)data database:(void *)database
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    if (data)
    {
      v7 = [MEMORY[0x277CCABB0] numberWithLong:CFDataGetLength(data)];
    }

    else
    {
      v7 = @"(null)";
    }

    v10 = 136315650;
    v11 = "BADatabaseSetSyncData";
    v12 = 2114;
    databaseCopy = database;
    v14 = 2114;
    v15 = v7;
    _os_log_impl(&dword_272C20000, v6, OS_LOG_TYPE_INFO, "-> %s(database: %{public}@, data size: %{public}@)", &v10, 0x20u);
    if (data)
    {
    }
  }

  [database setSyncData:data forKey:@"BASyncData"];
  v8 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v10 = 136315138;
    v11 = "BADatabaseSetSyncData";
    _os_log_impl(&dword_272C20000, v8, OS_LOG_TYPE_INFO, "<- %s", &v10, 0xCu);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)clearAllSyncDataWithDatabase:(void *)database
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "BADatabaseClearAllSyncData";
    v9 = 2114;
    databaseCopy = database;
    _os_log_impl(&dword_272C20000, v4, OS_LOG_TYPE_INFO, "-> %s(database: %{public}@)", &v7, 0x16u);
  }

  [database _clearAllSyncData];
  v5 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 136315138;
    v8 = "BADatabaseClearAllSyncData";
    _os_log_impl(&dword_272C20000, v5, OS_LOG_TYPE_INFO, "<- %s", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (__CFArray)copyChangesWithDatabase:(void *)database changeToken:(const void *)token
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v14 = 136315394;
    v15 = "BADatabaseCopyChanges";
    v16 = 2114;
    databaseCopy = database;
    _os_log_impl(&dword_272C20000, v6, OS_LOG_TYPE_INFO, "-> %s(database: %{public}@)", &v14, 0x16u);
  }

  databaseCopy2 = database;
  changeList = [databaseCopy2 changeList];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(databaseCopy2, "currentRecordGeneration")}];

  v10 = v9;
  *token = v10;
  v11 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v14 = 136315650;
    v15 = "BADatabaseCopyChanges";
    v16 = 2114;
    databaseCopy = changeList;
    v18 = 2114;
    v19 = v10;
    _os_log_impl(&dword_272C20000, v11, OS_LOG_TYPE_INFO, "<- %s -> %{public}@, %{public}@", &v14, 0x20u);
  }

  v12 = *MEMORY[0x277D85DE8];
  return changeList;
}

- (void)clearChangesWithChangeToken:(void *)token database:(void *)database
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v27 = 136315650;
    v28 = "BADatabaseClearChangesForToken";
    v29 = 2114;
    databaseCopy = database;
    v31 = 2114;
    tokenCopy = token;
    _os_log_impl(&dword_272C20000, v6, OS_LOG_TYPE_INFO, "-> %s(database: %{public}@, %{public}@)", &v27, 0x20u);
  }

  databaseCopy2 = database;
  intValue = [token intValue];
  if ([databaseCopy2 currentRecordGeneration] != intValue)
  {
    v9 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [(WBBookmarkDBAccess *)v9 clearChangesWithChangeToken:v10 database:v11, v12, v13, v14, v15, v16];
    }
  }

  if (([databaseCopy2 _clearChangeList] & 1) == 0)
  {
    v17 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      [(WBBookmarkDBAccess *)v17 clearChangesWithChangeToken:v18 database:v19, v20, v21, v22, v23, v24];
    }
  }

  v25 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    v27 = 136315138;
    v28 = "BADatabaseClearChangesForToken";
    _os_log_impl(&dword_272C20000, v25, OS_LOG_TYPE_INFO, "<- %s", &v27, 0xCu);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)removeItemWithServerId:(__CFString *)id database:(void *)database
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    wb_stringByRedactingBookmarkDAVServerID = [(__CFString *)id wb_stringByRedactingBookmarkDAVServerID];
    v30 = 136315650;
    *v31 = "BADatabaseRemoveItemWithServerId";
    *&v31[8] = 2114;
    *&v31[10] = database;
    *&v31[18] = 2114;
    v32 = wb_stringByRedactingBookmarkDAVServerID;
    _os_log_impl(&dword_272C20000, v7, OS_LOG_TYPE_INFO, "-> %s(database: %{public}@, %{public}@)", &v30, 0x20u);
  }

  if (id)
  {
    databaseCopy = database;
    v10 = [databaseCopy bookmarkWithServerID:id excludeDeletedBookmarks:0];
    v11 = v10;
    if (v10)
    {
      if ([v10 isReadingListItem])
      {
        uUID = [v11 UUID];
        [databaseCopy clearReadingListArchiveWithUUID:uUID];
      }

      if ([v11 isReadingListFolder])
      {
        [databaseCopy clearAllReadingListArchives];
      }

      v13 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = v13;
        identifier = [v11 identifier];
        wb_stringByRedactingBookmarkDAVServerID2 = [(__CFString *)id wb_stringByRedactingBookmarkDAVServerID];
        parentID = [v11 parentID];
        v30 = 67109634;
        *v31 = identifier;
        *&v31[4] = 2114;
        *&v31[6] = wb_stringByRedactingBookmarkDAVServerID2;
        *&v31[14] = 1024;
        *&v31[16] = parentID;
        _os_log_impl(&dword_272C20000, v14, OS_LOG_TYPE_INFO, "Deleting bookmark with ID %d and serverID %{public}@ from parent with ID %d", &v30, 0x18u);
      }

      [databaseCopy deleteBookmark:v11 leaveTombstone:0];
      v18 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        goto LABEL_22;
      }

      v30 = 136315138;
      *v31 = "BADatabaseRemoveItemWithServerId";
    }

    else
    {
      v28 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
      {
        [WBBookmarkDBAccess removeItemWithServerId:v28 database:?];
      }

      v18 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        goto LABEL_22;
      }

      v30 = 136315138;
      *v31 = "BADatabaseRemoveItemWithServerId";
    }

    _os_log_impl(&dword_272C20000, v18, OS_LOG_TYPE_INFO, "<- %s", &v30, 0xCu);
LABEL_22:

    goto LABEL_23;
  }

  v19 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
  {
    [(WBBookmarkDBAccess *)v19 removeItemWithServerId:v20 database:v21, v22, v23, v24, v25, v26];
  }

  v27 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    v30 = 136315138;
    *v31 = "BADatabaseRemoveItemWithServerId";
    _os_log_impl(&dword_272C20000, v27, OS_LOG_TYPE_INFO, "<- %s", &v30, 0xCu);
  }

LABEL_23:
  v29 = *MEMORY[0x277D85DE8];
}

- (void)beginMergingChangesWithDatabase:(void *)database
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "BADatabaseBeginMergingChanges";
    v9 = 2114;
    databaseCopy = database;
    _os_log_impl(&dword_272C20000, v4, OS_LOG_TYPE_INFO, "-> %s(database: %{public}@)", &v7, 0x16u);
  }

  [database _setMergeMode:1];
  v5 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 136315138;
    v8 = "BADatabaseBeginMergingChanges";
    _os_log_impl(&dword_272C20000, v5, OS_LOG_TYPE_INFO, "<- %s", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)finishMergingChangesWithDatabase:(void *)database
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "BADatabaseFinishMergingChanges";
    v9 = 2114;
    databaseCopy = database;
    _os_log_impl(&dword_272C20000, v4, OS_LOG_TYPE_INFO, "-> %s(database: %{public}@)", &v7, 0x16u);
  }

  [database _setMergeMode:0];
  v5 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 136315138;
    v8 = "BADatabaseFinishMergingChanges";
    _os_log_impl(&dword_272C20000, v5, OS_LOG_TYPE_INFO, "<- %s", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (__CFString)copyServerIdWithItem:(void *)item
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v13 = 136315394;
    v14 = "BAItemCopyServerId";
    v15 = 2114;
    itemCopy = item;
    _os_log_impl(&dword_272C20000, v4, OS_LOG_TYPE_INFO, "-> %s(item: %{public}@)", &v13, 0x16u);
  }

  bookmark = [item bookmark];
  serverID = [bookmark serverID];
  v7 = [serverID copy];

  v8 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    wb_stringByRedactingBookmarkDAVServerID = [(__CFString *)v7 wb_stringByRedactingBookmarkDAVServerID];
    v13 = 136315394;
    v14 = "BAItemCopyServerId";
    v15 = 2114;
    itemCopy = wb_stringByRedactingBookmarkDAVServerID;
    _os_log_impl(&dword_272C20000, v9, OS_LOG_TYPE_INFO, "<- %s -> %{public}@", &v13, 0x16u);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)setServerId:(__CFString *)id item:(void *)item
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    wb_stringByRedactingBookmarkDAVServerID = [(__CFString *)id wb_stringByRedactingBookmarkDAVServerID];
    v15 = 136315650;
    v16 = "BAItemSetServerId";
    v17 = 2114;
    itemCopy = item;
    v19 = 2114;
    v20 = wb_stringByRedactingBookmarkDAVServerID;
    _os_log_impl(&dword_272C20000, v7, OS_LOG_TYPE_INFO, "-> %s(item: %{public}@, %{public}@)", &v15, 0x20u);
  }

  itemCopy2 = item;
  bookmark = [itemCopy2 bookmark];
  if ([bookmark isInserted])
  {
    collection = [itemCopy2 collection];
    bookmark2 = [itemCopy2 bookmark];
    [collection setServerID:id forBookmark:bookmark2];
  }

  else
  {
    [bookmark setServerID:id];
  }

  v13 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v15 = 136315138;
    v16 = "BAItemSetServerId";
    _os_log_impl(&dword_272C20000, v13, OS_LOG_TYPE_INFO, "<- %s", &v15, 0xCu);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (__CFString)copyParentServerIdWithItem:(void *)item
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v16 = 136315394;
    v17 = "BAItemCopyParentServerId";
    v18 = 2114;
    itemCopy = item;
    _os_log_impl(&dword_272C20000, v4, OS_LOG_TYPE_INFO, "-> %s(item: %{public}@)", &v16, 0x16u);
  }

  itemCopy2 = item;
  bookmark = [itemCopy2 bookmark];
  parentID = [bookmark parentID];

  collection = [itemCopy2 collection];

  v9 = [collection serverIDForBookmarkID:parentID];
  v10 = [v9 copy];

  v11 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = v11;
    wb_stringByRedactingBookmarkDAVServerID = [(__CFString *)v10 wb_stringByRedactingBookmarkDAVServerID];
    v16 = 136315394;
    v17 = "BAItemCopyParentServerId";
    v18 = 2114;
    itemCopy = wb_stringByRedactingBookmarkDAVServerID;
    _os_log_impl(&dword_272C20000, v12, OS_LOG_TYPE_INFO, "<- %s -> %{public}@", &v16, 0x16u);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v10;
}

- (__CFString)copySyncKeyWithItem:(void *)item
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v11 = 136315394;
    v12 = "BAItemCopySyncKey";
    v13 = 2114;
    itemCopy = item;
    _os_log_impl(&dword_272C20000, v4, OS_LOG_TYPE_INFO, "-> %s(item: %{public}@)", &v11, 0x16u);
  }

  bookmark = [item bookmark];
  syncKey = [bookmark syncKey];
  v7 = [syncKey copy];

  v8 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v11 = 136315394;
    v12 = "BAItemCopySyncKey";
    v13 = 2114;
    itemCopy = v7;
    _os_log_impl(&dword_272C20000, v8, OS_LOG_TYPE_INFO, "<- %s -> syncKey: %{public}@", &v11, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)setSyncKey:(__CFString *)key item:(void *)item
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v12 = 136315650;
    v13 = "BAItemSetSyncKey";
    v14 = 2114;
    itemCopy = item;
    v16 = 2114;
    keyCopy = key;
    _os_log_impl(&dword_272C20000, v6, OS_LOG_TYPE_INFO, "-> %s(item: %{public}@, syncKey: %{public}@)", &v12, 0x20u);
  }

  itemCopy2 = item;
  bookmark = [itemCopy2 bookmark];
  if ([bookmark isInserted])
  {
    collection = [itemCopy2 collection];
    [collection _setSyncKey:key forBookmark:bookmark];
  }

  else
  {
    [bookmark setSyncKey:key];
  }

  v10 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v12 = 136315138;
    v13 = "BAItemSetSyncKey";
    _os_log_impl(&dword_272C20000, v10, OS_LOG_TYPE_INFO, "<- %s", &v12, 0xCu);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (__CFData)copySyncDataWithItem:(void *)item
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v13 = 136315394;
    v14 = "BAItemCopySyncData";
    v15 = 2114;
    itemCopy = item;
    _os_log_impl(&dword_272C20000, v4, OS_LOG_TYPE_INFO, "-> %s(item: %{public}@)", &v13, 0x16u);
  }

  itemCopy2 = item;
  bookmark = [itemCopy2 bookmark];
  syncData = [bookmark syncData];
  v8 = [syncData copy];

  v9 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    if (v8)
    {
      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v8, "length")}];
    }

    else
    {
      v10 = @"(null)";
    }

    v13 = 136315394;
    v14 = "BAItemCopySyncData";
    v15 = 2114;
    itemCopy = v10;
    _os_log_impl(&dword_272C20000, v9, OS_LOG_TYPE_INFO, "<- %s -> Return data of size: %{public}@", &v13, 0x16u);
    if (v8)
    {
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)setSyncData:(__CFData *)data item:(void *)item
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    if (data)
    {
      v7 = [MEMORY[0x277CCABB0] numberWithLong:CFDataGetLength(data)];
    }

    else
    {
      v7 = @"(null)";
    }

    v13 = 136315650;
    v14 = "BAItemSetSyncData";
    v15 = 2114;
    itemCopy = item;
    v17 = 2114;
    v18 = v7;
    _os_log_impl(&dword_272C20000, v6, OS_LOG_TYPE_INFO, "-> %s(item: %{public}@, data of size: %{public}@)", &v13, 0x20u);
    if (data)
    {
    }
  }

  itemCopy2 = item;
  bookmark = [itemCopy2 bookmark];
  if ([bookmark isInserted])
  {
    collection = [itemCopy2 collection];
    [collection _setSyncData:data forBookmark:bookmark];
  }

  else
  {
    [bookmark setSyncData:data];
  }

  v11 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v13 = 136315138;
    v14 = "BAItemSetSyncData";
    _os_log_impl(&dword_272C20000, v11, OS_LOG_TYPE_INFO, "<- %s", &v13, 0xCu);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (int)changeTypeForChange:(void *)change
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "BAChangeGetChangeType";
    v11 = 2114;
    changeCopy = change;
    _os_log_impl(&dword_272C20000, v4, OS_LOG_TYPE_INFO, "-> %s(change: %{public}@)", &v9, 0x16u);
  }

  changeType = [change changeType];
  v6 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "BAChangeGetChangeType";
    v11 = 1024;
    LODWORD(changeCopy) = changeType;
    _os_log_impl(&dword_272C20000, v6, OS_LOG_TYPE_INFO, "<- %s -> %d", &v9, 0x12u);
  }

  v7 = *MEMORY[0x277D85DE8];
  return changeType;
}

- (void)copyChangedItemWithChange:(void *)change
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v14 = 136315394;
    v15 = "BAChangeCopyChangedItem";
    v16 = 2114;
    changeCopy = change;
    _os_log_impl(&dword_272C20000, v4, OS_LOG_TYPE_INFO, "-> %s(change: %{public}@)", &v14, 0x16u);
  }

  changeCopy2 = change;
  if ([changeCopy2 changeType] == 2)
  {
    v6 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v14 = 136315138;
      v15 = "BAChangeCopyChangedItem";
      _os_log_impl(&dword_272C20000, v6, OS_LOG_TYPE_INFO, "<- %s -> (null)", &v14, 0xCu);
    }

    v7 = 0;
  }

  else
  {
    v8 = [BABookmarkItem alloc];
    collection = [changeCopy2 collection];
    bookmark = [changeCopy2 bookmark];
    v7 = [(BABookmarkItem *)v8 initWithBookmarkCollection:collection bookmark:bookmark];

    v11 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v14 = 136315394;
      v15 = "BAChangeCopyChangedItem";
      v16 = 2114;
      changeCopy = v7;
      _os_log_impl(&dword_272C20000, v11, OS_LOG_TYPE_INFO, "<- %s -> %{public}@", &v14, 0x16u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v7;
}

- (__CFString)copyServerIdWithChange:(void *)change
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v12 = 136315394;
    v13 = "BAChangeCopyServerId";
    v14 = 2114;
    changeCopy = change;
    _os_log_impl(&dword_272C20000, v4, OS_LOG_TYPE_INFO, "-> %s(change: %{public}@)", &v12, 0x16u);
  }

  bookmark = [change bookmark];
  serverID = [bookmark serverID];

  v7 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    wb_stringByRedactingBookmarkDAVServerID = [(__CFString *)serverID wb_stringByRedactingBookmarkDAVServerID];
    v12 = 136315394;
    v13 = "BAChangeCopyServerId";
    v14 = 2114;
    changeCopy = wb_stringByRedactingBookmarkDAVServerID;
    _os_log_impl(&dword_272C20000, v8, OS_LOG_TYPE_INFO, "<- %s -> %{public}@", &v12, 0x16u);
  }

  v10 = *MEMORY[0x277D85DE8];
  return serverID;
}

- (BOOL)changeIsDAVMoveChange:(void *)change
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = "BAChangeIsMove";
    v12 = 2114;
    changeCopy = change;
    _os_log_impl(&dword_272C20000, v4, OS_LOG_TYPE_INFO, "-> %s(%{public}@)", &v10, 0x16u);
  }

  bookmark = [change bookmark];
  v6 = [bookmark attributesMarkedAsModified:64];

  v7 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = "BAChangeIsMove";
    v12 = 1024;
    LODWORD(changeCopy) = v6;
    _os_log_impl(&dword_272C20000, v7, OS_LOG_TYPE_INFO, "<- %s -> %d", &v10, 0x12u);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

- (int64_t)itemTypeForChange:(void *)change
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = "CKBAChangeGetItemType";
    v12 = 2114;
    changeCopy = change;
    _os_log_impl(&dword_272C20000, v4, OS_LOG_TYPE_INFO, "-> %s(change: %{public}@)", &v10, 0x16u);
  }

  bookmark = [change bookmark];
  isFolder = [bookmark isFolder];

  v7 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = "CKBAChangeGetItemType";
    v12 = 2048;
    changeCopy = isFolder;
    _os_log_impl(&dword_272C20000, v7, OS_LOG_TYPE_INFO, "<- %s -> %ld", &v10, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
  return isFolder;
}

- (int64_t)folderTypeForChange:(void *)change
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v11 = 136315394;
    v12 = "CKBAChangeGetFolder";
    v13 = 2114;
    changeCopy = change;
    _os_log_impl(&dword_272C20000, v4, OS_LOG_TYPE_INFO, "-> %s(folder: %{public}@)", &v11, 0x16u);
  }

  bookmark = [change bookmark];
  specialID = [bookmark specialID];
  switch(specialID)
  {
    case 4:
      v7 = 0;
      break;
    case 1:
      v7 = 1;
      break;
    case 2:
      v7 = 2;
      break;
    case 3:
      v7 = 3;
      break;
    default:
      v7 = 0;
      break;
  }

  v8 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v11 = 136315394;
    v12 = "CKBAChangeGetFolder";
    v13 = 2048;
    changeCopy = v7;
    _os_log_impl(&dword_272C20000, v8, OS_LOG_TYPE_INFO, "<- %s -> %ld", &v11, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

- (int64_t)bookmarkTypeForChange:(void *)change
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "CKBAChangeGetBookmarkType";
    v11 = 2114;
    changeCopy = change;
    _os_log_impl(&dword_272C20000, v4, OS_LOG_TYPE_INFO, "-> %s(bookmark: %{public}@)", &v9, 0x16u);
  }

  bookmark = [change bookmark];
  v6 = CKBABookmarkTypeForBookmark(bookmark);

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)copyDeviceIdentifier
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v11 = 136315138;
    v12 = "[WBBookmarkDBAccess copyDeviceIdentifier]";
    _os_log_impl(&dword_272C20000, v3, OS_LOG_TYPE_INFO, "-> %s()", &v11, 0xCu);
  }

  v4 = [WebBookmarkCollection deviceIdentifierForCloudKitWithCollectionType:self->_collectionType generateIfNeeded:1];
  uUID = [v4 UUID];
  uUIDString = [uUID UUIDString];

  v7 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [WBBookmarkDBAccess copyDeviceIdentifier];
  }

  v8 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v11 = 136315138;
    v12 = "[WBBookmarkDBAccess copyDeviceIdentifier]";
    _os_log_impl(&dword_272C20000, v8, OS_LOG_TYPE_INFO, "<- %s -> Return value redacted", &v11, 0xCu);
  }

  v9 = *MEMORY[0x277D85DE8];
  return uUIDString;
}

- (void)resetDeviceIdentifier
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v7 = 136315138;
    v8 = "[WBBookmarkDBAccess resetDeviceIdentifier]";
    _os_log_impl(&dword_272C20000, v3, OS_LOG_TYPE_INFO, "-> %s()", &v7, 0xCu);
  }

  [WebBookmarkCollection resetDeviceIdentifierForCloudKitWithCollectionType:self->_collectionType];
  v4 = [WebBookmarkCollection deviceIdentifierForCloudKitWithCollectionType:self->_collectionType generateIfNeeded:1];
  v5 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 136315138;
    v8 = "[WBBookmarkDBAccess resetDeviceIdentifier]";
    _os_log_impl(&dword_272C20000, v5, OS_LOG_TYPE_INFO, "<- %s", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)performMaintenanceOnDatabase:(void *)database afterVersion:(id)version
{
  v21 = *MEMORY[0x277D85DE8];
  versionCopy = version;
  v6 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v15 = 136315650;
    v16 = "CKBADatabasePerformMaintenanceAfterVersion";
    v17 = 2114;
    databaseCopy = database;
    v19 = 2114;
    v20 = versionCopy;
    _os_log_impl(&dword_272C20000, v6, OS_LOG_TYPE_INFO, "-> %s(database: %{public}@, start version: %{public}@)", &v15, 0x20u);
  }

  databaseCopy2 = database;
  v8 = [@"605.2.2" safari_isVersionStringGreaterThanVersionString:versionCopy];
  v9 = [versionCopy safari_isVersionStringBetweenVersionString:@"606" andVersionString:@"606.1.16"];
  if ((v8 & 1) != 0 || v9)
  {
    fixCachedNumberOfChildrenIfNeeded = [databaseCopy2 fixCachedNumberOfChildrenIfNeeded];
  }

  else
  {
    fixCachedNumberOfChildrenIfNeeded = 0;
  }

  v11 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = "NO";
    if (fixCachedNumberOfChildrenIfNeeded)
    {
      v12 = "YES";
    }

    v15 = 136315394;
    v16 = "CKBADatabasePerformMaintenanceAfterVersion";
    v17 = 2080;
    databaseCopy = v12;
    _os_log_impl(&dword_272C20000, v11, OS_LOG_TYPE_INFO, "<- %s -> %s", &v15, 0x16u);
  }

  v13 = *MEMORY[0x277D85DE8];
  return fixCachedNumberOfChildrenIfNeeded;
}

- (int64_t)localCloudKitMigrationState:(void *)state
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "CKBADatabaseGetLocalCloudKitMigrationState";
    v11 = 2114;
    stateCopy = state;
    _os_log_impl(&dword_272C20000, v4, OS_LOG_TYPE_INFO, "-> %s(database: %{public}@)", &v9, 0x16u);
  }

  localMigrationState = [state localMigrationState];
  v6 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "CKBADatabaseGetLocalCloudKitMigrationState";
    v11 = 2048;
    stateCopy = localMigrationState;
    _os_log_impl(&dword_272C20000, v6, OS_LOG_TYPE_INFO, "<- %s -> %lld", &v9, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
  return localMigrationState;
}

- (void)setLocalCloudKitMigrationState:(int64_t)state database:(void *)database
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v9 = 136315650;
    v10 = "CKBADatabaseSetLocalCloudKitMigrationState";
    v11 = 2114;
    databaseCopy = database;
    v13 = 2048;
    stateCopy = state;
    _os_log_impl(&dword_272C20000, v6, OS_LOG_TYPE_INFO, "-> %s(database: %{public}@, migration state: %lld)", &v9, 0x20u);
  }

  [database setLocalMigrationState:state generateDeviceIdentifierIfNeeded:1];
  v7 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = 136315138;
    v10 = "CKBADatabaseSetLocalCloudKitMigrationState";
    _os_log_impl(&dword_272C20000, v7, OS_LOG_TYPE_INFO, "<- %s", &v9, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)copyUsernameAccountHashWithDatabase:(void *)database
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "CKBADatabaseCopyUsernameAccountHash";
    v11 = 2114;
    databaseCopy = database;
    _os_log_impl(&dword_272C20000, v4, OS_LOG_TYPE_INFO, "-> %s(database: %{public}@)", &v9, 0x16u);
  }

  deprecatedUsernameAccountHash = [database deprecatedUsernameAccountHash];
  v6 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "CKBADatabaseCopyUsernameAccountHash";
    v11 = 2114;
    databaseCopy = deprecatedUsernameAccountHash;
    _os_log_impl(&dword_272C20000, v6, OS_LOG_TYPE_INFO, "<- %s -> %{public}@", &v9, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
  return deprecatedUsernameAccountHash;
}

- (id)copyAccountHashWithDatabase:(void *)database
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "CKBADatabaseCopyAccountHash";
    v11 = 2114;
    databaseCopy = database;
    _os_log_impl(&dword_272C20000, v4, OS_LOG_TYPE_INFO, "-> %s(database: %{public}@)", &v9, 0x16u);
  }

  accountHash = [database accountHash];
  v6 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "CKBADatabaseCopyAccountHash";
    v11 = 2114;
    databaseCopy = accountHash;
    _os_log_impl(&dword_272C20000, v6, OS_LOG_TYPE_INFO, "<- %s -> %{public}@", &v9, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
  return accountHash;
}

- (void)setAccountHash:(id)hash database:(void *)database
{
  v15 = *MEMORY[0x277D85DE8];
  hashCopy = hash;
  v6 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v9 = 136315650;
    v10 = "CKBADatabaseSetAccountHash";
    v11 = 2114;
    databaseCopy = database;
    v13 = 2114;
    v14 = hashCopy;
    _os_log_impl(&dword_272C20000, v6, OS_LOG_TYPE_INFO, "-> %s(database: %{public}@, account hash: %{public}@)", &v9, 0x20u);
  }

  [database updateAccountHash:hashCopy];
  v7 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = 136315138;
    v10 = "CKBADatabaseSetAccountHash";
    _os_log_impl(&dword_272C20000, v7, OS_LOG_TYPE_INFO, "<- %s", &v9, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)copyChangeTokenWithDatabase:(void *)database
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v11 = 136315394;
    v12 = "CKBADatabaseCopyChangeToken";
    v13 = 2114;
    databaseCopy = database;
    _os_log_impl(&dword_272C20000, v4, OS_LOG_TYPE_INFO, "-> %s(database: %{public}@)", &v11, 0x16u);
  }

  v5 = MEMORY[0x277CCABB0];
  databaseCopy2 = database;
  v7 = [v5 numberWithInteger:{objc_msgSend(databaseCopy2, "currentRecordGeneration")}];

  v8 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v11 = 136315394;
    v12 = "CKBADatabaseCopyChangeToken";
    v13 = 2114;
    databaseCopy = v7;
    _os_log_impl(&dword_272C20000, v8, OS_LOG_TYPE_INFO, "<- %s -> %{public}@", &v11, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)copyItemWithLocalID:(id)d database:(void *)database
{
  v23 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v6 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v17 = 136315650;
    v18 = "CKBADatabaseCopyItemWithLocalID";
    v19 = 2114;
    databaseCopy = database;
    v21 = 2114;
    v22 = dCopy;
    _os_log_impl(&dword_272C20000, v6, OS_LOG_TYPE_INFO, "-> %s(database: %{public}@, %{public}@)", &v17, 0x20u);
  }

  if (!dCopy)
  {
    intValue = 0;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    intValue = [dCopy intValue];
LABEL_7:
    databaseCopy2 = database;
    v9 = [databaseCopy2 bookmarkWithID:intValue];
    if (v9)
    {
      v10 = [[BABookmarkItem alloc] initWithBookmarkCollection:databaseCopy2 bookmark:v9];
      v11 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v17 = 136315394;
        v18 = "CKBADatabaseCopyItemWithLocalID";
        v19 = 2114;
        databaseCopy = v10;
        _os_log_impl(&dword_272C20000, v11, OS_LOG_TYPE_INFO, "<- %s -> %{public}@", &v17, 0x16u);
      }
    }

    else
    {
      v14 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v17 = 136315138;
        v18 = "CKBADatabaseCopyItemWithLocalID";
        _os_log_impl(&dword_272C20000, v14, OS_LOG_TYPE_INFO, "<- %s -> (null)", &v17, 0xCu);
      }

      v10 = 0;
    }

    goto LABEL_19;
  }

  v12 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    [WBBookmarkDBAccess copyItemWithLocalID:v12 database:?];
  }

  v13 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v17 = 136315138;
    v18 = "CKBADatabaseCopyItemWithLocalID";
    _os_log_impl(&dword_272C20000, v13, OS_LOG_TYPE_INFO, "<- %s -> (null)", &v17, 0xCu);
  }

  v10 = 0;
LABEL_19:

  v15 = *MEMORY[0x277D85DE8];
  return v10;
}

- (id)copyLocalIDsInFolderWithLocalID:(id)d database:(void *)database
{
  v23 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v6 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v17 = 136315650;
    v18 = "CKBADatabaseCopyLocalIDsInFolderWithLocalID";
    v19 = 2114;
    databaseCopy = database;
    v21 = 2114;
    v22 = dCopy;
    _os_log_impl(&dword_272C20000, v6, OS_LOG_TYPE_INFO, "-> %s(database: %{public}@, %{public}@)", &v17, 0x20u);
  }

  if (!dCopy)
  {
    intValue = 0;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    intValue = [dCopy intValue];
LABEL_7:
    v8 = [database syncableBookmarksIDsInFolderWithBookmarkID:intValue];
    v9 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    v10 = v9;
    if (v8)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v17 = 136315394;
        v18 = "CKBADatabaseCopyLocalIDsInFolderWithLocalID";
        v19 = 2114;
        databaseCopy = v8;
        _os_log_impl(&dword_272C20000, v10, OS_LOG_TYPE_INFO, "<- %s -> %{public}@", &v17, 0x16u);
      }

      v11 = v8;
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        [WBBookmarkDBAccess copyLocalIDsInFolderWithLocalID:database:];
      }

      v14 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v17 = 136315138;
        v18 = "CKBADatabaseCopyLocalIDsInFolderWithLocalID";
        _os_log_impl(&dword_272C20000, v14, OS_LOG_TYPE_INFO, "<- %s -> (null)", &v17, 0xCu);
      }
    }

    goto LABEL_21;
  }

  v12 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    [WBBookmarkDBAccess copyLocalIDsInFolderWithLocalID:v12 database:?];
  }

  v13 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v17 = 136315138;
    v18 = "CKBADatabaseCopyLocalIDsInFolderWithLocalID";
    _os_log_impl(&dword_272C20000, v13, OS_LOG_TYPE_INFO, "<- %s -> (null)", &v17, 0xCu);
  }

  v8 = [MEMORY[0x277CBEB98] set];
LABEL_21:

  v15 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)copyItemWithServerId:(id)id database:(void *)database
{
  v20 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v6 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v14 = 136315650;
    v15 = "CKBADatabaseCopyItemWithServerId";
    v16 = 2114;
    databaseCopy = database;
    v18 = 2114;
    v19 = idCopy;
    _os_log_impl(&dword_272C20000, v6, OS_LOG_TYPE_INFO, "-> %s(database: %{public}@, %{public}@)", &v14, 0x20u);
  }

  databaseCopy2 = database;
  v8 = [databaseCopy2 bookmarkWithServerID:idCopy excludeDeletedBookmarks:1];
  if (v8)
  {
    v9 = [[BABookmarkItem alloc] initWithBookmarkCollection:databaseCopy2 bookmark:v8];
    v10 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v14 = 136315394;
      v15 = "CKBADatabaseCopyItemWithServerId";
      v16 = 2114;
      databaseCopy = v9;
      _os_log_impl(&dword_272C20000, v10, OS_LOG_TYPE_INFO, "<- %s -> %{public}@", &v14, 0x16u);
    }
  }

  else
  {
    v11 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v14 = 136315138;
      v15 = "CKBADatabaseCopyItemWithServerId";
      _os_log_impl(&dword_272C20000, v11, OS_LOG_TYPE_INFO, "<- %s -> (null)", &v14, 0xCu);
    }

    v9 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)addItem:(void *)item underFolderWithServerId:(id)id database:(void *)database
{
  v42 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v8 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v34 = 136315906;
    v35 = "CKBADatabaseAddItemUnderFolderWithServerId";
    v36 = 2114;
    databaseCopy = database;
    v38 = 2114;
    itemCopy = item;
    v40 = 2114;
    v41 = idCopy;
    _os_log_impl(&dword_272C20000, v8, OS_LOG_TYPE_INFO, "-> %s(database: %{public}@, item: %{public}@, parentSyncServerId: %{public}@)", &v34, 0x2Au);
  }

  itemCopy2 = item;
  collection = [itemCopy2 collection];
  bookmark = [itemCopy2 bookmark];
  v12 = [collection bookmarkIDForServerID:idCopy excludeDeletedBookmarks:1];
  if (v12 == 0x7FFFFFFF)
  {
    v13 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v34 = 136315394;
      v35 = "saveBookmarkUnderFolderWithServerId";
      v36 = 2114;
      databaseCopy = idCopy;
      _os_log_impl(&dword_272C20000, v13, OS_LOG_TYPE_INFO, "@@ %s: Parent server ID %{public}@ does not point to any item in the local database", &v34, 0x16u);
    }

    goto LABEL_6;
  }

  v15 = v12;
  if ([collection isMerging])
  {
    if ([bookmark specialID])
    {
      v16 = [collection bookmarkWithSpecialID:{objc_msgSend(bookmark, "specialID")}];
      if (v16)
      {
LABEL_10:
        [collection _mergeBookmark:bookmark withOriginalBookmark:v16 prioritizeOriginalBookmarkAttributes:0 generateChangesIfNeeded:1];
        [collection _markBookmarkID:objc_msgSend(v16 added:{"identifier"), 0}];
        serverID = [bookmark serverID];
        [collection setServerID:serverID forBookmark:v16];

        syncData = [bookmark syncData];
        [collection _setSyncData:syncData forBookmark:v16];

        syncKey = [bookmark syncKey];
        [collection _setSyncKey:syncKey forBookmark:v16];

        [itemCopy2 setBookmark:v16];
        v20 = WBS_LOG_CHANNEL_PREFIXBookmarks();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          [WBBookmarkDBAccess addItem:v16 underFolderWithServerId:v20 database:?];
        }

        v14 = 1;
        goto LABEL_24;
      }
    }

    else
    {
      isFolder = [bookmark isFolder];
      title = [bookmark title];
      if (isFolder)
      {
        v16 = [collection _mergeCandidateFolderWithTitle:title parent:v15 mergeMode:{objc_msgSend(collection, "_mergeMode")}];
      }

      else
      {
        address = [bookmark address];
        v16 = [collection _mergeCandidateBookmarkWithTitle:title address:address parent:v15 mergeMode:{objc_msgSend(collection, "_mergeMode")}];
      }

      if (v16)
      {
        goto LABEL_10;
      }
    }
  }

  if (([bookmark isInserted] & 1) == 0)
  {
    [bookmark _setParentID:v15];
    [collection _saveBookmark:bookmark withSpecialID:objc_msgSend(bookmark updateGenerationIfNeeded:{"specialID"), 0}];
    [collection _markBookmarkID:objc_msgSend(bookmark added:{"identifier"), 0}];
    serverID2 = [bookmark serverID];
    [collection setServerID:serverID2 forBookmark:bookmark];

    syncData2 = [bookmark syncData];
    [collection _setSyncData:syncData2 forBookmark:bookmark];

    syncKey2 = [bookmark syncKey];
    [collection _setSyncKey:syncKey2 forBookmark:bookmark];

    identifier = [bookmark identifier];
    isSelectedFavoritesFolder = [bookmark isSelectedFavoritesFolder];
    [collection updateSelectedFavoritesFolderWithBookmarkID:identifier wasFavoritesFolder:0 isFavoritesFolder:{objc_msgSend(isSelectedFavoritesFolder, "BOOLValue")}];

    v24 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    v14 = 1;
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      goto LABEL_24;
    }

    v34 = 136315650;
    v35 = "saveBookmarkUnderFolderWithServerId";
    v36 = 2114;
    databaseCopy = itemCopy2;
    v38 = 2114;
    itemCopy = idCopy;
    v25 = "@@ %s: Record %{public}@ was insert in parent record with server ID %{public}@";
    goto LABEL_23;
  }

  if ([bookmark parentID] == v15)
  {
    v24 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    v14 = 1;
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      goto LABEL_24;
    }

    v34 = 136315650;
    v35 = "saveBookmarkUnderFolderWithServerId";
    v36 = 2114;
    databaseCopy = itemCopy2;
    v38 = 2114;
    itemCopy = idCopy;
    v25 = "@@ %s: Record %{public}@ is already inside parent record with server ID %{public}@";
    goto LABEL_23;
  }

  if (![collection _moveBookmark:bookmark toFolderWithID:v15 detectCycles:1])
  {
LABEL_6:
    v14 = 0;
    goto LABEL_24;
  }

  v24 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  v14 = 1;
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    v34 = 136315650;
    v35 = "saveBookmarkUnderFolderWithServerId";
    v36 = 2114;
    databaseCopy = itemCopy2;
    v38 = 2114;
    itemCopy = idCopy;
    v25 = "@@ %s: Record %{public}@ did move to parent record with server ID %{public}@";
LABEL_23:
    _os_log_impl(&dword_272C20000, v24, OS_LOG_TYPE_INFO, v25, &v34, 0x20u);
  }

LABEL_24:

  v31 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    v34 = 136315394;
    v35 = "CKBADatabaseAddItemUnderFolderWithServerId";
    v36 = 1024;
    LODWORD(databaseCopy) = v14;
    _os_log_impl(&dword_272C20000, v31, OS_LOG_TYPE_INFO, "<- %s -> %d", &v34, 0x12u);
  }

  v32 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)performDeduplicationWithDatabase:(void *)database mode:(int64_t)mode
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v9 = 136315650;
    v10 = "CKBADatabasePerformDeduplication";
    v11 = 2114;
    databaseCopy = database;
    v13 = 2048;
    modeCopy = mode;
    _os_log_impl(&dword_272C20000, v6, OS_LOG_TYPE_INFO, "-> %s(database: %{public}@, mode: %ld)", &v9, 0x20u);
  }

  [database _deduplicateBookmarksForSyncingAndTrackChanges:mode == 2 considerBookmarksWithSyncDataAsUnique:mode == 1];
  v7 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = 136315138;
    v10 = "CKBADatabasePerformDeduplication";
    _os_log_impl(&dword_272C20000, v7, OS_LOG_TYPE_INFO, "<- %s", &v9, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)copyServerIdsInFolderWithServerId:(id)id database:(void *)database
{
  v31 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v6 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    wb_stringByRedactingBookmarkDAVServerID = [idCopy wb_stringByRedactingBookmarkDAVServerID];
    *buf = 136315650;
    v26 = "CKBADatabaseCopyServerIdsInFolderWithServerId";
    v27 = 2114;
    databaseCopy = database;
    v29 = 2114;
    v30 = wb_stringByRedactingBookmarkDAVServerID;
    _os_log_impl(&dword_272C20000, v7, OS_LOG_TYPE_INFO, "-> %s(database: %{public}@, %{public}@)", buf, 0x20u);
  }

  v9 = [database serverIDsInFolderWithServerID:idCopy excludeDeletedBookmarks:1];
  v10 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = v9;
    v12 = [MEMORY[0x277CBEB58] set];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v13 = v11;
    v14 = [v13 countByEnumeratingWithState:&v21 objects:buf count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v22;
      do
      {
        v17 = 0;
        do
        {
          if (*v22 != v16)
          {
            objc_enumerationMutation(v13);
          }

          wb_stringByRedactingBookmarkDAVServerID2 = [*(*(&v21 + 1) + 8 * v17) wb_stringByRedactingBookmarkDAVServerID];
          [v12 addObject:wb_stringByRedactingBookmarkDAVServerID2];

          ++v17;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v21 objects:buf count:16];
      }

      while (v15);
    }

    *buf = 136315394;
    v26 = "CKBADatabaseCopyServerIdsInFolderWithServerId";
    v27 = 2114;
    databaseCopy = v12;
    _os_log_impl(&dword_272C20000, v10, OS_LOG_TYPE_INFO, "<- %s -> %{public}@", buf, 0x16u);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)setChildrenOrder:(id)order forFolderWithServerId:(id)id database:(void *)database
{
  v23 = *MEMORY[0x277D85DE8];
  orderCopy = order;
  idCopy = id;
  v9 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = v9;
    wb_stringByRedactingBookmarkDAVServerID = [idCopy wb_stringByRedactingBookmarkDAVServerID];
    v12 = [orderCopy safari_mapObjectsUsingBlock:&__block_literal_global_1];
    v15 = 136315906;
    v16 = "CKBADatabaseSetChildrenOrderForFolderWithServerId";
    v17 = 2114;
    databaseCopy = database;
    v19 = 2114;
    v20 = wb_stringByRedactingBookmarkDAVServerID;
    v21 = 2114;
    v22 = v12;
    _os_log_impl(&dword_272C20000, v10, OS_LOG_TYPE_INFO, "-> %s(database: %{public}@, %{public}@, %{public}@)", &v15, 0x2Au);
  }

  [database _orderChildrenWithServerIDs:orderCopy inFolderWithServerID:idCopy excludeDeletedBookmarks:1];
  v13 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v15 = 136315138;
    v16 = "CKBADatabaseSetChildrenOrderForFolderWithServerId";
    _os_log_impl(&dword_272C20000, v13, OS_LOG_TYPE_INFO, "<- %s", &v15, 0xCu);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)copyServerIdInFolderBeforeServerId:(id)id database:(void *)database
{
  v17 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v6 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v11 = 136315650;
    v12 = "CKBADatabaseCopyServerIdInFolderBeforeServerId";
    v13 = 2114;
    databaseCopy = database;
    v15 = 2114;
    v16 = idCopy;
    _os_log_impl(&dword_272C20000, v6, OS_LOG_TYPE_INFO, "-> %s(database: %{public}@, request before targetItemId: %{public}@)", &v11, 0x20u);
  }

  v7 = [database _serverIDBeforeServerID:idCopy];
  v8 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v11 = 136315394;
    v12 = "CKBADatabaseCopyServerIdInFolderBeforeServerId";
    v13 = 2114;
    databaseCopy = v7;
    _os_log_impl(&dword_272C20000, v8, OS_LOG_TYPE_INFO, "<- %s -> %{public}@", &v11, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)copyServerIdInFolderAfterServerId:(id)id database:(void *)database
{
  v17 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v6 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v11 = 136315650;
    v12 = "CKBADatabaseCopyServerIdInFolderAfterServerId";
    v13 = 2114;
    databaseCopy = database;
    v15 = 2114;
    v16 = idCopy;
    _os_log_impl(&dword_272C20000, v6, OS_LOG_TYPE_INFO, "-> %s(database: %{public}@, request after targetItemId: %{public}@)", &v11, 0x20u);
  }

  v7 = [database _serverIDAfterServerID:idCopy];
  v8 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v11 = 136315394;
    v12 = "CKBADatabaseCopyServerIdInFolderAfterServerId";
    v13 = 2114;
    databaseCopy = v7;
    _os_log_impl(&dword_272C20000, v8, OS_LOG_TYPE_INFO, "<- %s -> %{public}@", &v11, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)copyFirstServerIdInFolderWithServerId:(id)id database:(void *)database
{
  v17 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v6 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v11 = 136315650;
    v12 = "CKBADatabaseCopyFirstServerIdInFolderWithServerId";
    v13 = 2114;
    databaseCopy = database;
    v15 = 2114;
    v16 = idCopy;
    _os_log_impl(&dword_272C20000, v6, OS_LOG_TYPE_INFO, "-> %s(database: %{public}@, folderServerId: %{public}@)", &v11, 0x20u);
  }

  v7 = [database _firstServerIDInFolderWithServerID:idCopy];
  v8 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v11 = 136315394;
    v12 = "CKBADatabaseCopyFirstServerIdInFolderWithServerId";
    v13 = 2114;
    databaseCopy = v7;
    _os_log_impl(&dword_272C20000, v8, OS_LOG_TYPE_INFO, "<- %s -> %{public}@", &v11, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)copyLastServerIdInFolderWithServerId:(id)id database:(void *)database
{
  v17 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v6 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v11 = 136315650;
    v12 = "CKBADatabaseCopyLastServerIdInFolderWithServerId";
    v13 = 2114;
    databaseCopy = database;
    v15 = 2114;
    v16 = idCopy;
    _os_log_impl(&dword_272C20000, v6, OS_LOG_TYPE_INFO, "-> %s(database: %{public}@, folderServerId: %{public}@)", &v11, 0x20u);
  }

  v7 = [database _lastServerIDInFolderWithServerID:idCopy];
  v8 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v11 = 136315394;
    v12 = "CKBADatabaseCopyLastServerIdInFolderWithServerId";
    v13 = 2114;
    databaseCopy = v7;
    _os_log_impl(&dword_272C20000, v8, OS_LOG_TYPE_INFO, "<- %s -> %{public}@", &v11, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

- (int64_t)itemTypeWithItem:(void *)item
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = "CKBAItemGetItemType";
    v12 = 2114;
    itemCopy = item;
    _os_log_impl(&dword_272C20000, v4, OS_LOG_TYPE_INFO, "-> %s(item: %{public}@)", &v10, 0x16u);
  }

  bookmark = [item bookmark];
  isFolder = [bookmark isFolder];

  v7 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = "CKBAItemGetItemType";
    v12 = 2048;
    itemCopy = isFolder;
    _os_log_impl(&dword_272C20000, v7, OS_LOG_TYPE_INFO, "<- %s -> %ld", &v10, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
  return isFolder;
}

- (BOOL)item:(void *)item isInFolderWithServerSyncId:(id)id
{
  v26 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v6 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v20 = 136315650;
    v21 = "CKBAItemGetIsInFolderWithServerSyncId";
    v22 = 2114;
    itemCopy = item;
    v24 = 2112;
    v25 = idCopy;
    _os_log_impl(&dword_272C20000, v6, OS_LOG_TYPE_INFO, "-> %s(item: %{public}@, parentRecordName: %@)", &v20, 0x20u);
  }

  itemCopy2 = item;
  bookmark = [itemCopy2 bookmark];
  if ([bookmark isInserted])
  {
    collection = [itemCopy2 collection];
    parentID = [bookmark parentID];
    if (idCopy || parentID)
    {
      if (idCopy)
      {
        v14 = [collection serverIDForBookmarkID:parentID];
        v12 = [v14 isEqualToString:idCopy];
        v15 = WBS_LOG_CHANNEL_PREFIXBookmarks();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = "NO";
          if (v12)
          {
            v16 = "YES";
          }

          v20 = 136315394;
          v21 = "CKBAItemGetIsInFolderWithServerSyncId";
          v22 = 2080;
          itemCopy = v16;
          _os_log_impl(&dword_272C20000, v15, OS_LOG_TYPE_INFO, "<- %s -> %s", &v20, 0x16u);
        }
      }

      else
      {
        v17 = WBS_LOG_CHANNEL_PREFIXBookmarks();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v20 = 136315138;
          v21 = "CKBAItemGetIsInFolderWithServerSyncId";
          _os_log_impl(&dword_272C20000, v17, OS_LOG_TYPE_INFO, "<- %s -> NO", &v20, 0xCu);
        }

        LOBYTE(v12) = 0;
      }
    }

    else
    {
      v11 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      LOBYTE(v12) = 1;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v20 = 136315138;
        v21 = "CKBAItemGetIsInFolderWithServerSyncId";
        _os_log_impl(&dword_272C20000, v11, OS_LOG_TYPE_INFO, "<- %s -> YES", &v20, 0xCu);
      }
    }
  }

  else
  {
    v13 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v20 = 136315138;
      v21 = "CKBAItemGetIsInFolderWithServerSyncId";
      _os_log_impl(&dword_272C20000, v13, OS_LOG_TYPE_INFO, "<- %s -> NO", &v20, 0xCu);
    }

    LOBYTE(v12) = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)item:(void *)item isEqualToItem:(void *)toItem
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v13 = 136315650;
    v14 = "CKBAItemIsEqualToItem";
    v15 = 2114;
    itemCopy = item;
    v17 = 2114;
    toItemCopy = toItem;
    _os_log_impl(&dword_272C20000, v6, OS_LOG_TYPE_INFO, "-> %s(item1: %{public}@, item2: %{public}@)", &v13, 0x20u);
  }

  bookmark = [item bookmark];
  bookmark2 = [toItem bookmark];
  v9 = [bookmark isEqualToBookmark:bookmark2];
  v10 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v13 = 136315394;
    v14 = "CKBAItemIsEqualToItem";
    v15 = 1024;
    LODWORD(itemCopy) = v9;
    _os_log_impl(&dword_272C20000, v10, OS_LOG_TYPE_INFO, "<- %s -> %d", &v13, 0x12u);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

- (int64_t)folderTypeWithFolder:(void *)folder
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v11 = 136315394;
    v12 = "CKBAFolderGetFolderType";
    v13 = 2114;
    folderCopy = folder;
    _os_log_impl(&dword_272C20000, v4, OS_LOG_TYPE_INFO, "-> %s(folder: %{public}@)", &v11, 0x16u);
  }

  bookmark = [folder bookmark];
  specialID = [bookmark specialID];
  switch(specialID)
  {
    case 4:
      v7 = 0;
      break;
    case 1:
      v7 = 1;
      break;
    case 2:
      v7 = 2;
      break;
    case 3:
      v7 = 3;
      break;
    default:
      v7 = 0;
      break;
  }

  v8 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v11 = 136315394;
    v12 = "CKBAFolderGetFolderType";
    v13 = 2048;
    folderCopy = v7;
    _os_log_impl(&dword_272C20000, v8, OS_LOG_TYPE_INFO, "<- %s -> %ld", &v11, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)createFolderWithType:(int64_t)type database:(void *)database
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v15 = 136315650;
    v16 = "CKBADatabaseCreateFolder";
    v17 = 2114;
    databaseCopy = database;
    v19 = 2048;
    typeCopy = type;
    _os_log_impl(&dword_272C20000, v6, OS_LOG_TYPE_INFO, "-> %s(database: %{public}@, folder type: %lld)", &v15, 0x20u);
  }

  databaseCopy2 = database;
  v8 = [WebBookmark alloc];
  configuration = [databaseCopy2 configuration];
  v10 = -[WebBookmark initFolderWithParentID:collectionType:](v8, "initFolderWithParentID:collectionType:", 0, [configuration collectionType]);

  if ((type - 1) <= 2 && *off_279E75430[type - 1])
  {
    [v10 markSpecial:?];
  }

  [v10 setSubtype:type == 4];
  v11 = [[BABookmarkItem alloc] initWithBookmarkCollection:databaseCopy2 bookmark:v10];
  v12 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v15 = 136315394;
    v16 = "CKBADatabaseCreateFolder";
    v17 = 2114;
    databaseCopy = v11;
    _os_log_impl(&dword_272C20000, v12, OS_LOG_TYPE_INFO, "<- %s -> %{public}@", &v15, 0x16u);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

- (int64_t)bookmarkTypeWithBookmark:(void *)bookmark
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "CKBABookmarkGetBookmarkType";
    v11 = 2114;
    bookmarkCopy = bookmark;
    _os_log_impl(&dword_272C20000, v4, OS_LOG_TYPE_INFO, "-> %s(bookmark: %{public}@)", &v9, 0x16u);
  }

  bookmark = [bookmark bookmark];
  v6 = CKBABookmarkTypeForBookmark(bookmark);

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)createBookmarkWithType:(int64_t)type database:(void *)database
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v17 = 136315650;
    v18 = "CKBADatabaseCreateBookmark";
    v19 = 2114;
    databaseCopy = database;
    v21 = 2048;
    typeCopy = type;
    _os_log_impl(&dword_272C20000, v6, OS_LOG_TYPE_INFO, "-> %s(database: %{public}@, bookmark type: %lld)", &v17, 0x20u);
  }

  databaseCopy2 = database;
  switch(type)
  {
    case 2:
      v11 = [WebBookmark alloc];
      currentDeviceIdentifier = [databaseCopy2 currentDeviceIdentifier];
      configuration = [databaseCopy2 configuration];
      v10 = -[WebBookmark initWithTitle:address:parentID:subtype:deviceIdentifier:collectionType:](v11, "initWithTitle:address:parentID:subtype:deviceIdentifier:collectionType:", &stru_288259858, &stru_288259858, 0, 1, currentDeviceIdentifier, [configuration collectionType]);

      goto LABEL_9;
    case 1:
      v10 = [[WebBookmark alloc] initReadingListBookmarkWithTitle:&stru_288259858 address:&stru_288259858 previewText:&stru_288259858];
      goto LABEL_11;
    case 0:
      v8 = [WebBookmark alloc];
      currentDeviceIdentifier = [databaseCopy2 configuration];
      v10 = -[WebBookmark initWithTitle:address:collectionType:](v8, "initWithTitle:address:collectionType:", &stru_288259858, &stru_288259858, [currentDeviceIdentifier collectionType]);
LABEL_9:

      goto LABEL_11;
  }

  v10 = 0;
LABEL_11:
  v13 = [[BABookmarkItem alloc] initWithBookmarkCollection:databaseCopy2 bookmark:v10];
  v14 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v17 = 136315394;
    v18 = "CKBADatabaseCreateBookmark";
    v19 = 2114;
    databaseCopy = v13;
    _os_log_impl(&dword_272C20000, v14, OS_LOG_TYPE_INFO, "<- %s -> %{public}@", &v17, 0x16u);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BOOL)changeIsMoveChange:(void *)change
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = "CKBAChangeGetWasBookmarkMoved";
    v12 = 2114;
    changeCopy = change;
    _os_log_impl(&dword_272C20000, v4, OS_LOG_TYPE_INFO, "-> %s(change: %{public}@)", &v10, 0x16u);
  }

  bookmark = [change bookmark];
  if ([bookmark attributesMarkedAsModified:64])
  {
    v6 = 1;
  }

  else
  {
    v6 = [bookmark attributesMarkedAsModified:4];
  }

  v7 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = "CKBAChangeGetWasBookmarkMoved";
    v12 = 1024;
    LODWORD(changeCopy) = v6;
    _os_log_impl(&dword_272C20000, v7, OS_LOG_TYPE_INFO, "<- %s -> %d", &v10, 0x12u);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)copyDeletedBookmarkSyncDataWithChange:(void *)change
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v14 = 136315394;
    v15 = "CKBAChangeCopyDeletedBookmarkSyncData";
    v16 = 2114;
    changeCopy = change;
    _os_log_impl(&dword_272C20000, v4, OS_LOG_TYPE_INFO, "-> %s(change: %{public}@)", &v14, 0x16u);
  }

  changeCopy2 = change;
  if ([changeCopy2 changeType] == 2)
  {
    bookmark = [changeCopy2 bookmark];
    syncData = [bookmark syncData];

    v8 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = v8;
      v10 = [syncData length];
      v14 = 136315650;
      v15 = "CKBAChangeCopyDeletedBookmarkSyncData";
      v16 = 2048;
      changeCopy = syncData;
      v18 = 2048;
      v19 = v10;
      _os_log_impl(&dword_272C20000, v9, OS_LOG_TYPE_INFO, "<- %s -> syncData %p of size: %ld", &v14, 0x20u);
    }
  }

  else
  {
    v11 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v14 = 136315138;
      v15 = "CKBAChangeCopyDeletedBookmarkSyncData";
      _os_log_impl(&dword_272C20000, v11, OS_LOG_TYPE_INFO, "<- %s -> (null)", &v14, 0xCu);
    }

    syncData = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return syncData;
}

- (void)setDeletedBookmarkSyncData:(id)data change:(void *)change
{
  v30 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v6 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    v22 = 136315906;
    v23 = "CKBAChangeSetDeletedBookmarkSyncData";
    v24 = 2114;
    changeCopy = change;
    v26 = 2048;
    v27 = dataCopy;
    v28 = 2048;
    v29 = [dataCopy length];
    _os_log_impl(&dword_272C20000, v7, OS_LOG_TYPE_INFO, "-> %s(change: %{public}@, syncData %p of size: %zd)", &v22, 0x2Au);
  }

  changeCopy2 = change;
  bookmark = [changeCopy2 bookmark];
  if ([changeCopy2 changeType] == 2)
  {
    if ([bookmark isInserted])
    {
      collection = [changeCopy2 collection];
      [collection _setSyncData:dataCopy forBookmark:bookmark];

      v11 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v22 = 136315138;
        v23 = "CKBAChangeSetDeletedBookmarkSyncData";
LABEL_15:
        _os_log_impl(&dword_272C20000, v11, OS_LOG_TYPE_INFO, "<- %s", &v22, 0xCu);
      }
    }

    else
    {
      v13 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        [(WBBookmarkDBAccess *)v13 setDeletedBookmarkSyncData:v14 change:v15, v16, v17, v18, v19, v20];
      }

      v11 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v22 = 136315138;
        v23 = "CKBAChangeSetDeletedBookmarkSyncData";
        goto LABEL_15;
      }
    }
  }

  else
  {
    v12 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [(WBBookmarkDBAccess *)v12 setDeletedBookmarkSyncData:changeCopy2 change:bookmark];
    }

    v11 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v22 = 136315138;
      v23 = "CKBAChangeSetDeletedBookmarkSyncData";
      goto LABEL_15;
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (id)copyModifiedAttributesWithChange:(void *)change
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v14 = 136315394;
    v15 = "CKBAChangeCopyModifiedAttributes";
    v16 = 2114;
    changeCopy = change;
    _os_log_impl(&dword_272C20000, v4, OS_LOG_TYPE_INFO, "-> %s(change: %{public}@)", &v14, 0x16u);
  }

  changeCopy2 = change;
  bookmark = [changeCopy2 bookmark];
  v7 = [changeCopy2 changeType] == 0;
  collection = [changeCopy2 collection];

  v9 = copyBookmarkAttributes(bookmark, collection, v7);

  v10 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [WBBookmarkDBAccess copyModifiedAttributesWithChange:];
  }

  v11 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v14 = 136315138;
    v15 = "CKBAChangeCopyModifiedAttributes";
    _os_log_impl(&dword_272C20000, v11, OS_LOG_TYPE_INFO, "<- %s -> Return value redacted", &v14, 0xCu);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)copyAttributesWithItem:(void *)item
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v18 = 136315394;
    v19 = "CKBAItemCopyAttributes";
    v20 = 2114;
    itemCopy = item;
    _os_log_impl(&dword_272C20000, v4, OS_LOG_TYPE_INFO, "-> %s(item: %{public}@)", &v18, 0x16u);
  }

  v5 = MEMORY[0x277CBEB38];
  itemCopy2 = item;
  v7 = [v5 alloc];
  bookmark = [itemCopy2 bookmark];
  collection = [itemCopy2 collection];
  v10 = copyBookmarkAttributes(bookmark, collection, 1);
  v11 = [v7 initWithDictionary:v10 copyItems:1];

  null = [MEMORY[0x277CBEB68] null];

  v13 = [v11 allKeysForObject:null];
  [v11 removeObjectsForKeys:v13];

  v14 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [WBBookmarkDBAccess copyAttributesWithItem:];
  }

  v15 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v18 = 136315138;
    v19 = "CKBAItemCopyAttributes";
    _os_log_impl(&dword_272C20000, v15, OS_LOG_TYPE_INFO, "<- %s -> Return value redacted", &v18, 0xCu);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)setModifiedAttributes:(id)attributes item:(void *)item
{
  v107 = *MEMORY[0x277D85DE8];
  attributesCopy = attributes;
  v6 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "CKBAItemSetModifiedAttributes";
    *&buf[12] = 2114;
    *&buf[14] = item;
    _os_log_impl(&dword_272C20000, v6, OS_LOG_TYPE_INFO, "-> %s(item: %{public}@)", buf, 0x16u);
  }

  v7 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [WBBookmarkDBAccess setModifiedAttributes:item:];
  }

  itemCopy = item;
  bookmark = [itemCopy bookmark];
  collection = [itemCopy collection];
  *buf = MEMORY[0x277D85DD0];
  *&buf[8] = 3221225472;
  *&buf[16] = __CKBAItemSetModifiedAttributes_block_invoke;
  v104 = &unk_279E753F0;
  v11 = bookmark;
  v105 = v11;
  v12 = collection;
  v106 = v12;
  v13 = MEMORY[0x2743D6830](buf);
  v14 = [attributesCopy objectForKeyedSubscript:@"Title"];
  v15 = 0x277CCA000uLL;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = MEMORY[0x277CCABB0];
      v18 = v16;
      v19 = [v17 numberWithUnsignedInteger:{-[__CFString length](v14, "length")}];
      v99 = 136315394;
      v100 = "CKBAItemSetModifiedAttributes";
      v101 = 2114;
      v102 = v19;
      _os_log_impl(&dword_272C20000, v18, OS_LOG_TYPE_INFO, "@@ %s: Set title to value of length: %{public}@", &v99, 0x16u);
    }

    v20 = v11;
    v21 = v14;
  }

  else
  {
    null = [MEMORY[0x277CBEB68] null];
    v23 = [(__CFString *)v14 isEqual:null];

    if (!v23)
    {
      goto LABEL_14;
    }

    v24 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v99 = 136315138;
      v100 = "CKBAItemSetModifiedAttributes";
      _os_log_impl(&dword_272C20000, v24, OS_LOG_TYPE_INFO, "@@ %s: Set title to value of length: (null)", &v99, 0xCu);
    }

    v21 = &stru_288259858;
    v20 = v11;
  }

  [v20 setTitle:v21];
LABEL_14:
  if (![v11 isFolder])
  {
    v33 = [attributesCopy objectForKeyedSubscript:@"URL"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      absoluteString = [v33 absoluteString];
      v35 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        v36 = MEMORY[0x277CCABB0];
        v37 = v35;
        v38 = [v36 numberWithUnsignedInteger:{objc_msgSend(absoluteString, "length")}];
        v99 = 136315394;
        v100 = "CKBAItemSetModifiedAttributes";
        v101 = 2114;
        v102 = v38;
        _os_log_impl(&dword_272C20000, v37, OS_LOG_TYPE_INFO, "@@ %s: Set URL to value of length: %{public}@", &v99, 0x16u);

        v15 = 0x277CCA000;
      }

      [v11 setAddress:absoluteString];
    }

    else
    {
      null2 = [MEMORY[0x277CBEB68] null];
      v40 = [v33 isEqual:null2];

      if (v40)
      {
        v41 = WBS_LOG_CHANNEL_PREFIXBookmarks();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          v99 = 136315138;
          v100 = "CKBAItemSetModifiedAttributes";
          _os_log_impl(&dword_272C20000, v41, OS_LOG_TYPE_INFO, "@@ %s: Set URL to value of length: (null)", &v99, 0xCu);
        }

        [v11 setAddress:&stru_288259858];
      }
    }

    v42 = [attributesCopy objectForKeyedSubscript:@"ShowIconOnly"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v43 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        v99 = 136315394;
        v100 = "CKBAItemSetModifiedAttributes";
        v101 = 2112;
        v102 = v42;
        _os_log_impl(&dword_272C20000, v43, OS_LOG_TYPE_INFO, "@@ %s: Set showIconOnly to value: %@", &v99, 0x16u);
      }

      bOOLValue = [v42 BOOLValue];
    }

    else
    {
      null3 = [MEMORY[0x277CBEB68] null];
      v46 = [v42 isEqual:null3];

      if (!v46)
      {
        goto LABEL_38;
      }

      v47 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        v99 = 136315138;
        v100 = "CKBAItemSetModifiedAttributes";
        _os_log_impl(&dword_272C20000, v47, OS_LOG_TYPE_INFO, "@@ %s: Set showIconOnly to value: 0", &v99, 0xCu);
      }

      bOOLValue = 0;
    }

    [v11 setShowIconOnly:bOOLValue];
LABEL_38:
    v48 = [attributesCopy objectForKeyedSubscript:@"DateAdded"];

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v50 = v48;
    if ((isKindOfClass & 1) == 0)
    {
      null4 = [MEMORY[0x277CBEB68] null];
      v52 = [v48 isEqual:null4];

      if (!v52)
      {
        goto LABEL_42;
      }

      v50 = 0;
    }

    [v11 setDateAdded:v50];
LABEL_42:
    if (([v11 isReadingListItem] & 1) == 0)
    {
      v13[2](v13);
      v65 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (!os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
      {
        goto LABEL_100;
      }

      v99 = 136315138;
      v100 = "CKBAItemSetModifiedAttributes";
      goto LABEL_83;
    }

    v53 = [attributesCopy objectForKeyedSubscript:@"DateLastViewed"];

    objc_opt_class();
    v54 = objc_opt_isKindOfClass();
    v55 = v53;
    if ((v54 & 1) == 0)
    {
      null5 = [MEMORY[0x277CBEB68] null];
      v57 = [v53 isEqual:null5];

      if (!v57)
      {
        goto LABEL_47;
      }

      v55 = 0;
    }

    [v11 setReadingListDateLastViewed:v55];
LABEL_47:
    v58 = [attributesCopy objectForKeyedSubscript:@"PreviewText"];

    v59 = *(v15 + 3240);
    objc_opt_class();
    v60 = objc_opt_isKindOfClass();
    v61 = v58;
    if ((v60 & 1) == 0)
    {
      null6 = [MEMORY[0x277CBEB68] null];
      v63 = [v58 isEqual:null6];

      if (!v63)
      {
LABEL_51:
        v48 = [attributesCopy wb_URLForKey:@"ImageURL" isValid:0];

        if (v48)
        {
          absoluteString2 = [v48 absoluteString];
          [v11 setReadingListIconURL:absoluteString2];
        }

        v13[2](v13);
        v65 = WBS_LOG_CHANNEL_PREFIXBookmarks();
        if (!os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
        {
          goto LABEL_100;
        }

        v99 = 136315138;
        v100 = "CKBAItemSetModifiedAttributes";
LABEL_83:
        _os_log_impl(&dword_272C20000, v65, OS_LOG_TYPE_INFO, "<- %s", &v99, 0xCu);
        goto LABEL_100;
      }

      v61 = 0;
    }

    [v11 setPreviewText:v61];
    goto LABEL_51;
  }

  configuration = [v12 configuration];
  collectionType = [configuration collectionType];

  if (collectionType != 1)
  {
    v27 = v14;
    goto LABEL_62;
  }

  v27 = [attributesCopy objectForKeyedSubscript:@"LastSelectedTab"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v28 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = MEMORY[0x277CCABB0];
      v30 = v28;
      v31 = [v29 numberWithUnsignedInteger:{objc_msgSend(v27, "length")}];
      v99 = 136315394;
      v100 = "CKBAItemSetModifiedAttributes";
      v101 = 2114;
      v102 = v31;
      _os_log_impl(&dword_272C20000, v30, OS_LOG_TYPE_INFO, "@@ %s: Set last selected child ID to value of length: %{public}@", &v99, 0x16u);
    }

    v32 = [v12 bookmarkIDForServerID:v27 excludeDeletedBookmarks:1];
  }

  else
  {
    null7 = [MEMORY[0x277CBEB68] null];
    v67 = [v27 isEqual:null7];

    if (!v67)
    {
      goto LABEL_62;
    }

    v68 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
    {
      v99 = 136315138;
      v100 = "CKBAItemSetModifiedAttributes";
      _os_log_impl(&dword_272C20000, v68, OS_LOG_TYPE_INFO, "@@ %s: Set last selected child ID to null", &v99, 0xCu);
    }

    v32 = 0x7FFFFFFFLL;
  }

  [v11 setLastSelectedChildID:v32];
LABEL_62:
  v69 = [attributesCopy objectForKeyedSubscript:@"SymbolImageName"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v70 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    v71 = os_log_type_enabled(v70, OS_LOG_TYPE_INFO);
    v72 = v69;
    if (v71)
    {
      v73 = MEMORY[0x277CCABB0];
      v74 = v70;
      v75 = [v73 numberWithUnsignedInteger:{objc_msgSend(v69, "length")}];
      v99 = 136315394;
      v100 = "CKBAItemSetModifiedAttributes";
      v101 = 2114;
      v102 = v75;
      _os_log_impl(&dword_272C20000, v74, OS_LOG_TYPE_INFO, "@@ %s: Set symbolImageName to value of length: %{public}@", &v99, 0x16u);

      v72 = v69;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_70;
    }

    v76 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
    {
      v99 = 136315138;
      v100 = "CKBAItemSetModifiedAttributes";
      _os_log_impl(&dword_272C20000, v76, OS_LOG_TYPE_INFO, "@@ %s: Set symbolImageName to null", &v99, 0xCu);
    }

    v72 = 0;
  }

  [v11 setSymbolImageName:v72];
LABEL_70:
  v77 = [attributesCopy objectForKeyedSubscript:@"ShowIconOnly"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v78 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v78, OS_LOG_TYPE_INFO))
    {
      v99 = 136315394;
      v100 = "CKBAItemSetModifiedAttributes";
      v101 = 2112;
      v102 = v77;
      _os_log_impl(&dword_272C20000, v78, OS_LOG_TYPE_INFO, "@@ %s: Set showIconOnly to value: %@", &v99, 0x16u);
    }

    bOOLValue2 = [v77 BOOLValue];
LABEL_78:
    [v11 setShowIconOnly:bOOLValue2];
    goto LABEL_79;
  }

  null8 = [MEMORY[0x277CBEB68] null];
  v81 = [v77 isEqual:null8];

  if (v81)
  {
    v82 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
    {
      v99 = 136315138;
      v100 = "CKBAItemSetModifiedAttributes";
      _os_log_impl(&dword_272C20000, v82, OS_LOG_TYPE_INFO, "@@ %s: Set showIconOnly to value: 0", &v99, 0xCu);
    }

    bOOLValue2 = 0;
    goto LABEL_78;
  }

LABEL_79:
  v48 = [attributesCopy objectForKeyedSubscript:@"IsSelectedFavoritesFolder"];

  if (v48)
  {
    null9 = [MEMORY[0x277CBEB68] null];
    v84 = [v48 isEqual:null9];

    if (!v84)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v85 = v11;
        v86 = v48;
      }

      else
      {
        null10 = [MEMORY[0x277CBEB68] null];
        v88 = [v48 isEqual:null10];

        if (!v88)
        {
          v89 = 0;
LABEL_90:
          v90 = [attributesCopy objectForKeyedSubscript:@"DateAdded"];

          objc_opt_class();
          v91 = objc_opt_isKindOfClass();
          v92 = v90;
          if ((v91 & 1) == 0)
          {
            null11 = [MEMORY[0x277CBEB68] null];
            v94 = [v90 isEqual:null11];

            if (!v94)
            {
              goto LABEL_94;
            }

            v92 = 0;
          }

          [v11 setDateAdded:v92];
LABEL_94:
          v13[2](v13);
          if (v89 && [v11 isInserted])
          {
            bOOLValue3 = [v90 BOOLValue];
            collection2 = [itemCopy collection];
            [collection2 updateSelectedFavoritesFolderWithBookmarkID:objc_msgSend(v11 wasFavoritesFolder:"identifier") isFavoritesFolder:{bOOLValue3 ^ 1, bOOLValue3}];
          }

          v97 = WBS_LOG_CHANNEL_PREFIXBookmarks();
          if (os_log_type_enabled(v97, OS_LOG_TYPE_INFO))
          {
            v99 = 136315138;
            v100 = "CKBAItemSetModifiedAttributes";
            _os_log_impl(&dword_272C20000, v97, OS_LOG_TYPE_INFO, "<- %s", &v99, 0xCu);
          }

          v48 = v90;
          goto LABEL_100;
        }

        v85 = v11;
        v86 = 0;
      }

      [v85 setSelectedFavoritesFolder:v86];
      v89 = 1;
      goto LABEL_90;
    }
  }

  v13[2](v13);
  v65 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
  {
    v99 = 136315138;
    v100 = "CKBAItemSetModifiedAttributes";
    goto LABEL_83;
  }

LABEL_100:

  v98 = *MEMORY[0x277D85DE8];
}

- (id)copyValueForKey:(id)key item:(void *)item
{
  v36 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v6 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v33 = 136315650;
    *&v33[4] = "CKBAItemCopyValueForKey";
    *&v33[12] = 2114;
    *&v33[14] = item;
    v34 = 2114;
    v35 = keyCopy;
    _os_log_impl(&dword_272C20000, v6, OS_LOG_TYPE_INFO, "-> %s(item: %{public}@, key: %{public}@)", v33, 0x20u);
  }

  bookmark = [item bookmark];
  if ([keyCopy isEqualToString:@"Title"])
  {
    title = [bookmark title];
    v9 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [WBBookmarkDBAccess copyValueForKey:item:];
    }

    address = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (!os_log_type_enabled(address, OS_LOG_TYPE_INFO))
    {
      goto LABEL_66;
    }

    if (title)
    {
      goto LABEL_8;
    }

    v11 = @"(null)";
    goto LABEL_34;
  }

  if (![bookmark isFolder])
  {
    if ([keyCopy isEqualToString:@"DateAdded"])
    {
      v13 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [WBBookmarkDBAccess copyValueForKey:v13 item:?];
      }

      v14 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        goto LABEL_19;
      }

      *v33 = 136315138;
      *&v33[4] = "CKBAItemCopyValueForKey";
      goto LABEL_18;
    }

    if ([keyCopy isEqualToString:@"URL"])
    {
      address = [bookmark address];
      v17 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [WBBookmarkDBAccess copyValueForKey:item:];
      }

      v18 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        if (address)
        {
          v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSObject length](address, "length")}];
        }

        else
        {
          v19 = @"(null)";
        }

        *v33 = 136315394;
        *&v33[4] = "CKBAItemCopyValueForKey";
        *&v33[12] = 2114;
        *&v33[14] = v19;
        _os_log_impl(&dword_272C20000, v18, OS_LOG_TYPE_INFO, "<- %s -> Return value redacted; length: %{public}@", v33, 0x16u);
        if (address)
        {
        }
      }

      readingListIconURL = address;
    }

    else
    {
      if (([bookmark isReadingListItem] & 1) == 0)
      {
        v22 = WBS_LOG_CHANNEL_PREFIXBookmarks();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *v33 = 136315138;
          *&v33[4] = "CKBAItemCopyValueForKey";
          goto LABEL_52;
        }

LABEL_53:
        title = 0;
        goto LABEL_67;
      }

      if ([keyCopy isEqualToString:@"DateLastViewed"])
      {
        v23 = WBS_LOG_CHANNEL_PREFIXBookmarks();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          [WBBookmarkDBAccess copyValueForKey:v23 item:?];
        }

        v24 = WBS_LOG_CHANNEL_PREFIXBookmarks();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          *v33 = 136315138;
          *&v33[4] = "CKBAItemCopyValueForKey";
          _os_log_impl(&dword_272C20000, v24, OS_LOG_TYPE_INFO, "<- %s -> Return value redacted", v33, 0xCu);
        }

        dateLastViewed = [bookmark dateLastViewed];
        goto LABEL_20;
      }

      if ([keyCopy isEqualToString:@"PreviewText"])
      {
        v25 = WBS_LOG_CHANNEL_PREFIXBookmarks();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          [WBBookmarkDBAccess copyValueForKey:v25 item:?];
        }

        v26 = WBS_LOG_CHANNEL_PREFIXBookmarks();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          *v33 = 136315138;
          *&v33[4] = "CKBAItemCopyValueForKey";
          _os_log_impl(&dword_272C20000, v26, OS_LOG_TYPE_INFO, "<- %s -> Return value redacted", v33, 0xCu);
        }

        dateLastViewed = [bookmark previewText];
        goto LABEL_20;
      }

      v30 = [keyCopy isEqualToString:@"ImageURL"];
      v31 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      v22 = v31;
      if (!v30)
      {
        if (!os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          goto LABEL_53;
        }

        *v33 = 136315138;
        *&v33[4] = "CKBAItemCopyValueForKey";
        goto LABEL_52;
      }

      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        [WBBookmarkDBAccess copyValueForKey:v22 item:?];
      }

      v32 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        *v33 = 136315138;
        *&v33[4] = "CKBAItemCopyValueForKey";
        _os_log_impl(&dword_272C20000, v32, OS_LOG_TYPE_INFO, "<- %s -> Return value redacted", v33, 0xCu);
      }

      readingListIconURL = [bookmark readingListIconURL];
      address = readingListIconURL;
    }

    title = bookmarkURLWithString(readingListIconURL);
LABEL_66:

    goto LABEL_67;
  }

  if (![keyCopy isEqualToString:@"IsSelectedFavoritesFolder"])
  {
    if ([keyCopy isEqualToString:@"SymbolImageName"])
    {
      title = [bookmark symbolImageName];
      v16 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [WBBookmarkDBAccess copyValueForKey:item:];
      }

      address = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (!os_log_type_enabled(address, OS_LOG_TYPE_INFO))
      {
        goto LABEL_66;
      }

      if (title)
      {
LABEL_8:
        v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(title, "length")}];
        goto LABEL_34;
      }

      v11 = @"(null)";
LABEL_34:
      *v33 = 136315394;
      *&v33[4] = "CKBAItemCopyValueForKey";
      *&v33[12] = 2114;
      *&v33[14] = v11;
      _os_log_impl(&dword_272C20000, address, OS_LOG_TYPE_INFO, "<- %s -> Return value redacted; length: %{public}@", v33, 0x16u);
      if (title)
      {
      }

      goto LABEL_66;
    }

    v20 = [keyCopy isEqualToString:@"DateAdded"];
    v21 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    v22 = v21;
    if (v20)
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        [WBBookmarkDBAccess copyValueForKey:v22 item:?];
      }

      v14 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        goto LABEL_19;
      }

      *v33 = 136315138;
      *&v33[4] = "CKBAItemCopyValueForKey";
LABEL_18:
      _os_log_impl(&dword_272C20000, v14, OS_LOG_TYPE_INFO, "<- %s -> Return value redacted", v33, 0xCu);
LABEL_19:
      dateLastViewed = [bookmark dateAdded];
LABEL_20:
      title = dateLastViewed;
      goto LABEL_67;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *v33 = 136315138;
      *&v33[4] = "CKBAItemCopyValueForKey";
LABEL_52:
      _os_log_impl(&dword_272C20000, v22, OS_LOG_TYPE_INFO, "<- %s -> (null)", v33, 0xCu);
      goto LABEL_53;
    }

    goto LABEL_53;
  }

  title = [bookmark isSelectedFavoritesFolder];
  v12 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *v33 = 136315394;
    *&v33[4] = "CKBAItemCopyValueForKey";
    *&v33[12] = 2114;
    *&v33[14] = title;
    _os_log_impl(&dword_272C20000, v12, OS_LOG_TYPE_INFO, "<- %s -> %{public}@", v33, 0x16u);
  }

LABEL_67:

  v28 = *MEMORY[0x277D85DE8];
  return title;
}

- (void)clearlAllLocalBookmarksForAutomatedTestingWithDatabase:(void *)database
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "CKBADatabaseClearAllLocalBookmarksForAutomatedTesting";
    v10 = 2114;
    databaseCopy = database;
    _os_log_impl(&dword_272C20000, v4, OS_LOG_TYPE_INFO, "-> %s(database: %{public}@)", &v8, 0x16u);
  }

  databaseCopy2 = database;
  if ([databaseCopy2 mergeWithBookmarksDictionary:MEMORY[0x277CBEC10] clearHidden:1 clearSyncData:0 error:0])
  {
    [databaseCopy2 postBookmarksDidReloadNotification];
  }

  v6 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 136315138;
    v9 = "CKBADatabaseClearAllLocalBookmarksForAutomatedTesting";
    _os_log_impl(&dword_272C20000, v6, OS_LOG_TYPE_INFO, "<- %s", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)copySaveURLForAssetWithKey:(id)key item:(void *)item
{
  if (![key isEqual:@"BackgroundImage"])
  {
    return 0;
  }

  bookmark = [item bookmark];
  v6 = [[WBTabGroup alloc] initWithBookmark:bookmark];
  uuid = [(WBTabGroup *)v6 uuid];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v9 = [defaultManager safari_startPageBackgroundImageFileURLForIdentifier:uuid];

  return v9;
}

- (void)notifyForSaveOfAssetWithKey:(id)key item:(void *)item
{
  if ([key isEqual:@"BackgroundImage"])
  {
    bookmark = [item bookmark];
    v6 = [[WBTabGroup alloc] initWithBookmark:bookmark];
    uuid = [(WBTabGroup *)v6 uuid];

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __55__WBBookmarkDBAccess_notifyForSaveOfAssetWithKey_item___block_invoke;
    v10[3] = &unk_279E753F0;
    v11 = uuid;
    v12 = bookmark;
    v8 = bookmark;
    v9 = uuid;
    dispatch_async(MEMORY[0x277D85CD0], v10);
  }
}

void __55__WBBookmarkDBAccess_notifyForSaveOfAssetWithKey_item___block_invoke(uint64_t a1)
{
  v4 = [MEMORY[0x277CBEB38] dictionary];
  [v4 setObject:*(a1 + 32) forKeyedSubscript:@"backgroundImageIdentifier"];
  if ([*(a1 + 40) subtype] == 2)
  {
    [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"profileBackgroundImageIsDefined"];
  }

  v2 = [MEMORY[0x277CCA9A0] defaultCenter];
  v3 = [v4 copy];
  [v2 postNotificationName:@"nonGlobalStartPageBackgroundImageDidChangeRemotelyNotification" object:0 userInfo:v3 deliverImmediately:1];
}

- (void)clearChangesWithChangeToken:(uint64_t)a3 database:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_0(&dword_272C20000, a1, a3, "XX %s: Client passed us a change token that does not match the current generation", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)clearChangesWithChangeToken:(uint64_t)a3 database:(uint64_t)a4 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_0(&dword_272C20000, a1, a3, "XX %s: Could not clear the current change list", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)removeItemWithServerId:(void *)a1 database:.cold.1(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_4_0() wb_stringByRedactingBookmarkDAVServerID];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5(&dword_272C20000, v4, v5, "XX %s: Client requested that we remove item with server ID %{public}@ but it does not exist", v6, v7, v8, v9, 2u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)removeItemWithServerId:(uint64_t)a3 database:(uint64_t)a4 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_0(&dword_272C20000, a1, a3, "XX %s: Client requested that we remove the root folder", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)copyDeviceIdentifier
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3(&dword_272C20000, v0, v1, "## %s(deviceIdentifier: %@)", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)copyItemWithLocalID:(void *)a1 database:.cold.1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  OUTLINED_FUNCTION_4_0();
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5(&dword_272C20000, v5, v6, "XX %s: CKBALocalID is an instance of %{public}@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)copyLocalIDsInFolderWithLocalID:(void *)a1 database:.cold.1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  OUTLINED_FUNCTION_4_0();
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5(&dword_272C20000, v5, v6, "XX %s: CKBALocalID is an instance of %{public}@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)copyLocalIDsInFolderWithLocalID:database:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_1_0();
  _os_log_fault_impl(&dword_272C20000, v0, OS_LOG_TYPE_FAULT, "XX %s: Client requested server IDs of children of local ID %{public}@ but it does not exist or is not a folder!", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)addItem:(uint64_t)a1 underFolderWithServerId:(NSObject *)a2 database:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138477827;
  v4 = a1;
  _os_log_debug_impl(&dword_272C20000, a2, OS_LOG_TYPE_DEBUG, "Item was merged with %{private}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)setDeletedBookmarkSyncData:(void *)a3 change:.cold.1(void *a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v7 = 136315650;
  v8 = "CKBAChangeSetDeletedBookmarkSyncData";
  v9 = 1024;
  v10 = [a2 changeType];
  v11 = 1024;
  v12 = [a3 isInserted];
  _os_log_fault_impl(&dword_272C20000, v5, OS_LOG_TYPE_FAULT, "XX %s: Cannot set the sync data of a change that is not a Delete. Change type = %d, inserted = %d", &v7, 0x18u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)setDeletedBookmarkSyncData:(uint64_t)a3 change:(uint64_t)a4 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_0(&dword_272C20000, a1, a3, "XX %s: Cannot update the sync data of a Delete change that does exist in the database", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)copyModifiedAttributesWithChange:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3(&dword_272C20000, v0, v1, "## %s(%@)", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)copyAttributesWithItem:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3(&dword_272C20000, v0, v1, "## %s(%@)", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setModifiedAttributes:item:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3(&dword_272C20000, v0, v1, "## %s(attributes: %@)", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)copyValueForKey:(void *)a1 item:.cold.1(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_4_0() readingListIconURL];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_0(&dword_272C20000, v4, v5, "## %s(value: %@)", v6, v7, v8, v9, 2u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)copyValueForKey:(void *)a1 item:.cold.2(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_4_0() previewText];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_0(&dword_272C20000, v4, v5, "## %s(value: %@)", v6, v7, v8, v9, 2u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)copyValueForKey:(void *)a1 item:.cold.3(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_4_0() dateLastViewed];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_0(&dword_272C20000, v4, v5, "## %s(value: %@)", v6, v7, v8, v9, 2u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)copyValueForKey:item:.cold.4()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3(&dword_272C20000, v0, v1, "## %s(value: %{private}@)", v2, v3, v4, v5, 3u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)copyValueForKey:(void *)a1 item:.cold.5(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_4_0() dateAdded];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_0(&dword_272C20000, v4, v5, "## %s(value: %@)", v6, v7, v8, v9, 2u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)copyValueForKey:item:.cold.7()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3(&dword_272C20000, v0, v1, "## %s(value: %@)", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

@end