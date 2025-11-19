@interface PLLocalChangeEventBuilder
+ (id)localEventFromTransaction:(id)a3;
+ (id)localEventWithBuilderBlock:(id)a3;
- (BOOL)_isCloudStateDeletedOnTombstone:(id)a3;
- (BOOL)_shouldRecordTransaction:(id)a3;
- (Class)_cloudDeletableEntityFromChange:(id)a3;
- (PLLocalChangeEventBuilder)init;
- (id)_filteredUpdatedPropertiesFromChange:(id)a3;
- (id)buildLocalEvent;
- (id)recordChangedObjectIDBlockForChangeKey:(id)a3;
- (id)recordDeletedCloudGUIDBlockForChangeKey:(id)a3;
- (void)_recordCloudDeleteForChange:(id)a3;
- (void)_recordDeleteChange:(id)a3;
- (void)_recordInsertChange:(id)a3;
- (void)_recordUpdateChange:(id)a3;
- (void)recordChange:(id)a3;
- (void)recordDeletedCloudGUID:(id)a3 forType:(int64_t)a4;
- (void)recordTransaction:(id)a3;
- (void)recordTransactionsFromIterator:(id)a3 untilTest:(id)a4;
- (void)recordUpdatedAttributes:(unint64_t)a3 andRelationships:(unint64_t)a4 forObjectID:(id)a5;
- (void)recordUpdatedObjectID:(id)a3;
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
    v4 = [MEMORY[0x1E695DF90] dictionary];
    v5 = [(NSMutableSet *)self->_insertedObjectIDs allObjects];
    [v4 setObject:v5 forKeyedSubscript:*MEMORY[0x1E695D320]];

    v6 = [(NSMutableSet *)self->_updatedObjectIDs allObjects];
    [v4 setObject:v6 forKeyedSubscript:*MEMORY[0x1E695D4C8]];

    v7 = [(NSMutableSet *)self->_deletedObjectIDs allObjects];
    [v4 setObject:v7 forKeyedSubscript:*MEMORY[0x1E695D2F0]];

    v8 = [(NSMutableDictionary *)self->_attributesByOID copy];
    [v4 setObject:v8 forKeyedSubscript:@"PLUpdatedAttributesByObjectIDKey"];

    v9 = [(NSMutableDictionary *)self->_relationshipsByOID copy];
    [v4 setObject:v9 forKeyedSubscript:@"PLUpdatedRelationshipsByObjectIDKey"];

    v10 = [(NSMutableArray *)self->_deletedAssetCloudGUIDs copy];
    [v4 setObject:v10 forKeyedSubscript:@"cloudAssetDeleteGUIDs"];

    v11 = [(NSMutableArray *)self->_deletedAlbumCloudGUIDs copy];
    [v4 setObject:v11 forKeyedSubscript:@"cloudAlbumDeleteGUIDs"];

    v12 = [(NSMutableArray *)self->_deletedMemoryCloudGUIDs copy];
    [v4 setObject:v12 forKeyedSubscript:@"cloudMemoryDeleteGUIDs"];

    v13 = [(NSMutableArray *)self->_deletedPersonCloudGUIDs copy];
    [v4 setObject:v13 forKeyedSubscript:@"cloudPersonDeleteGUIDs"];

    v14 = [(NSMutableArray *)self->_deletedFaceCropCloudGUIDs copy];
    [v4 setObject:v14 forKeyedSubscript:@"cloudFaceCropDeleteGUIDs"];

    v15 = [(NSMutableArray *)self->_deletedOwnedMomentShareCloudGUIDs copy];
    [v4 setObject:v15 forKeyedSubscript:@"cloudOwnedCMMDeleteGUIDs"];

    v16 = [(NSMutableArray *)self->_deletedSubscribedMomentShareCloudGUIDs copy];
    [v4 setObject:v16 forKeyedSubscript:@"cloudSubscribedCMMDeleteGUIDs"];

    v17 = [(NSMutableArray *)self->_deletedOwnedLibraryScopeCloudGUIDs copy];
    [v4 setObject:v17 forKeyedSubscript:@"cloudOwnedLibraryScopeDeleteGUIDs"];

    v18 = [(NSMutableArray *)self->_deletedSubscribedLibraryScopeCloudGUIDs copy];
    [v4 setObject:v18 forKeyedSubscript:@"cloudSubscribedLibraryScopeDeleteGUIDs"];

    v19 = [(NSMutableArray *)self->_deletedSuggestionCloudGUIDs copy];
    [v4 setObject:v19 forKeyedSubscript:@"cloudSuggestionDeleteGUIDs"];

    v20 = [(NSMutableArray *)self->_deletedUserFeedbackCloudGUIDs copy];
    [v4 setObject:v20 forKeyedSubscript:@"cloudUserFeedbackDeleteGUIDs"];

    v21 = [(NSMutableArray *)self->_deletedInternalResourceUUIDToResourceTypeMappings copy];
    [v4 setObject:v21 forKeyedSubscript:@"cloudInternalResourceUUIDToResourceTypeMappings"];

    v22 = [(NSMutableArray *)self->_deletedSocialGroupCloudGUIDs copy];
    [v4 setObject:v22 forKeyedSubscript:@"cloudSocialGroupDeleteGUIDs"];

    v23 = [(NSMutableArray *)self->_deletedOwnedCollectionShareCloudGUIDs copy];
    [v4 setObject:v23 forKeyedSubscript:@"cloudOwnedCollectionShareDeleteGUIDs"];

    v24 = [(NSMutableArray *)self->_deletedSubscribedCollectionShareCloudGUIDs copy];
    [v4 setObject:v24 forKeyedSubscript:@"cloudSubscribedCollectionShareDeleteGUIDs"];

    v25 = [(NSMutableArray *)self->_deletedReactCloudGUIDs copy];
    [v4 setObject:v25 forKeyedSubscript:@"cloudReactDeleteGUIDs"];

    v26 = [(NSMutableArray *)self->_deletedTextCommentCloudGUIDs copy];
    [v4 setObject:v26 forKeyedSubscript:@"cloudTextCommentDeleteGUIDs"];

    v27 = [MEMORY[0x1E696AD98] numberWithBool:self->_coalescedEvent];
    [v4 setObject:v27 forKeyedSubscript:@"coalescedEvent"];

    v28 = [MEMORY[0x1E696AD98] numberWithBool:self->_syncChange];
    [v4 setObject:v28 forKeyedSubscript:@"PLSyncChangeMarker"];

    v29 = [MEMORY[0x1E696AD98] numberWithBool:self->_unknownMergeEvent];
    [v4 setObject:v29 forKeyedSubscript:@"PLUnknownMergeEvent"];

    [v4 setObject:self->_lastTransactionNumber forKeyedSubscript:@"lastTransactionNumber"];
    v30 = [MEMORY[0x1E696AD98] numberWithInteger:self->_transactionCount];
    [v4 setObject:v30 forKeyedSubscript:@"transactionCount"];

    v31 = [MEMORY[0x1E696AD98] numberWithInteger:self->_changeCount];
    [v4 setObject:v31 forKeyedSubscript:@"changeCount"];

    v3 = [v4 copy];
  }

  return v3;
}

