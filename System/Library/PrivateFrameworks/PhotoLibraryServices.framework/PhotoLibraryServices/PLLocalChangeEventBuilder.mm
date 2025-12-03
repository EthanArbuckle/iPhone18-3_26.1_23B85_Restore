@interface PLLocalChangeEventBuilder
+ (id)localEventFromTransaction:(id)transaction;
+ (id)localEventWithBuilderBlock:(id)block;
- (BOOL)_isCloudStateDeletedOnTombstone:(id)tombstone;
- (BOOL)_shouldRecordTransaction:(id)transaction;
- (Class)_cloudDeletableEntityFromChange:(id)change;
- (PLLocalChangeEventBuilder)init;
- (id)_filteredUpdatedPropertiesFromChange:(id)change;
- (id)buildLocalEvent;
- (id)recordChangedObjectIDBlockForChangeKey:(id)key;
- (id)recordDeletedCloudGUIDBlockForChangeKey:(id)key;
- (void)_recordCloudDeleteForChange:(id)change;
- (void)_recordDeleteChange:(id)change;
- (void)_recordInsertChange:(id)change;
- (void)_recordUpdateChange:(id)change;
- (void)recordChange:(id)change;
- (void)recordDeletedCloudGUID:(id)d forType:(int64_t)type;
- (void)recordTransaction:(id)transaction;
- (void)recordTransactionsFromIterator:(id)iterator untilTest:(id)test;
- (void)recordUpdatedAttributes:(unint64_t)attributes andRelationships:(unint64_t)relationships forObjectID:(id)d;
- (void)recordUpdatedObjectID:(id)d;
@end

@implementation PLLocalChangeEventBuilder

- (PLLocalChangeEventBuilder)init
{
  v49.receiver = self;
  v49.super_class = PLLocalChangeEventBuilder;
  v2 = [(PLLocalChangeEventBuilder *)&v49 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    insertedObjectIDs = v2->_insertedObjectIDs;
    v2->_insertedObjectIDs = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    updatedObjectIDs = v2->_updatedObjectIDs;
    v2->_updatedObjectIDs = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    deletedObjectIDs = v2->_deletedObjectIDs;
    v2->_deletedObjectIDs = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    deletedAssetCloudGUIDs = v2->_deletedAssetCloudGUIDs;
    v2->_deletedAssetCloudGUIDs = v9;

    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    deletedAlbumCloudGUIDs = v2->_deletedAlbumCloudGUIDs;
    v2->_deletedAlbumCloudGUIDs = v11;

    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    deletedMemoryCloudGUIDs = v2->_deletedMemoryCloudGUIDs;
    v2->_deletedMemoryCloudGUIDs = v13;

    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    deletedPersonCloudGUIDs = v2->_deletedPersonCloudGUIDs;
    v2->_deletedPersonCloudGUIDs = v15;

    v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
    deletedFaceCropCloudGUIDs = v2->_deletedFaceCropCloudGUIDs;
    v2->_deletedFaceCropCloudGUIDs = v17;

    v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    deletedOwnedMomentShareCloudGUIDs = v2->_deletedOwnedMomentShareCloudGUIDs;
    v2->_deletedOwnedMomentShareCloudGUIDs = v19;

    v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
    deletedSubscribedMomentShareCloudGUIDs = v2->_deletedSubscribedMomentShareCloudGUIDs;
    v2->_deletedSubscribedMomentShareCloudGUIDs = v21;

    v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
    deletedSuggestionCloudGUIDs = v2->_deletedSuggestionCloudGUIDs;
    v2->_deletedSuggestionCloudGUIDs = v23;

    v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
    deletedUserFeedbackCloudGUIDs = v2->_deletedUserFeedbackCloudGUIDs;
    v2->_deletedUserFeedbackCloudGUIDs = v25;

    v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
    deletedInternalResourceUUIDToResourceTypeMappings = v2->_deletedInternalResourceUUIDToResourceTypeMappings;
    v2->_deletedInternalResourceUUIDToResourceTypeMappings = v27;

    v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
    deletedOwnedLibraryScopeCloudGUIDs = v2->_deletedOwnedLibraryScopeCloudGUIDs;
    v2->_deletedOwnedLibraryScopeCloudGUIDs = v29;

    v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
    deletedSubscribedLibraryScopeCloudGUIDs = v2->_deletedSubscribedLibraryScopeCloudGUIDs;
    v2->_deletedSubscribedLibraryScopeCloudGUIDs = v31;

    v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
    deletedSocialGroupCloudGUIDs = v2->_deletedSocialGroupCloudGUIDs;
    v2->_deletedSocialGroupCloudGUIDs = v33;

    v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
    deletedOwnedCollectionShareCloudGUIDs = v2->_deletedOwnedCollectionShareCloudGUIDs;
    v2->_deletedOwnedCollectionShareCloudGUIDs = v35;

    v37 = objc_alloc_init(MEMORY[0x1E695DF70]);
    deletedSubscribedCollectionShareCloudGUIDs = v2->_deletedSubscribedCollectionShareCloudGUIDs;
    v2->_deletedSubscribedCollectionShareCloudGUIDs = v37;

    v39 = objc_alloc_init(MEMORY[0x1E695DF70]);
    deletedReactCloudGUIDs = v2->_deletedReactCloudGUIDs;
    v2->_deletedReactCloudGUIDs = v39;

    v41 = objc_alloc_init(MEMORY[0x1E695DF70]);
    deletedTextCommentCloudGUIDs = v2->_deletedTextCommentCloudGUIDs;
    v2->_deletedTextCommentCloudGUIDs = v41;

    v43 = objc_alloc_init(MEMORY[0x1E695DF90]);
    attributesByOID = v2->_attributesByOID;
    v2->_attributesByOID = v43;

    v45 = objc_alloc_init(MEMORY[0x1E695DF90]);
    relationshipsByOID = v2->_relationshipsByOID;
    v2->_relationshipsByOID = v45;

    v47 = v2;
  }

  return v2;
}

