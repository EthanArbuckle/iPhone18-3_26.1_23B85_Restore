@interface WFDatabase
+ (WFDatabase)defaultDatabase;
+ (id)appDescriptorFromData:(id)a3;
+ (id)createDatabaseForTesting;
+ (id)disabledAutoShortcutsFromData:(id)a3;
+ (id)identifierForAppDescriptor:(id)a3;
+ (void)setDefaultDatabase:(id)a3;
- (BOOL)_moveReferences:(id)a3 toIndexes:(id)a4 ofCollectionID:(id)a5 error:(id *)a6;
- (BOOL)coherenceSyncEnabled;
- (BOOL)deleteAllBookmarksForWorkflowID:(id)a3 error:(id *)a4;
- (BOOL)deleteAutoShortcutsPreferencesForIdentifier:(id)a3 error:(id *)a4;
- (BOOL)deleteReference:(id)a3 error:(id *)a4;
- (BOOL)deleteReference:(id)a3 tombstone:(BOOL)a4 error:(id *)a5;
- (BOOL)deleteWorkflowRecordWithIdentifier:(id)a3 error:(id *)a4;
- (BOOL)handleDeletedFolderRecordWithIdentifier:(id)a3 error:(id *)a4;
- (BOOL)handleFetchedFolderRecordWithIdentifier:(id)a3 name:(id)a4 icon:(unsigned __int16)a5 encryptedSchemaVersion:(int64_t)a6 cloudKitMetadata:(id)a7 error:(id *)a8;
- (BOOL)handleFetchedOrderingRecordWithIdentifier:(id)a3 shortcuts:(id)a4 folders:(id)a5 cloudKitMetadata:(id)a6 error:(id *)a7;
- (BOOL)handleUploadedWorkflowRecordWithIdentifier:(id)a3 cloudKitMetadata:(id)a4 syncHash:(int64_t)a5 encryptedSchemaVersion:(int64_t)a6 error:(id *)a7;
- (BOOL)hasConflictWithName:(id)a3;
- (BOOL)hasConflictingReferenceForWorkflowID:(id)a3;
- (BOOL)hasVisibleWorkflowsWithName:(id)a3;
- (BOOL)isAutoShortcutDisabledForAppDescriptor:(id)a3 autoShortcutIdentifier:(id)a4 error:(id *)a5;
- (BOOL)isAutoShortcutDisabledForBundleIdentifier:(id)a3 autoShortcutIdentifier:(id)a4;
- (BOOL)isAutoShortcutDisabledForBundleIdentifier:(id)a3 autoShortcutIdentifier:(id)a4 error:(id *)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)isReference:(id)a3 allowedToRunOnDomain:(id)a4;
- (BOOL)isSiriEnabledForAutoShortcutsWithAppDescriptor:(id)a3 error:(id *)a4;
- (BOOL)isSiriEnabledForAutoShortcutsWithBundleIdentifier:(id)a3;
- (BOOL)isSiriEnabledForAutoShortcutsWithBundleIdentifier:(id)a3 error:(id *)a4;
- (BOOL)isSpotlightEnabledForAutoShortcutsWithAppDescriptor:(id)a3 error:(id *)a4;
- (BOOL)isSpotlightEnabledForAutoShortcutsWithBundleIdentifier:(id)a3;
- (BOOL)isSpotlightEnabledForAutoShortcutsWithBundleIdentifier:(id)a3 error:(id *)a4;
- (BOOL)mergeAutoShortcutsPreferencesWithNewPreferences:(id)a3 error:(id *)a4;
- (BOOL)mergeAutomationsAndShortcuts;
- (BOOL)moveCollections:(id)a3 toIndex:(unint64_t)a4 ofCollectionWithIdentifier:(id)a5 error:(id *)a6;
- (BOOL)moveReferences:(id)a3 toIndex:(int64_t)a4 ofCollection:(id)a5 error:(id *)a6;
- (BOOL)moveReferences:(id)a3 toIndexes:(id)a4 ofCollection:(id)a5 error:(id *)a6;
- (BOOL)prependReferences:(id)a3 toCollection:(id)a4 error:(id *)a5;
- (BOOL)prependReferences:(id)a3 toCollectionWithType:(id)a4 error:(id *)a5;
- (BOOL)reloadRecord:(id)a3 withDescriptor:(id)a4 error:(id *)a5;
- (BOOL)removeReferences:(id)a3 fromCollectionWithIdentifier:(id)a4 error:(id *)a5;
- (BOOL)replaceWithFileAtURL:(id)a3 error:(id *)a4;
- (BOOL)saveContextOrRollback:(id)a3 error:(id *)a4;
- (BOOL)saveRecord:(id)a3 withDescriptor:(id)a4 error:(id *)a5;
- (BOOL)saveSmartPromptState:(id)a3 reference:(id)a4 error:(id *)a5;
- (BOOL)saveSmartPromptStateData:(id)a3 actionUUID:(id)a4 reference:(id)a5 error:(id *)a6;
- (BOOL)setAutoShortcutDisabledForAppDescriptor:(id)a3 autoShortcutDisabled:(BOOL)a4 autoShortcutIdentifier:(id)a5 error:(id *)a6;
- (BOOL)setCloudKitMetadata:(id)a3 forWorkflowRecordWithIdentifier:(id)a4 error:(id *)a5;
- (BOOL)setShortcutSuggestions:(id)a3 forAppWithBundleIdentifier:(id)a4 error:(id *)a5;
- (BOOL)setSiriAutoShortcutsEnablement:(BOOL)a3 forAppDescriptor:(id)a4 error:(id *)a5;
- (BOOL)setSpotlightAutoShortcutsEnablement:(BOOL)a3 forAppDescriptor:(id)a4 error:(id *)a5;
- (BOOL)setWalrusStateForTesting:(int64_t)a3 withError:(id *)a4;
- (BOOL)shouldPromptForCurrentContentItemCount:(unint64_t)a3 previousCount:(unint64_t)a4 contentOrigin:(id)a5;
- (BOOL)startObservingChangesForResult:(id)a3;
- (BOOL)updateAutoShortcutsPreferencesWithNewPreferences:(id)a3 error:(id *)a4;
- (Class)recordClassForObjectType:(unint64_t)a3;
- (NSArray)activeObjectObservers;
- (NSArray)activeResults;
- (NSString)debugDescription;
- (NSURL)exportableURL;
- (WFDatabase)initWithPersistenceMode:(unint64_t)a3 error:(id *)a4;
- (WFDatabase)initWithPersistenceMode:(unint64_t)a3 fileURL:(id)a4 error:(id *)a5;
- (WFLibrary)library;
- (id)_createWorkflowWithOptions:(id)a3 error:(id *)a4;
- (id)_syncTokenWithError:(id *)a3;
- (id)allCollectionIdentifiersForSync;
- (id)allConfiguredTriggers;
- (id)allConfiguredTriggersNeedingRunningNotifications;
- (id)allShortcutBookmarks;
- (id)allShortcutSuggestions;
- (id)allSortedTriggerEvents;
- (id)allStatesDataForReference:(id)a3 actionUUID:(id)a4;
- (id)allTrackedFilesystemNodes;
- (id)allWorkflowIdentifiersForSync;
- (id)applyConflictResolution:(id)a3;
- (id)approvalResultForContentAttributionSet:(id)a3 contentDestination:(id)a4 actionUUID:(id)a5 actionIdentifier:(id)a6 actionIndex:(unint64_t)a7 reference:(id)a8 allowedOnceStates:(id)a9;
- (id)associateWorkflowToTrigger:(id)a3 workflow:(id)a4 error:(id *)a5;
- (id)autoShortcutsPreferencesForAppDescriptor:(id)a3 error:(id *)a4;
- (id)autoShortcutsPreferencesForBundleIdentifier:(id)a3 error:(id *)a4;
- (id)autoShortcutsPreferencesForIdentifier:(id)a3 error:(id *)a4;
- (id)autoShortcutsPreferencesFromCoreDataAutoShortcutsPreferences:(id)a3;
- (id)badgeTypeForEntityIdentifier:(id)a3 error:(id *)a4;
- (id)bookmarkDataForWorkflowID:(id)a3 path:(id)a4 error:(id *)a5;
- (id)bookmarksForWorkflowID:(id)a3 error:(id *)a4;
- (id)collectionForWorkflowType:(id)a3;
- (id)collectionResultWithLibraryQuery:(id)a3;
- (id)collectionWithIdentifier:(id)a3;
- (id)collectionsForWorkflowReference:(id)a3;
- (id)collectionsWithOutOfSyncWalrusStatus;
- (id)configuredTriggerForTriggerID:(id)a3;
- (id)configuredTriggersForWorkflowID:(id)a3;
- (id)conflictForWorkflowReference:(id)a3;
- (id)conflictingReferenceForWorkflowID:(id)a3;
- (id)coreDataAutoShortcutsPreferencesForAppDescriptor:(id)a3 error:(id *)a4;
- (id)coreDataAutoShortcutsPreferencesForIdentifier:(id)a3 error:(id *)a4;
- (id)coreDataLibrary;
- (id)createBookmarkWithWorkflowID:(id)a3 path:(id)a4 bookmarkData:(id)a5 error:(id *)a6;
- (id)createFolderWithName:(id)a3 icon:(unsigned __int16)a4 error:(id *)a5;
- (id)createTriggerEventWithTriggerID:(id)a3 eventInfo:(id)a4 confirmed:(BOOL)a5 paused:(BOOL)a6 error:(id *)a7;
- (id)createTriggerWithRecord:(id)a3 error:(id *)a4;
- (id)createTriggerWithRecord:(id)a3 workflow:(id)a4 error:(id *)a5;
- (id)createWorkflowWithError:(id *)a3;
- (id)createWorkflowWithOptions:(id)a3 nameCollisionBehavior:(unint64_t)a4 error:(id *)a5;
- (id)currentDeletionAuthorizationStatusWithContentItemClassName:(id)a3 actionUUID:(id)a4 actionIdentifier:(id)a5 actionIndex:(unint64_t)a6 count:(unint64_t)a7 reference:(id)a8;
- (id)debugLegacyFolderSyncState;
- (id)defaultCoreDataAutoShortcutsPreferencesForAppDescriptor:(id)a3 error:(id *)a4;
- (id)deletionAuthorizationStatesForReference:(id)a3;
- (id)descriptorsForFetchOperation:(id)a3 state:(id *)a4 error:(id *)a5;
- (id)descriptorsForResult:(id)a3 state:(id *)a4 error:(id *)a5;
- (id)desiredSyncOperationForWorkflow:(id)a3;
- (id)duplicateNameErrorWithName:(id)a3;
- (id)duplicateReference:(id)a3 error:(id *)a4;
- (id)duplicateReference:(id)a3 newName:(id)a4 error:(id *)a5;
- (id)fetchFirstAllowedStateMatching:(id)a3 actionUUID:(id)a4 forReference:(id)a5;
- (id)folderForWorkflowReference:(id)a3;
- (id)generateAndPersistUUIDForActionWithIdentifier:(id)a3 actionIndex:(unint64_t)a4 workflowIdentifier:(id)a5;
- (id)handleFetchedWorkflowRecord:(id)a3 identifier:(id)a4 recordChangeTag:(id)a5 modificationDate:(id)a6 error:(id *)a7;
- (id)invisibleWorkflows;
- (id)latestLibrary;
- (id)latestLibraryIdentifier;
- (id)latestRunEvent;
- (id)latestWorkflowSiriRunEvent;
- (id)libraryDotRepresentation;
- (id)logRunOfWorkflow:(id)a3 atDate:(id)a4 withIdentifier:(id)a5 source:(id)a6 triggerID:(id)a7;
- (id)logRunOfWorkflow:(id)a3 withSource:(id)a4 triggerID:(id)a5;
- (id)migrateAccountStateToAppOriginIfNecessary:(id)a3 reference:(id)a4 actionUUID:(id)a5;
- (id)missingErrorForDescriptor:(id)a3;
- (id)mostRunOrLatestImportedVisibleShortcut;
- (id)objectOfClass:(Class)a3 withIdentifier:(id)a4 forKey:(id)a5 createIfNecessary:(BOOL)a6 properties:(id)a7;
- (id)performDatabaseLookupForState:(id)a3 actionUUID:(id)a4 reference:(id)a5;
- (id)performOperationWithReason:(id)a3 block:(id)a4 error:(id *)a5;
- (id)performSaveOperationWithReason:(id)a3 block:(id)a4 error:(id *)a5;
- (id)performSuggestionsOperationWithBlock:(id)a3 error:(id *)a4;
- (id)reasonsForConflictWithLocalWorkflow:(id)a3 remoteWorkflow:(id)a4;
- (id)recentlyModifiedShortcuts;
- (id)recentlyRunShortcutsWithLimit:(int64_t)a3;
- (id)recordWithDescriptor:(id)a3 properties:(id)a4 error:(id *)a5;
- (id)referenceForWorkflowID:(id)a3 includingTombstones:(BOOL)a4;
- (id)renameReference:(id)a3 to:(id)a4 error:(id *)a5;
- (id)runnableSortedTriggerEvents;
- (id)saveAutoShortcutsPreferencesForAppDescriptor:(id)a3 update:(id)a4 error:(id *)a5;
- (id)serializedParametersForIdentifier:(id)a3 error:(id *)a4;
- (id)shortcutSuggestionsForAllAppsWithLimit:(unint64_t)a3 shortcutAvailability:(unint64_t)a4 error:(id *)a5;
- (id)shortcutSuggestionsForAppWithBundleIdentifier:(id)a3 shortcutAvailability:(unint64_t)a4 error:(id *)a5;
- (id)shortcutsWithOutOfSyncWalrusStatus;
- (id)smartPromptStatesForReference:(id)a3 actionUUID:(id)a4;
- (id)sortedRunEventsForTriggerID:(id)a3;
- (id)sortedRunEventsWithSource:(id)a3 startDate:(id)a4 endDate:(id)a5;
- (id)sortedVisibleAppAssociatedWorkflows;
- (id)sortedVisibleFolders;
- (id)sortedVisibleWorkflowsByLastRunOrModificationDateWithLimit:(int64_t)a3;
- (id)sortedVisibleWorkflowsByNameWithLimit:(int64_t)a3;
- (id)sortedVisibleWorkflowsInCollection:(id)a3;
- (id)sortedVisibleWorkflowsNameContains:(id)a3 limit:(int64_t)a4;
- (id)sortedVisibleWorkflowsWithAssociatedAppBundleIdentifier:(id)a3;
- (id)sortedVisibleWorkflowsWithType:(id)a3;
- (id)sortedWorkflowsWithQuery:(id)a3;
- (id)storeTrackedFilesystemNodeWithIdentifier:(id)a3 bookmark:(id)a4 contents:(id)a5 triggers:(id)a6 isDirectory:(BOOL)a7 ignoringSubfolders:(BOOL)a8 error:(id *)a9;
- (id)suggestedFolderNameForName:(id)a3;
- (id)suggestedWorkflowNameForName:(id)a3;
- (id)syncToken;
- (id)trackedFilesystemNodeForIdentifier:(id)a3;
- (id)trackedFilesystemNodeForTriggerIdentifier:(id)a3;
- (id)trackedFilesystemNodeResultWithFetchRequest:(id)a3;
- (id)triggerEventForIdentifier:(id)a3 error:(id *)a4;
- (id)triggerEventsForTriggerIdentifier:(id)a3;
- (id)triggerResultWithFetchRequest:(id)a3;
- (id)triggerRunEventsInTheLastWeek;
- (id)uniqueVisibleReferenceForWorkflowName:(id)a3;
- (id)updateFolder:(id)a3 newName:(id)a4 newIcon:(unsigned __int16)a5 error:(id *)a6;
- (id)validateFolderName:(id)a3 forCollection:(id)a4 error:(id *)a5;
- (id)validateWorkflowName:(id)a3 forCreation:(BOOL)a4 overwriting:(BOOL)a5 error:(id *)a6;
- (id)visibleCollectionForFolderName:(id)a3;
- (id)visiblePredicate;
- (id)visibleReferencesForWorkflowIDs:(id)a3 sortBy:(unint64_t)a4 nameContaining:(id)a5 nameEqualing:(id)a6 hasAssociatedAppBundleIdentifier:(BOOL)a7 associatedAppBundleIdentifier:(id)a8 isRecentlyModified:(BOOL)a9 isRecentlyRun:(BOOL)a10 limitTo:(unint64_t)a11;
- (id)visibleReferencesForWorkflowIDs:(id)a3 sortByKeys:(id)a4 nameContaining:(id)a5 nameEqualing:(id)a6 hasAssociatedAppBundleIdentifier:(BOOL)a7 associatedAppBundleIdentifier:(id)a8 isRecentlyModified:(BOOL)a9 isRecentlyRun:(BOOL)a10 limitTo:(unint64_t)a11;
- (id)visibleReferencesForWorkflowName:(id)a3;
- (id)workflowIdentifiersUnexpectedlyMissingFromLibrary;
- (id)workflowResultWithFetchRequest:(id)a3;
- (id)workflowResultWithLibraryQuery:(id)a3;
- (id)workflowSiriRunEventWithIdentifier:(id)a3;
- (unint64_t)countForResult:(id)a3;
- (unint64_t)countOfAllVisibleWorkflows;
- (unint64_t)countOfWorkflowsInAFolder;
- (unint64_t)libraryBlobSize;
- (void)_deleteSmartPromptState:(id)a3 forReference:(id)a4;
- (void)_deleteWorkflow:(id)a3 deleteConflict:(BOOL)a4;
- (void)_saveSmartPromptStateData:(id)a3 actionUUID:(id)a4 forWorkflow:(id)a5;
- (void)_updateDeletionAuthorizationsToMatchAuthorization:(id)a3 forWorkflow:(id)a4;
- (void)_updateStatesToMatchSmartPromptState:(id)a3 forWorkflow:(id)a4;
- (void)accessStorageForDescriptor:(id)a3 forWriting:(BOOL)a4 readingRecordProperties:(id)a5 usingBlock:(id)a6 withError:(id *)a7;
- (void)addActionCountsToShortcutsIfNecessary;
- (void)addObjectObserver:(id)a3;
- (void)addPendingDeletedDescriptor:(id)a3;
- (void)addPendingInsertedDescriptor:(id)a3;
- (void)addPendingUpdatedDescriptor:(id)a3;
- (void)addSpotlightSyncHashesToShortcutsIfNecessary;
- (void)addSyncHashesToShortcutsIfNecessary;
- (void)addWorkflowIdentifiersToLibraryRootCollection:(id)a3;
- (void)clearTombstonesAndSyncState;
- (void)compactDeletionAuthorizationsIfNecessaryForWorkflowReference:(id)a3;
- (void)createSmartPromptStatesForInsertedActions:(id)a3 forReference:(id)a4 completionHandler:(id)a5;
- (void)deleteAllDeletionAuthorizationsForReference:(id)a3;
- (void)deleteAllSmartPromptStateDataForReference:(id)a3;
- (void)deleteDonationsForShortcutWithIdentifier:(id)a3;
- (void)deleteShortcutSuggestionsFromApps:(id)a3;
- (void)deleteSmartPromptState:(id)a3 forReference:(id)a4;
- (void)deleteSmartPromptStatesForDeletedActionUUIDs:(id)a3 forReference:(id)a4;
- (void)invalidateAllObjectsAndNotify;
- (void)libraryDidChange;
- (void)markTriggersAsRunAfterConfirmationIfNeeded;
- (void)mergeChangesFrom:(id)a3 into:(id)a4;
- (void)notifyResultsAboutChange:(id)a3;
- (void)object:(id)a3 didUpdateProperties:(id)a4;
- (void)objectWasCreated:(id)a3 identifier:(id)a4;
- (void)performTransactionWithReason:(id)a3 block:(id)a4 error:(id *)a5;
- (void)remoteChangeDebouncerDidFire;
- (void)remoteContextDidSave:(id)a3;
- (void)removeAllSerializedParametersForQueryName:(id)a3 error:(id *)a4;
- (void)removeObjectObserver:(id)a3;
- (void)removePermissionsWithoutAssociatedShortcuts;
- (void)removeRunEventsWithoutAssociatedShortcuts;
- (void)saveLibraryToDatabase;
- (void)saveOutputActionSmartPromtDataForWorkflowReference:(id)a3 error:(id *)a4;
- (void)saveSmartPromptStatesForInsertedAction:(id)a3 contentDestination:(id)a4 reference:(id)a5;
- (void)sendPendingChangeNotification;
- (void)setConfirmedForTriggerEventWithIdentifier:(id)a3 error:(id *)a4;
- (void)setOutcome:(int64_t)a3 forRunEvent:(id)a4;
- (void)setPausedForTriggerEventWithIdentifier:(id)a3 paused:(BOOL)a4 error:(id *)a5;
- (void)setSyncToken:(id)a3;
- (void)setTrustedToRunScripts:(BOOL)a3 forReference:(id)a4 onDomain:(id)a5;
- (void)storeSerializedParameters:(id)a3 forIdentifier:(id)a4 queryName:(id)a5 badgeType:(unint64_t)a6 error:(id *)a7;
- (void)updateAppDescriptor:(id)a3 atKey:(id)a4 actionUUID:(id)a5 actionIndex:(id)a6 actionIdentifier:(id)a7 workflowID:(id)a8;
- (void)updateLibraryWithNewWorkflowID:(id)a3 adjacentToExistingWorkflowID:(id)a4;
- (void)updateSyncTokenWithBlock:(id)a3;
- (void)updateWalrusStatus;
- (void)writeCapsuleDataAndUpdatedSyncHashToCoreDataLibrary:(id)a3;
@end

@implementation WFDatabase

- (void)clearTombstonesAndSyncState
{
  v3 = [(WFDatabase *)self context];
  v6 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__WFDatabase_Sync__clearTombstonesAndSyncState__block_invoke;
  v7[3] = &unk_1E837F978;
  v7[4] = self;
  v8 = v3;
  v4 = v3;
  [(WFDatabase *)self performTransactionWithReason:@"clear tombstones and sync state" block:v7 error:&v6];
  v5 = v6;
}

void __47__WFDatabase_Sync__clearTombstonesAndSyncState__block_invoke(uint64_t a1, void *a2)
{
  v74[1] = *MEMORY[0x1E69E9840];
  v53 = objc_autoreleasePoolPush();
  v3 = +[WFCoreDataWorkflow fetchRequest];
  v4 = [*(a1 + 32) tombstonedShortcutsPredicate];
  [v3 setPredicate:v4];

  [v3 setIncludesPropertyValues:0];
  v74[0] = @"actions";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v74 count:1];
  [v3 setRelationshipKeyPathsForPrefetching:v5];

  [v3 setFetchLimit:50];
  v6 = *(a1 + 40);
  v66 = 0;
  v55 = v3;
  v7 = [v6 executeFetchRequest:v3 error:&v66];
  v8 = v66;
  if ([v7 count])
  {
    do
    {
      v57 = v8;
      context = objc_autoreleasePoolPush();
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v65 = 0u;
      v9 = v7;
      v10 = [v9 countByEnumeratingWithState:&v62 objects:v73 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v63;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v63 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v62 + 1) + 8 * i);
            v15 = objc_autoreleasePoolPush();
            [*(a1 + 40) deleteObject:v14];
            v16 = *(a1 + 32);
            v17 = objc_alloc(MEMORY[0x1E69E0A68]);
            v18 = [v14 workflowID];
            v19 = [v17 initWithIdentifier:v18 objectType:0];
            [v16 addPendingDeletedDescriptor:v19];

            objc_autoreleasePoolPop(v15);
          }

          v11 = [v9 countByEnumeratingWithState:&v62 objects:v73 count:16];
        }

        while (v11);
      }

      [v55 setFetchOffset:{objc_msgSend(v55, "fetchOffset") + objc_msgSend(v55, "fetchLimit")}];
      v20 = *(a1 + 40);
      v61 = v57;
      v7 = [v20 executeFetchRequest:v55 error:&v61];
      v21 = v61;

      objc_autoreleasePoolPop(context);
      v8 = v21;
    }

    while ([v7 count]);
  }

  else
  {
    v21 = v8;
  }

  objc_autoreleasePoolPop(v53);
  v22 = objc_autoreleasePoolPush();
  v23 = +[WFCoreDataCollection fetchRequest];
  v24 = [objc_alloc(MEMORY[0x1E695D538]) initWithFetchRequest:v23];
  v25 = *(a1 + 40);
  v60 = v21;
  v26 = [v25 executeRequest:v24 error:&v60];
  v27 = v60;

  v28 = [v26 result];
  if (v28)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = v28;
    }

    else
    {
      v29 = 0;
    }
  }

  else
  {
    v29 = 0;
  }

  v30 = v29;

  v31 = [v30 BOOLValue];
  if ((v31 & 1) == 0)
  {
    v32 = getWFDatabaseLogObject();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v70 = "[WFDatabase(Sync) clearTombstonesAndSyncState]_block_invoke";
      v71 = 2114;
      v72 = v27;
      _os_log_impl(&dword_1CA256000, v32, OS_LOG_TYPE_ERROR, "%s Failed to perform batch deletion of collections: %{public}@", buf, 0x16u);
    }
  }

  objc_autoreleasePoolPop(v22);
  v33 = objc_autoreleasePoolPush();
  v34 = objc_alloc(MEMORY[0x1E695D560]);
  v35 = +[WFCoreDataWorkflow entity];
  v36 = [v34 initWithEntity:v35];

  v37 = [MEMORY[0x1E696AE18] predicateWithValue:1];
  [v36 setPredicate:v37];

  v67[0] = @"cloudKitRecordMetadata";
  v38 = [MEMORY[0x1E696ABC8] expressionForConstantValue:0];
  v67[1] = @"lastSyncedHash";
  v68[0] = v38;
  v68[1] = &unk_1F4A9A4C8;
  v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v68 forKeys:v67 count:2];
  [v36 setPropertiesToUpdate:v39];

  v40 = *(a1 + 40);
  v59 = v27;
  v41 = [v40 executeRequest:v36 error:&v59];
  v42 = v59;

  v43 = [v41 result];
  if (v43)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v44 = v43;
    }

    else
    {
      v44 = 0;
    }
  }

  else
  {
    v44 = 0;
  }

  v45 = v44;

  v46 = [v45 BOOLValue];
  if ((v46 & 1) == 0)
  {
    v47 = getWFDatabaseLogObject();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v70 = "[WFDatabase(Sync) clearTombstonesAndSyncState]_block_invoke";
      v71 = 2114;
      v72 = v42;
      _os_log_impl(&dword_1CA256000, v47, OS_LOG_TYPE_ERROR, "%s Failed to perform batch reset of sync state on all workflows: %{public}@", buf, 0x16u);
    }
  }

  objc_autoreleasePoolPop(v33);
  v48 = *(a1 + 32);
  v58 = v42;
  v49 = [v48 _syncTokenWithError:&v58];
  v50 = v58;

  if (v49)
  {
    [*(a1 + 40) deleteObject:v49];
  }

  v51 = v50;
  *a2 = v50;

  v52 = *MEMORY[0x1E69E9840];
}

- (id)latestLibrary
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __36__WFDatabase_Library__latestLibrary__block_invoke;
  v4[3] = &unk_1E83735B8;
  v4[4] = self;
  v2 = [(WFDatabase *)self performOperationWithReason:@"get latest library" block:v4 error:0];

  return v2;
}

- (void)removeRunEventsWithoutAssociatedShortcuts
{
  v15 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1;
  v5 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__WFDatabase_removeRunEventsWithoutAssociatedShortcuts__block_invoke;
  v6[3] = &unk_1E837A208;
  v6[4] = self;
  v6[5] = &v7;
  [(WFDatabase *)self performTransactionWithReason:@"remove extra run events" block:v6 error:&v5];
  v2 = v5;
  if ((v8[3] & 1) == 0)
  {
    v3 = getWFDatabaseLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v12 = "[WFDatabase removeRunEventsWithoutAssociatedShortcuts]";
      v13 = 2114;
      v14 = v2;
      _os_log_impl(&dword_1CA256000, v3, OS_LOG_TYPE_ERROR, "%s Unable to remove invalid run events: %{public}@", buf, 0x16u);
    }
  }

  _Block_object_dispose(&v7, 8);
  v4 = *MEMORY[0x1E69E9840];
}

void __55__WFDatabase_removeRunEventsWithoutAssociatedShortcuts__block_invoke(uint64_t a1, uint64_t a2)
{
  v8 = +[WFCoreDataRunEvent fetchRequest];
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = nil", @"shortcut"];
  [v8 setPredicate:v4];

  v5 = [objc_alloc(MEMORY[0x1E695D538]) initWithFetchRequest:v8];
  v6 = [*(a1 + 32) context];
  v7 = [v6 executeRequest:v5 error:a2];
  *(*(*(a1 + 40) + 8) + 24) = v7 != 0;
}

void __56__WFDatabase_markTriggersAsRunAfterConfirmationIfNeeded__block_invoke(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = +[WFCoreDataTrigger fetchRequest];
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = NO", @"shouldPrompt"];
  [v4 setPredicate:v5];

  v6 = [*(a1 + 32) context];
  v7 = [v6 executeFetchRequest:v4 error:a2];

  if (v7)
  {
    v18 = v4;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      do
      {
        v12 = 0;
        do
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v19 + 1) + 8 * v12);
          v14 = objc_autoreleasePoolPush();
          v15 = [v13 data];
          v16 = [WFTrigger triggerWithSerializedData:v15];

          if (([objc_opt_class() isAllowedToRunAutomatically] & 1) == 0)
          {
            [v13 setShouldPrompt:1];
          }

          objc_autoreleasePoolPop(v14);
          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    v4 = v18;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __51__WFDatabase_addActionCountsToShortcutsIfNecessary__block_invoke(uint64_t a1, uint64_t a2)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v4 = +[WFCoreDataWorkflow fetchRequest];
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = 0", @"actionCount"];
  [v4 setPredicate:v5];

  v26[0] = @"actionCount";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  [v4 setPropertiesToFetch:v6];

  v25 = @"actions";
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
  [v4 setRelationshipKeyPathsForPrefetching:v7];

  v8 = [*(a1 + 32) context];
  v9 = [v8 executeFetchRequest:v4 error:a2];

  if (v9)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
      do
      {
        v14 = 0;
        do
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v20 + 1) + 8 * v14);
          v16 = objc_autoreleasePoolPush();
          if (![v15 actionCount])
          {
            v17 = [v15 deserializedActions];
            v18 = [v17 count];

            if (v18 >= 1)
            {
              [v15 setActionCount:v18];
            }
          }

          objc_autoreleasePoolPop(v16);
          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v12);
    }
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)addSyncHashesToShortcutsIfNecessary
{
  v15 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1;
  v5 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__WFDatabase_addSyncHashesToShortcutsIfNecessary__block_invoke;
  v6[3] = &unk_1E837A208;
  v6[4] = self;
  v6[5] = &v7;
  [(WFDatabase *)self performTransactionWithReason:@"add sync hashes" block:v6 error:&v5];
  v2 = v5;
  if ((v8[3] & 1) == 0)
  {
    v3 = getWFDatabaseLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v12 = "[WFDatabase addSyncHashesToShortcutsIfNecessary]";
      v13 = 2114;
      v14 = v2;
      _os_log_impl(&dword_1CA256000, v3, OS_LOG_TYPE_ERROR, "%s Unable to add sync hashes: %{public}@", buf, 0x16u);
    }
  }

  _Block_object_dispose(&v7, 8);
  v4 = *MEMORY[0x1E69E9840];
}

void __38__WFDatabase_Sync__updateWalrusStatus__block_invoke(uint64_t a1, uint64_t a2)
{
  v64[3] = *MEMORY[0x1E69E9840];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &state);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __38__WFDatabase_Sync__updateWalrusStatus__block_invoke_2;
  aBlock[3] = &__block_descriptor_48_e5_v8__0l;
  v45 = state;
  v32 = _Block_copy(aBlock);
  v38 = +[WFCloudKitWorkflow latestEncryptedSchemaVersion];
  v3 = getWFWalrusLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 136315650;
    v48 = "[WFDatabase(Sync) updateWalrusStatus]_block_invoke";
    v49 = 2048;
    v50 = v38;
    v51 = 2112;
    v52 = v5;
    _os_log_impl(&dword_1CA256000, v3, OS_LOG_TYPE_DEFAULT, "%s Looks like we want Walrus schema version %lld for %@", buf, 0x20u);
  }

  v34 = +[WFCoreDataWorkflow fetchRequest];
  [v34 setFetchBatchSize:*(a1 + 64)];
  v64[0] = @"wantedEncryptedSchemaVersion";
  v64[1] = @"syncHash";
  v64[2] = @"lastSyncedEncryptedSchemaVersion";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:3];
  [v34 setPropertiesToFetch:v6];

  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %lld OR %K = nil", @"wantedEncryptedSchemaVersion", v38, @"wantedEncryptedSchemaVersion"];
  [v34 setPredicate:v7];

  v8 = getWFWalrusLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [v34 predicate];
    *buf = 136315650;
    v48 = "[WFDatabase(Sync) updateWalrusStatus]_block_invoke";
    v49 = 2112;
    v50 = v10;
    v51 = 2112;
    v52 = v11;
    _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_INFO, "%s Running predicate on %@: %@", buf, 0x20u);
  }

  v12 = [*(a1 + 40) context];
  v33 = [v12 executeFetchRequest:v34 error:a2];

  v13 = getWFWalrusLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = [v33 count];
    v17 = [v34 predicate];
    *buf = 136315906;
    v48 = "[WFDatabase(Sync) updateWalrusStatus]_block_invoke";
    v49 = 2112;
    v50 = v15;
    v51 = 2048;
    v52 = v16;
    v53 = 2112;
    v54 = v17;
    _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_DEFAULT, "%s Ran predicate on %@, found %ld entities: %@", buf, 0x2Au);
  }

  if (v33)
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = v33;
    v18 = [obj countByEnumeratingWithState:&v40 objects:v63 count:16];
    if (v18)
    {
      v19 = *v41;
      v35 = *v41;
      do
      {
        v20 = 0;
        v36 = v18;
        do
        {
          if (*v41 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v40 + 1) + 8 * v20);
          v22 = objc_autoreleasePoolPush();
          ++*(*(*(a1 + 56) + 8) + 24);
          v23 = [v21 wantedEncryptedSchemaVersion];
          v24 = [v21 syncHash];
          v25 = [v21 lastSyncedEncryptedSchemaVersion];
          [v21 setWantedEncryptedSchemaVersion:v38];
          [v21 setSyncHash:{objc_msgSend(v21, "computedSyncHash")}];
          v26 = getWFWalrusLogObject();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            v27 = [v21 wantedEncryptedSchemaVersion];
            v28 = [v21 syncHash];
            v29 = [v21 lastSyncedEncryptedSchemaVersion];
            v30 = [v21 identifier];
            *buf = 136316930;
            v48 = "[WFDatabase(Sync) updateWalrusStatus]_block_invoke";
            v49 = 2048;
            v50 = v23;
            v51 = 2048;
            v52 = v24;
            v53 = 2048;
            v54 = v25;
            v55 = 2048;
            v56 = v27;
            v57 = 2048;
            v58 = v28;
            v59 = 2048;
            v60 = v29;
            v61 = 2112;
            v62 = v30;
            _os_log_impl(&dword_1CA256000, v26, OS_LOG_TYPE_DEFAULT, "%s Updated workflow <old: wanted schema ver %lld, sync hash %lld, last synced schema ver %lld> <new: wanted schema ver %lld, sync hash %lld, last synced schema ver %lld>: %@", buf, 0x52u);

            v19 = v35;
            v18 = v36;
          }

          objc_autoreleasePoolPop(v22);
          ++v20;
        }

        while (v18 != v20);
        v18 = [obj countByEnumeratingWithState:&v40 objects:v63 count:16];
      }

      while (v18);
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  v32[2]();
  v31 = *MEMORY[0x1E69E9840];
}

- (void)addActionCountsToShortcutsIfNecessary
{
  v15 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1;
  v5 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__WFDatabase_addActionCountsToShortcutsIfNecessary__block_invoke;
  v6[3] = &unk_1E837A208;
  v6[4] = self;
  v6[5] = &v7;
  [(WFDatabase *)self performTransactionWithReason:@"add action counts" block:v6 error:&v5];
  v2 = v5;
  if ((v8[3] & 1) == 0)
  {
    v3 = getWFDatabaseLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v12 = "[WFDatabase addActionCountsToShortcutsIfNecessary]";
      v13 = 2114;
      v14 = v2;
      _os_log_impl(&dword_1CA256000, v3, OS_LOG_TYPE_ERROR, "%s Unable to add action counts: %{public}@", buf, 0x16u);
    }
  }

  _Block_object_dispose(&v7, 8);
  v4 = *MEMORY[0x1E69E9840];
}

void __49__WFDatabase_addSyncHashesToShortcutsIfNecessary__block_invoke(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = +[WFCoreDataWorkflow fetchRequest];
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = nil", @"syncHash"];
  [v4 setPredicate:v5];

  v6 = [*(a1 + 32) context];
  v7 = [v6 executeFetchRequest:v4 error:a2];

  if (v7)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        v12 = 0;
        do
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v16 + 1) + 8 * v12);
          v14 = objc_autoreleasePoolPush();
          [v13 setSyncHash:{objc_msgSend(v13, "computedSyncHash")}];
          objc_autoreleasePoolPop(v14);
          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)markTriggersAsRunAfterConfirmationIfNeeded
{
  v15 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1;
  v5 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__WFDatabase_markTriggersAsRunAfterConfirmationIfNeeded__block_invoke;
  v6[3] = &unk_1E837A208;
  v6[4] = self;
  v6[5] = &v7;
  [(WFDatabase *)self performTransactionWithReason:@"migrate invalid location triggers" block:v6 error:&v5];
  v2 = v5;
  if ((v8[3] & 1) == 0)
  {
    v3 = getWFDatabaseLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v12 = "[WFDatabase markTriggersAsRunAfterConfirmationIfNeeded]";
      v13 = 2114;
      v14 = v2;
      _os_log_impl(&dword_1CA256000, v3, OS_LOG_TYPE_ERROR, "%s Unable to add editable shortcut flag: %{public}@", buf, 0x16u);
    }
  }

  _Block_object_dispose(&v7, 8);
  v4 = *MEMORY[0x1E69E9840];
}

- (void)updateWalrusStatus
{
  v42 = *MEMORY[0x1E69E9840];
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 1;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v3 = _os_activity_create(&dword_1CA256000, "database walrus update", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v4 = getWFWalrusLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [&unk_1F4A9B500 componentsJoinedByString:@"\n"];
    *buf = 136315394;
    v39 = "[WFDatabase(Sync) updateWalrusStatus]";
    v40 = 2112;
    v41 = v5;
    _os_log_impl(&dword_1CA256000, v4, OS_LOG_TYPE_DEFAULT, "%s Updating Walrus status in the database - per:\n%@", buf, 0x16u);
  }

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __38__WFDatabase_Sync__updateWalrusStatus__block_invoke;
  v24[3] = &unk_1E8377B10;
  v6 = v3;
  v29 = 5;
  v25 = v6;
  v26 = self;
  v27 = &v34;
  v28 = &v30;
  v23 = 0;
  [(WFDatabase *)self performTransactionWithReason:@"updating walrus schema status for shortcuts" block:v24 error:&v23];
  v7 = v23;
  if (v35[3])
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __38__WFDatabase_Sync__updateWalrusStatus__block_invoke_231;
    v17[3] = &unk_1E8377B10;
    v22 = 5;
    v18 = v6;
    v19 = self;
    v20 = &v34;
    v21 = &v30;
    v16 = v7;
    [(WFDatabase *)self performTransactionWithReason:@"updating walrus schema status for collections" block:v17 error:&v16];
    v8 = v16;

    if (*(v35 + 24) == 1)
    {
      v9 = getWFWalrusLogObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v31[3];
        *buf = 136315394;
        v39 = "[WFDatabase(Sync) updateWalrusStatus]";
        v40 = 2048;
        v41 = v10;
        v11 = "%s Updated %lu Walrus schema versions.";
        v12 = v9;
        v13 = OS_LOG_TYPE_DEFAULT;
LABEL_11:
        _os_log_impl(&dword_1CA256000, v12, v13, v11, buf, 0x16u);
      }
    }

    else
    {
      v9 = getWFWalrusLogObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v39 = "[WFDatabase(Sync) updateWalrusStatus]";
        v40 = 2114;
        v41 = v8;
        v11 = "%s Unable to update wanted schema versions for Walrus: %{public}@";
        v12 = v9;
        v13 = OS_LOG_TYPE_ERROR;
        goto LABEL_11;
      }
    }

    v14 = v18;
    v7 = v8;
    goto LABEL_13;
  }

  v14 = getWFWalrusLogObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v39 = "[WFDatabase(Sync) updateWalrusStatus]";
    v40 = 2114;
    v41 = v7;
    _os_log_impl(&dword_1CA256000, v14, OS_LOG_TYPE_ERROR, "%s Unable to update wanted schema versions for Walrus: %{public}@", buf, 0x16u);
  }

LABEL_13:

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v34, 8);
  v15 = *MEMORY[0x1E69E9840];
}

+ (WFDatabase)defaultDatabase
{
  os_unfair_lock_lock(&WFDefaultDatabaseLock);
  v2 = _defaultDatabase;
  os_unfair_lock_unlock(&WFDefaultDatabaseLock);

  return v2;
}

- (id)sortedVisibleAppAssociatedWorkflows
{
  v3 = [objc_alloc(MEMORY[0x1E69E0E18]) initWithLocation:0];
  v4 = [WFLibraryWorkflowsQuery sortedWorkflowsWithQuery:v3 sortByName:1 hasAssociatedBundleIdentifier:1];

  v5 = [(WFDatabase *)self workflowResultWithLibraryQuery:v4];

  return v5;
}

- (id)visiblePredicate
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AB28];
  v4 = [(WFDatabase *)self tombstonedShortcutsPredicate];
  v5 = [v3 notPredicateWithSubpredicate:v4];

  if (![(WFDatabase *)self mergeAutomationsAndShortcuts])
  {
    v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == NO OR %K == nil", @"hiddenFromLibraryAndSync", @"hiddenFromLibraryAndSync"];
    v7 = MEMORY[0x1E696AB28];
    v12[0] = v5;
    v12[1] = v6;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
    v9 = [v7 andPredicateWithSubpredicates:v8];

    v5 = v9;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v5;
}

- (BOOL)mergeAutomationsAndShortcuts
{
  v2 = [MEMORY[0x1E695E000] systemShortcutsUserDefaults];
  v3 = [v2 BOOLForKey:@"WFAutomationsMergeEnabled"];

  return v3;
}

- (id)sortedVisibleFolders
{
  v3 = +[WFLibraryCollectionsQuery sortedVisibleFolders];
  v4 = [(WFDatabase *)self collectionResultWithLibraryQuery:v3];

  return v4;
}

- (id)allConfiguredTriggers
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = +[WFCoreDataTrigger fetchRequest];
  v4 = [MEMORY[0x1E696AE18] predicateWithValue:1];
  [v3 setPredicate:v4];

  v5 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"identifier" ascending:1];
  v10[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  [v3 setSortDescriptors:v6];

  v7 = [(WFDatabase *)self triggerResultWithFetchRequest:v3];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

id __60__WFDatabase_TipKit__mostRunOrLatestImportedVisibleShortcut__block_invoke(uint64_t a1, uint64_t a2)
{
  v54[2] = *MEMORY[0x1E69E9840];
  v3 = +[WFCoreDataWorkflow fetchRequest];
  v4 = [*(a1 + 32) visiblePredicate];
  v5 = [MEMORY[0x1E695DEE8] currentCalendar];
  v47 = [MEMORY[0x1E695DF00] date];
  v48 = v5;
  v46 = [v5 dateByAddingUnit:16 value:-7 toDate:? options:?];
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SUBQUERY(%K, $r, $r.date >= %@).@count > 0", @"runEvents", v46];
  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K.@count > 0", @"runEvents"];
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %@", @"source", @"ShortcutSourceOnDevice"];
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %@", @"source", @"ShortcutSourceDefaultShortcut"];
  v10 = MEMORY[0x1E696AB28];
  v44 = v9;
  v45 = v8;
  v54[0] = v8;
  v54[1] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:2];
  v12 = v10;
  v13 = v6;
  v14 = v7;
  v15 = [v12 andPredicateWithSubpredicates:v11];

  v16 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"source", @"ShortcutSourceDefaultShortcut"];
  v17 = MEMORY[0x1E696AB28];
  v40 = v15;
  v41 = v4;
  v53[0] = v4;
  v52[0] = v13;
  v52[1] = v14;
  v52[2] = v15;
  v52[3] = v16;
  v18 = v16;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:4];
  v20 = [v17 orPredicateWithSubpredicates:v19];
  v53[1] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:2];
  v22 = [v17 andPredicateWithSubpredicates:v21];
  [v3 setPredicate:v22];

  v23 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"runEventsCount" ascending:0];
  v24 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"lastRunEventDate" ascending:0];
  v25 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:0];
  v51[0] = v23;
  v51[1] = v24;
  v51[2] = v25;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:3];
  [v3 setSortDescriptors:v26];

  [v3 setFetchLimit:10];
  v27 = [*(a1 + 32) context];
  v28 = [v27 executeFetchRequest:v3 error:a2];

  v29 = [v28 firstObject];
  if ([v29 runEventsCount] < 1)
  {
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __60__WFDatabase_TipKit__mostRunOrLatestImportedVisibleShortcut__block_invoke_2;
    v49[3] = &unk_1E83741A0;
    v50 = @"ShortcutSourceDefaultShortcut";
    [v28 sortedArrayUsingComparator:v49];
    v31 = v43 = v14;

    [v31 firstObject];
    v39 = v23;
    v32 = v3;
    v33 = v13;
    v35 = v34 = v18;

    v30 = [v35 descriptor];

    v28 = v31;
    v14 = v43;
    v29 = v35;
    v18 = v34;
    v13 = v33;
    v3 = v32;
    v23 = v39;
  }

  else
  {
    v30 = [v29 descriptor];
  }

  v36 = *MEMORY[0x1E69E9840];

  return v30;
}

- (id)mostRunOrLatestImportedVisibleShortcut
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = getWFTipsLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v9 = "[WFDatabase(TipKit) mostRunOrLatestImportedVisibleShortcut]";
    _os_log_impl(&dword_1CA256000, v3, OS_LOG_TYPE_INFO, "%s Fetching the most run or the latest imported shortcut.", buf, 0xCu);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__WFDatabase_TipKit__mostRunOrLatestImportedVisibleShortcut__block_invoke;
  v7[3] = &unk_1E83741C8;
  v7[4] = self;
  v4 = [(WFDatabase *)self performOperationWithReason:@"getting most run/latest imported shortcut" block:v7 error:0];
  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)allCollectionIdentifiersForSync
{
  v2 = self;
  WFDatabase.allCollectionIdentifiersForSync()();

  v3 = sub_1CA94C648();

  return v3;
}

- (BOOL)handleFetchedFolderRecordWithIdentifier:(id)a3 name:(id)a4 icon:(unsigned __int16)a5 encryptedSchemaVersion:(int64_t)a6 cloudKitMetadata:(id)a7 error:(id *)a8
{
  sub_1CA94C3A8();
  sub_1CA94C3A8();
  v10 = a7;
  v11 = self;
  v12 = sub_1CA948C08();
  v14 = v13;

  WFDatabase.handleFetchedFolderRecord(withIdentifier:name:icon:encryptedSchemaVersion:cloudKitMetadata:)();
  sub_1CA266F2C(v12, v14);

  return 1;
}

- (BOOL)handleFetchedOrderingRecordWithIdentifier:(id)a3 shortcuts:(id)a4 folders:(id)a5 cloudKitMetadata:(id)a6 error:(id *)a7
{
  sub_1CA94C3A8();
  sub_1CA94C658();
  sub_1CA94C658();
  v9 = a6;
  v10 = self;
  v11 = sub_1CA948C08();
  v13 = v12;

  WFDatabase.handleFetchedOrderingRecord(withIdentifier:shortcuts:folders:cloudKitMetadata:)();
  sub_1CA266F2C(v11, v13);

  return 1;
}

- (BOOL)handleDeletedFolderRecordWithIdentifier:(id)a3 error:(id *)a4
{
  v6 = sub_1CA94C3A8();
  v8 = v7;
  v9 = self;
  v10._countAndFlagsBits = v6;
  v10._object = v8;
  WFDatabase.handleDeletedFolderRecord(withIdentifier:)(v10);

  if (v11)
  {
    if (a4)
    {
      v12 = sub_1CA948AC8();

      v13 = v12;
      *a4 = v12;
    }

    else
    {
    }
  }

  return v11 == 0;
}

- (id)debugLegacyFolderSyncState
{
  v2 = self;
  WFDatabase.debugLegacyFolderSyncState()();

  v3 = sub_1CA94C368();

  return v3;
}

- (id)allWorkflowIdentifiersForSync
{
  v2 = self;
  WFDatabase.allWorkflowIdentifiersForSync()();

  v3 = sub_1CA94C648();

  return v3;
}

- (id)handleFetchedWorkflowRecord:(id)a3 identifier:(id)a4 recordChangeTag:(id)a5 modificationDate:(id)a6 error:(id *)a7
{
  v28 = a7;
  sub_1CA94C3A8();
  if (a5)
  {
    sub_1CA94C3A8();
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4466D0, &qword_1CA991AA0);
  v29 = v26;
  v12 = (*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v26 - v13;
  v15 = sub_1CA948CB8();
  v16 = v15;
  if (a6)
  {
    v26[1] = v26;
    v27 = self;
    v17 = a3;
    v18 = *(v15 - 8);
    v19 = *(v18 + 64);
    MEMORY[0x1EEE9AC00](v15);
    v21 = v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1CA948C78();
    (*(v18 + 32))(v14, v21, v16);
    a3 = v17;
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v16);
    self = v27;
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v14, 1, 1, v15);
  }

  v22 = a3;
  v23 = self;
  v24 = WFDatabase.handleFetchedWorkflowRecord(_:identifier:recordChangeTag:modificationDate:)();
  sub_1CA633484(v14);

  return v24;
}

- (id)reasonsForConflictWithLocalWorkflow:(id)a3 remoteWorkflow:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1CA68DBC0(v6, v7);

  v9 = sub_1CA94C648();

  return v9;
}

- (void)mergeChangesFrom:(id)a3 into:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1CA68DEF0(v6, v7);
}

- (BOOL)handleUploadedWorkflowRecordWithIdentifier:(id)a3 cloudKitMetadata:(id)a4 syncHash:(int64_t)a5 encryptedSchemaVersion:(int64_t)a6 error:(id *)a7
{
  sub_1CA94C3A8();
  v9 = a4;
  v10 = self;
  v11 = sub_1CA948C08();
  v13 = v12;

  WFDatabase.handleUploadedWorkflowRecord(withIdentifier:cloudKitMetadata:syncHash:encryptedSchemaVersion:)();
  sub_1CA266F2C(v11, v13);

  return 1;
}

- (BOOL)setCloudKitMetadata:(id)a3 forWorkflowRecordWithIdentifier:(id)a4 error:(id *)a5
{
  v6 = a3;
  if (a3)
  {
    v8 = a4;
    v9 = self;
    v10 = v6;
    v6 = sub_1CA948C08();
    v12 = v11;
  }

  else
  {
    v13 = a4;
    v14 = self;
    v12 = 0xF000000000000000;
  }

  sub_1CA94C3A8();

  WFDatabase.setCloudKitMetadata(_:forWorkflowRecordWithIdentifier:)();

  sub_1CA39F318(v6, v12);
  return 1;
}

- (id)desiredSyncOperationForWorkflow:(id)a3
{
  sub_1CA94C3A8();
  v4 = self;
  v5 = WFDatabase.desiredSyncOperation(forWorkflow:)();

  return v5;
}

- (void)addWorkflowIdentifiersToLibraryRootCollection:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69__WFDatabase_Library__addWorkflowIdentifiersToLibraryRootCollection___block_invoke;
  v6[3] = &unk_1E837F978;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(WFDatabase *)self performTransactionWithReason:@"add workflow ids to root collection" block:v6 error:0];
}

void __69__WFDatabase_Library__addWorkflowIdentifiersToLibraryRootCollection___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) library];
  v3 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__WFDatabase_Library__addWorkflowIdentifiersToLibraryRootCollection___block_invoke_2;
  v7[3] = &unk_1E83800A8;
  v8 = v2;
  v4 = v2;
  [v3 enumerateObjectsUsingBlock:v7];
  v5 = *(a1 + 32);
  v6 = [objc_alloc(MEMORY[0x1E69E0A68]) initWithIdentifier:@"Root" objectType:2];
  [v5 addPendingUpdatedDescriptor:v6];

  [*(a1 + 32) libraryDidChange];
}

- (id)workflowIdentifiersUnexpectedlyMissingFromLibrary
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __72__WFDatabase_Library__workflowIdentifiersUnexpectedlyMissingFromLibrary__block_invoke;
  v4[3] = &unk_1E8373608;
  v4[4] = self;
  v2 = [(WFDatabase *)self performOperationWithReason:@"get unexpectedly missing workflow ids" block:v4 error:0];

  return v2;
}

id __72__WFDatabase_Library__workflowIdentifiersUnexpectedlyMissingFromLibrary__block_invoke(uint64_t a1)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v3 = [*(a1 + 32) library];
  v4 = [v3 shortcutIdentifiers];
  v5 = [v2 setWithArray:v4];

  v6 = +[WFCoreDataWorkflow fetchRequest];
  v7 = [*(a1 + 32) visiblePredicate];
  [v6 setPredicate:v7];

  v25[0] = @"workflowID";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
  [v6 setPropertiesToFetch:v8];

  v9 = [*(a1 + 32) context];
  v10 = [v9 executeFetchRequest:v6 error:0];

  v11 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v20 + 1) + 8 * i) workflowID];
        if (([v5 containsObject:v17] & 1) == 0)
        {
          [v11 addObject:v17];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v14);
  }

  v18 = *MEMORY[0x1E69E9840];

  return v11;
}

- (unint64_t)libraryBlobSize
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__WFDatabase_Library__libraryBlobSize__block_invoke;
  v5[3] = &unk_1E837F248;
  v5[4] = self;
  v2 = [(WFDatabase *)self performOperationWithReason:@"get library blob size" block:v5 error:0];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

id __38__WFDatabase_Library__libraryBlobSize__block_invoke(uint64_t a1)
{
  v2 = +[WFCoreDataLibrary fetchRequest];
  [v2 setFetchLimit:1];
  v3 = [*(a1 + 32) context];
  v4 = [v3 executeFetchRequest:v2 error:0];

  v5 = [v4 firstObject];
  v6 = MEMORY[0x1E696AD98];
  v7 = [v5 data];
  v8 = [v6 numberWithUnsignedInteger:{objc_msgSend(v7, "length")}];

  return v8;
}

- (id)libraryDotRepresentation
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47__WFDatabase_Library__libraryDotRepresentation__block_invoke;
  v4[3] = &unk_1E83735E0;
  v4[4] = self;
  v2 = [(WFDatabase *)self performOperationWithReason:@"Get library dot representation" block:v4 error:0];

  return v2;
}

id __47__WFDatabase_Library__libraryDotRepresentation__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) library];
  v2 = [v1 dotRepresentation];

  return v2;
}

- (id)latestLibraryIdentifier
{
  v2 = [(WFDatabase *)self latestLibrary];
  v3 = [v2 identifier];

  return v3;
}

- (BOOL)isReference:(id)a3 allowedToRunOnDomain:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64__WFDatabase_AccessResources__isReference_allowedToRunOnDomain___block_invoke;
  v13[3] = &unk_1E8373BF8;
  v14 = v7;
  v15 = v6;
  v16 = self;
  v8 = v6;
  v9 = v7;
  v10 = [(WFDatabase *)self performOperationWithReason:@"getting domain trust" block:v13 error:0];
  v11 = [v10 BOOLValue];

  return v11;
}

id __64__WFDatabase_AccessResources__isReference_allowedToRunOnDomain___block_invoke(id *a1, uint64_t a2)
{
  v4 = +[WFCoreDataTrustedDomain fetchRequest];
  [v4 setFetchLimit:1];
  v5 = MEMORY[0x1E696AE18];
  v6 = [a1[4] lowercaseString];
  v7 = [a1[5] identifier];
  v8 = [v5 predicateWithFormat:@"%K = %@ AND %K = %@", @"domain", v6, @"shortcut.workflowID", v7];
  [v4 setPredicate:v8];

  v9 = [a1[6] context];
  v10 = [v9 executeFetchRequest:v4 error:a2];
  v11 = [v10 firstObject];

  v12 = [MEMORY[0x1E696AD98] numberWithInt:v11 != 0];

  return v12;
}

- (void)setTrustedToRunScripts:(BOOL)a3 forReference:(id)a4 onDomain:(id)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __76__WFDatabase_AccessResources__setTrustedToRunScripts_forReference_onDomain___block_invoke;
  v17[3] = &unk_1E8373BD0;
  v17[4] = self;
  v10 = v8;
  v18 = v10;
  v11 = v9;
  v19 = v11;
  v20 = a3;
  v16 = 0;
  [(WFDatabase *)self performTransactionWithReason:@"set domain trust" block:v17 error:&v16];
  v12 = v16;
  if (v12)
  {
    v13 = getWFDatabaseLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [v12 localizedDescription];
      *buf = 136315394;
      v22 = "[WFDatabase(AccessResources) setTrustedToRunScripts:forReference:onDomain:]";
      v23 = 2112;
      v24 = v14;
      _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_ERROR, "%s Unable to update trusted run scripts: %@", buf, 0x16u);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __76__WFDatabase_AccessResources__setTrustedToRunScripts_forReference_onDomain___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) objectForDescriptor:*(a1 + 40) properties:MEMORY[0x1E695E0F0]];
  v3 = objc_opt_class();
  v4 = v2;
  if (v4 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = getWFGeneralLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      *&buf[4] = "WFEnforceClass";
      v35 = 2114;
      v36 = v4;
      v37 = 2114;
      v38 = objc_opt_class();
      v39 = 2114;
      v40 = v3;
      v7 = v38;
      _os_log_impl(&dword_1CA256000, v6, OS_LOG_TYPE_FAULT, "%s Unable to update trusted run scripts: %@", buf, 0x2Au);
    }

    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  v8 = [v5 trustedDomains];
  v9 = [v8 mutableCopy];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = objc_opt_new();
  }

  v12 = v11;

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v14)
  {
    v15 = *v30;
    while (2)
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v30 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v29 + 1) + 8 * i);
        v18 = [v17 domain];
        v19 = [*(a1 + 48) lowercaseString];
        v20 = [v18 isEqualToString:v19];

        if (v20)
        {
          v14 = v17;
          goto LABEL_20;
        }
      }

      v14 = [v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

LABEL_20:

  v21 = *(a1 + 56);
  if (v14)
  {
    v22 = 1;
  }

  else
  {
    v22 = v21 == 0;
  }

  if (v22)
  {
    if (v14 && (v21 & 1) == 0)
    {
      [v13 removeObject:v14];
    }
  }

  else
  {
    v23 = [WFCoreDataTrustedDomain alloc];
    v24 = [*(a1 + 32) context];
    v25 = [(WFCoreDataTrustedDomain *)v23 initWithContext:v24];

    [(WFCoreDataTrustedDomain *)v25 setDomain:*(a1 + 48)];
    [v13 addObject:v25];
  }

  [v5 setTrustedDomains:{v13, v29}];
  v26 = *(a1 + 32);
  *buf = @"trustedDomains";
  v27 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:buf count:1];

  [v26 object:v5 didUpdateProperties:v27];
  v28 = *MEMORY[0x1E69E9840];
}

- (id)latestWorkflowSiriRunEvent
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __48__WFDatabase_TipKit__latestWorkflowSiriRunEvent__block_invoke;
  v4[3] = &unk_1E837F450;
  v4[4] = self;
  v2 = [(WFDatabase *)self performOperationWithReason:@"getting latest siri run event" block:v4 error:0];

  return v2;
}

id __48__WFDatabase_TipKit__latestWorkflowSiriRunEvent__block_invoke(uint64_t a1, uint64_t a2)
{
  v20[3] = *MEMORY[0x1E69E9840];
  v4 = +[WFCoreDataRunEvent fetchRequest];
  [v4 setFetchLimit:1];
  v5 = MEMORY[0x1E696AB28];
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"source == %@", *MEMORY[0x1E69E13F8]];
  v20[0] = v6;
  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"source == %@", *MEMORY[0x1E69E13E8]];
  v20[1] = v7;
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"source == %@", *MEMORY[0x1E69E1400]];
  v20[2] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:3];
  v10 = [v5 orPredicateWithSubpredicates:v9];
  [v4 setPredicate:v10];

  v11 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"date" ascending:0];
  v19 = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
  [v4 setSortDescriptors:v12];

  v13 = [*(a1 + 32) context];
  v14 = [v13 executeFetchRequest:v4 error:a2];
  v15 = [v14 firstObject];

  v16 = [v15 descriptor];

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)workflowSiriRunEventWithIdentifier:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57__WFDatabase_TipKit__workflowSiriRunEventWithIdentifier___block_invoke;
  v8[3] = &unk_1E83741F0;
  v9 = v4;
  v10 = self;
  v5 = v4;
  v6 = [(WFDatabase *)self performOperationWithReason:@"getting siri run event by id" block:v8 error:0];

  return v6;
}

id __57__WFDatabase_TipKit__workflowSiriRunEventWithIdentifier___block_invoke(uint64_t a1, uint64_t a2)
{
  v26[2] = *MEMORY[0x1E69E9840];
  v3 = +[WFCoreDataRunEvent fetchRequest];
  [v3 setFetchLimit:1];
  v4 = MEMORY[0x1E696AB28];
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"identifier == %@", *(a1 + 32)];
  v26[0] = v5;
  v6 = MEMORY[0x1E696AB28];
  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"source == %@", *MEMORY[0x1E69E13F8]];
  v25[0] = v7;
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"source == %@", *MEMORY[0x1E69E13E8]];
  v25[1] = v8;
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"source == %@", *MEMORY[0x1E69E1400]];
  v25[2] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:3];
  v11 = [v6 orPredicateWithSubpredicates:v10];
  v26[1] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
  v13 = [v4 andPredicateWithSubpredicates:v12];
  [v3 setPredicate:v13];

  v14 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"date" ascending:0];
  v24 = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
  [v3 setSortDescriptors:v15];

  v16 = [*(a1 + 40) context];
  v17 = [v16 executeFetchRequest:v3 error:a2];
  v18 = [v17 firstObject];

  v19 = [v18 descriptor];

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

uint64_t __60__WFDatabase_TipKit__mostRunOrLatestImportedVisibleShortcut__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 source];
  v8 = [v6 source];
  if ([v7 isEqualToString:*(a1 + 32)] && objc_msgSend(v8, "isEqualToString:", *(a1 + 32)))
  {
    v9 = [v6 creationDate];
    v10 = [v5 creationDate];
    v11 = [v9 compare:v10];
  }

  else if ([v7 isEqualToString:*(a1 + 32)])
  {
    v11 = 1;
  }

  else
  {
    v11 = [v8 isEqualToString:*(a1 + 32)] << 63 >> 63;
  }

  return v11;
}

- (id)trackedFilesystemNodeResultWithFetchRequest:(id)a3
{
  v4 = a3;
  v5 = [WFCoreDataDatabaseResult alloc];
  v6 = [MEMORY[0x1E695DFD8] setWithObject:@"triggers"];
  v7 = [(WFCoreDataDatabaseResult *)v5 initWithDatabase:self fetchRequest:v4 relationshipKeysAffectingDescriptors:v6];

  return v7;
}

- (id)allTrackedFilesystemNodes
{
  v3 = +[WFCoreDataTrackedFilesystemNode fetchRequest];
  v4 = [MEMORY[0x1E696AE18] predicateWithValue:1];
  [v3 setPredicate:v4];

  v5 = [(WFDatabase *)self trackedFilesystemNodeResultWithFetchRequest:v3];

  return v5;
}

- (id)trackedFilesystemNodeForTriggerIdentifier:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(WFDatabase *)self allTrackedFilesystemNodes];
  v6 = [v5 descriptors];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v11 listeningTriggers];
        v13 = [v12 containsObject:v4];

        if (v13)
        {
          v8 = v11;
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v14 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)storeTrackedFilesystemNodeWithIdentifier:(id)a3 bookmark:(id)a4 contents:(id)a5 triggers:(id)a6 isDirectory:(BOOL)a7 ignoringSubfolders:(BOOL)a8 error:(id *)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __142__WFDatabase_TrackedFilesystemNode__storeTrackedFilesystemNodeWithIdentifier_bookmark_contents_triggers_isDirectory_ignoringSubfolders_error___block_invoke;
  v25[3] = &unk_1E83757B0;
  v25[4] = self;
  v26 = v15;
  v30 = a7;
  v31 = a8;
  v27 = v16;
  v28 = v17;
  v29 = v18;
  v19 = v18;
  v20 = v17;
  v21 = v16;
  v22 = v15;
  v23 = [(WFDatabase *)self performSaveOperationWithReason:@"creating tracked filesystem node" block:v25 error:a9];

  return v23;
}

WFTrackedFilesystemNode *__142__WFDatabase_TrackedFilesystemNode__storeTrackedFilesystemNodeWithIdentifier_bookmark_contents_triggers_isDirectory_ignoringSubfolders_error___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = [WFCoreDataTrackedFilesystemNode alloc];
  v3 = [*(a1 + 32) context];
  v4 = [(WFCoreDataTrackedFilesystemNode *)v2 initWithContext:v3];

  [(WFCoreDataTrackedFilesystemNode *)v4 setIdentifier:*(a1 + 40)];
  [(WFCoreDataTrackedFilesystemNode *)v4 setBookmark:*(a1 + 48)];
  [(WFCoreDataTrackedFilesystemNode *)v4 setIsDirectory:*(a1 + 72)];
  [(WFCoreDataTrackedFilesystemNode *)v4 setIgnoringSubfolders:*(a1 + 73)];
  v5 = *(a1 + 56);
  v21 = 0;
  v6 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v21];
  v7 = v21;
  if (v7)
  {
    v8 = getWFFilesystemEventsLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [v7 localizedDescription];
      *buf = 136315394;
      v23 = "[WFDatabase(TrackedFilesystemNode) storeTrackedFilesystemNodeWithIdentifier:bookmark:contents:triggers:isDirectory:ignoringSubfolders:error:]_block_invoke";
      v24 = 2112;
      v25 = v9;
      _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_ERROR, "%s Error archiving files data for tracked filesystem node: %@", buf, 0x16u);
    }
  }

  [(WFCoreDataTrackedFilesystemNode *)v4 setFilesList:v6];
  v10 = *(a1 + 64);
  v20 = 0;
  v11 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v10 requiringSecureCoding:1 error:&v20];
  v12 = v20;
  if (v12)
  {
    v13 = getWFFilesystemEventsLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [v12 localizedDescription];
      *buf = 136315394;
      v23 = "[WFDatabase(TrackedFilesystemNode) storeTrackedFilesystemNodeWithIdentifier:bookmark:contents:triggers:isDirectory:ignoringSubfolders:error:]_block_invoke";
      v24 = 2112;
      v25 = v14;
      _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_ERROR, "%s Error archiving triggers data for tracked filesystem node: %@", buf, 0x16u);
    }
  }

  [(WFCoreDataTrackedFilesystemNode *)v4 setTriggers:v11];
  v15 = getWFFilesystemEventsLogObject();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [*(a1 + 56) count];
    *buf = 136315394;
    v23 = "[WFDatabase(TrackedFilesystemNode) storeTrackedFilesystemNodeWithIdentifier:bookmark:contents:triggers:isDirectory:ignoringSubfolders:error:]_block_invoke";
    v24 = 2048;
    v25 = v16;
    _os_log_impl(&dword_1CA256000, v15, OS_LOG_TYPE_DEFAULT, "%s Writing tracked filesystem node to DB with number of files: %lu", buf, 0x16u);
  }

  v17 = [[WFTrackedFilesystemNode alloc] initWithIdentifier:*(a1 + 40) bookmark:*(a1 + 48) files:*(a1 + 56) isDirectory:*(a1 + 72) ignoringSubfolders:*(a1 + 73) triggerIdentifiers:*(a1 + 64)];
  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)trackedFilesystemNodeForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E69E0A68]) initWithIdentifier:v4 objectType:11];
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__11777;
  v13 = __Block_byref_object_dispose__11778;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __72__WFDatabase_TrackedFilesystemNode__trackedFilesystemNodeForIdentifier___block_invoke;
  v8[3] = &unk_1E8375788;
  v8[4] = &v9;
  [(WFDatabase *)self accessStorageForDescriptor:v5 forWriting:0 readingRecordProperties:0 usingBlock:v8 withError:0];
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __72__WFDatabase_TrackedFilesystemNode__trackedFilesystemNodeForIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 descriptor];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (BOOL)saveContextOrRollback:(id)a3 error:(id *)a4
{
  v5 = a3;
  if ([v5 hasChanges] && (objc_msgSend(v5, "save:", a4) & 1) == 0)
  {
    [v5 rollback];
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (id)performSuggestionsOperationWithBlock:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = os_transaction_create();
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__18089;
  v26 = __Block_byref_object_dispose__18090;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__18089;
  v20 = __Block_byref_object_dispose__18090;
  v21 = 0;
  v8 = [(WFDatabase *)self suggestionsContext];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __78__WFDatabase_ShortcutSuggestions__performSuggestionsOperationWithBlock_error___block_invoke;
  v12[3] = &unk_1E8376248;
  v14 = &v22;
  v9 = v6;
  v13 = v9;
  v15 = &v16;
  [v8 performBlockAndWait:v12];

  if (a4)
  {
    *a4 = v17[5];
  }

  v10 = v23[5];

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);

  return v10;
}

void __78__WFDatabase_ShortcutSuggestions__performSuggestionsOperationWithBlock_error___block_invoke(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = a1[4];
  v4 = *(a1[6] + 8);
  obj = *(v4 + 40);
  v5 = (*(v3 + 16))();
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[5] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  objc_autoreleasePoolPop(v2);
}

- (void)deleteShortcutSuggestionsFromApps:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"WFDatabase+ShortcutSuggestions.m" lineNumber:190 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifiers"}];
  }

  v6 = [(WFDatabase *)self suggestionsContext];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __69__WFDatabase_ShortcutSuggestions__deleteShortcutSuggestionsFromApps___block_invoke;
  v9[3] = &unk_1E837F870;
  v10 = v5;
  v11 = self;
  v7 = v5;
  [v6 performBlockAndWait:v9];
}

void __69__WFDatabase_ShortcutSuggestions__deleteShortcutSuggestionsFromApps___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = +[VCVoiceShortcutSuggestionListManagedObject fetchRequest];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"associatedAppBundleIdentifier IN %@", *(a1 + 32)];
  [v2 setPredicate:v3];
  v4 = [objc_alloc(MEMORY[0x1E695D538]) initWithFetchRequest:v2];
  v5 = [*(a1 + 40) suggestionsContext];
  v14 = 0;
  v6 = [v5 executeRequest:v4 error:&v14];
  v7 = v14;

  v8 = *(a1 + 40);
  v9 = [v8 suggestionsContext];
  v13 = v7;
  [v8 saveContextOrRollback:v9 error:&v13];
  v10 = v13;

  if (v10)
  {
    v11 = getWFDatabaseLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "[WFDatabase(ShortcutSuggestions) deleteShortcutSuggestionsFromApps:]_block_invoke";
      v17 = 2114;
      v18 = v10;
      _os_log_impl(&dword_1CA256000, v11, OS_LOG_TYPE_ERROR, "%s Error deleting suggested shortcuts (%{public}@)", buf, 0x16u);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)allShortcutSuggestions
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = +[VCVoiceShortcutSuggestionListManagedObject fetchRequest];
  v4 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"associatedAppBundleIdentifier" ascending:0];
  v9[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  [v3 setSortDescriptors:v5];

  v6 = [[WFCoreDataDatabaseResult alloc] initWithDatabase:self fetchRequest:v3];
  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)shortcutSuggestionsForAllAppsWithLimit:(unint64_t)a3 shortcutAvailability:(unint64_t)a4 error:(id *)a5
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __101__WFDatabase_ShortcutSuggestions__shortcutSuggestionsForAllAppsWithLimit_shortcutAvailability_error___block_invoke;
  v7[3] = &unk_1E8376220;
  v7[4] = self;
  v7[5] = a4;
  v7[6] = a3;
  v5 = [(WFDatabase *)self performSuggestionsOperationWithBlock:v7 error:a5];

  return v5;
}

id __101__WFDatabase_ShortcutSuggestions__shortcutSuggestionsForAllAppsWithLimit_shortcutAvailability_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = +[VCVoiceShortcutSuggestionListManagedObject fetchRequest];
  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"((shortcutAvailabilityOptions & %d) != 0)", *(a1 + 40)];
    [v4 setPredicate:v6];
  }

  v7 = [*(a1 + 32) suggestionsContext];
  v8 = [v7 executeFetchRequest:v4 error:a2];

  if (v8)
  {
    v28 = v5;
    v26 = v4;
    v29 = objc_opt_new();
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v25 = v8;
    obj = v8;
    v9 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v9)
    {
      v10 = v9;
      v30 = *v34;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v34 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v33 + 1) + 8 * i);
          v13 = MEMORY[0x1E696ACD0];
          v14 = MEMORY[0x1E695DFD8];
          v37[0] = objc_opt_class();
          v37[1] = objc_opt_class();
          v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:2];
          v16 = [v14 setWithArray:v15];
          v17 = [v12 serializedSuggestions];
          v32 = 0;
          v18 = [v13 unarchivedObjectOfClasses:v16 fromData:v17 error:&v32];
          v19 = v32;

          if (v18)
          {
            if (v28)
            {
              v31[0] = MEMORY[0x1E69E9820];
              v31[1] = 3221225472;
              v31[2] = __101__WFDatabase_ShortcutSuggestions__shortcutSuggestionsForAllAppsWithLimit_shortcutAvailability_error___block_invoke_2;
              v31[3] = &__block_descriptor_40_e20_B16__0__INShortcut_8l;
              v31[4] = *(a1 + 40);
              v20 = [v18 if_objectsPassingTest:v31];

              v18 = v20;
            }

            if ([v18 count] > *(a1 + 48))
            {
              v21 = [v18 subarrayWithRange:0];

              v18 = v21;
            }

            v22 = [v12 associatedAppBundleIdentifier];
            [v29 setObject:v18 forKeyedSubscript:v22];
          }
        }

        v10 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v10);
    }

    v8 = v25;
    v4 = v26;
  }

  else
  {
    v29 = 0;
  }

  v23 = *MEMORY[0x1E69E9840];

  return v29;
}

- (id)shortcutSuggestionsForAppWithBundleIdentifier:(id)a3 shortcutAvailability:(unint64_t)a4 error:(id *)a5
{
  v9 = a3;
  if (!v9)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"WFDatabase+ShortcutSuggestions.m" lineNumber:103 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __108__WFDatabase_ShortcutSuggestions__shortcutSuggestionsForAppWithBundleIdentifier_shortcutAvailability_error___block_invoke;
  v14[3] = &unk_1E83761F8;
  v16 = self;
  v17 = a4;
  v15 = v9;
  v10 = v9;
  v11 = [(WFDatabase *)self performSuggestionsOperationWithBlock:v14 error:a5];

  return v11;
}

id __108__WFDatabase_ShortcutSuggestions__shortcutSuggestionsForAppWithBundleIdentifier_shortcutAvailability_error___block_invoke(uint64_t a1, void *a2)
{
  v29[2] = *MEMORY[0x1E69E9840];
  v4 = +[VCVoiceShortcutSuggestionListManagedObject fetchRequest];
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(associatedAppBundleIdentifier = %@)", *(a1 + 32)];
  v6 = *(a1 + 48);
  if (v6)
  {
    v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@" ((shortcutAvailabilityOptions & %d) != 0)", *(a1 + 48)];
    v8 = MEMORY[0x1E696AB28];
    v29[0] = v5;
    v29[1] = v7;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
    v10 = [v8 andPredicateWithSubpredicates:v9];

    v5 = v10;
  }

  [v4 setPredicate:v5];
  [v4 setFetchLimit:1];
  v11 = [*(a1 + 40) suggestionsContext];
  v27 = 0;
  v12 = [v11 executeFetchRequest:v4 error:&v27];
  v13 = v27;

  if (v13)
  {
    v14 = v13;
    v15 = 0;
    *a2 = v13;
  }

  else
  {
    v16 = [v12 firstObject];
    v17 = [v16 serializedSuggestions];

    if (v17)
    {
      v18 = MEMORY[0x1E696ACD0];
      v25 = a2;
      v19 = MEMORY[0x1E695DFD8];
      v28[0] = objc_opt_class();
      v28[1] = objc_opt_class();
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
      v21 = [v19 setWithArray:v20];
      v15 = [v18 unarchivedObjectOfClasses:v21 fromData:v17 error:v25];

      if (v15 && v6)
      {
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __108__WFDatabase_ShortcutSuggestions__shortcutSuggestionsForAppWithBundleIdentifier_shortcutAvailability_error___block_invoke_2;
        v26[3] = &__block_descriptor_40_e20_B16__0__INShortcut_8l;
        v26[4] = *(a1 + 48);
        v22 = [v15 if_objectsPassingTest:v26];

        v15 = v22;
      }
    }

    else
    {
      v15 = MEMORY[0x1E695E0F0];
    }
  }

  v23 = *MEMORY[0x1E69E9840];

  return v15;
}

- (BOOL)setShortcutSuggestions:(id)a3 forAppWithBundleIdentifier:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"WFDatabase+ShortcutSuggestions.m" lineNumber:72 description:{@"Invalid parameter not satisfying: %@", @"shortcutSuggestions"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  v17 = [MEMORY[0x1E696AAA8] currentHandler];
  [v17 handleFailureInMethod:a2 object:self file:@"WFDatabase+ShortcutSuggestions.m" lineNumber:73 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];

LABEL_3:
  v12 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v9 requiringSecureCoding:1 error:a5];
  if (v12)
  {
    v23[0] = 0;
    v23[1] = v23;
    v23[2] = 0x2020000000;
    v23[3] = 0;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __91__WFDatabase_ShortcutSuggestions__setShortcutSuggestions_forAppWithBundleIdentifier_error___block_invoke;
    v22[3] = &unk_1E8376188;
    v22[4] = v23;
    [v9 enumerateObjectsUsingBlock:v22];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __91__WFDatabase_ShortcutSuggestions__setShortcutSuggestions_forAppWithBundleIdentifier_error___block_invoke_2;
    v18[3] = &unk_1E83761B0;
    v18[4] = self;
    v19 = v11;
    v20 = v12;
    v21 = v23;
    v13 = [(WFDatabase *)self performSuggestionsOperationWithBlock:v18 error:a5];
    v14 = [v13 BOOLValue];

    _Block_object_dispose(v23, 8);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

uint64_t __91__WFDatabase_ShortcutSuggestions__setShortcutSuggestions_forAppWithBundleIdentifier_error___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 wf_shortcutAvailability];
  *(*(*(a1 + 32) + 8) + 24) |= result;
  return result;
}

id __91__WFDatabase_ShortcutSuggestions__setShortcutSuggestions_forAppWithBundleIdentifier_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [VCVoiceShortcutSuggestionListManagedObject alloc];
  v5 = [*(a1 + 32) suggestionsContext];
  v6 = [(VCVoiceShortcutSuggestionListManagedObject *)v4 initWithContext:v5];

  [(VCVoiceShortcutSuggestionListManagedObject *)v6 setAssociatedAppBundleIdentifier:*(a1 + 40)];
  [(VCVoiceShortcutSuggestionListManagedObject *)v6 setSerializedSuggestions:*(a1 + 48)];
  [(VCVoiceShortcutSuggestionListManagedObject *)v6 setShortcutAvailabilityOptions:*(*(*(a1 + 56) + 8) + 24)];
  v7 = [*(a1 + 32) suggestionsContext];
  [v7 insertObject:v6];

  v8 = *(a1 + 32);
  v9 = [v8 suggestionsContext];
  v10 = [v8 saveContextOrRollback:v9 error:a2];

  v11 = [MEMORY[0x1E696AD98] numberWithBool:v10];

  return v11;
}

- (BOOL)coherenceSyncEnabled
{
  v2 = [(WFDatabase *)self syncToken];
  v3 = [v2 coherenceSyncEnabled];

  return v3;
}

void __38__WFDatabase_Sync__updateWalrusStatus__block_invoke_231(uint64_t a1, uint64_t a2)
{
  v63[2] = *MEMORY[0x1E69E9840];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &state);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __38__WFDatabase_Sync__updateWalrusStatus__block_invoke_2_232;
  aBlock[3] = &__block_descriptor_48_e5_v8__0l;
  v47 = state;
  v34 = _Block_copy(aBlock);
  v39 = +[WFCloudKitFolder latestEncryptedSchemaVersion];
  v38 = +[WFCoreDataCollection fetchRequest];
  [v38 setFetchBatchSize:*(a1 + 64)];
  v63[0] = @"wantedEncryptedSchemaVersion";
  v63[1] = @"lastSyncedEncryptedSchemaVersion";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:2];
  [v38 setPropertiesToFetch:v3];

  v4 = getWFWalrusLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    *buf = 136315650;
    v50 = "[WFDatabase(Sync) updateWalrusStatus]_block_invoke";
    v51 = 2048;
    v52 = v39;
    v53 = 2112;
    v54 = v6;
    _os_log_impl(&dword_1CA256000, v4, OS_LOG_TYPE_DEFAULT, "%s Looks like we want Walrus schema version %lld for %@", buf, 0x20u);
  }

  v36 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == NO", @"tombstoned"];
  v35 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %lld OR %K = nil", @"wantedEncryptedSchemaVersion", v39, @"wantedEncryptedSchemaVersion"];
  v7 = MEMORY[0x1E696AB28];
  v62[0] = v36;
  v62[1] = v35;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:2];
  v9 = [v7 andPredicateWithSubpredicates:v8];
  [v38 setPredicate:v9];

  v10 = getWFWalrusLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = [v38 predicate];
    *buf = 136315650;
    v50 = "[WFDatabase(Sync) updateWalrusStatus]_block_invoke";
    v51 = 2112;
    v52 = v12;
    v53 = 2112;
    v54 = v13;
    _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_INFO, "%s Running predicate on %@: %@", buf, 0x20u);
  }

  v14 = [*(a1 + 40) context];
  v37 = [v14 executeFetchRequest:v38 error:a2];

  v15 = getWFWalrusLogObject();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v18 = [v37 count];
    v19 = [v38 predicate];
    *buf = 136315906;
    v50 = "[WFDatabase(Sync) updateWalrusStatus]_block_invoke";
    v51 = 2112;
    v52 = v17;
    v53 = 2048;
    v54 = v18;
    v55 = 2112;
    v56 = v19;
    _os_log_impl(&dword_1CA256000, v15, OS_LOG_TYPE_DEFAULT, "%s Ran predicate on %@, found %ld entities: %@", buf, 0x2Au);
  }

  if (v37)
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v20 = v37;
    v21 = [v20 countByEnumeratingWithState:&v42 objects:v61 count:16];
    if (v21)
    {
      v22 = *v43;
      do
      {
        v41 = v21;
        for (i = 0; i != v41; ++i)
        {
          if (*v43 != v22)
          {
            objc_enumerationMutation(v20);
          }

          v24 = *(*(&v42 + 1) + 8 * i);
          v25 = objc_autoreleasePoolPush();
          if ([v24 isFolder])
          {
            ++*(*(*(a1 + 56) + 8) + 24);
            v26 = [v24 wantedEncryptedSchemaVersion];
            v27 = [v24 lastSyncedEncryptedSchemaVersion];
            [v24 setWantedEncryptedSchemaVersion:v39];
            v28 = getWFWalrusLogObject();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              v29 = [v24 wantedEncryptedSchemaVersion];
              v30 = [v24 lastSyncedEncryptedSchemaVersion];
              v31 = [v24 identifier];
              *buf = 136316418;
              v50 = "[WFDatabase(Sync) updateWalrusStatus]_block_invoke";
              v51 = 2048;
              v52 = v26;
              v53 = 2048;
              v54 = v27;
              v55 = 2048;
              v56 = v29;
              v57 = 2048;
              v58 = v30;
              v59 = 2112;
              v60 = v31;
              _os_log_impl(&dword_1CA256000, v28, OS_LOG_TYPE_DEFAULT, "%s Updated collection <old: wanted schema ver %lld, last synced schema ver %lld> <new: wanted schema ver %lld, last synced schema ver %lld>: %@", buf, 0x3Eu);
            }
          }

          else
          {
            v28 = getWFWalrusLogObject();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              v32 = [v24 identifier];
              *buf = 136315394;
              v50 = "[WFDatabase(Sync) updateWalrusStatus]_block_invoke";
              v51 = 2112;
              v52 = v32;
              _os_log_impl(&dword_1CA256000, v28, OS_LOG_TYPE_DEFAULT, "%s Skipping collection %@ for Walrus, as it's not a user-created one", buf, 0x16u);
            }
          }

          objc_autoreleasePoolPop(v25);
        }

        v21 = [v20 countByEnumeratingWithState:&v42 objects:v61 count:16];
      }

      while (v21);
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  v34[2]();
  v33 = *MEMORY[0x1E69E9840];
}

- (id)_syncTokenWithError:(id *)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = +[WFCoreDataCloudKitSyncToken fetchRequest];
  v6 = [MEMORY[0x1E696AE18] predicateWithValue:1];
  [v5 setPredicate:v6];

  v7 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"date" ascending:0];
  v14[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  [v5 setSortDescriptors:v8];

  [v5 setFetchLimit:1];
  v9 = [(WFDatabase *)self context];
  v10 = [v9 executeFetchRequest:v5 error:a3];

  v11 = [v10 firstObject];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)updateSyncTokenWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(WFDatabase *)self syncToken];
  v6 = [v5 newTokenWithCopiedPayload];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = objc_opt_new();
  }

  v9 = v8;

  v4[2](v4, v9);
  [(WFDatabase *)self setSyncToken:v9];
}

- (id)syncToken
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __29__WFDatabase_Sync__syncToken__block_invoke;
  v4[3] = &unk_1E8377AC8;
  v4[4] = self;
  v2 = [(WFDatabase *)self performOperationWithReason:@"getting sync token" block:v4 error:0];

  return v2;
}

WFCloudKitSyncToken *__29__WFDatabase_Sync__syncToken__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) _syncTokenWithError:a2];
  if (v2)
  {
    v3 = [(WFRecord *)[WFCloudKitSyncToken alloc] initWithStorage:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSyncToken:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __33__WFDatabase_Sync__setSyncToken___block_invoke;
  v11[3] = &unk_1E837F978;
  v11[4] = self;
  v5 = v4;
  v12 = v5;
  v10 = 0;
  [(WFDatabase *)self performTransactionWithReason:@"set sync token" block:v11 error:&v10];
  v6 = v10;
  if (v6)
  {
    v7 = getWFDatabaseLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [v6 localizedDescription];
      *buf = 136315394;
      v14 = "[WFDatabase(Sync) setSyncToken:]";
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_ERROR, "%s Unable to set sync token: %@", buf, 0x16u);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __33__WFDatabase_Sync__setSyncToken___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _syncTokenWithError:a2];
  v4 = *(a1 + 40);
  if (v4)
  {
    if (!v3)
    {
      v5 = [WFCoreDataCloudKitSyncToken alloc];
      v6 = [*(a1 + 32) context];
      v8 = [(WFCoreDataCloudKitSyncToken *)v5 initWithContext:v6];

      v3 = v8;
      v4 = *(a1 + 40);
    }

    v9 = v3;
    [v4 writeToStorage:v3 error:0];
  }

  else
  {
    if (!v3)
    {
      return;
    }

    v9 = v3;
    v7 = [*(a1 + 32) context];
    [v7 deleteObject:v9];
  }
}

- (BOOL)deleteAutoShortcutsPreferencesForIdentifier:(id)a3 error:(id *)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = getWFDatabaseLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v15 = "[WFDatabase(AutoShortcutsPreferences) deleteAutoShortcutsPreferencesForIdentifier:error:]";
    v16 = 2114;
    v17 = v6;
    _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_INFO, "%s Deleting auto shortcut preferences with identifier: %{public}@", buf, 0x16u);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __90__WFDatabase_AutoShortcutsPreferences__deleteAutoShortcutsPreferencesForIdentifier_error___block_invoke;
  v12[3] = &unk_1E8377E30;
  v12[4] = self;
  v13 = v6;
  v8 = v6;
  v9 = [(WFDatabase *)self performSaveOperationWithReason:@"deleting auto shortcut preferences by id" block:v12 error:a4];

  v10 = *MEMORY[0x1E69E9840];
  return a4 == 0;
}

uint64_t __90__WFDatabase_AutoShortcutsPreferences__deleteAutoShortcutsPreferencesForIdentifier_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) coreDataAutoShortcutsPreferencesForIdentifier:*(a1 + 40) error:a2];
  if (v3)
  {
    v4 = [*(a1 + 32) context];
    [v4 deleteObject:v3];

    v5 = *(a1 + 32);
    v6 = [objc_alloc(MEMORY[0x1E69E0A68]) initWithIdentifier:*(a1 + 40) objectType:9];
    [v5 addPendingDeletedDescriptor:v6];
  }

  return 0;
}

- (BOOL)mergeAutoShortcutsPreferencesWithNewPreferences:(id)a3 error:(id *)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = getWFDatabaseLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v18 = "[WFDatabase(AutoShortcutsPreferences) mergeAutoShortcutsPreferencesWithNewPreferences:error:]";
    _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_INFO, "%s Merging local auto shortcuts preferences with new preferences", buf, 0xCu);
  }

  v8 = [v6 appDescriptor];
  if (v8)
  {
    v9 = [v6 appDescriptor];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __94__WFDatabase_AutoShortcutsPreferences__mergeAutoShortcutsPreferencesWithNewPreferences_error___block_invoke;
    v14[3] = &unk_1E8377E08;
    v15 = v6;
    v16 = a4;
    v10 = [(WFDatabase *)self saveAutoShortcutsPreferencesForAppDescriptor:v9 update:v14 error:a4];
    v11 = v10 != 0;
  }

  else
  {
    v9 = getWFDatabaseLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v18 = "[WFDatabase(AutoShortcutsPreferences) mergeAutoShortcutsPreferencesWithNewPreferences:error:]";
      _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_ERROR, "%s Attempting to merge auto shortcuts preferences but app descriptor is nil; skipping merge", buf, 0xCu);
    }

    v11 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

void __94__WFDatabase_AutoShortcutsPreferences__mergeAutoShortcutsPreferencesWithNewPreferences_error___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 disabledAutoShortcuts];
  v5 = [WFDatabase disabledAutoShortcutsFromData:v4];

  v6 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithSet:v5];
  v7 = [*(a1 + 32) disabledAutoShortcuts];
  v8 = [v6 setByAddingObjectsFromSet:v7];

  v9 = [WFDatabase dataFromObject:v6 error:*(a1 + 40)];
  [v3 setDisabledAutoShortcuts:v9];

  if ([v3 siriEnabled])
  {
    v10 = [*(a1 + 32) isSiriEnabled];
  }

  else
  {
    v10 = 0;
  }

  [v3 setSiriEnabled:v10];
  if ([v3 spotlightEnabled])
  {
    v11 = [*(a1 + 32) isSpotlightEnabled];
  }

  else
  {
    v11 = 0;
  }

  [v3 setSpotlightEnabled:v11];
  v12 = [v3 cloudKitMetadata];
  v13 = [*(a1 + 32) cloudKitMetadata];
  v14 = [WFCloudKitItemRequest recordFromSystemFieldsData:v13 error:0];
  if (v12)
  {
    v15 = [WFCloudKitItemRequest recordFromSystemFieldsData:v12 error:0];
    v16 = getWFDatabaseLogObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v18 = 136315650;
      v19 = "[WFDatabase(AutoShortcutsPreferences) mergeAutoShortcutsPreferencesWithNewPreferences:error:]_block_invoke";
      v20 = 2114;
      v21 = v15;
      v22 = 2114;
      v23 = v14;
      _os_log_impl(&dword_1CA256000, v16, OS_LOG_TYPE_INFO, "%s CloudKit metadata exists for auto shortcuts preferences. Existing record: %{public}@, new record: %{public}@", &v18, 0x20u);
    }
  }

  else
  {
    v15 = getWFDatabaseLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v18 = 136315394;
      v19 = "[WFDatabase(AutoShortcutsPreferences) mergeAutoShortcutsPreferencesWithNewPreferences:error:]_block_invoke";
      v20 = 2114;
      v21 = v14;
      _os_log_impl(&dword_1CA256000, v15, OS_LOG_TYPE_INFO, "%s No existing CloudKit metadata for auto shortcuts preferences - setting incoming metdata. New record: %{public}@", &v18, 0x16u);
    }
  }

  [v3 setCloudKitMetadata:v13];
  v17 = *MEMORY[0x1E69E9840];
}

- (BOOL)updateAutoShortcutsPreferencesWithNewPreferences:(id)a3 error:(id *)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = getWFDatabaseLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v18 = "[WFDatabase(AutoShortcutsPreferences) updateAutoShortcutsPreferencesWithNewPreferences:error:]";
    _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_INFO, "%s Updating local auto shortcuts preferences with new preferences", buf, 0xCu);
  }

  v8 = [v6 appDescriptor];
  if (v8)
  {
    v9 = [v6 appDescriptor];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __95__WFDatabase_AutoShortcutsPreferences__updateAutoShortcutsPreferencesWithNewPreferences_error___block_invoke;
    v14[3] = &unk_1E8377E08;
    v15 = v6;
    v16 = a4;
    v10 = [(WFDatabase *)self saveAutoShortcutsPreferencesForAppDescriptor:v9 update:v14 error:a4];
    v11 = v10 != 0;
  }

  else
  {
    v9 = getWFDatabaseLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v18 = "[WFDatabase(AutoShortcutsPreferences) updateAutoShortcutsPreferencesWithNewPreferences:error:]";
      _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_ERROR, "%s Attempting to update auto shortcuts preferences but app descriptor is nil; skipping update", buf, 0xCu);
    }

    v11 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

void __95__WFDatabase_AutoShortcutsPreferences__updateAutoShortcutsPreferencesWithNewPreferences_error___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) appDescriptor];
    v5 = [WFDatabase dataFromObject:v4 error:*(a1 + 40)];
    [v3 setAppDescriptor:v5];

    v6 = [*(a1 + 32) appName];
    [v3 setAppName:v6];

    v7 = [*(a1 + 32) disabledAutoShortcuts];
    v8 = [WFDatabase dataFromObject:v7 error:*(a1 + 40)];
    [v3 setDisabledAutoShortcuts:v8];

    [v3 setSiriEnabled:{objc_msgSend(*(a1 + 32), "isSiriEnabled")}];
    [v3 setSpotlightEnabled:{objc_msgSend(*(a1 + 32), "isSpotlightEnabled")}];
    v9 = [*(a1 + 32) cloudKitMetadata];
    [v3 setCloudKitMetadata:v9];

    [v3 setLastSyncedHash:{objc_msgSend(*(a1 + 32), "lastSyncedHash")}];
  }

  else
  {
    v10 = getWFDatabaseLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315138;
      v13 = "[WFDatabase(AutoShortcutsPreferences) updateAutoShortcutsPreferencesWithNewPreferences:error:]_block_invoke";
      _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_ERROR, "%s Attempting to update auto shortcuts preferences but they were not created because app descriptor is nil", &v12, 0xCu);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)defaultCoreDataAutoShortcutsPreferencesForAppDescriptor:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [WFAutoShortcutsPreferences defaultSettingsForAppDescriptor:v6];
  v8 = [WFCoreDataAutoShortcutsPreferences alloc];
  v9 = [(WFDatabase *)self context];
  v10 = [(WFCoreDataAutoShortcutsPreferences *)v8 initWithContext:v9];

  v11 = [WFDatabase identifierForAppDescriptor:v6];

  [(WFCoreDataAutoShortcutsPreferences *)v10 setIdentifier:v11];
  v12 = [v7 appDescriptor];
  v13 = [WFDatabase dataFromObject:v12 error:a4];
  [(WFCoreDataAutoShortcutsPreferences *)v10 setAppDescriptor:v13];

  v14 = [v7 appName];
  [(WFCoreDataAutoShortcutsPreferences *)v10 setAppName:v14];

  v15 = [v7 disabledAutoShortcuts];
  v16 = [WFDatabase dataFromObject:v15 error:a4];
  [(WFCoreDataAutoShortcutsPreferences *)v10 setDisabledAutoShortcuts:v16];

  -[WFCoreDataAutoShortcutsPreferences setSiriEnabled:](v10, "setSiriEnabled:", [v7 isSiriEnabled]);
  -[WFCoreDataAutoShortcutsPreferences setSpotlightEnabled:](v10, "setSpotlightEnabled:", [v7 isSpotlightEnabled]);

  return v10;
}

- (id)saveAutoShortcutsPreferencesForAppDescriptor:(id)a3 update:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  if (!v9)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"WFDatabase+AutoShortcutsPreferences.m" lineNumber:210 description:{@"Invalid parameter not satisfying: %@", @"appDescriptor"}];
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __98__WFDatabase_AutoShortcutsPreferences__saveAutoShortcutsPreferencesForAppDescriptor_update_error___block_invoke;
  v16[3] = &unk_1E8377DE0;
  v16[4] = self;
  v17 = v9;
  v18 = v10;
  v11 = v10;
  v12 = v9;
  v13 = [(WFDatabase *)self performSaveOperationWithReason:@"saving auto shortcut preferences for app" block:v16 error:a5];

  return v13;
}

id __98__WFDatabase_AutoShortcutsPreferences__saveAutoShortcutsPreferencesForAppDescriptor_update_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) coreDataAutoShortcutsPreferencesForAppDescriptor:*(a1 + 40) error:a2];
  v5 = *(a1 + 32);
  if (v4)
  {
    v6 = v4;
    v7 = objc_alloc(MEMORY[0x1E69E0A68]);
    v8 = [v6 identifier];
    v9 = [v7 initWithIdentifier:v8 objectType:9];
    [v5 addPendingUpdatedDescriptor:v9];
  }

  else
  {
    v6 = [*(a1 + 32) defaultCoreDataAutoShortcutsPreferencesForAppDescriptor:*(a1 + 40) error:a2];
    v10 = *(a1 + 32);
    v11 = objc_alloc(MEMORY[0x1E69E0A68]);
    v8 = [v6 identifier];
    v9 = [v11 initWithIdentifier:v8 objectType:9];
    [v10 addPendingInsertedDescriptor:v9];
  }

  (*(*(a1 + 48) + 16))();

  return v6;
}

- (BOOL)setAutoShortcutDisabledForAppDescriptor:(id)a3 autoShortcutDisabled:(BOOL)a4 autoShortcutIdentifier:(id)a5 error:(id *)a6
{
  v24 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v12 = getWFDatabaseLogObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v23 = "[WFDatabase(AutoShortcutsPreferences) setAutoShortcutDisabledForAppDescriptor:autoShortcutDisabled:autoShortcutIdentifier:error:]";
    _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_INFO, "%s Setting disabled auto shortcuts", buf, 0xCu);
  }

  if (v10)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __130__WFDatabase_AutoShortcutsPreferences__setAutoShortcutDisabledForAppDescriptor_autoShortcutDisabled_autoShortcutIdentifier_error___block_invoke;
    v18[3] = &unk_1E8377DB8;
    v21 = a4;
    v19 = v11;
    v20 = a6;
    v13 = [(WFDatabase *)self saveAutoShortcutsPreferencesForAppDescriptor:v10 update:v18 error:a6];
    v14 = v13 != 0;

    v15 = v19;
  }

  else
  {
    v15 = getWFDatabaseLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v23 = "[WFDatabase(AutoShortcutsPreferences) setAutoShortcutDisabledForAppDescriptor:autoShortcutDisabled:autoShortcutIdentifier:error:]";
      _os_log_impl(&dword_1CA256000, v15, OS_LOG_TYPE_ERROR, "%s Attempting to set disabled auto shortcuts but app descriptor is nil; skipping update", buf, 0xCu);
    }

    v14 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v14;
}

void __130__WFDatabase_AutoShortcutsPreferences__setAutoShortcutDisabledForAppDescriptor_autoShortcutDisabled_autoShortcutIdentifier_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 disabledAutoShortcuts];
  v10 = [WFDatabase disabledAutoShortcutsFromData:v4];

  v5 = [v10 mutableCopy];
  v6 = [v10 containsObject:*(a1 + 32)];
  v7 = v6;
  v8 = *(a1 + 48);
  if (v8 == 1 && (v6 & 1) == 0)
  {
    [v5 addObject:*(a1 + 32)];
    LOBYTE(v8) = *(a1 + 48);
  }

  if ((v8 & 1) == 0 && ((v7 ^ 1) & 1) == 0)
  {
    [v5 removeObject:*(a1 + 32)];
  }

  v9 = [WFDatabase dataFromObject:v5 error:*(a1 + 40)];
  [v3 setDisabledAutoShortcuts:v9];
}

- (BOOL)isAutoShortcutDisabledForBundleIdentifier:(id)a3 autoShortcutIdentifier:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [WFAutoShortcutsPreferences appDescriptorWithBundleIdentifier:a3];
  v13 = 0;
  v8 = [(WFDatabase *)self isAutoShortcutDisabledForAppDescriptor:v7 autoShortcutIdentifier:v6 error:&v13];

  v9 = v13;
  if (v9)
  {
    v10 = getWFDatabaseLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v15 = "[WFDatabase(AutoShortcutsPreferences) isAutoShortcutDisabledForBundleIdentifier:autoShortcutIdentifier:]";
      v16 = 2114;
      v17 = v9;
      _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_ERROR, "%s Error fetching auto shortcut disabled: %{public}@", buf, 0x16u);
    }

    v8 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)isAutoShortcutDisabledForBundleIdentifier:(id)a3 autoShortcutIdentifier:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [WFAutoShortcutsPreferences appDescriptorWithBundleIdentifier:a3];
  LOBYTE(a5) = [(WFDatabase *)self isAutoShortcutDisabledForAppDescriptor:v9 autoShortcutIdentifier:v8 error:a5];

  return a5;
}

- (BOOL)isAutoShortcutDisabledForAppDescriptor:(id)a3 autoShortcutIdentifier:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [(WFDatabase *)self autoShortcutsPreferencesForAppDescriptor:a3 error:a5];
  v10 = [v9 disabledAutoShortcuts];
  LOBYTE(self) = [v10 containsObject:v8];

  return self;
}

- (BOOL)setSpotlightAutoShortcutsEnablement:(BOOL)a3 forAppDescriptor:(id)a4 error:(id *)a5
{
  v18 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = getWFDatabaseLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v17 = "[WFDatabase(AutoShortcutsPreferences) setSpotlightAutoShortcutsEnablement:forAppDescriptor:error:]";
    _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_INFO, "%s Setting Spotlight auto shortcuts enablement", buf, 0xCu);
  }

  if (v8)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __99__WFDatabase_AutoShortcutsPreferences__setSpotlightAutoShortcutsEnablement_forAppDescriptor_error___block_invoke;
    v14[3] = &__block_descriptor_33_e44_v16__0__WFCoreDataAutoShortcutsPreferences_8l;
    v15 = a3;
    v10 = [(WFDatabase *)self saveAutoShortcutsPreferencesForAppDescriptor:v8 update:v14 error:a5];
    v11 = v10 != 0;
  }

  else
  {
    v10 = getWFDatabaseLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v17 = "[WFDatabase(AutoShortcutsPreferences) setSpotlightAutoShortcutsEnablement:forAppDescriptor:error:]";
      _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_ERROR, "%s Attempting to set Spotlight auto shortcuts enablement but app descriptor is nil; skipping update", buf, 0xCu);
    }

    v11 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (BOOL)isSpotlightEnabledForAutoShortcutsWithBundleIdentifier:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v3 = [(WFDatabase *)self isSpotlightEnabledForAutoShortcutsWithBundleIdentifier:a3 error:&v8];
  v4 = v8;
  if (v4)
  {
    v5 = getWFDatabaseLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v10 = "[WFDatabase(AutoShortcutsPreferences) isSpotlightEnabledForAutoShortcutsWithBundleIdentifier:]";
      v11 = 2114;
      v12 = v4;
      _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_DEFAULT, "%s Error fetching Spotlight auto shortcuts preference from the database: %{public}@", buf, 0x16u);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return v3;
}

- (BOOL)isSpotlightEnabledForAutoShortcutsWithBundleIdentifier:(id)a3 error:(id *)a4
{
  v6 = [WFAutoShortcutsPreferences appDescriptorWithBundleIdentifier:a3];
  LOBYTE(a4) = [(WFDatabase *)self isSpotlightEnabledForAutoShortcutsWithAppDescriptor:v6 error:a4];

  return a4;
}

- (BOOL)isSpotlightEnabledForAutoShortcutsWithAppDescriptor:(id)a3 error:(id *)a4
{
  v4 = [(WFDatabase *)self autoShortcutsPreferencesForAppDescriptor:a3 error:a4];
  v5 = [v4 isSpotlightEnabled];

  return v5;
}

- (BOOL)setSiriAutoShortcutsEnablement:(BOOL)a3 forAppDescriptor:(id)a4 error:(id *)a5
{
  v18 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = getWFDatabaseLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v17 = "[WFDatabase(AutoShortcutsPreferences) setSiriAutoShortcutsEnablement:forAppDescriptor:error:]";
    _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_INFO, "%s Setting Siri auto shortcuts enablement", buf, 0xCu);
  }

  if (v8)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __94__WFDatabase_AutoShortcutsPreferences__setSiriAutoShortcutsEnablement_forAppDescriptor_error___block_invoke;
    v14[3] = &__block_descriptor_33_e44_v16__0__WFCoreDataAutoShortcutsPreferences_8l;
    v15 = a3;
    v10 = [(WFDatabase *)self saveAutoShortcutsPreferencesForAppDescriptor:v8 update:v14 error:a5];
    v11 = v10 != 0;
  }

  else
  {
    v10 = getWFDatabaseLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v17 = "[WFDatabase(AutoShortcutsPreferences) setSiriAutoShortcutsEnablement:forAppDescriptor:error:]";
      _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_ERROR, "%s Attempting to set Siri auto shortcuts enablement but app descriptor is nil; skipping setting", buf, 0xCu);
    }

    v11 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (BOOL)isSiriEnabledForAutoShortcutsWithBundleIdentifier:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v3 = [(WFDatabase *)self isSiriEnabledForAutoShortcutsWithBundleIdentifier:a3 error:&v8];
  v4 = v8;
  if (v4)
  {
    v5 = getWFDatabaseLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v10 = "[WFDatabase(AutoShortcutsPreferences) isSiriEnabledForAutoShortcutsWithBundleIdentifier:]";
      v11 = 2114;
      v12 = v4;
      _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_DEFAULT, "%s Error fetching Siri auto shortcuts preference from the database: %{public}@", buf, 0x16u);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return v3;
}

- (BOOL)isSiriEnabledForAutoShortcutsWithBundleIdentifier:(id)a3 error:(id *)a4
{
  v6 = [WFAutoShortcutsPreferences appDescriptorWithBundleIdentifier:a3];
  LOBYTE(a4) = [(WFDatabase *)self isSiriEnabledForAutoShortcutsWithAppDescriptor:v6 error:a4];

  return a4;
}

- (BOOL)isSiriEnabledForAutoShortcutsWithAppDescriptor:(id)a3 error:(id *)a4
{
  v4 = [(WFDatabase *)self autoShortcutsPreferencesForAppDescriptor:a3 error:a4];
  v5 = [v4 isSiriEnabled];

  return v5;
}

- (id)coreDataAutoShortcutsPreferencesForIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = +[WFCoreDataAutoShortcutsPreferences fetchRequest];
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"identifier", v6];

  [v7 setPredicate:v8];
  [v7 setFetchLimit:1];
  v9 = [(WFDatabase *)self context];
  v10 = [v9 executeFetchRequest:v7 error:a4];

  v11 = [v10 firstObject];

  return v11;
}

- (id)coreDataAutoShortcutsPreferencesForAppDescriptor:(id)a3 error:(id *)a4
{
  v6 = [WFDatabase identifierForAppDescriptor:a3];
  v7 = [(WFDatabase *)self coreDataAutoShortcutsPreferencesForIdentifier:v6 error:a4];

  return v7;
}

- (id)autoShortcutsPreferencesForBundleIdentifier:(id)a3 error:(id *)a4
{
  v6 = [WFAutoShortcutsPreferences appDescriptorWithBundleIdentifier:a3];
  v7 = [(WFDatabase *)self autoShortcutsPreferencesForAppDescriptor:v6 error:a4];

  return v7;
}

- (id)autoShortcutsPreferencesFromCoreDataAutoShortcutsPreferences:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = [v3 appDescriptor];
    v5 = [WFDatabase appDescriptorFromData:v4];

    v6 = [v3 disabledAutoShortcuts];
    v7 = [WFDatabase disabledAutoShortcutsFromData:v6];

    v8 = [WFAutoShortcutsPreferences alloc];
    v9 = [v3 siriEnabled];
    v10 = [v3 spotlightEnabled];
    v11 = [v3 cloudKitMetadata];
    v12 = [v3 lastSyncedHash];

    v13 = [(WFAutoShortcutsPreferences *)v8 initWithAppDescriptor:v5 isSiriEnabled:v9 isSpotlightEnabled:v10 disabledAutoShortcuts:v7 cloudKitMetadata:v11 lastSyncedHash:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)autoShortcutsPreferencesForIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __84__WFDatabase_AutoShortcutsPreferences__autoShortcutsPreferencesForIdentifier_error___block_invoke;
  v10[3] = &unk_1E8377D70;
  v10[4] = self;
  v11 = v6;
  v7 = v6;
  v8 = [(WFDatabase *)self performOperationWithReason:@"getting auto shortcut preferences for id" block:v10 error:a4];

  return v8;
}

id __84__WFDatabase_AutoShortcutsPreferences__autoShortcutsPreferencesForIdentifier_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) coreDataAutoShortcutsPreferencesForIdentifier:*(a1 + 40) error:a2];
  v4 = [*(a1 + 32) autoShortcutsPreferencesFromCoreDataAutoShortcutsPreferences:v3];

  return v4;
}

- (id)autoShortcutsPreferencesForAppDescriptor:(id)a3 error:(id *)a4
{
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __87__WFDatabase_AutoShortcutsPreferences__autoShortcutsPreferencesForAppDescriptor_error___block_invoke;
  v10[3] = &unk_1E8377D70;
  v10[4] = self;
  v11 = v6;
  v7 = v6;
  v8 = [(WFDatabase *)self performOperationWithReason:@"getting auto shortcut preferences for app" block:v10 error:a4];

  return v8;
}

id __87__WFDatabase_AutoShortcutsPreferences__autoShortcutsPreferencesForAppDescriptor_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) coreDataAutoShortcutsPreferencesForAppDescriptor:*(a1 + 40) error:a2];
  if (v3)
  {
    [*(a1 + 32) autoShortcutsPreferencesFromCoreDataAutoShortcutsPreferences:v3];
  }

  else
  {
    [WFAutoShortcutsPreferences defaultSettingsForAppDescriptor:*(a1 + 40)];
  }
  v4 = ;

  return v4;
}

+ (id)appDescriptorFromData:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = getWFDatabaseLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v12 = "+[WFDatabase(AutoShortcutsPreferences) appDescriptorFromData:]";
    _os_log_impl(&dword_1CA256000, v4, OS_LOG_TYPE_INFO, "%s Unarchiving app descriptor for auto shortcuts preferences", buf, 0xCu);
  }

  if (v3)
  {
    v10 = 0;
    v5 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:&v10];
    v6 = v10;
    if (v6)
    {
      v7 = getWFDatabaseLogObject();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v12 = "+[WFDatabase(AutoShortcutsPreferences) appDescriptorFromData:]";
        v13 = 2114;
        v14 = v6;
        _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_ERROR, "%s Unarchiving app descriptor for auto shortcuts preferences: failed with error %{public}@", buf, 0x16u);
      }
    }
  }

  else
  {
    v6 = getWFDatabaseLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v12 = "+[WFDatabase(AutoShortcutsPreferences) appDescriptorFromData:]";
      _os_log_impl(&dword_1CA256000, v6, OS_LOG_TYPE_ERROR, "%s Unarchiving app descriptor for auto shortcuts preferences: data is nil; returning nil app descriptor", buf, 0xCu);
    }

    v5 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)disabledAutoShortcutsFromData:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = getWFDatabaseLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v29 = "+[WFDatabase(AutoShortcutsPreferences) disabledAutoShortcutsFromData:]";
    _os_log_impl(&dword_1CA256000, v4, OS_LOG_TYPE_INFO, "%s Unarchiving disabled auto shortcuts", buf, 0xCu);
  }

  if (v3)
  {
    v5 = objc_opt_new();
    v27 = 0;
    v6 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v3 error:&v27];
    v7 = v27;
    v8 = objc_alloc(MEMORY[0x1E695DFD8]);
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [v8 initWithObjects:{v9, v10, v11, objc_opt_class(), 0}];
    v13 = [v6 decodeObjectOfClasses:v12 forKey:*MEMORY[0x1E696A508]];
    if (v7)
    {
      v14 = getWFDatabaseLogObject();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v29 = "+[WFDatabase(AutoShortcutsPreferences) disabledAutoShortcutsFromData:]";
        v30 = 2114;
        v31 = v7;
        _os_log_impl(&dword_1CA256000, v14, OS_LOG_TYPE_ERROR, "%s Unarchiving disabled auto shortcuts: failed with error %{public}@", buf, 0x16u);
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = getWFDatabaseLogObject();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v29 = "+[WFDatabase(AutoShortcutsPreferences) disabledAutoShortcutsFromData:]";
        v30 = 2114;
        v31 = v13;
        _os_log_impl(&dword_1CA256000, v15, OS_LOG_TYPE_ERROR, "%s Unarchiving disabled auto shortcuts: found array %{public}@", buf, 0x16u);
      }

      v16 = [MEMORY[0x1E695DFD8] setWithArray:v13];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_21;
        }

        v23 = getWFDatabaseLogObject();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v29 = "+[WFDatabase(AutoShortcutsPreferences) disabledAutoShortcutsFromData:]";
          v30 = 2114;
          v31 = v13;
          _os_log_impl(&dword_1CA256000, v23, OS_LOG_TYPE_ERROR, "%s Unarchiving disabled auto shortcuts: found dictionary %{public}@", buf, 0x16u);
        }

        v24 = MEMORY[0x1E695DFD8];
        v25 = v13;
        v26 = [v25 allKeys];
        v20 = [v24 setWithArray:v26];

        v5 = v26;
LABEL_20:

        v5 = v20;
LABEL_21:
        v18 = v5;

        goto LABEL_22;
      }

      v19 = getWFDatabaseLogObject();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v29 = "+[WFDatabase(AutoShortcutsPreferences) disabledAutoShortcutsFromData:]";
        v30 = 2114;
        v31 = v13;
        _os_log_impl(&dword_1CA256000, v19, OS_LOG_TYPE_ERROR, "%s Unarchiving disabled auto shortcuts: found set %{public}@", buf, 0x16u);
      }

      v16 = v13;
    }

    v20 = v16;
    goto LABEL_20;
  }

  v17 = getWFDatabaseLogObject();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v29 = "+[WFDatabase(AutoShortcutsPreferences) disabledAutoShortcutsFromData:]";
    _os_log_impl(&dword_1CA256000, v17, OS_LOG_TYPE_ERROR, "%s Unarchiving disabled auto shortcuts: data is nil; returning empty disabled auto shortcuts", buf, 0xCu);
  }

  v18 = objc_opt_new();
LABEL_22:

  v21 = *MEMORY[0x1E69E9840];

  return v18;
}

+ (id)identifierForAppDescriptor:(id)a3
{
  v3 = [WFAutoShortcutsPreferences crossPlatformHashForAppDescriptor:a3];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  v5 = [v4 stringValue];

  return v5;
}

- (id)generateAndPersistUUIDForActionWithIdentifier:(id)a3 actionIndex:(unint64_t)a4 workflowIdentifier:(id)a5
{
  v8 = a3;
  v9 = a5;
  v15 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __105__WFDatabase_SmartPrompts__generateAndPersistUUIDForActionWithIdentifier_actionIndex_workflowIdentifier___block_invoke;
  v16[3] = &unk_1E83780B8;
  v17 = v9;
  v18 = self;
  v19 = v8;
  v20 = a4;
  v10 = v8;
  v11 = v9;
  v12 = [(WFDatabase *)self performSaveOperationWithReason:@"generating UUID for action" block:v16 error:&v15];
  v13 = v15;

  return v12;
}

id __105__WFDatabase_SmartPrompts__generateAndPersistUUIDForActionWithIdentifier_actionIndex_workflowIdentifier___block_invoke(uint64_t a1, uint64_t *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = +[WFCoreDataWorkflowActions fetchRequest];
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %@", @"shortcut.workflowID", *(a1 + 32)];
  [v4 setPredicate:v5];

  [v4 setFetchLimit:1];
  v6 = [*(a1 + 40) context];
  v7 = [v6 executeFetchRequest:v4 error:a2];

  v8 = [v7 firstObject];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 data];
    if (v10)
    {
      v32 = 0;
      v11 = [MEMORY[0x1E696AE40] propertyListWithData:v10 options:1 format:0 error:&v32];
      v12 = v32;
      if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v13 = [v11 objectAtIndex:*(a1 + 56)];
        v31 = [v13 objectForKey:@"WFWorkflowActionIdentifier"];
        if ([v31 isEqualToString:*(a1 + 48)])
        {
          v30 = v13;
          v14 = [v13 objectForKey:@"WFWorkflowActionParameters"];
          if (!v14)
          {
            v15 = getWFWorkflowExecutionLogObject();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
            {
              v16 = *(a1 + 48);
              *buf = 136315394;
              v34 = "[WFDatabase(SmartPrompts) generateAndPersistUUIDForActionWithIdentifier:actionIndex:workflowIdentifier:]_block_invoke";
              v35 = 2114;
              v36 = v16;
              _os_log_impl(&dword_1CA256000, v15, OS_LOG_TYPE_DEBUG, "%s Action %{public}@ does not have WFWorkflowActionParameters, creating dictionary", buf, 0x16u);
            }

            v14 = [MEMORY[0x1E695DF90] dictionary];
            [v30 setObject:v14 forKey:@"WFWorkflowActionParameters"];
          }

          v17 = [v14 objectForKey:@"UUID"];
          v18 = v17;
          if (v17)
          {
            v19 = v17;
          }

          else
          {
            v29 = [MEMORY[0x1E696AFB0] UUID];
            v19 = [v29 UUIDString];

            [v14 setObject:v19 forKey:@"UUID"];
            v26 = [MEMORY[0x1E696AE40] dataWithPropertyList:v11 format:200 options:0 error:a2];
            [v9 setData:v26];
          }

          v13 = v30;
        }

        else
        {
          v25 = getWFWorkflowExecutionLogObject();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
          {
            *buf = 136315138;
            v34 = "[WFDatabase(SmartPrompts) generateAndPersistUUIDForActionWithIdentifier:actionIndex:workflowIdentifier:]_block_invoke";
            _os_log_impl(&dword_1CA256000, v25, OS_LOG_TYPE_FAULT, "%s actionIdentifier mismatch found, result won't be saved", buf, 0xCu);
          }

          v14 = [MEMORY[0x1E696AFB0] UUID];
          v19 = [v14 UUIDString];
        }
      }

      else
      {

        v22 = getWFSecurityLogObject();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = *a2;
          *buf = 136315394;
          v34 = "[WFDatabase(SmartPrompts) generateAndPersistUUIDForActionWithIdentifier:actionIndex:workflowIdentifier:]_block_invoke";
          v35 = 2114;
          v36 = v23;
          _os_log_impl(&dword_1CA256000, v22, OS_LOG_TYPE_ERROR, "%s Could not deserialize actions from plist: %{public}@", buf, 0x16u);
        }

        v11 = [MEMORY[0x1E696AFB0] UUID];
        v19 = [v11 UUIDString];
      }
    }

    else
    {
      v24 = getWFSecurityLogObject();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v34 = "[WFDatabase(SmartPrompts) generateAndPersistUUIDForActionWithIdentifier:actionIndex:workflowIdentifier:]_block_invoke";
        _os_log_impl(&dword_1CA256000, v24, OS_LOG_TYPE_ERROR, "%s No NSData found on WFCoreDataWorkflowActions object.", buf, 0xCu);
      }

      v12 = [MEMORY[0x1E696AFB0] UUID];
      v19 = [v12 UUIDString];
    }
  }

  else
  {
    v20 = getWFSecurityLogObject();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = *(a1 + 32);
      *buf = 136315394;
      v34 = "[WFDatabase(SmartPrompts) generateAndPersistUUIDForActionWithIdentifier:actionIndex:workflowIdentifier:]_block_invoke";
      v35 = 2112;
      v36 = v21;
      _os_log_impl(&dword_1CA256000, v20, OS_LOG_TYPE_ERROR, "%s No WFCoreDataWorkflowActions object found for workflow with identifier %@.", buf, 0x16u);
    }

    v10 = [MEMORY[0x1E696AFB0] UUID];
    v19 = [v10 UUIDString];
  }

  v27 = *MEMORY[0x1E69E9840];

  return v19;
}

- (void)deleteAllDeletionAuthorizationsForReference:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72__WFDatabase_SmartPrompts__deleteAllDeletionAuthorizationsForReference___block_invoke;
  v11[3] = &unk_1E837F978;
  v11[4] = self;
  v5 = v4;
  v12 = v5;
  v10 = 0;
  [(WFDatabase *)self performTransactionWithReason:@"delete all deletion authorizations" block:v11 error:&v10];
  v6 = v10;
  if (v6)
  {
    v7 = getWFDatabaseLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [v6 localizedDescription];
      *buf = 136315394;
      v14 = "[WFDatabase(SmartPrompts) deleteAllDeletionAuthorizationsForReference:]";
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_ERROR, "%s Unable to delete all per-workflow smart prompt data: %@", buf, 0x16u);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __72__WFDatabase_SmartPrompts__deleteAllDeletionAuthorizationsForReference___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) objectForDescriptor:*(a1 + 40) properties:MEMORY[0x1E695E0F0]];
  v3 = objc_opt_class();
  v4 = WFEnforceClass_29244(v2, v3);

  v5 = [v4 smartPromptPermissions];
  v6 = [v5 mutableCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = objc_opt_new();
  }

  v9 = v8;

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v22 + 1) + 8 * i);
        v16 = [v15 data];
        v17 = [WFDeletionAuthorizationState stateFromDatabaseData:v16];

        if (v17)
        {
          v18 = [*(a1 + 32) context];
          [v18 deleteObject:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v12);
  }

  v19 = *(a1 + 32);
  v26 = @"smartPromptPermissions";
  v20 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:&v26 count:1];

  [v19 object:v4 didUpdateProperties:v20];
  [*(a1 + 32) addPendingUpdatedDescriptor:*(a1 + 40)];

  v21 = *MEMORY[0x1E69E9840];
}

- (void)deleteAllSmartPromptStateDataForReference:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __70__WFDatabase_SmartPrompts__deleteAllSmartPromptStateDataForReference___block_invoke;
  v11[3] = &unk_1E837F978;
  v11[4] = self;
  v5 = v4;
  v12 = v5;
  v10 = 0;
  [(WFDatabase *)self performTransactionWithReason:@"delete all smart prompt states" block:v11 error:&v10];
  v6 = v10;
  if (v6)
  {
    v7 = getWFDatabaseLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [v6 localizedDescription];
      *buf = 136315394;
      v14 = "[WFDatabase(SmartPrompts) deleteAllSmartPromptStateDataForReference:]";
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_ERROR, "%s Unable to delete all per-workflow smart prompt data: %@", buf, 0x16u);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __70__WFDatabase_SmartPrompts__deleteAllSmartPromptStateDataForReference___block_invoke(uint64_t a1, uint64_t a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = [*(a1 + 32) objectForDescriptor:*(a1 + 40) properties:MEMORY[0x1E695E0F0]];
  v5 = objc_opt_class();
  v6 = WFEnforceClass_29244(v4, v5);

  v7 = +[WFCoreDataSmartPromptPermission fetchRequest];
  v24 = v6;
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %@", @"shortcut", v6];
  [v7 setPredicate:v8];

  v9 = [*(a1 + 32) context];
  v23 = v7;
  v10 = [v9 executeFetchRequest:v7 error:a2];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v25 objects:v32 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v26;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v25 + 1) + 8 * i);
        v17 = getWFWorkflowExecutionLogObject();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          v18 = [v16 actionUUID];
          *buf = 136315394;
          *&buf[4] = "[WFDatabase(SmartPrompts) deleteAllSmartPromptStateDataForReference:]_block_invoke";
          v30 = 2114;
          v31 = v18;
          _os_log_impl(&dword_1CA256000, v17, OS_LOG_TYPE_DEBUG, "%s Deleting smart prompt permission with actionUUID: %{public}@", buf, 0x16u);
        }

        v19 = [*(a1 + 32) context];
        [v19 deleteObject:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v25 objects:v32 count:16];
    }

    while (v13);
  }

  v20 = *(a1 + 32);
  *buf = @"smartPromptPermissions";
  v21 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:buf count:1];

  [v20 object:v24 didUpdateProperties:v21];
  [*(a1 + 32) addPendingUpdatedDescriptor:*(a1 + 40)];

  v22 = *MEMORY[0x1E69E9840];
}

- (void)deleteSmartPromptStatesForDeletedActionUUIDs:(id)a3 forReference:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __86__WFDatabase_SmartPrompts__deleteSmartPromptStatesForDeletedActionUUIDs_forReference___block_invoke;
  v15[3] = &unk_1E837F390;
  v15[4] = self;
  v8 = v7;
  v16 = v8;
  v9 = v6;
  v17 = v9;
  v14 = 0;
  [(WFDatabase *)self performTransactionWithReason:@"delete smart prompt state for deleted actions" block:v15 error:&v14];
  v10 = v14;
  if (v10)
  {
    v11 = getWFDatabaseLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [v10 localizedDescription];
      *buf = 136315394;
      v19 = "[WFDatabase(SmartPrompts) deleteSmartPromptStatesForDeletedActionUUIDs:forReference:]";
      v20 = 2112;
      v21 = v12;
      _os_log_impl(&dword_1CA256000, v11, OS_LOG_TYPE_ERROR, "%s Unable to delete smart prompt data upon action deletion: %@", buf, 0x16u);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __86__WFDatabase_SmartPrompts__deleteSmartPromptStatesForDeletedActionUUIDs_forReference___block_invoke(uint64_t a1, uint64_t a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = [*(a1 + 32) objectForDescriptor:*(a1 + 40) properties:MEMORY[0x1E695E0F0]];
  v5 = objc_opt_class();
  v6 = WFEnforceClass_29244(v4, v5);

  v7 = +[WFCoreDataSmartPromptPermission fetchRequest];
  v24 = v6;
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %@ AND %K IN %@", @"shortcut", v6, @"actionUUID", *(a1 + 48)];
  [v7 setPredicate:v8];

  v9 = [*(a1 + 32) context];
  v23 = v7;
  v10 = [v9 executeFetchRequest:v7 error:a2];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v25 objects:v32 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v26;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v25 + 1) + 8 * i);
        v17 = getWFWorkflowExecutionLogObject();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          v18 = [v16 actionUUID];
          *buf = 136315394;
          *&buf[4] = "[WFDatabase(SmartPrompts) deleteSmartPromptStatesForDeletedActionUUIDs:forReference:]_block_invoke";
          v30 = 2114;
          v31 = v18;
          _os_log_impl(&dword_1CA256000, v17, OS_LOG_TYPE_DEBUG, "%s Deleting smart prompt permission with actionUUID: %{public}@", buf, 0x16u);
        }

        v19 = [*(a1 + 32) context];
        [v19 deleteObject:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v25 objects:v32 count:16];
    }

    while (v13);
  }

  if (v24)
  {
    v20 = *(a1 + 32);
    *buf = @"smartPromptPermissions";
    v21 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:buf count:1];

    [v20 object:v24 didUpdateProperties:v21];
  }

  [*(a1 + 32) addPendingUpdatedDescriptor:*(a1 + 40)];

  v22 = *MEMORY[0x1E69E9840];
}

- (void)_deleteSmartPromptState:(id)a3 forReference:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v26 = a4;
  v7 = [WFDatabase objectForDescriptor:"objectForDescriptor:properties:" properties:?];
  v8 = objc_opt_class();
  v9 = WFEnforceClass_29244(v7, v8);

  v25 = v9;
  v10 = [v9 smartPromptPermissions];
  v11 = [v10 mutableCopy];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = objc_opt_new();
  }

  v14 = v13;

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v15 = v14;
  v16 = [v15 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v28;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v28 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v27 + 1) + 8 * i);
        v21 = [v20 data];
        v22 = [WFSmartPromptState stateFromDatabaseData:v21];

        if ([v22 matches:v6])
        {
          v23 = [(WFDatabase *)self context];
          [v23 deleteObject:v20];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v17);
  }

  [(WFDatabase *)self addPendingUpdatedDescriptor:v26];
  v24 = *MEMORY[0x1E69E9840];
}

- (void)deleteSmartPromptState:(id)a3 forReference:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __64__WFDatabase_SmartPrompts__deleteSmartPromptState_forReference___block_invoke;
  v15[3] = &unk_1E837F390;
  v15[4] = self;
  v8 = v6;
  v16 = v8;
  v9 = v7;
  v17 = v9;
  v14 = 0;
  [(WFDatabase *)self performTransactionWithReason:@"delete smart prompt state" block:v15 error:&v14];
  v10 = v14;
  if (v10)
  {
    v11 = getWFDatabaseLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [v10 localizedDescription];
      *buf = 136315394;
      v19 = "[WFDatabase(SmartPrompts) deleteSmartPromptState:forReference:]";
      v20 = 2112;
      v21 = v12;
      _os_log_impl(&dword_1CA256000, v11, OS_LOG_TYPE_ERROR, "%s Unable to delete smart prompt state: %@", buf, 0x16u);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_updateDeletionAuthorizationsToMatchAuthorization:(id)a3 forWorkflow:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v24 = [v5 status];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v23 = v6;
  v7 = [v6 smartPromptPermissions];
  v8 = [v7 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v27;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        v13 = [v12 data];
        v14 = [WFDeletionAuthorizationState stateFromDatabaseData:v13];

        if (v14)
        {
          v15 = [v14 contentItemClassName];
          v16 = [v5 contentItemClassName];
          v17 = [v15 isEqualToString:v16];

          if (v17)
          {
            v18 = [v14 stateWithStatus:v24 count:{objc_msgSend(v14, "count")}];
            v25 = 0;
            v19 = [v18 databaseDataWithError:&v25];
            v20 = v25;
            [v12 setData:v19];

            if (v20)
            {
              v21 = getWFSecurityLogObject();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                v31 = "[WFDatabase(SmartPrompts) _updateDeletionAuthorizationsToMatchAuthorization:forWorkflow:]";
                v32 = 2112;
                v33 = v20;
                _os_log_impl(&dword_1CA256000, v21, OS_LOG_TYPE_ERROR, "%s Failed to generate deletion authorization state data upon grouping: %@", buf, 0x16u);
              }
            }
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v9);
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)_updateStatesToMatchSmartPromptState:(id)a3 forWorkflow:(id)a4
{
  v57 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = getWFSecurityLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = [v6 smartPromptPermissions];
    *buf = 136315650;
    v52 = "[WFDatabase(SmartPrompts) _updateStatesToMatchSmartPromptState:forWorkflow:]";
    v53 = 2048;
    v54 = [v8 count];
    v55 = 2114;
    v56 = v5;
    _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_DEBUG, "%s Grouping: updating %lu permissions to match %{public}@", buf, 0x20u);
  }

  v40 = [v5 status];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v39 = v6;
  obj = [v6 smartPromptPermissions];
  v9 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v47;
    v41 = *v47;
    do
    {
      v12 = 0;
      v43 = v10;
      do
      {
        if (*v47 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v46 + 1) + 8 * v12);
        v14 = [v13 data];
        v15 = [WFSmartPromptState stateFromDatabaseData:v14];

        if (v15)
        {
          v16 = [v15 mode];
          v17 = [v16 isEqualToString:@"Normal"];

          if (v17)
          {
            v18 = [v15 sourceContentAttribution];
            v19 = [v18 origin];
            v20 = v5;
            v21 = [v5 sourceContentAttribution];
            v22 = [v21 origin];
            v23 = v19;
            v24 = v22;
            v25 = v24;
            if (v23 == v24)
            {

              goto LABEL_24;
            }

            if (v23)
            {
              v26 = v24 == 0;
            }

            else
            {
              v26 = 1;
            }

            if (v26)
            {
            }

            else
            {
              v33 = [v23 isEqual:v24];

              if (v33)
              {
LABEL_24:
                v34 = [v15 contentDestination];
                v5 = v20;
                v35 = [v20 contentDestination];
                v42 = [v34 isEqual:v35];

                v11 = v41;
                v10 = v43;
                if ((v42 & 1) == 0)
                {
                  goto LABEL_31;
                }

LABEL_25:
                v36 = [v15 stateWithStatus:v40];
                v45 = 0;
                v37 = [v36 databaseDataWithError:&v45];
                v18 = v45;
                [v13 setData:v37];

                if (v18)
                {
                  v23 = getWFSecurityLogObject();
                  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136315394;
                    v52 = "[WFDatabase(SmartPrompts) _updateStatesToMatchSmartPromptState:forWorkflow:]";
                    v53 = 2112;
                    v54 = v18;
                    _os_log_impl(&dword_1CA256000, v23, OS_LOG_TYPE_ERROR, "%s Failed to generate database data for smart prompt state upon grouping: %@", buf, 0x16u);
                  }

LABEL_29:

                  v10 = v43;
                }

                goto LABEL_31;
              }
            }

            v5 = v20;
            v11 = v41;
            goto LABEL_29;
          }

          v27 = [v15 mode];
          if ([v27 isEqualToString:@"UserWildcard"])
          {
          }

          else
          {
            v28 = [v15 mode];
            v29 = [v28 isEqualToString:@"ActionWildcard"];

            if (!v29)
            {
              goto LABEL_31;
            }
          }

          v30 = [v15 contentDestination];
          v31 = [v5 contentDestination];
          v32 = [v30 isEqual:v31];

          if (v32)
          {
            goto LABEL_25;
          }
        }

LABEL_31:

        ++v12;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
    }

    while (v10);
  }

  v38 = *MEMORY[0x1E69E9840];
}

- (void)_saveSmartPromptStateData:(id)a3 actionUUID:(id)a4 forWorkflow:(id)a5
{
  v50 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v40 = [WFDeletionAuthorizationState stateFromDatabaseData:v8];
  v38 = [WFSmartPromptState stateFromDatabaseData:v8];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v11 = [v10 smartPromptPermissions];
  v12 = [v11 countByEnumeratingWithState:&v41 objects:v49 count:16];
  if (v12)
  {
    v13 = v12;
    v34 = self;
    v35 = v10;
    v36 = v9;
    v37 = v8;
    v14 = 0;
    v15 = *v42;
    obj = v11;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v42 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v41 + 1) + 8 * i);
        v18 = [v17 data];
        v19 = [WFDeletionAuthorizationState stateFromDatabaseData:v18];

        v20 = [v17 data];
        v21 = [WFSmartPromptState stateFromDatabaseData:v20];

        if (v19 && ([v19 actionUUID], v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v40, "actionUUID"), v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v22, "isEqual:", v23), v23, v22, (v24 & 1) != 0) || v21 && objc_msgSend(v21, "matches:", v38))
        {
          v25 = v17;

          v14 = v25;
        }
      }

      v13 = [obj countByEnumeratingWithState:&v41 objects:v49 count:16];
    }

    while (v13);

    v9 = v36;
    v8 = v37;
    self = v34;
    v10 = v35;
    if (v14)
    {
      v26 = getWFSecurityLogObject();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v46 = "[WFDatabase(SmartPrompts) _saveSmartPromptStateData:actionUUID:forWorkflow:]";
        v47 = 2114;
        v48 = v38;
        _os_log_impl(&dword_1CA256000, v26, OS_LOG_TYPE_DEBUG, "%s Replacing existing WFCoreDataSmartPromptPermission with new data: %{public}@", buf, 0x16u);
      }

      goto LABEL_21;
    }
  }

  else
  {
  }

  v27 = getWFSecurityLogObject();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v46 = "[WFDatabase(SmartPrompts) _saveSmartPromptStateData:actionUUID:forWorkflow:]";
    v47 = 2114;
    v48 = v38;
    _os_log_impl(&dword_1CA256000, v27, OS_LOG_TYPE_DEBUG, "%s Inserting new WFCoreDataSmartPromptPermission with data: %{public}@", buf, 0x16u);
  }

  v28 = [WFCoreDataSmartPromptPermission alloc];
  v29 = [(WFDatabase *)self context];
  v14 = [(WFCoreDataSmartPromptPermission *)v28 initWithContext:v29];

  [v10 addSmartPromptPermissionsObject:v14];
LABEL_21:
  [(WFCoreDataSmartPromptPermission *)v14 setShortcut:v10];
  [(WFCoreDataSmartPromptPermission *)v14 setActionUUID:v9];
  [(WFCoreDataSmartPromptPermission *)v14 setData:v8];
  v30 = objc_alloc(MEMORY[0x1E69E0A68]);
  v31 = [v10 workflowID];
  v32 = [v30 initWithIdentifier:v31 objectType:0];
  [(WFDatabase *)self addPendingUpdatedDescriptor:v32];

  v33 = *MEMORY[0x1E69E9840];
}

- (BOOL)saveSmartPromptStateData:(id)a3 actionUUID:(id)a4 reference:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __80__WFDatabase_SmartPrompts__saveSmartPromptStateData_actionUUID_reference_error___block_invoke;
  v21[3] = &unk_1E837F368;
  v21[4] = self;
  v13 = v12;
  v22 = v13;
  v14 = v10;
  v23 = v14;
  v15 = v11;
  v24 = v15;
  v20 = 0;
  [(WFDatabase *)self performTransactionWithReason:@"save smart prompt state" block:v21 error:&v20];
  v16 = v20;
  v17 = v16;
  if (a6)
  {
    v18 = v16;
    *a6 = v17;
  }

  return v17 == 0;
}

void __80__WFDatabase_SmartPrompts__saveSmartPromptStateData_actionUUID_reference_error___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) objectForDescriptor:*(a1 + 40) properties:MEMORY[0x1E695E0F0]];
  v3 = objc_opt_class();
  v4 = WFEnforceClass_29244(v2, v3);

  if (v4)
  {
    [*(a1 + 32) _saveSmartPromptStateData:*(a1 + 48) actionUUID:*(a1 + 56) forWorkflow:v4];
    v5 = [WFDeletionAuthorizationState stateFromDatabaseData:*(a1 + 48)];
    v6 = [WFSmartPromptState stateFromDatabaseData:*(a1 + 48)];
    if (v6)
    {
      v7 = getWFSecurityLogObject();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *v12 = 136315394;
        *&v12[4] = "[WFDatabase(SmartPrompts) saveSmartPromptStateData:actionUUID:reference:error:]_block_invoke";
        v13 = 2114;
        v14 = v6;
        _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_DEBUG, "%s Updating existing smart prompt states to match %{public}@", v12, 0x16u);
      }

      [*(a1 + 32) _updateStatesToMatchSmartPromptState:v6 forWorkflow:v4];
    }

    else if (v5)
    {
      v8 = getWFSecurityLogObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *v12 = 136315394;
        *&v12[4] = "[WFDatabase(SmartPrompts) saveSmartPromptStateData:actionUUID:reference:error:]_block_invoke";
        v13 = 2114;
        v14 = v5;
        _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_DEBUG, "%s Updating existing deletion states to match %{public}@", v12, 0x16u);
      }

      [*(a1 + 32) _updateDeletionAuthorizationsToMatchAuthorization:v5 forWorkflow:v4];
    }

    v9 = *(a1 + 32);
    *v12 = @"smartPromptPermissions";
    v10 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:v12 count:1];

    [v9 object:v4 didUpdateProperties:v10];
  }

  else
  {
    v5 = getWFSecurityLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      *v12 = 136315138;
      *&v12[4] = "[WFDatabase(SmartPrompts) saveSmartPromptStateData:actionUUID:reference:error:]_block_invoke";
      _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_FAULT, "%s Bad reference passed to saveSmartPromptStateData", v12, 0xCu);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (BOOL)saveSmartPromptState:(id)a3 reference:(id)a4 error:(id *)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v22 = 0;
  v10 = [v8 databaseDataWithError:&v22];
  v11 = v22;
  if (v10)
  {
    v12 = [v8 actionUUID];
    v21 = 0;
    v13 = [(WFDatabase *)self saveSmartPromptStateData:v10 actionUUID:v12 reference:v9 error:&v21];
    v14 = v21;

    if (!v13)
    {
      v15 = getWFSecurityLogObject();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v24 = "[WFDatabase(SmartPrompts) saveSmartPromptState:reference:error:]";
        v25 = 2114;
        v26 = v14;
        _os_log_impl(&dword_1CA256000, v15, OS_LOG_TYPE_ERROR, "%s Could not save flattened smart prompt state: %{public}@", buf, 0x16u);
      }

      if (a5)
      {
        v16 = v14;
        *a5 = v14;
      }
    }
  }

  else
  {
    v17 = getWFSecurityLogObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v24 = "[WFDatabase(SmartPrompts) saveSmartPromptState:reference:error:]";
      v25 = 2114;
      v26 = v11;
      _os_log_impl(&dword_1CA256000, v17, OS_LOG_TYPE_ERROR, "%s Could not serialize smart prompt state: %{public}@", buf, 0x16u);
    }

    if (a5)
    {
      v18 = v11;
      v13 = 0;
      *a5 = v11;
    }

    else
    {
      v13 = 0;
    }
  }

  v19 = *MEMORY[0x1E69E9840];
  return v13;
}

- (id)allStatesDataForReference:(id)a3 actionUUID:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __65__WFDatabase_SmartPrompts__allStatesDataForReference_actionUUID___block_invoke;
  v17[3] = &unk_1E8378090;
  v8 = v7;
  v18 = v8;
  v9 = v6;
  v19 = v9;
  v20 = self;
  v16 = 0;
  v10 = [(WFDatabase *)self performOperationWithReason:@"getting smart prompt data for shortcut" block:v17 error:&v16];
  v11 = v16;
  if (v11)
  {
    v12 = getWFSecurityLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v22 = "[WFDatabase(SmartPrompts) allStatesDataForReference:actionUUID:]";
      v23 = 2112;
      v24 = v11;
      _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_ERROR, "%s Failed to lookup smart prompt states for reference: %@", buf, 0x16u);
    }

    v13 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v13 = v10;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

id __65__WFDatabase_SmartPrompts__allStatesDataForReference_actionUUID___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = +[WFCoreDataSmartPromptPermission fetchRequest];
  v5 = MEMORY[0x1E696AE18];
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) identifier];
  v8 = v7;
  if (v6)
  {
    [v5 predicateWithFormat:@"%K = %@ AND %K = %@", @"shortcut.workflowID", v7, @"actionUUID", *(a1 + 32)];
  }

  else
  {
    [v5 predicateWithFormat:@"%K = %@", @"shortcut.workflowID", v7, v14, v15];
  }
  v9 = ;
  [v4 setPredicate:v9];

  v10 = [*(a1 + 48) context];
  v11 = [v10 executeFetchRequest:v4 error:a2];
  v12 = [v11 if_map:&__block_literal_global_213];

  return v12;
}

- (id)deletionAuthorizationStatesForReference:(id)a3
{
  v3 = [(WFDatabase *)self allStatesDataForReference:a3 actionUUID:0];
  v4 = [v3 if_compactMap:&__block_literal_global_193_29296];

  return v4;
}

- (void)compactDeletionAuthorizationsIfNecessaryForWorkflowReference:(id)a3
{
  v52 = *MEMORY[0x1E69E9840];
  v35 = a3;
  v3 = [(WFDatabase *)self deletionAuthorizationStatesForReference:?];
  v4 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v3, "count")}];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v42 objects:v51 count:16];
  v33 = v5;
  if (v6)
  {
    v7 = v6;
    v8 = *v43;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v43 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v42 + 1) + 8 * i);
        v11 = [v10 contentItemClassName];
        v12 = [v4 objectForKey:v11];

        if (!v12)
        {
          goto LABEL_12;
        }

        v13 = [v12 status];

        if (v13 == @"Disallow")
        {
          goto LABEL_14;
        }

        v14 = [v10 status];

        if (v14 == @"Disallow")
        {
          goto LABEL_12;
        }

        v15 = [v10 status];
        if (v15 != @"Allow")
        {
          goto LABEL_13;
        }

        v16 = [v10 count];
        v17 = [v12 count];

        v18 = v16 >= v17;
        v5 = v33;
        if (v18)
        {
LABEL_12:
          v15 = [v10 contentItemClassName];
          [v4 setObject:v10 forKey:v15];
LABEL_13:
        }

LABEL_14:
      }

      v7 = [v5 countByEnumeratingWithState:&v42 objects:v51 count:16];
    }

    while (v7);
  }

  v19 = [v4 allValues];
  [(WFDatabase *)self deleteAllDeletionAuthorizationsForReference:v35];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v20 = v19;
  v21 = [v20 countByEnumeratingWithState:&v38 objects:v50 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v39;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v39 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v38 + 1) + 8 * j);
        v37 = 0;
        v26 = [v25 databaseDataWithError:&v37];
        v27 = v37;
        if (v27)
        {
          v28 = getWFSecurityLogObject();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v47 = "[WFDatabase(SmartPrompts) compactDeletionAuthorizationsIfNecessaryForWorkflowReference:]";
            v48 = 2112;
            v49 = v27;
            _os_log_impl(&dword_1CA256000, v28, OS_LOG_TYPE_ERROR, "%s Failed to serialize WFDeletionAuthorizationState for save with error %@", buf, 0x16u);
          }
        }

        else
        {
          v29 = [v25 actionUUID];
          v36 = 0;
          v30 = [(WFDatabase *)self saveSmartPromptStateData:v26 actionUUID:v29 reference:v35 error:&v36];
          v28 = v36;

          if (!v30)
          {
            v31 = getWFSecurityLogObject();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v47 = "[WFDatabase(SmartPrompts) compactDeletionAuthorizationsIfNecessaryForWorkflowReference:]";
              v48 = 2112;
              v49 = v28;
              _os_log_impl(&dword_1CA256000, v31, OS_LOG_TYPE_ERROR, "%s Failed to save WFDeletionAuthorizationState with error %@", buf, 0x16u);
            }
          }
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v38 objects:v50 count:16];
    }

    while (v22);
  }

  v32 = *MEMORY[0x1E69E9840];
}

- (id)currentDeletionAuthorizationStatusWithContentItemClassName:(id)a3 actionUUID:(id)a4 actionIdentifier:(id)a5 actionIndex:(unint64_t)a6 count:(unint64_t)a7 reference:(id)a8
{
  v44 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a8;
  v18 = v17;
  if (!v15)
  {
    v19 = [v17 identifier];
    v15 = [(WFDatabase *)self generateAndPersistUUIDForActionWithIdentifier:v16 actionIndex:a6 workflowIdentifier:v19];
  }

  if (+[WFShortcutsSecuritySettings allowsDeletingLargeAmountsOfData]|| [WFContentExfiltrationQuantityInfo deletionItemCountLimitForContentWithContentItemClassName:v14]>= a7)
  {
    [(WFDatabase *)self compactDeletionAuthorizationsIfNecessaryForWorkflowReference:v18];
    v22 = [(WFDatabase *)self deletionAuthorizationStatesForReference:v18];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __143__WFDatabase_SmartPrompts__currentDeletionAuthorizationStatusWithContentItemClassName_actionUUID_actionIdentifier_actionIndex_count_reference___block_invoke;
    v36[3] = &unk_1E8378028;
    v23 = v14;
    v37 = v23;
    v24 = [v22 if_firstObjectPassingTest:v36];
    v25 = v24;
    if (!v24)
    {
      v29 = getWFSecurityLogObject();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v39 = "[WFDatabase(SmartPrompts) currentDeletionAuthorizationStatusWithContentItemClassName:actionUUID:actionIdentifier:actionIndex:count:reference:]";
        v40 = 2114;
        v41 = v23;
        v42 = 2114;
        v43 = v15;
        _os_log_impl(&dword_1CA256000, v29, OS_LOG_TYPE_DEFAULT, "%s No deletion authorization states found for content item class %{public}@, actionUUID: %{public}@", buf, 0x20u);
      }

      v30 = [[WFDeletionAuthorizationState alloc] initWithStatus:@"Undefined" contentItemClassName:v23 actionUUID:v15 count:a7];
      goto LABEL_24;
    }

    v26 = [v24 status];
    v27 = [v26 isEqualToString:@"Disallow"];

    if (v27)
    {
      v28 = getWFSecurityLogObject();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v39 = "[WFDatabase(SmartPrompts) currentDeletionAuthorizationStatusWithContentItemClassName:actionUUID:actionIdentifier:actionIndex:count:reference:]";
        _os_log_impl(&dword_1CA256000, v28, OS_LOG_TYPE_DEFAULT, "%s Not authorizing deletion because the user disallowed deletion previously", buf, 0xCu);
      }
    }

    else
    {
      v31 = [v25 count];
      v32 = getWFSecurityLogObject();
      v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
      if (a7 > 2 * v31)
      {
        if (v33)
        {
          *buf = 136315138;
          v39 = "[WFDatabase(SmartPrompts) currentDeletionAuthorizationStatusWithContentItemClassName:actionUUID:actionIdentifier:actionIndex:count:reference:]";
          _os_log_impl(&dword_1CA256000, v32, OS_LOG_TYPE_DEFAULT, "%s Will prompt for deletion because currentCount > 2 * previousCount", buf, 0xCu);
        }

        v30 = [v25 stateWithStatus:@"Undefined" count:a7];
        goto LABEL_24;
      }

      if (v33)
      {
        *buf = 136315138;
        v39 = "[WFDatabase(SmartPrompts) currentDeletionAuthorizationStatusWithContentItemClassName:actionUUID:actionIdentifier:actionIndex:count:reference:]";
        _os_log_impl(&dword_1CA256000, v32, OS_LOG_TYPE_DEFAULT, "%s Will not prompt for deletion because there is a valid deletion authorization in the database.", buf, 0xCu);
      }
    }

    v30 = v25;
LABEL_24:
    v21 = v30;

    goto LABEL_25;
  }

  v20 = getWFSecurityLogObject();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v39 = "[WFDatabase(SmartPrompts) currentDeletionAuthorizationStatusWithContentItemClassName:actionUUID:actionIdentifier:actionIndex:count:reference:]";
    v40 = 2114;
    v41 = v14;
    _os_log_impl(&dword_1CA256000, v20, OS_LOG_TYPE_DEFAULT, "%s Deletion action will be restricted because allowsDeletingLargeAmountsOfData is set to NO, and the count for %{public}@ is greater than the maximum allowed", buf, 0x16u);
  }

  v21 = [[WFDeletionAuthorizationState alloc] initWithStatus:@"Restricted" contentItemClassName:v14 actionUUID:v15 count:a7];
LABEL_25:

  v34 = *MEMORY[0x1E69E9840];

  return v21;
}

uint64_t __143__WFDatabase_SmartPrompts__currentDeletionAuthorizationStatusWithContentItemClassName_actionUUID_actionIdentifier_actionIndex_count_reference___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 contentItemClassName];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)smartPromptStatesForReference:(id)a3 actionUUID:(id)a4
{
  v4 = [(WFDatabase *)self allStatesDataForReference:a3 actionUUID:a4];
  v5 = [v4 if_compactMap:&__block_literal_global_29307];

  return v5;
}

- (void)saveSmartPromptStatesForInsertedAction:(id)a3 contentDestination:(id)a4 reference:(id)a5
{
  v36 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = [a3 generateUUIDIfNecessaryWithUUIDProvider:0];
  v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
  v12 = [[WFSmartPromptState alloc] initWithMode:@"UserWildcard" sourceContentAttribution:0 actionUUID:v10 contentDestination:v8 status:@"Allow"];
  [v11 addObject:v12];

  if ([v8 promptingBehaviour])
  {
    v13 = [[WFSmartPromptState alloc] initWithMode:@"ActionWildcard" sourceContentAttribution:0 actionUUID:v10 contentDestination:v8 status:@"Allow"];
    [v11 addObject:v13];
  }

  v24 = v10;
  v25 = v8;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v14 = v11;
  v15 = [v14 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v28;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v28 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v27 + 1) + 8 * i);
        v26 = 0;
        v20 = [(WFDatabase *)self saveSmartPromptState:v19 reference:v9 error:&v26, v24, v25];
        v21 = v26;
        if (!v20)
        {
          v22 = getWFSecurityLogObject();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v32 = "[WFDatabase(SmartPrompts) saveSmartPromptStatesForInsertedAction:contentDestination:reference:]";
            v33 = 2112;
            v34 = v21;
            _os_log_impl(&dword_1CA256000, v22, OS_LOG_TYPE_ERROR, "%s Error storing state data in database for inserted action: %@", buf, 0x16u);
          }
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v16);
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)createSmartPromptStatesForInsertedActions:(id)a3 forReference:(id)a4 completionHandler:(id)a5
{
  v69 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  block = a5;
  v10 = getWFSecurityLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v63 = "[WFDatabase(SmartPrompts) createSmartPromptStatesForInsertedActions:forReference:completionHandler:]";
    v64 = 2048;
    v65 = [v8 count];
    _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_DEBUG, "%s Will attempt to create SP states for %lu inserted actions.", buf, 0x16u);
  }

  v11 = dispatch_group_create();
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = v8;
  v46 = [obj countByEnumeratingWithState:&v57 objects:v68 count:16];
  if (v46)
  {
    v45 = *v58;
    v41 = v11;
    v42 = v9;
    do
    {
      for (i = 0; i != v46; ++i)
      {
        if (*v58 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v57 + 1) + 8 * i);
        if ([v13 allowsAnyURLDestinationWhenAddedToWorkflowByUser])
        {
          v14 = i;
          v15 = getWFSecurityLogObject();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            v16 = [v13 identifier];
            *buf = 136315394;
            v63 = "[WFDatabase(SmartPrompts) createSmartPromptStatesForInsertedActions:forReference:completionHandler:]";
            v64 = 2112;
            v65 = v16;
            _os_log_impl(&dword_1CA256000, v15, OS_LOG_TYPE_DEBUG, "%s Creating a network wildcard permission for action %@", buf, 0x16u);
          }

          v17 = [v13 generateUUIDIfNecessaryWithUUIDProvider:0];
          v18 = [WFSmartPromptState alloc];
          v19 = [MEMORY[0x1E6996F90] locationMatchingAnyHostname];
          v20 = [(WFSmartPromptState *)v18 initWithMode:@"UserWildcard" sourceContentAttribution:0 actionUUID:v17 contentDestination:v19 status:@"Allow"];

          v56 = 0;
          LOBYTE(v19) = [(WFDatabase *)self saveSmartPromptState:v20 reference:v9 error:&v56];
          v21 = v56;
          if ((v19 & 1) == 0)
          {
            v22 = getWFSecurityLogObject();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v63 = "[WFDatabase(SmartPrompts) createSmartPromptStatesForInsertedActions:forReference:completionHandler:]";
              v64 = 2112;
              v65 = v21;
              _os_log_impl(&dword_1CA256000, v22, OS_LOG_TYPE_ERROR, "%s Error storing state data in database for network wildcard: %@", buf, 0x16u);
            }
          }

          i = v14;
        }

        dispatch_group_enter(v11);
        v53[0] = MEMORY[0x1E69E9820];
        v53[1] = 3221225472;
        v53[2] = __101__WFDatabase_SmartPrompts__createSmartPromptStatesForInsertedActions_forReference_completionHandler___block_invoke;
        v53[3] = &unk_1E8377FE0;
        v53[4] = v13;
        v53[5] = self;
        v23 = v9;
        v54 = v23;
        v55 = v11;
        [v13 getContentDestinationWithCompletionHandler:v53];
        v24 = [v13 additionalContentDestinations];
        v25 = [v24 count];
        log = getWFSecurityLogObject();
        v26 = os_log_type_enabled(log, OS_LOG_TYPE_DEBUG);
        if (v25)
        {
          if (v26)
          {
            v27 = [v13 identifier];
            v28 = [v24 count];
            *buf = 136315650;
            v63 = "[WFDatabase(SmartPrompts) createSmartPromptStatesForInsertedActions:forReference:completionHandler:]";
            v64 = 2112;
            v65 = v27;
            v66 = 2048;
            v67 = v28;
            _os_log_impl(&dword_1CA256000, log, OS_LOG_TYPE_DEBUG, "%s Action %@ provides %lu additional content destinations", buf, 0x20u);
          }

          v51 = 0u;
          v52 = 0u;
          v49 = 0u;
          v50 = 0u;
          v47 = v24;
          log = v24;
          v29 = [log countByEnumeratingWithState:&v49 objects:v61 count:16];
          if (v29)
          {
            v30 = v29;
            v44 = i;
            v31 = *v50;
            do
            {
              for (j = 0; j != v30; ++j)
              {
                if (*v50 != v31)
                {
                  objc_enumerationMutation(log);
                }

                v33 = *(*(&v49 + 1) + 8 * j);
                v34 = getWFSecurityLogObject();
                if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
                {
                  [v33 identifier];
                  v36 = v35 = self;
                  v37 = [v13 identifier];
                  *buf = 136315650;
                  v63 = "[WFDatabase(SmartPrompts) createSmartPromptStatesForInsertedActions:forReference:completionHandler:]";
                  v64 = 2112;
                  v65 = v36;
                  v66 = 2112;
                  v67 = v37;
                  _os_log_impl(&dword_1CA256000, v34, OS_LOG_TYPE_DEBUG, "%s Creating permission upon insertion for additional content destination %@ for action %@", buf, 0x20u);

                  self = v35;
                }

                [(WFDatabase *)self saveSmartPromptStatesForInsertedAction:v13 contentDestination:v33 reference:v23];
              }

              v30 = [log countByEnumeratingWithState:&v49 objects:v61 count:16];
            }

            while (v30);
            v11 = v41;
            v9 = v42;
            i = v44;
          }

          v24 = v47;
        }

        else if (v26)
        {
          v38 = [v13 identifier];
          *buf = 136315394;
          v63 = "[WFDatabase(SmartPrompts) createSmartPromptStatesForInsertedActions:forReference:completionHandler:]";
          v64 = 2112;
          v65 = v38;
          _os_log_impl(&dword_1CA256000, log, OS_LOG_TYPE_DEBUG, "%s Action %@ provides no additional content destinations", buf, 0x16u);
        }
      }

      v46 = [obj countByEnumeratingWithState:&v57 objects:v68 count:16];
    }

    while (v46);
  }

  dispatch_group_notify(v11, MEMORY[0x1E69E96A0], block);
  v39 = *MEMORY[0x1E69E9840];
}

void __101__WFDatabase_SmartPrompts__createSmartPromptStatesForInsertedActions_forReference_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = getWFSecurityLogObject();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
LABEL_5:

      goto LABEL_10;
    }

    v8 = [*(a1 + 32) identifier];
    v17 = 136315650;
    v18 = "[WFDatabase(SmartPrompts) createSmartPromptStatesForInsertedActions:forReference:completionHandler:]_block_invoke";
    v19 = 2112;
    v20 = v8;
    v21 = 2114;
    v22 = v6;
    v9 = "%s Inserted action %@ failed to provide a content destination with error %{public}@";
    v10 = v7;
    v11 = OS_LOG_TYPE_ERROR;
    v12 = 32;
LABEL_4:
    _os_log_impl(&dword_1CA256000, v10, v11, v9, &v17, v12);

    goto LABEL_5;
  }

  v7 = getWFSecurityLogObject();
  v13 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (!v5)
  {
    if (!v13)
    {
      goto LABEL_5;
    }

    v8 = [*(a1 + 32) identifier];
    v17 = 136315394;
    v18 = "[WFDatabase(SmartPrompts) createSmartPromptStatesForInsertedActions:forReference:completionHandler:]_block_invoke";
    v19 = 2112;
    v20 = v8;
    v9 = "%s Inserted action %@ has no content destination, no new state is required";
    v10 = v7;
    v11 = OS_LOG_TYPE_DEFAULT;
    v12 = 22;
    goto LABEL_4;
  }

  if (v13)
  {
    v14 = [*(a1 + 32) identifier];
    v15 = [v5 debugDescription];
    v17 = 136315650;
    v18 = "[WFDatabase(SmartPrompts) createSmartPromptStatesForInsertedActions:forReference:completionHandler:]_block_invoke";
    v19 = 2112;
    v20 = v14;
    v21 = 2112;
    v22 = v15;
    _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_DEFAULT, "%s Creating smart prompt state for inserted action %@, with destination %@", &v17, 0x20u);
  }

  [*(a1 + 40) saveSmartPromptStatesForInsertedAction:*(a1 + 32) contentDestination:v5 reference:*(a1 + 48)];
LABEL_10:
  dispatch_group_leave(*(a1 + 56));

  v16 = *MEMORY[0x1E69E9840];
}

- (id)migrateAccountStateToAppOriginIfNecessary:(id)a3 reference:(id)a4 actionUUID:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [v7 sourceContentAttribution];
  v10 = [v9 origin];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v12 = getWFWorkflowExecutionLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v24 = "[WFDatabase(SmartPrompts) migrateAccountStateToAppOriginIfNecessary:reference:actionUUID:]";
      v25 = 2112;
      v26 = v7;
      _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_INFO, "%s Migrating saved state from account to app origin: %@", buf, 0x16u);
    }

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __91__WFDatabase_SmartPrompts__migrateAccountStateToAppOriginIfNecessary_reference_actionUUID___block_invoke;
    v20[3] = &unk_1E8377FB8;
    v20[4] = self;
    v13 = v7;
    v21 = v13;
    v22 = v8;
    v19 = 0;
    v14 = [(WFDatabase *)self performSaveOperationWithReason:@"migrating smart prompt state" block:v20 error:&v19];
    v15 = v19;
    if (v15)
    {
      v16 = getWFSecurityLogObject();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v24 = "[WFDatabase(SmartPrompts) migrateAccountStateToAppOriginIfNecessary:reference:actionUUID:]";
        v25 = 2114;
        v26 = v13;
        v27 = 2114;
        v28 = v15;
        _os_log_impl(&dword_1CA256000, v16, OS_LOG_TYPE_ERROR, "%s Failed to migrate smart prompt state: %{public}@, error: %{public}@", buf, 0x20u);
      }
    }
  }

  else
  {
    v14 = v7;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v14;
}

id __91__WFDatabase_SmartPrompts__migrateAccountStateToAppOriginIfNecessary_reference_actionUUID___block_invoke(uint64_t a1, void *a2)
{
  [*(a1 + 32) _deleteSmartPromptState:*(a1 + 40) forReference:*(a1 + 48)];
  v4 = [*(a1 + 40) stateByReplacingAccountWithAppOrigin];
  v16 = 0;
  v5 = [v4 databaseDataWithError:&v16];
  v6 = v16;
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    v9 = 0;
    *a2 = v7;
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = [v4 actionUUID];
    v12 = [*(a1 + 32) objectForDescriptor:*(a1 + 48) properties:MEMORY[0x1E695E0F0]];
    v13 = objc_opt_class();
    v14 = WFEnforceClass_29244(v12, v13);
    [v10 _saveSmartPromptStateData:v5 actionUUID:v11 forWorkflow:v14];

    v9 = v4;
  }

  return v9;
}

- (BOOL)shouldPromptForCurrentContentItemCount:(unint64_t)a3 previousCount:(unint64_t)a4 contentOrigin:(id)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = a5;
  v8 = getWFSecurityLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v14 = 136315906;
    v15 = "[WFDatabase(SmartPrompts) shouldPromptForCurrentContentItemCount:previousCount:contentOrigin:]";
    v16 = 2112;
    v17 = v7;
    v18 = 2048;
    v19 = a3;
    v20 = 2048;
    v21 = a4;
    _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_DEBUG, "%s Decision counts for %@: currentCount = %lu, previousCount = %lu", &v14, 0x2Au);
  }

  v10 = a3 > 0x64 && a4 < 0x65;
  if (a4 <= 0x19)
  {
    v10 = a3 > 0x19;
  }

  if (a4 <= 5)
  {
    v11 = a3 > 5;
  }

  else
  {
    v11 = v10;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (id)performDatabaseLookupForState:(id)a3 actionUUID:(id)a4 reference:(id)a5
{
  v118[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!+[WFShortcutsSecuritySettings allowsSharingLargeAmountsOfData])
  {
    v11 = [v8 sourceContentAttribution];
    v12 = self;
    v13 = [v11 count];
    v14 = [v8 sourceContentAttribution];
    v15 = [WFContentExfiltrationQuantityInfo sharingItemCountLimitForContentWithAttribution:v14];

    v16 = v13 > v15;
    self = v12;
    if (v16)
    {
      v17 = [v8 stateWithStatus:@"Restricted"];

      v18 = [WFSmartPromptDatabaseLookupResult alloc];
      v118[0] = v17;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v118 count:1];
      v20 = [(WFSmartPromptDatabaseLookupResult *)v18 initWithAllowedStates:MEMORY[0x1E695E0F0] deniedStates:MEMORY[0x1E695E0F0] undefinedStates:MEMORY[0x1E695E0F0] restrictedStates:v19];
      v8 = v17;
      goto LABEL_67;
    }
  }

  v21 = [(WFDatabase *)self smartPromptStatesForReference:v10 actionUUID:v9];
  if (![v21 count])
  {
    v19 = [(WFDatabase *)self smartPromptStatesForReference:v10];

    if (![v19 count])
    {
      v63 = getWFWorkflowExecutionLogObject();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        v64 = [v10 name];
        *buf = 136315394;
        v115 = "[WFDatabase(SmartPrompts) performDatabaseLookupForState:actionUUID:reference:]";
        v116 = 2112;
        v117 = v64;
        _os_log_impl(&dword_1CA256000, v63, OS_LOG_TYPE_DEFAULT, "%s No saved smart prompt states found for workflow '%@'", buf, 0x16u);
      }

      v65 = [WFSmartPromptDatabaseLookupResult alloc];
      v113 = v8;
      v66 = MEMORY[0x1E695DEC8];
      v67 = &v113;
      goto LABEL_60;
    }

    v21 = v19;
  }

  v95 = self;
  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v19 = v21;
  v22 = [v19 countByEnumeratingWithState:&v101 objects:v112 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = v19;
    v25 = 0;
    v26 = *v102;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v102 != v26)
        {
          objc_enumerationMutation(v24);
        }

        v28 = *(*(&v101 + 1) + 8 * i);
        v29 = [(WFDatabase *)v95 migrateAccountStateToAppOriginIfNecessary:v28 reference:v10 actionUUID:v9];
        if ([v29 matches:v8])
        {
          v30 = v28;

          v25 = v30;
        }
      }

      v23 = [v24 countByEnumeratingWithState:&v101 objects:v112 count:16];
    }

    while (v23);
    v19 = v24;

    if (v25)
    {
      v31 = [v25 status];
      v32 = [v31 isEqualToString:@"Disallow"];

      if (v32)
      {
        v33 = getWFSecurityLogObject();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315395;
          v115 = "[WFDatabase(SmartPrompts) performDatabaseLookupForState:actionUUID:reference:]";
          v116 = 2113;
          v117 = v25;
          _os_log_impl(&dword_1CA256000, v33, OS_LOG_TYPE_DEFAULT, "%s Will stop execution because user selected Do Not Allow: %{private}@", buf, 0x16u);
        }

        v34 = [WFSmartPromptDatabaseLookupResult alloc];
        v108 = v25;
        v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v108 count:1];
        v36 = MEMORY[0x1E695E0F0];
        v37 = v34;
        v38 = v35;
        v39 = MEMORY[0x1E695E0F0];
      }

      else
      {
        v59 = [v25 status];
        v60 = [v59 isEqualToString:@"Undefined"];

        if (v60)
        {
          v61 = getWFSecurityLogObject();
          if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315395;
            v115 = "[WFDatabase(SmartPrompts) performDatabaseLookupForState:actionUUID:reference:]";
            v116 = 2113;
            v117 = v25;
            _os_log_impl(&dword_1CA256000, v61, OS_LOG_TYPE_DEFAULT, "%s Will prompt because user selected Ask Each Time: %{private}@", buf, 0x16u);
          }

          v62 = [WFSmartPromptDatabaseLookupResult alloc];
          v107 = v25;
          v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v107 count:1];
          v36 = MEMORY[0x1E695E0F0];
          v37 = v62;
          v38 = MEMORY[0x1E695E0F0];
          v39 = v35;
        }

        else
        {
          v74 = [v25 sourceContentAttribution];
          v75 = [v74 count];

          v76 = [v8 sourceContentAttribution];
          v77 = [v76 count];

          v78 = [v8 sourceContentAttribution];
          v79 = [v78 origin];
          LODWORD(v75) = [(WFDatabase *)v95 shouldPromptForCurrentContentItemCount:v77 previousCount:v75 contentOrigin:v79];

          v80 = getWFSecurityLogObject();
          v81 = os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT);
          if (v75)
          {
            if (v81)
            {
              *buf = 136315395;
              v115 = "[WFDatabase(SmartPrompts) performDatabaseLookupForState:actionUUID:reference:]";
              v116 = 2113;
              v117 = v25;
              _os_log_impl(&dword_1CA256000, v80, OS_LOG_TYPE_DEFAULT, "%s Will prompt because exfiltrating more data than saved authorization: %{private}@", buf, 0x16u);
            }

            v82 = [WFSmartPromptDatabaseLookupResult alloc];
            v106 = v8;
            v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v106 count:1];
            v83 = [v25 sourceContentAttribution];
            v20 = [(WFSmartPromptDatabaseLookupResult *)v82 initWithAllowedStates:MEMORY[0x1E695E0F0] deniedStates:MEMORY[0x1E695E0F0] undefinedStates:v35 previousAttribution:v83];

            goto LABEL_65;
          }

          if (v81)
          {
            *buf = 136315395;
            v115 = "[WFDatabase(SmartPrompts) performDatabaseLookupForState:actionUUID:reference:]";
            v116 = 2113;
            v117 = v25;
            _os_log_impl(&dword_1CA256000, v80, OS_LOG_TYPE_DEFAULT, "%s Will not prompt because we have a valid authorization saved: %{private}@", buf, 0x16u);
          }

          v86 = [WFSmartPromptDatabaseLookupResult alloc];
          v105 = v25;
          v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v105 count:1];
          v38 = MEMORY[0x1E695E0F0];
          v37 = v86;
          v36 = v35;
          v39 = MEMORY[0x1E695E0F0];
        }
      }

      v20 = [(WFSmartPromptDatabaseLookupResult *)v37 initWithAllowedStates:v36 deniedStates:v38 undefinedStates:v39];
LABEL_65:

      goto LABEL_66;
    }
  }

  else
  {
  }

  v40 = [v8 mode];
  v41 = [v40 isEqualToString:@"ActionWildcard"];

  if (!v41)
  {
    goto LABEL_57;
  }

  v89 = v19;
  v90 = v10;
  [(WFDatabase *)v95 smartPromptStatesForReference:v10];
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v25 = v100 = 0u;
  v42 = [v25 countByEnumeratingWithState:&v97 objects:v111 count:16];
  if (!v42)
  {
    goto LABEL_56;
  }

  v43 = v42;
  v44 = *v98;
  v45 = @"ActionWildcard";
  v94 = v9;
  v92 = v25;
LABEL_26:
  v46 = 0;
  v93 = v43;
  while (1)
  {
    if (*v98 != v44)
    {
      objc_enumerationMutation(v25);
    }

    v47 = *(*(&v97 + 1) + 8 * v46);
    v48 = [v47 mode];
    if (![v48 isEqualToString:v45])
    {
      goto LABEL_36;
    }

    v49 = [v47 actionUUID];
    v50 = [v8 actionUUID];
    if ([v49 isEqualToString:v50])
    {
      goto LABEL_35;
    }

    v51 = v45;
    v52 = v44;
    v53 = [v47 contentDestination];
    v54 = v8;
    v55 = v8;
    v56 = v53;
    v57 = [v55 contentDestination];
    if (![v56 isEqual:v57])
    {

      v44 = v52;
      v45 = v51;
      v8 = v54;
      v25 = v92;
      v43 = v93;
LABEL_35:

LABEL_36:
      goto LABEL_37;
    }

    v58 = [v47 status];
    v91 = [v58 isEqualToString:@"Allow"];

    v44 = v52;
    v45 = v51;
    v8 = v54;
    v25 = v92;
    v43 = v93;
    if (v91)
    {
      break;
    }

LABEL_37:
    ++v46;
    v9 = v94;
    if (v43 == v46)
    {
      v43 = [v25 countByEnumeratingWithState:&v97 objects:v111 count:16];
      if (v43)
      {
        goto LABEL_26;
      }

      goto LABEL_56;
    }
  }

  v68 = [v8 stateWithStatus:@"Allow"];
  v96 = 0;
  v69 = [(WFDatabase *)v95 saveSmartPromptState:v68 reference:v90 error:&v96];
  v70 = v96;
  v71 = v70;
  v9 = v94;
  if (v69)
  {
    v72 = [WFSmartPromptDatabaseLookupResult alloc];
    v110 = v68;
    v73 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v110 count:1];
    v20 = [(WFSmartPromptDatabaseLookupResult *)v72 initWithAllowedStates:v73 deniedStates:MEMORY[0x1E695E0F0] undefinedStates:MEMORY[0x1E695E0F0]];

    v19 = v89;
    v10 = v90;
    goto LABEL_66;
  }

  v84 = getWFSecurityLogObject();
  if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v115 = "[WFDatabase(SmartPrompts) performDatabaseLookupForState:actionUUID:reference:]";
    _os_log_impl(&dword_1CA256000, v84, OS_LOG_TYPE_ERROR, "%s Failed to save new smart prompt state.", buf, 0xCu);
  }

LABEL_56:
  v19 = v89;
  v10 = v90;
LABEL_57:
  v85 = getWFWorkflowExecutionLogObject();
  if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315395;
    v115 = "[WFDatabase(SmartPrompts) performDatabaseLookupForState:actionUUID:reference:]";
    v116 = 2113;
    v117 = v8;
    _os_log_impl(&dword_1CA256000, v85, OS_LOG_TYPE_DEFAULT, "%s Will prompt because no state in database matches lookup state: %{private}@", buf, 0x16u);
  }

  v65 = [WFSmartPromptDatabaseLookupResult alloc];
  v109 = v8;
  v66 = MEMORY[0x1E695DEC8];
  v67 = &v109;
LABEL_60:
  v25 = [v66 arrayWithObjects:v67 count:1];
  v20 = [(WFSmartPromptDatabaseLookupResult *)v65 initWithAllowedStates:MEMORY[0x1E695E0F0] deniedStates:MEMORY[0x1E695E0F0] undefinedStates:v25];
LABEL_66:

LABEL_67:
  v87 = *MEMORY[0x1E69E9840];

  return v20;
}

- (id)fetchFirstAllowedStateMatching:(id)a3 actionUUID:(id)a4 forReference:(id)a5
{
  v5 = [(WFDatabase *)self performDatabaseLookupForState:a3 actionUUID:a4 reference:a5];
  v6 = [v5 allowedStates];
  v7 = [v6 firstObject];

  if (v7)
  {
    v8 = [v5 allowedStates];
    v9 = [v8 firstObject];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)approvalResultForContentAttributionSet:(id)a3 contentDestination:(id)a4 actionUUID:(id)a5 actionIdentifier:(id)a6 actionIndex:(unint64_t)a7 reference:(id)a8 allowedOnceStates:(id)a9
{
  v171 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v113 = a6;
  v17 = a8;
  v115 = a9;
  if (!v16)
  {
    v18 = [v17 identifier];
    v16 = [(WFDatabase *)self generateAndPersistUUIDForActionWithIdentifier:v113 actionIndex:a7 workflowIdentifier:v18];
  }

  v19 = [v14 attributionSetByReplacingAccountWithAppOrigins];

  v20 = [[WFSmartPromptApprovalResult alloc] initWithActionUUID:v16];
  v114 = v19;
  if ([v19 derivedDisclosureLevel] == 1 || objc_msgSend(v15, "promptingBehaviour"))
  {
    v116 = [MEMORY[0x1E695DF70] array];
    if ([v15 promptingBehaviour])
    {
      v21 = getWFSecurityLogObject();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [v15 identifier];
        *buf = 136315395;
        v163 = "[WFDatabase(SmartPrompts) approvalResultForContentAttributionSet:contentDestination:actionUUID:actionIdentifier:actionIndex:reference:allowedOnceStates:]";
        v164 = 2113;
        v165 = v22;
        _os_log_impl(&dword_1CA256000, v21, OS_LOG_TYPE_DEFAULT, "%s Content destination %{private}@ requires first run approval, will prompt for special request", buf, 0x16u);
      }

      v23 = [[WFSmartPromptState alloc] initWithMode:@"ActionWildcard" sourceContentAttribution:0 actionUUID:v16 contentDestination:v15 status:@"Undefined"];
      [v116 addObject:v23];
    }

    v112 = [[WFSmartPromptState alloc] initWithMode:@"UserWildcard" sourceContentAttribution:0 actionUUID:v16 contentDestination:v15 status:@"Allow"];
    [WFDatabase fetchFirstAllowedStateMatching:"fetchFirstAllowedStateMatching:actionUUID:forReference:" actionUUID:? forReference:?];
    v127 = v15;
    v129 = v16;
    v130 = v17;
    v111 = v117 = v20;
    if (v111)
    {
      v157 = 0u;
      v158 = 0u;
      v155 = 0u;
      v156 = 0u;
      v24 = [v114 attributions];
      v25 = [v24 countByEnumeratingWithState:&v155 objects:v170 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v156;
        do
        {
          for (i = 0; i != v26; ++i)
          {
            if (*v156 != v27)
            {
              objc_enumerationMutation(v24);
            }

            v29 = *(*(&v155 + 1) + 8 * i);
            if ([v29 disclosureLevel] == 1)
            {
              v30 = [[WFSmartPromptState alloc] initWithMode:@"Normal" sourceContentAttribution:v29 actionUUID:v16 contentDestination:v127 status:@"Allow"];
              v154 = 0;
              v31 = [(WFDatabase *)self saveSmartPromptState:v30 reference:v17 error:&v154];
              v32 = v154;
              if (!v31)
              {
                v33 = getWFSecurityLogObject();
                if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315394;
                  v163 = "[WFDatabase(SmartPrompts) approvalResultForContentAttributionSet:contentDestination:actionUUID:actionIdentifier:actionIndex:reference:allowedOnceStates:]";
                  v164 = 2112;
                  v165 = v32;
                  _os_log_impl(&dword_1CA256000, v33, OS_LOG_TYPE_ERROR, "%s Failed to save smart prompt state: %@", buf, 0x16u);
                }
              }

              v16 = v129;
              v17 = v130;
            }
          }

          v26 = [v24 countByEnumeratingWithState:&v155 objects:v170 count:16];
        }

        while (v26);
      }

      v34 = getWFSecurityLogObject();
      v15 = v127;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315395;
        v163 = "[WFDatabase(SmartPrompts) approvalResultForContentAttributionSet:contentDestination:actionUUID:actionIdentifier:actionIndex:reference:allowedOnceStates:]";
        v164 = 2113;
        v165 = v127;
        _os_log_impl(&dword_1CA256000, v34, OS_LOG_TYPE_DEFAULT, "%s Flattened wildcard smart prompt with content destination: %{private}@", buf, 0x16u);
      }

      v20 = v117;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = [WFSmartPromptState alloc];
      v36 = [MEMORY[0x1E6996F90] locationMatchingAnyHostname];
      v37 = [(WFSmartPromptState *)v35 initWithMode:@"UserWildcard" sourceContentAttribution:0 actionUUID:v16 contentDestination:v36 status:@"Allow"];

      v38 = [(WFDatabase *)self fetchFirstAllowedStateMatching:v37 actionUUID:v16 forReference:v17];
      if (v38)
      {
        obj = v38;
        v125 = v37;
        v39 = MEMORY[0x1E695DF70];
        v40 = [v114 attributions];
        v41 = [v39 arrayWithCapacity:{objc_msgSend(v40, "count") + 1}];

        v121 = [[WFSmartPromptState alloc] initWithMode:@"ActionWildcard" sourceContentAttribution:0 actionUUID:v16 contentDestination:v15 status:@"Allow"];
        [v41 addObject:?];
        v152 = 0u;
        v153 = 0u;
        v150 = 0u;
        v151 = 0u;
        v42 = [v114 attributions];
        v43 = [v42 countByEnumeratingWithState:&v150 objects:v169 count:16];
        if (v43)
        {
          v44 = v43;
          v45 = *v151;
          do
          {
            for (j = 0; j != v44; ++j)
            {
              if (*v151 != v45)
              {
                objc_enumerationMutation(v42);
              }

              v47 = *(*(&v150 + 1) + 8 * j);
              if ([v47 disclosureLevel] == 1)
              {
                v48 = [[WFSmartPromptState alloc] initWithMode:@"Normal" sourceContentAttribution:v47 actionUUID:v129 contentDestination:v15 status:@"Allow"];
                [v41 addObject:v48];
              }
            }

            v44 = [v42 countByEnumeratingWithState:&v150 objects:v169 count:16];
          }

          while (v44);
        }

        v148 = 0u;
        v149 = 0u;
        v146 = 0u;
        v147 = 0u;
        v49 = v41;
        v50 = [v49 countByEnumeratingWithState:&v146 objects:v168 count:16];
        if (v50)
        {
          v51 = v50;
          v52 = *v147;
          do
          {
            for (k = 0; k != v51; ++k)
            {
              if (*v147 != v52)
              {
                objc_enumerationMutation(v49);
              }

              v54 = *(*(&v146 + 1) + 8 * k);
              v145 = 0;
              v55 = [(WFDatabase *)self saveSmartPromptState:v54 reference:v130 error:&v145];
              v56 = v145;
              if (!v55)
              {
                v57 = getWFSecurityLogObject();
                if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315394;
                  v163 = "[WFDatabase(SmartPrompts) approvalResultForContentAttributionSet:contentDestination:actionUUID:actionIdentifier:actionIndex:reference:allowedOnceStates:]";
                  v164 = 2112;
                  v165 = v56;
                  _os_log_impl(&dword_1CA256000, v57, OS_LOG_TYPE_ERROR, "%s Failed to save smart prompt state: %@", buf, 0x16u);
                }
              }
            }

            v51 = [v49 countByEnumeratingWithState:&v146 objects:v168 count:16];
          }

          while (v51);
        }

        v58 = getWFSecurityLogObject();
        v15 = v127;
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v163 = "[WFDatabase(SmartPrompts) approvalResultForContentAttributionSet:contentDestination:actionUUID:actionIdentifier:actionIndex:reference:allowedOnceStates:]";
          v164 = 2112;
          v165 = v127;
          v166 = 2112;
          v167 = v49;
          _os_log_impl(&dword_1CA256000, v58, OS_LOG_TYPE_DEFAULT, "%s Flattened network wildcard with content destination: %@ into states %@", buf, 0x20u);
        }

        v17 = v130;
        v20 = v117;
        v38 = obj;
        v37 = v125;
      }
    }

    if ([v15 promptingBehaviour] != 2)
    {
      v143 = 0u;
      v144 = 0u;
      v141 = 0u;
      v142 = 0u;
      obja = [v114 attributions];
      v59 = [obja countByEnumeratingWithState:&v141 objects:v161 count:16];
      if (v59)
      {
        v60 = v59;
        v61 = *v142;
        v120 = *v142;
        do
        {
          v62 = 0;
          v122 = v60;
          do
          {
            if (*v142 != v61)
            {
              objc_enumerationMutation(obja);
            }

            v63 = *(*(&v141 + 1) + 8 * v62);
            if ([v63 disclosureLevel] == 1)
            {
              v64 = [v63 origin];
              v65 = v15;
              v126 = v63;
              if (v64)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v66 = v64;
                }

                else
                {
                  v66 = 0;
                }
              }

              else
              {
                v66 = 0;
              }

              v67 = v66;
              v68 = v65;
              if (v15)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v69 = v68;
                }

                else
                {
                  v69 = 0;
                }
              }

              else
              {
                v69 = 0;
              }

              v70 = v69;

              v128 = v67;
              if (v67 && v70)
              {
                v71 = [v67 appDescriptor];
                v72 = [v71 bundleIdentifier];
                v73 = [v70 appDescriptor];
                v74 = [v73 bundleIdentifier];
                if ([v72 isEqualToString:v74])
                {
                  v75 = [v67 accountIdentifier];
                  [v70 accountIdentifier];
                  v76 = v118 = v70;
                  v77 = [v75 isEqualToString:v76];

                  v70 = v118;
                  v15 = v127;
                }

                else
                {
                  v77 = 0;
                }

                v20 = v117;
              }

              else
              {
                v78 = v64;
                if (v64)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v79 = v78;
                  }

                  else
                  {
                    v79 = 0;
                  }
                }

                else
                {
                  v79 = 0;
                }

                v71 = v79;

                v80 = v68;
                if (v15)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v81 = v80;
                  }

                  else
                  {
                    v81 = 0;
                  }
                }

                else
                {
                  v81 = 0;
                }

                v72 = v81;

                if (v71 && v72)
                {
                  [v71 appDescriptor];
                  v82 = v119 = v70;
                  v83 = [v82 bundleIdentifier];
                  v84 = [v72 appDescriptor];
                  v85 = [v84 bundleIdentifier];
                  v77 = [v83 isEqualToString:v85];

                  v15 = v127;
                  v20 = v117;

                  v70 = v119;
                }

                else
                {
                  v77 = [v78 isEqual:v80];
                }
              }

              if (v77)
              {
                v86 = getWFSecurityLogObject();
                v61 = v120;
                v60 = v122;
                if (os_log_type_enabled(&v86->super, OS_LOG_TYPE_DEFAULT))
                {
                  v87 = [v126 origin];
                  *buf = 136315395;
                  v163 = "[WFDatabase(SmartPrompts) approvalResultForContentAttributionSet:contentDestination:actionUUID:actionIdentifier:actionIndex:reference:allowedOnceStates:]";
                  v164 = 2113;
                  v165 = v87;
                  _os_log_impl(&dword_1CA256000, &v86->super, OS_LOG_TYPE_DEFAULT, "%s Ignoring content attribution with origin %{private}@, as source and destination of content are the same", buf, 0x16u);
                }
              }

              else
              {
                v86 = [[WFSmartPromptState alloc] initWithMode:@"Normal" sourceContentAttribution:v126 actionUUID:v129 contentDestination:v68 status:@"Undefined"];
                [v116 addObject:v86];
                v61 = v120;
                v60 = v122;
              }
            }

            ++v62;
          }

          while (v60 != v62);
          v60 = [obja countByEnumeratingWithState:&v141 objects:v161 count:16];
        }

        while (v60);
      }

      v17 = v130;
    }

    if ([v115 count])
    {
      v139 = 0u;
      v140 = 0u;
      v137 = 0u;
      v138 = 0u;
      v88 = v116;
      v89 = [v88 countByEnumeratingWithState:&v137 objects:v160 count:16];
      if (v89)
      {
        v90 = v89;
        v91 = *v138;
        while (2)
        {
          for (m = 0; m != v90; ++m)
          {
            if (*v138 != v91)
            {
              objc_enumerationMutation(v88);
            }

            v93 = *(*(&v137 + 1) + 8 * m);
            v136[0] = MEMORY[0x1E69E9820];
            v136[1] = 3221225472;
            v136[2] = __154__WFDatabase_SmartPrompts__approvalResultForContentAttributionSet_contentDestination_actionUUID_actionIdentifier_actionIndex_reference_allowedOnceStates___block_invoke;
            v136[3] = &unk_1E8377F90;
            v136[4] = v93;
            v94 = [v115 objectsPassingTest:v136];
            v95 = [v94 count];

            if (!v95)
            {

              v17 = v130;
              v20 = v117;
              goto LABEL_108;
            }
          }

          v90 = [v88 countByEnumeratingWithState:&v137 objects:v160 count:16];
          if (v90)
          {
            continue;
          }

          break;
        }
      }

      v16 = v129;
      v96 = [[WFSmartPromptApprovalResult alloc] initWithActionUUID:v129];
      v97 = [WFSmartPromptDatabaseLookupResult alloc];
      v98 = [(WFSmartPromptDatabaseLookupResult *)v97 initWithAllowedStates:v88 deniedStates:MEMORY[0x1E695E0F0] undefinedStates:MEMORY[0x1E695E0F0]];
      v99 = [(WFSmartPromptApprovalResult *)v96 resultByAddingDatabaseResult:v98];

      v17 = v130;
      v100 = v117;
    }

    else
    {
LABEL_108:
      v134 = 0u;
      v135 = 0u;
      v132 = 0u;
      v133 = 0u;
      v101 = v116;
      v102 = [v101 countByEnumeratingWithState:&v132 objects:v159 count:16];
      if (v102)
      {
        v103 = v102;
        v104 = *v133;
        v16 = v129;
        do
        {
          v105 = 0;
          v106 = v20;
          do
          {
            if (*v133 != v104)
            {
              objc_enumerationMutation(v101);
            }

            v107 = [(WFDatabase *)self performDatabaseLookupForState:*(*(&v132 + 1) + 8 * v105) actionUUID:v129 reference:v17];
            v20 = [(WFSmartPromptApprovalResult *)v106 resultByAddingDatabaseResult:v107];

            ++v105;
            v106 = v20;
          }

          while (v103 != v105);
          v103 = [v101 countByEnumeratingWithState:&v132 objects:v159 count:16];
        }

        while (v103);
      }

      else
      {
        v16 = v129;
      }

      v100 = v20;
      v99 = v100;
    }
  }

  else
  {
    v110 = getWFSecurityLogObject();
    if (os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v163 = "[WFDatabase(SmartPrompts) approvalResultForContentAttributionSet:contentDestination:actionUUID:actionIdentifier:actionIndex:reference:allowedOnceStates:]";
      _os_log_impl(&dword_1CA256000, v110, OS_LOG_TYPE_DEFAULT, "%s The current content attribution set has public disclosure level, no approval required.", buf, 0xCu);
    }

    v100 = v20;
    v99 = v100;
  }

  v108 = *MEMORY[0x1E69E9840];

  return v99;
}

uint64_t __154__WFDatabase_SmartPrompts__approvalResultForContentAttributionSet_contentDestination_actionUUID_actionIdentifier_actionIndex_reference_allowedOnceStates___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 matches:*(a1 + 32)];
  if (result)
  {
    *a3 = 1;
  }

  return result;
}

- (void)saveOutputActionSmartPromtDataForWorkflowReference:(id)a3 error:(id *)a4
{
  v20 = 0;
  v5 = [WFWorkflow workflowWithReference:a3 database:self error:&v20];
  v6 = v20;
  v7 = v6;
  if (a4)
  {
    v8 = v6;
    *a4 = v7;
  }

  v9 = [v5 actions];
  v10 = [v9 lastObject];

  v11 = [v10 generateUUIDIfNecessaryWithUUIDProvider:0];
  v12 = [WFActionOutputVariable alloc];
  v13 = [v10 outputName];
  v14 = [(WFActionOutputVariable *)v12 initWithOutputUUID:v11 outputName:v13 variableProvider:v10 aggrandizements:0];

  v15 = +[WFActionRegistry sharedRegistry];
  v16 = [v15 createActionWithIdentifier:@"is.workflow.actions.output" serializedParameters:0];

  v17 = [v16 inputParameter];
  v18 = [objc_alloc(objc_msgSend(v17 "stateClass"))];
  v19 = [v17 key];
  [v16 setParameterState:v18 forKey:v19];

  [v5 addAction:v16];
  [v5 save];
}

- (id)conflictForWorkflowReference:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [(WFDatabase *)self conflictingReferenceForWorkflowID:v5];

  if (v6)
  {
    v7 = [(WFDatabase *)self recordWithDescriptor:v4 error:0];
    v8 = [(WFDatabase *)self recordWithDescriptor:v6 error:0];
    v9 = objc_opt_new();
    if ([v7 isConflictOfOtherWorkflow])
    {
      v10 = [v6 identifier];
      [v9 setLocalWorkflowID:v10];

      [v9 setLocalWorkflowRecord:v8];
      v11 = [v4 identifier];
      v12 = v7;
    }

    else
    {
      v13 = [v4 identifier];
      [v9 setLocalWorkflowID:v13];

      [v9 setLocalWorkflowRecord:v7];
      v11 = [v6 identifier];
      v12 = v8;
    }

    [v9 setRemoteWorkflowID:v11];

    [v9 setRemoteWorkflowRecord:v12];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)setWalrusStateForTesting:(int64_t)a3 withError:(id *)a4
{
  v8 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49__WFDatabase_setWalrusStateForTesting_withError___block_invoke;
  v9[3] = &unk_1E837A280;
  v9[4] = self;
  v9[5] = a3;
  [(WFDatabase *)self performTransactionWithReason:@"clearing Walrus state for testing" block:v9 error:&v8];
  v5 = v8;
  if (a4)
  {
    v5 = v5;
    *a4 = v5;
  }

  v6 = v5 == 0;

  return v6;
}

void __49__WFDatabase_setWalrusStateForTesting_withError___block_invoke(uint64_t a1, uint64_t a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = +[WFCoreDataWorkflow fetchRequest];
  v5 = [*(a1 + 32) context];
  v6 = [v5 executeFetchRequest:v4 error:a2];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v28;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v27 + 1) + 8 * i);
        [v12 setWantedEncryptedSchemaVersion:*(a1 + 40)];
        [v12 setLastSyncedEncryptedSchemaVersion:*(a1 + 40)];
        [v12 setSyncHash:{objc_msgSend(v12, "computedSyncHash")}];
      }

      v9 = [v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v9);
  }

  v13 = +[WFCoreDataCollection fetchRequest];

  v14 = [*(a1 + 32) context];
  v15 = [v14 executeFetchRequest:v13 error:a2];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v16 = v15;
  v17 = [v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v24;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v24 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v23 + 1) + 8 * j);
        [v21 setWantedEncryptedSchemaVersion:{*(a1 + 40), v23}];
        [v21 setLastSyncedEncryptedSchemaVersion:*(a1 + 40)];
      }

      v18 = [v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v18);
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(WFDatabase *)self fileURL];
  v7 = [v3 stringWithFormat:@"<%@: %p, fileURL: %@>", v5, self, v6];

  return v7;
}

- (NSArray)activeResults
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__43875;
  v11 = __Block_byref_object_dispose__43876;
  v12 = 0;
  v3 = [(WFDatabase *)self context];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __27__WFDatabase_activeResults__block_invoke;
  v6[3] = &unk_1E837F898;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performBlockAndWait:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __27__WFDatabase_activeResults__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) resultsToNotify];
  v2 = [v5 allObjects];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (NSArray)activeObjectObservers
{
  os_unfair_lock_lock(&self->_observersLock);
  v3 = [(WFDatabase *)self observers];
  v4 = [v3 allObjects];

  os_unfair_lock_unlock(&self->_observersLock);

  return v4;
}

- (void)updateAppDescriptor:(id)a3 atKey:(id)a4 actionUUID:(id)a5 actionIndex:(id)a6 actionIdentifier:(id)a7 workflowID:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v27 = 0;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __91__WFDatabase_updateAppDescriptor_atKey_actionUUID_actionIndex_actionIdentifier_workflowID___block_invoke;
  v28[3] = &unk_1E837A258;
  v29 = v19;
  v30 = self;
  v31 = v16;
  v32 = v18;
  v33 = v17;
  v34 = v14;
  v35 = v15;
  v20 = v15;
  v21 = v14;
  v22 = v17;
  v23 = v18;
  v24 = v16;
  v25 = v19;
  [(WFDatabase *)self performTransactionWithReason:@"update app descriptor for action" block:v28 error:&v27];
  v26 = v27;
}

void __91__WFDatabase_updateAppDescriptor_atKey_actionUUID_actionIndex_actionIdentifier_workflowID___block_invoke(uint64_t a1)
{
  v48[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E69E0A68]) initWithIdentifier:*(a1 + 32) objectType:0];
  v3 = [*(a1 + 40) recordWithDescriptor:v2 error:0];
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__43875;
  v41 = __Block_byref_object_dispose__43876;
  v42 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v4 = [v3 actions];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __91__WFDatabase_updateAppDescriptor_atKey_actionUUID_actionIndex_actionIdentifier_workflowID___block_invoke_2;
  v22[3] = &unk_1E837A230;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v26 = &v37;
  v8 = *(a1 + 72);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  *&v10 = v5;
  *(&v10 + 1) = v6;
  v23 = v10;
  v24 = v9;
  v25 = *(a1 + 80);
  v27 = &v33;
  v28 = &v29;
  [v4 enumerateObjectsUsingBlock:v22];

  if (*(v30 + 24) == 1 && v38[5])
  {
    v11 = [v3 actions];
    v12 = [v11 mutableCopy];

    v13 = v34[3];
    v14 = *(a1 + 56);
    v47[0] = @"WFWorkflowActionIdentifier";
    v47[1] = @"WFWorkflowActionParameters";
    v15 = v38[5];
    v48[0] = v14;
    v48[1] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:2];
    [v12 replaceObjectAtIndex:v13 withObject:v16];

    [v3 setActions:v12];
    v17 = *(a1 + 40);
    v21 = 0;
    LOBYTE(v13) = [v17 saveRecord:v3 withDescriptor:v2 error:&v21];
    v18 = v21;
    if ((v13 & 1) == 0)
    {
      v19 = getWFDatabaseLogObject();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v44 = "[WFDatabase updateAppDescriptor:atKey:actionUUID:actionIndex:actionIdentifier:workflowID:]_block_invoke";
        v45 = 2112;
        v46 = v18;
        _os_log_impl(&dword_1CA256000, v19, OS_LOG_TYPE_FAULT, "%s Unable to update app descriptor in workflow: %@", buf, 0x16u);
      }
    }
  }

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);

  v20 = *MEMORY[0x1E69E9840];
}

void __91__WFDatabase_updateAppDescriptor_atKey_actionUUID_actionIndex_actionIdentifier_workflowID___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v19 = v7;
  if (!*(a1 + 32))
  {
    v11 = [v7 objectForKey:@"WFWorkflowActionIdentifier"];
    if (([v11 isEqualToString:*(a1 + 40)] & 1) == 0)
    {

      v10 = v19;
      goto LABEL_8;
    }

    v12 = [*(a1 + 48) integerValue];

    v10 = v19;
    if (v12 != a3)
    {
      goto LABEL_8;
    }

LABEL_6:
    v13 = [v19 objectForKey:@"WFWorkflowActionParameters"];
    v14 = [v13 mutableCopy];
    v15 = *(*(a1 + 72) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    v17 = *(*(*(a1 + 72) + 8) + 40);
    v18 = [*(a1 + 56) serializedRepresentation];
    [v17 setObject:v18 forKey:*(a1 + 64)];

    v10 = v19;
    *(*(*(a1 + 80) + 8) + 24) = a3;
    *(*(*(a1 + 88) + 8) + 24) = 1;
    *a4 = 1;
    goto LABEL_8;
  }

  v8 = [v7 objectForKey:@"WFWorkflowActionParameters"];
  v9 = [v8 objectForKey:@"UUID"];

  LOBYTE(v8) = [v9 isEqualToString:*(a1 + 32)];
  v10 = v19;
  if (v8)
  {
    goto LABEL_6;
  }

LABEL_8:
}

- (void)removePermissionsWithoutAssociatedShortcuts
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __57__WFDatabase_removePermissionsWithoutAssociatedShortcuts__block_invoke;
  v2[3] = &unk_1E8379FD0;
  v2[4] = self;
  [(WFDatabase *)self performTransactionWithReason:@"remove extra permissions" block:v2 error:0];
}

void __57__WFDatabase_removePermissionsWithoutAssociatedShortcuts__block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = +[WFCoreDataAccessResourcePermission fetchRequest];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = nil", @"shortcut"];
  [v2 setPredicate:v3];

  v4 = +[WFCoreDataSmartPromptPermission fetchRequest];
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = nil", @"shortcut"];
  [v4 setPredicate:v5];

  v6 = [objc_alloc(MEMORY[0x1E695D538]) initWithFetchRequest:v2];
  v7 = [*(a1 + 32) context];
  v18 = 0;
  v8 = [v7 executeRequest:v6 error:&v18];
  v9 = v18;

  if (!v8)
  {
    v10 = getWFDatabaseLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "[WFDatabase removePermissionsWithoutAssociatedShortcuts]_block_invoke";
      v21 = 2114;
      v22 = v9;
      _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_ERROR, "%s Unable to remove invalid access resource permissions: %{public}@", buf, 0x16u);
    }
  }

  v11 = [objc_alloc(MEMORY[0x1E695D538]) initWithFetchRequest:v4];
  v12 = [*(a1 + 32) context];
  v17 = v9;
  v13 = [v12 executeRequest:v11 error:&v17];
  v14 = v17;

  if (!v13)
  {
    v15 = getWFDatabaseLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "[WFDatabase removePermissionsWithoutAssociatedShortcuts]_block_invoke";
      v21 = 2114;
      v22 = v14;
      _os_log_impl(&dword_1CA256000, v15, OS_LOG_TYPE_ERROR, "%s Unable to remove invalid smart prompt permissions: %{public}@", buf, 0x16u);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)addSpotlightSyncHashesToShortcutsIfNecessary
{
  v15 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1;
  v5 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__WFDatabase_addSpotlightSyncHashesToShortcutsIfNecessary__block_invoke;
  v6[3] = &unk_1E837A208;
  v6[4] = self;
  v6[5] = &v7;
  [(WFDatabase *)self performTransactionWithReason:@"add spotlight sync hashes" block:v6 error:&v5];
  v2 = v5;
  if ((v8[3] & 1) == 0)
  {
    v3 = getWFDatabaseLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v12 = "[WFDatabase addSpotlightSyncHashesToShortcutsIfNecessary]";
      v13 = 2114;
      v14 = v2;
      _os_log_impl(&dword_1CA256000, v3, OS_LOG_TYPE_ERROR, "%s Unable to add sync hashes: %{public}@", buf, 0x16u);
    }
  }

  _Block_object_dispose(&v7, 8);
  v4 = *MEMORY[0x1E69E9840];
}

void __58__WFDatabase_addSpotlightSyncHashesToShortcutsIfNecessary__block_invoke(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = +[WFCoreDataWorkflow fetchRequest];
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = nil", @"spotlightSyncHash"];
  [v4 setPredicate:v5];

  v6 = [*(a1 + 32) context];
  v7 = [v6 executeFetchRequest:v4 error:a2];

  if (v7)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        v12 = 0;
        do
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v16 + 1) + 8 * v12);
          v14 = objc_autoreleasePoolPush();
          [v13 setSpotlightSyncHash:{objc_msgSend(v13, "computedSpotlightSyncHash")}];
          objc_autoreleasePoolPop(v14);
          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (BOOL)reloadRecord:(id)a3 withDescriptor:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = getWFDatabaseLogObject();
  v11 = os_signpost_id_generate(v10);

  v12 = getWFDatabaseLogObject();
  v13 = v12;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1CA256000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "ReloadRecord", "", buf, 2u);
  }

  *buf = 0;
  v26 = buf;
  v27 = 0x2020000000;
  v28 = 0;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __48__WFDatabase_reloadRecord_withDescriptor_error___block_invoke;
  v21[3] = &unk_1E837A1E0;
  v14 = v8;
  v22 = v14;
  v15 = v9;
  v23 = v15;
  v24 = buf;
  [(WFDatabase *)self accessStorageForDescriptor:v15 forWriting:0 readingRecordProperties:0 usingBlock:v21 withError:a5];
  v16 = getWFDatabaseLogObject();
  v17 = v16;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *v20 = 0;
    _os_signpost_emit_with_name_impl(&dword_1CA256000, v17, OS_SIGNPOST_INTERVAL_END, v11, "ReloadRecord", "", v20, 2u);
  }

  v18 = v26[24];
  _Block_object_dispose(buf, 8);

  return v18;
}

void __48__WFDatabase_reloadRecord_withDescriptor_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    [*(a1 + 32) loadFromStorage:a2];
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  else
  {
    v5 = MEMORY[0x1E696ABC0];
    v9 = *MEMORY[0x1E696A578];
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Can't reload record %@, descriptor %@ is missing backing storage", *(a1 + 32), *(a1 + 40)];
    v10[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    *a3 = [v5 errorWithDomain:@"WFDatabaseErrorDomain" code:4 userInfo:v7];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)saveRecord:(id)a3 withDescriptor:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = getWFDatabaseLogObject();
  v11 = os_signpost_id_generate(v10);

  v12 = getWFDatabaseLogObject();
  v13 = v12;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1CA256000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "SaveRecord", "", buf, 2u);
  }

  *buf = 0;
  v28 = buf;
  v29 = 0x2020000000;
  v30 = 0;
  v14 = objc_opt_new();
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __46__WFDatabase_saveRecord_withDescriptor_error___block_invoke;
  v22[3] = &unk_1E837A0A0;
  v15 = v8;
  v23 = v15;
  v16 = v9;
  v25 = self;
  v26 = buf;
  v24 = v16;
  [(WFDatabase *)self accessStorageForDescriptor:v16 forWriting:1 readingRecordProperties:v14 usingBlock:v22 withError:a5];

  v17 = getWFDatabaseLogObject();
  v18 = v17;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *v21 = 0;
    _os_signpost_emit_with_name_impl(&dword_1CA256000, v18, OS_SIGNPOST_INTERVAL_END, v11, "SaveRecord", "", v21, 2u);
  }

  v19 = v28[24];
  _Block_object_dispose(buf, 8);

  return v19;
}

void __46__WFDatabase_saveRecord_withDescriptor_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) saveChangesToStorage:a2 error:a3];
    v6 = *(a1 + 40);
    v5 = *(a1 + 48);
    v7 = *MEMORY[0x1E69E9840];

    [v5 addPendingUpdatedDescriptor:v6];
  }

  else
  {
    v8 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E696A578];
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Can't save record %@, descriptor %@ is missing backing storage", *(a1 + 32), *(a1 + 40)];
    v13[0] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    *a3 = [v8 errorWithDomain:@"WFDatabaseErrorDomain" code:4 userInfo:v10];

    v11 = *MEMORY[0x1E69E9840];
  }
}

- (Class)recordClassForObjectType:(unint64_t)a3
{
  v4 = 0;
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      v5 = off_1E836DF98;
    }

    else
    {
      if (a3 != 10)
      {
        goto LABEL_11;
      }

      v5 = off_1E836E660;
    }
  }

  else if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_11;
    }

    v5 = off_1E836E038;
  }

  else
  {
    v5 = off_1E836F5A0;
  }

  v6 = *v5;
  v4 = objc_opt_class();
LABEL_11:

  return v4;
}

- (id)missingErrorForDescriptor:(id)a3
{
  v20[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = [v5 name];
  if (v6)
  {
    v7 = v6;

LABEL_14:
    v11 = MEMORY[0x1E696AEC0];
    v12 = WFLocalizedString(@"“%@” does not exist.");
    v13 = [v11 localizedStringWithFormat:v12, v7];

    goto LABEL_15;
  }

  v8 = v3;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
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

  v10 = v9;

  v7 = [v10 name];

  if (v7)
  {
    goto LABEL_14;
  }

  v13 = WFLocalizedString(@"Item does not exist");
LABEL_15:
  v14 = MEMORY[0x1E696ABC0];
  v19 = *MEMORY[0x1E696A578];
  v20[0] = v13;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  v16 = [v14 errorWithDomain:@"WFDatabaseErrorDomain" code:3 userInfo:v15];

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (BOOL)startObservingChangesForResult:(id)a3
{
  v4 = a3;
  v5 = [(WFDatabase *)self context];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__WFDatabase_startObservingChangesForResult___block_invoke;
  v8[3] = &unk_1E837F870;
  v8[4] = self;
  v9 = v4;
  v6 = v4;
  [v5 performBlock:v8];

  return 1;
}

void __45__WFDatabase_startObservingChangesForResult___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) resultsToNotify];
  [v2 addObject:*(a1 + 40)];
}

- (unint64_t)countForResult:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v9 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __29__WFDatabase_countForResult___block_invoke_2;
      v20[3] = &unk_1E837F900;
      v21 = v9;
      v22 = self;
      v5 = v9;
      v10 = [(WFDatabase *)self performOperationWithReason:@"getting count for result" block:v20 error:0];
      v7 = [v10 unsignedIntValue];

      v8 = v21;
      goto LABEL_8;
    }

    v11 = v9;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = MEMORY[0x1E69E9820];
      v15 = 3221225472;
      v16 = __29__WFDatabase_countForResult___block_invoke_3;
      v17 = &unk_1E837F900;
      v18 = v11;
      v19 = self;
      v5 = v11;
      v12 = [(WFDatabase *)self performOperationWithReason:@"getting count for result" block:&v14 error:0];
      v7 = [v12 unsignedIntValue];

      v8 = v18;
      goto LABEL_8;
    }

LABEL_9:

    v5 = [v4 descriptors];
    v7 = [v5 count];
    goto LABEL_10;
  }

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __29__WFDatabase_countForResult___block_invoke;
  v23[3] = &unk_1E837F900;
  v24 = v4;
  v25 = self;
  v5 = v4;
  v6 = [(WFDatabase *)self performOperationWithReason:@"getting count for result" block:v23 error:0];
  v7 = [v6 unsignedIntValue];

  v8 = v24;
LABEL_8:

LABEL_10:
  return v7;
}

id __29__WFDatabase_countForResult___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1E696AD98];
  v5 = [*(a1 + 32) fetchOperation];
  v6 = [*(a1 + 40) context];
  v7 = [v4 numberWithInteger:{objc_msgSend(v5, "countWithContext:error:", v6, a2)}];

  return v7;
}

id __29__WFDatabase_countForResult___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) libraryQuery];
  v5 = [*(a1 + 40) library];
  v6 = [v4 performReturningCountIn:v5 database:*(a1 + 40) error:a2];

  return v6;
}

id __29__WFDatabase_countForResult___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) libraryQuery];
  v3 = [*(a1 + 40) library];
  v4 = [v2 performReturningCountIn:v3 database:*(a1 + 40)];

  return v4;
}

- (id)descriptorsForResult:(id)a3 state:(id *)a4 error:(id *)a5
{
  v8 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__43875;
  v20 = __Block_byref_object_dispose__43876;
  v21 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __47__WFDatabase_descriptorsForResult_state_error___block_invoke;
  v12[3] = &unk_1E837A1B8;
  v9 = v8;
  v13 = v9;
  v14 = self;
  v15 = &v16;
  v10 = [(WFDatabase *)self performOperationWithReason:@"getting descriptors for result" block:v12 error:a5];
  *a4 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v10;
}

id __47__WFDatabase_descriptorsForResult_state_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = *(a1 + 40);
      v6 = [v4 fetchOperation];
      v7 = *(*(a1 + 48) + 8);
      obj = *(v7 + 40);
      v8 = [v5 descriptorsForFetchOperation:v6 state:&obj error:a2];
      objc_storeStrong((v7 + 40), obj);

      goto LABEL_12;
    }
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v4 libraryQuery];
      v10 = [*(a1 + 40) library];
      v11 = [v9 performReturningShortcutsIn:v10 database:*(a1 + 40) error:a2];
LABEL_10:
      v12 = v11;

      v13 = [v12 state];
      v14 = *(*(a1 + 48) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;

      v8 = [v12 descriptors];

      goto LABEL_12;
    }
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v4 libraryQuery];
      v10 = [*(a1 + 40) library];
      v11 = [v9 performReturningCollectionsIn:v10 database:*(a1 + 40)];
      goto LABEL_10;
    }
  }

  v8 = MEMORY[0x1E695E0F0];
LABEL_12:

  return v8;
}

- (id)descriptorsForFetchOperation:(id)a3 state:(id *)a4 error:(id *)a5
{
  v58 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = getWFDatabaseLogObject();
  v10 = os_signpost_id_generate(v9);

  v11 = getWFDatabaseLogObject();
  v12 = v11;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v8;
    _os_signpost_emit_with_name_impl(&dword_1CA256000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "GetDescriptors", "operation=%{signpost.description:attribute}@", &buf, 0xCu);
  }

  v13 = [(WFDatabase *)self context];
  v14 = [v8 resultsWithContext:v13 error:a5];

  v15 = getWFDatabaseLogObject();
  v16 = v15;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1CA256000, v16, OS_SIGNPOST_INTERVAL_END, v10, "GetDescriptors", "", &buf, 2u);
  }

  if (v14)
  {
    v39 = self;
    v41 = a4;
    v17 = [v8 entity];
    v43 = [v17 relationshipsByName];

    v44 = objc_opt_new();
    v18 = objc_opt_new();
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v40 = v14;
    obj = v14;
    v19 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v50;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v50 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v49 + 1) + 8 * i);
          v24 = objc_autoreleasePoolPush();
          v25 = [v23 descriptor];
          v26 = objc_opt_class();
          v27 = WFEnforceClass_44012(v25, v26);

          if (v27)
          {
            v28 = [v23 objectID];
            [v18 addObject:v28];

            v45[0] = MEMORY[0x1E69E9820];
            v45[1] = 3221225472;
            v45[2] = __55__WFDatabase_descriptorsForFetchOperation_state_error___block_invoke;
            v45[3] = &unk_1E837A190;
            v46 = v8;
            v47 = v18;
            v48 = v23;
            [v43 enumerateKeysAndObjectsUsingBlock:v45];
            [v44 addObject:v27];
          }

          objc_autoreleasePoolPop(v24);
        }

        v20 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
      }

      while (v20);
    }

    v29 = [v8 entity];
    v30 = [v29 name];
    v31 = WFDatabaseObjectTypeForEntityName(v30);

    v32 = [(WFDatabase *)v39 context];
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v55 = __WFDescriptorsForObjectIDs_block_invoke;
    v56 = &unk_1E837A2A8;
    v57 = v32;
    v33 = v32;
    v34 = [v18 if_compactMap:&buf];

    v35 = objc_alloc(MEMORY[0x1E69E0A70]);
    v36 = v34;
    if (!v34)
    {
      v36 = objc_opt_new();
    }

    *v41 = [v35 initWithObjectType:v31 state:v36];
    if (!v34)
    {
    }

    v14 = v40;
  }

  else
  {
    v44 = 0;
  }

  v37 = *MEMORY[0x1E69E9840];

  return v44;
}

void __55__WFDatabase_descriptorsForFetchOperation_state_error___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [*(a1 + 32) relationshipKeysAffectingDescriptors];
  v4 = [v3 containsObject:v9];

  if (v4)
  {
    v5 = MEMORY[0x1E695DFD8];
    v6 = *(a1 + 40);
    v7 = [*(a1 + 48) objectIDsForRelationshipNamed:v9];
    v8 = [v5 setWithArray:v7];
    [v6 unionSet:v8];
  }
}

- (void)writeCapsuleDataAndUpdatedSyncHashToCoreDataLibrary:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!self->_library)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"WFDatabase.m" lineNumber:984 description:{@"Invalid parameter not satisfying: %@", @"_library"}];
  }

  v6 = getWFCoherenceLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v18 = "[WFDatabase writeCapsuleDataAndUpdatedSyncHashToCoreDataLibrary:]";
    _os_log_impl(&dword_1CA256000, v6, OS_LOG_TYPE_DEBUG, "%s Serializing library capsule data and calculating sync hash...", buf, 0xCu);
  }

  library = self->_library;
  v16 = 0;
  v8 = [(WFLibrary *)library capsuleDataWithPersistenceMode:[(WFDatabase *)self persistenceMode] error:&v16];
  v9 = v16;
  if (v8)
  {
    [v5 setData:v8];
    [v5 setSyncHash:{+[WFLibraryRecord syncHashFromData:](WFLibraryRecord, "syncHashFromData:", v8)}];
    self->_lastLoadedLibrarySyncHash = [v5 syncHash];
    v10 = objc_alloc(MEMORY[0x1E69E0A68]);
    v11 = [(WFLibrary *)self->_library identifier];
    v12 = [v10 initWithIdentifier:v11 objectType:10];
    [(WFDatabase *)self addPendingUpdatedDescriptor:v12];

    [(WFDatabase *)self setLibraryNeedsSave:0];
  }

  else
  {
    v13 = getWFCoherenceLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "[WFDatabase writeCapsuleDataAndUpdatedSyncHashToCoreDataLibrary:]";
      v19 = 2112;
      v20 = v9;
      _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_ERROR, "%s Could not generate capsule data: %@", buf, 0x16u);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)saveLibraryToDatabase
{
  v7 = self->_library;
  v3 = [(WFDatabase *)self coreDataLibrary];
  if (!v3)
  {
    v4 = [WFCoreDataLibrary alloc];
    v5 = [(WFDatabase *)self context];
    v3 = [(WFCoreDataLibrary *)v4 initWithContext:v5];

    v6 = [(WFLibrary *)v7 identifier];
    [(WFCoreDataLibrary *)v3 setIdentifier:v6];
  }

  [(WFDatabase *)self writeCapsuleDataAndUpdatedSyncHashToCoreDataLibrary:v3];
}

- (id)coreDataLibrary
{
  v3 = +[WFCoreDataLibrary fetchRequest];
  [v3 setFetchLimit:1];
  v4 = [(WFDatabase *)self context];
  v5 = [v4 executeFetchRequest:v3 error:0];

  v6 = [v5 firstObject];

  return v6;
}

- (WFLibrary)library
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = [(WFDatabase *)self coreDataLibrary];
  v4 = v3;
  p_library = &self->_library;
  if (self->_library)
  {
    lastLoadedLibrarySyncHash = self->_lastLoadedLibrarySyncHash;
    if (lastLoadedLibrarySyncHash == [v3 syncHash])
    {
      goto LABEL_35;
    }
  }

  v7 = getWFDatabaseLogObject();
  v8 = os_signpost_id_generate(v7);

  v9 = getWFDatabaseLogObject();
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1CA256000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "ReloadLibrary", "", buf, 2u);
  }

  v11 = getWFDatabaseLogObject();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (!v4)
  {
    if (v12)
    {
      *buf = 136315138;
      v37 = "[WFDatabase library]";
      _os_log_impl(&dword_1CA256000, v11, OS_LOG_TYPE_DEFAULT, "%s Didn't find the latest library in Core Data; creating a new empty one", buf, 0xCu);
    }

    v20 = [[WFLibrary alloc] initWithIdentifier:@"Library-2"];
    library = self->_library;
    self->_library = v20;

    [(WFDatabase *)self saveLibraryToDatabase];
    v16 = [(WFDatabase *)self context];
    [(WFLibrary *)v16 save:0];
    goto LABEL_31;
  }

  if (v12)
  {
    *buf = 136315138;
    v37 = "[WFDatabase library]";
    _os_log_impl(&dword_1CA256000, v11, OS_LOG_TYPE_DEFAULT, "%s Found the latest library in Core Data; creating library with persisted data", buf, 0xCu);
  }

  v13 = [WFLibrary alloc];
  v14 = [v4 identifier];
  v15 = [v4 data];
  v16 = [(WFLibrary *)v13 initWithIdentifier:v14 data:v15];

  if (!-[WFDatabase persistenceMode](self, "persistenceMode") && [v4 resetVersion] <= 0)
  {
    v24 = getWFCoherenceLogObject();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v37 = "[WFDatabase library]";
      _os_log_impl(&dword_1CA256000, v24, OS_LOG_TYPE_DEFAULT, "%s Erasing change history and updating resetVersion", buf, 0xCu);
    }

    v25 = [(WFLibrary *)v16 libraryByErasingChangeHistory];

    [v4 setResetVersion:1];
    v26 = [(WFDatabase *)self fileURL];
    if (v26)
    {
      v27 = [MEMORY[0x1E696AC08] defaultManager];
      v28 = [v26 URLByAppendingPathComponent:@"Coherence" isDirectory:1];
      [v27 removeItemAtURL:v28 error:0];
    }

    v22 = 1;
    v16 = v25;
LABEL_28:
    objc_storeStrong(&self->_library, v16);
    self->_lastLoadedLibrarySyncHash = [v4 syncHash];
    if (!v22)
    {
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  v17 = *p_library;
  if (!*p_library)
  {
    v22 = 0;
    goto LABEL_28;
  }

  v35 = 0;
  v18 = [(WFLibrary *)v17 mergeWithOther:v16 error:&v35];
  v19 = v35;
  if (v18)
  {
    if ([v18 hasDeltaFromOther])
    {

LABEL_29:
      [(WFDatabase *)self writeCapsuleDataAndUpdatedSyncHashToCoreDataLibrary:v4];
      v19 = [(WFDatabase *)self context];
      [v19 save:0];
      goto LABEL_30;
    }
  }

  else
  {
    v23 = getWFCoherenceLogObject();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v37 = "[WFDatabase library]";
      v38 = 2112;
      v39 = v19;
      _os_log_impl(&dword_1CA256000, v23, OS_LOG_TYPE_ERROR, "%s Could not merge libraries: %@", buf, 0x16u);
    }

    objc_storeStrong(&self->_library, v16);
  }

  self->_lastLoadedLibrarySyncHash = [v4 syncHash];

LABEL_30:
LABEL_31:

  v29 = getWFDatabaseLogObject();
  v30 = v29;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1CA256000, v30, OS_SIGNPOST_INTERVAL_END, v8, "ReloadLibrary", "", buf, 2u);
  }

LABEL_35:
  v31 = *p_library;
  v32 = v31;

  v33 = *MEMORY[0x1E69E9840];
  return v31;
}

- (void)notifyResultsAboutChange:(id)a3
{
  v67 = *MEMORY[0x1E69E9840];
  v46 = a3;
  dispatch_assert_queue_V2(self->_changeNotificationQueue);
  v45 = self;
  v42 = [(WFDatabase *)self activeObjectObservers];
  if ([v42 count])
  {
    v4 = [v46 updatedDescriptors];
    v5 = [v46 insertedDescriptors];
    v6 = [v46 deletedDescriptors];
    if ([v4 count] || objc_msgSend(v5, "count") || objc_msgSend(v6, "count"))
    {
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      obj = v42;
      v7 = [obj countByEnumeratingWithState:&v61 objects:v66 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v62;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v62 != v9)
            {
              objc_enumerationMutation(obj);
            }

            v11 = *(*(&v61 + 1) + 8 * i);
            v12 = [(WFDatabase *)self callbackQueue];
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __39__WFDatabase_notifyResultsAboutChange___block_invoke;
            block[3] = &unk_1E837C910;
            block[4] = v11;
            block[5] = self;
            v58 = v4;
            v59 = v5;
            v60 = v6;
            dispatch_async(v12, block);
          }

          v8 = [obj countByEnumeratingWithState:&v61 objects:v66 count:16];
        }

        while (v8);
      }
    }
  }

  v44 = objc_opt_new();
  v13 = objc_opt_new();
  v43 = objc_opt_new();
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v14 = [(WFDatabase *)self activeResults];
  obja = [v14 countByEnumeratingWithState:&v53 objects:v65 count:16];
  if (obja)
  {
    v15 = *v54;
    v16 = &off_1E836E000;
    v47 = v13;
    do
    {
      for (j = 0; j != obja; j = j + 1)
      {
        if (*v54 != v15)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v53 + 1) + 8 * j);
        v19 = [v18 state];
        if (v19)
        {
          v20 = v19;
          v21 = [v18 state];
          v22 = [v46 appliesToResultState:v21];

          if (!v22)
          {
            continue;
          }
        }

        v23 = v18;
        if (v23)
        {
          v24 = v16[28];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v25 = [v23 fetchOperation];
            v26 = [v44 objectForKeyedSubscript:v25];

            if (!v26)
            {
              v27 = objc_opt_new();
              [v44 setObject:v27 forKeyedSubscript:v25];
            }

            v28 = [v44 objectForKeyedSubscript:v25];
            [v28 addObject:v23];

            v29 = v23;
          }

          else
          {
            v29 = 0;
            v25 = v23;
          }

          v31 = v23;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v32 = [v31 libraryQuery];
            v33 = [v13 objectForKeyedSubscript:v32];

            if (!v33)
            {
              v34 = objc_opt_new();
              [v13 setObject:v34 forKeyedSubscript:v32];
            }

            v35 = [v13 objectForKeyedSubscript:v32];
            [v35 addObject:v31];

            v30 = v31;
          }

          else
          {
            v30 = 0;
            v32 = v31;
          }

          v36 = v31;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v37 = [v36 libraryQuery];
            v38 = [v43 objectForKeyedSubscript:v37];

            if (!v38)
            {
              v39 = objc_opt_new();
              [v43 setObject:v39 forKeyedSubscript:v37];
            }

            v40 = [v43 objectForKeyedSubscript:v37];
            [v40 addObject:v36];

            v16 = &off_1E836E000;
          }
        }

        else
        {
          v30 = 0;
          v29 = 0;
        }

        v13 = v47;
      }

      obja = [v14 countByEnumeratingWithState:&v53 objects:v65 count:16];
    }

    while (obja);
  }

  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __39__WFDatabase_notifyResultsAboutChange___block_invoke_2;
  v52[3] = &unk_1E837A110;
  v52[4] = v45;
  [v44 enumerateKeysAndObjectsUsingBlock:v52];
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __39__WFDatabase_notifyResultsAboutChange___block_invoke_302;
  v51[3] = &unk_1E837A138;
  v51[4] = v45;
  [v13 enumerateKeysAndObjectsUsingBlock:v51];
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __39__WFDatabase_notifyResultsAboutChange___block_invoke_308;
  v50[3] = &unk_1E837A160;
  v50[4] = v45;
  [v43 enumerateKeysAndObjectsUsingBlock:v50];

  v41 = *MEMORY[0x1E69E9840];
}

void __39__WFDatabase_notifyResultsAboutChange___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__43875;
  v28 = __Block_byref_object_dispose__43876;
  v29 = 0;
  v7 = *(a1 + 32);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __39__WFDatabase_notifyResultsAboutChange___block_invoke_3;
  v21[3] = &unk_1E837A0E8;
  v21[4] = v7;
  v8 = v5;
  v22 = v8;
  v23 = &v24;
  v20 = 0;
  v9 = [v7 performOperationWithReason:@"re-querying for results" block:v21 error:&v20];
  v10 = v20;
  if (v9)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v11 = v6;
    v12 = [v11 countByEnumeratingWithState:&v16 objects:v30 count:16];
    if (v12)
    {
      v13 = *v17;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(&v16 + 1) + 8 * i) updateDescriptorsAndNotify:v9 state:{v25[5], v16}];
        }

        v12 = [v11 countByEnumeratingWithState:&v16 objects:v30 count:16];
      }

      while (v12);
    }
  }

  else
  {
    v11 = getWFDatabaseLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v32 = "[WFDatabase notifyResultsAboutChange:]_block_invoke_2";
      v33 = 2112;
      v34 = v8;
      v35 = 2112;
      v36 = v10;
      _os_log_impl(&dword_1CA256000, v11, OS_LOG_TYPE_ERROR, "%s Failed to query descriptors for fetch operation: %@. Error: %@", buf, 0x20u);
    }
  }

  _Block_object_dispose(&v24, 8);
  v15 = *MEMORY[0x1E69E9840];
}

void __39__WFDatabase_notifyResultsAboutChange___block_invoke_302(uint64_t a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__43875;
  v30 = __Block_byref_object_dispose__43876;
  v31 = 0;
  v7 = *(a1 + 32);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __39__WFDatabase_notifyResultsAboutChange___block_invoke_2_306;
  v22[3] = &unk_1E837A0E8;
  v8 = v5;
  v9 = *(a1 + 32);
  v23 = v8;
  v24 = v9;
  v25 = &v26;
  v21 = 0;
  v10 = [v7 performOperationWithReason:@"results for library workflow query" block:v22 error:&v21];
  v11 = v21;
  if (v10)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v12 = v6;
    v13 = [v12 countByEnumeratingWithState:&v17 objects:v32 count:16];
    if (v13)
    {
      v14 = *v18;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(v12);
          }

          [*(*(&v17 + 1) + 8 * i) updateDescriptorsAndNotify:v10 state:{v27[5], v17}];
        }

        v13 = [v12 countByEnumeratingWithState:&v17 objects:v32 count:16];
      }

      while (v13);
    }
  }

  else
  {
    v12 = getWFDatabaseLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v34 = "[WFDatabase notifyResultsAboutChange:]_block_invoke";
      v35 = 2112;
      v36 = v8;
      v37 = 2112;
      v38 = v11;
      _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_ERROR, "%s Failed to query descriptors for library query: %@. Error: %@", buf, 0x20u);
    }
  }

  _Block_object_dispose(&v26, 8);
  v16 = *MEMORY[0x1E69E9840];
}

void __39__WFDatabase_notifyResultsAboutChange___block_invoke_308(uint64_t a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__43875;
  v30 = __Block_byref_object_dispose__43876;
  v31 = 0;
  v7 = *(a1 + 32);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __39__WFDatabase_notifyResultsAboutChange___block_invoke_2_312;
  v22[3] = &unk_1E837A0E8;
  v8 = v5;
  v9 = *(a1 + 32);
  v23 = v8;
  v24 = v9;
  v25 = &v26;
  v21 = 0;
  v10 = [v7 performOperationWithReason:@"results for library collections query" block:v22 error:&v21];
  v11 = v21;
  if (v10)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v12 = v6;
    v13 = [v12 countByEnumeratingWithState:&v17 objects:v32 count:16];
    if (v13)
    {
      v14 = *v18;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(v12);
          }

          [*(*(&v17 + 1) + 8 * i) updateDescriptorsAndNotify:v10 state:{v27[5], v17}];
        }

        v13 = [v12 countByEnumeratingWithState:&v17 objects:v32 count:16];
      }

      while (v13);
    }
  }

  else
  {
    v12 = getWFDatabaseLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v34 = "[WFDatabase notifyResultsAboutChange:]_block_invoke";
      v35 = 2112;
      v36 = v8;
      v37 = 2112;
      v38 = v11;
      _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_ERROR, "%s Failed to query descriptors for library query: %@. Error: %@", buf, 0x20u);
    }
  }

  _Block_object_dispose(&v26, 8);
  v16 = *MEMORY[0x1E69E9840];
}

id __39__WFDatabase_notifyResultsAboutChange___block_invoke_2_312(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) library];
  v4 = [v2 performReturningCollectionsIn:v3 database:*(a1 + 40)];

  v5 = [v4 state];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = [v4 descriptors];

  return v8;
}

id __39__WFDatabase_notifyResultsAboutChange___block_invoke_2_306(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) library];
  v6 = [v4 performReturningShortcutsIn:v5 database:*(a1 + 40) error:a2];

  v7 = [v6 state];
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = [v6 descriptors];

  return v10;
}

id __39__WFDatabase_notifyResultsAboutChange___block_invoke_3(void *a1, uint64_t a2)
{
  v3 = a1[4];
  v2 = a1[5];
  v4 = *(a1[6] + 8);
  obj = *(v4 + 40);
  v5 = [v3 descriptorsForFetchOperation:v2 state:&obj error:a2];
  objc_storeStrong((v4 + 40), obj);

  return v5;
}

- (void)remoteChangeDebouncerDidFire
{
  dispatch_assert_queue_V2(self->_remoteChangeQueue);
  v3 = [(WFDatabase *)self pendingRemoteChangeNotification];
  if (v3)
  {
    [(WFDatabase *)self setPendingRemoteChangeNotification:0];
    changeNotificationQueue = self->_changeNotificationQueue;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __42__WFDatabase_remoteChangeDebouncerDidFire__block_invoke;
    v5[3] = &unk_1E837F870;
    v5[4] = self;
    v6 = v3;
    dispatch_async(changeNotificationQueue, v5);
  }
}

- (void)remoteContextDidSave:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = getWFDatabaseLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v4 userInfo];
    *buf = 136315394;
    *&buf[4] = "[WFDatabase remoteContextDidSave:]";
    *&buf[12] = 2112;
    *&buf[14] = v6;
    _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_INFO, "%s Received remote context save notification: %@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v15 = __Block_byref_object_copy__43875;
  v16 = __Block_byref_object_dispose__43876;
  v7 = objc_alloc(MEMORY[0x1E69E0A60]);
  v8 = [v4 userInfo];
  v17 = [v7 initWithDictionaryRepresentation:v8];

  if (([*(*&buf[8] + 40) originatedInCurrentProcess] & 1) == 0)
  {
    v9 = [(WFDatabase *)self context];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __35__WFDatabase_remoteContextDidSave___block_invoke;
    v13[3] = &unk_1E837F898;
    v13[4] = self;
    v13[5] = buf;
    [v9 performBlockAndWait:v13];

    remoteChangeQueue = self->_remoteChangeQueue;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __35__WFDatabase_remoteContextDidSave___block_invoke_3;
    v12[3] = &unk_1E837F898;
    v12[4] = self;
    v12[5] = buf;
    dispatch_async(remoteChangeQueue, v12);
  }

  _Block_object_dispose(buf, 8);

  v11 = *MEMORY[0x1E69E9840];
}

void __35__WFDatabase_remoteContextDidSave___block_invoke(uint64_t a1)
{
  v2 = [*(*(*(a1 + 40) + 8) + 40) updatedDescriptors];
  v3 = [v2 objectsPassingTest:&__block_literal_global_44078];
  v4 = [v3 anyObject];

  if (v4)
  {
    *(*(a1 + 32) + 40) = 0;
  }
}

uint64_t __35__WFDatabase_remoteContextDidSave___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) pendingRemoteChangeNotification];

  if (v2)
  {
    v3 = [*(a1 + 32) pendingRemoteChangeNotification];
    v4 = [v3 notificationByMergingChangesFromNotification:*(*(*(a1 + 40) + 8) + 40)];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  [*(a1 + 32) setPendingRemoteChangeNotification:*(*(*(a1 + 40) + 8) + 40)];
  v7 = *(*(a1 + 32) + 96);

  return [v7 poke];
}

BOOL __35__WFDatabase_remoteContextDidSave___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v4 = [a2 objectType];
  if (v4 == 10)
  {
    *a3 = 1;
  }

  return v4 == 10;
}

- (void)sendPendingChangeNotification
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = [(WFDatabase *)self pendingUpdatedDescriptors];
  if (![v3 count])
  {
    v4 = [(WFDatabase *)self pendingInsertedDescriptors];
    if (![v4 count])
    {
      v24 = [(WFDatabase *)self pendingDeletedDescriptors];
      v25 = [v24 count];

      if (!v25)
      {
        goto LABEL_14;
      }

      goto LABEL_5;
    }
  }

LABEL_5:
  v5 = objc_alloc(MEMORY[0x1E69E0A60]);
  v6 = [(WFDatabase *)self pendingUpdatedDescriptors];
  v7 = [(WFDatabase *)self pendingInsertedDescriptors];
  v8 = [(WFDatabase *)self pendingDeletedDescriptors];
  v9 = [v5 initWithInvalidatedAllObjects:0 updated:v6 inserted:v7 deleted:v8 processIdentifier:getpid()];

  v10 = [(WFDatabase *)self pendingUpdatedDescriptors];
  [v10 removeAllObjects];

  v11 = [(WFDatabase *)self pendingInsertedDescriptors];
  [v11 removeAllObjects];

  v12 = [(WFDatabase *)self pendingDeletedDescriptors];
  [v12 removeAllObjects];

  changeNotificationQueue = self->_changeNotificationQueue;
  v26 = MEMORY[0x1E69E9820];
  v27 = 3221225472;
  v28 = __43__WFDatabase_sendPendingChangeNotification__block_invoke;
  v29 = &unk_1E837F870;
  v30 = self;
  v14 = v9;
  v31 = v14;
  dispatch_async(changeNotificationQueue, &v26);
  LODWORD(v7) = [(WFDatabase *)self postDistributedNotifications:v26];
  v15 = getWFDatabaseLogObject();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);
  if (v7)
  {
    if (v16)
    {
      *buf = 136315138;
      v33 = "[WFDatabase sendPendingChangeNotification]";
      _os_log_impl(&dword_1CA256000, v15, OS_LOG_TYPE_INFO, "%s Posting distributed notification.", buf, 0xCu);
    }

    v17 = getWFDatabaseLogObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v18 = [v14 dictionaryRepresentation];
      *buf = 136315394;
      v33 = "[WFDatabase sendPendingChangeNotification]";
      v34 = 2112;
      v35 = v18;
      _os_log_impl(&dword_1CA256000, v17, OS_LOG_TYPE_DEBUG, "%s Change notification: %@", buf, 0x16u);
    }

    v15 = [MEMORY[0x1E696ABB0] defaultCenter];
    v19 = *MEMORY[0x1E69E0FF0];
    v20 = [(WFDatabase *)self fileURL];
    v21 = [v20 path];
    v22 = [v14 dictionaryRepresentation];
    [v15 postNotificationName:v19 object:v21 userInfo:v22];
  }

  else if (v16)
  {
    *buf = 136315138;
    v33 = "[WFDatabase sendPendingChangeNotification]";
    _os_log_impl(&dword_1CA256000, v15, OS_LOG_TYPE_INFO, "%s Not posting distributed notification because it's explicitly disabled.", buf, 0xCu);
  }

LABEL_14:
  v23 = *MEMORY[0x1E69E9840];
}

- (void)addPendingDeletedDescriptor:(id)a3
{
  v4 = a3;
  v9 = [(WFDatabase *)self pendingDeletedDescriptors];
  v5 = objc_alloc(MEMORY[0x1E69E0A68]);
  v6 = [v4 identifier];
  v7 = [v4 objectType];

  v8 = [v5 initWithIdentifier:v6 objectType:v7];
  [v9 addObject:v8];
}

- (void)addPendingInsertedDescriptor:(id)a3
{
  v4 = a3;
  v9 = [(WFDatabase *)self pendingInsertedDescriptors];
  v5 = objc_alloc(MEMORY[0x1E69E0A68]);
  v6 = [v4 identifier];
  v7 = [v4 objectType];

  v8 = [v5 initWithIdentifier:v6 objectType:v7];
  [v9 addObject:v8];
}

- (void)addPendingUpdatedDescriptor:(id)a3
{
  v4 = a3;
  v9 = [(WFDatabase *)self pendingUpdatedDescriptors];
  v5 = objc_alloc(MEMORY[0x1E69E0A68]);
  v6 = [v4 identifier];
  v7 = [v4 objectType];

  v8 = [v5 initWithIdentifier:v6 objectType:v7];
  [v9 addObject:v8];
}

- (void)object:(id)a3 didUpdateProperties:(id)a4
{
  v9 = a3;
  v7 = a4;
  if (!v9)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"WFDatabase.m" lineNumber:676 description:{@"Invalid parameter not satisfying: %@", @"object"}];
  }

  if (objc_opt_respondsToSelector())
  {
    [v9 didUpdateProperties:v7];
  }
}

- (void)objectWasCreated:(id)a3 identifier:(id)a4
{
  v14 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [WFCoreDataWorkflowActions alloc];
    v8 = [(WFDatabase *)self context];
    v9 = [(WFCoreDataWorkflowActions *)v7 initWithContext:v8];

    [v14 setValue:v9 forKey:@"actions"];
  }

  v10 = [v14 entity];
  v11 = [v10 name];
  v12 = WFDatabaseObjectTypeForEntityName(v11);

  if (v12 != 12)
  {
    v13 = [objc_alloc(MEMORY[0x1E69E0A68]) initWithIdentifier:v6 objectType:v12];
    [(WFDatabase *)self addPendingInsertedDescriptor:v13];
  }
}

- (id)objectOfClass:(Class)a3 withIdentifier:(id)a4 forKey:(id)a5 createIfNecessary:(BOOL)a6 properties:(id)a7
{
  v8 = a6;
  v36 = *MEMORY[0x1E69E9840];
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v15 = [(objc_class *)a3 fetchRequest];
  v16 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", v13, v12];
  [v15 setPredicate:v16];

  [v15 setFetchLimit:1];
  [v15 setPropertiesToFetch:v14];

  v17 = [(WFDatabase *)self context];
  v18 = [v17 executeFetchRequest:v15 error:0];

  v19 = [v18 firstObject];
  v20 = WFEnforceClass_44012(v19, a3);

  if (!v20 && v8)
  {
    v21 = [a3 alloc];
    v22 = [(WFDatabase *)self context];
    v20 = [v21 initWithContext:v22];

    [v20 setValue:v12 forKey:v13];
    v23 = getWFDatabaseLogObject();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v24 = [(WFDatabase *)self fileURL];
      v25 = NSStringFromClass(a3);
      *buf = 136315906;
      v29 = "[WFDatabase objectOfClass:withIdentifier:forKey:createIfNecessary:properties:]";
      v30 = 2112;
      v31 = v24;
      v32 = 2112;
      v33 = v25;
      v34 = 2112;
      v35 = v12;
      _os_log_impl(&dword_1CA256000, v23, OS_LOG_TYPE_DEBUG, "%s %@: Created object of class %@ with ID: %@", buf, 0x2Au);
    }

    [(WFDatabase *)self objectWasCreated:v20 identifier:v12];
  }

  v26 = *MEMORY[0x1E69E9840];

  return v20;
}

- (id)recordWithDescriptor:(id)a3 properties:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = getWFDatabaseLogObject();
  v11 = os_signpost_id_generate(v10);

  v12 = getWFDatabaseLogObject();
  v13 = v12;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1CA256000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "LoadRecord", "", buf, 2u);
  }

  *buf = 0;
  v26 = buf;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__43875;
  v29 = __Block_byref_object_dispose__43876;
  v30 = 0;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __52__WFDatabase_recordWithDescriptor_properties_error___block_invoke;
  v21[3] = &unk_1E837A0A0;
  v21[4] = self;
  v14 = v8;
  v22 = v14;
  v24 = buf;
  v15 = v9;
  v23 = v15;
  [(WFDatabase *)self accessStorageForDescriptor:v14 forWriting:0 readingRecordProperties:v15 usingBlock:v21 withError:a5];
  v16 = getWFDatabaseLogObject();
  v17 = v16;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *v20 = 0;
    _os_signpost_emit_with_name_impl(&dword_1CA256000, v17, OS_SIGNPOST_INTERVAL_END, v11, "LoadRecord", "", v20, 2u);
  }

  v18 = *(v26 + 5);
  _Block_object_dispose(buf, 8);

  return v18;
}

void __52__WFDatabase_recordWithDescriptor_properties_error___block_invoke(void *a1, void *a2)
{
  if (a2)
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a2;
    v6 = [objc_alloc(objc_msgSend(v3 recordClassForObjectType:{objc_msgSend(v4, "objectType"))), "initWithStorage:properties:", v5, a1[6]}];

    v7 = *(a1[7] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

- (void)accessStorageForDescriptor:(id)a3 forWriting:(BOOL)a4 readingRecordProperties:(id)a5 usingBlock:(id)a6 withError:(id *)a7
{
  v10 = a4;
  v12 = a3;
  v13 = a5;
  v14 = a6;
  if (!v13)
  {
    v22 = 0;
LABEL_15:
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __97__WFDatabase_accessStorageForDescriptor_forWriting_readingRecordProperties_usingBlock_withError___block_invoke_3;
    aBlock[3] = &unk_1E837A078;
    aBlock[4] = self;
    v29 = v12;
    v37 = v29;
    v30 = v22;
    v38 = v30;
    v39 = v14;
    v31 = _Block_copy(aBlock);
    if (v10)
    {
      v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"writing to storage for %@", v29];
      v33 = [(WFDatabase *)self performSaveOperationWithReason:v32 block:v31 error:a7];
    }

    else
    {
      v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"reading storage for %@", v29];
      v34 = [(WFDatabase *)self performOperationWithReason:v32 block:v31 error:a7];
    }

    goto LABEL_19;
  }

  v15 = WFCoreDataClassForObjectType([v12 objectType]);
  v16 = WFCoreDataClassForObjectType([v12 objectType]);
  if (v15)
  {
    v17 = v16;
    if (v16)
    {
      if (objc_opt_respondsToSelector())
      {
        v18 = [v15 recordPropertyMap];
        v19 = [v13 allObjects];
        v42[0] = MEMORY[0x1E69E9820];
        v42[1] = 3221225472;
        v42[2] = __97__WFDatabase_accessStorageForDescriptor_forWriting_readingRecordProperties_usingBlock_withError___block_invoke;
        v42[3] = &unk_1E837EB80;
        v43 = v18;
        v20 = v18;
        v21 = [v19 if_map:v42];
      }

      else
      {
        v21 = [v13 allObjects];
      }

      v23 = [v17 entity];
      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = __97__WFDatabase_accessStorageForDescriptor_forWriting_readingRecordProperties_usingBlock_withError___block_invoke_2;
      v40[3] = &unk_1E837AB68;
      v41 = v23;
      v24 = v23;
      v22 = [v21 if_objectsPassingTest:v40];

      v25 = [v12 objectType];
      if (v25 >= 0xC)
      {
        v28 = 0;
      }

      else
      {
        v26 = v25;
        v27 = off_1E837A328[v25];
        if (v26 == 8)
        {
          v28 = 0;
        }

        else
        {
          v28 = v27;
          if (([v22 containsObject:v27] & 1) == 0)
          {
            v35 = [v22 arrayByAddingObject:v28];

            v22 = v35;
          }
        }
      }

      goto LABEL_15;
    }
  }

  if (a7)
  {
    *a7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WFDatabaseErrorDomain" code:0 userInfo:0];
  }

LABEL_19:
}

void *__97__WFDatabase_accessStorageForDescriptor_forWriting_readingRecordProperties_usingBlock_withError___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  v7 = v6;

  return v6;
}

BOOL __97__WFDatabase_accessStorageForDescriptor_forWriting_readingRecordProperties_usingBlock_withError___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 propertiesByName];
  v5 = [v4 objectForKey:v3];

  return v5 != 0;
}

uint64_t __97__WFDatabase_accessStorageForDescriptor_forWriting_readingRecordProperties_usingBlock_withError___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForDescriptor:*(a1 + 40) properties:*(a1 + 48)];
  (*(*(a1 + 56) + 16))();

  return 0;
}

- (void)libraryDidChange
{
  if ([(WFDatabase *)self transactionCount]<= 0)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
  }

  [(WFDatabase *)self setLibraryNeedsSave:1];
}

- (id)performSaveOperationWithReason:(id)a3 block:(id)a4 error:(id *)a5
{
  v8 = a4;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __57__WFDatabase_performSaveOperationWithReason_block_error___block_invoke;
  v12[3] = &unk_1E837A050;
  if (!a3)
  {
    a3 = @"save";
  }

  v12[4] = self;
  v13 = v8;
  v9 = v8;
  v10 = [(WFDatabase *)self performOperationWithReason:a3 block:v12 error:a5];

  return v10;
}

id __57__WFDatabase_performSaveOperationWithReason_block_error___block_invoke(uint64_t a1, void *a2)
{
  [*(a1 + 32) setTransactionCount:{objc_msgSend(*(a1 + 32), "transactionCount") + 1}];
  v4 = *(a1 + 40);
  v12[1] = 0;
  v5 = (*(v4 + 16))();
  v6 = 0;
  [*(a1 + 32) setTransactionCount:{objc_msgSend(*(a1 + 32), "transactionCount") - 1}];
  if ([*(a1 + 32) transactionCount] <= 0)
  {
    if (v6)
    {
      goto LABEL_6;
    }

    if ([*(a1 + 32) libraryNeedsSave])
    {
      [*(a1 + 32) saveLibraryToDatabase];
    }

    v7 = [*(a1 + 32) context];
    v12[0] = 0;
    [v7 save:v12];
    v6 = v12[0];

    if (v6)
    {
LABEL_6:
      v8 = [*(a1 + 32) context];
      [v8 rollback];
    }

    v9 = [*(a1 + 32) context];
    [v9 reset];

    [*(a1 + 32) sendPendingChangeNotification];
  }

  if (a2 && v6)
  {
    v10 = v6;
    *a2 = v6;
  }

  return v5;
}

- (id)performOperationWithReason:(id)a3 block:(id)a4 error:(id *)a5
{
  v39 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = os_transaction_create();
  v11 = getWFDatabaseLogObject();
  v12 = os_signpost_id_generate(v11);

  v13 = getWFDatabaseLogObject();
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    v15 = @"none";
    if (v8)
    {
      v15 = v8;
    }

    LODWORD(buf) = 138412290;
    *(&buf + 4) = v15;
    _os_signpost_emit_with_name_impl(&dword_1CA256000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "CoreDataOperation", "reason=%{signpost.description:attribute}@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__43875;
  v37 = __Block_byref_object_dispose__43876;
  v38 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__43875;
  v32 = __Block_byref_object_dispose__43876;
  v33 = 0;
  v16 = [(WFDatabase *)self context];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __53__WFDatabase_performOperationWithReason_block_error___block_invoke;
  v24[3] = &unk_1E837A028;
  p_buf = &buf;
  v17 = v9;
  v27 = &v28;
  v24[4] = self;
  v25 = v17;
  [v16 performBlockAndWait:v24];

  if (a5)
  {
    *a5 = v29[5];
  }

  v18 = getWFDatabaseLogObject();
  v19 = v18;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    *v23 = 0;
    _os_signpost_emit_with_name_impl(&dword_1CA256000, v19, OS_SIGNPOST_INTERVAL_END, v12, "CoreDataOperation", "", v23, 2u);
  }

  v20 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&v28, 8);

  _Block_object_dispose(&buf, 8);
  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

void __53__WFDatabase_performOperationWithReason_block_error___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 56) + 8);
  obj = *(v4 + 40);
  v5 = (*(v3 + 16))();
  objc_storeStrong((v4 + 40), obj);
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  objc_autoreleasePoolPop(v2);
  if ([*(a1 + 32) transactionCount] <= 0)
  {
    v8 = [*(a1 + 32) context];
    [v8 reset];
  }
}

- (void)performTransactionWithReason:(id)a3 block:(id)a4 error:(id *)a5
{
  v8 = a4;
  if (!a3)
  {
    a3 = @"transaction";
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __55__WFDatabase_performTransactionWithReason_block_error___block_invoke;
  v11[3] = &unk_1E837A000;
  v12 = v8;
  v9 = v8;
  v10 = [(WFDatabase *)self performSaveOperationWithReason:a3 block:v11 error:a5];
}

- (void)removeObjectObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_observersLock);
  v5 = [(WFDatabase *)self observers];
  [v5 removeObject:v4];

  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)addObjectObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_observersLock);
  v5 = [(WFDatabase *)self observers];
  [v5 addObject:v4];

  os_unfair_lock_unlock(&self->_observersLock);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(WFDatabase *)self context];
      v6 = [(WFDatabase *)v4 context];
      v7 = [v5 isEqual:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (WFDatabase)initWithPersistenceMode:(unint64_t)a3 fileURL:(id)a4 error:(id *)a5
{
  v101 = *MEMORY[0x1E69E9840];
  v7 = a4;
  if (!v7)
  {
    v77 = [MEMORY[0x1E696AAA8] currentHandler];
    [v77 handleFailureInMethod:a2 object:self file:@"WFDatabase.m" lineNumber:321 description:{@"Invalid parameter not satisfying: %@", @"fileURL"}];

    v7 = 0;
  }

  v82 = v7;
  obj = [MEMORY[0x1E695D6C8] persistentStoreDescriptionWithURL:v7];
  v8 = [obj URL];
  v9 = [v8 URLByDeletingLastPathComponent];
  v86 = [v9 URLByAppendingPathComponent:@"Shortcuts.core_data_migration" isDirectory:0];

  if (a3 == 1)
  {
    v11 = -1;
  }

  else
  {
    v10 = open([v86 fileSystemRepresentation], 512, 420);
    if (v10 == -1)
    {
      if (a5)
      {
LABEL_20:
        [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:0];
        v21 = 0;
        *a5 = v22 = 0;
        goto LABEL_56;
      }

LABEL_40:
      v21 = 0;
      v22 = 0;
      goto LABEL_56;
    }

    v11 = v10;
    if (flock(v10, 2) == -1)
    {
      close(v11);
      if (a5)
      {
        goto LABEL_20;
      }

      goto LABEL_40;
    }
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__WFDatabase_initWithPersistenceMode_fileURL_error___block_invoke;
  aBlock[3] = &unk_1E8379FA8;
  v96 = a3 != 1;
  v95 = v11;
  v94 = v86;
  v83 = _Block_copy(aBlock);
  if (!a3)
  {
    v12 = [obj URL];
    v13 = [v12 URLByDeletingLastPathComponent];
    v14 = [v13 URLByAppendingPathComponent:@"CoherenceContext.db"];

    [WFLibrary setSharedContextURL:v14];
  }

  v80 = os_transaction_create();
  context = objc_autoreleasePoolPush();
  v92 = 0;
  v15 = obj;
  if ([WFProgressiveCoreDataMigrator migrateDatabaseAtPersistentStoreDescription:v15 error:&v92])
  {
    if (WFWorkflowKitManagedObjectModel_onceToken != -1)
    {
      dispatch_once(&WFWorkflowKitManagedObjectModel_onceToken, &__block_literal_global_633);
    }

    v79 = WFWorkflowKitManagedObjectModel_model;
    v16 = MEMORY[0x1E695D6C0];
    v17 = [v15 URL];
    v78 = [v16 metadataForPersistentStoreOfType:*MEMORY[0x1E695D4A8] URL:v17 options:0 error:0];

    v18 = [v78 objectForKeyedSubscript:*MEMORY[0x1E695D4B0]];
    if (v18)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = v18;
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
    }

    v23 = v19;

    v24 = [v23 firstObject];

    if (v24)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v25 = v24;
      }

      else
      {
        v25 = 0;
      }
    }

    else
    {
      v25 = 0;
    }

    v26 = v25;

    v27 = [v79 versionIdentifiers];
    v28 = [v27 anyObject];

    if (v28)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v29 = v28;
      }

      else
      {
        v29 = 0;
      }
    }

    else
    {
      v29 = 0;
    }

    v30 = v29;

    if (v26 && v30 && [v26 compare:v30 options:64] == 1)
    {
      v31 = getWFDatabaseLogObject();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "WFPersistentStoreCoordinator";
        *&buf[12] = 2112;
        *&buf[14] = v26;
        v99 = 2112;
        v100 = v30;
        _os_log_impl(&dword_1CA256000, v31, OS_LOG_TYPE_ERROR, "%s Model version from persistent store metadata is '%@' and is greater than the current model version '%@'. This likely indicates a schema downgrade, which is not supported", buf, 0x20u);
      }

      [MEMORY[0x1E696ABC0] errorWithDomain:@"WFDatabaseErrorDomain" code:1 userInfo:0];
      v92 = v20 = 0;
    }

    else
    {
      v32 = [objc_alloc(MEMORY[0x1E695D6C0]) initWithManagedObjectModel:v79];
      v33 = *MEMORY[0x1E695D318];
      v97[0] = *MEMORY[0x1E695D380];
      v97[1] = v33;
      *buf = MEMORY[0x1E695E118];
      *&buf[8] = MEMORY[0x1E695E118];
      v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:v97 count:2];
      v35 = [v15 type];
      v36 = [v15 configuration];
      v37 = [v15 URL];
      v38 = [v32 addPersistentStoreWithType:v35 configuration:v36 URL:v37 options:v34 error:&v92];
      v39 = v38 == 0;

      if (v39)
      {
        v20 = 0;
      }

      else
      {
        v20 = v32;
      }
    }
  }

  else
  {
    v20 = 0;
  }

  v21 = v92;
  objc_autoreleasePoolPop(context);
  if (a5)
  {
    v40 = v21;
    *a5 = v21;
  }

  if (v20)
  {
    v41 = [[WFManagedObjectContext alloc] initWithConcurrencyType:1];
    [(WFManagedObjectContext *)v41 setDatabase:self];
    v85 = [(NSMergePolicy *)[WFDatabaseMergePolicy alloc] initWithMergeType:2];
    [(WFDatabaseMergePolicy *)v85 setDatabase:self];
    [(WFManagedObjectContext *)v41 setMergePolicy:v85];
    [(WFManagedObjectContext *)v41 setPersistentStoreCoordinator:v20];
    [(WFManagedObjectContext *)v41 setStalenessInterval:0.0];
    [(WFManagedObjectContext *)v41 setUndoManager:0];
    [(WFManagedObjectContext *)v41 setName:@"WFDatabase"];
    v42 = [objc_alloc(MEMORY[0x1E695D628]) initWithConcurrencyType:1];
    [v42 setPersistentStoreCoordinator:v20];
    [v42 setMergePolicy:*MEMORY[0x1E695D388]];
    v91.receiver = self;
    v91.super_class = WFDatabase;
    v43 = [(WFDatabase *)&v91 init];
    self = v43;
    if (v43)
    {
      v43->_persistenceMode = a3;
      objc_storeStrong(&v43->_context, v41);
      objc_storeStrong(&self->_suggestionsContext, v42);
      objc_storeStrong(&self->_persistentStoreDescription, obj);
      v44 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
      resultsToNotify = self->_resultsToNotify;
      self->_resultsToNotify = v44;

      v46 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
      observers = self->_observers;
      self->_observers = v46;

      self->_observersLock._os_unfair_lock_opaque = 0;
      v48 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v49 = dispatch_queue_create("com.apple.shortcuts.WFCoreDataDatabase-callback", v48);
      callbackQueue = self->_callbackQueue;
      self->_callbackQueue = v49;

      v51 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v52 = dispatch_queue_create("com.apple.shortcuts.WFCoreDataDatabase-change-notification", v51);
      changeNotificationQueue = self->_changeNotificationQueue;
      self->_changeNotificationQueue = v52;

      self->_postDistributedNotifications = a3 == 0;
      v54 = objc_opt_new();
      pendingUpdatedDescriptors = self->_pendingUpdatedDescriptors;
      self->_pendingUpdatedDescriptors = v54;

      v56 = objc_opt_new();
      pendingInsertedDescriptors = self->_pendingInsertedDescriptors;
      self->_pendingInsertedDescriptors = v56;

      v58 = objc_opt_new();
      pendingDeletedDescriptors = self->_pendingDeletedDescriptors;
      self->_pendingDeletedDescriptors = v58;

      v60 = [v15 URL];
      v61 = [v60 path];
      v62 = [v61 isEqualToString:@"/dev/null"];

      if ((v62 & 1) == 0)
      {
        v63 = [v15 URL];
        fileURL = self->_fileURL;
        self->_fileURL = v63;
      }

      v65 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v66 = dispatch_queue_create("com.apple.shortcuts.WFCoreDataDatabase-remote-change", v65);
      remoteChangeQueue = self->_remoteChangeQueue;
      self->_remoteChangeQueue = v66;

      v68 = [objc_alloc(MEMORY[0x1E69E0A80]) initWithDelay:self->_remoteChangeQueue maximumDelay:2.0 queue:10.0];
      remoteChangeNotificationDebouncer = self->_remoteChangeNotificationDebouncer;
      self->_remoteChangeNotificationDebouncer = v68;

      [(WFDebouncer *)self->_remoteChangeNotificationDebouncer addTarget:self action:sel_remoteChangeDebouncerDidFire];
      if (!a3)
      {
        v70 = [MEMORY[0x1E696ABB0] defaultCenter];
        v71 = [v15 URL];
        v72 = [v71 path];
        [v70 addObserver:self selector:sel_remoteContextDidSave_ name:*MEMORY[0x1E69E0FF0] object:v72 suspensionBehavior:4];
      }

      v89[0] = MEMORY[0x1E69E9820];
      v89[1] = 3221225472;
      v89[2] = __52__WFDatabase_initWithPersistenceMode_fileURL_error___block_invoke_249;
      v89[3] = &unk_1E8379FD0;
      v73 = self;
      v90 = v73;
      [(WFDatabase *)v73 performTransactionWithReason:@"initial setup" block:v89 error:0];
      v74 = v73;
    }

    v22 = self;
  }

  else
  {
    v22 = 0;
  }

  v83[2]();
LABEL_56:

  v75 = *MEMORY[0x1E69E9840];
  return v22;
}

void __52__WFDatabase_initWithPersistenceMode_fileURL_error___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*(a1 + 44) == 1)
  {
    if (flock(*(a1 + 40), 8) == -1)
    {
      v2 = getWFDatabaseLogObject();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        v3 = *__error();
        v6 = 136315394;
        v7 = "[WFDatabase initWithPersistenceMode:fileURL:error:]_block_invoke";
        v8 = 1026;
        v9 = v3;
        _os_log_impl(&dword_1CA256000, v2, OS_LOG_TYPE_ERROR, "%s Error: Failed to unlock migration file, errno=%{public}d", &v6, 0x12u);
      }
    }

    close(*(a1 + 40));
    v4 = [MEMORY[0x1E696AC08] defaultManager];
    [v4 removeItemAtURL:*(a1 + 32) error:0];
  }

  v5 = *MEMORY[0x1E69E9840];
}

uint64_t __52__WFDatabase_initWithPersistenceMode_fileURL_error___block_invoke_249(uint64_t a1)
{
  v2 = [*(a1 + 32) library];
  [*(a1 + 32) addActionCountsToShortcutsIfNecessary];
  [*(a1 + 32) addSyncHashesToShortcutsIfNecessary];
  [*(a1 + 32) addSpotlightSyncHashesToShortcutsIfNecessary];
  [*(a1 + 32) removeRunEventsWithoutAssociatedShortcuts];
  [*(a1 + 32) markTriggersAsRunAfterConfirmationIfNeeded];
  [*(a1 + 32) updateWalrusStatus];
  v3 = *(a1 + 32);

  return [v3 removePermissionsWithoutAssociatedShortcuts];
}

- (WFDatabase)initWithPersistenceMode:(unint64_t)a3 error:(id *)a4
{
  if (a3 == 1)
  {
    v6 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/dev/null" isDirectory:0];
    v7 = self;
    v8 = 1;
    goto LABEL_5;
  }

  if (!a3)
  {
    v6 = WFShortcutsPersistentStoreURL();
    v7 = self;
    v8 = 0;
LABEL_5:
    self = [(WFDatabase *)v7 initWithPersistenceMode:v8 fileURL:v6 error:a4];
  }

  return self;
}

- (void)invalidateAllObjectsAndNotify
{
  v3 = objc_alloc(MEMORY[0x1E69E0A60]);
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = [v3 initWithInvalidatedAllObjects:1 updated:v4 inserted:v5 deleted:v6 processIdentifier:getpid()];

  changeNotificationQueue = self->_changeNotificationQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __43__WFDatabase_invalidateAllObjectsAndNotify__block_invoke;
  v10[3] = &unk_1E837F870;
  v10[4] = self;
  v11 = v7;
  v9 = v7;
  dispatch_async(changeNotificationQueue, v10);
}

- (BOOL)replaceWithFileAtURL:(id)a3 error:(id *)a4
{
  v42[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(WFDatabase *)self context];
  v8 = [v7 persistentStoreCoordinator];

  v9 = [(WFDatabase *)self fileURL];
  if (v9)
  {
    [v6 startAccessingSecurityScopedResource];
    v10 = *MEMORY[0x1E695D318];
    v41[0] = *MEMORY[0x1E695D380];
    v41[1] = v10;
    v42[0] = MEMORY[0x1E695E118];
    v42[1] = MEMORY[0x1E695E118];
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:2];
    v12 = *MEMORY[0x1E695D4A8];
    v36 = 0;
    v13 = [v8 replacePersistentStoreAtURL:v9 destinationOptions:0 withPersistentStoreFromURL:v6 sourceOptions:v11 storeType:v12 error:&v36];
    v14 = v36;
    v15 = v14;
    if (v13)
    {
      v33 = v14;
      [v6 stopAccessingSecurityScopedResource];
      v16 = MEMORY[0x1E695D6C8];
      v17 = WFShortcutsPersistentStoreURL();
      v18 = [v16 persistentStoreDescriptionWithURL:v17];

      v19 = [v18 type];
      [v18 configuration];
      v21 = v20 = a4;
      v22 = [v18 URL];
      v23 = v11;
      v24 = v22;
      v34 = v23;
      v35 = v8;
      v25 = [v8 addPersistentStoreWithType:v19 configuration:v21 URL:v22 options:? error:?];
      v26 = v25 != 0;

      if (v25)
      {
        [(WFDatabase *)self invalidateAllObjectsAndNotify];
      }

      else
      {
        v29 = getWFDatabaseLogObject();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v30 = *v20;
          *buf = 136315394;
          v38 = "[WFDatabase replaceWithFileAtURL:error:]";
          v39 = 2112;
          v40 = v30;
          _os_log_impl(&dword_1CA256000, v29, OS_LOG_TYPE_ERROR, "%s Error adding persistent store: %@", buf, 0x16u);
        }
      }

      v11 = v34;
      v8 = v35;

      v15 = v33;
    }

    else
    {
      v27 = getWFDatabaseLogObject();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v38 = "[WFDatabase replaceWithFileAtURL:error:]";
        v39 = 2112;
        v40 = v15;
        _os_log_impl(&dword_1CA256000, v27, OS_LOG_TYPE_ERROR, "%s Error replacing persistent store: %@", buf, 0x16u);
      }

      v28 = v15;
      v26 = 0;
      *a4 = v15;
    }
  }

  else
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"WFDatabaseErrorDomain" code:0 userInfo:MEMORY[0x1E695E0F8]];
    *a4 = v26 = 0;
  }

  v31 = *MEMORY[0x1E69E9840];
  return v26;
}

- (NSURL)exportableURL
{
  v48[3] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFF8];
  v4 = NSTemporaryDirectory();
  v5 = [v3 fileURLWithPath:v4];

  v33 = self;
  v6 = [(WFDatabase *)self fileURL];
  v7 = [v6 lastPathComponent];

  v48[0] = v7;
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-shm", v7];
  v48[1] = v8;
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-wal", v7];
  v48[2] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:3];

  v11 = [MEMORY[0x1E696AC08] defaultManager];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v37 objects:v47 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v38;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v38 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [v5 URLByAppendingPathComponent:*(*(&v37 + 1) + 8 * i)];
        v18 = [v17 path];
        v19 = [v11 fileExistsAtPath:v18];

        if (v19)
        {
          v36 = 0;
          [v11 removeItemAtURL:v17 error:&v36];
          v20 = v36;
          if (v20)
          {
            v24 = v20;
            v25 = getWFDatabaseLogObject();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              v42 = "[WFDatabase exportableURL]";
              v43 = 2112;
              v44 = v7;
              v45 = 2112;
              v46 = v24;
              _os_log_impl(&dword_1CA256000, v25, OS_LOG_TYPE_ERROR, "%s Error removing the existing %@ database file: %@", buf, 0x20u);
            }

            v26 = 0;
            goto LABEL_26;
          }
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v37 objects:v47 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  ppDb = 0;
  v21 = [(WFDatabase *)v33 fileURL];
  v22 = sqlite3_open_v2([v21 fileSystemRepresentation], &ppDb, 1, 0);

  if (v22)
  {
    v23 = getWFDatabaseLogObject();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v42 = "[WFDatabase exportableURL]";
      _os_log_impl(&dword_1CA256000, v23, OS_LOG_TYPE_ERROR, "%s Failed to open the database to export", buf, 0xCu);
    }

    goto LABEL_24;
  }

  v27 = [(WFDatabase *)v33 fileURL];
  v28 = [v27 lastPathComponent];
  v23 = [v5 URLByAppendingPathComponent:v28];

  [v23 fileSystemRepresentation];
  if (!_sqlite3_db_copy_compact())
  {
    db = 0;
    if (!sqlite3_open_v2([v23 fileSystemRepresentation], &db, 1, 0))
    {
      sqlite3_wal_checkpoint_v2(db, 0, 1, 0, 0);
      v26 = v23;
      goto LABEL_25;
    }

    v29 = getWFDatabaseLogObject();
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 136315138;
    v42 = "[WFDatabase exportableURL]";
    v30 = "%s Failed to open the database to export";
    goto LABEL_22;
  }

  v29 = getWFDatabaseLogObject();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v42 = "[WFDatabase exportableURL]";
    v30 = "%s Failed to copy the database to export";
LABEL_22:
    _os_log_impl(&dword_1CA256000, v29, OS_LOG_TYPE_ERROR, v30, buf, 0xCu);
  }

LABEL_23:

LABEL_24:
  v26 = 0;
LABEL_25:

LABEL_26:
  v31 = *MEMORY[0x1E69E9840];

  return v26;
}

+ (id)createDatabaseForTesting
{
  v2 = [[a1 alloc] initWithPersistenceMode:1 error:0];

  return v2;
}

+ (void)setDefaultDatabase:(id)a3
{
  v3 = a3;
  os_unfair_lock_lock(&WFDefaultDatabaseLock);
  v4 = _defaultDatabase;
  _defaultDatabase = v3;

  os_unfair_lock_unlock(&WFDefaultDatabaseLock);
}

- (id)allShortcutBookmarks
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = +[WFCoreDataShortcutBookmark fetchRequest];
  v4 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"path" ascending:0];
  v9[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  [v3 setSortDescriptors:v5];

  v6 = [[WFCoreDataDatabaseResult alloc] initWithDatabase:self fetchRequest:v3];
  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (BOOL)deleteAllBookmarksForWorkflowID:(id)a3 error:(id *)a4
{
  v6 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63__WFDatabase_Bookmarks__deleteAllBookmarksForWorkflowID_error___block_invoke;
  v9[3] = &unk_1E837F978;
  v10 = v6;
  v11 = self;
  v7 = v6;
  [(WFDatabase *)self performTransactionWithReason:@"delete all bookmarks for shortcut" block:v9 error:a4];

  return a4 == 0;
}

void __63__WFDatabase_Bookmarks__deleteAllBookmarksForWorkflowID_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v8 = +[WFCoreDataShortcutBookmark fetchRequest];
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %@", @"identifier", *(a1 + 32)];
  [v8 setPredicate:v4];

  v5 = [objc_alloc(MEMORY[0x1E695D538]) initWithFetchRequest:v8];
  v6 = [*(a1 + 40) context];
  v7 = [v6 executeRequest:v5 error:a2];
}

- (id)bookmarksForWorkflowID:(id)a3 error:(id *)a4
{
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__WFDatabase_Bookmarks__bookmarksForWorkflowID_error___block_invoke;
  v10[3] = &unk_1E837AA78;
  v11 = v6;
  v12 = self;
  v7 = v6;
  v8 = [(WFDatabase *)self performOperationWithReason:@"getting bookmarks for workflow" block:v10 error:a4];

  return v8;
}

id __54__WFDatabase_Bookmarks__bookmarksForWorkflowID_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = +[WFCoreDataShortcutBookmark fetchRequest];
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %@", @"identifier", *(a1 + 32)];
  [v4 setPredicate:v5];

  v6 = [*(a1 + 40) context];
  v7 = [v6 executeFetchRequest:v4 error:a2];

  v8 = [v7 if_compactMap:&__block_literal_global_46459];

  return v8;
}

- (id)bookmarkDataForWorkflowID:(id)a3 path:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __62__WFDatabase_Bookmarks__bookmarkDataForWorkflowID_path_error___block_invoke;
  v14[3] = &unk_1E837AA30;
  v15 = v8;
  v16 = v9;
  v17 = self;
  v10 = v9;
  v11 = v8;
  v12 = [(WFDatabase *)self performOperationWithReason:@"getting bookmark data for workflow+path" block:v14 error:a5];

  return v12;
}

id __62__WFDatabase_Bookmarks__bookmarkDataForWorkflowID_path_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = +[WFCoreDataShortcutBookmark fetchRequest];
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %@ AND %K = %@", @"identifier", *(a1 + 32), @"path", *(a1 + 40)];
  [v4 setPredicate:v5];

  v6 = [*(a1 + 48) context];
  v7 = [v6 executeFetchRequest:v4 error:a2];
  v8 = [v7 firstObject];

  v9 = [v8 descriptor];

  return v9;
}

- (id)createBookmarkWithWorkflowID:(id)a3 path:(id)a4 bookmarkData:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __78__WFDatabase_Bookmarks__createBookmarkWithWorkflowID_path_bookmarkData_error___block_invoke;
  v18[3] = &unk_1E837AA08;
  v19 = v10;
  v20 = v11;
  v21 = self;
  v22 = v12;
  v13 = v12;
  v14 = v11;
  v15 = v10;
  v16 = [(WFDatabase *)self performSaveOperationWithReason:@"save bookmark for workflow+path (update if needed)" block:v18 error:a6];

  return v16;
}

id __78__WFDatabase_Bookmarks__createBookmarkWithWorkflowID_path_bookmarkData_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = +[WFCoreDataShortcutBookmark fetchRequest];
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %@ AND %K = %@", @"identifier", *(a1 + 32), @"path", *(a1 + 40)];
  [v4 setPredicate:v5];

  v6 = [*(a1 + 48) context];
  v7 = [v6 executeFetchRequest:v4 error:a2];
  v8 = [v7 firstObject];

  if (v8)
  {
    v9 = getWFFilesLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "[WFDatabase(Bookmarks) createBookmarkWithWorkflowID:path:bookmarkData:error:]_block_invoke";
      _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_DEFAULT, "%s Found existing bookmark updating instead", buf, 0xCu);
    }

    [v8 setBookmarkData:*(a1 + 56)];
    v10 = [v8 descriptor];
  }

  else
  {
    v11 = [WFCoreDataShortcutBookmark alloc];
    v12 = [*(a1 + 48) context];
    v13 = [(WFCoreDataShortcutBookmark *)v11 initWithContext:v12];

    [(WFCoreDataShortcutBookmark *)v13 setPath:*(a1 + 40)];
    [(WFCoreDataShortcutBookmark *)v13 setBookmarkData:*(a1 + 56)];
    [(WFCoreDataShortcutBookmark *)v13 setIdentifier:*(a1 + 32)];
    v10 = [(WFCoreDataShortcutBookmark *)v13 descriptor];
  }

  v14 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)deleteDonationsForShortcutWithIdentifier:(id)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"WFDatabase+Shortcuts.m" lineNumber:876 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  v14[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v7 = [MEMORY[0x1E6964E78] defaultSearchableIndex];
  v8 = *MEMORY[0x1E69E0FB0];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__WFDatabase_Shortcuts__deleteDonationsForShortcutWithIdentifier___block_invoke;
  v12[3] = &unk_1E837E5E0;
  v13 = v5;
  v9 = v5;
  [v7 deleteInteractionsWithGroupIdentifiers:v6 bundleID:v8 protectionClass:0 completionHandler:v12];

  v10 = *MEMORY[0x1E69E9840];
}

void __66__WFDatabase_Shortcuts__deleteDonationsForShortcutWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = getWFDatabaseLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = *MEMORY[0x1E69E0F60];
      v8 = 136315906;
      v9 = "[WFDatabase(Shortcuts) deleteDonationsForShortcutWithIdentifier:]_block_invoke";
      v10 = 2112;
      v11 = v5;
      v12 = 2112;
      v13 = v6;
      v14 = 2114;
      v15 = v3;
      _os_log_impl(&dword_1CA256000, v4, OS_LOG_TYPE_ERROR, "%s Error deleting interactions for workflow reference %@, attributed to %@: %{public}@", &v8, 0x2Au);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (id)duplicateNameErrorWithName:(id)a3
{
  v14[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ABC0];
  v13[0] = *MEMORY[0x1E696A588];
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = WFLocalizedString(@"You already have a shortcut named “%@”.");
  v7 = [v4 localizedStringWithFormat:v6, v5, v13[0]];

  v14[0] = v7;
  v13[1] = *MEMORY[0x1E696A578];
  v8 = WFLocalizedString(@"Please choose another name for this shortcut.");
  v14[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v10 = [v3 errorWithDomain:@"WFWorkflowErrorDomain" code:1 userInfo:v9];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)validateWorkflowName:(id)a3 forCreation:(BOOL)a4 overwriting:(BOOL)a5 error:(id *)a6
{
  v29[2] = *MEMORY[0x1E69E9840];
  v8 = [a3 wf_trimmedString];
  if ([v8 wf_isEmpty])
  {
    if (!a6)
    {
      goto LABEL_11;
    }

    v9 = MEMORY[0x1E696ABC0];
    v28[0] = *MEMORY[0x1E696A588];
    v10 = WFLocalizedString(@"Invalid Name");
    v29[0] = v10;
    v28[1] = *MEMORY[0x1E696A578];
    v11 = WFLocalizedString(@"Please enter a name for this shortcut.");
    v29[1] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];
    *a6 = [v9 errorWithDomain:@"WFWorkflowErrorDomain" code:0 userInfo:v12];

    goto LABEL_10;
  }

  if (a5)
  {
LABEL_5:
    a6 = v8;
    goto LABEL_11;
  }

  v13 = +[WFHomeManager cachedHomeSceneNames];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __76__WFDatabase_Shortcuts__validateWorkflowName_forCreation_overwriting_error___block_invoke;
  v24[3] = &unk_1E837AB68;
  v14 = v8;
  v25 = v14;
  v15 = [v13 if_firstObjectPassingTest:v24];

  if (a6 && v15)
  {
    v16 = MEMORY[0x1E696ABC0];
    v26[0] = *MEMORY[0x1E696A588];
    v17 = WFLocalizedString(@"Name Cannot Be Used");
    v27[0] = v17;
    v26[1] = *MEMORY[0x1E696A578];
    v18 = MEMORY[0x1E696AEC0];
    v19 = WFLocalizedString(@"You already have a Home scene named “%@”. Please choose another name for this shortcut.");
    v20 = [v18 localizedStringWithFormat:v19, v14];
    v27[1] = v20;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];
    *a6 = [v16 errorWithDomain:@"WFWorkflowErrorDomain" code:1 userInfo:v21];
  }

  else
  {

    if (!v15)
    {
      goto LABEL_5;
    }
  }

LABEL_10:
  a6 = 0;
LABEL_11:

  v22 = *MEMORY[0x1E69E9840];

  return a6;
}

- (void)updateLibraryWithNewWorkflowID:(id)a3 adjacentToExistingWorkflowID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(WFDatabase *)self library];
  [v8 insertShortcutWithId:v6];

  v9 = [(WFDatabase *)self library];
  v10 = [v9 collectionsAndFoldersContainingShortcut:v7 error:0];

  if (v10)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __85__WFDatabase_Shortcuts__updateLibraryWithNewWorkflowID_adjacentToExistingWorkflowID___block_invoke;
    v11[3] = &unk_1E837ACF8;
    v11[4] = self;
    v12 = v7;
    v13 = v6;
    [v10 enumerateObjectsUsingBlock:v11];
    [(WFDatabase *)self libraryDidChange];
  }
}

void __85__WFDatabase_Shortcuts__updateLibraryWithNewWorkflowID_adjacentToExistingWorkflowID___block_invoke(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 identifier];
  v5 = WFWorkflowTypeForCollectionIdentifier(v4);

  v6 = [*(a1 + 32) library];
  v7 = *(a1 + 40);
  v8 = [v3 identifier];
  v9 = [v6 indexOfShortcutWithIdentifier:v7 inCollectionWithIdentifier:v8];

  if (v5)
  {
    if (v9)
    {
      v10 = [*(a1 + 32) library];
      v11 = *(a1 + 48);
      v12 = [v9 integerValue];
      v13 = [v3 identifier];
      v31 = 0;
      [v10 insertShortcutWithIdentifier:v11 atIndex:v12 + 1 toCollection:v13 error:&v31];
      v14 = v31;
    }

    else
    {
      v14 = 0;
    }

    v19 = *(a1 + 32);
    v20 = objc_alloc(MEMORY[0x1E69E0A68]);
    v21 = [v3 identifier];
    v22 = [v20 initWithIdentifier:v21 objectType:2];
    [v19 addPendingUpdatedDescriptor:v22];

    v23 = *(a1 + 32);
    v24 = [objc_alloc(MEMORY[0x1E69E0A68]) initWithIdentifier:@"Root" objectType:2];
    [v23 addPendingUpdatedDescriptor:v24];
  }

  else
  {
    if (v9)
    {
      v15 = [*(a1 + 32) library];
      v16 = *(a1 + 48);
      v17 = [v9 integerValue];
      v18 = [v3 identifier];
      v30 = 0;
      [v15 moveShortcutWithIdentifier:v16 toIndex:v17 + 1 ofCollectionWithIdentifier:v18 error:&v30];
      v14 = v30;
    }

    else
    {
      v14 = 0;
    }

    v25 = *(a1 + 32);
    v26 = objc_alloc(MEMORY[0x1E69E0A68]);
    v24 = [v3 identifier];
    v27 = [v26 initWithIdentifier:v24 objectType:2];
    [v25 addPendingUpdatedDescriptor:v27];
  }

  if (v14)
  {
    v28 = getWFCoherenceLogObject();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v33 = "[WFDatabase(Shortcuts) updateLibraryWithNewWorkflowID:adjacentToExistingWorkflowID:]_block_invoke";
      v34 = 2114;
      v35 = v14;
      _os_log_impl(&dword_1CA256000, v28, OS_LOG_TYPE_ERROR, "%s Failed to move duplicate into all folders or collections containing the original shortcut: %{public}@", buf, 0x16u);
    }
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (id)duplicateReference:(id)a3 newName:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __58__WFDatabase_Shortcuts__duplicateReference_newName_error___block_invoke;
  v14[3] = &unk_1E837ACD0;
  v14[4] = self;
  v15 = v8;
  v16 = v9;
  v10 = v9;
  v11 = v8;
  v12 = [(WFDatabase *)self performSaveOperationWithReason:@"duplicate workflow" block:v14 error:a5];

  return v12;
}

id __58__WFDatabase_Shortcuts__duplicateReference_newName_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = [*(a1 + 32) objectForDescriptor:*(a1 + 40) properties:0];
  v5 = objc_opt_class();
  v6 = v4;
  if (v6 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = getWFGeneralLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      v24 = 136315906;
      v25 = "WFEnforceClass";
      v26 = 2114;
      v27 = v6;
      v28 = 2114;
      v29 = objc_opt_class();
      v30 = 2114;
      v31 = v5;
      v9 = v29;
      _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_FAULT, "%s %@", &v24, 0x2Au);
    }

    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  if (v7)
  {
    v10 = [(WFRecord *)[WFWorkflowRecord alloc] initWithStorage:v7 properties:0];
    v11 = v10;
    if (v10)
    {
      [(WFWorkflowRecord *)v10 setName:*(a1 + 48)];
      v12 = *(a1 + 32);
      v13 = objc_opt_class();
      v14 = [MEMORY[0x1E696AFB0] UUID];
      v15 = [v14 UUIDString];
      v16 = [v12 objectOfClass:v13 withIdentifier:v15 forKey:@"workflowID" createIfNecessary:1 properties:0];

      v17 = *(a1 + 32);
      v18 = [v16 workflowID];
      v19 = [v7 identifier];
      [v17 updateLibraryWithNewWorkflowID:v18 adjacentToExistingWorkflowID:v19];

      v20 = [(WFRecord *)v11 writeToStorage:v16 error:a2];
      v21 = 0;
      if (v20)
      {
        v21 = [v16 descriptor];
      }
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

- (id)_createWorkflowWithOptions:(id)a3 error:(id *)a4
{
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __58__WFDatabase_Shortcuts___createWorkflowWithOptions_error___block_invoke;
  v10[3] = &unk_1E837ACA8;
  v11 = v6;
  v12 = self;
  v7 = v6;
  v8 = [(WFDatabase *)self performSaveOperationWithReason:@"create workflow with options" block:v10 error:a4];

  return v8;
}

id __58__WFDatabase_Shortcuts___createWorkflowWithOptions_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) identifier];
  if (!v4)
  {
    goto LABEL_3;
  }

  v5 = v4;
  v6 = [*(a1 + 32) folderIdentifier];

  if (v6)
  {
    goto LABEL_3;
  }

  v18 = *(a1 + 40);
  v19 = objc_opt_class();
  v20 = [*(a1 + 32) identifier];
  v9 = [v18 objectOfClass:v19 withIdentifier:v20 forKey:@"workflowID" createIfNecessary:0 properties:0];

  if (v9)
  {
    v21 = [*(a1 + 32) record];
    v22 = [v21 writeToStorage:v9 error:a2];

    if (v22)
    {
      [v9 setTombstoned:{objc_msgSend(*(a1 + 32), "deleted")}];
      v23 = [v9 descriptor];
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
LABEL_3:
    v7 = [*(a1 + 32) identifier];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v10 = [MEMORY[0x1E696AFB0] UUID];
      v9 = [v10 UUIDString];
    }

    v11 = [*(a1 + 32) record];
    if ([v11 hiddenFromLibraryAndSync])
    {
    }

    else
    {
      v12 = [*(a1 + 32) deleted];

      if ((v12 & 1) == 0)
      {
        v13 = [*(a1 + 32) folderIdentifier];
        v14 = v13;
        v15 = @"Root";
        if (v13)
        {
          v15 = v13;
        }

        v16 = v15;

        if ([*(a1 + 32) location] == 0x7FFFFFFFFFFFFFFFLL)
        {
          v17 = 0;
        }

        else
        {
          v17 = [*(a1 + 32) location];
        }

        v24 = [*(a1 + 40) library];
        [v24 insertShortcutWithIdentifier:v9 atIndex:v17 toCollection:v16 error:a2];

        v25 = *(a1 + 40);
        v26 = [objc_alloc(MEMORY[0x1E69E0A68]) initWithIdentifier:v16 objectType:2];

        [v25 addPendingUpdatedDescriptor:v26];
        [*(a1 + 40) libraryDidChange];
      }
    }

    v27 = [*(a1 + 40) objectOfClass:objc_opt_class() withIdentifier:v9 forKey:@"workflowID" createIfNecessary:1 properties:0];
    v28 = [*(a1 + 32) record];
    v29 = [v28 writeToStorage:v27 error:a2];

    v23 = 0;
    if (v29)
    {
      [v27 setTombstoned:{objc_msgSend(*(a1 + 32), "deleted")}];
      v23 = [v27 descriptor];
    }
  }

  return v23;
}

- (id)suggestedWorkflowNameForName:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"WFDatabase+Shortcuts.m" lineNumber:710 description:{@"Invalid parameter not satisfying: %@", @"name"}];
  }

  v6 = [v5 componentsSeparatedByString:@" "];
  v7 = [v6 lastObject];
  v8 = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
  v9 = [v8 invertedSet];
  v10 = [v7 rangeOfCharacterFromSet:v9];

  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [v6 lastObject];
    v12 = [v11 integerValue];

    v13 = [v6 subarrayWithRange:{0, objc_msgSend(v6, "count") - 1}];

    v6 = v13;
  }

  else
  {
    v12 = 1;
  }

  v14 = v5;
  v20 = v14;
  if ([(WFDatabase *)self hasVisibleWorkflowsWithName:v14])
  {
    v15 = v14;
    do
    {
      v16 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:@"%lu", v12];
      v17 = [v6 arrayByAddingObject:v16];
      v14 = [v17 componentsJoinedByString:@" "];

      ++v12;
      v15 = v14;
    }

    while ([(WFDatabase *)self hasVisibleWorkflowsWithName:v14]);
  }

  return v14;
}

- (id)applyConflictResolution:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "[WFDatabase(Shortcuts) applyConflictResolution:]";
    *&buf[12] = 2112;
    *&buf[14] = v4;
    _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_INFO, "%s applying conflict resolution: %@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v15 = __Block_byref_object_copy__46885;
  v16 = __Block_byref_object_dispose__46886;
  v17 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __49__WFDatabase_Shortcuts__applyConflictResolution___block_invoke;
  v10[3] = &unk_1E837AC80;
  v6 = v4;
  v11 = v6;
  v12 = self;
  v13 = buf;
  [(WFDatabase *)self performTransactionWithReason:@"conflict resolution" block:v10 error:0];
  v7 = *(*&buf[8] + 40);

  _Block_object_dispose(buf, 8);
  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

void __49__WFDatabase_Shortcuts__applyConflictResolution___block_invoke(uint64_t a1)
{
  v63 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) localWorkflowID];
  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = objc_alloc(MEMORY[0x1E69E0A68]);
    v5 = [*(a1 + 32) localWorkflowID];
    v6 = [v4 initWithIdentifier:v5 objectType:0];
    v7 = [v3 objectForDescriptor:v6 properties:0];
  }

  else
  {
    v7 = 0;
  }

  v8 = [*(a1 + 32) remoteWorkflowID];
  if (v8)
  {
    v9 = *(a1 + 40);
    v10 = objc_alloc(MEMORY[0x1E69E0A68]);
    v11 = [*(a1 + 32) remoteWorkflowID];
    v12 = [v10 initWithIdentifier:v11 objectType:0];
    v13 = [v9 objectForDescriptor:v12 properties:0];
  }

  else
  {
    v13 = 0;
  }

  if (!v7)
  {
    v14 = 0;
    if (v13)
    {
      goto LABEL_9;
    }

LABEL_11:
    v15 = 0;
    goto LABEL_12;
  }

  v14 = [v7 tombstoned] ^ 1;
  if (!v13)
  {
    goto LABEL_11;
  }

LABEL_9:
  v15 = [v13 tombstoned] ^ 1;
LABEL_12:
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __49__WFDatabase_Shortcuts__applyConflictResolution___block_invoke_2;
  aBlock[3] = &unk_1E837AC30;
  v59 = v15;
  v60 = v14;
  v16 = v7;
  v17 = *(a1 + 40);
  v55 = v16;
  v56 = v17;
  v18 = v13;
  v19 = *(a1 + 48);
  v57 = v18;
  v58 = v19;
  v20 = _Block_copy(aBlock);
  v45 = MEMORY[0x1E69E9820];
  v46 = 3221225472;
  v47 = __49__WFDatabase_Shortcuts__applyConflictResolution___block_invoke_295;
  v48 = &unk_1E837AC58;
  v53 = v14;
  v21 = v16;
  v22 = *(a1 + 40);
  v49 = v21;
  v50 = v22;
  v23 = v18;
  v24 = *(a1 + 48);
  v51 = v23;
  v52 = v24;
  v25 = _Block_copy(&v45);
  if (![*(a1 + 32) keepLocal] || !objc_msgSend(*(a1 + 32), "keepRemote"))
  {
    if (![*(a1 + 32) keepRemote])
    {
      if (![*(a1 + 32) keepLocal])
      {
        goto LABEL_23;
      }

LABEL_22:
      v25[2](v25);
      goto LABEL_23;
    }

LABEL_20:
    v20[2](v20);
    goto LABEL_23;
  }

  v26 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v62 = "[WFDatabase(Shortcuts) applyConflictResolution:]_block_invoke";
    _os_log_impl(&dword_1CA256000, v26, OS_LOG_TYPE_INFO, "%s Conflict resolution: keeping both local and remote change", buf, 0xCu);
  }

  if ((v14 & 1) == 0)
  {
    goto LABEL_20;
  }

  if ((v15 & 1) == 0)
  {
    goto LABEL_22;
  }

  [v23 setConflictOf:0];
  [v23 setLastSyncedHash:0];
  v27 = *(a1 + 40);
  v28 = [v23 name];
  v29 = [v27 suggestedWorkflowNameForName:v28];
  [v23 setName:v29];

  v30 = *(a1 + 40);
  v31 = objc_alloc(MEMORY[0x1E69E0A68]);
  v32 = [v23 workflowID];
  v33 = [v31 initWithIdentifier:v32 objectType:0];
  [v30 addPendingUpdatedDescriptor:v33];

  [v21 setLastSyncedHash:0];
  v34 = *(a1 + 40);
  v35 = objc_alloc(MEMORY[0x1E69E0A68]);
  v36 = [v21 workflowID];
  v37 = [v35 initWithIdentifier:v36 objectType:0];
  [v34 addPendingUpdatedDescriptor:v37];

  v38 = *(a1 + 40);
  v39 = [v23 workflowID];
  v40 = [v21 workflowID];
  [v38 updateLibraryWithNewWorkflowID:v39 adjacentToExistingWorkflowID:v40];

  v41 = [v21 descriptor];
  v42 = *(*(a1 + 48) + 8);
  v43 = *(v42 + 40);
  *(v42 + 40) = v41;

LABEL_23:
  v44 = *MEMORY[0x1E69E9840];
}

void __49__WFDatabase_Shortcuts__applyConflictResolution___block_invoke_2(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v24 = "[WFDatabase(Shortcuts) applyConflictResolution:]_block_invoke_2";
    _os_log_impl(&dword_1CA256000, v2, OS_LOG_TYPE_INFO, "%s Conflict resolution: keeping remote change", buf, 0xCu);
  }

  if (*(a1 + 64) == 1)
  {
    v3 = *(a1 + 65);
    v4 = getWFCloudKitSyncLogObject();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
    if (v3)
    {
      if (v5)
      {
        *buf = 136315138;
        v24 = "[WFDatabase(Shortcuts) applyConflictResolution:]_block_invoke";
        _os_log_impl(&dword_1CA256000, v4, OS_LOG_TYPE_INFO, "%s Conflict being resolved is 'local changed - remote changed'", buf, 0xCu);
      }

      v6 = [(WFRecord *)[WFWorkflowRecord alloc] initWithStorage:*(a1 + 48)];
      v7 = *(a1 + 32);
      v22 = 0;
      v8 = [(WFRecord *)v6 writeToStorage:v7 error:&v22];
      v9 = v22;
      if (!v8)
      {
        v10 = getWFCloudKitSyncLogObject();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v24 = "[WFDatabase(Shortcuts) applyConflictResolution:]_block_invoke";
          v25 = 2114;
          v26 = v9;
          _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_ERROR, "%s Failed to save remoteWorkflow into localWorkflowReference: %{public}@", buf, 0x16u);
        }
      }

      [*(a1 + 40) _deleteWorkflow:*(a1 + 48) deleteConflict:0];
      v11 = [*(a1 + 32) descriptor];
      v12 = *(*(a1 + 56) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;
    }

    else
    {
      if (v5)
      {
        *buf = 136315138;
        v24 = "[WFDatabase(Shortcuts) applyConflictResolution:]_block_invoke";
        _os_log_impl(&dword_1CA256000, v4, OS_LOG_TYPE_INFO, "%s Conflict being resolved is 'local deleted - remote changed'", buf, 0xCu);
      }

      v17 = *(a1 + 32);
      if (v17)
      {
        [*(a1 + 40) _deleteWorkflow:v17 deleteConflict:0];
      }

      [*(a1 + 48) setLastSyncedHash:0];
      v18 = [*(a1 + 48) descriptor];
      v19 = *(*(a1 + 56) + 8);
      v20 = *(v19 + 40);
      *(v19 + 40) = v18;
    }
  }

  else
  {
    v14 = getWFCloudKitSyncLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v24 = "[WFDatabase(Shortcuts) applyConflictResolution:]_block_invoke";
      _os_log_impl(&dword_1CA256000, v14, OS_LOG_TYPE_INFO, "%s Conflict being resolved is 'local changed - remote deleted'", buf, 0xCu);
    }

    v15 = *(a1 + 32);
    if (v15)
    {
      [*(a1 + 40) _deleteWorkflow:v15 deleteConflict:0];
    }

    v16 = *(a1 + 48);
    if (v16)
    {
      [*(a1 + 40) _deleteWorkflow:v16 deleteConflict:0];
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

void __49__WFDatabase_Shortcuts__applyConflictResolution___block_invoke_295(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v19 = 136315138;
    v20 = "[WFDatabase(Shortcuts) applyConflictResolution:]_block_invoke";
    _os_log_impl(&dword_1CA256000, v2, OS_LOG_TYPE_INFO, "%s Conflict resolution: keeping local change", &v19, 0xCu);
  }

  v3 = *(a1 + 64);
  v4 = getWFCloudKitSyncLogObject();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v5)
    {
      v19 = 136315138;
      v20 = "[WFDatabase(Shortcuts) applyConflictResolution:]_block_invoke";
      _os_log_impl(&dword_1CA256000, v4, OS_LOG_TYPE_INFO, "%s Conflict being resolved is 'local changed - remote changed or deleted'", &v19, 0xCu);
    }

    v6 = *(a1 + 48);
    if (v6)
    {
      [*(a1 + 40) _deleteWorkflow:v6 deleteConflict:0];
    }

    [*(a1 + 32) setLastSyncedHash:0];
    v7 = *(a1 + 40);
    v8 = objc_alloc(MEMORY[0x1E69E0A68]);
    v9 = [*(a1 + 32) workflowID];
    v10 = [v8 initWithIdentifier:v9 objectType:0];
    [v7 addPendingUpdatedDescriptor:v10];

    v11 = [*(a1 + 32) descriptor];
    v12 = *(*(a1 + 56) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  else
  {
    if (v5)
    {
      v19 = 136315138;
      v20 = "[WFDatabase(Shortcuts) applyConflictResolution:]_block_invoke";
      _os_log_impl(&dword_1CA256000, v4, OS_LOG_TYPE_INFO, "%s Conflict being resolved is 'local deleted - remote changed'", &v19, 0xCu);
    }

    v14 = *(a1 + 32);
    if (v14)
    {
      [*(a1 + 40) _deleteWorkflow:v14 deleteConflict:0];
    }

    [*(a1 + 48) setTombstoned:1];
    [*(a1 + 48) setLastSyncedHash:0];
    [*(a1 + 48) setSyncHash:{objc_msgSend(*(a1 + 48), "computedSyncHash")}];
    v15 = *(a1 + 40);
    v16 = objc_alloc(MEMORY[0x1E69E0A68]);
    v13 = [*(a1 + 48) workflowID];
    v17 = [v16 initWithIdentifier:v13 objectType:0];
    [v15 addPendingUpdatedDescriptor:v17];
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (BOOL)hasConflictingReferenceForWorkflowID:(id)a3
{
  v4 = a3;
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __62__WFDatabase_Shortcuts__hasConflictingReferenceForWorkflowID___block_invoke;
  v12 = &unk_1E837F900;
  v13 = self;
  v14 = v4;
  v5 = v4;
  v6 = [(WFDatabase *)self performOperationWithReason:@"getting conflict status for shortcut" block:&v9 error:0];
  v7 = [v6 BOOLValue];

  return v7;
}

id __62__WFDatabase_Shortcuts__hasConflictingReferenceForWorkflowID___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) objectOfClass:objc_opt_class() withIdentifier:*(a1 + 40) forKey:@"workflowID" createIfNecessary:0 properties:0];
  v2 = MEMORY[0x1E696AD98];
  v3 = [v1 conflictOf];
  if (v3)
  {
    v4 = [v2 numberWithBool:1];
  }

  else
  {
    v5 = [v1 conflicts];
    v6 = [v5 anyObject];
    v4 = [v2 numberWithBool:v6 != 0];
  }

  return v4;
}

- (id)conflictingReferenceForWorkflowID:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__WFDatabase_Shortcuts__conflictingReferenceForWorkflowID___block_invoke;
  v8[3] = &unk_1E837AC08;
  v8[4] = self;
  v9 = v4;
  v5 = v4;
  v6 = [(WFDatabase *)self performOperationWithReason:@"getting conflicts for shortcut" block:v8 error:0];

  return v6;
}

id __59__WFDatabase_Shortcuts__conflictingReferenceForWorkflowID___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) objectOfClass:objc_opt_class() withIdentifier:*(a1 + 40) forKey:@"workflowID" createIfNecessary:0 properties:0];
  v2 = [v1 conflictOf];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 descriptor];
  }

  else
  {
    v5 = [v1 conflicts];
    v6 = [v5 anyObject];
    v4 = [v6 descriptor];
  }

  return v4;
}

- (void)_deleteWorkflow:(id)a3 deleteConflict:(BOOL)a4
{
  v4 = a4;
  v30 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (!v7)
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"WFDatabase+Shortcuts.m" lineNumber:553 description:{@"Invalid parameter not satisfying: %@", @"workflow"}];
  }

  if (v4)
  {
    v8 = [v7 conflictOf];
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v10 = [v7 conflicts];
      v9 = [v10 anyObject];

      if (!v9)
      {
        goto LABEL_8;
      }
    }

    v11 = [(WFDatabase *)self context];
    [v11 deleteObject:v9];

    v12 = objc_alloc(MEMORY[0x1E69E0A68]);
    v13 = [v9 workflowID];
    v14 = [v12 initWithIdentifier:v13 objectType:0];
    [(WFDatabase *)self addPendingDeletedDescriptor:v14];
  }

LABEL_8:
  v15 = [v7 workflowID];
  [(WFDatabase *)self deleteDonationsForShortcutWithIdentifier:v15];
  v25 = 0;
  v16 = [(WFDatabase *)self deleteAllBookmarksForWorkflowID:v15 error:&v25];
  v17 = v25;
  if (!v16)
  {
    v18 = getWFDatabaseLogObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v27 = "[WFDatabase(Shortcuts) _deleteWorkflow:deleteConflict:]";
      v28 = 2114;
      v29 = v17;
      _os_log_impl(&dword_1CA256000, v18, OS_LOG_TYPE_ERROR, "%s Failed to delete bookmarks for workflow: %{public}@", buf, 0x16u);
    }
  }

  v19 = [MEMORY[0x1E695E000] systemShortcutsUserDefaults];
  v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"WFCollapsedActions-%@", v15];
  [v19 removeObjectForKey:v20];

  v21 = [(WFDatabase *)self context];
  [v21 deleteObject:v7];

  v22 = [objc_alloc(MEMORY[0x1E69E0A68]) initWithIdentifier:v15 objectType:0];
  [(WFDatabase *)self addPendingDeletedDescriptor:v22];

  v23 = *MEMORY[0x1E69E9840];
}

- (BOOL)deleteWorkflowRecordWithIdentifier:(id)a3 error:(id *)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E69E0A68];
  v7 = a3;
  v8 = [[v6 alloc] initWithIdentifier:v7 objectType:0];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __66__WFDatabase_Shortcuts__deleteWorkflowRecordWithIdentifier_error___block_invoke;
  v17[3] = &unk_1E837F978;
  v17[4] = self;
  v9 = v8;
  v18 = v9;
  v16 = 0;
  [(WFDatabase *)self performTransactionWithReason:@"delete workflow record" block:v17 error:&v16];
  v10 = v16;
  if (v10)
  {
    v11 = getWFDatabaseLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [v10 localizedDescription];
      *buf = 136315394;
      v20 = "[WFDatabase(Shortcuts) deleteWorkflowRecordWithIdentifier:error:]";
      v21 = 2114;
      v22 = v12;
      _os_log_impl(&dword_1CA256000, v11, OS_LOG_TYPE_ERROR, "%s Failed to delete workflow record: %{public}@", buf, 0x16u);
    }

    v13 = v10;
    *a4 = v10;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v10 == 0;
}

void __66__WFDatabase_Shortcuts__deleteWorkflowRecordWithIdentifier_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForDescriptor:*(a1 + 40) properties:0];
  if (v2)
  {
    v3 = v2;
    [*(a1 + 32) _deleteWorkflow:v2 deleteConflict:1];
    v2 = v3;
  }
}

- (BOOL)deleteReference:(id)a3 tombstone:(BOOL)a4 error:(id *)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [v8 identifier];

  if (v9)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __57__WFDatabase_Shortcuts__deleteReference_tombstone_error___block_invoke;
    v18[3] = &unk_1E837DDE8;
    v19 = v8;
    v20 = self;
    v21 = a4;
    v17 = 0;
    [(WFDatabase *)self performTransactionWithReason:@"delete reference" block:v18 error:&v17];
    v10 = v17;
    v11 = v10 == 0;
    if (v10)
    {
      v12 = getWFDatabaseLogObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = [v10 localizedDescription];
        *buf = 136315394;
        v23 = "[WFDatabase(Shortcuts) deleteReference:tombstone:error:]";
        v24 = 2114;
        v25 = v13;
        _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_ERROR, "%s Failed to delete reference: %{public}@", buf, 0x16u);
      }

      v14 = v10;
      *a5 = v10;
    }
  }

  else
  {
    v10 = getWFDatabaseLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v23 = "[WFDatabase(Shortcuts) deleteReference:tombstone:error:]";
      _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_ERROR, "%s Unable to delete reference because identifier is invalid", buf, 0xCu);
    }

    v11 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v11;
}

void __57__WFDatabase_Shortcuts__deleteReference_tombstone_error___block_invoke(uint64_t a1, void *a2)
{
  v44 = *MEMORY[0x1E69E9840];
  if (![*(a1 + 32) objectType])
  {
    v8 = getWFCoherenceLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = [*(a1 + 32) identifier];
      *buf = 136315394;
      v41 = "[WFDatabase(Shortcuts) deleteReference:tombstone:error:]_block_invoke";
      v42 = 2114;
      v43 = v9;
      _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_DEBUG, "%s Delete shortcut with id %{public}@", buf, 0x16u);
    }

    v10 = [*(a1 + 40) managedObjectForDescriptor:*(a1 + 32) properties:0 createIfNecessary:0];
    v11 = v10;
    if (v10)
    {
      if (([v10 hiddenFromLibraryAndSync] & 1) == 0)
      {
        v12 = [*(a1 + 40) library];
        v13 = [*(a1 + 32) identifier];
        v14 = [v12 collectionsAndFoldersContainingShortcut:v13 error:0];

        v15 = [*(a1 + 40) library];
        v16 = [*(a1 + 32) identifier];
        v39 = 0;
        v17 = [v15 removeShortcutWithIdentifier:v16 error:&v39];
        v18 = v39;

        if (v17)
        {
          [*(a1 + 40) libraryDidChange];
        }

        else if (*(a1 + 48))
        {
          v29 = v18;
          *a2 = v18;

          goto LABEL_35;
        }

        v38[0] = MEMORY[0x1E69E9820];
        v38[1] = 3221225472;
        v38[2] = __57__WFDatabase_Shortcuts__deleteReference_tombstone_error___block_invoke_271;
        v38[3] = &unk_1E837ABE0;
        v38[4] = *(a1 + 40);
        [v14 enumerateObjectsUsingBlock:v38];
      }

      if (*(a1 + 48) == 1)
      {
        [v11 setTombstoned:1];
        [v11 setSyncHash:{objc_msgSend(v11, "computedSyncHash")}];
        [*(a1 + 40) addPendingUpdatedDescriptor:*(a1 + 32)];
      }

      else
      {
        [*(a1 + 40) _deleteWorkflow:v11 deleteConflict:1];
      }
    }

LABEL_27:

    goto LABEL_28;
  }

  if ([*(a1 + 32) objectType] != 2)
  {
    v11 = [*(a1 + 40) managedObjectForDescriptor:*(a1 + 32) properties:0 createIfNecessary:0];
    v19 = *(a1 + 40);
    if (!v11)
    {
      v7 = [v19 missingErrorForDescriptor:*(a1 + 32)];
      goto LABEL_18;
    }

    v20 = [v19 context];
    [v20 deleteObject:v11];

    [*(a1 + 40) addPendingDeletedDescriptor:*(a1 + 32)];
    goto LABEL_27;
  }

  v4 = WFGetBuiltInCollectionIdentifiers(1);
  v5 = [*(a1 + 32) identifier];
  v6 = [v4 containsObject:v5];

  if (v6)
  {
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WFDatabaseErrorDomain" code:5 userInfo:0];
LABEL_18:
    *a2 = v7;
    goto LABEL_35;
  }

  v21 = [*(a1 + 40) library];
  v22 = [*(a1 + 32) identifier];
  [v21 deleteFolderWithIdentifier:v22];

  [*(a1 + 40) libraryDidChange];
  v23 = *(a1 + 40);
  v24 = [objc_alloc(MEMORY[0x1E69E0A68]) initWithIdentifier:@"Root" objectType:2];
  [v23 addPendingUpdatedDescriptor:v24];

  v25 = [*(a1 + 40) managedObjectForDescriptor:*(a1 + 32) properties:0 createIfNecessary:1];
  if (*(a1 + 48) == 1)
  {
    v26 = getWFDatabaseLogObject();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      v27 = [*(a1 + 32) identifier];
      *buf = 136315394;
      v41 = "[WFDatabase(Shortcuts) deleteReference:tombstone:error:]_block_invoke_2";
      v42 = 2114;
      v43 = v27;
      _os_log_impl(&dword_1CA256000, v26, OS_LOG_TYPE_DEBUG, "%s Tombstone folder with id %{public}@", buf, 0x16u);
    }

    [v25 setTombstoned:1];
    [*(a1 + 40) addPendingUpdatedDescriptor:*(a1 + 32)];
  }

  else
  {
    v28 = [*(a1 + 40) context];
    [v28 deleteObject:v25];

    [*(a1 + 40) addPendingDeletedDescriptor:*(a1 + 32)];
  }

LABEL_28:
  if ([*(a1 + 32) objectType] == 1 && (objc_msgSend(*(a1 + 40), "mergeAutomationsAndShortcuts") & 1) == 0)
  {
    v30 = [*(a1 + 40) managedObjectForDescriptor:*(a1 + 32) properties:0 createIfNecessary:0];
    v31 = [v30 shortcut];
    v32 = v31;
    if (v31)
    {
      if ([v31 hiddenFromLibraryAndSync])
      {
        v33 = *(a1 + 40);
        v34 = [v32 identifier];
        v35 = [v33 configuredTriggersForWorkflowID:v34];
        v36 = [v35 count];

        if (!v36)
        {
          [*(a1 + 40) _deleteWorkflow:v32 deleteConflict:1];
        }
      }
    }
  }

LABEL_35:
  v37 = *MEMORY[0x1E69E9840];
}

void __57__WFDatabase_Shortcuts__deleteReference_tombstone_error___block_invoke_271(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x1E69E0A68];
  v4 = a2;
  v5 = [v3 alloc];
  v7 = [v4 identifier];

  v6 = [v5 initWithIdentifier:v7 objectType:2];
  [v2 addPendingUpdatedDescriptor:v6];
}

- (BOOL)deleteReference:(id)a3 error:(id *)a4
{
  v6 = a3;
  LOBYTE(a4) = [(WFDatabase *)self deleteReference:v6 tombstone:+[WFCloudKitSyncSession error:"isSyncEnabled"], a4];

  return a4;
}

- (id)renameReference:(id)a3 to:(id)a4 error:(id *)a5
{
  v46 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  if (!v9)
  {
    v26 = a5;
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    [v27 handleFailureInMethod:a2 object:self file:@"WFDatabase+Shortcuts.m" lineNumber:366 description:{@"Invalid parameter not satisfying: %@", @"reference"}];

    a5 = v26;
  }

  v28 = a5;
  v29 = self;
  v30 = [(WFDatabase *)self validateWorkflowName:v10 forCreation:0 overwriting:0 error:a5];

  v11 = v30;
  if (v30)
  {
    v12 = [(WFDatabase *)self visibleReferencesForWorkflowName:?];
    v13 = objc_opt_new();
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v14 = v12;
    v15 = [v14 countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v15)
    {
      v16 = *v42;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v42 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = *(*(&v41 + 1) + 8 * i);
          v19 = [v18 identifier];
          v20 = [v9 identifier];
          v21 = [v19 isEqualToString:v20];

          if (v21)
          {
            v22 = v9;

            goto LABEL_16;
          }

          [v13 addObject:v18];
        }

        v15 = [v14 countByEnumeratingWithState:&v41 objects:v45 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    if ([v13 count])
    {
      if (v28)
      {
        [(WFDatabase *)v29 duplicateNameErrorWithName:v30];
        *v28 = v22 = 0;
      }

      else
      {
        v22 = 0;
      }
    }

    else
    {
      v35 = 0;
      v36 = &v35;
      v37 = 0x3032000000;
      v38 = __Block_byref_object_copy__46885;
      v39 = __Block_byref_object_dispose__46886;
      v40 = 0;
      v25 = objc_opt_new();
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __50__WFDatabase_Shortcuts__renameReference_to_error___block_invoke;
      v31[3] = &unk_1E837ABB8;
      v33 = v29;
      v34 = &v35;
      v32 = v30;
      [(WFDatabase *)v29 accessStorageForDescriptor:v9 forWriting:1 readingRecordProperties:v25 usingBlock:v31 withError:v28];

      v22 = v36[5];
      _Block_object_dispose(&v35, 8);
    }

LABEL_16:

    v11 = v30;
  }

  else
  {
    v22 = 0;
  }

  v23 = *MEMORY[0x1E69E9840];

  return v22;
}

void __50__WFDatabase_Shortcuts__renameReference_to_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (v5)
  {
    v12 = v5;
    v6 = [WFWorkflowRecord alloc];
    v7 = objc_opt_new();
    v8 = [(WFRecord *)v6 initWithStorage:v12 properties:v7];

    if (v8)
    {
      [(WFWorkflowRecord *)v8 setName:*(a1 + 32)];
      if ([(WFWorkflowRecord *)v8 saveChangesToStorage:v12 error:a3])
      {
        v9 = [v12 descriptor];
        v10 = *(*(a1 + 48) + 8);
        v11 = *(v10 + 40);
        *(v10 + 40) = v9;

        [*(a1 + 40) addPendingUpdatedDescriptor:*(*(*(a1 + 48) + 8) + 40)];
      }
    }

    v5 = v12;
  }
}

- (id)duplicateReference:(id)a3 error:(id *)a4
{
  v7 = a3;
  if (!v7)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"WFDatabase+Shortcuts.m" lineNumber:359 description:{@"Invalid parameter not satisfying: %@", @"reference"}];
  }

  v8 = [v7 name];
  v9 = [(WFDatabase *)self suggestedWorkflowNameForName:v8];

  v10 = [(WFDatabase *)self duplicateReference:v7 newName:v9 error:a4];

  return v10;
}

- (id)createWorkflowWithOptions:(id)a3 nameCollisionBehavior:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__46885;
  v21 = __Block_byref_object_dispose__46886;
  v22 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __79__WFDatabase_Shortcuts__createWorkflowWithOptions_nameCollisionBehavior_error___block_invoke;
  v12[3] = &unk_1E837AB90;
  v9 = v8;
  v13 = v9;
  v14 = self;
  v15 = &v17;
  v16 = a4;
  [(WFDatabase *)self performTransactionWithReason:@"create shortcut" block:v12 error:a5];
  v10 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v10;
}

void __79__WFDatabase_Shortcuts__createWorkflowWithOptions_nameCollisionBehavior_error___block_invoke(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = [*(a1 + 32) record];
  v5 = [v4 name];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = +[WFWorkflow defaultName];
  }

  v8 = v7;

  v9 = [*(a1 + 40) validateWorkflowName:v8 forCreation:1 overwriting:*(a1 + 56) == 1 error:a2];

  if (v9)
  {
    v10 = *(a1 + 56);
    if (v10 != 2)
    {
      if (v10 == 1)
      {
        v12 = [*(a1 + 40) visibleReferencesForWorkflowName:v9];
        if ([v12 count] < 2)
        {
          v13 = [v12 firstObject];
          if (v13)
          {
            v18 = [*(a1 + 32) identifier];
            if (!v18)
            {
              goto LABEL_24;
            }

            v19 = v18;
            v20 = [*(a1 + 32) identifier];
            v21 = [v13 identifier];
            v22 = [v20 isEqualToString:v21];

            if ((v22 & 1) == 0)
            {
              v29 = *(a1 + 40);
              v30 = [*(a1 + 32) identifier];
              v23 = [v29 referenceForWorkflowID:v30];

              if (v23 && ([*(a1 + 40) deleteReference:v13 tombstone:0 error:a2] & 1) == 0)
              {

                goto LABEL_28;
              }
            }

            else
            {
LABEL_24:
              v23 = [v13 identifier];
              [*(a1 + 32) setIdentifier:v23];
            }
          }
        }

        else
        {
          v33 = 0u;
          v34 = 0u;
          v31 = 0u;
          v32 = 0u;
          v13 = v12;
          v14 = [v13 countByEnumeratingWithState:&v31 objects:v35 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v32;
            do
            {
              for (i = 0; i != v15; ++i)
              {
                if (*v32 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                [*(a1 + 40) deleteReference:*(*(&v31 + 1) + 8 * i) tombstone:0 error:{a2, v31}];
              }

              v15 = [v13 countByEnumeratingWithState:&v31 objects:v35 count:16];
            }

            while (v15);
          }
        }
      }

      else if (!v10)
      {
        v11 = [*(a1 + 40) suggestedWorkflowNameForName:v9];

        v9 = v11;
      }

      goto LABEL_27;
    }

    if (![*(a1 + 40) hasVisibleWorkflowsWithName:v9])
    {
LABEL_27:
      v24 = [*(a1 + 32) record];
      [v24 setName:v9];

      v25 = [*(a1 + 40) _createWorkflowWithOptions:*(a1 + 32) error:a2];
      v26 = *(*(a1 + 48) + 8);
      v27 = *(v26 + 40);
      *(v26 + 40) = v25;

      goto LABEL_28;
    }

    if (a2)
    {
      *a2 = [*(a1 + 40) duplicateNameErrorWithName:v9];
    }
  }

LABEL_28:

  v28 = *MEMORY[0x1E69E9840];
}

- (id)createWorkflowWithError:(id *)a3
{
  v5 = objc_opt_new();
  v6 = [(WFDatabase *)self createWorkflowWithOptions:v5 nameCollisionBehavior:0 error:a3];

  return v6;
}

- (BOOL)hasConflictWithName:(id)a3
{
  v4 = a3;
  v5 = +[WFHomeManager cachedHomeSceneNames];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __45__WFDatabase_Shortcuts__hasConflictWithName___block_invoke;
  v10[3] = &unk_1E837AB68;
  v6 = v4;
  v11 = v6;
  v7 = [v5 if_firstObjectPassingTest:v10];

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = [(WFDatabase *)self hasVisibleWorkflowsWithName:v6];
  }

  return v8;
}

- (BOOL)hasVisibleWorkflowsWithName:(id)a3
{
  v3 = [(WFDatabase *)self visibleReferencesForWorkflowName:a3];
  v4 = [v3 count] != 0;

  return v4;
}

- (id)uniqueVisibleReferenceForWorkflowName:(id)a3
{
  v3 = [(WFDatabase *)self visibleReferencesForWorkflowName:a3];
  if ([v3 count] == 1)
  {
    v4 = [v3 firstObject];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)visibleReferencesForWorkflowIDs:(id)a3 sortBy:(unint64_t)a4 nameContaining:(id)a5 nameEqualing:(id)a6 hasAssociatedAppBundleIdentifier:(BOOL)a7 associatedAppBundleIdentifier:(id)a8 isRecentlyModified:(BOOL)a9 isRecentlyRun:(BOOL)a10 limitTo:(unint64_t)a11
{
  v27 = a7;
  v15 = MEMORY[0x1E695DFD8];
  v16 = MEMORY[0x1E696AD98];
  v17 = a8;
  v18 = a6;
  v19 = a5;
  v20 = a3;
  v21 = [v16 numberWithUnsignedInteger:a4];
  v22 = [v15 setWithObject:v21];
  LOWORD(v25) = __PAIR16__(a10, a9);
  v23 = [(WFDatabase *)self visibleReferencesForWorkflowIDs:v20 sortByKeys:v22 nameContaining:v19 nameEqualing:v18 hasAssociatedAppBundleIdentifier:v27 associatedAppBundleIdentifier:v17 isRecentlyModified:v25 isRecentlyRun:a11 limitTo:?];

  return v23;
}

- (id)visibleReferencesForWorkflowIDs:(id)a3 sortByKeys:(id)a4 nameContaining:(id)a5 nameEqualing:(id)a6 hasAssociatedAppBundleIdentifier:(BOOL)a7 associatedAppBundleIdentifier:(id)a8 isRecentlyModified:(BOOL)a9 isRecentlyRun:(BOOL)a10 limitTo:(unint64_t)a11
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a8;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __200__WFDatabase_Shortcuts__visibleReferencesForWorkflowIDs_sortByKeys_nameContaining_nameEqualing_hasAssociatedAppBundleIdentifier_associatedAppBundleIdentifier_isRecentlyModified_isRecentlyRun_limitTo___block_invoke;
  v29[3] = &unk_1E837AB40;
  v30 = v17;
  v31 = self;
  v32 = v19;
  v33 = v20;
  v37 = a7;
  v38 = a9;
  v39 = a10;
  v34 = v21;
  v35 = v18;
  v36 = a11;
  v22 = v18;
  v23 = v21;
  v24 = v20;
  v25 = v19;
  v26 = v17;
  v27 = [(WFDatabase *)self performOperationWithReason:@"getting visible references for workflow ids" block:v29 error:0];

  return v27;
}

id __200__WFDatabase_Shortcuts__visibleReferencesForWorkflowIDs_sortByKeys_nameContaining_nameEqualing_hasAssociatedAppBundleIdentifier_associatedAppBundleIdentifier_isRecentlyModified_isRecentlyRun_limitTo___block_invoke(uint64_t a1)
{
  v2 = +[WFCoreDataWorkflow descriptorFetchRequest];
  v3 = objc_opt_new();
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"workflowID", v4];
    [v3 addObject:v5];
  }

  v6 = [*(a1 + 40) visiblePredicate];
  [v3 addObject:v6];

  v7 = *(a1 + 48);
  if (v7)
  {
    v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K CONTAINS[cd] %@", @"name", v7];
    [v3 addObject:v8];
  }

  v9 = *(a1 + 56);
  if (v9)
  {
    v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == [c] %@", @"name", v9];
    [v3 addObject:v10];
  }

  if (*(a1 + 88) == 1)
  {
    v11 = *(a1 + 64);
    if (v11)
    {
      [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"associatedAppBundleIdentifier", v11];
    }

    else
    {
      [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != nil", @"associatedAppBundleIdentifier", v29];
    }
    v12 = ;
    [v3 addObject:v12];
  }

  if (*(a1 + 89) == 1)
  {
    v13 = [MEMORY[0x1E695DEE8] currentCalendar];
    v14 = [MEMORY[0x1E695DF00] date];
    v15 = [v13 dateByAddingUnit:16 value:-30 toDate:v14 options:0];

    v16 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K >= %@", @"modificationDate", v15];
    [v3 addObject:v16];
  }

  if (*(a1 + 90) == 1)
  {
    v17 = [MEMORY[0x1E695DEE8] currentCalendar];
    v18 = [MEMORY[0x1E695DF00] date];
    v19 = [v17 dateByAddingUnit:16 value:-30 toDate:v18 options:0];

    v20 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY runEvents.date >= %@", v19];
    [v3 addObject:v20];
  }

  v21 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v3];
  [v2 setPredicate:v21];

  v22 = objc_opt_new();
  if ([*(a1 + 72) containsObject:&unk_1F4A9A828])
  {
    v23 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"name" ascending:1];
    [v22 addObject:v23];
  }

  if ([*(a1 + 72) containsObject:&unk_1F4A9A840])
  {
    v24 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"workflowID" ascending:1];
    [v22 addObject:v24];
  }

  if ([*(a1 + 72) containsObject:&unk_1F4A9A858])
  {
    v25 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"lastRunEventDate" ascending:0];
    [v22 addObject:v25];
  }

  if ([*(a1 + 72) containsObject:&unk_1F4A9A870])
  {
    v26 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"modificationDate" ascending:0];
    [v22 addObject:v26];
  }

  [v2 setSortDescriptors:v22];
  if (*(a1 + 80))
  {
    [v2 setFetchLimit:?];
  }

  v27 = [*(a1 + 40) workflowResultWithFetchRequest:v2];

  return v27;
}

- (id)referenceForWorkflowID:(id)a3 includingTombstones:(BOOL)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (!v7)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"WFDatabase+Shortcuts.m" lineNumber:135 description:{@"Invalid parameter not satisfying: %@", @"workflowID"}];
  }

  v8 = getWFControlMigrationLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v19 = "[WFDatabase(Shortcuts) referenceForWorkflowID:includingTombstones:]";
    v20 = 2112;
    v21 = v7;
    _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __68__WFDatabase_Shortcuts__referenceForWorkflowID_includingTombstones___block_invoke;
  v14[3] = &unk_1E837AB18;
  v15 = v7;
  v16 = self;
  v17 = a4;
  v9 = v7;
  v10 = [(WFDatabase *)self performOperationWithReason:@"getting shortcut with id" block:v14 error:0];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

id __68__WFDatabase_Shortcuts__referenceForWorkflowID_includingTombstones___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = +[WFCoreDataWorkflow descriptorFetchRequest];
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"workflowID", *(a1 + 32)];
  [v4 setPredicate:v5];

  [v4 setFetchLimit:1];
  v6 = [*(a1 + 40) context];
  v19 = 0;
  v7 = [v6 executeFetchRequest:v4 error:&v19];
  v8 = v19;

  if (!v7)
  {
    v9 = getWFControlMigrationLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      *buf = 136315650;
      v21 = "[WFDatabase(Shortcuts) referenceForWorkflowID:includingTombstones:]_block_invoke";
      v22 = 2112;
      v23 = v10;
      v24 = 2114;
      v25 = v8;
      _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_ERROR, "%s failed to get reference for workflow ID %@ - %{public}@", buf, 0x20u);
    }

    if (a2)
    {
      v11 = v8;
      *a2 = v8;
    }
  }

  v12 = [v7 firstObject];
  v13 = [v12 descriptor];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
    if ((*(a1 + 48) & 1) == 0)
    {
      if ([v13 isDeleted])
      {
        v15 = 0;
      }

      else
      {
        v15 = v14;
      }
    }

    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)shortcutsWithOutOfSyncWalrusStatus
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = +[WFCoreDataWorkflow descriptorFetchRequest];
  v4 = MEMORY[0x1E696AB28];
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(%K != %K) OR (%K == NIL AND %K > 0)", @"wantedEncryptedSchemaVersion", @"lastSyncedEncryptedSchemaVersion", @"lastSyncedEncryptedSchemaVersion", @"wantedEncryptedSchemaVersion"];
  v14[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v7 = [v4 andPredicateWithSubpredicates:v6];
  [v3 setPredicate:v7];

  v8 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"modificationDate" ascending:0];
  v13 = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
  [v3 setSortDescriptors:v9];

  v10 = [(WFDatabase *)self workflowResultWithFetchRequest:v3];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)recentlyRunShortcutsWithLimit:(int64_t)a3
{
  v20[2] = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DEE8] currentCalendar];
  v6 = [MEMORY[0x1E695DF00] date];
  v7 = [v5 dateByAddingUnit:16 value:-30 toDate:v6 options:0];

  v8 = +[WFCoreDataWorkflow descriptorFetchRequest];
  v9 = MEMORY[0x1E696AB28];
  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY runEvents.date >= %@", v7];
  v20[0] = v10;
  v11 = [(WFDatabase *)self visiblePredicate];
  v20[1] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
  v13 = [v9 andPredicateWithSubpredicates:v12];
  [v8 setPredicate:v13];

  v14 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"lastRunEventDate" ascending:0];
  v19 = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
  [v8 setSortDescriptors:v15];

  if ((a3 - 1) <= 0x7FFFFFFFFFFFFFFDLL)
  {
    [v8 setFetchLimit:a3];
  }

  v16 = [(WFDatabase *)self workflowResultWithFetchRequest:v8];

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)recentlyModifiedShortcuts
{
  v18[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DEE8] currentCalendar];
  v4 = [MEMORY[0x1E695DF00] date];
  v5 = [v3 dateByAddingUnit:16 value:-30 toDate:v4 options:0];

  v6 = +[WFCoreDataWorkflow descriptorFetchRequest];
  v7 = MEMORY[0x1E696AB28];
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K >= %@", @"modificationDate", v5];
  v18[0] = v8;
  v9 = [(WFDatabase *)self visiblePredicate];
  v18[1] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v11 = [v7 andPredicateWithSubpredicates:v10];
  [v6 setPredicate:v11];

  v12 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"modificationDate" ascending:0];
  v17 = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
  [v6 setSortDescriptors:v13];

  v14 = [(WFDatabase *)self workflowResultWithFetchRequest:v6];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)visibleReferencesForWorkflowName:(id)a3
{
  v4 = MEMORY[0x1E69E0E18];
  v5 = a3;
  v6 = [[v4 alloc] initWithLocation:0];
  v7 = [WFLibraryWorkflowsQuery sortedWorkflowsWithQuery:v6 sortByName:1 nameEqualing:v5];

  v8 = [(WFDatabase *)self workflowResultWithLibraryQuery:v7];
  v9 = [v8 descriptors];

  return v9;
}

- (id)invisibleWorkflows
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = +[WFCoreDataWorkflow descriptorFetchRequest];
  v4 = MEMORY[0x1E696AB28];
  v5 = [(WFDatabase *)self visiblePredicate];
  v6 = [v4 notPredicateWithSubpredicate:v5];
  [v3 setPredicate:v6];

  v7 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"modificationDate" ascending:0];
  v12[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  [v3 setSortDescriptors:v8];

  v9 = [(WFDatabase *)self workflowResultWithFetchRequest:v3];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)sortedVisibleWorkflowsNameContains:(id)a3 limit:(int64_t)a4
{
  v6 = MEMORY[0x1E69E0E18];
  v7 = a3;
  v8 = [[v6 alloc] initWithLocation:0];
  v9 = [WFLibraryWorkflowsQuery sortedWorkflowsWithQuery:v8 sortByName:1 nameContaining:v7 limit:a4];

  v10 = [(WFDatabase *)self workflowResultWithLibraryQuery:v9];

  return v10;
}

- (id)sortedVisibleWorkflowsWithAssociatedAppBundleIdentifier:(id)a3
{
  v4 = MEMORY[0x1E69E0E18];
  v5 = a3;
  v6 = [[v4 alloc] initWithLocation:0];
  v7 = [WFLibraryWorkflowsQuery sortedWorkflowsWithQuery:v6 sortByName:1 associatedAppBundleIdentifier:v5];

  v8 = [(WFDatabase *)self workflowResultWithLibraryQuery:v7];

  return v8;
}

- (id)sortedVisibleWorkflowsByLastRunOrModificationDateWithLimit:(int64_t)a3
{
  v5 = [objc_alloc(MEMORY[0x1E69E0E18]) initWithLocation:0];
  v6 = [WFLibraryWorkflowsQuery sortedWorkflowsWithQuery:v5 sortByName:0 limit:a3];

  v7 = [(WFDatabase *)self workflowResultWithLibraryQuery:v6];

  return v7;
}

- (id)sortedVisibleWorkflowsByNameWithLimit:(int64_t)a3
{
  v5 = [objc_alloc(MEMORY[0x1E69E0E18]) initWithLocation:0];
  v6 = [WFLibraryWorkflowsQuery sortedWorkflowsWithQuery:v5 sortByName:1 limit:a3];

  v7 = [(WFDatabase *)self workflowResultWithLibraryQuery:v6];

  return v7;
}

- (id)sortedWorkflowsWithQuery:(id)a3
{
  v4 = [WFLibraryWorkflowsQuery sortedWorkflowsWithQuery:a3];
  v5 = [(WFDatabase *)self workflowResultWithLibraryQuery:v4];

  return v5;
}

- (id)sortedVisibleWorkflowsWithType:(id)a3
{
  v4 = MEMORY[0x1E69E0E18];
  v5 = a3;
  v6 = [[v4 alloc] initWithWorkflowType:v5];

  v7 = [(WFDatabase *)self sortedWorkflowsWithQuery:v6];

  return v7;
}

- (unint64_t)countOfAllVisibleWorkflows
{
  v3 = [(WFDatabase *)self sortedVisibleWorkflowsByNameWithLimit:0];
  v4 = [(WFDatabase *)self countForResult:v3];

  return v4;
}

- (id)workflowResultWithFetchRequest:(id)a3
{
  v4 = a3;
  v5 = [WFCoreDataDatabaseResult alloc];
  v6 = [WFCoreDataDatabaseResultFetchRequestOperation alloc];
  v7 = [(WFDatabase *)self workflowRelationshipKeysAffectingDescriptors];
  v8 = [(WFCoreDataDatabaseResultFetchRequestOperation *)v6 initWithFetchRequest:v4 relationshipKeysAffectingDescriptors:v7];

  v9 = [(WFCoreDataDatabaseResult *)v5 initWithDatabase:self fetchOperation:v8];

  return v9;
}

- (id)workflowResultWithLibraryQuery:(id)a3
{
  v4 = a3;
  v5 = [[WFCoherenceDatabaseWorkflowsResult alloc] initWithDatabase:self libraryQuery:v4];

  return v5;
}

- (id)allConfiguredTriggersNeedingRunningNotifications
{
  v16[3] = *MEMORY[0x1E69E9840];
  v3 = +[WFCoreDataTrigger fetchRequest];
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K < %i", @"notificationLevel", 3];
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = NO", @"shouldNotify"];
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = NO", @"shouldPrompt"];
  v7 = MEMORY[0x1E696AB28];
  v16[0] = v4;
  v16[1] = v5;
  v16[2] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:3];
  v9 = [v7 andPredicateWithSubpredicates:v8];
  [v3 setPredicate:v9];

  v10 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"identifier" ascending:1];
  v15 = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
  [v3 setSortDescriptors:v11];

  v12 = [(WFDatabase *)self triggerResultWithFetchRequest:v3];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)triggerEventsForTriggerIdentifier:(id)a3
{
  v4 = a3;
  v5 = +[WFCoreDataTriggerEvent fetchRequest];
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"trigger.identifier == %@", v4];

  [v5 setPredicate:v6];
  [v5 setFetchLimit:5];
  v7 = [WFCoreDataDatabaseResult alloc];
  v8 = [MEMORY[0x1E695DFD8] setWithObjects:{@"identifier", 0}];
  v9 = [(WFCoreDataDatabaseResult *)v7 initWithDatabase:self fetchRequest:v5 relationshipKeysAffectingDescriptors:v8];

  return v9;
}

- (id)allSortedTriggerEvents
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = +[WFCoreDataTriggerEvent fetchRequest];
  v4 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"dateCreated" ascending:1];
  v9[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  [v3 setSortDescriptors:v5];

  v6 = [[WFCoreDataDatabaseResult alloc] initWithDatabase:self fetchRequest:v3];
  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)runnableSortedTriggerEvents
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = +[WFCoreDataTriggerEvent fetchRequest];
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = YES AND %K = NO", @"confirmed", @"paused"];
  [v3 setPredicate:v4];

  v5 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"dateCreated" ascending:1];
  v10[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  [v3 setSortDescriptors:v6];

  v7 = [[WFCoreDataDatabaseResult alloc] initWithDatabase:self fetchRequest:v3];
  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)setPausedForTriggerEventWithIdentifier:(id)a3 paused:(BOOL)a4 error:(id *)a5
{
  v8 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __76__WFDatabase_Triggers__setPausedForTriggerEventWithIdentifier_paused_error___block_invoke;
  v10[3] = &unk_1E837DDE8;
  v10[4] = self;
  v11 = v8;
  v12 = a4;
  v9 = v8;
  [(WFDatabase *)self performTransactionWithReason:@"setting trigger paused" block:v10 error:a5];
}

void __76__WFDatabase_Triggers__setPausedForTriggerEventWithIdentifier_paused_error___block_invoke(uint64_t a1, void *a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = [*(a1 + 32) objectOfClass:objc_opt_class() withIdentifier:*(a1 + 40) forKey:@"identifier" createIfNecessary:0 properties:0];
  v5 = v4;
  if (v4)
  {
    [v4 setPaused:*(a1 + 48)];
    v6 = *(a1 + 32);
    v7 = [objc_alloc(MEMORY[0x1E69E0A68]) initWithIdentifier:*(a1 + 40) objectType:4];
    [v6 addPendingUpdatedDescriptor:v7];
  }

  else
  {
    v8 = MEMORY[0x1E696ABC0];
    v9 = *(a1 + 40);
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Trigger event with ID %@ does not exist", v9, *MEMORY[0x1E696A578]];
    v13[0] = v7;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    *a2 = [v8 errorWithDomain:@"WFDatabaseErrorDomain" code:3 userInfo:v10];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)setConfirmedForTriggerEventWithIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __72__WFDatabase_Triggers__setConfirmedForTriggerEventWithIdentifier_error___block_invoke;
  v8[3] = &unk_1E837F978;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [(WFDatabase *)self performTransactionWithReason:@"set trigger confirmed" block:v8 error:a4];
}

void __72__WFDatabase_Triggers__setConfirmedForTriggerEventWithIdentifier_error___block_invoke(uint64_t a1, void *a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = [*(a1 + 32) objectOfClass:objc_opt_class() withIdentifier:*(a1 + 40) forKey:@"identifier" createIfNecessary:0 properties:0];
  v5 = v4;
  if (v4)
  {
    [v4 setConfirmed:1];
    v6 = *(a1 + 32);
    v7 = [objc_alloc(MEMORY[0x1E69E0A68]) initWithIdentifier:*(a1 + 40) objectType:4];
    [v6 addPendingUpdatedDescriptor:v7];
  }

  else
  {
    v8 = MEMORY[0x1E696ABC0];
    v9 = *(a1 + 40);
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Trigger event with ID %@ does not exist", v9, *MEMORY[0x1E696A578]];
    v13[0] = v7;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    *a2 = [v8 errorWithDomain:@"WFDatabaseErrorDomain" code:3 userInfo:v10];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)triggerEventForIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [objc_alloc(MEMORY[0x1E69E0A68]) initWithIdentifier:v6 objectType:4];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__65008;
  v15 = __Block_byref_object_dispose__65009;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__WFDatabase_Triggers__triggerEventForIdentifier_error___block_invoke;
  v10[3] = &unk_1E837DDC0;
  v10[4] = &v11;
  [(WFDatabase *)self accessStorageForDescriptor:v7 forWriting:0 readingRecordProperties:0 usingBlock:v10 withError:a4];
  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v8;
}

void __56__WFDatabase_Triggers__triggerEventForIdentifier_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 descriptor];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)createTriggerEventWithTriggerID:(id)a3 eventInfo:(id)a4 confirmed:(BOOL)a5 paused:(BOOL)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __89__WFDatabase_Triggers__createTriggerEventWithTriggerID_eventInfo_confirmed_paused_error___block_invoke;
  v18[3] = &unk_1E837DD98;
  v18[4] = self;
  v19 = v12;
  v20 = v13;
  v21 = a5;
  v22 = a6;
  v14 = v13;
  v15 = v12;
  v16 = [(WFDatabase *)self performSaveOperationWithReason:@"creating trigger event" block:v18 error:a7];

  return v16;
}

id __89__WFDatabase_Triggers__createTriggerEventWithTriggerID_eventInfo_confirmed_paused_error___block_invoke(uint64_t a1, void *a2)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v4 = [*(a1 + 32) objectOfClass:objc_opt_class() withIdentifier:*(a1 + 40) forKey:@"identifier" createIfNecessary:0 properties:0];
  if (v4)
  {
    v5 = [WFCoreDataTriggerEvent alloc];
    v6 = [*(a1 + 32) context];
    v7 = [(WFCoreDataTriggerEvent *)v5 initWithContext:v6];

    v8 = [MEMORY[0x1E696AFB0] UUID];
    v9 = [v8 UUIDString];
    [(WFCoreDataTriggerEvent *)v7 setIdentifier:v9];

    v10 = [MEMORY[0x1E695DF00] date];
    [(WFCoreDataTriggerEvent *)v7 setDateCreated:v10];

    [(WFCoreDataTriggerEvent *)v7 setTrigger:v4];
    [(WFCoreDataTriggerEvent *)v7 setEventInfo:*(a1 + 48)];
    [(WFCoreDataTriggerEvent *)v7 setConfirmed:*(a1 + 56)];
    [(WFCoreDataTriggerEvent *)v7 setPaused:*(a1 + 57)];
    v11 = [(WFCoreDataTriggerEvent *)v7 descriptor];
    [*(a1 + 32) addPendingInsertedDescriptor:v11];
  }

  else
  {
    v12 = MEMORY[0x1E696ABC0];
    v13 = *(a1 + 40);
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Trigger with ID %@ does not exist", v13, *MEMORY[0x1E696A578]];
    v19[0] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    *a2 = [v12 errorWithDomain:@"WFDatabaseErrorDomain" code:3 userInfo:v15];

    v11 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)configuredTriggerForTriggerID:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E69E0A68]) initWithIdentifier:v4 objectType:1];
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__65008;
  v13 = __Block_byref_object_dispose__65009;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__WFDatabase_Triggers__configuredTriggerForTriggerID___block_invoke;
  v8[3] = &unk_1E837DD70;
  v8[4] = &v9;
  [(WFDatabase *)self accessStorageForDescriptor:v5 forWriting:0 readingRecordProperties:0 usingBlock:v8 withError:0];
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __54__WFDatabase_Triggers__configuredTriggerForTriggerID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 descriptor];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)triggerResultWithFetchRequest:(id)a3
{
  v4 = a3;
  v5 = [WFCoreDataDatabaseResult alloc];
  v6 = [MEMORY[0x1E695DFD8] setWithObject:@"shortcut"];
  v7 = [(WFCoreDataDatabaseResult *)v5 initWithDatabase:self fetchRequest:v4 relationshipKeysAffectingDescriptors:v6];

  return v7;
}

- (id)configuredTriggersForWorkflowID:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[WFCoreDataTrigger fetchRequest];
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"shortcut.workflowID == %@", v4];

  [v5 setPredicate:v6];
  v7 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"identifier" ascending:1];
  v12[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  [v5 setSortDescriptors:v8];

  v9 = [(WFDatabase *)self triggerResultWithFetchRequest:v5];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)associateWorkflowToTrigger:(id)a3 workflow:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __66__WFDatabase_Triggers__associateWorkflowToTrigger_workflow_error___block_invoke;
  v14[3] = &unk_1E837DD48;
  v15 = v9;
  v16 = self;
  v17 = v8;
  v10 = v8;
  v11 = v9;
  v12 = [(WFDatabase *)self performSaveOperationWithReason:@"associating trigger with shortcut" block:v14 error:a5];

  return v12;
}

id __66__WFDatabase_Triggers__associateWorkflowToTrigger_workflow_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = [*(a1 + 40) objectForDescriptor:v3 properties:MEMORY[0x1E695E0F0]];
    v6 = objc_opt_class();
    v7 = WFEnforceClass_1501(v5, v6);

    if (!v7)
    {
      [*(a1 + 40) missingErrorForDescriptor:*(a1 + 32)];
      *a2 = v8 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0;
  }

  v9 = [*(a1 + 40) objectForDescriptor:*(a1 + 48) properties:MEMORY[0x1E695E0F0]];
  v10 = objc_opt_class();
  v11 = WFEnforceClass_1501(v9, v10);

  [v11 setShortcut:v7];
  v8 = [v11 descriptor];
  [*(a1 + 40) addPendingUpdatedDescriptor:v8];

LABEL_6:

  return v8;
}

- (id)createTriggerWithRecord:(id)a3 workflow:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __63__WFDatabase_Triggers__createTriggerWithRecord_workflow_error___block_invoke;
  v14[3] = &unk_1E837DD48;
  v14[4] = self;
  v15 = v9;
  v16 = v8;
  v10 = v8;
  v11 = v9;
  v12 = [(WFDatabase *)self performSaveOperationWithReason:@"creating trigger" block:v14 error:a5];

  return v12;
}

id __63__WFDatabase_Triggers__createTriggerWithRecord_workflow_error___block_invoke(uint64_t a1, void *a2)
{
  v4 = [*(a1 + 32) objectForDescriptor:*(a1 + 40) properties:MEMORY[0x1E695E0F0]];
  v5 = objc_opt_class();
  v6 = WFEnforceClass_1501(v4, v5);

  if (v6)
  {
    v7 = [WFCoreDataTrigger alloc];
    v8 = [*(a1 + 32) context];
    v9 = [(WFCoreDataTrigger *)v7 initWithContext:v8];

    v10 = [MEMORY[0x1E696AFB0] UUID];
    v11 = [v10 UUIDString];
    [(WFCoreDataTrigger *)v9 setIdentifier:v11];

    if ([*(a1 + 48) writeToStorage:v9 error:a2])
    {
      [(WFCoreDataTrigger *)v9 setShortcut:v6];
      v12 = [(WFCoreDataTrigger *)v9 descriptor];
      [*(a1 + 32) addPendingInsertedDescriptor:v12];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    [*(a1 + 32) missingErrorForDescriptor:*(a1 + 40)];
    *a2 = v12 = 0;
  }

  return v12;
}

- (id)createTriggerWithRecord:(id)a3 error:(id *)a4
{
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__WFDatabase_Triggers__createTriggerWithRecord_error___block_invoke;
  v10[3] = &unk_1E837DD20;
  v10[4] = self;
  v11 = v6;
  v7 = v6;
  v8 = [(WFDatabase *)self performSaveOperationWithReason:@"creating trigger" block:v10 error:a4];

  return v8;
}

id __54__WFDatabase_Triggers__createTriggerWithRecord_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [WFCoreDataTrigger alloc];
  v5 = [*(a1 + 32) context];
  v6 = [(WFCoreDataTrigger *)v4 initWithContext:v5];

  v7 = [MEMORY[0x1E696AFB0] UUID];
  v8 = [v7 UUIDString];
  [(WFCoreDataTrigger *)v6 setIdentifier:v8];

  if ([*(a1 + 40) writeToStorage:v6 error:a2])
  {
    v9 = [(WFCoreDataTrigger *)v6 descriptor];
    [*(a1 + 32) addPendingInsertedDescriptor:v9];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)visibleCollectionForFolderName:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"WFDatabase+Collections.m" lineNumber:374 description:{@"Invalid parameter not satisfying: %@", @"name"}];
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __58__WFDatabase_Collections__visibleCollectionForFolderName___block_invoke;
  v10[3] = &unk_1E837F2F0;
  v10[4] = self;
  v11 = v5;
  v6 = v5;
  v7 = [(WFDatabase *)self performOperationWithReason:@"getting collection by name" block:v10 error:0];

  return v7;
}

id __58__WFDatabase_Collections__visibleCollectionForFolderName___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) library];
  v3 = [v2 folderWithName:*(a1 + 40)];

  return v3;
}

- (id)validateFolderName:(id)a3 forCollection:(id)a4 error:(id *)a5
{
  v31[2] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = [a3 wf_trimmedString];
  v10 = v9;
  if (v9 && ![v9 wf_isEmpty])
  {
    v15 = [(WFDatabase *)self visibleCollectionForFolderName:v10];
    v12 = v15;
    if (!v15 || ([v15 identifier], v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "identifier"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v16, "isEqualToString:", v17), v17, v16, v18))
    {
      a5 = v10;
      goto LABEL_9;
    }

    if (!a5)
    {
      goto LABEL_9;
    }

    v21 = MEMORY[0x1E696ABC0];
    v27 = *MEMORY[0x1E696A588];
    v22 = WFLocalizedString(@"Name Cannot Be Used");
    v29[0] = v22;
    v28 = *MEMORY[0x1E696A578];
    v23 = MEMORY[0x1E696AEC0];
    v24 = WFLocalizedString(@"You already have a folder named “%@”. Please choose another name for this folder.");
    v25 = [v23 localizedStringWithFormat:v24, v10, v27, v28, v22];
    v29[1] = v25;
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v27 count:2];
    *a5 = [v21 errorWithDomain:@"WFWorkflowErrorDomain" code:1 userInfo:v26];
  }

  else
  {
    if (!a5)
    {
      goto LABEL_10;
    }

    v11 = MEMORY[0x1E696ABC0];
    v30[0] = *MEMORY[0x1E696A588];
    v12 = WFLocalizedString(@"Invalid Name");
    v31[0] = v12;
    v30[1] = *MEMORY[0x1E696A578];
    v13 = WFLocalizedString(@"Please enter a name for this folder.");
    v31[1] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:2];
    *a5 = [v11 errorWithDomain:@"WFWorkflowErrorDomain" code:0 userInfo:v14];
  }

  a5 = 0;
LABEL_9:

LABEL_10:
  v19 = *MEMORY[0x1E69E9840];

  return a5;
}

- (id)collectionResultWithLibraryQuery:(id)a3
{
  v4 = a3;
  v5 = [[WFCoherenceDatabaseCollectionsResult alloc] initWithDatabase:self libraryQuery:v4];

  return v5;
}

- (id)collectionsWithOutOfSyncWalrusStatus
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = +[WFCoreDataCollection fetchRequest];
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(%K != %K) OR (%K == NIL AND %K > 0)", @"wantedEncryptedSchemaVersion", @"lastSyncedEncryptedSchemaVersion", @"lastSyncedEncryptedSchemaVersion", @"wantedEncryptedSchemaVersion"];
  [v3 setPredicate:v4];

  v5 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"identifier" ascending:0];
  v12[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  [v3 setSortDescriptors:v6];

  v7 = [WFCoreDataDatabaseResult alloc];
  v8 = objc_opt_new();
  v9 = [(WFCoreDataDatabaseResult *)v7 initWithDatabase:self fetchRequest:v3 relationshipKeysAffectingDescriptors:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)suggestedFolderNameForName:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"WFDatabase+Collections.m" lineNumber:310 description:{@"Invalid parameter not satisfying: %@", @"name"}];
  }

  v6 = [v5 componentsSeparatedByString:@" "];
  v7 = [v6 lastObject];
  v8 = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
  v9 = [v8 invertedSet];
  v10 = [v7 rangeOfCharacterFromSet:v9];

  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [v6 lastObject];
    v12 = [v11 integerValue];

    v13 = [v6 subarrayWithRange:{0, objc_msgSend(v6, "count") - 1}];

    v6 = v13;
  }

  else
  {
    v12 = 1;
  }

  v14 = v5;
  v15 = [(WFDatabase *)self visibleCollectionForFolderName:v14];

  v22 = v14;
  if (v15)
  {
    v16 = v14;
    do
    {
      v17 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:@"%lu", v12];
      v18 = [v6 arrayByAddingObject:v17];
      v14 = [v18 componentsJoinedByString:@" "];

      ++v12;
      v19 = [(WFDatabase *)self visibleCollectionForFolderName:v14];

      v16 = v14;
    }

    while (v19);
  }

  return v14;
}

- (BOOL)moveCollections:(id)a3 toIndex:(unint64_t)a4 ofCollectionWithIdentifier:(id)a5 error:(id *)a6
{
  v11 = a3;
  v12 = a5;
  if (!v11)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"WFDatabase+Collections.m" lineNumber:286 description:{@"Invalid parameter not satisfying: %@", @"collections"}];
  }

  v13 = @"Root";
  if (v12)
  {
    v13 = v12;
  }

  v14 = v13;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __84__WFDatabase_Collections__moveCollections_toIndex_ofCollectionWithIdentifier_error___block_invoke;
  v23[3] = &unk_1E837F3D8;
  v27 = a4;
  v15 = v11;
  v24 = v15;
  v25 = self;
  v16 = v14;
  v26 = v16;
  v22 = 0;
  [(WFDatabase *)self performTransactionWithReason:@"move collection(s)" block:v23 error:&v22];
  v17 = v22;
  v18 = v17;
  if (a6)
  {
    v19 = v17;
    *a6 = v18;
  }

  return v18 == 0;
}

void __84__WFDatabase_Collections__moveCollections_toIndex_ofCollectionWithIdentifier_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = getWFCoherenceLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 56);
    v11 = 136315394;
    v12 = "[WFDatabase(Collections) moveCollections:toIndex:ofCollectionWithIdentifier:error:]_block_invoke";
    v13 = 2048;
    v14 = v5;
    _os_log_impl(&dword_1CA256000, v4, OS_LOG_TYPE_DEBUG, "%s Move collections to index %lu", &v11, 0x16u);
  }

  v6 = [*(a1 + 32) if_map:&__block_literal_global_71623];
  v7 = [*(a1 + 40) library];
  [v7 moveFolders:v6 toIndex:*(a1 + 56) error:a2];

  [*(a1 + 40) libraryDidChange];
  v8 = *(a1 + 40);
  v9 = [objc_alloc(MEMORY[0x1E69E0A68]) initWithIdentifier:*(a1 + 48) objectType:2];
  [v8 addPendingUpdatedDescriptor:v9];

  v10 = *MEMORY[0x1E69E9840];
}

- (BOOL)removeReferences:(id)a3 fromCollectionWithIdentifier:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __79__WFDatabase_Collections__removeReferences_fromCollectionWithIdentifier_error___block_invoke;
  v17[3] = &unk_1E837F390;
  v10 = v8;
  v18 = v10;
  v19 = self;
  v11 = v9;
  v20 = v11;
  v16 = 0;
  [(WFDatabase *)self performTransactionWithReason:@"remove shortcut from collection" block:v17 error:&v16];
  v12 = v16;
  v13 = v12;
  if (a5)
  {
    v14 = v12;
    *a5 = v13;
  }

  return v13 == 0;
}

void __79__WFDatabase_Collections__removeReferences_fromCollectionWithIdentifier_error___block_invoke(uint64_t a1, void *a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = *(a1 + 32);
  v3 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v30;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v30 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v29 + 1) + 8 * i);
        v8 = [*(a1 + 40) objectForDescriptor:v7 properties:MEMORY[0x1E695E0F0]];
        v9 = objc_opt_class();
        v10 = v8;
        if (v10 && (objc_opt_isKindOfClass() & 1) == 0)
        {
          v12 = getWFGeneralLogObject();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
          {
            v13 = objc_opt_class();
            *buf = 136315906;
            v35 = "WFEnforceClass";
            v36 = 2114;
            v37 = v10;
            v38 = 2114;
            v39 = v13;
            v40 = 2114;
            v41 = v9;
            v14 = v13;
            _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_FAULT, "%s Error fetching contents of folder with id %{public}@: %{public}@", buf, 0x2Au);
          }

          v11 = 0;
        }

        else
        {
          v11 = v10;
        }

        if (!v11)
        {
          *a2 = [*(a1 + 40) missingErrorForDescriptor:v7];
          goto LABEL_23;
        }

        v15 = getWFCoherenceLogObject();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          v16 = [v7 identifier];
          v17 = *(a1 + 48);
          *buf = 136315650;
          v35 = "[WFDatabase(Collections) removeReferences:fromCollectionWithIdentifier:error:]_block_invoke";
          v36 = 2114;
          v37 = v16;
          v38 = 2114;
          v39 = v17;
          _os_log_impl(&dword_1CA256000, v15, OS_LOG_TYPE_DEBUG, "%s Remove shortcut with id %{public}@ from collection with id %{public}@", buf, 0x20u);
        }

        v18 = [*(a1 + 40) library];
        v19 = [v7 identifier];
        v20 = *(a1 + 48);
        v28 = 0;
        [v18 removeShortcutWithIdentifier:v19 fromCollectionWithIdentifier:v20 error:&v28];
        v21 = v28;

        if (v21)
        {
          v22 = getWFCoherenceLogObject();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v35 = "[WFDatabase(Collections) removeReferences:fromCollectionWithIdentifier:error:]_block_invoke";
            v36 = 2114;
            v37 = v21;
            _os_log_impl(&dword_1CA256000, v22, OS_LOG_TYPE_ERROR, "%s Failed to remove workflow from a collection with error: %{public}@", buf, 0x16u);
          }
        }

        [*(a1 + 40) libraryDidChange];
        v23 = *(a1 + 40);
        v24 = [objc_alloc(MEMORY[0x1E69E0A68]) initWithIdentifier:*(a1 + 48) objectType:2];
        [v23 addPendingUpdatedDescriptor:v24];
      }

      v4 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_23:

  v25 = *MEMORY[0x1E69E9840];
}

- (BOOL)prependReferences:(id)a3 toCollectionWithType:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = WFWorkflowCollectionIdentifierForWorkflowType(a4);
  v10 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{0, objc_msgSend(v8, "count")}];
  LOBYTE(a5) = [(WFDatabase *)self _moveReferences:v8 toIndexes:v10 ofCollectionID:v9 error:a5];

  return a5;
}

- (BOOL)prependReferences:(id)a3 toCollection:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [a4 identifier];
  v10 = v9;
  v11 = @"Root";
  if (v9)
  {
    v11 = v9;
  }

  v12 = v11;

  v13 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{0, objc_msgSend(v8, "count")}];
  v14 = [(WFDatabase *)self _moveReferences:v8 toIndexes:v13 ofCollectionID:v12 error:a5];

  return v14;
}

- (BOOL)_moveReferences:(id)a3 toIndexes:(id)a4 ofCollectionID:(id)a5 error:(id *)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (!v13)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"WFDatabase+Collections.m" lineNumber:164 description:{@"Invalid parameter not satisfying: %@", @"destinationID"}];
  }

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __74__WFDatabase_Collections___moveReferences_toIndexes_ofCollectionID_error___block_invoke;
  v23[3] = &unk_1E837F368;
  v14 = v11;
  v24 = v14;
  v15 = v13;
  v25 = v15;
  v26 = self;
  v16 = v12;
  v27 = v16;
  v22 = 0;
  [(WFDatabase *)self performTransactionWithReason:@"move shortcut" block:v23 error:&v22];
  v17 = v22;
  v18 = v17;
  if (a6)
  {
    v19 = v17;
    *a6 = v18;
  }

  return v18 == 0;
}

void __74__WFDatabase_Collections___moveReferences_toIndexes_ofCollectionID_error___block_invoke(uint64_t a1)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __74__WFDatabase_Collections___moveReferences_toIndexes_ofCollectionID_error___block_invoke_2;
  v6[3] = &unk_1E837F340;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v7 = v3;
  v8 = v4;
  v9 = v5;
  [v2 enumerateObjectsUsingBlock:v6];
}

void __74__WFDatabase_Collections___moveReferences_toIndexes_ofCollectionID_error___block_invoke_2(void **a1, void *a2, uint64_t a3)
{
  v85 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = getWFCoherenceLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [v4 identifier];
    v7 = a1[4];
    *buf = 136315650;
    v77 = "[WFDatabase(Collections) _moveReferences:toIndexes:ofCollectionID:error:]_block_invoke_2";
    v78 = 2114;
    v79 = v6;
    v80 = 2114;
    v81 = v7;
    _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_DEBUG, "%s Move shortcut with id %{public}@ to collection with id %{public}@", buf, 0x20u);
  }

  v8 = [a1[5] library];
  v9 = [v4 identifier];
  v75 = 0;
  v10 = [v8 collectionAndFolderIdentifiersContainingShortcut:v9 error:&v75];
  v11 = v75;

  v12 = [v10 containsObject:a1[4]];
  v13 = WFWorkflowTypeForCollectionIdentifier(a1[4]);

  v14 = [v4 identifier];
  v15 = [a1[5] library];
  v16 = a1[4];
  v74 = v11;
  v17 = [v15 shortcutsInFolderWithIdentifier:v16 error:&v74];
  v18 = v74;

  v19 = [v17 count];
  v20 = a1[6];
  v21 = v19;
  if (v20)
  {
    if ([v20 count] != 1)
    {
      v27 = objc_opt_new();
      v28 = a1[6];
      v72[0] = MEMORY[0x1E69E9820];
      v72[1] = 3221225472;
      v72[2] = __74__WFDatabase_Collections___moveReferences_toIndexes_ofCollectionID_error___block_invoke_216;
      v72[3] = &unk_1E837F318;
      v73 = v27;
      v60 = v10;
      v29 = v4;
      v30 = v14;
      v31 = v27;
      [v28 enumerateIndexesUsingBlock:v72];
      v32 = [v31 objectAtIndex:a3];
      v21 = [v32 unsignedIntValue];

      v14 = v30;
      v4 = v29;
      v10 = v60;
      if (v12)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    v21 = [a1[6] firstIndex];
  }

  if (v12)
  {
LABEL_7:
    v22 = [a1[5] library];
    v23 = v22;
    v24 = a1[4];
    if (v13)
    {
      v25 = v4;
      v71 = v18;
      v26 = &v71;
    }

    else
    {
      v25 = v4;
      v70 = v18;
      v26 = &v70;
    }

    [v22 moveShortcutWithIdentifier:v14 toIndex:v21 ofCollectionWithIdentifier:v24 error:v26];
    v36 = *v26;

    v37 = v14;
    v38 = a1[5];
    v39 = [objc_alloc(MEMORY[0x1E69E0A68]) initWithIdentifier:a1[4] objectType:2];
    v40 = v38;
    v41 = v37;
    [v40 addPendingUpdatedDescriptor:v39];
    v4 = v25;
    goto LABEL_28;
  }

LABEL_10:
  v58 = v14;
  if (v13)
  {
    v33 = [a1[5] library];
    v34 = a1[4];
    v69 = v18;
    v35 = &v69;
    [v33 insertShortcutWithIdentifier:v14 atIndex:v21 toCollection:v34 error:&v69];
  }

  else
  {
    v42 = [a1[5] library];
    v33 = v42;
    v43 = a1[4];
    if (v19)
    {
      v68 = v18;
      v35 = &v68;
      [v42 moveShortcutWithIdentifier:v14 toIndex:v21 ofCollectionWithIdentifier:v43 error:&v68];
    }

    else
    {
      v67 = v18;
      [v42 appendShortcutWithIdentifier:v14 toCollectionWithIdentifier:v43 error:&v67];
      v44 = v14;
      v45 = v67;

      v33 = [a1[5] library];
      v46 = a1[4];
      v66 = v45;
      v35 = &v66;
      [v33 moveShortcutWithIdentifier:v44 toIndex:0 ofCollectionWithIdentifier:v46 error:&v66];
      v18 = v45;
    }
  }

  v36 = *v35;

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v61 = v10;
  v47 = v10;
  v48 = [v47 countByEnumeratingWithState:&v62 objects:v84 count:16];
  if (v48)
  {
    v49 = v48;
    v50 = *v63;
    do
    {
      v51 = 0;
      do
      {
        if (*v63 != v50)
        {
          objc_enumerationMutation(v47);
        }

        v52 = a1[5];
        v53 = [objc_alloc(MEMORY[0x1E69E0A68]) initWithIdentifier:*(*(&v62 + 1) + 8 * v51) objectType:2];
        [v52 addPendingUpdatedDescriptor:v53];

        ++v51;
      }

      while (v49 != v51);
      v49 = [v47 countByEnumeratingWithState:&v62 objects:v84 count:16];
    }

    while (v49);
  }

  v54 = a1[5];
  v55 = [objc_alloc(MEMORY[0x1E69E0A68]) initWithIdentifier:a1[4] objectType:2];
  [v54 addPendingUpdatedDescriptor:v55];

  if (!v36)
  {
    v10 = v61;
    v41 = v58;
    goto LABEL_29;
  }

  v39 = getWFCoherenceLogObject();
  v41 = v58;
  if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
  {
    v56 = a1[4];
    *buf = 136315906;
    v77 = "[WFDatabase(Collections) _moveReferences:toIndexes:ofCollectionID:error:]_block_invoke_2";
    v78 = 2114;
    v79 = v58;
    v80 = 2114;
    v81 = v56;
    v82 = 2114;
    v83 = v36;
    _os_log_impl(&dword_1CA256000, v39, OS_LOG_TYPE_ERROR, "%s Error while moving shortcut with id %{public}@ to collection with id %{public}@: %{public}@", buf, 0x2Au);
  }

  v10 = v61;
LABEL_28:

LABEL_29:
  [a1[5] libraryDidChange];

  v57 = *MEMORY[0x1E69E9840];
}

void __74__WFDatabase_Collections___moveReferences_toIndexes_ofCollectionID_error___block_invoke_216(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  [v2 addObject:v3];
}

- (BOOL)moveReferences:(id)a3 toIndexes:(id)a4 ofCollection:(id)a5 error:(id *)a6
{
  v10 = a4;
  v11 = a3;
  v12 = [a5 identifier];
  v13 = v12;
  v14 = @"Root";
  if (v12)
  {
    v14 = v12;
  }

  v15 = v14;

  v16 = [(WFDatabase *)self _moveReferences:v11 toIndexes:v10 ofCollectionID:v15 error:a6];
  return v16;
}

- (BOOL)moveReferences:(id)a3 toIndex:(int64_t)a4 ofCollection:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = [a5 identifier];
  v12 = v11;
  v13 = @"Root";
  if (v11)
  {
    v13 = v11;
  }

  v14 = v13;

  if (a4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = [(WFDatabase *)self _moveReferences:v10 toIndexes:0 ofCollectionID:v14 error:a6];
  }

  else
  {
    v16 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{a4, objc_msgSend(v10, "count")}];
    v15 = [(WFDatabase *)self _moveReferences:v10 toIndexes:v16 ofCollectionID:v14 error:a6];
  }

  return v15;
}

- (id)sortedVisibleWorkflowsInCollection:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 identifier];
    v7 = [v6 isEqualToString:@"Root"];

    if (!v7)
    {
      v11 = [v5 identifier];
      v12 = WFWorkflowTypeForCollectionIdentifier(v11);

      v13 = objc_alloc(MEMORY[0x1E69E0E18]);
      v14 = v13;
      if (v12)
      {
        v10 = [v13 initWithWorkflowType:v12];
      }

      else
      {
        v15 = [v5 identifier];
        v10 = [v14 initWithFolderIdentifier:v15];
      }

      goto LABEL_10;
    }

    v8 = objc_alloc(MEMORY[0x1E69E0E18]);
    v9 = 0;
  }

  else
  {
    v8 = objc_alloc(MEMORY[0x1E69E0E18]);
    v9 = 1;
  }

  v10 = [v8 initWithLocation:v9];
LABEL_10:
  v16 = [(WFDatabase *)self sortedWorkflowsWithQuery:v10];

  return v16;
}

- (id)collectionWithIdentifier:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__WFDatabase_Collections__collectionWithIdentifier___block_invoke;
  v8[3] = &unk_1E837F2F0;
  v9 = v4;
  v10 = self;
  v5 = v4;
  v6 = [(WFDatabase *)self performOperationWithReason:@"getting collection for id" block:v8 error:0];

  return v6;
}

id __52__WFDatabase_Collections__collectionWithIdentifier___block_invoke(uint64_t a1)
{
  v2 = WFGetBuiltInCollectionIdentifiers(1);
  v3 = [v2 containsObject:*(a1 + 32)];

  v4 = [*(a1 + 40) library];
  v5 = v4;
  v6 = *(a1 + 32);
  if (v3)
  {
    [v4 collectionWithIdentifier:v6];
  }

  else
  {
    [v4 folderWithIdentifier:v6 error:0];
  }
  v7 = ;

  return v7;
}

- (id)collectionForWorkflowType:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E696AEC0];
  v6 = WFHumanReadableNameForWorkflowType();
  v7 = [v5 stringWithFormat:@"getting collection for workflow type %@", v6];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __53__WFDatabase_Collections__collectionForWorkflowType___block_invoke;
  v11[3] = &unk_1E837F2F0;
  v11[4] = self;
  v12 = v4;
  v8 = v4;
  v9 = [(WFDatabase *)self performOperationWithReason:v7 block:v11 error:0];

  return v9;
}

id __53__WFDatabase_Collections__collectionForWorkflowType___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) library];
  v3 = [v2 collectionWithWorkflowType:*(a1 + 40)];

  return v3;
}

- (id)folderForWorkflowReference:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__WFDatabase_Collections__folderForWorkflowReference___block_invoke;
  v8[3] = &unk_1E837F2F0;
  v8[4] = self;
  v9 = v4;
  v5 = v4;
  v6 = [(WFDatabase *)self performOperationWithReason:@"folder for workflow reference" block:v8 error:0];

  return v6;
}

id __54__WFDatabase_Collections__folderForWorkflowReference___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) library];
  v3 = [*(a1 + 40) identifier];
  v4 = [v2 folderContainingShortcut:v3];

  return v4;
}

- (id)collectionsForWorkflowReference:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__WFDatabase_Collections__collectionsForWorkflowReference___block_invoke;
  v8[3] = &unk_1E837F2C8;
  v8[4] = self;
  v9 = v4;
  v5 = v4;
  v6 = [(WFDatabase *)self performOperationWithReason:@"getting collections for shortcut" block:v8 error:0];

  return v6;
}

id __59__WFDatabase_Collections__collectionsForWorkflowReference___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) library];
  v3 = [*(a1 + 40) identifier];
  v12 = 0;
  v4 = [v2 collectionsAndFoldersContainingShortcut:v3 error:&v12];
  v5 = v12;

  if (v5)
  {
    v6 = getWFCoherenceLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [*(a1 + 40) identifier];
      *buf = 136315650;
      v14 = "[WFDatabase(Collections) collectionsForWorkflowReference:]_block_invoke";
      v15 = 2114;
      v16 = v7;
      v17 = 2114;
      v18 = v5;
      _os_log_impl(&dword_1CA256000, v6, OS_LOG_TYPE_ERROR, "%s Fetching collections for shortcut with id %{public}@ failed with error: %{public}@", buf, 0x20u);
    }

    v8 = [MEMORY[0x1E695DFD8] set];
  }

  else
  {
    v8 = [MEMORY[0x1E695DFD8] setWithArray:v4];
  }

  v9 = v8;

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)updateFolder:(id)a3 newName:(id)a4 newIcon:(unsigned __int16)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __62__WFDatabase_Collections__updateFolder_newName_newIcon_error___block_invoke;
  v16[3] = &unk_1E837F2A0;
  v16[4] = self;
  v17 = v11;
  v18 = v10;
  v19 = a5;
  v12 = v10;
  v13 = v11;
  v14 = [(WFDatabase *)self performSaveOperationWithReason:@"update folder" block:v16 error:a6];

  return v14;
}

id __62__WFDatabase_Collections__updateFolder_newName_newIcon_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = [*(a1 + 32) validateFolderName:*(a1 + 40) forCollection:*(a1 + 48) error:a2];
  if (v4)
  {
    v5 = getWFCoherenceLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = [*(a1 + 48) identifier];
      v16 = 136315394;
      v17 = "[WFDatabase(Collections) updateFolder:newName:newIcon:error:]_block_invoke";
      v18 = 2114;
      v19 = v6;
      _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_DEBUG, "%s Update folder with id %{public}@", &v16, 0x16u);
    }

    v7 = [*(a1 + 32) library];
    v8 = [*(a1 + 48) identifier];
    v9 = [v7 updateFolderWithIdentifier:v8 newName:v4 newIcon:*(a1 + 56) error:a2];

    [*(a1 + 32) libraryDidChange];
    v10 = *(a1 + 32);
    v11 = objc_alloc(MEMORY[0x1E69E0A68]);
    v12 = [*(a1 + 48) identifier];
    v13 = [v11 initWithIdentifier:v12 objectType:2];
    [v10 addPendingUpdatedDescriptor:v13];
  }

  else
  {
    v9 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)createFolderWithName:(id)a3 icon:(unsigned __int16)a4 error:(id *)a5
{
  v8 = a3;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __59__WFDatabase_Collections__createFolderWithName_icon_error___block_invoke;
  v12[3] = &unk_1E837F278;
  v13 = v8;
  v14 = self;
  v15 = a4;
  v9 = v8;
  v10 = [(WFDatabase *)self performSaveOperationWithReason:@"create folder" block:v12 error:a5];

  return v10;
}

id __59__WFDatabase_Collections__createFolderWithName_icon_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  if (v3 && ([v3 wf_isEmpty] & 1) == 0)
  {
    v7 = [*(a1 + 40) validateFolderName:*(a1 + 32) forCollection:0 error:a2];
    if (v7)
    {
      goto LABEL_4;
    }

LABEL_12:
    v13 = 0;
    goto LABEL_13;
  }

  v5 = *(a1 + 40);
  v6 = [MEMORY[0x1E69E0DD0] defaultName];
  v7 = [v5 suggestedFolderNameForName:v6];

  if (!v7)
  {
    goto LABEL_12;
  }

LABEL_4:
  v8 = [MEMORY[0x1E696AFB0] UUID];
  v9 = [v8 UUIDString];

  v10 = getWFCoherenceLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v24 = "[WFDatabase(Collections) createFolderWithName:icon:error:]_block_invoke";
    v25 = 2114;
    v26 = v9;
    _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_DEBUG, "%s Create folder with id %{public}@", buf, 0x16u);
  }

  v11 = [*(a1 + 40) library];
  v12 = *(a1 + 48);
  v22 = 0;
  v13 = [v11 insertFolderWithName:v7 icon:v12 identifier:v9 error:&v22];
  v14 = v22;

  if (v14)
  {
    v15 = getWFCoherenceLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v24 = "[WFDatabase(Collections) createFolderWithName:icon:error:]_block_invoke";
      v25 = 2112;
      v26 = v14;
      _os_log_impl(&dword_1CA256000, v15, OS_LOG_TYPE_ERROR, "%s Failed to create folder in library: %@", buf, 0x16u);
    }
  }

  v16 = *(a1 + 40);
  v17 = [objc_alloc(MEMORY[0x1E69E0A68]) initWithIdentifier:v9 objectType:2];
  [v16 addPendingInsertedDescriptor:v17];

  v18 = *(a1 + 40);
  v19 = [objc_alloc(MEMORY[0x1E69E0A68]) initWithIdentifier:@"Root" objectType:2];
  [v18 addPendingUpdatedDescriptor:v19];

  [*(a1 + 40) libraryDidChange];
LABEL_13:

  v20 = *MEMORY[0x1E69E9840];

  return v13;
}

- (unint64_t)countOfWorkflowsInAFolder
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__WFDatabase_Collections__countOfWorkflowsInAFolder__block_invoke;
  v5[3] = &unk_1E837F248;
  v5[4] = self;
  v2 = [(WFDatabase *)self performOperationWithReason:@"count workflows in folder" block:v5 error:0];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

id __52__WFDatabase_Collections__countOfWorkflowsInAFolder__block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) library];
  v3 = [v2 folders];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (v4)
  {
    v6 = v4;
    v22 = 0;
    v7 = *v25;
    *&v5 = 136315650;
    v20 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        v10 = [*(a1 + 32) library];
        v11 = [v9 identifier];
        v23 = 0;
        v12 = [v10 shortcutsInFolderWithIdentifier:v11 error:&v23];
        v13 = v23;
        v14 = [v12 count];

        if (v13)
        {
          v15 = getWFDatabaseLogObject();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
          {
            v16 = [v9 identifier];
            *buf = v20;
            v29 = "[WFDatabase(Collections) countOfWorkflowsInAFolder]_block_invoke";
            v30 = 2114;
            v31 = v16;
            v32 = 2114;
            v33 = v13;
            _os_log_impl(&dword_1CA256000, v15, OS_LOG_TYPE_FAULT, "%s Error fetching contents of folder with id %{public}@: %{public}@", buf, 0x20u);
          }
        }

        else
        {
          v22 += v14;
        }
      }

      v6 = [obj countByEnumeratingWithState:&v24 objects:v34 count:16];
    }

    while (v6);
  }

  else
  {
    v22 = 0;
  }

  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v22];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)latestRunEvent
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __39__WFDatabase_RunEvents__latestRunEvent__block_invoke;
  v4[3] = &unk_1E837F450;
  v4[4] = self;
  v2 = [(WFDatabase *)self performOperationWithReason:@"getting latest run event" block:v4 error:0];

  return v2;
}

id __39__WFDatabase_RunEvents__latestRunEvent__block_invoke(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = +[WFCoreDataRunEvent fetchRequest];
  v5 = [MEMORY[0x1E696AE18] predicateWithValue:1];
  [v4 setPredicate:v5];

  v6 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"date" ascending:0];
  v14[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  [v4 setSortDescriptors:v7];

  [v4 setFetchLimit:1];
  v8 = [*(a1 + 32) context];
  v9 = [v8 executeFetchRequest:v4 error:a2];
  v10 = [v9 firstObject];

  v11 = [v10 descriptor];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)triggerRunEventsInTheLastWeek
{
  v3 = +[WFCoreDataRunEvent fetchRequest];
  v4 = [MEMORY[0x1E695DEE8] currentCalendar];
  v5 = [MEMORY[0x1E695DF00] date];
  v6 = [v4 dateByAddingUnit:16 value:-7 toDate:v5 options:0];

  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"trigger.identifier != nil && date > %@", v6];
  [v3 setPredicate:v7];

  v8 = [[WFCoreDataDatabaseResult alloc] initWithDatabase:self fetchRequest:v3];

  return v8;
}

- (id)sortedRunEventsForTriggerID:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[WFCoreDataRunEvent fetchRequest];
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"trigger.identifier == %@", v4];

  [v5 setPredicate:v6];
  v7 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"date" ascending:0];
  v12[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  [v5 setSortDescriptors:v8];

  v9 = [[WFCoreDataDatabaseResult alloc] initWithDatabase:self fetchRequest:v5];
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)sortedRunEventsWithSource:(id)a3 startDate:(id)a4 endDate:(id)a5
{
  v22[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[WFCoreDataRunEvent fetchRequest];
  v12 = objc_opt_new();
  if (v8)
  {
    v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"source == %@", v8];
    [v12 addObject:v13];
  }

  if (v9)
  {
    v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"date >= %@", v9];
    [v12 addObject:v14];
  }

  if (v10)
  {
    v15 = [MEMORY[0x1E696AE18] predicateWithFormat:@"date <= %@", v10];
    [v12 addObject:v15];
  }

  if ([v12 count])
  {
    v16 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v12];
    [v11 setPredicate:v16];
  }

  v17 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"date" ascending:0];
  v22[0] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
  [v11 setSortDescriptors:v18];

  v19 = [[WFCoreDataDatabaseResult alloc] initWithDatabase:self fetchRequest:v11];
  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

- (void)setOutcome:(int64_t)a3 forRunEvent:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __48__WFDatabase_RunEvents__setOutcome_forRunEvent___block_invoke;
  v13[3] = &unk_1E837F428;
  v13[4] = self;
  v7 = v6;
  v14 = v7;
  v15 = a3;
  v12 = 0;
  [(WFDatabase *)self performTransactionWithReason:@"set run event outcome" block:v13 error:&v12];
  v8 = v12;
  if (v8)
  {
    v9 = getWFDatabaseLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [v8 localizedDescription];
      *buf = 136315394;
      v17 = "[WFDatabase(RunEvents) setOutcome:forRunEvent:]";
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_ERROR, "%s Unable to set outcome for run event: %@", buf, 0x16u);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __48__WFDatabase_RunEvents__setOutcome_forRunEvent___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = objc_opt_class();
  v6 = [*(a1 + 40) identifier];
  v7 = [v4 objectOfClass:v5 withIdentifier:v6 forKey:@"identifier" createIfNecessary:0 properties:0];

  if (v7)
  {
    [v7 setOutcome:*(a1 + 48)];
    [*(a1 + 32) addPendingUpdatedDescriptor:*(a1 + 40)];
  }

  else
  {
    *a2 = [*(a1 + 32) missingErrorForDescriptor:*(a1 + 40)];
  }
}

- (id)logRunOfWorkflow:(id)a3 atDate:(id)a4 withIdentifier:(id)a5 source:(id)a6 triggerID:(id)a7
{
  v39 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __81__WFDatabase_RunEvents__logRunOfWorkflow_atDate_withIdentifier_source_triggerID___block_invoke;
  v29[3] = &unk_1E837F400;
  v29[4] = self;
  v17 = v13;
  v30 = v17;
  v18 = v14;
  v31 = v18;
  v19 = v15;
  v32 = v19;
  v20 = v12;
  v33 = v20;
  v21 = v16;
  v34 = v21;
  v28 = 0;
  v22 = [(WFDatabase *)self performSaveOperationWithReason:@"creating run event" block:v29 error:&v28];
  v23 = v28;
  if (v23)
  {
    v24 = getWFDatabaseLogObject();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [v23 localizedDescription];
      *buf = 136315394;
      v36 = "[WFDatabase(RunEvents) logRunOfWorkflow:atDate:withIdentifier:source:triggerID:]";
      v37 = 2112;
      v38 = v25;
      _os_log_impl(&dword_1CA256000, v24, OS_LOG_TYPE_ERROR, "%s Unable to log workflow run event: %@", buf, 0x16u);
    }
  }

  v26 = *MEMORY[0x1E69E9840];

  return v22;
}

id __81__WFDatabase_RunEvents__logRunOfWorkflow_atDate_withIdentifier_source_triggerID___block_invoke(uint64_t a1)
{
  v2 = [WFCoreDataRunEvent alloc];
  v3 = [*(a1 + 32) context];
  v4 = [(WFCoreDataRunEvent *)v2 initWithContext:v3];

  [(WFCoreDataRunEvent *)v4 setDate:*(a1 + 40)];
  [(WFCoreDataRunEvent *)v4 setIdentifier:*(a1 + 48)];
  [(WFCoreDataRunEvent *)v4 setSource:*(a1 + 56)];
  v5 = [*(a1 + 32) objectForDescriptor:*(a1 + 64) properties:MEMORY[0x1E695E0F0]];
  [(WFCoreDataRunEvent *)v4 setShortcut:v5];

  v6 = *(a1 + 40);
  v7 = [(WFCoreDataRunEvent *)v4 shortcut];
  [v7 setLastRunEventDate:v6];

  v8 = [(WFCoreDataRunEvent *)v4 shortcut];
  v9 = [v8 source];
  if ([v9 isEqualToString:@"ShortcutSourceUnknown"] & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", @"ShortcutSourceOnDevice") & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", @"ShortcutSourceGallery") & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", @"ShortcutSourceAddToSiri") & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", @"ShortcutSourceCloudLink"))
  {
LABEL_6:

    goto LABEL_7;
  }

  if (([v9 isEqualToString:@"ShortcutSourceDefaultShortcut"] & 1) == 0)
  {
    if (([v9 isEqualToString:@"ShortcutSourceSiriTopLevelShortcut"] & 1) == 0 && (objc_msgSend(v9, "isEqualToString:", @"ShortcutSourceAutomatorMigration") & 1) == 0 && (objc_msgSend(v9, "isEqualToString:", @"ShortcutSourceFilePublic") & 1) == 0 && (objc_msgSend(v9, "isEqualToString:", @"ShortcutSourceFileKnownContacts") & 1) == 0 && (objc_msgSend(v9, "isEqualToString:", @"ShortcutSourceFilePersonal") & 1) == 0 && (objc_msgSend(v9, "isEqualToString:", @"ShortcutSourceEditorDocumentMenu") & 1) == 0 && (objc_msgSend(v9, "isEqualToString:", @"ShortcutSourceAppShortcut") & 1) == 0)
    {
      [v9 isEqualToString:@"ShortcutSourceActiveStarterShortcut"];
    }

    goto LABEL_6;
  }

  v8 = [(WFCoreDataRunEvent *)v4 shortcut];
  [v8 setSource:@"ShortcutSourceActiveStarterShortcut"];
LABEL_7:

  if (*(a1 + 72))
  {
    v10 = [*(a1 + 32) objectOfClass:objc_opt_class() withIdentifier:*(a1 + 72) forKey:@"identifier" createIfNecessary:0 properties:0];
    [(WFCoreDataRunEvent *)v4 setTrigger:v10];
  }

  v11 = [(WFCoreDataRunEvent *)v4 descriptor];
  [*(a1 + 32) addPendingInsertedDescriptor:v11];

  return v11;
}

- (id)logRunOfWorkflow:(id)a3 withSource:(id)a4 triggerID:(id)a5
{
  v8 = MEMORY[0x1E695DF00];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 date];
  v13 = [MEMORY[0x1E696AFB0] UUID];
  v14 = [v13 UUIDString];
  v15 = [(WFDatabase *)self logRunOfWorkflow:v11 atDate:v12 withIdentifier:v14 source:v10 triggerID:v9];

  return v15;
}

- (void)removeAllSerializedParametersForQueryName:(id)a3 error:(id *)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __93__WFDatabase_PersistedSerializedParameters__removeAllSerializedParametersForQueryName_error___block_invoke;
  v8[3] = &unk_1E837F978;
  v9 = v6;
  v10 = self;
  v7 = v6;
  [(WFDatabase *)self performTransactionWithReason:@"delete all serialized parameters for query" block:v8 error:a4];
}

void __93__WFDatabase_PersistedSerializedParameters__removeAllSerializedParametersForQueryName_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v8 = +[WFPersistedSerializedParameters fetchRequest];
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %@", @"queryName", *(a1 + 32)];
  [v8 setPredicate:v4];

  v5 = [objc_alloc(MEMORY[0x1E695D538]) initWithFetchRequest:v8];
  v6 = [*(a1 + 40) context];
  v7 = [v6 executeRequest:v5 error:a2];
}

- (void)storeSerializedParameters:(id)a3 forIdentifier:(id)a4 queryName:(id)a5 badgeType:(unint64_t)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __111__WFDatabase_PersistedSerializedParameters__storeSerializedParameters_forIdentifier_queryName_badgeType_error___block_invoke;
  v19[3] = &unk_1E837F950;
  v19[4] = self;
  v20 = v13;
  v21 = v12;
  v22 = v14;
  v23 = a6;
  v15 = v14;
  v16 = v12;
  v17 = v13;
  v18 = [(WFDatabase *)self performSaveOperationWithReason:@"save serialized parameters" block:v19 error:a7];
}

WFPersistedSerializedParameters *__111__WFDatabase_PersistedSerializedParameters__storeSerializedParameters_forIdentifier_queryName_badgeType_error___block_invoke(uint64_t a1)
{
  v2 = [WFPersistedSerializedParameters alloc];
  v3 = [*(a1 + 32) context];
  v4 = [(WFPersistedSerializedParameters *)v2 initWithContext:v3];

  [(WFPersistedSerializedParameters *)v4 setIdentifier:*(a1 + 40)];
  [(WFPersistedSerializedParameters *)v4 setData:*(a1 + 48)];
  [(WFPersistedSerializedParameters *)v4 setQueryName:*(a1 + 56)];
  [(WFPersistedSerializedParameters *)v4 setBadgeType:*(a1 + 64)];

  return v4;
}

- (id)serializedParametersForIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __85__WFDatabase_PersistedSerializedParameters__serializedParametersForIdentifier_error___block_invoke;
  v10[3] = &unk_1E837F928;
  v11 = v6;
  v12 = self;
  v7 = v6;
  v8 = [(WFDatabase *)self performOperationWithReason:@"getting serialized parameters" block:v10 error:a4];

  return v8;
}

id __85__WFDatabase_PersistedSerializedParameters__serializedParametersForIdentifier_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = +[WFPersistedSerializedParameters fetchRequest];
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %@", @"identifier", *(a1 + 32)];
  [v4 setPredicate:v5];

  v6 = [*(a1 + 40) context];
  v7 = [v6 executeFetchRequest:v4 error:a2];
  v8 = [v7 firstObject];

  v9 = [v8 data];

  return v9;
}

- (id)badgeTypeForEntityIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __80__WFDatabase_PersistedSerializedParameters__badgeTypeForEntityIdentifier_error___block_invoke;
  v10[3] = &unk_1E837F900;
  v11 = v6;
  v12 = self;
  v7 = v6;
  v8 = [(WFDatabase *)self performOperationWithReason:@"getting entity badge" block:v10 error:a4];

  return v8;
}

id __80__WFDatabase_PersistedSerializedParameters__badgeTypeForEntityIdentifier_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = +[WFPersistedSerializedParameters fetchRequest];
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %@", @"identifier", *(a1 + 32)];
  [v4 setPredicate:v5];

  v6 = [*(a1 + 40) context];
  v7 = [v6 executeFetchRequest:v4 error:a2];
  v8 = [v7 firstObject];

  v9 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v8, "badgeType")}];

  return v9;
}

@end