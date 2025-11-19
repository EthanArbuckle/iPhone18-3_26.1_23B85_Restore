@interface WebBookmarkCollection
+ (BOOL)_isLockedSync;
+ (BOOL)_lockSync;
+ (BOOL)_removeCorruptedBookmarksDatabaseAtPath:(id)a3;
+ (BOOL)isLockedSync;
+ (BOOL)lockSync;
+ (NSString)bookmarkImagesDirectoryPath;
+ (NSString)readingListArchivesDirectoryPath;
+ (NSURL)inMemoryChangesFileURL;
+ (WebBookmarkCollection)collectionWithConfiguration:(id)a3;
+ (WebBookmarkCollection)safariBookmarkCollection;
+ (id)_cloudKitSyncMetadataFileNameWithCollectionType:(int64_t)a3;
+ (id)_defaultDatabaseFileNameForConfiguration:(id)a3;
+ (id)_syncFlags;
+ (id)_uniqueExternalUUID;
+ (id)databasePathForConfiguration:(id)a3;
+ (id)deviceIdentifierForCloudKitWithCollectionType:(int64_t)a3 generateIfNeeded:(BOOL)a4;
+ (unint64_t)readingListArchivesDiskUsage;
+ (void)_postBookmarksChangedSyncNotificationOnSyncQueue;
+ (void)_unlockSync;
+ (void)holdLockSync:(const void *)a3;
+ (void)resetDeviceIdentifierForCloudKitWithCollectionType:(int64_t)a3;
+ (void)safariBookmarkCollection;
+ (void)unholdLockSync:(const void *)a3;
+ (void)unlockSync;
+ (void)unlockSyncAsynchronously;
- (BOOL)_bookmark:(id)a3 hasCurrentDAVHomePath:(id)a4;
- (BOOL)_bookmark:(id)a3 hasPriorityOverBookmarkForDeduplication:(id)a4 prioritizeBookmarksWithSyncData:(BOOL)a5 davHomePath:(id)a6;
- (BOOL)_bookmark:(id)a3 isDuplicateOfBookmark:(id)a4;
- (BOOL)_bookmarkHasSyncedToServer:(id)a3;
- (BOOL)_checkDatabaseIntegrity;
- (BOOL)_childrenOfParentBookmarkAreUnsyncable:(id)a3;
- (BOOL)_clearAllSyncData;
- (BOOL)_clearAllSyncKeys;
- (BOOL)_clearAllTombstones;
- (BOOL)_clearAllTombstonesDuringOrBeforeLocalRecordGeneration:(int64_t)a3;
- (BOOL)_clearChangeList;
- (BOOL)_clearSyncDataAfterICloudKeychainReset;
- (BOOL)_clearSyncKeysUnderBookmarkID:(int)a3 isFolder:(BOOL)a4;
- (BOOL)_clearTombstoneForBookmark:(id)a3;
- (BOOL)_deduplicateBookmarksForBookmarkDAVWithHomeURL:(id)a3;
- (BOOL)_deleteAncestorTableEntriesForBookmarkID:(int)a3;
- (BOOL)_deleteAndRebuildAncestorTableRecords;
- (BOOL)_deleteBookmark:(id)a3 leaveTombstone:(BOOL)a4 insertTombstoneBlock:(id)a5;
- (BOOL)_deleteBookmark:(id)a3 postChangeNotification:(BOOL)a4 forApplyingInMemoryChanges:(BOOL)a5;
- (BOOL)_deleteRecursively:(int)a3 descendantsOnly:(BOOL)a4;
- (BOOL)_deleteSyncPropertyForKey:(id)a3;
- (BOOL)_ensureFolderChildrenCount:(id)a3;
- (BOOL)_importBookmarksPlist:(id)a3;
- (BOOL)_importSyncAnchorPlist:(id)a3;
- (BOOL)_incrementGeneration;
- (BOOL)_indexAllTitleWords;
- (BOOL)_indexBookmarkID:(int)a3 title:(id)a4;
- (BOOL)_insertTombsonesRecursivelyForRootFolder:(id)a3 insertTombstoneBlock:(id)a4;
- (BOOL)_insertTombstoneWithServerID:(id)a3 itemType:(int64_t)a4 subtype:(int64_t)a5 syncData:(id)a6;
- (BOOL)_isDatabaseWriteAllowed;
- (BOOL)_isTombstoneWithServerID:(id)a3;
- (BOOL)_markBookmarkID:(int)a3 added:(BOOL)a4;
- (BOOL)_markSpecialBookmarks;
- (BOOL)_mergeBookmark:(id)a3 withOriginalBookmark:(id)a4 prioritizeOriginalBookmarkAttributes:(BOOL)a5 generateChangesIfNeeded:(BOOL)a6;
- (BOOL)_mergeChildrenOfID:(int)a3 referencingBase:(id)a4 error:(id *)a5;
- (BOOL)_migrateBookmarksPlist:(id)a3 syncAnchorPlist:(id)a4;
- (BOOL)_migrateToCurrentSchema;
- (BOOL)_moveBookmark:(id)a3 fromIndex:(unsigned int)a4 toIndex:(unsigned int)a5;
- (BOOL)_needsDeduplicationForBookmarkDAVWithHomeURL:(id)a3;
- (BOOL)_rebuildAncestorTable;
- (BOOL)_recalculateCachedChildrenCountAndOrderIndices;
- (BOOL)_reorderBookmark:(id)a3 afterBookmark:(id)a4;
- (BOOL)_restoreBookmarkBarIfMissing;
- (BOOL)_saveBookmark:(id)a3 startReadingListFetcher:(BOOL)a4 forApplyingInMemoryChanges:(BOOL)a5;
- (BOOL)_setSyncData:(id)a3 forBookmark:(id)a4;
- (BOOL)_setSyncKey:(id)a3 forBookmark:(id)a4;
- (BOOL)_syncPropertyExistsForKey:(id)a3;
- (BOOL)_syncSetString:(id)a3 forKey:(id)a4 updatedExistingKey:(BOOL *)a5;
- (BOOL)_trackChangesInMemoryIfDatabaseWriteIsNotAllowed;
- (BOOL)_unsafeOpenDatabaseAtPath:(id)a3 checkIntegrity:(BOOL)a4 error:(id *)a5;
- (BOOL)_updateDatabaseIfNewerOSVersionWasLaunched;
- (BOOL)_updateDatabaseIfNewerSafariVersionWasLaunched;
- (BOOL)_updateDatabaseIfNewerVersion:(id)a3 wasLaunchedForSyncStringKey:(id)a4 upgradeSelector:(SEL)a5 versionType:(id)a6;
- (BOOL)_updateDatabaseOutsideSafariProcessIfNewerSafariVersionWasLaunched;
- (BOOL)_updateHiddenAncestorCountForBookmarksUnderFolderID:(int)a3 addingOffset:(int)a4;
- (BOOL)_verifyAllTablesExist:(int *)a3;
- (BOOL)applyInMemoryChangesToDatabase;
- (BOOL)beginSyncTransaction;
- (BOOL)bookmarkContainsLeafBookmark:(id)a3;
- (BOOL)bookmarkIsFavoritesFolder:(id)a3;
- (BOOL)bookmarkIsInFavoritesFolder:(id)a3;
- (BOOL)cleanUpReadingListArchives;
- (BOOL)clearAllReadingListArchives;
- (BOOL)clearAllSyncData;
- (BOOL)clearChangesDuringOrBeforeLocalRecordGeneration:(int64_t)a3;
- (BOOL)clearChangesForBookmark:(id)a3;
- (BOOL)clearChangesForChangeRecords:(id)a3 lastSyncedRecordGeneration:(int64_t)a4;
- (BOOL)clearReadingListArchiveWithUUID:(id)a3;
- (BOOL)clearSyncDataAfterICloudKeychainReset;
- (BOOL)containsOnlyStockBookmarks;
- (BOOL)deleteAllFavoriteIcons;
- (BOOL)fixCachedNumberOfChildrenIfNeeded;
- (BOOL)getBookmarkType:(BOOL *)a3 andSubtype:(int64_t *)a4 forBookmarkWithID:(int)a5;
- (BOOL)hasInMemoryChanges;
- (BOOL)isTransactionCurrentlyActive;
- (BOOL)markAllFavoritesAsNeedingIcons;
- (BOOL)markArchivedReadingListItemsAsNonRecoverable;
- (BOOL)markAttributesAsModified:(unint64_t)a3 forBookmark:(id)a4;
- (BOOL)markWebContentFilterAllowsAllReadingListItems;
- (BOOL)mergeWithBookmarksDictionary:(id)a3 clearHidden:(BOOL)a4 clearSyncData:(BOOL)a5 error:(id *)a6;
- (BOOL)migrateReadingListIconsFromDatabaseToBookmarkImagesDirectory;
- (BOOL)performDatabaseUpdatesWithTransaction:(id)a3 applyInMemoryChanges:(BOOL)a4 secureDelete:(BOOL)a5;
- (BOOL)removeAllSyncDataForKeyWithPrefix:(id)a3;
- (BOOL)removePresenceForParticipant:(id)a3 inTabGroupWithServerID:(id)a4;
- (BOOL)removeUnusedPresenceRecords;
- (BOOL)rollOutLastReadingListItem;
- (BOOL)saveBookmark:(id)a3;
- (BOOL)saveBookmarks:(id)a3 postNotification:(BOOL)a4;
- (BOOL)saveDatabaseSyncData:(id)a3;
- (BOOL)setPresenceInTabWithServerID:(id)a3 tabGroupWithServerID:(id)a4 forParticipant:(id)a5;
- (BOOL)setServerID:(id)a3 forBookmark:(id)a4;
- (BOOL)setSyncData:(id)a3 forKey:(id)a4;
- (BOOL)shouldFetchIconForBookmark:(id)a3;
- (BOOL)updateBookmarkSyncPositionIfNeeded:(id)a3;
- (BOOL)updateDatabaseSyncDataUsingBlock:(id)a3;
- (BOOL)updateReadingListWebFilterStatusForUnsetItemsOnly:(BOOL)a3;
- (BOOL)updateSyncDataForBookmark:(id)a3 usingBlock:(id)a4;
- (BOOL)updateSyncDataForBookmarkWithRecordName:(id)a3 excludeDeletedBookmarks:(BOOL)a4 usingBlock:(id)a5;
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
- (WebBookmarkCollection)initWithConfiguration:(id)a3 checkIntegrity:(BOOL)a4;
- (WebBookmarkCollection)initWithPath:(id)a3 migratingBookmarksPlist:(id)a4 syncAnchorPlist:(id)a5;
- (WebBookmarkList)allBookmarkFolders;
- (WebBookmarkList)allBookmarkLeaves;
- (WebBookmarkList)bookmarksBarList;
- (WebBookmarkList)bookmarksNeedingIcons;
- (WebBookmarkList)favoritesFolderList;
- (WebBookmarkList)rollingListOfArchivedReadingListItems;
- (id)_applyInMemoryChanges:(id)a3 postChangeNotification:(BOOL)a4;
- (id)_bookmarkDictionaryForSqliteRow:(sqlite3_stmt *)a3 recursive:(BOOL)a4 error:(id *)a5;
- (id)_bookmarksFromStatementSelectingIDs:(const char *)a3 withQuery:(id)a4;
- (id)_databaseTitleForSpecialID:(int)a3;
- (id)_errorForMostRecentSQLiteError;
- (id)_errorForMostRecentSQLiteErrorWithErrorCode:(int64_t)a3;
- (id)_fetchBookmarkIDsInFolder:(int)a3 onlyFolders:(BOOL)a4 includingHiddenBookmarks:(BOOL)a5 sortedByOrderIndex:(BOOL)a6;
- (id)_firstBookmarkWithURLMatchingString:(id)a3 prefixMatch:(BOOL)a4 inParent:(int)a5;
- (id)_firstOrLastServerIDInFolderWithServerID:(id)a3 isFirst:(BOOL)a4;
- (id)_firstServerIDInFolderWithServerID:(id)a3;
- (id)_folderContentsDidChangeNotificationName;
- (id)_inMemoryChangeSet;
- (id)_lastServerIDInFolderWithServerID:(id)a3;
- (id)_mergeCandidateBookmarkWithTitle:(id)a3 address:(id)a4 parent:(int)a5 mergeMode:(int64_t)a6;
- (id)_mergeCandidateFolderWithTitle:(id)a3 parent:(int)a4 mergeMode:(int64_t)a5;
- (id)_orderedWhereClauseForArchiveMode:(int64_t)a3;
- (id)_orderedWhereClauseForArchiveMode:(int64_t)a3 automaticArchivingEnabled:(BOOL)a4;
- (id)_parentIdentifiersOfBookmarksNeedingIcons;
- (id)_positionAfterBookmark:(id)a3;
- (id)_positionAfterOrderIndex:(unsigned int)a3 inFolderWithID:(int)a4;
- (id)_positionBeforeBookmark:(id)a3;
- (id)_positionBeforeOrderIndex:(unsigned int)a3 inFolderWithID:(int)a4;
- (id)_primaryRecordZoneID;
- (id)_readingListItemsWhere:(id)a3 filteredBy:(id)a4 withInMemoryFilter:(id)a5;
- (id)_rootFolderHiddenChildrenClause;
- (id)_rootServerIDForRecordZoneID:(id)a3;
- (id)_safariFetcherServerProxy;
- (id)_serverIDAfterServerID:(id)a3;
- (id)_serverIDBeforeServerID:(id)a3;
- (id)_serverIDOfSiblingBookmarkWithServerID:(id)a3 immediatelyBeforeOrAfter:(BOOL)a4;
- (id)_syncDataBlobForBookmarkServerID:(id)a3;
- (id)_syncDataForBookmarkID:(int)a3;
- (id)_syncDataForBookmarkServerID:(id)a3;
- (id)_syncKeysForServerIDs:(id)a3;
- (id)_tableExpressionForArchiveMode:(int64_t)a3;
- (id)activeParticipantsInTabGroupWithServerID:(id)a3;
- (id)activeParticipantsInTabWithServerID:(id)a3;
- (id)allSyncDataForKeysWithPrefix:(id)a3;
- (id)allSyncingAttributesForBookmark:(id)a3;
- (id)applyInMemoryChanges:(id)a3;
- (id)bookmarkAtPath:(id)a3;
- (id)bookmarkWithServerID:(id)a3 excludeDeletedBookmarks:(BOOL)a4;
- (id)bookmarkWithSpecialID:(int)a3;
- (id)bookmarkWithUUID:(id)a3;
- (id)bookmarksDictionary;
- (id)bookmarksMatchingString:(id)a3;
- (id)bookmarksWithSubtype:(int64_t)a3;
- (id)currentDeviceIdentifier;
- (id)currentTabServerIDPresenceForParticipant:(id)a3 getTabGroupServerID:(id *)a4;
- (id)currentTabServerIDPresenceForParticipant:(id)a3 inTabGroupWithServerID:(id)a4;
- (id)databaseHealthInformation;
- (id)descendantsOfBookmarkFolder:(id)a3;
- (id)fastFetchBookmarksInBookmarkList:(id)a3;
- (id)firstReadingListBookmarkNeedingArchiveInMode:(int64_t)a3;
- (id)generateNewServerIDForBookmark:(id)a3;
- (id)generateSyncPositionForBookmark:(id)a3;
- (id)leafChildCountForFoldersInFolderWithID:(int)a3;
- (id)modifiedSyncingAttributesForBookmark:(id)a3;
- (id)nextChangeAfterLocalRecordGeneration:(int64_t)a3;
- (id)presenceTabUUIDForParticipant:(id)a3 inTabGroupWithServerID:(id)a4;
- (id)readingListBookmarksNeedingArchiveInMode:(int64_t)a3;
- (id)readingListWithUnreadOnly:(BOOL)a3 filteredUsingString:(id)a4;
- (id)syncDataForBookmark:(id)a3;
- (id)syncDataForKey:(id)a3;
- (id)syncStringForKey:(id)a3;
- (id)syncableBookmarksIDsInFolderWithBookmarkID:(int)a3;
- (id)validBookmarkUUIDsFromUUIDs:(id)a3;
- (int)_favoritesFolderIdentifier;
- (int)_finalizeStatementIfNotNull:(sqlite3_stmt *)a3;
- (int)_specialIDForBookmarkBeingSaved:(id)a3;
- (int)_specialIDForBookmarkTitle:(id)a3;
- (int)_sqliteStatementWithQuery:(id)a3 runInBlock:(id)a4;
- (int)bookmarkIDForServerID:(id)a3 excludeDeletedBookmarks:(BOOL)a4;
- (int)bookmarkIdentifierOfAncestorWithAnySubtypeInSubtypes:(id)a3 forBookmark:(id)a4;
- (int)bookmarkIdentifierOfAncestorWithSubtype:(int64_t)a3 forBookmark:(id)a4;
- (int)bookmarkIdentifierOfFolderAncestorWithSubtype:(int64_t)a3 forBookmark:(id)a4;
- (int)identifierOfBookmarkWithUUID:(id)a3;
- (int)readingListFolderBookmarkID;
- (int)webFilterAllowedSitesFolderBookmarkID;
- (int64_t)_mergeBookmarkIntoPersistedBookmark:(id)a3 forAttributes:(unint64_t)a4;
- (int64_t)_syncType;
- (int64_t)firstSkippedProfileDeviceGeneration;
- (int64_t)firstSkippedProfileGeneration;
- (int64_t)lastSyncedRecordGeneration;
- (int64_t)localMigrationState;
- (int64_t)nextDatabaseSyncChangeID;
- (int64_t)subtypeOfBookmarkWithServerID:(id)a3;
- (sqlite3_stmt)_prefixSearch:(id)a3 usingColumns:(const char *)a4 maxCount:(unsigned int)a5;
- (sqlite3_stmt)_selectBookmarksWhere:(id)a3 returnType:(int64_t)a4;
- (sqlite3_stmt)_sqliteStatementWithQuery:(id)a3;
- (unint64_t)countReadingListBookmarksNeedingArchiveInMode:(int64_t)a3;
- (unint64_t)leafChildCountForBookmarksInFolderWithID:(int)a3;
- (unint64_t)modifiedAttributesOfBookmark:(id)a3;
- (unint64_t)purge:(unint64_t)a3;
- (unint64_t)purgeableSpace;
- (unsigned)_orderIndexForBookmarkInsertedIntoParent:(int)a3 insertAtBeginning:(BOOL)a4;
- (unsigned)orderIndexOfBookmark:(id)a3;
- (unsigned)orderIndexOfBookmark:(id)a3 withSyncPosition:(id)a4 inFolderWithID:(int)a5;
- (void)_addBookmarksForReadingListMatchStatement:(id)a3 normalizedQuery:(id)a4 toArray:(id)a5 maxResults:(int)a6;
- (void)_appendDuplicateBookmarkGroupsInBookmarks:(id)a3 toGroups:(id)a4 considerBookmarksWithSyncDataAsUnique:(BOOL)a5 davHomePath:(id)a6;
- (void)_applyInMemoryChange:(id)a3 fromChangeSet:(id)a4 updatedBookmarks:(id)a5;
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
- (void)_cullReadingListBookmarksList:(id)a3 toSize:(unint64_t)a4;
- (void)_deleteBookmarkInMemory:(id)a3;
- (void)_deleteIconForBookmark:(id)a3;
- (void)_enumerateBookmarksForMatchStatement:(id)a3 normalizedQuery:(id)a4 usingBlock:(id)a5;
- (void)_enumerateBookmarksMatchingString:(id)a3 statementSuffix:(id)a4 usingBlock:(id)a5;
- (void)_incrementGeneration;
- (void)_interruptDatabase;
- (void)_metaDataFileChanged:(id)a3;
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
- (void)_normalizeSearchString:(__CFString *)a3;
- (void)_postBookmarksChangedSyncNotification;
- (void)_postBookmarksDidReloadNotification;
- (void)_postBookmarksDidReloadNotificationAndStartReadingListFetcherIfChangesWereMade;
- (void)_postBookmarksSpecialFoldersDidChangeNotification;
- (void)_registerForSyncBookmarksFileChangedNotification;
- (void)_rerunMigrationsIfNecessary;
- (void)_restoreOrMergeAllowedSitesFolderAndContentsWithWebFilterAllowedSites:(id)a3 ensureChildCount:(BOOL)a4 postChangeNotification:(BOOL)a5;
- (void)_restoreOrMergeReadingListFolderWithChangeNotification:(BOOL)a3;
- (void)_setSyncNotificationType:(int64_t)a3;
- (void)_setupInMemoryChangeSet;
- (void)_simulateCrashWithDescription:(id)a3;
- (void)_startReadingListFetcher;
- (void)_test_preventPeriodicallyApplyingInMemoryChangesToDatabase;
- (void)_updateSyncNotificationType;
- (void)cleanUpReadingListArchives;
- (void)clearAllReadingListArchives;
- (void)clearCarrierBookmarks;
- (void)databaseLockAcquisitor:(id)a3 acquiredLock:(BOOL)a4;
- (void)dealloc;
- (void)deleteBookmarkInMemory:(id)a3;
- (void)didSkipProfileDeviceWithGeneration:(int64_t)a3;
- (void)didSkipProfileWithGeneration:(int64_t)a3;
- (void)enumerateBookmarks:(BOOL)a3 andReadingListItems:(BOOL)a4 matchingString:(id)a5 usingBlock:(id)a6;
- (void)enumerateDescendantsOfBookmark:(id)a3 usingBlock:(id)a4;
- (void)fixRecoveredBookmarksIfNeeded;
- (void)logRegulatoryBookmarksRead;
- (void)markChildrenInFolderAsRead:(id)a3;
- (void)markWebContentFilterAllowsAllReadingListItems;
- (void)modifyBookmarkInMemory:(id)a3;
- (void)persistChangesWithCompletion:(id)a3;
- (void)removePersistedInMemoryBookmarkChangesFile;
- (void)reorderBookmarkInMemory:(id)a3 afterBookmark:(id)a4;
- (void)resetDeviceIdentifier;
- (void)rollOutReadingListItemIfNeededToMakeRoomForOneNewItem;
- (void)rollbackSyncTransaction;
- (void)saveArchivesForReadingListBookmarks:(id)a3;
- (void)saveIconWithData:(id)a3 urlString:(id)a4 forBookmark:(id)a5;
- (void)saveMinimumAPISyncVersionOfDescendantItemsForItem:(id)a3 includingAncestorItem:(BOOL)a4;
- (void)setFavoritesFolder:(id)a3 localOnly:(BOOL)a4;
- (void)setLastSyncedRecordGeneration:(int64_t)a3;
- (void)updateSelectedFavoritesFolderWithBookmarkID:(int)a3 wasFavoritesFolder:(BOOL)a4 isFavoritesFolder:(BOOL)a5;
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
  v5 = [objc_opt_class() inMemoryChangesFileURL];
  v3 = [(WebBookmarkChangeSet *)v2 initWithFileURL:?];
  v4 = inMemoryChangeSet;
  inMemoryChangeSet = v3;
}

+ (NSURL)inMemoryChangesFileURL
{
  v2 = MEMORY[0x277CBEBC0];
  v3 = [a1 safariDirectoryPath];
  v4 = [v3 stringByAppendingPathComponent:@"bookmarkChanges.plist"];
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
  v3 = [(WebBookmarkCollection *)self _userVersion];
  if ([(WebBookmarkCollection *)self _isDatabaseWriteAllowed])
  {
    if (v3 < 57)
    {
      if (v3 == 56)
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
      switch(v3)
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
    if (v3 <= 55 && v3 != 39)
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
  v3 = [MEMORY[0x277CCA8D8] safari_safariCoreBundle];
  v4 = [v3 safari_normalizedVersion];

  LOBYTE(self) = [(WebBookmarkCollection *)self _updateDatabaseIfNewerVersion:v4 wasLaunchedForSyncStringKey:@"newestLaunchedSafariVersion" upgradeSelector:sel__performSafariVersionUpgradesFromPreviousVersion_ versionType:@"Safari"];
  return self;
}

- (BOOL)_updateDatabaseIfNewerOSVersionWasLaunched
{
  v3 = [MEMORY[0x277CCAC38] processInfo];
  v4 = [v3 safari_operatingSystemVersionString];

  LOBYTE(self) = [(WebBookmarkCollection *)self _updateDatabaseIfNewerVersion:v4 wasLaunchedForSyncStringKey:@"newestLaunchedOSVersion" upgradeSelector:sel__performOSVersionUpgradesFromPreviousVersion_ versionType:@"OS"];
  return self;
}

- (void)_createRecoveredBookmarksFolderIfNeeded
{
  v3 = [(WebBookmarkCollection *)self bookmarkIDWithSpecialID:6];
  v4 = [(WebBookmarkCollection *)self maintainsSyncMetadata];
  if (v3 == 0x7FFFFFFF)
  {
    if (v4)
    {
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __64__WebBookmarkCollection__createRecoveredBookmarksFolderIfNeeded__block_invoke;
      v6[3] = &unk_279E757F0;
      v6[4] = self;
      [(WebBookmarkCollection *)self performDatabaseUpdatesWithTransaction:v6 secureDelete:0];
    }
  }

  else if (!v4)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"DELETE FROM bookmarks WHERE special_id = %d", 6];
    [(WebBookmarkCollection *)self _executeSQL:?];
  }
}