- (id)buildLocalEvent
{
  if ([(PLLocalChangeEventBuilder *)self isEmpty])
  {
    v3 = MEMORY[0x1E695E0F8];
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    allObjects = [(NSMutableSet *)self->_insertedObjectIDs allObjects];
    [dictionary setObject:allObjects forKeyedSubscript:*MEMORY[0x1E695D320]];

    allObjects2 = [(NSMutableSet *)self->_updatedObjectIDs allObjects];
    [dictionary setObject:allObjects2 forKeyedSubscript:*MEMORY[0x1E695D4C8]];

    allObjects3 = [(NSMutableSet *)self->_deletedObjectIDs allObjects];
    [dictionary setObject:allObjects3 forKeyedSubscript:*MEMORY[0x1E695D2F0]];

    v8 = [(NSMutableDictionary *)self->_attributesByOID copy];
    [dictionary setObject:v8 forKeyedSubscript:@"PLUpdatedAttributesByObjectIDKey"];

    v9 = [(NSMutableDictionary *)self->_relationshipsByOID copy];
    [dictionary setObject:v9 forKeyedSubscript:@"PLUpdatedRelationshipsByObjectIDKey"];

    v10 = [(NSMutableArray *)self->_deletedAssetCloudGUIDs copy];
    [dictionary setObject:v10 forKeyedSubscript:@"cloudAssetDeleteGUIDs"];

    v11 = [(NSMutableArray *)self->_deletedAlbumCloudGUIDs copy];
    [dictionary setObject:v11 forKeyedSubscript:@"cloudAlbumDeleteGUIDs"];

    v12 = [(NSMutableArray *)self->_deletedMemoryCloudGUIDs copy];
    [dictionary setObject:v12 forKeyedSubscript:@"cloudMemoryDeleteGUIDs"];

    v13 = [(NSMutableArray *)self->_deletedPersonCloudGUIDs copy];
    [dictionary setObject:v13 forKeyedSubscript:@"cloudPersonDeleteGUIDs"];

    v14 = [(NSMutableArray *)self->_deletedFaceCropCloudGUIDs copy];
    [dictionary setObject:v14 forKeyedSubscript:@"cloudFaceCropDeleteGUIDs"];

    v15 = [(NSMutableArray *)self->_deletedOwnedMomentShareCloudGUIDs copy];
    [dictionary setObject:v15 forKeyedSubscript:@"cloudOwnedCMMDeleteGUIDs"];

    v16 = [(NSMutableArray *)self->_deletedSubscribedMomentShareCloudGUIDs copy];
    [dictionary setObject:v16 forKeyedSubscript:@"cloudSubscribedCMMDeleteGUIDs"];

    v17 = [(NSMutableArray *)self->_deletedOwnedLibraryScopeCloudGUIDs copy];
    [dictionary setObject:v17 forKeyedSubscript:@"cloudOwnedLibraryScopeDeleteGUIDs"];

    v18 = [(NSMutableArray *)self->_deletedSubscribedLibraryScopeCloudGUIDs copy];
    [dictionary setObject:v18 forKeyedSubscript:@"cloudSubscribedLibraryScopeDeleteGUIDs"];

    v19 = [(NSMutableArray *)self->_deletedSuggestionCloudGUIDs copy];
    [dictionary setObject:v19 forKeyedSubscript:@"cloudSuggestionDeleteGUIDs"];

    v20 = [(NSMutableArray *)self->_deletedUserFeedbackCloudGUIDs copy];
    [dictionary setObject:v20 forKeyedSubscript:@"cloudUserFeedbackDeleteGUIDs"];

    v21 = [(NSMutableArray *)self->_deletedInternalResourceUUIDToResourceTypeMappings copy];
    [dictionary setObject:v21 forKeyedSubscript:@"cloudInternalResourceUUIDToResourceTypeMappings"];

    v22 = [(NSMutableArray *)self->_deletedSocialGroupCloudGUIDs copy];
    [dictionary setObject:v22 forKeyedSubscript:@"cloudSocialGroupDeleteGUIDs"];

    v23 = [(NSMutableArray *)self->_deletedOwnedCollectionShareCloudGUIDs copy];
    [dictionary setObject:v23 forKeyedSubscript:@"cloudOwnedCollectionShareDeleteGUIDs"];

    v24 = [(NSMutableArray *)self->_deletedSubscribedCollectionShareCloudGUIDs copy];
    [dictionary setObject:v24 forKeyedSubscript:@"cloudSubscribedCollectionShareDeleteGUIDs"];

    v25 = [(NSMutableArray *)self->_deletedReactCloudGUIDs copy];
    [dictionary setObject:v25 forKeyedSubscript:@"cloudReactDeleteGUIDs"];

    v26 = [(NSMutableArray *)self->_deletedTextCommentCloudGUIDs copy];
    [dictionary setObject:v26 forKeyedSubscript:@"cloudTextCommentDeleteGUIDs"];

    v27 = [MEMORY[0x1E696AD98] numberWithBool:self->_coalescedEvent];
    [dictionary setObject:v27 forKeyedSubscript:@"coalescedEvent"];

    v28 = [MEMORY[0x1E696AD98] numberWithBool:self->_syncChange];
    [dictionary setObject:v28 forKeyedSubscript:@"PLSyncChangeMarker"];

    v29 = [MEMORY[0x1E696AD98] numberWithBool:self->_unknownMergeEvent];
    [dictionary setObject:v29 forKeyedSubscript:@"PLUnknownMergeEvent"];

    [dictionary setObject:self->_lastTransactionNumber forKeyedSubscript:@"lastTransactionNumber"];
    v30 = [MEMORY[0x1E696AD98] numberWithInteger:self->_transactionCount];
    [dictionary setObject:v30 forKeyedSubscript:@"transactionCount"];

    v31 = [MEMORY[0x1E696AD98] numberWithInteger:self->_changeCount];
    [dictionary setObject:v31 forKeyedSubscript:@"changeCount"];

    v3 = [dictionary copy];
  }

  return v3;
}

