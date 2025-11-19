@interface PLDelayedSaveActions
+ (void)_addHighlightRelationshipChangesFromChangedValues:(id)a3 onAsset:(id)a4 intoChange:(id)a5 forRelationshipNamed:(id)a6;
+ (void)_checkForHighlightChangesOnToManyRelationshipNamed:(id)a3 andAddIntoChange:(id)a4 givenOldValue:(id)a5 andNewValue:(id)a6;
+ (void)_checkForHighlightChangesOnToOneRelationshipNamed:(id)a3 andAddIntoChange:(id)a4 givenOldValue:(id)a5 andNewValue:(id)a6;
- (PLDelayedSaveActions)initWithClientTransaction:(id)a3;
- (id)_existingSharedAssetChangeContainerForAsset:(id)a3;
- (id)popDelayedSaveActionsDetail;
- (void)_popAlbumCountChangesIntoDetail:(id)a3;
- (void)_popAlbumKeyAssetsChangesIntoDetail:(id)a3;
- (void)_popAlbumTrashIntoDetail:(id)a3;
- (void)_popAssetIDsByPersonUUIDNeedingSocialGroupContainmentUpdateIntoDetail:(id)a3;
- (void)_popAssetIDsNeedingAssetPersonEdgeUpdateIntoDetail:(id)a3;
- (void)_popAssetIDsNeedingSocialGroupContainmentUpdateIntoDetail:(id)a3;
- (void)_popAssetsForFilesystemPersistencyChangesIntoDetail:(id)a3;
- (void)_popBackgroundUploadEventUpdatedIntoDetail:(id)a3;
- (void)_popCloudFeedChangesIntoDetail:(id)a3;
- (void)_popDelayedAlbumCountsAndDateRangeUpdates:(id *)a3;
- (void)_popDelayedAlbumKeyAssetsUpdates:(id *)a3;
- (void)_popDelayedAssetsForAnalysis:(id *)a3;
- (void)_popDelayedAssetsForFilesystemPersistencyUpdates:(id *)a3;
- (void)_popDelayedCloudFeedAlbumUpdates:(id *)a3 collectionShareUpdates:(id *)a4 collectionShareDeletes:(id *)a5 assetInserts:(id *)a6 assetUpdates:(id *)a7 commentInserts:(id *)a8 invitationRecordUpdates:(id *)a9 shareParticipantUpdates:(id *)a10 shareParticipantDeletes:(id *)a11 deletionEntries:(id *)a12;
- (void)_popDelayedImportSessionCountsAndDateRangeUpdates:(id *)a3;
- (void)_popDelayedMomentInsertsAndUpdates:(id *)a3 deletes:(id *)a4 updatedAssetIDsForHighlights:(id *)a5 updatedMomentIDsForHighlights:(id *)a6 sharedAssetContainerIncrementalChanges:(id *)a7;
- (void)_popDuetDeletedAssetsIntoDetail:(id)a3;
- (void)_popDuetDeletedMemoriesIntoDetail:(id)a3;
- (void)_popFeaturedContentUpdateNeededForPerson:(id)a3;
- (void)_popImportSessionCountChangesIntoDetail:(id)a3;
- (void)_popLibraryScopeParticipantsUpdateIntoDetail:(id)a3;
- (void)_popLibraryScopeRulesUpdatedIntoDetail:(id)a3;
- (void)_popMemberIDsOfGroupNeedingContainmentUpdateIntoDetail:(id)a3;
- (void)_popMembersOfGroupsNeedingDeduplicationIntoDetail:(id)a3;
- (void)_popMemoryAssetUpdateIntoDetail:(id)a3;
- (void)_popMomentChangesIntoDetail:(id)a3;
- (void)_popSocialGroupNodeIDsNeedingDeduplicationIntoDetail:(id)a3;
- (void)_popWallpaperFavoriteAlbumAssetRemovalReloadNeeded:(id)a3;
- (void)_popWallpaperSuggestionReloadIntoDetail:(id)a3;
- (void)_popWallpaperUserAlbumAssetRemovalReloadNeeded:(id)a3;
- (void)_popWidgetFavoriteAlbumAssetRemovalReloadNeeded:(id)a3;
- (void)_popWidgetTimelineReloadNeeded:(id)a3;
- (void)_popWidgetUserAlbumAssetRemovalReloadNeeded:(id)a3;
- (void)_recordDelayedAlbumCountsAndDateRangeUpdate:(id)a3;
- (void)_recordDelayedAlbumKeyAssetsUpdate:(id)a3;
- (void)_recordDelayedCloudFeedAlbumUpdate:(id)a3;
- (void)_recordDelayedCloudFeedAssetInsert:(id)a3;
- (void)_recordDelayedCloudFeedAssetUpdate:(id)a3;
- (void)_recordDelayedCloudFeedCollectionShareDelete:(id)a3;
- (void)_recordDelayedCloudFeedCollectionShareUpdate:(id)a3;
- (void)_recordDelayedCloudFeedCommentInsert:(id)a3;
- (void)_recordDelayedCloudFeedDeletionEntries:(id)a3;
- (void)_recordDelayedCloudFeedInvitationRecordUpdate:(id)a3;
- (void)_recordDelayedCloudFeedShareParticipantDelete:(id)a3;
- (void)_recordDelayedCloudFeedShareParticipantUpdate:(id)a3;
- (void)_recordDelayedHighlightMomentUpdates:(id)a3;
- (void)_recordDelayedImportSessionCountsAndDateRangeUpdate:(id)a3;
- (void)_recordDelayedMomentAssetDeletionsDictionary:(id)a3 forKey:(id)a4;
- (void)_recordDelayedMomentAssetUpdates:(id)a3;
- (void)_recordSharedAssetIncrementalChange:(id)a3 forAsset:(id)a4;
- (void)persistDelayedActionsScope:(id)a3;
- (void)recordAdditionalAssetAttributesForMomentUpdate:(id)a3;
- (void)recordAlbumForCloudFeedUpdate:(id)a3;
- (void)recordAlbumForCountsAndDateRangeUpdate:(id)a3;
- (void)recordAlbumForKeyAssetsUpdate:(id)a3;
- (void)recordAlbumForTrashUpdate:(id)a3;
- (void)recordAssetForAlbumCountsDateRangeAndKeyAssetsUpdate:(id)a3;
- (void)recordAssetForAnalysis:(id)a3 workerFlags:(int)a4 workerType:(signed __int16)a5;
- (void)recordAssetForCloudFeedUpdate:(id)a3;
- (void)recordAssetForDuetDelete:(id)a3;
- (void)recordAssetForFileSystemPersistencyUpdate:(id)a3;
- (void)recordAssetForImportSessionCountsAndDateRangeUpdate:(id)a3;
- (void)recordAssetForMomentUpdate:(id)a3;
- (void)recordAssetID:(id)a3 forWallpaperUserAlbumRemoval:(id)a4;
- (void)recordAssetID:(id)a3 forWidgetUserAlbumRemoval:(id)a4;
- (void)recordAssetIDForWallpaperFavoriteAlbumRemoval:(id)a3;
- (void)recordAssetIDForWidgetFavoriteAlbumRemoval:(id)a3;
- (void)recordAssetPersonEdgeUpdateNeededForAsset:(id)a3;
- (void)recordCloudFeedAssetsEntryForAssetUpdate:(id)a3;
- (void)recordCloudFeedCommentsEntryForCommentUpdate:(id)a3;
- (void)recordCollectionShareForCloudFeedUpdate:(id)a3;
- (void)recordCommentForCloudFeedUpdate:(id)a3;
- (void)recordDeduplicationNeededForGroupsContainingMember:(id)a3;
- (void)recordDeduplicationNeededForNewGroupNode:(id)a3;
- (void)recordFeaturedContentUpdateNeededForPersonUUID:(id)a3;
- (void)recordImportSessionCountsAndDateRangeUpdate:(id)a3;
- (void)recordInvitationRecordForCloudFeedUpdate:(id)a3;
- (void)recordLibraryScopeParticipantsUpdateForLibraryScope:(id)a3;
- (void)recordMemoryAssetsUpdate:(id)a3;
- (void)recordMemoryForDuetDelete:(id)a3;
- (void)recordMomentForHighlightUpdate:(id)a3;
- (void)recordShareParticipantForCloudFeedUpdate:(id)a3;
- (void)recordSocialGroupContainmentUpdateNeededForAsset:(id)a3;
- (void)recordSocialGroupContainmentUpdateNeededForPerson:(id)a3;
- (void)recordSocialGroupContainmentUpdateNeededForPerson:(id)a3 andAsset:(id)a4;
- (void)recordWallpaperSuggestionReloadForUUID:(id)a3;
- (void)recordWidgetTimelineReloadNeededForType:(int64_t)a3;
@end

@implementation PLDelayedSaveActions

- (id)popDelayedSaveActionsDetail
{
  v3 = objc_alloc_init(PLDelayedSaveActionsDetail);
  [(PLDelayedSaveActions *)self _popCloudFeedChangesIntoDetail:v3];
  [(PLDelayedSaveActions *)self _popMomentChangesIntoDetail:v3];
  [(PLDelayedSaveActions *)self _popAssetsForFilesystemPersistencyChangesIntoDetail:v3];
  [(PLDelayedSaveActions *)self _popAlbumCountChangesIntoDetail:v3];
  [(PLDelayedSaveActions *)self _popAlbumKeyAssetsChangesIntoDetail:v3];
  [(PLDelayedSaveActions *)self _popAlbumTrashIntoDetail:v3];
  [(PLDelayedSaveActions *)self _popImportSessionCountChangesIntoDetail:v3];
  [(PLDelayedSaveActions *)self _popDuetDeletedAssetsIntoDetail:v3];
  [(PLDelayedSaveActions *)self _popDuetDeletedMemoriesIntoDetail:v3];
  [(PLDelayedSaveActions *)self _popWidgetTimelineReloadNeeded:v3];
  [(PLDelayedSaveActions *)self _popWidgetUserAlbumAssetRemovalReloadNeeded:v3];
  [(PLDelayedSaveActions *)self _popWidgetFavoriteAlbumAssetRemovalReloadNeeded:v3];
  [(PLDelayedSaveActions *)self _popWallpaperUserAlbumAssetRemovalReloadNeeded:v3];
  [(PLDelayedSaveActions *)self _popWallpaperFavoriteAlbumAssetRemovalReloadNeeded:v3];
  [(PLDelayedSaveActions *)self _popFeaturedContentUpdateNeededForPerson:v3];
  [(PLDelayedSaveActions *)self _popMemoryAssetUpdateIntoDetail:v3];
  [(PLDelayedSaveActions *)self _popWallpaperSuggestionReloadIntoDetail:v3];
  [(PLDelayedSaveActions *)self _popLibraryScopeParticipantsUpdateIntoDetail:v3];
  [(PLDelayedSaveActions *)self _popLibraryScopeRulesUpdatedIntoDetail:v3];
  [(PLDelayedSaveActions *)self _popMemberIDsOfGroupNeedingContainmentUpdateIntoDetail:v3];
  [(PLDelayedSaveActions *)self _popAssetIDsNeedingSocialGroupContainmentUpdateIntoDetail:v3];
  [(PLDelayedSaveActions *)self _popAssetIDsByPersonUUIDNeedingSocialGroupContainmentUpdateIntoDetail:v3];
  [(PLDelayedSaveActions *)self _popAssetIDsNeedingAssetPersonEdgeUpdateIntoDetail:v3];
  [(PLDelayedSaveActions *)self _popSocialGroupNodeIDsNeedingDeduplicationIntoDetail:v3];
  [(PLDelayedSaveActions *)self _popMembersOfGroupsNeedingDeduplicationIntoDetail:v3];
  [(PLDelayedSaveActions *)self _popBackgroundUploadEventUpdatedIntoDetail:v3];

  return v3;
}

- (void)_popBackgroundUploadEventUpdatedIntoDetail:(id)a3
{
  if (self->_delayedBackgroundUploadEventUpdated)
  {
    [a3 setBackgroundUploadEventUpdated:1];
    self->_delayedBackgroundUploadEventUpdated = 0;
  }
}

- (void)_popAssetIDsNeedingAssetPersonEdgeUpdateIntoDetail:(id)a3
{
  delayedAssetPersonEdgeUpdatesNeededForAssets = self->_delayedAssetPersonEdgeUpdatesNeededForAssets;
  if (delayedAssetPersonEdgeUpdatesNeededForAssets)
  {
    v5 = MEMORY[0x1E695DFD8];
    v6 = a3;
    v7 = [(NSMutableSet *)delayedAssetPersonEdgeUpdatesNeededForAssets valueForKey:@"objectID"];
    v8 = [v5 setWithSet:v7];
    [v6 setAssetIDsNeedingAssetPersonEdgeUpdates:v8];

    v9 = self->_delayedAssetPersonEdgeUpdatesNeededForAssets;
  }

  else
  {
    v9 = 0;
  }

  [(NSMutableSet *)v9 removeAllObjects];
}