- (id)recordDeletedCloudGUIDBlockForChangeKey:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 isEqualToString:@"cloudAssetDeleteGUIDs"])
  {
    deletedAssetCloudGUIDs = self->_deletedAssetCloudGUIDs;
LABEL_35:
    v6 = deletedAssetCloudGUIDs;
    goto LABEL_36;
  }

  if ([v4 isEqualToString:@"cloudAlbumDeleteGUIDs"])
  {
    deletedAssetCloudGUIDs = self->_deletedAlbumCloudGUIDs;
    goto LABEL_35;
  }

  if ([v4 isEqualToString:@"cloudMemoryDeleteGUIDs"])
  {
    deletedAssetCloudGUIDs = self->_deletedMemoryCloudGUIDs;
    goto LABEL_35;
  }

  if ([v4 isEqualToString:@"cloudPersonDeleteGUIDs"])
  {
    deletedAssetCloudGUIDs = self->_deletedPersonCloudGUIDs;
    goto LABEL_35;
  }

  if ([v4 isEqualToString:@"cloudFaceCropDeleteGUIDs"])
  {
    deletedAssetCloudGUIDs = self->_deletedFaceCropCloudGUIDs;
    goto LABEL_35;
  }

  if ([v4 isEqualToString:@"cloudOwnedCMMDeleteGUIDs"])
  {
    deletedAssetCloudGUIDs = self->_deletedOwnedMomentShareCloudGUIDs;
    goto LABEL_35;
  }

  if ([v4 isEqualToString:@"cloudSubscribedCMMDeleteGUIDs"])
  {
    deletedAssetCloudGUIDs = self->_deletedSubscribedMomentShareCloudGUIDs;
    goto LABEL_35;
  }

  if ([v4 isEqualToString:@"cloudOwnedLibraryScopeDeleteGUIDs"])
  {
    deletedAssetCloudGUIDs = self->_deletedOwnedLibraryScopeCloudGUIDs;
    goto LABEL_35;
  }

  if ([v4 isEqualToString:@"cloudSubscribedLibraryScopeDeleteGUIDs"])
  {
    deletedAssetCloudGUIDs = self->_deletedSubscribedLibraryScopeCloudGUIDs;
    goto LABEL_35;
  }

  if ([v4 isEqualToString:@"cloudSuggestionDeleteGUIDs"])
  {
    deletedAssetCloudGUIDs = self->_deletedSuggestionCloudGUIDs;
    goto LABEL_35;
  }

  if ([v4 isEqualToString:@"cloudUserFeedbackDeleteGUIDs"])
  {
    deletedAssetCloudGUIDs = self->_deletedUserFeedbackCloudGUIDs;
    goto LABEL_35;
  }

  if ([v4 isEqualToString:@"cloudInternalResourceUUIDToResourceTypeMappings"])
  {
    deletedAssetCloudGUIDs = self->_deletedInternalResourceUUIDToResourceTypeMappings;
    goto LABEL_35;
  }

  if ([v4 isEqualToString:@"cloudSocialGroupDeleteGUIDs"])
  {
    deletedAssetCloudGUIDs = self->_deletedSocialGroupCloudGUIDs;
    goto LABEL_35;
  }

  if ([v4 isEqualToString:@"cloudOwnedCollectionShareDeleteGUIDs"])
  {
    deletedAssetCloudGUIDs = self->_deletedOwnedCollectionShareCloudGUIDs;
    goto LABEL_35;
  }

  if ([v4 isEqualToString:@"cloudSubscribedCollectionShareDeleteGUIDs"])
  {
    deletedAssetCloudGUIDs = self->_deletedSubscribedCollectionShareCloudGUIDs;
    goto LABEL_35;
  }

  if ([v4 isEqualToString:@"cloudReactDeleteGUIDs"])
  {
    deletedAssetCloudGUIDs = self->_deletedReactCloudGUIDs;
    goto LABEL_35;
  }

  if ([v4 isEqualToString:@"cloudTextCommentDeleteGUIDs"])
  {
    deletedAssetCloudGUIDs = self->_deletedTextCommentCloudGUIDs;
    goto LABEL_35;
  }

  v11 = PLPersistentHistoryGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v15 = v4;
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