- (id)recordDeletedCloudGUIDBlockForChangeKey:(id)key
{
  v16 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  if ([keyCopy isEqualToString:@"cloudAssetDeleteGUIDs"])
  {
    deletedAssetCloudGUIDs = self->_deletedAssetCloudGUIDs;
LABEL_35:
    v6 = deletedAssetCloudGUIDs;
    goto LABEL_36;
  }

  if ([keyCopy isEqualToString:@"cloudAlbumDeleteGUIDs"])
  {
    deletedAssetCloudGUIDs = self->_deletedAlbumCloudGUIDs;
    goto LABEL_35;
  }

  if ([keyCopy isEqualToString:@"cloudMemoryDeleteGUIDs"])
  {
    deletedAssetCloudGUIDs = self->_deletedMemoryCloudGUIDs;
    goto LABEL_35;
  }

  if ([keyCopy isEqualToString:@"cloudPersonDeleteGUIDs"])
  {
    deletedAssetCloudGUIDs = self->_deletedPersonCloudGUIDs;
    goto LABEL_35;
  }

  if ([keyCopy isEqualToString:@"cloudFaceCropDeleteGUIDs"])
  {
    deletedAssetCloudGUIDs = self->_deletedFaceCropCloudGUIDs;
    goto LABEL_35;
  }

  if ([keyCopy isEqualToString:@"cloudOwnedCMMDeleteGUIDs"])
  {
    deletedAssetCloudGUIDs = self->_deletedOwnedMomentShareCloudGUIDs;
    goto LABEL_35;
  }

  if ([keyCopy isEqualToString:@"cloudSubscribedCMMDeleteGUIDs"])
  {
    deletedAssetCloudGUIDs = self->_deletedSubscribedMomentShareCloudGUIDs;
    goto LABEL_35;
  }

  if ([keyCopy isEqualToString:@"cloudOwnedLibraryScopeDeleteGUIDs"])
  {
    deletedAssetCloudGUIDs = self->_deletedOwnedLibraryScopeCloudGUIDs;
    goto LABEL_35;
  }

  if ([keyCopy isEqualToString:@"cloudSubscribedLibraryScopeDeleteGUIDs"])
  {
    deletedAssetCloudGUIDs = self->_deletedSubscribedLibraryScopeCloudGUIDs;
    goto LABEL_35;
  }

  if ([keyCopy isEqualToString:@"cloudSuggestionDeleteGUIDs"])
  {
    deletedAssetCloudGUIDs = self->_deletedSuggestionCloudGUIDs;
    goto LABEL_35;
  }

  if ([keyCopy isEqualToString:@"cloudUserFeedbackDeleteGUIDs"])
  {
    deletedAssetCloudGUIDs = self->_deletedUserFeedbackCloudGUIDs;
    goto LABEL_35;
  }

  if ([keyCopy isEqualToString:@"cloudInternalResourceUUIDToResourceTypeMappings"])
  {
    deletedAssetCloudGUIDs = self->_deletedInternalResourceUUIDToResourceTypeMappings;
    goto LABEL_35;
  }

  if ([keyCopy isEqualToString:@"cloudSocialGroupDeleteGUIDs"])
  {
    deletedAssetCloudGUIDs = self->_deletedSocialGroupCloudGUIDs;
    goto LABEL_35;
  }

  if ([keyCopy isEqualToString:@"cloudOwnedCollectionShareDeleteGUIDs"])
  {
    deletedAssetCloudGUIDs = self->_deletedOwnedCollectionShareCloudGUIDs;
    goto LABEL_35;
  }

  if ([keyCopy isEqualToString:@"cloudSubscribedCollectionShareDeleteGUIDs"])
  {
    deletedAssetCloudGUIDs = self->_deletedSubscribedCollectionShareCloudGUIDs;
    goto LABEL_35;
  }

  if ([keyCopy isEqualToString:@"cloudReactDeleteGUIDs"])
  {
    deletedAssetCloudGUIDs = self->_deletedReactCloudGUIDs;
    goto LABEL_35;
  }

  if ([keyCopy isEqualToString:@"cloudTextCommentDeleteGUIDs"])
  {
    deletedAssetCloudGUIDs = self->_deletedTextCommentCloudGUIDs;
    goto LABEL_35;
  }

  v11 = PLPersistentHistoryGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v15 = keyCopy;
    _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "Unable to find cloud GUID array for change key: %@", buf, 0xCu);
  }

  v6 = 0;