- (BOOL)_updateDatabaseOutsideSafariProcessIfNewerSafariVersionWasLaunched
{
  v3 = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = [v3 safari_isInSyncAgent];

  if ((v4 & 1) == 0)
  {
    return 1;
  }

  v5 = [MEMORY[0x277CCA8D8] safari_safariCoreBundle];
  v6 = [v5 safari_normalizedVersion];

  v7 = [(WebBookmarkCollection *)self _updateDatabaseIfNewerVersion:v6 wasLaunchedForSyncStringKey:@"newestLaunchedSafariOutsideSafariProcessVersion" upgradeSelector:sel__performSafariVersionUpgradesOutsideSafariProcessFromPreviousVersion_ versionType:@"NewestLaunchedSafariVersionOutsideApplicationProcess"];
  return v7;
}

- (id)currentDeviceIdentifier
{
  if ([(WBCollectionConfiguration *)self->_configuration isInMemoryDatabase])
  {
    v3 = [(WBCollectionConfiguration *)self->_configuration identifier];
  }

  else
  {
    v4 = [objc_opt_class() deviceIdentifierForCloudKitWithCollectionType:-[WBCollectionConfiguration collectionType](self->_configuration generateIfNeeded:{"collectionType"), 1}];
    v5 = [v4 UUID];
    v3 = [v5 UUIDString];
  }

  return v3;
}

- (id)_inMemoryChangeSet
{
  if ([(WebBookmarkCollection *)self _trackChangesInMemoryIfDatabaseWriteIsNotAllowed])
  {
    v2 = [objc_opt_class() inMemoryChangeSet];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)_rootFolderHiddenChildrenClause
{
  v2 = [(WebBookmarkCollection *)self favoritesFolder];
  v3 = [v2 identifier];

  return [MEMORY[0x277CCACA8] stringWithFormat:@"AND hidden = 0 AND id != %d AND (num_children > 0 OR special_id != %d)", v3, 2];
}

- (WebBookmark)favoritesFolder
{
  v3 = [(WebBookmarkCollection *)self syncStringForKey:@"_FavoritesFolderID"];
  v4 = [v3 intValue];

  if (!v4 || ([(WebBookmarkCollection *)self bookmarkWithID:v4], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v5 = [(WebBookmarkCollection *)self bookmarksBarBookmark];
  }

  return v5;
}

- (WebBookmark)bookmarksBarBookmark
{
  v3 = +[WBWebFilterSettings sharedWebFilterSettings];
  v4 = [v3 usesAllowedSitesOnly];

  if (v4)
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

  v3 = [(WebBookmarkCollection *)self _inMemoryChangeSet];
  v4 = [(WebBookmarkCollection *)self _applyInMemoryChanges:v3 postChangeNotification:1];
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
  v5[5] = a1;
  dispatch_sync(v3, v5);

  LOBYTE(a1) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return a1;
}

uint64_t __43__WebBookmarkCollection_Sync__isLockedSync__block_invoke(uint64_t a1)
{
  result = [*(a1 + 40) _isLockedSync];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

+ (BOOL)_isLockedSync
{
  v2 = [a1 _syncFlags];
  v3 = [v2 syncLockFileDescriptor] != -1;

  return v3;
}

+ (id)_syncFlags
{
  if (syncFlagsDictionary(void)::onceToken != -1)
  {
    +[WebBookmarkCollection(Sync) _syncFlags];
  }

  v3 = syncFlagsDictionary(void)::syncFlagsDictionary;
  v4 = [v3 objectForKey:a1];
  if (!v4)
  {
    v4 = -[WebBookmarkCollectionSyncFlags initWithSyncAllowed:]([WebBookmarkCollectionSyncFlags alloc], "initWithSyncAllowed:", [a1 isSyncAllowed]);
    [v3 setObject:v4 forKey:a1];
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
  v5[5] = a1;
  dispatch_barrier_sync(v3, v5);

  LOBYTE(a1) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return a1;
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
  v3 = [a1 _syncFlags];
  v4 = [v3 syncLockFileDescriptor];
  v5 = [a1 _syncLockFileName];
  if (v4 != -1)
  {
    goto LABEL_2;
  }

  v12 = [a1 safariDirectoryPath];
  v13 = [v12 stringByAppendingPathComponent:v5];
  v14 = [v13 UTF8String];

  v15 = open(v14, 512, 438);
  v16 = v15;
  if (v15 == -1)
  {
    [v3 setUnlockSyncRequested:0];
    v17 = WBS_LOG_CHANNEL_PREFIXBookmarkSync();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      +[WebBookmarkCollection(Sync) _lockSync];
    }

    goto LABEL_5;
  }

  if (flock(v15, 6) != -1)
  {
    [v3 setSyncLockFileDescriptor:v16];
LABEL_2:
    [v3 setUnlockSyncRequested:0];
    v6 = WBS_LOG_CHANNEL_PREFIXBookmarkSync();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [MEMORY[0x277CCA8D8] mainBundle];
      v8 = [v7 bundleIdentifier];
      *buf = 138543618;
      v23 = v8;
      v24 = 2114;
      v25 = v5;
      _os_log_impl(&dword_272C20000, v6, OS_LOG_TYPE_DEFAULT, "Process %{public}@ did acquire lock: %{public}@", buf, 0x16u);
    }

LABEL_5:
    v9 = 1;
    goto LABEL_6;
  }

  v18 = WBS_LOG_CHANNEL_PREFIXBookmarkSync();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v19 = [MEMORY[0x277CCA8D8] mainBundle];
    v20 = [v19 bundleIdentifier];
    v21 = *__error();
    *buf = 138543874;
    v23 = v20;
    v24 = 2114;
    v25 = v5;
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
  v3 = [(WebBookmarkCollection *)self applyInMemoryChangesToDatabase];
  if (v3)
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
        LOBYTE(v3) = 0;
        return v3;
      }

      [(WebBookmarkCollection *)self _postBookmarksChangedSyncNotification];
    }

    LOBYTE(v3) = 1;
  }

  return v3;
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
  v3 = [(WebBookmarkCollection *)self localMigrationState];
  if ((v3 + 1) > 4)
  {
    v4 = 2;
  }

  else
  {
    v4 = qword_272CCD310[v3 + 1];
  }

  [(WebBookmarkCollection *)self _setSyncNotificationType:v4];
  if (v3 != self->_lastObservedLocalMigrationState)
  {
    v10[0] = @"fromMigrationState";
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    v10[1] = @"toMigrationState";
    v11[0] = v5;
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:v3];
    v11[1] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];

    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 postNotificationName:@"WebBookmarksDetectedLocalMigrationStateTransitionNotification" object:self userInfo:v7];

    self->_lastObservedLocalMigrationState = v3;
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (int64_t)localMigrationState
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [objc_opt_class() _deviceIdentifierForCloudKitWithCollectionType:{-[WBCollectionConfiguration collectionType](self->_configuration, "collectionType")}];
  v4 = [v3 UUID];
  v5 = [v4 UUIDString];

  if ([v5 length])
  {
    v6 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138477827;
      v15 = v5;
      _os_log_impl(&dword_272C20000, v6, OS_LOG_TYPE_DEFAULT, "Looking up migration state for device identifier %{private}@", &v14, 0xCu);
    }

    v7 = [@"_ck_local_migration_state_" stringByAppendingString:v5];
    v8 = [(WebBookmarkCollection *)self syncStringForKey:v7];
    v9 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138543362;
      v15 = v8;
      _os_log_impl(&dword_272C20000, v9, OS_LOG_TYPE_DEFAULT, "Local migration state read from database %{public}@", &v14, 0xCu);
    }

    v10 = [v8 integerValue];
  }

  else
  {
    v11 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_272C20000, v11, OS_LOG_TYPE_DEFAULT, "Device identifier is empty", &v14, 2u);
    }

    v10 = [v3 encounteredErrorWhileObtainingUUID] << 63 >> 63;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

+ (void)unlockSync
{
  v3 = syncLockQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__WebBookmarkCollection_Sync__unlockSync__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  dispatch_barrier_sync(v3, block);
}

+ (void)_unlockSync
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [a1 _syncFlags];
  v4 = [v3 syncLockFileDescriptor];
  if (v4 != -1)
  {
    v5 = [v3 lockSyncHoldRequestorPointers];
    v6 = [v5 count];

    if (v6)
    {
      v7 = WBS_LOG_CHANNEL_PREFIXBookmarkSync();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [MEMORY[0x277CCA8D8] mainBundle];
        v9 = [v8 bundleIdentifier];
        v15 = 138543362;
        v16 = v9;
        _os_log_impl(&dword_272C20000, v7, OS_LOG_TYPE_DEFAULT, "Postponing unlockSync. The process %{public}@ has requested to hold the lock.", &v15, 0xCu);
      }

      [v3 setUnlockSyncRequested:1];
    }

    else
    {
      flock(v4, 8);
      close(v4);
      [v3 setSyncLockFileDescriptor:0xFFFFFFFFLL];
      [v3 setUnlockSyncRequested:0];
      if ([v3 postSyncNotificationWhenUnlocking])
      {
        [a1 _postBookmarksChangedSyncNotificationOnSyncQueue];
        [v3 setPostSyncNotificationWhenUnlocking:0];
      }

      v10 = WBS_LOG_CHANNEL_PREFIXBookmarkSync();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [MEMORY[0x277CCA8D8] mainBundle];
        v12 = [v11 bundleIdentifier];
        v13 = [a1 _syncLockFileName];
        v15 = 138543618;
        v16 = v12;
        v17 = 2114;
        v18 = v13;
        _os_log_impl(&dword_272C20000, v10, OS_LOG_TYPE_DEFAULT, "Process %{public}@ did release lock: %{public}@", &v15, 0x16u);
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

+ (id)_uniqueExternalUUID
{
  v2 = [MEMORY[0x277CCAD78] UUID];
  v3 = [v2 UUIDString];

  return v3;
}

- (int64_t)_syncType
{
  if ([(WBCollectionConfiguration *)self->_configuration collectionType])
  {
    return 1;
  }

  v4 = [(WebBookmarkCollection *)self localMigrationState];
  if ((v4 + 1) > 4)
  {
    return 2;
  }

  else
  {
    return qword_272CCD310[v4 + 1];
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
    v3 = [objc_opt_class() safariDirectoryPath];
    v4 = [v3 stringByAppendingPathComponent:@"BookmarkImages"];
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
  v3 = [(WebBookmarkCollection *)self favoritesFolder];
  v4 = [v3 identifier];

  return [(WebBookmarkCollection *)self listWithID:v4];
}

- (int)readingListFolderBookmarkID
{
  v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SELECT id FROM bookmarks WHERE special_id = %d", 3];
  LODWORD(self) = WebBookmarks::BookmarkSQLStatement::selectInt(self->_db, v3, v4);

  return self;
}

+ (id)_defaultDatabaseFileNameForConfiguration:(id)a3
{
  v3 = a3;
  v4 = [v3 collectionType];
  if (v4)
  {
    if (v4 == 1 && (v5 = [v3 storeOwner], v5 <= 4))
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

+ (BOOL)_removeCorruptedBookmarksDatabaseAtPath:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v29 = v3;
    _os_log_impl(&dword_272C20000, v5, OS_LOG_TYPE_DEFAULT, "Removing corrupted bookmarks database %{public}@", buf, 0xCu);
  }

  if (![MEMORY[0x277D49A08] hasInternalContent])
  {
    goto LABEL_11;
  }

  v6 = [v3 stringByAppendingPathExtension:@"corrupted"];
  v7 = [v4 _web_pathWithUniqueFilenameForPath:v6];

  if (([v4 moveItemAtPath:v3 toPath:v7 error:0] & 1) == 0)
  {
    v8 = NSTemporaryDirectory();
    v9 = MEMORY[0x277CCACA8];
    v10 = [v3 lastPathComponent];
    v11 = [v9 stringWithFormat:@"%@.corrupted", v10];
    v12 = [v8 stringByAppendingPathComponent:v11];

    v13 = [v4 _web_pathWithUniqueFilenameForPath:v12];

    if ([v4 moveItemAtPath:v3 toPath:v13 error:0])
    {
      v7 = v13;
      goto LABEL_7;
    }

LABEL_11:
    v15 = [v4 _web_removeFileOnlyAtPath:v3];
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
  v16 = [v3 stringByAppendingString:@"-journal"];
  if ([v4 fileExistsAtPath:v16])
  {
    if ([v4 _web_removeFileOnlyAtPath:v16])
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

  v19 = [v3 stringByAppendingString:@"-wal"];
  if ([v4 fileExistsAtPath:v19])
  {
    if ([v4 _web_removeFileOnlyAtPath:v19])
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

  v22 = [v3 stringByAppendingString:@"-shm"];
  if ([v4 fileExistsAtPath:v22])
  {
    if ([v4 _web_removeFileOnlyAtPath:v22])
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

- (BOOL)_unsafeOpenDatabaseAtPath:(id)a3 checkIntegrity:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v33[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [(WebBookmarkCollection *)self _isDatabaseWriteAllowed];
  if (v9)
  {
    v10 = 3145730;
  }

  else
  {
    v10 = 3145729;
  }

  v11 = sqlite3_open_v2([v8 UTF8String], &self->_db, v10, 0);
  v31 = v11;
  if (v11 == 14 && v9)
  {
    v31 = sqlite3_open_v2([v8 UTF8String], &self->_db, v10 | 4, 0);
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
      v13 = [(WebBookmarkCollection *)self _userVersion];
      if (v13 >= 41)
      {
        [(WebBookmarkCollection *)self _enableForeignKeys];
      }

      [(WebBookmarkCollection *)self _enableAutoVacuum];
      if ([v8 containsString:@":memory:"])
      {
        v14 = 1;
      }

      else
      {
        v14 = [v8 containsString:@"mode=memory"];
      }

      v16 = v12 | v14 & (v13 != 56);
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
            if (v6 && ![(WebBookmarkCollection *)self _checkDatabaseIntegrity])
            {
              if (a5)
              {
                v32 = *MEMORY[0x277CCA450];
                v33[0] = @"Database failed full integrity check.";
                v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
                *a5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.WebBookmarks.SQLiteError" code:11 userInfo:v23];
              }
            }

            else
            {
              v15 = [(WebBookmarkCollection *)self _migrateToCurrentSchema];
              if (v9 || v15)
              {
                v18 = objc_alloc_init(MEMORY[0x277D49B60]);
                v26[0] = MEMORY[0x277D85DD0];
                v26[1] = 3221225472;
                v26[2] = __72__WebBookmarkCollection__unsafeOpenDatabaseAtPath_checkIntegrity_error___block_invoke;
                v26[3] = &unk_279E75F60;
                v27 = v9;
                v26[4] = self;
                [v18 setHandler:v26];
                if (v16)
                {
                  LOBYTE(v15) = 1;
LABEL_59:

                  goto LABEL_41;
                }

                if (-[WBCollectionConfiguration isReadonly](self->_configuration, "isReadonly") && -[WebBookmarkCollection _isDatabaseWriteAllowed](self, "_isDatabaseWriteAllowed") && ([objc_opt_class() isLockedSync] & 1) == 0)
                {
                  if (([objc_opt_class() lockSync] & 1) == 0)
                  {
LABEL_58:
                    LOBYTE(v15) = 0;
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
                  v25 = [(WebBookmarkCollection *)self _updateDatabaseIfNewerOSVersionWasLaunched];
                  if ((v24 & v25) == 1)
                  {
                    [objc_opt_class() unlockSync];
                  }

                  else
                  {
                    LOBYTE(v15) = v25 && v15;
                  }

                  goto LABEL_59;
                }

                goto LABEL_58;
              }
            }

            goto LABEL_40;
          }

          if (a5)
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
          if (a5)
          {
            if (v17 == 101)
            {
              [(WebBookmarkCollection *)self _errorForMostRecentSQLiteErrorWithErrorCode:11];
            }

            else
            {
              [(WebBookmarkCollection *)self _errorForMostRecentSQLiteError];
            }
            *a5 = ;
          }

          WebBookmarks::BookmarkSQLStatement::finalize(v28);
        }
      }

      else if (a5)
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
        LOBYTE(v15) = 0;
        *a5 = v19;
LABEL_41:
        WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v28);
        goto LABEL_42;
      }

LABEL_40:
      LOBYTE(v15) = 0;
      goto LABEL_41;
    }
  }

  if (a5)
  {
    [(WebBookmarkCollection *)self _errorForMostRecentSQLiteError];
    *a5 = LOBYTE(v15) = 0;
  }

  else
  {
    LOBYTE(v15) = 0;
  }

LABEL_42:

  v20 = *MEMORY[0x277D85DE8];
  return v15;
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

- (BOOL)_verifyAllTablesExist:(int *)a3
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

    if (a3)
    {
      *a3 = v6;
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
    if (a3)
    {
      *a3 = sqlite3_errcode(self->_db);
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

+ (WebBookmarkCollection)collectionWithConfiguration:(id)a3
{
  v3 = a3;
  v4 = [[WebBookmarkCollection alloc] initWithConfiguration:v3];

  return v4;
}

+ (id)databasePathForConfiguration:(id)a3
{
  v4 = a3;
  v5 = [v4 databasePath];
  if (!v5)
  {
    v6 = [a1 safariDirectoryPath];
    v7 = [a1 _defaultDatabaseFileNameForConfiguration:v4];
    v8 = [v6 stringByAppendingPathComponent:v7];
    v5 = [v8 stringByResolvingSymlinksInPath];
  }

  return v5;
}

- (WebBookmarkCollection)initWithConfiguration:(id)a3 checkIntegrity:(BOOL)a4
{
  v6 = a3;
  v7 = bookmarksCollectionQueue();
  dispatch_assert_queue_not_V2(v7);

  v39.receiver = self;
  v39.super_class = WebBookmarkCollection;
  v8 = [(WebBookmarkCollection *)&v39 init];
  if (v8)
  {
    MEMORY[0x2743D62A0](v38, @"com.apple.WebBookmarks.WebBookmarkCollection");
    v9 = [v6 copy];
    configuration = v8->_configuration;
    v8->_configuration = v9;

    v11 = [(WBCollectionConfiguration *)v8->_configuration databasePath];
    v12 = [objc_opt_class() databasePathForConfiguration:v8->_configuration];
    if (v11)
    {
      v13 = 0;
      v14 = 0;
    }

    else
    {
      v16 = [objc_opt_class() safariDirectoryPath];
      v17 = [v16 stringByAppendingPathComponent:@"Bookmarks.plist"];
      v13 = [v17 stringByResolvingSymlinksInPath];

      v18 = [v16 stringByAppendingPathComponent:@"Bookmarks.plist.anchor.plist"];
      v14 = [v18 stringByResolvingSymlinksInPath];
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
    v30 = v13;
    v31 = v14;
    v33 = a4;
    v21 = v14;
    v22 = v13;
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

- (WebBookmarkCollection)initWithPath:(id)a3 migratingBookmarksPlist:(id)a4 syncAnchorPlist:(id)a5
{
  v6 = a3;
  v7 = [[WBCollectionConfiguration alloc] initWithCollectionType:0 databasePath:v6 readonly:0];
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
  v2 = [a1 readingListArchivesDirectoryPath];
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  [v3 enumeratorAtPath:v2];
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

        v9 = [v2 stringByAppendingPathComponent:{*(*(&v14 + 1) + 8 * v8), v14}];
        v10 = [v3 attributesOfItemAtPath:v9 error:0];
        v11 = [v10 fileSize];

        v5 += v11;
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
    v43 = [MEMORY[0x277CCAB68] string];
    v3 = [objc_opt_class() readingListArchivesDirectoryPath];
    v4 = [MEMORY[0x277CCAA00] defaultManager];
    v5 = [v3 stringByAppendingPathComponent:@"PendingBookmarkChanges.plist"];
    [v4 _web_removeFileOnlyAtPath:v5];

    v6 = [v4 contentsOfDirectoryAtPath:v3 error:0];
    v42 = [v6 mutableCopy];

    v37 = [(WebBookmarkCollection *)self readingListFolderBookmarkID];
    obj = 0;
    v7 = 0;
    v8 = 0;
    do
    {
      context = objc_autoreleasePoolPush();
      v9 = [(WebBookmarkCollection *)self _fastFetchBookmarksInBookmarkFolder:v37 options:0 offset:obj limit:100];

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
              v14 = [v13 UUID];
              v15 = [v3 stringByAppendingPathComponent:v14];

              v56[0] = 0;
              if ([v4 fileExistsAtPath:v15 isDirectory:v56] && (v56[0] & 1) != 0)
              {
                v16 = [v13 UUID];
                [v42 removeObject:v16];
              }

              else
              {
                v17 = [v13 identifier];
                if (v8)
                {
                  v18 = @",%d";
                }

                else
                {
                  v18 = @"%d";
                }

                [v43 appendFormat:v18, v17];
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
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"UPDATE bookmarks SET archive_status = ? WHERE parent = ? AND id IN (%@)", v43];
      db = self->_db;
      obja = v19;
      v21 = v19;
      WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v56, db, [obja UTF8String]);
      sqlite3_bind_int(*&v57[4], 1, 0);
      sqlite3_bind_int(*&v57[4], 2, v37);
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
          v26 = [v3 stringByAppendingPathComponent:v25];
          v44 = 0;
          v27 = [v4 removeItemAtPath:v26 error:&v44];
          v28 = v44;
          if ((v27 & 1) == 0)
          {
            v29 = WBS_LOG_CHANNEL_PREFIXDataMigration();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              v30 = [v28 wb_privacyPreservingDescription];
              *v56 = 138543618;
              *v57 = v25;
              *&v57[8] = 2114;
              *&v57[10] = v30;
              v31 = v30;
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
  v2 = self;
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"parent = %d AND deleted = 0 AND (archive_status = %zd OR archive_status = %zd)", -[WebBookmarkCollection readingListFolderBookmarkID](self, "readingListFolderBookmarkID"), 1, 2];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"UPDATE bookmarks SET archive_status = %zd WHERE %@", 4, v3];
  LOBYTE(v2) = [(WebBookmarkCollection *)v2 _executeSQL:v4]== 0;

  return v2;
}

- (BOOL)clearAllReadingListArchives
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = WBCurrentProcessContainerPath();

  if (v3)
  {
    v22 = [objc_opt_class() readingListArchivesDirectoryPath];
    v4 = [MEMORY[0x277CCAA00] defaultManager];
    v28 = 0;
    v5 = [v4 contentsOfDirectoryAtPath:v22 error:&v28];
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
            v13 = [v22 stringByAppendingPathComponent:v12];
            v23 = v11;
            v14 = [v4 removeItemAtPath:v13 error:&v23];
            v6 = v23;

            if ((v14 & 1) == 0)
            {
              v15 = WBS_LOG_CHANNEL_PREFIXBookmarks();
              if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
              {
                v16 = [v6 wb_privacyPreservingDescription];
                *buf = 138543618;
                v30 = v12;
                v31 = 2114;
                v32 = v16;
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
    v17 = [(WebBookmarkCollection *)self _safariFetcherServerProxy];
    [v17 clearAllReadingListArchives];

    v9 = 1;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v9 & 1;
}

- (BOOL)clearReadingListArchiveWithUUID:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = WBCurrentProcessContainerPath();

  if (v5)
  {
    if ([v4 length])
    {
      v6 = [objc_opt_class() readingListArchivesDirectoryPath];
      v7 = [v6 stringByAppendingPathComponent:v4];

      v8 = [MEMORY[0x277CCAA00] defaultManager];
      v16 = 0;
      if ([v8 fileExistsAtPath:v7 isDirectory:&v16] && (v16 & 1) != 0)
      {
        v15 = 0;
        v9 = [v8 removeItemAtPath:v7 error:&v15];
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
    v12 = [(WebBookmarkCollection *)self _safariFetcherServerProxy];
    [v12 clearReadingListArchiveWithUUID:v4];

    v9 = 1;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)updateReadingListWebFilterStatusForUnsetItemsOnly:(BOOL)a3
{
  v3 = a3;
  v28 = *MEMORY[0x277D85DE8];
  v5 = WBS_LOG_CHANNEL_PREFIXDataMigration();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_272C20000, v5, OS_LOG_TYPE_DEFAULT, "Migrating Reading List web filter status", buf, 2u);
  }

  v6 = +[WBWebFilterSettings sharedWebFilterSettings];
  v21 = [v6 userSettings];

  if (v3)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"web_filter_status = %zd", 0];
    v19 = [(WebBookmarkCollection *)self _readingListItemsWhere:v7 filteredBy:0 withInMemoryFilter:0];
  }

  else
  {
    if (([v21 contentFilterOverridesEnabled] & 1) == 0 && (objc_msgSend(v21, "whiteListEnabled") & 1) == 0)
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
        v13 = [v11 address];
        v14 = [v12 URLWithString:v13];
        v15 = [v21 contentFilterListsAllowURL:v14];

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
  v3 = [MEMORY[0x277CCA9A0] defaultCenter];
  [v3 postNotificationName:@"com.apple.WebBookmarks.DidVacuumDatabaseNotification" object:0];

  return v2 == 0;
}

- (NSArray)purgeableReadingListItems
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = [(WebBookmarkCollection *)self readingListFolderBookmarkID];
  v21 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"parent = %d AND deleted = 0 AND read = 1 AND (archive_status = %zd OR archive_status = %zd)", v3, 1, 2];
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
    v8 = [MEMORY[0x277CBEB18] array];
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
          v14 = [v13 dateLastViewed];
          v15 = [v14 compare:v7] == -1;

          if (v15)
          {
            [v8 addObject:v13];
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
    v8 = [MEMORY[0x277CBEA60] array];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v8;
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

- (unint64_t)purge:(unint64_t)a3
{
  v20 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v5 = [MEMORY[0x277CBEAA8] date];
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
        [v11 setDateLastArchived:v5];
        [(WebBookmarkCollection *)self saveBookmark:v11];
        v12 = [v11 archiveSize];
        [v11 clearArchiveSynchronously];
        v7 += v12;
        if (v7 >= a3)
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

- (BOOL)performDatabaseUpdatesWithTransaction:(id)a3 applyInMemoryChanges:(BOOL)a4 secureDelete:(BOOL)a5
{
  v6 = a4;
  v8 = a3;
  if (([objc_opt_class() isLockedSync] & 1) == 0)
  {
    [(WebBookmarkCollection *)self _simulateCrashWithDescription:@"Trying to edit bookmarks without first obtaining the bookmarks database file lock."];
  }

  if (v6 && ![(WebBookmarkCollection *)self applyInMemoryChangesToDatabase])
  {
    LOBYTE(v11) = 0;
  }

  else
  {
    v9 = [(WebBookmarkCollection *)self isTransactionCurrentlyActive];
    if (!v9)
    {
      operator new();
    }

    ptr = self->_currentTransaction.__ptr_;
    if (*(ptr + 17) == 1)
    {
      v11 = v8[2](v8);
      ptr = self->_currentTransaction.__ptr_;
    }

    else
    {
      v11 = 0;
    }

    WebBookmarks::BookmarkSQLWriteTransaction::requestSecureDelete(ptr, a5);
    if (!v9)
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

- (id)bookmarkWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(WebBookmarkCollection *)self _selectBookmarksWhere:@"external_uuid = ? AND deleted = 0"];
  sqlite3_bind_text(v5, 1, [v4 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  if (sqlite3_step(v5) == 100)
  {
    v6 = [WebBookmark alloc];
    v7 = [(WebBookmarkCollection *)self currentDeviceIdentifier];
    v8 = [(WebBookmark *)v6 initWithSQLiteStatement:v5 deviceIdentifier:v7 collectionType:[(WBCollectionConfiguration *)self->_configuration collectionType]];

    sqlite3_finalize(v5);
  }

  else
  {
    [(WebBookmarkCollection *)self _finalizeStatementIfNotNull:v5];
    v8 = 0;
  }

  return v8;
}

- (id)validBookmarkUUIDsFromUUIDs:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = objc_msgSend(MEMORY[0x277CCAB68], "stringWithFormat:", @"SELECT external_uuid FROM bookmarks WHERE deleted = 0 AND external_uuid IN (");
    for (i = 0; i < [v4 count]; ++i)
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
      v7 = 0;
    }

    else
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __53__WebBookmarkCollection_validBookmarkUUIDsFromUUIDs___block_invoke;
      v11[3] = &__block_descriptor_40_e25_v32__0__NSString_8Q16_B24l;
      v11[4] = ppStmt;
      [v4 enumerateObjectsUsingBlock:v11];
      v7 = [MEMORY[0x277CBEB18] array];
      while (sqlite3_step(ppStmt) == 100)
      {
        v9 = sqlite3_column_text(ppStmt, 0);
        if (v9)
        {
          v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v9];
          if (v10)
          {
            [v7 addObject:v10];
          }
        }
      }
    }
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  return v7;
}

void __53__WebBookmarkCollection_validBookmarkUUIDsFromUUIDs___block_invoke(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = v5;
  sqlite3_bind_text(v6, a3 + 1, [v7 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
}

- (id)bookmarkAtPath:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count])
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
        v18 = [v5 lastObject];
        v19 = v18;
        sqlite3_bind_text(v17, 2, [v18 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);

        if (sqlite3_step(ppStmt) == 100)
        {
          v20 = [WebBookmark alloc];
          v21 = ppStmt;
          v22 = [(WebBookmarkCollection *)self currentDeviceIdentifier];
          v6 = [(WebBookmark *)v20 initWithSQLiteStatement:v21 deviceIdentifier:v22 collectionType:[(WBCollectionConfiguration *)self->_configuration collectionType]];

          sqlite3_finalize(ppStmt);
          WebBookmarks::BookmarkSQLTransaction::commit(v30, v23, v24);
        }

        else
        {
          [(WebBookmarkCollection *)self _finalizeStatementIfNotNull:ppStmt];
LABEL_24:
          v6 = 0;
        }

        goto LABEL_7;
      }

      [(WebBookmarkCollection *)self _finalizeStatementIfNotNull:ppStmt];
    }

    v6 = 0;
LABEL_7:
    WebBookmarks::BookmarkSQLReadTransaction::~BookmarkSQLReadTransaction(v30);
    goto LABEL_9;
  }

  v6 = [(WebBookmarkCollection *)self rootBookmark];
LABEL_9:

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)descendantsOfBookmarkFolder:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = -[WebBookmarkCollection listWithID:](self, "listWithID:", [v4 identifier]);
  v7 = [v6 bookmarkArray];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v7;
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
          [v5 addObjectsFromArray:v13];
        }

        else
        {
          [v5 addObject:v12];
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v5;
}

- (BOOL)bookmarkContainsLeafBookmark:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 isFolder])
  {
    v5 = -[WebBookmarkCollection listWithID:](self, "listWithID:", [v4 identifier]);
    v6 = [v5 bookmarkArray];

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = v6;
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

- (unint64_t)leafChildCountForBookmarksInFolderWithID:(int)a3
{
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v6, self->_db, "SELECT COUNT(*) FROM bookmarks WHERE parent = ? AND type = 0 AND hidden = 0");
  sqlite3_bind_int(v7, 1, a3);
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

- (id)leafChildCountForFoldersInFolderWithID:(int)a3
{
  v5 = [MEMORY[0x277CBEB38] dictionary];
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v10, self->_db, "SELECT parent, count(*) FROM bookmarks WHERE (parent IN (SELECT folder_id FROM folder_ancestors WHERE ancestor_id = ?) AND hidden = 0 AND type = 0) GROUP BY parent");
  sqlite3_bind_int(v11, 1, a3);
  while (sqlite3_step(v11) == 100)
  {
    v6 = sqlite3_column_int(v11, 0);
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:{sqlite3_column_int(v11, 1)}];
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:v6];
    [v5 setObject:v7 forKeyedSubscript:v8];
  }

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v10);

  return v5;
}