- (id)recordChangedObjectIDBlockForChangeKey:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 isEqualToString:*MEMORY[0x1E695D320]])
  {
    insertedObjectIDs = self->_insertedObjectIDs;
LABEL_7:
    v6 = insertedObjectIDs;
    goto LABEL_8;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E695D4C8]])
  {
    insertedObjectIDs = self->_updatedObjectIDs;
    goto LABEL_7;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E695D2F0]])
  {
    insertedObjectIDs = self->_deletedObjectIDs;
    goto LABEL_7;
  }

  v11 = PLPersistentHistoryGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v15 = v4;
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

- (BOOL)_isCloudStateDeletedOnTombstone:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"cloudDeleteState"];
  v4 = [v3 intValue] == 1;

  return v4;
}

- (Class)_cloudDeletableEntityFromChange:(id)a3
{
  v3 = a3;
  v4 = [v3 changedObjectID];
  v5 = [v4 entity];
  v6 = [v5 managedObjectClassName];

  v7 = NSClassFromString(v6);
  if ([(objc_class *)v7 conformsToProtocol:&unk_1F0FD13C0])
  {
    v8 = v7;
  }

  else if ([(objc_class *)v7 isEqual:objc_opt_class()])
  {
    v9 = [v3 tombstone];
    v10 = [v9 objectForKeyedSubscript:@"primaryLabelCode"];
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

- (void)_recordCloudDeleteForChange:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PLLocalChangeEventBuilder *)self _cloudDeletableEntityFromChange:v4];
  if (v5)
  {
    v6 = v5;
    v7 = [v4 tombstone];
    if ([(PLLocalChangeEventBuilder *)self _isCloudStateDeletedOnTombstone:v7])
    {
      v8 = [(objc_class *)v6 cloudUUIDKeyForDeletion];
      v9 = [v7 objectForKeyedSubscript:v8];

      if (v9)
      {
        v10 = [(objc_class *)v6 cloudDeletionTypeForTombstone:v7];
        v11 = PLPersistentHistoryGetLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = [v4 _pl_prettyDescription];
          v16 = 138543874;
          v17 = v9;
          v18 = 2050;
          v19 = v10;
          v20 = 2114;
          v21 = v12;
          _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "Recording cloud GUID for deletion %{public}@ [type: %{public}ld, %{public}@]", &v16, 0x20u);
        }

        [(PLLocalChangeEventBuilder *)self recordDeletedCloudGUID:v9 forType:v10];
      }

      else
      {
        v14 = PLPersistentHistoryGetLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = [v4 _pl_prettyDescription];
          v16 = 138543362;
          v17 = v15;
          _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEFAULT, "Not recording cloud delete change because cloud GUID is nil: %{public}@", &v16, 0xCu);
        }

        v9 = 0;
      }
    }

    else
    {
      v9 = PLPersistentHistoryGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v13 = [v4 _pl_prettyDescription];
        v16 = 138543362;
        v17 = v13;
        _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEBUG, "Not recording cloud delete change because its state is not deleted: %{public}@", &v16, 0xCu);
      }
    }

    goto LABEL_14;
  }

  v7 = PLPersistentHistoryGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = [v4 _pl_prettyDescription];
    v16 = 138543362;
    v17 = v9;
    _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEBUG, "Not recording cloud delete change because entity is not cloud deletable: %{public}@", &v16, 0xCu);