LABEL_36:
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __69__PLLocalChangeEventBuilder_recordDeletedCloudGUIDBlockForChangeKey___block_invoke;
  aBlock[3] = &unk_1E75732D0;
  v13 = v6;
  v7 = v6;
  v8 = _Block_copy(aBlock);
  v9 = _Block_copy(v8);

  return v9;
}

- (id)recordChangedObjectIDBlockForChangeKey:(id)key
{
  v16 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  if ([keyCopy isEqualToString:*MEMORY[0x1E695D320]])
  {
    insertedObjectIDs = self->_insertedObjectIDs;
LABEL_7:
    v6 = insertedObjectIDs;
    goto LABEL_8;
  }

  if ([keyCopy isEqualToString:*MEMORY[0x1E695D4C8]])
  {
    insertedObjectIDs = self->_updatedObjectIDs;
    goto LABEL_7;
  }

  if ([keyCopy isEqualToString:*MEMORY[0x1E695D2F0]])
  {
    insertedObjectIDs = self->_deletedObjectIDs;
    goto LABEL_7;
  }

  v11 = PLPersistentHistoryGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v15 = keyCopy;
    _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "Unable to find objectID array for change key: %@", buf, 0xCu);
  }

  v6 = 0;
LABEL_8:
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__PLLocalChangeEventBuilder_recordChangedObjectIDBlockForChangeKey___block_invoke;
  aBlock[3] = &unk_1E75732D0;
  v13 = v6;
  v7 = v6;
  v8 = _Block_copy(aBlock);
  v9 = _Block_copy(v8);

  return v9;
}