- (unsigned)orderIndexOfBookmark:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT order_index FROM bookmarks WHERE id = %d", objc_msgSend(v4, "identifier")];
  v6 = [(WebBookmarkCollection *)self _intFromExecutingSQL:v5];

  if (v6 == -1)
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)getBookmarkType:(BOOL *)a3 andSubtype:(int64_t *)a4 forBookmarkWithID:(int)a5
{
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v10, self->_db, [@"SELECT type subtype FROM bookmarks WHERE id = ?"]);
  sqlite3_bind_int(v11, 1, a5);
  v8 = sqlite3_step(v11);
  if (v8 == 100)
  {
    if (a3)
    {
      *a3 = sqlite3_column_int(v11, 0) != 0;
    }

    if (a4)
    {
      *a4 = sqlite3_column_int(v11, 1);
    }
  }

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v10);
  return v8 == 100;
}

- (id)bookmarksWithSubtype:(int64_t)a3
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"subtype = %ld", a3];
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v11, [(WebBookmarkCollection *)self _selectBookmarksWhere:v4]);
  v5 = [MEMORY[0x277CBEB18] array];
  while (sqlite3_step(v12) == 100)
  {
    v6 = [WebBookmark alloc];
    v7 = v12;
    v8 = [(WebBookmarkCollection *)self currentDeviceIdentifier];
    v9 = [(WebBookmark *)v6 initWithSQLiteStatement:v7 deviceIdentifier:v8 collectionType:[(WBCollectionConfiguration *)self->_configuration collectionType]];

    [v5 addObject:v9];
  }

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v11);

  return v5;
}

- (unint64_t)modifiedAttributesOfBookmark:(id)a3
{
  v4 = a3;
  db = self->_db;
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT modified_attributes FROM bookmarks WHERE id = %d", objc_msgSend(v4, "identifier")];
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

- (int)identifierOfBookmarkWithUUID:(id)a3
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT id FROM bookmarks WHERE external_uuid = '%@'", a3];
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

- (int)bookmarkIdentifierOfAncestorWithSubtype:(int64_t)a3 forBookmark:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x277CBEB98];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v9 = [v7 setWithObject:v8];
  LODWORD(self) = [(WebBookmarkCollection *)self bookmarkIdentifierOfAncestorWithAnySubtypeInSubtypes:v9 forBookmark:v6];

  return self;
}

- (int)bookmarkIdentifierOfAncestorWithAnySubtypeInSubtypes:(id)a3 forBookmark:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v8 identifier];
  while (v9 && v9 != 0x7FFFFFFF)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:{-[WebBookmarkCollection subtypeOfBookmarkWithID:](self, "subtypeOfBookmarkWithID:", v9)}];
    v12 = [v7 containsObject:v11];

    if (v12)
    {
      v13 = 1;
      v4 = v9;
    }

    else if ([v8 isDeleted])
    {
      v14 = [(WebBookmarkCollection *)self syncDataForBookmark:v8];
      v15 = [v14 parentRecordID];
      v16 = [v15 recordName];
      v17 = [(WebBookmarkCollection *)self bookmarkWithServerID:v16 excludeDeletedBookmarks:0];

      v9 = [v17 identifier];
      v13 = 2;
      v8 = v17;
    }

    else
    {
      v9 = [(WebBookmarkCollection *)self parentIdentifierOfBookmarkWithID:v9];
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

- (int)bookmarkIdentifierOfFolderAncestorWithSubtype:(int64_t)a3 forBookmark:(id)a4
{
  v7 = a4;
  v8 = [v7 identifier];
  while (v8 && v8 != 0x7FFFFFFF)
  {
    v9 = objc_autoreleasePoolPush();
    v17 = 0;
    v16 = 0;
    if ([(WebBookmarkCollection *)self getBookmarkType:&v17 andSubtype:&v16 forBookmarkWithID:v8])
    {
      if (v17 == 1 && v16 == a3)
      {
        v10 = 1;
        v4 = v8;
      }

      else if ([v7 isDeleted])
      {
        v11 = [(WebBookmarkCollection *)self syncDataForBookmark:v7];
        v12 = [v11 parentRecordID];
        v13 = [v12 recordName];
        v14 = [(WebBookmarkCollection *)self bookmarkWithServerID:v13 excludeDeletedBookmarks:0];

        v8 = [v14 identifier];
        v10 = 2;
        v7 = v14;
      }

      else
      {
        v8 = [(WebBookmarkCollection *)self parentIdentifierOfBookmarkWithID:v8];
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
  v4 = [v3 usesAllowedSitesOnly];

  if (v4)
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

- (id)readingListWithUnreadOnly:(BOOL)a3 filteredUsingString:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CCAB68] stringWithFormat:@"web_filter_status != %zd", 2];
  v8 = v7;
  if (v4)
  {
    [v7 insertString:@"read = 0 AND " atIndex:0];
    v9 = objc_alloc_init(WebBookmarkInMemoryChangeFilterUnreadOnly);
  }

  else
  {
    v9 = 0;
  }

  v10 = [(WebBookmarkCollection *)self _readingListItemsWhere:v8 filteredBy:v6 withInMemoryFilter:v9];

  return v10;
}

- (id)_readingListItemsWhere:(id)a3 filteredBy:(id)a4 withInMemoryFilter:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [(WebBookmarkCollection *)self logRegulatoryBookmarksRead];
  v11 = [MEMORY[0x277CCAB68] string];
  v12 = [(WebBookmarkCollection *)self readingListFolderBookmarkID];
  [v11 appendFormat:@"parent = %d AND deleted = 0", -[WebBookmarkCollection readingListFolderBookmarkID](self, "readingListFolderBookmarkID")];
  if (v8)
  {
    [v11 appendFormat:@" AND %@", v8];
  }

  v13 = [[WebBookmarkListQuery alloc] initWithBookmarksWhere:v11 folderID:v12 orderBy:@"order_index DESC" usingFilter:v9];
  [(WebBookmarkListQuery *)v13 setInMemoryFilter:v10];
  v14 = [[WebBookmarkList alloc] initWithQuery:v13 skipOffset:0 collection:self];

  return v14;
}

- (id)_parentIdentifiersOfBookmarksNeedingIcons
{
  v3 = [(WebBookmarkCollection *)self favoritesFolder];
  v4 = [v3 identifier];

  v5 = +[WBWebFilterSettings sharedWebFilterSettings];
  v6 = [v5 usesAllowedSitesOnly];

  if (v6)
  {
    v4 = [(WebBookmarkCollection *)self webFilterAllowedSitesFolderBookmarkID];
  }

  v7 = MEMORY[0x277CBEB18];
  v8 = [MEMORY[0x277CCABB0] numberWithInt:v4];
  v9 = [v7 arrayWithObject:v8];

  v10 = [(WebBookmarkCollection *)self frequentlyVisitedSitesFolderBookmarkID];
  if (v10)
  {
    [v9 addObject:v10];
  }

  return v9;
}

- (BOOL)shouldFetchIconForBookmark:(id)a3
{
  v4 = a3;
  v5 = [v4 address];
  if ([v5 _webBookmarks_hasCaseInsensitivePrefix:@"http"] & 1) != 0 || (objc_msgSend(v5, "_webBookmarks_hasCaseInsensitivePrefix:", @"https"))
  {
    v6 = [(WebBookmarkCollection *)self _parentIdentifiersOfBookmarksNeedingIcons];
    v7 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v4, "parentID")}];
    v8 = [v6 containsObject:v7];
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
  v4 = [(WebBookmarkCollection *)self _parentIdentifiersOfBookmarksNeedingIcons];
  v5 = [v4 componentsJoinedByString:{@", "}];
  v6 = [v3 stringWithFormat:@"fetched_icon = 0 AND (url LIKE 'http:%%' OR url LIKE 'https:%%') AND parent IN (%@)", v5];

  v7 = [[WebBookmarkListQuery alloc] initWithBookmarksWhere:v6 orderBy:0 usingFilter:0];
  v8 = [[WebBookmarkList alloc] initWithQuery:v7 skipOffset:0 collection:self];

  return v8;
}

- (BOOL)markAllFavoritesAsNeedingIcons
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(WebBookmarkCollection *)self _parentIdentifiersOfBookmarksNeedingIcons];
  v5 = [v4 componentsJoinedByString:{@", "}];
  v6 = [v3 stringWithFormat:@"UPDATE bookmarks SET fetched_icon = 0 WHERE parent IN (%@)", v5];

  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v8, self->_db, [v6 UTF8String]);
  LOBYTE(v4) = sqlite3_step(v9) == 101;
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v8);

  return v4;
}

- (BOOL)deleteAllFavoriteIcons
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(WebBookmarkCollection *)self _parentIdentifiersOfBookmarksNeedingIcons];
  v5 = [v4 componentsJoinedByString:{@", "}];
  v6 = [v3 stringWithFormat:@"UPDATE bookmarks SET icon = NULL, fetched_icon = 0 WHERE parent IN (%@)", v5];

  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v8, self->_db, [v6 UTF8String]);
  LOBYTE(v4) = sqlite3_step(v9) == 101;
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v8);

  return v4;
}

- (int)webFilterAllowedSitesFolderBookmarkID
{
  v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SELECT id FROM bookmarks WHERE special_id = %d", 4];
  LODWORD(self) = WebBookmarks::BookmarkSQLStatement::selectInt(self->_db, v3, v4);

  return self;
}

- (BOOL)saveBookmark:(id)a3
{
  v4 = a3;
  LOBYTE(self) = [(WebBookmarkCollection *)self saveBookmark:v4 startReadingListFetcher:[(WBCollectionConfiguration *)self->_configuration collectionType]== 0];

  return self;
}