- (void)recordAssetPersonEdgeUpdateNeededForAsset:(id)a3
{
  v4 = a3;
  delayedAssetPersonEdgeUpdatesNeededForAssets = self->_delayedAssetPersonEdgeUpdatesNeededForAssets;
  v8 = v4;
  if (!delayedAssetPersonEdgeUpdatesNeededForAssets)
  {
    v6 = [MEMORY[0x1E695DFA8] set];
    v7 = self->_delayedAssetPersonEdgeUpdatesNeededForAssets;
    self->_delayedAssetPersonEdgeUpdatesNeededForAssets = v6;

    v4 = v8;
    delayedAssetPersonEdgeUpdatesNeededForAssets = self->_delayedAssetPersonEdgeUpdatesNeededForAssets;
  }

  [(NSMutableSet *)delayedAssetPersonEdgeUpdatesNeededForAssets addObject:v4];
  [(PLDelayedSaveActions *)self persistDelayedActionsScope:@"PLTransactionScopeSocialGroupAssetPersonEdges"];
}

- (void)_popMembersOfGroupsNeedingDeduplicationIntoDetail:(id)a3
{
  delayedDeduplicationNeededForSocialGroupsContainingMembers = self->_delayedDeduplicationNeededForSocialGroupsContainingMembers;
  if (delayedDeduplicationNeededForSocialGroupsContainingMembers)
  {
    v5 = a3;
    v6 = [(NSMutableSet *)delayedDeduplicationNeededForSocialGroupsContainingMembers valueForKey:@"objectID"];
    v7 = [v6 copy];
    [v5 setMemberIDsOfSocialGroupsNeedingDeduplication:v7];

    v8 = self->_delayedDeduplicationNeededForSocialGroupsContainingMembers;
  }

  else
  {
    v8 = 0;
  }

  [(NSMutableSet *)v8 removeAllObjects];
}

- (void)recordDeduplicationNeededForGroupsContainingMember:(id)a3
{
  v4 = a3;
  delayedDeduplicationNeededForSocialGroupsContainingMembers = self->_delayedDeduplicationNeededForSocialGroupsContainingMembers;
  v8 = v4;
  if (!delayedDeduplicationNeededForSocialGroupsContainingMembers)
  {
    v6 = [MEMORY[0x1E695DFA8] set];
    v7 = self->_delayedDeduplicationNeededForSocialGroupsContainingMembers;
    self->_delayedDeduplicationNeededForSocialGroupsContainingMembers = v6;

    v4 = v8;
    delayedDeduplicationNeededForSocialGroupsContainingMembers = self->_delayedDeduplicationNeededForSocialGroupsContainingMembers;
  }

  [(NSMutableSet *)delayedDeduplicationNeededForSocialGroupsContainingMembers addObject:v4];
  [(PLDelayedSaveActions *)self persistDelayedActionsScope:@"PLTransactionScopeSocialGroupDeduplication"];
}

- (void)_popSocialGroupNodeIDsNeedingDeduplicationIntoDetail:(id)a3
{
  delayedSocialGroupNodesNeedingDeduplication = self->_delayedSocialGroupNodesNeedingDeduplication;
  if (delayedSocialGroupNodesNeedingDeduplication)
  {
    v5 = a3;
    v6 = [(NSMutableSet *)delayedSocialGroupNodesNeedingDeduplication valueForKey:@"objectID"];
    v7 = [v6 copy];
    [v5 setSocialGroupNodeIDsNeedingDeduplication:v7];

    v8 = self->_delayedSocialGroupNodesNeedingDeduplication;
  }

  else
  {
    v8 = 0;
  }

  [(NSMutableSet *)v8 removeAllObjects];
}

- (void)recordDeduplicationNeededForNewGroupNode:(id)a3
{
  v4 = a3;
  delayedSocialGroupNodesNeedingDeduplication = self->_delayedSocialGroupNodesNeedingDeduplication;
  v8 = v4;
  if (!delayedSocialGroupNodesNeedingDeduplication)
  {
    v6 = [MEMORY[0x1E695DFA8] set];
    v7 = self->_delayedSocialGroupNodesNeedingDeduplication;
    self->_delayedSocialGroupNodesNeedingDeduplication = v6;

    v4 = v8;
    delayedSocialGroupNodesNeedingDeduplication = self->_delayedSocialGroupNodesNeedingDeduplication;
  }

  [(NSMutableSet *)delayedSocialGroupNodesNeedingDeduplication addObject:v4];
  [(PLDelayedSaveActions *)self persistDelayedActionsScope:@"PLTransactionScopeSocialGroupDeduplication"];
}

- (void)_popAssetIDsByPersonUUIDNeedingSocialGroupContainmentUpdateIntoDetail:(id)a3
{
  if (self->_delayedAssetsByPersonUUIDNeedingContainmentUpdates)
  {
    v4 = MEMORY[0x1E695DF90];
    v5 = a3;
    v6 = [v4 dictionary];
    delayedAssetsByPersonUUIDNeedingContainmentUpdates = self->_delayedAssetsByPersonUUIDNeedingContainmentUpdates;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __94__PLDelayedSaveActions__popAssetIDsByPersonUUIDNeedingSocialGroupContainmentUpdateIntoDetail___block_invoke;
    v11[3] = &unk_1E7575AD0;
    v12 = v6;
    v8 = v6;
    [(NSMutableDictionary *)delayedAssetsByPersonUUIDNeedingContainmentUpdates enumerateKeysAndObjectsUsingBlock:v11];
    v9 = [v8 copy];
    [v5 setAssetIDsByPersonUUIDNeedingContainmentUpdates:v9];

    v10 = self->_delayedAssetsByPersonUUIDNeedingContainmentUpdates;
  }

  else
  {
    v10 = 0;
  }

  [(NSMutableDictionary *)v10 removeAllObjects];
}

void __94__PLDelayedSaveActions__popAssetIDsByPersonUUIDNeedingSocialGroupContainmentUpdateIntoDetail___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v7 = [a3 valueForKey:@"objectID"];
  v6 = [v7 copy];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

- (void)recordSocialGroupContainmentUpdateNeededForPerson:(id)a3 andAsset:(id)a4
{
  v18 = a3;
  v6 = a4;
  delayedAssetsByPersonUUIDNeedingContainmentUpdates = self->_delayedAssetsByPersonUUIDNeedingContainmentUpdates;
  if (!delayedAssetsByPersonUUIDNeedingContainmentUpdates)
  {
    v8 = [MEMORY[0x1E695DF90] dictionary];
    v9 = self->_delayedAssetsByPersonUUIDNeedingContainmentUpdates;
    self->_delayedAssetsByPersonUUIDNeedingContainmentUpdates = v8;

    delayedAssetsByPersonUUIDNeedingContainmentUpdates = self->_delayedAssetsByPersonUUIDNeedingContainmentUpdates;
  }

  v10 = [v18 personUUID];
  v11 = [(NSMutableDictionary *)delayedAssetsByPersonUUIDNeedingContainmentUpdates objectForKeyedSubscript:v10];

  if (!v11)
  {
    v12 = [MEMORY[0x1E695DFA8] set];
    v13 = self->_delayedAssetsByPersonUUIDNeedingContainmentUpdates;
    v14 = [v18 personUUID];
    [(NSMutableDictionary *)v13 setObject:v12 forKeyedSubscript:v14];
  }

  v15 = self->_delayedAssetsByPersonUUIDNeedingContainmentUpdates;
  v16 = [v18 personUUID];
  v17 = [(NSMutableDictionary *)v15 objectForKeyedSubscript:v16];
  [v17 addObject:v6];

  [(PLDelayedSaveActions *)self persistDelayedActionsScope:@"PLTransactionScopeSocialGroupAssetContainment"];
}

- (void)_popAssetIDsNeedingSocialGroupContainmentUpdateIntoDetail:(id)a3
{
  delayedAssetsNeedingSocialGroupContainmentUpdates = self->_delayedAssetsNeedingSocialGroupContainmentUpdates;
  if (delayedAssetsNeedingSocialGroupContainmentUpdates)
  {
    v5 = MEMORY[0x1E695DFD8];
    v6 = a3;
    v7 = [(NSMutableSet *)delayedAssetsNeedingSocialGroupContainmentUpdates valueForKey:@"objectID"];
    v8 = [v5 setWithSet:v7];
    [v6 setAssetIDsNeedingContainmentUpdates:v8];

    v9 = self->_delayedAssetsNeedingSocialGroupContainmentUpdates;
  }

  else
  {
    v9 = 0;
  }

  [(NSMutableSet *)v9 removeAllObjects];
}

- (void)recordSocialGroupContainmentUpdateNeededForAsset:(id)a3
{
  v4 = a3;
  delayedAssetsNeedingSocialGroupContainmentUpdates = self->_delayedAssetsNeedingSocialGroupContainmentUpdates;
  v8 = v4;
  if (!delayedAssetsNeedingSocialGroupContainmentUpdates)
  {
    v6 = [MEMORY[0x1E695DFA8] set];
    v7 = self->_delayedAssetsNeedingSocialGroupContainmentUpdates;
    self->_delayedAssetsNeedingSocialGroupContainmentUpdates = v6;

    v4 = v8;
    delayedAssetsNeedingSocialGroupContainmentUpdates = self->_delayedAssetsNeedingSocialGroupContainmentUpdates;
  }

  [(NSMutableSet *)delayedAssetsNeedingSocialGroupContainmentUpdates addObject:v4];
  [(PLDelayedSaveActions *)self persistDelayedActionsScope:@"PLTransactionScopeSocialGroupAssetContainment"];
}

- (void)_popMemberIDsOfGroupNeedingContainmentUpdateIntoDetail:(id)a3
{
  delayedSocialGroupMembersOfGroupsNeedingContainmentUpdates = self->_delayedSocialGroupMembersOfGroupsNeedingContainmentUpdates;
  if (delayedSocialGroupMembersOfGroupsNeedingContainmentUpdates)
  {
    v5 = MEMORY[0x1E695DFD8];
    v6 = a3;
    v7 = [(NSMutableSet *)delayedSocialGroupMembersOfGroupsNeedingContainmentUpdates valueForKey:@"objectID"];
    v8 = [v5 setWithSet:v7];
    [v6 setMemberIDsOfSocialGroupsNeedingContainmentUpdates:v8];

    v9 = self->_delayedSocialGroupMembersOfGroupsNeedingContainmentUpdates;
  }

  else
  {
    v9 = 0;
  }

  [(NSMutableSet *)v9 removeAllObjects];
}

- (void)recordSocialGroupContainmentUpdateNeededForPerson:(id)a3
{
  v4 = a3;
  delayedSocialGroupMembersOfGroupsNeedingContainmentUpdates = self->_delayedSocialGroupMembersOfGroupsNeedingContainmentUpdates;
  v8 = v4;
  if (!delayedSocialGroupMembersOfGroupsNeedingContainmentUpdates)
  {
    v6 = [MEMORY[0x1E695DFA8] set];
    v7 = self->_delayedSocialGroupMembersOfGroupsNeedingContainmentUpdates;
    self->_delayedSocialGroupMembersOfGroupsNeedingContainmentUpdates = v6;

    v4 = v8;
    delayedSocialGroupMembersOfGroupsNeedingContainmentUpdates = self->_delayedSocialGroupMembersOfGroupsNeedingContainmentUpdates;
  }

  [(NSMutableSet *)delayedSocialGroupMembersOfGroupsNeedingContainmentUpdates addObject:v4];
  [(PLDelayedSaveActions *)self persistDelayedActionsScope:@"PLTransactionScopeSocialGroupAssetContainment"];
}

- (void)_popLibraryScopeRulesUpdatedIntoDetail:(id)a3
{
  if (self->_delayedLibraryScopeRulesUpdated)
  {
    [a3 setLibraryScopeRulesUpdated:1];
    self->_delayedLibraryScopeRulesUpdated = 0;
  }
}

- (void)_popLibraryScopeParticipantsUpdateIntoDetail:(id)a3
{
  v5 = a3;
  if ([(NSMutableSet *)self->_delayedLibraryScopeParticipantsUpdateUUIDs count])
  {
    v4 = [(NSMutableSet *)self->_delayedLibraryScopeParticipantsUpdateUUIDs copy];
    [v5 setLibraryScopeParticipantsForUpdate:v4];

    [(NSMutableSet *)self->_delayedLibraryScopeParticipantsUpdateUUIDs removeAllObjects];
  }
}

- (void)recordLibraryScopeParticipantsUpdateForLibraryScope:(id)a3
{
  v4 = [a3 uuid];
  if (v4)
  {
    delayedLibraryScopeParticipantsUpdateUUIDs = self->_delayedLibraryScopeParticipantsUpdateUUIDs;
    v8 = v4;
    if (!delayedLibraryScopeParticipantsUpdateUUIDs)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v7 = self->_delayedLibraryScopeParticipantsUpdateUUIDs;
      self->_delayedLibraryScopeParticipantsUpdateUUIDs = v6;

      delayedLibraryScopeParticipantsUpdateUUIDs = self->_delayedLibraryScopeParticipantsUpdateUUIDs;
    }

    [(NSMutableSet *)delayedLibraryScopeParticipantsUpdateUUIDs addObject:v8];
    v4 = v8;
  }
}

