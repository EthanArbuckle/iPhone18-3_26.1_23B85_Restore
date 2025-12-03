@interface PLDelayedSaveActions
+ (void)_addHighlightRelationshipChangesFromChangedValues:(id)values onAsset:(id)asset intoChange:(id)change forRelationshipNamed:(id)named;
+ (void)_checkForHighlightChangesOnToManyRelationshipNamed:(id)named andAddIntoChange:(id)change givenOldValue:(id)value andNewValue:(id)newValue;
+ (void)_checkForHighlightChangesOnToOneRelationshipNamed:(id)named andAddIntoChange:(id)change givenOldValue:(id)value andNewValue:(id)newValue;
- (PLDelayedSaveActions)initWithClientTransaction:(id)transaction;
- (id)_existingSharedAssetChangeContainerForAsset:(id)asset;
- (id)popDelayedSaveActionsDetail;
- (void)_popAlbumCountChangesIntoDetail:(id)detail;
- (void)_popAlbumKeyAssetsChangesIntoDetail:(id)detail;
- (void)_popAlbumTrashIntoDetail:(id)detail;
- (void)_popAssetIDsByPersonUUIDNeedingSocialGroupContainmentUpdateIntoDetail:(id)detail;
- (void)_popAssetIDsNeedingAssetPersonEdgeUpdateIntoDetail:(id)detail;
- (void)_popAssetIDsNeedingSocialGroupContainmentUpdateIntoDetail:(id)detail;
- (void)_popAssetsForFilesystemPersistencyChangesIntoDetail:(id)detail;
- (void)_popBackgroundUploadEventUpdatedIntoDetail:(id)detail;
- (void)_popCloudFeedChangesIntoDetail:(id)detail;
- (void)_popDelayedAlbumCountsAndDateRangeUpdates:(id *)updates;
- (void)_popDelayedAlbumKeyAssetsUpdates:(id *)updates;
- (void)_popDelayedAssetsForAnalysis:(id *)analysis;
- (void)_popDelayedAssetsForFilesystemPersistencyUpdates:(id *)updates;
- (void)_popDelayedCloudFeedAlbumUpdates:(id *)updates collectionShareUpdates:(id *)shareUpdates collectionShareDeletes:(id *)deletes assetInserts:(id *)inserts assetUpdates:(id *)assetUpdates commentInserts:(id *)commentInserts invitationRecordUpdates:(id *)recordUpdates shareParticipantUpdates:(id *)self0 shareParticipantDeletes:(id *)self1 deletionEntries:(id *)self2;
- (void)_popDelayedImportSessionCountsAndDateRangeUpdates:(id *)updates;
- (void)_popDelayedMomentInsertsAndUpdates:(id *)updates deletes:(id *)deletes updatedAssetIDsForHighlights:(id *)highlights updatedMomentIDsForHighlights:(id *)forHighlights sharedAssetContainerIncrementalChanges:(id *)changes;
- (void)_popDuetDeletedAssetsIntoDetail:(id)detail;
- (void)_popDuetDeletedMemoriesIntoDetail:(id)detail;
- (void)_popFeaturedContentUpdateNeededForPerson:(id)person;
- (void)_popImportSessionCountChangesIntoDetail:(id)detail;
- (void)_popLibraryScopeParticipantsUpdateIntoDetail:(id)detail;
- (void)_popLibraryScopeRulesUpdatedIntoDetail:(id)detail;
- (void)_popMemberIDsOfGroupNeedingContainmentUpdateIntoDetail:(id)detail;
- (void)_popMembersOfGroupsNeedingDeduplicationIntoDetail:(id)detail;
- (void)_popMemoryAssetUpdateIntoDetail:(id)detail;
- (void)_popMomentChangesIntoDetail:(id)detail;
- (void)_popSocialGroupNodeIDsNeedingDeduplicationIntoDetail:(id)detail;
- (void)_popWallpaperFavoriteAlbumAssetRemovalReloadNeeded:(id)needed;
- (void)_popWallpaperSuggestionReloadIntoDetail:(id)detail;
- (void)_popWallpaperUserAlbumAssetRemovalReloadNeeded:(id)needed;
- (void)_popWidgetFavoriteAlbumAssetRemovalReloadNeeded:(id)needed;
- (void)_popWidgetTimelineReloadNeeded:(id)needed;
- (void)_popWidgetUserAlbumAssetRemovalReloadNeeded:(id)needed;
- (void)_recordDelayedAlbumCountsAndDateRangeUpdate:(id)update;
- (void)_recordDelayedAlbumKeyAssetsUpdate:(id)update;
- (void)_recordDelayedCloudFeedAlbumUpdate:(id)update;
- (void)_recordDelayedCloudFeedAssetInsert:(id)insert;
- (void)_recordDelayedCloudFeedAssetUpdate:(id)update;
- (void)_recordDelayedCloudFeedCollectionShareDelete:(id)delete;
- (void)_recordDelayedCloudFeedCollectionShareUpdate:(id)update;
- (void)_recordDelayedCloudFeedCommentInsert:(id)insert;
- (void)_recordDelayedCloudFeedDeletionEntries:(id)entries;
- (void)_recordDelayedCloudFeedInvitationRecordUpdate:(id)update;
- (void)_recordDelayedCloudFeedShareParticipantDelete:(id)delete;
- (void)_recordDelayedCloudFeedShareParticipantUpdate:(id)update;
- (void)_recordDelayedHighlightMomentUpdates:(id)updates;
- (void)_recordDelayedImportSessionCountsAndDateRangeUpdate:(id)update;
- (void)_recordDelayedMomentAssetDeletionsDictionary:(id)dictionary forKey:(id)key;
- (void)_recordDelayedMomentAssetUpdates:(id)updates;
- (void)_recordSharedAssetIncrementalChange:(id)change forAsset:(id)asset;
- (void)persistDelayedActionsScope:(id)scope;
- (void)recordAdditionalAssetAttributesForMomentUpdate:(id)update;
- (void)recordAlbumForCloudFeedUpdate:(id)update;
- (void)recordAlbumForCountsAndDateRangeUpdate:(id)update;
- (void)recordAlbumForKeyAssetsUpdate:(id)update;
- (void)recordAlbumForTrashUpdate:(id)update;
- (void)recordAssetForAlbumCountsDateRangeAndKeyAssetsUpdate:(id)update;
- (void)recordAssetForAnalysis:(id)analysis workerFlags:(int)flags workerType:(signed __int16)type;
- (void)recordAssetForCloudFeedUpdate:(id)update;
- (void)recordAssetForDuetDelete:(id)delete;
- (void)recordAssetForFileSystemPersistencyUpdate:(id)update;
- (void)recordAssetForImportSessionCountsAndDateRangeUpdate:(id)update;
- (void)recordAssetForMomentUpdate:(id)update;
- (void)recordAssetID:(id)d forWallpaperUserAlbumRemoval:(id)removal;
- (void)recordAssetID:(id)d forWidgetUserAlbumRemoval:(id)removal;
- (void)recordAssetIDForWallpaperFavoriteAlbumRemoval:(id)removal;
- (void)recordAssetIDForWidgetFavoriteAlbumRemoval:(id)removal;
- (void)recordAssetPersonEdgeUpdateNeededForAsset:(id)asset;
- (void)recordCloudFeedAssetsEntryForAssetUpdate:(id)update;
- (void)recordCloudFeedCommentsEntryForCommentUpdate:(id)update;
- (void)recordCollectionShareForCloudFeedUpdate:(id)update;
- (void)recordCommentForCloudFeedUpdate:(id)update;
- (void)recordDeduplicationNeededForGroupsContainingMember:(id)member;
- (void)recordDeduplicationNeededForNewGroupNode:(id)node;
- (void)recordFeaturedContentUpdateNeededForPersonUUID:(id)d;
- (void)recordImportSessionCountsAndDateRangeUpdate:(id)update;
- (void)recordInvitationRecordForCloudFeedUpdate:(id)update;
- (void)recordLibraryScopeParticipantsUpdateForLibraryScope:(id)scope;
- (void)recordMemoryAssetsUpdate:(id)update;
- (void)recordMemoryForDuetDelete:(id)delete;
- (void)recordMomentForHighlightUpdate:(id)update;
- (void)recordShareParticipantForCloudFeedUpdate:(id)update;
- (void)recordSocialGroupContainmentUpdateNeededForAsset:(id)asset;
- (void)recordSocialGroupContainmentUpdateNeededForPerson:(id)person;
- (void)recordSocialGroupContainmentUpdateNeededForPerson:(id)person andAsset:(id)asset;
- (void)recordWallpaperSuggestionReloadForUUID:(id)d;
- (void)recordWidgetTimelineReloadNeededForType:(int64_t)type;
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

- (void)_popBackgroundUploadEventUpdatedIntoDetail:(id)detail
{
  if (self->_delayedBackgroundUploadEventUpdated)
  {
    [detail setBackgroundUploadEventUpdated:1];
    self->_delayedBackgroundUploadEventUpdated = 0;
  }
}

- (void)_popAssetIDsNeedingAssetPersonEdgeUpdateIntoDetail:(id)detail
{
  delayedAssetPersonEdgeUpdatesNeededForAssets = self->_delayedAssetPersonEdgeUpdatesNeededForAssets;
  if (delayedAssetPersonEdgeUpdatesNeededForAssets)
  {
    v5 = MEMORY[0x1E695DFD8];
    detailCopy = detail;
    v7 = [(NSMutableSet *)delayedAssetPersonEdgeUpdatesNeededForAssets valueForKey:@"objectID"];
    v8 = [v5 setWithSet:v7];
    [detailCopy setAssetIDsNeedingAssetPersonEdgeUpdates:v8];

    v9 = self->_delayedAssetPersonEdgeUpdatesNeededForAssets;
  }

  else
  {
    v9 = 0;
  }

  [(NSMutableSet *)v9 removeAllObjects];
}

- (void)recordAssetPersonEdgeUpdateNeededForAsset:(id)asset
{
  assetCopy = asset;
  delayedAssetPersonEdgeUpdatesNeededForAssets = self->_delayedAssetPersonEdgeUpdatesNeededForAssets;
  v8 = assetCopy;
  if (!delayedAssetPersonEdgeUpdatesNeededForAssets)
  {
    v6 = [MEMORY[0x1E695DFA8] set];
    v7 = self->_delayedAssetPersonEdgeUpdatesNeededForAssets;
    self->_delayedAssetPersonEdgeUpdatesNeededForAssets = v6;

    assetCopy = v8;
    delayedAssetPersonEdgeUpdatesNeededForAssets = self->_delayedAssetPersonEdgeUpdatesNeededForAssets;
  }

  [(NSMutableSet *)delayedAssetPersonEdgeUpdatesNeededForAssets addObject:assetCopy];
  [(PLDelayedSaveActions *)self persistDelayedActionsScope:@"PLTransactionScopeSocialGroupAssetPersonEdges"];
}

- (void)_popMembersOfGroupsNeedingDeduplicationIntoDetail:(id)detail
{
  delayedDeduplicationNeededForSocialGroupsContainingMembers = self->_delayedDeduplicationNeededForSocialGroupsContainingMembers;
  if (delayedDeduplicationNeededForSocialGroupsContainingMembers)
  {
    detailCopy = detail;
    v6 = [(NSMutableSet *)delayedDeduplicationNeededForSocialGroupsContainingMembers valueForKey:@"objectID"];
    v7 = [v6 copy];
    [detailCopy setMemberIDsOfSocialGroupsNeedingDeduplication:v7];

    v8 = self->_delayedDeduplicationNeededForSocialGroupsContainingMembers;
  }

  else
  {
    v8 = 0;
  }

  [(NSMutableSet *)v8 removeAllObjects];
}

- (void)recordDeduplicationNeededForGroupsContainingMember:(id)member
{
  memberCopy = member;
  delayedDeduplicationNeededForSocialGroupsContainingMembers = self->_delayedDeduplicationNeededForSocialGroupsContainingMembers;
  v8 = memberCopy;
  if (!delayedDeduplicationNeededForSocialGroupsContainingMembers)
  {
    v6 = [MEMORY[0x1E695DFA8] set];
    v7 = self->_delayedDeduplicationNeededForSocialGroupsContainingMembers;
    self->_delayedDeduplicationNeededForSocialGroupsContainingMembers = v6;

    memberCopy = v8;
    delayedDeduplicationNeededForSocialGroupsContainingMembers = self->_delayedDeduplicationNeededForSocialGroupsContainingMembers;
  }

  [(NSMutableSet *)delayedDeduplicationNeededForSocialGroupsContainingMembers addObject:memberCopy];
  [(PLDelayedSaveActions *)self persistDelayedActionsScope:@"PLTransactionScopeSocialGroupDeduplication"];
}

