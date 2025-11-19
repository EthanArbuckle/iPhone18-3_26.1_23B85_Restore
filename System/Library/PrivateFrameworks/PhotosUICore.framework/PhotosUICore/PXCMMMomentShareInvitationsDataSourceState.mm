@interface PXCMMMomentShareInvitationsDataSourceState
+ (PXCMMMomentShareInvitationsDataSourceState)new;
- (PXCMMMomentShareInvitationsDataSourceState)init;
- (PXCMMMomentShareInvitationsDataSourceState)initWithMomentShares:(id)a3 invitationsByMomentShareObjectID:(id)a4;
- (id)stateUpdatedWithChange:(id)a3 changeDetails:(id *)a4;
@end

@implementation PXCMMMomentShareInvitationsDataSourceState

- (id)stateUpdatedWithChange:(id)a3 changeDetails:(id *)a4
{
  v71 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = self->_momentShares;
  v7 = [MEMORY[0x1E695DF90] dictionary];
  v8 = [v5 changeDetailsForFetchResult:v6];
  v52 = v6;
  if (v8)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __83__PXCMMMomentShareInvitationsDataSourceState_stateUpdatedWithChange_changeDetails___block_invoke;
    aBlock[3] = &unk_1E772E8C0;
    v68 = v7;
    v9 = _Block_copy(aBlock);
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v10 = [v8 insertedObjects];
    v11 = [v10 countByEnumeratingWithState:&v63 objects:v70 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v64;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v64 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v9[2](v9, *(*(&v63 + 1) + 8 * i));
        }

        v12 = [v10 countByEnumeratingWithState:&v63 objects:v70 count:16];
      }

      while (v12);
    }

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v15 = [v8 changedObjects];
    v16 = [v15 countByEnumeratingWithState:&v59 objects:v69 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v60;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v60 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v9[2](v9, *(*(&v59 + 1) + 8 * j));
        }

        v17 = [v15 countByEnumeratingWithState:&v59 objects:v69 count:16];
      }

      while (v17);
    }

    v20 = [v8 fetchResultAfterChanges];
  }

  else
  {
    v20 = v6;
  }

  v21 = v20;
  v22 = [(PHFetchResult *)v20 fetchedObjectIDs];
  v23 = [v8 changedIndexes];
  v24 = [v23 mutableCopy];
  v25 = v24;
  if (v24)
  {
    v26 = v24;
  }

  else
  {
    v26 = [MEMORY[0x1E696AD50] indexSet];
  }

  v27 = v26;

  v28 = [(PXCMMMomentShareInvitationsDataSourceState *)self invitationsByMomentShareObjectID];
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __83__PXCMMMomentShareInvitationsDataSourceState_stateUpdatedWithChange_changeDetails___block_invoke_2;
  v53[3] = &unk_1E772E8E8;
  v29 = v7;
  v54 = v29;
  v50 = v22;
  v55 = v50;
  v30 = v5;
  v56 = v30;
  v57 = self;
  v31 = v27;
  v58 = v31;
  [v28 enumerateKeysAndObjectsUsingBlock:v53];
  v32 = [v8 removedObjects];
  if (v32)
  {

    v33 = v52;
  }

  else
  {
    v33 = v52;
    if (![v29 count])
    {
      v34 = v28;
      goto LABEL_27;
    }
  }

  v34 = [v28 mutableCopy];
  v35 = [v8 removedObjects];

  if (v35)
  {
    v36 = [v8 removedObjects];
    [v34 removeObjectsForKeys:v36];
  }

  [v34 addEntriesFromDictionary:v29];