- (void)_popMemoryAssetUpdateIntoDetail:(id)a3
{
  v5 = a3;
  if ([(NSMutableSet *)self->_delayedMemoriesAssetUpdate count])
  {
    v4 = [(NSMutableSet *)self->_delayedMemoriesAssetUpdate copy];
    [v5 setMemoriesForAssetUpdate:v4];

    [(NSMutableSet *)self->_delayedMemoriesAssetUpdate removeAllObjects];
  }
}

- (void)recordMemoryAssetsUpdate:(id)a3
{
  v4 = a3;
  delayedMemoriesAssetUpdate = self->_delayedMemoriesAssetUpdate;
  v9 = v4;
  if (!delayedMemoriesAssetUpdate)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v7 = self->_delayedMemoriesAssetUpdate;
    self->_delayedMemoriesAssetUpdate = v6;

    v4 = v9;
    delayedMemoriesAssetUpdate = self->_delayedMemoriesAssetUpdate;
  }

  v8 = [v4 uuid];
  [(NSMutableSet *)delayedMemoriesAssetUpdate addObject:v8];
}

- (void)_popFeaturedContentUpdateNeededForPerson:(id)a3
{
  v5 = a3;
  [v5 setPersonsToUpdateForFeaturedContent:self->_delayedFeaturedContentUpdateNeededForPerson];
  delayedFeaturedContentUpdateNeededForPerson = self->_delayedFeaturedContentUpdateNeededForPerson;
  self->_delayedFeaturedContentUpdateNeededForPerson = 0;

  if (self->_delayedFeaturedContentUpdateNeeded)
  {
    [v5 setShouldUpdateFeaturedContent:1];
    self->_delayedFeaturedContentUpdateNeeded = 0;
  }
}

- (void)recordFeaturedContentUpdateNeededForPersonUUID:(id)a3
{
  v4 = a3;
  delayedFeaturedContentUpdateNeededForPerson = self->_delayedFeaturedContentUpdateNeededForPerson;
  v8 = v4;
  if (v4)
  {
    if (!delayedFeaturedContentUpdateNeededForPerson)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v7 = self->_delayedFeaturedContentUpdateNeededForPerson;
      self->_delayedFeaturedContentUpdateNeededForPerson = v6;

      v4 = v8;
      delayedFeaturedContentUpdateNeededForPerson = self->_delayedFeaturedContentUpdateNeededForPerson;
    }

    [(NSMutableSet *)delayedFeaturedContentUpdateNeededForPerson addObject:v4];
  }

  else
  {
    self->_delayedFeaturedContentUpdateNeededForPerson = 0;
  }

  self->_delayedFeaturedContentUpdateNeeded = 1;
}

- (void)_popWallpaperSuggestionReloadIntoDetail:(id)a3
{
  v5 = a3;
  if ([(NSMutableSet *)self->_delayedWallpaperSuggestionUUIDs count])
  {
    v4 = [(NSMutableSet *)self->_delayedWallpaperSuggestionUUIDs copy];
    [v5 setWallpaperSuggestionReloadUUIDs:v4];

    [(NSMutableSet *)self->_delayedWallpaperSuggestionUUIDs removeAllObjects];
  }
}

- (void)recordWallpaperSuggestionReloadForUUID:(id)a3
{
  v4 = a3;
  delayedWallpaperSuggestionUUIDs = self->_delayedWallpaperSuggestionUUIDs;
  v8 = v4;
  if (!delayedWallpaperSuggestionUUIDs)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v7 = self->_delayedWallpaperSuggestionUUIDs;
    self->_delayedWallpaperSuggestionUUIDs = v6;

    v4 = v8;
    delayedWallpaperSuggestionUUIDs = self->_delayedWallpaperSuggestionUUIDs;
  }

  [(NSMutableSet *)delayedWallpaperSuggestionUUIDs addObject:v4];
}

- (void)_popWallpaperFavoriteAlbumAssetRemovalReloadNeeded:(id)a3
{
  delayedWallpaperFavoriteAlbumAssetRemovalNeeded = self->_delayedWallpaperFavoriteAlbumAssetRemovalNeeded;
  if (delayedWallpaperFavoriteAlbumAssetRemovalNeeded)
  {
    v5 = a3;
    v6 = [(NSMutableSet *)delayedWallpaperFavoriteAlbumAssetRemovalNeeded copy];
    [v5 setAssetsForWallpaperFavoriteAlbumRemoval:v6];

    v7 = self->_delayedWallpaperFavoriteAlbumAssetRemovalNeeded;

    [(NSMutableSet *)v7 removeAllObjects];
  }
}

- (void)recordAssetIDForWallpaperFavoriteAlbumRemoval:(id)a3
{
  v4 = a3;
  delayedWallpaperFavoriteAlbumAssetRemovalNeeded = self->_delayedWallpaperFavoriteAlbumAssetRemovalNeeded;
  v8 = v4;
  if (!delayedWallpaperFavoriteAlbumAssetRemovalNeeded)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v7 = self->_delayedWallpaperFavoriteAlbumAssetRemovalNeeded;
    self->_delayedWallpaperFavoriteAlbumAssetRemovalNeeded = v6;

    v4 = v8;
    delayedWallpaperFavoriteAlbumAssetRemovalNeeded = self->_delayedWallpaperFavoriteAlbumAssetRemovalNeeded;
  }

  [(NSMutableSet *)delayedWallpaperFavoriteAlbumAssetRemovalNeeded addObject:v4];
}

- (void)_popWallpaperUserAlbumAssetRemovalReloadNeeded:(id)a3
{
  delayedWallpaperUserAlbumAssetRemovalNeeded = self->_delayedWallpaperUserAlbumAssetRemovalNeeded;
  if (delayedWallpaperUserAlbumAssetRemovalNeeded)
  {
    v5 = a3;
    v6 = [(NSMutableDictionary *)delayedWallpaperUserAlbumAssetRemovalNeeded copy];
    [v5 setAssetsForWallpaperUserAlbumRemoval:v6];

    v7 = self->_delayedWallpaperUserAlbumAssetRemovalNeeded;

    [(NSMutableDictionary *)v7 removeAllObjects];
  }
}

- (void)recordAssetID:(id)a3 forWallpaperUserAlbumRemoval:(id)a4
{
  v14 = a3;
  v6 = a4;
  delayedWallpaperUserAlbumAssetRemovalNeeded = self->_delayedWallpaperUserAlbumAssetRemovalNeeded;
  if (!delayedWallpaperUserAlbumAssetRemovalNeeded)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9 = self->_delayedWallpaperUserAlbumAssetRemovalNeeded;
    self->_delayedWallpaperUserAlbumAssetRemovalNeeded = v8;

    delayedWallpaperUserAlbumAssetRemovalNeeded = self->_delayedWallpaperUserAlbumAssetRemovalNeeded;
  }

  v10 = [(NSMutableDictionary *)delayedWallpaperUserAlbumAssetRemovalNeeded objectForKeyedSubscript:v14];

  if (!v10)
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(NSMutableDictionary *)self->_delayedWallpaperUserAlbumAssetRemovalNeeded setObject:v11 forKeyedSubscript:v14];
  }

  v12 = [(NSMutableDictionary *)self->_delayedWallpaperUserAlbumAssetRemovalNeeded objectForKeyedSubscript:v14];
  v13 = [v6 uuid];
  [v12 addObject:v13];
}

- (void)_popWidgetFavoriteAlbumAssetRemovalReloadNeeded:(id)a3
{
  delayedWidgetFavoriteAlbumAssetRemovalNeeded = self->_delayedWidgetFavoriteAlbumAssetRemovalNeeded;
  if (delayedWidgetFavoriteAlbumAssetRemovalNeeded)
  {
    v5 = a3;
    v6 = [(NSMutableSet *)delayedWidgetFavoriteAlbumAssetRemovalNeeded copy];
    [v5 setAssetsForWidgetFavoriteAlbumRemoval:v6];

    v7 = self->_delayedWidgetFavoriteAlbumAssetRemovalNeeded;

    [(NSMutableSet *)v7 removeAllObjects];
  }
}

- (void)recordAssetIDForWidgetFavoriteAlbumRemoval:(id)a3
{
  v4 = a3;
  delayedWidgetFavoriteAlbumAssetRemovalNeeded = self->_delayedWidgetFavoriteAlbumAssetRemovalNeeded;
  v8 = v4;
  if (!delayedWidgetFavoriteAlbumAssetRemovalNeeded)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v7 = self->_delayedWidgetFavoriteAlbumAssetRemovalNeeded;
    self->_delayedWidgetFavoriteAlbumAssetRemovalNeeded = v6;

    v4 = v8;
    delayedWidgetFavoriteAlbumAssetRemovalNeeded = self->_delayedWidgetFavoriteAlbumAssetRemovalNeeded;
  }

  [(NSMutableSet *)delayedWidgetFavoriteAlbumAssetRemovalNeeded addObject:v4];
}

- (void)_popWidgetUserAlbumAssetRemovalReloadNeeded:(id)a3
{
  delayedWidgetUserAlbumAssetRemovalNeeded = self->_delayedWidgetUserAlbumAssetRemovalNeeded;
  if (delayedWidgetUserAlbumAssetRemovalNeeded)
  {
    v5 = a3;
    v6 = [(NSMutableDictionary *)delayedWidgetUserAlbumAssetRemovalNeeded copy];
    [v5 setAssetsForWidgetUserAlbumRemoval:v6];

    v7 = self->_delayedWidgetUserAlbumAssetRemovalNeeded;

    [(NSMutableDictionary *)v7 removeAllObjects];
  }
}

- (void)recordAssetID:(id)a3 forWidgetUserAlbumRemoval:(id)a4
{
  v14 = a3;
  v6 = a4;
  delayedWidgetUserAlbumAssetRemovalNeeded = self->_delayedWidgetUserAlbumAssetRemovalNeeded;
  if (!delayedWidgetUserAlbumAssetRemovalNeeded)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9 = self->_delayedWidgetUserAlbumAssetRemovalNeeded;
    self->_delayedWidgetUserAlbumAssetRemovalNeeded = v8;

    delayedWidgetUserAlbumAssetRemovalNeeded = self->_delayedWidgetUserAlbumAssetRemovalNeeded;
  }

  v10 = [(NSMutableDictionary *)delayedWidgetUserAlbumAssetRemovalNeeded objectForKeyedSubscript:v14];

  if (!v10)
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(NSMutableDictionary *)self->_delayedWidgetUserAlbumAssetRemovalNeeded setObject:v11 forKeyedSubscript:v14];
  }

  v12 = [(NSMutableDictionary *)self->_delayedWidgetUserAlbumAssetRemovalNeeded objectForKeyedSubscript:v14];
  v13 = [v6 uuid];
  [v12 addObject:v13];
}

- (void)_popWidgetTimelineReloadNeeded:(id)a3
{
  v5 = a3;
  if ([(NSMutableSet *)self->_delayedWidgetTimelineReloadTypesNeeded count])
  {
    v4 = [(NSMutableSet *)self->_delayedWidgetTimelineReloadTypesNeeded copy];
    [v5 setWidgetTimelineReloadTypesNeeded:v4];

    [(NSMutableSet *)self->_delayedWidgetTimelineReloadTypesNeeded removeAllObjects];
  }
}

- (void)recordWidgetTimelineReloadNeededForType:(int64_t)a3
{
  delayedWidgetTimelineReloadTypesNeeded = self->_delayedWidgetTimelineReloadTypesNeeded;
  if (!delayedWidgetTimelineReloadTypesNeeded)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v7 = self->_delayedWidgetTimelineReloadTypesNeeded;
    self->_delayedWidgetTimelineReloadTypesNeeded = v6;

    delayedWidgetTimelineReloadTypesNeeded = self->_delayedWidgetTimelineReloadTypesNeeded;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(NSMutableSet *)delayedWidgetTimelineReloadTypesNeeded addObject:v8];
}

- (void)_popDuetDeletedMemoriesIntoDetail:(id)a3
{
  v5 = a3;
  if ([(NSMutableSet *)self->_delayedMemoriesForDuetDelete count])
  {
    v4 = [(NSMutableSet *)self->_delayedMemoriesForDuetDelete copy];
    [v5 setMemoriesForDuetDelete:v4];

    [(NSMutableSet *)self->_delayedMemoriesForDuetDelete removeAllObjects];
  }
}