- (void)_popSocialGroupNodeIDsNeedingDeduplicationIntoDetail:(id)detail
{
  delayedSocialGroupNodesNeedingDeduplication = self->_delayedSocialGroupNodesNeedingDeduplication;
  if (delayedSocialGroupNodesNeedingDeduplication)
  {
    detailCopy = detail;
    v6 = [(NSMutableSet *)delayedSocialGroupNodesNeedingDeduplication valueForKey:@"objectID"];
    v7 = [v6 copy];
    [detailCopy setSocialGroupNodeIDsNeedingDeduplication:v7];

    v8 = self->_delayedSocialGroupNodesNeedingDeduplication;
  }

  else
  {
    v8 = 0;
  }

  [(NSMutableSet *)v8 removeAllObjects];
}

- (void)recordDeduplicationNeededForNewGroupNode:(id)node
{
  nodeCopy = node;
  delayedSocialGroupNodesNeedingDeduplication = self->_delayedSocialGroupNodesNeedingDeduplication;
  v8 = nodeCopy;
  if (!delayedSocialGroupNodesNeedingDeduplication)
  {
    v6 = [MEMORY[0x1E695DFA8] set];
    v7 = self->_delayedSocialGroupNodesNeedingDeduplication;
    self->_delayedSocialGroupNodesNeedingDeduplication = v6;

    nodeCopy = v8;
    delayedSocialGroupNodesNeedingDeduplication = self->_delayedSocialGroupNodesNeedingDeduplication;
  }

  [(NSMutableSet *)delayedSocialGroupNodesNeedingDeduplication addObject:nodeCopy];
  [(PLDelayedSaveActions *)self persistDelayedActionsScope:@"PLTransactionScopeSocialGroupDeduplication"];
}

- (void)_popAssetIDsByPersonUUIDNeedingSocialGroupContainmentUpdateIntoDetail:(id)detail
{
  if (self->_delayedAssetsByPersonUUIDNeedingContainmentUpdates)
  {
    v4 = MEMORY[0x1E695DF90];
    detailCopy = detail;
    dictionary = [v4 dictionary];
    delayedAssetsByPersonUUIDNeedingContainmentUpdates = self->_delayedAssetsByPersonUUIDNeedingContainmentUpdates;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __94__PLDelayedSaveActions__popAssetIDsByPersonUUIDNeedingSocialGroupContainmentUpdateIntoDetail___block_invoke;
    v11[3] = &unk_1E7575AD0;
    v12 = dictionary;
    v8 = dictionary;
    [(NSMutableDictionary *)delayedAssetsByPersonUUIDNeedingContainmentUpdates enumerateKeysAndObjectsUsingBlock:v11];
    v9 = [v8 copy];
    [detailCopy setAssetIDsByPersonUUIDNeedingContainmentUpdates:v9];

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

- (void)recordSocialGroupContainmentUpdateNeededForPerson:(id)person andAsset:(id)asset
{
  personCopy = person;
  assetCopy = asset;
  delayedAssetsByPersonUUIDNeedingContainmentUpdates = self->_delayedAssetsByPersonUUIDNeedingContainmentUpdates;
  if (!delayedAssetsByPersonUUIDNeedingContainmentUpdates)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v9 = self->_delayedAssetsByPersonUUIDNeedingContainmentUpdates;
    self->_delayedAssetsByPersonUUIDNeedingContainmentUpdates = dictionary;

    delayedAssetsByPersonUUIDNeedingContainmentUpdates = self->_delayedAssetsByPersonUUIDNeedingContainmentUpdates;
  }

  personUUID = [personCopy personUUID];
  v11 = [(NSMutableDictionary *)delayedAssetsByPersonUUIDNeedingContainmentUpdates objectForKeyedSubscript:personUUID];

  if (!v11)
  {
    v12 = [MEMORY[0x1E695DFA8] set];
    v13 = self->_delayedAssetsByPersonUUIDNeedingContainmentUpdates;
    personUUID2 = [personCopy personUUID];
    [(NSMutableDictionary *)v13 setObject:v12 forKeyedSubscript:personUUID2];
  }

  v15 = self->_delayedAssetsByPersonUUIDNeedingContainmentUpdates;
  personUUID3 = [personCopy personUUID];
  v17 = [(NSMutableDictionary *)v15 objectForKeyedSubscript:personUUID3];
  [v17 addObject:assetCopy];

  [(PLDelayedSaveActions *)self persistDelayedActionsScope:@"PLTransactionScopeSocialGroupAssetContainment"];
}

- (void)_popAssetIDsNeedingSocialGroupContainmentUpdateIntoDetail:(id)detail
{
  delayedAssetsNeedingSocialGroupContainmentUpdates = self->_delayedAssetsNeedingSocialGroupContainmentUpdates;
  if (delayedAssetsNeedingSocialGroupContainmentUpdates)
  {
    v5 = MEMORY[0x1E695DFD8];
    detailCopy = detail;
    v7 = [(NSMutableSet *)delayedAssetsNeedingSocialGroupContainmentUpdates valueForKey:@"objectID"];
    v8 = [v5 setWithSet:v7];
    [detailCopy setAssetIDsNeedingContainmentUpdates:v8];

    v9 = self->_delayedAssetsNeedingSocialGroupContainmentUpdates;
  }

  else
  {
    v9 = 0;
  }

  [(NSMutableSet *)v9 removeAllObjects];
}

- (void)recordSocialGroupContainmentUpdateNeededForAsset:(id)asset
{
  assetCopy = asset;
  delayedAssetsNeedingSocialGroupContainmentUpdates = self->_delayedAssetsNeedingSocialGroupContainmentUpdates;
  v8 = assetCopy;
  if (!delayedAssetsNeedingSocialGroupContainmentUpdates)
  {
    v6 = [MEMORY[0x1E695DFA8] set];
    v7 = self->_delayedAssetsNeedingSocialGroupContainmentUpdates;
    self->_delayedAssetsNeedingSocialGroupContainmentUpdates = v6;

    assetCopy = v8;
    delayedAssetsNeedingSocialGroupContainmentUpdates = self->_delayedAssetsNeedingSocialGroupContainmentUpdates;
  }

  [(NSMutableSet *)delayedAssetsNeedingSocialGroupContainmentUpdates addObject:assetCopy];
  [(PLDelayedSaveActions *)self persistDelayedActionsScope:@"PLTransactionScopeSocialGroupAssetContainment"];
}

- (void)_popMemberIDsOfGroupNeedingContainmentUpdateIntoDetail:(id)detail
{
  delayedSocialGroupMembersOfGroupsNeedingContainmentUpdates = self->_delayedSocialGroupMembersOfGroupsNeedingContainmentUpdates;
  if (delayedSocialGroupMembersOfGroupsNeedingContainmentUpdates)
  {
    v5 = MEMORY[0x1E695DFD8];
    detailCopy = detail;
    v7 = [(NSMutableSet *)delayedSocialGroupMembersOfGroupsNeedingContainmentUpdates valueForKey:@"objectID"];
    v8 = [v5 setWithSet:v7];
    [detailCopy setMemberIDsOfSocialGroupsNeedingContainmentUpdates:v8];

    v9 = self->_delayedSocialGroupMembersOfGroupsNeedingContainmentUpdates;
  }

  else
  {
    v9 = 0;
  }

  [(NSMutableSet *)v9 removeAllObjects];
}

- (void)recordSocialGroupContainmentUpdateNeededForPerson:(id)person
{
  personCopy = person;
  delayedSocialGroupMembersOfGroupsNeedingContainmentUpdates = self->_delayedSocialGroupMembersOfGroupsNeedingContainmentUpdates;
  v8 = personCopy;
  if (!delayedSocialGroupMembersOfGroupsNeedingContainmentUpdates)
  {
    v6 = [MEMORY[0x1E695DFA8] set];
    v7 = self->_delayedSocialGroupMembersOfGroupsNeedingContainmentUpdates;
    self->_delayedSocialGroupMembersOfGroupsNeedingContainmentUpdates = v6;

    personCopy = v8;
    delayedSocialGroupMembersOfGroupsNeedingContainmentUpdates = self->_delayedSocialGroupMembersOfGroupsNeedingContainmentUpdates;
  }

  [(NSMutableSet *)delayedSocialGroupMembersOfGroupsNeedingContainmentUpdates addObject:personCopy];
  [(PLDelayedSaveActions *)self persistDelayedActionsScope:@"PLTransactionScopeSocialGroupAssetContainment"];
}

- (void)_popLibraryScopeRulesUpdatedIntoDetail:(id)detail
{
  if (self->_delayedLibraryScopeRulesUpdated)
  {
    [detail setLibraryScopeRulesUpdated:1];
    self->_delayedLibraryScopeRulesUpdated = 0;
  }
}

- (void)_popLibraryScopeParticipantsUpdateIntoDetail:(id)detail
{
  detailCopy = detail;
  if ([(NSMutableSet *)self->_delayedLibraryScopeParticipantsUpdateUUIDs count])
  {
    v4 = [(NSMutableSet *)self->_delayedLibraryScopeParticipantsUpdateUUIDs copy];
    [detailCopy setLibraryScopeParticipantsForUpdate:v4];

    [(NSMutableSet *)self->_delayedLibraryScopeParticipantsUpdateUUIDs removeAllObjects];
  }
}

- (void)recordLibraryScopeParticipantsUpdateForLibraryScope:(id)scope
{
  uuid = [scope uuid];
  if (uuid)
  {
    delayedLibraryScopeParticipantsUpdateUUIDs = self->_delayedLibraryScopeParticipantsUpdateUUIDs;
    v8 = uuid;
    if (!delayedLibraryScopeParticipantsUpdateUUIDs)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v7 = self->_delayedLibraryScopeParticipantsUpdateUUIDs;
      self->_delayedLibraryScopeParticipantsUpdateUUIDs = v6;

      delayedLibraryScopeParticipantsUpdateUUIDs = self->_delayedLibraryScopeParticipantsUpdateUUIDs;
    }

    [(NSMutableSet *)delayedLibraryScopeParticipantsUpdateUUIDs addObject:v8];
    uuid = v8;
  }
}

- (void)_popMemoryAssetUpdateIntoDetail:(id)detail
{
  detailCopy = detail;
  if ([(NSMutableSet *)self->_delayedMemoriesAssetUpdate count])
  {
    v4 = [(NSMutableSet *)self->_delayedMemoriesAssetUpdate copy];
    [detailCopy setMemoriesForAssetUpdate:v4];

    [(NSMutableSet *)self->_delayedMemoriesAssetUpdate removeAllObjects];
  }
}

- (void)recordMemoryAssetsUpdate:(id)update
{
  updateCopy = update;
  delayedMemoriesAssetUpdate = self->_delayedMemoriesAssetUpdate;
  v9 = updateCopy;
  if (!delayedMemoriesAssetUpdate)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v7 = self->_delayedMemoriesAssetUpdate;
    self->_delayedMemoriesAssetUpdate = v6;

    updateCopy = v9;
    delayedMemoriesAssetUpdate = self->_delayedMemoriesAssetUpdate;
  }

  uuid = [updateCopy uuid];
  [(NSMutableSet *)delayedMemoriesAssetUpdate addObject:uuid];
}

- (void)_popFeaturedContentUpdateNeededForPerson:(id)person
{
  personCopy = person;
  [personCopy setPersonsToUpdateForFeaturedContent:self->_delayedFeaturedContentUpdateNeededForPerson];
  delayedFeaturedContentUpdateNeededForPerson = self->_delayedFeaturedContentUpdateNeededForPerson;
  self->_delayedFeaturedContentUpdateNeededForPerson = 0;

  if (self->_delayedFeaturedContentUpdateNeeded)
  {
    [personCopy setShouldUpdateFeaturedContent:1];
    self->_delayedFeaturedContentUpdateNeeded = 0;
  }
}