- (BOOL)saveBookmarks:(id)a3 postNotification:(BOOL)a4
{
  v4 = a4;
  v41 = *MEMORY[0x277D85DE8];
  v6 = a3;
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
      v26 = v6;
      v28 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v7 = v6;
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

      if (v4)
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

      v6 = v26;
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

- (BOOL)_saveBookmark:(id)a3 startReadingListFetcher:(BOOL)a4 forApplyingInMemoryChanges:(BOOL)a5
{
  v6 = a4;
  v24 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __90__WebBookmarkCollection__saveBookmark_startReadingListFetcher_forApplyingInMemoryChanges___block_invoke;
  v19 = &unk_279E75968;
  v20 = self;
  v9 = v8;
  v21 = v9;
  v10 = [(WebBookmarkCollection *)self performDatabaseUpdatesWithTransaction:&v16 applyInMemoryChanges:0 secureDelete:0];
  if (v10)
  {
    if ([v9 needsSyncUpdate])
    {
      [(WebBookmarkCollection *)self _postBookmarksChangedSyncNotification];
      [v9 setNeedsSyncUpdate:0];
    }

    if (!a5)
    {
      -[WebBookmarkCollection _postBookmarksFolderContentsDidChangeNotification:](self, "_postBookmarksFolderContentsDidChangeNotification:", [v9 parentID]);
      if ([v9 specialID])
      {
        [(WebBookmarkCollection *)self _postBookmarksSpecialFoldersDidChangeNotification];
      }
    }

    if (([v9 isReadingListItem] & v6) == 1)
    {
      v11 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = [v9 UUID];
        *buf = 138543362;
        v23 = v12;
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

- (void)_deleteIconForBookmark:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [a3 readingListIconUUID];
  if (v3)
  {
    v4 = [MEMORY[0x277CCAA00] defaultManager];
    v5 = [objc_opt_class() bookmarkImagesDirectoryPath];
    if ([v4 fileExistsAtPath:v5 isDirectory:0])
    {
      v6 = [v5 stringByAppendingPathComponent:v3];
      v13 = 0;
      v7 = [v4 removeItemAtPath:v6 error:&v13];
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

- (BOOL)_deleteBookmark:(id)a3 postChangeNotification:(BOOL)a4 forApplyingInMemoryChanges:(BOOL)a5
{
  v6 = a4;
  v8 = a3;
  WebBookmarks::BookmarkSQLWriteTransaction::BookmarkSQLWriteTransaction(v13, self->_db);
  if ((v13[17] & 1) != 0 && -[WebBookmarkCollection deleteBookmark:leaveTombstone:](self, "deleteBookmark:leaveTombstone:", v8, [v8 specialID] != 5))
  {
    WebBookmarks::BookmarkSQLTransaction::commit(v13, v9, v10);
    if (v6)
    {
      [(WebBookmarkCollection *)self _postBookmarksChangedSyncNotification];
    }

    if (!a5)
    {
      -[WebBookmarkCollection _postBookmarksFolderContentsDidChangeNotification:](self, "_postBookmarksFolderContentsDidChangeNotification:", [v8 parentID]);
    }

    if ([v8 isReadingListItem])
    {
      [v8 clearArchive];
      [(WebBookmarkCollection *)self _deleteIconForBookmark:v8];
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

- (BOOL)_moveBookmark:(id)a3 fromIndex:(unsigned int)a4 toIndex:(unsigned int)a5
{
  *&v35[7] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 67109632;
    *v31 = [v8 identifier];
    *&v31[4] = 1024;
    *&v31[6] = [v8 parentID];
    *v32 = 1024;
    *&v32[2] = a5;
    _os_log_impl(&dword_272C20000, v9, OS_LOG_TYPE_INFO, "Moving bookmark with ID %d and parent ID %d to index %d", buf, 0x14u);
  }

  if (a5 >= a4)
  {
    v10 = "UPDATE bookmarks SET order_index = order_index - 1 WHERE order_index > ? AND order_index <= ? AND parent = ?";
  }

  else
  {
    v10 = "UPDATE bookmarks SET order_index = order_index + 1 WHERE order_index < ? AND order_index >= ? AND parent = ?";
  }

  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v28, self->_db, v10);
  sqlite3_bind_int(v29, 1, a4);
  sqlite3_bind_int(v29, 2, a5);
  sqlite3_bind_int(v29, 3, [v8 parentID]);
  if (sqlite3_step(v29) == 101)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"UPDATE bookmarks SET order_index = ?1, dav_generation = ?2%@ WHERE id = ?3", @", modified_attributes = modified_attributes | ?4"];
    db = self->_db;
    v13 = v11;
    WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v26, db, [v11 UTF8String]);
    sqlite3_bind_int(v27, 1, a5);
    sqlite3_bind_int(v27, 2, [(WebBookmarkCollection *)self currentRecordGeneration]);
    sqlite3_bind_int(v27, 3, [v8 identifier]);
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
        v23 = [v8 privacyPreservingDescription];
        v24 = [(WebBookmarkCollection *)self currentRecordGeneration];
        v25 = [(WebBookmarkCollection *)self _errorForMostRecentSQLiteError];
        *buf = 138544130;
        *v31 = v23;
        *&v31[8] = 1024;
        *v32 = a5;
        *&v32[4] = 1024;
        v33 = v24;
        v34 = 2112;
        *v35 = v25;
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
      v20 = [v8 privacyPreservingDescription];
      v21 = [v8 parentID];
      v22 = [(WebBookmarkCollection *)self _errorForMostRecentSQLiteError];
      *buf = 138544386;
      *v31 = v20;
      *&v31[8] = 1024;
      *v32 = v21;
      *&v32[4] = 1024;
      v33 = a4;
      v34 = 1024;
      *v35 = a5;
      v35[2] = 2112;
      *&v35[3] = v22;
      _os_log_error_impl(&dword_272C20000, v11, OS_LOG_TYPE_ERROR, "Failed to update siblings for bookmark %{public}@ where parentID = (%d), fromIndex = (%d), and toIndex = (%d) with error = %@", buf, 0x28u);
    }

    v15 = 0;
  }

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v28);
  v18 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)_reorderBookmark:(id)a3 afterBookmark:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [v6 privacyPreservingDescription];
    v10 = [v7 privacyPreservingDescription];
    v18 = 138543618;
    v19 = v9;
    v20 = 2114;
    v21 = v10;
    _os_log_impl(&dword_272C20000, v8, OS_LOG_TYPE_INFO, "Reordering bookmark %{public}@ after bookmark %{public}@", &v18, 0x16u);
  }

  v11 = [(WebBookmarkCollection *)self orderIndexOfBookmark:v6];
  v12 = [(WebBookmarkCollection *)self orderIndexOfBookmark:v7];
  if (v12 >= v11)
  {
    v13 = v12;
  }

  else
  {
    v13 = v12 + 1;
  }

  if (v7)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = [(WebBookmarkCollection *)self _reorderBookmark:v6 toIndex:v14];

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)saveArchivesForReadingListBookmarks:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v7++) setShouldArchive:{1, v9}];
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(WebBookmarkCollection *)self saveBookmarks:v4 postNotification:1];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)saveIconWithData:(id)a3 urlString:(id)a4 forBookmark:(id)a5
{
  v26[6] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v10)
  {
    v12 = [v10 readingListIconUUID];
    if (v12)
    {
      [(WebBookmarkCollection *)self _deleteIconForBookmark:v11];
    }

    else
    {
      v13 = [MEMORY[0x277CCAD78] UUID];
      v14 = [v13 UUIDString];

      [v11 setReadingListIconUUID:v14];
      v12 = v14;
    }

    v15 = [objc_opt_class() bookmarkImagesDirectoryPath];
    v16 = [v15 stringByAppendingPathComponent:v12];
    v17 = [MEMORY[0x277CCAA00] defaultManager];
    if (([v17 fileExistsAtPath:v15 isDirectory:0] & 1) == 0)
    {
      v26[0] = 0;
      v18 = [v17 createDirectoryAtPath:v15 withIntermediateDirectories:1 attributes:0 error:v26];
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

    [v11 setReadingListIconURL:v9];
    [v11 setFetchedIconData:1];
    v25 = 0;
    v21 = [v8 writeToFile:v16 options:1 error:&v25];
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

- (sqlite3_stmt)_prefixSearch:(id)a3 usingColumns:(const char *)a4 maxCount:(unsigned int)a5
{
  v8 = a3;
  [(WebBookmarkCollection *)self logRegulatoryBookmarksRead];
  if (!a4)
  {
    a4 = "DISTINCT url";
  }

  ppStmt = 0;
  if ([v8 length])
  {
    v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SELECT %s FROM bookmarks WHERE type = 0 AND url >= ? AND url < ? AND deleted = 0 LIMIT ?", a4];
    if (!sqlite3_prepare_v2(self->_db, [v9 UTF8String], -1, &ppStmt, 0))
    {
      v15 = [v8 characterAtIndex:{objc_msgSend(v8, "length") - 1}] + 1;
      v10 = [MEMORY[0x277CCAB68] stringWithString:v8];
      v11 = [v10 length];
      v12 = [MEMORY[0x277CCACA8] stringWithCharacters:&v15 length:1];
      [v10 replaceCharactersInRange:v11 - 1 withString:{1, v12}];

      sqlite3_bind_text(ppStmt, 1, [v8 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
      sqlite3_bind_text(ppStmt, 2, [v10 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
      sqlite3_bind_int(ppStmt, 3, a5);

LABEL_9:
      v13 = ppStmt;
      goto LABEL_10;
    }
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SELECT %s FROM bookmarks WHERE type = 0 AND deleted = 0 LIMIT ?", a4];
    if (!sqlite3_prepare_v2(self->_db, [v9 UTF8String], -1, &ppStmt, 0))
    {
      sqlite3_bind_int(ppStmt, 1, a5);
      goto LABEL_9;
    }
  }

  v13 = 0;
LABEL_10:

  return v13;
}

- (id)bookmarksMatchingString:(id)a3
{
  v4 = a3;
  [(WebBookmarkCollection *)self logRegulatoryBookmarksRead];
  v5 = [MEMORY[0x277CBEB18] array];
  ppStmt = 0;
  if (sqlite3_prepare_v2(self->_db, "SELECT id, title, url FROM bookmarks WHERE type = 0 AND deleted = 0", -1, &ppStmt, 0))
  {
    [(WebBookmarkCollection *)self _finalizeStatementIfNotNull:ppStmt];

    v5 = MEMORY[0x277CBEBF8];
    goto LABEL_12;
  }

  while (sqlite3_step(ppStmt) == 100)
  {
    v6 = sqlite3_column_text(ppStmt, 1);
    if (v6)
    {
      v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v6];
      [v7 rangeOfString:v4 options:385];
      if (!v8)
      {

        goto LABEL_7;
      }

LABEL_9:
      v11 = [(WebBookmarkCollection *)self bookmarkWithID:sqlite3_column_int(ppStmt, 0)];
      [v5 addObject:v11];

LABEL_10:
    }

    else
    {
LABEL_7:
      v9 = sqlite3_column_text(ppStmt, 2);
      if (v9)
      {
        v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v9];
        [v7 rangeOfString:v4 options:385];
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

  return v5;
}

- (void)_enumerateBookmarksForMatchStatement:(id)a3 normalizedQuery:(id)a4 usingBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [(WebBookmarkCollection *)self logRegulatoryBookmarksRead];
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v14, self->_db, [v8 UTF8String]);
  sqlite3_bind_text(v15, 1, [v9 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
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
      v10[2](v10, v11, v13, v14);
    }
  }

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v14);
}

- (void)_enumerateBookmarksMatchingString:(id)a3 statementSuffix:(id)a4 usingBlock:(id)a5
{
  v55 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v34 = a4;
  v30 = a5;
  v31 = v8;
  v28 = [v8 mutableCopy];
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
  v33 = [v15 stringWithFormat:@"SELECT %@ FROM bookmarks INNER JOIN bookmark_title_words ON bookmarks.id = bookmark_title_words.bookmark_id WHERE bookmark_title_words.word LIKE ? AND type = 0 AND deleted = 0 AND web_filter_status != %zd AND title IS NOT NULL AND url IS NOT NULL AND url !=  %@", v16, 2, v34];

  [(WebBookmarkCollection *)self _executeSQLWithCString:"PRAGMA case_sensitive_like = true"];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __86__WebBookmarkCollection__enumerateBookmarksMatchingString_statementSuffix_usingBlock___block_invoke;
  v43[3] = &unk_279E760E8;
  v17 = v30;
  v43[4] = self;
  v44 = v17;
  [(WebBookmarkCollection *)self _enumerateBookmarksForMatchStatement:v33 normalizedQuery:v32 usingBlock:v43];
  v18 = MEMORY[0x277CCACA8];
  v19 = BookmarkSQLiteColumns();
  v36 = [v18 stringWithFormat:@"SELECT %@ FROM bookmarks WHERE url LIKE ? AND type = 0 AND deleted = 0 AND web_filter_status != %zd AND title IS NOT NULL AND url IS NOT NULL %@", v19, 2, v34];

  [(WebBookmarkCollection *)self _executeSQLWithCString:"PRAGMA case_sensitive_like = false"];
  [v8 _web_possibleURLPrefixesForUserTypedString];
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

        v24 = [*(*(&v39 + 1) + 8 * i) absoluteString];
        MutableCopy = CFStringCreateMutableCopy(v22, [(__CFString *)v24 length], v24);
        [(WebBookmarkCollection *)self _normalizeSearchString:MutableCopy];
        CFStringAppend(MutableCopy, @"%");
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = __86__WebBookmarkCollection__enumerateBookmarksMatchingString_statementSuffix_usingBlock___block_invoke_3;
        v37[3] = &unk_279E760E8;
        v26 = v17;
        v37[4] = self;
        v38 = v26;
        [(WebBookmarkCollection *)self _enumerateBookmarksForMatchStatement:v36 normalizedQuery:MutableCopy usingBlock:v37];
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

- (void)enumerateBookmarks:(BOOL)a3 andReadingListItems:(BOOL)a4 matchingString:(id)a5 usingBlock:(id)a6
{
  v7 = a4;
  v14 = a5;
  v10 = a6;
  [(WebBookmarkCollection *)self logRegulatoryBookmarksRead];
  if (a3 || v7)
  {
    if (a3)
    {
      v11 = @"AND hidden = 0 AND hidden_ancestor_count = 0";
      if (v7)
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
    [(WebBookmarkCollection *)self _enumerateBookmarksMatchingString:v14 statementSuffix:v12 usingBlock:v10];
  }
}

- (id)_bookmarksFromStatementSelectingIDs:(const char *)a3 withQuery:(id)a4
{
  v6 = a4;
  [(WebBookmarkCollection *)self logRegulatoryBookmarksRead];
  v7 = [(__CFString *)v6 length];
  MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x277CBECE8], v7, v6);
  [(WebBookmarkCollection *)self _normalizeSearchString:MutableCopy];
  CFStringAppend(MutableCopy, @"%");
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v17, self->_db, a3);
  sqlite3_bind_text(v18, 1, [(__CFString *)MutableCopy UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  v9 = [MEMORY[0x277CBEB18] array];
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
        [v9 addObject:v15];
      }
    }
  }

  CFRelease(MutableCopy);
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v17);

  return v9;
}

- (void)_addBookmarksForReadingListMatchStatement:(id)a3 normalizedQuery:(id)a4 toArray:(id)a5 maxResults:(int)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v17, self->_db, [v10 UTF8String]);
  sqlite3_bind_text(v18, 1, [v11 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  sqlite3_bind_int(v18, 2, [(WebBookmarkCollection *)self readingListFolderBookmarkID]);
  sqlite3_bind_int(v18, 3, 2);
  sqlite3_bind_int(v18, 4, a6);
  while (sqlite3_step(v18) == 100)
  {
    v13 = [WebBookmark alloc];
    v14 = v18;
    v15 = [(WebBookmarkCollection *)self currentDeviceIdentifier];
    v16 = [(WebBookmark *)v13 initWithSQLiteStatement:v14 deviceIdentifier:v15 collectionType:[(WBCollectionConfiguration *)self->_configuration collectionType]];

    [v12 addObject:v16];
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

- (id)_tableExpressionForArchiveMode:(int64_t)a3
{
  if (a3 > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = dword_272CCD304[a3];
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT id FROM bookmarks WHERE parent = %d AND deleted = 0 AND web_filter_status = %zd ORDER BY order_index DESC LIMIT %d", -[WebBookmarkCollection readingListFolderBookmarkID](self, "readingListFolderBookmarkID"), 1, v3];
}

- (id)_orderedWhereClauseForArchiveMode:(int64_t)a3 automaticArchivingEnabled:(BOOL)a4
{
  v4 = a4;
  v6 = MEMORY[0x277CCAB68];
  v7 = [(WebBookmarkCollection *)self _tableExpressionForArchiveMode:?];
  v8 = [v6 stringWithFormat:@"id IN (%@) AND ", v7];

  if (v4)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"archive_status IN (%zd, %zd, %zd)", 0, 6, 3];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"archive_status IN (%zd, %zd)", 6, 3];
  }
  v9 = ;
  v10 = v9;
  if (a3 < 3)
  {
    [v8 appendFormat:off_279E764B0[a3], v9];
  }

  v11 = [v8 stringByAppendingString:{@" ORDER BY archive_status ASC, read ASC, locally_added DESC, order_index DESC"}];

  return v11;
}

- (id)_orderedWhereClauseForArchiveMode:(int64_t)a3
{
  v4 = MEMORY[0x277CCAB68];
  v5 = [(WebBookmarkCollection *)self _tableExpressionForArchiveMode:?];
  v6 = [v4 stringWithFormat:@"id IN (%@) AND ", v5];

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"archive_status IN (%zd, %zd)", 0, 3];
  v8 = v7;
  if (a3 < 3)
  {
    [v6 appendFormat:off_279E764B0[a3], v7];
  }

  v9 = [v6 stringByAppendingString:{@" ORDER BY archive_status ASC, read ASC, locally_added DESC, order_index DESC"}];

  return v9;
}

- (unint64_t)countReadingListBookmarksNeedingArchiveInMode:(int64_t)a3
{
  v4 = [(WebBookmarkCollection *)self _orderedWhereClauseForArchiveMode:a3];
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

- (id)firstReadingListBookmarkNeedingArchiveInMode:(int64_t)a3
{
  v4 = [(WebBookmarkCollection *)self _orderedWhereClauseForArchiveMode:a3];
  v5 = [v4 stringByAppendingString:@" LIMIT 1"];
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v11, [(WebBookmarkCollection *)self _selectBookmarksWhere:v5]);
  if (sqlite3_step(v12) == 100)
  {
    v6 = [WebBookmark alloc];
    v7 = v12;
    v8 = [(WebBookmarkCollection *)self currentDeviceIdentifier];
    v9 = [(WebBookmark *)v6 initWithSQLiteStatement:v7 deviceIdentifier:v8 collectionType:[(WBCollectionConfiguration *)self->_configuration collectionType]];
  }

  else
  {
    v9 = 0;
  }

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v11);

  return v9;
}

- (id)readingListBookmarksNeedingArchiveInMode:(int64_t)a3
{
  [(WebBookmarkCollection *)self logRegulatoryBookmarksRead];
  v5 = [(WebBookmarkCollection *)self _orderedWhereClauseForArchiveMode:a3];
  v6 = [[WebBookmarkListQuery alloc] initWithBookmarksWhere:v5 orderBy:0 usingFilter:0];
  v7 = [[WebBookmarkList alloc] initWithQuery:v6 skipOffset:0 collection:self];

  return v7;
}

- (void)_cullReadingListBookmarksList:(id)a3 toSize:(unint64_t)a4
{
  v10 = a3;
  if ([v10 bookmarkCount] > a4)
  {
    v6 = [objc_opt_class() isLockedSync];
    if ((v6 & 1) != 0 || [objc_opt_class() lockSync])
    {
      v7 = [v10 bookmarkArray];
      v8 = [v7 count];
      if (v8 > a4)
      {
        do
        {
          v9 = [v7 objectAtIndex:a4];
          if ([v9 isFullArchiveAvailable])
          {
            [v9 clearArchive];
          }

          [v9 setArchiveStatus:5];
          [(WebBookmarkCollection *)self saveBookmark:v9];

          ++a4;
        }

        while (v8 != a4);
      }

      if ((v6 & 1) == 0)
      {
        [objc_opt_class() unlockSync];
      }
    }
  }
}

- (BOOL)rollOutLastReadingListItem
{
  v3 = [(WebBookmarkCollection *)self rollingListOfArchivedReadingListItems];
  v4 = [v3 bookmarkCount];
  v5 = v4;
  if (v4)
  {
    if (v4 - 1 >= 0xF9)
    {
      v6 = 249;
    }

    else
    {
      v6 = v4 - 1;
    }

    [(WebBookmarkCollection *)self _cullReadingListBookmarksList:v3 toSize:v6];
  }

  return v5 != 0;
}

- (void)rollOutReadingListItemIfNeededToMakeRoomForOneNewItem
{
  v3 = [(WebBookmarkCollection *)self rollingListOfArchivedReadingListItems];
  [WebBookmarkCollection _cullReadingListBookmarksList:"_cullReadingListBookmarksList:toSize:" toSize:?];
}

- (WebBookmarkList)rollingListOfArchivedReadingListItems
{
  [(WebBookmarkCollection *)self logRegulatoryBookmarksRead];
  v3 = [(WebBookmarkCollection *)self readingListFolderBookmarkID];
  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"parent = %d AND deleted = 0 AND (archive_status = %zd OR archive_status = %zd)", v3, 1, 2];
  v5 = [[WebBookmarkListQuery alloc] initWithBookmarksWhere:v4 orderBy:@"read ASC usingFilter:order_index DESC", 0];
  v6 = [[WebBookmarkList alloc] initWithQuery:v5 skipOffset:0 collection:self];
  v7 = [(WebBookmarkList *)v6 bookmarkCount];
  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  if (v7)
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
      v5 = [(WebBookmarkCollection *)self currentDeviceIdentifier];
      v6 = [(WebBookmark *)v3 initWithSQLiteStatement:v4 deviceIdentifier:v5 collectionType:[(WBCollectionConfiguration *)self->_configuration collectionType]];

      v7 = [(WebBookmark *)v6 localAttributes];
      v8 = [v7 objectForKey:@"com.apple.bookmarks.IsCarrierBookmark"];
      v9 = [v8 BOOLValue];

      if (v9)
      {
        [(WebBookmarkCollection *)self deleteBookmark:v6 postChangeNotification:0];
      }
    }

    WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v10);
  }
}

- (unsigned)_orderIndexForBookmarkInsertedIntoParent:(int)a3 insertAtBeginning:(BOOL)a4
{
  v4 = a4;
  [(WebBookmarkCollection *)self logRegulatoryBookmarksRead];
  if (v4)
  {
    if (a3)
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
    sqlite3_bind_int(v12, 1, a3);
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

- (id)bookmarkWithSpecialID:(int)a3
{
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v10, [(WebBookmarkCollection *)self _selectBookmarksWhere:@"special_id = ? AND deleted = 0"]);
  if ((v12 & 1) != 0 && (sqlite3_bind_int(v11, 1, a3), sqlite3_step(v11) == 100))
  {
    v5 = [WebBookmark alloc];
    v6 = v11;
    v7 = [(WebBookmarkCollection *)self currentDeviceIdentifier];
    v8 = [(WebBookmark *)v5 initWithSQLiteStatement:v6 deviceIdentifier:v7 collectionType:[(WBCollectionConfiguration *)self->_configuration collectionType]];
  }

  else
  {
    v8 = 0;
  }

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v10);

  return v8;
}

- (id)_firstBookmarkWithURLMatchingString:(id)a3 prefixMatch:(BOOL)a4 inParent:(int)a5
{
  v6 = a4;
  v8 = a3;
  if (v6)
  {
    [(WebBookmarkCollection *)self _executeSQLWithCString:"PRAGMA case_sensitive_like = false"];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%%", v8];

    v10 = [(WebBookmarkCollection *)self _selectBookmarksWhere:@"url LIKE ? AND deleted = 0 AND parent = ? LIMIT 1"];
  }

  else
  {
    v10 = [(WebBookmarkCollection *)self _selectBookmarksWhere:@"url = ? AND deleted = 0 AND parent = ? ORDER BY last_modified ASC LIMIT 1"];
    v9 = v8;
  }

  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v16, v10);
  sqlite3_bind_text(v17, 1, [v9 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  sqlite3_bind_int(v17, 2, a5);
  if (sqlite3_step(v17) == 100)
  {
    v11 = [WebBookmark alloc];
    v12 = v17;
    v13 = [(WebBookmarkCollection *)self currentDeviceIdentifier];
    v14 = [(WebBookmark *)v11 initWithSQLiteStatement:v12 deviceIdentifier:v13 collectionType:[(WBCollectionConfiguration *)self->_configuration collectionType]];
  }

  else
  {
    v14 = 0;
  }

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v16);

  return v14;
}