- (void)recordMemoryForDuetDelete:(id)a3
{
  v4 = a3;
  delayedMemoriesForDuetDelete = self->_delayedMemoriesForDuetDelete;
  v9 = v4;
  if (!delayedMemoriesForDuetDelete)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v7 = self->_delayedMemoriesForDuetDelete;
    self->_delayedMemoriesForDuetDelete = v6;

    v4 = v9;
    delayedMemoriesForDuetDelete = self->_delayedMemoriesForDuetDelete;
  }

  v8 = [v4 uuid];
  [(NSMutableSet *)delayedMemoriesForDuetDelete addObject:v8];
}

- (void)_popDuetDeletedAssetsIntoDetail:(id)a3
{
  v5 = a3;
  if ([(NSMutableSet *)self->_delayedAssetsForDuetDelete count])
  {
    v4 = [(NSMutableSet *)self->_delayedAssetsForDuetDelete copy];
    [v5 setAssetsForDuetDelete:v4];

    [(NSMutableSet *)self->_delayedAssetsForDuetDelete removeAllObjects];
  }
}

- (void)recordAssetForDuetDelete:(id)a3
{
  v4 = a3;
  delayedAssetsForDuetDelete = self->_delayedAssetsForDuetDelete;
  v9 = v4;
  if (!delayedAssetsForDuetDelete)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v7 = self->_delayedAssetsForDuetDelete;
    self->_delayedAssetsForDuetDelete = v6;

    v4 = v9;
    delayedAssetsForDuetDelete = self->_delayedAssetsForDuetDelete;
  }

  v8 = [v4 uuid];
  [(NSMutableSet *)delayedAssetsForDuetDelete addObject:v8];
}

- (void)_popDelayedAssetsForAnalysis:(id *)a3
{
  if (a3)
  {
    *a3 = self->_delayedWorkerTypesToAnalyzeByAssetUUID;
  }

  delayedWorkerTypesToAnalyzeByAssetUUID = self->_delayedWorkerTypesToAnalyzeByAssetUUID;
  self->_delayedWorkerTypesToAnalyzeByAssetUUID = 0;
}

- (void)recordAssetForAnalysis:(id)a3 workerFlags:(int)a4 workerType:(signed __int16)a5
{
  v5 = a5;
  v8 = a3;
  v18 = v8;
  if (!self->_delayedWorkerTypesToAnalyzeByAssetUUID)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    delayedWorkerTypesToAnalyzeByAssetUUID = self->_delayedWorkerTypesToAnalyzeByAssetUUID;
    self->_delayedWorkerTypesToAnalyzeByAssetUUID = v9;

    v8 = v18;
  }

  v11 = [v8 uuid];
  v12 = [(NSMutableDictionary *)self->_delayedWorkerTypesToAnalyzeByAssetUUID objectForKeyedSubscript:v11];
  if (!v12)
  {
    v12 = [MEMORY[0x1E695DF90] dictionary];
    [(NSMutableDictionary *)self->_delayedWorkerTypesToAnalyzeByAssetUUID setObject:v12 forKeyedSubscript:v11];
  }

  v13 = [MEMORY[0x1E696AD98] numberWithShort:v5];
  v14 = [v12 objectForKeyedSubscript:v13];
  v15 = [v14 integerValue];

  v16 = [MEMORY[0x1E696AD98] numberWithInt:v15 | a4];
  v17 = [MEMORY[0x1E696AD98] numberWithShort:v5];
  [v12 setObject:v16 forKeyedSubscript:v17];
}

- (void)_popAlbumTrashIntoDetail:(id)a3
{
  v5 = a3;
  if ([(NSMutableSet *)self->_delayedAlbumTrashUpdates count])
  {
    v4 = [(NSMutableSet *)self->_delayedAlbumTrashUpdates valueForKey:@"objectID"];
    [v5 setAlbumTrashCycleUpdates:v4];

    [(NSMutableSet *)self->_delayedAlbumTrashUpdates removeAllObjects];
  }
}

- (void)recordAlbumForTrashUpdate:(id)a3
{
  v7 = a3;
  if (([v7 isDeleted] & 1) == 0)
  {
    delayedAlbumTrashUpdates = self->_delayedAlbumTrashUpdates;
    if (!delayedAlbumTrashUpdates)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v6 = self->_delayedAlbumTrashUpdates;
      self->_delayedAlbumTrashUpdates = v5;

      delayedAlbumTrashUpdates = self->_delayedAlbumTrashUpdates;
    }

    [(NSMutableSet *)delayedAlbumTrashUpdates addObject:v7];
    [(PLDelayedSaveActions *)self persistDelayedActionsScope:@"PLTransactionScopeAlbumTrashCycle"];
  }
}

- (void)_popDelayedAlbumKeyAssetsUpdates:(id *)a3
{
  if (a3)
  {
    v5 = [(NSMutableSet *)self->_delayedAlbumKeyAssetsUpdates valueForKey:@"objectID"];
    *a3 = v5;
  }

  delayedAlbumKeyAssetsUpdates = self->_delayedAlbumKeyAssetsUpdates;

  [(NSMutableSet *)delayedAlbumKeyAssetsUpdates removeAllObjects];
}

- (void)_popDelayedAlbumCountsAndDateRangeUpdates:(id *)a3
{
  if (a3)
  {
    v5 = [(NSMutableSet *)self->_delayedAlbumCountsAndDateRangeUpdates valueForKey:@"objectID"];
    *a3 = v5;
  }

  delayedAlbumCountsAndDateRangeUpdates = self->_delayedAlbumCountsAndDateRangeUpdates;

  [(NSMutableSet *)delayedAlbumCountsAndDateRangeUpdates removeAllObjects];
}

- (void)recordAssetForImportSessionCountsAndDateRangeUpdate:(id)a3
{
  v4 = [a3 importSession];
  v5 = v4;
  if (v4)
  {
    v7 = v4;
    v6 = [v4 isDeleted];
    v5 = v7;
    if ((v6 & 1) == 0)
    {
      [(PLDelayedSaveActions *)self _recordDelayedImportSessionCountsAndDateRangeUpdate:v7];
      v5 = v7;
    }
  }
}

- (void)recordAssetForAlbumCountsDateRangeAndKeyAssetsUpdate:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = [a3 albums];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        if (([v9 isDeleted] & 1) == 0)
        {
          [(PLDelayedSaveActions *)self _recordDelayedAlbumCountsAndDateRangeUpdate:v9];
          [(PLDelayedSaveActions *)self _recordDelayedAlbumKeyAssetsUpdate:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)recordAlbumForKeyAssetsUpdate:(id)a3
{
  v4 = a3;
  if (([v4 isDeleted] & 1) == 0)
  {
    [(PLDelayedSaveActions *)self _recordDelayedAlbumKeyAssetsUpdate:v4];
  }
}

- (void)recordAlbumForCountsAndDateRangeUpdate:(id)a3
{
  v4 = a3;
  if (([v4 isDeleted] & 1) == 0)
  {
    [(PLDelayedSaveActions *)self _recordDelayedAlbumCountsAndDateRangeUpdate:v4];
  }
}

- (void)_recordDelayedAlbumKeyAssetsUpdate:(id)a3
{
  v4 = a3;
  delayedAlbumKeyAssetsUpdates = self->_delayedAlbumKeyAssetsUpdates;
  v8 = v4;
  if (!delayedAlbumKeyAssetsUpdates)
  {
    v6 = objc_opt_new();
    v7 = self->_delayedAlbumKeyAssetsUpdates;
    self->_delayedAlbumKeyAssetsUpdates = v6;

    v4 = v8;
    delayedAlbumKeyAssetsUpdates = self->_delayedAlbumKeyAssetsUpdates;
  }

  [(NSMutableSet *)delayedAlbumKeyAssetsUpdates addObject:v4];
  [(PLDelayedSaveActions *)self persistDelayedActionsScope:@"PLTransactionScopeAlbumCounts"];
}

- (void)_recordDelayedAlbumCountsAndDateRangeUpdate:(id)a3
{
  v4 = a3;
  delayedAlbumCountsAndDateRangeUpdates = self->_delayedAlbumCountsAndDateRangeUpdates;
  v8 = v4;
  if (!delayedAlbumCountsAndDateRangeUpdates)
  {
    v6 = objc_opt_new();
    v7 = self->_delayedAlbumCountsAndDateRangeUpdates;
    self->_delayedAlbumCountsAndDateRangeUpdates = v6;

    v4 = v8;
    delayedAlbumCountsAndDateRangeUpdates = self->_delayedAlbumCountsAndDateRangeUpdates;
  }

  [(NSMutableSet *)delayedAlbumCountsAndDateRangeUpdates addObject:v4];
  [(PLDelayedSaveActions *)self persistDelayedActionsScope:@"PLTransactionScopeAlbumCounts"];
}

- (void)_popDelayedImportSessionCountsAndDateRangeUpdates:(id *)a3
{
  if (a3)
  {
    v5 = [(NSMutableSet *)self->_delayedImportSessionCountsAndDateRangeUpdates valueForKey:@"objectID"];
    *a3 = v5;
  }

  delayedImportSessionCountsAndDateRangeUpdates = self->_delayedImportSessionCountsAndDateRangeUpdates;

  [(NSMutableSet *)delayedImportSessionCountsAndDateRangeUpdates removeAllObjects];
}

- (void)recordImportSessionCountsAndDateRangeUpdate:(id)a3
{
  v6 = a3;
  if (([v6 isDeleted] & 1) == 0)
  {
    v4 = [v6 changedValues];
    v5 = [v4 objectForKeyedSubscript:@"assets"];

    if (v5)
    {
      [(PLDelayedSaveActions *)self _recordDelayedImportSessionCountsAndDateRangeUpdate:v6];
    }
  }
}

- (void)_recordDelayedImportSessionCountsAndDateRangeUpdate:(id)a3
{
  v4 = a3;
  delayedImportSessionCountsAndDateRangeUpdates = self->_delayedImportSessionCountsAndDateRangeUpdates;
  v8 = v4;
  if (!delayedImportSessionCountsAndDateRangeUpdates)
  {
    v6 = objc_opt_new();
    v7 = self->_delayedImportSessionCountsAndDateRangeUpdates;
    self->_delayedImportSessionCountsAndDateRangeUpdates = v6;

    v4 = v8;
    delayedImportSessionCountsAndDateRangeUpdates = self->_delayedImportSessionCountsAndDateRangeUpdates;
  }

  [(NSMutableSet *)delayedImportSessionCountsAndDateRangeUpdates addObject:v4];
  [(PLDelayedSaveActions *)self persistDelayedActionsScope:@"PLTransactionScopeImportSessionCounts"];
}

- (void)_popDelayedAssetsForFilesystemPersistencyUpdates:(id *)a3
{
  if (a3)
  {
    v5 = [(NSMutableSet *)self->_delayedAssetsForFileSystemPersistency valueForKey:@"objectID"];
    *a3 = v5;
  }

  delayedAssetsForFileSystemPersistency = self->_delayedAssetsForFileSystemPersistency;

  [(NSMutableSet *)delayedAssetsForFileSystemPersistency removeAllObjects];
}

- (void)recordAssetForFileSystemPersistencyUpdate:(id)a3
{
  v7 = a3;
  if (([v7 disableFileSystemPersistency] & 1) == 0)
  {
    delayedAssetsForFileSystemPersistency = self->_delayedAssetsForFileSystemPersistency;
    if (!delayedAssetsForFileSystemPersistency)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v6 = self->_delayedAssetsForFileSystemPersistency;
      self->_delayedAssetsForFileSystemPersistency = v5;

      delayedAssetsForFileSystemPersistency = self->_delayedAssetsForFileSystemPersistency;
    }

    [(NSMutableSet *)delayedAssetsForFileSystemPersistency addObject:v7];
    [(PLDelayedSaveActions *)self persistDelayedActionsScope:@"PLTransactionScopeFilePersistence"];
  }
}