- (void)recordFeaturedContentUpdateNeededForPersonUUID:(id)d
{
  dCopy = d;
  delayedFeaturedContentUpdateNeededForPerson = self->_delayedFeaturedContentUpdateNeededForPerson;
  v8 = dCopy;
  if (dCopy)
  {
    if (!delayedFeaturedContentUpdateNeededForPerson)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v7 = self->_delayedFeaturedContentUpdateNeededForPerson;
      self->_delayedFeaturedContentUpdateNeededForPerson = v6;

      dCopy = v8;
      delayedFeaturedContentUpdateNeededForPerson = self->_delayedFeaturedContentUpdateNeededForPerson;
    }

    [(NSMutableSet *)delayedFeaturedContentUpdateNeededForPerson addObject:dCopy];
  }

  else
  {
    self->_delayedFeaturedContentUpdateNeededForPerson = 0;
  }

  self->_delayedFeaturedContentUpdateNeeded = 1;
}

- (void)_popWallpaperSuggestionReloadIntoDetail:(id)detail
{
  detailCopy = detail;
  if ([(NSMutableSet *)self->_delayedWallpaperSuggestionUUIDs count])
  {
    v4 = [(NSMutableSet *)self->_delayedWallpaperSuggestionUUIDs copy];
    [detailCopy setWallpaperSuggestionReloadUUIDs:v4];

    [(NSMutableSet *)self->_delayedWallpaperSuggestionUUIDs removeAllObjects];
  }
}

- (void)recordWallpaperSuggestionReloadForUUID:(id)d
{
  dCopy = d;
  delayedWallpaperSuggestionUUIDs = self->_delayedWallpaperSuggestionUUIDs;
  v8 = dCopy;
  if (!delayedWallpaperSuggestionUUIDs)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v7 = self->_delayedWallpaperSuggestionUUIDs;
    self->_delayedWallpaperSuggestionUUIDs = v6;

    dCopy = v8;
    delayedWallpaperSuggestionUUIDs = self->_delayedWallpaperSuggestionUUIDs;
  }

  [(NSMutableSet *)delayedWallpaperSuggestionUUIDs addObject:dCopy];
}

- (void)_popWallpaperFavoriteAlbumAssetRemovalReloadNeeded:(id)needed
{
  delayedWallpaperFavoriteAlbumAssetRemovalNeeded = self->_delayedWallpaperFavoriteAlbumAssetRemovalNeeded;
  if (delayedWallpaperFavoriteAlbumAssetRemovalNeeded)
  {
    neededCopy = needed;
    v6 = [(NSMutableSet *)delayedWallpaperFavoriteAlbumAssetRemovalNeeded copy];
    [neededCopy setAssetsForWallpaperFavoriteAlbumRemoval:v6];

    v7 = self->_delayedWallpaperFavoriteAlbumAssetRemovalNeeded;

    [(NSMutableSet *)v7 removeAllObjects];
  }
}

- (void)recordAssetIDForWallpaperFavoriteAlbumRemoval:(id)removal
{
  removalCopy = removal;
  delayedWallpaperFavoriteAlbumAssetRemovalNeeded = self->_delayedWallpaperFavoriteAlbumAssetRemovalNeeded;
  v8 = removalCopy;
  if (!delayedWallpaperFavoriteAlbumAssetRemovalNeeded)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v7 = self->_delayedWallpaperFavoriteAlbumAssetRemovalNeeded;
    self->_delayedWallpaperFavoriteAlbumAssetRemovalNeeded = v6;

    removalCopy = v8;
    delayedWallpaperFavoriteAlbumAssetRemovalNeeded = self->_delayedWallpaperFavoriteAlbumAssetRemovalNeeded;
  }

  [(NSMutableSet *)delayedWallpaperFavoriteAlbumAssetRemovalNeeded addObject:removalCopy];
}

- (void)_popWallpaperUserAlbumAssetRemovalReloadNeeded:(id)needed
{
  delayedWallpaperUserAlbumAssetRemovalNeeded = self->_delayedWallpaperUserAlbumAssetRemovalNeeded;
  if (delayedWallpaperUserAlbumAssetRemovalNeeded)
  {
    neededCopy = needed;
    v6 = [(NSMutableDictionary *)delayedWallpaperUserAlbumAssetRemovalNeeded copy];
    [neededCopy setAssetsForWallpaperUserAlbumRemoval:v6];

    v7 = self->_delayedWallpaperUserAlbumAssetRemovalNeeded;

    [(NSMutableDictionary *)v7 removeAllObjects];
  }
}

- (void)recordAssetID:(id)d forWallpaperUserAlbumRemoval:(id)removal
{
  dCopy = d;
  removalCopy = removal;
  delayedWallpaperUserAlbumAssetRemovalNeeded = self->_delayedWallpaperUserAlbumAssetRemovalNeeded;
  if (!delayedWallpaperUserAlbumAssetRemovalNeeded)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9 = self->_delayedWallpaperUserAlbumAssetRemovalNeeded;
    self->_delayedWallpaperUserAlbumAssetRemovalNeeded = v8;

    delayedWallpaperUserAlbumAssetRemovalNeeded = self->_delayedWallpaperUserAlbumAssetRemovalNeeded;
  }

  v10 = [(NSMutableDictionary *)delayedWallpaperUserAlbumAssetRemovalNeeded objectForKeyedSubscript:dCopy];

  if (!v10)
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(NSMutableDictionary *)self->_delayedWallpaperUserAlbumAssetRemovalNeeded setObject:v11 forKeyedSubscript:dCopy];
  }

  v12 = [(NSMutableDictionary *)self->_delayedWallpaperUserAlbumAssetRemovalNeeded objectForKeyedSubscript:dCopy];
  uuid = [removalCopy uuid];
  [v12 addObject:uuid];
}

- (void)_popWidgetFavoriteAlbumAssetRemovalReloadNeeded:(id)needed
{
  delayedWidgetFavoriteAlbumAssetRemovalNeeded = self->_delayedWidgetFavoriteAlbumAssetRemovalNeeded;
  if (delayedWidgetFavoriteAlbumAssetRemovalNeeded)
  {
    neededCopy = needed;
    v6 = [(NSMutableSet *)delayedWidgetFavoriteAlbumAssetRemovalNeeded copy];
    [neededCopy setAssetsForWidgetFavoriteAlbumRemoval:v6];

    v7 = self->_delayedWidgetFavoriteAlbumAssetRemovalNeeded;

    [(NSMutableSet *)v7 removeAllObjects];
  }
}

- (void)recordAssetIDForWidgetFavoriteAlbumRemoval:(id)removal
{
  removalCopy = removal;
  delayedWidgetFavoriteAlbumAssetRemovalNeeded = self->_delayedWidgetFavoriteAlbumAssetRemovalNeeded;
  v8 = removalCopy;
  if (!delayedWidgetFavoriteAlbumAssetRemovalNeeded)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v7 = self->_delayedWidgetFavoriteAlbumAssetRemovalNeeded;
    self->_delayedWidgetFavoriteAlbumAssetRemovalNeeded = v6;

    removalCopy = v8;
    delayedWidgetFavoriteAlbumAssetRemovalNeeded = self->_delayedWidgetFavoriteAlbumAssetRemovalNeeded;
  }

  [(NSMutableSet *)delayedWidgetFavoriteAlbumAssetRemovalNeeded addObject:removalCopy];
}

- (void)_popWidgetUserAlbumAssetRemovalReloadNeeded:(id)needed
{
  delayedWidgetUserAlbumAssetRemovalNeeded = self->_delayedWidgetUserAlbumAssetRemovalNeeded;
  if (delayedWidgetUserAlbumAssetRemovalNeeded)
  {
    neededCopy = needed;
    v6 = [(NSMutableDictionary *)delayedWidgetUserAlbumAssetRemovalNeeded copy];
    [neededCopy setAssetsForWidgetUserAlbumRemoval:v6];

    v7 = self->_delayedWidgetUserAlbumAssetRemovalNeeded;

    [(NSMutableDictionary *)v7 removeAllObjects];
  }
}

- (void)recordAssetID:(id)d forWidgetUserAlbumRemoval:(id)removal
{
  dCopy = d;
  removalCopy = removal;
  delayedWidgetUserAlbumAssetRemovalNeeded = self->_delayedWidgetUserAlbumAssetRemovalNeeded;
  if (!delayedWidgetUserAlbumAssetRemovalNeeded)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9 = self->_delayedWidgetUserAlbumAssetRemovalNeeded;
    self->_delayedWidgetUserAlbumAssetRemovalNeeded = v8;

    delayedWidgetUserAlbumAssetRemovalNeeded = self->_delayedWidgetUserAlbumAssetRemovalNeeded;
  }

  v10 = [(NSMutableDictionary *)delayedWidgetUserAlbumAssetRemovalNeeded objectForKeyedSubscript:dCopy];

  if (!v10)
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(NSMutableDictionary *)self->_delayedWidgetUserAlbumAssetRemovalNeeded setObject:v11 forKeyedSubscript:dCopy];
  }

  v12 = [(NSMutableDictionary *)self->_delayedWidgetUserAlbumAssetRemovalNeeded objectForKeyedSubscript:dCopy];
  uuid = [removalCopy uuid];
  [v12 addObject:uuid];
}

- (void)_popWidgetTimelineReloadNeeded:(id)needed
{
  neededCopy = needed;
  if ([(NSMutableSet *)self->_delayedWidgetTimelineReloadTypesNeeded count])
  {
    v4 = [(NSMutableSet *)self->_delayedWidgetTimelineReloadTypesNeeded copy];
    [neededCopy setWidgetTimelineReloadTypesNeeded:v4];

    [(NSMutableSet *)self->_delayedWidgetTimelineReloadTypesNeeded removeAllObjects];
  }
}

- (void)recordWidgetTimelineReloadNeededForType:(int64_t)type
{
  delayedWidgetTimelineReloadTypesNeeded = self->_delayedWidgetTimelineReloadTypesNeeded;
  if (!delayedWidgetTimelineReloadTypesNeeded)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v7 = self->_delayedWidgetTimelineReloadTypesNeeded;
    self->_delayedWidgetTimelineReloadTypesNeeded = v6;

    delayedWidgetTimelineReloadTypesNeeded = self->_delayedWidgetTimelineReloadTypesNeeded;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  [(NSMutableSet *)delayedWidgetTimelineReloadTypesNeeded addObject:v8];
}

- (void)_popDuetDeletedMemoriesIntoDetail:(id)detail
{
  detailCopy = detail;
  if ([(NSMutableSet *)self->_delayedMemoriesForDuetDelete count])
  {
    v4 = [(NSMutableSet *)self->_delayedMemoriesForDuetDelete copy];
    [detailCopy setMemoriesForDuetDelete:v4];

    [(NSMutableSet *)self->_delayedMemoriesForDuetDelete removeAllObjects];
  }
}

- (void)recordMemoryForDuetDelete:(id)delete
{
  deleteCopy = delete;
  delayedMemoriesForDuetDelete = self->_delayedMemoriesForDuetDelete;
  v9 = deleteCopy;
  if (!delayedMemoriesForDuetDelete)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v7 = self->_delayedMemoriesForDuetDelete;
    self->_delayedMemoriesForDuetDelete = v6;

    deleteCopy = v9;
    delayedMemoriesForDuetDelete = self->_delayedMemoriesForDuetDelete;
  }

  uuid = [deleteCopy uuid];
  [(NSMutableSet *)delayedMemoriesForDuetDelete addObject:uuid];
}

- (void)_popDuetDeletedAssetsIntoDetail:(id)detail
{
  detailCopy = detail;
  if ([(NSMutableSet *)self->_delayedAssetsForDuetDelete count])
  {
    v4 = [(NSMutableSet *)self->_delayedAssetsForDuetDelete copy];
    [detailCopy setAssetsForDuetDelete:v4];

    [(NSMutableSet *)self->_delayedAssetsForDuetDelete removeAllObjects];
  }
}

- (void)recordAssetForDuetDelete:(id)delete
{
  deleteCopy = delete;
  delayedAssetsForDuetDelete = self->_delayedAssetsForDuetDelete;
  v9 = deleteCopy;
  if (!delayedAssetsForDuetDelete)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v7 = self->_delayedAssetsForDuetDelete;
    self->_delayedAssetsForDuetDelete = v6;

    deleteCopy = v9;
    delayedAssetsForDuetDelete = self->_delayedAssetsForDuetDelete;
  }

  uuid = [deleteCopy uuid];
  [(NSMutableSet *)delayedAssetsForDuetDelete addObject:uuid];
}