- (id)_mergeCandidateFolderWithTitle:(id)a3 parent:(int)a4 mergeMode:(int64_t)a5
{
  v8 = a3;
  if (a5)
  {
    v9 = &stru_288259858;
    if (a5 == 1)
    {
      v9 = @"AND server_id IS NULL";
    }

    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"type = 1 AND title = ? AND parent = ? AND deleted = 0 %@", v9];
    WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v16, [(WebBookmarkCollection *)self _selectBookmarksWhere:v10]);
    if (v18)
    {
      sqlite3_bind_text(v17, 1, [v8 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
      sqlite3_bind_int(v17, 2, a4);
      while (sqlite3_step(v17) == 100)
      {
        v11 = [WebBookmark alloc];
        v12 = v17;
        v13 = [(WebBookmarkCollection *)self currentDeviceIdentifier];
        v14 = [(WebBookmark *)v11 initWithSQLiteStatement:v12 deviceIdentifier:v13 collectionType:[(WBCollectionConfiguration *)self->_configuration collectionType]];

        if (a5 == 1 || ![(WebBookmarkCollection *)self _bookmarkHasSyncedToServer:v14])
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

- (id)_mergeCandidateBookmarkWithTitle:(id)a3 address:(id)a4 parent:(int)a5 mergeMode:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  if (a6 == 1)
  {
    v12 = @"type = 0 AND url = ?1 AND parent = ?2 AND deleted = 0 AND server_id IS NULL";
  }

  else
  {
    if (a6 != 2)
    {
      v13 = 0;
      goto LABEL_17;
    }

    v12 = @"type = 0 AND title = ?3 AND url = ?1 AND parent = ?2 AND deleted = 0";
  }

  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v18, [(WebBookmarkCollection *)self _selectBookmarksWhere:v12]);
  if (v20)
  {
    sqlite3_bind_text(v19, 1, [v11 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
    sqlite3_bind_int(v19, 2, a5);
    if (a6 == 2)
    {
      if (v10)
      {
        sqlite3_bind_text(v19, 3, [v10 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
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
      v16 = [(WebBookmarkCollection *)self currentDeviceIdentifier];
      v13 = [(WebBookmark *)v14 initWithSQLiteStatement:v15 deviceIdentifier:v16 collectionType:[(WBCollectionConfiguration *)self->_configuration collectionType]];

      if (a6 == 1 || ![(WebBookmarkCollection *)self _bookmarkHasSyncedToServer:v13])
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
    v4 = [objc_opt_class() _uniqueExternalUUID];
    v5 = [v3 stringWithFormat:@"INSERT INTO bookmarks (id, special_id, parent, type, order_index, num_children, editable, deletable, title, external_uuid) VALUES (1, 1, 0, 1, 0, 0, 0, 0, 'BookmarksBar', '%@')", v4];
    [(WebBookmarkCollection *)self _executeSQL:v5];

    [(WebBookmarkCollection *)self _executeSQLWithCString:"UPDATE bookmarks SET num_children = 1 WHERE id = 0"];
  }

  [(WebBookmarkCollection *)self _clearAndCreateAncestorTable];
}

- (id)currentTabServerIDPresenceForParticipant:(id)a3 getTabGroupServerID:(id *)a4
{
  v6 = a3;
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v9, self->_db, "SELECT tab_group_server_id, tab_server_id FROM participant_presence WHERE participant_id = ?");
  sqlite3_bind_text(v10, 1, [v6 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  if (sqlite3_step(v10) == 100)
  {
    *a4 = WBUTF8StringFromSQLStatement(v10, 0);
    v7 = WBUTF8StringFromSQLStatement(v10, 1);
  }

  else
  {
    v7 = 0;
  }

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v9);

  return v7;
}

- (id)currentTabServerIDPresenceForParticipant:(id)a3 inTabGroupWithServerID:(id)a4
{
  v6 = a3;
  v7 = a4;
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v10, self->_db, "SELECT tab_server_id FROM participant_presence WHERE participant_id = ? AND tab_group_server_id = ?");
  sqlite3_bind_text(v11, 1, [v6 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  sqlite3_bind_text(v11, 2, [v7 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
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

- (BOOL)setPresenceInTabWithServerID:(id)a3 tabGroupWithServerID:(id)a4 forParticipant:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v15, self->_db, "DELETE FROM participant_presence WHERE participant_id = ?");
  sqlite3_bind_text(v16, 1, [v10 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  if (sqlite3_step(v16) == 101)
  {
    WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(&v13, self->_db, "INSERT INTO participant_presence (participant_id, tab_group_server_id, tab_server_id) VALUES (?, ?, ?)");
    sqlite3_bind_text(v14, 1, [v10 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
    sqlite3_bind_text(v14, 2, [v9 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
    sqlite3_bind_text(v14, 3, [v8 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
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

- (BOOL)removePresenceForParticipant:(id)a3 inTabGroupWithServerID:(id)a4
{
  v6 = a3;
  v7 = a4;
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v9, self->_db, "DELETE FROM participant_presence WHERE participant_id = ? AND tab_group_server_id = ?");
  sqlite3_bind_text(v10, 1, [v6 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  sqlite3_bind_text(v10, 2, [v7 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
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

- (id)presenceTabUUIDForParticipant:(id)a3 inTabGroupWithServerID:(id)a4
{
  v6 = a3;
  v7 = a4;
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v10, self->_db, "SELECT bookmarks.external_uuid FROM bookmarks INNER JOIN participant_presence ON bookmarks.server_id = participant_presence.tab_server_id WHERE participant_id = ? AND tab_group_server_id = ?");
  sqlite3_bind_text(v11, 1, [v6 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  sqlite3_bind_text(v11, 2, [v7 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
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

- (id)activeParticipantsInTabGroupWithServerID:(id)a3
{
  v4 = a3;
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v9, self->_db, "SELECT participant_id FROM participant_presence WHERE tab_group_server_id = ?");
  sqlite3_bind_text(v10, 1, [v4 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
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

- (id)activeParticipantsInTabWithServerID:(id)a3
{
  v4 = a3;
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v9, self->_db, "SELECT participant_id FROM participant_presence WHERE tab_server_id = ?");
  sqlite3_bind_text(v10, 1, [v4 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
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

- (void)markChildrenInFolderAsRead:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = -[WebBookmarkCollection listWithID:](self, "listWithID:", [v4 identifier]);
  v6 = [v5 bookmarkArray];

  if ([v6 count])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = v6;
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

- (int64_t)subtypeOfBookmarkWithServerID:(id)a3
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT subtype FROM bookmarks WHERE server_id = '%@'", a3];
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
  v3 = [(WebBookmarkCollection *)self readingListFolderBookmarkID];
  if (v3)
  {
    v4 = v3;
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
  v9 = [(WebBookmarkCollection *)self currentRecordGeneration];
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
        sqlite3_bind_int64(v11, 4, v9);
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
  v3 = [(WebBookmarkCollection *)self currentRecordGeneration];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"DELETE FROM sync_properties WHERE key = '_dav_generation'"];
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v4, self->_db, "INSERT INTO sync_properties (key, value) VALUES ('_dav_generation', ?)");
  sqlite3_bind_int64(v5, 1, v3);
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
  v18 = [(WebBookmarkCollection *)self currentRecordGeneration];
  v19 = self;
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

      WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v20, v19->_db, "UPDATE bookmarks SET extra_attributes = ?, local_attributes = ?, dav_generation = ? WHERE id = ?");
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

      sqlite3_bind_int64(v21, 3, v18);
      sqlite3_bind_int(v21, 4, v3);
      sqlite3_step(v21);
      WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v20);
    }
  }

  [(WebBookmarkCollection *)v19 _executeSQLWithCString:"ALTER TABLE bookmarks DROP COLUMN last_archived"];
  [(WebBookmarkCollection *)v19 _executeSQLWithCString:"PRAGMA user_version = 30"];
  [(WebBookmarkCollection *)v19 _executeSQLWithCString:"END"];
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
      v6 = [(WebBookmarkCollection *)self currentDeviceIdentifier];
      v7 = [(WebBookmark *)v4 initWithSQLiteStatement:v5 deviceIdentifier:v6 collectionType:[(WBCollectionConfiguration *)self->_configuration collectionType]];

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
    v6 = [MEMORY[0x277CCAD78] UUID];
    v7 = [v6 UUIDString];
    v8 = [v5 stringWithFormat:@"UPDATE bookmarks SET external_uuid = '%@' WHERE id = %d", v7, -[WebBookmark identifier](v4, "identifier")];
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
    v22 = [objc_opt_class() bookmarkImagesDirectoryPath];
    v21 = [MEMORY[0x277CCAA00] defaultManager];
    if (([v21 fileExistsAtPath:v22 isDirectory:0] & 1) == 0)
    {
      [v21 createDirectoryAtPath:v22 withIntermediateDirectories:1 attributes:0 error:0];
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
        v9 = [MEMORY[0x277CCAC58] propertyListWithData:v6 options:2 format:0 error:&v24];
        v10 = v24;
        if (!v9)
        {
          v11 = WBS_LOG_CHANNEL_PREFIXBookmarks();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            v12 = [v10 wb_privacyPreservingDescription];
            *buf = 138543362;
            v29[0] = v12;
            _os_log_impl(&dword_272C20000, v11, OS_LOG_TYPE_INFO, "Got nil local attributes dictionary: %{public}@", buf, 0xCu);
          }

          v9 = [MEMORY[0x277CBEB38] dictionary];
        }

        v13 = [v9 objectForKey:@"com.apple.ReadingList"];
        if (!v13)
        {
          v14 = WBS_LOG_CHANNEL_PREFIXBookmarks();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_272C20000, v14, OS_LOG_TYPE_INFO, "Got nil reading list attributes dictionary, creating one", buf, 2u);
          }

          v13 = [MEMORY[0x277CBEB38] dictionary];
        }

        v15 = [MEMORY[0x277CCAD78] UUID];
        v16 = [v15 UUIDString];

        v17 = [v22 stringByAppendingPathComponent:v16];
        [v7 writeToFile:v17 atomically:1];
        [v13 setObject:v16 forKey:@"ReadingListIconUUID"];
        [v9 setObject:v13 forKey:@"com.apple.ReadingList"];
        WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(buf, self->_db, "UPDATE bookmarks SET local_attributes = ?, icon = ? WHERE id = ?");
        bindAttributesToSQLStatement(*(v29 + 4), 1, v9);
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

- (BOOL)_migrateBookmarksPlist:(id)a3 syncAnchorPlist:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (![(WBCollectionConfiguration *)self->_configuration collectionType])
  {
    v9 = [MEMORY[0x277CCAA00] defaultManager];
    v10 = v9;
    if (!v6 || ([v9 fileExistsAtPath:v6] & 1) == 0)
    {
      v8 = 1;
LABEL_26:

      goto LABEL_27;
    }

    WebBookmarks::BookmarkSQLWriteTransaction::BookmarkSQLWriteTransaction(v23, self->_db);
    if (v23[17])
    {
      if ([(WebBookmarkCollection *)self _importBookmarksPlist:v6])
      {
        v22 = 0;
        v11 = [v10 removeItemAtPath:v6 error:&v22];
        v12 = v22;
        v13 = v12;
        if (v11)
        {

          if (v7 && [v10 fileExistsAtPath:v7])
          {
            if (![(WebBookmarkCollection *)self _importSyncAnchorPlist:v7])
            {
              v13 = 0;
              goto LABEL_21;
            }

            v21 = 0;
            v16 = [v10 removeItemAtPath:v7 error:&v21];
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

- (BOOL)_updateDatabaseIfNewerVersion:(id)a3 wasLaunchedForSyncStringKey:(id)a4 upgradeSelector:(SEL)a5 versionType:(id)a6
{
  v43 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [MEMORY[0x277CBEBD0] safari_browserSharedDefaults];
  v14 = [v13 stringForKey:@"DebugForceMigrationFromSafariVersionKey"];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v17 = [(WebBookmarkCollection *)self syncStringForKey:v11];
    v18 = v17;
    v19 = @"0";
    if (v17)
    {
      v19 = v17;
    }

    v16 = v19;
  }

  v20 = [v10 compare:v16 options:64];
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
    v42 = v10;
    _os_log_impl(&dword_272C20000, v25, OS_LOG_TYPE_DEFAULT, "Updating the web bookmarks from version: %{public}@ to the current version: %{public}@.", buf, 0x16u);
  }

  if (!-[WBCollectionConfiguration isReadonly](self->_configuration, "isReadonly") || ([objc_opt_class() lockSync] & 1) != 0)
  {
    v26 = [(WebBookmarkCollection *)self methodForSelector:a5];
    if ([(WebBookmarkCollection *)self _isDatabaseWriteAllowed]&& [(WebBookmarkCollection *)self maintainsSyncMetadata])
    {
      v29 = MEMORY[0x277D85DD0];
      v30 = 3221225472;
      v31 = __111__WebBookmarkCollection__updateDatabaseIfNewerVersion_wasLaunchedForSyncStringKey_upgradeSelector_versionType___block_invoke;
      v32 = &unk_279E76138;
      v33 = v13;
      v34 = self;
      v35 = v11;
      v36 = v10;
      v37 = v26;
      v38 = a5;
      v27 = [(WebBookmarkCollection *)self performDatabaseUpdatesWithTransaction:&v29 secureDelete:0];

      if (!v27)
      {
LABEL_21:
        v22 = 0;
        goto LABEL_24;
      }
    }

    else if (!v26(self, a5, v16))
    {
      goto LABEL_21;
    }

    [(WebBookmarkCollection *)self syncSetString:v10 forKey:v11, v29, v30, v31, v32];
    [v13 removeObjectForKey:@"DebugForceMigrationFromSafariVersionKey"];
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

- (sqlite3_stmt)_selectBookmarksWhere:(id)a3 returnType:(int64_t)a4
{
  v6 = a3;
  [(WebBookmarkCollection *)self logRegulatoryBookmarksRead];
  v7 = 0;
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      v8 = @"SELECT id FROM bookmarks WHERE %@ ORDER BY order_index ASC";
    }

    else
    {
      if (a4 != 3)
      {
        goto LABEL_11;
      }

      v8 = @"SELECT count(*) FROM bookmarks WHERE %@";
    }
  }

  else
  {
    if (!a4)
    {
      v9 = MEMORY[0x277CCACA8];
      v10 = BookmarkSQLiteColumns();
      v7 = [v9 stringWithFormat:@"SELECT %@ FROM bookmarks WHERE %@", v10, v6];

      goto LABEL_11;
    }

    if (a4 != 1)
    {
      goto LABEL_11;
    }

    v8 = @"SELECT id FROM bookmarks WHERE %@";
  }

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:v8, v6];
LABEL_11:
  ppStmt = 0;
  if (sqlite3_prepare_v2(self->_db, [v7 UTF8String], -1, &ppStmt, 0))
  {
    v11 = 0;
  }

  else
  {
    v11 = ppStmt;
  }

  return v11;
}

- (sqlite3_stmt)_sqliteStatementWithQuery:(id)a3
{
  v4 = a3;
  ppStmt = 0;
  if (sqlite3_prepare_v2(self->_db, [v4 UTF8String], -1, &ppStmt, 0))
  {
    v5 = 0;
  }

  else
  {
    v5 = ppStmt;
  }

  return v5;
}

- (int)_finalizeStatementIfNotNull:(sqlite3_stmt *)a3
{
  if (a3)
  {
    return sqlite3_finalize(a3);
  }

  else
  {
    return 0;
  }
}

- (int)_sqliteStatementWithQuery:(id)a3 runInBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  ppStmt = 0;
  v8 = sqlite3_prepare_v2(self->_db, [v6 UTF8String], -1, &ppStmt, 0);
  if (!v8)
  {
    v7[2](v7, ppStmt);
    v8 = sqlite3_finalize(ppStmt);
  }

  return v8;
}

- (id)_errorForMostRecentSQLiteError
{
  v3 = sqlite3_errcode(self->_db);

  return [(WebBookmarkCollection *)self _errorForMostRecentSQLiteErrorWithErrorCode:v3];
}

- (id)_errorForMostRecentSQLiteErrorWithErrorCode:(int64_t)a3
{
  v11[2] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:sqlite3_errmsg(self->_db)];
  v5 = *MEMORY[0x277D49CE8];
  v10[0] = *MEMORY[0x277CCA450];
  v10[1] = v5;
  v11[0] = v4;
  v11[1] = v4;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v7 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"com.apple.WebBookmarks.SQLiteError" code:a3 userInfo:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BOOL)_isTombstoneWithServerID:(id)a3
{
  v4 = a3;
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v6, self->_db, "SELECT id FROM bookmarks WHERE server_id = ? AND deleted = 1");
  sqlite3_bind_text(v7, 1, [v4 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  LOBYTE(self) = sqlite3_step(v7) == 100;
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v6);

  return self;
}

- (BOOL)_insertTombstoneWithServerID:(id)a3 itemType:(int64_t)a4 subtype:(int64_t)a5 syncData:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"INSERT INTO bookmarks (order_index, type, subtype, deleted, added, parent, server_id, dav_generation%@) VALUES (0, %ld, %ld, 1, 0, -1, ?, ?%@)", @", sync_data", a4, a5, @", ?"];
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v15, self->_db, [v12 UTF8String]);
  sqlite3_bind_text(v16, 1, [v10 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  sqlite3_bind_int64(v16, 2, [(WebBookmarkCollection *)self currentRecordGeneration]);
  if (v11)
  {
    sqlite3_bind_blob(v16, 3, [v11 bytes], objc_msgSend(v11, "length"), 0xFFFFFFFFFFFFFFFFLL);
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

- (BOOL)_clearAllTombstonesDuringOrBeforeLocalRecordGeneration:(int64_t)a3
{
  db = self->_db;
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"DELETE FROM bookmarks WHERE deleted = 1 AND dav_generation <= %zu", a3];
  v5 = [v4 UTF8String];
  v7 = WebBookmarks::BookmarkSQLStatement::executeSQL(db, v5, v6);

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

- (BOOL)_clearTombstoneForBookmark:(id)a3
{
  v4 = a3;
  db = self->_db;
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"DELETE FROM bookmarks WHERE deleted = 1 AND id = %d", objc_msgSend(v4, "identifier")];
  v7 = [v6 UTF8String];
  v9 = WebBookmarks::BookmarkSQLStatement::executeSQL(db, v7, v8);

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

- (BOOL)_clearSyncKeysUnderBookmarkID:(int)a3 isFolder:(BOOL)a4
{
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v6, self->_db, "UPDATE bookmarks SET added = 1, server_id = NULL, sync_key = NULL, sync_data = NULL WHERE parent IN (select folder_id from folder_ancestors where ancestor_id = ?) OR parent = ? OR id = ?");
  sqlite3_bind_int(v7, 1, a3);
  sqlite3_bind_int(v7, 2, a3);
  sqlite3_bind_int(v7, 3, a3);
  LOBYTE(a3) = sqlite3_step(v7) == 101;
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v6);
  return a3;
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

- (id)generateNewServerIDForBookmark:(id)a3
{
  v3 = [MEMORY[0x277CCAD78] UUID];
  v4 = [v3 UUIDString];

  return v4;
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

- (BOOL)_deleteBookmark:(id)a3 leaveTombstone:(BOOL)a4 insertTombstoneBlock:(id)a5
{
  v6 = a4;
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  if (v6 && ([v8 isSyncable] & 1) != 0)
  {
    v10 = 1;
    v11 = 1;
  }

  else
  {
    v12 = [v8 serverID];
    v13 = [(WebBookmarkCollection *)self _isTombstoneWithServerID:v12];

    v10 = 0;
    v11 = !v13;
  }

  if ([v8 identifier])
  {
    v14 = [v8 serverID];
    v15 = [(WebBookmarkCollection *)self _syncType];
    if (v15 != 2)
    {
      if (v10)
      {
        v16 = [v8 isFolder];
        if (v15 == 1)
        {
          v17 = v16;
        }

        else
        {
          v17 = 0;
        }

        if (v17 == 1)
        {
          if (![(WebBookmarkCollection *)self _insertTombsonesRecursivelyForRootFolder:v8 insertTombstoneBlock:v9])
          {
            goto LABEL_24;
          }
        }

        else if (v14 && !v9[2](v9, v8))
        {
          goto LABEL_24;
        }
      }

      if (([v8 isHidden] & 1) != 0 || -[WebBookmarkCollection _updateCachedChildCountForParentID:inDirection:](self, "_updateCachedChildCountForParentID:inDirection:", objc_msgSend(v8, "parentID"), 0xFFFFFFFFLL))
      {
        v19 = [(WebBookmarkCollection *)self orderIndexOfBookmark:v8];
        if (-[WebBookmarkCollection _deleteRecursively:descendantsOnly:](self, "_deleteRecursively:descendantsOnly:", [v8 identifier], 0))
        {
          v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"UPDATE bookmarks SET order_index = (order_index - 1) WHERE parent = %d AND order_index > %d", objc_msgSend(v8, "parentID"), v19];
          if ([(WebBookmarkCollection *)self _executeSQL:v20])
          {
            v21 = WBS_LOG_CHANNEL_PREFIXBookmarks();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              [v8 parentID];
              [(WebBookmarkCollection *)self _errorForMostRecentSQLiteError];
              objc_claimAutoreleasedReturnValue();
              [WebBookmarkCollection _deleteBookmark:leaveTombstone:insertTombstoneBlock:];
            }

            v18 = 0;
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
              v26 = [v8 identifier];
              v27 = 1024;
              v28 = [v8 parentID];
              _os_log_impl(&dword_272C20000, v24, OS_LOG_TYPE_INFO, "Deleted bookmark with ID %d from parent with ID %d", buf, 0xEu);
            }

            v18 = [(WebBookmarkCollection *)self _incrementGeneration];
          }

          goto LABEL_25;
        }
      }
    }

LABEL_24:
    v18 = 0;
LABEL_25:

    goto LABEL_26;
  }

  v18 = 0;
LABEL_26:

  v22 = *MEMORY[0x277D85DE8];
  return v18;
}

- (BOOL)_deleteRecursively:(int)a3 descendantsOnly:(BOOL)a4
{
  v7 = @" OR id = ?";
  if (a4)
  {
    v7 = &stru_288259858;
  }

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"DELETE FROM bookmarks WHERE parent IN (SELECT folder_id FROM folder_ancestors WHERE ancestor_id = ?) OR parent = ?%@", v7];
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v12, self->_db, [v8 UTF8String]);
  sqlite3_bind_int(v13, 1, a3);
  sqlite3_bind_int(v13, 2, a3);
  if (!a4)
  {
    sqlite3_bind_int(v13, 3, a3);
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

- (BOOL)_insertTombsonesRecursivelyForRootFolder:(id)a3 insertTombstoneBlock:(id)a4
{
  v50 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  v34 = v5;
  v35 = [MEMORY[0x277CBEB18] arrayWithObject:v5];
  v33 = v7;
  v37 = [MEMORY[0x277CBEB38] dictionary];
  while (1)
  {
    v8 = [v35 firstObject];
    if (!v8)
    {
      break;
    }

    context = objc_autoreleasePoolPush();
    v9 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "identifier")}];
    v10 = [v37 objectForKeyedSubscript:v9];

    if (v10)
    {
      goto LABEL_4;
    }

    v20 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "identifier")}];
    [v37 setObject:&unk_2882694D8 forKeyedSubscript:v20];

    if ((v6)[2](v6, v8))
    {
      v21 = 0;
      do
      {
        v22 = objc_autoreleasePoolPush();
        v23 = -[WebBookmarkCollection _fastFetchBookmarksInBookmarkFolder:options:offset:limit:](self, "_fastFetchBookmarksInBookmarkFolder:options:offset:limit:", [v8 identifier], 3, v21, 100);
        if ([v23 count])
        {
          v24 = WBS_LOG_CHANNEL_PREFIXBookmarks();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            v25 = [v23 count];
            v26 = [v8 privacyPreservingDescription];
            *buf = 134218498;
            v45 = v25;
            v46 = 1024;
            v47 = v21;
            v48 = 2114;
            v49 = v26;
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

                if ((v6[2](v6, *(*(&v39 + 1) + 8 * i)) & 1) == 0)
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
        if ([v37 count] > 0x14)
        {
          v11 = 1;
        }

        else
        {
          v11 = 20;
        }

        v12 = [v10 intValue];
        v13 = -[WebBookmarkCollection _fastFetchBookmarksInBookmarkFolder:options:offset:limit:](self, "_fastFetchBookmarksInBookmarkFolder:options:offset:limit:", [v8 identifier], 5, v12, v11);
        if ([v13 count])
        {
          v14 = WBS_LOG_CHANNEL_PREFIXBookmarks();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            v15 = [v13 count];
            v16 = [v8 privacyPreservingDescription];
            *buf = 134218498;
            v45 = v15;
            v46 = 1024;
            v47 = v12;
            v48 = 2114;
            v49 = v16;
            _os_log_impl(&dword_272C20000, v14, OS_LOG_TYPE_INFO, "Fetched %zu folder children at offset %u in folder %{public}@ while inserting tombstones", buf, 0x1Cu);
          }

          v17 = [MEMORY[0x277CCABB0] numberWithInt:(v12 + v11)];
          v18 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "identifier")}];
          [v37 setObject:v17 forKeyedSubscript:v18];

          v19 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{0, objc_msgSend(v13, "count")}];
          [v35 insertObjects:v13 atIndexes:v19];

          LODWORD(v19) = 0;
        }

        else
        {
          v19 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "identifier")}];
          [v37 setObject:0 forKeyedSubscript:v19];

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

- (int)_specialIDForBookmarkTitle:(id)a3
{
  v4 = a3;
  if ([(WBCollectionConfiguration *)self->_configuration collectionType]== 1)
  {
    v5 = 0;
  }

  else if ([v4 isEqualToString:@"BookmarksBar"] & 1) != 0 || (WebBookmarksBookmarksBarFolderTitle(), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v4, "isEqualToString:", v6), v6, (v7))
  {
    v5 = 1;
  }

  else if ([v4 isEqualToString:@"BookmarksMenu"] & 1) != 0 || (WebBookmarksBookmarksMenuFolderTitle(), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v4, "isEqualToString:", v9), v9, (v10))
  {
    v5 = 2;
  }

  else if ([v4 isEqualToString:@"com.apple.ReadingList"] & 1) != 0 || (WebBookmarksReadingListFolderTitle(), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v4, "isEqualToString:", v11), v11, (v12))
  {
    v5 = 3;
  }

  else if ([v4 isEqualToString:@"com.apple.WebFilterWhiteList"] & 1) != 0 || (WebBookmarksWebFilterAllowedSitesFolderTitle(), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v4, "isEqualToString:", v13), v13, (v14))
  {
    v5 = 4;
  }

  else if ([v4 isEqualToString:@"com.apple.FrequentlyVisitedSites"])
  {
    v5 = 5;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int)_specialIDForBookmarkBeingSaved:(id)a3
{
  v4 = a3;
  if ([v4 specialID] || !objc_msgSend(v4, "isFolder") || objc_msgSend(v4, "parentID") || (objc_msgSend(v4, "title"), v7 = objc_claimAutoreleasedReturnValue(), v8 = -[WebBookmarkCollection _specialIDForBookmarkTitle:](self, "_specialIDForBookmarkTitle:", v7), v7, !v8))
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

- (id)_databaseTitleForSpecialID:(int)a3
{
  if ((a3 - 1) > 5)
  {
    return 0;
  }

  else
  {
    return off_279E764C8[a3 - 1];
  }
}

- (BOOL)_childrenOfParentBookmarkAreUnsyncable:(id)a3
{
  v3 = a3;
  if ([v3 isWebFilterAllowedSitesFolder])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isFrequentlyVisitedSitesFolder];
  }

  return v4;
}

- (int64_t)_mergeBookmarkIntoPersistedBookmark:(id)a3 forAttributes:(unint64_t)a4
{
  v6 = a3;
  if ([v6 isInserted] && (objc_msgSend(v6, "isSyncable") & 1) != 0)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = [v6 serverID];
    v9 = [(WebBookmarkCollection *)self bookmarkWithServerID:v8 excludeDeletedBookmarks:0];

    if ([v9 isDeleted])
    {
      v10 = 0x4000;
    }

    else
    {
      v10 = a4;
    }

    if ([(WebBookmarkCollection *)self maintainsSyncMetadata])
    {
      [v6 lockFields];
    }

    if (v9)
    {
      v11 = [v6 mergeAttributes:v10 withBookmark:v9];
    }

    else
    {
      v11 = 2;
    }

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __75__WebBookmarkCollection__mergeBookmarkIntoPersistedBookmark_forAttributes___block_invoke;
    v13[3] = &unk_279E761B0;
    v15 = self;
    v16 = v10;
    v14 = v6;
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

- (int)bookmarkIDForServerID:(id)a3 excludeDeletedBookmarks:(BOOL)a4
{
  v4 = a4;
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  [(WebBookmarkCollection *)self logRegulatoryBookmarksRead];
  if (v6)
  {
    if ([v6 isEqualToString:*MEMORY[0x277D49BC0]])
    {
      v7 = 0;
    }

    else
    {
      v8 = [v6 _wb_stringByStandardizingDAVServerID];
      v9 = [v6 isEqualToString:v8];
      v10 = &stru_288259858;
      if (v4)
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
          v13 = v8;
        }

        else
        {
          v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%%%@", v8];
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
            v25 = v8;
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
          [WebBookmarkCollection bookmarkIDForServerID:v8 excludeDeletedBookmarks:v21];
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

- (id)bookmarkWithServerID:(id)a3 excludeDeletedBookmarks:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  if (v6 && ![v6 isEqualToString:*MEMORY[0x277D49BC0]])
  {
    v9 = [v7 _wb_stringByStandardizingDAVServerID];
    v10 = [v7 isEqualToString:v9];
    v11 = &stru_288259858;
    if (v4)
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
      v14 = v9;
    }

    else
    {
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%%%@", v9];
    }

    v15 = v14;
    sqlite3_bind_text(v21, 1, [v14 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
    if (sqlite3_step(v21) == 100)
    {
      v16 = [WebBookmark alloc];
      v17 = v21;
      v18 = [(WebBookmarkCollection *)self currentDeviceIdentifier];
      v8 = [(WebBookmark *)v16 initWithSQLiteStatement:v17 deviceIdentifier:v18 collectionType:[(WBCollectionConfiguration *)self->_configuration collectionType]];
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

- (BOOL)setServerID:(id)a3 forBookmark:(id)a4
{
  v6 = a3;
  v7 = a4;
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v10, self->_db, "UPDATE bookmarks SET server_id = ? WHERE id = ?");
  if ((v12 & 1) == 0)
  {
    goto LABEL_7;
  }

  if (v6)
  {
    sqlite3_bind_text(v11, 1, [v6 cStringUsingEncoding:4], -1, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    sqlite3_bind_null(v11, 1);
  }

  sqlite3_bind_int(v11, 2, [v7 identifier]);
  if (sqlite3_step(v11) == 101)
  {
    [v7 setServerID:v6];
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
  v2 = [(WBCollectionConfiguration *)self->_configuration collectionType];
  if (v2 == 1)
  {
    v2 = [MEMORY[0x277CBC5F8] safari_tabGroupsRecordZoneID];
  }

  else if (!v2)
  {
    v2 = [MEMORY[0x277CBC5F8] safari_bookmarksRecordZoneID];
  }

  return v2;
}

- (id)_rootServerIDForRecordZoneID:(id)a3
{
  v4 = a3;
  if ([(WBCollectionConfiguration *)self->_configuration collectionType]== 1)
  {
    v5 = [v4 safari_tabGroupRootRecordName];
  }

  else
  {
    v5 = 0;
  }

  return v5;
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

- (id)_serverIDBeforeServerID:(id)a3
{
  v3 = [(WebBookmarkCollection *)self _serverIDOfSiblingBookmarkWithServerID:a3 immediatelyBeforeOrAfter:1];

  return v3;
}

- (id)_serverIDAfterServerID:(id)a3
{
  v3 = [(WebBookmarkCollection *)self _serverIDOfSiblingBookmarkWithServerID:a3 immediatelyBeforeOrAfter:0];

  return v3;
}

- (id)_serverIDOfSiblingBookmarkWithServerID:(id)a3 immediatelyBeforeOrAfter:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(WebBookmarkCollection *)self logRegulatoryBookmarksRead];
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v22, self->_db, "SELECT parent, order_index FROM bookmarks WHERE server_id = ? AND deleted = 0");
  if ((v24 & 1) != 0 && (sqlite3_bind_text(v23, 1, [v6 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL), sqlite3_step(v23) == 100))
  {
    v7 = sqlite3_column_int(v23, 0);
    v8 = sqlite3_column_int(v23, 1);
    WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v19, self->_db, "SELECT special_id FROM bookmarks WHERE id = ? AND deleted = 0");
    if ((v21 & 1) != 0 && (sqlite3_bind_int(v20, 1, v7), sqlite3_step(v20) == 100))
    {
      v9 = (sqlite3_column_int(v20, 0) == 3) ^ v4;
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

- (id)_firstServerIDInFolderWithServerID:(id)a3
{
  v3 = [(WebBookmarkCollection *)self _firstOrLastServerIDInFolderWithServerID:a3 isFirst:1];

  return v3;
}

- (id)_lastServerIDInFolderWithServerID:(id)a3
{
  v3 = [(WebBookmarkCollection *)self _firstOrLastServerIDInFolderWithServerID:a3 isFirst:0];

  return v3;
}

- (id)_firstOrLastServerIDInFolderWithServerID:(id)a3 isFirst:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(WebBookmarkCollection *)self logRegulatoryBookmarksRead];
  if ([v6 length])
  {
    WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v14, self->_db, "SELECT id, special_id FROM bookmarks WHERE server_id = ? AND deleted = 0");
    if ((v16 & 1) == 0 || (sqlite3_bind_text(v15, 1, [v6 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL), sqlite3_step(v15) != 100))
    {
      WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v14);
      v9 = 0;
      goto LABEL_14;
    }

    v7 = sqlite3_column_int(v15, 0);
    v8 = sqlite3_column_int(v15, 1) == 3;
    WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v14);
    v4 ^= v8;
  }

  else
  {
    v7 = 0;
  }

  v10 = @"MAX";
  if (v4)
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

+ (id)_cloudKitSyncMetadataFileNameWithCollectionType:(int64_t)a3
{
  v3 = @"SafariTabsSyncMetadata.plist";
  if (a3 != 1)
  {
    v3 = 0;
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return @"BookmarksSyncMetadata.plist";
  }
}

+ (id)deviceIdentifierForCloudKitWithCollectionType:(int64_t)a3 generateIfNeeded:(BOOL)a4
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
  v7 = a4;
  v6[5] = a3;
  v6[6] = a1;
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

+ (void)resetDeviceIdentifierForCloudKitWithCollectionType:(int64_t)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __76__WebBookmarkCollection_resetDeviceIdentifierForCloudKitWithCollectionType___block_invoke;
  v3[3] = &__block_descriptor_48_e5_v8__0l;
  v3[4] = a1;
  v3[5] = a3;
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
    v6 = [MEMORY[0x277CCAD78] UUID];
    v3 = [v6 UUIDString];
    [(WBCollectionConfiguration *)self->_configuration setIdentifier:v3];
  }

  else
  {
    v4 = objc_opt_class();
    v5 = [(WBCollectionConfiguration *)self->_configuration collectionType];

    [v4 resetDeviceIdentifierForCloudKitWithCollectionType:v5];
  }
}

- (BOOL)_setSyncKey:(id)a3 forBookmark:(id)a4
{
  v6 = a3;
  v7 = a4;
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v10, self->_db, "UPDATE bookmarks SET sync_key = ? WHERE id = ?");
  if ((v12 & 1) == 0)
  {
    goto LABEL_7;
  }

  if (v6)
  {
    sqlite3_bind_text(v11, 1, [v6 cStringUsingEncoding:4], -1, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    sqlite3_bind_null(v11, 1);
  }

  sqlite3_bind_int(v11, 2, [v7 identifier]);
  if (sqlite3_step(v11) == 101)
  {
    [v7 setSyncKey:v6];
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

- (BOOL)_setSyncData:(id)a3 forBookmark:(id)a4
{
  v6 = a3;
  v7 = a4;
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v11, self->_db, "UPDATE bookmarks SET sync_data = ? WHERE id = ?");
  if ((v13 & 1) == 0)
  {
    goto LABEL_7;
  }

  if (v6)
  {
    v8 = [v6 length];
    sqlite3_bind_blob(v12, 1, [v6 bytes], v8, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    sqlite3_bind_null(v12, 1);
  }

  sqlite3_bind_int(v12, 2, [v7 identifier]);
  if (sqlite3_step(v12) == 101)
  {
    [v7 setSyncData:v6];
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

- (id)_syncKeysForServerIDs:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v17 = a3;
  [(WebBookmarkCollection *)self logRegulatoryBookmarksRead];
  v18 = [MEMORY[0x277CBEB38] dictionary];
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v26, self->_db, "SELECT sync_key FROM bookmarks WHERE server_id = ? AND deleted = 0 ORDER BY server_id ASC");
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v24, self->_db, "SELECT sync_key FROM bookmarks WHERE deleted = 0 AND rtrim(server_id, '/') LIKE ? ORDER BY server_id ASC");
  if (v27[8] == 1 && (v25[8] & 1) != 0)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    obj = v17;
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
          v8 = [v7 _wb_stringByStandardizingDAVServerID];
          if ([v7 isEqualToString:v8])
          {
            v9 = v8;
            v10 = v27;
          }

          else
          {
            v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%%%@", v8];
            v10 = v25;
          }

          v11 = *v10;
          sqlite3_reset(*v10);
          v12 = v9;
          sqlite3_bind_text(v11, 1, [v9 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
          if (sqlite3_step(v11) == 100 && sqlite3_column_type(v11, 0) != 5)
          {
            v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:{sqlite3_column_text(v11, 0)}];
            [v18 setObject:v13 forKey:v7];
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
    v14 = v18;
    v18 = 0;
  }

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v24);
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v26);

  v15 = *MEMORY[0x277D85DE8];

  return v18;
}

- (BOOL)_rebuildAncestorTable
{
  v3 = [MEMORY[0x277CBEA60] array];
  LOBYTE(self) = [(WebBookmarkCollection *)self _insertAncestorTableEntriesForBookmarkID:0 withAncestorIDs:v3];

  return self;
}

- (BOOL)_deleteAncestorTableEntriesForBookmarkID:(int)a3
{
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v7, self->_db, "DELETE FROM folder_ancestors WHERE folder_id IN (SELECT folder_id FROM folder_ancestors WHERE ancestor_id = ?) OR folder_id = ?;");
  if ((v9 & 1) == 0)
  {
LABEL_6:
    v4 = 0;
    goto LABEL_7;
  }

  sqlite3_bind_int(v8, 1, a3);
  sqlite3_bind_int(v8, 2, a3);
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

- (void)_normalizeSearchString:(__CFString *)a3
{
  CFStringNormalize(a3, kCFStringNormalizationFormD);
  locale = self->_locale;

  CFStringFold(a3, 0x181uLL, locale);
}

- (BOOL)_indexBookmarkID:(int)a3 title:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (v6)
  {
    WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v23, self->_db, "INSERT INTO bookmark_title_words (bookmark_id, word, word_index) VALUES (?, ?, ?)");
    v7 = v24;
    v8 = [(__CFString *)v6 length];
    if (v8 >= 0x200)
    {
      v9 = 512;
    }

    else
    {
      v9 = v8;
    }

    MutableCopy = CFStringCreateMutableCopy(0, v9, v6);
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
    v14 = [(WebBookmarkTitleWordTokenizer *)self->_wordTokenizer advanceToNextToken];
    v15.length = v15.location;
    for (i = 0; ; ++i)
    {
      v17 = v14 == 0x7FFFFFFFFFFFFFFFLL;
      if (v14 == 0x7FFFFFFFFFFFFFFFLL)
      {
        CFRelease(MutableCopy);
        goto LABEL_16;
      }

      v15.location = v14;
      CFStringGetBytes(MutableCopy, v15, 0x8000100u, 0, 0, buffer, 256, &usedBufLen);
      buffer[usedBufLen] = 0;
      sqlite3_bind_int(v7, 1, a3);
      sqlite3_bind_text(v7, 2, buffer, -1, 0xFFFFFFFFFFFFFFFFLL);
      sqlite3_bind_int(v7, 3, i);
      if (sqlite3_step(v7) != 101)
      {
        break;
      }

      sqlite3_reset(v7);
      sqlite3_clear_bindings(v7);
      v14 = [(WebBookmarkTitleWordTokenizer *)self->_wordTokenizer advanceToNextToken];
      v15.length = v15.location;
    }

    CFRelease(MutableCopy);
    v18 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v21 = [(WebBookmarkCollection *)self _errorForMostRecentSQLiteError];
      *buf = 67109634;
      v26 = a3;
      v27 = 1024;
      v28 = i;
      v29 = 2114;
      v30 = v21;
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
  v3 = [MEMORY[0x277CBEB18] array];
  [(WebBookmarkCollection *)self _collectChangesOfType:0 withClause:@"FROM folder_ancestors LEFT OUTER JOIN bookmarks ON folder_id = bookmarks.id WHERE bookmarks.id != 0 AND added = 1 AND syncable = 1 GROUP BY folder_id ORDER BY count(ancestor_id) ASC" intoArray:v3];
  [(WebBookmarkCollection *)self _collectChangesOfType:0 withClause:@"FROM bookmarks WHERE added = 1 AND id != 0 AND type = 0 AND syncable = 1" intoArray:v3];
  if ([(WebBookmarkCollection *)self maintainsSyncMetadata])
  {
    v4 = [(WebBookmarkCollection *)self lastSyncedRecordGeneration];
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"FROM folder_ancestors LEFT OUTER JOIN bookmarks ON folder_id = bookmarks.id WHERE dav_generation > %zd AND deleted = 0 AND added = 0 AND bookmarks.id != 0 AND syncable = 1 AND (modified_attributes & %llu) == %llu GROUP BY folder_id ORDER BY count(ancestor_id) ASC", v4, 64, 64];
    [(WebBookmarkCollection *)self _collectChangesOfType:1 withClause:v5 intoArray:v3];

    [MEMORY[0x277CCACA8] stringWithFormat:@"FROM bookmarks WHERE dav_generation > %zd AND deleted = 0 AND added = 0 AND id != 0 AND syncable = 1 AND modified_attributes != 0 AND ((modified_attributes & %llu) != %llu OR type = 0)", v4, 64, 64];
  }

  else
  {
    v7 = [(WebBookmarkCollection *)self currentRecordGeneration];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"FROM folder_ancestors LEFT OUTER JOIN bookmarks ON folder_id = bookmarks.id WHERE dav_generation = %zd AND deleted = 0 AND added = 0 AND bookmarks.id != 0 AND syncable = 1 AND (modified_attributes & %llu) == %llu GROUP BY folder_id ORDER BY count(ancestor_id) ASC", v7, 64, 64];
    [(WebBookmarkCollection *)self _collectChangesOfType:1 withClause:v8 intoArray:v3];

    [MEMORY[0x277CCACA8] stringWithFormat:@"FROM bookmarks WHERE dav_generation = %zd AND deleted = 0 AND added = 0 AND id != 0 AND syncable = 1 AND ((modified_attributes & %llu) != %llu OR type = 0)", v7, 64, 64];
  }
  v6 = ;
  [(WebBookmarkCollection *)self _collectChangesOfType:1 withClause:v6 intoArray:v3];

  [(WebBookmarkCollection *)self _collectChangesOfType:2 withClause:@"FROM bookmarks WHERE deleted = 1 AND server_id IS NOT NULL AND syncable = 1 GROUP BY server_id" intoArray:v3];

  return v3;
}

- (id)nextChangeAfterLocalRecordGeneration:(int64_t)a3
{
  v5 = MEMORY[0x277CCACA8];
  v6 = BookmarkSQLiteColumns();
  v7 = [v5 stringWithFormat:@"SELECT %@, added, deleted, dav_generation FROM bookmarks WHERE id != 0 AND syncable = 1 AND dav_generation > %ld AND (added = 1 OR deleted = 1 OR modified_attributes != 0) ORDER BY dav_generation ASC LIMIT 1", v6, a3];

  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v21, self->_db, [v7 UTF8String]);
  if (sqlite3_step(v22) == 100)
  {
    v8 = [WebBookmark alloc];
    v9 = v22;
    v10 = [(WebBookmarkCollection *)self currentDeviceIdentifier];
    v11 = [(WebBookmark *)v8 initWithSQLiteStatement:v9 deviceIdentifier:v10 collectionType:[(WBCollectionConfiguration *)self->_configuration collectionType]];

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

- (BOOL)clearChangesDuringOrBeforeLocalRecordGeneration:(int64_t)a3
{
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"UPDATE bookmarks SET added = 0, modified_attributes = 0 WHERE dav_generation <= %zu AND (added != 0 OR modified_attributes != 0)", a3];
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v8, self->_db, [v5 UTF8String]);
  v6 = sqlite3_step(v9) == 101 && [(WebBookmarkCollection *)self _clearAllTombstonesDuringOrBeforeLocalRecordGeneration:a3];
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v8);

  return v6;
}

- (BOOL)clearChangesForChangeRecords:(id)a3 lastSyncedRecordGeneration:(int64_t)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = a3;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        if (![v10 changeType])
        {
          v11 = MEMORY[0x277CCACA8];
          v12 = [v10 bookmark];
          v13 = [v11 stringWithFormat:@"UPDATE bookmarks SET added = 0 WHERE id = %d", objc_msgSend(v12, "identifier")];
          [(WebBookmarkCollection *)self _executeSQL:v13];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v14 = [(WebBookmarkCollection *)self clearChangesDuringOrBeforeLocalRecordGeneration:a4];
  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (BOOL)clearChangesForBookmark:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"UPDATE bookmarks SET added = 0, modified_attributes = 0 WHERE id = %d", objc_msgSend(v4, "identifier")];
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v8, self->_db, [v5 UTF8String]);
  if (sqlite3_step(v9) == 101 && [(WebBookmarkCollection *)self _clearTombstoneForBookmark:v4])
  {
    [v4 setModifiedAttributes:0];
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v8);

  return v6;
}

- (BOOL)_markBookmarkID:(int)a3 added:(BOOL)a4
{
  v4 = a4;
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v7, self->_db, "UPDATE bookmarks SET added = ? WHERE id = ?");
  sqlite3_bind_int(v8, 1, v4);
  sqlite3_bind_int(v8, 2, a3);
  LOBYTE(a3) = sqlite3_step(v8) == 101;
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v7);
  return a3;
}

- (int64_t)lastSyncedRecordGeneration
{
  db = self->_db;
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT value from sync_properties WHERE key = '%@'", @"LastSyncedRecordGeneration"];
  v5 = WebBookmarks::BookmarkSQLStatement::selectInt(db, v3, v4);

  return v5;
}

- (void)setLastSyncedRecordGeneration:(int64_t)a3
{
  v5 = [(WebBookmarkCollection *)self lastSyncedRecordGeneration];
  if (v5 != a3)
  {
    db = self->_db;
    if (v5 == -1)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"INSERT INTO sync_properties (key, value) VALUES ('%@', %zd)", @"LastSyncedRecordGeneration", a3];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"UPDATE sync_properties SET value = %zd WHERE key = '%@'", a3, @"LastSyncedRecordGeneration"];
    }
    v8 = ;
    WebBookmarks::BookmarkSQLStatement::executeSQL(db, v8, v7);
  }
}

- (void)_metaDataFileChanged:(id)a3
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
    v4 = [(WebBookmarkCollection *)self favoritesFolder];
    self->_favoritesFolderIdentifier = [v4 identifier];

    return self->_favoritesFolderIdentifier;
  }

  return result;
}

- (void)setFavoritesFolder:(id)a3 localOnly:(BOOL)a4
{
  v8 = a3;
  if ([(WebBookmarkCollection *)self applyInMemoryChangesToDatabase])
  {
    v6 = [(WebBookmarkCollection *)self favoritesFolder];
    v7 = [v8 identifier];
    if (v7 != [v6 identifier])
    {
      if (a4 || ([v6 identifier] == 1 || (objc_msgSend(v6, "setSelectedFavoritesFolder:", MEMORY[0x277CBEC28]), -[WebBookmarkCollection _saveBookmark:withSpecialID:updateGenerationIfNeeded:](self, "_saveBookmark:withSpecialID:updateGenerationIfNeeded:", v6, -[WebBookmarkCollection _specialIDForBookmarkBeingSaved:](self, "_specialIDForBookmarkBeingSaved:", v6), 1))) && (objc_msgSend(v8, "setSelectedFavoritesFolder:", MEMORY[0x277CBEC38]), -[WebBookmarkCollection _saveBookmark:withSpecialID:updateGenerationIfNeeded:](self, "_saveBookmark:withSpecialID:updateGenerationIfNeeded:", v8, -[WebBookmarkCollection _specialIDForBookmarkBeingSaved:](self, "_specialIDForBookmarkBeingSaved:", v8), 1)))
      {
        -[WebBookmarkCollection setFavoritesFolderIdentifier:postChangeNotification:](self, "setFavoritesFolderIdentifier:postChangeNotification:", [v8 identifier], 1);
      }
    }
  }
}

- (BOOL)bookmarkIsFavoritesFolder:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  LOBYTE(self) = v5 == [(WebBookmarkCollection *)self _favoritesFolderIdentifier];

  return self;
}