LABEL_14:
  }
}

- (void)_recordDeleteChange:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 changedObjectID];
  v6 = [(NSMutableSet *)self->_insertedObjectIDs containsObject:v5];
  [(NSMutableSet *)self->_insertedObjectIDs removeObject:v5];
  [(NSMutableSet *)self->_updatedObjectIDs removeObject:v5];
  if (v6)
  {
    v7 = PLPersistentHistoryGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = [v4 _pl_prettyDescription];
      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEBUG, "Not recording delete change because it was recorded as an insert: %@", &v9, 0xCu);
    }
  }

  else
  {
    [(PLLocalChangeEventBuilder *)self recordDeletedObjectID:v5];
  }

  [(PLLocalChangeEventBuilder *)self _recordCloudDeleteForChange:v4];
}

- (id)_filteredUpdatedPropertiesFromChange:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = [a3 updatedProperties];
  v5 = v4;
  if (self->_updatedPropertyFilter)
  {
    v6 = [v4 _pl_filter:?];

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
    v6 = v4;
  }

  return v6;
}

- (void)_recordUpdateChange:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 changedObjectID];
  if ([(NSMutableSet *)self->_insertedObjectIDs containsObject:v5])
  {
    v6 = PLPersistentHistoryGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = [v4 _pl_prettyDescription];
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEBUG, "Not recording update change because it was recorded as an insert: %@", &v10, 0xCu);
LABEL_8:
    }
  }

  else
  {
    v6 = [(PLLocalChangeEventBuilder *)self _filteredUpdatedPropertiesFromChange:v4];
    if (![v6 count])
    {
      v7 = PLPersistentHistoryGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v9 = [v4 _pl_prettyDescription];
        v10 = 138412290;
        v11 = v9;
        _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEBUG, "Not recording update change because all properties were filtered out: %@", &v10, 0xCu);
      }

      goto LABEL_8;
    }

    [(PLLocalChangeEventBuilder *)self recordUpdatedObjectID:v5];
    v8 = [v4 updatedProperties];
    [PLPropertyIndexMapping recordChangedProperties:v8 forObjectID:v5 inAttributesByOID:self->_attributesByOID relationshipsByOID:self->_relationshipsByOID];
  }
}

- (void)_recordInsertChange:(id)a3
{
  v4 = [a3 changedObjectID];
  [(PLLocalChangeEventBuilder *)self recordInsertedObjectID:v4];
}

- (void)recordChange:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLPersistentHistoryGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [v4 _pl_prettyDescription];
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEBUG, "Record change: %@", &v8, 0xCu);
  }

  ++self->_changeCount;
  v7 = [v4 changeType];
  switch(v7)
  {
    case 2:
      [(PLLocalChangeEventBuilder *)self _recordDeleteChange:v4];
      break;
    case 1:
      [(PLLocalChangeEventBuilder *)self _recordUpdateChange:v4];
      break;
    case 0:
      [(PLLocalChangeEventBuilder *)self _recordInsertChange:v4];
      break;
  }
}

- (BOOL)_shouldRecordTransaction:(id)a3
{
  transactionFilter = self->_transactionFilter;
  if (transactionFilter)
  {
    return transactionFilter[2](transactionFilter, a3);
  }

  else
  {
    return 1;
  }
}