- (void)_popDelayedAssetsForAnalysis:(id *)analysis
{
  if (analysis)
  {
    *analysis = self->_delayedWorkerTypesToAnalyzeByAssetUUID;
  }

  delayedWorkerTypesToAnalyzeByAssetUUID = self->_delayedWorkerTypesToAnalyzeByAssetUUID;
  self->_delayedWorkerTypesToAnalyzeByAssetUUID = 0;
}

- (void)recordAssetForAnalysis:(id)analysis workerFlags:(int)flags workerType:(signed __int16)type
{
  typeCopy = type;
  analysisCopy = analysis;
  v18 = analysisCopy;
  if (!self->_delayedWorkerTypesToAnalyzeByAssetUUID)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    delayedWorkerTypesToAnalyzeByAssetUUID = self->_delayedWorkerTypesToAnalyzeByAssetUUID;
    self->_delayedWorkerTypesToAnalyzeByAssetUUID = v9;

    analysisCopy = v18;
  }

  uuid = [analysisCopy uuid];
  dictionary = [(NSMutableDictionary *)self->_delayedWorkerTypesToAnalyzeByAssetUUID objectForKeyedSubscript:uuid];
  if (!dictionary)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [(NSMutableDictionary *)self->_delayedWorkerTypesToAnalyzeByAssetUUID setObject:dictionary forKeyedSubscript:uuid];
  }

  v13 = [MEMORY[0x1E696AD98] numberWithShort:typeCopy];
  v14 = [dictionary objectForKeyedSubscript:v13];
  integerValue = [v14 integerValue];

  flags = [MEMORY[0x1E696AD98] numberWithInt:integerValue | flags];
  v17 = [MEMORY[0x1E696AD98] numberWithShort:typeCopy];
  [dictionary setObject:flags forKeyedSubscript:v17];
}

- (void)_popAlbumTrashIntoDetail:(id)detail
{
  detailCopy = detail;
  if ([(NSMutableSet *)self->_delayedAlbumTrashUpdates count])
  {
    v4 = [(NSMutableSet *)self->_delayedAlbumTrashUpdates valueForKey:@"objectID"];
    [detailCopy setAlbumTrashCycleUpdates:v4];

    [(NSMutableSet *)self->_delayedAlbumTrashUpdates removeAllObjects];
  }
}

- (void)recordAlbumForTrashUpdate:(id)update
{
  updateCopy = update;
  if (([updateCopy isDeleted] & 1) == 0)
  {
    delayedAlbumTrashUpdates = self->_delayedAlbumTrashUpdates;
    if (!delayedAlbumTrashUpdates)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v6 = self->_delayedAlbumTrashUpdates;
      self->_delayedAlbumTrashUpdates = v5;

      delayedAlbumTrashUpdates = self->_delayedAlbumTrashUpdates;
    }

    [(NSMutableSet *)delayedAlbumTrashUpdates addObject:updateCopy];
    [(PLDelayedSaveActions *)self persistDelayedActionsScope:@"PLTransactionScopeAlbumTrashCycle"];
  }
}

- (void)_popDelayedAlbumKeyAssetsUpdates:(id *)updates
{
  if (updates)
  {
    v5 = [(NSMutableSet *)self->_delayedAlbumKeyAssetsUpdates valueForKey:@"objectID"];
    *updates = v5;
  }

  delayedAlbumKeyAssetsUpdates = self->_delayedAlbumKeyAssetsUpdates;

  [(NSMutableSet *)delayedAlbumKeyAssetsUpdates removeAllObjects];
}

- (void)_popDelayedAlbumCountsAndDateRangeUpdates:(id *)updates
{
  if (updates)
  {
    v5 = [(NSMutableSet *)self->_delayedAlbumCountsAndDateRangeUpdates valueForKey:@"objectID"];
    *updates = v5;
  }

  delayedAlbumCountsAndDateRangeUpdates = self->_delayedAlbumCountsAndDateRangeUpdates;

  [(NSMutableSet *)delayedAlbumCountsAndDateRangeUpdates removeAllObjects];
}

- (void)recordAssetForImportSessionCountsAndDateRangeUpdate:(id)update
{
  importSession = [update importSession];
  v5 = importSession;
  if (importSession)
  {
    v7 = importSession;
    isDeleted = [importSession isDeleted];
    v5 = v7;
    if ((isDeleted & 1) == 0)
    {
      [(PLDelayedSaveActions *)self _recordDelayedImportSessionCountsAndDateRangeUpdate:v7];
      v5 = v7;
    }
  }
}

- (void)recordAssetForAlbumCountsDateRangeAndKeyAssetsUpdate:(id)update
{
  v15 = *MEMORY[0x1E69E9840];
  albums = [update albums];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [albums countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(albums);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        if (([v9 isDeleted] & 1) == 0)
        {
          [(PLDelayedSaveActions *)self _recordDelayedAlbumCountsAndDateRangeUpdate:v9];
          [(PLDelayedSaveActions *)self _recordDelayedAlbumKeyAssetsUpdate:v9];
        }
      }

      v6 = [albums countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)recordAlbumForKeyAssetsUpdate:(id)update
{
  updateCopy = update;
  if (([updateCopy isDeleted] & 1) == 0)
  {
    [(PLDelayedSaveActions *)self _recordDelayedAlbumKeyAssetsUpdate:updateCopy];
  }
}

- (void)recordAlbumForCountsAndDateRangeUpdate:(id)update
{
  updateCopy = update;
  if (([updateCopy isDeleted] & 1) == 0)
  {
    [(PLDelayedSaveActions *)self _recordDelayedAlbumCountsAndDateRangeUpdate:updateCopy];
  }
}

- (void)_recordDelayedAlbumKeyAssetsUpdate:(id)update
{
  updateCopy = update;
  delayedAlbumKeyAssetsUpdates = self->_delayedAlbumKeyAssetsUpdates;
  v8 = updateCopy;
  if (!delayedAlbumKeyAssetsUpdates)
  {
    v6 = objc_opt_new();
    v7 = self->_delayedAlbumKeyAssetsUpdates;
    self->_delayedAlbumKeyAssetsUpdates = v6;

    updateCopy = v8;
    delayedAlbumKeyAssetsUpdates = self->_delayedAlbumKeyAssetsUpdates;
  }

  [(NSMutableSet *)delayedAlbumKeyAssetsUpdates addObject:updateCopy];
  [(PLDelayedSaveActions *)self persistDelayedActionsScope:@"PLTransactionScopeAlbumCounts"];
}

- (void)_recordDelayedAlbumCountsAndDateRangeUpdate:(id)update
{
  updateCopy = update;
  delayedAlbumCountsAndDateRangeUpdates = self->_delayedAlbumCountsAndDateRangeUpdates;
  v8 = updateCopy;
  if (!delayedAlbumCountsAndDateRangeUpdates)
  {
    v6 = objc_opt_new();
    v7 = self->_delayedAlbumCountsAndDateRangeUpdates;
    self->_delayedAlbumCountsAndDateRangeUpdates = v6;

    updateCopy = v8;
    delayedAlbumCountsAndDateRangeUpdates = self->_delayedAlbumCountsAndDateRangeUpdates;
  }

  [(NSMutableSet *)delayedAlbumCountsAndDateRangeUpdates addObject:updateCopy];
  [(PLDelayedSaveActions *)self persistDelayedActionsScope:@"PLTransactionScopeAlbumCounts"];
}

- (void)_popDelayedImportSessionCountsAndDateRangeUpdates:(id *)updates
{
  if (updates)
  {
    v5 = [(NSMutableSet *)self->_delayedImportSessionCountsAndDateRangeUpdates valueForKey:@"objectID"];
    *updates = v5;
  }

  delayedImportSessionCountsAndDateRangeUpdates = self->_delayedImportSessionCountsAndDateRangeUpdates;

  [(NSMutableSet *)delayedImportSessionCountsAndDateRangeUpdates removeAllObjects];
}

- (void)recordImportSessionCountsAndDateRangeUpdate:(id)update
{
  updateCopy = update;
  if (([updateCopy isDeleted] & 1) == 0)
  {
    changedValues = [updateCopy changedValues];
    v5 = [changedValues objectForKeyedSubscript:@"assets"];

    if (v5)
    {
      [(PLDelayedSaveActions *)self _recordDelayedImportSessionCountsAndDateRangeUpdate:updateCopy];
    }
  }
}

- (void)_recordDelayedImportSessionCountsAndDateRangeUpdate:(id)update
{
  updateCopy = update;
  delayedImportSessionCountsAndDateRangeUpdates = self->_delayedImportSessionCountsAndDateRangeUpdates;
  v8 = updateCopy;
  if (!delayedImportSessionCountsAndDateRangeUpdates)
  {
    v6 = objc_opt_new();
    v7 = self->_delayedImportSessionCountsAndDateRangeUpdates;
    self->_delayedImportSessionCountsAndDateRangeUpdates = v6;

    updateCopy = v8;
    delayedImportSessionCountsAndDateRangeUpdates = self->_delayedImportSessionCountsAndDateRangeUpdates;
  }

  [(NSMutableSet *)delayedImportSessionCountsAndDateRangeUpdates addObject:updateCopy];
  [(PLDelayedSaveActions *)self persistDelayedActionsScope:@"PLTransactionScopeImportSessionCounts"];
}

- (void)_popDelayedAssetsForFilesystemPersistencyUpdates:(id *)updates
{
  if (updates)
  {
    v5 = [(NSMutableSet *)self->_delayedAssetsForFileSystemPersistency valueForKey:@"objectID"];
    *updates = v5;
  }

  delayedAssetsForFileSystemPersistency = self->_delayedAssetsForFileSystemPersistency;

  [(NSMutableSet *)delayedAssetsForFileSystemPersistency removeAllObjects];
}

- (void)recordAssetForFileSystemPersistencyUpdate:(id)update
{
  updateCopy = update;
  if (([updateCopy disableFileSystemPersistency] & 1) == 0)
  {
    delayedAssetsForFileSystemPersistency = self->_delayedAssetsForFileSystemPersistency;
    if (!delayedAssetsForFileSystemPersistency)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v6 = self->_delayedAssetsForFileSystemPersistency;
      self->_delayedAssetsForFileSystemPersistency = v5;

      delayedAssetsForFileSystemPersistency = self->_delayedAssetsForFileSystemPersistency;
    }

    [(NSMutableSet *)delayedAssetsForFileSystemPersistency addObject:updateCopy];
    [(PLDelayedSaveActions *)self persistDelayedActionsScope:@"PLTransactionScopeFilePersistence"];
  }
}

- (void)_popDelayedCloudFeedAlbumUpdates:(id *)updates collectionShareUpdates:(id *)shareUpdates collectionShareDeletes:(id *)deletes assetInserts:(id *)inserts assetUpdates:(id *)assetUpdates commentInserts:(id *)commentInserts invitationRecordUpdates:(id *)recordUpdates shareParticipantUpdates:(id *)self0 shareParticipantDeletes:(id *)self1 deletionEntries:(id *)self2
{
  v41 = *MEMORY[0x1E69E9840];
  if (updates)
  {
    v19 = [(NSMutableArray *)self->_delayedCloudFeedAlbumUpdates valueForKey:@"objectID"];
    *updates = v19;
  }

  [(NSMutableArray *)self->_delayedCloudFeedAlbumUpdates removeAllObjects];
  if (shareUpdates)
  {
    v20 = [(NSMutableArray *)self->_delayedCloudFeedCollectionShareUpdates valueForKey:@"objectID"];
    *shareUpdates = v20;
  }

  [(NSMutableArray *)self->_delayedCloudFeedCollectionShareUpdates removeAllObjects];
  if (deletes)
  {
    v21 = [(NSMutableArray *)self->_delayedCloudFeedCollectionShareDeletes copy];
    *deletes = v21;
  }

  [(NSMutableArray *)self->_delayedCloudFeedCollectionShareDeletes removeAllObjects];
  if (inserts)
  {
    v22 = [(NSMutableArray *)self->_delayedCloudFeedAssetInserts valueForKey:@"objectID"];
    *inserts = v22;
  }

  [(NSMutableArray *)self->_delayedCloudFeedAssetInserts removeAllObjects];
  if (assetUpdates)
  {
    v23 = [(NSMutableArray *)self->_delayedCloudFeedAssetUpdates valueForKey:@"objectID"];
    *assetUpdates = v23;
  }

  [(NSMutableArray *)self->_delayedCloudFeedAssetUpdates removeAllObjects];
  if (commentInserts)
  {
    v24 = [(NSMutableArray *)self->_delayedCloudFeedCommentInserts valueForKey:@"objectID"];
    *commentInserts = v24;
  }

  [(NSMutableArray *)self->_delayedCloudFeedCommentInserts removeAllObjects];
  if (recordUpdates)
  {
    v25 = [(NSMutableArray *)self->_delayedCloudFeedInvitationRecordUpdates valueForKey:@"objectID"];
    *recordUpdates = v25;
  }

  [(NSMutableArray *)self->_delayedCloudFeedInvitationRecordUpdates removeAllObjects];
  if (participantUpdates)
  {
    v26 = [(NSMutableArray *)self->_delayedCloudFeedShareParticipantUpdates valueForKey:@"objectID"];
    *participantUpdates = v26;
  }

  [(NSMutableArray *)self->_delayedCloudFeedShareParticipantUpdates removeAllObjects];
  if (participantDeletes)
  {
    v27 = [(NSMutableArray *)self->_delayedCloudFeedShareParticipantDeletes copy];
    *participantDeletes = v27;
  }

  [(NSMutableArray *)self->_delayedCloudFeedShareParticipantDeletes removeAllObjects];
  if (entries && [(NSMutableSet *)self->_delayedCloudFeedDeletionEntries count])
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

          objectID = [*(*(&v36 + 1) + 8 * i) objectID];
          [v28 addObject:objectID];
        }

        v31 = [(NSMutableSet *)v29 countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v31);
    }

    v35 = v28;
    *entries = v28;
  }

  [(NSMutableSet *)self->_delayedCloudFeedDeletionEntries removeAllObjects];
}