- (void)_popDelayedCloudFeedAlbumUpdates:(id *)a3 collectionShareUpdates:(id *)a4 collectionShareDeletes:(id *)a5 assetInserts:(id *)a6 assetUpdates:(id *)a7 commentInserts:(id *)a8 invitationRecordUpdates:(id *)a9 shareParticipantUpdates:(id *)a10 shareParticipantDeletes:(id *)a11 deletionEntries:(id *)a12
{
  v41 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v19 = [(NSMutableArray *)self->_delayedCloudFeedAlbumUpdates valueForKey:@"objectID"];
    *a3 = v19;
  }

  [(NSMutableArray *)self->_delayedCloudFeedAlbumUpdates removeAllObjects];
  if (a4)
  {
    v20 = [(NSMutableArray *)self->_delayedCloudFeedCollectionShareUpdates valueForKey:@"objectID"];
    *a4 = v20;
  }

  [(NSMutableArray *)self->_delayedCloudFeedCollectionShareUpdates removeAllObjects];
  if (a5)
  {
    v21 = [(NSMutableArray *)self->_delayedCloudFeedCollectionShareDeletes copy];
    *a5 = v21;
  }

  [(NSMutableArray *)self->_delayedCloudFeedCollectionShareDeletes removeAllObjects];
  if (a6)
  {
    v22 = [(NSMutableArray *)self->_delayedCloudFeedAssetInserts valueForKey:@"objectID"];
    *a6 = v22;
  }

  [(NSMutableArray *)self->_delayedCloudFeedAssetInserts removeAllObjects];
  if (a7)
  {
    v23 = [(NSMutableArray *)self->_delayedCloudFeedAssetUpdates valueForKey:@"objectID"];
    *a7 = v23;
  }

  [(NSMutableArray *)self->_delayedCloudFeedAssetUpdates removeAllObjects];
  if (a8)
  {
    v24 = [(NSMutableArray *)self->_delayedCloudFeedCommentInserts valueForKey:@"objectID"];
    *a8 = v24;
  }

  [(NSMutableArray *)self->_delayedCloudFeedCommentInserts removeAllObjects];
  if (a9)
  {
    v25 = [(NSMutableArray *)self->_delayedCloudFeedInvitationRecordUpdates valueForKey:@"objectID"];
    *a9 = v25;
  }

  [(NSMutableArray *)self->_delayedCloudFeedInvitationRecordUpdates removeAllObjects];
  if (a10)
  {
    v26 = [(NSMutableArray *)self->_delayedCloudFeedShareParticipantUpdates valueForKey:@"objectID"];
    *a10 = v26;
  }

  [(NSMutableArray *)self->_delayedCloudFeedShareParticipantUpdates removeAllObjects];
  if (a11)
  {
    v27 = [(NSMutableArray *)self->_delayedCloudFeedShareParticipantDeletes copy];
    *a11 = v27;
  }

  [(NSMutableArray *)self->_delayedCloudFeedShareParticipantDeletes removeAllObjects];
  if (a12 && [(NSMutableSet *)self->_delayedCloudFeedDeletionEntries count])
  {
    v28 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSMutableSet count](self->_delayedCloudFeedDeletionEntries, "count")}];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v29 = self->_delayedCloudFeedDeletionEntries;
    v30 = [(NSMutableSet *)v29 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v37;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v37 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = [*(*(&v36 + 1) + 8 * i) objectID];
          [v28 addObject:v34];
        }

        v31 = [(NSMutableSet *)v29 countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v31);
    }

    v35 = v28;
    *a12 = v28;
  }

  [(NSMutableSet *)self->_delayedCloudFeedDeletionEntries removeAllObjects];
}

- (void)recordCloudFeedAssetsEntryForAssetUpdate:(id)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (([v4 isDeleted] & 1) == 0)
  {
    v5 = [v4 entryAssets];
    v6 = [v5 count];

    if (!v6)
    {
      v8[0] = v4;
      v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
      [(PLDelayedSaveActions *)self _recordDelayedCloudFeedDeletionEntries:v7];
    }
  }
}

- (void)recordCloudFeedCommentsEntryForCommentUpdate:(id)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (([v4 isDeleted] & 1) == 0)
  {
    v5 = [v4 entryLikeComments];
    if (![v5 count])
    {
      v6 = [v4 entryComments];
      v7 = [v6 count];

      if (v7)
      {
        goto LABEL_5;
      }

      v8[0] = v4;
      v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
      [(PLDelayedSaveActions *)self _recordDelayedCloudFeedDeletionEntries:v5];
    }
  }

LABEL_5:
}

- (void)recordShareParticipantForCloudFeedUpdate:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = NSStringFromSelector(a2);
    v8 = [v5 objectID];
    v14 = 138413314;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    v18 = 1024;
    v19 = [v5 isDeleted];
    v20 = 1024;
    v21 = [v5 isInserted];
    v22 = 1024;
    v23 = [v5 isUpdated];
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEBUG, "%@ %@ isDeleted=%i isInserted=%i isUpdated=%i", &v14, 0x28u);
  }

  if (![v5 isDeleted])
  {
    if ([v5 isInserted])
    {
      [(PLDelayedSaveActions *)self _recordDelayedCloudFeedShareParticipantUpdate:v5];
      goto LABEL_15;
    }

    if (![v5 isUpdated])
    {
      goto LABEL_15;
    }

    v9 = [v5 changedValues];
    v10 = PLCloudFeedGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = [v9 allKeys];
      v14 = 138412290;
      v15 = v11;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEBUG, "changedValues=%@", &v14, 0xCu);
    }

    v12 = [v9 objectForKeyedSubscript:@"acceptanceStatus"];
    if (v12 || ([v9 objectForKeyedSubscript:@"role"], (v12 = objc_claimAutoreleasedReturnValue()) != 0))
    {
    }

    else
    {
      v13 = [v9 objectForKeyedSubscript:@"subscriptionDate"];

      if (!v13)
      {
        goto LABEL_14;
      }
    }

    [(PLDelayedSaveActions *)self _recordDelayedCloudFeedShareParticipantUpdate:v5];
LABEL_14:

    goto LABEL_15;
  }

  [(PLDelayedSaveActions *)self _recordDelayedCloudFeedShareParticipantDelete:v5];
LABEL_15:
}

- (void)recordInvitationRecordForCloudFeedUpdate:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = NSStringFromSelector(a2);
    v8 = [v5 objectID];
    *buf = 138413314;
    v24 = v7;
    v25 = 2112;
    v26 = v8;
    v27 = 1024;
    v28 = [v5 isDeleted];
    v29 = 1024;
    v30 = [v5 isInserted];
    v31 = 1024;
    v32 = [v5 isUpdated];
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEBUG, "%@ %@ isDeleted=%i isInserted=%i isUpdated=%i", buf, 0x28u);
  }

  if ([v5 isDeleted])
  {
    v9 = [v5 managedObjectContext];
    if (([v9 hasPreviouslyMergedDeleteForObject:v5] & 1) == 0)
    {
      v10 = MEMORY[0x1E695D5E0];
      v11 = +[PLCloudFeedEntry entityName];
      v12 = [v10 fetchRequestWithEntityName:v11];

      v13 = MEMORY[0x1E696AE18];
      v14 = [v5 cloudGUID];
      v15 = [v13 predicateWithFormat:@"((entryType = %d) OR (entryType = %d)) AND (entryInvitationRecordGUID = %@)", 5, 6, v14];
      [v12 setPredicate:v15];

      v16 = [v9 executeFetchRequest:v12 error:0];
      v17 = PLCloudFeedGetLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v18 = [v5 cloudGUID];
        *buf = 138412546;
        v24 = v18;
        v25 = 2112;
        v26 = v16;
        _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEBUG, "invitationRecordGUID=%@ cloudFeedEntries=%@", buf, 0x16u);
      }

      if ([v16 count])
      {
        [(PLDelayedSaveActions *)self _recordDelayedCloudFeedDeletionEntries:v16];
      }
    }

    goto LABEL_19;
  }

  if (![v5 isInserted])
  {
    if (![v5 isUpdated])
    {
      goto LABEL_20;
    }

    v9 = [v5 changedValues];
    v19 = PLCloudFeedGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v20 = [v9 allKeys];
      *buf = 138412290;
      v24 = v20;
      _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_DEBUG, "changedValues=%@", buf, 0xCu);
    }

    v21 = [v9 objectForKeyedSubscript:@"invitationState"];
    if (v21 || ([v9 objectForKeyedSubscript:@"invitationStateLocal"], (v21 = objc_claimAutoreleasedReturnValue()) != 0))
    {
    }

    else
    {
      v22 = [v9 objectForKeyedSubscript:@"inviteeSubscriptionDate"];

      if (!v22)
      {
        goto LABEL_19;
      }
    }

    [(PLDelayedSaveActions *)self _recordDelayedCloudFeedInvitationRecordUpdate:v5];
LABEL_19:

    goto LABEL_20;
  }

  [(PLDelayedSaveActions *)self _recordDelayedCloudFeedInvitationRecordUpdate:v5];
LABEL_20:
}

- (void)recordCommentForCloudFeedUpdate:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = NSStringFromSelector(a2);
    v8 = [v5 objectID];
    *buf = 138413314;
    v16 = v7;
    v17 = 2112;
    v18 = v8;
    v19 = 1024;
    v20 = [v5 isDeleted];
    v21 = 1024;
    v22 = [v5 isInserted];
    v23 = 1024;
    v24 = [v5 isUpdated];
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEBUG, "%@ %@ isDeleted=%i isInserted=%i isUpdated=%i", buf, 0x28u);
  }

  if ([v5 isDeleted])
  {
    v9 = [v5 managedObjectContext];
    if (([v9 hasPreviouslyMergedDeleteForObject:v5] & 1) == 0)
    {
      v10 = [v5 cloudFeedEntry];
      v11 = PLCloudFeedGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v12 = [v10 objectID];
        *buf = 138412290;
        v16 = v12;
        _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEBUG, "cloudFeedEntry=%@", buf, 0xCu);
      }

      if (v10)
      {
        v14 = v10;
        v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
        [(PLDelayedSaveActions *)self _recordDelayedCloudFeedDeletionEntries:v13];
      }
    }
  }

  else if ([v5 isInserted])
  {
    [(PLDelayedSaveActions *)self _recordDelayedCloudFeedCommentInsert:v5];
  }

  else
  {
    [v5 isUpdated];
  }
}

- (void)recordAssetForCloudFeedUpdate:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = NSStringFromSelector(a2);
    v8 = [v5 objectID];
    *buf = 138413314;
    v16 = v7;
    v17 = 2112;
    v18 = v8;
    v19 = 1024;
    v20 = [v5 isIncludedInCloudFeeds];
    v21 = 1024;
    v22 = [v5 isDeleted];
    v23 = 1024;
    v24 = [v5 isInserted];
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEBUG, "%@ %@ isIncludedInCloudFeeds=%i isDeleted=%i isInserted=%i", buf, 0x28u);
  }

  if ([v5 isIncludedInCloudFeeds])
  {
    if ([v5 isDeleted])
    {
      v9 = [v5 managedObjectContext];
      if (([v9 hasPreviouslyMergedDeleteForObject:v5] & 1) == 0)
      {
        v10 = [v5 cloudFeedAssetsEntry];
        v11 = PLCloudFeedGetLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v12 = [v10 objectID];
          *buf = 138412290;
          v16 = v12;
          _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEBUG, "cloudFeedEntry=%@", buf, 0xCu);
        }

        if (v10)
        {
          v14 = v10;
          v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
          [(PLDelayedSaveActions *)self _recordDelayedCloudFeedDeletionEntries:v13];
        }
      }
    }

    else if ([v5 isInserted])
    {
      [(PLDelayedSaveActions *)self _recordDelayedCloudFeedAssetInsert:v5];
    }
  }
}

- (void)recordCollectionShareForCloudFeedUpdate:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = NSStringFromSelector(a2);
    v8 = [v5 objectID];
    v14 = 138413314;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    v18 = 1024;
    v19 = [v5 isDeleted];
    v20 = 1024;
    v21 = [v5 isInserted];
    v22 = 1024;
    v23 = [v5 isUpdated];
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEBUG, "%@ %@ isDeleted=%i isInserted=%i isUpdated=%i", &v14, 0x28u);
  }

  if (![v5 isDeleted])
  {
    if ([v5 isInserted])
    {
      [(PLDelayedSaveActions *)self _recordDelayedCloudFeedCollectionShareUpdate:v5];
      goto LABEL_15;
    }

    if (![v5 isUpdated])
    {
      goto LABEL_15;
    }

    v9 = [v5 changedValues];
    v10 = PLCloudFeedGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = [v9 allKeys];
      v14 = 138412290;
      v15 = v11;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEBUG, "changedValues=%@", &v14, 0xCu);
    }

    v12 = [v9 objectForKeyedSubscript:@"status"];
    if (v12 || ([v9 objectForKeyedSubscript:@"cloudSubscriptionDate"], (v12 = objc_claimAutoreleasedReturnValue()) != 0))
    {
    }

    else
    {
      v13 = [v9 objectForKeyedSubscript:@"publicPermission"];

      if (!v13)
      {
        goto LABEL_14;
      }
    }

    [(PLDelayedSaveActions *)self _recordDelayedCloudFeedCollectionShareUpdate:v5];
LABEL_14:

    goto LABEL_15;
  }

  [(PLDelayedSaveActions *)self _recordDelayedCloudFeedCollectionShareDelete:v5];
LABEL_15:
}