- (BOOL)bookmarkIsInFavoritesFolder:(id)a3
{
  v4 = a3;
  v5 = [(WebBookmarkCollection *)self favoritesFolder];
  v6 = -[WebBookmarkCollection _descendantIDsOfBookmarkFolderID:](self, "_descendantIDsOfBookmarkFolderID:", [v5 identifier]);

  v7 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v4, "identifier")}];
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
  v2 = [(WBCollectionConfiguration *)self->_configuration collectionType];
  v3 = @"WebBookmarksTabFolderContentsDidChangeNotification";
  if (v2 != 1)
  {
    v3 = 0;
  }

  if (v2)
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
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 postNotificationName:@"WebBookmarksSpecialFoldersDidChangeNotification" object:self userInfo:0];
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
  v2 = [(WebBookmarkCollection *)self _safariFetcherServerProxy];
  [v2 startReadingListFetcher];
}

- (void)_simulateCrashWithDescription:(id)a3
{
  v3 = a3;
  v4 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    [WebBookmarkCollection _simulateCrashWithDescription:];
  }
}

- (BOOL)_importBookmarksPlist:(id)a3
{
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:a3];
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

- (BOOL)_importSyncAnchorPlist:(id)a3
{
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:a3];
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
      v6 = [v5 wb_bestURLForUserTypedString];
      v7 = [v6 absoluteString];

      if (v7)
      {
        if (([v5 isEqualToString:v7] & 1) == 0)
        {
          sqlite3_reset(pStmt);
          sqlite3_bind_text(pStmt, 1, [v7 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
          sqlite3_bind_int(pStmt, 2, v3);
          sqlite3_step(pStmt);
        }
      }
    }
  }

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(&v8);
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v10);
}

- (void)_restoreOrMergeAllowedSitesFolderAndContentsWithWebFilterAllowedSites:(id)a3 ensureChildCount:(BOOL)a4 postChangeNotification:(BOOL)a5
{
  v28 = a5;
  v5 = a4;
  v46 = *MEMORY[0x277D85DE8];
  v29 = a3;
  v35 = self;
  v7 = [(WebBookmarkCollection *)self webFilterAllowedSitesFolder];
  v8 = v7;
  if (!v7)
  {
    v8 = [[WebBookmark alloc] initFolderWithParentID:0 collectionType:[(WBCollectionConfiguration *)v35->_configuration collectionType]];
    [v8 _setSyncable:0];
    [(WebBookmarkCollection *)v35 _saveBookmark:v8 withSpecialID:4 updateGenerationIfNeeded:1];
  }

  v32 = v8;
  v30 = [v29 mutableCopy];
  v31 = [MEMORY[0x277CCAB58] indexSet];
  if (v7)
  {
    if (v5 && ![(WebBookmarkCollection *)v35 _ensureFolderChildrenCount:v8])
    {
      goto LABEL_32;
    }

    v9 = [v30 valueForKey:@"address"];
    v10 = [(WebBookmarkCollection *)v35 webFilterAllowedSites];
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v11 = [v10 bookmarkArray];
    v12 = [v11 countByEnumeratingWithState:&v40 objects:v45 count:16];
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
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v40 + 1) + 8 * i);
          v16 = [v15 address];
          v17 = [v9 indexOfObject:v16];
          if (v17 == 0x7FFFFFFFFFFFFFFFLL)
          {
            [(WebBookmarkCollection *)v35 deleteBookmark:v15 postChangeNotification:0];
            v34 = 1;
          }

          else
          {
            [v31 addIndex:v17];
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v40 objects:v45 count:16];
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

  [v30 removeObjectsAtIndexes:v31];
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
          -[WebBookmarkCollection moveBookmark:toFolderWithID:](v35, "moveBookmark:toFolderWithID:", v25, [v32 identifier]);
          [(WebBookmarkCollection *)v35 saveBookmark:v25];

          v34 = 1;
        }
      }

      v18 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v18);
  }

  if ((v34 & v28) == 1)
  {
    v26 = [MEMORY[0x277CCAB98] defaultCenter];
    [v26 postNotificationName:@"WebBookmarksDidReloadNotification" object:v35 userInfo:0];
  }

LABEL_32:

  v27 = *MEMORY[0x277D85DE8];
}