- (void)recordCloudFeedAssetsEntryForAssetUpdate:(id)update
{
  v8[1] = *MEMORY[0x1E69E9840];
  updateCopy = update;
  if (([updateCopy isDeleted] & 1) == 0)
  {
    entryAssets = [updateCopy entryAssets];
    v6 = [entryAssets count];

    if (!v6)
    {
      v8[0] = updateCopy;
      v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
      [(PLDelayedSaveActions *)self _recordDelayedCloudFeedDeletionEntries:v7];
    }
  }
}

- (void)recordCloudFeedCommentsEntryForCommentUpdate:(id)update
{
  v8[1] = *MEMORY[0x1E69E9840];
  updateCopy = update;
  if (([updateCopy isDeleted] & 1) == 0)
  {
    entryLikeComments = [updateCopy entryLikeComments];
    if (![entryLikeComments count])
    {
      entryComments = [updateCopy entryComments];
      v7 = [entryComments count];

      if (v7)
      {
        goto LABEL_5;
      }

      v8[0] = updateCopy;
      entryLikeComments = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
      [(PLDelayedSaveActions *)self _recordDelayedCloudFeedDeletionEntries:entryLikeComments];
    }
  }

LABEL_5:
}

- (void)recordShareParticipantForCloudFeedUpdate:(id)update
{
  v24 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  v6 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = NSStringFromSelector(a2);
    objectID = [updateCopy objectID];
    v14 = 138413314;
    v15 = v7;
    v16 = 2112;
    v17 = objectID;
    v18 = 1024;
    isDeleted = [updateCopy isDeleted];
    v20 = 1024;
    isInserted = [updateCopy isInserted];
    v22 = 1024;
    isUpdated = [updateCopy isUpdated];
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEBUG, "%@ %@ isDeleted=%i isInserted=%i isUpdated=%i", &v14, 0x28u);
  }

  if (![updateCopy isDeleted])
  {
    if ([updateCopy isInserted])
    {
      [(PLDelayedSaveActions *)self _recordDelayedCloudFeedShareParticipantUpdate:updateCopy];
      goto LABEL_15;
    }

    if (![updateCopy isUpdated])
    {
      goto LABEL_15;
    }

    changedValues = [updateCopy changedValues];
    v10 = PLCloudFeedGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      allKeys = [changedValues allKeys];
      v14 = 138412290;
      v15 = allKeys;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEBUG, "changedValues=%@", &v14, 0xCu);
    }

    v12 = [changedValues objectForKeyedSubscript:@"acceptanceStatus"];
    if (v12 || ([changedValues objectForKeyedSubscript:@"role"], (v12 = objc_claimAutoreleasedReturnValue()) != 0))
    {
    }

    else
    {
      v13 = [changedValues objectForKeyedSubscript:@"subscriptionDate"];

      if (!v13)
      {
        goto LABEL_14;
      }
    }

    [(PLDelayedSaveActions *)self _recordDelayedCloudFeedShareParticipantUpdate:updateCopy];
LABEL_14:

    goto LABEL_15;
  }

  [(PLDelayedSaveActions *)self _recordDelayedCloudFeedShareParticipantDelete:updateCopy];
LABEL_15:
}

- (void)recordInvitationRecordForCloudFeedUpdate:(id)update
{
  v33 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  v6 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = NSStringFromSelector(a2);
    objectID = [updateCopy objectID];
    *buf = 138413314;
    v24 = v7;
    v25 = 2112;
    v26 = objectID;
    v27 = 1024;
    isDeleted = [updateCopy isDeleted];
    v29 = 1024;
    isInserted = [updateCopy isInserted];
    v31 = 1024;
    isUpdated = [updateCopy isUpdated];
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEBUG, "%@ %@ isDeleted=%i isInserted=%i isUpdated=%i", buf, 0x28u);
  }

  if ([updateCopy isDeleted])
  {
    managedObjectContext = [updateCopy managedObjectContext];
    if (([managedObjectContext hasPreviouslyMergedDeleteForObject:updateCopy] & 1) == 0)
    {
      v10 = MEMORY[0x1E695D5E0];
      v11 = +[PLCloudFeedEntry entityName];
      v12 = [v10 fetchRequestWithEntityName:v11];

      v13 = MEMORY[0x1E696AE18];
      cloudGUID = [updateCopy cloudGUID];
      v15 = [v13 predicateWithFormat:@"((entryType = %d) OR (entryType = %d)) AND (entryInvitationRecordGUID = %@)", 5, 6, cloudGUID];
      [v12 setPredicate:v15];

      v16 = [managedObjectContext executeFetchRequest:v12 error:0];
      v17 = PLCloudFeedGetLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        cloudGUID2 = [updateCopy cloudGUID];
        *buf = 138412546;
        v24 = cloudGUID2;
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

  if (![updateCopy isInserted])
  {
    if (![updateCopy isUpdated])
    {
      goto LABEL_20;
    }

    managedObjectContext = [updateCopy changedValues];
    v19 = PLCloudFeedGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      allKeys = [managedObjectContext allKeys];
      *buf = 138412290;
      v24 = allKeys;
      _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_DEBUG, "changedValues=%@", buf, 0xCu);
    }

    v21 = [managedObjectContext objectForKeyedSubscript:@"invitationState"];
    if (v21 || ([managedObjectContext objectForKeyedSubscript:@"invitationStateLocal"], (v21 = objc_claimAutoreleasedReturnValue()) != 0))
    {
    }

    else
    {
      v22 = [managedObjectContext objectForKeyedSubscript:@"inviteeSubscriptionDate"];

      if (!v22)
      {
        goto LABEL_19;
      }
    }

    [(PLDelayedSaveActions *)self _recordDelayedCloudFeedInvitationRecordUpdate:updateCopy];
LABEL_19:

    goto LABEL_20;
  }

  [(PLDelayedSaveActions *)self _recordDelayedCloudFeedInvitationRecordUpdate:updateCopy];
LABEL_20:
}

- (void)recordCommentForCloudFeedUpdate:(id)update
{
  v25 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  v6 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = NSStringFromSelector(a2);
    objectID = [updateCopy objectID];
    *buf = 138413314;
    v16 = v7;
    v17 = 2112;
    v18 = objectID;
    v19 = 1024;
    isDeleted = [updateCopy isDeleted];
    v21 = 1024;
    isInserted = [updateCopy isInserted];
    v23 = 1024;
    isUpdated = [updateCopy isUpdated];
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEBUG, "%@ %@ isDeleted=%i isInserted=%i isUpdated=%i", buf, 0x28u);
  }

  if ([updateCopy isDeleted])
  {
    managedObjectContext = [updateCopy managedObjectContext];
    if (([managedObjectContext hasPreviouslyMergedDeleteForObject:updateCopy] & 1) == 0)
    {
      cloudFeedEntry = [updateCopy cloudFeedEntry];
      v11 = PLCloudFeedGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        objectID2 = [cloudFeedEntry objectID];
        *buf = 138412290;
        v16 = objectID2;
        _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEBUG, "cloudFeedEntry=%@", buf, 0xCu);
      }

      if (cloudFeedEntry)
      {
        v14 = cloudFeedEntry;
        v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
        [(PLDelayedSaveActions *)self _recordDelayedCloudFeedDeletionEntries:v13];
      }
    }
  }

  else if ([updateCopy isInserted])
  {
    [(PLDelayedSaveActions *)self _recordDelayedCloudFeedCommentInsert:updateCopy];
  }

  else
  {
    [updateCopy isUpdated];
  }
}

- (void)recordAssetForCloudFeedUpdate:(id)update
{
  v25 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  v6 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = NSStringFromSelector(a2);
    objectID = [updateCopy objectID];
    *buf = 138413314;
    v16 = v7;
    v17 = 2112;
    v18 = objectID;
    v19 = 1024;
    isIncludedInCloudFeeds = [updateCopy isIncludedInCloudFeeds];
    v21 = 1024;
    isDeleted = [updateCopy isDeleted];
    v23 = 1024;
    isInserted = [updateCopy isInserted];
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEBUG, "%@ %@ isIncludedInCloudFeeds=%i isDeleted=%i isInserted=%i", buf, 0x28u);
  }

  if ([updateCopy isIncludedInCloudFeeds])
  {
    if ([updateCopy isDeleted])
    {
      managedObjectContext = [updateCopy managedObjectContext];
      if (([managedObjectContext hasPreviouslyMergedDeleteForObject:updateCopy] & 1) == 0)
      {
        cloudFeedAssetsEntry = [updateCopy cloudFeedAssetsEntry];
        v11 = PLCloudFeedGetLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          objectID2 = [cloudFeedAssetsEntry objectID];
          *buf = 138412290;
          v16 = objectID2;
          _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEBUG, "cloudFeedEntry=%@", buf, 0xCu);
        }

        if (cloudFeedAssetsEntry)
        {
          v14 = cloudFeedAssetsEntry;
          v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
          [(PLDelayedSaveActions *)self _recordDelayedCloudFeedDeletionEntries:v13];
        }
      }
    }

    else if ([updateCopy isInserted])
    {
      [(PLDelayedSaveActions *)self _recordDelayedCloudFeedAssetInsert:updateCopy];
    }
  }
}

- (void)recordCollectionShareForCloudFeedUpdate:(id)update
{
  v24 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  v6 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = NSStringFromSelector(a2);
    objectID = [updateCopy objectID];
    v14 = 138413314;
    v15 = v7;
    v16 = 2112;
    v17 = objectID;
    v18 = 1024;
    isDeleted = [updateCopy isDeleted];
    v20 = 1024;
    isInserted = [updateCopy isInserted];
    v22 = 1024;
    isUpdated = [updateCopy isUpdated];
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEBUG, "%@ %@ isDeleted=%i isInserted=%i isUpdated=%i", &v14, 0x28u);
  }

  if (![updateCopy isDeleted])
  {
    if ([updateCopy isInserted])
    {
      [(PLDelayedSaveActions *)self _recordDelayedCloudFeedCollectionShareUpdate:updateCopy];
      goto LABEL_15;
    }

    if (![updateCopy isUpdated])
    {
      goto LABEL_15;
    }

    changedValues = [updateCopy changedValues];
    v10 = PLCloudFeedGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      allKeys = [changedValues allKeys];
      v14 = 138412290;
      v15 = allKeys;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEBUG, "changedValues=%@", &v14, 0xCu);
    }

    v12 = [changedValues objectForKeyedSubscript:@"status"];
    if (v12 || ([changedValues objectForKeyedSubscript:@"cloudSubscriptionDate"], (v12 = objc_claimAutoreleasedReturnValue()) != 0))
    {
    }

    else
    {
      v13 = [changedValues objectForKeyedSubscript:@"publicPermission"];

      if (!v13)
      {
        goto LABEL_14;
      }
    }

    [(PLDelayedSaveActions *)self _recordDelayedCloudFeedCollectionShareUpdate:updateCopy];
