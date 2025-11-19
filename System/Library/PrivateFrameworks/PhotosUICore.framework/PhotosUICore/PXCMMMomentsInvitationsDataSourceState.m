@interface PXCMMMomentsInvitationsDataSourceState
- (PHPhotoLibrary)photoLibrary;
- (PXCMMMomentsInvitationsDataSourceState)initWithAssetCollections:(id)a3 invitationsByAssetCollectionObjectID:(id)a4;
- (id)stateUpdatedWithChange:(id)a3 changeDetails:(id *)a4;
@end

@implementation PXCMMMomentsInvitationsDataSourceState

- (id)stateUpdatedWithChange:(id)a3 changeDetails:(id *)a4
{
  v62 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(PXCMMMomentsInvitationsDataSourceState *)self assetCollections];
  v7 = [MEMORY[0x1E695DF90] dictionary];
  v8 = [v5 changeDetailsForFetchResult:v6];
  v44 = v6;
  if (v8)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __79__PXCMMMomentsInvitationsDataSourceState_stateUpdatedWithChange_changeDetails___block_invoke;
    aBlock[3] = &unk_1E773F1C0;
    v59 = v7;
    v9 = _Block_copy(aBlock);
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v10 = [v8 insertedObjects];
    v11 = [v10 countByEnumeratingWithState:&v54 objects:v61 count:16];
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
            objc_enumerationMutation(v10);
          }

          v9[2](v9, *(*(&v54 + 1) + 8 * i));
        }

        v12 = [v10 countByEnumeratingWithState:&v54 objects:v61 count:16];
      }

      while (v12);
    }

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v15 = [v8 changedObjects];
    v16 = [v15 countByEnumeratingWithState:&v50 objects:v60 count:16];
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
            objc_enumerationMutation(v15);
          }

          v9[2](v9, *(*(&v50 + 1) + 8 * j));
        }

        v17 = [v15 countByEnumeratingWithState:&v50 objects:v60 count:16];
      }

      while (v17);
    }

    v20 = [v8 fetchResultAfterChanges];
    v6 = v44;
  }

  else
  {
    v20 = v6;
  }

  v21 = [v20 fetchedObjectIDs];
  v22 = [v8 changedIndexes];
  if (v22)
  {
    v23 = [v8 changedIndexes];
    v24 = [v23 mutableCopy];
  }

  else
  {
    v24 = [MEMORY[0x1E696AD50] indexSet];
  }

  v25 = [(PXCMMMomentsInvitationsDataSourceState *)self invitationsByAssetCollectionObjectID];
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __79__PXCMMMomentsInvitationsDataSourceState_stateUpdatedWithChange_changeDetails___block_invoke_2;
  v45[3] = &unk_1E773F1E8;
  v26 = v7;
  v46 = v26;
  v41 = v21;
  v47 = v41;
  v42 = v5;
  v48 = v42;
  v27 = v24;
  v49 = v27;
  [v26 enumerateKeysAndObjectsUsingBlock:v45];
  v28 = [v8 removedObjects];
  if (v28)
  {
  }

  else if (![v26 count])
  {
    v29 = v25;
    goto LABEL_27;
  }

  v29 = [v25 mutableCopy];
  v30 = [v8 removedObjects];

  if (v30)
  {
    v31 = [v8 removedObjects];
    [v29 removeObjectsForKeys:v31];
  }

  [v29 addEntriesFromDictionary:v26];
LABEL_27:
  if (v20 == v6 && v29 == v25)
  {
    v32 = self;
  }

  else
  {
    v32 = [[PXCMMMomentsInvitationsDataSourceState alloc] initWithAssetCollections:v20 invitationsByAssetCollectionObjectID:v29];
  }

  v40 = v32;
  v33 = [off_1E7721450 alloc];
  v34 = [v8 removedIndexes];
  v35 = [v8 insertedIndexes];
  v36 = [v8 movedIndexes];
  v37 = [v33 initWithIncrementalChangeDetailsRemovedIndexes:v34 insertedIndexes:v35 movesToIndexes:v36 movesFromIndexes:objc_msgSend(v8 changedIndexes:{"movedFromIndexes"), v27}];

  if (a4)
  {
    v38 = v37;
    *a4 = v37;
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
  v2 = [(PXCMMMomentsInvitationsDataSourceState *)self assetCollections];
  v3 = [v2 photoLibrary];

  return v3;
}

- (PXCMMMomentsInvitationsDataSourceState)initWithAssetCollections:(id)a3 invitationsByAssetCollectionObjectID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PXCMMMomentsInvitationsDataSourceState;
  v9 = [(PXCMMMomentsInvitationsDataSourceState *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_assetCollections, a3);
    objc_storeStrong(&v10->_invitationsByAssetCollectionObjectID, a4);
  }

  return v10;
}

@end