- (void)recordTransaction:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v19 = a3;
  v4 = [(PLLocalChangeEventBuilder *)self _shouldRecordTransaction:?];
  v5 = PLPersistentHistoryGetLog();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (v4)
  {
    if (v6)
    {
      v7 = [v19 _pl_prettyDescription];
      *buf = 138412290;
      v25 = v7;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEBUG, "Record transaction: %@", buf, 0xCu);
    }

    ++self->_transactionCount;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v5 = [v19 changes];
    v8 = [v5 countByEnumeratingWithState:&v20 objects:v28 count:16];
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
            objc_enumerationMutation(v5);
          }

          v12 = *(*(&v20 + 1) + 8 * i);
          v13 = objc_autoreleasePoolPush();
          v14 = [v12 changedObjectID];
          if (v14)
          {
            [(PLLocalChangeEventBuilder *)self recordChange:v12];
          }

          else
          {
            v15 = PLBackendGetLog();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
            {
              v16 = [v12 _pl_prettyDescription];
              v17 = [v19 _pl_prettyDescriptionWithIndent:1];
              *buf = 138412546;
              v25 = v16;
              v26 = 2112;
              v27 = v17;
              _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_FAULT, "PLLocalChangeEventBuilder: changedObjectID is nil\n%@%@", buf, 0x16u);
            }
          }

          objc_autoreleasePoolPop(v13);
        }

        v9 = [v5 countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v9);
    }
  }

  else if (v6)
  {
    v18 = [v19 _pl_prettyDescription];
    *buf = 138412290;
    v25 = v18;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEBUG, "Not recording transaction due to filter: %@", buf, 0xCu);
  }
}

- (void)recordTransactionsFromIterator:(id)a3 untilTest:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PLPersistentHistoryGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = [v6 count];
    v10 = _Block_copy(v7);
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
  v11 = v6;
  v18 = v11;
  v19 = self;
  v20 = v7;
  v12 = v7;
  [v11 enumerateRemainingTransactionsWithBlock:v17];
  v13 = [v11 lastIteratedToken];
  v14 = PLPersistentHistoryGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v22 = v13;
    _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEBUG, "Last iterated token: %@", buf, 0xCu);
  }

  v15 = [PLPersistentHistoryUtilities transactionNumberFromToken:v13];
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

- (void)recordUpdatedAttributes:(unint64_t)a3 andRelationships:(unint64_t)a4 forObjectID:(id)a5
{
  v8 = MEMORY[0x1E696AD98];
  v9 = a5;
  v10 = [v8 numberWithUnsignedLongLong:a3];
  [(NSMutableDictionary *)self->_attributesByOID setObject:v10 forKeyedSubscript:v9];

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a4];
  [(NSMutableDictionary *)self->_relationshipsByOID setObject:v11 forKeyedSubscript:v9];
}

- (void)recordDeletedCloudGUID:(id)a3 forType:(int64_t)a4
{
  v6 = a3;
  if ((a4 - 1) <= 0x10)
  {
    v7 = v6;
    [(NSMutableDictionary *)(&self->_relationshipsByOID)[a4] addObject:v6];
    v6 = v7;
  }
}

- (void)recordUpdatedObjectID:(id)a3
{
  v15 = a3;
  [(NSMutableSet *)self->_updatedObjectIDs addObject:v15];
  v4 = [v15 entity];
  v5 = [v4 name];
  v6 = +[PLLimitedLibraryFetchFilter entityName];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    v8 = [MEMORY[0x1E69BF2B0] sharedInstance];
    v9 = [v8 photosAccessAllowedWithScope:7];

    if (v9 == 4)
    {
      self->_unknownMergeEvent = 1;
      v10 = [v15 persistentStore];
      v11 = [v10 URL];
      v12 = [MEMORY[0x1E69BF2A8] libraryURLFromDatabaseURL:v11];
      v13 = +[PLPhotoLibraryBundleController sharedBundleController];
      v14 = [v13 bundleForLibraryURL:v12];

      [v14 resetClientSandboxExtensionCache];
    }
  }
}

+ (id)localEventFromTransaction:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__PLLocalChangeEventBuilder_localEventFromTransaction___block_invoke;
  v8[3] = &unk_1E756FDC0;
  v9 = v4;
  v5 = v4;
  v6 = [a1 localEventWithBuilderBlock:v8];

  return v6;
}

+ (id)localEventWithBuilderBlock:(id)a3
{
  v6 = a3;
  v3 = v6;
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