LABEL_14:

    goto LABEL_15;
  }

  [(PLDelayedSaveActions *)self _recordDelayedCloudFeedCollectionShareDelete:updateCopy];
LABEL_15:
}

- (void)recordAlbumForCloudFeedUpdate:(id)update
{
  v33 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  v6 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = NSStringFromSelector(a2);
    objectID = [updateCopy objectID];
    *buf = 138413314;
    v24 = v7;
    v25 = 2112;
    v26 = objectID;
    v27 = 1024;
    isDeleted = [updateCopy isDeleted];
    v29 = 1024;
    isInserted = [updateCopy isInserted];
    v31 = 1024;
    isUpdated = [updateCopy isUpdated];
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEBUG, "%@ %@ isDeleted=%i isInserted=%i isUpdated=%i", buf, 0x28u);
  }

  if ([updateCopy isDeleted])
  {
    managedObjectContext = [updateCopy managedObjectContext];
    if (([managedObjectContext hasPreviouslyMergedDeleteForObject:updateCopy] & 1) == 0)
    {
      v10 = MEMORY[0x1E695D5E0];
      v11 = +[PLCloudFeedEntry entityName];
      v12 = [v10 fetchRequestWithEntityName:v11];

      v13 = MEMORY[0x1E696AE18];
      cloudGUID = [updateCopy cloudGUID];
      v15 = [v13 predicateWithFormat:@"((entryType = %d) OR (entryType = %d) OR (entryType = %d)) AND (entryAlbumGUID = %@)", 3, 4, 7, cloudGUID];
      [v12 setPredicate:v15];

      v16 = [managedObjectContext executeFetchRequest:v12 error:0];
      v17 = PLCloudFeedGetLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        cloudGUID2 = [updateCopy cloudGUID];
        *buf = 138412546;
        v24 = cloudGUID2;
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

  if (![updateCopy isInserted])
  {
    if (![updateCopy isUpdated])
    {
      goto LABEL_21;
    }

    managedObjectContext = [updateCopy changedValues];
    v19 = PLCloudFeedGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      allKeys = [managedObjectContext allKeys];
      *buf = 138412290;
      v24 = allKeys;
      _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_DEBUG, "changedValues=%@", buf, 0xCu);
    }

    v21 = [managedObjectContext objectForKeyedSubscript:@"cloudRelationshipState"];
    if (v21 || ([managedObjectContext objectForKeyedSubscript:@"cloudRelationshipStateLocal"], (v21 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(managedObjectContext, "objectForKeyedSubscript:", @"cloudSubscriptionDate"), (v21 = objc_claimAutoreleasedReturnValue()) != 0))
    {
    }

    else
    {
      v22 = [managedObjectContext objectForKeyedSubscript:@"cloudMultipleContributorsEnabled"];

      if (!v22)
      {
        goto LABEL_20;
      }
    }

    [(PLDelayedSaveActions *)self _recordDelayedCloudFeedAlbumUpdate:updateCopy];
LABEL_20:

    goto LABEL_21;
  }

  [(PLDelayedSaveActions *)self _recordDelayedCloudFeedAlbumUpdate:updateCopy];
LABEL_21:
}

- (void)_recordDelayedCloudFeedShareParticipantDelete:(id)delete
{
  deleteCopy = delete;
  v10 = deleteCopy;
  if (!self->_delayedCloudFeedShareParticipantDeletes)
  {
    v5 = objc_opt_new();
    delayedCloudFeedShareParticipantDeletes = self->_delayedCloudFeedShareParticipantDeletes;
    self->_delayedCloudFeedShareParticipantDeletes = v5;

    deleteCopy = v10;
  }

  participantID = [deleteCopy participantID];

  if (participantID)
  {
    v8 = self->_delayedCloudFeedShareParticipantDeletes;
    participantID2 = [v10 participantID];
    [(NSMutableArray *)v8 addObject:participantID2];
  }

  [(PLDelayedSaveActions *)self persistDelayedActionsScope:@"PLTransactionScopeCloudFeed"];
}

- (void)_recordDelayedCloudFeedShareParticipantUpdate:(id)update
{
  updateCopy = update;
  delayedCloudFeedShareParticipantUpdates = self->_delayedCloudFeedShareParticipantUpdates;
  v8 = updateCopy;
  if (!delayedCloudFeedShareParticipantUpdates)
  {
    v6 = objc_opt_new();
    v7 = self->_delayedCloudFeedShareParticipantUpdates;
    self->_delayedCloudFeedShareParticipantUpdates = v6;

    updateCopy = v8;
    delayedCloudFeedShareParticipantUpdates = self->_delayedCloudFeedShareParticipantUpdates;
  }

  [(NSMutableArray *)delayedCloudFeedShareParticipantUpdates addObject:updateCopy];
  [(PLDelayedSaveActions *)self persistDelayedActionsScope:@"PLTransactionScopeCloudFeed"];
}

- (void)_recordDelayedCloudFeedInvitationRecordUpdate:(id)update
{
  updateCopy = update;
  delayedCloudFeedInvitationRecordUpdates = self->_delayedCloudFeedInvitationRecordUpdates;
  v8 = updateCopy;
  if (!delayedCloudFeedInvitationRecordUpdates)
  {
    v6 = objc_opt_new();
    v7 = self->_delayedCloudFeedInvitationRecordUpdates;
    self->_delayedCloudFeedInvitationRecordUpdates = v6;

    updateCopy = v8;
    delayedCloudFeedInvitationRecordUpdates = self->_delayedCloudFeedInvitationRecordUpdates;
  }

  [(NSMutableArray *)delayedCloudFeedInvitationRecordUpdates addObject:updateCopy];
  [(PLDelayedSaveActions *)self persistDelayedActionsScope:@"PLTransactionScopeCloudFeed"];
}

- (void)_recordDelayedCloudFeedCommentInsert:(id)insert
{
  insertCopy = insert;
  delayedCloudFeedCommentInserts = self->_delayedCloudFeedCommentInserts;
  v8 = insertCopy;
  if (!delayedCloudFeedCommentInserts)
  {
    v6 = objc_opt_new();
    v7 = self->_delayedCloudFeedCommentInserts;
    self->_delayedCloudFeedCommentInserts = v6;

    insertCopy = v8;
    delayedCloudFeedCommentInserts = self->_delayedCloudFeedCommentInserts;
  }

  [(NSMutableArray *)delayedCloudFeedCommentInserts addObject:insertCopy];
  [(PLDelayedSaveActions *)self persistDelayedActionsScope:@"PLTransactionScopeCloudFeed"];
}

- (void)_recordDelayedCloudFeedAssetUpdate:(id)update
{
  updateCopy = update;
  delayedCloudFeedAssetUpdates = self->_delayedCloudFeedAssetUpdates;
  v8 = updateCopy;
  if (!delayedCloudFeedAssetUpdates)
  {
    v6 = objc_opt_new();
    v7 = self->_delayedCloudFeedAssetUpdates;
    self->_delayedCloudFeedAssetUpdates = v6;

    updateCopy = v8;
    delayedCloudFeedAssetUpdates = self->_delayedCloudFeedAssetUpdates;
  }

  [(NSMutableArray *)delayedCloudFeedAssetUpdates addObject:updateCopy];
  [(PLDelayedSaveActions *)self persistDelayedActionsScope:@"PLTransactionScopeCloudFeed"];
}

- (void)_recordDelayedCloudFeedAssetInsert:(id)insert
{
  insertCopy = insert;
  delayedCloudFeedAssetInserts = self->_delayedCloudFeedAssetInserts;
  v8 = insertCopy;
  if (!delayedCloudFeedAssetInserts)
  {
    v6 = objc_opt_new();
    v7 = self->_delayedCloudFeedAssetInserts;
    self->_delayedCloudFeedAssetInserts = v6;

    insertCopy = v8;
    delayedCloudFeedAssetInserts = self->_delayedCloudFeedAssetInserts;
  }

  [(NSMutableArray *)delayedCloudFeedAssetInserts addObject:insertCopy];
  [(PLDelayedSaveActions *)self persistDelayedActionsScope:@"PLTransactionScopeCloudFeed"];
}

- (void)_recordDelayedCloudFeedDeletionEntries:(id)entries
{
  entriesCopy = entries;
  delayedCloudFeedDeletionEntries = self->_delayedCloudFeedDeletionEntries;
  v8 = entriesCopy;
  if (!delayedCloudFeedDeletionEntries)
  {
    v6 = objc_opt_new();
    v7 = self->_delayedCloudFeedDeletionEntries;
    self->_delayedCloudFeedDeletionEntries = v6;

    entriesCopy = v8;
    delayedCloudFeedDeletionEntries = self->_delayedCloudFeedDeletionEntries;
  }

  [(NSMutableSet *)delayedCloudFeedDeletionEntries addObjectsFromArray:entriesCopy];
  if ([v8 count])
  {
    [(PLDelayedSaveActions *)self persistDelayedActionsScope:@"PLTransactionScopeCloudFeed"];
  }
}

- (void)_recordDelayedCloudFeedCollectionShareDelete:(id)delete
{
  deleteCopy = delete;
  v10 = deleteCopy;
  if (!self->_delayedCloudFeedCollectionShareDeletes)
  {
    v5 = objc_opt_new();
    delayedCloudFeedCollectionShareDeletes = self->_delayedCloudFeedCollectionShareDeletes;
    self->_delayedCloudFeedCollectionShareDeletes = v5;

    deleteCopy = v10;
  }

  scopeIdentifier = [deleteCopy scopeIdentifier];

  if (scopeIdentifier)
  {
    v8 = self->_delayedCloudFeedCollectionShareDeletes;
    scopeIdentifier2 = [v10 scopeIdentifier];
    [(NSMutableArray *)v8 addObject:scopeIdentifier2];

    [(PLDelayedSaveActions *)self persistDelayedActionsScope:@"PLTransactionScopeCloudFeed"];
  }
}

- (void)_recordDelayedCloudFeedCollectionShareUpdate:(id)update
{
  updateCopy = update;
  delayedCloudFeedCollectionShareUpdates = self->_delayedCloudFeedCollectionShareUpdates;
  v8 = updateCopy;
  if (!delayedCloudFeedCollectionShareUpdates)
  {
    v6 = objc_opt_new();
    v7 = self->_delayedCloudFeedCollectionShareUpdates;
    self->_delayedCloudFeedCollectionShareUpdates = v6;

    updateCopy = v8;
    delayedCloudFeedCollectionShareUpdates = self->_delayedCloudFeedCollectionShareUpdates;
  }

  [(NSMutableArray *)delayedCloudFeedCollectionShareUpdates addObject:updateCopy];
  [(PLDelayedSaveActions *)self persistDelayedActionsScope:@"PLTransactionScopeCloudFeed"];
}

- (void)_recordDelayedCloudFeedAlbumUpdate:(id)update
{
  updateCopy = update;
  delayedCloudFeedAlbumUpdates = self->_delayedCloudFeedAlbumUpdates;
  v8 = updateCopy;
  if (!delayedCloudFeedAlbumUpdates)
  {
    v6 = objc_opt_new();
    v7 = self->_delayedCloudFeedAlbumUpdates;
    self->_delayedCloudFeedAlbumUpdates = v6;

    updateCopy = v8;
    delayedCloudFeedAlbumUpdates = self->_delayedCloudFeedAlbumUpdates;
  }

  [(NSMutableArray *)delayedCloudFeedAlbumUpdates addObject:updateCopy];
  [(PLDelayedSaveActions *)self persistDelayedActionsScope:@"PLTransactionScopeCloudFeed"];
}