- (BOOL)_isCloudStateDeletedOnTombstone:(id)tombstone
{
  v3 = [tombstone objectForKeyedSubscript:@"cloudDeleteState"];
  v4 = [v3 intValue] == 1;

  return v4;
}

- (Class)_cloudDeletableEntityFromChange:(id)change
{
  changeCopy = change;
  changedObjectID = [changeCopy changedObjectID];
  entity = [changedObjectID entity];
  managedObjectClassName = [entity managedObjectClassName];

  v7 = NSClassFromString(managedObjectClassName);
  if ([(objc_class *)v7 conformsToProtocol:&unk_1F0FD13C0])
  {
    v8 = v7;
  }

  else if ([(objc_class *)v7 isEqual:objc_opt_class()])
  {
    tombstone = [changeCopy tombstone];
    v10 = [tombstone objectForKeyedSubscript:@"primaryLabelCode"];
    if ([v10 intValue] == 1000)
    {
      v8 = objc_opt_class();
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_recordCloudDeleteForChange:(id)change
{
  v22 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  v5 = [(PLLocalChangeEventBuilder *)self _cloudDeletableEntityFromChange:changeCopy];
  if (v5)
  {
    v6 = v5;
    tombstone = [changeCopy tombstone];
    if ([(PLLocalChangeEventBuilder *)self _isCloudStateDeletedOnTombstone:tombstone])
    {
      cloudUUIDKeyForDeletion = [(objc_class *)v6 cloudUUIDKeyForDeletion];
      _pl_prettyDescription4 = [tombstone objectForKeyedSubscript:cloudUUIDKeyForDeletion];

      if (_pl_prettyDescription4)
      {
        v10 = [(objc_class *)v6 cloudDeletionTypeForTombstone:tombstone];
        v11 = PLPersistentHistoryGetLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          _pl_prettyDescription = [changeCopy _pl_prettyDescription];
          v16 = 138543874;
          v17 = _pl_prettyDescription4;
          v18 = 2050;
          v19 = v10;
          v20 = 2114;
          v21 = _pl_prettyDescription;
          _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "Recording cloud GUID for deletion %{public}@ [type: %{public}ld, %{public}@]", &v16, 0x20u);
        }

        [(PLLocalChangeEventBuilder *)self recordDeletedCloudGUID:_pl_prettyDescription4 forType:v10];
      }

      else
      {
        v14 = PLPersistentHistoryGetLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          _pl_prettyDescription2 = [changeCopy _pl_prettyDescription];
          v16 = 138543362;
          v17 = _pl_prettyDescription2;
          _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEFAULT, "Not recording cloud delete change because cloud GUID is nil: %{public}@", &v16, 0xCu);
        }

        _pl_prettyDescription4 = 0;
      }
    }

    else
    {
      _pl_prettyDescription4 = PLPersistentHistoryGetLog();
      if (os_log_type_enabled(_pl_prettyDescription4, OS_LOG_TYPE_DEBUG))
      {
        _pl_prettyDescription3 = [changeCopy _pl_prettyDescription];
        v16 = 138543362;
        v17 = _pl_prettyDescription3;
        _os_log_impl(&dword_19BF1F000, _pl_prettyDescription4, OS_LOG_TYPE_DEBUG, "Not recording cloud delete change because its state is not deleted: %{public}@", &v16, 0xCu);
      }
    }

    goto LABEL_14;
  }

  tombstone = PLPersistentHistoryGetLog();
  if (os_log_type_enabled(tombstone, OS_LOG_TYPE_DEBUG))
  {
    _pl_prettyDescription4 = [changeCopy _pl_prettyDescription];
    v16 = 138543362;
    v17 = _pl_prettyDescription4;
    _os_log_impl(&dword_19BF1F000, tombstone, OS_LOG_TYPE_DEBUG, "Not recording cloud delete change because entity is not cloud deletable: %{public}@", &v16, 0xCu);
LABEL_14:
  }
}

