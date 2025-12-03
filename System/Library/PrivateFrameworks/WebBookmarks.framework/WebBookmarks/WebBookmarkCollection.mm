@interface WebBookmarkCollection
+ (BOOL)_isLockedSync;
+ (BOOL)_lockSync;
+ (BOOL)_removeCorruptedBookmarksDatabaseAtPath:(id)path;
+ (BOOL)isLockedSync;
+ (BOOL)lockSync;
+ (NSString)bookmarkImagesDirectoryPath;
+ (NSString)readingListArchivesDirectoryPath;
+ (NSURL)inMemoryChangesFileURL;
+ (WebBookmarkCollection)collectionWithConfiguration:(id)configuration;
+ (WebBookmarkCollection)safariBookmarkCollection;
+ (id)_cloudKitSyncMetadataFileNameWithCollectionType:(int64_t)type;
+ (id)_defaultDatabaseFileNameForConfiguration:(id)configuration;
+ (id)_syncFlags;
+ (id)_uniqueExternalUUID;
+ (id)databasePathForConfiguration:(id)configuration;
+ (id)deviceIdentifierForCloudKitWithCollectionType:(int64_t)type generateIfNeeded:(BOOL)needed;
+ (unint64_t)readingListArchivesDiskUsage;
+ (void)_postBookmarksChangedSyncNotificationOnSyncQueue;
+ (void)_unlockSync;
+ (void)holdLockSync:(const void *)sync;
+ (void)resetDeviceIdentifierForCloudKitWithCollectionType:(int64_t)type;
+ (void)safariBookmarkCollection;
+ (void)unholdLockSync:(const void *)sync;
+ (void)unlockSync;
+ (void)unlockSyncAsynchronously;
- (BOOL)_bookmark:(id)_bookmark hasCurrentDAVHomePath:(id)path;
- (BOOL)_bookmark:(id)_bookmark hasPriorityOverBookmarkForDeduplication:(id)deduplication prioritizeBookmarksWithSyncData:(BOOL)data davHomePath:(id)path;
- (BOOL)_bookmark:(id)_bookmark isDuplicateOfBookmark:(id)bookmark;
- (BOOL)_bookmarkHasSyncedToServer:(id)server;
- (BOOL)_checkDatabaseIntegrity;
- (BOOL)_childrenOfParentBookmarkAreUnsyncable:(id)unsyncable;
- (BOOL)_clearAllSyncData;
- (BOOL)_clearAllSyncKeys;
- (BOOL)_clearAllTombstones;
- (BOOL)_clearAllTombstonesDuringOrBeforeLocalRecordGeneration:(int64_t)generation;
- (BOOL)_clearChangeList;
- (BOOL)_clearSyncDataAfterICloudKeychainReset;
- (BOOL)_clearSyncKeysUnderBookmarkID:(int)d isFolder:(BOOL)folder;
- (BOOL)_clearTombstoneForBookmark:(id)bookmark;
- (BOOL)_deduplicateBookmarksForBookmarkDAVWithHomeURL:(id)l;
- (BOOL)_deleteAncestorTableEntriesForBookmarkID:(int)d;
- (BOOL)_deleteAndRebuildAncestorTableRecords;
- (BOOL)_deleteBookmark:(id)bookmark leaveTombstone:(BOOL)tombstone insertTombstoneBlock:(id)block;
- (BOOL)_deleteBookmark:(id)bookmark postChangeNotification:(BOOL)notification forApplyingInMemoryChanges:(BOOL)changes;
- (BOOL)_deleteRecursively:(int)recursively descendantsOnly:(BOOL)only;
- (BOOL)_deleteSyncPropertyForKey:(id)key;
- (BOOL)_ensureFolderChildrenCount:(id)count;
- (BOOL)_importBookmarksPlist:(id)plist;
- (BOOL)_importSyncAnchorPlist:(id)plist;
- (BOOL)_incrementGeneration;
- (BOOL)_indexAllTitleWords;
- (BOOL)_indexBookmarkID:(int)d title:(id)title;
- (BOOL)_insertTombsonesRecursivelyForRootFolder:(id)folder insertTombstoneBlock:(id)block;
- (BOOL)_insertTombstoneWithServerID:(id)d itemType:(int64_t)type subtype:(int64_t)subtype syncData:(id)data;
- (BOOL)_isDatabaseWriteAllowed;
- (BOOL)_isTombstoneWithServerID:(id)d;
- (BOOL)_markBookmarkID:(int)d added:(BOOL)added;
- (BOOL)_markSpecialBookmarks;
- (BOOL)_mergeBookmark:(id)bookmark withOriginalBookmark:(id)originalBookmark prioritizeOriginalBookmarkAttributes:(BOOL)attributes generateChangesIfNeeded:(BOOL)needed;
- (BOOL)_mergeChildrenOfID:(int)d referencingBase:(id)base error:(id *)error;
- (BOOL)_migrateBookmarksPlist:(id)plist syncAnchorPlist:(id)anchorPlist;
- (BOOL)_migrateToCurrentSchema;
- (BOOL)_moveBookmark:(id)bookmark fromIndex:(unsigned int)index toIndex:(unsigned int)toIndex;
- (BOOL)_needsDeduplicationForBookmarkDAVWithHomeURL:(id)l;
- (BOOL)_rebuildAncestorTable;
- (BOOL)_recalculateCachedChildrenCountAndOrderIndices;
- (BOOL)_reorderBookmark:(id)bookmark afterBookmark:(id)afterBookmark;
- (BOOL)_restoreBookmarkBarIfMissing;
- (BOOL)_saveBookmark:(id)bookmark startReadingListFetcher:(BOOL)fetcher forApplyingInMemoryChanges:(BOOL)changes;
- (BOOL)_setSyncData:(id)data forBookmark:(id)bookmark;
- (BOOL)_setSyncKey:(id)key forBookmark:(id)bookmark;
- (BOOL)_syncPropertyExistsForKey:(id)key;
- (BOOL)_syncSetString:(id)string forKey:(id)key updatedExistingKey:(BOOL *)existingKey;
- (BOOL)_trackChangesInMemoryIfDatabaseWriteIsNotAllowed;
- (BOOL)_unsafeOpenDatabaseAtPath:(id)path checkIntegrity:(BOOL)integrity error:(id *)error;
- (BOOL)_updateDatabaseIfNewerOSVersionWasLaunched;
- (BOOL)_updateDatabaseIfNewerSafariVersionWasLaunched;
- (BOOL)_updateDatabaseIfNewerVersion:(id)version wasLaunchedForSyncStringKey:(id)key upgradeSelector:(SEL)selector versionType:(id)type;
- (BOOL)_updateDatabaseOutsideSafariProcessIfNewerSafariVersionWasLaunched;
- (BOOL)_updateHiddenAncestorCountForBookmarksUnderFolderID:(int)d addingOffset:(int)offset;
- (BOOL)_verifyAllTablesExist:(int *)exist;
- (BOOL)applyInMemoryChangesToDatabase;
- (BOOL)beginSyncTransaction;
- (BOOL)bookmarkContainsLeafBookmark:(id)bookmark;
- (BOOL)bookmarkIsFavoritesFolder:(id)folder;
- (BOOL)bookmarkIsInFavoritesFolder:(id)folder;
- (BOOL)cleanUpReadingListArchives;
- (BOOL)clearAllReadingListArchives;
- (BOOL)clearAllSyncData;
- (BOOL)clearChangesDuringOrBeforeLocalRecordGeneration:(int64_t)generation;
- (BOOL)clearChangesForBookmark:(id)bookmark;
- (BOOL)clearChangesForChangeRecords:(id)records lastSyncedRecordGeneration:(int64_t)generation;
- (BOOL)clearReadingListArchiveWithUUID:(id)d;
- (BOOL)clearSyncDataAfterICloudKeychainReset;
- (BOOL)containsOnlyStockBookmarks;
- (BOOL)deleteAllFavoriteIcons;
- (BOOL)fixCachedNumberOfChildrenIfNeeded;
- (BOOL)getBookmarkType:(BOOL *)type andSubtype:(int64_t *)subtype forBookmarkWithID:(int)d;
- (BOOL)hasInMemoryChanges;
- (BOOL)isTransactionCurrentlyActive;
- (BOOL)markAllFavoritesAsNeedingIcons;
- (BOOL)markArchivedReadingListItemsAsNonRecoverable;
- (BOOL)markAttributesAsModified:(unint64_t)modified forBookmark:(id)bookmark;
- (BOOL)markWebContentFilterAllowsAllReadingListItems;
- (BOOL)mergeWithBookmarksDictionary:(id)dictionary clearHidden:(BOOL)hidden clearSyncData:(BOOL)data error:(id *)error;
- (BOOL)migrateReadingListIconsFromDatabaseToBookmarkImagesDirectory;
- (BOOL)performDatabaseUpdatesWithTransaction:(id)transaction applyInMemoryChanges:(BOOL)changes secureDelete:(BOOL)delete;
- (BOOL)removeAllSyncDataForKeyWithPrefix:(id)prefix;
- (BOOL)removePresenceForParticipant:(id)participant inTabGroupWithServerID:(id)d;
- (BOOL)removeUnusedPresenceRecords;
- (BOOL)rollOutLastReadingListItem;
- (BOOL)saveBookmark:(id)bookmark;
- (BOOL)saveBookmarks:(id)bookmarks postNotification:(BOOL)notification;
- (BOOL)saveDatabaseSyncData:(id)data;
- (BOOL)setPresenceInTabWithServerID:(id)d tabGroupWithServerID:(id)iD forParticipant:(id)participant;
- (BOOL)setServerID:(id)d forBookmark:(id)bookmark;
- (BOOL)setSyncData:(id)data forKey:(id)key;
- (BOOL)shouldFetchIconForBookmark:(id)bookmark;
- (BOOL)updateBookmarkSyncPositionIfNeeded:(id)needed;
- (BOOL)updateDatabaseSyncDataUsingBlock:(id)block;
- (BOOL)updateReadingListWebFilterStatusForUnsetItemsOnly:(BOOL)only;
- (BOOL)updateSyncDataForBookmark:(id)bookmark usingBlock:(id)block;
- (BOOL)updateSyncDataForBookmarkWithRecordName:(id)name excludeDeletedBookmarks:(BOOL)bookmarks usingBlock:(id)block;
- (BOOL)userHasSharedTabGroups;
- (BOOL)vacuum;
- (NSArray)bookmarksByDateAdded;
- (NSArray)changeList;
- (NSArray)purgeableReadingListItems;
- (NSNumber)frequentlyVisitedSitesFolderBookmarkID;
- (WBBookmarkDatabaseSyncData)databaseSyncData;
- (WebBookmark)bookmarksBarBookmark;
- (WebBookmark)favoritesFolder;
- (WebBookmark)rootBookmark;
- (WebBookmarkCollection)initWithConfiguration:(id)configuration checkIntegrity:(BOOL)integrity;
- (WebBookmarkCollection)initWithPath:(id)path migratingBookmarksPlist:(id)plist syncAnchorPlist:(id)anchorPlist;
- (WebBookmarkList)allBookmarkFolders;
- (WebBookmarkList)allBookmarkLeaves;
- (WebBookmarkList)bookmarksBarList;
- (WebBookmarkList)bookmarksNeedingIcons;
- (WebBookmarkList)favoritesFolderList;
- (WebBookmarkList)rollingListOfArchivedReadingListItems;
- (id)_applyInMemoryChanges:(id)changes postChangeNotification:(BOOL)notification;
- (id)_bookmarkDictionaryForSqliteRow:(sqlite3_stmt *)row recursive:(BOOL)recursive error:(id *)error;
- (id)_bookmarksFromStatementSelectingIDs:(const char *)ds withQuery:(id)query;
- (id)_databaseTitleForSpecialID:(int)d;
- (id)_errorForMostRecentSQLiteError;
- (id)_errorForMostRecentSQLiteErrorWithErrorCode:(int64_t)code;
- (id)_fetchBookmarkIDsInFolder:(int)folder onlyFolders:(BOOL)folders includingHiddenBookmarks:(BOOL)bookmarks sortedByOrderIndex:(BOOL)index;
- (id)_firstBookmarkWithURLMatchingString:(id)string prefixMatch:(BOOL)match inParent:(int)parent;
- (id)_firstOrLastServerIDInFolderWithServerID:(id)d isFirst:(BOOL)first;
- (id)_firstServerIDInFolderWithServerID:(id)d;
- (id)_folderContentsDidChangeNotificationName;
- (id)_inMemoryChangeSet;
- (id)_lastServerIDInFolderWithServerID:(id)d;
- (id)_mergeCandidateBookmarkWithTitle:(id)title address:(id)address parent:(int)parent mergeMode:(int64_t)mode;
- (id)_mergeCandidateFolderWithTitle:(id)title parent:(int)parent mergeMode:(int64_t)mode;
- (id)_orderedWhereClauseForArchiveMode:(int64_t)mode;
- (id)_orderedWhereClauseForArchiveMode:(int64_t)mode automaticArchivingEnabled:(BOOL)enabled;
- (id)_parentIdentifiersOfBookmarksNeedingIcons;
- (id)_positionAfterBookmark:(id)bookmark;
- (id)_positionAfterOrderIndex:(unsigned int)index inFolderWithID:(int)d;
- (id)_positionBeforeBookmark:(id)bookmark;
- (id)_positionBeforeOrderIndex:(unsigned int)index inFolderWithID:(int)d;
- (id)_primaryRecordZoneID;
- (id)_readingListItemsWhere:(id)where filteredBy:(id)by withInMemoryFilter:(id)filter;
- (id)_rootFolderHiddenChildrenClause;
- (id)_rootServerIDForRecordZoneID:(id)d;
- (id)_safariFetcherServerProxy;
- (id)_serverIDAfterServerID:(id)d;
- (id)_serverIDBeforeServerID:(id)d;
- (id)_serverIDOfSiblingBookmarkWithServerID:(id)d immediatelyBeforeOrAfter:(BOOL)after;
- (id)_syncDataBlobForBookmarkServerID:(id)d;
- (id)_syncDataForBookmarkID:(int)d;
- (id)_syncDataForBookmarkServerID:(id)d;
- (id)_syncKeysForServerIDs:(id)ds;
- (id)_tableExpressionForArchiveMode:(int64_t)mode;
- (id)activeParticipantsInTabGroupWithServerID:(id)d;
- (id)activeParticipantsInTabWithServerID:(id)d;
- (id)allSyncDataForKeysWithPrefix:(id)prefix;
- (id)allSyncingAttributesForBookmark:(id)bookmark;
- (id)applyInMemoryChanges:(id)changes;
- (id)bookmarkAtPath:(id)path;
- (id)bookmarkWithServerID:(id)d excludeDeletedBookmarks:(BOOL)bookmarks;
- (id)bookmarkWithSpecialID:(int)d;
- (id)bookmarkWithUUID:(id)d;
- (id)bookmarksDictionary;
- (id)bookmarksMatchingString:(id)string;
- (id)bookmarksWithSubtype:(int64_t)subtype;
- (id)currentDeviceIdentifier;
- (id)currentTabServerIDPresenceForParticipant:(id)participant getTabGroupServerID:(id *)d;
- (id)currentTabServerIDPresenceForParticipant:(id)participant inTabGroupWithServerID:(id)d;
- (id)databaseHealthInformation;
- (id)descendantsOfBookmarkFolder:(id)folder;
- (id)fastFetchBookmarksInBookmarkList:(id)list;
- (id)firstReadingListBookmarkNeedingArchiveInMode:(int64_t)mode;
- (id)generateNewServerIDForBookmark:(id)bookmark;
- (id)generateSyncPositionForBookmark:(id)bookmark;
- (id)leafChildCountForFoldersInFolderWithID:(int)d;
- (id)modifiedSyncingAttributesForBookmark:(id)bookmark;
- (id)nextChangeAfterLocalRecordGeneration:(int64_t)generation;
- (id)presenceTabUUIDForParticipant:(id)participant inTabGroupWithServerID:(id)d;
- (id)readingListBookmarksNeedingArchiveInMode:(int64_t)mode;
- (id)readingListWithUnreadOnly:(BOOL)only filteredUsingString:(id)string;
- (id)syncDataForBookmark:(id)bookmark;
- (id)syncDataForKey:(id)key;
- (id)syncStringForKey:(id)key;
- (id)syncableBookmarksIDsInFolderWithBookmarkID:(int)d;
- (id)validBookmarkUUIDsFromUUIDs:(id)ds;
- (int)_favoritesFolderIdentifier;
- (int)_finalizeStatementIfNotNull:(sqlite3_stmt *)null;
- (int)_specialIDForBookmarkBeingSaved:(id)saved;
- (int)_specialIDForBookmarkTitle:(id)title;
- (int)_sqliteStatementWithQuery:(id)query runInBlock:(id)block;
- (int)bookmarkIDForServerID:(id)d excludeDeletedBookmarks:(BOOL)bookmarks;
- (int)bookmarkIdentifierOfAncestorWithAnySubtypeInSubtypes:(id)subtypes forBookmark:(id)bookmark;
- (int)bookmarkIdentifierOfAncestorWithSubtype:(int64_t)subtype forBookmark:(id)bookmark;
- (int)bookmarkIdentifierOfFolderAncestorWithSubtype:(int64_t)subtype forBookmark:(id)bookmark;
- (int)identifierOfBookmarkWithUUID:(id)d;
- (int)readingListFolderBookmarkID;
- (int)webFilterAllowedSitesFolderBookmarkID;
- (int64_t)_mergeBookmarkIntoPersistedBookmark:(id)bookmark forAttributes:(unint64_t)attributes;
- (int64_t)_syncType;
- (int64_t)firstSkippedProfileDeviceGeneration;
- (int64_t)firstSkippedProfileGeneration;
- (int64_t)lastSyncedRecordGeneration;
- (int64_t)localMigrationState;
- (int64_t)nextDatabaseSyncChangeID;
- (int64_t)subtypeOfBookmarkWithServerID:(id)d;
- (sqlite3_stmt)_prefixSearch:(id)search usingColumns:(const char *)columns maxCount:(unsigned int)count;
- (sqlite3_stmt)_selectBookmarksWhere:(id)where returnType:(int64_t)type;
- (sqlite3_stmt)_sqliteStatementWithQuery:(id)query;
- (unint64_t)countReadingListBookmarksNeedingArchiveInMode:(int64_t)mode;
- (unint64_t)leafChildCountForBookmarksInFolderWithID:(int)d;
- (unint64_t)modifiedAttributesOfBookmark:(id)bookmark;
- (unint64_t)purge:(unint64_t)purge;
- (unint64_t)purgeableSpace;
- (unsigned)_orderIndexForBookmarkInsertedIntoParent:(int)parent insertAtBeginning:(BOOL)beginning;
- (unsigned)orderIndexOfBookmark:(id)bookmark;
- (unsigned)orderIndexOfBookmark:(id)bookmark withSyncPosition:(id)position inFolderWithID:(int)d;
- (void)_addBookmarksForReadingListMatchStatement:(id)statement normalizedQuery:(id)query toArray:(id)array maxResults:(int)results;
- (void)_appendDuplicateBookmarkGroupsInBookmarks:(id)bookmarks toGroups:(id)groups considerBookmarksWithSyncDataAsUnique:(BOOL)unique davHomePath:(id)path;
- (void)_applyInMemoryChange:(id)change fromChangeSet:(id)set updatedBookmarks:(id)bookmarks;
- (void)_checkDatabaseIntegrity;
- (void)_clearAllSyncData;
- (void)_clearAllSyncKeys;
- (void)_clearAllTombstones;
- (void)_clearAndCreateAncestorTable;
- (void)_clearAndCreateBookmarksTables;
- (void)_clearAndCreateBookmarksTitleWordTable;
- (void)_createFreshDatabase;
- (void)_createInMemoryChangeSet;
- (void)_createRecoveredBookmarksFolderIfNeeded;
- (void)_createSchema;
- (void)_cullReadingListBookmarksList:(id)list toSize:(unint64_t)size;
- (void)_deleteBookmarkInMemory:(id)memory;
- (void)_deleteIconForBookmark:(id)bookmark;
- (void)_enumerateBookmarksForMatchStatement:(id)statement normalizedQuery:(id)query usingBlock:(id)block;
- (void)_enumerateBookmarksMatchingString:(id)string statementSuffix:(id)suffix usingBlock:(id)block;
- (void)_incrementGeneration;
- (void)_interruptDatabase;
- (void)_metaDataFileChanged:(id)changed;
- (void)_migrateSchemaVersion0ToVersion1;
- (void)_migrateSchemaVersion10ToVersion11;
- (void)_migrateSchemaVersion11And12And13ToVersion14;
- (void)_migrateSchemaVersion14ToVersion15;
- (void)_migrateSchemaVersion15ToVersion16;
- (void)_migrateSchemaVersion16AndVersion17AndVersion18ToVersion19;
- (void)_migrateSchemaVersion19And20ToVersion21;
- (void)_migrateSchemaVersion1And2ToVersion3;
- (void)_migrateSchemaVersion21ToVersion22;
- (void)_migrateSchemaVersion22ToVersion23;
- (void)_migrateSchemaVersion23ToVersion24;
- (void)_migrateSchemaVersion24ToVersion25;
- (void)_migrateSchemaVersion25ToVersion26;
- (void)_migrateSchemaVersion26ToVersion27;
- (void)_migrateSchemaVersion27ToVersion28;
- (void)_migrateSchemaVersion28ToVersion29;
- (void)_migrateSchemaVersion29ToVersion30;
- (void)_migrateSchemaVersion30ToVersion31;
- (void)_migrateSchemaVersion31ToVersion32;
- (void)_migrateSchemaVersion32ToVersion33;
- (void)_migrateSchemaVersion33ToVersion34;
- (void)_migrateSchemaVersion34ToVersion35;
- (void)_migrateSchemaVersion35ToVersion36;
- (void)_migrateSchemaVersion36ToVersion37;
- (void)_migrateSchemaVersion37ToVersion38;
- (void)_migrateSchemaVersion38ToVersion39;
- (void)_migrateSchemaVersion39Or40ToVersion41;
- (void)_migrateSchemaVersion3ToVersion4;
- (void)_migrateSchemaVersion41ToVersion42;
- (void)_migrateSchemaVersion42ToVersion43;
- (void)_migrateSchemaVersion43ToVersion44;
- (void)_migrateSchemaVersion44ToVersion45;
- (void)_migrateSchemaVersion45ToVersion46;
- (void)_migrateSchemaVersion46ToVersion47;
- (void)_migrateSchemaVersion47ToVersion48;
- (void)_migrateSchemaVersion48ToVersion49;
- (void)_migrateSchemaVersion49ToVersion50;
- (void)_migrateSchemaVersion4ToVersion5;
- (void)_migrateSchemaVersion50ToVersion51;
- (void)_migrateSchemaVersion51ToVersion52;
- (void)_migrateSchemaVersion52ToVersion53;
- (void)_migrateSchemaVersion53ToVersion54;
- (void)_migrateSchemaVersion54ToVersion55;
- (void)_migrateSchemaVersion55ToVersion56;
- (void)_migrateSchemaVersion5ToVersion6;
- (void)_migrateSchemaVersion6ToVersion7;
- (void)_migrateSchemaVersion7ToVersion8;
- (void)_migrateSchemaVersion8ToVersion9;
- (void)_migrateSchemaVersion9ToVersion10;
- (void)_migrateToCurrentSchema;
- (void)_normalizeDatabaseURLs;
- (void)_normalizeSearchString:(__CFString *)string;
- (void)_postBookmarksChangedSyncNotification;
- (void)_postBookmarksDidReloadNotification;
- (void)_postBookmarksDidReloadNotificationAndStartReadingListFetcherIfChangesWereMade;
- (void)_postBookmarksSpecialFoldersDidChangeNotification;
- (void)_registerForSyncBookmarksFileChangedNotification;
- (void)_rerunMigrationsIfNecessary;
- (void)_restoreOrMergeAllowedSitesFolderAndContentsWithWebFilterAllowedSites:(id)sites ensureChildCount:(BOOL)count postChangeNotification:(BOOL)notification;
- (void)_restoreOrMergeReadingListFolderWithChangeNotification:(BOOL)notification;
- (void)_setSyncNotificationType:(int64_t)type;
- (void)_setupInMemoryChangeSet;
- (void)_simulateCrashWithDescription:(id)description;
- (void)_startReadingListFetcher;
- (void)_test_preventPeriodicallyApplyingInMemoryChangesToDatabase;
- (void)_updateSyncNotificationType;
- (void)cleanUpReadingListArchives;
- (void)clearAllReadingListArchives;
- (void)clearCarrierBookmarks;
- (void)databaseLockAcquisitor:(id)acquisitor acquiredLock:(BOOL)lock;
- (void)dealloc;
- (void)deleteBookmarkInMemory:(id)memory;
- (void)didSkipProfileDeviceWithGeneration:(int64_t)generation;
- (void)didSkipProfileWithGeneration:(int64_t)generation;
- (void)enumerateBookmarks:(BOOL)bookmarks andReadingListItems:(BOOL)items matchingString:(id)string usingBlock:(id)block;
- (void)enumerateDescendantsOfBookmark:(id)bookmark usingBlock:(id)block;
- (void)fixRecoveredBookmarksIfNeeded;
- (void)logRegulatoryBookmarksRead;
- (void)markChildrenInFolderAsRead:(id)read;
- (void)markWebContentFilterAllowsAllReadingListItems;
- (void)modifyBookmarkInMemory:(id)memory;
- (void)persistChangesWithCompletion:(id)completion;
- (void)removePersistedInMemoryBookmarkChangesFile;
- (void)reorderBookmarkInMemory:(id)memory afterBookmark:(id)bookmark;
- (void)resetDeviceIdentifier;
- (void)rollOutReadingListItemIfNeededToMakeRoomForOneNewItem;
- (void)rollbackSyncTransaction;
- (void)saveArchivesForReadingListBookmarks:(id)bookmarks;
- (void)saveIconWithData:(id)data urlString:(id)string forBookmark:(id)bookmark;
- (void)saveMinimumAPISyncVersionOfDescendantItemsForItem:(id)item includingAncestorItem:(BOOL)ancestorItem;
- (void)setFavoritesFolder:(id)folder localOnly:(BOOL)only;
- (void)setLastSyncedRecordGeneration:(int64_t)generation;
- (void)updateSelectedFavoritesFolderWithBookmarkID:(int)d wasFavoritesFolder:(BOOL)folder isFavoritesFolder:(BOOL)favoritesFolder;
@end

@implementation WebBookmarkCollection

void __73__WebBookmarkCollection__trackChangesInMemoryIfDatabaseWriteIsNotAllowed__block_invoke()
{
  v0 = [MEMORY[0x277CCA8D8] mainBundle];
  -[WebBookmarkCollection _trackChangesInMemoryIfDatabaseWriteIsNotAllowed]::trackChangesInMemory = [v0 safari_isSafariFamilyApplicationBundle];
}

- (void)_createInMemoryChangeSet
{
  v2 = [WebBookmarkChangeSet alloc];
  inMemoryChangesFileURL = [objc_opt_class() inMemoryChangesFileURL];
  v3 = [(WebBookmarkChangeSet *)v2 initWithFileURL:?];
  v4 = inMemoryChangeSet;
  inMemoryChangeSet = v3;
}

+ (NSURL)inMemoryChangesFileURL
{
  v2 = MEMORY[0x277CBEBC0];
  safariDirectoryPath = [self safariDirectoryPath];
  v4 = [safariDirectoryPath stringByAppendingPathComponent:@"bookmarkChanges.plist"];
  v5 = [v2 fileURLWithPath:v4];

  return v5;
}

- (BOOL)_isDatabaseWriteAllowed
{
  if ([(WBCollectionConfiguration *)self->_configuration isReadonly])
  {
    return [(WBCollectionConfiguration *)self->_configuration createIfNeeded]&& !self->_setupFinished;
  }

  else
  {
    return 1;
  }
}

- (BOOL)_migrateToCurrentSchema
{
  _userVersion = [(WebBookmarkCollection *)self _userVersion];
  if ([(WebBookmarkCollection *)self _isDatabaseWriteAllowed])
  {
    if (_userVersion < 57)
    {
      if (_userVersion == 56)
      {
LABEL_69:
        LOBYTE(v5) = 1;
        return v5;
      }
    }

    else
    {
      v4 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        [WebBookmarkCollection _migrateToCurrentSchema];
      }
    }

    if (!-[WBCollectionConfiguration isReadonly](self->_configuration, "isReadonly") || ([objc_opt_class() lockSync] & 1) != 0)
    {
      switch(_userVersion)
      {
        case -1:
          v7 = WBS_LOG_CHANNEL_PREFIXBookmarks();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
          {
            [WebBookmarkCollection _migrateToCurrentSchema];
          }

          break;
        case 0:
          [(WebBookmarkCollection *)self _migrateSchemaVersion0ToVersion1];
          goto LABEL_19;
        case 1:
        case 2:
LABEL_19:
          [(WebBookmarkCollection *)self _migrateSchemaVersion1And2ToVersion3];
          goto LABEL_20;
        case 3:
LABEL_20:
          [(WebBookmarkCollection *)self _migrateSchemaVersion3ToVersion4];
          goto LABEL_21;
        case 4:
LABEL_21:
          [(WebBookmarkCollection *)self _migrateSchemaVersion4ToVersion5];
          goto LABEL_22;
        case 5:
LABEL_22:
          [(WebBookmarkCollection *)self _migrateSchemaVersion5ToVersion6];
          goto LABEL_23;
        case 6:
LABEL_23:
          [(WebBookmarkCollection *)self _migrateSchemaVersion6ToVersion7];
          goto LABEL_24;
        case 7:
LABEL_24:
          [(WebBookmarkCollection *)self _migrateSchemaVersion7ToVersion8];
          goto LABEL_25;
        case 8:
LABEL_25:
          [(WebBookmarkCollection *)self _migrateSchemaVersion8ToVersion9];
          goto LABEL_26;
        case 9:
LABEL_26:
          [(WebBookmarkCollection *)self _migrateSchemaVersion9ToVersion10];
          goto LABEL_27;
        case 10:
LABEL_27:
          [(WebBookmarkCollection *)self _migrateSchemaVersion10ToVersion11];
          goto LABEL_28;
        case 11:
        case 12:
        case 13:
LABEL_28:
          [(WebBookmarkCollection *)self _migrateSchemaVersion11And12And13ToVersion14];
          goto LABEL_29;
        case 14:
LABEL_29:
          [(WebBookmarkCollection *)self _migrateSchemaVersion14ToVersion15];
          goto LABEL_30;
        case 15:
LABEL_30:
          [(WebBookmarkCollection *)self _migrateSchemaVersion15ToVersion16];
          goto LABEL_31;
        case 16:
        case 17:
        case 18:
LABEL_31:
          [(WebBookmarkCollection *)self _migrateSchemaVersion16AndVersion17AndVersion18ToVersion19];
          goto LABEL_32;
        case 19:
        case 20:
LABEL_32:
          [(WebBookmarkCollection *)self _migrateSchemaVersion19And20ToVersion21];
          goto LABEL_33;
        case 21:
LABEL_33:
          [(WebBookmarkCollection *)self _migrateSchemaVersion21ToVersion22];
          goto LABEL_34;
        case 22:
LABEL_34:
          [(WebBookmarkCollection *)self _migrateSchemaVersion22ToVersion23];
          goto LABEL_35;
        case 23:
LABEL_35:
          [(WebBookmarkCollection *)self _migrateSchemaVersion23ToVersion24];
          goto LABEL_36;
        case 24:
LABEL_36:
          [(WebBookmarkCollection *)self _migrateSchemaVersion24ToVersion25];
          goto LABEL_37;
        case 25:
LABEL_37:
          [(WebBookmarkCollection *)self _migrateSchemaVersion25ToVersion26];
          goto LABEL_38;
        case 26:
LABEL_38:
          [(WebBookmarkCollection *)self _migrateSchemaVersion26ToVersion27];
          goto LABEL_39;
        case 27:
LABEL_39:
          [(WebBookmarkCollection *)self _migrateSchemaVersion27ToVersion28];
          goto LABEL_40;
        case 28:
LABEL_40:
          [(WebBookmarkCollection *)self _migrateSchemaVersion28ToVersion29];
          goto LABEL_41;
        case 29:
LABEL_41:
          [(WebBookmarkCollection *)self _migrateSchemaVersion29ToVersion30];
          goto LABEL_42;
        case 30:
LABEL_42:
          [(WebBookmarkCollection *)self _migrateSchemaVersion30ToVersion31];
          goto LABEL_43;
        case 31:
LABEL_43:
          [(WebBookmarkCollection *)self _migrateSchemaVersion31ToVersion32];
          goto LABEL_44;
        case 32:
LABEL_44:
          [(WebBookmarkCollection *)self _migrateSchemaVersion32ToVersion33];
          goto LABEL_45;
        case 33:
LABEL_45:
          [(WebBookmarkCollection *)self _migrateSchemaVersion33ToVersion34];
          goto LABEL_46;
        case 34:
LABEL_46:
          [(WebBookmarkCollection *)self _migrateSchemaVersion34ToVersion35];
          goto LABEL_47;
        case 35:
LABEL_47:
          [(WebBookmarkCollection *)self _migrateSchemaVersion35ToVersion36];
          goto LABEL_48;
        case 36:
LABEL_48:
          [(WebBookmarkCollection *)self _migrateSchemaVersion36ToVersion37];
          goto LABEL_49;
        case 37:
LABEL_49:
          [(WebBookmarkCollection *)self _migrateSchemaVersion37ToVersion38];
          goto LABEL_50;
        case 38:
LABEL_50:
          [(WebBookmarkCollection *)self _migrateSchemaVersion38ToVersion39];
          goto LABEL_51;
        case 39:
        case 40:
LABEL_51:
          [(WebBookmarkCollection *)self _migrateSchemaVersion39Or40ToVersion41];
          goto LABEL_52;
        case 41:
LABEL_52:
          [(WebBookmarkCollection *)self _migrateSchemaVersion41ToVersion42];
          goto LABEL_53;
        case 42:
LABEL_53:
          [(WebBookmarkCollection *)self _migrateSchemaVersion42ToVersion43];
          goto LABEL_54;
        case 43:
LABEL_54:
          [(WebBookmarkCollection *)self _migrateSchemaVersion43ToVersion44];
          goto LABEL_55;
        case 44:
LABEL_55:
          [(WebBookmarkCollection *)self _migrateSchemaVersion44ToVersion45];
          goto LABEL_56;
        case 45:
LABEL_56:
          [(WebBookmarkCollection *)self _migrateSchemaVersion45ToVersion46];
          goto LABEL_57;
        case 46:
LABEL_57:
          [(WebBookmarkCollection *)self _migrateSchemaVersion46ToVersion47];
          goto LABEL_58;
        case 47:
LABEL_58:
          [(WebBookmarkCollection *)self _migrateSchemaVersion47ToVersion48];
          goto LABEL_59;
        case 48:
LABEL_59:
          [(WebBookmarkCollection *)self _migrateSchemaVersion48ToVersion49];
          goto LABEL_60;
        case 49:
LABEL_60:
          [(WebBookmarkCollection *)self _migrateSchemaVersion49ToVersion50];
          goto LABEL_61;
        case 50:
LABEL_61:
          [(WebBookmarkCollection *)self _migrateSchemaVersion50ToVersion51];
          goto LABEL_62;
        case 51:
LABEL_62:
          [(WebBookmarkCollection *)self _migrateSchemaVersion51ToVersion52];
          goto LABEL_63;
        case 52:
LABEL_63:
          [(WebBookmarkCollection *)self _migrateSchemaVersion52ToVersion53];
          goto LABEL_64;
        case 53:
LABEL_64:
          [(WebBookmarkCollection *)self _migrateSchemaVersion53ToVersion54];
          goto LABEL_65;
        case 54:
LABEL_65:
          [(WebBookmarkCollection *)self _migrateSchemaVersion54ToVersion55];
          goto LABEL_66;
        case 55:
LABEL_66:
          [(WebBookmarkCollection *)self _migrateSchemaVersion55ToVersion56];
          break;
        default:
          break;
      }

      [(WebBookmarkCollection *)self _rerunMigrationsIfNecessary];
      if ([(WBCollectionConfiguration *)self->_configuration isReadonly])
      {
        [objc_opt_class() unlockSync];
      }

      goto LABEL_69;
    }

    v8 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    v5 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (v5)
    {
      [WebBookmarkCollection _migrateToCurrentSchema];
      goto LABEL_17;
    }
  }

  else
  {
    LOBYTE(v5) = 1;
    if (_userVersion <= 55 && _userVersion != 39)
    {
      v6 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      v5 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
      if (v5)
      {
        [WebBookmarkCollection _migrateToCurrentSchema];
LABEL_17:
        LOBYTE(v5) = 0;
      }
    }
  }

  return v5;
}

- (BOOL)_trackChangesInMemoryIfDatabaseWriteIsNotAllowed
{
  if ([WebBookmarkCollection _trackChangesInMemoryIfDatabaseWriteIsNotAllowed]::onceToken != -1)
  {
    [WebBookmarkCollection _trackChangesInMemoryIfDatabaseWriteIsNotAllowed];
  }

  return [WebBookmarkCollection _trackChangesInMemoryIfDatabaseWriteIsNotAllowed]::trackChangesInMemory;
}

- (BOOL)_updateDatabaseIfNewerSafariVersionWasLaunched
{
  safari_safariCoreBundle = [MEMORY[0x277CCA8D8] safari_safariCoreBundle];
  safari_normalizedVersion = [safari_safariCoreBundle safari_normalizedVersion];

  LOBYTE(self) = [(WebBookmarkCollection *)self _updateDatabaseIfNewerVersion:safari_normalizedVersion wasLaunchedForSyncStringKey:@"newestLaunchedSafariVersion" upgradeSelector:sel__performSafariVersionUpgradesFromPreviousVersion_ versionType:@"Safari"];
  return self;
}

- (BOOL)_updateDatabaseIfNewerOSVersionWasLaunched
{
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  safari_operatingSystemVersionString = [processInfo safari_operatingSystemVersionString];

  LOBYTE(self) = [(WebBookmarkCollection *)self _updateDatabaseIfNewerVersion:safari_operatingSystemVersionString wasLaunchedForSyncStringKey:@"newestLaunchedOSVersion" upgradeSelector:sel__performOSVersionUpgradesFromPreviousVersion_ versionType:@"OS"];
  return self;
}

- (void)_createRecoveredBookmarksFolderIfNeeded
{
  v3 = [(WebBookmarkCollection *)self bookmarkIDWithSpecialID:6];
  maintainsSyncMetadata = [(WebBookmarkCollection *)self maintainsSyncMetadata];
  if (v3 == 0x7FFFFFFF)
  {
    if (maintainsSyncMetadata)
    {
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __64__WebBookmarkCollection__createRecoveredBookmarksFolderIfNeeded__block_invoke;
      v6[3] = &unk_279E757F0;
      v6[4] = self;
      [(WebBookmarkCollection *)self performDatabaseUpdatesWithTransaction:v6 secureDelete:0];
    }
  }

  else if (!maintainsSyncMetadata)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"DELETE FROM bookmarks WHERE special_id = %d", 6];
    [(WebBookmarkCollection *)self _executeSQL:?];
  }
}

- (BOOL)_updateDatabaseOutsideSafariProcessIfNewerSafariVersionWasLaunched
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  safari_isInSyncAgent = [mainBundle safari_isInSyncAgent];

  if ((safari_isInSyncAgent & 1) == 0)
  {
    return 1;
  }

  safari_safariCoreBundle = [MEMORY[0x277CCA8D8] safari_safariCoreBundle];
  safari_normalizedVersion = [safari_safariCoreBundle safari_normalizedVersion];

  v7 = [(WebBookmarkCollection *)self _updateDatabaseIfNewerVersion:safari_normalizedVersion wasLaunchedForSyncStringKey:@"newestLaunchedSafariOutsideSafariProcessVersion" upgradeSelector:sel__performSafariVersionUpgradesOutsideSafariProcessFromPreviousVersion_ versionType:@"NewestLaunchedSafariVersionOutsideApplicationProcess"];
  return v7;
}

- (id)currentDeviceIdentifier
{
  if ([(WBCollectionConfiguration *)self->_configuration isInMemoryDatabase])
  {
    identifier = [(WBCollectionConfiguration *)self->_configuration identifier];
  }

  else
  {
    v4 = [objc_opt_class() deviceIdentifierForCloudKitWithCollectionType:-[WBCollectionConfiguration collectionType](self->_configuration generateIfNeeded:{"collectionType"), 1}];
    uUID = [v4 UUID];
    identifier = [uUID UUIDString];
  }

  return identifier;
}

- (id)_inMemoryChangeSet
{
  if ([(WebBookmarkCollection *)self _trackChangesInMemoryIfDatabaseWriteIsNotAllowed])
  {
    inMemoryChangeSet = [objc_opt_class() inMemoryChangeSet];
  }

  else
  {
    inMemoryChangeSet = 0;
  }

  return inMemoryChangeSet;
}

- (id)_rootFolderHiddenChildrenClause
{
  favoritesFolder = [(WebBookmarkCollection *)self favoritesFolder];
  identifier = [favoritesFolder identifier];

  return [MEMORY[0x277CCACA8] stringWithFormat:@"AND hidden = 0 AND id != %d AND (num_children > 0 OR special_id != %d)", identifier, 2];
}

- (WebBookmark)favoritesFolder
{
  v3 = [(WebBookmarkCollection *)self syncStringForKey:@"_FavoritesFolderID"];
  intValue = [v3 intValue];

  if (!intValue || ([(WebBookmarkCollection *)self bookmarkWithID:intValue], (bookmarksBarBookmark = objc_claimAutoreleasedReturnValue()) == 0))
  {
    bookmarksBarBookmark = [(WebBookmarkCollection *)self bookmarksBarBookmark];
  }

  return bookmarksBarBookmark;
}

- (WebBookmark)bookmarksBarBookmark
{
  v3 = +[WBWebFilterSettings sharedWebFilterSettings];
  usesAllowedSitesOnly = [v3 usesAllowedSitesOnly];

  if (usesAllowedSitesOnly)
  {
    v5 = 4;
  }

  else
  {
    v5 = 1;
  }

  v6 = [(WebBookmarkCollection *)self bookmarkWithSpecialID:v5];

  return v6;
}

- (BOOL)applyInMemoryChangesToDatabase
{
  if (![(WebBookmarkCollection *)self _trackChangesInMemoryIfDatabaseWriteIsNotAllowed])
  {
    return 1;
  }

  _inMemoryChangeSet = [(WebBookmarkCollection *)self _inMemoryChangeSet];
  v4 = [(WebBookmarkCollection *)self _applyInMemoryChanges:_inMemoryChangeSet postChangeNotification:1];
  v5 = v4 != 0;

  return v5;
}

- (BOOL)isTransactionCurrentlyActive
{
  ptr = self->_currentTransaction.__ptr_;
  if (ptr)
  {
    if (*(ptr + 17) == 1)
    {
      LOBYTE(ptr) = *(ptr + 16) ^ 1;
    }

    else
    {
      LOBYTE(ptr) = 0;
    }
  }

  return ptr & 1;
}

+ (WebBookmarkCollection)safariBookmarkCollection
{
  if (+[WebBookmarkCollection safariBookmarkCollection]::onceToken != -1)
  {
    +[WebBookmarkCollection safariBookmarkCollection];
  }

  v2 = +[WebBookmarkCollection safariBookmarkCollection]::collection;
  if (!+[WebBookmarkCollection safariBookmarkCollection]::collection)
  {
    dispatch_semaphore_wait(+[WebBookmarkCollection safariBookmarkCollection]::mutex, 0xFFFFFFFFFFFFFFFFLL);
    if (+[WebBookmarkCollection safariBookmarkCollection]::collection)
    {
      dispatch_semaphore_signal(+[WebBookmarkCollection safariBookmarkCollection]::mutex);
LABEL_13:
      v2 = +[WebBookmarkCollection safariBookmarkCollection]::collection;
      goto LABEL_14;
    }

    MEMORY[0x2743D62A0](v10, @"com.apple.WebBookmarks.WebBookmarkCollection");
    v3 = +[WebBookmarkCollection isLockedSync];
    if (!v3)
    {
      +[WebBookmarkCollection lockSync];
    }

    v4 = [WebBookmarkCollection alloc];
    v5 = +[WBCollectionConfiguration safariBookmarkCollectionConfiguration];
    v6 = [(WebBookmarkCollection *)v4 initWithConfiguration:v5 checkIntegrity:0];
    v7 = +[WebBookmarkCollection safariBookmarkCollection]::collection;
    +[WebBookmarkCollection safariBookmarkCollection]::collection = v6;

    if (!+[WebBookmarkCollection safariBookmarkCollection]::collection && (v8 = WBS_LOG_CHANNEL_PREFIXBookmarks(), os_log_type_enabled(v8, OS_LOG_TYPE_ERROR)))
    {
      +[WebBookmarkCollection safariBookmarkCollection];
      if (v3)
      {
        goto LABEL_12;
      }
    }

    else if (v3)
    {
LABEL_12:
      dispatch_semaphore_signal(+[WebBookmarkCollection safariBookmarkCollection]::mutex);
      SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v10);
      goto LABEL_13;
    }

    +[WebBookmarkCollection unlockSync];
    goto LABEL_12;
  }

LABEL_14:

  return v2;
}

uint64_t __49__WebBookmarkCollection_safariBookmarkCollection__block_invoke()
{
  +[WebBookmarkCollection safariBookmarkCollection]::mutex = dispatch_semaphore_create(1);

  return MEMORY[0x2821F96F8]();
}

+ (BOOL)isLockedSync
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = syncLockQueue();
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__WebBookmarkCollection_Sync__isLockedSync__block_invoke;
  v5[3] = &unk_279E76528;
  v5[4] = &v6;
  v5[5] = self;
  dispatch_sync(v3, v5);

  LOBYTE(self) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return self;
}

uint64_t __43__WebBookmarkCollection_Sync__isLockedSync__block_invoke(uint64_t a1)
{
  result = [*(a1 + 40) _isLockedSync];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

+ (BOOL)_isLockedSync
{
  _syncFlags = [self _syncFlags];
  v3 = [_syncFlags syncLockFileDescriptor] != -1;

  return v3;
}

+ (id)_syncFlags
{
  if (syncFlagsDictionary(void)::onceToken != -1)
  {
    +[WebBookmarkCollection(Sync) _syncFlags];
  }

  v3 = syncFlagsDictionary(void)::syncFlagsDictionary;
  v4 = [v3 objectForKey:self];
  if (!v4)
  {
    v4 = -[WebBookmarkCollectionSyncFlags initWithSyncAllowed:]([WebBookmarkCollectionSyncFlags alloc], "initWithSyncAllowed:", [self isSyncAllowed]);
    [v3 setObject:v4 forKey:self];
  }

  return v4;
}

+ (BOOL)lockSync
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = syncLockQueue();
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__WebBookmarkCollection_Sync__lockSync__block_invoke;
  v5[3] = &unk_279E76528;
  v5[4] = &v6;
  v5[5] = self;
  dispatch_barrier_sync(v3, v5);

  LOBYTE(self) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return self;
}

uint64_t __39__WebBookmarkCollection_Sync__lockSync__block_invoke(uint64_t a1)
{
  result = [*(a1 + 40) _lockSync];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

+ (BOOL)_lockSync
{
  v28 = *MEMORY[0x277D85DE8];
  _syncFlags = [self _syncFlags];
  syncLockFileDescriptor = [_syncFlags syncLockFileDescriptor];
  _syncLockFileName = [self _syncLockFileName];
  if (syncLockFileDescriptor != -1)
  {
    goto LABEL_2;
  }

  safariDirectoryPath = [self safariDirectoryPath];
  v13 = [safariDirectoryPath stringByAppendingPathComponent:_syncLockFileName];
  uTF8String = [v13 UTF8String];

  v15 = open(uTF8String, 512, 438);
  v16 = v15;
  if (v15 == -1)
  {
    [_syncFlags setUnlockSyncRequested:0];
    v17 = WBS_LOG_CHANNEL_PREFIXBookmarkSync();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      +[WebBookmarkCollection(Sync) _lockSync];
    }

    goto LABEL_5;
  }

  if (flock(v15, 6) != -1)
  {
    [_syncFlags setSyncLockFileDescriptor:v16];
LABEL_2:
    [_syncFlags setUnlockSyncRequested:0];
    v6 = WBS_LOG_CHANNEL_PREFIXBookmarkSync();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      bundleIdentifier = [mainBundle bundleIdentifier];
      *buf = 138543618;
      v23 = bundleIdentifier;
      v24 = 2114;
      v25 = _syncLockFileName;
      _os_log_impl(&dword_272C20000, v6, OS_LOG_TYPE_DEFAULT, "Process %{public}@ did acquire lock: %{public}@", buf, 0x16u);
    }

LABEL_5:
    v9 = 1;
    goto LABEL_6;
  }

  v18 = WBS_LOG_CHANNEL_PREFIXBookmarkSync();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier2 = [mainBundle2 bundleIdentifier];
    v21 = *__error();
    *buf = 138543874;
    v23 = bundleIdentifier2;
    v24 = 2114;
    v25 = _syncLockFileName;
    v26 = 1024;
    v27 = v21;
    _os_log_error_impl(&dword_272C20000, v18, OS_LOG_TYPE_ERROR, "Process %{public}@ did fail to acquire lock: %{public}@ (%d)", buf, 0x1Cu);
  }

  close(v16);
  v9 = 0;
LABEL_6:

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)_setupInMemoryChangeSet
{
  if ([(WebBookmarkCollection *)self _trackChangesInMemoryIfDatabaseWriteIsNotAllowed])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__WebBookmarkCollection__setupInMemoryChangeSet__block_invoke;
    block[3] = &unk_279E757C8;
    block[4] = self;
    if ([WebBookmarkCollection _setupInMemoryChangeSet]::onceToken != -1)
    {
      dispatch_once(&[WebBookmarkCollection _setupInMemoryChangeSet]::onceToken, block);
    }
  }
}

- (BOOL)_restoreBookmarkBarIfMissing
{
  applyInMemoryChangesToDatabase = [(WebBookmarkCollection *)self applyInMemoryChangesToDatabase];
  if (applyInMemoryChangesToDatabase)
  {
    if (!WebBookmarks::BookmarkSQLStatement::selectInt(self->_db, "SELECT COUNT(*) FROM bookmarks WHERE special_id = 1", v4))
    {
      if (WebBookmarks::BookmarkSQLStatement::executeSQL(self->_db, "UPDATE bookmarks SET order_index = order_index + 1 WHERE parent = 0", v5))
      {
        goto LABEL_9;
      }

      if (WebBookmarks::BookmarkSQLStatement::executeSQL(self->_db, "INSERT INTO bookmarks (special_id, parent, type, order_index, editable, deletable, title, external_uuid) VALUES (1, 0, 1, 0, 0, 0, 'BookmarksBar', '')", v6))
      {
        goto LABEL_9;
      }

      insert_rowid = sqlite3_last_insert_rowid(self->_db);
      if (WebBookmarks::BookmarkSQLStatement::executeSQL(self->_db, "UPDATE bookmarks SET num_children = num_children + 1 WHERE id = 0", v8))
      {
        goto LABEL_9;
      }

      v9 = MEMORY[0x277CBEA60];
      v10 = [MEMORY[0x277CCABB0] numberWithInt:0];
      v11 = [v9 arrayWithObject:v10];
      v12 = [(WebBookmarkCollection *)self _insertAncestorTableEntriesForBookmarkID:insert_rowid withAncestorIDs:v11];

      if (!v12)
      {
LABEL_9:
        LOBYTE(applyInMemoryChangesToDatabase) = 0;
        return applyInMemoryChangesToDatabase;
      }

      [(WebBookmarkCollection *)self _postBookmarksChangedSyncNotification];
    }

    LOBYTE(applyInMemoryChangesToDatabase) = 1;
  }

  return applyInMemoryChangesToDatabase;
}

- (void)logRegulatoryBookmarksRead
{
  ct_green_tea_logger_create_static();
  v2 = getCTGreenTeaOsLogHandle();
  v3 = v2;
  if (v2 && os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_272C20000, v3, OS_LOG_TYPE_INFO, "Read Safari bookmarks", v4, 2u);
  }
}

- (void)_registerForSyncBookmarksFileChangedNotification
{
  [(WebBookmarkCollection *)self _updateSyncNotificationType];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, BookmarksFileChanged, @"com.apple.bookmarks.BookmarksFileChanged", 0, 1024);
}

- (void)_updateSyncNotificationType
{
  v11[2] = *MEMORY[0x277D85DE8];
  localMigrationState = [(WebBookmarkCollection *)self localMigrationState];
  if ((localMigrationState + 1) > 4)
  {
    v4 = 2;
  }

  else
  {
    v4 = qword_272CCD310[localMigrationState + 1];
  }

  [(WebBookmarkCollection *)self _setSyncNotificationType:v4];
  if (localMigrationState != self->_lastObservedLocalMigrationState)
  {
    v10[0] = @"fromMigrationState";
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    v10[1] = @"toMigrationState";
    v11[0] = v5;
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:localMigrationState];
    v11[1] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"WebBookmarksDetectedLocalMigrationStateTransitionNotification" object:self userInfo:v7];

    self->_lastObservedLocalMigrationState = localMigrationState;
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (int64_t)localMigrationState
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [objc_opt_class() _deviceIdentifierForCloudKitWithCollectionType:{-[WBCollectionConfiguration collectionType](self->_configuration, "collectionType")}];
  uUID = [v3 UUID];
  uUIDString = [uUID UUIDString];

  if ([uUIDString length])
  {
    v6 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138477827;
      v15 = uUIDString;
      _os_log_impl(&dword_272C20000, v6, OS_LOG_TYPE_DEFAULT, "Looking up migration state for device identifier %{private}@", &v14, 0xCu);
    }

    v7 = [@"_ck_local_migration_state_" stringByAppendingString:uUIDString];
    v8 = [(WebBookmarkCollection *)self syncStringForKey:v7];
    v9 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138543362;
      v15 = v8;
      _os_log_impl(&dword_272C20000, v9, OS_LOG_TYPE_DEFAULT, "Local migration state read from database %{public}@", &v14, 0xCu);
    }

    integerValue = [v8 integerValue];
  }

  else
  {
    v11 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_272C20000, v11, OS_LOG_TYPE_DEFAULT, "Device identifier is empty", &v14, 2u);
    }

    integerValue = [v3 encounteredErrorWhileObtainingUUID] << 63 >> 63;
  }

  v12 = *MEMORY[0x277D85DE8];
  return integerValue;
}

+ (void)unlockSync
{
  v3 = syncLockQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__WebBookmarkCollection_Sync__unlockSync__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  dispatch_barrier_sync(v3, block);
}

+ (void)_unlockSync
{
  v19 = *MEMORY[0x277D85DE8];
  _syncFlags = [self _syncFlags];
  syncLockFileDescriptor = [_syncFlags syncLockFileDescriptor];
  if (syncLockFileDescriptor != -1)
  {
    lockSyncHoldRequestorPointers = [_syncFlags lockSyncHoldRequestorPointers];
    v6 = [lockSyncHoldRequestorPointers count];

    if (v6)
    {
      v7 = WBS_LOG_CHANNEL_PREFIXBookmarkSync();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
        bundleIdentifier = [mainBundle bundleIdentifier];
        v15 = 138543362;
        v16 = bundleIdentifier;
        _os_log_impl(&dword_272C20000, v7, OS_LOG_TYPE_DEFAULT, "Postponing unlockSync. The process %{public}@ has requested to hold the lock.", &v15, 0xCu);
      }

      [_syncFlags setUnlockSyncRequested:1];
    }

    else
    {
      flock(syncLockFileDescriptor, 8);
      close(syncLockFileDescriptor);
      [_syncFlags setSyncLockFileDescriptor:0xFFFFFFFFLL];
      [_syncFlags setUnlockSyncRequested:0];
      if ([_syncFlags postSyncNotificationWhenUnlocking])
      {
        [self _postBookmarksChangedSyncNotificationOnSyncQueue];
        [_syncFlags setPostSyncNotificationWhenUnlocking:0];
      }

      v10 = WBS_LOG_CHANNEL_PREFIXBookmarkSync();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
        bundleIdentifier2 = [mainBundle2 bundleIdentifier];
        _syncLockFileName = [self _syncLockFileName];
        v15 = 138543618;
        v16 = bundleIdentifier2;
        v17 = 2114;
        v18 = _syncLockFileName;
        _os_log_impl(&dword_272C20000, v10, OS_LOG_TYPE_DEFAULT, "Process %{public}@ did release lock: %{public}@", &v15, 0x16u);
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

+ (id)_uniqueExternalUUID
{
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];

  return uUIDString;
}

- (int64_t)_syncType
{
  if ([(WBCollectionConfiguration *)self->_configuration collectionType])
  {
    return 1;
  }

  localMigrationState = [(WebBookmarkCollection *)self localMigrationState];
  if ((localMigrationState + 1) > 4)
  {
    return 2;
  }

  else
  {
    return qword_272CCD310[localMigrationState + 1];
  }
}

- (BOOL)_incrementGeneration
{
  if ([(WebBookmarkCollection *)self _executeSQLWithCString:"UPDATE generations SET generation = generation + 1"])
  {
    v3 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
    if (v4)
    {
      [WebBookmarkCollection _incrementGeneration];
      LOBYTE(v4) = 0;
    }
  }

  else if ([(WebBookmarkCollection *)self maintainsSyncMetadata])
  {

    LOBYTE(v4) = [(WebBookmarkCollection *)self _incrementRecordGeneration];
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  return v4;
}

+ (NSString)bookmarkImagesDirectoryPath
{
  v2 = +[WebBookmarkCollection bookmarkImagesDirectoryPath]::bookmarkImagesDirectoryPath;
  if (!+[WebBookmarkCollection bookmarkImagesDirectoryPath]::bookmarkImagesDirectoryPath)
  {
    safariDirectoryPath = [objc_opt_class() safariDirectoryPath];
    v4 = [safariDirectoryPath stringByAppendingPathComponent:@"BookmarkImages"];
    v5 = +[WebBookmarkCollection bookmarkImagesDirectoryPath]::bookmarkImagesDirectoryPath;
    +[WebBookmarkCollection bookmarkImagesDirectoryPath]::bookmarkImagesDirectoryPath = v4;

    v2 = +[WebBookmarkCollection bookmarkImagesDirectoryPath]::bookmarkImagesDirectoryPath;
  }

  return v2;
}

- (WebBookmark)rootBookmark
{
  rootBookmark = self->_rootBookmark;
  if (!rootBookmark)
  {
    v4 = [(WebBookmarkCollection *)self bookmarkWithID:0];
    v5 = self->_rootBookmark;
    self->_rootBookmark = v4;

    rootBookmark = self->_rootBookmark;
  }

  return rootBookmark;
}

- (WebBookmarkList)favoritesFolderList
{
  favoritesFolder = [(WebBookmarkCollection *)self favoritesFolder];
  identifier = [favoritesFolder identifier];

  return [(WebBookmarkCollection *)self listWithID:identifier];
}

- (int)readingListFolderBookmarkID
{
  v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SELECT id FROM bookmarks WHERE special_id = %d", 3];
  LODWORD(self) = WebBookmarks::BookmarkSQLStatement::selectInt(self->_db, v3, v4);

  return self;
}

+ (id)_defaultDatabaseFileNameForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  collectionType = [configurationCopy collectionType];
  if (collectionType)
  {
    if (collectionType == 1 && (v5 = [configurationCopy storeOwner], v5 <= 4))
    {
      v6 = off_279E76488[v5];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = @"Bookmarks.db";
  }

  return v6;
}

uint64_t __55__WebBookmarkCollection__setupWithPath_checkIntegrity___block_invoke(uint64_t result)
{
  if (*(result + 40) == 1)
  {
    v2 = *(result + 32);
    v3 = objc_opt_class();

    return [v3 unlockSync];
  }

  return result;
}

+ (BOOL)_removeCorruptedBookmarksDatabaseAtPath:(id)path
{
  v30 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v5 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v29 = pathCopy;
    _os_log_impl(&dword_272C20000, v5, OS_LOG_TYPE_DEFAULT, "Removing corrupted bookmarks database %{public}@", buf, 0xCu);
  }

  if (![MEMORY[0x277D49A08] hasInternalContent])
  {
    goto LABEL_11;
  }

  v6 = [pathCopy stringByAppendingPathExtension:@"corrupted"];
  v7 = [defaultManager _web_pathWithUniqueFilenameForPath:v6];

  if (([defaultManager moveItemAtPath:pathCopy toPath:v7 error:0] & 1) == 0)
  {
    v8 = NSTemporaryDirectory();
    v9 = MEMORY[0x277CCACA8];
    lastPathComponent = [pathCopy lastPathComponent];
    v11 = [v9 stringWithFormat:@"%@.corrupted", lastPathComponent];
    v12 = [v8 stringByAppendingPathComponent:v11];

    v13 = [defaultManager _web_pathWithUniqueFilenameForPath:v12];

    if ([defaultManager moveItemAtPath:pathCopy toPath:v13 error:0])
    {
      v7 = v13;
      goto LABEL_7;
    }

LABEL_11:
    v15 = [defaultManager _web_removeFileOnlyAtPath:pathCopy];
    goto LABEL_12;
  }

LABEL_7:
  v14 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v29 = v7;
    _os_log_impl(&dword_272C20000, v14, OS_LOG_TYPE_DEFAULT, "Corrupted bookmarks saved as %{public}@", buf, 0xCu);
  }

  v15 = 1;
LABEL_12:
  v16 = [pathCopy stringByAppendingString:@"-journal"];
  if ([defaultManager fileExistsAtPath:v16])
  {
    if ([defaultManager _web_removeFileOnlyAtPath:v16])
    {
      v17 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v29 = v16;
        _os_log_impl(&dword_272C20000, v17, OS_LOG_TYPE_DEFAULT, "Also removed the journal file %{public}@.", buf, 0xCu);
      }
    }

    else
    {
      v18 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        +[WebBookmarkCollection _removeCorruptedBookmarksDatabaseAtPath:];
      }
    }
  }

  v19 = [pathCopy stringByAppendingString:@"-wal"];
  if ([defaultManager fileExistsAtPath:v19])
  {
    if ([defaultManager _web_removeFileOnlyAtPath:v19])
    {
      v20 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v29 = v19;
        _os_log_impl(&dword_272C20000, v20, OS_LOG_TYPE_DEFAULT, "Also removed the wal file %{public}@.", buf, 0xCu);
      }
    }

    else
    {
      v21 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        +[WebBookmarkCollection _removeCorruptedBookmarksDatabaseAtPath:];
      }
    }
  }

  v22 = [pathCopy stringByAppendingString:@"-shm"];
  if ([defaultManager fileExistsAtPath:v22])
  {
    if ([defaultManager _web_removeFileOnlyAtPath:v22])
    {
      v23 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v29 = v22;
        _os_log_impl(&dword_272C20000, v23, OS_LOG_TYPE_DEFAULT, "Also removed the shm file %{public}@.", buf, 0xCu);
      }
    }

    else
    {
      v24 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        +[WebBookmarkCollection _removeCorruptedBookmarksDatabaseAtPath:];
      }
    }
  }

  if ((v15 & 1) == 0)
  {
    v25 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      +[WebBookmarkCollection _removeCorruptedBookmarksDatabaseAtPath:];
    }
  }

  v26 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)_unsafeOpenDatabaseAtPath:(id)path checkIntegrity:(BOOL)integrity error:(id *)error
{
  integrityCopy = integrity;
  v33[1] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  _isDatabaseWriteAllowed = [(WebBookmarkCollection *)self _isDatabaseWriteAllowed];
  if (_isDatabaseWriteAllowed)
  {
    v10 = 3145730;
  }

  else
  {
    v10 = 3145729;
  }

  v11 = sqlite3_open_v2([pathCopy UTF8String], &self->_db, v10, 0);
  v31 = v11;
  if (v11 == 14 && _isDatabaseWriteAllowed)
  {
    v31 = sqlite3_open_v2([pathCopy UTF8String], &self->_db, v10 | 4, 0);
    v12 = v31 == 0;
    if (!v31)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v12 = 0;
    if (!v11)
    {
LABEL_6:
      sqlite3_busy_timeout(self->_db, 3000);
      [(WebBookmarkCollection *)self _executeSQLWithCString:"PRAGMA journal_mode = wal"];
      _userVersion = [(WebBookmarkCollection *)self _userVersion];
      if (_userVersion >= 41)
      {
        [(WebBookmarkCollection *)self _enableForeignKeys];
      }

      [(WebBookmarkCollection *)self _enableAutoVacuum];
      if ([pathCopy containsString:@":memory:"])
      {
        v14 = 1;
      }

      else
      {
        v14 = [pathCopy containsString:@"mode=memory"];
      }

      v16 = v12 | v14 & (_userVersion != 56);
      if (v16 == 1)
      {
        [(WebBookmarkCollection *)self _createFreshDatabase];
      }

      WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v28, self->_db, "SELECT * FROM bookmarks LIMIT 1");
      if (v30)
      {
        v17 = sqlite3_step(v29);
        v31 = v17;
        if (v17 == 100)
        {
          WebBookmarks::BookmarkSQLStatement::finalize(v28);
          if ([(WebBookmarkCollection *)self _verifyAllTablesExist:&v31])
          {
            if (integrityCopy && ![(WebBookmarkCollection *)self _checkDatabaseIntegrity])
            {
              if (error)
              {
                v32 = *MEMORY[0x277CCA450];
                v33[0] = @"Database failed full integrity check.";
                v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
                *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.WebBookmarks.SQLiteError" code:11 userInfo:v23];
              }
            }

            else
            {
              _migrateToCurrentSchema = [(WebBookmarkCollection *)self _migrateToCurrentSchema];
              if (_isDatabaseWriteAllowed || _migrateToCurrentSchema)
              {
                v18 = objc_alloc_init(MEMORY[0x277D49B60]);
                v26[0] = MEMORY[0x277D85DD0];
                v26[1] = 3221225472;
                v26[2] = __72__WebBookmarkCollection__unsafeOpenDatabaseAtPath_checkIntegrity_error___block_invoke;
                v26[3] = &unk_279E75F60;
                v27 = _isDatabaseWriteAllowed;
                v26[4] = self;
                [v18 setHandler:v26];
                if (v16)
                {
                  LOBYTE(_migrateToCurrentSchema) = 1;
LABEL_59:

                  goto LABEL_41;
                }

                if (-[WBCollectionConfiguration isReadonly](self->_configuration, "isReadonly") && -[WebBookmarkCollection _isDatabaseWriteAllowed](self, "_isDatabaseWriteAllowed") && ([objc_opt_class() isLockedSync] & 1) == 0)
                {
                  if (([objc_opt_class() lockSync] & 1) == 0)
                  {
LABEL_58:
                    LOBYTE(_migrateToCurrentSchema) = 0;
                    goto LABEL_59;
                  }

                  v24 = 1;
                }

                else
                {
                  v24 = 0;
                }

                if ([(WebBookmarkCollection *)self _updateDatabaseIfNewerSafariVersionWasLaunched]&& [(WebBookmarkCollection *)self _updateDatabaseOutsideSafariProcessIfNewerSafariVersionWasLaunched])
                {
                  _updateDatabaseIfNewerOSVersionWasLaunched = [(WebBookmarkCollection *)self _updateDatabaseIfNewerOSVersionWasLaunched];
                  if ((v24 & _updateDatabaseIfNewerOSVersionWasLaunched) == 1)
                  {
                    [objc_opt_class() unlockSync];
                  }

                  else
                  {
                    LOBYTE(_migrateToCurrentSchema) = _updateDatabaseIfNewerOSVersionWasLaunched && _migrateToCurrentSchema;
                  }

                  goto LABEL_59;
                }

                goto LABEL_58;
              }
            }

            goto LABEL_40;
          }

          if (error)
          {
            if ((v31 - 5) > 1)
            {
              v22 = WBS_LOG_CHANNEL_PREFIXBookmarks();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
              {
                [WebBookmarkCollection _unsafeOpenDatabaseAtPath:checkIntegrity:error:];
              }

              v19 = [(WebBookmarkCollection *)self _errorForMostRecentSQLiteErrorWithErrorCode:11];
            }

            else
            {
              v19 = [(WebBookmarkCollection *)self _errorForMostRecentSQLiteErrorWithErrorCode:?];
            }

            goto LABEL_33;
          }
        }

        else
        {
          if (error)
          {
            if (v17 == 101)
            {
              [(WebBookmarkCollection *)self _errorForMostRecentSQLiteErrorWithErrorCode:11];
            }

            else
            {
              [(WebBookmarkCollection *)self _errorForMostRecentSQLiteError];
            }
            *error = ;
          }

          WebBookmarks::BookmarkSQLStatement::finalize(v28);
        }
      }

      else if (error)
      {
        if ((sqlite3_errcode(self->_db) - 5) > 1)
        {
          [(WebBookmarkCollection *)self _errorForMostRecentSQLiteErrorWithErrorCode:11];
        }

        else
        {
          [(WebBookmarkCollection *)self _errorForMostRecentSQLiteError];
        }
        v19 = ;
LABEL_33:
        LOBYTE(_migrateToCurrentSchema) = 0;
        *error = v19;
LABEL_41:
        WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v28);
        goto LABEL_42;
      }

LABEL_40:
      LOBYTE(_migrateToCurrentSchema) = 0;
      goto LABEL_41;
    }
  }

  if (error)
  {
    [(WebBookmarkCollection *)self _errorForMostRecentSQLiteError];
    *error = LOBYTE(_migrateToCurrentSchema) = 0;
  }

  else
  {
    LOBYTE(_migrateToCurrentSchema) = 0;
  }

LABEL_42:

  v20 = *MEMORY[0x277D85DE8];
  return _migrateToCurrentSchema;
}

uint64_t __72__WebBookmarkCollection__unsafeOpenDatabaseAtPath_checkIntegrity_error___block_invoke(uint64_t result)
{
  if (*(result + 40) == 1)
  {
    v1 = result;
    v2 = *(result + 32);
    result = [objc_opt_class() isLockedSync];
    if (result)
    {
      v3 = *(v1 + 32);

      return [v3 _restoreMissingSpecialBookmarksWithChangeNotification:0];
    }
  }

  return result;
}

- (BOOL)_verifyAllTablesExist:(int *)exist
{
  v24 = *MEMORY[0x277D85DE8];
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v20, self->_db, "SELECT name from sqlite_master where type = 'table'");
  if (v22)
  {
    v5 = [MEMORY[0x277CBEB58] set];
    while (1)
    {
      v6 = sqlite3_step(v21);
      if (v6 != 100)
      {
        break;
      }

      v7 = sqlite3_column_text(v21, 0);
      if (v7)
      {
        v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v7];
        [v5 addObject:v8];
      }
    }

    if (exist)
    {
      *exist = v6;
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v10 = [&unk_2882696F0 countByEnumeratingWithState:&v16 objects:v23 count:16];
    if (v10)
    {
      v11 = *v17;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(&unk_2882696F0);
          }

          if (([v5 containsObject:*(*(&v16 + 1) + 8 * i)] & 1) == 0)
          {
            v13 = WBS_LOG_CHANNEL_PREFIXBookmarks();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              [WebBookmarkCollection _verifyAllTablesExist:];
            }

            v9 = 0;
            goto LABEL_22;
          }
        }

        v10 = [&unk_2882696F0 countByEnumeratingWithState:&v16 objects:v23 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v9 = 1;
LABEL_22:
  }

  else
  {
    v9 = 0;
    if (exist)
    {
      *exist = sqlite3_errcode(self->_db);
    }
  }

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v20);
  v14 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)_checkDatabaseIntegrity
{
  v17 = *MEMORY[0x277D85DE8];
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v11, self->_db, "PRAGMA integrity_check(1)");
  v2 = v14;
  if ((v14 - 5) > 1)
  {
    if (v13)
    {
      if (sqlite3_step(v12) == 100)
      {
        v5 = sqlite3_column_text(v12, 0);
        if (v5)
        {
          if (*v5 == 111 && v5[1] == 107)
          {
            v4 = v5[2] == 0;
            goto LABEL_17;
          }
        }

        else
        {
          v8 = WBS_LOG_CHANNEL_PREFIXBookmarks();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            [WebBookmarkCollection _checkDatabaseIntegrity];
          }
        }
      }

      else
      {
        v7 = WBS_LOG_CHANNEL_PREFIXBookmarks();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          [WebBookmarkCollection _checkDatabaseIntegrity];
        }
      }
    }

    else
    {
      v6 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [WebBookmarkCollection _checkDatabaseIntegrity];
      }
    }

    v4 = 0;
    goto LABEL_17;
  }

  v3 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  v4 = 1;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v16 = v2;
    _os_log_impl(&dword_272C20000, v3, OS_LOG_TYPE_INFO, "Skipping integrity check because database is busy or locked (sqlite code = %d)", buf, 8u);
  }

LABEL_17:
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v11);
  v9 = *MEMORY[0x277D85DE8];
  return v4;
}

+ (WebBookmarkCollection)collectionWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v4 = [[WebBookmarkCollection alloc] initWithConfiguration:configurationCopy];

  return v4;
}

+ (id)databasePathForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  databasePath = [configurationCopy databasePath];
  if (!databasePath)
  {
    safariDirectoryPath = [self safariDirectoryPath];
    v7 = [self _defaultDatabaseFileNameForConfiguration:configurationCopy];
    v8 = [safariDirectoryPath stringByAppendingPathComponent:v7];
    databasePath = [v8 stringByResolvingSymlinksInPath];
  }

  return databasePath;
}

- (WebBookmarkCollection)initWithConfiguration:(id)configuration checkIntegrity:(BOOL)integrity
{
  configurationCopy = configuration;
  v7 = bookmarksCollectionQueue();
  dispatch_assert_queue_not_V2(v7);

  v39.receiver = self;
  v39.super_class = WebBookmarkCollection;
  v8 = [(WebBookmarkCollection *)&v39 init];
  if (v8)
  {
    MEMORY[0x2743D62A0](v38, @"com.apple.WebBookmarks.WebBookmarkCollection");
    v9 = [configurationCopy copy];
    configuration = v8->_configuration;
    v8->_configuration = v9;

    databasePath = [(WBCollectionConfiguration *)v8->_configuration databasePath];
    v12 = [objc_opt_class() databasePathForConfiguration:v8->_configuration];
    if (databasePath)
    {
      stringByResolvingSymlinksInPath = 0;
      stringByResolvingSymlinksInPath2 = 0;
    }

    else
    {
      safariDirectoryPath = [objc_opt_class() safariDirectoryPath];
      v17 = [safariDirectoryPath stringByAppendingPathComponent:@"Bookmarks.plist"];
      stringByResolvingSymlinksInPath = [v17 stringByResolvingSymlinksInPath];

      v18 = [safariDirectoryPath stringByAppendingPathComponent:@"Bookmarks.plist.anchor.plist"];
      stringByResolvingSymlinksInPath2 = [v18 stringByResolvingSymlinksInPath];
    }

    v34 = 0;
    v35 = &v34;
    v36 = 0x2020000000;
    v37 = 0;
    v19 = bookmarksCollectionQueue();
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __62__WebBookmarkCollection_initWithConfiguration_checkIntegrity___block_invoke;
    v27[3] = &unk_279E75F88;
    v32 = &v34;
    v20 = v8;
    v28 = v20;
    v29 = v12;
    v30 = stringByResolvingSymlinksInPath;
    v31 = stringByResolvingSymlinksInPath2;
    integrityCopy = integrity;
    v21 = stringByResolvingSymlinksInPath2;
    v22 = stringByResolvingSymlinksInPath;
    v23 = v12;
    dispatch_sync(v19, v27);

    v24 = *(v35 + 24);
    v20->_setupFinished = v24;
    if (v24)
    {
      v25 = v20;
    }

    else
    {
      v25 = 0;
    }

    v15 = v25;

    _Block_object_dispose(&v34, 8);
    SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v38);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void __62__WebBookmarkCollection_initWithConfiguration_checkIntegrity___block_invoke(uint64_t a1)
{
  v1 = (a1 + 40);
  *(*(v1[3] + 8) + 24) = [*(a1 + 32) _setupWithPath:*(a1 + 40) migratingBookmarksPlist:*(a1 + 48) syncAnchorPlist:*(a1 + 56) checkIntegrity:*(a1 + 72)];
  if ((*(*(v1[3] + 8) + 24) & 1) == 0)
  {
    v2 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __62__WebBookmarkCollection_initWithConfiguration_checkIntegrity___block_invoke_cold_1(v1);
    }
  }
}

- (WebBookmarkCollection)initWithPath:(id)path migratingBookmarksPlist:(id)plist syncAnchorPlist:(id)anchorPlist
{
  pathCopy = path;
  v7 = [[WBCollectionConfiguration alloc] initWithCollectionType:0 databasePath:pathCopy readonly:0];
  v8 = [(WebBookmarkCollection *)self initWithConfiguration:v7 checkIntegrity:0];

  return v8;
}

+ (NSString)readingListArchivesDirectoryPath
{
  if (+[WebBookmarkCollection readingListArchivesDirectoryPath]::onceToken != -1)
  {
    +[WebBookmarkCollection readingListArchivesDirectoryPath];
  }

  v3 = +[WebBookmarkCollection readingListArchivesDirectoryPath]::archivePath;

  return v3;
}

void __57__WebBookmarkCollection_readingListArchivesDirectoryPath__block_invoke()
{
  v0 = WBSafariContainerPath();
  v6 = v0;
  if (v0)
  {
    v1 = [v0 stringByAppendingPathComponent:@"Library/Caches"];
    v2 = [v1 stringByAppendingPathComponent:@"com.apple.mobilesafari"];
  }

  else
  {
    v1 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
    if ([v1 count])
    {
      v3 = [v1 objectAtIndex:0];
      v2 = [v3 stringByAppendingPathComponent:@"com.apple.mobilesafari"];
    }

    else
    {
      v2 = 0;
    }
  }

  v4 = [v2 stringByAppendingPathComponent:@"ReadingListArchives"];
  v5 = +[WebBookmarkCollection readingListArchivesDirectoryPath]::archivePath;
  +[WebBookmarkCollection readingListArchivesDirectoryPath]::archivePath = v4;
}

+ (unint64_t)readingListArchivesDiskUsage
{
  v19 = *MEMORY[0x277D85DE8];
  readingListArchivesDirectoryPath = [self readingListArchivesDirectoryPath];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  [defaultManager enumeratorAtPath:readingListArchivesDirectoryPath];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v4 = v15 = 0u;
  v5 = 0;
  v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [readingListArchivesDirectoryPath stringByAppendingPathComponent:{*(*(&v14 + 1) + 8 * v8), v14}];
        v10 = [defaultManager attributesOfItemAtPath:v9 error:0];
        fileSize = [v10 fileSize];

        v5 += fileSize;
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)dealloc
{
  v3 = bookmarksCollectionQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__WebBookmarkCollection_dealloc__block_invoke;
  block[3] = &unk_279E757C8;
  block[4] = self;
  dispatch_sync(v3, block);

  v4.receiver = self;
  v4.super_class = WebBookmarkCollection;
  [(WebBookmarkCollection *)&v4 dealloc];
}

void __32__WebBookmarkCollection_dealloc__block_invoke(uint64_t a1)
{
  sqlite3_close(*(*(a1 + 32) + 8));
  *(*(a1 + 32) + 8) = 0;
  CFRelease(*(*(a1 + 32) + 24));
  *(*(a1 + 32) + 24) = 0;
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v3 = *(a1 + 32);

  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, v3);
}

- (BOOL)cleanUpReadingListArchives
{
  v59 = *MEMORY[0x277D85DE8];
  v2 = WBS_LOG_CHANNEL_PREFIXDataMigration();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_272C20000, v2, OS_LOG_TYPE_INFO, "Starting to migrate and clean up Reading List archives", buf, 2u);
  }

  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(buf, self->_db, "UPDATE bookmarks SET archive_status = ? WHERE archive_status = ? OR archive_status = ?");
  sqlite3_bind_int(v54, 1, 0);
  sqlite3_bind_int(v54, 2, 3);
  sqlite3_bind_int(v54, 3, 4);
  if (sqlite3_step(v54) == 101)
  {
    WebBookmarks::BookmarkSQLStatement::finalize(buf);
    string = [MEMORY[0x277CCAB68] string];
    readingListArchivesDirectoryPath = [objc_opt_class() readingListArchivesDirectoryPath];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v5 = [readingListArchivesDirectoryPath stringByAppendingPathComponent:@"PendingBookmarkChanges.plist"];
    [defaultManager _web_removeFileOnlyAtPath:v5];

    v6 = [defaultManager contentsOfDirectoryAtPath:readingListArchivesDirectoryPath error:0];
    v42 = [v6 mutableCopy];

    readingListFolderBookmarkID = [(WebBookmarkCollection *)self readingListFolderBookmarkID];
    obj = 0;
    v7 = 0;
    v8 = 0;
    do
    {
      context = objc_autoreleasePoolPush();
      v9 = [(WebBookmarkCollection *)self _fastFetchBookmarksInBookmarkFolder:readingListFolderBookmarkID options:0 offset:obj limit:100];

      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v7 = v9;
      v10 = [v7 countByEnumeratingWithState:&v49 objects:v58 count:16];
      if (v10)
      {
        v11 = *v50;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v50 != v11)
            {
              objc_enumerationMutation(v7);
            }

            v13 = *(*(&v49 + 1) + 8 * i);
            if (([v13 archiveStatus] - 1) < 2)
            {
              uUID = [v13 UUID];
              v15 = [readingListArchivesDirectoryPath stringByAppendingPathComponent:uUID];

              v56[0] = 0;
              if ([defaultManager fileExistsAtPath:v15 isDirectory:v56] && (v56[0] & 1) != 0)
              {
                uUID2 = [v13 UUID];
                [v42 removeObject:uUID2];
              }

              else
              {
                identifier = [v13 identifier];
                if (v8)
                {
                  v18 = @",%d";
                }

                else
                {
                  v18 = @"%d";
                }

                [string appendFormat:v18, identifier];
                v8 = 1;
              }
            }
          }

          v10 = [v7 countByEnumeratingWithState:&v49 objects:v58 count:16];
        }

        while (v10);
      }

      objc_autoreleasePoolPop(context);
      obj += 100;
    }

    while ([v7 count]);
    if (v8)
    {
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"UPDATE bookmarks SET archive_status = ? WHERE parent = ? AND id IN (%@)", string];
      db = self->_db;
      obja = v19;
      v21 = v19;
      WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v56, db, [obja UTF8String]);
      sqlite3_bind_int(*&v57[4], 1, 0);
      sqlite3_bind_int(*&v57[4], 2, readingListFolderBookmarkID);
      if (sqlite3_step(*&v57[4]) != 101)
      {
        v34 = WBS_LOG_CHANNEL_PREFIXDataMigration();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          [WebBookmarkCollection cleanUpReadingListArchives];
        }

        WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v56);
        v32 = 0;
        goto LABEL_43;
      }

      WebBookmarks::BookmarkSQLStatement::finalize(v56);
      WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v56);
    }

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    obja = v42;
    v22 = [obja countByEnumeratingWithState:&v45 objects:v55 count:16];
    if (v22)
    {
      v23 = *v46;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v46 != v23)
          {
            objc_enumerationMutation(obja);
          }

          v25 = *(*(&v45 + 1) + 8 * j);
          v26 = [readingListArchivesDirectoryPath stringByAppendingPathComponent:v25];
          v44 = 0;
          v27 = [defaultManager removeItemAtPath:v26 error:&v44];
          v28 = v44;
          if ((v27 & 1) == 0)
          {
            v29 = WBS_LOG_CHANNEL_PREFIXDataMigration();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              wb_privacyPreservingDescription = [v28 wb_privacyPreservingDescription];
              *v56 = 138543618;
              *v57 = v25;
              *&v57[8] = 2114;
              *&v57[10] = wb_privacyPreservingDescription;
              v31 = wb_privacyPreservingDescription;
              _os_log_error_impl(&dword_272C20000, v29, OS_LOG_TYPE_ERROR, "Failed to remove Reading List archive directory %{public}@: %{public}@", v56, 0x16u);
            }
          }
        }

        v22 = [obja countByEnumeratingWithState:&v45 objects:v55 count:16];
      }

      while (v22);
    }

    v32 = 1;
LABEL_43:

    goto LABEL_44;
  }

  v33 = WBS_LOG_CHANNEL_PREFIXDataMigration();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    [WebBookmarkCollection cleanUpReadingListArchives];
  }

  v32 = 0;
LABEL_44:
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(buf);
  v35 = *MEMORY[0x277D85DE8];
  return v32;
}

- (void)_interruptDatabase
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (BOOL)markArchivedReadingListItemsAsNonRecoverable
{
  selfCopy = self;
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"parent = %d AND deleted = 0 AND (archive_status = %zd OR archive_status = %zd)", -[WebBookmarkCollection readingListFolderBookmarkID](self, "readingListFolderBookmarkID"), 1, 2];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"UPDATE bookmarks SET archive_status = %zd WHERE %@", 4, v3];
  LOBYTE(selfCopy) = [(WebBookmarkCollection *)selfCopy _executeSQL:v4]== 0;

  return selfCopy;
}

- (BOOL)clearAllReadingListArchives
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = WBCurrentProcessContainerPath();

  if (v3)
  {
    readingListArchivesDirectoryPath = [objc_opt_class() readingListArchivesDirectoryPath];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v28 = 0;
    v5 = [defaultManager contentsOfDirectoryAtPath:readingListArchivesDirectoryPath error:&v28];
    v6 = v28;
    v20 = v5;
    if (v5)
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      obj = v5;
      v7 = [obj countByEnumeratingWithState:&v24 objects:v33 count:16];
      if (v7)
      {
        v8 = *v25;
        v9 = 1;
        do
        {
          v10 = 0;
          v11 = v6;
          do
          {
            if (*v25 != v8)
            {
              objc_enumerationMutation(obj);
            }

            v12 = *(*(&v24 + 1) + 8 * v10);
            v13 = [readingListArchivesDirectoryPath stringByAppendingPathComponent:v12];
            v23 = v11;
            v14 = [defaultManager removeItemAtPath:v13 error:&v23];
            v6 = v23;

            if ((v14 & 1) == 0)
            {
              v15 = WBS_LOG_CHANNEL_PREFIXBookmarks();
              if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
              {
                wb_privacyPreservingDescription = [v6 wb_privacyPreservingDescription];
                *buf = 138543618;
                v30 = v12;
                v31 = 2114;
                v32 = wb_privacyPreservingDescription;
                _os_log_error_impl(&dword_272C20000, v15, OS_LOG_TYPE_ERROR, "Failed to remove Reading List archive directory with UUID %{public}@: %{public}@", buf, 0x16u);
              }

              v9 = 0;
            }

            ++v10;
            v11 = v6;
          }

          while (v7 != v10);
          v7 = [obj countByEnumeratingWithState:&v24 objects:v33 count:16];
        }

        while (v7);
      }

      else
      {
        v9 = 1;
      }
    }

    else
    {
      obj = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
      {
        [v6 wb_privacyPreservingDescription];
        objc_claimAutoreleasedReturnValue();
        [WebBookmarkCollection clearAllReadingListArchives];
      }

      v9 = 0;
    }
  }

  else
  {
    _safariFetcherServerProxy = [(WebBookmarkCollection *)self _safariFetcherServerProxy];
    [_safariFetcherServerProxy clearAllReadingListArchives];

    v9 = 1;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v9 & 1;
}

- (BOOL)clearReadingListArchiveWithUUID:(id)d
{
  v17 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = WBCurrentProcessContainerPath();

  if (v5)
  {
    if ([dCopy length])
    {
      readingListArchivesDirectoryPath = [objc_opt_class() readingListArchivesDirectoryPath];
      v7 = [readingListArchivesDirectoryPath stringByAppendingPathComponent:dCopy];

      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v16 = 0;
      if ([defaultManager fileExistsAtPath:v7 isDirectory:&v16] && (v16 & 1) != 0)
      {
        v15 = 0;
        v9 = [defaultManager removeItemAtPath:v7 error:&v15];
        v10 = v15;
        if ((v9 & 1) == 0)
        {
          v11 = WBS_LOG_CHANNEL_PREFIXBookmarks();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            [v10 wb_privacyPreservingDescription];
            objc_claimAutoreleasedReturnValue();
            [WebBookmarkCollection clearReadingListArchiveWithUUID:];
          }
        }
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    _safariFetcherServerProxy = [(WebBookmarkCollection *)self _safariFetcherServerProxy];
    [_safariFetcherServerProxy clearReadingListArchiveWithUUID:dCopy];

    v9 = 1;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)updateReadingListWebFilterStatusForUnsetItemsOnly:(BOOL)only
{
  onlyCopy = only;
  v28 = *MEMORY[0x277D85DE8];
  v5 = WBS_LOG_CHANNEL_PREFIXDataMigration();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_272C20000, v5, OS_LOG_TYPE_DEFAULT, "Migrating Reading List web filter status", buf, 2u);
  }

  v6 = +[WBWebFilterSettings sharedWebFilterSettings];
  userSettings = [v6 userSettings];

  if (onlyCopy)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"web_filter_status = %zd", 0];
    v19 = [(WebBookmarkCollection *)self _readingListItemsWhere:v7 filteredBy:0 withInMemoryFilter:0];
  }

  else
  {
    if (([userSettings contentFilterOverridesEnabled] & 1) == 0 && (objc_msgSend(userSettings, "whiteListEnabled") & 1) == 0)
    {
      [(WebBookmarkCollection *)self markWebContentFilterAllowsAllReadingListItems];
      goto LABEL_19;
    }

    v19 = [(WebBookmarkCollection *)self _readingListItemsWhere:0 filteredBy:0 withInMemoryFilter:0];
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = [v19 bookmarkArray];
  v8 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v8)
  {
    v9 = *v23;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        v12 = MEMORY[0x277CBEBC0];
        address = [v11 address];
        v14 = [v12 URLWithString:address];
        v15 = [userSettings contentFilterListsAllowURL:v14];

        if (v15)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        [v11 setWebFilterStatus:v16];
        [(WebBookmarkCollection *)self saveBookmark:v11 startReadingListFetcher:0];
      }

      v8 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v8);
  }

LABEL_19:
  v17 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)markWebContentFilterAllowsAllReadingListItems
{
  v3 = WBS_LOG_CHANNEL_PREFIXDataMigration();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_272C20000, v3, OS_LOG_TYPE_DEFAULT, "Starting to mark all Reading List items as allowed by Web Content Filter", buf, 2u);
  }

  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(buf, self->_db, "UPDATE bookmarks SET web_filter_status = ? WHERE parent = ? AND deleted = 0 AND web_filter_status != ?");
  sqlite3_bind_int(v10, 1, 1);
  sqlite3_bind_int(v10, 2, [(WebBookmarkCollection *)self readingListFolderBookmarkID]);
  sqlite3_bind_int(v10, 3, 1);
  v4 = sqlite3_step(v10);
  if (v4 == 101)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXDataMigration();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_272C20000, v5, OS_LOG_TYPE_DEFAULT, "Finished marking all Reading List items as allowed by Web Content Filter", v8, 2u);
    }
  }

  else
  {
    v6 = WBS_LOG_CHANNEL_PREFIXDataMigration();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [WebBookmarkCollection markWebContentFilterAllowsAllReadingListItems];
    }
  }

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(buf);
  return v4 == 101;
}

- (BOOL)vacuum
{
  v2 = [(WebBookmarkCollection *)self _executeSQLWithCString:"VACUUM"];
  defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
  [defaultCenter postNotificationName:@"com.apple.WebBookmarks.DidVacuumDatabaseNotification" object:0];

  return v2 == 0;
}

- (NSArray)purgeableReadingListItems
{
  v28 = *MEMORY[0x277D85DE8];
  readingListFolderBookmarkID = [(WebBookmarkCollection *)self readingListFolderBookmarkID];
  v21 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"parent = %d AND deleted = 0 AND read = 1 AND (archive_status = %zd OR archive_status = %zd)", readingListFolderBookmarkID, 1, 2];
  v22 = [[WebBookmarkListQuery alloc] initWithBookmarksWhere:v21 orderBy:0 usingFilter:0];
  v4 = [[WebBookmarkList alloc] initWithQuery:v22 skipOffset:0 collection:self];
  if ([(WebBookmarkList *)v4 bookmarkCount])
  {
    v18 = v4;
    v19 = objc_alloc_init(MEMORY[0x277CBEAA8]);
    v5 = objc_alloc(MEMORY[0x277CBEA80]);
    v20 = [v5 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
    v6 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [v6 setDay:-14];
    v7 = [v20 dateByAddingComponents:v6 toDate:v19 options:0];
    array = [MEMORY[0x277CBEB18] array];
    [(WebBookmarkList *)v4 bookmarkArray];
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v9 = v24 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v10)
    {
      v11 = *v24;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v24 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v23 + 1) + 8 * i);
          dateLastViewed = [v13 dateLastViewed];
          v15 = [dateLastViewed compare:v7] == -1;

          if (v15)
          {
            [array addObject:v13];
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v10);
    }

    v4 = v18;
  }

  else
  {
    array = [MEMORY[0x277CBEA60] array];
  }

  v16 = *MEMORY[0x277D85DE8];

  return array;
}

- (unint64_t)purgeableSpace
{
  v14 = *MEMORY[0x277D85DE8];
  [(WebBookmarkCollection *)self purgeableReadingListItems];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v2 = v10 = 0u;
  v3 = 0;
  v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v3 += [*(*(&v9 + 1) + 8 * v6++) archiveSize];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
  return v3;
}

- (unint64_t)purge:(unint64_t)purge
{
  v20 = *MEMORY[0x277D85DE8];
  if (purge)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [(WebBookmarkCollection *)self purgeableReadingListItems];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v6 = v16 = 0u;
    v7 = 0;
    v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = *v16;
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        [v11 setArchiveStatus:{4, v15}];
        [v11 setDateLastArchived:date];
        [(WebBookmarkCollection *)self saveBookmark:v11];
        archiveSize = [v11 archiveSize];
        [v11 clearArchiveSynchronously];
        v7 += archiveSize;
        if (v7 >= purge)
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    [(WebBookmarkCollection *)self vacuum];
  }

  else
  {
    v7 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)performDatabaseUpdatesWithTransaction:(id)transaction applyInMemoryChanges:(BOOL)changes secureDelete:(BOOL)delete
{
  changesCopy = changes;
  transactionCopy = transaction;
  if (([objc_opt_class() isLockedSync] & 1) == 0)
  {
    [(WebBookmarkCollection *)self _simulateCrashWithDescription:@"Trying to edit bookmarks without first obtaining the bookmarks database file lock."];
  }

  if (changesCopy && ![(WebBookmarkCollection *)self applyInMemoryChangesToDatabase])
  {
    LOBYTE(v11) = 0;
  }

  else
  {
    isTransactionCurrentlyActive = [(WebBookmarkCollection *)self isTransactionCurrentlyActive];
    if (!isTransactionCurrentlyActive)
    {
      operator new();
    }

    ptr = self->_currentTransaction.__ptr_;
    if (*(ptr + 17) == 1)
    {
      v11 = transactionCopy[2](transactionCopy);
      ptr = self->_currentTransaction.__ptr_;
    }

    else
    {
      v11 = 0;
    }

    WebBookmarks::BookmarkSQLWriteTransaction::requestSecureDelete(ptr, delete);
    if (!isTransactionCurrentlyActive)
    {
      if (v11)
      {
        WebBookmarks::BookmarkSQLTransaction::commit(self->_currentTransaction.__ptr_, v12, v13);
        v14 = self->_currentTransaction.__ptr_;
        if ((*(v14 + 18) & 1) == 0)
        {
          self->_currentTransaction.__ptr_ = 0;
LABEL_18:
          (*(*v14 + 8))(v14);
          goto LABEL_19;
        }

        [(WebBookmarkCollection *)self truncateWAL];
      }

      v14 = self->_currentTransaction.__ptr_;
      self->_currentTransaction.__ptr_ = 0;
      if (!v14)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

LABEL_19:

  return v11;
}

- (id)bookmarkWithUUID:(id)d
{
  dCopy = d;
  v5 = [(WebBookmarkCollection *)self _selectBookmarksWhere:@"external_uuid = ? AND deleted = 0"];
  sqlite3_bind_text(v5, 1, [dCopy UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  if (sqlite3_step(v5) == 100)
  {
    v6 = [WebBookmark alloc];
    currentDeviceIdentifier = [(WebBookmarkCollection *)self currentDeviceIdentifier];
    v8 = [(WebBookmark *)v6 initWithSQLiteStatement:v5 deviceIdentifier:currentDeviceIdentifier collectionType:[(WBCollectionConfiguration *)self->_configuration collectionType]];

    sqlite3_finalize(v5);
  }

  else
  {
    [(WebBookmarkCollection *)self _finalizeStatementIfNotNull:v5];
    v8 = 0;
  }

  return v8;
}

- (id)validBookmarkUUIDsFromUUIDs:(id)ds
{
  dsCopy = ds;
  if ([dsCopy count])
  {
    v5 = objc_msgSend(MEMORY[0x277CCAB68], "stringWithFormat:", @"SELECT external_uuid FROM bookmarks WHERE deleted = 0 AND external_uuid IN (");
    for (i = 0; i < [dsCopy count]; ++i)
    {
      if (i)
      {
        [v5 appendString:{@", "}];
      }

      [v5 appendString:@"?"];
    }

    [v5 appendString:@""]);
    ppStmt = 0;
    if (sqlite3_prepare_v2(self->_db, [v5 UTF8String], -1, &ppStmt, 0))
    {
      [(WebBookmarkCollection *)self _finalizeStatementIfNotNull:ppStmt];
      array = 0;
    }

    else
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __53__WebBookmarkCollection_validBookmarkUUIDsFromUUIDs___block_invoke;
      v11[3] = &__block_descriptor_40_e25_v32__0__NSString_8Q16_B24l;
      v11[4] = ppStmt;
      [dsCopy enumerateObjectsUsingBlock:v11];
      array = [MEMORY[0x277CBEB18] array];
      while (sqlite3_step(ppStmt) == 100)
      {
        v9 = sqlite3_column_text(ppStmt, 0);
        if (v9)
        {
          v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v9];
          if (v10)
          {
            [array addObject:v10];
          }
        }
      }
    }
  }

  else
  {
    array = MEMORY[0x277CBEBF8];
  }

  return array;
}

void __53__WebBookmarkCollection_validBookmarkUUIDsFromUUIDs___block_invoke(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = v5;
  sqlite3_bind_text(v6, a3 + 1, [v7 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
}

- (id)bookmarkAtPath:(id)path
{
  v32 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v5 = pathCopy;
  if (pathCopy && [pathCopy count])
  {
    WebBookmarks::BookmarkSQLReadTransaction::BookmarkSQLReadTransaction(v30, self->_db);
    if (v30[17])
    {
      ppStmt = 0;
      if (!sqlite3_prepare_v2(self->_db, "SELECT id FROM bookmarks WHERE parent = ? AND type = 1 AND title = ? AND deleted = 0", -1, &ppStmt, 0))
      {
        [v5 subarrayWithRange:{0, objc_msgSend(v5, "count") - 1}];
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v9 = v26 = 0u;
        v10 = 0;
        v11 = [v9 countByEnumeratingWithState:&v25 objects:v31 count:16];
        if (v11)
        {
          v12 = *v26;
          while (2)
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v26 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v25 + 1) + 8 * i);
              sqlite3_reset(ppStmt);
              sqlite3_bind_int(ppStmt, 1, v10);
              v15 = ppStmt;
              v16 = v14;
              sqlite3_bind_text(v15, 2, [v14 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
              if (sqlite3_step(ppStmt) != 100)
              {
                [(WebBookmarkCollection *)self _finalizeStatementIfNotNull:ppStmt];

                goto LABEL_24;
              }

              v10 = sqlite3_column_int(ppStmt, 0);
            }

            v11 = [v9 countByEnumeratingWithState:&v25 objects:v31 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }

        sqlite3_finalize(ppStmt);
        ppStmt = [(WebBookmarkCollection *)self _selectBookmarksWhere:@"parent = ? AND title = ? AND deleted = 0 ORDER BY order_index"];
        sqlite3_bind_int(ppStmt, 1, v10);
        v17 = ppStmt;
        lastObject = [v5 lastObject];
        v19 = lastObject;
        sqlite3_bind_text(v17, 2, [lastObject UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);

        if (sqlite3_step(ppStmt) == 100)
        {
          v20 = [WebBookmark alloc];
          v21 = ppStmt;
          currentDeviceIdentifier = [(WebBookmarkCollection *)self currentDeviceIdentifier];
          rootBookmark = [(WebBookmark *)v20 initWithSQLiteStatement:v21 deviceIdentifier:currentDeviceIdentifier collectionType:[(WBCollectionConfiguration *)self->_configuration collectionType]];

          sqlite3_finalize(ppStmt);
          WebBookmarks::BookmarkSQLTransaction::commit(v30, v23, v24);
        }

        else
        {
          [(WebBookmarkCollection *)self _finalizeStatementIfNotNull:ppStmt];
LABEL_24:
          rootBookmark = 0;
        }

        goto LABEL_7;
      }

      [(WebBookmarkCollection *)self _finalizeStatementIfNotNull:ppStmt];
    }

    rootBookmark = 0;
LABEL_7:
    WebBookmarks::BookmarkSQLReadTransaction::~BookmarkSQLReadTransaction(v30);
    goto LABEL_9;
  }

  rootBookmark = [(WebBookmarkCollection *)self rootBookmark];
LABEL_9:

  v7 = *MEMORY[0x277D85DE8];

  return rootBookmark;
}

- (id)descendantsOfBookmarkFolder:(id)folder
{
  v21 = *MEMORY[0x277D85DE8];
  folderCopy = folder;
  array = [MEMORY[0x277CBEB18] array];
  v6 = -[WebBookmarkCollection listWithID:](self, "listWithID:", [folderCopy identifier]);
  bookmarkArray = [v6 bookmarkArray];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = bookmarkArray;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if ([v12 isFolder])
        {
          v13 = [(WebBookmarkCollection *)self descendantsOfBookmarkFolder:v12];
          [array addObjectsFromArray:v13];
        }

        else
        {
          [array addObject:v12];
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x277D85DE8];

  return array;
}

- (BOOL)bookmarkContainsLeafBookmark:(id)bookmark
{
  v19 = *MEMORY[0x277D85DE8];
  bookmarkCopy = bookmark;
  if ([bookmarkCopy isFolder])
  {
    v5 = -[WebBookmarkCollection listWithID:](self, "listWithID:", [bookmarkCopy identifier]);
    bookmarkArray = [v5 bookmarkArray];

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = bookmarkArray;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = *v15;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v7);
          }

          if ([(WebBookmarkCollection *)self bookmarkContainsLeafBookmark:*(*(&v14 + 1) + 8 * i), v14])
          {
            v11 = 1;
            goto LABEL_13;
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v11 = 0;
LABEL_13:
  }

  else
  {
    v11 = 1;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (unint64_t)leafChildCountForBookmarksInFolderWithID:(int)d
{
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v6, self->_db, "SELECT COUNT(*) FROM bookmarks WHERE parent = ? AND type = 0 AND hidden = 0");
  sqlite3_bind_int(v7, 1, d);
  if (sqlite3_step(v7) == 100)
  {
    v4 = sqlite3_column_int(v7, 0);
  }

  else
  {
    v4 = 0;
  }

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v6);
  return v4;
}

- (id)leafChildCountForFoldersInFolderWithID:(int)d
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v10, self->_db, "SELECT parent, count(*) FROM bookmarks WHERE (parent IN (SELECT folder_id FROM folder_ancestors WHERE ancestor_id = ?) AND hidden = 0 AND type = 0) GROUP BY parent");
  sqlite3_bind_int(v11, 1, d);
  while (sqlite3_step(v11) == 100)
  {
    v6 = sqlite3_column_int(v11, 0);
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:{sqlite3_column_int(v11, 1)}];
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:v6];
    [dictionary setObject:v7 forKeyedSubscript:v8];
  }

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v10);

  return dictionary;
}

- (unsigned)orderIndexOfBookmark:(id)bookmark
{
  bookmarkCopy = bookmark;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT order_index FROM bookmarks WHERE id = %d", objc_msgSend(bookmarkCopy, "identifier")];
  v6 = [(WebBookmarkCollection *)self _intFromExecutingSQL:v5];

  if (v6 == -1)
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)getBookmarkType:(BOOL *)type andSubtype:(int64_t *)subtype forBookmarkWithID:(int)d
{
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v10, self->_db, [@"SELECT type subtype FROM bookmarks WHERE id = ?"]);
  sqlite3_bind_int(v11, 1, d);
  v8 = sqlite3_step(v11);
  if (v8 == 100)
  {
    if (type)
    {
      *type = sqlite3_column_int(v11, 0) != 0;
    }

    if (subtype)
    {
      *subtype = sqlite3_column_int(v11, 1);
    }
  }

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v10);
  return v8 == 100;
}

- (id)bookmarksWithSubtype:(int64_t)subtype
{
  subtype = [MEMORY[0x277CCACA8] stringWithFormat:@"subtype = %ld", subtype];
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v11, [(WebBookmarkCollection *)self _selectBookmarksWhere:subtype]);
  array = [MEMORY[0x277CBEB18] array];
  while (sqlite3_step(v12) == 100)
  {
    v6 = [WebBookmark alloc];
    v7 = v12;
    currentDeviceIdentifier = [(WebBookmarkCollection *)self currentDeviceIdentifier];
    v9 = [(WebBookmark *)v6 initWithSQLiteStatement:v7 deviceIdentifier:currentDeviceIdentifier collectionType:[(WBCollectionConfiguration *)self->_configuration collectionType]];

    [array addObject:v9];
  }

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v11);

  return array;
}

- (unint64_t)modifiedAttributesOfBookmark:(id)bookmark
{
  bookmarkCopy = bookmark;
  db = self->_db;
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT modified_attributes FROM bookmarks WHERE id = %d", objc_msgSend(bookmarkCopy, "identifier")];
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v9, db, [v6 UTF8String]);

  if (sqlite3_step(v10) == 100)
  {
    v7 = sqlite3_column_int64(v10, 0);
  }

  else
  {
    v7 = 0;
  }

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v9);

  return v7;
}

- (int)identifierOfBookmarkWithUUID:(id)d
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT id FROM bookmarks WHERE external_uuid = '%@'", d];
  v5 = [(WebBookmarkCollection *)self _intFromExecutingSQL:v4];

  if (v5 == -1)
  {
    return 0x7FFFFFFF;
  }

  else
  {
    return v5;
  }
}

- (int)bookmarkIdentifierOfAncestorWithSubtype:(int64_t)subtype forBookmark:(id)bookmark
{
  bookmarkCopy = bookmark;
  v7 = MEMORY[0x277CBEB98];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:subtype];
  v9 = [v7 setWithObject:v8];
  LODWORD(self) = [(WebBookmarkCollection *)self bookmarkIdentifierOfAncestorWithAnySubtypeInSubtypes:v9 forBookmark:bookmarkCopy];

  return self;
}

- (int)bookmarkIdentifierOfAncestorWithAnySubtypeInSubtypes:(id)subtypes forBookmark:(id)bookmark
{
  subtypesCopy = subtypes;
  bookmarkCopy = bookmark;
  identifier = [bookmarkCopy identifier];
  while (identifier && identifier != 0x7FFFFFFF)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:{-[WebBookmarkCollection subtypeOfBookmarkWithID:](self, "subtypeOfBookmarkWithID:", identifier)}];
    v12 = [subtypesCopy containsObject:v11];

    if (v12)
    {
      v13 = 1;
      v4 = identifier;
    }

    else if ([bookmarkCopy isDeleted])
    {
      v14 = [(WebBookmarkCollection *)self syncDataForBookmark:bookmarkCopy];
      parentRecordID = [v14 parentRecordID];
      recordName = [parentRecordID recordName];
      v17 = [(WebBookmarkCollection *)self bookmarkWithServerID:recordName excludeDeletedBookmarks:0];

      identifier = [v17 identifier];
      v13 = 2;
      bookmarkCopy = v17;
    }

    else
    {
      identifier = [(WebBookmarkCollection *)self parentIdentifierOfBookmarkWithID:identifier];
      v13 = 0;
    }

    objc_autoreleasePoolPop(v10);
    if ((v13 | 2) != 2)
    {
      goto LABEL_12;
    }
  }

  v4 = 0x7FFFFFFF;
LABEL_12:

  return v4;
}

- (int)bookmarkIdentifierOfFolderAncestorWithSubtype:(int64_t)subtype forBookmark:(id)bookmark
{
  bookmarkCopy = bookmark;
  identifier = [bookmarkCopy identifier];
  while (identifier && identifier != 0x7FFFFFFF)
  {
    v9 = objc_autoreleasePoolPush();
    v17 = 0;
    v16 = 0;
    if ([(WebBookmarkCollection *)self getBookmarkType:&v17 andSubtype:&v16 forBookmarkWithID:identifier])
    {
      if (v17 == 1 && v16 == subtype)
      {
        v10 = 1;
        v4 = identifier;
      }

      else if ([bookmarkCopy isDeleted])
      {
        v11 = [(WebBookmarkCollection *)self syncDataForBookmark:bookmarkCopy];
        parentRecordID = [v11 parentRecordID];
        recordName = [parentRecordID recordName];
        v14 = [(WebBookmarkCollection *)self bookmarkWithServerID:recordName excludeDeletedBookmarks:0];

        identifier = [v14 identifier];
        v10 = 2;
        bookmarkCopy = v14;
      }

      else
      {
        identifier = [(WebBookmarkCollection *)self parentIdentifierOfBookmarkWithID:identifier];
        v10 = 0;
      }
    }

    else
    {
      v4 = 0x7FFFFFFF;
      v10 = 1;
    }

    objc_autoreleasePoolPop(v9);
    if ((v10 | 2) != 2)
    {
      goto LABEL_15;
    }
  }

  v4 = 0x7FFFFFFF;
LABEL_15:

  return v4;
}

- (WebBookmarkList)bookmarksBarList
{
  v3 = +[WBWebFilterSettings sharedWebFilterSettings];
  usesAllowedSitesOnly = [v3 usesAllowedSitesOnly];

  if (usesAllowedSitesOnly)
  {
    v5 = 4;
  }

  else
  {
    v5 = 1;
  }

  v6 = [(WebBookmarkCollection *)self listWithSpecialID:v5];

  return v6;
}

- (id)readingListWithUnreadOnly:(BOOL)only filteredUsingString:(id)string
{
  onlyCopy = only;
  stringCopy = string;
  v7 = [MEMORY[0x277CCAB68] stringWithFormat:@"web_filter_status != %zd", 2];
  v8 = v7;
  if (onlyCopy)
  {
    [v7 insertString:@"read = 0 AND " atIndex:0];
    v9 = objc_alloc_init(WebBookmarkInMemoryChangeFilterUnreadOnly);
  }

  else
  {
    v9 = 0;
  }

  v10 = [(WebBookmarkCollection *)self _readingListItemsWhere:v8 filteredBy:stringCopy withInMemoryFilter:v9];

  return v10;
}

- (id)_readingListItemsWhere:(id)where filteredBy:(id)by withInMemoryFilter:(id)filter
{
  whereCopy = where;
  byCopy = by;
  filterCopy = filter;
  [(WebBookmarkCollection *)self logRegulatoryBookmarksRead];
  string = [MEMORY[0x277CCAB68] string];
  readingListFolderBookmarkID = [(WebBookmarkCollection *)self readingListFolderBookmarkID];
  [string appendFormat:@"parent = %d AND deleted = 0", -[WebBookmarkCollection readingListFolderBookmarkID](self, "readingListFolderBookmarkID")];
  if (whereCopy)
  {
    [string appendFormat:@" AND %@", whereCopy];
  }

  v13 = [[WebBookmarkListQuery alloc] initWithBookmarksWhere:string folderID:readingListFolderBookmarkID orderBy:@"order_index DESC" usingFilter:byCopy];
  [(WebBookmarkListQuery *)v13 setInMemoryFilter:filterCopy];
  v14 = [[WebBookmarkList alloc] initWithQuery:v13 skipOffset:0 collection:self];

  return v14;
}

- (id)_parentIdentifiersOfBookmarksNeedingIcons
{
  favoritesFolder = [(WebBookmarkCollection *)self favoritesFolder];
  identifier = [favoritesFolder identifier];

  v5 = +[WBWebFilterSettings sharedWebFilterSettings];
  usesAllowedSitesOnly = [v5 usesAllowedSitesOnly];

  if (usesAllowedSitesOnly)
  {
    identifier = [(WebBookmarkCollection *)self webFilterAllowedSitesFolderBookmarkID];
  }

  v7 = MEMORY[0x277CBEB18];
  v8 = [MEMORY[0x277CCABB0] numberWithInt:identifier];
  v9 = [v7 arrayWithObject:v8];

  frequentlyVisitedSitesFolderBookmarkID = [(WebBookmarkCollection *)self frequentlyVisitedSitesFolderBookmarkID];
  if (frequentlyVisitedSitesFolderBookmarkID)
  {
    [v9 addObject:frequentlyVisitedSitesFolderBookmarkID];
  }

  return v9;
}

- (BOOL)shouldFetchIconForBookmark:(id)bookmark
{
  bookmarkCopy = bookmark;
  address = [bookmarkCopy address];
  if ([address _webBookmarks_hasCaseInsensitivePrefix:@"http"] & 1) != 0 || (objc_msgSend(address, "_webBookmarks_hasCaseInsensitivePrefix:", @"https"))
  {
    _parentIdentifiersOfBookmarksNeedingIcons = [(WebBookmarkCollection *)self _parentIdentifiersOfBookmarksNeedingIcons];
    v7 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(bookmarkCopy, "parentID")}];
    v8 = [_parentIdentifiersOfBookmarksNeedingIcons containsObject:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (WebBookmarkList)bookmarksNeedingIcons
{
  v3 = MEMORY[0x277CCACA8];
  _parentIdentifiersOfBookmarksNeedingIcons = [(WebBookmarkCollection *)self _parentIdentifiersOfBookmarksNeedingIcons];
  v5 = [_parentIdentifiersOfBookmarksNeedingIcons componentsJoinedByString:{@", "}];
  v6 = [v3 stringWithFormat:@"fetched_icon = 0 AND (url LIKE 'http:%%' OR url LIKE 'https:%%') AND parent IN (%@)", v5];

  v7 = [[WebBookmarkListQuery alloc] initWithBookmarksWhere:v6 orderBy:0 usingFilter:0];
  v8 = [[WebBookmarkList alloc] initWithQuery:v7 skipOffset:0 collection:self];

  return v8;
}

- (BOOL)markAllFavoritesAsNeedingIcons
{
  v3 = MEMORY[0x277CCACA8];
  _parentIdentifiersOfBookmarksNeedingIcons = [(WebBookmarkCollection *)self _parentIdentifiersOfBookmarksNeedingIcons];
  v5 = [_parentIdentifiersOfBookmarksNeedingIcons componentsJoinedByString:{@", "}];
  v6 = [v3 stringWithFormat:@"UPDATE bookmarks SET fetched_icon = 0 WHERE parent IN (%@)", v5];

  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v8, self->_db, [v6 UTF8String]);
  LOBYTE(_parentIdentifiersOfBookmarksNeedingIcons) = sqlite3_step(v9) == 101;
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v8);

  return _parentIdentifiersOfBookmarksNeedingIcons;
}

- (BOOL)deleteAllFavoriteIcons
{
  v3 = MEMORY[0x277CCACA8];
  _parentIdentifiersOfBookmarksNeedingIcons = [(WebBookmarkCollection *)self _parentIdentifiersOfBookmarksNeedingIcons];
  v5 = [_parentIdentifiersOfBookmarksNeedingIcons componentsJoinedByString:{@", "}];
  v6 = [v3 stringWithFormat:@"UPDATE bookmarks SET icon = NULL, fetched_icon = 0 WHERE parent IN (%@)", v5];

  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v8, self->_db, [v6 UTF8String]);
  LOBYTE(_parentIdentifiersOfBookmarksNeedingIcons) = sqlite3_step(v9) == 101;
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v8);

  return _parentIdentifiersOfBookmarksNeedingIcons;
}

- (int)webFilterAllowedSitesFolderBookmarkID
{
  v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SELECT id FROM bookmarks WHERE special_id = %d", 4];
  LODWORD(self) = WebBookmarks::BookmarkSQLStatement::selectInt(self->_db, v3, v4);

  return self;
}

- (BOOL)saveBookmark:(id)bookmark
{
  bookmarkCopy = bookmark;
  LOBYTE(self) = [(WebBookmarkCollection *)self saveBookmark:bookmarkCopy startReadingListFetcher:[(WBCollectionConfiguration *)self->_configuration collectionType]== 0];

  return self;
}

- (BOOL)saveBookmarks:(id)bookmarks postNotification:(BOOL)notification
{
  notificationCopy = notification;
  v41 = *MEMORY[0x277D85DE8];
  bookmarksCopy = bookmarks;
  if (([objc_opt_class() isLockedSync] & 1) == 0)
  {
    [(WebBookmarkCollection *)self _simulateCrashWithDescription:@"Trying to save bookmarks without first obtaining the bookmarks database file lock."];
  }

  if ([(WebBookmarkCollection *)self applyInMemoryChangesToDatabase])
  {
    WebBookmarks::BookmarkSQLWriteTransaction::BookmarkSQLWriteTransaction(v37, self->_db);
    v27 = v38;
    if (v38)
    {
      v26 = bookmarksCopy;
      v28 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v7 = bookmarksCopy;
      v8 = [v7 countByEnumeratingWithState:&v33 objects:v40 count:16];
      v9 = 0;
      v10 = 0;
      if (v8)
      {
        v11 = *v34;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v34 != v11)
            {
              objc_enumerationMutation(v7);
            }

            v13 = *(*(&v33 + 1) + 8 * i);
            if ([(WebBookmarkCollection *)self _saveBookmark:v13 withSpecialID:[(WebBookmarkCollection *)self _specialIDForBookmarkBeingSaved:v13] updateGenerationIfNeeded:1])
            {
              if ([v13 needsSyncUpdate])
              {
                [v13 setNeedsSyncUpdate:0];
                v10 = 1;
              }

              v14 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v13, "parentID")}];
              [v28 addObject:v14];
              v15 = [v13 specialID] != 0;

              v9 |= v15;
            }
          }

          v8 = [v7 countByEnumeratingWithState:&v33 objects:v40 count:16];
        }

        while (v8);
      }

      WebBookmarks::BookmarkSQLTransaction::commit(v37, v16, v17);
      if (v10)
      {
        [(WebBookmarkCollection *)self _postBookmarksChangedSyncNotification];
      }

      if (notificationCopy)
      {
        if (v9)
        {
          [(WebBookmarkCollection *)self _postBookmarksSpecialFoldersDidChangeNotification];
        }

        if ([v28 count])
        {
          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          v18 = v28;
          v19 = [v18 countByEnumeratingWithState:&v29 objects:v39 count:16];
          if (v19)
          {
            v20 = *v30;
            do
            {
              for (j = 0; j != v19; ++j)
              {
                if (*v30 != v20)
                {
                  objc_enumerationMutation(v18);
                }

                -[WebBookmarkCollection _postBookmarksFolderContentsDidChangeNotification:](self, "_postBookmarksFolderContentsDidChangeNotification:", [*(*(&v29 + 1) + 8 * j) unsignedIntValue]);
              }

              v19 = [v18 countByEnumeratingWithState:&v29 objects:v39 count:16];
            }

            while (v19);
          }
        }
      }

      bookmarksCopy = v26;
    }

    else
    {
      v23 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [WebBookmarkCollection saveBookmarks:postNotification:];
      }
    }

    WebBookmarks::BookmarkSQLWriteTransaction::~BookmarkSQLWriteTransaction(v37);
  }

  else
  {
    v22 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [WebBookmarkCollection saveBookmarks:postNotification:];
    }

    v27 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v27;
}

- (BOOL)_saveBookmark:(id)bookmark startReadingListFetcher:(BOOL)fetcher forApplyingInMemoryChanges:(BOOL)changes
{
  fetcherCopy = fetcher;
  v24 = *MEMORY[0x277D85DE8];
  bookmarkCopy = bookmark;
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __90__WebBookmarkCollection__saveBookmark_startReadingListFetcher_forApplyingInMemoryChanges___block_invoke;
  v19 = &unk_279E75968;
  selfCopy = self;
  v9 = bookmarkCopy;
  v21 = v9;
  v10 = [(WebBookmarkCollection *)self performDatabaseUpdatesWithTransaction:&v16 applyInMemoryChanges:0 secureDelete:0];
  if (v10)
  {
    if ([v9 needsSyncUpdate])
    {
      [(WebBookmarkCollection *)self _postBookmarksChangedSyncNotification];
      [v9 setNeedsSyncUpdate:0];
    }

    if (!changes)
    {
      -[WebBookmarkCollection _postBookmarksFolderContentsDidChangeNotification:](self, "_postBookmarksFolderContentsDidChangeNotification:", [v9 parentID]);
      if ([v9 specialID])
      {
        [(WebBookmarkCollection *)self _postBookmarksSpecialFoldersDidChangeNotification];
      }
    }

    if (([v9 isReadingListItem] & fetcherCopy) == 1)
    {
      v11 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        uUID = [v9 UUID];
        *buf = 138543362;
        v23 = uUID;
        _os_log_impl(&dword_272C20000, v11, OS_LOG_TYPE_INFO, "Starting Reading List fetcher when saving bookmark with UUID %{public}@", buf, 0xCu);
      }

      [(WebBookmarkCollection *)self _startReadingListFetcher];
    }
  }

  else
  {
    v13 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [v9 UUID];
      objc_claimAutoreleasedReturnValue();
      [WebBookmarkCollection _saveBookmark:startReadingListFetcher:forApplyingInMemoryChanges:];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t __90__WebBookmarkCollection__saveBookmark_startReadingListFetcher_forApplyingInMemoryChanges___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _saveBookmark:*(a1 + 40) withSpecialID:objc_msgSend(*(a1 + 32) updateGenerationIfNeeded:{"_specialIDForBookmarkBeingSaved:", *(a1 + 40)), 1}];
  if ((v1 & 1) == 0)
  {
    v2 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __90__WebBookmarkCollection__saveBookmark_startReadingListFetcher_forApplyingInMemoryChanges___block_invoke_cold_1();
    }
  }

  return v1;
}

- (void)_deleteIconForBookmark:(id)bookmark
{
  v15 = *MEMORY[0x277D85DE8];
  readingListIconUUID = [bookmark readingListIconUUID];
  if (readingListIconUUID)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    bookmarkImagesDirectoryPath = [objc_opt_class() bookmarkImagesDirectoryPath];
    if ([defaultManager fileExistsAtPath:bookmarkImagesDirectoryPath isDirectory:0])
    {
      v6 = [bookmarkImagesDirectoryPath stringByAppendingPathComponent:readingListIconUUID];
      v13 = 0;
      v7 = [defaultManager removeItemAtPath:v6 error:&v13];
      v8 = v13;
      if (v7)
      {
        v9 = WBS_LOG_CHANNEL_PREFIXBookmarks();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_272C20000, v9, OS_LOG_TYPE_INFO, "Deleted bookmark icon successfully", buf, 2u);
        }
      }

      else
      {
        v11 = WBS_LOG_CHANNEL_PREFIXBookmarks();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          [v8 wb_privacyPreservingDescription];
          objc_claimAutoreleasedReturnValue();
          [WebBookmarkCollection _deleteIconForBookmark:];
        }
      }
    }

    else
    {
      v10 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [WebBookmarkCollection _deleteIconForBookmark:];
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)_deleteBookmark:(id)bookmark postChangeNotification:(BOOL)notification forApplyingInMemoryChanges:(BOOL)changes
{
  notificationCopy = notification;
  bookmarkCopy = bookmark;
  WebBookmarks::BookmarkSQLWriteTransaction::BookmarkSQLWriteTransaction(v13, self->_db);
  if ((v13[17] & 1) != 0 && -[WebBookmarkCollection deleteBookmark:leaveTombstone:](self, "deleteBookmark:leaveTombstone:", bookmarkCopy, [bookmarkCopy specialID] != 5))
  {
    WebBookmarks::BookmarkSQLTransaction::commit(v13, v9, v10);
    if (notificationCopy)
    {
      [(WebBookmarkCollection *)self _postBookmarksChangedSyncNotification];
    }

    if (!changes)
    {
      -[WebBookmarkCollection _postBookmarksFolderContentsDidChangeNotification:](self, "_postBookmarksFolderContentsDidChangeNotification:", [bookmarkCopy parentID]);
    }

    if ([bookmarkCopy isReadingListItem])
    {
      [bookmarkCopy clearArchive];
      [(WebBookmarkCollection *)self _deleteIconForBookmark:bookmarkCopy];
    }

    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  WebBookmarks::BookmarkSQLWriteTransaction::~BookmarkSQLWriteTransaction(v13);

  return v11;
}

- (BOOL)_moveBookmark:(id)bookmark fromIndex:(unsigned int)index toIndex:(unsigned int)toIndex
{
  *&v35[7] = *MEMORY[0x277D85DE8];
  bookmarkCopy = bookmark;
  v9 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 67109632;
    *v31 = [bookmarkCopy identifier];
    *&v31[4] = 1024;
    *&v31[6] = [bookmarkCopy parentID];
    *v32 = 1024;
    *&v32[2] = toIndex;
    _os_log_impl(&dword_272C20000, v9, OS_LOG_TYPE_INFO, "Moving bookmark with ID %d and parent ID %d to index %d", buf, 0x14u);
  }

  if (toIndex >= index)
  {
    v10 = "UPDATE bookmarks SET order_index = order_index - 1 WHERE order_index > ? AND order_index <= ? AND parent = ?";
  }

  else
  {
    v10 = "UPDATE bookmarks SET order_index = order_index + 1 WHERE order_index < ? AND order_index >= ? AND parent = ?";
  }

  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v28, self->_db, v10);
  sqlite3_bind_int(v29, 1, index);
  sqlite3_bind_int(v29, 2, toIndex);
  sqlite3_bind_int(v29, 3, [bookmarkCopy parentID]);
  if (sqlite3_step(v29) == 101)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"UPDATE bookmarks SET order_index = ?1, dav_generation = ?2%@ WHERE id = ?3", @", modified_attributes = modified_attributes | ?4"];
    db = self->_db;
    v13 = v11;
    WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v26, db, [v11 UTF8String]);
    sqlite3_bind_int(v27, 1, toIndex);
    sqlite3_bind_int(v27, 2, [(WebBookmarkCollection *)self currentRecordGeneration]);
    sqlite3_bind_int(v27, 3, [bookmarkCopy identifier]);
    sqlite3_bind_int64(v27, 4, 4);
    v14 = sqlite3_step(v27);
    v15 = v14 == 101;
    if (v14 == 101)
    {
      [(WebBookmarkCollection *)self _incrementGeneration];
    }

    else
    {
      v16 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        privacyPreservingDescription = [bookmarkCopy privacyPreservingDescription];
        currentRecordGeneration = [(WebBookmarkCollection *)self currentRecordGeneration];
        _errorForMostRecentSQLiteError = [(WebBookmarkCollection *)self _errorForMostRecentSQLiteError];
        *buf = 138544130;
        *v31 = privacyPreservingDescription;
        *&v31[8] = 1024;
        *v32 = toIndex;
        *&v32[4] = 1024;
        indexCopy = currentRecordGeneration;
        v34 = 2112;
        *v35 = _errorForMostRecentSQLiteError;
        _os_log_error_impl(&dword_272C20000, v16, OS_LOG_TYPE_ERROR, "Failed to update bookmarks order for bookmark %{public}@ where toIndex = (%d) and currentRecordGeneration = (%d) with error = (%@)", buf, 0x22u);
      }
    }

    WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v26);
  }

  else
  {
    v11 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      privacyPreservingDescription2 = [bookmarkCopy privacyPreservingDescription];
      parentID = [bookmarkCopy parentID];
      _errorForMostRecentSQLiteError2 = [(WebBookmarkCollection *)self _errorForMostRecentSQLiteError];
      *buf = 138544386;
      *v31 = privacyPreservingDescription2;
      *&v31[8] = 1024;
      *v32 = parentID;
      *&v32[4] = 1024;
      indexCopy = index;
      v34 = 1024;
      *v35 = toIndex;
      v35[2] = 2112;
      *&v35[3] = _errorForMostRecentSQLiteError2;
      _os_log_error_impl(&dword_272C20000, v11, OS_LOG_TYPE_ERROR, "Failed to update siblings for bookmark %{public}@ where parentID = (%d), fromIndex = (%d), and toIndex = (%d) with error = %@", buf, 0x28u);
    }

    v15 = 0;
  }

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v28);
  v18 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)_reorderBookmark:(id)bookmark afterBookmark:(id)afterBookmark
{
  v22 = *MEMORY[0x277D85DE8];
  bookmarkCopy = bookmark;
  afterBookmarkCopy = afterBookmark;
  v8 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    privacyPreservingDescription = [bookmarkCopy privacyPreservingDescription];
    privacyPreservingDescription2 = [afterBookmarkCopy privacyPreservingDescription];
    v18 = 138543618;
    v19 = privacyPreservingDescription;
    v20 = 2114;
    v21 = privacyPreservingDescription2;
    _os_log_impl(&dword_272C20000, v8, OS_LOG_TYPE_INFO, "Reordering bookmark %{public}@ after bookmark %{public}@", &v18, 0x16u);
  }

  v11 = [(WebBookmarkCollection *)self orderIndexOfBookmark:bookmarkCopy];
  v12 = [(WebBookmarkCollection *)self orderIndexOfBookmark:afterBookmarkCopy];
  if (v12 >= v11)
  {
    v13 = v12;
  }

  else
  {
    v13 = v12 + 1;
  }

  if (afterBookmarkCopy)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = [(WebBookmarkCollection *)self _reorderBookmark:bookmarkCopy toIndex:v14];

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)saveArchivesForReadingListBookmarks:(id)bookmarks
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  bookmarksCopy = bookmarks;
  v5 = [bookmarksCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(bookmarksCopy);
        }

        [*(*(&v9 + 1) + 8 * v7++) setShouldArchive:{1, v9}];
      }

      while (v5 != v7);
      v5 = [bookmarksCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(WebBookmarkCollection *)self saveBookmarks:bookmarksCopy postNotification:1];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)saveIconWithData:(id)data urlString:(id)string forBookmark:(id)bookmark
{
  v26[6] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  stringCopy = string;
  bookmarkCopy = bookmark;
  v11 = bookmarkCopy;
  if (bookmarkCopy)
  {
    readingListIconUUID = [bookmarkCopy readingListIconUUID];
    if (readingListIconUUID)
    {
      [(WebBookmarkCollection *)self _deleteIconForBookmark:v11];
    }

    else
    {
      uUID = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [uUID UUIDString];

      [v11 setReadingListIconUUID:uUIDString];
      readingListIconUUID = uUIDString;
    }

    bookmarkImagesDirectoryPath = [objc_opt_class() bookmarkImagesDirectoryPath];
    v16 = [bookmarkImagesDirectoryPath stringByAppendingPathComponent:readingListIconUUID];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    if (([defaultManager fileExistsAtPath:bookmarkImagesDirectoryPath isDirectory:0] & 1) == 0)
    {
      v26[0] = 0;
      v18 = [defaultManager createDirectoryAtPath:bookmarkImagesDirectoryPath withIntermediateDirectories:1 attributes:0 error:v26];
      v19 = v26[0];
      if ((v18 & 1) == 0)
      {
        v20 = WBS_LOG_CHANNEL_PREFIXReadingListIcons();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          [v19 wb_privacyPreservingDescription];
          objc_claimAutoreleasedReturnValue();
          [WebBookmarkCollection saveIconWithData:urlString:forBookmark:];
        }
      }
    }

    [v11 setReadingListIconURL:stringCopy];
    [v11 setFetchedIconData:1];
    v25 = 0;
    v21 = [dataCopy writeToFile:v16 options:1 error:&v25];
    v22 = v25;
    if ((v21 & 1) == 0)
    {
      v23 = WBS_LOG_CHANNEL_PREFIXReadingListIcons();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [v22 wb_privacyPreservingDescription];
        objc_claimAutoreleasedReturnValue();
        [WebBookmarkCollection saveIconWithData:urlString:forBookmark:];
      }
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

uint64_t __57__WebBookmarkCollection__updateBookmarks_inFolderWithID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__WebBookmarkCollection__updateBookmarks_inFolderWithID___block_invoke_2;
  v8[3] = &unk_279E75FF8;
  v9 = v3;
  v5 = v3;
  v6 = [v4 safari_containsObjectPassingTest:v8];

  return v6;
}

uint64_t __57__WebBookmarkCollection__updateBookmarks_inFolderWithID___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 UUID];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

id __57__WebBookmarkCollection__updateBookmarks_inFolderWithID___block_invoke_404(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 UUID];
  v6 = [v4 indexOfObject:v5];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6];
  }

  return v7;
}

void __57__WebBookmarkCollection__updateBookmarks_inFolderWithID___block_invoke_406(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = objc_autoreleasePoolPush();
  v8 = objc_alloc_init(MEMORY[0x277D49B60]);
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __57__WebBookmarkCollection__updateBookmarks_inFolderWithID___block_invoke_2_407;
  v19 = &unk_279E76070;
  v21 = *(a1 + 56);
  v9 = v6;
  v20 = v9;
  [v8 setHandler:&v16];
  if ([*(a1 + 32) containsObject:{v9, v16, v17, v18, v19}])
  {
    if ([v9 modifiedAttributes] && (objc_msgSend(*(a1 + 40), "_saveBookmark:withSpecialID:updateGenerationIfNeeded:", v9, 0, 1) & 1) == 0)
    {
      v10 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v11 = *(a1 + 48);
    v12 = [v9 UUID];
    LOBYTE(v11) = [v11 containsObject:v12];

    if ((v11 & 1) == 0 && ([*(a1 + 40) _saveAndMoveBookmark:v9 toFolderID:*(a1 + 72)] & 1) == 0)
    {
      v13 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [*(a1 + 40) _errorForMostRecentSQLiteError];
        objc_claimAutoreleasedReturnValue();
        __57__WebBookmarkCollection__updateBookmarks_inFolderWithID___block_invoke_406_cold_1();
      }

      *(*(*(a1 + 64) + 8) + 24) = 0;
      *a4 = 1;
    }

    [v9 _setOrderIndex:{objc_msgSend(*(a1 + 40), "orderIndexOfBookmark:", v9)}];
    [*(*(*(a1 + 56) + 8) + 40) _setOrderIndex:{objc_msgSend(*(a1 + 40), "orderIndexOfBookmark:", *(*(*(a1 + 56) + 8) + 40))}];
    if (([*(a1 + 40) _reorderBookmark:v9 afterBookmark:*(*(*(a1 + 56) + 8) + 40)] & 1) == 0)
    {
      v14 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [*(a1 + 40) _errorForMostRecentSQLiteError];
        objc_claimAutoreleasedReturnValue();
        __57__WebBookmarkCollection__updateBookmarks_inFolderWithID___block_invoke_406_cold_2();
      }

      *(*(*(a1 + 64) + 8) + 24) = 0;
      *a4 = 1;
    }

    if (([v9 modifiedAttributes] & 0xFFFFFFFFFFFFFFFBLL) != 0 && (objc_msgSend(*(a1 + 40), "_saveBookmark:withSpecialID:updateGenerationIfNeeded:", v9, 0, 1) & 1) == 0)
    {
      v10 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
LABEL_18:
        [*(a1 + 40) _errorForMostRecentSQLiteError];
        objc_claimAutoreleasedReturnValue();
        __57__WebBookmarkCollection__updateBookmarks_inFolderWithID___block_invoke_406_cold_3();
      }

LABEL_19:

      *(*(*(a1 + 64) + 8) + 24) = 0;
      *a4 = 1;
    }
  }

  objc_autoreleasePoolPop(v7);
  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)fixCachedNumberOfChildrenIfNeeded
{
  v28 = *MEMORY[0x277D85DE8];
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v14, self->_db, "SELECT id, parent, num_children, (SELECT COUNT(*) FROM bookmarks AS child_bookmark WHERE child_bookmark.parent = parent_bookmark.id AND hidden = 0) AS real_num_children FROM bookmarks AS parent_bookmark WHERE num_children != real_num_children");
  v3 = 0;
  while (sqlite3_step(v15) == 100)
  {
    v4 = sqlite3_column_int(v15, 0);
    v5 = sqlite3_column_int(v15, 1);
    v6 = sqlite3_column_int(v15, 2);
    v7 = sqlite3_column_int(v15, 3);
    v8 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109888;
      v23 = v4;
      LOWORD(v24) = 1024;
      *(&v24 + 2) = v5;
      HIWORD(v24) = 1024;
      v25 = v6;
      v26 = 1024;
      v27 = v7;
      _os_log_error_impl(&dword_272C20000, v8, OS_LOG_TYPE_ERROR, "Number of children mismatch detected for bookmark with id: %d, parent: %d, expected number of children: %d, actual: %d", buf, 0x1Au);
    }

    WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(buf, self->_db, "UPDATE bookmarks SET num_children = ? WHERE id = ?");
    sqlite3_bind_int(v24, 1, v7);
    sqlite3_bind_int(v24, 2, v4);
    v9 = sqlite3_step(v24);
    if (v9 != 101)
    {
      v10 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = sqlite3_errmsg(self->_db);
        *v16 = 67109634;
        v17 = v4;
        v18 = 1024;
        v19 = v9;
        v20 = 2082;
        v21 = v11;
        _os_log_error_impl(&dword_272C20000, v10, OS_LOG_TYPE_ERROR, "Could not fix number of children of folder with id: %d, error: %d, %{public}s", v16, 0x18u);
      }
    }

    WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(buf);
    v3 = 1;
  }

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v14);
  v12 = *MEMORY[0x277D85DE8];
  return v3 & 1;
}

- (sqlite3_stmt)_prefixSearch:(id)search usingColumns:(const char *)columns maxCount:(unsigned int)count
{
  searchCopy = search;
  [(WebBookmarkCollection *)self logRegulatoryBookmarksRead];
  if (!columns)
  {
    columns = "DISTINCT url";
  }

  ppStmt = 0;
  if ([searchCopy length])
  {
    columns = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SELECT %s FROM bookmarks WHERE type = 0 AND url >= ? AND url < ? AND deleted = 0 LIMIT ?", columns];
    if (!sqlite3_prepare_v2(self->_db, [columns UTF8String], -1, &ppStmt, 0))
    {
      v15 = [searchCopy characterAtIndex:{objc_msgSend(searchCopy, "length") - 1}] + 1;
      v10 = [MEMORY[0x277CCAB68] stringWithString:searchCopy];
      v11 = [v10 length];
      v12 = [MEMORY[0x277CCACA8] stringWithCharacters:&v15 length:1];
      [v10 replaceCharactersInRange:v11 - 1 withString:{1, v12}];

      sqlite3_bind_text(ppStmt, 1, [searchCopy UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
      sqlite3_bind_text(ppStmt, 2, [v10 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
      sqlite3_bind_int(ppStmt, 3, count);

LABEL_9:
      v13 = ppStmt;
      goto LABEL_10;
    }
  }

  else
  {
    columns = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SELECT %s FROM bookmarks WHERE type = 0 AND deleted = 0 LIMIT ?", columns];
    if (!sqlite3_prepare_v2(self->_db, [columns UTF8String], -1, &ppStmt, 0))
    {
      sqlite3_bind_int(ppStmt, 1, count);
      goto LABEL_9;
    }
  }

  v13 = 0;
LABEL_10:

  return v13;
}

- (id)bookmarksMatchingString:(id)string
{
  stringCopy = string;
  [(WebBookmarkCollection *)self logRegulatoryBookmarksRead];
  array = [MEMORY[0x277CBEB18] array];
  ppStmt = 0;
  if (sqlite3_prepare_v2(self->_db, "SELECT id, title, url FROM bookmarks WHERE type = 0 AND deleted = 0", -1, &ppStmt, 0))
  {
    [(WebBookmarkCollection *)self _finalizeStatementIfNotNull:ppStmt];

    array = MEMORY[0x277CBEBF8];
    goto LABEL_12;
  }

  while (sqlite3_step(ppStmt) == 100)
  {
    v6 = sqlite3_column_text(ppStmt, 1);
    if (v6)
    {
      v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v6];
      [v7 rangeOfString:stringCopy options:385];
      if (!v8)
      {

        goto LABEL_7;
      }

LABEL_9:
      v11 = [(WebBookmarkCollection *)self bookmarkWithID:sqlite3_column_int(ppStmt, 0)];
      [array addObject:v11];

LABEL_10:
    }

    else
    {
LABEL_7:
      v9 = sqlite3_column_text(ppStmt, 2);
      if (v9)
      {
        v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v9];
        [v7 rangeOfString:stringCopy options:385];
        if (!v10)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }
    }
  }

  sqlite3_finalize(ppStmt);
LABEL_12:

  return array;
}

- (void)_enumerateBookmarksForMatchStatement:(id)statement normalizedQuery:(id)query usingBlock:(id)block
{
  statementCopy = statement;
  queryCopy = query;
  blockCopy = block;
  [(WebBookmarkCollection *)self logRegulatoryBookmarksRead];
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v14, self->_db, [statementCopy UTF8String]);
  sqlite3_bind_text(v15, 1, [queryCopy UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  while (sqlite3_step(v15) == 100)
  {
    v11 = sqlite3_column_text(v15, 2);
    if (v11)
    {
      v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v11];
    }

    v12 = sqlite3_column_text(v15, 1);
    if (v12)
    {
      v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v12];
    }

    else
    {
      v13 = 0;
    }

    if (v11 | v13)
    {
      blockCopy[2](blockCopy, v11, v13, v14);
    }
  }

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v14);
}

- (void)_enumerateBookmarksMatchingString:(id)string statementSuffix:(id)suffix usingBlock:(id)block
{
  v55 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  suffixCopy = suffix;
  blockCopy = block;
  v31 = stringCopy;
  v28 = [stringCopy mutableCopy];
  [(WebBookmarkCollection *)self _normalizeSearchString:v28];
  v9 = v28;
  if (prefixEndingWithFirstWordOfString(NSString *)::once != -1)
  {
    [WebBookmarkCollection _enumerateBookmarksMatchingString:statementSuffix:usingBlock:];
  }

  v48 = 0;
  v49 = &v48;
  v50 = 0x4012000000;
  v51 = __Block_byref_object_copy__1855;
  v52 = __Block_byref_object_dispose__1856;
  v53 = &unk_272CF3745;
  v10 = prefixEndingWithFirstWordOfString(NSString *)::tokenizerAccessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___ZL33prefixEndingWithFirstWordOfStringP8NSString_block_invoke_1858;
  block[3] = &unk_279E76468;
  v11 = v9;
  v46 = v11;
  v47 = &v48;
  dispatch_sync(v10, block);
  v12 = 0;
  v13 = v49[6];
  v14 = v11;
  if (v13 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = [v11 substringToIndex:v49[7] + v13];
    v12 = v11;
  }

  v29 = v11;

  _Block_object_dispose(&v48, 8);
  v32 = [v14 stringByAppendingString:@"%"];

  v15 = MEMORY[0x277CCACA8];
  v16 = BookmarkSQLiteColumns();
  suffixCopy = [v15 stringWithFormat:@"SELECT %@ FROM bookmarks INNER JOIN bookmark_title_words ON bookmarks.id = bookmark_title_words.bookmark_id WHERE bookmark_title_words.word LIKE ? AND type = 0 AND deleted = 0 AND web_filter_status != %zd AND title IS NOT NULL AND url IS NOT NULL AND url !=  %@", v16, 2, suffixCopy];

  [(WebBookmarkCollection *)self _executeSQLWithCString:"PRAGMA case_sensitive_like = true"];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __86__WebBookmarkCollection__enumerateBookmarksMatchingString_statementSuffix_usingBlock___block_invoke;
  v43[3] = &unk_279E760E8;
  v17 = blockCopy;
  v43[4] = self;
  v44 = v17;
  [(WebBookmarkCollection *)self _enumerateBookmarksForMatchStatement:suffixCopy normalizedQuery:v32 usingBlock:v43];
  v18 = MEMORY[0x277CCACA8];
  v19 = BookmarkSQLiteColumns();
  suffixCopy2 = [v18 stringWithFormat:@"SELECT %@ FROM bookmarks WHERE url LIKE ? AND type = 0 AND deleted = 0 AND web_filter_status != %zd AND title IS NOT NULL AND url IS NOT NULL %@", v19, 2, suffixCopy];

  [(WebBookmarkCollection *)self _executeSQLWithCString:"PRAGMA case_sensitive_like = false"];
  [stringCopy _web_possibleURLPrefixesForUserTypedString];
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  obj = v40 = 0u;
  v20 = [obj countByEnumeratingWithState:&v39 objects:v54 count:16];
  if (v20)
  {
    v21 = *v40;
    v22 = *MEMORY[0x277CBECE8];
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v40 != v21)
        {
          objc_enumerationMutation(obj);
        }

        absoluteString = [*(*(&v39 + 1) + 8 * i) absoluteString];
        MutableCopy = CFStringCreateMutableCopy(v22, [(__CFString *)absoluteString length], absoluteString);
        [(WebBookmarkCollection *)self _normalizeSearchString:MutableCopy];
        CFStringAppend(MutableCopy, @"%");
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = __86__WebBookmarkCollection__enumerateBookmarksMatchingString_statementSuffix_usingBlock___block_invoke_3;
        v37[3] = &unk_279E760E8;
        v26 = v17;
        v37[4] = self;
        v38 = v26;
        [(WebBookmarkCollection *)self _enumerateBookmarksForMatchStatement:suffixCopy2 normalizedQuery:MutableCopy usingBlock:v37];
        CFRelease(MutableCopy);
      }

      v20 = [obj countByEnumeratingWithState:&v39 objects:v54 count:16];
    }

    while (v20);
  }

  v27 = *MEMORY[0x277D85DE8];
}

uint64_t __86__WebBookmarkCollection__enumerateBookmarksMatchingString_statementSuffix_usingBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __86__WebBookmarkCollection__enumerateBookmarksMatchingString_statementSuffix_usingBlock___block_invoke_2;
  v6[3] = &unk_279E760C0;
  v4 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v6[5] = a4;
  return (*(v4 + 16))(v4, a2, a3, v6);
}

WebBookmark *__86__WebBookmarkCollection__enumerateBookmarksMatchingString_statementSuffix_usingBlock___block_invoke_2(uint64_t a1)
{
  v2 = [WebBookmark alloc];
  v3 = *(*(a1 + 40) + 8);
  v4 = [*(a1 + 32) currentDeviceIdentifier];
  v5 = -[WebBookmark initWithSQLiteStatement:deviceIdentifier:collectionType:](v2, "initWithSQLiteStatement:deviceIdentifier:collectionType:", v3, v4, [*(*(a1 + 32) + 16) collectionType]);

  return v5;
}

uint64_t __86__WebBookmarkCollection__enumerateBookmarksMatchingString_statementSuffix_usingBlock___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __86__WebBookmarkCollection__enumerateBookmarksMatchingString_statementSuffix_usingBlock___block_invoke_4;
  v6[3] = &unk_279E760C0;
  v4 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v6[5] = a4;
  return (*(v4 + 16))(v4, a2, a3, v6);
}

WebBookmark *__86__WebBookmarkCollection__enumerateBookmarksMatchingString_statementSuffix_usingBlock___block_invoke_4(uint64_t a1)
{
  v2 = [WebBookmark alloc];
  v3 = *(*(a1 + 40) + 8);
  v4 = [*(a1 + 32) currentDeviceIdentifier];
  v5 = -[WebBookmark initWithSQLiteStatement:deviceIdentifier:collectionType:](v2, "initWithSQLiteStatement:deviceIdentifier:collectionType:", v3, v4, [*(*(a1 + 32) + 16) collectionType]);

  return v5;
}

- (void)enumerateBookmarks:(BOOL)bookmarks andReadingListItems:(BOOL)items matchingString:(id)string usingBlock:(id)block
{
  itemsCopy = items;
  stringCopy = string;
  blockCopy = block;
  [(WebBookmarkCollection *)self logRegulatoryBookmarksRead];
  if (bookmarks || itemsCopy)
  {
    if (bookmarks)
    {
      v11 = @"AND hidden = 0 AND hidden_ancestor_count = 0";
      if (itemsCopy)
      {
        v11 = &stru_288259858;
      }

      v12 = v11;
    }

    else
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"AND parent = %d", -[WebBookmarkCollection readingListFolderBookmarkID](self, "readingListFolderBookmarkID")];
    }

    v13 = v12;
    [(WebBookmarkCollection *)self _enumerateBookmarksMatchingString:stringCopy statementSuffix:v12 usingBlock:blockCopy];
  }
}

- (id)_bookmarksFromStatementSelectingIDs:(const char *)ds withQuery:(id)query
{
  queryCopy = query;
  [(WebBookmarkCollection *)self logRegulatoryBookmarksRead];
  v7 = [(__CFString *)queryCopy length];
  MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x277CBECE8], v7, queryCopy);
  [(WebBookmarkCollection *)self _normalizeSearchString:MutableCopy];
  CFStringAppend(MutableCopy, @"%");
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v17, self->_db, ds);
  sqlite3_bind_text(v18, 1, [(__CFString *)MutableCopy UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  array = [MEMORY[0x277CBEB18] array];
  while (sqlite3_step(v18) == 100)
  {
    v10 = sqlite3_column_text(v18, 0);
    v11 = sqlite3_column_text(v18, 1);
    if (v10)
    {
      v12 = v11;
      if (v11)
      {
        v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v10];
        v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v12];
        v15 = [[WebBookmark alloc] initWithTitle:v13 address:v14 collectionType:[(WBCollectionConfiguration *)self->_configuration collectionType]];
        [array addObject:v15];
      }
    }
  }

  CFRelease(MutableCopy);
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v17);

  return array;
}

- (void)_addBookmarksForReadingListMatchStatement:(id)statement normalizedQuery:(id)query toArray:(id)array maxResults:(int)results
{
  statementCopy = statement;
  queryCopy = query;
  arrayCopy = array;
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v17, self->_db, [statementCopy UTF8String]);
  sqlite3_bind_text(v18, 1, [queryCopy UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  sqlite3_bind_int(v18, 2, [(WebBookmarkCollection *)self readingListFolderBookmarkID]);
  sqlite3_bind_int(v18, 3, 2);
  sqlite3_bind_int(v18, 4, results);
  while (sqlite3_step(v18) == 100)
  {
    v13 = [WebBookmark alloc];
    v14 = v18;
    currentDeviceIdentifier = [(WebBookmarkCollection *)self currentDeviceIdentifier];
    v16 = [(WebBookmark *)v13 initWithSQLiteStatement:v14 deviceIdentifier:currentDeviceIdentifier collectionType:[(WBCollectionConfiguration *)self->_configuration collectionType]];

    [arrayCopy addObject:v16];
  }

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v17);
}

uint64_t __93__WebBookmarkCollection_readingListBookmarksMatchingString_maxResults_onlyArchivedBookmarks___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 orderIndex];
  v6 = [v4 orderIndex];
  if (v5 <= v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = -1;
  }

  if (v5 < v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  return v8;
}

- (id)_tableExpressionForArchiveMode:(int64_t)mode
{
  if (mode > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = dword_272CCD304[mode];
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT id FROM bookmarks WHERE parent = %d AND deleted = 0 AND web_filter_status = %zd ORDER BY order_index DESC LIMIT %d", -[WebBookmarkCollection readingListFolderBookmarkID](self, "readingListFolderBookmarkID"), 1, v3];
}

- (id)_orderedWhereClauseForArchiveMode:(int64_t)mode automaticArchivingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v6 = MEMORY[0x277CCAB68];
  v7 = [(WebBookmarkCollection *)self _tableExpressionForArchiveMode:?];
  v8 = [v6 stringWithFormat:@"id IN (%@) AND ", v7];

  if (enabledCopy)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"archive_status IN (%zd, %zd, %zd)", 0, 6, 3];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"archive_status IN (%zd, %zd)", 6, 3];
  }
  v9 = ;
  v10 = v9;
  if (mode < 3)
  {
    [v8 appendFormat:off_279E764B0[mode], v9];
  }

  v11 = [v8 stringByAppendingString:{@" ORDER BY archive_status ASC, read ASC, locally_added DESC, order_index DESC"}];

  return v11;
}

- (id)_orderedWhereClauseForArchiveMode:(int64_t)mode
{
  v4 = MEMORY[0x277CCAB68];
  v5 = [(WebBookmarkCollection *)self _tableExpressionForArchiveMode:?];
  v6 = [v4 stringWithFormat:@"id IN (%@) AND ", v5];

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"archive_status IN (%zd, %zd)", 0, 3];
  v8 = v7;
  if (mode < 3)
  {
    [v6 appendFormat:off_279E764B0[mode], v7];
  }

  v9 = [v6 stringByAppendingString:{@" ORDER BY archive_status ASC, read ASC, locally_added DESC, order_index DESC"}];

  return v9;
}

- (unint64_t)countReadingListBookmarksNeedingArchiveInMode:(int64_t)mode
{
  v4 = [(WebBookmarkCollection *)self _orderedWhereClauseForArchiveMode:mode];
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v7, [(WebBookmarkCollection *)self _selectBookmarksWhere:v4 returnType:3]);
  if (sqlite3_step(v8) == 100)
  {
    v5 = sqlite3_column_int(v8, 0);
  }

  else
  {
    v5 = 0;
  }

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v7);

  return v5;
}

- (id)firstReadingListBookmarkNeedingArchiveInMode:(int64_t)mode
{
  v4 = [(WebBookmarkCollection *)self _orderedWhereClauseForArchiveMode:mode];
  v5 = [v4 stringByAppendingString:@" LIMIT 1"];
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v11, [(WebBookmarkCollection *)self _selectBookmarksWhere:v5]);
  if (sqlite3_step(v12) == 100)
  {
    v6 = [WebBookmark alloc];
    v7 = v12;
    currentDeviceIdentifier = [(WebBookmarkCollection *)self currentDeviceIdentifier];
    v9 = [(WebBookmark *)v6 initWithSQLiteStatement:v7 deviceIdentifier:currentDeviceIdentifier collectionType:[(WBCollectionConfiguration *)self->_configuration collectionType]];
  }

  else
  {
    v9 = 0;
  }

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v11);

  return v9;
}

- (id)readingListBookmarksNeedingArchiveInMode:(int64_t)mode
{
  [(WebBookmarkCollection *)self logRegulatoryBookmarksRead];
  v5 = [(WebBookmarkCollection *)self _orderedWhereClauseForArchiveMode:mode];
  v6 = [[WebBookmarkListQuery alloc] initWithBookmarksWhere:v5 orderBy:0 usingFilter:0];
  v7 = [[WebBookmarkList alloc] initWithQuery:v6 skipOffset:0 collection:self];

  return v7;
}

- (void)_cullReadingListBookmarksList:(id)list toSize:(unint64_t)size
{
  listCopy = list;
  if ([listCopy bookmarkCount] > size)
  {
    isLockedSync = [objc_opt_class() isLockedSync];
    if ((isLockedSync & 1) != 0 || [objc_opt_class() lockSync])
    {
      bookmarkArray = [listCopy bookmarkArray];
      v8 = [bookmarkArray count];
      if (v8 > size)
      {
        do
        {
          v9 = [bookmarkArray objectAtIndex:size];
          if ([v9 isFullArchiveAvailable])
          {
            [v9 clearArchive];
          }

          [v9 setArchiveStatus:5];
          [(WebBookmarkCollection *)self saveBookmark:v9];

          ++size;
        }

        while (v8 != size);
      }

      if ((isLockedSync & 1) == 0)
      {
        [objc_opt_class() unlockSync];
      }
    }
  }
}

- (BOOL)rollOutLastReadingListItem
{
  rollingListOfArchivedReadingListItems = [(WebBookmarkCollection *)self rollingListOfArchivedReadingListItems];
  bookmarkCount = [rollingListOfArchivedReadingListItems bookmarkCount];
  v5 = bookmarkCount;
  if (bookmarkCount)
  {
    if (bookmarkCount - 1 >= 0xF9)
    {
      v6 = 249;
    }

    else
    {
      v6 = bookmarkCount - 1;
    }

    [(WebBookmarkCollection *)self _cullReadingListBookmarksList:rollingListOfArchivedReadingListItems toSize:v6];
  }

  return v5 != 0;
}

- (void)rollOutReadingListItemIfNeededToMakeRoomForOneNewItem
{
  rollingListOfArchivedReadingListItems = [(WebBookmarkCollection *)self rollingListOfArchivedReadingListItems];
  [WebBookmarkCollection _cullReadingListBookmarksList:"_cullReadingListBookmarksList:toSize:" toSize:?];
}

- (WebBookmarkList)rollingListOfArchivedReadingListItems
{
  [(WebBookmarkCollection *)self logRegulatoryBookmarksRead];
  readingListFolderBookmarkID = [(WebBookmarkCollection *)self readingListFolderBookmarkID];
  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"parent = %d AND deleted = 0 AND (archive_status = %zd OR archive_status = %zd)", readingListFolderBookmarkID, 1, 2];
  v5 = [[WebBookmarkListQuery alloc] initWithBookmarksWhere:v4 orderBy:@"read ASC usingFilter:order_index DESC", 0];
  v6 = [[WebBookmarkList alloc] initWithQuery:v5 skipOffset:0 collection:self];
  bookmarkCount = [(WebBookmarkList *)v6 bookmarkCount];
  if (bookmarkCount)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  if (bookmarkCount)
  {
    v9 = 0;
  }

  else
  {
    v9 = v6;
  }

  return v8;
}

- (void)clearCarrierBookmarks
{
  if ([(WebBookmarkCollection *)self applyInMemoryChangesToDatabase])
  {
    WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v10, [(WebBookmarkCollection *)self _selectBookmarksWhere:@"syncable = 0 AND parent = 0"]);
    while (sqlite3_step(v11) == 100)
    {
      v3 = [WebBookmark alloc];
      v4 = v11;
      currentDeviceIdentifier = [(WebBookmarkCollection *)self currentDeviceIdentifier];
      v6 = [(WebBookmark *)v3 initWithSQLiteStatement:v4 deviceIdentifier:currentDeviceIdentifier collectionType:[(WBCollectionConfiguration *)self->_configuration collectionType]];

      localAttributes = [(WebBookmark *)v6 localAttributes];
      v8 = [localAttributes objectForKey:@"com.apple.bookmarks.IsCarrierBookmark"];
      bOOLValue = [v8 BOOLValue];

      if (bOOLValue)
      {
        [(WebBookmarkCollection *)self deleteBookmark:v6 postChangeNotification:0];
      }
    }

    WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v10);
  }
}

- (unsigned)_orderIndexForBookmarkInsertedIntoParent:(int)parent insertAtBeginning:(BOOL)beginning
{
  beginningCopy = beginning;
  [(WebBookmarkCollection *)self logRegulatoryBookmarksRead];
  if (beginningCopy)
  {
    if (parent)
    {
      return 0;
    }

    else
    {
      v9 = WebBookmarks::BookmarkSQLStatement::selectInt(self->_db, "SELECT MAX(order_index) + 1 FROM bookmarks WHERE special_id != 0", v7);
      if (v9 == -1)
      {
        return 0;
      }

      else
      {
        return v9;
      }
    }
  }

  else
  {
    WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v11, self->_db, "SELECT COUNT(*), MAX(order_index) FROM bookmarks WHERE parent = ? AND deleted = 0 AND syncable = 1");
    sqlite3_bind_int(v12, 1, parent);
    if (sqlite3_step(v12) == 100 && sqlite3_column_int(v12, 0))
    {
      v8 = sqlite3_column_int(v12, 1) + 1;
    }

    else
    {
      v8 = 0;
    }

    WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v11);
  }

  return v8;
}

- (id)bookmarkWithSpecialID:(int)d
{
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v10, [(WebBookmarkCollection *)self _selectBookmarksWhere:@"special_id = ? AND deleted = 0"]);
  if ((v12 & 1) != 0 && (sqlite3_bind_int(v11, 1, d), sqlite3_step(v11) == 100))
  {
    v5 = [WebBookmark alloc];
    v6 = v11;
    currentDeviceIdentifier = [(WebBookmarkCollection *)self currentDeviceIdentifier];
    v8 = [(WebBookmark *)v5 initWithSQLiteStatement:v6 deviceIdentifier:currentDeviceIdentifier collectionType:[(WBCollectionConfiguration *)self->_configuration collectionType]];
  }

  else
  {
    v8 = 0;
  }

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v10);

  return v8;
}

- (id)_firstBookmarkWithURLMatchingString:(id)string prefixMatch:(BOOL)match inParent:(int)parent
{
  matchCopy = match;
  stringCopy = string;
  if (matchCopy)
  {
    [(WebBookmarkCollection *)self _executeSQLWithCString:"PRAGMA case_sensitive_like = false"];
    stringCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%%", stringCopy];

    v10 = [(WebBookmarkCollection *)self _selectBookmarksWhere:@"url LIKE ? AND deleted = 0 AND parent = ? LIMIT 1"];
  }

  else
  {
    v10 = [(WebBookmarkCollection *)self _selectBookmarksWhere:@"url = ? AND deleted = 0 AND parent = ? ORDER BY last_modified ASC LIMIT 1"];
    stringCopy = stringCopy;
  }

  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v16, v10);
  sqlite3_bind_text(v17, 1, [stringCopy UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  sqlite3_bind_int(v17, 2, parent);
  if (sqlite3_step(v17) == 100)
  {
    v11 = [WebBookmark alloc];
    v12 = v17;
    currentDeviceIdentifier = [(WebBookmarkCollection *)self currentDeviceIdentifier];
    v14 = [(WebBookmark *)v11 initWithSQLiteStatement:v12 deviceIdentifier:currentDeviceIdentifier collectionType:[(WBCollectionConfiguration *)self->_configuration collectionType]];
  }

  else
  {
    v14 = 0;
  }

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v16);

  return v14;
}

- (id)_mergeCandidateFolderWithTitle:(id)title parent:(int)parent mergeMode:(int64_t)mode
{
  titleCopy = title;
  if (mode)
  {
    v9 = &stru_288259858;
    if (mode == 1)
    {
      v9 = @"AND server_id IS NULL";
    }

    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"type = 1 AND title = ? AND parent = ? AND deleted = 0 %@", v9];
    WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v16, [(WebBookmarkCollection *)self _selectBookmarksWhere:v10]);
    if (v18)
    {
      sqlite3_bind_text(v17, 1, [titleCopy UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
      sqlite3_bind_int(v17, 2, parent);
      while (sqlite3_step(v17) == 100)
      {
        v11 = [WebBookmark alloc];
        v12 = v17;
        currentDeviceIdentifier = [(WebBookmarkCollection *)self currentDeviceIdentifier];
        v14 = [(WebBookmark *)v11 initWithSQLiteStatement:v12 deviceIdentifier:currentDeviceIdentifier collectionType:[(WBCollectionConfiguration *)self->_configuration collectionType]];

        if (mode == 1 || ![(WebBookmarkCollection *)self _bookmarkHasSyncedToServer:v14])
        {
          goto LABEL_11;
        }
      }
    }

    v14 = 0;
LABEL_11:
    WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v16);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)_mergeCandidateBookmarkWithTitle:(id)title address:(id)address parent:(int)parent mergeMode:(int64_t)mode
{
  titleCopy = title;
  addressCopy = address;
  if (mode == 1)
  {
    v12 = @"type = 0 AND url = ?1 AND parent = ?2 AND deleted = 0 AND server_id IS NULL";
  }

  else
  {
    if (mode != 2)
    {
      v13 = 0;
      goto LABEL_17;
    }

    v12 = @"type = 0 AND title = ?3 AND url = ?1 AND parent = ?2 AND deleted = 0";
  }

  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v18, [(WebBookmarkCollection *)self _selectBookmarksWhere:v12]);
  if (v20)
  {
    sqlite3_bind_text(v19, 1, [addressCopy UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
    sqlite3_bind_int(v19, 2, parent);
    if (mode == 2)
    {
      if (titleCopy)
      {
        sqlite3_bind_text(v19, 3, [titleCopy UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
      }

      else
      {
        sqlite3_bind_null(v19, 3);
      }
    }

    while (sqlite3_step(v19) == 100)
    {
      v14 = [WebBookmark alloc];
      v15 = v19;
      currentDeviceIdentifier = [(WebBookmarkCollection *)self currentDeviceIdentifier];
      v13 = [(WebBookmark *)v14 initWithSQLiteStatement:v15 deviceIdentifier:currentDeviceIdentifier collectionType:[(WBCollectionConfiguration *)self->_configuration collectionType]];

      if (mode == 1 || ![(WebBookmarkCollection *)self _bookmarkHasSyncedToServer:v13])
      {
        goto LABEL_16;
      }
    }
  }

  v13 = 0;
LABEL_16:
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v18);
LABEL_17:

  return v13;
}

- (void)_createFreshDatabase
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_createSchema
{
  [(WebBookmarkCollection *)self _executeSQLWithCString:"CREATE TABLE generations (generation INTEGER NOT NULL)"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"INSERT INTO generations (generation) VALUES (1)"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"CREATE TABLE sync_properties (key TEXT NOT NULL, value TEXT NOT NULL)"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"CREATE INDEX sync_properties_key_index ON sync_properties (key)"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"INSERT INTO sync_properties (key, value) VALUES ('_dav_generation', 1)"];
  [(WebBookmarkCollection *)self _clearAndCreateBookmarksTables];
  if (isIPad(void)::onceToken != -1)
  {
    [WebBookmarkCollection _createSchema];
  }

  if (isIPad(void)::result == 1 && ![(WBCollectionConfiguration *)self->_configuration collectionType])
  {
    v3 = MEMORY[0x277CCACA8];
    _uniqueExternalUUID = [objc_opt_class() _uniqueExternalUUID];
    v5 = [v3 stringWithFormat:@"INSERT INTO bookmarks (id, special_id, parent, type, order_index, num_children, editable, deletable, title, external_uuid) VALUES (1, 1, 0, 1, 0, 0, 0, 0, 'BookmarksBar', '%@')", _uniqueExternalUUID];
    [(WebBookmarkCollection *)self _executeSQL:v5];

    [(WebBookmarkCollection *)self _executeSQLWithCString:"UPDATE bookmarks SET num_children = 1 WHERE id = 0"];
  }

  [(WebBookmarkCollection *)self _clearAndCreateAncestorTable];
}

- (id)currentTabServerIDPresenceForParticipant:(id)participant getTabGroupServerID:(id *)d
{
  participantCopy = participant;
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v9, self->_db, "SELECT tab_group_server_id, tab_server_id FROM participant_presence WHERE participant_id = ?");
  sqlite3_bind_text(v10, 1, [participantCopy UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  if (sqlite3_step(v10) == 100)
  {
    *d = WBUTF8StringFromSQLStatement(v10, 0);
    v7 = WBUTF8StringFromSQLStatement(v10, 1);
  }

  else
  {
    v7 = 0;
  }

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v9);

  return v7;
}

- (id)currentTabServerIDPresenceForParticipant:(id)participant inTabGroupWithServerID:(id)d
{
  participantCopy = participant;
  dCopy = d;
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v10, self->_db, "SELECT tab_server_id FROM participant_presence WHERE participant_id = ? AND tab_group_server_id = ?");
  sqlite3_bind_text(v11, 1, [participantCopy UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  sqlite3_bind_text(v11, 2, [dCopy UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  if (sqlite3_step(v11) == 100)
  {
    v8 = WBUTF8StringFromSQLStatement(v11, 0);
  }

  else
  {
    v8 = 0;
  }

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v10);

  return v8;
}

- (BOOL)setPresenceInTabWithServerID:(id)d tabGroupWithServerID:(id)iD forParticipant:(id)participant
{
  dCopy = d;
  iDCopy = iD;
  participantCopy = participant;
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v15, self->_db, "DELETE FROM participant_presence WHERE participant_id = ?");
  sqlite3_bind_text(v16, 1, [participantCopy UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  if (sqlite3_step(v16) == 101)
  {
    WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(&v13, self->_db, "INSERT INTO participant_presence (participant_id, tab_group_server_id, tab_server_id) VALUES (?, ?, ?)");
    sqlite3_bind_text(v14, 1, [participantCopy UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
    sqlite3_bind_text(v14, 2, [iDCopy UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
    sqlite3_bind_text(v14, 3, [dCopy UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
    v11 = sqlite3_step(v14) == 101;
    WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(&v13);
  }

  else
  {
    v11 = 0;
  }

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v15);

  return v11;
}

- (BOOL)removePresenceForParticipant:(id)participant inTabGroupWithServerID:(id)d
{
  participantCopy = participant;
  dCopy = d;
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v9, self->_db, "DELETE FROM participant_presence WHERE participant_id = ? AND tab_group_server_id = ?");
  sqlite3_bind_text(v10, 1, [participantCopy UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  sqlite3_bind_text(v10, 2, [dCopy UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  LOBYTE(self) = sqlite3_step(v10) == 101;
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v9);

  return self;
}

- (BOOL)removeUnusedPresenceRecords
{
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v4, self->_db, "DELETE FROM participant_presence WHERE tab_group_server_id NOT IN (SELECT server_id FROM bookmarks WHERE type = 1 AND subtype = 0) OR tab_server_id NOT IN (SELECT server_id FROM bookmarks WHERE type = 0 AND subtype = 0)");
  v2 = sqlite3_step(v5) == 101;
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v4);
  return v2;
}

- (id)presenceTabUUIDForParticipant:(id)participant inTabGroupWithServerID:(id)d
{
  participantCopy = participant;
  dCopy = d;
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v10, self->_db, "SELECT bookmarks.external_uuid FROM bookmarks INNER JOIN participant_presence ON bookmarks.server_id = participant_presence.tab_server_id WHERE participant_id = ? AND tab_group_server_id = ?");
  sqlite3_bind_text(v11, 1, [participantCopy UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  sqlite3_bind_text(v11, 2, [dCopy UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  if (sqlite3_step(v11) == 100)
  {
    v8 = WBUTF8StringFromSQLStatement(v11, 0);
  }

  else
  {
    v8 = 0;
  }

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v10);

  return v8;
}

- (id)activeParticipantsInTabGroupWithServerID:(id)d
{
  dCopy = d;
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v9, self->_db, "SELECT participant_id FROM participant_presence WHERE tab_group_server_id = ?");
  sqlite3_bind_text(v10, 1, [dCopy UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  v5 = [MEMORY[0x277CBEB58] set];
  while (sqlite3_step(v10) == 100)
  {
    v6 = WBUTF8StringFromSQLStatement(v10, 0);
    if ([v6 length])
    {
      [v5 addObject:v6];
    }
  }

  v7 = [v5 copy];

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v9);

  return v7;
}

- (id)activeParticipantsInTabWithServerID:(id)d
{
  dCopy = d;
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v9, self->_db, "SELECT participant_id FROM participant_presence WHERE tab_server_id = ?");
  sqlite3_bind_text(v10, 1, [dCopy UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  v5 = [MEMORY[0x277CBEB58] set];
  while (sqlite3_step(v10) == 100)
  {
    v6 = WBUTF8StringFromSQLStatement(v10, 0);
    if ([v6 length])
    {
      [v5 addObject:v6];
    }
  }

  v7 = [v5 copy];

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v9);

  return v7;
}

- (void)markChildrenInFolderAsRead:(id)read
{
  v17 = *MEMORY[0x277D85DE8];
  readCopy = read;
  v5 = -[WebBookmarkCollection listWithID:](self, "listWithID:", [readCopy identifier]);
  bookmarkArray = [v5 bookmarkArray];

  if ([bookmarkArray count])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = bookmarkArray;
    v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v12 + 1) + 8 * v10++) markAsRead];
        }

        while (v8 != v10);
        v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }

    [(WebBookmarkCollection *)self saveBookmarks:v7 postNotification:0];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (int64_t)subtypeOfBookmarkWithServerID:(id)d
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT subtype FROM bookmarks WHERE server_id = '%@'", d];
  v5 = [(WebBookmarkCollection *)self _intFromExecutingSQL:v4];

  if (v5 == -1)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

- (void)_clearAndCreateBookmarksTitleWordTable
{
  [(WebBookmarkCollection *)self _executeSQLWithCString:"DROP TABLE IF EXISTS bookmark_title_words"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"CREATE TABLE bookmark_title_words (id INTEGER PRIMARY KEY AUTOINCREMENT, bookmark_id INTEGER NOT NULL CONSTRAINT fk_bookmark_id REFERENCES bookmarks(id) ON DELETE CASCADE, word TEXT, word_index INTEGER)"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"CREATE TRIGGER fkd_bookmark_title_words_bookmark_id BEFORE DELETE ON bookmarks      FOR EACH ROW BEGIN DELETE FROM bookmark_title_words WHERE bookmark_id = OLD.id;      END;"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"CREATE INDEX title_word_index ON bookmark_title_words(word)"];

  [(WebBookmarkCollection *)self _executeSQLWithCString:"CREATE INDEX title_bookmark_id_index ON bookmark_title_words(bookmark_id)"];
}

- (void)_clearAndCreateBookmarksTables
{
  [(WebBookmarkCollection *)self _executeSQLWithCString:"DROP TABLE IF EXISTS bookmarks"];
  [(WebBookmarkCollection *)self _executeSQL:@"CREATE TABLE bookmarks (id INTEGER PRIMARY KEY AUTOINCREMENT, special_id INTEGER DEFAULT 0, parent INTEGER, type INTEGER, title TEXT, url TEXT COLLATE NOCASE, num_children INTEGER DEFAULT 0, editable INTEGER DEFAULT 1, deletable INTEGER DEFAULT 1, hidden INTEGER DEFAULT 0, hidden_ancestor_count INTEGER DEFAULT 0, order_index INTEGER NOT NULL, external_uuid TEXT UNIQUE, read INTEGER DEFAULT NULL, last_modified REAL DEFAULT NULL, server_id TEXT, sync_key TEXT, sync_data BLOB, added INTEGER DEFAULT 1, deleted INTEGER DEFAULT 0, extra_attributes BLOB DEFAULT NULL, local_attributes BLOB DEFAULT NULL, fetched_icon BOOL DEFAULT 0, icon BLOB DEFAULT NULL, dav_generation INTEGER DEFAULT 0, locally_added BOOL DEFAULT 0, archive_status INTEGER DEFAULT 0, syncable BOOL DEFAULT 1, web_filter_status INTEGER DEFAULT 0, modified_attributes UNSIGNED BIG INT DEFAULT 0, date_closed REAL DEFAULT NULL, last_selected_child INTEGER DEFAULT NULL, subtype INTEGER DEFAULT 0, FOREIGN KEY (last_selected_child) REFERENCES bookmarks (id) ON DELETE SET NULL)"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"CREATE INDEX special_id_index ON bookmarks (special_id)"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"CREATE INDEX autocomplete_index ON bookmarks (url)"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"CREATE INDEX folder_list_index ON bookmarks (parent, type, order_index)"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"CREATE INDEX group_index ON bookmarks (parent, order_index)"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"CREATE INDEX sync_index ON bookmarks (external_uuid)"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"CREATE INDEX server_id_index ON bookmarks(server_id)"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"CREATE INDEX dav_generation_index ON bookmarks(dav_generation)"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"CREATE INDEX reading_list_index ON bookmarks (parent, deleted, web_filter_status, order_index DESC)"];
  [(WebBookmarkCollection *)self _clearAndCreateBookmarksTitleWordTable];
  [(WebBookmarkCollection *)self _clearAndCreateAncestorTable];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"INSERT INTO bookmarks (id, type, order_index, num_children, title, external_uuid) VALUES (0, 1, 0, 0, 'Root', '%@')", @"Root"];
  -[WebBookmarkCollection _executeSQLWithCString:](self, "_executeSQLWithCString:", [v3 UTF8String]);
}

- (void)_migrateSchemaVersion0ToVersion1
{
  [(WebBookmarkCollection *)self _executeSQLWithCString:"BEGIN"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"ALTER TABLE bookmarks ADD COLUMN special_id INTEGER DEFAULT 0"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"CREATE INDEX special_id_index ON bookmarks (special_id)"];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"UPDATE bookmarks SET title = 'Root', external_uuid = '%@' WHERE id = 0", @"Root"];
  -[WebBookmarkCollection _executeSQLWithCString:](self, "_executeSQLWithCString:", [v3 UTF8String]);

  [(WebBookmarkCollection *)self _executeSQLWithCString:"UPDATE bookmarks SET special_id = 1 WHERE id = 1"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"UPDATE bookmarks SET special_id = 2 WHERE id = 2"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"PRAGMA user_version = 1"];

  [(WebBookmarkCollection *)self _executeSQLWithCString:"END"];
}

- (void)_migrateSchemaVersion1And2ToVersion3
{
  [(WebBookmarkCollection *)self _executeSQLWithCString:"BEGIN"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"DROP TABLE IF EXISTS bookmark_title_words"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"CREATE TABLE bookmark_title_words (id INTEGER PRIMARY KEY, bookmark_id INTEGER NOT NULL CONSTRAINT fk_bookmark_id REFERENCES bookmarks(id) ON DELETE CASCADE, word TEXT, word_index INTEGER)"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"CREATE TRIGGER fkd_bookmark_title_words_bookmark_id BEFORE DELETE ON bookmarks         FOR EACH ROW BEGIN DELETE FROM bookmark_title_words WHERE bookmark_id = OLD.id;         END;"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"CREATE INDEX title_word_index ON bookmark_title_words(word)"];
  [(WebBookmarkCollection *)self _indexAllTitleWords];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"PRAGMA user_version = 3"];

  [(WebBookmarkCollection *)self _executeSQLWithCString:"END"];
}

- (void)_migrateSchemaVersion3ToVersion4
{
  [(WebBookmarkCollection *)self _executeSQLWithCString:"BEGIN"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"ALTER TABLE bookmarks ADD COLUMN server_id TEXT"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"ALTER TABLE bookmarks ADD COLUMN sync_key TEXT"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"ALTER TABLE bookmarks ADD COLUMN sync_data BLOB"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"CREATE INDEX server_id_index ON bookmarks(server_id)"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"PRAGMA user_version = 4"];

  [(WebBookmarkCollection *)self _executeSQLWithCString:"END"];
}

- (void)_migrateSchemaVersion4ToVersion5
{
  [(WebBookmarkCollection *)self _executeSQLWithCString:"BEGIN"];
  if (!WebBookmarks::BookmarkSQLStatement::selectInt(self->_db, "SELECT count(*) FROM sync_properties WHERE key = '_dav_generation'", v3))
  {
    [(WebBookmarkCollection *)self _executeSQLWithCString:"INSERT INTO sync_properties (key, value) VALUES ('_dav_generation', 1)"];
  }

  [(WebBookmarkCollection *)self _executeSQLWithCString:"ALTER TABLE bookmarks ADD COLUMN deleted INTEGER DEFAULT 0"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"ALTER TABLE bookmarks ADD COLUMN dav_generation INTEGER DEFAULT 0"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"CREATE INDEX dav_generation_index ON bookmarks(dav_generation)"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"PRAGMA user_version = 5"];

  [(WebBookmarkCollection *)self _executeSQLWithCString:"END"];
}

- (void)_migrateSchemaVersion5ToVersion6
{
  [(WebBookmarkCollection *)self _executeSQLWithCString:"BEGIN"];
  [(WebBookmarkCollection *)self _normalizeDatabaseURLs];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"PRAGMA user_version = 6"];

  [(WebBookmarkCollection *)self _executeSQLWithCString:"END"];
}

- (void)_migrateSchemaVersion6ToVersion7
{
  [(WebBookmarkCollection *)self _executeSQLWithCString:"BEGIN"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"CREATE TABLE folder_ancestors (id INTEGER PRIMARY KEY, folder_id INTEGER NOT NULL CONSTRAINT fk_ancestors_folder_id REFERENCES bookmarks(id) ON DELETE CASCADE, ancestor_id INTEGER NOT NULL)"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"CREATE TRIGGER fkd_ancestors_folder_id BEFORE DELETE ON bookmarks FOR EACH ROW BEGIN DELETE FROM folder_ancestors WHERE folder_id = OLD.id; END;"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"CREATE INDEX ancestor_folder_id_index on folder_ancestors(folder_id)"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"CREATE INDEX ancestor_ancestor_id_index on folder_ancestors(ancestor_id)"];
  [(WebBookmarkCollection *)self _rebuildAncestorTable];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"PRAGMA user_version = 7"];

  [(WebBookmarkCollection *)self _executeSQLWithCString:"END"];
}

- (void)_migrateSchemaVersion7ToVersion8
{
  [(WebBookmarkCollection *)self _executeSQLWithCString:"BEGIN"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"ALTER TABLE bookmarks ADD COLUMN extra_attributes BLOB DEFAULT NULL"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"PRAGMA user_version = 8"];

  [(WebBookmarkCollection *)self _executeSQLWithCString:"END"];
}

- (void)_migrateSchemaVersion8ToVersion9
{
  [(WebBookmarkCollection *)self _executeSQLWithCString:"BEGIN"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"DROP INDEX IF EXISTS deleted_index"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"DROP INDEX IF EXISTS autocomplete_index"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"CREATE INDEX autocomplete_index ON bookmarks(url)"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"PRAGMA user_version = 9"];

  [(WebBookmarkCollection *)self _executeSQLWithCString:"END"];
}

- (void)_migrateSchemaVersion9ToVersion10
{
  [(WebBookmarkCollection *)self _executeSQLWithCString:"BEGIN"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"ALTER TABLE bookmarks ADD COLUMN hidden INTEGER DEFAULT 0"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"PRAGMA user_version = 10"];

  [(WebBookmarkCollection *)self _executeSQLWithCString:"END"];
}

- (void)_migrateSchemaVersion10ToVersion11
{
  [(WebBookmarkCollection *)self _executeSQLWithCString:"BEGIN"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"ALTER TABLE bookmarks ADD COLUMN hidden_ancestor_count INTEGER DEFAULT 0"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"PRAGMA user_version = 11"];

  [(WebBookmarkCollection *)self _executeSQLWithCString:"END"];
}

- (void)_migrateSchemaVersion11And12And13ToVersion14
{
  [(WebBookmarkCollection *)self _executeSQLWithCString:"BEGIN"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"ALTER TABLE bookmarks ADD COLUMN read INTEGER DEFAULT NULL"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"ALTER TABLE bookmarks ADD COLUMN last_modified REAL DEFAULT NULL"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"PRAGMA user_version = 14"];

  [(WebBookmarkCollection *)self _executeSQLWithCString:"END"];
}

- (void)_migrateSchemaVersion14ToVersion15
{
  [(WebBookmarkCollection *)self _executeSQLWithCString:"BEGIN"];
  v4 = WebBookmarks::BookmarkSQLStatement::selectInt(self->_db, "SELECT id FROM bookmarks WHERE special_id = 3", v3);
  if (v4 >= 1)
  {
    v5 = v4;
    WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v6, self->_db, "UPDATE bookmarks SET read = 0 WHERE read IS NULL and parent = ?");
    sqlite3_bind_int(v7, 1, v5);
    sqlite3_step(v7);
    WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v6);
  }

  [(WebBookmarkCollection *)self _executeSQLWithCString:"PRAGMA user_version = 15"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"END"];
}

- (void)_migrateSchemaVersion15ToVersion16
{
  [(WebBookmarkCollection *)self _executeSQLWithCString:"BEGIN"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"CREATE INDEX title_word_bookmark_id_index ON bookmark_title_words(bookmark_id)"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"PRAGMA user_version = 16"];

  [(WebBookmarkCollection *)self _executeSQLWithCString:"END"];
}

- (void)_migrateSchemaVersion16AndVersion17AndVersion18ToVersion19
{
  [(WebBookmarkCollection *)self _executeSQLWithCString:"BEGIN"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"UPDATE bookmarks SET num_children = (SELECT COUNT(*) FROM bookmarks AS count_bookmarks WHERE count_bookmarks.parent = bookmarks.id AND hidden = 0) WHERE type = 1"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"PRAGMA user_version = 19"];

  [(WebBookmarkCollection *)self _executeSQLWithCString:"END"];
}

- (void)_migrateSchemaVersion19And20ToVersion21
{
  [(WebBookmarkCollection *)self _executeSQLWithCString:"BEGIN"];
  readingListFolderBookmarkID = [(WebBookmarkCollection *)self readingListFolderBookmarkID];
  if (readingListFolderBookmarkID)
  {
    v4 = readingListFolderBookmarkID;
    WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v8, self->_db, "SELECT count(*) FROM bookmarks WHERE parent = ? AND deleted = 0");
    sqlite3_bind_int(v9, 1, v4);
    sqlite3_step(v9);
    v5 = sqlite3_column_int(v9, 0);
    WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(&v6, self->_db, "UPDATE bookmarks SET order_index = ? - order_index - 1 WHERE parent = ?");
    sqlite3_bind_int(v7, 1, v5);
    sqlite3_bind_int(v7, 2, v4);
    sqlite3_step(v7);
    WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(&v6);
    WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v8);
  }

  [(WebBookmarkCollection *)self _executeSQLWithCString:"PRAGMA user_version = 21"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"END"];
}

- (void)_migrateSchemaVersion21ToVersion22
{
  [(WebBookmarkCollection *)self _executeSQLWithCString:"BEGIN"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"ALTER TABLE bookmarks ADD COLUMN icon BLOB DEFAULT NULL"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"ALTER TABLE bookmarks ADD COLUMN fetched_icon BOOL DEFAULT 0"];
  currentRecordGeneration = [(WebBookmarkCollection *)self currentRecordGeneration];
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v12, self->_db, "SELECT id, extra_attributes FROM bookmarks WHERE deleted = 0 AND parent = ?");
  sqlite3_bind_int(v13, 1, [(WebBookmarkCollection *)self readingListFolderBookmarkID]);
  while (sqlite3_step(v13) == 100)
  {
    v3 = sqlite3_column_int(v13, 0);
    v4 = WBDataFromNullableColumn(v13, 1);
    if (v4)
    {
      v5 = [MEMORY[0x277CCAC58] propertyListWithData:v4 options:2 format:0 error:0];
      v6 = [v5 objectForKey:@"com.apple.ReadingList"];
      v7 = [v6 objectForKey:@"Icon"];
      if (v7)
      {
        v8 = [v6 objectForKey:@"DateLastFetchedIcon"];

        [v6 removeObjectForKey:@"Icon"];
        [v6 removeObjectForKey:@"DateLastFetchedIcon"];
        WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v10, self->_db, "UPDATE bookmarks SET icon = ?, fetched_icon = ?, extra_attributes = ?, dav_generation = ? WHERE id = ?");
        bindNullableDataToSQLStatement(v11, 1, v7);
        sqlite3_bind_int(v11, 2, v8 != 0);
        bindAttributesToSQLStatement(v11, 3, v5);
        sqlite3_bind_int64(v11, 4, currentRecordGeneration);
        sqlite3_bind_int(v11, 5, v3);
        sqlite3_step(v11);
        WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v10);
      }
    }
  }

  [(WebBookmarkCollection *)self _executeSQLWithCString:"PRAGMA user_version = 22"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"END"];
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v12);
}

- (void)_migrateSchemaVersion22ToVersion23
{
  [(WebBookmarkCollection *)self _executeSQLWithCString:"BEGIN"];
  currentRecordGeneration = [(WebBookmarkCollection *)self currentRecordGeneration];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"DELETE FROM sync_properties WHERE key = '_dav_generation'"];
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v4, self->_db, "INSERT INTO sync_properties (key, value) VALUES ('_dav_generation', ?)");
  sqlite3_bind_int64(v5, 1, currentRecordGeneration);
  sqlite3_step(v5);
  [(WebBookmarkCollection *)self _executeSQLWithCString:"PRAGMA user_version = 23"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"END"];
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v4);
}

- (void)_migrateSchemaVersion23ToVersion24
{
  [(WebBookmarkCollection *)self _executeSQLWithCString:"BEGIN"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"ALTER TABLE bookmarks ADD COLUMN added INTEGER DEFAULT 1"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"UPDATE bookmarks SET added = 0 WHERE server_id IS NOT NULL"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"PRAGMA user_version = 24"];

  [(WebBookmarkCollection *)self _executeSQLWithCString:"END"];
}

- (void)_migrateSchemaVersion24ToVersion25
{
  [(WebBookmarkCollection *)self _executeSQLWithCString:"BEGIN"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"ALTER TABLE bookmarks ADD COLUMN archived_offline BOOL DEFAULT 0"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"ALTER TABLE bookmarks ADD COLUMN last_archived REAL DEFAULT NULL"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"PRAGMA user_version = 25"];

  [(WebBookmarkCollection *)self _executeSQLWithCString:"END"];
}

- (void)_migrateSchemaVersion25ToVersion26
{
  WebBookmarks::BookmarkSQLStatement::executeSQL(self->_db, "PRAGMA journal_mode = wal", v2);
  db = self->_db;

  WebBookmarks::BookmarkSQLStatement::executeSQL(db, "PRAGMA user_version = 26", v4);
}

- (void)_migrateSchemaVersion26ToVersion27
{
  [(WebBookmarkCollection *)self _clearAndCreateBookmarksTitleWordTable];
  [(WebBookmarkCollection *)self _indexAllTitleWords];

  [(WebBookmarkCollection *)self _executeSQLWithCString:"PRAGMA user_version = 27"];
}

- (void)_migrateSchemaVersion27ToVersion28
{
  [(WebBookmarkCollection *)self _executeSQLWithCString:"CREATE INDEX title_bookmark_id_index ON bookmark_title_words(bookmark_id)"];

  [(WebBookmarkCollection *)self _executeSQLWithCString:"PRAGMA user_version = 28"];
}

- (void)_migrateSchemaVersion28ToVersion29
{
  [(WebBookmarkCollection *)self _executeSQLWithCString:"BEGIN"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"ALTER TABLE bookmarks ADD COLUMN locally_added BOOL DEFAULT 0"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"PRAGMA user_version = 29"];

  [(WebBookmarkCollection *)self _executeSQLWithCString:"END"];
}

- (void)_migrateSchemaVersion29ToVersion30
{
  v25[1] = *MEMORY[0x277D85DE8];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"BEGIN"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"ALTER TABLE bookmarks ADD COLUMN local_attributes BLOB DEFAULT NULL"];
  currentRecordGeneration = [(WebBookmarkCollection *)self currentRecordGeneration];
  selfCopy = self;
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v22, self->_db, "SELECT id, extra_attributes, last_archived FROM bookmarks WHERE deleted = 0 AND parent = ?");
  sqlite3_bind_int(v23, 1, [(WebBookmarkCollection *)self readingListFolderBookmarkID]);
  while (sqlite3_step(v23) == 100)
  {
    v3 = sqlite3_column_int(v23, 0);
    v4 = WBDataFromNullableColumn(v23, 1);
    v5 = sqlite3_column_double(v23, 2);
    v6 = v5;
    if (v4 || v5 != 0.0)
    {
      if (v4)
      {
        v7 = [MEMORY[0x277CCAC58] propertyListWithData:v4 options:2 format:0 error:0];
        v8 = [v7 objectForKey:@"com.apple.ReadingList"];
      }

      else
      {
        v7 = 0;
        v8 = 0;
      }

      v9 = [v8 objectForKey:@"NextPageURLs"];
      v10 = v9;
      if (v6 != 0.0 || v9)
      {
        v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
        if (v6 != 0.0)
        {
          v13 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v6];
          [v12 setObject:v13 forKey:@"DateLastArchived"];
        }

        if (v10)
        {
          [v12 setObject:v10 forKey:@"NextPageURLs"];
        }

        v14 = objc_alloc(MEMORY[0x277CBEAC0]);
        v25[0] = v12;
        v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
        v24 = @"com.apple.ReadingList";
        v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
        v11 = [v14 initWithObjects:v15 forKeys:v16];
      }

      else
      {
        v11 = 0;
      }

      if (v8)
      {
        [v8 removeObjectForKey:@"NextPageURLs"];
        [v7 setObject:v8 forKey:@"com.apple.ReadingList"];
      }

      WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v20, selfCopy->_db, "UPDATE bookmarks SET extra_attributes = ?, local_attributes = ?, dav_generation = ? WHERE id = ?");
      if (v7)
      {
        bindAttributesToSQLStatement(v21, 1, v7);
      }

      else
      {
        sqlite3_bind_null(v21, 1);
      }

      if (v11)
      {
        bindAttributesToSQLStatement(v21, 2, v11);
      }

      else
      {
        sqlite3_bind_null(v21, 2);
      }

      sqlite3_bind_int64(v21, 3, currentRecordGeneration);
      sqlite3_bind_int(v21, 4, v3);
      sqlite3_step(v21);
      WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v20);
    }
  }

  [(WebBookmarkCollection *)selfCopy _executeSQLWithCString:"ALTER TABLE bookmarks DROP COLUMN last_archived"];
  [(WebBookmarkCollection *)selfCopy _executeSQLWithCString:"PRAGMA user_version = 30"];
  [(WebBookmarkCollection *)selfCopy _executeSQLWithCString:"END"];
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v22);
  v17 = *MEMORY[0x277D85DE8];
}

- (void)_migrateSchemaVersion30ToVersion31
{
  [(WebBookmarkCollection *)self _executeSQLWithCString:"BEGIN"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"ALTER TABLE bookmarks ADD COLUMN archive_status INTEGER DEFAULT 0"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"UPDATE bookmarks SET archive_status = archived_offline"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"UPDATE bookmarks SET archived_offline = NULL"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"UPDATE bookmarks SET last_archived = NULL"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"PRAGMA user_version = 31"];

  [(WebBookmarkCollection *)self _executeSQLWithCString:"END"];
}

- (void)_migrateSchemaVersion31ToVersion32
{
  [(WebBookmarkCollection *)self _clearAndCreateBookmarksTitleWordTable];
  [(WebBookmarkCollection *)self _indexAllTitleWords];

  [(WebBookmarkCollection *)self _executeSQLWithCString:"PRAGMA user_version = 32"];
}

- (void)_migrateSchemaVersion32ToVersion33
{
  [(WebBookmarkCollection *)self _executeSQLWithCString:"BEGIN"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"UPDATE bookmarks SET fetched_icon = 0, icon = NULL WHERE parent = (SELECT id FROM bookmarks WHERE special_id = 3)"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"PRAGMA user_version = 33"];

  [(WebBookmarkCollection *)self _executeSQLWithCString:"END"];
}

- (void)_migrateSchemaVersion33ToVersion34
{
  [(WebBookmarkCollection *)self _executeSQLWithCString:"BEGIN"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"ALTER TABLE bookmarks ADD COLUMN syncable BOOL DEFAULT 1"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"PRAGMA user_version = 34"];

  [(WebBookmarkCollection *)self _executeSQLWithCString:"END"];
}

- (void)_migrateSchemaVersion34ToVersion35
{
  [(WebBookmarkCollection *)self _executeSQLWithCString:"BEGIN"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"UPDATE bookmarks SET archive_status = 0 WHERE archive_status IS NULL"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"PRAGMA user_version = 35"];

  [(WebBookmarkCollection *)self _executeSQLWithCString:"END"];
}

- (void)_migrateSchemaVersion35ToVersion36
{
  [(WebBookmarkCollection *)self _executeSQLWithCString:"BEGIN"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"ALTER TABLE bookmarks ADD COLUMN web_filter_status INTEGER DEFAULT 0"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"PRAGMA user_version = 36"];

  [(WebBookmarkCollection *)self _executeSQLWithCString:"END"];
}

- (void)_migrateSchemaVersion36ToVersion37
{
  [(WebBookmarkCollection *)self _executeSQLWithCString:"BEGIN"];
  [(WebBookmarkCollection *)self deleteAllFavoriteIcons];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"PRAGMA user_version = 37"];

  [(WebBookmarkCollection *)self _executeSQLWithCString:"END"];
}

- (void)_migrateSchemaVersion37ToVersion38
{
  [(WebBookmarkCollection *)self _executeSQLWithCString:"BEGIN"];
  [(WebBookmarkCollection *)self markAllFavoritesAsNeedingIcons];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"PRAGMA user_version = 38"];

  [(WebBookmarkCollection *)self _executeSQLWithCString:"END"];
}

- (void)_migrateSchemaVersion38ToVersion39
{
  [(WebBookmarkCollection *)self _executeSQLWithCString:"BEGIN"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"ALTER TABLE bookmarks ADD COLUMN modified_attributes UNSIGNED BIG INT DEFAULT 0"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"PRAGMA user_version = 39"];

  [(WebBookmarkCollection *)self _executeSQLWithCString:"END"];
}

- (void)_migrateSchemaVersion39Or40ToVersion41
{
  [(WebBookmarkCollection *)self _executeSQLWithCString:"BEGIN"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"DELETE FROM bookmark_title_words WHERE bookmark_id NOT IN (SELECT id FROM bookmarks)"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"DELETE FROM folder_ancestors WHERE folder_id NOT IN (SELECT id FROM bookmarks)"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"ALTER TABLE bookmarks ADD COLUMN date_closed REAL DEFAULT NULL"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"PRAGMA user_version = 41"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"END"];

  [(WebBookmarkCollection *)self _enableForeignKeys];
}

- (void)_migrateSchemaVersion41ToVersion42
{
  [(WebBookmarkCollection *)self _executeSQLWithCString:"BEGIN"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"ALTER TABLE bookmarks ADD COLUMN last_selected_child INTEGER DEFAULT NULL"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"ALTER TABLE bookmarks ADD FOREIGN KEY (last_selected_child) REFERENCES bookmarks (id) ON DELETE SET NULL"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"PRAGMA user_version = 42"];

  [(WebBookmarkCollection *)self _executeSQLWithCString:"END"];
}

- (void)_migrateSchemaVersion42ToVersion43
{
  [(WebBookmarkCollection *)self _executeSQLWithCString:"BEGIN"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"CREATE INDEX reading_list_index ON bookmarks (parent, deleted, web_filter_status, order_index DESC)"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"PRAGMA user_version = 43"];

  [(WebBookmarkCollection *)self _executeSQLWithCString:"END"];
}

- (void)_migrateSchemaVersion43ToVersion44
{
  [(WebBookmarkCollection *)self _executeSQLWithCString:"BEGIN"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"PRAGMA user_version = 44"];

  [(WebBookmarkCollection *)self _executeSQLWithCString:"END"];
}

- (void)_migrateSchemaVersion44ToVersion45
{
  [(WebBookmarkCollection *)self _executeSQLWithCString:"BEGIN"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"PRAGMA user_version = 45"];

  [(WebBookmarkCollection *)self _executeSQLWithCString:"END"];
}

- (void)_migrateSchemaVersion45ToVersion46
{
  [(WebBookmarkCollection *)self _executeSQLWithCString:"BEGIN"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"ALTER TABLE bookmarks ADD COLUMN subtype INTEGER DEFAULT 0"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"PRAGMA user_version = 46"];

  [(WebBookmarkCollection *)self _executeSQLWithCString:"END"];
}

- (void)_migrateSchemaVersion46ToVersion47
{
  [(WebBookmarkCollection *)self _executeSQLWithCString:"BEGIN"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"PRAGMA user_version = 47"];

  [(WebBookmarkCollection *)self _executeSQLWithCString:"END"];
}

- (void)_migrateSchemaVersion47ToVersion48
{
  [(WebBookmarkCollection *)self _executeSQLWithCString:"BEGIN"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"DROP TABLE IF EXISTS participants"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"PRAGMA user_version = 48"];

  [(WebBookmarkCollection *)self _executeSQLWithCString:"END"];
}

- (void)_migrateSchemaVersion48ToVersion49
{
  [(WebBookmarkCollection *)self _executeSQLWithCString:"BEGIN"];
  if ([(WebBookmarkCollection *)self maintainsSyncMetadata])
  {
    WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v11, [(WebBookmarkCollection *)self _selectBookmarksWhere:@"deleted = 1"]);
    while (sqlite3_step(v12) == 100)
    {
      v3 = objc_autoreleasePoolPush();
      v4 = [WebBookmark alloc];
      v5 = v12;
      currentDeviceIdentifier = [(WebBookmarkCollection *)self currentDeviceIdentifier];
      v7 = [(WebBookmark *)v4 initWithSQLiteStatement:v5 deviceIdentifier:currentDeviceIdentifier collectionType:[(WBCollectionConfiguration *)self->_configuration collectionType]];

      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __59__WebBookmarkCollection__migrateSchemaVersion48ToVersion49__block_invoke;
      v9[3] = &unk_279E76110;
      v8 = v7;
      v10 = v8;
      [(WebBookmarkCollection *)self updateSyncDataForBookmark:v8 usingBlock:v9];

      objc_autoreleasePoolPop(v3);
    }

    WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v11);
  }

  [(WebBookmarkCollection *)self _executeSQLWithCString:"PRAGMA user_version = 49"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"END"];
}

id __59__WebBookmarkCollection__migrateSchemaVersion48ToVersion49__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setState:1];
  v4 = [*(a1 + 32) deviceIdentifier];
  [v3 incrementGenerationForKey:@"Deleted" withDeviceIdentifier:v4];

  return v3;
}

- (void)_migrateSchemaVersion49ToVersion50
{
  [(WebBookmarkCollection *)self _executeSQLWithCString:"BEGIN"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"DROP TABLE IF EXISTS participant_presence"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"PRAGMA user_version = 50"];

  [(WebBookmarkCollection *)self _executeSQLWithCString:"END"];
}

- (void)_migrateSchemaVersion50ToVersion51
{
  [(WebBookmarkCollection *)self _executeSQLWithCString:"BEGIN"];
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v9, [(WebBookmarkCollection *)self _selectBookmarksWhere:@"id NOT IN (SELECT MIN(id) FROM bookmarks GROUP BY external_uuid)"]);
  while (sqlite3_step(v10) == 100)
  {
    v3 = [WebBookmark alloc];
    v4 = [(WebBookmark *)v3 initWithSQLiteStatement:v10 deviceIdentifier:0 collectionType:[(WBCollectionConfiguration *)self->_configuration collectionType]];
    v5 = MEMORY[0x277CCACA8];
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v8 = [v5 stringWithFormat:@"UPDATE bookmarks SET external_uuid = '%@' WHERE id = %d", uUIDString, -[WebBookmark identifier](v4, "identifier")];
    [(WebBookmarkCollection *)self _executeSQL:v8];
  }

  [(WebBookmarkCollection *)self _executeSQLWithCString:"CREATE UNIQUE INDEX IF NOT EXISTS unique_uuid ON bookmarks(external_uuid)"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"PRAGMA user_version = 51"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"END"];
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v9);
}

- (void)_migrateSchemaVersion51ToVersion52
{
  [(WebBookmarkCollection *)self _executeSQLWithCString:"BEGIN"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"PRAGMA user_version = 52"];

  [(WebBookmarkCollection *)self _executeSQLWithCString:"END"];
}

- (void)_migrateSchemaVersion52ToVersion53
{
  [(WebBookmarkCollection *)self _executeSQLWithCString:"BEGIN"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"PRAGMA user_version = 53"];

  [(WebBookmarkCollection *)self _executeSQLWithCString:"END"];
}

- (void)_migrateSchemaVersion53ToVersion54
{
  [(WebBookmarkCollection *)self _executeSQLWithCString:"BEGIN"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"PRAGMA user_version = 54"];

  [(WebBookmarkCollection *)self _executeSQLWithCString:"END"];
}

- (void)_migrateSchemaVersion54ToVersion55
{
  [(WebBookmarkCollection *)self _executeSQLWithCString:"BEGIN"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"PRAGMA user_version = 55"];

  [(WebBookmarkCollection *)self _executeSQLWithCString:"END"];
}

- (void)_migrateSchemaVersion55ToVersion56
{
  [(WebBookmarkCollection *)self _executeSQLWithCString:"BEGIN"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"PRAGMA user_version = 56"];

  [(WebBookmarkCollection *)self _executeSQLWithCString:"END"];
}

- (BOOL)migrateReadingListIconsFromDatabaseToBookmarkImagesDirectory
{
  *(&v29[3] + 4) = *MEMORY[0x277D85DE8];
  WebBookmarks::BookmarkSQLWriteTransaction::BookmarkSQLWriteTransaction(v27, self->_db);
  if (v27[17] == 1)
  {
    WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v25, self->_db, "SELECT id, local_attributes, icon FROM bookmarks WHERE deleted = 0 AND parent = ?");
    sqlite3_bind_int(v26, 1, [(WebBookmarkCollection *)self readingListFolderBookmarkID]);
    bookmarkImagesDirectoryPath = [objc_opt_class() bookmarkImagesDirectoryPath];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    if (([defaultManager fileExistsAtPath:bookmarkImagesDirectoryPath isDirectory:0] & 1) == 0)
    {
      [defaultManager createDirectoryAtPath:bookmarkImagesDirectoryPath withIntermediateDirectories:1 attributes:0 error:0];
    }

    while (sqlite3_step(v26) == 100)
    {
      v4 = objc_autoreleasePoolPush();
      v5 = sqlite3_column_int(v26, 0);
      v6 = WBDataFromNullableColumn(v26, 1);
      v7 = WBDataFromNullableColumn(v26, 2);
      v8 = 2;
      if (v7 && v6)
      {
        v24 = 0;
        dictionary = [MEMORY[0x277CCAC58] propertyListWithData:v6 options:2 format:0 error:&v24];
        v10 = v24;
        if (!dictionary)
        {
          v11 = WBS_LOG_CHANNEL_PREFIXBookmarks();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            wb_privacyPreservingDescription = [v10 wb_privacyPreservingDescription];
            *buf = 138543362;
            v29[0] = wb_privacyPreservingDescription;
            _os_log_impl(&dword_272C20000, v11, OS_LOG_TYPE_INFO, "Got nil local attributes dictionary: %{public}@", buf, 0xCu);
          }

          dictionary = [MEMORY[0x277CBEB38] dictionary];
        }

        dictionary2 = [dictionary objectForKey:@"com.apple.ReadingList"];
        if (!dictionary2)
        {
          v14 = WBS_LOG_CHANNEL_PREFIXBookmarks();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_272C20000, v14, OS_LOG_TYPE_INFO, "Got nil reading list attributes dictionary, creating one", buf, 2u);
          }

          dictionary2 = [MEMORY[0x277CBEB38] dictionary];
        }

        uUID = [MEMORY[0x277CCAD78] UUID];
        uUIDString = [uUID UUIDString];

        v17 = [bookmarkImagesDirectoryPath stringByAppendingPathComponent:uUIDString];
        [v7 writeToFile:v17 atomically:1];
        [dictionary2 setObject:uUIDString forKey:@"ReadingListIconUUID"];
        [dictionary setObject:dictionary2 forKey:@"com.apple.ReadingList"];
        WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(buf, self->_db, "UPDATE bookmarks SET local_attributes = ?, icon = ? WHERE id = ?");
        bindAttributesToSQLStatement(*(v29 + 4), 1, dictionary);
        sqlite3_bind_null(*(v29 + 4), 2);
        sqlite3_bind_int(*(v29 + 4), 3, v5);
        v8 = sqlite3_step(*(v29 + 4)) != 101;
        WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(buf);
      }

      objc_autoreleasePoolPop(v4);
      if ((v8 | 2) != 2)
      {
        v18 = 0;
        goto LABEL_20;
      }
    }

    v18 = WebBookmarks::BookmarkSQLTransaction::commit(v27, v2, v3);
LABEL_20:

    WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v25);
  }

  else
  {
    v18 = 0;
  }

  WebBookmarks::BookmarkSQLWriteTransaction::~BookmarkSQLWriteTransaction(v27);
  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (void)_rerunMigrationsIfNecessary
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (BOOL)_migrateBookmarksPlist:(id)plist syncAnchorPlist:(id)anchorPlist
{
  v24 = *MEMORY[0x277D85DE8];
  plistCopy = plist;
  anchorPlistCopy = anchorPlist;
  if (![(WBCollectionConfiguration *)self->_configuration collectionType])
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v10 = defaultManager;
    if (!plistCopy || ([defaultManager fileExistsAtPath:plistCopy] & 1) == 0)
    {
      v8 = 1;
LABEL_26:

      goto LABEL_27;
    }

    WebBookmarks::BookmarkSQLWriteTransaction::BookmarkSQLWriteTransaction(v23, self->_db);
    if (v23[17])
    {
      if ([(WebBookmarkCollection *)self _importBookmarksPlist:plistCopy])
      {
        v22 = 0;
        v11 = [v10 removeItemAtPath:plistCopy error:&v22];
        v12 = v22;
        v13 = v12;
        if (v11)
        {

          if (anchorPlistCopy && [v10 fileExistsAtPath:anchorPlistCopy])
          {
            if (![(WebBookmarkCollection *)self _importSyncAnchorPlist:anchorPlistCopy])
            {
              v13 = 0;
              goto LABEL_21;
            }

            v21 = 0;
            v16 = [v10 removeItemAtPath:anchorPlistCopy error:&v21];
            v13 = v21;
            if ((v16 & 1) == 0)
            {
              v17 = WBS_LOG_CHANNEL_PREFIXBookmarks();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                [v13 wb_privacyPreservingDescription];
                objc_claimAutoreleasedReturnValue();
                [WebBookmarkCollection _migrateBookmarksPlist:syncAnchorPlist:];
              }

LABEL_20:

LABEL_21:
              v8 = 0;
LABEL_24:

              goto LABEL_25;
            }
          }

          else
          {
            v13 = 0;
          }

          WebBookmarks::BookmarkSQLTransaction::commit(v23, v14, v15);
          v8 = 1;
          goto LABEL_24;
        }

        v17 = WBS_LOG_CHANNEL_PREFIXBookmarks();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          [v13 wb_privacyPreservingDescription];
          objc_claimAutoreleasedReturnValue();
          [WebBookmarkCollection _migrateBookmarksPlist:syncAnchorPlist:];
        }

        goto LABEL_20;
      }

      v18 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [WebBookmarkCollection _migrateBookmarksPlist:syncAnchorPlist:];
      }
    }

    v8 = 0;
LABEL_25:
    WebBookmarks::BookmarkSQLWriteTransaction::~BookmarkSQLWriteTransaction(v23);
    goto LABEL_26;
  }

  v8 = 1;
LABEL_27:

  v19 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)_updateDatabaseIfNewerVersion:(id)version wasLaunchedForSyncStringKey:(id)key upgradeSelector:(SEL)selector versionType:(id)type
{
  v43 = *MEMORY[0x277D85DE8];
  versionCopy = version;
  keyCopy = key;
  typeCopy = type;
  safari_browserSharedDefaults = [MEMORY[0x277CBEBD0] safari_browserSharedDefaults];
  v14 = [safari_browserSharedDefaults stringForKey:@"DebugForceMigrationFromSafariVersionKey"];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v17 = [(WebBookmarkCollection *)self syncStringForKey:keyCopy];
    v18 = v17;
    v19 = @"0";
    if (v17)
    {
      v19 = v17;
    }

    v16 = v19;
  }

  v20 = [versionCopy compare:v16 options:64];
  if (![(WebBookmarkCollection *)self _isDatabaseWriteAllowed])
  {
    v22 = v20 != 1;
    goto LABEL_13;
  }

  if (!v20)
  {
    goto LABEL_11;
  }

  if (v20 == -1)
  {
    v21 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [WebBookmarkCollection _updateDatabaseIfNewerVersion:wasLaunchedForSyncStringKey:upgradeSelector:versionType:];
    }

LABEL_11:
    v22 = 1;
    goto LABEL_13;
  }

  v25 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v40 = v16;
    v41 = 2114;
    v42 = versionCopy;
    _os_log_impl(&dword_272C20000, v25, OS_LOG_TYPE_DEFAULT, "Updating the web bookmarks from version: %{public}@ to the current version: %{public}@.", buf, 0x16u);
  }

  if (!-[WBCollectionConfiguration isReadonly](self->_configuration, "isReadonly") || ([objc_opt_class() lockSync] & 1) != 0)
  {
    v26 = [(WebBookmarkCollection *)self methodForSelector:selector];
    if ([(WebBookmarkCollection *)self _isDatabaseWriteAllowed]&& [(WebBookmarkCollection *)self maintainsSyncMetadata])
    {
      v29 = MEMORY[0x277D85DD0];
      v30 = 3221225472;
      v31 = __111__WebBookmarkCollection__updateDatabaseIfNewerVersion_wasLaunchedForSyncStringKey_upgradeSelector_versionType___block_invoke;
      v32 = &unk_279E76138;
      v33 = safari_browserSharedDefaults;
      selfCopy = self;
      v35 = keyCopy;
      v36 = versionCopy;
      v37 = v26;
      selectorCopy = selector;
      v27 = [(WebBookmarkCollection *)self performDatabaseUpdatesWithTransaction:&v29 secureDelete:0];

      if (!v27)
      {
LABEL_21:
        v22 = 0;
        goto LABEL_24;
      }
    }

    else if (!v26(self, selector, v16))
    {
      goto LABEL_21;
    }

    [(WebBookmarkCollection *)self syncSetString:versionCopy forKey:keyCopy, v29, v30, v31, v32];
    [safari_browserSharedDefaults removeObjectForKey:@"DebugForceMigrationFromSafariVersionKey"];
    v22 = 1;
LABEL_24:
    if ([(WBCollectionConfiguration *)self->_configuration isReadonly:v29])
    {
      [objc_opt_class() unlockSync];
    }

    goto LABEL_13;
  }

  v28 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    [WebBookmarkCollection _updateDatabaseIfNewerVersion:wasLaunchedForSyncStringKey:upgradeSelector:versionType:];
  }

  v22 = 0;
LABEL_13:

  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

uint64_t __111__WebBookmarkCollection__updateDatabaseIfNewerVersion_wasLaunchedForSyncStringKey_upgradeSelector_versionType___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) stringForKey:@"DebugForceMigrationFromSafariVersionKey"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v5 = [*(a1 + 40) syncStringForKey:*(a1 + 48)];
    v6 = v5;
    v7 = @"0";
    if (v5)
    {
      v7 = v5;
    }

    v4 = v7;
  }

  if ([*(a1 + 56) compare:v4 options:64])
  {
    v8 = (*(a1 + 64))(*(a1 + 40), *(a1 + 72), v4);
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

uint64_t __64__WebBookmarkCollection__createRecoveredBookmarksFolderIfNeeded__block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = -[WebBookmark initFolderWithParentID:collectionType:]([WebBookmark alloc], "initFolderWithParentID:collectionType:", 0x7FFFFFFFLL, [*(*(a1 + 32) + 16) collectionType]);
  [v2 _setSyncable:0];
  v7 = @"com.apple.bookmarks.OmitFromUI";
  v8[0] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [v2 setExtraAttributes:v3];

  v4 = [*(a1 + 32) _saveBookmark:v2 withSpecialID:6 updateGenerationIfNeeded:1];
  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

- (sqlite3_stmt)_selectBookmarksWhere:(id)where returnType:(int64_t)type
{
  whereCopy = where;
  [(WebBookmarkCollection *)self logRegulatoryBookmarksRead];
  whereCopy = 0;
  if (type > 1)
  {
    if (type == 2)
    {
      v8 = @"SELECT id FROM bookmarks WHERE %@ ORDER BY order_index ASC";
    }

    else
    {
      if (type != 3)
      {
        goto LABEL_11;
      }

      v8 = @"SELECT count(*) FROM bookmarks WHERE %@";
    }
  }

  else
  {
    if (!type)
    {
      v9 = MEMORY[0x277CCACA8];
      v10 = BookmarkSQLiteColumns();
      whereCopy = [v9 stringWithFormat:@"SELECT %@ FROM bookmarks WHERE %@", v10, whereCopy];

      goto LABEL_11;
    }

    if (type != 1)
    {
      goto LABEL_11;
    }

    v8 = @"SELECT id FROM bookmarks WHERE %@";
  }

  whereCopy = [MEMORY[0x277CCACA8] stringWithFormat:v8, whereCopy];
LABEL_11:
  ppStmt = 0;
  if (sqlite3_prepare_v2(self->_db, [whereCopy UTF8String], -1, &ppStmt, 0))
  {
    v11 = 0;
  }

  else
  {
    v11 = ppStmt;
  }

  return v11;
}

- (sqlite3_stmt)_sqliteStatementWithQuery:(id)query
{
  queryCopy = query;
  ppStmt = 0;
  if (sqlite3_prepare_v2(self->_db, [queryCopy UTF8String], -1, &ppStmt, 0))
  {
    v5 = 0;
  }

  else
  {
    v5 = ppStmt;
  }

  return v5;
}

- (int)_finalizeStatementIfNotNull:(sqlite3_stmt *)null
{
  if (null)
  {
    return sqlite3_finalize(null);
  }

  else
  {
    return 0;
  }
}

- (int)_sqliteStatementWithQuery:(id)query runInBlock:(id)block
{
  queryCopy = query;
  blockCopy = block;
  ppStmt = 0;
  v8 = sqlite3_prepare_v2(self->_db, [queryCopy UTF8String], -1, &ppStmt, 0);
  if (!v8)
  {
    blockCopy[2](blockCopy, ppStmt);
    v8 = sqlite3_finalize(ppStmt);
  }

  return v8;
}

- (id)_errorForMostRecentSQLiteError
{
  v3 = sqlite3_errcode(self->_db);

  return [(WebBookmarkCollection *)self _errorForMostRecentSQLiteErrorWithErrorCode:v3];
}

- (id)_errorForMostRecentSQLiteErrorWithErrorCode:(int64_t)code
{
  v11[2] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:sqlite3_errmsg(self->_db)];
  v5 = *MEMORY[0x277D49CE8];
  v10[0] = *MEMORY[0x277CCA450];
  v10[1] = v5;
  v11[0] = v4;
  v11[1] = v4;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v7 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"com.apple.WebBookmarks.SQLiteError" code:code userInfo:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BOOL)_isTombstoneWithServerID:(id)d
{
  dCopy = d;
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v6, self->_db, "SELECT id FROM bookmarks WHERE server_id = ? AND deleted = 1");
  sqlite3_bind_text(v7, 1, [dCopy UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  LOBYTE(self) = sqlite3_step(v7) == 100;
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v6);

  return self;
}

- (BOOL)_insertTombstoneWithServerID:(id)d itemType:(int64_t)type subtype:(int64_t)subtype syncData:(id)data
{
  dCopy = d;
  dataCopy = data;
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"INSERT INTO bookmarks (order_index, type, subtype, deleted, added, parent, server_id, dav_generation%@) VALUES (0, %ld, %ld, 1, 0, -1, ?, ?%@)", @", sync_data", type, subtype, @", ?"];
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v15, self->_db, [v12 UTF8String]);
  sqlite3_bind_text(v16, 1, [dCopy UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  sqlite3_bind_int64(v16, 2, [(WebBookmarkCollection *)self currentRecordGeneration]);
  if (dataCopy)
  {
    sqlite3_bind_blob(v16, 3, [dataCopy bytes], objc_msgSend(dataCopy, "length"), 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    sqlite3_bind_null(v16, 3);
  }

  v13 = sqlite3_step(v16) == 101 && [(WebBookmarkCollection *)self _incrementGeneration];
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v15);

  return v13;
}

- (BOOL)_clearAllTombstones
{
  v3 = WebBookmarks::BookmarkSQLStatement::executeSQL(self->_db, "DELETE FROM bookmarks WHERE deleted = 1", v2);
  if (v3)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [WebBookmarkCollection _clearAllTombstones];
    }
  }

  return v3 == 0;
}

- (BOOL)_clearAllTombstonesDuringOrBeforeLocalRecordGeneration:(int64_t)generation
{
  db = self->_db;
  generation = [MEMORY[0x277CCACA8] stringWithFormat:@"DELETE FROM bookmarks WHERE deleted = 1 AND dav_generation <= %zu", generation];
  uTF8String = [generation UTF8String];
  v7 = WebBookmarks::BookmarkSQLStatement::executeSQL(db, uTF8String, v6);

  if (v7)
  {
    v8 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [WebBookmarkCollection _clearAllTombstones];
    }
  }

  return v7 == 0;
}

- (BOOL)_clearTombstoneForBookmark:(id)bookmark
{
  bookmarkCopy = bookmark;
  db = self->_db;
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"DELETE FROM bookmarks WHERE deleted = 1 AND id = %d", objc_msgSend(bookmarkCopy, "identifier")];
  uTF8String = [v6 UTF8String];
  v9 = WebBookmarks::BookmarkSQLStatement::executeSQL(db, uTF8String, v8);

  if (v9)
  {
    v10 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [WebBookmarkCollection _clearAllTombstones];
    }
  }

  return v9 == 0;
}

- (BOOL)_clearSyncKeysUnderBookmarkID:(int)d isFolder:(BOOL)folder
{
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v6, self->_db, "UPDATE bookmarks SET added = 1, server_id = NULL, sync_key = NULL, sync_data = NULL WHERE parent IN (select folder_id from folder_ancestors where ancestor_id = ?) OR parent = ? OR id = ?");
  sqlite3_bind_int(v7, 1, d);
  sqlite3_bind_int(v7, 2, d);
  sqlite3_bind_int(v7, 3, d);
  LOBYTE(d) = sqlite3_step(v7) == 101;
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v6);
  return d;
}

- (BOOL)_clearAllSyncKeys
{
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v5, self->_db, "UPDATE bookmarks SET server_id = NULL, sync_key = NULL, sync_data = NULL");
  v2 = sqlite3_step(v6);
  if (v2 != 101)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [WebBookmarkCollection _clearAllSyncKeys];
    }
  }

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v5);
  return v2 == 101;
}

- (BOOL)clearAllSyncData
{
  v3 = WBS_LOG_CHANNEL_PREFIXBookmarkSync();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_272C20000, v3, OS_LOG_TYPE_DEFAULT, "Clearing all sync data, likely because the user is logging out", buf, 2u);
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__WebBookmarkCollection_clearAllSyncData__block_invoke;
  v5[3] = &unk_279E757F0;
  v5[4] = self;
  return [(WebBookmarkCollection *)self performDatabaseUpdatesWithTransaction:v5 secureDelete:0];
}

- (BOOL)_clearAllSyncData
{
  if (![(WebBookmarkCollection *)self _clearAllSyncKeys]|| ![(WebBookmarkCollection *)self _clearAllTombstones]|| ![(WebBookmarkCollection *)self setSyncData:0 forKey:@"BASyncData"]|| ![(WebBookmarkCollection *)self setSyncData:0 forKey:@"DAVHomeURL"]|| ![(WebBookmarkCollection *)self setLocalMigrationState:0 generateDeviceIdentifierIfNeeded:0]|| ![(WebBookmarkCollection *)self updateAccountHash:0])
  {
    return 0;
  }

  if ([(WebBookmarkCollection *)self maintainsSyncMetadata])
  {
    [(WebBookmarkCollection *)self resetDeviceIdentifier];
    if ([(WebBookmarkCollection *)self _executeSQLWithCString:"UPDATE generations SET generation = 0"])
    {
      v3 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        [WebBookmarkCollection _clearAllSyncData];
      }

      return 0;
    }

    [(WebBookmarkCollection *)self setLastSyncedRecordGeneration:0];
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __42__WebBookmarkCollection__clearAllSyncData__block_invoke;
    v9[3] = &unk_279E75838;
    v9[4] = self;
    v9[5] = &v10;
    [(WebBookmarkCollection *)self enumerateDescendantsOfBookmarkID:0 usingBlock:v9];
    v4 = *(v11 + 24);
    _Block_object_dispose(&v10, 8);
    if (v4)
    {
      return 0;
    }
  }

  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(&v10, self->_db, "UPDATE bookmarks SET added = 1");
  v7 = sqlite3_step(v11);
  v5 = v7 == 101;
  if (v7 != 101)
  {
    v8 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [WebBookmarkCollection _clearAllSyncData];
    }
  }

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(&v10);
  return v5;
}

void __42__WebBookmarkCollection__clearAllSyncData__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if ([v5 isSyncable])
  {
    if ([*(a1 + 32) _shouldGenerateNewServerIDWhenClearingSyncDataForBookmark:v5])
    {
      v6 = *(a1 + 32);
      v7 = [v6 generateNewServerIDForBookmark:v5];
      [v6 setServerID:v7 forBookmark:v5];
    }

    WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v12, *(*(a1 + 32) + 8), [@"UPDATE bookmarks SET dav_generation = ? WHERE id = ?" UTF8String]);
    sqlite3_bind_int64(v13, 1, [*(a1 + 32) currentRecordGeneration]);
    sqlite3_bind_int(v13, 2, [v5 identifier]);
    v8 = *(a1 + 32);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __42__WebBookmarkCollection__clearAllSyncData__block_invoke_2;
    v11[3] = &unk_279E76110;
    v11[4] = v8;
    if ([v8 updateSyncDataForBookmark:v5 usingBlock:v11])
    {
      if (sqlite3_step(v13) == 101)
      {
        [*(a1 + 32) _incrementGeneration];
LABEL_12:
        WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v12);
        goto LABEL_13;
      }

      v9 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [v5 privacyPreservingDescription];
        objc_claimAutoreleasedReturnValue();
        __42__WebBookmarkCollection__clearAllSyncData__block_invoke_cold_2();
      }
    }

    else
    {
      v9 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [v5 privacyPreservingDescription];
        objc_claimAutoreleasedReturnValue();
        __42__WebBookmarkCollection__clearAllSyncData__block_invoke_cold_1();
      }
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
    goto LABEL_12;
  }

LABEL_13:

  v10 = *MEMORY[0x277D85DE8];
}

WBBookmarkSyncData *__42__WebBookmarkCollection__clearAllSyncData__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(WBBookmarkSyncData);
  v5 = [v3 position];
  [(WBBookmarkSyncData *)v4 setPosition:v5];

  v6 = [*(a1 + 32) currentDeviceIdentifier];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __42__WebBookmarkCollection__clearAllSyncData__block_invoke_3;
  v10[3] = &unk_279E76160;
  v7 = v4;
  v11 = v7;
  v12 = v6;
  v8 = v6;
  [v3 enumerateGenerationsUsingBlock:v10];

  return v7;
}

void __42__WebBookmarkCollection__clearAllSyncData__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = *(a1 + 32);
  v6 = [a3 incrementedGenerationWithDeviceIdentifier:*(a1 + 40)];
  [v5 setGeneration:v6 forKey:v7];
}

- (id)generateNewServerIDForBookmark:(id)bookmark
{
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];

  return uUIDString;
}

uint64_t __55__WebBookmarkCollection_deleteBookmark_leaveTombstone___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 serverID];
  if ([v4 length])
  {
    v5 = [a1[4] syncDataForBookmark:v3];
    v6 = [v5 record];
    v7 = [v6 recordID];
    v8 = [v7 zoneID];

    if ([a1[5] containsObject:v8])
    {
      [v5 setIsDeletingRecordZone:1];
    }

    else
    {
      v10 = [a1[4] _rootServerIDForRecordZoneID:v8];
      if ([v10 isEqualToString:v4])
      {
        [a1[5] addObject:v8];
        [v5 setIsDeletingRecordZone:1];
      }

      else
      {
        [v5 setState:1];
        v11 = [a1[6] deviceIdentifier];
        [v5 incrementGenerationForKey:@"Deleted" withDeviceIdentifier:v11];
      }
    }

    v12 = a1[4];
    v13 = [v3 itemType];
    v14 = [v3 subtype];
    v15 = [v5 encodedBookmarkSyncData];
    v9 = [v12 _insertTombstoneWithServerID:v4 itemType:v13 subtype:v14 syncData:v15];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

uint64_t __56__WebBookmarkCollection__deleteBookmark_leaveTombstone___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 serverID];
  if ([v4 length])
  {
    if ([*(a1 + 32) maintainsSyncMetadata])
    {
      v5 = [*(a1 + 32) syncDataForBookmark:v3];
      [v5 setState:1];
      v6 = [v3 deviceIdentifier];
      [v5 incrementGenerationForKey:@"Deleted" withDeviceIdentifier:v6];

      v7 = [v5 encodedBookmarkSyncData];
    }

    else
    {
      v7 = [v3 syncData];
    }

    v8 = [*(a1 + 32) _insertTombstoneWithServerID:v4 itemType:objc_msgSend(v3 subtype:"itemType") syncData:{objc_msgSend(v3, "subtype"), v7}];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (BOOL)_deleteBookmark:(id)bookmark leaveTombstone:(BOOL)tombstone insertTombstoneBlock:(id)block
{
  tombstoneCopy = tombstone;
  v29 = *MEMORY[0x277D85DE8];
  bookmarkCopy = bookmark;
  blockCopy = block;
  if (tombstoneCopy && ([bookmarkCopy isSyncable] & 1) != 0)
  {
    v10 = 1;
    v11 = 1;
  }

  else
  {
    serverID = [bookmarkCopy serverID];
    v13 = [(WebBookmarkCollection *)self _isTombstoneWithServerID:serverID];

    v10 = 0;
    v11 = !v13;
  }

  if ([bookmarkCopy identifier])
  {
    serverID2 = [bookmarkCopy serverID];
    _syncType = [(WebBookmarkCollection *)self _syncType];
    if (_syncType != 2)
    {
      if (v10)
      {
        isFolder = [bookmarkCopy isFolder];
        if (_syncType == 1)
        {
          v17 = isFolder;
        }

        else
        {
          v17 = 0;
        }

        if (v17 == 1)
        {
          if (![(WebBookmarkCollection *)self _insertTombsonesRecursivelyForRootFolder:bookmarkCopy insertTombstoneBlock:blockCopy])
          {
            goto LABEL_24;
          }
        }

        else if (serverID2 && !blockCopy[2](blockCopy, bookmarkCopy))
        {
          goto LABEL_24;
        }
      }

      if (([bookmarkCopy isHidden] & 1) != 0 || -[WebBookmarkCollection _updateCachedChildCountForParentID:inDirection:](self, "_updateCachedChildCountForParentID:inDirection:", objc_msgSend(bookmarkCopy, "parentID"), 0xFFFFFFFFLL))
      {
        v19 = [(WebBookmarkCollection *)self orderIndexOfBookmark:bookmarkCopy];
        if (-[WebBookmarkCollection _deleteRecursively:descendantsOnly:](self, "_deleteRecursively:descendantsOnly:", [bookmarkCopy identifier], 0))
        {
          v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"UPDATE bookmarks SET order_index = (order_index - 1) WHERE parent = %d AND order_index > %d", objc_msgSend(bookmarkCopy, "parentID"), v19];
          if ([(WebBookmarkCollection *)self _executeSQL:v20])
          {
            v21 = WBS_LOG_CHANNEL_PREFIXBookmarks();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              [bookmarkCopy parentID];
              [(WebBookmarkCollection *)self _errorForMostRecentSQLiteError];
              objc_claimAutoreleasedReturnValue();
              [WebBookmarkCollection _deleteBookmark:leaveTombstone:insertTombstoneBlock:];
            }

            _incrementGeneration = 0;
          }

          else
          {
            if (([(WBCollectionConfiguration *)self->_configuration collectionType]!= 1) | v11 & 1)
            {
              self->_dirty = 1;
            }

            v24 = WBS_LOG_CHANNEL_PREFIXBookmarks();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
            {
              *buf = 67109376;
              identifier = [bookmarkCopy identifier];
              v27 = 1024;
              parentID = [bookmarkCopy parentID];
              _os_log_impl(&dword_272C20000, v24, OS_LOG_TYPE_INFO, "Deleted bookmark with ID %d from parent with ID %d", buf, 0xEu);
            }

            _incrementGeneration = [(WebBookmarkCollection *)self _incrementGeneration];
          }

          goto LABEL_25;
        }
      }
    }

LABEL_24:
    _incrementGeneration = 0;
LABEL_25:

    goto LABEL_26;
  }

  _incrementGeneration = 0;
LABEL_26:

  v22 = *MEMORY[0x277D85DE8];
  return _incrementGeneration;
}

- (BOOL)_deleteRecursively:(int)recursively descendantsOnly:(BOOL)only
{
  v7 = @" OR id = ?";
  if (only)
  {
    v7 = &stru_288259858;
  }

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"DELETE FROM bookmarks WHERE parent IN (SELECT folder_id FROM folder_ancestors WHERE ancestor_id = ?) OR parent = ?%@", v7];
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v12, self->_db, [v8 UTF8String]);
  sqlite3_bind_int(v13, 1, recursively);
  sqlite3_bind_int(v13, 2, recursively);
  if (!only)
  {
    sqlite3_bind_int(v13, 3, recursively);
  }

  v9 = sqlite3_step(v13);
  if (v9 != 101)
  {
    v10 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [WebBookmarkCollection _deleteRecursively:descendantsOnly:];
    }
  }

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v12);

  return v9 == 101;
}

- (BOOL)_insertTombsonesRecursivelyForRootFolder:(id)folder insertTombstoneBlock:(id)block
{
  v50 = *MEMORY[0x277D85DE8];
  folderCopy = folder;
  blockCopy = block;
  v7 = objc_autoreleasePoolPush();
  v34 = folderCopy;
  v35 = [MEMORY[0x277CBEB18] arrayWithObject:folderCopy];
  v33 = v7;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  while (1)
  {
    firstObject = [v35 firstObject];
    if (!firstObject)
    {
      break;
    }

    context = objc_autoreleasePoolPush();
    v9 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(firstObject, "identifier")}];
    v10 = [dictionary objectForKeyedSubscript:v9];

    if (v10)
    {
      goto LABEL_4;
    }

    v20 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(firstObject, "identifier")}];
    [dictionary setObject:&unk_2882694D8 forKeyedSubscript:v20];

    if ((blockCopy)[2](blockCopy, firstObject))
    {
      v21 = 0;
      do
      {
        v22 = objc_autoreleasePoolPush();
        v23 = -[WebBookmarkCollection _fastFetchBookmarksInBookmarkFolder:options:offset:limit:](self, "_fastFetchBookmarksInBookmarkFolder:options:offset:limit:", [firstObject identifier], 3, v21, 100);
        if ([v23 count])
        {
          v24 = WBS_LOG_CHANNEL_PREFIXBookmarks();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            v25 = [v23 count];
            privacyPreservingDescription = [firstObject privacyPreservingDescription];
            *buf = 134218498;
            v45 = v25;
            v46 = 1024;
            v47 = v21;
            v48 = 2114;
            v49 = privacyPreservingDescription;
            _os_log_impl(&dword_272C20000, v24, OS_LOG_TYPE_INFO, "Fetched %zu bookmark children at offset %u in folder %{public}@ while inserting tombstones", buf, 0x1Cu);
          }

          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v27 = v23;
          v19 = [v27 countByEnumeratingWithState:&v39 objects:v43 count:16];
          if (v19)
          {
            v28 = *v40;
            while (2)
            {
              for (i = 0; i != v19; i = i + 1)
              {
                if (*v40 != v28)
                {
                  objc_enumerationMutation(v27);
                }

                if ((blockCopy[2](blockCopy, *(*(&v39 + 1) + 8 * i)) & 1) == 0)
                {
                  LODWORD(v19) = 1;
                  goto LABEL_26;
                }
              }

              v19 = [v27 countByEnumeratingWithState:&v39 objects:v43 count:16];
              if (v19)
              {
                continue;
              }

              break;
            }
          }

LABEL_26:

          v21 = (v21 + 100);
        }

        else
        {
          LODWORD(v19) = 5;
        }

        objc_autoreleasePoolPop(v22);
      }

      while (!v19);
      if (v19 == 5)
      {
        v10 = &unk_2882694D8;
LABEL_4:
        if ([dictionary count] > 0x14)
        {
          v11 = 1;
        }

        else
        {
          v11 = 20;
        }

        intValue = [v10 intValue];
        v13 = -[WebBookmarkCollection _fastFetchBookmarksInBookmarkFolder:options:offset:limit:](self, "_fastFetchBookmarksInBookmarkFolder:options:offset:limit:", [firstObject identifier], 5, intValue, v11);
        if ([v13 count])
        {
          v14 = WBS_LOG_CHANNEL_PREFIXBookmarks();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            v15 = [v13 count];
            privacyPreservingDescription2 = [firstObject privacyPreservingDescription];
            *buf = 134218498;
            v45 = v15;
            v46 = 1024;
            v47 = intValue;
            v48 = 2114;
            v49 = privacyPreservingDescription2;
            _os_log_impl(&dword_272C20000, v14, OS_LOG_TYPE_INFO, "Fetched %zu folder children at offset %u in folder %{public}@ while inserting tombstones", buf, 0x1Cu);
          }

          v17 = [MEMORY[0x277CCABB0] numberWithInt:(intValue + v11)];
          v18 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(firstObject, "identifier")}];
          [dictionary setObject:v17 forKeyedSubscript:v18];

          v19 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{0, objc_msgSend(v13, "count")}];
          [v35 insertObjects:v13 atIndexes:v19];

          LODWORD(v19) = 0;
        }

        else
        {
          v19 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(firstObject, "identifier")}];
          [dictionary setObject:0 forKeyedSubscript:v19];

          [v35 removeObjectAtIndex:0];
          LODWORD(v19) = 2;
        }

        goto LABEL_35;
      }
    }

    else
    {
      LODWORD(v19) = 1;
    }

    v10 = &unk_2882694D8;
LABEL_35:

    objc_autoreleasePoolPop(context);
    if (v19 && v19 != 2)
    {
      v30 = 0;
      goto LABEL_39;
    }
  }

  v30 = 1;
LABEL_39:

  objc_autoreleasePoolPop(v33);
  v31 = *MEMORY[0x277D85DE8];
  return v30;
}

- (int)_specialIDForBookmarkTitle:(id)title
{
  titleCopy = title;
  if ([(WBCollectionConfiguration *)self->_configuration collectionType]== 1)
  {
    v5 = 0;
  }

  else if ([titleCopy isEqualToString:@"BookmarksBar"] & 1) != 0 || (WebBookmarksBookmarksBarFolderTitle(), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(titleCopy, "isEqualToString:", v6), v6, (v7))
  {
    v5 = 1;
  }

  else if ([titleCopy isEqualToString:@"BookmarksMenu"] & 1) != 0 || (WebBookmarksBookmarksMenuFolderTitle(), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(titleCopy, "isEqualToString:", v9), v9, (v10))
  {
    v5 = 2;
  }

  else if ([titleCopy isEqualToString:@"com.apple.ReadingList"] & 1) != 0 || (WebBookmarksReadingListFolderTitle(), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(titleCopy, "isEqualToString:", v11), v11, (v12))
  {
    v5 = 3;
  }

  else if ([titleCopy isEqualToString:@"com.apple.WebFilterWhiteList"] & 1) != 0 || (WebBookmarksWebFilterAllowedSitesFolderTitle(), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(titleCopy, "isEqualToString:", v13), v13, (v14))
  {
    v5 = 4;
  }

  else if ([titleCopy isEqualToString:@"com.apple.FrequentlyVisitedSites"])
  {
    v5 = 5;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int)_specialIDForBookmarkBeingSaved:(id)saved
{
  savedCopy = saved;
  if ([savedCopy specialID] || !objc_msgSend(savedCopy, "isFolder") || objc_msgSend(savedCopy, "parentID") || (objc_msgSend(savedCopy, "title"), v7 = objc_claimAutoreleasedReturnValue(), v8 = -[WebBookmarkCollection _specialIDForBookmarkTitle:](self, "_specialIDForBookmarkTitle:", v7), v7, !v8))
  {
    v5 = 0;
  }

  else
  {
    db = self->_db;
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT count(*) FROM Bookmarks WHERE special_id = %u", v8];
    LODWORD(db) = WebBookmarks::BookmarkSQLStatement::selectInt(db, v10, v11);

    if (db)
    {
      v5 = 0;
    }

    else
    {
      v5 = v8;
    }
  }

  return v5;
}

- (id)_databaseTitleForSpecialID:(int)d
{
  if ((d - 1) > 5)
  {
    return 0;
  }

  else
  {
    return off_279E764C8[d - 1];
  }
}

- (BOOL)_childrenOfParentBookmarkAreUnsyncable:(id)unsyncable
{
  unsyncableCopy = unsyncable;
  if ([unsyncableCopy isWebFilterAllowedSitesFolder])
  {
    isFrequentlyVisitedSitesFolder = 1;
  }

  else
  {
    isFrequentlyVisitedSitesFolder = [unsyncableCopy isFrequentlyVisitedSitesFolder];
  }

  return isFrequentlyVisitedSitesFolder;
}

- (int64_t)_mergeBookmarkIntoPersistedBookmark:(id)bookmark forAttributes:(unint64_t)attributes
{
  bookmarkCopy = bookmark;
  if ([bookmarkCopy isInserted] && (objc_msgSend(bookmarkCopy, "isSyncable") & 1) != 0)
  {
    v7 = objc_autoreleasePoolPush();
    serverID = [bookmarkCopy serverID];
    v9 = [(WebBookmarkCollection *)self bookmarkWithServerID:serverID excludeDeletedBookmarks:0];

    if ([v9 isDeleted])
    {
      attributesCopy = 0x4000;
    }

    else
    {
      attributesCopy = attributes;
    }

    if ([(WebBookmarkCollection *)self maintainsSyncMetadata])
    {
      [bookmarkCopy lockFields];
    }

    if (v9)
    {
      v11 = [bookmarkCopy mergeAttributes:attributesCopy withBookmark:v9];
    }

    else
    {
      v11 = 2;
    }

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __75__WebBookmarkCollection__mergeBookmarkIntoPersistedBookmark_forAttributes___block_invoke;
    v13[3] = &unk_279E761B0;
    selfCopy = self;
    v16 = attributesCopy;
    v14 = bookmarkCopy;
    [(WebBookmarkCollection *)self updateSyncDataForBookmark:v14 usingBlock:v13];

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    v11 = 2;
  }

  return v11;
}

id __75__WebBookmarkCollection__mergeBookmarkIntoPersistedBookmark_forAttributes___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) updateGenerationsInSyncData:v3 forAttributes:*(a1 + 48)];
  if ([*(a1 + 40) maintainsSyncMetadata])
  {
    [*(a1 + 32) unlockFields];
  }

  return v3;
}

id __78__WebBookmarkCollection__saveBookmark_withSpecialID_updateGenerationIfNeeded___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 48))
  {
    v4 = -1;
  }

  else
  {
    v4 = -69;
  }

  [*(a1 + 32) updateGenerationsInSyncData:v3 forAttributes:v4];
  if ([*(a1 + 40) maintainsSyncMetadata])
  {
    [*(a1 + 32) unlockFields];
  }

  return v3;
}

id __78__WebBookmarkCollection__saveBookmark_withSpecialID_updateGenerationIfNeeded___block_invoke_833(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) minimumSyncAPIVersion];
  [v3 setMinimumAPIVersion:{objc_msgSend(v4, "integerValue")}];

  v5 = [*(a1 + 32) syncState];
  [v3 setState:{objc_msgSend(v5, "integerValue")}];

  return v3;
}

- (int)bookmarkIDForServerID:(id)d excludeDeletedBookmarks:(BOOL)bookmarks
{
  bookmarksCopy = bookmarks;
  v26 = *MEMORY[0x277D85DE8];
  dCopy = d;
  [(WebBookmarkCollection *)self logRegulatoryBookmarksRead];
  if (dCopy)
  {
    if ([dCopy isEqualToString:*MEMORY[0x277D49BC0]])
    {
      v7 = 0;
    }

    else
    {
      _wb_stringByStandardizingDAVServerID = [dCopy _wb_stringByStandardizingDAVServerID];
      v9 = [dCopy isEqualToString:_wb_stringByStandardizingDAVServerID];
      v10 = &stru_288259858;
      if (bookmarksCopy)
      {
        v10 = @"deleted = 0 AND";
      }

      v11 = @"rtrim(server_id, '/') LIKE ?";
      if (v9)
      {
        v11 = @"server_id = ?";
      }

      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT id FROM bookmarks WHERE %@ %@ ORDER BY server_id ASC", v10, v11];
      WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v21, self->_db, [v12 UTF8String]);
      if (v23)
      {
        if (v9)
        {
          v13 = _wb_stringByStandardizingDAVServerID;
        }

        else
        {
          v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%%%@", _wb_stringByStandardizingDAVServerID];
        }

        v15 = v13;
        v16 = v22;
        v17 = v13;
        sqlite3_bind_text(v16, 1, [v15 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
        if (sqlite3_step(v22) == 100)
        {
          v7 = sqlite3_column_int(v22, 0);
        }

        else
        {
          v18 = WBS_LOG_CHANNEL_PREFIXBookmarks();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            *buf = 138543362;
            v25 = _wb_stringByStandardizingDAVServerID;
            _os_log_impl(&dword_272C20000, v18, OS_LOG_TYPE_INFO, "Did not find any bookmarks with server ID %{public}@", buf, 0xCu);
          }

          v7 = 0x7FFFFFFF;
        }
      }

      else
      {
        v14 = WBS_LOG_CHANNEL_PREFIXBookmarks();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [WebBookmarkCollection bookmarkIDForServerID:_wb_stringByStandardizingDAVServerID excludeDeletedBookmarks:v21];
        }

        v7 = 0x7FFFFFFF;
      }

      WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v21);
    }
  }

  else if ([(WebBookmarkCollection *)self maintainsSyncMetadata])
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)bookmarkWithServerID:(id)d excludeDeletedBookmarks:(BOOL)bookmarks
{
  bookmarksCopy = bookmarks;
  dCopy = d;
  v7 = dCopy;
  if (dCopy && ![dCopy isEqualToString:*MEMORY[0x277D49BC0]])
  {
    _wb_stringByStandardizingDAVServerID = [v7 _wb_stringByStandardizingDAVServerID];
    v10 = [v7 isEqualToString:_wb_stringByStandardizingDAVServerID];
    v11 = &stru_288259858;
    if (bookmarksCopy)
    {
      v11 = @"deleted = 0 AND";
    }

    v12 = @"rtrim(server_id, '/') LIKE ?";
    if (v10)
    {
      v12 = @"server_id = ?";
    }

    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@ ORDER BY server_id ASC", v11, v12];
    WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v20, [(WebBookmarkCollection *)self _selectBookmarksWhere:v13]);
    if (v10)
    {
      v14 = _wb_stringByStandardizingDAVServerID;
    }

    else
    {
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%%%@", _wb_stringByStandardizingDAVServerID];
    }

    v15 = v14;
    sqlite3_bind_text(v21, 1, [v14 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
    if (sqlite3_step(v21) == 100)
    {
      v16 = [WebBookmark alloc];
      v17 = v21;
      currentDeviceIdentifier = [(WebBookmarkCollection *)self currentDeviceIdentifier];
      v8 = [(WebBookmark *)v16 initWithSQLiteStatement:v17 deviceIdentifier:currentDeviceIdentifier collectionType:[(WBCollectionConfiguration *)self->_configuration collectionType]];
    }

    else
    {
      v8 = 0;
    }

    WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v20);
  }

  else
  {
    v8 = [(WebBookmarkCollection *)self bookmarkWithID:0];
  }

  return v8;
}

- (BOOL)setServerID:(id)d forBookmark:(id)bookmark
{
  dCopy = d;
  bookmarkCopy = bookmark;
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v10, self->_db, "UPDATE bookmarks SET server_id = ? WHERE id = ?");
  if ((v12 & 1) == 0)
  {
    goto LABEL_7;
  }

  if (dCopy)
  {
    sqlite3_bind_text(v11, 1, [dCopy cStringUsingEncoding:4], -1, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    sqlite3_bind_null(v11, 1);
  }

  sqlite3_bind_int(v11, 2, [bookmarkCopy identifier]);
  if (sqlite3_step(v11) == 101)
  {
    [bookmarkCopy setServerID:dCopy];
    v8 = 1;
  }

  else
  {
LABEL_7:
    v8 = 0;
  }

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v10);

  return v8;
}

- (id)_primaryRecordZoneID
{
  collectionType = [(WBCollectionConfiguration *)self->_configuration collectionType];
  if (collectionType == 1)
  {
    collectionType = [MEMORY[0x277CBC5F8] safari_tabGroupsRecordZoneID];
  }

  else if (!collectionType)
  {
    collectionType = [MEMORY[0x277CBC5F8] safari_bookmarksRecordZoneID];
  }

  return collectionType;
}

- (id)_rootServerIDForRecordZoneID:(id)d
{
  dCopy = d;
  if ([(WBCollectionConfiguration *)self->_configuration collectionType]== 1)
  {
    safari_tabGroupRootRecordName = [dCopy safari_tabGroupRootRecordName];
  }

  else
  {
    safari_tabGroupRootRecordName = 0;
  }

  return safari_tabGroupRootRecordName;
}

- (BOOL)userHasSharedTabGroups
{
  if (self->_userHasSharedTabGroups)
  {
    return 1;
  }

  else
  {
    v4 = [(WebBookmarkCollection *)self syncStringForKey:@"UserHasSharedTabGroupsKey"];
    self->_userHasSharedTabGroups = [v4 BOOLValue];

    return self->_userHasSharedTabGroups;
  }
}

- (id)_serverIDBeforeServerID:(id)d
{
  v3 = [(WebBookmarkCollection *)self _serverIDOfSiblingBookmarkWithServerID:d immediatelyBeforeOrAfter:1];

  return v3;
}

- (id)_serverIDAfterServerID:(id)d
{
  v3 = [(WebBookmarkCollection *)self _serverIDOfSiblingBookmarkWithServerID:d immediatelyBeforeOrAfter:0];

  return v3;
}

- (id)_serverIDOfSiblingBookmarkWithServerID:(id)d immediatelyBeforeOrAfter:(BOOL)after
{
  afterCopy = after;
  dCopy = d;
  [(WebBookmarkCollection *)self logRegulatoryBookmarksRead];
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v22, self->_db, "SELECT parent, order_index FROM bookmarks WHERE server_id = ? AND deleted = 0");
  if ((v24 & 1) != 0 && (sqlite3_bind_text(v23, 1, [dCopy UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL), sqlite3_step(v23) == 100))
  {
    v7 = sqlite3_column_int(v23, 0);
    v8 = sqlite3_column_int(v23, 1);
    WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v19, self->_db, "SELECT special_id FROM bookmarks WHERE id = ? AND deleted = 0");
    if ((v21 & 1) != 0 && (sqlite3_bind_int(v20, 1, v7), sqlite3_step(v20) == 100))
    {
      v9 = (sqlite3_column_int(v20, 0) == 3) ^ afterCopy;
      v10 = v9 == 0;
      if (v9)
      {
        v11 = @"MAX";
      }

      else
      {
        v11 = @"MIN";
      }

      v12 = @">";
      if (!v10)
      {
        v12 = @"<";
      }

      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT server_id, %@(order_index) FROM bookmarks WHERE parent = ? AND order_index %@ ? AND server_id IS NOT NULL AND deleted = 0", v11, v12];
      WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v17, self->_db, [v13 UTF8String]);
      sqlite3_bind_int(v18, 1, v7);
      sqlite3_bind_int(v18, 2, v8);
      if (sqlite3_step(v18) == 100 && (v14 = sqlite3_column_text(v18, 0)) != 0)
      {
        v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:v14];
      }

      else
      {
        v15 = 0;
      }

      WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v17);
    }

    else
    {
      v15 = 0;
    }

    WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v19);
  }

  else
  {
    v15 = 0;
  }

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v22);

  return v15;
}

- (id)_firstServerIDInFolderWithServerID:(id)d
{
  v3 = [(WebBookmarkCollection *)self _firstOrLastServerIDInFolderWithServerID:d isFirst:1];

  return v3;
}

- (id)_lastServerIDInFolderWithServerID:(id)d
{
  v3 = [(WebBookmarkCollection *)self _firstOrLastServerIDInFolderWithServerID:d isFirst:0];

  return v3;
}

- (id)_firstOrLastServerIDInFolderWithServerID:(id)d isFirst:(BOOL)first
{
  firstCopy = first;
  dCopy = d;
  [(WebBookmarkCollection *)self logRegulatoryBookmarksRead];
  if ([dCopy length])
  {
    WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v14, self->_db, "SELECT id, special_id FROM bookmarks WHERE server_id = ? AND deleted = 0");
    if ((v16 & 1) == 0 || (sqlite3_bind_text(v15, 1, [dCopy UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL), sqlite3_step(v15) != 100))
    {
      WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v14);
      v9 = 0;
      goto LABEL_14;
    }

    v7 = sqlite3_column_int(v15, 0);
    v8 = sqlite3_column_int(v15, 1) == 3;
    WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v14);
    firstCopy ^= v8;
  }

  else
  {
    v7 = 0;
  }

  v10 = @"MAX";
  if (firstCopy)
  {
    v10 = @"MIN";
  }

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT %@(order_index), server_id FROM bookmarks WHERE parent = ? AND server_id IS NOT NULL", v10];
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v14, self->_db, [v11 UTF8String]);
  sqlite3_bind_int(v15, 1, v7);
  if (sqlite3_step(v15) == 100 && (v12 = sqlite3_column_text(v15, 1)) != 0)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:v12];
  }

  else
  {
    v9 = 0;
  }

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v14);

LABEL_14:

  return v9;
}

+ (id)_cloudKitSyncMetadataFileNameWithCollectionType:(int64_t)type
{
  v3 = @"SafariTabsSyncMetadata.plist";
  if (type != 1)
  {
    v3 = 0;
  }

  if (type)
  {
    return v3;
  }

  else
  {
    return @"BookmarksSyncMetadata.plist";
  }
}

+ (id)deviceIdentifierForCloudKitWithCollectionType:(int64_t)type generateIfNeeded:(BOOL)needed
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__2;
  v12 = __Block_byref_object_dispose__2;
  v13 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __88__WebBookmarkCollection_deviceIdentifierForCloudKitWithCollectionType_generateIfNeeded___block_invoke;
  v6[3] = &unk_279E76200;
  neededCopy = needed;
  v6[5] = type;
  v6[6] = self;
  v6[4] = &v8;
  performBlockExclusively(v6);
  v4 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v4;
}

void __88__WebBookmarkCollection_deviceIdentifierForCloudKitWithCollectionType_generateIfNeeded___block_invoke(uint64_t a1)
{
  v2 = collectionTypeToDeviceIdentifierDictionary();
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 40)];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = v4;
  if (v4)
  {
    v6 = [(WebBookmarkDeviceIdentifier *)v4 UUID];
    if (v6)
    {
LABEL_7:

LABEL_8:
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), v5);
      goto LABEL_9;
    }

    if ((*(a1 + 56) & 1) == 0 && ![(WebBookmarkDeviceIdentifier *)v5 encounteredErrorWhileObtainingUUID])
    {
      goto LABEL_8;
    }
  }

  v7 = *(a1 + 48);
  v6 = [objc_opt_class() safariDirectoryPath];
  if (v6)
  {
    v8 = MEMORY[0x277CBEBC0];
    v9 = [*(a1 + 48) _cloudKitSyncMetadataFileNameWithCollectionType:*(a1 + 40)];
    v10 = [v6 stringByAppendingPathComponent:v9];
    v11 = [v8 fileURLWithPath:v10];

    [(WebBookmarkDeviceIdentifier *)v5 stopObservingChanges];
    v12 = [[WebBookmarkDeviceIdentifier alloc] initWithPlistURL:v11 readOnly:(*(a1 + 56) & 1) == 0];

    [v2 setObject:v12 forKeyedSubscript:v3];
    v5 = v12;
    goto LABEL_7;
  }

  v13 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    __88__WebBookmarkCollection_deviceIdentifierForCloudKitWithCollectionType_generateIfNeeded___block_invoke_cold_1();
  }

LABEL_9:
}

+ (void)resetDeviceIdentifierForCloudKitWithCollectionType:(int64_t)type
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __76__WebBookmarkCollection_resetDeviceIdentifierForCloudKitWithCollectionType___block_invoke;
  v3[3] = &__block_descriptor_48_e5_v8__0l;
  v3[4] = self;
  v3[5] = type;
  performBlockExclusively(v3);
}

void __76__WebBookmarkCollection_resetDeviceIdentifierForCloudKitWithCollectionType___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v10 = [objc_opt_class() safariDirectoryPath];
  v3 = MEMORY[0x277CBEBC0];
  v4 = [*(a1 + 32) _cloudKitSyncMetadataFileNameWithCollectionType:*(a1 + 40)];
  v5 = [v10 stringByAppendingPathComponent:v4];
  v6 = [v3 fileURLWithPath:v5];

  v7 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 40)];
  v8 = collectionTypeToDeviceIdentifierDictionary();
  v9 = [v8 objectForKeyedSubscript:v7];
  [v9 stopObservingChanges];
  [v8 setObject:0 forKeyedSubscript:v7];
  [WebBookmarkDeviceIdentifier clearDeviceIdentifierWithPlistURL:v6];
}

- (void)resetDeviceIdentifier
{
  if ([(WBCollectionConfiguration *)self->_configuration isInMemoryDatabase])
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    [(WBCollectionConfiguration *)self->_configuration setIdentifier:uUIDString];
  }

  else
  {
    v4 = objc_opt_class();
    collectionType = [(WBCollectionConfiguration *)self->_configuration collectionType];

    [v4 resetDeviceIdentifierForCloudKitWithCollectionType:collectionType];
  }
}

- (BOOL)_setSyncKey:(id)key forBookmark:(id)bookmark
{
  keyCopy = key;
  bookmarkCopy = bookmark;
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v10, self->_db, "UPDATE bookmarks SET sync_key = ? WHERE id = ?");
  if ((v12 & 1) == 0)
  {
    goto LABEL_7;
  }

  if (keyCopy)
  {
    sqlite3_bind_text(v11, 1, [keyCopy cStringUsingEncoding:4], -1, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    sqlite3_bind_null(v11, 1);
  }

  sqlite3_bind_int(v11, 2, [bookmarkCopy identifier]);
  if (sqlite3_step(v11) == 101)
  {
    [bookmarkCopy setSyncKey:keyCopy];
    v8 = 1;
  }

  else
  {
LABEL_7:
    v8 = 0;
  }

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v10);

  return v8;
}

- (BOOL)_setSyncData:(id)data forBookmark:(id)bookmark
{
  dataCopy = data;
  bookmarkCopy = bookmark;
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v11, self->_db, "UPDATE bookmarks SET sync_data = ? WHERE id = ?");
  if ((v13 & 1) == 0)
  {
    goto LABEL_7;
  }

  if (dataCopy)
  {
    v8 = [dataCopy length];
    sqlite3_bind_blob(v12, 1, [dataCopy bytes], v8, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    sqlite3_bind_null(v12, 1);
  }

  sqlite3_bind_int(v12, 2, [bookmarkCopy identifier]);
  if (sqlite3_step(v12) == 101)
  {
    [bookmarkCopy setSyncData:dataCopy];
    v9 = 1;
  }

  else
  {
LABEL_7:
    v9 = 0;
  }

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v11);

  return v9;
}

- (id)_syncKeysForServerIDs:(id)ds
{
  v29 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  [(WebBookmarkCollection *)self logRegulatoryBookmarksRead];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v26, self->_db, "SELECT sync_key FROM bookmarks WHERE server_id = ? AND deleted = 0 ORDER BY server_id ASC");
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v24, self->_db, "SELECT sync_key FROM bookmarks WHERE deleted = 0 AND rtrim(server_id, '/') LIKE ? ORDER BY server_id ASC");
  if (v27[8] == 1 && (v25[8] & 1) != 0)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    obj = dsCopy;
    v4 = [obj countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v4)
    {
      v5 = *v21;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v21 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v20 + 1) + 8 * i);
          _wb_stringByStandardizingDAVServerID = [v7 _wb_stringByStandardizingDAVServerID];
          if ([v7 isEqualToString:_wb_stringByStandardizingDAVServerID])
          {
            v9 = _wb_stringByStandardizingDAVServerID;
            v10 = v27;
          }

          else
          {
            v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%%%@", _wb_stringByStandardizingDAVServerID];
            v10 = v25;
          }

          v11 = *v10;
          sqlite3_reset(*v10);
          v12 = v9;
          sqlite3_bind_text(v11, 1, [v9 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
          if (sqlite3_step(v11) == 100 && sqlite3_column_type(v11, 0) != 5)
          {
            v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:{sqlite3_column_text(v11, 0)}];
            [dictionary setObject:v13 forKey:v7];
          }
        }

        v4 = [obj countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v4);
    }

    v14 = 0;
  }

  else
  {
    v14 = dictionary;
    dictionary = 0;
  }

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v24);
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v26);

  v15 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (BOOL)_rebuildAncestorTable
{
  array = [MEMORY[0x277CBEA60] array];
  LOBYTE(self) = [(WebBookmarkCollection *)self _insertAncestorTableEntriesForBookmarkID:0 withAncestorIDs:array];

  return self;
}

- (BOOL)_deleteAncestorTableEntriesForBookmarkID:(int)d
{
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v7, self->_db, "DELETE FROM folder_ancestors WHERE folder_id IN (SELECT folder_id FROM folder_ancestors WHERE ancestor_id = ?) OR folder_id = ?;");
  if ((v9 & 1) == 0)
  {
LABEL_6:
    v4 = 0;
    goto LABEL_7;
  }

  sqlite3_bind_int(v8, 1, d);
  sqlite3_bind_int(v8, 2, d);
  if (sqlite3_step(v8) != 101)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [WebBookmarkCollection _deleteAncestorTableEntriesForBookmarkID:];
    }

    goto LABEL_6;
  }

  v4 = 1;
LABEL_7:
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v7);
  return v4;
}

- (void)_normalizeSearchString:(__CFString *)string
{
  CFStringNormalize(string, kCFStringNormalizationFormD);
  locale = self->_locale;

  CFStringFold(string, 0x181uLL, locale);
}

- (BOOL)_indexBookmarkID:(int)d title:(id)title
{
  v32 = *MEMORY[0x277D85DE8];
  titleCopy = title;
  if (titleCopy)
  {
    WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v23, self->_db, "INSERT INTO bookmark_title_words (bookmark_id, word, word_index) VALUES (?, ?, ?)");
    v7 = v24;
    v8 = [(__CFString *)titleCopy length];
    if (v8 >= 0x200)
    {
      v9 = 512;
    }

    else
    {
      v9 = v8;
    }

    MutableCopy = CFStringCreateMutableCopy(0, v9, titleCopy);
    [(WebBookmarkCollection *)self _normalizeSearchString:MutableCopy];
    wordTokenizer = self->_wordTokenizer;
    if (!wordTokenizer)
    {
      v12 = objc_alloc_init(WebBookmarkTitleWordTokenizer);
      v13 = self->_wordTokenizer;
      self->_wordTokenizer = v12;

      wordTokenizer = self->_wordTokenizer;
    }

    [(WebBookmarkTitleWordTokenizer *)wordTokenizer setString:MutableCopy];
    usedBufLen = 0;
    advanceToNextToken = [(WebBookmarkTitleWordTokenizer *)self->_wordTokenizer advanceToNextToken];
    v15.length = v15.location;
    for (i = 0; ; ++i)
    {
      v17 = advanceToNextToken == 0x7FFFFFFFFFFFFFFFLL;
      if (advanceToNextToken == 0x7FFFFFFFFFFFFFFFLL)
      {
        CFRelease(MutableCopy);
        goto LABEL_16;
      }

      v15.location = advanceToNextToken;
      CFStringGetBytes(MutableCopy, v15, 0x8000100u, 0, 0, buffer, 256, &usedBufLen);
      buffer[usedBufLen] = 0;
      sqlite3_bind_int(v7, 1, d);
      sqlite3_bind_text(v7, 2, buffer, -1, 0xFFFFFFFFFFFFFFFFLL);
      sqlite3_bind_int(v7, 3, i);
      if (sqlite3_step(v7) != 101)
      {
        break;
      }

      sqlite3_reset(v7);
      sqlite3_clear_bindings(v7);
      advanceToNextToken = [(WebBookmarkTitleWordTokenizer *)self->_wordTokenizer advanceToNextToken];
      v15.length = v15.location;
    }

    CFRelease(MutableCopy);
    v18 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      _errorForMostRecentSQLiteError = [(WebBookmarkCollection *)self _errorForMostRecentSQLiteError];
      *buf = 67109634;
      dCopy = d;
      v27 = 1024;
      v28 = i;
      v29 = 2114;
      v30 = _errorForMostRecentSQLiteError;
      _os_log_error_impl(&dword_272C20000, v18, OS_LOG_TYPE_ERROR, "Failed to index for bookmark with ID: (%d), word_index: (%d) and error: %{public}@", buf, 0x18u);
    }

LABEL_16:
    WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v23);
  }

  else
  {
    v17 = 1;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v17;
}

- (BOOL)_indexAllTitleWords
{
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v11, self->_db, "SELECT id, title FROM bookmarks where type = 0 AND deleted = 0");
  v3 = v12;
  while (1)
  {
    v4 = sqlite3_step(v3);
    if (v4 != 100)
    {
      break;
    }

    v5 = sqlite3_column_int(v3, 0);
    v6 = sqlite3_column_text(v3, 1);
    if (v6)
    {
      v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:v6 encoding:4];
      v8 = [(WebBookmarkCollection *)self _indexBookmarkID:v5 title:v7];

      if (!v8)
      {
        v9 = 0;
        goto LABEL_7;
      }
    }
  }

  v9 = v4 == 101;
LABEL_7:
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v11);
  return v9;
}

- (NSArray)changeList
{
  array = [MEMORY[0x277CBEB18] array];
  [(WebBookmarkCollection *)self _collectChangesOfType:0 withClause:@"FROM folder_ancestors LEFT OUTER JOIN bookmarks ON folder_id = bookmarks.id WHERE bookmarks.id != 0 AND added = 1 AND syncable = 1 GROUP BY folder_id ORDER BY count(ancestor_id) ASC" intoArray:array];
  [(WebBookmarkCollection *)self _collectChangesOfType:0 withClause:@"FROM bookmarks WHERE added = 1 AND id != 0 AND type = 0 AND syncable = 1" intoArray:array];
  if ([(WebBookmarkCollection *)self maintainsSyncMetadata])
  {
    lastSyncedRecordGeneration = [(WebBookmarkCollection *)self lastSyncedRecordGeneration];
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"FROM folder_ancestors LEFT OUTER JOIN bookmarks ON folder_id = bookmarks.id WHERE dav_generation > %zd AND deleted = 0 AND added = 0 AND bookmarks.id != 0 AND syncable = 1 AND (modified_attributes & %llu) == %llu GROUP BY folder_id ORDER BY count(ancestor_id) ASC", lastSyncedRecordGeneration, 64, 64];
    [(WebBookmarkCollection *)self _collectChangesOfType:1 withClause:v5 intoArray:array];

    [MEMORY[0x277CCACA8] stringWithFormat:@"FROM bookmarks WHERE dav_generation > %zd AND deleted = 0 AND added = 0 AND id != 0 AND syncable = 1 AND modified_attributes != 0 AND ((modified_attributes & %llu) != %llu OR type = 0)", lastSyncedRecordGeneration, 64, 64];
  }

  else
  {
    currentRecordGeneration = [(WebBookmarkCollection *)self currentRecordGeneration];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"FROM folder_ancestors LEFT OUTER JOIN bookmarks ON folder_id = bookmarks.id WHERE dav_generation = %zd AND deleted = 0 AND added = 0 AND bookmarks.id != 0 AND syncable = 1 AND (modified_attributes & %llu) == %llu GROUP BY folder_id ORDER BY count(ancestor_id) ASC", currentRecordGeneration, 64, 64];
    [(WebBookmarkCollection *)self _collectChangesOfType:1 withClause:v8 intoArray:array];

    [MEMORY[0x277CCACA8] stringWithFormat:@"FROM bookmarks WHERE dav_generation = %zd AND deleted = 0 AND added = 0 AND id != 0 AND syncable = 1 AND ((modified_attributes & %llu) != %llu OR type = 0)", currentRecordGeneration, 64, 64];
  }
  v6 = ;
  [(WebBookmarkCollection *)self _collectChangesOfType:1 withClause:v6 intoArray:array];

  [(WebBookmarkCollection *)self _collectChangesOfType:2 withClause:@"FROM bookmarks WHERE deleted = 1 AND server_id IS NOT NULL AND syncable = 1 GROUP BY server_id" intoArray:array];

  return array;
}

- (id)nextChangeAfterLocalRecordGeneration:(int64_t)generation
{
  v5 = MEMORY[0x277CCACA8];
  v6 = BookmarkSQLiteColumns();
  generation = [v5 stringWithFormat:@"SELECT %@, added, deleted, dav_generation FROM bookmarks WHERE id != 0 AND syncable = 1 AND dav_generation > %ld AND (added = 1 OR deleted = 1 OR modified_attributes != 0) ORDER BY dav_generation ASC LIMIT 1", v6, generation];

  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v21, self->_db, [generation UTF8String]);
  if (sqlite3_step(v22) == 100)
  {
    v8 = [WebBookmark alloc];
    v9 = v22;
    currentDeviceIdentifier = [(WebBookmarkCollection *)self currentDeviceIdentifier];
    v11 = [(WebBookmark *)v8 initWithSQLiteStatement:v9 deviceIdentifier:currentDeviceIdentifier collectionType:[(WBCollectionConfiguration *)self->_configuration collectionType]];

    v12 = BookmarkSQLiteColumnNames();
    LODWORD(v9) = [v12 count];

    v13 = sqlite3_column_int(v22, v9);
    v14 = sqlite3_column_int(v22, v9 + 1);
    v15 = sqlite3_column_int64(v22, v9 + 2);
    v16 = [WBChangeRecord alloc];
    if (v14)
    {
      v17 = 2;
    }

    else
    {
      v17 = 1;
    }

    if (v13)
    {
      v18 = 0;
    }

    else
    {
      v18 = v17;
    }

    v19 = [(WBChangeRecord *)v16 initWithBookmarkCollection:self bookmark:v11 changeType:v18 localRecordGeneration:v15];
  }

  else
  {
    v19 = 0;
  }

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v21);

  return v19;
}

- (BOOL)_clearChangeList
{
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v5, self->_db, [@"UPDATE bookmarks SET added = 0 modified:"UTF8String" attributes = 0 WHERE added != 0 OR modified:?attributes != 0"]);
  v3 = sqlite3_step(v6) == 101 && [(WebBookmarkCollection *)self _clearAllTombstones]&& [(WebBookmarkCollection *)self _incrementRecordGeneration];
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v5);
  return v3;
}

- (BOOL)clearChangesDuringOrBeforeLocalRecordGeneration:(int64_t)generation
{
  generation = [MEMORY[0x277CCACA8] stringWithFormat:@"UPDATE bookmarks SET added = 0, modified_attributes = 0 WHERE dav_generation <= %zu AND (added != 0 OR modified_attributes != 0)", generation];
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v8, self->_db, [generation UTF8String]);
  v6 = sqlite3_step(v9) == 101 && [(WebBookmarkCollection *)self _clearAllTombstonesDuringOrBeforeLocalRecordGeneration:generation];
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v8);

  return v6;
}

- (BOOL)clearChangesForChangeRecords:(id)records lastSyncedRecordGeneration:(int64_t)generation
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  recordsCopy = records;
  v7 = [recordsCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(recordsCopy);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        if (![v10 changeType])
        {
          v11 = MEMORY[0x277CCACA8];
          bookmark = [v10 bookmark];
          v13 = [v11 stringWithFormat:@"UPDATE bookmarks SET added = 0 WHERE id = %d", objc_msgSend(bookmark, "identifier")];
          [(WebBookmarkCollection *)self _executeSQL:v13];
        }
      }

      v7 = [recordsCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v14 = [(WebBookmarkCollection *)self clearChangesDuringOrBeforeLocalRecordGeneration:generation];
  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (BOOL)clearChangesForBookmark:(id)bookmark
{
  bookmarkCopy = bookmark;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"UPDATE bookmarks SET added = 0, modified_attributes = 0 WHERE id = %d", objc_msgSend(bookmarkCopy, "identifier")];
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v8, self->_db, [v5 UTF8String]);
  if (sqlite3_step(v9) == 101 && [(WebBookmarkCollection *)self _clearTombstoneForBookmark:bookmarkCopy])
  {
    [bookmarkCopy setModifiedAttributes:0];
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v8);

  return v6;
}

- (BOOL)_markBookmarkID:(int)d added:(BOOL)added
{
  addedCopy = added;
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v7, self->_db, "UPDATE bookmarks SET added = ? WHERE id = ?");
  sqlite3_bind_int(v8, 1, addedCopy);
  sqlite3_bind_int(v8, 2, d);
  LOBYTE(d) = sqlite3_step(v8) == 101;
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v7);
  return d;
}

- (int64_t)lastSyncedRecordGeneration
{
  db = self->_db;
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT value from sync_properties WHERE key = '%@'", @"LastSyncedRecordGeneration"];
  v5 = WebBookmarks::BookmarkSQLStatement::selectInt(db, v3, v4);

  return v5;
}

- (void)setLastSyncedRecordGeneration:(int64_t)generation
{
  lastSyncedRecordGeneration = [(WebBookmarkCollection *)self lastSyncedRecordGeneration];
  if (lastSyncedRecordGeneration != generation)
  {
    db = self->_db;
    if (lastSyncedRecordGeneration == -1)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"INSERT INTO sync_properties (key, value) VALUES ('%@', %zd)", @"LastSyncedRecordGeneration", generation];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"UPDATE sync_properties SET value = %zd WHERE key = '%@'", generation, @"LastSyncedRecordGeneration"];
    }
    v8 = ;
    WebBookmarks::BookmarkSQLStatement::executeSQL(db, v8, v7);
  }
}

- (void)_metaDataFileChanged:(id)changed
{
  if (![(WBCollectionConfiguration *)self->_configuration skipsExternalNotifications]&& ![(WBCollectionConfiguration *)self->_configuration isReadonly])
  {
    v4 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_272C20000, v4, OS_LOG_TYPE_INFO, "Handling bookmarks metadata file change notification", buf, 2u);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__WebBookmarkCollection__metaDataFileChanged___block_invoke;
    block[3] = &unk_279E757C8;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (int)_favoritesFolderIdentifier
{
  result = self->_favoritesFolderIdentifier;
  if (!result)
  {
    favoritesFolder = [(WebBookmarkCollection *)self favoritesFolder];
    self->_favoritesFolderIdentifier = [favoritesFolder identifier];

    return self->_favoritesFolderIdentifier;
  }

  return result;
}

- (void)setFavoritesFolder:(id)folder localOnly:(BOOL)only
{
  folderCopy = folder;
  if ([(WebBookmarkCollection *)self applyInMemoryChangesToDatabase])
  {
    favoritesFolder = [(WebBookmarkCollection *)self favoritesFolder];
    identifier = [folderCopy identifier];
    if (identifier != [favoritesFolder identifier])
    {
      if (only || ([favoritesFolder identifier] == 1 || (objc_msgSend(favoritesFolder, "setSelectedFavoritesFolder:", MEMORY[0x277CBEC28]), -[WebBookmarkCollection _saveBookmark:withSpecialID:updateGenerationIfNeeded:](self, "_saveBookmark:withSpecialID:updateGenerationIfNeeded:", favoritesFolder, -[WebBookmarkCollection _specialIDForBookmarkBeingSaved:](self, "_specialIDForBookmarkBeingSaved:", favoritesFolder), 1))) && (objc_msgSend(folderCopy, "setSelectedFavoritesFolder:", MEMORY[0x277CBEC38]), -[WebBookmarkCollection _saveBookmark:withSpecialID:updateGenerationIfNeeded:](self, "_saveBookmark:withSpecialID:updateGenerationIfNeeded:", folderCopy, -[WebBookmarkCollection _specialIDForBookmarkBeingSaved:](self, "_specialIDForBookmarkBeingSaved:", folderCopy), 1)))
      {
        -[WebBookmarkCollection setFavoritesFolderIdentifier:postChangeNotification:](self, "setFavoritesFolderIdentifier:postChangeNotification:", [folderCopy identifier], 1);
      }
    }
  }
}

- (BOOL)bookmarkIsFavoritesFolder:(id)folder
{
  folderCopy = folder;
  identifier = [folderCopy identifier];
  LOBYTE(self) = identifier == [(WebBookmarkCollection *)self _favoritesFolderIdentifier];

  return self;
}

- (BOOL)bookmarkIsInFavoritesFolder:(id)folder
{
  folderCopy = folder;
  favoritesFolder = [(WebBookmarkCollection *)self favoritesFolder];
  v6 = -[WebBookmarkCollection _descendantIDsOfBookmarkFolderID:](self, "_descendantIDsOfBookmarkFolderID:", [favoritesFolder identifier]);

  v7 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(folderCopy, "identifier")}];
  v8 = [v6 containsObject:v7];

  return v8;
}

- (NSNumber)frequentlyVisitedSitesFolderBookmarkID
{
  [(WebBookmarkCollection *)self logRegulatoryBookmarksRead];
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v5, self->_db, "SELECT id FROM bookmarks WHERE special_id = ?");
  sqlite3_bind_int(v6, 1, 5);
  if (sqlite3_step(v6) == 100)
  {
    v3 = [MEMORY[0x277CCABB0] numberWithInt:{sqlite3_column_int(v6, 0)}];
  }

  else
  {
    v3 = 0;
  }

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v5);

  return v3;
}

- (void)_postBookmarksDidReloadNotification
{
  if ([(WebBookmarkCollection *)self _primaryCollection])
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.bookmarks.BookmarksFileChanged", 0, 0, 0);
  }
}

- (void)_postBookmarksDidReloadNotificationAndStartReadingListFetcherIfChangesWereMade
{
  if (self->_dirty)
  {
    [(WebBookmarkCollection *)self _postBookmarksDidReloadNotification];

    [(WebBookmarkCollection *)self _startReadingListFetcher];
  }

  else
  {
    v3 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_272C20000, v3, OS_LOG_TYPE_DEFAULT, "WebBookmarks sync is not posting a change notification because the collection is not dirty", v4, 2u);
    }
  }
}

- (id)_folderContentsDidChangeNotificationName
{
  collectionType = [(WBCollectionConfiguration *)self->_configuration collectionType];
  v3 = @"WebBookmarksTabFolderContentsDidChangeNotification";
  if (collectionType != 1)
  {
    v3 = 0;
  }

  if (collectionType)
  {
    return v3;
  }

  else
  {
    return @"WebBookmarksFolderContentsDidChangeNotification";
  }
}

- (void)_postBookmarksSpecialFoldersDidChangeNotification
{
  if (self->_setupFinished && ![(WBCollectionConfiguration *)self->_configuration collectionType])
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"WebBookmarksSpecialFoldersDidChangeNotification" object:self userInfo:0];
  }
}

- (id)_safariFetcherServerProxy
{
  if (-[WebBookmarkCollection _primaryCollection](self, "_primaryCollection") && (+[WBFeatureManager sharedFeatureManager](WBFeatureManager, "sharedFeatureManager"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 isOfflineReadingListAvailable], v3, (v4 & 1) != 0))
  {
    safariFetcherServerProxy = self->_safariFetcherServerProxy;
    if (!safariFetcherServerProxy)
    {
      v6 = objc_alloc_init(SafariFetcherServerProxy);
      v7 = self->_safariFetcherServerProxy;
      self->_safariFetcherServerProxy = v6;

      safariFetcherServerProxy = self->_safariFetcherServerProxy;
    }

    v8 = safariFetcherServerProxy;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_startReadingListFetcher
{
  _safariFetcherServerProxy = [(WebBookmarkCollection *)self _safariFetcherServerProxy];
  [_safariFetcherServerProxy startReadingListFetcher];
}

- (void)_simulateCrashWithDescription:(id)description
{
  descriptionCopy = description;
  v4 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    [WebBookmarkCollection _simulateCrashWithDescription:];
  }
}

- (BOOL)_importBookmarksPlist:(id)plist
{
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:plist];
  if (v4 && [(WebBookmarkCollection *)self mergeWithBookmarksDictionary:v4 clearHidden:1 error:0])
  {
    [(WebBookmarkCollection *)self _normalizeDatabaseURLs];
    v5 = 1;
  }

  else
  {
    v6 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [WebBookmarkCollection _importBookmarksPlist:];
    }

    v5 = 0;
  }

  return v5;
}

- (BOOL)_importSyncAnchorPlist:(id)plist
{
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:plist];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKey:@"ComputerAnchorKey"];
    if (v6)
    {
      v7 = [(WebBookmarkCollection *)self syncSetString:v6 forKey:@"ComputerAnchorKey"];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_normalizeDatabaseURLs
{
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v10, self->_db, "SELECT id, URL FROM bookmarks WHERE type = 0 AND deleted = 0");
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(&v8, self->_db, "UPDATE bookmarks SET URL = ? WHERE id = ?");
  while (sqlite3_step(v11) == 100)
  {
    v3 = sqlite3_column_int(v11, 0);
    v4 = sqlite3_column_text(v11, 1);
    if (v4)
    {
      v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v4];
      wb_bestURLForUserTypedString = [v5 wb_bestURLForUserTypedString];
      absoluteString = [wb_bestURLForUserTypedString absoluteString];

      if (absoluteString)
      {
        if (([v5 isEqualToString:absoluteString] & 1) == 0)
        {
          sqlite3_reset(pStmt);
          sqlite3_bind_text(pStmt, 1, [absoluteString UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
          sqlite3_bind_int(pStmt, 2, v3);
          sqlite3_step(pStmt);
        }
      }
    }
  }

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(&v8);
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v10);
}

- (void)_restoreOrMergeAllowedSitesFolderAndContentsWithWebFilterAllowedSites:(id)sites ensureChildCount:(BOOL)count postChangeNotification:(BOOL)notification
{
  notificationCopy = notification;
  countCopy = count;
  v46 = *MEMORY[0x277D85DE8];
  sitesCopy = sites;
  selfCopy = self;
  webFilterAllowedSitesFolder = [(WebBookmarkCollection *)self webFilterAllowedSitesFolder];
  v8 = webFilterAllowedSitesFolder;
  if (!webFilterAllowedSitesFolder)
  {
    v8 = [[WebBookmark alloc] initFolderWithParentID:0 collectionType:[(WBCollectionConfiguration *)selfCopy->_configuration collectionType]];
    [v8 _setSyncable:0];
    [(WebBookmarkCollection *)selfCopy _saveBookmark:v8 withSpecialID:4 updateGenerationIfNeeded:1];
  }

  v32 = v8;
  v30 = [sitesCopy mutableCopy];
  indexSet = [MEMORY[0x277CCAB58] indexSet];
  if (webFilterAllowedSitesFolder)
  {
    if (countCopy && ![(WebBookmarkCollection *)selfCopy _ensureFolderChildrenCount:v8])
    {
      goto LABEL_32;
    }

    v9 = [v30 valueForKey:@"address"];
    webFilterAllowedSites = [(WebBookmarkCollection *)selfCopy webFilterAllowedSites];
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    bookmarkArray = [webFilterAllowedSites bookmarkArray];
    v12 = [bookmarkArray countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v12)
    {
      v34 = 0;
      v13 = *v41;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v41 != v13)
          {
            objc_enumerationMutation(bookmarkArray);
          }

          v15 = *(*(&v40 + 1) + 8 * i);
          address = [v15 address];
          v17 = [v9 indexOfObject:address];
          if (v17 == 0x7FFFFFFFFFFFFFFFLL)
          {
            [(WebBookmarkCollection *)selfCopy deleteBookmark:v15 postChangeNotification:0];
            v34 = 1;
          }

          else
          {
            [indexSet addIndex:v17];
          }
        }

        v12 = [bookmarkArray countByEnumeratingWithState:&v40 objects:v45 count:16];
      }

      while (v12);
    }

    else
    {
      v34 = 0;
    }
  }

  else
  {
    v34 = 1;
  }

  [v30 removeObjectsAtIndexes:indexSet];
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v30;
  v18 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v18)
  {
    v19 = *v37;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v37 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v36 + 1) + 8 * j);
        v22 = [v21 objectForKey:@"pageTitle"];
        v23 = [v21 objectForKey:@"address"];
        v24 = [v21 objectForKey:@"bookmarkPath"];
        if ([v23 length] && objc_msgSend(v22, "length"))
        {
          v25 = [WebBookmark _allowedSiteBookmarkWithTitle:v22 address:v23];
          -[WebBookmarkCollection moveBookmark:toFolderWithID:](selfCopy, "moveBookmark:toFolderWithID:", v25, [v32 identifier]);
          [(WebBookmarkCollection *)selfCopy saveBookmark:v25];

          v34 = 1;
        }
      }

      v18 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v18);
  }

  if ((v34 & notificationCopy) == 1)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"WebBookmarksDidReloadNotification" object:selfCopy userInfo:0];
  }

LABEL_32:

  v27 = *MEMORY[0x277D85DE8];
}

- (void)_restoreOrMergeReadingListFolderWithChangeNotification:(BOOL)notification
{
  notificationCopy = notification;
  if ([(WebBookmarkCollection *)self applyInMemoryChangesToDatabase])
  {
    v24 = notificationCopy;
    WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v25, [(WebBookmarkCollection *)self _selectBookmarksWhere:@"title = ? AND parent = 0 AND deleted = 0 ORDER BY order_index ASC"]);
    sqlite3_bind_text(v26, 1, [@"com.apple.ReadingList" UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
    identifier = 0;
    v6 = 0;
    while (sqlite3_step(v26) == 100)
    {
      v7 = [WebBookmark alloc];
      v8 = v26;
      currentDeviceIdentifier = [(WebBookmarkCollection *)self currentDeviceIdentifier];
      v10 = [(WebBookmark *)v7 initWithSQLiteStatement:v8 deviceIdentifier:currentDeviceIdentifier collectionType:[(WBCollectionConfiguration *)self->_configuration collectionType]];

      if (identifier)
      {
        v11 = [(WebBookmarkCollection *)self listWithID:[(WebBookmark *)v10 identifier]];
        bookmarkCount = [v11 bookmarkCount];
        if (bookmarkCount)
        {
          v13 = 0;
          do
          {
            v14 = [v11 bookmarkAtIndex:v13];
            address = [v14 address];
            v16 = [(WebBookmarkCollection *)self _firstBookmarkWithURLMatchingString:address prefixMatch:0 inParent:identifier];

            if (!v16)
            {
              v17 = [WebBookmark alloc];
              title = [v14 title];
              address2 = [v14 address];
              v20 = [(WebBookmark *)v17 initReadingListBookmarkWithTitle:title address:address2 previewText:0];

              extraAttributes = [v14 extraAttributes];
              [v20 setExtraAttributes:extraAttributes];

              localAttributes = [v14 localAttributes];
              [v20 setLocalAttributes:localAttributes];

              [v20 _setParentID:identifier];
              [(WebBookmarkCollection *)self _saveBookmark:v20 withSpecialID:0 updateGenerationIfNeeded:1];
            }

            v13 = (v13 + 1);
          }

          while (bookmarkCount != v13);
        }

        [(WebBookmarkCollection *)self deleteBookmark:v10 leaveTombstone:1];

        v6 = 1;
      }

      else
      {
        if (![(WebBookmark *)v10 isHidden]|| ![(WebBookmark *)v10 isReadingListFolder])
        {
          [(WebBookmarkCollection *)self _saveBookmark:v10 withSpecialID:3 updateGenerationIfNeeded:1];
        }

        identifier = [(WebBookmark *)v10 identifier];
      }
    }

    if (identifier)
    {
      if ((v6 & v24) != 1)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v23 = [[WebBookmark alloc] initFolderWithParentID:0 collectionType:[(WBCollectionConfiguration *)self->_configuration collectionType]];
      [(WebBookmarkCollection *)self _saveBookmark:v23 withSpecialID:3 updateGenerationIfNeeded:1];

      if (!v24)
      {
LABEL_21:
        WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v25);
        return;
      }
    }

    [(WebBookmarkCollection *)self _postBookmarksChangedSyncNotification];
    goto LABEL_21;
  }
}

- (BOOL)_ensureFolderChildrenCount:(id)count
{
  identifier = [count identifier];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"UPDATE bookmarks SET num_children = (SELECT COUNT(*) FROM bookmarks AS count_bookmarks WHERE count_bookmarks.parent = %d) WHERE (bookmarks.id = %d AND bookmarks.num_children < 0)", identifier, identifier];
  LOBYTE(self) = [(WebBookmarkCollection *)self _executeSQL:v5]== 0;

  return self;
}

- (void)_clearAndCreateAncestorTable
{
  [(WebBookmarkCollection *)self _executeSQLWithCString:"DROP TABLE IF EXISTS folder_ancestors"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"DROP TRIGGER IF EXISTS fkd_ancestors_folder_id"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"CREATE TABLE folder_ancestors (id INTEGER PRIMARY KEY AUTOINCREMENT, folder_id INTEGER NOT NULL CONSTRAINT fk_ancestors_folder_id REFERENCES bookmarks(id) ON DELETE CASCADE, ancestor_id INTEGER NOT NULL)"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"CREATE TRIGGER fkd_ancestors_folder_id BEFORE DELETE ON bookmarks FOR EACH ROW BEGIN DELETE FROM folder_ancestors WHERE folder_id = OLD.id; END;"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"CREATE INDEX ancestor_folder_id_index on folder_ancestors(folder_id)"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"CREATE INDEX ancestor_ancestor_id_index on folder_ancestors(ancestor_id)"];

  [(WebBookmarkCollection *)self _rebuildAncestorTable];
}

- (BOOL)_updateHiddenAncestorCountForBookmarksUnderFolderID:(int)d addingOffset:(int)offset
{
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v7, self->_db, "UPDATE bookmarks SET hidden_ancestor_count = hidden_ancestor_count + ? WHERE parent IN (SELECT folder_id from folder_ancestors WHERE ancestor_id = ?) OR parent = ?");
  sqlite3_bind_int(v8, 1, offset);
  sqlite3_bind_int(v8, 2, d);
  sqlite3_bind_int(v8, 3, d);
  LOBYTE(d) = sqlite3_step(v8) == 101;
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v7);
  return d;
}

- (id)fastFetchBookmarksInBookmarkList:(id)list
{
  listCopy = list;
  if ([listCopy bookmarkCount])
  {
    v5 = -[WebBookmarkCollection _fastFetchBookmarksInBookmarkFolder:includingHiddenBookmarks:](self, "_fastFetchBookmarksInBookmarkFolder:includingHiddenBookmarks:", [listCopy folderID], 0);
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  return v5;
}

- (id)databaseHealthInformation
{
  [(WebBookmarkCollection *)self logRegulatoryBookmarksRead];
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v9, self->_db, "SELECT parent, count(*) AS identical_bookmarks FROM bookmarks GROUP BY parent, type, title, url HAVING identical_bookmarks > 1");
  v3 = 0;
  v4 = 0;
  while (sqlite3_step(v10) == 100)
  {
    v5 = sqlite3_column_int(v10, 0);
    v6 = sqlite3_column_int64(v10, 1) - 1;
    v3 += v6;
    if (v5)
    {
      v6 = 0;
    }

    v4 += v6;
  }

  v7 = [[WBBookmarksDatabaseHealthInformation alloc] initWithTopLevelDuplicateBookmarksCount:v4 allDuplicateBookmarksCount:v3];
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v9);

  return v7;
}

- (BOOL)hasInMemoryChanges
{
  _inMemoryChangeSet = [(WebBookmarkCollection *)self _inMemoryChangeSet];
  changes = [_inMemoryChangeSet changes];
  v4 = [changes count] != 0;

  return v4;
}

- (void)persistChangesWithCompletion:(id)completion
{
  completionCopy = completion;
  _inMemoryChangeSet = [(WebBookmarkCollection *)self _inMemoryChangeSet];
  [_inMemoryChangeSet persistChangesWithCompletion:completionCopy];
}

- (id)applyInMemoryChanges:(id)changes
{
  v3 = [(WebBookmarkCollection *)self _applyInMemoryChanges:changes postChangeNotification:1];

  return v3;
}

- (void)_applyInMemoryChange:(id)change fromChangeSet:(id)set updatedBookmarks:(id)bookmarks
{
  v54 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  setCopy = set;
  bookmarksCopy = bookmarks;
  changeType = [changeCopy changeType];
  if (changeType > 3)
  {
    switch(changeType)
    {
      case 4:
        v12 = -[WebBookmarkCollection bookmarkWithID:](self, "bookmarkWithID:", [changeCopy bookmarkID]);
        v30 = WBS_LOG_CHANNEL_PREFIXBookmarks();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          privacyPreservingDescription = [v12 privacyPreservingDescription];
          *buf = 138543362;
          v51 = privacyPreservingDescription;
          _os_log_impl(&dword_272C20000, v30, OS_LOG_TYPE_INFO, "Applying in-memory move change for %{public}@", buf, 0xCu);
        }

        if (v12)
        {
          -[WebBookmarkCollection _moveBookmark:toFolderWithID:](self, "_moveBookmark:toFolderWithID:", v12, [changeCopy associatedBookmarkID]);
          [setCopy removeChange:changeCopy];
        }

        goto LABEL_34;
      case 5:
        v38 = -[WebBookmarkCollection bookmarkWithID:](self, "bookmarkWithID:", [changeCopy bookmarkID]);
        v39 = -[WebBookmarkCollection bookmarkWithID:](self, "bookmarkWithID:", [changeCopy associatedBookmarkID]);
        v40 = WBS_LOG_CHANNEL_PREFIXBookmarks();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          privacyPreservingDescription2 = [v38 privacyPreservingDescription];
          privacyPreservingDescription3 = [v39 privacyPreservingDescription];
          *buf = 138543618;
          v51 = privacyPreservingDescription2;
          v52 = 2114;
          v53 = privacyPreservingDescription3;
          _os_log_impl(&dword_272C20000, v40, OS_LOG_TYPE_INFO, "Applying in-memory reorder change for %{public}@ after %{public}@", buf, 0x16u);
        }

        if (v38)
        {
          [(WebBookmarkCollection *)self _reorderBookmark:v38 afterBookmark:v39];
          [setCopy removeChange:changeCopy];
        }

        break;
      case 6:
        v17 = WBS_LOG_CHANNEL_PREFIXBookmarks();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          bookmarks = [changeCopy bookmarks];
          *buf = 134218240;
          v51 = [bookmarks count];
          v52 = 1024;
          LODWORD(v53) = [changeCopy parentID];
          _os_log_impl(&dword_272C20000, v17, OS_LOG_TYPE_INFO, "Applying in-memory replace change for %zu bookmarks in folder %d", buf, 0x12u);
        }

        bookmarks2 = [changeCopy bookmarks];
        v48[0] = MEMORY[0x277D85DD0];
        v48[1] = 3221225472;
        v48[2] = __77__WebBookmarkCollection__applyInMemoryChange_fromChangeSet_updatedBookmarks___block_invoke;
        v48[3] = &unk_279E76248;
        v48[4] = self;
        v20 = [bookmarks2 safari_mapObjectsUsingBlock:v48];

        parentID = [changeCopy parentID];
        specialFolderID = [changeCopy specialFolderID];
        if (specialFolderID)
        {
          v23 = [(WebBookmarkCollection *)self bookmarkWithSpecialID:specialFolderID];
          parentID = [v23 identifier];
        }

        [(WebBookmarkCollection *)self _updateBookmarks:v20 inFolderWithID:parentID];
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v24 = v20;
        v25 = [v24 countByEnumeratingWithState:&v44 objects:v49 count:16];
        if (v25)
        {
          v26 = *v45;
          do
          {
            for (i = 0; i != v25; ++i)
            {
              if (*v45 != v26)
              {
                objc_enumerationMutation(v24);
              }

              [(WebBookmarkCollection *)self _saveBookmark:*(*(&v44 + 1) + 8 * i) startReadingListFetcher:0 forApplyingInMemoryChanges:1, v44];
            }

            v25 = [v24 countByEnumeratingWithState:&v44 objects:v49 count:16];
          }

          while (v25);
        }

        [setCopy removeChange:changeCopy];
        break;
    }
  }

  else
  {
    switch(changeType)
    {
      case 0:
        v12 = -[WebBookmarkCollection bookmarkWithID:](self, "bookmarkWithID:", [changeCopy bookmarkID]);
        v28 = WBS_LOG_CHANNEL_PREFIXBookmarks();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          privacyPreservingDescription4 = [v12 privacyPreservingDescription];
          *buf = 138543362;
          v51 = privacyPreservingDescription4;
          _os_log_impl(&dword_272C20000, v28, OS_LOG_TYPE_INFO, "Applying in-memory delete change for %{public}@", buf, 0xCu);
        }

        if (v12)
        {
          [(WebBookmarkCollection *)self _deleteBookmark:v12 postChangeNotification:0 forApplyingInMemoryChanges:1];
        }

        goto LABEL_34;
      case 2:
        bookmark = [changeCopy bookmark];
        v33 = WBS_LOG_CHANNEL_PREFIXBookmarks();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          privacyPreservingDescription5 = [bookmark privacyPreservingDescription];
          *buf = 138543362;
          v51 = privacyPreservingDescription5;
          _os_log_impl(&dword_272C20000, v33, OS_LOG_TYPE_INFO, "Applying in-memory add change for %{public}@", buf, 0xCu);
        }

        identifier = [bookmark identifier];
        specialFolderID2 = [changeCopy specialFolderID];
        if (specialFolderID2)
        {
          v37 = [(WebBookmarkCollection *)self bookmarkWithSpecialID:specialFolderID2];
          [bookmark _setParentID:{objc_msgSend(v37, "identifier")}];
        }

        [(WebBookmarkCollection *)self _saveBookmark:bookmark startReadingListFetcher:0 forApplyingInMemoryChanges:1];
        [setCopy removeChange:changeCopy];
        [setCopy updateAddChangesWithInMemoryBookmarkID:identifier toDatabaseGeneratedID:{objc_msgSend(bookmark, "identifier")}];
        [bookmarksCopy addObject:bookmark];

        break;
      case 3:
        v12 = -[WebBookmarkCollection bookmarkWithID:](self, "bookmarkWithID:", [changeCopy bookmarkID]);
        v13 = WBS_LOG_CHANNEL_PREFIXBookmarks();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          privacyPreservingDescription6 = [v12 privacyPreservingDescription];
          bookmark2 = [changeCopy bookmark];
          privacyPreservingDescription7 = [bookmark2 privacyPreservingDescription];
          *buf = 138543618;
          v51 = privacyPreservingDescription6;
          v52 = 2114;
          v53 = privacyPreservingDescription7;
          _os_log_impl(&dword_272C20000, v13, OS_LOG_TYPE_INFO, "Applying in-memory modify change for %{public}@ from %{public}@", buf, 0x16u);
        }

        if (v12)
        {
          [changeCopy applyModificationsToBookmark:v12];
          [(WebBookmarkCollection *)self _saveBookmark:v12 startReadingListFetcher:0 forApplyingInMemoryChanges:1];
          [setCopy removeChange:changeCopy];
        }

LABEL_34:

        break;
    }
  }

  v43 = *MEMORY[0x277D85DE8];
}

id __77__WebBookmarkCollection__applyInMemoryChange_fromChangeSet_updatedBookmarks___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 UUID];
  v6 = [v4 bookmarkWithUUID:v5];

  if (v6 && ([v3 isInserted] & 1) == 0)
  {
    [v3 _setID:{objc_msgSend(v6, "identifier")}];
  }

  return v3;
}

- (id)_applyInMemoryChanges:(id)changes postChangeNotification:(BOOL)notification
{
  v24 = *MEMORY[0x277D85DE8];
  changesCopy = changes;
  array = [MEMORY[0x277CBEB18] array];
  changes = [changesCopy changes];
  if (![changes count])
  {
LABEL_14:
    v14 = 0;
    goto LABEL_15;
  }

  isLockedSync = [objc_opt_class() isLockedSync];
  if (isLockedSync & 1) != 0 || ([objc_opt_class() lockSync])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = changes;
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v11)
    {
      v12 = *v20;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v10);
          }

          [(WebBookmarkCollection *)self _applyInMemoryChange:*(*(&v19 + 1) + 8 * i) fromChangeSet:changesCopy updatedBookmarks:array];
        }

        v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }

    [changesCopy removeAllChanges];
    if ((isLockedSync & 1) == 0)
    {
      [objc_opt_class() unlockSync];
    }

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __70__WebBookmarkCollection__applyInMemoryChanges_postChangeNotification___block_invoke;
    v17[3] = &unk_279E75F60;
    notificationCopy = notification;
    v17[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], v17);
    goto LABEL_14;
  }

  v14 = array;
  array = 0;
LABEL_15:

  v15 = *MEMORY[0x277D85DE8];

  return array;
}

uint64_t __70__WebBookmarkCollection__applyInMemoryChanges_postChangeNotification___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = [MEMORY[0x277CCAB98] defaultCenter];
    [v2 postNotificationName:@"WebBookmarksDidReloadNotification" object:*(a1 + 32) userInfo:0];
  }

  v3 = *(a1 + 32);

  return [v3 _postBookmarksChangedSyncNotification];
}

- (void)databaseLockAcquisitor:(id)acquisitor acquiredLock:(BOOL)lock
{
  lockCopy = lock;
  acquisitorCopy = acquisitor;
  if (lockCopy)
  {
    [(WebBookmarkCollection *)self applyInMemoryChangesToDatabase];
    [acquisitorCopy releaseLock];
  }
}

- (void)deleteBookmarkInMemory:(id)memory
{
  memoryCopy = memory;
  if ([(WebBookmarkCollection *)self _trackChangesInMemoryIfDatabaseWriteIsNotAllowed])
  {
    parentID = [memoryCopy parentID];
    [(WebBookmarkCollection *)self _deleteBookmarkInMemory:memoryCopy];
    [(WebBookmarkCollection *)self _postBookmarksFolderContentsDidChangeNotification:parentID];
    [(WBDatabaseLockAcquisitor *)self->_databaseLockAcquisitor acquireLockWithTimeout:60.0];
  }
}

- (void)_deleteBookmarkInMemory:(id)memory
{
  memoryCopy = memory;
  identifier = [memoryCopy identifier];
  parentID = [memoryCopy parentID];
  _inMemoryChangeSet = [(WebBookmarkCollection *)self _inMemoryChangeSet];
  v8 = [WebBookmarkChange deleteChangeWithBookmark:memoryCopy];
  [_inMemoryChangeSet addChange:v8];
  if ([memoryCopy isFolder])
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __49__WebBookmarkCollection__deleteBookmarkInMemory___block_invoke;
    v9[3] = &unk_279E76270;
    v10 = _inMemoryChangeSet;
    [(WebBookmarkCollection *)self _enumerateContentsOfBookmarkFolder:identifier includingSubfolders:1 usingBlock:v9];
  }

  else
  {
    [(WebBookmarkCollection *)self _postBookmarksFolderContentsDidChangeNotification:parentID];
    [(WBDatabaseLockAcquisitor *)self->_databaseLockAcquisitor acquireLockWithTimeout:60.0];
  }
}

void __49__WebBookmarkCollection__deleteBookmarkInMemory___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = -[WebBookmarkChange initWithBookmarkID:parentID:changeType:]([WebBookmarkChange alloc], "initWithBookmarkID:parentID:changeType:", [v4 identifier], objc_msgSend(v4, "parentID"), 1);
  [*(a1 + 32) addChange:v3];
}

- (void)modifyBookmarkInMemory:(id)memory
{
  memoryCopy = memory;
  if ([(WebBookmarkCollection *)self _trackChangesInMemoryIfDatabaseWriteIsNotAllowed])
  {
    _inMemoryChangeSet = [(WebBookmarkCollection *)self _inMemoryChangeSet];
    v5 = [WebBookmarkChange bookmarkModifyChangeWithBookmark:memoryCopy];
    [_inMemoryChangeSet addChange:v5];

    -[WebBookmarkCollection _postBookmarksFolderContentsDidChangeNotification:](self, "_postBookmarksFolderContentsDidChangeNotification:", [memoryCopy parentID]);
    [(WBDatabaseLockAcquisitor *)self->_databaseLockAcquisitor acquireLockWithTimeout:60.0];
  }
}

- (void)reorderBookmarkInMemory:(id)memory afterBookmark:(id)bookmark
{
  memoryCopy = memory;
  bookmarkCopy = bookmark;
  if ([(WebBookmarkCollection *)self _trackChangesInMemoryIfDatabaseWriteIsNotAllowed])
  {
    v7 = [WebBookmarkChange reorderChangeWithBookmark:memoryCopy afterBookmark:bookmarkCopy];
    _inMemoryChangeSet = [(WebBookmarkCollection *)self _inMemoryChangeSet];
    [_inMemoryChangeSet addChange:v7];

    -[WebBookmarkCollection _postBookmarksFolderContentsDidChangeNotification:](self, "_postBookmarksFolderContentsDidChangeNotification:", [memoryCopy parentID]);
    [(WBDatabaseLockAcquisitor *)self->_databaseLockAcquisitor acquireLockWithTimeout:60.0];
  }
}

- (BOOL)_deduplicateBookmarksForBookmarkDAVWithHomeURL:(id)l
{
  lCopy = l;
  if ([(WebBookmarkCollection *)self _deduplicateBookmarksWithRootFolder:0 depth:0 trackChanges:1 considerBookmarksWithSyncDataAsUnique:0 davHomeURL:lCopy])
  {
    dataRepresentation = [lCopy dataRepresentation];
    v6 = [(WebBookmarkCollection *)self setSyncData:dataRepresentation forKey:@"DAVHomeURL"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_needsDeduplicationForBookmarkDAVWithHomeURL:(id)l
{
  lCopy = l;
  v5 = [(WebBookmarkCollection *)self syncDataForKey:@"DAVHomeURL"];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithDataRepresentation:v5 relativeToURL:0];
    v7 = [lCopy isEqual:v6] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 1;
  }

  return v7;
}

uint64_t __129__WebBookmarkCollection__deduplicateBookmarksWithRootFolder_depth_trackChanges_considerBookmarksWithSyncDataAsUnique_davHomeURL___block_invoke(uint64_t a1)
{
  result = [*(*(*(a1 + 32) + 8) + 40) count];
  if (!result)
  {
    ++*(*(*(a1 + 40) + 8) + 24);
    if ((*(a1 + 72) & 1) != 0 || *(*(*(a1 + 40) + 8) + 24) <= *(a1 + 64) || *(*(*(a1 + 48) + 8) + 24) == 1)
    {
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), *(*(*(a1 + 56) + 8) + 40));
      *(*(*(a1 + 48) + 8) + 24) = 0;
      v3 = [MEMORY[0x277CBEB18] array];
      v4 = *(*(a1 + 56) + 8);
      v5 = *(v4 + 40);
      *(v4 + 40) = v3;

      return MEMORY[0x2821F96F8]();
    }
  }

  return result;
}

- (BOOL)_deleteAndRebuildAncestorTableRecords
{
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v5, self->_db, "DELETE FROM folder_ancestors");
  v3 = sqlite3_step(v6) == 101 && [(WebBookmarkCollection *)self _rebuildAncestorTable];
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v5);
  return v3;
}

- (BOOL)_recalculateCachedChildrenCountAndOrderIndices
{
  v37 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  [array addObject:&unk_2882694F0];
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v34, self->_db, "UPDATE bookmarks SET order_index = ? WHERE id = ?");
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v32, self->_db, "UPDATE bookmarks SET num_children = (SELECT COUNT(*) FROM bookmarks AS b WHERE b.parent = ? AND b.hidden = 0) WHERE id = ? AND type = 1");
  v4 = 0;
  selfCopy = self;
  v24 = array;
  do
  {
    v5 = [array count];
    if (!v5)
    {
      break;
    }

    v6 = objc_autoreleasePoolPush();
    firstObject = [array firstObject];
    [array removeObjectAtIndex:0];
    intValue = [firstObject intValue];
    v9 = intValue;
    if ((v4 & (intValue == 0)) != 0)
    {
      v10 = 2;
      v4 = 1;
    }

    else
    {
      v27 = v4;
      v11 = intValue == 0;
      v12 = [(WebBookmarkCollection *)self _fetchBookmarkIDsInFolder:intValue onlyFolders:0 includingHiddenBookmarks:1 sortedByOrderIndex:1];
      v26 = v11;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v13 = v12;
      v14 = [v13 countByEnumeratingWithState:&v28 objects:v36 count:16];
      if (v14)
      {
        v15 = 0;
        v16 = *v29;
        v25 = v5;
        while (2)
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v29 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v28 + 1) + 8 * i);
            sqlite3_reset(pStmt);
            sqlite3_clear_bindings(pStmt);
            sqlite3_bind_int(pStmt, 1, v15);
            sqlite3_bind_int(pStmt, 2, [v18 intValue]);
            if (sqlite3_step(pStmt) != 101)
            {
              v10 = 1;
              v20 = v13;
              self = selfCopy;
              array = v24;
              v19 = v27;
              v5 = v25;
              goto LABEL_15;
            }

            ++v15;
          }

          v14 = [v13 countByEnumeratingWithState:&v28 objects:v36 count:16];
          array = v24;
          v5 = v25;
          if (v14)
          {
            continue;
          }

          break;
        }
      }

      self = selfCopy;
      v19 = v27;
      v20 = [(WebBookmarkCollection *)selfCopy _fetchBookmarkIDsInFolder:v9 onlyFolders:1 includingHiddenBookmarks:1 sortedByOrderIndex:0];
      [array addObjectsFromArray:v20];
      sqlite3_reset(v33);
      sqlite3_clear_bindings(v33);
      sqlite3_bind_int(v33, 1, v9);
      sqlite3_bind_int(v33, 2, v9);
      v10 = sqlite3_step(v33) != 101;
LABEL_15:

      v4 = v19 | v26;
    }

    objc_autoreleasePoolPop(v6);
  }

  while ((v10 | 2) == 2);
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v32);
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v34);

  v21 = *MEMORY[0x277D85DE8];
  return v5 == 0;
}

- (BOOL)_bookmarkHasSyncedToServer:(id)server
{
  serverCopy = server;
  if ([(WebBookmarkCollection *)self maintainsSyncMetadata])
  {
    syncData = [(WebBookmarkCollection *)self syncDataForBookmark:serverCopy];
    record = [syncData record];
  }

  else
  {
    syncData = [serverCopy syncData];
    record = syncData;
  }

  return record != 0;
}

- (BOOL)_bookmark:(id)_bookmark hasPriorityOverBookmarkForDeduplication:(id)deduplication prioritizeBookmarksWithSyncData:(BOOL)data davHomePath:(id)path
{
  dataCopy = data;
  _bookmarkCopy = _bookmark;
  deduplicationCopy = deduplication;
  pathCopy = path;
  specialID = [_bookmarkCopy specialID];
  specialID2 = [deduplicationCopy specialID];
  if (specialID && !specialID2)
  {
    goto LABEL_3;
  }

  if (!specialID && specialID2)
  {
LABEL_6:
    v15 = 0;
    goto LABEL_7;
  }

  if (dataCopy)
  {
    v17 = [(WebBookmarkCollection *)self _bookmarkHasSyncedToServer:_bookmarkCopy];
    v18 = [(WebBookmarkCollection *)self _bookmarkHasSyncedToServer:deduplicationCopy];
    if (!v18 && v17)
    {
      goto LABEL_3;
    }

    if (!v17 && v18)
    {
      goto LABEL_6;
    }
  }

  v19 = [(WebBookmarkCollection *)self _bookmark:_bookmarkCopy hasCurrentDAVHomePath:pathCopy];
  v20 = [(WebBookmarkCollection *)self _bookmark:deduplicationCopy hasCurrentDAVHomePath:pathCopy];
  if (v20 || !v19)
  {
    if (!v19 && v20)
    {
      goto LABEL_6;
    }

    serverID = [_bookmarkCopy serverID];
    serverID2 = [deduplicationCopy serverID];
    v23 = [serverID length];
    v24 = [serverID2 length];
    if (v23 && !v24)
    {
      goto LABEL_15;
    }

    if (v23 || !v24)
    {
      safari_isSpecialFolderRecordName = [serverID safari_isSpecialFolderRecordName];
      safari_isSpecialFolderRecordName2 = [serverID2 safari_isSpecialFolderRecordName];
      if (!(safari_isSpecialFolderRecordName2 & 1 | ((safari_isSpecialFolderRecordName & 1) == 0)))
      {
LABEL_15:
        v15 = 1;
LABEL_19:

        goto LABEL_7;
      }

      if (safari_isSpecialFolderRecordName & 1 | ((safari_isSpecialFolderRecordName2 & 1) == 0))
      {
        v15 = [serverID compare:serverID2] == -1;
        goto LABEL_19;
      }
    }

    v15 = 0;
    goto LABEL_19;
  }

LABEL_3:
  v15 = 1;
LABEL_7:

  return v15;
}

- (BOOL)_bookmark:(id)_bookmark hasCurrentDAVHomePath:(id)path
{
  pathCopy = path;
  serverID = [_bookmark serverID];
  if ([serverID length])
  {
    if (pathCopy)
    {
      v7 = [serverID _webBookmarks_hasCaseInsensitivePrefix:pathCopy];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_appendDuplicateBookmarkGroupsInBookmarks:(id)bookmarks toGroups:(id)groups considerBookmarksWithSyncDataAsUnique:(BOOL)unique davHomePath:(id)path
{
  uniqueCopy = unique;
  v44 = *MEMORY[0x277D85DE8];
  bookmarksCopy = bookmarks;
  groupsCopy = groups;
  pathCopy = path;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = bookmarksCopy;
  v10 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v10)
  {
    v27 = *v39;
    do
    {
      v11 = 0;
      v29 = v10;
      do
      {
        if (*v39 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v38 + 1) + 8 * v11);
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v32 = groupsCopy;
        v13 = [v32 countByEnumeratingWithState:&v34 objects:v42 count:16];
        v30 = v11;
        if (!v13)
        {

LABEL_26:
          v24 = [[WBDuplicateBookmarkGroup alloc] initWithOriginalBookmark:v12];
          [v32 addObject:v24];

          goto LABEL_27;
        }

        v14 = 0;
        v15 = *v35;
        do
        {
          v16 = 0;
          do
          {
            if (*v35 != v15)
            {
              objc_enumerationMutation(v32);
            }

            v17 = *(*(&v34 + 1) + 8 * v16);
            v18 = objc_autoreleasePoolPush();
            originalBookmark = [v17 originalBookmark];
            v20 = [(WebBookmarkCollection *)self _bookmark:v12 isDuplicateOfBookmark:originalBookmark];
            v21 = v20;
            if (v20)
            {
              v22 = [(WebBookmarkCollection *)self _bookmark:v12 hasPriorityOverBookmarkForDeduplication:originalBookmark prioritizeBookmarksWithSyncData:uniqueCopy davHomePath:pathCopy];
              if (uniqueCopy)
              {
                if ([(WebBookmarkCollection *)self _bookmarkHasSyncedToServer:originalBookmark]&& v22)
                {
                  [v17 addDuplicateBookmarkToKeep:originalBookmark];
                  [v17 exchangeOriginalBookmarkWithBookmark:v12];
LABEL_17:
                  v14 = 1;
                  goto LABEL_18;
                }

                if (!(v22 | ![(WebBookmarkCollection *)self _bookmarkHasSyncedToServer:v12]))
                {
                  [v17 addDuplicateBookmarkToKeep:v12];
                  goto LABEL_17;
                }
              }

              [v17 addDuplicateBookmark:v12 replaceOriginal:v22];
              goto LABEL_17;
            }

LABEL_18:

            objc_autoreleasePoolPop(v18);
            if (v21)
            {
              goto LABEL_23;
            }

            ++v16;
          }

          while (v13 != v16);
          v23 = [v32 countByEnumeratingWithState:&v34 objects:v42 count:16];
          v13 = v23;
        }

        while (v23);
LABEL_23:

        if ((v14 & 1) == 0)
        {
          goto LABEL_26;
        }

LABEL_27:
        v11 = v30 + 1;
      }

      while (v30 + 1 != v29);
      v10 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v10);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (BOOL)_bookmark:(id)_bookmark isDuplicateOfBookmark:(id)bookmark
{
  _bookmarkCopy = _bookmark;
  bookmarkCopy = bookmark;
  isFolder = [bookmarkCopy isFolder];
  if (isFolder != [_bookmarkCopy isFolder] || (v8 = objc_msgSend(bookmarkCopy, "identifier"), v8 == objc_msgSend(_bookmarkCopy, "identifier")) || !objc_msgSend(bookmarkCopy, "isSyncable") || !objc_msgSend(_bookmarkCopy, "isSyncable"))
  {
    v14 = 0;
    goto LABEL_8;
  }

  serverID = [bookmarkCopy serverID];
  _wb_stringByStandardizingDAVServerID = [serverID _wb_stringByStandardizingDAVServerID];
  serverID2 = [_bookmarkCopy serverID];
  _wb_stringByStandardizingDAVServerID2 = [serverID2 _wb_stringByStandardizingDAVServerID];
  v13 = [_wb_stringByStandardizingDAVServerID isEqualToString:_wb_stringByStandardizingDAVServerID2];

  if ((v13 & 1) == 0)
  {
    title = [_bookmarkCopy title];
    title2 = [bookmarkCopy title];
    v18 = title2;
    if (title2 == title)
    {
    }

    else
    {
      title3 = [bookmarkCopy title];
      title4 = [_bookmarkCopy title];
      v21 = [title3 isEqualToString:title4];

      if ((v21 & 1) == 0)
      {
        v14 = 0;
LABEL_20:

        goto LABEL_8;
      }
    }

    address = [_bookmarkCopy address];
    if ([bookmarkCopy isFolder])
    {
      v14 = 1;
    }

    else
    {
      address2 = [bookmarkCopy address];
      if (address == address2)
      {
        v14 = 1;
      }

      else
      {
        address3 = [bookmarkCopy address];
        v14 = [address3 isEqualToString:address];
      }
    }

    goto LABEL_20;
  }

  v14 = 1;
LABEL_8:

  return v14;
}

- (id)_fetchBookmarkIDsInFolder:(int)folder onlyFolders:(BOOL)folders includingHiddenBookmarks:(BOOL)bookmarks sortedByOrderIndex:(BOOL)index
{
  indexCopy = index;
  v9 = &stru_288259858;
  v10 = @" AND type = 1";
  if (!folders)
  {
    v10 = &stru_288259858;
  }

  if (!bookmarks)
  {
    v9 = @" AND hidden = 0";
  }

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"parent = ?%@%@", v10, v9];
  if (indexCopy)
  {
    v12 = 2;
  }

  else
  {
    v12 = 1;
  }

  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v16, [(WebBookmarkCollection *)self _selectBookmarksWhere:v11 returnType:v12]);
  sqlite3_bind_int(v17, 1, folder);
  array = [MEMORY[0x277CBEB18] array];
  while (sqlite3_step(v17) == 100)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithInt:{sqlite3_column_int(v17, 0)}];
    [array addObject:v14];
  }

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v16);

  return array;
}

- (BOOL)_mergeBookmark:(id)bookmark withOriginalBookmark:(id)originalBookmark prioritizeOriginalBookmarkAttributes:(BOOL)attributes generateChangesIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  attributesCopy = attributes;
  bookmarkCopy = bookmark;
  originalBookmarkCopy = originalBookmark;
  if (![originalBookmarkCopy specialID])
  {
    isSelectedFavoritesFolder = [originalBookmarkCopy isSelectedFavoritesFolder];
    bOOLValue = [isSelectedFavoritesFolder BOOLValue];

    if ([bookmarkCopy isFolder])
    {
      goto LABEL_7;
    }

    title = [originalBookmarkCopy title];
    title2 = [bookmarkCopy title];
    v15 = [title isEqualToString:title2];

    if (v15)
    {
      goto LABEL_7;
    }

    title3 = [bookmarkCopy title];
    v17 = [title3 length];

    title4 = [originalBookmarkCopy title];
    v19 = [title4 length];

    if (v17 - 1 >= v19)
    {
LABEL_7:
      v21 = 0;
    }

    else
    {
      title5 = [bookmarkCopy title];
      [originalBookmarkCopy setTitle:title5];

      v21 = 1;
    }

    if (([bookmarkCopy isFolder] & 1) == 0)
    {
      address = [originalBookmarkCopy address];
      address2 = [bookmarkCopy address];
      v24 = [address isEqualToString:address2];

      if ((v24 & 1) == 0)
      {
        address3 = [bookmarkCopy address];
        [originalBookmarkCopy setAddress:address3];

        v21 = 1;
      }
    }

    extraAttributes = [originalBookmarkCopy extraAttributes];
    extraAttributes2 = [bookmarkCopy extraAttributes];
    v28 = [extraAttributes count];
    v29 = [extraAttributes2 count];
    if (v28 || !v29)
    {
      if (v28 && !v29)
      {
        goto LABEL_17;
      }

      if (!v29 || !v28 || ([extraAttributes2 isEqualToDictionary:extraAttributes] & 1) != 0)
      {
LABEL_18:
        localAttributes = [originalBookmarkCopy localAttributes];
        localAttributes2 = [bookmarkCopy localAttributes];
        v33 = [localAttributes count];
        v34 = [localAttributes2 count];
        if (v33 || !v34)
        {
          if (v33 && !v34)
          {
            goto LABEL_24;
          }

          if (!v34 || !v33 || ([localAttributes2 isEqualToDictionary:localAttributes] & 1) != 0)
          {
            goto LABEL_25;
          }

          if (attributesCopy)
          {
            localAttributes3 = [localAttributes2 mutableCopy];
            [localAttributes3 addEntriesFromDictionary:localAttributes];
          }

          else
          {
            localAttributes3 = [localAttributes mutableCopy];
            [localAttributes3 addEntriesFromDictionary:localAttributes2];
          }

          [originalBookmarkCopy setLocalAttributes:localAttributes3];
        }

        else
        {
          localAttributes3 = [bookmarkCopy localAttributes];
          [originalBookmarkCopy setLocalAttributes:localAttributes3];
        }

LABEL_24:
        v21 = 1;
LABEL_25:
        [originalBookmarkCopy cleanUpRedundantPreviewText];
        neededCopy = [(WebBookmarkCollection *)self _saveBookmark:originalBookmarkCopy withSpecialID:0 updateGenerationIfNeeded:v21 & neededCopy];
        identifier = [originalBookmarkCopy identifier];
        isSelectedFavoritesFolder2 = [originalBookmarkCopy isSelectedFavoritesFolder];
        -[WebBookmarkCollection updateSelectedFavoritesFolderWithBookmarkID:wasFavoritesFolder:isFavoritesFolder:](self, "updateSelectedFavoritesFolderWithBookmarkID:wasFavoritesFolder:isFavoritesFolder:", identifier, bOOLValue, [isSelectedFavoritesFolder2 BOOLValue]);

        goto LABEL_26;
      }

      if (attributesCopy)
      {
        extraAttributes3 = [extraAttributes2 mutableCopy];
        [extraAttributes3 addEntriesFromDictionary:extraAttributes];
      }

      else
      {
        extraAttributes3 = [extraAttributes mutableCopy];
        [extraAttributes3 addEntriesFromDictionary:extraAttributes2];
      }

      [originalBookmarkCopy setExtraAttributes:extraAttributes3];
    }

    else
    {
      extraAttributes3 = [bookmarkCopy extraAttributes];
      [originalBookmarkCopy setExtraAttributes:extraAttributes3];
    }

LABEL_17:
    v21 = 1;
    goto LABEL_18;
  }

  neededCopy = 1;
LABEL_26:

  return neededCopy;
}

- (void)updateSelectedFavoritesFolderWithBookmarkID:(int)d wasFavoritesFolder:(BOOL)folder isFavoritesFolder:(BOOL)favoritesFolder
{
  favoritesFolderCopy = favoritesFolder;
  folderCopy = folder;
  v9 = +[WBFeatureManager sharedFeatureManager];
  favoritesFolderSelectionShouldSync = [v9 favoritesFolderSelectionShouldSync];

  if ((folderCopy || favoritesFolderCopy) & favoritesFolderSelectionShouldSync)
  {
    if (!folderCopy || favoritesFolderCopy || (-[WebBookmarkCollection favoritesFolder](self, "favoritesFolder"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 identifier], v11, v12 == d))
    {
      if (favoritesFolderCopy)
      {
        dCopy = d;
      }

      else
      {
        dCopy = 0;
      }

      [(WebBookmarkCollection *)self setFavoritesFolderIdentifier:dCopy postChangeNotification:0];
    }
  }
}

- (id)syncableBookmarksIDsInFolderWithBookmarkID:(int)d
{
  [(WebBookmarkCollection *)self logRegulatoryBookmarksRead];
  v5 = [MEMORY[0x277CBEB58] set];
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v10, self->_db, "SELECT id from bookmarks where parent = ? AND deleted = 0 AND syncable = 1");
  if (v12)
  {
    sqlite3_bind_int(v11, 1, d);
    while (1)
    {
      v6 = sqlite3_step(v11);
      if (v6 != 100)
      {
        break;
      }

      v7 = [MEMORY[0x277CCABB0] numberWithInt:{sqlite3_column_int(v11, 0)}];
      [v5 addObject:v7];
    }

    if (v6 == 101)
    {
      v8 = v5;
    }

    else
    {
      v8 = 0;
    }

    if (v6 == 101)
    {
      v5 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v10);

  return v8;
}

- (unsigned)orderIndexOfBookmark:(id)bookmark withSyncPosition:(id)position inFolderWithID:(int)d
{
  bookmarkCopy = bookmark;
  positionCopy = position;
  maintainsSyncMetadata = [(WebBookmarkCollection *)self maintainsSyncMetadata];
  if (positionCopy)
  {
    v11 = maintainsSyncMetadata;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v17, self->_db, "SELECT sync_data, order_index FROM bookmarks WHERE special_id = 0 AND syncable = 1 AND deleted = 0 AND parent = ? AND id != ? ORDER BY order_index DESC");
    sqlite3_bind_int(v18, 1, d);
    sqlite3_bind_int(v18, 2, [bookmarkCopy identifier]);
    v12 = 0;
    while (sqlite3_step(v18) == 100)
    {
      v13 = WBDataFromNullableColumn(v18, 0);
      v14 = [WBBookmarkSyncData positionFromContentsOfData:v13];

      v12 = v14;
      if ([v14 compare:positionCopy] == -1)
      {
        v15 = sqlite3_column_int(v18, 1) + 1;
        v12 = v14;
        goto LABEL_11;
      }
    }

    v15 = 0;
LABEL_11:

    WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v17);
  }

  else
  {
    v15 = [(WebBookmarkCollection *)self orderIndexOfBookmark:bookmarkCopy];
  }

  return v15;
}

- (id)_positionBeforeBookmark:(id)bookmark
{
  bookmarkCopy = bookmark;
  v5 = -[WebBookmarkCollection _positionBeforeOrderIndex:inFolderWithID:](self, "_positionBeforeOrderIndex:inFolderWithID:", -[WebBookmarkCollection orderIndexOfBookmark:](self, "orderIndexOfBookmark:", bookmarkCopy), [bookmarkCopy parentID]);

  return v5;
}

- (id)_positionBeforeOrderIndex:(unsigned int)index inFolderWithID:(int)d
{
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v9, self->_db, "SELECT sync_data FROM bookmarks WHERE special_id = 0 AND syncable = 1 AND deleted = 0 AND parent = ? AND order_index < ? ORDER BY order_index DESC");
  sqlite3_bind_int(v10, 1, d);
  sqlite3_bind_int(v10, 2, index);
  while (sqlite3_step(v10) == 100)
  {
    v6 = WBDataFromNullableColumn(v10, 0);
    v7 = [WBBookmarkSyncData positionFromContentsOfData:v6];

    if (v7)
    {
      goto LABEL_6;
    }
  }

  v7 = 0;
LABEL_6:
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v9);

  return v7;
}

- (id)_positionAfterBookmark:(id)bookmark
{
  bookmarkCopy = bookmark;
  v5 = -[WebBookmarkCollection _positionAfterOrderIndex:inFolderWithID:](self, "_positionAfterOrderIndex:inFolderWithID:", -[WebBookmarkCollection orderIndexOfBookmark:](self, "orderIndexOfBookmark:", bookmarkCopy), [bookmarkCopy parentID]);

  return v5;
}

- (id)_positionAfterOrderIndex:(unsigned int)index inFolderWithID:(int)d
{
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v9, self->_db, "SELECT sync_data FROM bookmarks WHERE special_id = 0 AND syncable = 1 AND deleted = 0 AND parent = ? AND order_index > ? ORDER BY order_index ASC");
  sqlite3_bind_int(v10, 1, d);
  sqlite3_bind_int(v10, 2, index);
  while (sqlite3_step(v10) == 100)
  {
    v6 = WBDataFromNullableColumn(v10, 0);
    v7 = [WBBookmarkSyncData positionFromContentsOfData:v6];

    if (v7)
    {
      goto LABEL_6;
    }
  }

  v7 = 0;
LABEL_6:
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v9);

  return v7;
}

- (id)generateSyncPositionForBookmark:(id)bookmark
{
  v16 = *MEMORY[0x277D85DE8];
  bookmarkCopy = bookmark;
  if ([(WebBookmarkCollection *)self maintainsSyncMetadata])
  {
    v5 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v14 = 138543362;
      v15 = bookmarkCopy;
      _os_log_impl(&dword_272C20000, v5, OS_LOG_TYPE_INFO, "Generating position for bookmark %{public}@", &v14, 0xCu);
    }

    v6 = [(WebBookmarkCollection *)self _positionBeforeBookmark:bookmarkCopy];
    v7 = [(WebBookmarkCollection *)self _positionAfterBookmark:bookmarkCopy];
    v8 = [objc_opt_class() deviceIdentifierForCloudKitWithCollectionType:-[WBCollectionConfiguration collectionType](self->_configuration generateIfNeeded:{"collectionType"), 1}];
    uUID = [v8 UUID];
    uUIDString = [uUID UUIDString];

    v11 = [MEMORY[0x277D49E80] positionBetweenPosition:v6 andPosition:v7 withDeviceIdentifier:uUIDString changeID:{-[WebBookmarkCollection nextDatabaseSyncChangeID](self, "nextDatabaseSyncChangeID")}];
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (WBBookmarkDatabaseSyncData)databaseSyncData
{
  v2 = [(WebBookmarkCollection *)self syncDataForKey:@"BASyncData"];
  v3 = [WBBookmarkDatabaseSyncData databaseSyncDataWithContentsOfData:v2];

  return v3;
}

- (BOOL)saveDatabaseSyncData:(id)data
{
  encodedDatabaseSyncData = [data encodedDatabaseSyncData];
  LOBYTE(self) = [(WebBookmarkCollection *)self setSyncData:encodedDatabaseSyncData forKey:@"BASyncData"];

  return self;
}

- (BOOL)clearSyncDataAfterICloudKeychainReset
{
  v3 = WBS_LOG_CHANNEL_PREFIXBookmarkSync();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_272C20000, v3, OS_LOG_TYPE_DEFAULT, "Clearing sync data because the user has reset the iCloud Keychain.", buf, 2u);
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __62__WebBookmarkCollection_clearSyncDataAfterICloudKeychainReset__block_invoke;
  v5[3] = &unk_279E757F0;
  v5[4] = self;
  return [(WebBookmarkCollection *)self performDatabaseUpdatesWithTransaction:v5 secureDelete:0];
}

- (BOOL)_clearSyncDataAfterICloudKeychainReset
{
  [(WebBookmarkCollection *)self setLastSyncedRecordGeneration:0];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __63__WebBookmarkCollection__clearSyncDataAfterICloudKeychainReset__block_invoke;
  v9[3] = &unk_279E75838;
  v9[4] = self;
  v9[5] = &v10;
  [(WebBookmarkCollection *)self enumerateDescendantsOfBookmarkID:0 usingBlock:v9];
  if (v11[3])
  {
    v3 = 0;
  }

  else
  {
    WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v7, self->_db, "UPDATE bookmarks SET added = 1");
    v4 = sqlite3_step(v8);
    v3 = v4 == 101;
    if (v4 != 101)
    {
      v5 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [WebBookmarkCollection _clearAllSyncData];
      }
    }

    WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v7);
  }

  _Block_object_dispose(&v10, 8);
  return v3;
}

void __63__WebBookmarkCollection__clearSyncDataAfterICloudKeychainReset__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if ([v5 isSyncable])
  {
    WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v8, *(*(a1 + 32) + 8), [@"UPDATE bookmarks SET dav_generation = ? WHERE id = ?" UTF8String]);
    sqlite3_bind_int64(v9, 1, [*(a1 + 32) currentRecordGeneration]);
    sqlite3_bind_int(v9, 2, [v5 identifier]);
    if ([*(a1 + 32) updateSyncDataForBookmark:v5 usingBlock:&__block_literal_global_1061])
    {
      if (sqlite3_step(v9) == 101)
      {
        [*(a1 + 32) _incrementGeneration];
LABEL_10:
        WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v8);
        goto LABEL_11;
      }

      v6 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [v5 privacyPreservingDescription];
        objc_claimAutoreleasedReturnValue();
        __42__WebBookmarkCollection__clearAllSyncData__block_invoke_cold_2();
      }
    }

    else
    {
      v6 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [v5 privacyPreservingDescription];
        objc_claimAutoreleasedReturnValue();
        __42__WebBookmarkCollection__clearAllSyncData__block_invoke_cold_1();
      }
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
    goto LABEL_10;
  }

LABEL_11:

  v7 = *MEMORY[0x277D85DE8];
}

id __63__WebBookmarkCollection__clearSyncDataAfterICloudKeychainReset__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 clearAllCKRecords];

  return v2;
}

- (BOOL)updateDatabaseSyncDataUsingBlock:(id)block
{
  blockCopy = block;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__WebBookmarkCollection_updateDatabaseSyncDataUsingBlock___block_invoke;
  v7[3] = &unk_279E762E0;
  v7[4] = self;
  v8 = blockCopy;
  v5 = blockCopy;
  LOBYTE(self) = [(WebBookmarkCollection *)self performDatabaseUpdatesWithTransaction:v7 secureDelete:0];

  return self;
}

uint64_t __58__WebBookmarkCollection_updateDatabaseSyncDataUsingBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) databaseSyncData];
  v4 = v3;
  if (!v3)
  {
    v4 = objc_alloc_init(WBBookmarkDatabaseSyncData);
  }

  v5 = (*(v2 + 16))(v2, v4);
  if (!v3)
  {
  }

  if (v5)
  {
    v6 = [*(a1 + 32) saveDatabaseSyncData:v5];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (int64_t)nextDatabaseSyncChangeID
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49__WebBookmarkCollection_nextDatabaseSyncChangeID__block_invoke;
  v4[3] = &unk_279E76308;
  v4[4] = &v5;
  [(WebBookmarkCollection *)self updateDatabaseSyncDataUsingBlock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

id __49__WebBookmarkCollection_nextDatabaseSyncChangeID__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 32) + 8) + 24) = [v3 nextChangeID];

  return v3;
}

- (id)modifiedSyncingAttributesForBookmark:(id)bookmark
{
  bookmarkCopy = bookmark;
  v5 = [(WebBookmarkCollection *)self allSyncingAttributesForBookmark:bookmarkCopy];
  v6 = [v5 mutableCopy];

  v7 = +[WebBookmark modifiedAttributesToFieldNames];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__WebBookmarkCollection_modifiedSyncingAttributesForBookmark___block_invoke;
  v11[3] = &unk_279E76330;
  v8 = bookmarkCopy;
  v12 = v8;
  v9 = v6;
  v13 = v9;
  [v7 enumerateKeysAndObjectsUsingBlock:v11];

  return v9;
}

void __62__WebBookmarkCollection_modifiedSyncingAttributesForBookmark___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) _fieldsForAttributes:{objc_msgSend(v9, "unsignedIntegerValue")}];
  v7 = [v6 firstObject];

  v8 = [*(a1 + 32) _attributesForField:v7];
  if (([*(a1 + 32) modifiedAttributes] & v8) == 0)
  {
    [*(a1 + 40) removeObjectForKey:v5];
  }
}

- (id)allSyncingAttributesForBookmark:(id)bookmark
{
  bookmarkCopy = bookmark;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  syncState = [bookmarkCopy syncState];
  null = syncState;
  if (!syncState)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  [dictionary setObject:null forKeyedSubscript:@"Deleted"];
  if (!syncState)
  {
  }

  if ([syncState integerValue] != 1)
  {
    parentID = [bookmarkCopy parentID];
    if (parentID == [(WebBookmarkCollection *)self bookmarkIDWithSpecialID:6])
    {
      v9 = 0;
    }

    else
    {
      v9 = [(WebBookmarkCollection *)self _serverIDForBookmarkID:parentID generateIfNeeded:1];
    }

    minimumSyncAPIVersion = [bookmarkCopy minimumSyncAPIVersion];
    v11 = minimumSyncAPIVersion;
    if (minimumSyncAPIVersion)
    {
      v12 = minimumSyncAPIVersion;
    }

    else
    {
      v12 = &unk_288269508;
    }

    [dictionary setObject:v12 forKeyedSubscript:@"MinimumAPIVersion"];

    if (([bookmarkCopy isFolder] & 1) != 0 || !objc_msgSend(bookmarkCopy, "isPinned"))
    {
      title = [bookmarkCopy title];
      v14 = title;
      if (title)
      {
        v17 = 0;
        v16 = 0;
        v15 = 1;
        null2 = title;
      }

      else
      {
        null2 = [MEMORY[0x277CBEB68] null];
        v17 = 0;
        v14 = 0;
        v15 = 1;
        v16 = 1;
      }
    }

    else
    {
      null2 = [bookmarkCopy pinnedTitle];
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 1;
    }

    [dictionary setObject:null2 forKeyedSubscript:@"Title"];
    if (v16)
    {

      if (!v15)
      {
        goto LABEL_20;
      }
    }

    else if (!v15)
    {
LABEL_20:
      if (!v17)
      {
LABEL_22:
        v19 = [(WebBookmarkCollection *)self syncDataForBookmark:bookmarkCopy];
        positionDictionaryRepresentation = [v19 positionDictionaryRepresentation];
        null3 = positionDictionaryRepresentation;
        if (!positionDictionaryRepresentation)
        {
          null3 = [MEMORY[0x277CBEB68] null];
        }

        [dictionary setObject:null3 forKeyedSubscript:@"Position"];
        if (!positionDictionaryRepresentation)
        {
        }

        null4 = v9;
        if (!v9)
        {
          null4 = [MEMORY[0x277CBEB68] null];
        }

        [dictionary setObject:null4 forKeyedSubscript:@"ParentFolder"];
        if (!v9)
        {
        }

        v23 = -[WebBookmarkCollection serverIDForBookmarkID:](self, "serverIDForBookmarkID:", [bookmarkCopy lastSelectedChildID]);
        null5 = v23;
        if (!v23)
        {
          null5 = [MEMORY[0x277CBEB68] null];
        }

        [dictionary setObject:null5 forKeyedSubscript:@"LastSelectedTab"];
        if (!v23)
        {
        }

        extraAttributes = [bookmarkCopy extraAttributes];
        v26 = [extraAttributes objectForKeyedSubscript:@"SymbolImageName"];
        null6 = v26;
        if (!v26)
        {
          null6 = [MEMORY[0x277CBEB68] null];
        }

        [dictionary setObject:null6 forKeyedSubscript:@"SymbolImageName"];
        if (!v26)
        {
        }

        extraAttributes2 = [bookmarkCopy extraAttributes];
        v29 = [extraAttributes2 objectForKeyedSubscript:@"CustomFavoritesFolderServerID"];
        null7 = v29;
        if (!v29)
        {
          null7 = [MEMORY[0x277CBEB68] null];
        }

        [dictionary setObject:null7 forKeyedSubscript:@"CustomFavoritesFolderServerID"];
        if (!v29)
        {
        }

        startPageSectionsDataRepresentation = [bookmarkCopy startPageSectionsDataRepresentation];
        null8 = startPageSectionsDataRepresentation;
        if (!startPageSectionsDataRepresentation)
        {
          null8 = [MEMORY[0x277CBEB68] null];
        }

        [dictionary setObject:null8 forKeyedSubscript:@"CustomStartPageSectionsData"];
        if (!startPageSectionsDataRepresentation)
        {
        }

        uUID = [bookmarkCopy UUID];
        if (uUID)
        {
          defaultManager = [MEMORY[0x277CCAA00] defaultManager];
          v35 = [defaultManager safari_startPageBackgroundImageFileURLForIdentifier:uUID];

          v36 = [v35 checkResourceIsReachableAndReturnError:0];
          null9 = v35;
          if ((v36 & 1) == 0)
          {
            null9 = [MEMORY[0x277CBEB68] null];
          }

          [dictionary setObject:null9 forKeyedSubscript:@"BackgroundImage"];
          if ((v36 & 1) == 0)
          {
          }
        }

        extraAttributes3 = [bookmarkCopy extraAttributes];
        v39 = [extraAttributes3 safari_numberForKey:@"com.apple.bookmarks.SelectedFavoritesFolder"];
        null10 = v39;
        if (!v39)
        {
          null10 = [MEMORY[0x277CBEB68] null];
        }

        [dictionary setObject:null10 forKeyedSubscript:@"IsSelectedFavoritesFolder"];
        if (!v39)
        {
        }

        if (([bookmarkCopy isFolder] & 1) != 0 || !objc_msgSend(bookmarkCopy, "isPinned"))
        {
          address = [bookmarkCopy address];
        }

        else
        {
          address = [bookmarkCopy pinnedAddress];
        }

        v42 = address;

        v43 = [MEMORY[0x277CBEBC0] URLWithString:v42];
        null11 = v43;
        if (!v43)
        {
          null11 = [MEMORY[0x277CBEB68] null];
        }

        [dictionary setObject:null11 forKeyedSubscript:@"URL"];
        if (!v43)
        {
        }

        dateAdded = [bookmarkCopy dateAdded];
        null12 = dateAdded;
        if (!dateAdded)
        {
          null12 = [MEMORY[0x277CBEB68] null];
        }

        [dictionary setObject:null12 forKeyedSubscript:@"DateAdded"];
        if (!dateAdded)
        {
        }

        dateLastViewed = [bookmarkCopy dateLastViewed];
        null13 = dateLastViewed;
        if (!dateLastViewed)
        {
          null13 = [MEMORY[0x277CBEB68] null];
        }

        [dictionary setObject:null13 forKeyedSubscript:@"DateLastViewed"];
        if (!dateLastViewed)
        {
        }

        previewText = [bookmarkCopy previewText];
        null14 = previewText;
        if (!previewText)
        {
          null14 = [MEMORY[0x277CBEB68] null];
        }

        [dictionary setObject:null14 forKeyedSubscript:@"PreviewText"];
        if (!previewText)
        {
        }

        readingListIconURL = [bookmarkCopy readingListIconURL];
        null15 = readingListIconURL;
        if (!readingListIconURL)
        {
          null15 = [MEMORY[0x277CBEB68] null];
        }

        [dictionary setObject:null15 forKeyedSubscript:@"ImageURL"];
        if (!readingListIconURL)
        {
        }

        v53 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(bookmarkCopy, "isPinned")}];
        [dictionary setObject:v53 forKeyedSubscript:@"IsPinned"];

        v54 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(bookmarkCopy, "showIconOnly")}];
        [dictionary setObject:v54 forKeyedSubscript:@"ShowIconOnly"];

        creationDeviceIdentifier = [bookmarkCopy creationDeviceIdentifier];
        null16 = creationDeviceIdentifier;
        if (!creationDeviceIdentifier)
        {
          null16 = [MEMORY[0x277CBEB68] null];
        }

        [dictionary setObject:null16 forKeyedSubscript:@"CreationDeviceIdentifier"];
        if (!creationDeviceIdentifier)
        {
        }

        deviceTypeIdentifier = [bookmarkCopy deviceTypeIdentifier];
        null17 = deviceTypeIdentifier;
        if (!deviceTypeIdentifier)
        {
          null17 = [MEMORY[0x277CBEB68] null];
        }

        [dictionary setObject:null17 forKeyedSubscript:@"DeviceTypeIdentifier"];
        if (!deviceTypeIdentifier)
        {
        }

        goto LABEL_92;
      }

LABEL_21:

      goto LABEL_22;
    }

    if (!v17)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_92:

  return dictionary;
}

- (id)_syncDataForBookmarkID:(int)d
{
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v6, self->_db, "SELECT sync_data FROM bookmarks WHERE id = ?");
  sqlite3_bind_int(v7, 1, d);
  if (sqlite3_step(v7) == 100)
  {
    v4 = WBDataFromNullableColumn(v7, 0);
  }

  else
  {
    v4 = 0;
  }

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v6);

  return v4;
}

- (id)_syncDataBlobForBookmarkServerID:(id)d
{
  dCopy = d;
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v7, self->_db, "SELECT sync_data FROM bookmarks WHERE server_id = ?");
  sqlite3_bind_text(v8, 1, [dCopy UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  if (sqlite3_step(v8) == 100)
  {
    v5 = WBDataFromNullableColumn(v8, 0);
  }

  else
  {
    v5 = 0;
  }

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v7);

  return v5;
}

- (id)syncDataForBookmark:(id)bookmark
{
  bookmarkCopy = bookmark;
  serverID = [bookmarkCopy serverID];
  if (serverID)
  {
    [(WebBookmarkCollection *)self _syncDataForBookmarkServerID:serverID];
  }

  else
  {
    -[WebBookmarkCollection syncDataForBookmarkID:](self, "syncDataForBookmarkID:", [bookmarkCopy identifier]);
  }
  v6 = ;

  return v6;
}

- (id)_syncDataForBookmarkServerID:(id)d
{
  v3 = [(WebBookmarkCollection *)self _syncDataBlobForBookmarkServerID:d];
  v4 = [WBBookmarkSyncData syncDataWithContentsOfData:v3];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = objc_alloc_init(WBBookmarkSyncData);
  }

  v7 = v6;

  return v7;
}

- (BOOL)updateSyncDataForBookmark:(id)bookmark usingBlock:(id)block
{
  bookmarkCopy = bookmark;
  blockCopy = block;
  if (-[WebBookmarkCollection maintainsSyncMetadata](self, "maintainsSyncMetadata") && ([bookmarkCopy isSyncable] & 1) != 0)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = [(WebBookmarkCollection *)self syncDataForBookmark:bookmarkCopy];
    v10 = blockCopy[2](blockCopy, v9);

    if (v10)
    {
      WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v17, self->_db, "UPDATE bookmarks SET sync_data = ? WHERE server_id = ?");
      encodedBookmarkSyncData = [v10 encodedBookmarkSyncData];
      bindNullableDataToSQLStatement(v18, 1, encodedBookmarkSyncData);
      v12 = v18;
      serverID = [bookmarkCopy serverID];
      sqlite3_bind_text(v12, 2, [serverID UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);

      v14 = sqlite3_step(v18);
      v15 = v14 == 101;
      if (v14 == 101)
      {
        [bookmarkCopy _setSyncData:encodedBookmarkSyncData cachedWBSyncData:v10];
      }

      WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v17);
    }

    else
    {
      v15 = 1;
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    v15 = 1;
  }

  return v15;
}

- (BOOL)updateSyncDataForBookmarkWithRecordName:(id)name excludeDeletedBookmarks:(BOOL)bookmarks usingBlock:(id)block
{
  nameCopy = name;
  blockCopy = block;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __100__WebBookmarkCollection_updateSyncDataForBookmarkWithRecordName_excludeDeletedBookmarks_usingBlock___block_invoke;
  v13[3] = &unk_279E76380;
  v13[4] = self;
  v14 = nameCopy;
  bookmarksCopy = bookmarks;
  v15 = blockCopy;
  v10 = blockCopy;
  v11 = nameCopy;
  LOBYTE(self) = [(WebBookmarkCollection *)self performDatabaseUpdatesWithTransaction:v13 secureDelete:0];

  return self;
}

uint64_t __100__WebBookmarkCollection_updateSyncDataForBookmarkWithRecordName_excludeDeletedBookmarks_usingBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) bookmarkWithServerID:*(a1 + 40) excludeDeletedBookmarks:*(a1 + 56)];
  if (v2)
  {
    v3 = *(a1 + 32);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __100__WebBookmarkCollection_updateSyncDataForBookmarkWithRecordName_excludeDeletedBookmarks_usingBlock___block_invoke_2;
    v6[3] = &unk_279E76358;
    v8 = *(a1 + 48);
    v7 = v2;
    v4 = [v3 updateSyncDataForBookmark:v7 usingBlock:v6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id __100__WebBookmarkCollection_updateSyncDataForBookmarkWithRecordName_excludeDeletedBookmarks_usingBlock___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = (*(*(a1 + 40) + 16))(*(a1 + 40), *(a1 + 32), a2);

  return v2;
}

- (void)enumerateDescendantsOfBookmark:(id)bookmark usingBlock:(id)block
{
  blockCopy = block;
  identifier = [bookmark identifier];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__WebBookmarkCollection_enumerateDescendantsOfBookmark_usingBlock___block_invoke;
  v9[3] = &unk_279E763A8;
  v8 = blockCopy;
  v10 = v8;
  [(WebBookmarkCollection *)self _enumerateContentsOfBookmarkFolder:identifier includingSubfolders:1 usingBlock:v9];
}

- (BOOL)markAttributesAsModified:(unint64_t)modified forBookmark:(id)bookmark
{
  bookmarkCopy = bookmark;
  [bookmarkCopy markAttributesAsModified:modified];
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v8, self->_db, "UPDATE bookmarks SET modified_attributes = modified_attributes | ? WHERE id = ?");
  sqlite3_bind_int64(v9, 1, [bookmarkCopy modifiedAttributes]);
  sqlite3_bind_int(v9, 2, [bookmarkCopy identifier]);
  LOBYTE(self) = sqlite3_step(v9) == 101;
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v8);

  return self;
}

- (BOOL)updateBookmarkSyncPositionIfNeeded:(id)needed
{
  neededCopy = needed;
  if (-[WebBookmarkCollection maintainsSyncMetadata](self, "maintainsSyncMetadata") && ([neededCopy isSyncable] & 1) != 0)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __60__WebBookmarkCollection_updateBookmarkSyncPositionIfNeeded___block_invoke;
    v7[3] = &unk_279E76418;
    v7[4] = self;
    v8 = neededCopy;
    v5 = [(WebBookmarkCollection *)self updateSyncDataForBookmark:v8 usingBlock:v7];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

id __60__WebBookmarkCollection_updateBookmarkSyncPositionIfNeeded___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277D49B60]);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __60__WebBookmarkCollection_updateBookmarkSyncPositionIfNeeded___block_invoke_2;
  v13[3] = &unk_279E752A8;
  v5 = *(a1 + 40);
  v13[4] = *(a1 + 32);
  v14 = v5;
  v6 = v3;
  v15 = v6;
  [v4 setHandler:v13];
  v7 = [*(a1 + 40) syncPosition];
  v8 = [v7 sortValues];
  if ([v8 safari_containsObjectPassingTest:&__block_literal_global_1131])
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __60__WebBookmarkCollection_updateBookmarkSyncPositionIfNeeded___block_invoke_4;
    v12[3] = &unk_279E763F0;
    v12[4] = *(a1 + 32);
    v9 = [v8 safari_mapObjectsUsingBlock:v12];
    v10 = [objc_alloc(MEMORY[0x277D49E80]) initWithSortValues:v9];
    [v6 setPosition:v10];
    [*(a1 + 40) setSyncPosition:v10 incrementGeneration:0];
  }

  else
  {
    [v6 setPosition:v7];
  }

  return v6;
}

void __60__WebBookmarkCollection_updateBookmarkSyncPositionIfNeeded___block_invoke_2(id *a1)
{
  v3 = [a1[4] serverIDForBookmarkID:{objc_msgSend(a1[5], "parentID")}];
  if (v3)
  {
    v2 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:v3];
  }

  else
  {
    v2 = 0;
  }

  [a1[6] setParentRecordID:v2];
  if (v3)
  {
  }
}

id __60__WebBookmarkCollection_updateBookmarkSyncPositionIfNeeded___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 changeID] < 0)
  {
    v4 = [v3 positionSortValueWithChangeID:{objc_msgSend(*(a1 + 32), "nextDatabaseSyncChangeID")}];
  }

  else
  {
    v4 = v3;
  }

  v5 = v4;

  return v5;
}

- (void)fixRecoveredBookmarksIfNeeded
{
  OUTLINED_FUNCTION_4();
  *v1 = 138543362;
  *v3 = v2;
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

- (int64_t)firstSkippedProfileGeneration
{
  v2 = [(WebBookmarkCollection *)self syncStringForKey:@"FirstSkippedProfileGeneration"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (void)didSkipProfileWithGeneration:(int64_t)generation
{
  v5 = [(WebBookmarkCollection *)self syncStringForKey:@"FirstSkippedProfileGeneration"];
  v10 = v5;
  if (!v5 || (v6 = [v5 integerValue] <= generation, v7 = v10, !v6))
  {
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:generation];
    stringValue = [v8 stringValue];
    [(WebBookmarkCollection *)self syncSetString:stringValue forKey:@"FirstSkippedProfileGeneration"];

    v7 = v10;
  }
}

- (int64_t)firstSkippedProfileDeviceGeneration
{
  v2 = [(WebBookmarkCollection *)self syncStringForKey:@"FirstSkippedProfileDeviceGeneration"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (void)didSkipProfileDeviceWithGeneration:(int64_t)generation
{
  v5 = [(WebBookmarkCollection *)self syncStringForKey:@"FirstSkippedProfileDeviceGeneration"];
  v10 = v5;
  if (!v5 || (v6 = [v5 integerValue] <= generation, v7 = v10, !v6))
  {
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:generation];
    stringValue = [v8 stringValue];
    [(WebBookmarkCollection *)self syncSetString:stringValue forKey:@"FirstSkippedProfileDeviceGeneration"];

    v7 = v10;
  }
}

- (void)saveMinimumAPISyncVersionOfDescendantItemsForItem:(id)item includingAncestorItem:(BOOL)ancestorItem
{
  ancestorItemCopy = ancestorItem;
  itemCopy = item;
  v7 = itemCopy;
  if (ancestorItemCopy)
  {
    [itemCopy markAttributesAsModified:0x8000];
    [(WebBookmarkCollection *)self saveBookmark:v7 incrementGenerations:1];
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __97__WebBookmarkCollection_saveMinimumAPISyncVersionOfDescendantItemsForItem_includingAncestorItem___block_invoke;
  v8[3] = &unk_279E76440;
  v8[4] = self;
  [(WebBookmarkCollection *)self enumerateDescendantsOfBookmark:v7 usingBlock:v8];
}

void __97__WebBookmarkCollection_saveMinimumAPISyncVersionOfDescendantItemsForItem_includingAncestorItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 markAttributesAsModified:0x8000];
  [*(a1 + 32) saveBookmark:v3 incrementGenerations:1];
}

- (NSArray)bookmarksByDateAdded
{
  v3 = [[WebBookmarkListQuery alloc] initWithBookmarksWhere:@"type = 0 AND syncable = 1 AND deleted = 0 AND editable = 1 AND deletable = 1" orderBy:@"id DESC" usingFilter:0];
  v4 = [[WebBookmarkList alloc] initWithQuery:v3 skipOffset:0 collection:self];
  bookmarkArray = [(WebBookmarkList *)v4 bookmarkArray];
  v6 = [bookmarkArray safari_filterObjectsUsingBlock:&__block_literal_global_1141];

  v7 = [v6 sortedArrayUsingComparator:&__block_literal_global_1143];

  return v7;
}

uint64_t __45__WebBookmarkCollection_bookmarksByDateAdded__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 dateAdded];
  if (v3)
  {
    v4 = [v2 isBuiltinBookmark] ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __45__WebBookmarkCollection_bookmarksByDateAdded__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 dateAdded];
  v6 = [v4 dateAdded];
  v7 = [v5 compare:v6];

  return v7;
}

- (WebBookmarkList)allBookmarkLeaves
{
  v3 = [[WebBookmarkListQuery alloc] initWithBookmarksWhere:@"type = 0 AND syncable = 1 AND deleted = 0 AND editable = 1 AND deletable = 1" orderBy:@"id DESC" usingFilter:0];
  v4 = [[WebBookmarkList alloc] initWithQuery:v3 skipOffset:0 collection:self];

  return v4;
}

- (WebBookmarkList)allBookmarkFolders
{
  v3 = [[WebBookmarkListQuery alloc] initWithBookmarksWhere:@"type = 1 AND syncable = 1 AND deleted = 0 AND editable = 1 AND deletable = 1" orderBy:@"id DESC" usingFilter:0];
  v4 = [[WebBookmarkList alloc] initWithQuery:v3 skipOffset:0 collection:self];

  return v4;
}

- (void)_test_preventPeriodicallyApplyingInMemoryChangesToDatabase
{
  [(WBDatabaseLockAcquisitor *)self->_databaseLockAcquisitor releaseLock];
  databaseLockAcquisitor = self->_databaseLockAcquisitor;
  self->_databaseLockAcquisitor = 0;
}

- (id)_bookmarkDictionaryForSqliteRow:(sqlite3_stmt *)row recursive:(BOOL)recursive error:(id *)error
{
  recursiveCopy = recursive;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v10 = sqlite3_column_int(row, 0);
  if (v10)
  {
    v11 = @"WebBookmarkTypeList";
  }

  else
  {
    v11 = @"WebBookmarkTypeLeaf";
  }

  [dictionary setObject:v11 forKey:@"WebBookmarkType"];
  v12 = sqlite3_column_text(row, 1);
  v13 = objc_alloc(MEMORY[0x277CCACA8]);
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = "";
  }

  v15 = [v13 initWithUTF8String:v14];
  if (v10)
  {
    [dictionary setObject:v15 forKey:@"Title"];
  }

  else
  {
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v15 forKey:@"title"];
    [dictionary setObject:v16 forKey:@"URIDictionary"];
  }

  v17 = sqlite3_column_text(row, 2);
  if (!v10 && v17)
  {
    v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v17];
    [dictionary setObject:v18 forKey:@"URLString"];
LABEL_13:

    goto LABEL_14;
  }

  if (!v10 || !recursiveCopy)
  {
LABEL_14:
    v19 = sqlite3_column_text(row, 4);
    v20 = objc_alloc(MEMORY[0x277CCACA8]);
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = "";
    }

    v22 = [v20 initWithUTF8String:v21];
    [dictionary setObject:v22 forKey:@"WebBookmarkUUID"];
    goto LABEL_18;
  }

  v24 = sqlite3_column_int(row, 3);
  v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([(WebBookmarkCollection *)self _addChildrenOfID:v24 toCollection:v18 recursive:1 error:error])
  {
    [dictionary setObject:v18 forKey:@"Children"];
    goto LABEL_13;
  }

  v22 = dictionary;
  dictionary = 0;
LABEL_18:

  return dictionary;
}

- (id)bookmarksDictionary
{
  v26 = *MEMORY[0x277D85DE8];
  WebBookmarks::BookmarkSQLReadTransaction::BookmarkSQLReadTransaction(v24, self->_db);
  if (v24[17] != 1)
  {
    goto LABEL_17;
  }

  ppStmt = 0;
  v3 = sqlite3_prepare_v2(self->_db, "SELECT type, title, url, id, external_uuid FROM bookmarks WHERE id = 0", -1, &ppStmt, 0);
  v4 = ppStmt;
  if (v3 || (v5 = sqlite3_step(ppStmt), v4 = ppStmt, v5 != 100))
  {
    [(WebBookmarkCollection *)self _finalizeStatementIfNotNull:v4];
LABEL_17:
    v18 = 0;
    goto LABEL_18;
  }

  v18 = [(WebBookmarkCollection *)self _bookmarkDictionaryForSqliteRow:ppStmt recursive:1 error:0];
  sqlite3_finalize(ppStmt);
  WebBookmarks::BookmarkSQLTransaction::commit(v24, v6, v7);
  [v18 removeObjectForKey:@"Title"];
  [v18 objectForKey:@"Children"];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v8 = v20 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v9)
  {
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [v12 objectForKey:@"Title"];
        if ([v13 isEqualToString:@"BookmarksBar"])
        {
          v14 = [v12 objectForKey:@"WebBookmarkUUID"];
          v15 = [v14 isEqualToString:&stru_288259858];

          if (v15)
          {
            [v8 removeObject:v12];
            goto LABEL_21;
          }
        }

        else
        {
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v9);
  }

LABEL_21:

LABEL_18:
  WebBookmarks::BookmarkSQLReadTransaction::~BookmarkSQLReadTransaction(v24);
  v16 = *MEMORY[0x277D85DE8];

  return v18;
}

- (BOOL)_mergeChildrenOfID:(int)d referencingBase:(id)base error:(id *)error
{
  v36 = *MEMORY[0x277D85DE8];
  baseCopy = base;
  v7 = objc_autoreleasePoolPush();
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v25 = baseCopy;
  v8 = [baseCopy objectForKey:@"Children"];
  v9 = [v8 countByEnumeratingWithState:&v31 objects:v35 count:16];
  context = v7;
  if (v9)
  {
    obj = v8;
    v10 = 0;
    v11 = 0;
    v12 = *v32;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v32 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v31 + 1) + 8 * i);
        v15 = [v14 objectForKey:@"WebBookmarkType"];
        if ([v15 isEqualToString:@"WebBookmarkTypeList"] & 1) != 0 || (objc_msgSend(v15, "isEqualToString:", @"WebBookmarkTypeLeaf"))
        {
          v30 = v11;
          v16 = [(WebBookmarkCollection *)self _syncAdd:v14 toParent:d withOrderIndex:v10 error:&v30];
          v17 = v30;

          if (!v16)
          {

            v20 = 0;
            goto LABEL_16;
          }

          if ([v15 isEqualToString:@"WebBookmarkTypeList"])
          {
            insert_rowid = sqlite3_last_insert_rowid(self->_db);
            v29 = v17;
            [(WebBookmarkCollection *)self _mergeChildrenOfID:insert_rowid referencingBase:v14 error:&v29];
            v19 = v29;

            v17 = v19;
          }

          v10 = (v10 + 1);
          v11 = v17;
        }
      }

      v9 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }

    v20 = 1;
    v17 = v11;
LABEL_16:
    v8 = obj;
  }

  else
  {
    v17 = 0;
    v20 = 1;
  }

  objc_autoreleasePoolPop(context);
  if (error)
  {
    v21 = v17;
    *error = v17;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v20;
}

- (BOOL)_markSpecialBookmarks
{
  if ([(WebBookmarkCollection *)self _executeSQLWithCString:"UPDATE bookmarks SET special_id = 1, editable = 0, deletable = 0 WHERE id = (SELECT id FROM bookmarks WHERE title = 'BookmarksBar' AND parent = 0 ORDER BY id ASC LIMIT 1);"])
  {
    v3 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
    if (v4)
    {
LABEL_6:
      [WebBookmarkCollection(Sync) _markSpecialBookmarks];
      LOBYTE(v4) = 0;
    }
  }

  else
  {
    if (![(WebBookmarkCollection *)self _executeSQLWithCString:"UPDATE bookmarks SET special_id = 2, editable = 0, deletable = 0 WHERE id = (SELECT id FROM bookmarks WHERE title = 'BookmarksMenu' AND parent = 0 ORDER BY id ASC LIMIT 1);"])
    {
      LOBYTE(v4) = 1;
      return v4;
    }

    v5 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    v4 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (v4)
    {
      goto LABEL_6;
    }
  }

  return v4;
}

- (BOOL)mergeWithBookmarksDictionary:(id)dictionary clearHidden:(BOOL)hidden clearSyncData:(BOOL)data error:(id *)error
{
  dataCopy = data;
  hiddenCopy = hidden;
  dictionaryCopy = dictionary;
  v11 = @"DELETE FROM bookmarks WHERE id != 0 AND hidden = 0 AND hidden_ancestor_count = 0 AND syncable = 1";
  if (hiddenCopy)
  {
    v11 = @"DELETE FROM bookmarks WHERE id != 0 AND syncable = 1";
  }

  v12 = v11;
  if ([(WebBookmarkCollection *)self _executeSQL:v12])
  {
    v13 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [WebBookmarkCollection(Sync) mergeWithBookmarksDictionary:clearHidden:clearSyncData:error:];
    }
  }

  else
  {
    if (hiddenCopy)
    {
      [(WebBookmarkCollection *)self clearAllReadingListArchives];
    }

    if ([(WebBookmarkCollection *)self _mergeChildrenOfID:0 referencingBase:dictionaryCopy error:error])
    {
      if ([(WebBookmarkCollection *)self _executeSQLWithCString:"UPDATE bookmarks SET num_children = (SELECT COUNT(*) FROM bookmarks AS count_bookmarks WHERE count_bookmarks.parent = bookmarks.id AND hidden = 0) WHERE type = 1"])
      {
        v14 = WBS_LOG_CHANNEL_PREFIXBookmarks();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [WebBookmarkCollection(Sync) mergeWithBookmarksDictionary:clearHidden:clearSyncData:error:];
        }
      }

      else if ([(WebBookmarkCollection *)self _markSpecialBookmarks])
      {
        if ([(WebBookmarkCollection *)self _restoreMissingSpecialBookmarksWithChangeNotification:1])
        {
          if ([(WebBookmarkCollection *)self _rebuildAncestorTable])
          {
            if ([(WebBookmarkCollection *)self _incrementGeneration]&& (!dataCopy || [(WebBookmarkCollection *)self _clearAllSyncData]))
            {
              [(WebBookmarkCollection *)self _startReadingListFetcher];
              v16 = 1;
              goto LABEL_15;
            }
          }

          else
          {
            v19 = WBS_LOG_CHANNEL_PREFIXBookmarks();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              [WebBookmarkCollection(Sync) mergeWithBookmarksDictionary:clearHidden:clearSyncData:error:];
            }
          }
        }

        else
        {
          v18 = WBS_LOG_CHANNEL_PREFIXBookmarks();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            [WebBookmarkCollection(Sync) mergeWithBookmarksDictionary:clearHidden:clearSyncData:error:];
          }
        }
      }
    }

    else
    {
      v15 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [WebBookmarkCollection(Sync) mergeWithBookmarksDictionary:clearHidden:clearSyncData:error:];
      }
    }
  }

  v16 = 0;
LABEL_15:

  return v16;
}

- (void)removePersistedInMemoryBookmarkChangesFile
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  inMemoryChangesFileURL = [objc_opt_class() inMemoryChangesFileURL];
  [defaultManager removeItemAtURL:inMemoryChangesFileURL error:0];
}

- (BOOL)_syncPropertyExistsForKey:(id)key
{
  keyCopy = key;
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v7, self->_db, "SELECT COUNT(*) FROM sync_properties WHERE key = ?");
  v5 = (v9 & 1) != 0 && (sqlite3_bind_text(v8, 1, [keyCopy UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL), sqlite3_step(v8) == 100) && sqlite3_column_int(v8, 0) > 0;
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v7);

  return v5;
}

- (BOOL)_deleteSyncPropertyForKey:(id)key
{
  keyCopy = key;
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v7, self->_db, "DELETE FROM sync_properties WHERE key = ?");
  if (v9)
  {
    sqlite3_bind_text(v8, 1, [keyCopy UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
    v5 = sqlite3_step(v8) == 101;
  }

  else
  {
    v5 = 0;
  }

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v7);

  return v5;
}

- (BOOL)_syncSetString:(id)string forKey:(id)key updatedExistingKey:(BOOL *)existingKey
{
  stringCopy = string;
  keyCopy = key;
  if (stringCopy)
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __72__WebBookmarkCollection_Sync___syncSetString_forKey_updatedExistingKey___block_invoke;
    v20[3] = &__block_descriptor_40_e8_v12__0B8l;
    v20[4] = existingKey;
    v10 = MEMORY[0x2743D6830](v20);
    v11 = [(WebBookmarkCollection *)self _syncPropertyExistsForKey:keyCopy];
    v12 = v10[2];
    if (v11)
    {
      v12(v10, 1);
      v13 = "UPDATE sync_properties SET value = ? WHERE key = ?";
    }

    else
    {
      v12(v10, 0);
      v13 = "INSERT INTO sync_properties (value, key) VALUES (?, ?)";
    }

    WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(&v17, self->_db, v13);
    if (v19)
    {
      sqlite3_bind_text(v18, 1, [stringCopy UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
      sqlite3_bind_text(v18, 2, [keyCopy UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
      if (sqlite3_step(v18) == 101)
      {
        v14 = 1;
LABEL_12:
        WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(&v17);

        goto LABEL_13;
      }

      v15 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [WebBookmarkCollection(Sync) _syncSetString:forKey:updatedExistingKey:];
      }
    }

    v14 = 0;
    goto LABEL_12;
  }

  v14 = [(WebBookmarkCollection *)self _deleteSyncPropertyForKey:keyCopy];
LABEL_13:

  return v14;
}

uint64_t __72__WebBookmarkCollection_Sync___syncSetString_forKey_updatedExistingKey___block_invoke(uint64_t result, char a2)
{
  v2 = *(result + 32);
  if (v2)
  {
    *v2 = a2;
  }

  return result;
}

- (id)syncStringForKey:(id)key
{
  keyCopy = key;
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v7, self->_db, "SELECT value FROM sync_properties WHERE key = ?");
  if ((v9 & 1) != 0 && (sqlite3_bind_text(v8, 1, [keyCopy UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL), sqlite3_step(v8) == 100))
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{sqlite3_column_text(v8, 0)}];
  }

  else
  {
    v5 = 0;
  }

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v7);

  return v5;
}

- (BOOL)setSyncData:(id)data forKey:(id)key
{
  dataCopy = data;
  keyCopy = key;
  if (dataCopy)
  {
    v8 = [(WebBookmarkCollection *)self syncDataForKey:keyCopy];

    if (v8)
    {
      v9 = "UPDATE sync_properties SET value = ? WHERE key = ?";
    }

    else
    {
      v9 = "INSERT INTO sync_properties (value, key) VALUES (?, ?)";
    }

    WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v14, self->_db, v9);
    if (v16)
    {
      v10 = [dataCopy length];
      sqlite3_bind_blob(v15, 1, [dataCopy bytes], v10, 0xFFFFFFFFFFFFFFFFLL);
      sqlite3_bind_text(v15, 2, [keyCopy UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
      if (sqlite3_step(v15) == 101)
      {
        v11 = 1;
LABEL_12:
        WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v14);
        goto LABEL_13;
      }

      v12 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [WebBookmarkCollection(Sync) setSyncData:forKey:];
      }
    }

    v11 = 0;
    goto LABEL_12;
  }

  v11 = [(WebBookmarkCollection *)self _deleteSyncPropertyForKey:keyCopy];
LABEL_13:

  return v11;
}

- (id)syncDataForKey:(id)key
{
  keyCopy = key;
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v8, self->_db, "SELECT value FROM sync_properties WHERE key = ?");
  if ((v10 & 1) != 0 && (sqlite3_bind_text(v9, 1, [keyCopy UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL), sqlite3_step(v9) == 100))
  {
    v5 = sqlite3_column_blob(v9, 0);
    v6 = [MEMORY[0x277CBEA90] dataWithBytes:v5 length:{sqlite3_column_bytes(v9, 0)}];
  }

  else
  {
    v6 = 0;
  }

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v8);

  return v6;
}

- (id)allSyncDataForKeysWithPrefix:(id)prefix
{
  prefixCopy = prefix;
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v12, self->_db, "SELECT key, value FROM sync_properties WHERE key = ?");
  if (v14)
  {
    v5 = v13;
    v6 = [prefixCopy stringByAppendingString:@"%"];
    sqlite3_bind_text(v5, 1, [v6 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    while (sqlite3_step(v13) == 100)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{sqlite3_column_text(v13, 0)}];
      v9 = sqlite3_column_blob(v13, 1);
      v10 = [MEMORY[0x277CBEA90] dataWithBytes:v9 length:{sqlite3_column_bytes(v13, 1)}];
      [dictionary setObject:v10 forKeyedSubscript:v8];
    }
  }

  else
  {
    dictionary = MEMORY[0x277CBEC10];
  }

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v12);

  return dictionary;
}

- (BOOL)removeAllSyncDataForKeyWithPrefix:(id)prefix
{
  prefixCopy = prefix;
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v9, self->_db, "DELETE FROM sync_properties WHERE key LIKE ?");
  if (v11)
  {
    v5 = v10;
    v6 = [prefixCopy stringByAppendingString:@"%"];
    sqlite3_bind_text(v5, 1, [v6 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);

    v7 = sqlite3_step(v10) == 101;
  }

  else
  {
    v7 = 0;
  }

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v9);

  return v7;
}

- (BOOL)beginSyncTransaction
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(WebBookmarkCollection *)self _executeSQLWithCString:"SAVEPOINT sync"];
  if (v3)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXBookmarkSync();
    if (v3 == 1)
    {
      v5 = v4;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = sqlite3_errmsg(self->_db);
        [(WebBookmarkCollection(Sync) *)v6 beginSyncTransaction];
      }
    }

    else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [WebBookmarkCollection(Sync) beginSyncTransaction];
    }

    if ([MEMORY[0x277D49A08] hasInternalContent])
    {
      v7 = WBS_LOG_CHANNEL_PREFIXBookmarkSync();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
        [(WebBookmarkCollection(Sync) *)callStackSymbols beginSyncTransaction];
      }
    }
  }

  else
  {
    self->_dirty = 0;
  }

  result = v3 == 0;
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)rollbackSyncTransaction
{
  [(WebBookmarkCollection *)self _executeSQLWithCString:"ROLLBACK TRANSACTION TO SAVEPOINT sync"];

  [(WebBookmarkCollection *)self _executeSQLWithCString:"RELEASE SAVEPOINT sync"];
}

+ (void)unlockSyncAsynchronously
{
  v3 = WBS_LOG_CHANNEL_PREFIXBookmarkSync();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_272C20000, v3, OS_LOG_TYPE_DEFAULT, "Unlocking sync asynchronously", buf, 2u);
  }

  v4 = syncLockQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__WebBookmarkCollection_Sync__unlockSyncAsynchronously__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  dispatch_barrier_async(v4, block);
}

+ (void)holdLockSync:(const void *)sync
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = WBS_LOG_CHANNEL_PREFIXBookmarkSync();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    syncCopy = sync;
    _os_log_impl(&dword_272C20000, v5, OS_LOG_TYPE_DEFAULT, "Hold lock sync for requestor %p", buf, 0xCu);
  }

  v6 = syncLockQueue();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__WebBookmarkCollection_Sync__holdLockSync___block_invoke;
  v8[3] = &__block_descriptor_48_e5_v8__0l;
  v8[4] = self;
  v8[5] = sync;
  dispatch_barrier_async(v6, v8);

  v7 = *MEMORY[0x277D85DE8];
}

void __44__WebBookmarkCollection_Sync__holdLockSync___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) _syncFlags];
  v2 = [v4 lockSyncHoldRequestorPointers];
  v3 = [MEMORY[0x277CCAE60] valueWithPointer:*(a1 + 40)];
  [v2 addObject:v3];
}

+ (void)unholdLockSync:(const void *)sync
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = WBS_LOG_CHANNEL_PREFIXBookmarkSync();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    syncCopy = sync;
    _os_log_impl(&dword_272C20000, v4, OS_LOG_TYPE_DEFAULT, "Unhold lock sync for requestor %p", buf, 0xCu);
  }

  operator new();
}

void __46__WebBookmarkCollection_Sync__unholdLockSync___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _syncFlags];
  v3 = [v2 lockSyncHoldRequestorPointers];
  v4 = [MEMORY[0x277CCAE60] valueWithPointer:*(a1 + 40)];
  [v3 removeObject:v4];

  if ([v2 unlockSyncRequested] && !objc_msgSend(v3, "count"))
  {
    v6 = WBS_LOG_CHANNEL_PREFIXBookmarkSync();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [MEMORY[0x277CCA8D8] mainBundle];
      v8 = [v7 bundleIdentifier];
      v11 = 138543362;
      v12 = v8;
      _os_log_impl(&dword_272C20000, v6, OS_LOG_TYPE_DEFAULT, "Attempting to unlock sync since last requestor has unheld the lock in process %{public}@", &v11, 0xCu);
    }

    [*(a1 + 32) _unlockSync];
  }

  else if ([v2 unlockSyncRequested])
  {
    v5 = WBS_LOG_CHANNEL_PREFIXBookmarkSync();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134217984;
      v12 = [v3 count];
      _os_log_impl(&dword_272C20000, v5, OS_LOG_TYPE_DEFAULT, "Unlock sync requested but there are still %zu requestors remaining", &v11, 0xCu);
    }
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v9);
    MEMORY[0x2743D62C0]();
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_postBookmarksChangedSyncNotification
{
  if (![(WBCollectionConfiguration *)self->_configuration collectionType])
  {
    v2 = objc_opt_class();
    v3 = syncLockQueue();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __68__WebBookmarkCollection_Sync___postBookmarksChangedSyncNotification__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v2;
    dispatch_barrier_async(v3, block);
  }
}

- (void)_setSyncNotificationType:(int64_t)type
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    typeCopy = type;
    _os_log_impl(&dword_272C20000, v4, OS_LOG_TYPE_DEFAULT, "Setting sync notification type: %ld", buf, 0xCu);
  }

  v5 = objc_opt_class();
  v6 = syncLockQueue();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__WebBookmarkCollection_Sync___setSyncNotificationType___block_invoke;
  v8[3] = &__block_descriptor_48_e5_v8__0lu32l8;
  v8[4] = v5;
  v8[5] = type;
  dispatch_barrier_async(v6, v8);

  v7 = *MEMORY[0x277D85DE8];
}

void __56__WebBookmarkCollection_Sync___setSyncNotificationType___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _syncFlags];
  [v2 setSyncNotificationType:*(a1 + 40)];
}

+ (void)_postBookmarksChangedSyncNotificationOnSyncQueue
{
  _syncFlags = [self _syncFlags];
  if ([_syncFlags syncAllowed])
  {
    if ([_syncFlags syncLockFileDescriptor] == -1)
    {
      if ([_syncFlags syncNotificationType] == 1)
      {
        v3 = _os_activity_create(&dword_272C20000, "Request sync client trigger sync", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
        os_activity_scope_enter(v3, &state);
        v4 = WBS_LOG_CHANNEL_PREFIXBookmarks();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          *v6 = 0;
          _os_log_impl(&dword_272C20000, v4, OS_LOG_TYPE_DEFAULT, "Requesting a CloudKit bookmarks sync due to local changes", v6, 2u);
        }

        mEMORY[0x277D49B18] = [MEMORY[0x277D49B18] sharedProxy];
        [mEMORY[0x277D49B18] userDidUpdateBookmarkDatabase];

        os_activity_scope_leave(&state);
      }
    }

    else
    {
      [_syncFlags setPostSyncNotificationWhenUnlocking:1];
    }
  }
}

- (BOOL)containsOnlyStockBookmarks
{
  v3 = [[WebBookmarkListQuery alloc] initWithBookmarksWhere:@"special_id == 0 AND id != 0 AND deleted = 0" orderBy:0 usingFilter:0];
  v4 = [[WebBookmarkList alloc] initWithQuery:v3 skipOffset:0 collection:self];
  bookmarkCount = [(WebBookmarkList *)v4 bookmarkCount];
  if (bookmarkCount)
  {
    v6 = 0;
    v7 = 0;
    while (1)
    {
      v8 = [(WebBookmarkList *)v4 bookmarkAtIndex:v7];
      localAttributes = [v8 localAttributes];
      if (([localAttributes wb_BOOLForKey:@"com.apple.bookmarks.IsBuiltinBookmark"] & 1) == 0 && (objc_msgSend(localAttributes, "wb_BOOLForKey:", @"com.apple.bookmarks.IsBuiltinDeviceBookmark") & 1) == 0 && (objc_msgSend(localAttributes, "wb_BOOLForKey:", @"com.apple.bookmarks.IsCarrierBookmark") & 1) == 0)
      {
        break;
      }

      v7 = (v7 + 1);
      v6 = v7 >= bookmarkCount;
      if (bookmarkCount == v7)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v6 = 1;
  }

  return v6;
}

- (void)_setupWithPath:checkIntegrity:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5_0(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_3_0(&dword_272C20000, v3, v4, "Failed to open Bookmarks database, returning early because database write is not allowed. error: %{public}@", v5);
}

- (void)_setupWithPath:checkIntegrity:.cold.2()
{
  OUTLINED_FUNCTION_6();
  *v2 = 67109378;
  *(v2 + 4) = v1 & 1;
  *(v2 + 8) = 2114;
  *(v2 + 10) = v3;
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);
}

- (void)_setupWithPath:checkIntegrity:.cold.3()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5_0(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_3_0(&dword_272C20000, v3, v4, "Could not open bookmarks database: %{public}@", v5);
}

- (void)_setupWithPath:checkIntegrity:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_setupWithPath:checkIntegrity:.cold.5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_setupWithPath:checkIntegrity:.cold.6()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5_0(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_3_0(&dword_272C20000, v3, v4, "Still could not open bookmarks database: %{public}@", v5);
}

- (void)_setupWithPath:checkIntegrity:.cold.7()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)_removeCorruptedBookmarksDatabaseAtPath:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)_removeCorruptedBookmarksDatabaseAtPath:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)_removeCorruptedBookmarksDatabaseAtPath:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)_removeCorruptedBookmarksDatabaseAtPath:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_unsafeOpenDatabaseAtPath:checkIntegrity:error:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_verifyAllTablesExist:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_checkDatabaseIntegrity
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __62__WebBookmarkCollection_initWithConfiguration_checkIntegrity___block_invoke_cold_1(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_setupWithPath:migratingBookmarksPlist:syncAnchorPlist:checkIntegrity:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)safariBookmarkCollection
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)cleanUpReadingListArchives
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)clearAllReadingListArchives
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5_0(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_3_0(&dword_272C20000, v3, v4, "Failed to get list of archive directories: %{public}@", v5);
}

- (void)clearReadingListArchiveWithUUID:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)markWebContentFilterAllowsAllReadingListItems
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)saveBookmarks:postNotification:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)saveBookmarks:postNotification:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)saveBookmark:startReadingListFetcher:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5_0(v1, v2, 5.8382e-34);
  *(v3 + 12) = 2114;
  *(v3 + 14) = @"Trying to save a bookmark without first obtaining the bookmarks database file lock.";
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)_saveBookmark:startReadingListFetcher:forApplyingInMemoryChanges:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5_0(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_3_0(&dword_272C20000, v3, v4, "Failed to save bookmark %{public}@", v5);
}

void __90__WebBookmarkCollection__saveBookmark_startReadingListFetcher_forApplyingInMemoryChanges___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_deleteIconForBookmark:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_deleteIconForBookmark:.cold.2()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5_0(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_3_0(&dword_272C20000, v3, v4, "Failed to delete bookmark icon: %{public}@", v5);
}

- (void)saveArchiveForReadingListBookmarkWithID:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)saveIconWithData:urlString:forBookmark:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5_0(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_3_0(&dword_272C20000, v3, v4, "Creating a directory for Reading List icons failed: %{public}@", v5);
}

- (void)saveIconWithData:urlString:forBookmark:.cold.2()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5_0(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_3_0(&dword_272C20000, v3, v4, "Saving Reading List icon failed: %{public}@", v5);
}

- (void)saveAndMoveBookmark:toFolderID:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)saveAndMoveBookmark:toFolderID:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)saveAndMoveBookmark:(int)a3 toFolderID:.cold.3(uint64_t a1, int a2, int a3)
{
  *a1 = 67109376;
  *(a1 + 4) = a2;
  *(a1 + 8) = 1024;
  *(a1 + 10) = a3;
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xEu);
}

void __57__WebBookmarkCollection__updateBookmarks_inFolderWithID___block_invoke_406_cold_1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5_0(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_3_0(&dword_272C20000, v3, v4, "Failed to save and move bookmark during update with error: %@", v5);
}

void __57__WebBookmarkCollection__updateBookmarks_inFolderWithID___block_invoke_406_cold_2()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5_0(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_3_0(&dword_272C20000, v3, v4, "Failed to reorder bookmark during update with error: %@", v5);
}

void __57__WebBookmarkCollection__updateBookmarks_inFolderWithID___block_invoke_406_cold_3()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5_0(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_3_0(&dword_272C20000, v3, v4, "Failed to save bookmark during update with error: %@", v5);
}

- (void)_migrateToCurrentSchema
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_migrateBookmarksPlist:syncAnchorPlist:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_migrateBookmarksPlist:syncAnchorPlist:.cold.2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)_migrateBookmarksPlist:syncAnchorPlist:.cold.3()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)_updateDatabaseIfNewerVersion:wasLaunchedForSyncStringKey:upgradeSelector:versionType:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_updateDatabaseIfNewerVersion:wasLaunchedForSyncStringKey:upgradeSelector:versionType:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_clearAllTombstones
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_clearAllSyncKeys
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_clearAllSyncData
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void __42__WebBookmarkCollection__clearAllSyncData__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5_0(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_3_0(&dword_272C20000, v3, v4, "Failed to reset sync data of bookmark %{public}@", v5);
}

void __42__WebBookmarkCollection__clearAllSyncData__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5_0(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_3_0(&dword_272C20000, v3, v4, "Failed to reset generation of bookmark %{public}@", v5);
}

- (void)_deleteBookmark:leaveTombstone:insertTombstoneBlock:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_2(v1, v2, v3, 1.5047e-36);
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);
}

- (void)_deleteRecursively:descendantsOnly:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_addBookmarkWithTitle:address:parentID:orderIndex:isFolder:externalUUID:associatedBookmark:updateParentChildCount:updateAncestorEntries:incrementGenerations:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_2(v1, v2, v3, 1.5047e-36);
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);
}

- (void)_addBookmarkWithTitle:address:parentID:orderIndex:isFolder:externalUUID:associatedBookmark:updateParentChildCount:updateAncestorEntries:incrementGenerations:.cold.2()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_2(v1, v2, v3, 1.5047e-36);
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);
}

- (void)_saveBookmark:withSpecialID:updateGenerationIfNeeded:.cold.2()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5_0(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_3_0(&dword_272C20000, v3, v4, "Failed to add bookmark %{public}@", v5);
}

- (void)_saveBookmark:withSpecialID:updateGenerationIfNeeded:.cold.3()
{
  OUTLINED_FUNCTION_6();
  v2 = v1;
  OUTLINED_FUNCTION_1_1(v1, v3, v4, 5.8382e-34);
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

- (void)_saveBookmark:withSpecialID:updateGenerationIfNeeded:.cold.4()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5_0(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_3_0(&dword_272C20000, v3, v4, "Failed to update bookmark, could not add extraAttributes %{public}@", v5);
}

- (void)_saveBookmark:withSpecialID:updateGenerationIfNeeded:.cold.5()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5_0(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_3_0(&dword_272C20000, v3, v4, "Failed to update bookmark, could not add localAttributes %{public}@", v5);
}

- (void)_saveBookmark:withSpecialID:updateGenerationIfNeeded:.cold.6()
{
  OUTLINED_FUNCTION_6();
  v2 = v1;
  OUTLINED_FUNCTION_1_1(v1, v3, v4, 5.8382e-34);
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

- (void)_saveBookmark:withSpecialID:updateGenerationIfNeeded:.cold.7()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5_0(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_3_0(&dword_272C20000, v3, v4, "Failed to update bookmark, could update hidden flag %{public}@", v5);
}

- (void)_saveBookmark:withSpecialID:updateGenerationIfNeeded:.cold.8()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_2(v1, v2, v3, 1.5047e-36);
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);
}

- (void)_saveBookmark:withSpecialID:updateGenerationIfNeeded:.cold.9()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5_0(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_3_0(&dword_272C20000, v3, v4, "Failed to update bookmark, could not update hidden ancestor count for folder: %{public}@", v5);
}

- (void)_saveBookmark:withSpecialID:updateGenerationIfNeeded:.cold.10()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5_0(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_3_0(&dword_272C20000, v3, v4, "Failed to update bookmark, could not update reading list item: %{public}@", v5);
}

- (void)_saveBookmark:withSpecialID:updateGenerationIfNeeded:.cold.11()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5_0(v1, v2, 5.8382e-34);
  *(v3 + 12) = 1024;
  *(v3 + 14) = v4;
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x12u);
}

- (void)_saveBookmark:withSpecialID:updateGenerationIfNeeded:.cold.12()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5_0(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_3_0(&dword_272C20000, v3, v4, "Failed to update bookmark, could not increment generation for bookmark: %{public}@", v5);
}

- (void)_saveBookmark:withSpecialID:updateGenerationIfNeeded:.cold.13()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5_0(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_3_0(&dword_272C20000, v3, v4, "Failed to update bookmark, failed to reindex bookmark: %{public}@", v5);
}

- (void)_saveBookmark:withSpecialID:updateGenerationIfNeeded:.cold.14()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5_0(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_3_0(&dword_272C20000, v3, v4, "Failed to update bookmark, failed to update sync data for bookmark: %{public}@", v5);
}

- (void)bookmarkIDForServerID:(uint64_t)a1 excludeDeletedBookmarks:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 20);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
  v8 = *MEMORY[0x277D85DE8];
}

void __88__WebBookmarkCollection_deviceIdentifierForCloudKitWithCollectionType_generateIfNeeded___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_deleteAncestorTableEntriesForBookmarkID:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_reindexBookmarkID:title:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_reindexBookmarkID:title:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_incrementGeneration
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_simulateCrashWithDescription:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();
  _os_log_fault_impl(&dword_272C20000, v0, OS_LOG_TYPE_FAULT, "%{public}@ Please file a bug citing the following caller:", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_importBookmarksPlist:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_insertAncestorTableEntriesForBookmarkID:withAncestorIDs:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setLocalMigrationState:generateDeviceIdentifierIfNeeded:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setLocalMigrationState:generateDeviceIdentifierIfNeeded:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

@end