- (void)_restoreOrMergeReadingListFolderWithChangeNotification:(BOOL)a3
{
  v3 = a3;
  if ([(WebBookmarkCollection *)self applyInMemoryChangesToDatabase])
  {
    v24 = v3;
    WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v25, [(WebBookmarkCollection *)self _selectBookmarksWhere:@"title = ? AND parent = 0 AND deleted = 0 ORDER BY order_index ASC"]);
    sqlite3_bind_text(v26, 1, [@"com.apple.ReadingList" UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
    v5 = 0;
    v6 = 0;
    while (sqlite3_step(v26) == 100)
    {
      v7 = [WebBookmark alloc];
      v8 = v26;
      v9 = [(WebBookmarkCollection *)self currentDeviceIdentifier];
      v10 = [(WebBookmark *)v7 initWithSQLiteStatement:v8 deviceIdentifier:v9 collectionType:[(WBCollectionConfiguration *)self->_configuration collectionType]];

      if (v5)
      {
        v11 = [(WebBookmarkCollection *)self listWithID:[(WebBookmark *)v10 identifier]];
        v12 = [v11 bookmarkCount];
        if (v12)
        {
          v13 = 0;
          do
          {
            v14 = [v11 bookmarkAtIndex:v13];
            v15 = [v14 address];
            v16 = [(WebBookmarkCollection *)self _firstBookmarkWithURLMatchingString:v15 prefixMatch:0 inParent:v5];

            if (!v16)
            {
              v17 = [WebBookmark alloc];
              v18 = [v14 title];
              v19 = [v14 address];
              v20 = [(WebBookmark *)v17 initReadingListBookmarkWithTitle:v18 address:v19 previewText:0];

              v21 = [v14 extraAttributes];
              [v20 setExtraAttributes:v21];

              v22 = [v14 localAttributes];
              [v20 setLocalAttributes:v22];

              [v20 _setParentID:v5];
              [(WebBookmarkCollection *)self _saveBookmark:v20 withSpecialID:0 updateGenerationIfNeeded:1];
            }

            v13 = (v13 + 1);
          }

          while (v12 != v13);
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

        v5 = [(WebBookmark *)v10 identifier];
      }
    }

    if (v5)
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

- (BOOL)_ensureFolderChildrenCount:(id)a3
{
  v4 = [a3 identifier];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"UPDATE bookmarks SET num_children = (SELECT COUNT(*) FROM bookmarks AS count_bookmarks WHERE count_bookmarks.parent = %d) WHERE (bookmarks.id = %d AND bookmarks.num_children < 0)", v4, v4];
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

- (BOOL)_updateHiddenAncestorCountForBookmarksUnderFolderID:(int)a3 addingOffset:(int)a4
{
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v7, self->_db, "UPDATE bookmarks SET hidden_ancestor_count = hidden_ancestor_count + ? WHERE parent IN (SELECT folder_id from folder_ancestors WHERE ancestor_id = ?) OR parent = ?");
  sqlite3_bind_int(v8, 1, a4);
  sqlite3_bind_int(v8, 2, a3);
  sqlite3_bind_int(v8, 3, a3);
  LOBYTE(a3) = sqlite3_step(v8) == 101;
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v7);
  return a3;
}

- (id)fastFetchBookmarksInBookmarkList:(id)a3
{
  v4 = a3;
  if ([v4 bookmarkCount])
  {
    v5 = -[WebBookmarkCollection _fastFetchBookmarksInBookmarkFolder:includingHiddenBookmarks:](self, "_fastFetchBookmarksInBookmarkFolder:includingHiddenBookmarks:", [v4 folderID], 0);
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
  v2 = [(WebBookmarkCollection *)self _inMemoryChangeSet];
  v3 = [v2 changes];
  v4 = [v3 count] != 0;

  return v4;
}

- (void)persistChangesWithCompletion:(id)a3
{
  v5 = a3;
  v4 = [(WebBookmarkCollection *)self _inMemoryChangeSet];
  [v4 persistChangesWithCompletion:v5];
}

- (id)applyInMemoryChanges:(id)a3
{
  v3 = [(WebBookmarkCollection *)self _applyInMemoryChanges:a3 postChangeNotification:1];

  return v3;
}

- (void)_applyInMemoryChange:(id)a3 fromChangeSet:(id)a4 updatedBookmarks:(id)a5
{
  v54 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 changeType];
  if (v11 > 3)
  {
    switch(v11)
    {
      case 4:
        v12 = -[WebBookmarkCollection bookmarkWithID:](self, "bookmarkWithID:", [v8 bookmarkID]);
        v30 = WBS_LOG_CHANNEL_PREFIXBookmarks();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          v31 = [v12 privacyPreservingDescription];
          *buf = 138543362;
          v51 = v31;
          _os_log_impl(&dword_272C20000, v30, OS_LOG_TYPE_INFO, "Applying in-memory move change for %{public}@", buf, 0xCu);
        }

        if (v12)
        {
          -[WebBookmarkCollection _moveBookmark:toFolderWithID:](self, "_moveBookmark:toFolderWithID:", v12, [v8 associatedBookmarkID]);
          [v9 removeChange:v8];
        }

        goto LABEL_34;
      case 5:
        v38 = -[WebBookmarkCollection bookmarkWithID:](self, "bookmarkWithID:", [v8 bookmarkID]);
        v39 = -[WebBookmarkCollection bookmarkWithID:](self, "bookmarkWithID:", [v8 associatedBookmarkID]);
        v40 = WBS_LOG_CHANNEL_PREFIXBookmarks();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          v41 = [v38 privacyPreservingDescription];
          v42 = [v39 privacyPreservingDescription];
          *buf = 138543618;
          v51 = v41;
          v52 = 2114;
          v53 = v42;
          _os_log_impl(&dword_272C20000, v40, OS_LOG_TYPE_INFO, "Applying in-memory reorder change for %{public}@ after %{public}@", buf, 0x16u);
        }

        if (v38)
        {
          [(WebBookmarkCollection *)self _reorderBookmark:v38 afterBookmark:v39];
          [v9 removeChange:v8];
        }

        break;
      case 6:
        v17 = WBS_LOG_CHANNEL_PREFIXBookmarks();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = [v8 bookmarks];
          *buf = 134218240;
          v51 = [v18 count];
          v52 = 1024;
          LODWORD(v53) = [v8 parentID];
          _os_log_impl(&dword_272C20000, v17, OS_LOG_TYPE_INFO, "Applying in-memory replace change for %zu bookmarks in folder %d", buf, 0x12u);
        }

        v19 = [v8 bookmarks];
        v48[0] = MEMORY[0x277D85DD0];
        v48[1] = 3221225472;
        v48[2] = __77__WebBookmarkCollection__applyInMemoryChange_fromChangeSet_updatedBookmarks___block_invoke;
        v48[3] = &unk_279E76248;
        v48[4] = self;
        v20 = [v19 safari_mapObjectsUsingBlock:v48];

        v21 = [v8 parentID];
        v22 = [v8 specialFolderID];
        if (v22)
        {
          v23 = [(WebBookmarkCollection *)self bookmarkWithSpecialID:v22];
          v21 = [v23 identifier];
        }

        [(WebBookmarkCollection *)self _updateBookmarks:v20 inFolderWithID:v21];
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

        [v9 removeChange:v8];
        break;
    }
  }

  else
  {
    switch(v11)
    {
      case 0:
        v12 = -[WebBookmarkCollection bookmarkWithID:](self, "bookmarkWithID:", [v8 bookmarkID]);
        v28 = WBS_LOG_CHANNEL_PREFIXBookmarks();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          v29 = [v12 privacyPreservingDescription];
          *buf = 138543362;
          v51 = v29;
          _os_log_impl(&dword_272C20000, v28, OS_LOG_TYPE_INFO, "Applying in-memory delete change for %{public}@", buf, 0xCu);
        }

        if (v12)
        {
          [(WebBookmarkCollection *)self _deleteBookmark:v12 postChangeNotification:0 forApplyingInMemoryChanges:1];
        }

        goto LABEL_34;
      case 2:
        v32 = [v8 bookmark];
        v33 = WBS_LOG_CHANNEL_PREFIXBookmarks();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          v34 = [v32 privacyPreservingDescription];
          *buf = 138543362;
          v51 = v34;
          _os_log_impl(&dword_272C20000, v33, OS_LOG_TYPE_INFO, "Applying in-memory add change for %{public}@", buf, 0xCu);
        }

        v35 = [v32 identifier];
        v36 = [v8 specialFolderID];
        if (v36)
        {
          v37 = [(WebBookmarkCollection *)self bookmarkWithSpecialID:v36];
          [v32 _setParentID:{objc_msgSend(v37, "identifier")}];
        }

        [(WebBookmarkCollection *)self _saveBookmark:v32 startReadingListFetcher:0 forApplyingInMemoryChanges:1];
        [v9 removeChange:v8];
        [v9 updateAddChangesWithInMemoryBookmarkID:v35 toDatabaseGeneratedID:{objc_msgSend(v32, "identifier")}];
        [v10 addObject:v32];

        break;
      case 3:
        v12 = -[WebBookmarkCollection bookmarkWithID:](self, "bookmarkWithID:", [v8 bookmarkID]);
        v13 = WBS_LOG_CHANNEL_PREFIXBookmarks();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = [v12 privacyPreservingDescription];
          v15 = [v8 bookmark];
          v16 = [v15 privacyPreservingDescription];
          *buf = 138543618;
          v51 = v14;
          v52 = 2114;
          v53 = v16;
          _os_log_impl(&dword_272C20000, v13, OS_LOG_TYPE_INFO, "Applying in-memory modify change for %{public}@ from %{public}@", buf, 0x16u);
        }

        if (v12)
        {
          [v8 applyModificationsToBookmark:v12];
          [(WebBookmarkCollection *)self _saveBookmark:v12 startReadingListFetcher:0 forApplyingInMemoryChanges:1];
          [v9 removeChange:v8];
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

- (id)_applyInMemoryChanges:(id)a3 postChangeNotification:(BOOL)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [MEMORY[0x277CBEB18] array];
  v8 = [v6 changes];
  if (![v8 count])
  {
LABEL_14:
    v14 = 0;
    goto LABEL_15;
  }

  v9 = [objc_opt_class() isLockedSync];
  if (v9 & 1) != 0 || ([objc_opt_class() lockSync])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = v8;
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

          [(WebBookmarkCollection *)self _applyInMemoryChange:*(*(&v19 + 1) + 8 * i) fromChangeSet:v6 updatedBookmarks:v7];
        }

        v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }

    [v6 removeAllChanges];
    if ((v9 & 1) == 0)
    {
      [objc_opt_class() unlockSync];
    }

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __70__WebBookmarkCollection__applyInMemoryChanges_postChangeNotification___block_invoke;
    v17[3] = &unk_279E75F60;
    v18 = a4;
    v17[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], v17);
    goto LABEL_14;
  }

  v14 = v7;
  v7 = 0;
LABEL_15:

  v15 = *MEMORY[0x277D85DE8];

  return v7;
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

- (void)databaseLockAcquisitor:(id)a3 acquiredLock:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v4)
  {
    [(WebBookmarkCollection *)self applyInMemoryChangesToDatabase];
    [v6 releaseLock];
  }
}

- (void)deleteBookmarkInMemory:(id)a3
{
  v5 = a3;
  if ([(WebBookmarkCollection *)self _trackChangesInMemoryIfDatabaseWriteIsNotAllowed])
  {
    v4 = [v5 parentID];
    [(WebBookmarkCollection *)self _deleteBookmarkInMemory:v5];
    [(WebBookmarkCollection *)self _postBookmarksFolderContentsDidChangeNotification:v4];
    [(WBDatabaseLockAcquisitor *)self->_databaseLockAcquisitor acquireLockWithTimeout:60.0];
  }
}

- (void)_deleteBookmarkInMemory:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [v4 parentID];
  v7 = [(WebBookmarkCollection *)self _inMemoryChangeSet];
  v8 = [WebBookmarkChange deleteChangeWithBookmark:v4];
  [v7 addChange:v8];
  if ([v4 isFolder])
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __49__WebBookmarkCollection__deleteBookmarkInMemory___block_invoke;
    v9[3] = &unk_279E76270;
    v10 = v7;
    [(WebBookmarkCollection *)self _enumerateContentsOfBookmarkFolder:v5 includingSubfolders:1 usingBlock:v9];
  }

  else
  {
    [(WebBookmarkCollection *)self _postBookmarksFolderContentsDidChangeNotification:v6];
    [(WBDatabaseLockAcquisitor *)self->_databaseLockAcquisitor acquireLockWithTimeout:60.0];
  }
}

void __49__WebBookmarkCollection__deleteBookmarkInMemory___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = -[WebBookmarkChange initWithBookmarkID:parentID:changeType:]([WebBookmarkChange alloc], "initWithBookmarkID:parentID:changeType:", [v4 identifier], objc_msgSend(v4, "parentID"), 1);
  [*(a1 + 32) addChange:v3];
}

- (void)modifyBookmarkInMemory:(id)a3
{
  v6 = a3;
  if ([(WebBookmarkCollection *)self _trackChangesInMemoryIfDatabaseWriteIsNotAllowed])
  {
    v4 = [(WebBookmarkCollection *)self _inMemoryChangeSet];
    v5 = [WebBookmarkChange bookmarkModifyChangeWithBookmark:v6];
    [v4 addChange:v5];

    -[WebBookmarkCollection _postBookmarksFolderContentsDidChangeNotification:](self, "_postBookmarksFolderContentsDidChangeNotification:", [v6 parentID]);
    [(WBDatabaseLockAcquisitor *)self->_databaseLockAcquisitor acquireLockWithTimeout:60.0];
  }
}

- (void)reorderBookmarkInMemory:(id)a3 afterBookmark:(id)a4
{
  v9 = a3;
  v6 = a4;
  if ([(WebBookmarkCollection *)self _trackChangesInMemoryIfDatabaseWriteIsNotAllowed])
  {
    v7 = [WebBookmarkChange reorderChangeWithBookmark:v9 afterBookmark:v6];
    v8 = [(WebBookmarkCollection *)self _inMemoryChangeSet];
    [v8 addChange:v7];

    -[WebBookmarkCollection _postBookmarksFolderContentsDidChangeNotification:](self, "_postBookmarksFolderContentsDidChangeNotification:", [v9 parentID]);
    [(WBDatabaseLockAcquisitor *)self->_databaseLockAcquisitor acquireLockWithTimeout:60.0];
  }
}

- (BOOL)_deduplicateBookmarksForBookmarkDAVWithHomeURL:(id)a3
{
  v4 = a3;
  if ([(WebBookmarkCollection *)self _deduplicateBookmarksWithRootFolder:0 depth:0 trackChanges:1 considerBookmarksWithSyncDataAsUnique:0 davHomeURL:v4])
  {
    v5 = [v4 dataRepresentation];
    v6 = [(WebBookmarkCollection *)self setSyncData:v5 forKey:@"DAVHomeURL"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_needsDeduplicationForBookmarkDAVWithHomeURL:(id)a3
{
  v4 = a3;
  v5 = [(WebBookmarkCollection *)self syncDataForKey:@"DAVHomeURL"];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithDataRepresentation:v5 relativeToURL:0];
    v7 = [v4 isEqual:v6] ^ 1;
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
  v3 = [MEMORY[0x277CBEB18] array];
  [v3 addObject:&unk_2882694F0];
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v34, self->_db, "UPDATE bookmarks SET order_index = ? WHERE id = ?");
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v32, self->_db, "UPDATE bookmarks SET num_children = (SELECT COUNT(*) FROM bookmarks AS b WHERE b.parent = ? AND b.hidden = 0) WHERE id = ? AND type = 1");
  v4 = 0;
  v23 = self;
  v24 = v3;
  do
  {
    v5 = [v3 count];
    if (!v5)
    {
      break;
    }

    v6 = objc_autoreleasePoolPush();
    v7 = [v3 firstObject];
    [v3 removeObjectAtIndex:0];
    v8 = [v7 intValue];
    v9 = v8;
    if ((v4 & (v8 == 0)) != 0)
    {
      v10 = 2;
      v4 = 1;
    }

    else
    {
      v27 = v4;
      v11 = v8 == 0;
      v12 = [(WebBookmarkCollection *)self _fetchBookmarkIDsInFolder:v8 onlyFolders:0 includingHiddenBookmarks:1 sortedByOrderIndex:1];
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
              self = v23;
              v3 = v24;
              v19 = v27;
              v5 = v25;
              goto LABEL_15;
            }

            ++v15;
          }

          v14 = [v13 countByEnumeratingWithState:&v28 objects:v36 count:16];
          v3 = v24;
          v5 = v25;
          if (v14)
          {
            continue;
          }

          break;
        }
      }

      self = v23;
      v19 = v27;
      v20 = [(WebBookmarkCollection *)v23 _fetchBookmarkIDsInFolder:v9 onlyFolders:1 includingHiddenBookmarks:1 sortedByOrderIndex:0];
      [v3 addObjectsFromArray:v20];
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

- (BOOL)_bookmarkHasSyncedToServer:(id)a3
{
  v4 = a3;
  if ([(WebBookmarkCollection *)self maintainsSyncMetadata])
  {
    v5 = [(WebBookmarkCollection *)self syncDataForBookmark:v4];
    v6 = [v5 record];
  }

  else
  {
    v5 = [v4 syncData];
    v6 = v5;
  }

  return v6 != 0;
}

- (BOOL)_bookmark:(id)a3 hasPriorityOverBookmarkForDeduplication:(id)a4 prioritizeBookmarksWithSyncData:(BOOL)a5 davHomePath:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [v10 specialID];
  v14 = [v11 specialID];
  if (v13 && !v14)
  {
    goto LABEL_3;
  }

  if (!v13 && v14)
  {
LABEL_6:
    v15 = 0;
    goto LABEL_7;
  }

  if (v7)
  {
    v17 = [(WebBookmarkCollection *)self _bookmarkHasSyncedToServer:v10];
    v18 = [(WebBookmarkCollection *)self _bookmarkHasSyncedToServer:v11];
    if (!v18 && v17)
    {
      goto LABEL_3;
    }

    if (!v17 && v18)
    {
      goto LABEL_6;
    }
  }

  v19 = [(WebBookmarkCollection *)self _bookmark:v10 hasCurrentDAVHomePath:v12];
  v20 = [(WebBookmarkCollection *)self _bookmark:v11 hasCurrentDAVHomePath:v12];
  if (v20 || !v19)
  {
    if (!v19 && v20)
    {
      goto LABEL_6;
    }

    v21 = [v10 serverID];
    v22 = [v11 serverID];
    v23 = [v21 length];
    v24 = [v22 length];
    if (v23 && !v24)
    {
      goto LABEL_15;
    }

    if (v23 || !v24)
    {
      v25 = [v21 safari_isSpecialFolderRecordName];
      v26 = [v22 safari_isSpecialFolderRecordName];
      if (!(v26 & 1 | ((v25 & 1) == 0)))
      {
LABEL_15:
        v15 = 1;
LABEL_19:

        goto LABEL_7;
      }

      if (v25 & 1 | ((v26 & 1) == 0))
      {
        v15 = [v21 compare:v22] == -1;
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

- (BOOL)_bookmark:(id)a3 hasCurrentDAVHomePath:(id)a4
{
  v5 = a4;
  v6 = [a3 serverID];
  if ([v6 length])
  {
    if (v5)
    {
      v7 = [v6 _webBookmarks_hasCaseInsensitivePrefix:v5];
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

- (void)_appendDuplicateBookmarkGroupsInBookmarks:(id)a3 toGroups:(id)a4 considerBookmarksWithSyncDataAsUnique:(BOOL)a5 davHomePath:(id)a6
{
  v33 = a5;
  v44 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v28 = a4;
  v31 = a6;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v9;
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
        v32 = v28;
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
            v19 = [v17 originalBookmark];
            v20 = [(WebBookmarkCollection *)self _bookmark:v12 isDuplicateOfBookmark:v19];
            v21 = v20;
            if (v20)
            {
              v22 = [(WebBookmarkCollection *)self _bookmark:v12 hasPriorityOverBookmarkForDeduplication:v19 prioritizeBookmarksWithSyncData:v33 davHomePath:v31];
              if (v33)
              {
                if ([(WebBookmarkCollection *)self _bookmarkHasSyncedToServer:v19]&& v22)
                {
                  [v17 addDuplicateBookmarkToKeep:v19];
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

- (BOOL)_bookmark:(id)a3 isDuplicateOfBookmark:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 isFolder];
  if (v7 != [v5 isFolder] || (v8 = objc_msgSend(v6, "identifier"), v8 == objc_msgSend(v5, "identifier")) || !objc_msgSend(v6, "isSyncable") || !objc_msgSend(v5, "isSyncable"))
  {
    v14 = 0;
    goto LABEL_8;
  }

  v9 = [v6 serverID];
  v10 = [v9 _wb_stringByStandardizingDAVServerID];
  v11 = [v5 serverID];
  v12 = [v11 _wb_stringByStandardizingDAVServerID];
  v13 = [v10 isEqualToString:v12];

  if ((v13 & 1) == 0)
  {
    v16 = [v5 title];
    v17 = [v6 title];
    v18 = v17;
    if (v17 == v16)
    {
    }

    else
    {
      v19 = [v6 title];
      v20 = [v5 title];
      v21 = [v19 isEqualToString:v20];

      if ((v21 & 1) == 0)
      {
        v14 = 0;
LABEL_20:

        goto LABEL_8;
      }
    }

    v22 = [v5 address];
    if ([v6 isFolder])
    {
      v14 = 1;
    }

    else
    {
      v23 = [v6 address];
      if (v22 == v23)
      {
        v14 = 1;
      }

      else
      {
        v24 = [v6 address];
        v14 = [v24 isEqualToString:v22];
      }
    }

    goto LABEL_20;
  }

  v14 = 1;
LABEL_8:

  return v14;
}

- (id)_fetchBookmarkIDsInFolder:(int)a3 onlyFolders:(BOOL)a4 includingHiddenBookmarks:(BOOL)a5 sortedByOrderIndex:(BOOL)a6
{
  v6 = a6;
  v9 = &stru_288259858;
  v10 = @" AND type = 1";
  if (!a4)
  {
    v10 = &stru_288259858;
  }

  if (!a5)
  {
    v9 = @" AND hidden = 0";
  }

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"parent = ?%@%@", v10, v9];
  if (v6)
  {
    v12 = 2;
  }

  else
  {
    v12 = 1;
  }

  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v16, [(WebBookmarkCollection *)self _selectBookmarksWhere:v11 returnType:v12]);
  sqlite3_bind_int(v17, 1, a3);
  v13 = [MEMORY[0x277CBEB18] array];
  while (sqlite3_step(v17) == 100)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithInt:{sqlite3_column_int(v17, 0)}];
    [v13 addObject:v14];
  }

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v16);

  return v13;
}

- (BOOL)_mergeBookmark:(id)a3 withOriginalBookmark:(id)a4 prioritizeOriginalBookmarkAttributes:(BOOL)a5 generateChangesIfNeeded:(BOOL)a6
{
  v6 = a6;
  v40 = a5;
  v9 = a3;
  v10 = a4;
  if (![v10 specialID])
  {
    v12 = [v10 isSelectedFavoritesFolder];
    v39 = [v12 BOOLValue];

    if ([v9 isFolder])
    {
      goto LABEL_7;
    }

    v13 = [v10 title];
    v14 = [v9 title];
    v15 = [v13 isEqualToString:v14];

    if (v15)
    {
      goto LABEL_7;
    }

    v16 = [v9 title];
    v17 = [v16 length];

    v18 = [v10 title];
    v19 = [v18 length];

    if (v17 - 1 >= v19)
    {
LABEL_7:
      v21 = 0;
    }

    else
    {
      v20 = [v9 title];
      [v10 setTitle:v20];

      v21 = 1;
    }

    if (([v9 isFolder] & 1) == 0)
    {
      v22 = [v10 address];
      v23 = [v9 address];
      v24 = [v22 isEqualToString:v23];

      if ((v24 & 1) == 0)
      {
        v25 = [v9 address];
        [v10 setAddress:v25];

        v21 = 1;
      }
    }

    v26 = [v10 extraAttributes];
    v27 = [v9 extraAttributes];
    v28 = [v26 count];
    v29 = [v27 count];
    if (v28 || !v29)
    {
      if (v28 && !v29)
      {
        goto LABEL_17;
      }

      if (!v29 || !v28 || ([v27 isEqualToDictionary:v26] & 1) != 0)
      {
LABEL_18:
        v31 = [v10 localAttributes];
        v32 = [v9 localAttributes];
        v33 = [v31 count];
        v34 = [v32 count];
        if (v33 || !v34)
        {
          if (v33 && !v34)
          {
            goto LABEL_24;
          }

          if (!v34 || !v33 || ([v32 isEqualToDictionary:v31] & 1) != 0)
          {
            goto LABEL_25;
          }

          if (v40)
          {
            v35 = [v32 mutableCopy];
            [v35 addEntriesFromDictionary:v31];
          }

          else
          {
            v35 = [v31 mutableCopy];
            [v35 addEntriesFromDictionary:v32];
          }

          [v10 setLocalAttributes:v35];
        }

        else
        {
          v35 = [v9 localAttributes];
          [v10 setLocalAttributes:v35];
        }

LABEL_24:
        v21 = 1;
LABEL_25:
        [v10 cleanUpRedundantPreviewText];
        v11 = [(WebBookmarkCollection *)self _saveBookmark:v10 withSpecialID:0 updateGenerationIfNeeded:v21 & v6];
        v36 = [v10 identifier];
        v37 = [v10 isSelectedFavoritesFolder];
        -[WebBookmarkCollection updateSelectedFavoritesFolderWithBookmarkID:wasFavoritesFolder:isFavoritesFolder:](self, "updateSelectedFavoritesFolderWithBookmarkID:wasFavoritesFolder:isFavoritesFolder:", v36, v39, [v37 BOOLValue]);

        goto LABEL_26;
      }

      if (v40)
      {
        v30 = [v27 mutableCopy];
        [v30 addEntriesFromDictionary:v26];
      }

      else
      {
        v30 = [v26 mutableCopy];
        [v30 addEntriesFromDictionary:v27];
      }

      [v10 setExtraAttributes:v30];
    }

    else
    {
      v30 = [v9 extraAttributes];
      [v10 setExtraAttributes:v30];
    }

LABEL_17:
    v21 = 1;
    goto LABEL_18;
  }

  v11 = 1;
LABEL_26:

  return v11;
}

- (void)updateSelectedFavoritesFolderWithBookmarkID:(int)a3 wasFavoritesFolder:(BOOL)a4 isFavoritesFolder:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v9 = +[WBFeatureManager sharedFeatureManager];
  v10 = [v9 favoritesFolderSelectionShouldSync];

  if ((v6 || v5) & v10)
  {
    if (!v6 || v5 || (-[WebBookmarkCollection favoritesFolder](self, "favoritesFolder"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 identifier], v11, v12 == a3))
    {
      if (v5)
      {
        v13 = a3;
      }

      else
      {
        v13 = 0;
      }

      [(WebBookmarkCollection *)self setFavoritesFolderIdentifier:v13 postChangeNotification:0];
    }
  }
}

- (id)syncableBookmarksIDsInFolderWithBookmarkID:(int)a3
{
  [(WebBookmarkCollection *)self logRegulatoryBookmarksRead];
  v5 = [MEMORY[0x277CBEB58] set];
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v10, self->_db, "SELECT id from bookmarks where parent = ? AND deleted = 0 AND syncable = 1");
  if (v12)
  {
    sqlite3_bind_int(v11, 1, a3);
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

- (unsigned)orderIndexOfBookmark:(id)a3 withSyncPosition:(id)a4 inFolderWithID:(int)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(WebBookmarkCollection *)self maintainsSyncMetadata];
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v17, self->_db, "SELECT sync_data, order_index FROM bookmarks WHERE special_id = 0 AND syncable = 1 AND deleted = 0 AND parent = ? AND id != ? ORDER BY order_index DESC");
    sqlite3_bind_int(v18, 1, a5);
    sqlite3_bind_int(v18, 2, [v8 identifier]);
    v12 = 0;
    while (sqlite3_step(v18) == 100)
    {
      v13 = WBDataFromNullableColumn(v18, 0);
      v14 = [WBBookmarkSyncData positionFromContentsOfData:v13];

      v12 = v14;
      if ([v14 compare:v9] == -1)
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
    v15 = [(WebBookmarkCollection *)self orderIndexOfBookmark:v8];
  }

  return v15;
}

- (id)_positionBeforeBookmark:(id)a3
{
  v4 = a3;
  v5 = -[WebBookmarkCollection _positionBeforeOrderIndex:inFolderWithID:](self, "_positionBeforeOrderIndex:inFolderWithID:", -[WebBookmarkCollection orderIndexOfBookmark:](self, "orderIndexOfBookmark:", v4), [v4 parentID]);

  return v5;
}

- (id)_positionBeforeOrderIndex:(unsigned int)a3 inFolderWithID:(int)a4
{
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v9, self->_db, "SELECT sync_data FROM bookmarks WHERE special_id = 0 AND syncable = 1 AND deleted = 0 AND parent = ? AND order_index < ? ORDER BY order_index DESC");
  sqlite3_bind_int(v10, 1, a4);
  sqlite3_bind_int(v10, 2, a3);
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

- (id)_positionAfterBookmark:(id)a3
{
  v4 = a3;
  v5 = -[WebBookmarkCollection _positionAfterOrderIndex:inFolderWithID:](self, "_positionAfterOrderIndex:inFolderWithID:", -[WebBookmarkCollection orderIndexOfBookmark:](self, "orderIndexOfBookmark:", v4), [v4 parentID]);

  return v5;
}