- (void)_recordDeleteChange:(id)change
{
  v11 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  changedObjectID = [changeCopy changedObjectID];
  v6 = [(NSMutableSet *)self->_insertedObjectIDs containsObject:changedObjectID];
  [(NSMutableSet *)self->_insertedObjectIDs removeObject:changedObjectID];
  [(NSMutableSet *)self->_updatedObjectIDs removeObject:changedObjectID];
  if (v6)
  {
    v7 = PLPersistentHistoryGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      _pl_prettyDescription = [changeCopy _pl_prettyDescription];
      v9 = 138412290;
      v10 = _pl_prettyDescription;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEBUG, "Not recording delete change because it was recorded as an insert: %@", &v9, 0xCu);
    }
  }

  else
  {
    [(PLLocalChangeEventBuilder *)self recordDeletedObjectID:changedObjectID];
  }

  [(PLLocalChangeEventBuilder *)self _recordCloudDeleteForChange:changeCopy];
}

- (id)_filteredUpdatedPropertiesFromChange:(id)change
{
  v12 = *MEMORY[0x1E69E9840];
  updatedProperties = [change updatedProperties];
  v5 = updatedProperties;
  if (self->_updatedPropertyFilter)
  {
    v6 = [updatedProperties _pl_filter:?];

    v7 = PLPersistentHistoryGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = PLDescriptionForUpdateProperties(v6);
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEBUG, "Filtered updated properties: %@", &v10, 0xCu);
    }
  }

  else
  {
    v6 = updatedProperties;
  }

  return v6;
}

- (void)_recordUpdateChange:(id)change
{
  v12 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  changedObjectID = [changeCopy changedObjectID];
  if ([(NSMutableSet *)self->_insertedObjectIDs containsObject:changedObjectID])
  {
    v6 = PLPersistentHistoryGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      _pl_prettyDescription = [changeCopy _pl_prettyDescription];
      v10 = 138412290;
      v11 = _pl_prettyDescription;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEBUG, "Not recording update change because it was recorded as an insert: %@", &v10, 0xCu);
LABEL_8:
    }
  }

  else
  {
    v6 = [(PLLocalChangeEventBuilder *)self _filteredUpdatedPropertiesFromChange:changeCopy];
    if (![v6 count])
    {
      _pl_prettyDescription = PLPersistentHistoryGetLog();
      if (os_log_type_enabled(_pl_prettyDescription, OS_LOG_TYPE_DEBUG))
      {
        _pl_prettyDescription2 = [changeCopy _pl_prettyDescription];
        v10 = 138412290;
        v11 = _pl_prettyDescription2;
        _os_log_impl(&dword_19BF1F000, _pl_prettyDescription, OS_LOG_TYPE_DEBUG, "Not recording update change because all properties were filtered out: %@", &v10, 0xCu);
      }

      goto LABEL_8;
    }

    [(PLLocalChangeEventBuilder *)self recordUpdatedObjectID:changedObjectID];
    updatedProperties = [changeCopy updatedProperties];
    [PLPropertyIndexMapping recordChangedProperties:updatedProperties forObjectID:changedObjectID inAttributesByOID:self->_attributesByOID relationshipsByOID:self->_relationshipsByOID];
  }
}