- (void)_popDelayedMomentInsertsAndUpdates:(id *)updates deletes:(id *)deletes updatedAssetIDsForHighlights:(id *)highlights updatedMomentIDsForHighlights:(id *)forHighlights sharedAssetContainerIncrementalChanges:(id *)changes
{
  v42 = *MEMORY[0x1E69E9840];
  if (updates)
  {
    v13 = [(NSMutableArray *)self->_delayedMomentAssetUpdates valueForKey:@"objectID"];
    *updates = v13;
  }

  [(NSMutableArray *)self->_delayedMomentAssetUpdates removeAllObjects];
  if (deletes)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    if ([(NSMapTable *)self->_delayedMomentAssetDeletions count])
    {
      forHighlightsCopy = forHighlights;
      changesCopy = changes;
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
            objectID = [v20 objectID];
            [dictionary setObject:v21 forKey:objectID];
          }

          v17 = [(NSMapTable *)v15 countByEnumeratingWithState:&v37 objects:v41 count:16];
        }

        while (v17);
      }

      forHighlights = forHighlightsCopy;
      changes = changesCopy;
    }

    v23 = dictionary;
    *deletes = dictionary;
  }

  [(NSMapTable *)self->_delayedMomentAssetDeletions removeAllObjects];
  if (highlights)
  {
    allObjects = [(NSMutableSet *)self->_delayedHighlightAssetUpdates allObjects];
    v25 = [allObjects valueForKey:@"objectID"];

    v26 = v25;
    *highlights = v25;
  }

  [(NSMutableSet *)self->_delayedHighlightAssetUpdates removeAllObjects];
  if (forHighlights)
  {
    allObjects2 = [(NSMutableSet *)self->_delayedHighlightMomentUpdates allObjects];
    v28 = [allObjects2 valueForKey:@"objectID"];

    v29 = v28;
    *forHighlights = v28;
  }

  [(NSMutableSet *)self->_delayedHighlightMomentUpdates removeAllObjects];
  if (changes)
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
    *changes = [v32 copy];
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

- (void)recordMomentForHighlightUpdate:(id)update
{
  v9 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  v5 = PLMomentsGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    objectID = [updateCopy objectID];
    v7 = 138412290;
    v8 = objectID;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEBUG, "Recording moment %@ for highlight update", &v7, 0xCu);
  }

  [(PLDelayedSaveActions *)self _recordDelayedHighlightMomentUpdates:updateCopy];
}

- (void)recordAdditionalAssetAttributesForMomentUpdate:(id)update
{
  updateCopy = update;
  changedValues = [updateCopy changedValues];
  v5 = [changedValues objectForKeyedSubscript:@"timeZoneOffset"];
  if (v5)
  {
  }

  else
  {
    v6 = [changedValues objectForKeyedSubscript:@"timeZoneName"];

    if (!v6)
    {
      goto LABEL_7;
    }
  }

  asset = [updateCopy asset];
  v8 = +[PLMoment predicateForAssetsIncludedInMoments];
  if ([v8 evaluateWithObject:asset])
  {
    [(PLDelayedSaveActions *)self _recordDelayedMomentAssetUpdates:asset];
  }

LABEL_7:
}

- (void)recordAssetForMomentUpdate:(id)update
{
  v85[3] = *MEMORY[0x1E69E9840];
  updateCopy = update;
  if ([updateCopy isIncludedInMoments])
  {
    isInserted = [updateCopy isInserted];
    isUpdated = [updateCopy isUpdated];
    isDeleted = [updateCopy isDeleted];
    needsMomentUpdate = [updateCopy needsMomentUpdate];
    photoLibrary = [updateCopy photoLibrary];
    changedValues = [updateCopy changedValues];
    v10 = objc_alloc_init(PLSharedAssetsContainerIncrementalChange);
    -[PLSharedAssetsContainerIncrementalChange setMediaType:](v10, "setMediaType:", [updateCopy kind] != 0);
    v79 = changedValues;
    if ((isUpdated & 1) == 0 && !isDeleted)
    {
      goto LABEL_28;
    }

    libraryServicesManager = [photoLibrary libraryServicesManager];
    databaseContext = [libraryServicesManager databaseContext];
    momentLibrary = [databaseContext momentLibrary];

    if (photoLibrary == momentLibrary)
    {
      goto LABEL_46;
    }

    changedValues = v79;
    [objc_opt_class() _addHighlightRelationshipChangesFromChangedValues:v79 onAsset:updateCopy intoChange:v10 forRelationshipNamed:@"highlightBeingAssets"];
    [objc_opt_class() _addHighlightRelationshipChangesFromChangedValues:v79 onAsset:updateCopy intoChange:v10 forRelationshipNamed:@"highlightBeingExtendedAssets"];
    [objc_opt_class() _addHighlightRelationshipChangesFromChangedValues:v79 onAsset:updateCopy intoChange:v10 forRelationshipNamed:@"highlightBeingSummaryAssets"];
    [objc_opt_class() _addHighlightRelationshipChangesFromChangedValues:v79 onAsset:updateCopy intoChange:v10 forRelationshipNamed:@"dayGroupHighlightBeingAssets"];
    [objc_opt_class() _addHighlightRelationshipChangesFromChangedValues:v79 onAsset:updateCopy intoChange:v10 forRelationshipNamed:@"dayGroupHighlightBeingExtendedAssets"];
    [objc_opt_class() _addHighlightRelationshipChangesFromChangedValues:v79 onAsset:updateCopy intoChange:v10 forRelationshipNamed:@"dayGroupHighlightBeingSummaryAssets"];
    highlightContainerChanges = [(PLSharedAssetsContainerIncrementalChange *)v10 highlightContainerChanges];
    v15 = [highlightContainerChanges count];

    if (!v15)
    {
LABEL_28:
      if (!isUpdated)
      {
        goto LABEL_47;
      }

      goto LABEL_29;
    }

    if (isDeleted)
    {
      v85[0] = @"libraryScope";
      v85[1] = @"additionalAttributes";
      v85[2] = @"libraryScopeShareState";
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v85 count:3];
      v17 = [updateCopy committedValuesForKeys:v16];

      v18 = [v17 objectForKey:@"libraryScope"];
      null = [MEMORY[0x1E695DFB0] null];
      v20 = [v18 isEqual:null];
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
      null2 = [MEMORY[0x1E695DFB0] null];
      if ([v22 isEqual:null2])
      {
        v24 = 2;
LABEL_42:

        needsMomentUpdate = 1;
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
        changedValues = v79;
        if (!isUpdated)
        {
LABEL_47:
          v32 = 0;
          if (!isDeleted)
          {
            goto LABEL_48;
          }

          goto LABEL_98;
        }

LABEL_29:
        v31 = [changedValues objectForKeyedSubscript:@"dateCreated"];
        if (v31)
        {
          v32 = 1;
        }

        else
        {
          v75 = needsMomentUpdate;
          v33 = [changedValues objectForKeyedSubscript:@"locationData"];
          if (v33)
          {
            v32 = 1;
          }

          else
          {
            v34 = [changedValues objectForKeyedSubscript:@"visibilityState"];
            if (v34)
            {
              v32 = 1;
            }

            else
            {
              v35 = [changedValues objectForKeyedSubscript:@"hidden"];
              if (v35)
              {
                v32 = 1;
              }

              else
              {
                v62 = [changedValues objectForKeyedSubscript:@"trashedState"];
                if (v62)
                {
                  v32 = 1;
                }

                else
                {
                  v63 = [changedValues objectForKeyedSubscript:@"savedAssetType"];
                  v32 = v63 != 0;

                  v62 = 0;
                }

                v35 = 0;
              }

              v34 = 0;
            }
          }

          changedValues = v79;
          needsMomentUpdate = v75;
        }

        if (!isDeleted)
        {
LABEL_48:
          v37 = isInserted;
          if (((isInserted | isUpdated | needsMomentUpdate) & 1) == 0)
          {
LABEL_111:
            if ([(PLSharedAssetsContainerIncrementalChange *)v10 hasChanges])
            {
              [(PLSharedAssetsContainerIncrementalChange *)v10 setHasNoOtherAssetChangesRequiringMomentGeneration:!v32];
              [(PLDelayedSaveActions *)self _recordSharedAssetIncrementalChange:v10 forAsset:updateCopy];
            }

            goto LABEL_114;
          }

          if (!isUpdated)
          {
LABEL_84:
            if ((needsMomentUpdate | v37 | v32))
            {
              v59 = PLMomentsGetLog();
              if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
              {
                [updateCopy objectID];
                v61 = v60 = v32;
                *buf = 138412290;
                v83 = v61;
                _os_log_impl(&dword_19BF1F000, v59, OS_LOG_TYPE_DEBUG, "Adding asset %@ to be updated in moments", buf, 0xCu);

                v32 = v60;
              }

              [(PLDelayedSaveActions *)self _recordDelayedMomentAssetUpdates:updateCopy];
            }

            goto LABEL_111;
          }

          highlightContainerChanges2 = [(PLSharedAssetsContainerIncrementalChange *)v10 highlightContainerChanges];
          if (![highlightContainerChanges2 count])
          {
            v76 = v32;
            selfCopy = self;
            v40 = [changedValues objectForKeyedSubscript:@"libraryScope"];

            if (!v40)
            {
              self = selfCopy;
              v37 = isInserted;
LABEL_62:
              highlightContainerChanges3 = [(PLSharedAssetsContainerIncrementalChange *)v10 highlightContainerChanges];
              if ([highlightContainerChanges3 count])
              {
LABEL_83:

                goto LABEL_84;
              }

              v49 = changedValues;
              selfCopy2 = self;
              v51 = [v49 objectForKeyedSubscript:@"libraryScopeShareState"];

              if (!v51)
              {
                self = selfCopy2;
                changedValues = v79;
                goto LABEL_84;
              }

              v80 = @"libraryScopeShareState";
              v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v80 count:1];
              highlightContainerChanges3 = [updateCopy committedValuesForKeys:v52];

              v53 = [highlightContainerChanges3 objectForKey:@"libraryScopeShareState"];
              integerValue = [v53 integerValue];
              if (integerValue > 65537)
              {
                if (integerValue != 65538)
                {
                  v55 = integerValue == 65552;
                  goto LABEL_71;
                }
              }

              else if (integerValue != 2)
              {
                v55 = integerValue == 16;
LABEL_71:
                self = selfCopy2;
                v56 = v55;
                goto LABEL_73;
              }

              self = selfCopy2;
              v56 = 1;
LABEL_73:
              libraryScopeShareState = [updateCopy libraryScopeShareState];
              changedValues = v79;
              if (libraryScopeShareState > 65537)
              {
                if (libraryScopeShareState != 65552 && libraryScopeShareState != 65538)
                {
                  goto LABEL_90;
                }
              }

              else if (libraryScopeShareState != 2 && libraryScopeShareState != 16)
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

                v37 = isInserted;
                goto LABEL_83;
              }

              v58 = 1;
LABEL_81:
              [(PLSharedAssetsContainerIncrementalChange *)v10 setSuggestionStateChange:v58];
              needsMomentUpdate = 1;
              goto LABEL_82;
            }

            v81 = @"libraryScope";
            v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v81 count:1];
            highlightContainerChanges2 = [updateCopy committedValuesForKeys:v41];

            v42 = [highlightContainerChanges2 objectForKey:@"libraryScope"];
            null3 = [MEMORY[0x1E695DFB0] null];
            v44 = [v42 isEqual:null3];

            hasLibraryScope = [updateCopy hasLibraryScope];
            if (v42)
            {
              v46 = v44;
            }

            else
            {
              v46 = 1;
            }

            if (v46 == hasLibraryScope)
            {
              needsMomentUpdate = 1;
              if (hasLibraryScope)
              {
                v47 = 1;
              }

              else
              {
                v47 = 2;
              }

              [(PLSharedAssetsContainerIncrementalChange *)v10 setSharingChange:v47];
            }

            self = selfCopy;
            v37 = isInserted;
            v32 = v76;
          }

          goto LABEL_62;
        }