- (void)recordAlbumForCloudFeedUpdate:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = NSStringFromSelector(a2);
    v8 = [v5 objectID];
    *buf = 138413314;
    v24 = v7;
    v25 = 2112;
    v26 = v8;
    v27 = 1024;
    v28 = [v5 isDeleted];
    v29 = 1024;
    v30 = [v5 isInserted];
    v31 = 1024;
    v32 = [v5 isUpdated];
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEBUG, "%@ %@ isDeleted=%i isInserted=%i isUpdated=%i", buf, 0x28u);
  }

  if ([v5 isDeleted])
  {
    v9 = [v5 managedObjectContext];
    if (([v9 hasPreviouslyMergedDeleteForObject:v5] & 1) == 0)
    {
      v10 = MEMORY[0x1E695D5E0];
      v11 = +[PLCloudFeedEntry entityName];
      v12 = [v10 fetchRequestWithEntityName:v11];

      v13 = MEMORY[0x1E696AE18];
      v14 = [v5 cloudGUID];
      v15 = [v13 predicateWithFormat:@"((entryType = %d) OR (entryType = %d) OR (entryType = %d)) AND (entryAlbumGUID = %@)", 3, 4, 7, v14];
      [v12 setPredicate:v15];

      v16 = [v9 executeFetchRequest:v12 error:0];
      v17 = PLCloudFeedGetLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v18 = [v5 cloudGUID];
        *buf = 138412546;
        v24 = v18;
        v25 = 2112;
        v26 = v16;
        _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEBUG, "albumGUID=%@ cloudFeedEntries=%@", buf, 0x16u);
      }

      if ([v16 count])
      {
        [(PLDelayedSaveActions *)self _recordDelayedCloudFeedDeletionEntries:v16];
      }
    }

    goto LABEL_20;
  }

  if (![v5 isInserted])
  {
    if (![v5 isUpdated])
    {
      goto LABEL_21;
    }

    v9 = [v5 changedValues];
    v19 = PLCloudFeedGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v20 = [v9 allKeys];
      *buf = 138412290;
      v24 = v20;
      _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_DEBUG, "changedValues=%@", buf, 0xCu);
    }

    v21 = [v9 objectForKeyedSubscript:@"cloudRelationshipState"];
    if (v21 || ([v9 objectForKeyedSubscript:@"cloudRelationshipStateLocal"], (v21 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v9, "objectForKeyedSubscript:", @"cloudSubscriptionDate"), (v21 = objc_claimAutoreleasedReturnValue()) != 0))
    {
    }

    else
    {
      v22 = [v9 objectForKeyedSubscript:@"cloudMultipleContributorsEnabled"];

      if (!v22)
      {
        goto LABEL_20;
      }
    }

    [(PLDelayedSaveActions *)self _recordDelayedCloudFeedAlbumUpdate:v5];
LABEL_20:

    goto LABEL_21;
  }

  [(PLDelayedSaveActions *)self _recordDelayedCloudFeedAlbumUpdate:v5];
LABEL_21:
}

- (void)_recordDelayedCloudFeedShareParticipantDelete:(id)a3
{
  v4 = a3;
  v10 = v4;
  if (!self->_delayedCloudFeedShareParticipantDeletes)
  {
    v5 = objc_opt_new();
    delayedCloudFeedShareParticipantDeletes = self->_delayedCloudFeedShareParticipantDeletes;
    self->_delayedCloudFeedShareParticipantDeletes = v5;

    v4 = v10;
  }

  v7 = [v4 participantID];

  if (v7)
  {
    v8 = self->_delayedCloudFeedShareParticipantDeletes;
    v9 = [v10 participantID];
    [(NSMutableArray *)v8 addObject:v9];
  }

  [(PLDelayedSaveActions *)self persistDelayedActionsScope:@"PLTransactionScopeCloudFeed"];
}

- (void)_recordDelayedCloudFeedShareParticipantUpdate:(id)a3
{
  v4 = a3;
  delayedCloudFeedShareParticipantUpdates = self->_delayedCloudFeedShareParticipantUpdates;
  v8 = v4;
  if (!delayedCloudFeedShareParticipantUpdates)
  {
    v6 = objc_opt_new();
    v7 = self->_delayedCloudFeedShareParticipantUpdates;
    self->_delayedCloudFeedShareParticipantUpdates = v6;

    v4 = v8;
    delayedCloudFeedShareParticipantUpdates = self->_delayedCloudFeedShareParticipantUpdates;
  }

  [(NSMutableArray *)delayedCloudFeedShareParticipantUpdates addObject:v4];
  [(PLDelayedSaveActions *)self persistDelayedActionsScope:@"PLTransactionScopeCloudFeed"];
}

- (void)_recordDelayedCloudFeedInvitationRecordUpdate:(id)a3
{
  v4 = a3;
  delayedCloudFeedInvitationRecordUpdates = self->_delayedCloudFeedInvitationRecordUpdates;
  v8 = v4;
  if (!delayedCloudFeedInvitationRecordUpdates)
  {
    v6 = objc_opt_new();
    v7 = self->_delayedCloudFeedInvitationRecordUpdates;
    self->_delayedCloudFeedInvitationRecordUpdates = v6;

    v4 = v8;
    delayedCloudFeedInvitationRecordUpdates = self->_delayedCloudFeedInvitationRecordUpdates;
  }

  [(NSMutableArray *)delayedCloudFeedInvitationRecordUpdates addObject:v4];
  [(PLDelayedSaveActions *)self persistDelayedActionsScope:@"PLTransactionScopeCloudFeed"];
}

- (void)_recordDelayedCloudFeedCommentInsert:(id)a3
{
  v4 = a3;
  delayedCloudFeedCommentInserts = self->_delayedCloudFeedCommentInserts;
  v8 = v4;
  if (!delayedCloudFeedCommentInserts)
  {
    v6 = objc_opt_new();
    v7 = self->_delayedCloudFeedCommentInserts;
    self->_delayedCloudFeedCommentInserts = v6;

    v4 = v8;
    delayedCloudFeedCommentInserts = self->_delayedCloudFeedCommentInserts;
  }

  [(NSMutableArray *)delayedCloudFeedCommentInserts addObject:v4];
  [(PLDelayedSaveActions *)self persistDelayedActionsScope:@"PLTransactionScopeCloudFeed"];
}

- (void)_recordDelayedCloudFeedAssetUpdate:(id)a3
{
  v4 = a3;
  delayedCloudFeedAssetUpdates = self->_delayedCloudFeedAssetUpdates;
  v8 = v4;
  if (!delayedCloudFeedAssetUpdates)
  {
    v6 = objc_opt_new();
    v7 = self->_delayedCloudFeedAssetUpdates;
    self->_delayedCloudFeedAssetUpdates = v6;

    v4 = v8;
    delayedCloudFeedAssetUpdates = self->_delayedCloudFeedAssetUpdates;
  }

  [(NSMutableArray *)delayedCloudFeedAssetUpdates addObject:v4];
  [(PLDelayedSaveActions *)self persistDelayedActionsScope:@"PLTransactionScopeCloudFeed"];
}

- (void)_recordDelayedCloudFeedAssetInsert:(id)a3
{
  v4 = a3;
  delayedCloudFeedAssetInserts = self->_delayedCloudFeedAssetInserts;
  v8 = v4;
  if (!delayedCloudFeedAssetInserts)
  {
    v6 = objc_opt_new();
    v7 = self->_delayedCloudFeedAssetInserts;
    self->_delayedCloudFeedAssetInserts = v6;

    v4 = v8;
    delayedCloudFeedAssetInserts = self->_delayedCloudFeedAssetInserts;
  }

  [(NSMutableArray *)delayedCloudFeedAssetInserts addObject:v4];
  [(PLDelayedSaveActions *)self persistDelayedActionsScope:@"PLTransactionScopeCloudFeed"];
}

- (void)_recordDelayedCloudFeedDeletionEntries:(id)a3
{
  v4 = a3;
  delayedCloudFeedDeletionEntries = self->_delayedCloudFeedDeletionEntries;
  v8 = v4;
  if (!delayedCloudFeedDeletionEntries)
  {
    v6 = objc_opt_new();
    v7 = self->_delayedCloudFeedDeletionEntries;
    self->_delayedCloudFeedDeletionEntries = v6;

    v4 = v8;
    delayedCloudFeedDeletionEntries = self->_delayedCloudFeedDeletionEntries;
  }

  [(NSMutableSet *)delayedCloudFeedDeletionEntries addObjectsFromArray:v4];
  if ([v8 count])
  {
    [(PLDelayedSaveActions *)self persistDelayedActionsScope:@"PLTransactionScopeCloudFeed"];
  }
}

- (void)_recordDelayedCloudFeedCollectionShareDelete:(id)a3
{
  v4 = a3;
  v10 = v4;
  if (!self->_delayedCloudFeedCollectionShareDeletes)
  {
    v5 = objc_opt_new();
    delayedCloudFeedCollectionShareDeletes = self->_delayedCloudFeedCollectionShareDeletes;
    self->_delayedCloudFeedCollectionShareDeletes = v5;

    v4 = v10;
  }

  v7 = [v4 scopeIdentifier];

  if (v7)
  {
    v8 = self->_delayedCloudFeedCollectionShareDeletes;
    v9 = [v10 scopeIdentifier];
    [(NSMutableArray *)v8 addObject:v9];

    [(PLDelayedSaveActions *)self persistDelayedActionsScope:@"PLTransactionScopeCloudFeed"];
  }
}

- (void)_recordDelayedCloudFeedCollectionShareUpdate:(id)a3
{
  v4 = a3;
  delayedCloudFeedCollectionShareUpdates = self->_delayedCloudFeedCollectionShareUpdates;
  v8 = v4;
  if (!delayedCloudFeedCollectionShareUpdates)
  {
    v6 = objc_opt_new();
    v7 = self->_delayedCloudFeedCollectionShareUpdates;
    self->_delayedCloudFeedCollectionShareUpdates = v6;

    v4 = v8;
    delayedCloudFeedCollectionShareUpdates = self->_delayedCloudFeedCollectionShareUpdates;
  }

  [(NSMutableArray *)delayedCloudFeedCollectionShareUpdates addObject:v4];
  [(PLDelayedSaveActions *)self persistDelayedActionsScope:@"PLTransactionScopeCloudFeed"];
}

- (void)_recordDelayedCloudFeedAlbumUpdate:(id)a3
{
  v4 = a3;
  delayedCloudFeedAlbumUpdates = self->_delayedCloudFeedAlbumUpdates;
  v8 = v4;
  if (!delayedCloudFeedAlbumUpdates)
  {
    v6 = objc_opt_new();
    v7 = self->_delayedCloudFeedAlbumUpdates;
    self->_delayedCloudFeedAlbumUpdates = v6;

    v4 = v8;
    delayedCloudFeedAlbumUpdates = self->_delayedCloudFeedAlbumUpdates;
  }

  [(NSMutableArray *)delayedCloudFeedAlbumUpdates addObject:v4];
  [(PLDelayedSaveActions *)self persistDelayedActionsScope:@"PLTransactionScopeCloudFeed"];
}

- (void)_popDelayedMomentInsertsAndUpdates:(id *)a3 deletes:(id *)a4 updatedAssetIDsForHighlights:(id *)a5 updatedMomentIDsForHighlights:(id *)a6 sharedAssetContainerIncrementalChanges:(id *)a7
{
  v42 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v13 = [(NSMutableArray *)self->_delayedMomentAssetUpdates valueForKey:@"objectID"];
    *a3 = v13;
  }

  [(NSMutableArray *)self->_delayedMomentAssetUpdates removeAllObjects];
  if (a4)
  {
    v14 = [MEMORY[0x1E695DF90] dictionary];
    if ([(NSMapTable *)self->_delayedMomentAssetDeletions count])
    {
      v33 = a6;
      v34 = a7;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v15 = self->_delayedMomentAssetDeletions;
      v16 = [(NSMapTable *)v15 countByEnumeratingWithState:&v37 objects:v41 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v38;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v38 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v37 + 1) + 8 * i);
            v21 = [(NSMapTable *)self->_delayedMomentAssetDeletions objectForKey:v20];
            v22 = [v20 objectID];
            [v14 setObject:v21 forKey:v22];
          }

          v17 = [(NSMapTable *)v15 countByEnumeratingWithState:&v37 objects:v41 count:16];
        }

        while (v17);
      }

      a6 = v33;
      a7 = v34;
    }

    v23 = v14;
    *a4 = v14;
  }

  [(NSMapTable *)self->_delayedMomentAssetDeletions removeAllObjects];
  if (a5)
  {
    v24 = [(NSMutableSet *)self->_delayedHighlightAssetUpdates allObjects];
    v25 = [v24 valueForKey:@"objectID"];

    v26 = v25;
    *a5 = v25;
  }

  [(NSMutableSet *)self->_delayedHighlightAssetUpdates removeAllObjects];
  if (a6)
  {
    v27 = [(NSMutableSet *)self->_delayedHighlightMomentUpdates allObjects];
    v28 = [v27 valueForKey:@"objectID"];

    v29 = v28;
    *a6 = v28;
  }

  [(NSMutableSet *)self->_delayedHighlightMomentUpdates removeAllObjects];
  if (a7)
  {
    v30 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[NSMutableDictionary count](self->_delayedSharedAssetIncrementalChangeContainersByAssetUUID, "count")}];
    delayedSharedAssetIncrementalChangeContainersByAssetUUID = self->_delayedSharedAssetIncrementalChangeContainersByAssetUUID;
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __165__PLDelayedSaveActions__popDelayedMomentInsertsAndUpdates_deletes_updatedAssetIDsForHighlights_updatedMomentIDsForHighlights_sharedAssetContainerIncrementalChanges___block_invoke;
    v35[3] = &unk_1E7575A78;
    v36 = v30;
    v32 = v30;
    [(NSMutableDictionary *)delayedSharedAssetIncrementalChangeContainersByAssetUUID enumerateKeysAndObjectsUsingBlock:v35];
    *a7 = [v32 copy];
  }

  [(NSMutableDictionary *)self->_delayedSharedAssetIncrementalChangeContainersByAssetUUID removeAllObjects];
}

