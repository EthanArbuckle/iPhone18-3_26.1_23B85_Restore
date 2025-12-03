@interface PXCMMMomentsInvitationsDataSourceState
- (PHPhotoLibrary)photoLibrary;
- (PXCMMMomentsInvitationsDataSourceState)initWithAssetCollections:(id)collections invitationsByAssetCollectionObjectID:(id)d;
- (id)stateUpdatedWithChange:(id)change changeDetails:(id *)details;
@end

@implementation PXCMMMomentsInvitationsDataSourceState

- (id)stateUpdatedWithChange:(id)change changeDetails:(id *)details
{
  v62 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  assetCollections = [(PXCMMMomentsInvitationsDataSourceState *)self assetCollections];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v8 = [changeCopy changeDetailsForFetchResult:assetCollections];
  v44 = assetCollections;
  if (v8)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __79__PXCMMMomentsInvitationsDataSourceState_stateUpdatedWithChange_changeDetails___block_invoke;
    aBlock[3] = &unk_1E773F1C0;
    v59 = dictionary;
    v9 = _Block_copy(aBlock);
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    insertedObjects = [v8 insertedObjects];
    v11 = [insertedObjects countByEnumeratingWithState:&v54 objects:v61 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v55;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v55 != v13)
          {
            objc_enumerationMutation(insertedObjects);
          }

          v9[2](v9, *(*(&v54 + 1) + 8 * i));
        }

        v12 = [insertedObjects countByEnumeratingWithState:&v54 objects:v61 count:16];
      }

      while (v12);
    }

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    changedObjects = [v8 changedObjects];
    v16 = [changedObjects countByEnumeratingWithState:&v50 objects:v60 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v51;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v51 != v18)
          {
            objc_enumerationMutation(changedObjects);
          }

          v9[2](v9, *(*(&v50 + 1) + 8 * j));
        }

        v17 = [changedObjects countByEnumeratingWithState:&v50 objects:v60 count:16];
      }

      while (v17);
    }

    fetchResultAfterChanges = [v8 fetchResultAfterChanges];
    assetCollections = v44;
  }

  else
  {
    fetchResultAfterChanges = assetCollections;
  }

  fetchedObjectIDs = [fetchResultAfterChanges fetchedObjectIDs];
  changedIndexes = [v8 changedIndexes];
  if (changedIndexes)
  {
    changedIndexes2 = [v8 changedIndexes];
    indexSet = [changedIndexes2 mutableCopy];
  }

  else
  {
    indexSet = [MEMORY[0x1E696AD50] indexSet];
  }

  invitationsByAssetCollectionObjectID = [(PXCMMMomentsInvitationsDataSourceState *)self invitationsByAssetCollectionObjectID];
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __79__PXCMMMomentsInvitationsDataSourceState_stateUpdatedWithChange_changeDetails___block_invoke_2;
  v45[3] = &unk_1E773F1E8;
  v26 = dictionary;
  v46 = v26;
  v41 = fetchedObjectIDs;
  v47 = v41;
  v42 = changeCopy;
  v48 = v42;
  v27 = indexSet;
  v49 = v27;
  [v26 enumerateKeysAndObjectsUsingBlock:v45];
  removedObjects = [v8 removedObjects];
  if (removedObjects)
  {
  }

  else if (![v26 count])
  {
    v29 = invitationsByAssetCollectionObjectID;
    goto LABEL_27;
  }

  v29 = [invitationsByAssetCollectionObjectID mutableCopy];
  removedObjects2 = [v8 removedObjects];

  if (removedObjects2)
  {
    removedObjects3 = [v8 removedObjects];
    [v29 removeObjectsForKeys:removedObjects3];
  }

  [v29 addEntriesFromDictionary:v26];
LABEL_27:
  if (fetchResultAfterChanges == assetCollections && v29 == invitationsByAssetCollectionObjectID)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [[PXCMMMomentsInvitationsDataSourceState alloc] initWithAssetCollections:fetchResultAfterChanges invitationsByAssetCollectionObjectID:v29];
  }

  v40 = selfCopy;
  v33 = [off_1E7721450 alloc];
  removedIndexes = [v8 removedIndexes];
  insertedIndexes = [v8 insertedIndexes];
  movedIndexes = [v8 movedIndexes];
  v37 = [v33 initWithIncrementalChangeDetailsRemovedIndexes:removedIndexes insertedIndexes:insertedIndexes movesToIndexes:movedIndexes movesFromIndexes:objc_msgSend(v8 changedIndexes:{"movedFromIndexes"), v27}];

  if (details)
  {
    v38 = v37;
    *details = v37;
  }

  return v40;
}

void __79__PXCMMMomentsInvitationsDataSourceState_stateUpdatedWithChange_changeDetails___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = [PXCMMMomentsInvitation invitationWithAssetCollection:v3];
  v4 = *(a1 + 32);
  v5 = [v3 objectID];

  [v4 setObject:v6 forKeyedSubscript:v5];
}

void __79__PXCMMMomentsInvitationsDataSourceState_stateUpdatedWithChange_changeDetails___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  v6 = [v5 previewAssetsFetchResult];
  if (v6)
  {
    v7 = v6;
    v8 = [*(a1 + 32) objectForKeyedSubscript:v14];
    if (v8)
    {
      goto LABEL_3;
    }

    v9 = *(a1 + 40);
    if (!v9)
    {
      goto LABEL_3;
    }

    v10 = [v9 indexOfObject:v14];

    if (v10 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = *(a1 + 48);
      v12 = [v5 previewAssetsFetchResult];
      v7 = [v11 changeDetailsForFetchResult:v12];

      if (!v7)
      {
        goto LABEL_4;
      }

      v13 = [v7 fetchResultAfterChanges];
      v8 = [v5 invitationWithUpdatedPreviewAssetsFetchResult:v13];

      [*(a1 + 32) setObject:v8 forKeyedSubscript:v14];
      [*(a1 + 56) addIndex:v10];
LABEL_3:

LABEL_4:
    }
  }
}

- (PHPhotoLibrary)photoLibrary
{
  assetCollections = [(PXCMMMomentsInvitationsDataSourceState *)self assetCollections];
  photoLibrary = [assetCollections photoLibrary];

  return photoLibrary;
}

- (PXCMMMomentsInvitationsDataSourceState)initWithAssetCollections:(id)collections invitationsByAssetCollectionObjectID:(id)d
{
  collectionsCopy = collections;
  dCopy = d;
  v12.receiver = self;
  v12.super_class = PXCMMMomentsInvitationsDataSourceState;
  v9 = [(PXCMMMomentsInvitationsDataSourceState *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_assetCollections, collections);
    objc_storeStrong(&v10->_invitationsByAssetCollectionObjectID, d);
  }

  return v10;
}

@end