LABEL_98:
        managedObjectContext = [updateCopy managedObjectContext];
        if (([managedObjectContext hasPreviouslyMergedDeleteForObject:updateCopy] & 1) == 0)
        {
          v77 = v32;
          v84[0] = @"dateCreated";
          v84[1] = @"locationData";
          v65 = [MEMORY[0x1E695DEC8] arrayWithObjects:v84 count:2];
          v66 = [updateCopy committedValuesForKeys:v65];

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
              [updateCopy objectID];
              v71 = v73 = self;
              *buf = 138412290;
              v83 = v71;
              _os_log_impl(&dword_19BF1F000, v70, OS_LOG_TYPE_DEBUG, "Removing asset %@ from moments", buf, 0xCu);

              self = v73;
            }

            [(PLSharedAssetsContainerIncrementalChange *)v10 setCollectionChangeType:2];
            [(PLDelayedSaveActions *)self _recordDelayedMomentAssetDeletionsDictionary:v69 forKey:updateCopy];
          }

          changedValues = v79;
          v32 = v77;
        }

        goto LABEL_111;
      }

      integerValue2 = [v22 integerValue];
      if (integerValue2 > 65537)
      {
        if (integerValue2 != 65538)
        {
          v30 = integerValue2 == 65552;
LABEL_39:
          v24 = 1;
          if (!v30)
          {
            v24 = 2;
          }

          goto LABEL_42;
        }
      }

      else if (integerValue2 != 2)
      {
        v30 = integerValue2 == 16;
        goto LABEL_39;
      }

      v24 = 1;
      goto LABEL_42;
    }

    v26 = 1;
    if ([updateCopy hasLibraryScope])
    {
      v27 = 1;
    }

    else
    {
      v27 = 2;
    }

    [(PLSharedAssetsContainerIncrementalChange *)v10 setSharingChange:v27];
    libraryScopeShareState2 = [updateCopy libraryScopeShareState];
    if (libraryScopeShareState2 > 65537)
    {
      if (libraryScopeShareState2 == 65538 || libraryScopeShareState2 == 65552)
      {
        goto LABEL_27;
      }
    }

    else if (libraryScopeShareState2 == 2 || libraryScopeShareState2 == 16)
    {
      goto LABEL_27;
    }

    v26 = 2;
LABEL_27:
    [(PLSharedAssetsContainerIncrementalChange *)v10 setSuggestionStateChange:v26];
    needsMomentUpdate = 1;
    goto LABEL_28;
  }

  photoLibrary = PLMomentsGetLog();
  if (os_log_type_enabled(photoLibrary, OS_LOG_TYPE_DEBUG))
  {
    objectID = [updateCopy objectID];
    *buf = 138412290;
    v83 = objectID;
    _os_log_impl(&dword_19BF1F000, photoLibrary, OS_LOG_TYPE_DEBUG, "Ignoring update for asset %@", buf, 0xCu);
  }

LABEL_114:

  if ([updateCopy needsMomentUpdate])
  {
    [updateCopy setNeedsMomentUpdate:0];
  }
}

- (void)_recordSharedAssetIncrementalChange:(id)change forAsset:(id)asset
{
  changeCopy = change;
  assetCopy = asset;
  if ([changeCopy hasChanges])
  {
    if (!self->_delayedSharedAssetIncrementalChangeContainersByAssetUUID)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
      delayedSharedAssetIncrementalChangeContainersByAssetUUID = self->_delayedSharedAssetIncrementalChangeContainersByAssetUUID;
      self->_delayedSharedAssetIncrementalChangeContainersByAssetUUID = v7;
    }

    uuid = [assetCopy uuid];
    if (uuid)
    {
      v10 = [(PLDelayedSaveActions *)self _existingSharedAssetChangeContainerForAsset:assetCopy];
      v11 = v10;
      if (v10)
      {
        change = [v10 change];
        [(PLSharedAssetsContainerIncrementalChangeContainer *)change mergeChangesFrom:changeCopy];
      }

      else
      {
        change = [[PLSharedAssetsContainerIncrementalChangeContainer alloc] initWithAsset:assetCopy change:changeCopy];
        [(NSMutableDictionary *)self->_delayedSharedAssetIncrementalChangeContainersByAssetUUID setObject:change forKeyedSubscript:uuid];
      }
    }
  }
}

- (id)_existingSharedAssetChangeContainerForAsset:(id)asset
{
  assetCopy = asset;
  uuid = [assetCopy uuid];
  if (uuid)
  {
    delayedSharedAssetIncrementalChangeContainersByAssetUUID = self->_delayedSharedAssetIncrementalChangeContainersByAssetUUID;
    uuid2 = [assetCopy uuid];
    v8 = [(NSMutableDictionary *)delayedSharedAssetIncrementalChangeContainersByAssetUUID objectForKeyedSubscript:uuid2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_recordDelayedHighlightMomentUpdates:(id)updates
{
  updatesCopy = updates;
  delayedHighlightMomentUpdates = self->_delayedHighlightMomentUpdates;
  v8 = updatesCopy;
  if (!delayedHighlightMomentUpdates)
  {
    v6 = objc_opt_new();
    v7 = self->_delayedHighlightMomentUpdates;
    self->_delayedHighlightMomentUpdates = v6;

    updatesCopy = v8;
    delayedHighlightMomentUpdates = self->_delayedHighlightMomentUpdates;
  }

  [(NSMutableSet *)delayedHighlightMomentUpdates addObject:updatesCopy];
  [(PLDelayedSaveActions *)self persistDelayedActionsScope:@"PLTransactionScopeMomentGeneration"];
}

- (void)_recordDelayedMomentAssetUpdates:(id)updates
{
  updatesCopy = updates;
  delayedMomentAssetUpdates = self->_delayedMomentAssetUpdates;
  v8 = updatesCopy;
  if (!delayedMomentAssetUpdates)
  {
    v6 = objc_opt_new();
    v7 = self->_delayedMomentAssetUpdates;
    self->_delayedMomentAssetUpdates = v6;

    updatesCopy = v8;
    delayedMomentAssetUpdates = self->_delayedMomentAssetUpdates;
  }

  [(NSMutableArray *)delayedMomentAssetUpdates addObject:updatesCopy];
  [(PLDelayedSaveActions *)self persistDelayedActionsScope:@"PLTransactionScopeMomentGeneration"];
}

- (void)_recordDelayedMomentAssetDeletionsDictionary:(id)dictionary forKey:(id)key
{
  dictionaryCopy = dictionary;
  keyCopy = key;
  delayedMomentAssetDeletions = self->_delayedMomentAssetDeletions;
  if (!delayedMomentAssetDeletions)
  {
    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    v9 = self->_delayedMomentAssetDeletions;
    self->_delayedMomentAssetDeletions = strongToStrongObjectsMapTable;

    delayedMomentAssetDeletions = self->_delayedMomentAssetDeletions;
  }

  [(NSMapTable *)delayedMomentAssetDeletions setObject:dictionaryCopy forKey:keyCopy];
  [(PLDelayedSaveActions *)self persistDelayedActionsScope:@"PLTransactionScopeMomentGeneration"];
}

- (void)_popImportSessionCountChangesIntoDetail:(id)detail
{
  v6 = 0;
  detailCopy = detail;
  [(PLDelayedSaveActions *)self _popDelayedImportSessionCountsAndDateRangeUpdates:&v6];
  v5 = v6;
  [detailCopy setImportSessionCountsAndDateRangeUpdates:v5];
}

- (void)_popAlbumKeyAssetsChangesIntoDetail:(id)detail
{
  v6 = 0;
  detailCopy = detail;
  [(PLDelayedSaveActions *)self _popDelayedAlbumKeyAssetsUpdates:&v6];
  v5 = v6;
  [detailCopy setAlbumKeyAssetsUpdates:v5];
}

- (void)_popAlbumCountChangesIntoDetail:(id)detail
{
  v6 = 0;
  detailCopy = detail;
  [(PLDelayedSaveActions *)self _popDelayedAlbumCountsAndDateRangeUpdates:&v6];
  v5 = v6;
  [detailCopy setAlbumCountsAndDateRangeUpdates:v5];
}

- (void)_popAssetsForFilesystemPersistencyChangesIntoDetail:(id)detail
{
  v6 = 0;
  detailCopy = detail;
  [(PLDelayedSaveActions *)self _popDelayedAssetsForFilesystemPersistencyUpdates:&v6];
  v5 = v6;
  [detailCopy setAssetsForFilesystemPersistency:v5];
}

- (void)_popMomentChangesIntoDetail:(id)detail
{
  v13 = 0;
  v14 = 0;
  v11 = 0;
  v12 = 0;
  v10 = 0;
  detailCopy = detail;
  [(PLDelayedSaveActions *)self _popDelayedMomentInsertsAndUpdates:&v14 deletes:&v13 updatedAssetIDsForHighlights:&v12 updatedMomentIDsForHighlights:&v11 sharedAssetContainerIncrementalChanges:&v10];
  v5 = v14;
  v6 = v13;
  v7 = v12;
  v8 = v11;
  v9 = v10;
  [detailCopy setMomentInsertsAndUpdates:v5];
  [detailCopy setMomentDeletes:v6];
  [detailCopy setUpdatedAssetIDsForHighlights:v7];
  [detailCopy setUpdatedMomentIDsForHighlights:v8];
  [detailCopy setSharedAssetContainerIncrementalChangesByAssetID:v9];
}

- (void)_popCloudFeedChangesIntoDetail:(id)detail
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
  detailCopy = detail;
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
  [detailCopy setCloudFeedAlbumUpdates:v5];
  [detailCopy setCloudFeedCollectionShareUpdates:v6];
  [detailCopy setCloudFeedCollectionShareDeletes:v24];
  [detailCopy setCloudFeedAssetInserts:v7];
  [detailCopy setCloudFeedAssetUpdates:v8];
  [detailCopy setCloudFeedCommentInserts:v9];
  [detailCopy setCloudFeedInvitationRecordUpdates:v10];
  [detailCopy setCloudFeedShareParticipantUpdates:v11];
  [detailCopy setCloudFeedShareParticipantDeletes:v12];
  [detailCopy setCloudFeedDeletionEntries:v13];

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

- (void)persistDelayedActionsScope:(id)scope
{
  scopeCopy = scope;
  clientTransaction = [(PLDelayedSaveActions *)self clientTransaction];
  v5 = [MEMORY[0x1E695DFD8] setWithObject:scopeCopy];

  [clientTransaction addChangeScopes:v5];
}

- (PLDelayedSaveActions)initWithClientTransaction:(id)transaction
{
  transactionCopy = transaction;
  v9.receiver = self;
  v9.super_class = PLDelayedSaveActions;
  v6 = [(PLDelayedSaveActions *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_clientTransaction, transaction);
  }

  return v7;
}

+ (void)_addHighlightRelationshipChangesFromChangedValues:(id)values onAsset:(id)asset intoChange:(id)change forRelationshipNamed:(id)named
{
  v20[1] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  changeCopy = change;
  namedCopy = named;
  v13 = [values objectForKeyedSubscript:namedCopy];

  if (v13)
  {
    v20[0] = namedCopy;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
    v15 = [assetCopy committedValuesForKeys:v14];

    v16 = [v15 objectForKey:namedCopy];
    null = [MEMORY[0x1E695DFB0] null];
    if ([v16 isEqual:null])
    {
      v18 = 0;
    }

    else
    {
      v18 = [v15 objectForKey:namedCopy];
    }

    v19 = [assetCopy valueForKey:namedCopy];
    [self _checkForHighlightChangesOnToOneRelationshipNamed:namedCopy andAddIntoChange:changeCopy givenOldValue:v18 andNewValue:v19];
  }
}

+ (void)_checkForHighlightChangesOnToManyRelationshipNamed:(id)named andAddIntoChange:(id)change givenOldValue:(id)value andNewValue:(id)newValue
{
  v37 = *MEMORY[0x1E69E9840];
  namedCopy = named;
  changeCopy = change;
  valueCopy = value;
  newValueCopy = newValue;
  if (([valueCopy isEqualToSet:newValueCopy] & 1) == 0)
  {
    v13 = [MEMORY[0x1E695DFA8] setWithSet:valueCopy];
    [v13 minusSet:newValueCopy];
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

          objectID = [*(*(&v31 + 1) + 8 * v18) objectID];
          [changeCopy addHighlightContainerChange:namedCopy sourceHighlightID:objectID destinationHighlightID:0];

          ++v18;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v16);
    }

    v20 = [MEMORY[0x1E695DFA8] setWithSet:newValueCopy];
    [v20 minusSet:valueCopy];
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

          objectID2 = [*(*(&v27 + 1) + 8 * v25) objectID];
          [changeCopy addHighlightContainerChange:namedCopy sourceHighlightID:0 destinationHighlightID:objectID2];

          ++v25;
        }

        while (v23 != v25);
        v23 = [v21 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v23);
    }
  }
}

+ (void)_checkForHighlightChangesOnToOneRelationshipNamed:(id)named andAddIntoChange:(id)change givenOldValue:(id)value andNewValue:(id)newValue
{
  if ((value != 0) == (newValue == 0))
  {
    newValueCopy = newValue;
    changeCopy = change;
    namedCopy = named;
    objectID = [value objectID];
    objectID2 = [newValueCopy objectID];

    [changeCopy addHighlightContainerChange:namedCopy sourceHighlightID:objectID destinationHighlightID:objectID2];
  }
}

@end