LABEL_27:
  if (v21 == v33 && v34 == v28)
  {
    v37 = self;
  }

  else
  {
    v37 = [[PXCMMMomentShareInvitationsDataSourceState alloc] initWithMomentShares:v21 invitationsByMomentShareObjectID:v34];
  }

  v38 = v37;
  if (a4)
  {
    v49 = v21;
    v48 = v37;
    v39 = [off_1E7721450 alloc];
    [v8 removedIndexes];
    v40 = v29;
    v42 = v41 = v30;
    v43 = [v8 insertedIndexes];
    v44 = [v8 movedIndexes];
    v45 = [v39 initWithIncrementalChangeDetailsRemovedIndexes:v42 insertedIndexes:v43 movesToIndexes:v44 movesFromIndexes:objc_msgSend(v8 changedIndexes:{"movedFromIndexes"), v31}];

    v33 = v52;
    v30 = v41;
    v29 = v40;
    v46 = v45;
    *a4 = v45;
    v21 = v49;

    v38 = v48;
  }

  return v38;
}

void __83__PXCMMMomentShareInvitationsDataSourceState_stateUpdatedWithChange_changeDetails___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = [PXCMMMomentShareInvitation invitationWithMomentShare:v3];
  v4 = *(a1 + 32);
  v5 = [v3 objectID];

  [v4 setObject:v6 forKeyedSubscript:v5];
}

void __83__PXCMMMomentShareInvitationsDataSourceState_stateUpdatedWithChange_changeDetails___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v6 participantsFetchResult];
  v8 = [v6 previewAssetsFetchResult];
  if (!(v7 | v8))
  {
    goto LABEL_4;
  }

  v9 = [*(a1 + 32) objectForKeyedSubscript:v5];
  if (v9 || !*(a1 + 40))
  {

    goto LABEL_4;
  }

  v10 = [*(a1 + 40) indexOfObject:v5];
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_4;
  }

  v11 = v10;
  if (v7)
  {
    v12 = [*(a1 + 48) changeDetailsForFetchResult:v7];
    if (v12)
    {
      v13 = PLSharingGetLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 56);
        v23 = 138543362;
        v24 = v14;
        _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ Updating PXCMMMomentShareInvitationsDataSource because participantsFetchResult changed.", &v23, 0xCu);
      }

      v15 = [v12 fetchResultAfterChanges];
      v16 = [v6 invitationWithUpdatedParticipantsFetchResult:v15];

      goto LABEL_14;
    }
  }

  else
  {
    v12 = 0;
  }

  v16 = 0;
LABEL_14:
  if (v8)
  {
    v17 = [*(a1 + 48) changeDetailsForFetchResult:v8];

    if (v17)
    {
      v18 = PLSharingGetLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = *(a1 + 56);
        v23 = 138543362;
        v24 = v19;
        _os_log_impl(&dword_1A3C1C000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ Updating PXCMMMomentShareInvitationsDataSource because previewAssetsFetchResult changed.", &v23, 0xCu);
      }

      if (v16)
      {
        v20 = v16;
      }

      else
      {
        v20 = v6;
      }

      v21 = [v17 fetchResultAfterChanges];
      v22 = [v20 invitationWithUpdatedPreviewAssetsFetchResult:v21];

      v16 = v22;
    }
  }

  else
  {
    v17 = v12;
  }

  if (v16)
  {
    [*(a1 + 32) setObject:v16 forKeyedSubscript:v5];
    [*(a1 + 64) addIndex:v11];
  }

LABEL_4:
}

- (PXCMMMomentShareInvitationsDataSourceState)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXCMMMomentShareInvitationsDataSourceManager.m" lineNumber:344 description:{@"%s is not available as initializer", "-[PXCMMMomentShareInvitationsDataSourceState init]"}];

  abort();
}

- (PXCMMMomentShareInvitationsDataSourceState)initWithMomentShares:(id)a3 invitationsByMomentShareObjectID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PXCMMMomentShareInvitationsDataSourceState;
  v9 = [(PXCMMMomentShareInvitationsDataSourceState *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_momentShares, a3);
    objc_storeStrong(&v10->_invitationsByMomentShareObjectID, a4);
  }

  return v10;
}

+ (PXCMMMomentShareInvitationsDataSourceState)new
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"PXCMMMomentShareInvitationsDataSourceManager.m" lineNumber:348 description:{@"%s is not available as initializer", "+[PXCMMMomentShareInvitationsDataSourceState new]"}];

  abort();
}

@end