void __165__PLDelayedSaveActions__popDelayedMomentInsertsAndUpdates_deletes_updatedAssetIDsForHighlights_updatedMomentIDsForHighlights_sharedAssetContainerIncrementalChanges___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v8 = [v4 change];
  v5 = *(a1 + 32);
  v6 = [v4 asset];

  v7 = [v6 objectID];
  [v5 setObject:v8 forKeyedSubscript:v7];
}

- (void)recordMomentForHighlightUpdate:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLMomentsGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [v4 objectID];
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEBUG, "Recording moment %@ for highlight update", &v7, 0xCu);
  }

  [(PLDelayedSaveActions *)self _recordDelayedHighlightMomentUpdates:v4];
}

- (void)recordAdditionalAssetAttributesForMomentUpdate:(id)a3
{
  v9 = a3;
  v4 = [v9 changedValues];
  v5 = [v4 objectForKeyedSubscript:@"timeZoneOffset"];
  if (v5)
  {
  }

  else
  {
    v6 = [v4 objectForKeyedSubscript:@"timeZoneName"];

    if (!v6)
    {
      goto LABEL_7;
    }
  }

  v7 = [v9 asset];
  v8 = +[PLMoment predicateForAssetsIncludedInMoments];
  if ([v8 evaluateWithObject:v7])
  {
    [(PLDelayedSaveActions *)self _recordDelayedMomentAssetUpdates:v7];
  }

LABEL_7:
}

- (void)recordAssetForMomentUpdate:(id)a3
{
  v85[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 isIncludedInMoments])
  {
    v78 = [v4 isInserted];
    v5 = [v4 isUpdated];
    v6 = [v4 isDeleted];
    v7 = [v4 needsMomentUpdate];
    v8 = [v4 photoLibrary];
    v9 = [v4 changedValues];
    v10 = objc_alloc_init(PLSharedAssetsContainerIncrementalChange);
    -[PLSharedAssetsContainerIncrementalChange setMediaType:](v10, "setMediaType:", [v4 kind] != 0);
    v79 = v9;
    if ((v5 & 1) == 0 && !v6)
    {
      goto LABEL_28;
    }

    v11 = [v8 libraryServicesManager];
    v12 = [v11 databaseContext];
    v13 = [v12 momentLibrary];

    if (v8 == v13)
    {
      goto LABEL_46;
    }

    v9 = v79;
    [objc_opt_class() _addHighlightRelationshipChangesFromChangedValues:v79 onAsset:v4 intoChange:v10 forRelationshipNamed:@"highlightBeingAssets"];
    [objc_opt_class() _addHighlightRelationshipChangesFromChangedValues:v79 onAsset:v4 intoChange:v10 forRelationshipNamed:@"highlightBeingExtendedAssets"];
    [objc_opt_class() _addHighlightRelationshipChangesFromChangedValues:v79 onAsset:v4 intoChange:v10 forRelationshipNamed:@"highlightBeingSummaryAssets"];
    [objc_opt_class() _addHighlightRelationshipChangesFromChangedValues:v79 onAsset:v4 intoChange:v10 forRelationshipNamed:@"dayGroupHighlightBeingAssets"];
    [objc_opt_class() _addHighlightRelationshipChangesFromChangedValues:v79 onAsset:v4 intoChange:v10 forRelationshipNamed:@"dayGroupHighlightBeingExtendedAssets"];
    [objc_opt_class() _addHighlightRelationshipChangesFromChangedValues:v79 onAsset:v4 intoChange:v10 forRelationshipNamed:@"dayGroupHighlightBeingSummaryAssets"];
    v14 = [(PLSharedAssetsContainerIncrementalChange *)v10 highlightContainerChanges];
    v15 = [v14 count];

    if (!v15)
    {
LABEL_28:
      if (!v5)
      {
        goto LABEL_47;
      }

      goto LABEL_29;
    }

    if (v6)
    {
      v85[0] = @"libraryScope";
      v85[1] = @"additionalAttributes";
      v85[2] = @"libraryScopeShareState";
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v85 count:3];
      v17 = [v4 committedValuesForKeys:v16];

      v18 = [v17 objectForKey:@"libraryScope"];
      v19 = [MEMORY[0x1E695DFB0] null];
      v20 = [v18 isEqual:v19];
      if (v18)
      {
        v21 = v20;
      }

      else
      {
        v21 = 1;
      }

      v74 = v21;

      v72 = v17;
      v22 = [v17 objectForKey:@"libraryScopeShareState"];
      v23 = [MEMORY[0x1E695DFB0] null];
      if ([v22 isEqual:v23])
      {
        v24 = 2;
LABEL_42:

        v7 = 1;
        if (v74)
        {
          v36 = 2;
        }

        else
        {
          v36 = 1;
        }

        [(PLSharedAssetsContainerIncrementalChange *)v10 setSharingChange:v36];
        [(PLSharedAssetsContainerIncrementalChange *)v10 setSuggestionStateChange:v24];

LABEL_46:
        v9 = v79;
        if (!v5)
        {
LABEL_47:
          v32 = 0;
          if (!v6)
          {
            goto LABEL_48;
          }

          goto LABEL_98;
        }

LABEL_29:
        v31 = [v9 objectForKeyedSubscript:@"dateCreated"];
        if (v31)
        {
          v32 = 1;
        }

        else
        {
          v75 = v7;
          v33 = [v9 objectForKeyedSubscript:@"locationData"];
          if (v33)
          {
            v32 = 1;
          }

          else
          {
            v34 = [v9 objectForKeyedSubscript:@"visibilityState"];
            if (v34)
            {
              v32 = 1;
            }

            else
            {
              v35 = [v9 objectForKeyedSubscript:@"hidden"];
              if (v35)
              {
                v32 = 1;
              }

              else
              {
                v62 = [v9 objectForKeyedSubscript:@"trashedState"];
                if (v62)
                {
                  v32 = 1;
                }

                else
                {
                  v63 = [v9 objectForKeyedSubscript:@"savedAssetType"];
                  v32 = v63 != 0;

                  v62 = 0;
                }

                v35 = 0;
              }

              v34 = 0;
            }
          }

          v9 = v79;
          v7 = v75;
        }

        if (!v6)
        {
LABEL_48:
          v37 = v78;
          if (((v78 | v5 | v7) & 1) == 0)
          {
LABEL_111:
            if ([(PLSharedAssetsContainerIncrementalChange *)v10 hasChanges])
            {
              [(PLSharedAssetsContainerIncrementalChange *)v10 setHasNoOtherAssetChangesRequiringMomentGeneration:!v32];
              [(PLDelayedSaveActions *)self _recordSharedAssetIncrementalChange:v10 forAsset:v4];
            }

            goto LABEL_114;
          }

          if (!v5)
          {
LABEL_84:
            if ((v7 | v37 | v32))
            {
              v59 = PLMomentsGetLog();
              if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
              {
                [v4 objectID];
                v61 = v60 = v32;
                *buf = 138412290;
                v83 = v61;
                _os_log_impl(&dword_19BF1F000, v59, OS_LOG_TYPE_DEBUG, "Adding asset %@ to be updated in moments", buf, 0xCu);

                v32 = v60;
              }

              [(PLDelayedSaveActions *)self _recordDelayedMomentAssetUpdates:v4];
            }

            goto LABEL_111;
          }

          v38 = [(PLSharedAssetsContainerIncrementalChange *)v10 highlightContainerChanges];
          if (![v38 count])
          {
            v76 = v32;
            v39 = self;
            v40 = [v9 objectForKeyedSubscript:@"libraryScope"];

            if (!v40)
            {
              self = v39;
              v37 = v78;
LABEL_62:
              v48 = [(PLSharedAssetsContainerIncrementalChange *)v10 highlightContainerChanges];
              if ([v48 count])
              {
LABEL_83:

                goto LABEL_84;
              }

              v49 = v9;
              v50 = self;
              v51 = [v49 objectForKeyedSubscript:@"libraryScopeShareState"];

              if (!v51)
              {
                self = v50;
                v9 = v79;
                goto LABEL_84;
              }

              v80 = @"libraryScopeShareState";
              v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v80 count:1];
              v48 = [v4 committedValuesForKeys:v52];

              v53 = [v48 objectForKey:@"libraryScopeShareState"];
              v54 = [v53 integerValue];
              if (v54 > 65537)
              {
                if (v54 != 65538)
                {
                  v55 = v54 == 65552;
                  goto LABEL_71;
                }
              }

              else if (v54 != 2)
              {
                v55 = v54 == 16;
LABEL_71:
                self = v50;
                v56 = v55;
                goto LABEL_73;
              }

              self = v50;
              v56 = 1;
LABEL_73:
              v57 = [v4 libraryScopeShareState];
              v9 = v79;
              if (v57 > 65537)
              {
                if (v57 != 65552 && v57 != 65538)
                {
                  goto LABEL_90;
                }
              }

              else if (v57 != 2 && v57 != 16)
              {
LABEL_90:
                if (!v56)
                {
                  goto LABEL_82;
                }

                v58 = 2;
                goto LABEL_81;
              }

              if (v56)
              {
LABEL_82:

                v37 = v78;
                goto LABEL_83;
              }

              v58 = 1;
LABEL_81:
              [(PLSharedAssetsContainerIncrementalChange *)v10 setSuggestionStateChange:v58];
              v7 = 1;
              goto LABEL_82;
            }

            v81 = @"libraryScope";
            v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v81 count:1];
            v38 = [v4 committedValuesForKeys:v41];

            v42 = [v38 objectForKey:@"libraryScope"];
            v43 = [MEMORY[0x1E695DFB0] null];
            v44 = [v42 isEqual:v43];

            v45 = [v4 hasLibraryScope];
            if (v42)
            {
              v46 = v44;
            }

            else
            {
              v46 = 1;
            }

            if (v46 == v45)
            {
              v7 = 1;
              if (v45)
              {
                v47 = 1;
              }

              else
              {
                v47 = 2;
              }

              [(PLSharedAssetsContainerIncrementalChange *)v10 setSharingChange:v47];
            }

            self = v39;
            v37 = v78;
            v32 = v76;
          }

          goto LABEL_62;
        }

LABEL_98:
        v64 = [v4 managedObjectContext];
        if (([v64 hasPreviouslyMergedDeleteForObject:v4] & 1) == 0)
        {
          v77 = v32;
          v84[0] = @"dateCreated";
          v84[1] = @"locationData";
          v65 = [MEMORY[0x1E695DEC8] arrayWithObjects:v84 count:2];
          v66 = [v4 committedValuesForKeys:v65];

          v67 = [v66 objectForKeyedSubscript:@"dateCreated"];
          v68 = [v66 objectForKeyedSubscript:@"locationData"];
          v69 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
          if (v67)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              [v69 setObject:v67 forKeyedSubscript:@"dateCreated"];
            }
          }

          if (v68)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              [v69 setObject:v68 forKeyedSubscript:@"locationData"];
            }
          }

          if ([v69 count])
          {
            v70 = PLMomentsGetLog();
            if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
            {
              [v4 objectID];
              v71 = v73 = self;
              *buf = 138412290;
              v83 = v71;
              _os_log_impl(&dword_19BF1F000, v70, OS_LOG_TYPE_DEBUG, "Removing asset %@ from moments", buf, 0xCu);

              self = v73;
            }

            [(PLSharedAssetsContainerIncrementalChange *)v10 setCollectionChangeType:2];
            [(PLDelayedSaveActions *)self _recordDelayedMomentAssetDeletionsDictionary:v69 forKey:v4];
          }

          v9 = v79;
          v32 = v77;
        }

        goto LABEL_111;
      }

      v29 = [v22 integerValue];
      if (v29 > 65537)
      {
        if (v29 != 65538)
        {
          v30 = v29 == 65552;
LABEL_39:
          v24 = 1;
          if (!v30)
          {
            v24 = 2;
          }

          goto LABEL_42;
        }
      }

      else if (v29 != 2)
      {
        v30 = v29 == 16;
        goto LABEL_39;
      }

      v24 = 1;
      goto LABEL_42;
    }

    v26 = 1;
    if ([v4 hasLibraryScope])
    {
      v27 = 1;
    }

    else
    {
      v27 = 2;
    }

    [(PLSharedAssetsContainerIncrementalChange *)v10 setSharingChange:v27];
    v28 = [v4 libraryScopeShareState];
    if (v28 > 65537)
    {
      if (v28 == 65538 || v28 == 65552)
      {
        goto LABEL_27;
      }
    }

    else if (v28 == 2 || v28 == 16)
    {
      goto LABEL_27;
    }

    v26 = 2;