- (void)_recordInsertChange:(id)change
{
  changedObjectID = [change changedObjectID];
  [(PLLocalChangeEventBuilder *)self recordInsertedObjectID:changedObjectID];
}

- (void)recordChange:(id)change
{
  v10 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  v5 = PLPersistentHistoryGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    _pl_prettyDescription = [changeCopy _pl_prettyDescription];
    v8 = 138412290;
    v9 = _pl_prettyDescription;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEBUG, "Record change: %@", &v8, 0xCu);
  }

  ++self->_changeCount;
  changeType = [changeCopy changeType];
  switch(changeType)
  {
    case 2:
      [(PLLocalChangeEventBuilder *)self _recordDeleteChange:changeCopy];
      break;
    case 1:
      [(PLLocalChangeEventBuilder *)self _recordUpdateChange:changeCopy];
      break;
    case 0:
      [(PLLocalChangeEventBuilder *)self _recordInsertChange:changeCopy];
      break;
  }
}

- (BOOL)_shouldRecordTransaction:(id)transaction
{
  transactionFilter = self->_transactionFilter;
  if (transactionFilter)
  {
    return transactionFilter[2](transactionFilter, transaction);
  }

  else
  {
    return 1;
  }
}

- (void)recordTransaction:(id)transaction
{
  v29 = *MEMORY[0x1E69E9840];
  transactionCopy = transaction;
  v4 = [(PLLocalChangeEventBuilder *)self _shouldRecordTransaction:?];
  changes = PLPersistentHistoryGetLog();
  v6 = os_log_type_enabled(changes, OS_LOG_TYPE_DEBUG);
  if (v4)
  {
    if (v6)
    {
      _pl_prettyDescription = [transactionCopy _pl_prettyDescription];
      *buf = 138412290;
      v25 = _pl_prettyDescription;
      _os_log_impl(&dword_19BF1F000, changes, OS_LOG_TYPE_DEBUG, "Record transaction: %@", buf, 0xCu);
    }

    ++self->_transactionCount;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    changes = [transactionCopy changes];
    v8 = [changes countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v21;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(changes);
          }

          v12 = *(*(&v20 + 1) + 8 * i);
          v13 = objc_autoreleasePoolPush();
          changedObjectID = [v12 changedObjectID];
          if (changedObjectID)
          {
            [(PLLocalChangeEventBuilder *)self recordChange:v12];
          }

          else
          {
            v15 = PLBackendGetLog();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
            {
              _pl_prettyDescription2 = [v12 _pl_prettyDescription];
              v17 = [transactionCopy _pl_prettyDescriptionWithIndent:1];
              *buf = 138412546;
              v25 = _pl_prettyDescription2;
              v26 = 2112;
              v27 = v17;
              _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_FAULT, "PLLocalChangeEventBuilder: changedObjectID is nil\n%@%@", buf, 0x16u);
            }
          }

          objc_autoreleasePoolPop(v13);
        }

        v9 = [changes countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v9);
    }
  }

  else if (v6)
  {
    _pl_prettyDescription3 = [transactionCopy _pl_prettyDescription];
    *buf = 138412290;
    v25 = _pl_prettyDescription3;
    _os_log_impl(&dword_19BF1F000, changes, OS_LOG_TYPE_DEBUG, "Not recording transaction due to filter: %@", buf, 0xCu);
  }
}