- (id)_positionAfterOrderIndex:(unsigned int)a3 inFolderWithID:(int)a4
{
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v9, self->_db, "SELECT sync_data FROM bookmarks WHERE special_id = 0 AND syncable = 1 AND deleted = 0 AND parent = ? AND order_index > ? ORDER BY order_index ASC");
  sqlite3_bind_int(v10, 1, a4);
  sqlite3_bind_int(v10, 2, a3);
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

- (id)generateSyncPositionForBookmark:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(WebBookmarkCollection *)self maintainsSyncMetadata])
  {
    v5 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v14 = 138543362;
      v15 = v4;
      _os_log_impl(&dword_272C20000, v5, OS_LOG_TYPE_INFO, "Generating position for bookmark %{public}@", &v14, 0xCu);
    }

    v6 = [(WebBookmarkCollection *)self _positionBeforeBookmark:v4];
    v7 = [(WebBookmarkCollection *)self _positionAfterBookmark:v4];
    v8 = [objc_opt_class() deviceIdentifierForCloudKitWithCollectionType:-[WBCollectionConfiguration collectionType](self->_configuration generateIfNeeded:{"collectionType"), 1}];
    v9 = [v8 UUID];
    v10 = [v9 UUIDString];

    v11 = [MEMORY[0x277D49E80] positionBetweenPosition:v6 andPosition:v7 withDeviceIdentifier:v10 changeID:{-[WebBookmarkCollection nextDatabaseSyncChangeID](self, "nextDatabaseSyncChangeID")}];
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

- (BOOL)saveDatabaseSyncData:(id)a3
{
  v4 = [a3 encodedDatabaseSyncData];
  LOBYTE(self) = [(WebBookmarkCollection *)self setSyncData:v4 forKey:@"BASyncData"];

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

- (BOOL)updateDatabaseSyncDataUsingBlock:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__WebBookmarkCollection_updateDatabaseSyncDataUsingBlock___block_invoke;
  v7[3] = &unk_279E762E0;
  v7[4] = self;
  v8 = v4;
  v5 = v4;
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

- (id)modifiedSyncingAttributesForBookmark:(id)a3
{
  v4 = a3;
  v5 = [(WebBookmarkCollection *)self allSyncingAttributesForBookmark:v4];
  v6 = [v5 mutableCopy];

  v7 = +[WebBookmark modifiedAttributesToFieldNames];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__WebBookmarkCollection_modifiedSyncingAttributesForBookmark___block_invoke;
  v11[3] = &unk_279E76330;
  v8 = v4;
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

- (id)allSyncingAttributesForBookmark:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v6 = [v4 syncState];
  v7 = v6;
  if (!v6)
  {
    v7 = [MEMORY[0x277CBEB68] null];
  }

  [v5 setObject:v7 forKeyedSubscript:@"Deleted"];
  if (!v6)
  {
  }

  if ([v6 integerValue] != 1)
  {
    v8 = [v4 parentID];
    if (v8 == [(WebBookmarkCollection *)self bookmarkIDWithSpecialID:6])
    {
      v9 = 0;
    }

    else
    {
      v9 = [(WebBookmarkCollection *)self _serverIDForBookmarkID:v8 generateIfNeeded:1];
    }

    v10 = [v4 minimumSyncAPIVersion];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = &unk_288269508;
    }

    [v5 setObject:v12 forKeyedSubscript:@"MinimumAPIVersion"];

    if (([v4 isFolder] & 1) != 0 || !objc_msgSend(v4, "isPinned"))
    {
      v18 = [v4 title];
      v14 = v18;
      if (v18)
      {
        v17 = 0;
        v16 = 0;
        v15 = 1;
        v13 = v18;
      }

      else
      {
        v13 = [MEMORY[0x277CBEB68] null];
        v17 = 0;
        v14 = 0;
        v15 = 1;
        v16 = 1;
      }
    }

    else
    {
      v13 = [v4 pinnedTitle];
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 1;
    }

    [v5 setObject:v13 forKeyedSubscript:@"Title"];
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
        v19 = [(WebBookmarkCollection *)self syncDataForBookmark:v4];
        v20 = [v19 positionDictionaryRepresentation];
        v21 = v20;
        if (!v20)
        {
          v21 = [MEMORY[0x277CBEB68] null];
        }

        [v5 setObject:v21 forKeyedSubscript:@"Position"];
        if (!v20)
        {
        }

        v22 = v9;
        if (!v9)
        {
          v22 = [MEMORY[0x277CBEB68] null];
        }

        [v5 setObject:v22 forKeyedSubscript:@"ParentFolder"];
        if (!v9)
        {
        }

        v23 = -[WebBookmarkCollection serverIDForBookmarkID:](self, "serverIDForBookmarkID:", [v4 lastSelectedChildID]);
        v24 = v23;
        if (!v23)
        {
          v24 = [MEMORY[0x277CBEB68] null];
        }

        [v5 setObject:v24 forKeyedSubscript:@"LastSelectedTab"];
        if (!v23)
        {
        }

        v25 = [v4 extraAttributes];
        v26 = [v25 objectForKeyedSubscript:@"SymbolImageName"];
        v27 = v26;
        if (!v26)
        {
          v27 = [MEMORY[0x277CBEB68] null];
        }

        [v5 setObject:v27 forKeyedSubscript:@"SymbolImageName"];
        if (!v26)
        {
        }

        v28 = [v4 extraAttributes];
        v29 = [v28 objectForKeyedSubscript:@"CustomFavoritesFolderServerID"];
        v30 = v29;
        if (!v29)
        {
          v30 = [MEMORY[0x277CBEB68] null];
        }

        [v5 setObject:v30 forKeyedSubscript:@"CustomFavoritesFolderServerID"];
        if (!v29)
        {
        }

        v31 = [v4 startPageSectionsDataRepresentation];
        v32 = v31;
        if (!v31)
        {
          v32 = [MEMORY[0x277CBEB68] null];
        }

        [v5 setObject:v32 forKeyedSubscript:@"CustomStartPageSectionsData"];
        if (!v31)
        {
        }

        v33 = [v4 UUID];
        if (v33)
        {
          v34 = [MEMORY[0x277CCAA00] defaultManager];
          v35 = [v34 safari_startPageBackgroundImageFileURLForIdentifier:v33];

          v36 = [v35 checkResourceIsReachableAndReturnError:0];
          v37 = v35;
          if ((v36 & 1) == 0)
          {
            v37 = [MEMORY[0x277CBEB68] null];
          }

          [v5 setObject:v37 forKeyedSubscript:@"BackgroundImage"];
          if ((v36 & 1) == 0)
          {
          }
        }

        v38 = [v4 extraAttributes];
        v39 = [v38 safari_numberForKey:@"com.apple.bookmarks.SelectedFavoritesFolder"];
        v40 = v39;
        if (!v39)
        {
          v40 = [MEMORY[0x277CBEB68] null];
        }

        [v5 setObject:v40 forKeyedSubscript:@"IsSelectedFavoritesFolder"];
        if (!v39)
        {
        }

        if (([v4 isFolder] & 1) != 0 || !objc_msgSend(v4, "isPinned"))
        {
          v41 = [v4 address];
        }

        else
        {
          v41 = [v4 pinnedAddress];
        }

        v42 = v41;

        v43 = [MEMORY[0x277CBEBC0] URLWithString:v42];
        v44 = v43;
        if (!v43)
        {
          v44 = [MEMORY[0x277CBEB68] null];
        }

        [v5 setObject:v44 forKeyedSubscript:@"URL"];
        if (!v43)
        {
        }

        v45 = [v4 dateAdded];
        v46 = v45;
        if (!v45)
        {
          v46 = [MEMORY[0x277CBEB68] null];
        }

        [v5 setObject:v46 forKeyedSubscript:@"DateAdded"];
        if (!v45)
        {
        }

        v47 = [v4 dateLastViewed];
        v48 = v47;
        if (!v47)
        {
          v48 = [MEMORY[0x277CBEB68] null];
        }

        [v5 setObject:v48 forKeyedSubscript:@"DateLastViewed"];
        if (!v47)
        {
        }

        v49 = [v4 previewText];
        v50 = v49;
        if (!v49)
        {
          v50 = [MEMORY[0x277CBEB68] null];
        }

        [v5 setObject:v50 forKeyedSubscript:@"PreviewText"];
        if (!v49)
        {
        }

        v51 = [v4 readingListIconURL];
        v52 = v51;
        if (!v51)
        {
          v52 = [MEMORY[0x277CBEB68] null];
        }

        [v5 setObject:v52 forKeyedSubscript:@"ImageURL"];
        if (!v51)
        {
        }

        v53 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v4, "isPinned")}];
        [v5 setObject:v53 forKeyedSubscript:@"IsPinned"];

        v54 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v4, "showIconOnly")}];
        [v5 setObject:v54 forKeyedSubscript:@"ShowIconOnly"];

        v55 = [v4 creationDeviceIdentifier];
        v56 = v55;
        if (!v55)
        {
          v56 = [MEMORY[0x277CBEB68] null];
        }

        [v5 setObject:v56 forKeyedSubscript:@"CreationDeviceIdentifier"];
        if (!v55)
        {
        }

        v57 = [v4 deviceTypeIdentifier];
        v58 = v57;
        if (!v57)
        {
          v58 = [MEMORY[0x277CBEB68] null];
        }

        [v5 setObject:v58 forKeyedSubscript:@"DeviceTypeIdentifier"];
        if (!v57)
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

  return v5;
}

- (id)_syncDataForBookmarkID:(int)a3
{
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v6, self->_db, "SELECT sync_data FROM bookmarks WHERE id = ?");
  sqlite3_bind_int(v7, 1, a3);
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

- (id)_syncDataBlobForBookmarkServerID:(id)a3
{
  v4 = a3;
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v7, self->_db, "SELECT sync_data FROM bookmarks WHERE server_id = ?");
  sqlite3_bind_text(v8, 1, [v4 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
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

- (id)syncDataForBookmark:(id)a3
{
  v4 = a3;
  v5 = [v4 serverID];
  if (v5)
  {
    [(WebBookmarkCollection *)self _syncDataForBookmarkServerID:v5];
  }

  else
  {
    -[WebBookmarkCollection syncDataForBookmarkID:](self, "syncDataForBookmarkID:", [v4 identifier]);
  }
  v6 = ;

  return v6;
}

- (id)_syncDataForBookmarkServerID:(id)a3
{
  v3 = [(WebBookmarkCollection *)self _syncDataBlobForBookmarkServerID:a3];
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

- (BOOL)updateSyncDataForBookmark:(id)a3 usingBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (-[WebBookmarkCollection maintainsSyncMetadata](self, "maintainsSyncMetadata") && ([v6 isSyncable] & 1) != 0)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = [(WebBookmarkCollection *)self syncDataForBookmark:v6];
    v10 = v7[2](v7, v9);

    if (v10)
    {
      WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v17, self->_db, "UPDATE bookmarks SET sync_data = ? WHERE server_id = ?");
      v11 = [v10 encodedBookmarkSyncData];
      bindNullableDataToSQLStatement(v18, 1, v11);
      v12 = v18;
      v13 = [v6 serverID];
      sqlite3_bind_text(v12, 2, [v13 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);

      v14 = sqlite3_step(v18);
      v15 = v14 == 101;
      if (v14 == 101)
      {
        [v6 _setSyncData:v11 cachedWBSyncData:v10];
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

- (BOOL)updateSyncDataForBookmarkWithRecordName:(id)a3 excludeDeletedBookmarks:(BOOL)a4 usingBlock:(id)a5
{
  v8 = a3;
  v9 = a5;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __100__WebBookmarkCollection_updateSyncDataForBookmarkWithRecordName_excludeDeletedBookmarks_usingBlock___block_invoke;
  v13[3] = &unk_279E76380;
  v13[4] = self;
  v14 = v8;
  v16 = a4;
  v15 = v9;
  v10 = v9;
  v11 = v8;
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

- (void)enumerateDescendantsOfBookmark:(id)a3 usingBlock:(id)a4
{
  v6 = a4;
  v7 = [a3 identifier];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__WebBookmarkCollection_enumerateDescendantsOfBookmark_usingBlock___block_invoke;
  v9[3] = &unk_279E763A8;
  v8 = v6;
  v10 = v8;
  [(WebBookmarkCollection *)self _enumerateContentsOfBookmarkFolder:v7 includingSubfolders:1 usingBlock:v9];
}

- (BOOL)markAttributesAsModified:(unint64_t)a3 forBookmark:(id)a4
{
  v6 = a4;
  [v6 markAttributesAsModified:a3];
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v8, self->_db, "UPDATE bookmarks SET modified_attributes = modified_attributes | ? WHERE id = ?");
  sqlite3_bind_int64(v9, 1, [v6 modifiedAttributes]);
  sqlite3_bind_int(v9, 2, [v6 identifier]);
  LOBYTE(self) = sqlite3_step(v9) == 101;
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v8);

  return self;
}

- (BOOL)updateBookmarkSyncPositionIfNeeded:(id)a3
{
  v4 = a3;
  if (-[WebBookmarkCollection maintainsSyncMetadata](self, "maintainsSyncMetadata") && ([v4 isSyncable] & 1) != 0)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __60__WebBookmarkCollection_updateBookmarkSyncPositionIfNeeded___block_invoke;
    v7[3] = &unk_279E76418;
    v7[4] = self;
    v8 = v4;
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
  v3 = [v2 integerValue];

  return v3;
}

- (void)didSkipProfileWithGeneration:(int64_t)a3
{
  v5 = [(WebBookmarkCollection *)self syncStringForKey:@"FirstSkippedProfileGeneration"];
  v10 = v5;
  if (!v5 || (v6 = [v5 integerValue] <= a3, v7 = v10, !v6))
  {
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    v9 = [v8 stringValue];
    [(WebBookmarkCollection *)self syncSetString:v9 forKey:@"FirstSkippedProfileGeneration"];

    v7 = v10;
  }
}

- (int64_t)firstSkippedProfileDeviceGeneration
{
  v2 = [(WebBookmarkCollection *)self syncStringForKey:@"FirstSkippedProfileDeviceGeneration"];
  v3 = [v2 integerValue];

  return v3;
}

- (void)didSkipProfileDeviceWithGeneration:(int64_t)a3
{
  v5 = [(WebBookmarkCollection *)self syncStringForKey:@"FirstSkippedProfileDeviceGeneration"];
  v10 = v5;
  if (!v5 || (v6 = [v5 integerValue] <= a3, v7 = v10, !v6))
  {
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    v9 = [v8 stringValue];
    [(WebBookmarkCollection *)self syncSetString:v9 forKey:@"FirstSkippedProfileDeviceGeneration"];

    v7 = v10;
  }
}

- (void)saveMinimumAPISyncVersionOfDescendantItemsForItem:(id)a3 includingAncestorItem:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  if (v4)
  {
    [v6 markAttributesAsModified:0x8000];
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
  v5 = [(WebBookmarkList *)v4 bookmarkArray];
  v6 = [v5 safari_filterObjectsUsingBlock:&__block_literal_global_1141];

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

- (id)_bookmarkDictionaryForSqliteRow:(sqlite3_stmt *)a3 recursive:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v9 = [MEMORY[0x277CBEB38] dictionary];
  v10 = sqlite3_column_int(a3, 0);
  if (v10)
  {
    v11 = @"WebBookmarkTypeList";
  }

  else
  {
    v11 = @"WebBookmarkTypeLeaf";
  }

  [v9 setObject:v11 forKey:@"WebBookmarkType"];
  v12 = sqlite3_column_text(a3, 1);
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
    [v9 setObject:v15 forKey:@"Title"];
  }

  else
  {
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v15 forKey:@"title"];
    [v9 setObject:v16 forKey:@"URIDictionary"];
  }

  v17 = sqlite3_column_text(a3, 2);
  if (!v10 && v17)
  {
    v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v17];
    [v9 setObject:v18 forKey:@"URLString"];
LABEL_13:

    goto LABEL_14;
  }

  if (!v10 || !v6)
  {
LABEL_14:
    v19 = sqlite3_column_text(a3, 4);
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
    [v9 setObject:v22 forKey:@"WebBookmarkUUID"];
    goto LABEL_18;
  }

  v24 = sqlite3_column_int(a3, 3);
  v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([(WebBookmarkCollection *)self _addChildrenOfID:v24 toCollection:v18 recursive:1 error:a5])
  {
    [v9 setObject:v18 forKey:@"Children"];
    goto LABEL_13;
  }

  v22 = v9;
  v9 = 0;
LABEL_18:

  return v9;
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

- (BOOL)_mergeChildrenOfID:(int)a3 referencingBase:(id)a4 error:(id *)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v25 = v6;
  v8 = [v6 objectForKey:@"Children"];
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
          v16 = [(WebBookmarkCollection *)self _syncAdd:v14 toParent:a3 withOrderIndex:v10 error:&v30];
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
  if (a5)
  {
    v21 = v17;
    *a5 = v17;
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

- (BOOL)mergeWithBookmarksDictionary:(id)a3 clearHidden:(BOOL)a4 clearSyncData:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v8 = a4;
  v10 = a3;
  v11 = @"DELETE FROM bookmarks WHERE id != 0 AND hidden = 0 AND hidden_ancestor_count = 0 AND syncable = 1";
  if (v8)
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
    if (v8)
    {
      [(WebBookmarkCollection *)self clearAllReadingListArchives];
    }

    if ([(WebBookmarkCollection *)self _mergeChildrenOfID:0 referencingBase:v10 error:a6])
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
            if ([(WebBookmarkCollection *)self _incrementGeneration]&& (!v7 || [(WebBookmarkCollection *)self _clearAllSyncData]))
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
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v2 = [objc_opt_class() inMemoryChangesFileURL];
  [v3 removeItemAtURL:v2 error:0];
}

- (BOOL)_syncPropertyExistsForKey:(id)a3
{
  v4 = a3;
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v7, self->_db, "SELECT COUNT(*) FROM sync_properties WHERE key = ?");
  v5 = (v9 & 1) != 0 && (sqlite3_bind_text(v8, 1, [v4 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL), sqlite3_step(v8) == 100) && sqlite3_column_int(v8, 0) > 0;
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v7);

  return v5;
}

- (BOOL)_deleteSyncPropertyForKey:(id)a3
{
  v4 = a3;
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v7, self->_db, "DELETE FROM sync_properties WHERE key = ?");
  if (v9)
  {
    sqlite3_bind_text(v8, 1, [v4 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
    v5 = sqlite3_step(v8) == 101;
  }

  else
  {
    v5 = 0;
  }

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v7);

  return v5;
}

- (BOOL)_syncSetString:(id)a3 forKey:(id)a4 updatedExistingKey:(BOOL *)a5
{
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __72__WebBookmarkCollection_Sync___syncSetString_forKey_updatedExistingKey___block_invoke;
    v20[3] = &__block_descriptor_40_e8_v12__0B8l;
    v20[4] = a5;
    v10 = MEMORY[0x2743D6830](v20);
    v11 = [(WebBookmarkCollection *)self _syncPropertyExistsForKey:v9];
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
      sqlite3_bind_text(v18, 1, [v8 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
      sqlite3_bind_text(v18, 2, [v9 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
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

  v14 = [(WebBookmarkCollection *)self _deleteSyncPropertyForKey:v9];
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

- (id)syncStringForKey:(id)a3
{
  v4 = a3;
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v7, self->_db, "SELECT value FROM sync_properties WHERE key = ?");
  if ((v9 & 1) != 0 && (sqlite3_bind_text(v8, 1, [v4 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL), sqlite3_step(v8) == 100))
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

- (BOOL)setSyncData:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [(WebBookmarkCollection *)self syncDataForKey:v7];

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
      v10 = [v6 length];
      sqlite3_bind_blob(v15, 1, [v6 bytes], v10, 0xFFFFFFFFFFFFFFFFLL);
      sqlite3_bind_text(v15, 2, [v7 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
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

  v11 = [(WebBookmarkCollection *)self _deleteSyncPropertyForKey:v7];
LABEL_13:

  return v11;
}

- (id)syncDataForKey:(id)a3
{
  v4 = a3;
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v8, self->_db, "SELECT value FROM sync_properties WHERE key = ?");
  if ((v10 & 1) != 0 && (sqlite3_bind_text(v9, 1, [v4 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL), sqlite3_step(v9) == 100))
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

- (id)allSyncDataForKeysWithPrefix:(id)a3
{
  v4 = a3;
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v12, self->_db, "SELECT key, value FROM sync_properties WHERE key = ?");
  if (v14)
  {
    v5 = v13;
    v6 = [v4 stringByAppendingString:@"%"];
    sqlite3_bind_text(v5, 1, [v6 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);

    v7 = [MEMORY[0x277CBEB38] dictionary];
    while (sqlite3_step(v13) == 100)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{sqlite3_column_text(v13, 0)}];
      v9 = sqlite3_column_blob(v13, 1);
      v10 = [MEMORY[0x277CBEA90] dataWithBytes:v9 length:{sqlite3_column_bytes(v13, 1)}];
      [v7 setObject:v10 forKeyedSubscript:v8];
    }
  }

  else
  {
    v7 = MEMORY[0x277CBEC10];
  }

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v12);

  return v7;
}

- (BOOL)removeAllSyncDataForKeyWithPrefix:(id)a3
{
  v4 = a3;
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v9, self->_db, "DELETE FROM sync_properties WHERE key LIKE ?");
  if (v11)
  {
    v5 = v10;
    v6 = [v4 stringByAppendingString:@"%"];
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
        v8 = [MEMORY[0x277CCACC8] callStackSymbols];
        [(WebBookmarkCollection(Sync) *)v8 beginSyncTransaction];
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
  block[4] = a1;
  dispatch_barrier_async(v4, block);
}

+ (void)holdLockSync:(const void *)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = WBS_LOG_CHANNEL_PREFIXBookmarkSync();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v10 = a3;
    _os_log_impl(&dword_272C20000, v5, OS_LOG_TYPE_DEFAULT, "Hold lock sync for requestor %p", buf, 0xCu);
  }

  v6 = syncLockQueue();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__WebBookmarkCollection_Sync__holdLockSync___block_invoke;
  v8[3] = &__block_descriptor_48_e5_v8__0l;
  v8[4] = a1;
  v8[5] = a3;
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

+ (void)unholdLockSync:(const void *)a3
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = WBS_LOG_CHANNEL_PREFIXBookmarkSync();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v6 = a3;
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

- (void)_setSyncNotificationType:(int64_t)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v10 = a3;
    _os_log_impl(&dword_272C20000, v4, OS_LOG_TYPE_DEFAULT, "Setting sync notification type: %ld", buf, 0xCu);
  }

  v5 = objc_opt_class();
  v6 = syncLockQueue();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__WebBookmarkCollection_Sync___setSyncNotificationType___block_invoke;
  v8[3] = &__block_descriptor_48_e5_v8__0lu32l8;
  v8[4] = v5;
  v8[5] = a3;
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
  v2 = [a1 _syncFlags];
  if ([v2 syncAllowed])
  {
    if ([v2 syncLockFileDescriptor] == -1)
    {
      if ([v2 syncNotificationType] == 1)
      {
        v3 = _os_activity_create(&dword_272C20000, "Request sync client trigger sync", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
        os_activity_scope_enter(v3, &state);
        v4 = WBS_LOG_CHANNEL_PREFIXBookmarks();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          *v6 = 0;
          _os_log_impl(&dword_272C20000, v4, OS_LOG_TYPE_DEFAULT, "Requesting a CloudKit bookmarks sync due to local changes", v6, 2u);
        }

        v5 = [MEMORY[0x277D49B18] sharedProxy];
        [v5 userDidUpdateBookmarkDatabase];

        os_activity_scope_leave(&state);
      }
    }

    else
    {
      [v2 setPostSyncNotificationWhenUnlocking:1];
    }
  }
}

- (BOOL)containsOnlyStockBookmarks
{
  v3 = [[WebBookmarkListQuery alloc] initWithBookmarksWhere:@"special_id == 0 AND id != 0 AND deleted = 0" orderBy:0 usingFilter:0];
  v4 = [[WebBookmarkList alloc] initWithQuery:v3 skipOffset:0 collection:self];
  v5 = [(WebBookmarkList *)v4 bookmarkCount];
  if (v5)
  {
    v6 = 0;
    v7 = 0;
    while (1)
    {
      v8 = [(WebBookmarkList *)v4 bookmarkAtIndex:v7];
      v9 = [v8 localAttributes];
      if (([v9 wb_BOOLForKey:@"com.apple.bookmarks.IsBuiltinBookmark"] & 1) == 0 && (objc_msgSend(v9, "wb_BOOLForKey:", @"com.apple.bookmarks.IsBuiltinDeviceBookmark") & 1) == 0 && (objc_msgSend(v9, "wb_BOOLForKey:", @"com.apple.bookmarks.IsCarrierBookmark") & 1) == 0)
      {
        break;
      }

      v7 = (v7 + 1);
      v6 = v7 >= v5;
      if (v5 == v7)
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