LABEL_27:
    [(PLSharedAssetsContainerIncrementalChange *)v10 setSuggestionStateChange:v26];
    v7 = 1;
    goto LABEL_28;
  }

  v8 = PLMomentsGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v25 = [v4 objectID];
    *buf = 138412290;
    v83 = v25;
    _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEBUG, "Ignoring update for asset %@", buf, 0xCu);
  }

LABEL_114:

  if ([v4 needsMomentUpdate])
  {
    [v4 setNeedsMomentUpdate:0];
  }
}

- (void)_recordSharedAssetIncrementalChange:(id)a3 forAsset:(id)a4
{
  v13 = a3;
  v6 = a4;
  if ([v13 hasChanges])
  {
    if (!self->_delayedSharedAssetIncrementalChangeContainersByAssetUUID)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
      delayedSharedAssetIncrementalChangeContainersByAssetUUID = self->_delayedSharedAssetIncrementalChangeContainersByAssetUUID;
      self->_delayedSharedAssetIncrementalChangeContainersByAssetUUID = v7;
    }

    v9 = [v6 uuid];
    if (v9)
    {
      v10 = [(PLDelayedSaveActions *)self _existingSharedAssetChangeContainerForAsset:v6];
      v11 = v10;
      if (v10)
      {
        v12 = [v10 change];
        [(PLSharedAssetsContainerIncrementalChangeContainer *)v12 mergeChangesFrom:v13];
      }

      else
      {
        v12 = [[PLSharedAssetsContainerIncrementalChangeContainer alloc] initWithAsset:v6 change:v13];
        [(NSMutableDictionary *)self->_delayedSharedAssetIncrementalChangeContainersByAssetUUID setObject:v12 forKeyedSubscript:v9];
      }
    }
  }
}

- (id)_existingSharedAssetChangeContainerForAsset:(id)a3
{
  v4 = a3;
  v5 = [v4 uuid];
  if (v5)
  {
    delayedSharedAssetIncrementalChangeContainersByAssetUUID = self->_delayedSharedAssetIncrementalChangeContainersByAssetUUID;
    v7 = [v4 uuid];
    v8 = [(NSMutableDictionary *)delayedSharedAssetIncrementalChangeContainersByAssetUUID objectForKeyedSubscript:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_recordDelayedHighlightMomentUpdates:(id)a3
{
  v4 = a3;
  delayedHighlightMomentUpdates = self->_delayedHighlightMomentUpdates;
  v8 = v4;
  if (!delayedHighlightMomentUpdates)
  {
    v6 = objc_opt_new();
    v7 = self->_delayedHighlightMomentUpdates;
    self->_delayedHighlightMomentUpdates = v6;

    v4 = v8;
    delayedHighlightMomentUpdates = self->_delayedHighlightMomentUpdates;
  }

  [(NSMutableSet *)delayedHighlightMomentUpdates addObject:v4];
  [(PLDelayedSaveActions *)self persistDelayedActionsScope:@"PLTransactionScopeMomentGeneration"];
}

- (void)_recordDelayedMomentAssetUpdates:(id)a3
{
  v4 = a3;
  delayedMomentAssetUpdates = self->_delayedMomentAssetUpdates;
  v8 = v4;
  if (!delayedMomentAssetUpdates)
  {
    v6 = objc_opt_new();
    v7 = self->_delayedMomentAssetUpdates;
    self->_delayedMomentAssetUpdates = v6;

    v4 = v8;
    delayedMomentAssetUpdates = self->_delayedMomentAssetUpdates;
  }

  [(NSMutableArray *)delayedMomentAssetUpdates addObject:v4];
  [(PLDelayedSaveActions *)self persistDelayedActionsScope:@"PLTransactionScopeMomentGeneration"];
}

- (void)_recordDelayedMomentAssetDeletionsDictionary:(id)a3 forKey:(id)a4
{
  v10 = a3;
  v6 = a4;
  delayedMomentAssetDeletions = self->_delayedMomentAssetDeletions;
  if (!delayedMomentAssetDeletions)
  {
    v8 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    v9 = self->_delayedMomentAssetDeletions;
    self->_delayedMomentAssetDeletions = v8;

    delayedMomentAssetDeletions = self->_delayedMomentAssetDeletions;
  }

  [(NSMapTable *)delayedMomentAssetDeletions setObject:v10 forKey:v6];
  [(PLDelayedSaveActions *)self persistDelayedActionsScope:@"PLTransactionScopeMomentGeneration"];
}

- (void)_popImportSessionCountChangesIntoDetail:(id)a3
{
  v6 = 0;
  v4 = a3;
  [(PLDelayedSaveActions *)self _popDelayedImportSessionCountsAndDateRangeUpdates:&v6];
  v5 = v6;
  [v4 setImportSessionCountsAndDateRangeUpdates:v5];
}

- (void)_popAlbumKeyAssetsChangesIntoDetail:(id)a3
{
  v6 = 0;
  v4 = a3;
  [(PLDelayedSaveActions *)self _popDelayedAlbumKeyAssetsUpdates:&v6];
  v5 = v6;
  [v4 setAlbumKeyAssetsUpdates:v5];
}

- (void)_popAlbumCountChangesIntoDetail:(id)a3
{
  v6 = 0;
  v4 = a3;
  [(PLDelayedSaveActions *)self _popDelayedAlbumCountsAndDateRangeUpdates:&v6];
  v5 = v6;
  [v4 setAlbumCountsAndDateRangeUpdates:v5];
}

- (void)_popAssetsForFilesystemPersistencyChangesIntoDetail:(id)a3
{
  v6 = 0;
  v4 = a3;
  [(PLDelayedSaveActions *)self _popDelayedAssetsForFilesystemPersistencyUpdates:&v6];
  v5 = v6;
  [v4 setAssetsForFilesystemPersistency:v5];
}

- (void)_popMomentChangesIntoDetail:(id)a3
{
  v13 = 0;
  v14 = 0;
  v11 = 0;
  v12 = 0;
  v10 = 0;
  v4 = a3;
  [(PLDelayedSaveActions *)self _popDelayedMomentInsertsAndUpdates:&v14 deletes:&v13 updatedAssetIDsForHighlights:&v12 updatedMomentIDsForHighlights:&v11 sharedAssetContainerIncrementalChanges:&v10];
  v5 = v14;
  v6 = v13;
  v7 = v12;
  v8 = v11;
  v9 = v10;
  [v4 setMomentInsertsAndUpdates:v5];
  [v4 setMomentDeletes:v6];
  [v4 setUpdatedAssetIDsForHighlights:v7];
  [v4 setUpdatedMomentIDsForHighlights:v8];
  [v4 setSharedAssetContainerIncrementalChangesByAssetID:v9];
}

- (void)_popCloudFeedChangesIntoDetail:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v34 = 0;
  v32 = 0;
  v33 = 0;
  v30 = 0;
  v31 = 0;
  v28 = 0;
  v29 = 0;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  v4 = a3;
  [(PLDelayedSaveActions *)self _popDelayedCloudFeedAlbumUpdates:&v34 collectionShareUpdates:&v33 collectionShareDeletes:&v32 assetInserts:&v31 assetUpdates:&v30 commentInserts:&v29 invitationRecordUpdates:&v28 shareParticipantUpdates:&v27 shareParticipantDeletes:&v26 deletionEntries:&v25];
  v5 = v34;
  v6 = v33;
  v24 = v32;
  v7 = v31;
  v8 = v30;
  v9 = v29;
  v10 = v28;
  v11 = v27;
  v12 = v26;
  v13 = v25;
  [v4 setCloudFeedAlbumUpdates:v5];
  [v4 setCloudFeedCollectionShareUpdates:v6];
  [v4 setCloudFeedCollectionShareDeletes:v24];
  [v4 setCloudFeedAssetInserts:v7];
  [v4 setCloudFeedAssetUpdates:v8];
  [v4 setCloudFeedCommentInserts:v9];
  [v4 setCloudFeedInvitationRecordUpdates:v10];
  [v4 setCloudFeedShareParticipantUpdates:v11];
  [v4 setCloudFeedShareParticipantDeletes:v12];
  [v4 setCloudFeedDeletionEntries:v13];

  v14 = PLChangeHandlingGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v36 = v5;
    _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEBUG, "cloudFeedAlbumUpdates=%@", buf, 0xCu);
  }

  v15 = PLChangeHandlingGetLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v36 = v6;
    _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_DEBUG, "cloudFeedCollectionShareUpdates=%@", buf, 0xCu);
  }

  v16 = PLChangeHandlingGetLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v36 = v24;
    _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEBUG, "cloudFeedCollectionShareDeletes=%@", buf, 0xCu);
  }

  v17 = PLChangeHandlingGetLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v36 = v7;
    _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEBUG, "cloudFeedAssetInserts=%@", buf, 0xCu);
  }

  v18 = PLChangeHandlingGetLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v36 = v8;
    _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEBUG, "cloudFeedAssetUpdates=%@", buf, 0xCu);
  }

  v19 = PLChangeHandlingGetLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v36 = v9;
    _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_DEBUG, "cloudFeedCommentInserts=%@", buf, 0xCu);
  }

  v20 = PLChangeHandlingGetLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v36 = v10;
    _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_DEBUG, "cloudFeedInvitationRecordUpdates=%@", buf, 0xCu);
  }

  v21 = PLChangeHandlingGetLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v36 = v11;
    _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_DEBUG, "cloudFeedShareParticipantUpdates=%@", buf, 0xCu);
  }

  v22 = PLChangeHandlingGetLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v36 = v12;
    _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_DEBUG, "cloudFeedShareParticipantDeletes=%@", buf, 0xCu);
  }

  v23 = PLChangeHandlingGetLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v36 = v13;
    _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_DEBUG, "cloudFeedDeletionEntries=%@", buf, 0xCu);
  }
}

- (void)persistDelayedActionsScope:(id)a3
{
  v4 = a3;
  v6 = [(PLDelayedSaveActions *)self clientTransaction];
  v5 = [MEMORY[0x1E695DFD8] setWithObject:v4];

  [v6 addChangeScopes:v5];
}

- (PLDelayedSaveActions)initWithClientTransaction:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PLDelayedSaveActions;
  v6 = [(PLDelayedSaveActions *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_clientTransaction, a3);
  }

  return v7;
}

+ (void)_addHighlightRelationshipChangesFromChangedValues:(id)a3 onAsset:(id)a4 intoChange:(id)a5 forRelationshipNamed:(id)a6
{
  v20[1] = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [a3 objectForKeyedSubscript:v12];

  if (v13)
  {
    v20[0] = v12;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
    v15 = [v10 committedValuesForKeys:v14];

    v16 = [v15 objectForKey:v12];
    v17 = [MEMORY[0x1E695DFB0] null];
    if ([v16 isEqual:v17])
    {
      v18 = 0;
    }

    else
    {
      v18 = [v15 objectForKey:v12];
    }

    v19 = [v10 valueForKey:v12];
    [a1 _checkForHighlightChangesOnToOneRelationshipNamed:v12 andAddIntoChange:v11 givenOldValue:v18 andNewValue:v19];
  }
}

+ (void)_checkForHighlightChangesOnToManyRelationshipNamed:(id)a3 andAddIntoChange:(id)a4 givenOldValue:(id)a5 andNewValue:(id)a6
{
  v37 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (([v11 isEqualToSet:v12] & 1) == 0)
  {
    v13 = [MEMORY[0x1E695DFA8] setWithSet:v11];
    [v13 minusSet:v12];
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v14 = v13;
    v15 = [v14 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v32;
      do
      {
        v18 = 0;
        do
        {
          if (*v32 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [*(*(&v31 + 1) + 8 * v18) objectID];
          [v10 addHighlightContainerChange:v9 sourceHighlightID:v19 destinationHighlightID:0];

          ++v18;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v16);
    }

    v20 = [MEMORY[0x1E695DFA8] setWithSet:v12];
    [v20 minusSet:v11];
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v21 = v20;
    v22 = [v21 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v28;
      do
      {
        v25 = 0;
        do
        {
          if (*v28 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = [*(*(&v27 + 1) + 8 * v25) objectID];
          [v10 addHighlightContainerChange:v9 sourceHighlightID:0 destinationHighlightID:v26];

          ++v25;
        }

        while (v23 != v25);
        v23 = [v21 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v23);
    }
  }
}

+ (void)_checkForHighlightChangesOnToOneRelationshipNamed:(id)a3 andAddIntoChange:(id)a4 givenOldValue:(id)a5 andNewValue:(id)a6
{
  if ((a5 != 0) == (a6 == 0))
  {
    v10 = a6;
    v11 = a4;
    v12 = a3;
    v14 = [a5 objectID];
    v13 = [v10 objectID];

    [v11 addHighlightContainerChange:v12 sourceHighlightID:v14 destinationHighlightID:v13];
  }
}

@end