- (void)recordTransactionsFromIterator:(id)iterator untilTest:(id)test
{
  v25 = *MEMORY[0x1E69E9840];
  iteratorCopy = iterator;
  testCopy = test;
  v8 = PLPersistentHistoryGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = [iteratorCopy count];
    v10 = _Block_copy(testCopy);
    *buf = 134218242;
    v22 = v9;
    v23 = 2112;
    v24 = v10;
    _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEBUG, "Record transactions from iterator with count: %lu, test: %@", buf, 0x16u);
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __70__PLLocalChangeEventBuilder_recordTransactionsFromIterator_untilTest___block_invoke;
  v17[3] = &unk_1E75669D8;
  v11 = iteratorCopy;
  v18 = v11;
  selfCopy = self;
  v20 = testCopy;
  v12 = testCopy;
  [v11 enumerateRemainingTransactionsWithBlock:v17];
  lastIteratedToken = [v11 lastIteratedToken];
  v14 = PLPersistentHistoryGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v22 = lastIteratedToken;
    _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEBUG, "Last iterated token: %@", buf, 0xCu);
  }

  v15 = [PLPersistentHistoryUtilities transactionNumberFromToken:lastIteratedToken];
  lastTransactionNumber = self->_lastTransactionNumber;
  self->_lastTransactionNumber = v15;
}

void __70__PLLocalChangeEventBuilder_recordTransactionsFromIterator_untilTest___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) context];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __70__PLLocalChangeEventBuilder_recordTransactionsFromIterator_untilTest___block_invoke_2;
  v11[3] = &unk_1E7578848;
  v11[4] = *(a1 + 40);
  v12 = v5;
  v7 = v5;
  [v6 performBlockAndWait:v11];

  *a3 = (*(*(a1 + 48) + 16))(*(a1 + 48), v7, v8, v9, v10);
}

- (void)recordUpdatedAttributes:(unint64_t)attributes andRelationships:(unint64_t)relationships forObjectID:(id)d
{
  v8 = MEMORY[0x1E696AD98];
  dCopy = d;
  v10 = [v8 numberWithUnsignedLongLong:attributes];
  [(NSMutableDictionary *)self->_attributesByOID setObject:v10 forKeyedSubscript:dCopy];

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:relationships];
  [(NSMutableDictionary *)self->_relationshipsByOID setObject:v11 forKeyedSubscript:dCopy];
}

- (void)recordDeletedCloudGUID:(id)d forType:(int64_t)type
{
  dCopy = d;
  if ((type - 1) <= 0x10)
  {
    v7 = dCopy;
    [(NSMutableDictionary *)(&self->_relationshipsByOID)[type] addObject:dCopy];
    dCopy = v7;
  }
}

- (void)recordUpdatedObjectID:(id)d
{
  dCopy = d;
  [(NSMutableSet *)self->_updatedObjectIDs addObject:dCopy];
  entity = [dCopy entity];
  name = [entity name];
  v6 = +[PLLimitedLibraryFetchFilter entityName];
  v7 = [name isEqualToString:v6];

  if (v7)
  {
    mEMORY[0x1E69BF2B0] = [MEMORY[0x1E69BF2B0] sharedInstance];
    v9 = [mEMORY[0x1E69BF2B0] photosAccessAllowedWithScope:7];

    if (v9 == 4)
    {
      self->_unknownMergeEvent = 1;
      persistentStore = [dCopy persistentStore];
      v11 = [persistentStore URL];
      v12 = [MEMORY[0x1E69BF2A8] libraryURLFromDatabaseURL:v11];
      v13 = +[PLPhotoLibraryBundleController sharedBundleController];
      v14 = [v13 bundleForLibraryURL:v12];

      [v14 resetClientSandboxExtensionCache];
    }
  }
}

+ (id)localEventFromTransaction:(id)transaction
{
  transactionCopy = transaction;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__PLLocalChangeEventBuilder_localEventFromTransaction___block_invoke;
  v8[3] = &unk_1E756FDC0;
  v9 = transactionCopy;
  v5 = transactionCopy;
  v6 = [self localEventWithBuilderBlock:v8];

  return v6;
}

+ (id)localEventWithBuilderBlock:(id)block
{
  blockCopy = block;
  v3 = blockCopy;
  v4 = pl_result_with_autoreleasepool();

  return v4;
}

id __56__PLLocalChangeEventBuilder_localEventWithBuilderBlock___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(PLLocalChangeEventBuilder);
  (*(*(a1 + 32) + 16))();
  v3 = [(PLLocalChangeEventBuilder *)v2 buildLocalEvent];

  return v3;
}

@end