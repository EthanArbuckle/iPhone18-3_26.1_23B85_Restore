@interface PLSocialGroup
+ (BOOL)_verifiedTypeChangeFromRejectedToUserWithSourceNode:(id)a3;
+ (BOOL)deleteDuplicateGraphAndUnverifiedGroupsInContext:(id)a3 error:(id *)a4;
+ (BOOL)deleteDuplicateGroupsAfterInsertionOfGroup:(id)a3 error:(id *)a4;
+ (BOOL)deleteSocialGroupsHavingMember:(id)a3;
+ (BOOL)needsConstraintConflictResolutionForNode:(id)a3;
+ (BOOL)rejectSocialGroupsHavingMember:(id)a3;
+ (BOOL)resetAllInContext:(id)a3 error:(id *)a4;
+ (BOOL)runAssetContainmentOnAllSocialGroupsInContext:(id)a3 error:(id *)a4;
+ (id)_fetchDuplicateSocialGroupNodes:(id)a3 error:(id *)a4;
+ (id)_memberIDsByNodeIDFromEdgeDictionaries:(id)a3;
+ (id)_personsFromEdges:(id)a3;
+ (id)_primaryLabelPredicateWithContext:(id)a3;
+ (id)_socialGroupsNodesContainingMember:(id)a3;
+ (id)_sortableKeyPaths;
+ (id)changeFlagsKeysByNodeContainerKey;
+ (id)defaultValueForRequiredNodeValueCode:(int)a3 forNode:(id)a4;
+ (id)fetchAssetIDsHavingAssetPersonEdgesToPersonID:(id)a3 inManagedObjectContext:(id)a4 error:(id *)a5;
+ (id)fetchDuplicateSocialGroupIDsWithMemberIDs:(id)a3 inContext:(id)a4 error:(id *)a5;
+ (id)fetchPersonIDsHavingAssetPersonEdgesToAssetID:(id)a3 inManagedObjectContext:(id)a4 error:(id *)a5;
+ (id)keyAssetUUIDOfSocialGroupWithPersonUUIDs:(id)a3 candidateAssetUUIDs:(id)a4 inLibrary:(id)a5 error:(id *)a6;
+ (id)newNodeContainerWithManagedObjectContext:(id)a3;
+ (id)predicateForAllVerifiedSocialGroupsInContext:(id)a3;
+ (id)predicateForUserVerifiedSocialGroupsInContext:(id)a3;
+ (id)requiredNodeValueCodes;
+ (id)resetAllInLibrary:(id)a3 completion:(id)a4;
+ (id)socialGroupsToUploadInManagedObjectContext:(id)a3 limit:(int64_t)a4;
+ (id)sortableKeys;
+ (void)_deleteEmptyGraphOrUnverifiedSocialGroupNode:(id)a3;
+ (void)_deleteUserAndGraphGroupsFromDuplicateGroupNodes:(id)a3 inContext:(id)a4;
+ (void)didSaveWithNode:(id)a3;
+ (void)prepareForDeletingOutgoingEdge:(id)a3;
+ (void)prepareForDeletionWithNode:(id)a3;
+ (void)rebuildWithLibrary:(id)a3;
+ (void)updateKeyAssetOfSocialGroupsWithUUIDs:(id)a3 inLibrary:(id)a4;
+ (void)willSaveWithNode:(id)a3;
- (BOOL)_existingExclusiveAssetEdgeOut;
- (BOOL)_updateAssetEdgesWithAssetContainmentResult:(id)a3 assetIDsToUpdate:(id)a4 error:(id *)a5;
- (BOOL)addMember:(id)a3 error:(id *)a4;
- (BOOL)isSyncableChange;
- (BOOL)keyAssetIsNeeded;
- (BOOL)removeMember:(id)a3 error:(id *)a4;
- (BOOL)resetCustomDataWithError:(id *)a3;
- (BOOL)runAssetContainmentWithError:(id *)a3 assetIDsToUpdate:(id)a4;
- (BOOL)setKeyAsset:(id)a3 error:(id *)a4;
- (BOOL)setKeyAssetPickSource:(int64_t)a3 error:(id *)a4;
- (BOOL)setMembers:(id)a3 error:(id *)a4;
- (BOOL)setSocialGroupVerifiedType:(signed __int16)a3 error:(id *)a4;
- (BOOL)supportsCloudUpload;
- (NSNumber)automaticOrder;
- (NSNumber)manualOrder;
- (NSSet)members;
- (NSString)customTitle;
- (PLManagedAsset)keyAsset;
- (PLSocialGroup)initWithNode:(id)a3;
- (id)_exclusiveAssetEdgesOut;
- (id)_exclusiveAssetEdgesOutFetch;
- (id)_existingMemberEdgeForPerson:(id)a3 success:(BOOL *)a4 error:(id *)a5;
- (id)_inclusiveAssetEdgesOutForSpecificAssetIDs:(id)a3 prefetchEdgeLabels:(BOOL)a4;
- (id)_insertGraphEdgeForAsset:(id)a3 exclusiveLabel:(id)a4;
- (id)_insertMemberEdgeForPerson:(id)a3;
- (id)_personEdgesOutWithError:(id *)a3;
- (id)cplSocialGroupChange;
- (id)exclusiveAssetIDs;
- (id)inclusiveAssetIDs;
- (id)keyAssetEdgeWithError:(id *)a3;
- (id)localID;
- (id)runAssetContainmentWithCompletion:(id)a3;
- (id)scopeIdentifier;
- (id)scopedIdentifier;
- (int64_t)keyAssetPickSource;
- (signed)socialGroupVerifiedType;
- (void)_resetExistingKeyAssetEdge:(id)a3 keyAssetLabel:(id)a4;
- (void)setAutomaticOrder:(id)a3;
- (void)setCustomTitle:(id)a3;
- (void)setManualOrder:(id)a3;
- (void)updateSocialGroupwithCPLSocialGroupChange:(id)a3 inPhotoLibrary:(id)a4;
@end

@implementation PLSocialGroup

- (BOOL)keyAssetIsNeeded
{
  v3 = [(PLSocialGroup *)self socialGroupVerifiedType];
  v4 = [(PLSocialGroup *)self keyAsset];
  if ([(PLSocialGroup *)self keyAssetPickSource]== -1)
  {
    v5 = 0;
  }

  else if (v4)
  {
    v5 = [v4 isVisibleForSocialGroupKeyAssetFetch] ^ 1;
  }

  else
  {
    v5 = 1;
  }

  v6 = 0;
  if (v3 && v3 != 0xFFFF)
  {
    if (v5)
    {
      v6 = [(PLSocialGroup *)self _existingExclusiveAssetEdgeOut];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (BOOL)_updateAssetEdgesWithAssetContainmentResult:(id)a3 assetIDsToUpdate:(id)a4 error:(id *)a5
{
  v90 = *MEMORY[0x1E69E9840];
  v63 = a3;
  v64 = self;
  v62 = a4;
  v8 = [PLSocialGroup _inclusiveAssetEdgesOutForSpecificAssetIDs:"_inclusiveAssetEdgesOutForSpecificAssetIDs:prefetchEdgeLabels:" prefetchEdgeLabels:?];
  v9 = [MEMORY[0x1E695DF90] dictionary];
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v80 objects:v89 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v81;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v81 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v80 + 1) + 8 * i);
        v16 = objc_autoreleasePoolPush();
        v17 = [v15 targetAsset];
        v18 = [v17 objectID];

        [v9 setObject:v15 forKeyedSubscript:v18];
        objc_autoreleasePoolPop(v16);
      }

      v12 = [v10 countByEnumeratingWithState:&v80 objects:v89 count:16];
    }

    while (v12);
  }

  v19 = [(PLGraphNodeContainer *)v64 sourceNode];
  v20 = [v19 managedObjectContext];

  v21 = [v63 inclusiveAssetIDs];
  v22 = +[PLManagedAsset fetchRequest];
  v23 = v21;
  v24 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", v21];
  [v22 setPredicate:v24];

  v25 = [v63 exclusiveAssetIDs];
  v26 = [v20 pl_graphCache];
  v27 = [v26 labelWithCode:1004 inContext:v20];
  v66 = [PLEnumerateAndSaveController alloc];
  v28 = NSStringFromSelector(a2);
  v78[0] = MEMORY[0x1E69E9820];
  v78[1] = 3221225472;
  v78[2] = __84__PLSocialGroup__updateAssetEdgesWithAssetContainmentResult_assetIDsToUpdate_error___block_invoke;
  v78[3] = &unk_1E7575B30;
  v79 = v20;
  v73[0] = MEMORY[0x1E69E9820];
  v73[1] = 3221225472;
  v73[2] = __84__PLSocialGroup__updateAssetEdgesWithAssetContainmentResult_assetIDsToUpdate_error___block_invoke_2;
  v73[3] = &unk_1E7567518;
  v58 = v9;
  v74 = v58;
  v57 = v25;
  v75 = v57;
  v55 = v27;
  v76 = v55;
  v77 = v64;
  v29 = v66;
  v60 = v22;
  v67 = v79;
  v30 = [(PLEnumerateAndSaveController *)v29 initWithName:v28 fetchRequest:v22 context:v79 options:4 generateContextBlock:v78 didFetchObjectIDsBlock:0 processResultBlock:v73];

  v72 = 0;
  v54 = v30;
  LOBYTE(v30) = [v30 processObjectsWithError:&v72];
  v53 = v72;
  v31 = 0;
  v56 = v30;
  if ((v30 & 1) == 0)
  {
    v32 = MEMORY[0x1E696ABC0];
    v33 = *MEMORY[0x1E69BFF48];
    v87 = *MEMORY[0x1E696A278];
    v88 = @"runAssetContainmentWithError: error getting asset from assetID";
    v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v88 forKeys:&v87 count:1];
    v31 = [v32 errorWithDomain:v33 code:41003 userInfo:v34];
  }

  v52 = v31;
  v59 = v26;
  v65 = [v26 labelWithCode:1003 inContext:v67];
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v35 = v10;
  v36 = [v35 countByEnumeratingWithState:&v68 objects:v86 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v69;
    do
    {
      for (j = 0; j != v37; ++j)
      {
        if (*v69 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = *(*(&v68 + 1) + 8 * j);
        v41 = [v40 targetAsset];
        v42 = [v41 objectID];
        if (v42 && ([v23 containsObject:v42] & 1) == 0)
        {
          v43 = [v40 additionalLabels];
          v44 = [v43 containsObject:v65];

          if (v44)
          {
            v45 = PLBackendGetLog();
            if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
            {
              v46 = [v41 uuid];
              *buf = 138412290;
              v85 = v46;
              _os_log_impl(&dword_19BF1F000, v45, OS_LOG_TYPE_ERROR, "[PLSocialGroup] Deleting user picked key asset edge for key asset with uuid %@", buf, 0xCu);
            }
          }

          [v67 deleteObject:v40];
        }
      }

      v37 = [v35 countByEnumeratingWithState:&v68 objects:v86 count:16];
    }

    while (v37);
  }

  [(PLGraphNodeContainer *)v64 updateChangeFlagsForNodeContainerKey:@"inclusiveAssetIDs"];
  [(PLGraphNodeContainer *)v64 updateChangeFlagsForNodeContainerKey:@"exclusiveAssetIDs"];
  v47 = v52;
  v48 = v47;
  if (a5)
  {
    v49 = v56;
  }

  else
  {
    v49 = 1;
  }

  if ((v49 & 1) == 0)
  {
    v50 = v47;
    *a5 = v48;
  }

  return v56;
}

void __84__PLSocialGroup__updateAssetEdgesWithAssetContainmentResult_assetIDsToUpdate_error___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = a3;
  v4 = *(a1 + 32);
  v5 = [v16 objectID];
  v6 = [v4 objectForKeyedSubscript:v5];

  v7 = *(a1 + 40);
  v8 = [v16 objectID];
  v9 = [v7 containsObject:v8];
  v10 = v9;
  if (v6)
  {

    v11 = [v6 additionalLabels];
    v12 = [v11 containsObject:*(a1 + 48)];

    if (v10)
    {
      if ((v12 & 1) == 0)
      {
        [v6 addLabel:*(a1 + 48)];
      }
    }

    else if (v12)
    {
      [v6 removeLabel:*(a1 + 48)];
    }
  }

  else
  {
    if (v9)
    {
      v13 = *(a1 + 48);
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    v15 = [*(a1 + 56) _insertGraphEdgeForAsset:v16 exclusiveLabel:v14];
  }
}

- (BOOL)runAssetContainmentWithError:(id *)a3 assetIDsToUpdate:(id)a4
{
  v37[1] = *MEMORY[0x1E69E9840];
  v7 = a4;
  if ([(PLSocialGroup *)self socialGroupVerifiedType]== -1 || ![(PLSocialGroup *)self socialGroupVerifiedType])
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"PLSocialGroup.m" lineNumber:945 description:{@"Invalid parameter not satisfying: %@", @"self.socialGroupVerifiedType != PLSocialGroupVerifiedTypeRejected && self.socialGroupVerifiedType != PLSocialGroupVerifiedTypeNone"}];
  }

  v8 = [(PLGraphNodeContainer *)self sourceNode];
  v9 = [v8 managedObjectContext];

  if (v9)
  {
    v32 = 0;
    v33 = &v32;
    v34 = 0x2020000000;
    v35 = 1;
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__13329;
    v30 = __Block_byref_object_dispose__13330;
    v31 = 0;
    v10 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __63__PLSocialGroup_runAssetContainmentWithError_assetIDsToUpdate___block_invoke;
    v20[3] = &unk_1E75787D0;
    v11 = v10;
    v21 = v11;
    v22 = self;
    v23 = v7;
    v24 = &v26;
    v25 = &v32;
    [v9 performBlockAndWait:v20];
    v12 = *(v33 + 24);
    v13 = v27[5];
    if (a3 && (v12 & 1) == 0)
    {
      v13 = v13;
      *a3 = v13;
    }

    v14 = *(v33 + 24);
    _Block_object_dispose(&v26, 8);

    _Block_object_dispose(&v32, 8);
  }

  else
  {
    v15 = MEMORY[0x1E696ABC0];
    v36 = *MEMORY[0x1E696A278];
    v37[0] = @"asset containment failed: no managed object context";
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:&v36 count:1];
    v17 = [v15 errorWithDomain:*MEMORY[0x1E69BFF48] code:46502 userInfo:v16];
    if (a3)
    {
      v17 = v17;
      *a3 = v17;
    }

    v14 = 0;
  }

  return v14 & 1;
}

void __63__PLSocialGroup_runAssetContainmentWithError_assetIDsToUpdate___block_invoke(uint64_t a1)
{
  [*(a1 + 32) becomeCurrentWithPendingUnitCount:{objc_msgSend(*(a1 + 32), "totalUnitCount")}];
  v2 = [[PLSocialGroupAssetContainment alloc] initWithSocialGroup:*(a1 + 40)];
  v3 = v2;
  v4 = *(a1 + 48);
  v5 = *(*(a1 + 56) + 8);
  v8 = *(v5 + 40);
  v7 = (v5 + 40);
  v6 = v8;
  if (v4)
  {
    v18 = v6;
    v9 = &v18;
    v10 = [(PLSocialGroupAssetContainment *)v2 runAssetContainmentOnAssetIDs:v4 error:&v18];
  }

  else
  {
    v17 = v6;
    v9 = &v17;
    v10 = [(PLSocialGroupAssetContainment *)v2 runAssetContainment:&v17];
  }

  v11 = v10;
  objc_storeStrong(v7, *v9);
  *(*(*(a1 + 64) + 8) + 24) = v11 != 0;
  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    v14 = *(*(a1 + 56) + 8);
    obj = *(v14 + 40);
    v15 = [v12 _updateAssetEdgesWithAssetContainmentResult:v11 assetIDsToUpdate:v13 error:&obj];
    objc_storeStrong((v14 + 40), obj);
    *(*(*(a1 + 64) + 8) + 24) = v15;
  }

  [*(a1 + 32) resignCurrent];
}

- (id)runAssetContainmentWithCompletion:(id)a3
{
  v24[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E696AE38];
  v6 = [(PLSocialGroup *)self members];
  v7 = [v5 progressWithTotalUnitCount:{objc_msgSend(v6, "count")}];

  v8 = [(PLGraphNodeContainer *)self sourceNode];
  v9 = [v8 photoLibrary];

  if (!v9)
  {
    v10 = MEMORY[0x1E696ABC0];
    v11 = *MEMORY[0x1E69BFF48];
    v23 = *MEMORY[0x1E696A278];
    v24[0] = @"asset containment failed: no library";
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v13 = [v10 errorWithDomain:v11 code:46502 userInfo:v12];
    v4[2](v4, 0, v13);
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __51__PLSocialGroup_runAssetContainmentWithCompletion___block_invoke;
  v19[3] = &unk_1E7576F38;
  v14 = v7;
  v20 = v14;
  v21 = self;
  v22 = v4;
  v15 = v4;
  [v9 performTransaction:v19];
  v16 = v22;
  v17 = v14;

  return v14;
}

void __51__PLSocialGroup_runAssetContainmentWithCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) becomeCurrentWithPendingUnitCount:{objc_msgSend(*(a1 + 32), "totalUnitCount")}];
  v2 = *(a1 + 40);
  v4 = 0;
  [v2 runAssetContainmentWithError:&v4 assetIDsToUpdate:0];
  v3 = v4;
  [*(a1 + 32) resignCurrent];
  (*(*(a1 + 48) + 16))();
}

- (id)exclusiveAssetIDs
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v4 = [(PLSocialGroup *)self _exclusiveAssetEdgesOut];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) objectIDsForRelationshipNamed:@"targetAsset"];
        [v3 addObjectsFromArray:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];

  return v10;
}

- (id)inclusiveAssetIDs
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v4 = [(PLSocialGroup *)self _inclusiveAssetEdgesOutForSpecificAssetIDs:0 prefetchEdgeLabels:0];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) objectIDsForRelationshipNamed:@"targetAsset"];
        [v3 addObjectsFromArray:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];

  return v10;
}

- (BOOL)removeMember:(id)a3 error:(id *)a4
{
  v7 = a3;
  if (!v7)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"PLSocialGroup.m" lineNumber:884 description:{@"Invalid parameter not satisfying: %@", @"person"}];
  }

  v8 = [(PLGraphNodeContainer *)self sourceNode];
  v9 = [v8 managedObjectContext];

  v20 = 1;
  v19 = 0;
  v10 = [(PLSocialGroup *)self _existingMemberEdgeForPerson:v7 success:&v20 error:&v19];
  v11 = v19;
  if (v10)
  {
    [v9 deleteObject:v10];
    [(PLGraphNodeContainer *)self updateChangeFlagsForNodeContainerKey:@"members"];
  }

  v12 = v20;
  v13 = v11;
  v14 = v13;
  if (a4 && (v12 & 1) == 0)
  {
    v15 = v13;
    *a4 = v14;
  }

  v16 = v20;
  return v16;
}

- (BOOL)addMember:(id)a3 error:(id *)a4
{
  v7 = a3;
  if (!v7)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"PLSocialGroup.m" lineNumber:868 description:{@"Invalid parameter not satisfying: %@", @"person"}];
  }

  v21 = 1;
  v20 = 0;
  v8 = [(PLSocialGroup *)self _existingMemberEdgeForPerson:v7 success:&v21 error:&v20];
  v9 = v20;
  v10 = v9;
  v11 = v21;
  if (!v8 && (v21 & 1) != 0)
  {
    v12 = [(PLSocialGroup *)self _insertMemberEdgeForPerson:v7];
    [(PLGraphNodeContainer *)self updateChangeFlagsForNodeContainerKey:@"members"];
    v13 = v21;
    v14 = v10;
    if (!a4 || (v13 & 1) != 0)
    {
      goto LABEL_11;
    }

LABEL_10:
    v16 = v10;
    *a4 = v10;
    goto LABEL_11;
  }

  v15 = v9;
  if (a4 && (v11 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_11:

  v17 = v21;
  return v17;
}

- (BOOL)setMembers:(id)a3 error:(id *)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (!v7)
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"PLSocialGroup.m" lineNumber:844 description:{@"Invalid parameter not satisfying: %@", @"members"}];
  }

  v8 = [(PLGraphNodeContainer *)self sourceNode];
  v9 = [v8 managedObjectContext];

  v10 = [(PLSocialGroup *)self _personEdgesOutWithError:a4];
  v11 = v10;
  if (v10)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v12 = [v10 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v29;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v29 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [v9 deleteObject:*(*(&v28 + 1) + 8 * i)];
        }

        v13 = [v11 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v13);
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v16 = v7;
    v17 = [v16 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v25;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v25 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [(PLSocialGroup *)self _insertMemberEdgeForPerson:*(*(&v24 + 1) + 8 * j)];
        }

        v18 = [v16 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v18);
    }

    [(PLGraphNodeContainer *)self updateChangeFlagsForNodeContainerKey:@"members"];
  }

  return v11 != 0;
}

- (NSSet)members
{
  v10 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v2 = [(PLSocialGroup *)self _personEdgesOutWithError:&v7];
  v3 = v7;
  if (v2)
  {
    v4 = [objc_opt_class() _personsFromEdges:v2];
  }

  else
  {
    v5 = PLBackendGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v9 = v3;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "Failed to fetch member edges with error: %@", buf, 0xCu);
    }

    v4 = 0;
  }

  return v4;
}

- (BOOL)setKeyAssetPickSource:(int64_t)a3 error:(id *)a4
{
  v28[1] = *MEMORY[0x1E69E9840];
  v7 = [(PLGraphNodeContainer *)self sourceNode];
  v8 = [v7 managedObjectContext];

  v9 = [v8 pl_graphCache];
  v10 = [v9 labelWithCode:1003 inContext:v8];
  v24 = 0;
  v11 = [(PLSocialGroup *)self keyAssetEdgeWithError:&v24];
  v12 = v24;
  v13 = v12;
  if (!v11 && v12)
  {
LABEL_17:
    v20 = 0;
    goto LABEL_18;
  }

  if (!v11)
  {
    v15 = MEMORY[0x1E696ABC0];
    v16 = *MEMORY[0x1E69BFF48];
    v27 = *MEMORY[0x1E696A278];
    v28[0] = @"no key asset edge";
    v17 = MEMORY[0x1E695DF20];
    v18 = v28;
    v19 = &v27;
LABEL_14:
    v21 = [v17 dictionaryWithObjects:v18 forKeys:v19 count:1];
    v22 = [v15 errorWithDomain:v16 code:46502 userInfo:v21];
    if (a4)
    {
      v22 = v22;
      *a4 = v22;
    }

    goto LABEL_17;
  }

  v14 = [v11 hasLabel:v10];
  if (a3 == -1)
  {
    v15 = MEMORY[0x1E696ABC0];
    v16 = *MEMORY[0x1E69BFF48];
    v25 = *MEMORY[0x1E696A278];
    v26 = @"Invalid key-asset pick source";
    v17 = MEMORY[0x1E695DF20];
    v18 = &v26;
    v19 = &v25;
    goto LABEL_14;
  }

  if (a3 == 1)
  {
    if ((v14 & 1) == 0)
    {
      [v11 addLabel:v10];
    }
  }

  else if (!a3 && v14)
  {
    [v11 removeLabel:v10];
  }

  [(PLGraphNodeContainer *)self updateChangeFlagsForNodeContainerKey:@"keyAssetPickSource"];
  v20 = 1;
LABEL_18:

  return v20;
}

- (int64_t)keyAssetPickSource
{
  v11 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v2 = [(PLSocialGroup *)self keyAssetEdgeWithError:&v8];
  v3 = v8;
  v4 = v3;
  if (v2 || !v3)
  {
    v6 = [v2 hasLabelWithCode:1003];
  }

  else
  {
    v5 = PLBackendGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = v4;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "Error fetching key asset edge: %@", buf, 0xCu);
    }

    v6 = -1;
  }

  return v6;
}

- (BOOL)setKeyAsset:(id)a3 error:(id *)a4
{
  v51 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    v38 = [MEMORY[0x1E696AAA8] currentHandler];
    [v38 handleFailureInMethod:a2 object:self file:@"PLSocialGroup.m" lineNumber:729 description:{@"Invalid parameter not satisfying: %@", @"keyAsset"}];
  }

  v47 = 0;
  v7 = [(PLSocialGroup *)self keyAssetEdgeWithError:&v47];
  v8 = v47;
  v9 = v8;
  v10 = 0;
  if (v7)
  {
    v11 = 1;
  }

  else
  {
    v11 = v8 == 0;
  }

  v12 = v11;
  if (v11)
  {
    if (v7 && ([v7 targetAsset], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isEqual:", v6), v13, (v14 & 1) != 0))
    {
      v10 = v7;
    }

    else
    {
      v41 = v12;
      v15 = [(PLGraphNodeContainer *)self sourceNode];
      v16 = [v15 managedObjectContext];

      v17 = [v16 pl_graphCache];
      v18 = [v17 labelWithCode:1001 inContext:v16];
      v40 = v17;
      v42 = [v17 labelWithCode:1004 inContext:v16];
      if (v7)
      {
        [(PLSocialGroup *)self _resetExistingKeyAssetEdge:v7 keyAssetLabel:v18];
      }

      v39 = v18;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v19 = [(PLSocialGroup *)self _inclusiveAssetEdgesOutForSpecificAssetIDs:0 prefetchEdgeLabels:0];
      v20 = [v19 countByEnumeratingWithState:&v43 objects:v50 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v44;
LABEL_18:
        v23 = 0;
        while (1)
        {
          if (*v44 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v43 + 1) + 8 * v23);
          v25 = [v24 targetAsset];
          if ([v25 isEqual:v6])
          {
            break;
          }

          if (v21 == ++v23)
          {
            v21 = [v19 countByEnumeratingWithState:&v43 objects:v50 count:16];
            if (v21)
            {
              goto LABEL_18;
            }

            goto LABEL_24;
          }
        }

        v27 = [v24 additionalLabels];
        v28 = [v27 containsObject:v42];

        v12 = v41;
        if ((v28 & 1) == 0)
        {
          [0 addLabel:v42];
          v29 = PLBackendGetLog();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            v30 = [v6 uuid];
            *buf = 138412290;
            v49 = v30;
            _os_log_impl(&dword_19BF1F000, v29, OS_LOG_TYPE_ERROR, "[PLSocialGroup] Missing exclusive label from social group key asset edge found for key asset with uuid %@", buf, 0xCu);
          }
        }

        v10 = v24;

        v26 = v40;
        if (v10)
        {
          goto LABEL_33;
        }
      }

      else
      {
LABEL_24:

        v12 = v41;
        v26 = v40;
      }

      v31 = PLBackendGetLog();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = [v6 uuid];
        *buf = 138412290;
        v49 = v32;
        _os_log_impl(&dword_19BF1F000, v31, OS_LOG_TYPE_ERROR, "[PLSocialGroup] No existing social group key asset edge found for key asset with uuid %@", buf, 0xCu);
      }

      v33 = +[PLGraphEdge entityName];
      v10 = PLSafeInsertNewObjectForEntityForNameInManagedObjectContext(v33, v16, 0);

      v34 = [(PLGraphNodeContainer *)self sourceNode];
      [v10 setSourceNode:v34];

      [v10 setTargetAsset:v6];
      v35 = [v26 labelWithCode:1004 inContext:v16];
      v36 = [MEMORY[0x1E695DFD8] setWithObject:v35];
      [v10 setAdditionalLabels:v36];

LABEL_33:
      [v10 addLabel:v39];
      [(PLGraphNodeContainer *)self updateChangeFlagsForNodeContainerKey:@"keyAsset"];
    }
  }

  return v12;
}

- (void)_resetExistingKeyAssetEdge:(id)a3 keyAssetLabel:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PLGraphNodeContainer *)self sourceNode];
  v11 = [v8 managedObjectContext];

  v9 = [v11 pl_graphCache];
  [v7 removeLabel:v6];

  v10 = [v9 labelWithCode:1003 inContext:v11];
  [v7 removeLabel:v10];
}

- (PLManagedAsset)keyAsset
{
  v11 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v2 = [(PLSocialGroup *)self keyAssetEdgeWithError:&v8];
  v3 = v8;
  v4 = v3;
  if (!v2 && v3)
  {
    v5 = PLBackendGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = v4;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "Error fetching key asset: %@", buf, 0xCu);
    }
  }

  v6 = [v2 targetAsset];

  return v6;
}

- (BOOL)setSocialGroupVerifiedType:(signed __int16)a3 error:(id *)a4
{
  v5 = a3;
  v7 = [(PLGraphNodeContainer *)self sourceNode];
  v8 = 1;
  v9 = [v7 valueWithCode:2000 createIfMissing:1];

  if ([v9 integerValue] != v5)
  {
    v10 = v5;
    if (v5 == -1 && [v9 integerValue] == 1)
    {
      v15 = 0;
      v8 = [(PLSocialGroup *)self resetCustomDataWithError:&v15];
      v11 = v15;
      v12 = v11;
      if (!v8 && a4)
      {
        v13 = v11;
        *a4 = v12;
      }
    }

    [v9 setIntegerValue:v10];
    [(PLGraphNodeContainer *)self updateChangeFlagsForNodeContainerKey:@"socialGroupVerifiedType"];
  }

  return v8;
}

- (BOOL)resetCustomDataWithError:(id *)a3
{
  v29[1] = *MEMORY[0x1E69E9840];
  [(PLSocialGroup *)self setCustomTitle:0];
  [(PLSocialGroup *)self setManualOrder:&unk_1F0FBB050];
  if ([(PLSocialGroup *)self keyAssetPickSource]== 1)
  {
    v25 = 0;
    v5 = [(PLSocialGroup *)self keyAssetEdgeWithError:&v25];
    v6 = v25;
    v7 = v6;
    if (v5 || !v6)
    {
      if (v5)
      {
        v24 = v6;
        v8 = [(PLSocialGroup *)self setKeyAssetPickSource:0 error:&v24];
        v9 = v24;

        if (!v8 && a3)
        {
          v10 = v9;
          *a3 = v9;
        }

        v11 = [(PLGraphNodeContainer *)self sourceNode];
        v12 = [v11 managedObjectContext];

        v13 = [v12 pl_graphCache];
        v14 = [v13 labelWithCode:1001 inContext:v12];
        [v5 removeLabel:v14];
        [(PLGraphNodeContainer *)self updateChangeFlagsForNodeContainerKey:@"keyAsset"];
      }

      else
      {
        v19 = MEMORY[0x1E696ABC0];
        v20 = *MEMORY[0x1E69BFF48];
        v28 = *MEMORY[0x1E696A278];
        v29[0] = @"no key asset edge";
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
        v21 = [v19 errorWithDomain:v20 code:46502 userInfo:v12];
        v13 = v21;
        if (a3)
        {
          v22 = v21;
          v8 = 0;
          *a3 = v13;
        }

        else
        {
          v8 = 0;
        }

        v9 = v7;
      }

      v7 = v9;
      goto LABEL_20;
    }

    v5 = 0;
    goto LABEL_14;
  }

  if ([(PLSocialGroup *)self keyAssetPickSource]== -1)
  {
    v15 = MEMORY[0x1E696ABC0];
    v16 = *MEMORY[0x1E69BFF48];
    v26 = *MEMORY[0x1E696A278];
    v27 = @"Error fetching key asset pick source during custom data reset";
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v17 = [v15 errorWithDomain:v16 code:46502 userInfo:v7];
    v5 = v17;
    if (a3)
    {
      v18 = v17;
      v8 = 0;
      *a3 = v5;
LABEL_20:

      return v8;
    }

LABEL_14:
    v8 = 0;
    goto LABEL_20;
  }

  return 1;
}

- (signed)socialGroupVerifiedType
{
  v2 = [(PLGraphNodeContainer *)self sourceNode];
  v3 = [v2 valueWithCode:2000];

  LOWORD(v2) = [v3 integerValue];
  return v2;
}

- (void)setAutomaticOrder:(id)a3
{
  v8 = a3;
  if (!v8)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PLSocialGroup.m" lineNumber:642 description:{@"Invalid parameter not satisfying: %@", @"automaticOrder"}];
  }

  v5 = [(PLGraphNodeContainer *)self sourceNode];
  v6 = [v5 valueWithCode:2003 createIfMissing:1];

  [v6 setIntegerValue:{objc_msgSend(v8, "integerValue")}];
  [(PLGraphNodeContainer *)self updateChangeFlagsForNodeContainerKey:@"automaticOrder"];
}

- (NSNumber)automaticOrder
{
  v2 = [(PLGraphNodeContainer *)self sourceNode];
  v3 = [v2 valueWithCode:2003];

  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v3, "integerValue")}];

  return v4;
}

- (void)setManualOrder:(id)a3
{
  v8 = a3;
  if (!v8)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PLSocialGroup.m" lineNumber:629 description:{@"Invalid parameter not satisfying: %@", @"manualOrder"}];
  }

  v5 = [(PLGraphNodeContainer *)self sourceNode];
  v6 = [v5 valueWithCode:2002 createIfMissing:1];

  [v6 setIntegerValue:{objc_msgSend(v8, "integerValue")}];
  [(PLGraphNodeContainer *)self updateChangeFlagsForNodeContainerKey:@"manualOrder"];
}

- (NSNumber)manualOrder
{
  v2 = [(PLGraphNodeContainer *)self sourceNode];
  v3 = [v2 valueWithCode:2002];

  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v3, "integerValue")}];

  return v4;
}

- (void)setCustomTitle:(id)a3
{
  v4 = a3;
  v5 = [(PLGraphNodeContainer *)self sourceNode];
  v6 = [v5 valueWithCode:2001 createIfMissing:1];

  [v6 setStringValue:v4];
  [(PLGraphNodeContainer *)self updateChangeFlagsForNodeContainerKey:@"customTitle"];
}

- (NSString)customTitle
{
  v2 = [(PLGraphNodeContainer *)self sourceNode];
  v3 = [v2 valueWithCode:2001];

  v4 = [v3 stringValue];

  return v4;
}

- (PLSocialGroup)initWithNode:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PLSocialGroup.m" lineNumber:526 description:{@"Invalid parameter not satisfying: %@", @"node"}];
  }

  v9.receiver = self;
  v9.super_class = PLSocialGroup;
  v6 = [(PLGraphNodeContainer *)&v9 initWithNode:v5];

  return v6;
}

- (BOOL)_existingExclusiveAssetEdgeOut
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = [(PLGraphNodeContainer *)self sourceNode];
  v4 = [v3 managedObjectContext];

  v5 = [(PLSocialGroup *)self _exclusiveAssetEdgesOutFetch];
  [v5 setFetchLimit:1];
  v10 = 0;
  v6 = [v4 countForFetchRequest:v5 error:&v10];
  v7 = v10;
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = PLBackendGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v7;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "_existingExclusiveAssetEdgeOut: fetch request failed: %@", buf, 0xCu);
    }

    v6 = 0;
  }

  return v6 != 0;
}

- (id)_exclusiveAssetEdgesOut
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [(PLGraphNodeContainer *)self sourceNode];
  v4 = [v3 managedObjectContext];

  v5 = [(PLSocialGroup *)self _exclusiveAssetEdgesOutFetch];
  v12 = 0;
  v6 = [v4 executeFetchRequest:v5 error:&v12];
  v7 = v12;
  if (v6)
  {
    v8 = [MEMORY[0x1E695DFD8] setWithArray:v6];
  }

  else
  {
    v9 = PLBackendGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v7;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "Error fetching social group exclusive asset edges: %@", buf, 0xCu);
    }

    v8 = [MEMORY[0x1E695DFD8] set];
  }

  v10 = v8;

  return v10;
}

- (id)_exclusiveAssetEdgesOutFetch
{
  v19[2] = *MEMORY[0x1E69E9840];
  v3 = [(PLGraphNodeContainer *)self sourceNode];
  v4 = [v3 managedObjectContext];

  v5 = [v4 pl_graphCache];
  v6 = [v5 labelWithCode:1004 inContext:v4];
  v7 = +[PLGraphEdge fetchRequest];
  v19[0] = @"sourceNode";
  v19[1] = @"targetNode";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  [v7 setRelationshipKeyPathsForPrefetching:v8];

  v9 = MEMORY[0x1E696AB28];
  v10 = MEMORY[0x1E696AE18];
  v11 = [(PLGraphNodeContainer *)self sourceNode];
  v12 = [v10 predicateWithFormat:@"%K = %@", @"sourceNode", v11];
  v18[0] = v12;
  v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != nil", @"targetAsset"];
  v18[1] = v13;
  v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%@ IN %K.%K", v6, @"additionalLabelAssignments", @"label"];
  v18[2] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:3];
  v16 = [v9 andPredicateWithSubpredicates:v15];
  [v7 setPredicate:v16];

  return v7;
}

- (id)_inclusiveAssetEdgesOutForSpecificAssetIDs:(id)a3 prefetchEdgeLabels:(BOOL)a4
{
  v4 = a4;
  v31[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(PLGraphNodeContainer *)self sourceNode];
  v8 = [v7 managedObjectContext];

  v9 = +[PLGraphEdge fetchRequest];
  v10 = MEMORY[0x1E696AB28];
  v11 = MEMORY[0x1E696AE18];
  v12 = [(PLGraphNodeContainer *)self sourceNode];
  v13 = [v11 predicateWithFormat:@"%K = %@", @"sourceNode", v12];
  v14 = v13;
  if (v6)
  {
    v30[0] = v13;
    v15 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K in %@", @"targetAsset", v6];
    v30[1] = v15;
    v16 = v30;
  }

  else
  {
    v31[0] = v13;
    v15 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != nil", @"targetAsset"];
    v31[1] = v15;
    v16 = v31;
  }

  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v18 = [v10 andPredicateWithSubpredicates:v17];
  [v9 setPredicate:v18];

  if (v4)
  {
    v29 = @"additionalLabelAssignments";
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
    [v9 setRelationshipKeyPathsForPrefetching:v19];
  }

  v26 = 0;
  v20 = [v8 executeFetchRequest:v9 error:&v26];
  v21 = v26;
  if (v20)
  {
    v22 = [MEMORY[0x1E695DFD8] setWithArray:v20];
  }

  else
  {
    v23 = PLBackendGetLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v28 = v21;
      _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_ERROR, "Error fetching social inclusive group asset edges: %@", buf, 0xCu);
    }

    v22 = [MEMORY[0x1E695DFD8] set];
  }

  v24 = v22;

  return v24;
}

- (id)_insertGraphEdgeForAsset:(id)a3 exclusiveLabel:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PLSocialGroup.m" lineNumber:399 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  v9 = [(PLGraphNodeContainer *)self sourceNode];
  v10 = [v9 managedObjectContext];

  v11 = +[PLGraphEdge entityName];
  v12 = PLSafeInsertNewObjectForEntityForNameInManagedObjectContext(v11, v10, 0);

  v13 = [(PLGraphNodeContainer *)self sourceNode];
  [v12 setSourceNode:v13];

  [v12 setTargetAsset:v7];
  if (v8)
  {
    v14 = [MEMORY[0x1E695DFD8] setWithObject:v8];
    [v12 setAdditionalLabels:v14];
  }

  return v12;
}

- (id)_personEdgesOutWithError:(id *)a3
{
  v5 = [(PLGraphNodeContainer *)self sourceNode];
  v6 = [v5 managedObjectContext];

  v7 = +[PLGraphEdge fetchRequest];
  v8 = MEMORY[0x1E696AE18];
  v9 = [(PLGraphNodeContainer *)self sourceNode];
  v10 = [v8 predicateWithFormat:@"%K = %@ AND %K != nil", @"sourceNode", v9, @"targetPerson"];
  [v7 setPredicate:v10];

  v17 = 0;
  v11 = [v6 executeFetchRequest:v7 error:&v17];
  v12 = v17;
  v13 = v12;
  if (v11)
  {
    v14 = [MEMORY[0x1E695DFD8] setWithArray:v11];
  }

  else if (a3)
  {
    v15 = v12;
    v14 = 0;
    *a3 = v13;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)keyAssetEdgeWithError:(id *)a3
{
  v41[3] = *MEMORY[0x1E69E9840];
  v5 = [(PLGraphNodeContainer *)self sourceNode];
  v6 = [v5 managedObjectContext];
  v7 = [v6 pl_graphCache];

  v8 = [(PLGraphNodeContainer *)self sourceNode];
  v9 = [v8 managedObjectContext];
  v10 = [v7 labelWithCode:1001 inContext:v9];

  v11 = [v10 edgeExternalIdentifiersHavingLabel];
  v12 = [v11 indexesWithBitsSet];

  if (![v12 count])
  {
    v27 = 0;
    goto LABEL_13;
  }

  v33 = a3;
  v34 = v7;
  v13 = +[PLGraphEdge fetchRequest];
  v14 = MEMORY[0x1E696AB28];
  v15 = MEMORY[0x1E696AE18];
  v16 = [(PLGraphNodeContainer *)self sourceNode];
  v17 = [v15 predicateWithFormat:@"%K = %@", @"sourceNode", v16];
  v41[0] = v17;
  v18 = [MEMORY[0x1E696AE18] predicateWithFormat:@"noindex:(%K) != nil", @"targetAsset"];
  v41[1] = v18;
  v19 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"externalIdentifier", v12];
  v41[2] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:3];
  v21 = [v14 andPredicateWithSubpredicates:v20];
  [v13 setPredicate:v21];

  v40 = @"targetAsset";
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v40 count:1];
  [v13 setRelationshipKeyPathsForPrefetching:v22];

  v23 = [(PLGraphNodeContainer *)self sourceNode];
  v24 = [v23 managedObjectContext];
  v35 = 0;
  v25 = [v24 executeFetchRequest:v13 error:&v35];
  v26 = v35;

  if (v25)
  {
    v27 = [v25 firstObject];
    if ([v25 count] >= 2)
    {
      v28 = PLBackendGetLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = [(PLGraphNodeContainer *)self uuid];
        v30 = [v25 count];
        *buf = 138543618;
        v37 = v29;
        v38 = 2048;
        v39 = v30;
        _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_ERROR, "Social group: %{public}@ unexpectedly has %tu key assets", buf, 0x16u);
      }

      v7 = v34;
      goto LABEL_12;
    }
  }

  else if (v33)
  {
    v31 = v26;
    v27 = 0;
    *v33 = v26;
  }

  else
  {
    v27 = 0;
  }

  v7 = v34;
LABEL_12:

LABEL_13:

  return v27;
}

- (id)_existingMemberEdgeForPerson:(id)a3 success:(BOOL *)a4 error:(id *)a5
{
  v9 = a3;
  if (!v9)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"PLSocialGroup.m" lineNumber:328 description:{@"Invalid parameter not satisfying: %@", @"person"}];
  }

  v10 = +[PLGraphEdge fetchRequest];
  v11 = MEMORY[0x1E696AE18];
  v12 = [(PLGraphNodeContainer *)self sourceNode];
  v13 = [v11 predicateWithFormat:@"%K = %@ AND %K = %@", @"sourceNode", v12, @"targetPerson", v9];
  [v10 setPredicate:v13];

  v14 = [v9 managedObjectContext];
  v22 = 0;
  v15 = [v14 executeFetchRequest:v10 error:&v22];
  v16 = v22;

  if (v15)
  {
    v17 = [v15 firstObject];
    v18 = 1;
  }

  else if (a5)
  {
    v19 = v16;
    v18 = 0;
    v17 = 0;
    *a5 = v16;
  }

  else
  {
    v18 = 0;
    v17 = 0;
  }

  *a4 = v18;

  return v17;
}

- (id)_insertMemberEdgeForPerson:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PLSocialGroup.m" lineNumber:316 description:{@"Invalid parameter not satisfying: %@", @"person"}];
  }

  v6 = [(PLGraphNodeContainer *)self sourceNode];
  v7 = [v6 managedObjectContext];

  v8 = +[PLGraphEdge entityName];
  v9 = PLSafeInsertNewObjectForEntityForNameInManagedObjectContext(v8, v7, 0);

  v10 = [(PLGraphNodeContainer *)self sourceNode];
  [v9 setSourceNode:v10];

  [v9 setTargetPerson:v5];

  return v9;
}

+ (id)fetchPersonIDsHavingAssetPersonEdgesToAssetID:(id)a3 inManagedObjectContext:(id)a4 error:(id *)a5
{
  v31[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = +[PLGraphEdge fetchRequest];
  [v9 setResultType:2];
  v31[0] = @"targetPerson";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
  [v9 setPropertiesToFetch:v10];

  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != nil AND %K = %@", @"targetPerson", @"sourceAsset", v7];
  [v9 setPredicate:v11];

  v29 = 0;
  v12 = [v8 executeFetchRequest:v9 error:&v29];
  v13 = v29;
  v14 = v13;
  if (v12)
  {
    v24 = v8;
    v15 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v12, "count")}];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v16 = v12;
    v17 = [v16 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v26;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v26 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [*(*(&v25 + 1) + 8 * i) objectForKeyedSubscript:@"targetPerson"];
          [v15 addObject:v21];
        }

        v18 = [v16 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v18);
    }

    v8 = v24;
  }

  else if (a5)
  {
    v22 = v13;
    v15 = 0;
    *a5 = v14;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)fetchAssetIDsHavingAssetPersonEdgesToPersonID:(id)a3 inManagedObjectContext:(id)a4 error:(id *)a5
{
  v31[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = +[PLGraphEdge fetchRequest];
  [v9 setResultType:2];
  v31[0] = @"sourceAsset";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
  [v9 setPropertiesToFetch:v10];

  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != nil AND %K = %@", @"sourceAsset", @"targetPerson", v7];
  [v9 setPredicate:v11];

  v29 = 0;
  v12 = [v8 executeFetchRequest:v9 error:&v29];
  v13 = v29;
  v14 = v13;
  if (v12)
  {
    v24 = v8;
    v15 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v12, "count")}];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v16 = v12;
    v17 = [v16 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v26;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v26 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [*(*(&v25 + 1) + 8 * i) objectForKeyedSubscript:@"sourceAsset"];
          [v15 addObject:v21];
        }

        v18 = [v16 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v18);
    }

    v8 = v24;
  }

  else if (a5)
  {
    v22 = v13;
    v15 = 0;
    *a5 = v14;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)predicateForUserVerifiedSocialGroupsInContext:(id)a3
{
  v9[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AB28];
  v4 = [a1 _primaryLabelPredicateWithContext:a3];
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SUBQUERY(%K, $v, $v.%K == %d AND $v.%K == %d).@count > 0", @"values", @"nameCode", 2000, @"integerValue", 1, v4];
  v9[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v7 = [v3 andPredicateWithSubpredicates:v6];

  return v7;
}

+ (id)predicateForAllVerifiedSocialGroupsInContext:(id)a3
{
  v9[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AB28];
  v4 = [a1 _primaryLabelPredicateWithContext:a3];
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SUBQUERY(%K, $v, $v.%K == %d AND $v.%K > %d).@count > 0", @"values", @"nameCode", 2000, @"integerValue", 0, v4];
  v9[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v7 = [v3 andPredicateWithSubpredicates:v6];

  return v7;
}

+ (id)_primaryLabelPredicateWithContext:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 pl_graphCache];
  v5 = [v4 objectIDForLabelWithCode:1000 inContext:v3];
  if (v5)
  {
    v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"primaryLabel", v5];
  }

  else
  {
    v7 = PLBackendGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v3;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "No social group label found in context %@", buf, 0xCu);
    }

    v6 = [MEMORY[0x1E696AE18] predicateWithValue:0];
  }

  v8 = v6;

  return v8;
}

+ (void)rebuildWithLibrary:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 libraryBundle];
  v5 = [v4 indicatorFileCoordinator];

  if ([v5 isRebuildingSocialGroups])
  {
    v6 = PLMigrationGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "Encountered the social groups rebuild indicator file, this probably indicates a crash during social group rebuild, will resume rebuilding social groups", buf, 2u);
    }
  }

  else
  {
    v7 = MEMORY[0x1E695D5E0];
    v8 = +[PLGraphNode entityName];
    v6 = [v7 fetchRequestWithEntityName:v8];

    v9 = [v3 managedObjectContext];
    v10 = [PLSocialGroup predicateForAllVerifiedSocialGroupsInContext:v9];
    [v6 setPredicate:v10];

    v11 = [v3 managedObjectContext];
    v25 = 0;
    v12 = [v11 countForFetchRequest:v6 error:&v25];
    v13 = v25;

    if (v12)
    {
      if (v12 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v21 = PLMigrationGetLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_DEFAULT, "Found existing social groups in library, skipping filesystem social group rebuild", buf, 2u);
        }

        goto LABEL_22;
      }

      v14 = PLMigrationGetLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v27 = v13;
        _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "Error fetching count of social groups in library, will proceed with social group rebuild: %@", buf, 0xCu);
      }
    }
  }

  if (![v3 isCloudPhotoLibraryEnabled] || (objc_msgSend(v3, "cplStatus"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "initialSyncDate"), v16 = objc_claimAutoreleasedReturnValue(), v16, v15, !v16))
  {
    [v5 setIsRebuildingSocialGroups:1];
    v17 = [PLDirectoryJournal alloc];
    v18 = [v3 pathManager];
    v6 = [(PLDirectoryJournal *)v17 initWithPathManager:v18 payloadClass:objc_opt_class()];

    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __36__PLSocialGroup_rebuildWithLibrary___block_invoke;
    v23[3] = &unk_1E7567590;
    v24 = v3;
    v22 = 0;
    v19 = [v6 enumeratePayloadsUsingBlock:v23 error:&v22];
    v13 = v22;
    if ((v19 & 1) == 0)
    {
      v20 = PLMigrationGetLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v27 = v13;
        _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_ERROR, "Failed to insert graph nodes for social groups: %@", buf, 0xCu);
      }
    }

    [v5 setIsRebuildingSocialGroups:0];

LABEL_22:
    goto LABEL_23;
  }

  v6 = PLMigrationGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "iCloud Photo Library is enabled. Skipping filesystem social group rebuild.", buf, 2u);
  }

LABEL_23:
}

void __36__PLSocialGroup_rebuildWithLibrary___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 payloadID];
  v4 = [v3 payloadIDString];
  v5 = [*(a1 + 32) managedObjectContext];
  v6 = [PLGraphNode fetchNodeWithUUID:v4 inManagedObjectContext:v5];

  if (!v6)
  {
    v7 = [*(a1 + 32) managedObjectContext];
    v8 = [v9 insertSocialGroupInManagedObjectContext:v7];
  }
}

+ (void)prepareForDeletionWithNode:(id)a3
{
  v11 = a3;
  if ([v11 shouldUpdatePersistence])
  {
    v3 = [PLDirectoryJournal alloc];
    v4 = [v11 managedObjectContext];
    v5 = [v4 pathManager];
    v6 = [(PLDirectoryJournal *)v3 initWithPathManager:v5 payloadClass:objc_opt_class()];

    [(PLDirectoryJournal *)v6 removePersistenceForManagedObject:v11 error:0];
  }

  objc_opt_class();
  v7 = [v11 managedObjectContext];
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v10 = [PLGraphNodeContainer newNodeContainerWithNode:v11];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v9 recordCloudDeletionForObject:v10];
  }
}

+ (void)didSaveWithNode:(id)a3
{
  v7 = a3;
  if ([v7 needsPersistenceUpdate])
  {
    v3 = [PLDirectoryJournal alloc];
    v4 = [v7 managedObjectContext];
    v5 = [v4 pathManager];
    v6 = [(PLDirectoryJournal *)v3 initWithPathManager:v5 payloadClass:objc_opt_class()];

    [(PLDirectoryJournal *)v6 persistManagedObject:v7 error:0];
  }
}

+ (void)willSaveWithNode:(id)a3
{
  v4 = a3;
  v20.receiver = a1;
  v20.super_class = &OBJC_METACLASS___PLSocialGroup;
  objc_msgSendSuper2(&v20, sel_willSaveWithNode_, v4);
  if ([v4 shouldUpdatePersistence])
  {
    v5 = [PLDirectoryJournal alloc];
    v6 = [v4 managedObjectContext];
    v7 = [v6 pathManager];
    v8 = [(PLDirectoryJournal *)v5 initWithPathManager:v7 payloadClass:objc_opt_class()];

    [v4 setNeedsPersistenceUpdate:{-[PLDirectoryJournal shouldPersistManagedObject:](v8, "shouldPersistManagedObject:", v4)}];
  }

  if (([v4 isDeleted] & 1) == 0)
  {
    objc_opt_class();
    v9 = [v4 managedObjectContext];
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    v12 = [PLGraphNodeContainer newNodeContainerWithNode:v4];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v12 isSyncableChange])
    {
      [v11 recordSyncChangeMarker];
    }

    objc_opt_class();
    if (((objc_opt_isKindOfClass() & 1) != 0 || MEMORY[0x19EAEE520]()) && (([v4 isInserted] & 1) != 0 || objc_msgSend(a1, "_verifiedTypeChangeFromRejectedToUserWithSourceNode:", v4)))
    {
      if ([v4 isInserted])
      {
        v13 = [v11 delayedSaveActions];
        [v13 recordDeduplicationNeededForNewGroupNode:v4];
      }

      v14 = [v12 members];
      v15 = [v14 count];

      if (v15)
      {
        v16 = [v4 managedObjectContext];
        v17 = [v16 delayedSaveActions];
        v18 = [v12 members];
        v19 = [v18 anyObject];
        [v17 recordSocialGroupContainmentUpdateNeededForPerson:v19];
      }
    }
  }
}

+ (BOOL)resetAllInContext:(id)a3 error:(id *)a4
{
  v7 = a3;
  if (!v7)
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:a1 file:@"PLSocialGroup.m" lineNumber:1162 description:{@"Invalid parameter not satisfying: %@", @"moc"}];
  }

  v8 = [v7 pl_graphCache];
  v9 = [v8 objectIDForLabelWithCode:1000 inContext:v7];
  if (v9)
  {
    v10 = MEMORY[0x1E695D5E0];
    v11 = +[PLGraphNode entityName];
    v12 = [v10 fetchRequestWithEntityName:v11];

    v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"primaryLabel", v9];
    [v12 setPredicate:v13];

    v33 = 0;
    v34 = &v33;
    v35 = 0x3032000000;
    v36 = __Block_byref_object_copy__13329;
    v37 = __Block_byref_object_dispose__13330;
    v38 = 0;
    v14 = [PLEnumerateAndSaveController alloc];
    v15 = NSStringFromSelector(a2);
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __41__PLSocialGroup_resetAllInContext_error___block_invoke;
    v31[3] = &unk_1E7575B30;
    v32 = v7;
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __41__PLSocialGroup_resetAllInContext_error___block_invoke_2;
    v30[3] = &unk_1E75735C0;
    v30[4] = &v33;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __41__PLSocialGroup_resetAllInContext_error___block_invoke_3;
    v27[3] = &unk_1E7567568;
    v28 = v32;
    v29 = &v33;
    v16 = [(PLEnumerateAndSaveController *)v14 initWithName:v15 fetchRequest:v12 context:v28 options:0 generateContextBlock:v31 didFetchObjectIDsBlock:v30 processResultBlock:v27];

    [(PLEnumerateAndSaveController *)v16 setItemsPerBatch:1];
    v26 = 0;
    v17 = [(PLEnumerateAndSaveController *)v16 processObjectsWithError:&v26];
    v18 = v26;
    v19 = [v34[5] totalUnitCount];
    [v34[5] setCompletedUnitCount:v19];
    v20 = v18;
    v21 = v20;
    if (a4)
    {
      v22 = v17;
    }

    else
    {
      v22 = 1;
    }

    if ((v22 & 1) == 0)
    {
      v23 = v20;
      *a4 = v21;
    }

    _Block_object_dispose(&v33, 8);
  }

  else
  {
    v17 = 1;
  }

  return v17;
}

void __41__PLSocialGroup_resetAllInContext_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:{objc_msgSend(a2, "count")}];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

uint64_t __41__PLSocialGroup_resetAllInContext_error___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) deleteObject:?];
  v2 = *(*(*(a1 + 40) + 8) + 40);
  v3 = [v2 completedUnitCount] + 1;

  return [v2 setCompletedUnitCount:v3];
}

+ (id)resetAllInLibrary:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:a1 file:@"PLSocialGroup.m" lineNumber:1146 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];
  }

  v9 = [v7 managedObjectContext];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__13329;
  v24 = __Block_byref_object_dispose__13330;
  v25 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __46__PLSocialGroup_resetAllInLibrary_completion___block_invoke;
  v15[3] = &unk_1E7567540;
  v18 = &v20;
  v19 = a1;
  v10 = v9;
  v16 = v10;
  v11 = v8;
  v17 = v11;
  [v7 performTransaction:v15];
  v12 = v21[5];

  _Block_object_dispose(&v20, 8);

  return v12;
}

void __46__PLSocialGroup_resetAllInLibrary_completion___block_invoke(void *a1)
{
  [*(*(a1[6] + 8) + 40) becomeCurrentWithPendingUnitCount:1];
  v2 = a1[7];
  v3 = a1[4];
  v5 = 0;
  [v2 resetAllInContext:v3 error:&v5];
  v4 = v5;
  [*(*(a1[6] + 8) + 40) resignCurrent];
  (*(a1[5] + 16))();
}

+ (id)keyAssetUUIDOfSocialGroupWithPersonUUIDs:(id)a3 candidateAssetUUIDs:(id)a4 inLibrary:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ([v9 count] >= 2)
  {
    v13 = [v11 photoAnalysisClient];
    v14 = [[PLPhotoAnalysisPhotoLibraryService alloc] initWithServiceProvider:v13];
    v12 = [(PLPhotoAnalysisPhotoLibraryService *)v14 keyAssetUUIDOfSocialGroupWithPersonUUIDs:v9 candidateAssetUUIDs:v10 operationID:&stru_1F0F06D80 error:a6];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (void)updateKeyAssetOfSocialGroupsWithUUIDs:(id)a3 inLibrary:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 count])
  {
    v7 = +[PLConcurrencyLimiter sharedLimiter];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __65__PLSocialGroup_updateKeyAssetOfSocialGroupsWithUUIDs_inLibrary___block_invoke;
    v8[3] = &unk_1E7578848;
    v9 = v6;
    v10 = v5;
    [v7 async:v8 identifyingBlock:0 library:v9];
  }
}

void __65__PLSocialGroup_updateKeyAssetOfSocialGroupsWithUUIDs_inLibrary___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) photoAnalysisClient];
  v3 = [[PLPhotoAnalysisPhotoLibraryService alloc] initWithServiceProvider:v2];
  v4 = *(a1 + 40);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __65__PLSocialGroup_updateKeyAssetOfSocialGroupsWithUUIDs_inLibrary___block_invoke_2;
  v5[3] = &unk_1E7575FA8;
  v6 = v4;
  [(PLPhotoAnalysisPhotoLibraryService *)v3 updateKeyAssetOfSocialGroupsWithUUIDs:v6 operationID:&stru_1F0F06D80 reply:v5];
}

void __65__PLSocialGroup_updateKeyAssetOfSocialGroupsWithUUIDs_inLibrary___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLBackendGetLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v12 = 138412546;
      v13 = v6;
      v14 = 2112;
      v15 = v3;
      v7 = "Error updating key asset for social groups: %@, error: %@";
      v8 = v5;
      v9 = OS_LOG_TYPE_ERROR;
      v10 = 22;
LABEL_6:
      _os_log_impl(&dword_19BF1F000, v8, v9, v7, &v12, v10);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v11 = *(a1 + 32);
    v12 = 138412290;
    v13 = v11;
    v7 = "Updated key asset for social groups: %@";
    v8 = v5;
    v9 = OS_LOG_TYPE_INFO;
    v10 = 12;
    goto LABEL_6;
  }
}

+ (BOOL)runAssetContainmentOnAllSocialGroupsInContext:(id)a3 error:(id *)a4
{
  v53 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 pl_graphCache];
  v6 = [v5 labelWithCode:1000 inContext:v4];
  v7 = MEMORY[0x1E695D5E0];
  v8 = +[PLGraphNode entityName];
  v9 = [v7 fetchRequestWithEntityName:v8];

  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %@", @"primaryLabel", v6];
  [v9 setPredicate:v10];

  v49 = 0;
  v11 = [v4 executeFetchRequest:v9 error:&v49];
  v12 = v49;
  v42 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v13 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:{objc_msgSend(v11, "count")}];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v14 = v11;
  v15 = [v14 countByEnumeratingWithState:&v45 objects:v52 count:16];
  v43 = v14;
  if (v15)
  {
    v16 = v15;
    v37 = v12;
    v38 = v6;
    v39 = v5;
    v40 = v4;
    v17 = 0;
    v18 = *v46;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v46 != v18)
        {
          objc_enumerationMutation(v14);
        }

        v20 = *(*(&v45 + 1) + 8 * i);
        v21 = objc_autoreleasePoolPush();
        if ([v13 isCancelled])
        {
          v27 = MEMORY[0x1E696ABC0];
          v28 = *MEMORY[0x1E69BFF48];
          v50 = *MEMORY[0x1E696A578];
          v51 = @"User cancelled running asset containment on all groups";
          v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
          v30 = [v27 errorWithDomain:v28 code:3072 userInfo:v29];

          v31 = v43;
          objc_autoreleasePoolPop(v21);
          v26 = 0;
          v32 = v43;
          v5 = v39;
          v4 = v40;
          v6 = v38;
          v12 = v37;
          goto LABEL_27;
        }

        [v13 becomeCurrentWithPendingUnitCount:1];
        v22 = [PLGraphNodeContainer newNodeContainerWithNode:v20];
        if (([v22 socialGroupVerifiedType] - 1) <= 1u)
        {
          v44 = v17;
          v23 = [v22 runAssetContainmentWithError:&v44 assetIDsToUpdate:0];
          v24 = v44;

          if (!v23)
          {
            [v13 resignCurrent];

            objc_autoreleasePoolPop(v21);
            v26 = 0;
            goto LABEL_18;
          }

          if ([v22 keyAssetIsNeeded])
          {
            v25 = [v22 uuid];
            [v42 addObject:v25];
          }

          v17 = v24;
          v14 = v43;
        }

        [v13 resignCurrent];

        objc_autoreleasePoolPop(v21);
      }

      v16 = [v14 countByEnumeratingWithState:&v45 objects:v52 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }

    v26 = 1;
    v24 = v17;
LABEL_18:
    v5 = v39;
    v4 = v40;
    v6 = v38;
    v12 = v37;
  }

  else
  {
    v24 = 0;
    v26 = 1;
  }

  v32 = [v4 photoLibrary];
  if (v32)
  {
    [PLSocialGroup updateKeyAssetOfSocialGroupsWithUUIDs:v42 inLibrary:v32];
  }

  v33 = v24;
  v30 = v33;
  if (a4)
  {
    v34 = v26;
  }

  else
  {
    v34 = 1;
  }

  if ((v34 & 1) == 0)
  {
    v35 = v33;
    *a4 = v30;
  }

  v31 = v43;
LABEL_27:

  return v26;
}

+ (id)defaultValueForRequiredNodeValueCode:(int)a3 forNode:(id)a4
{
  v8.receiver = a1;
  v8.super_class = &OBJC_METACLASS___PLSocialGroup;
  v5 = objc_msgSendSuper2(&v8, sel_defaultValueForRequiredNodeValueCode_forNode_, *&a3, a4);
  v6 = v5;
  if ((a3 - 2000) <= 3 && a3 != 2001)
  {
    [v5 setIntegerValue:0];
  }

  return v6;
}

+ (id)_sortableKeyPaths
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = @"automaticOrder";
  v4[1] = @"customTitle";
  v4[2] = @"manualOrder";
  v4[3] = @"socialGroupVerifiedType";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:4];

  return v2;
}

+ (id)sortableKeys
{
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___PLSocialGroup;
  v3 = objc_msgSendSuper2(&v7, sel_sortableKeys);
  v4 = [a1 _sortableKeyPaths];
  v5 = [v3 setByAddingObjectsFromArray:v4];

  return v5;
}

+ (id)requiredNodeValueCodes
{
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___PLSocialGroup;
  v3 = objc_msgSendSuper2(&v7, sel_requiredNodeValueCodes);
  v4 = [a1 _supportedNodeValueCodes];
  v5 = [v3 setByAddingObjectsFromArray:v4];

  return v5;
}

+ (id)newNodeContainerWithManagedObjectContext:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:a1 file:@"PLSocialGroup.m" lineNumber:562 description:{@"Invalid parameter not satisfying: %@", @"context"}];
  }

  v6 = [v5 pl_graphCache];
  v7 = [v6 labelWithCode:1000 inContext:v5];
  v8 = [PLGraphNode insertGraphNodeInContext:v5 withPrimaryLabel:v7];
  v9 = [[a1 alloc] initWithNode:v8];

  return v9;
}

+ (void)prepareForDeletingOutgoingEdge:(id)a3
{
  v8 = a3;
  v3 = [v8 managedObjectContext];
  v4 = [v3 pl_graphCache];

  v5 = [v8 managedObjectContext];
  v6 = [v4 labelWithCode:1004 inContext:v5];

  if ([v8 hasLabel:v6])
  {
    v7 = [v8 sourceNode];
    [v7 incrementEdgeDeletionCounter];
  }
}

+ (BOOL)needsConstraintConflictResolutionForNode:(id)a3
{
  v3 = [a3 changedValues];
  v4 = [v3 objectForKey:@"edgeDeletionCounter"];
  v5 = v4 != 0;

  return v5;
}

+ (void)_deleteEmptyGraphOrUnverifiedSocialGroupNode:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [(PLGraphNodeContainer *)PLSocialGroup newNodeContainerWithNode:v3];
  if (([v4 socialGroupVerifiedType] | 2) == 2 && (objc_msgSend(v3, "isDeleted") & 1) == 0 && (objc_msgSend(v4, "_existingExclusiveAssetEdgeOut") & 1) == 0)
  {
    v5 = PLBackendGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = [v4 uuid];
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEBUG, "Deleting empty social group with uuid: %@", &v8, 0xCu);
    }

    v7 = [v3 managedObjectContext];
    [v7 deleteObject:v3];
  }
}

+ (BOOL)_verifiedTypeChangeFromRejectedToUserWithSourceNode:(id)a3
{
  v3 = [a3 valueWithCode:2000];
  v6 = 0;
  if ([v3 valueDidChange])
  {
    if ([v3 integerValue] == 1)
    {
      v4 = [v3 pl_committedValueForKey:@"integerValue"];
      v5 = ~[v4 intValue];

      if (!v5)
      {
        v6 = 1;
      }
    }
  }

  return v6;
}

+ (id)_personsFromEdges:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:a1 file:@"PLSocialGroup.m" lineNumber:302 description:{@"Invalid parameter not satisfying: %@", @"edges"}];
  }

  v6 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v5, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        if (([v12 isDeleted] & 1) == 0)
        {
          v13 = [v12 targetPerson];
          if (v13)
          {
            v14 = v13;
            v15 = [v12 targetPerson];
            v16 = [v15 isDeleted];

            if ((v16 & 1) == 0)
            {
              v17 = [v12 targetPerson];
              [v6 addObject:v17];
            }
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  return v6;
}

+ (BOOL)rejectSocialGroupsHavingMember:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v16 = a3;
  [a1 _socialGroupsNodesContainingMember:?];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = v21 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = objc_autoreleasePoolPush();
        v11 = [(PLGraphNodeContainer *)PLSocialGroup newNodeContainerWithNode:v9];
        v17 = 0;
        v12 = [v11 setSocialGroupVerifiedType:0xFFFFFFFFLL error:&v17];
        v13 = v17;
        if ((v12 & 1) == 0)
        {
          v14 = PLBackendGetLog();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v23 = v13;
            _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "rejectSocialGroupsHavingMember: error setting social group verified type: %@", buf, 0xCu);
          }
        }

        objc_autoreleasePoolPop(v10);
      }

      v6 = [v4 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v6);
  }

  return v4 != 0;
}

+ (BOOL)deleteSocialGroupsHavingMember:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 _socialGroupsNodesContainingMember:v4];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        v11 = [v4 managedObjectContext];
        [v11 deleteObject:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v5 != 0;
}

+ (id)_socialGroupsNodesContainingMember:(id)a3
{
  v40[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 managedObjectContext];
  v5 = [v4 pl_graphCache];

  v6 = [v3 managedObjectContext];
  v7 = [v5 labelWithCode:1000 inContext:v6];

  if (v7)
  {
    v8 = [MEMORY[0x1E695DFA8] set];
    v9 = +[PLGraphEdge fetchRequest];
    v40[0] = @"sourceNode";
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];
    [v9 setRelationshipKeyPathsForPrefetching:v10];

    v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(%K = %@) AND (%K = %@)", @"sourceNode.primaryLabel", v7, @"targetPerson", v3];
    [v9 setPredicate:v11];

    v12 = [v3 managedObjectContext];
    v36 = 0;
    v29 = v9;
    v13 = [v12 executeFetchRequest:v9 error:&v36];
    v14 = v36;

    v30 = v7;
    v31 = v5;
    v28 = v14;
    if (!v13)
    {
      v15 = PLBackendGetLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v39 = v14;
        _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "Failed to fetch social group edges for person: %@", buf, 0xCu);
      }

      v8 = 0;
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v16 = v13;
    v17 = [v16 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v33;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v33 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v32 + 1) + 8 * i);
          v22 = [v21 sourceNode];
          if (v22)
          {
            v23 = v22;
            v24 = [v21 sourceNode];
            v25 = [v24 isDeleted];

            if ((v25 & 1) == 0)
            {
              v26 = [v21 sourceNode];
              [v8 addObject:v26];
            }
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v18);
    }

    v7 = v30;
    v5 = v31;
  }

  else
  {
    v16 = PLBackendGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "Failed to fetch social group label", buf, 2u);
    }

    v8 = 0;
  }

  return v8;
}

+ (id)changeFlagsKeysByNodeContainerKey
{
  v14[9] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DFD8] setWithObjects:{@"changeFlag0", @"cplChangeFlag", 0, @"socialGroupVerifiedType"}];
  v14[0] = v2;
  v13[1] = @"customTitle";
  v3 = [MEMORY[0x1E695DFD8] setWithObjects:{@"changeFlag1", @"cplChangeFlag", 0}];
  v14[1] = v3;
  v13[2] = @"manualOrder";
  v4 = [MEMORY[0x1E695DFD8] setWithObjects:{@"changeFlag1", @"cplChangeFlag", 0}];
  v14[2] = v4;
  v13[3] = @"automaticOrder";
  v5 = [MEMORY[0x1E695DFD8] setWithObject:@"changeFlag1"];
  v14[3] = v5;
  v13[4] = @"members";
  v6 = [MEMORY[0x1E695DFD8] setWithObjects:{@"changeFlag2", @"cplChangeFlag", 0}];
  v14[4] = v6;
  v13[5] = @"keyAssetPickSource";
  v7 = [MEMORY[0x1E695DFD8] setWithObjects:{@"changeFlag3", @"cplChangeFlag", 0}];
  v14[5] = v7;
  v13[6] = @"keyAsset";
  v8 = [MEMORY[0x1E695DFD8] setWithObjects:{@"changeFlag3", @"cplChangeFlag", 0}];
  v14[6] = v8;
  v13[7] = @"inclusiveAssetIDs";
  v9 = [MEMORY[0x1E695DFD8] setWithObjects:{@"changeFlag4", 0}];
  v14[7] = v9;
  v13[8] = @"exclusiveAssetIDs";
  v10 = [MEMORY[0x1E695DFD8] setWithObjects:{@"changeFlag4", 0}];
  v14[8] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:9];

  return v11;
}

+ (BOOL)deleteDuplicateGraphAndUnverifiedGroupsInContext:(id)a3 error:(id *)a4
{
  v52[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v42 = [v4 pl_graphCache];
  v5 = [v42 labelWithCode:1000 inContext:v4];
  v6 = +[PLGraphNodeValue fetchRequest];
  v7 = MEMORY[0x1E696AB28];
  v41 = v5;
  v39 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %@", @"node.primaryLabel", v5];
  v52[0] = v39;
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d", @"nameCode", 2000];
  v52[1] = v8;
  v9 = MEMORY[0x1E696AB28];
  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d", @"integerValue", 2];
  v51[0] = v10;
  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d", @"integerValue", 0];
  v51[1] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:2];
  v13 = [v9 orPredicateWithSubpredicates:v12];
  v52[2] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:3];
  v15 = [v7 andPredicateWithSubpredicates:v14];
  [v6 setPredicate:v15];

  v16 = v6;
  v49 = 0;
  v17 = [v4 executeFetchRequest:v6 error:&v49];
  v18 = v49;
  v19 = v18;
  if (v17)
  {
    [v17 valueForKey:@"node"];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v20 = v48 = 0u;
    v21 = [v20 countByEnumeratingWithState:&v45 objects:v50 count:16];
    if (v21)
    {
      v22 = v21;
      v37 = v16;
      v40 = v4;
      v23 = *v46;
      v24 = 1;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v46 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v26 = *(*(&v45 + 1) + 8 * i);
          v27 = objc_autoreleasePoolPush();
          v28 = [(PLGraphNodeContainer *)PLSocialGroup newNodeContainerWithNode:v26];
          if (v24)
          {
            v44 = v19;
            v24 = [a1 deleteDuplicateGroupsAfterInsertionOfGroup:v28 error:&v44];
            v29 = v44;

            v19 = v29;
          }

          else
          {
            v24 = 0;
          }

          objc_autoreleasePoolPop(v27);
        }

        v22 = [v20 countByEnumeratingWithState:&v45 objects:v50 count:16];
      }

      while (v22);

      v30 = v19;
      v19 = v30;
      v32 = v41;
      v31 = v42;
      if (v24)
      {
        v33 = 1;
        v4 = v40;
        v16 = v37;
      }

      else
      {
        v4 = v40;
        v16 = v37;
        if (a4)
        {
          v35 = v30;
          v33 = 0;
          *a4 = v19;
        }

        else
        {
          v33 = 0;
        }
      }
    }

    else
    {

      v19 = v19;
      v33 = 1;
      v32 = v41;
      v31 = v42;
    }
  }

  else
  {
    if (a4)
    {
      v34 = v18;
      v33 = 0;
      *a4 = v19;
    }

    else
    {
      v33 = 0;
    }

    v32 = v41;
    v31 = v42;
  }

  return v33;
}

+ (BOOL)deleteDuplicateGroupsAfterInsertionOfGroup:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [a1 _fetchDuplicateSocialGroupNodes:v6 error:a4];
  v8 = v7;
  if (v7 && [v7 count])
  {
    v9 = [v6 socialGroupVerifiedType];
    if (v9 <= 1)
    {
      if (v9)
      {
        goto LABEL_8;
      }

LABEL_9:
      v10 = [v6 sourceNode];
      v11 = [v10 managedObjectContext];
      v12 = [v6 sourceNode];
      [v11 deleteObject:v12];

      goto LABEL_10;
    }

    if (v9 == 2)
    {
      goto LABEL_9;
    }

    if (v9 == 0xFFFF)
    {
LABEL_8:
      v10 = [v6 sourceNode];
      v11 = [v10 managedObjectContext];
      [a1 _deleteUserAndGraphGroupsFromDuplicateGroupNodes:v8 inContext:v11];
LABEL_10:
    }
  }

  return v8 != 0;
}

+ (void)_deleteUserAndGraphGroupsFromDuplicateGroupNodes:(id)a3 inContext:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        v13 = objc_autoreleasePoolPush();
        v14 = [(PLGraphNodeContainer *)PLSocialGroup newNodeContainerWithNode:v12, v15];
        if (([v14 socialGroupVerifiedType] | 2) == 2)
        {
          [v6 deleteObject:v12];
        }

        objc_autoreleasePoolPop(v13);
        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }
}

+ (id)_fetchDuplicateSocialGroupNodes:(id)a3 error:(id *)a4
{
  v34[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 sourceNode];
  v8 = [v6 members];
  v9 = [v8 valueForKey:@"objectID"];

  if (v9)
  {
    v10 = [v7 managedObjectContext];
    v32 = 0;
    v11 = [a1 fetchDuplicateSocialGroupIDsWithMemberIDs:v9 inContext:v10 error:&v32];
    v12 = v32;

    if (v11)
    {
      v29 = a4;
      v13 = +[PLGraphNode fetchRequest];
      v14 = MEMORY[0x1E696AB28];
      v30 = v11;
      v15 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self in %@", v11];
      v34[0] = v15;
      v16 = MEMORY[0x1E696AE18];
      v17 = [v6 sourceNode];
      v18 = [v16 predicateWithFormat:@"NOT (self = %@)", v17];
      v34[1] = v18;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
      v20 = [v14 andPredicateWithSubpredicates:v19];
      [v13 setPredicate:v20];

      v33 = @"values";
      v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
      [v13 setRelationshipKeyPathsForPrefetching:v21];

      v22 = [v7 managedObjectContext];
      v31 = v12;
      v23 = [v22 executeFetchRequest:v13 error:&v31];
      v24 = v31;

      if (v23)
      {
        v25 = v23;
      }

      else if (v29)
      {
        v27 = v24;
        *v29 = v24;
      }

      v11 = v30;
    }

    else
    {
      if (a4)
      {
        v26 = v12;
        v23 = 0;
        *a4 = v12;
      }

      else
      {
        v23 = 0;
      }

      v24 = v12;
    }
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

+ (id)_memberIDsByNodeIDFromEdgeDictionaries:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF90] dictionary];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = objc_autoreleasePoolPush();
        v11 = [v9 objectForKeyedSubscript:@"sourceNode"];
        v12 = [v9 objectForKeyedSubscript:@"targetPerson"];
        v13 = v12;
        if (v11)
        {
          v14 = v12 == 0;
        }

        else
        {
          v14 = 1;
        }

        if (!v14)
        {
          v15 = [v4 objectForKeyedSubscript:v11];
          if (!v15)
          {
            v15 = [MEMORY[0x1E695DFA8] set];
            [v4 setObject:v15 forKeyedSubscript:v11];
          }

          [v15 addObject:v13];
        }

        objc_autoreleasePoolPop(v10);
      }

      v6 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  return v4;
}

+ (id)fetchDuplicateSocialGroupIDsWithMemberIDs:(id)a3 inContext:(id)a4 error:(id *)a5
{
  v50[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [v9 pl_graphCache];
  v11 = [v10 objectIDForLabelWithCode:1000 inContext:v9];
  if (!v11)
  {
    v22 = v8;
    v32 = MEMORY[0x1E696ABC0];
    v33 = *MEMORY[0x1E69BFF48];
    v47 = *MEMORY[0x1E696A278];
    v48 = @"Couldn't retrieve social group labelID";
    v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
    v35 = [v32 errorWithDomain:v33 code:46502 userInfo:v34];
    if (a5)
    {
      v35 = v35;
      *a5 = v35;
    }

    v28 = 0;
    goto LABEL_16;
  }

  v41 = v10;
  v12 = [MEMORY[0x1E695DFA8] set];
  v13 = MEMORY[0x1E695D5E0];
  v14 = +[PLGraphEdge entityName];
  v15 = [v13 fetchRequestWithEntityName:v14];

  v16 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(%K = %@) AND (%K != nil)", @"sourceNode.primaryLabel", v11, @"targetPerson"];
  [v15 setPredicate:v16];

  [v15 setResultType:2];
  v50[0] = @"sourceNode";
  v50[1] = @"targetPerson";
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:2];
  [v15 setPropertiesToFetch:v17];

  v46 = 0;
  v18 = [v9 executeFetchRequest:v15 error:&v46];
  v19 = v46;
  v20 = v19;
  if (v18)
  {
    v21 = [a1 _memberIDsByNodeIDFromEdgeDictionaries:v18];
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __75__PLSocialGroup_fetchDuplicateSocialGroupIDsWithMemberIDs_inContext_error___block_invoke;
    v43[3] = &unk_1E756EA00;
    v22 = v8;
    v44 = v8;
    v40 = v12;
    v23 = v12;
    v45 = v23;
    v39 = v21;
    [v21 enumerateKeysAndObjectsUsingBlock:v43];
    v24 = +[PLGraphNode fetchRequest];
    v25 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self in %@", v23];
    [v24 setPredicate:v25];

    [v24 setResultType:1];
    v26 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"objectID" ascending:1];
    v49 = v26;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v49 count:1];
    [v24 setSortDescriptors:v27];

    v42 = v20;
    v28 = [v9 executeFetchRequest:v24 error:&v42];
    v29 = v42;

    if (!v28 && a5)
    {
      v30 = v29;
      *a5 = v29;
    }

    v31 = v40;
  }

  else
  {
    v31 = v12;
    v22 = v8;
    if (a5)
    {
      v36 = v19;
      v28 = 0;
      *a5 = v20;
    }

    else
    {
      v28 = 0;
    }

    v29 = v20;
  }

  if (v18)
  {
    v10 = v41;
LABEL_16:
    v28 = v28;
    v37 = v28;
    goto LABEL_18;
  }

  v37 = 0;
  v10 = v41;
LABEL_18:

  return v37;
}

void __75__PLSocialGroup_fetchDuplicateSocialGroupIDsWithMemberIDs_inContext_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if ([*(a1 + 32) isEqualToSet:a3])
  {
    [*(a1 + 40) addObject:v5];
  }
}

- (void)updateSocialGroupwithCPLSocialGroupChange:(id)a3 inPhotoLibrary:(id)a4
{
  v53 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v48 = 0;
  v8 = -[PLSocialGroup setSocialGroupVerifiedType:error:](self, "setSocialGroupVerifiedType:error:", [v6 verifiedType], &v48);
  v9 = v48;
  if (!v8)
  {
    v10 = PLBackendGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v52 = v9;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "updateSocialGroupwithCPLSocialGroupChange: error setting social group verified type: %@", buf, 0xCu);
    }
  }

  v11 = [v6 customTitle];
  [(PLSocialGroup *)self setCustomTitle:v11];

  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v6, "position")}];
  [(PLSocialGroup *)self setManualOrder:v12];

  v13 = [v6 keyAssetIdentifier];
  v14 = v13;
  if (!v13)
  {
    v38 = v9;
    goto LABEL_20;
  }

  v50 = v13;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v50 count:1];
  v16 = [PLManagedAsset assetsByCloudAssetUUID:v15 inLibrary:v7];
  v17 = [v16 allValues];
  v18 = [v17 firstObject];

  if (!v18)
  {
    v23 = PLBackendGetLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v52 = v14;
      _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_ERROR, "updateSocialGroupwithCPLSocialGroupChange: couldn't find key asset with keyAssetUUID: %@", buf, 0xCu);
    }

    v20 = v9;
    goto LABEL_18;
  }

  v47 = v9;
  v19 = [(PLSocialGroup *)self setKeyAsset:v18 error:&v47];
  v20 = v47;

  if (!v19)
  {
    v23 = PLBackendGetLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v52 = v20;
      _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_ERROR, "updateSocialGroupwithCPLSocialGroupChange: error setting social group key asset: %@", buf, 0xCu);
    }

    goto LABEL_18;
  }

  v46 = v20;
  v21 = [(PLSocialGroup *)self setKeyAssetPickSource:1 error:&v46];
  v22 = v46;

  if (!v21)
  {
    v23 = PLBackendGetLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v52 = v22;
      _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_ERROR, "updateSocialGroupwithCPLSocialGroupChange: error setting social group key asset pick source: %@", buf, 0xCu);
    }

    v20 = v22;
LABEL_18:

    v22 = v20;
  }

  v38 = v22;

LABEL_20:
  v39 = v14;
  v40 = v6;
  v24 = [v6 persons];
  v25 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v37 = v24;
  v26 = [v24 persons];
  v27 = [v26 countByEnumeratingWithState:&v42 objects:v49 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v43;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v43 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = [*(*(&v42 + 1) + 8 * i) personIdentifier];
        v32 = [v7 managedObjectContext];
        v33 = [PLPerson personWithUUID:v31 inManagedObjectContext:v32];

        if (v33)
        {
          [v25 addObject:v33];
        }
      }

      v28 = [v26 countByEnumeratingWithState:&v42 objects:v49 count:16];
    }

    while (v28);
  }

  v41 = v38;
  v34 = [(PLSocialGroup *)self setMembers:v25 error:&v41];
  v35 = v41;

  if (!v34)
  {
    v36 = PLBackendGetLog();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v52 = v35;
      _os_log_impl(&dword_19BF1F000, v36, OS_LOG_TYPE_ERROR, "updateSocialGroupwithCPLSocialGroupChange: failed to set members with error: %@", buf, 0xCu);
    }
  }
}

- (id)cplSocialGroupChange
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = [(PLSocialGroup *)self scopedIdentifier];
  v4 = [MEMORY[0x1E6994BD0] newChangeWithScopedIdentifier:v3 changeType:0];
  [v4 setVerifiedType:{-[PLSocialGroup socialGroupVerifiedType](self, "socialGroupVerifiedType")}];
  v5 = [(PLSocialGroup *)self customTitle];
  [v4 setCustomTitle:v5];

  v6 = [(PLSocialGroup *)self manualOrder];
  [v4 setPosition:{objc_msgSend(v6, "unsignedIntegerValue")}];

  if ([(PLSocialGroup *)self keyAssetPickSource]== 1)
  {
    v7 = [(PLSocialGroup *)self keyAsset];

    if (v7)
    {
      v8 = [(PLSocialGroup *)self keyAsset];
      v9 = [v8 cloudAssetGUID];
      [v4 setKeyAssetIdentifier:v9];
    }

    else
    {
      v8 = PLBackendGetLog();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
LABEL_7:

        goto LABEL_8;
      }

      v9 = [(PLGraphNodeContainer *)self uuid];
      *buf = 138412290;
      v26 = v9;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "cplSocialGroupChange: social group with UUID %@ has user pick source but no key asset", buf, 0xCu);
    }

    goto LABEL_7;
  }

LABEL_8:
  v10 = objc_alloc_init(MEMORY[0x1E6994BE0]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = [(PLSocialGroup *)self members];
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v20 + 1) + 8 * i);
        v17 = objc_alloc_init(MEMORY[0x1E6994BD8]);
        v18 = [v16 personUUID];
        [v17 setPersonIdentifier:v18];

        [v10 addPerson:v17];
      }

      v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }

  [v4 setPersons:v10];

  return v4;
}

- (id)scopedIdentifier
{
  v3 = objc_alloc(MEMORY[0x1E6994BB8]);
  v4 = [(PLSocialGroup *)self scopeIdentifier];
  v5 = [(PLGraphNodeContainer *)self uuid];
  v6 = [v3 initWithScopeIdentifier:v4 identifier:v5];

  return v6;
}

- (id)scopeIdentifier
{
  v2 = [(PLGraphNodeContainer *)self sourceNode];
  v3 = [v2 photoLibrary];
  v4 = [v3 mainScopeIdentifier];

  return v4;
}

- (BOOL)supportsCloudUpload
{
  v3 = [objc_opt_class() _syncablePredicate];
  LOBYTE(self) = [v3 evaluateWithObject:self];

  return self;
}

- (BOOL)isSyncableChange
{
  v2 = [(PLGraphNodeContainer *)self sourceNode];
  v3 = [v2 changedValues];
  v4 = [v3 allKeys];
  v5 = [v4 containsObject:@"cplChangeFlag"];

  return v5;
}

- (id)localID
{
  v2 = [(PLGraphNodeContainer *)self sourceNode];
  v3 = [v2 objectID];

  return v3;
}

+ (id)socialGroupsToUploadInManagedObjectContext:(id)a3 limit:(int64_t)a4
{
  v25[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v19 = [v4 pl_graphCache];
  v6 = [v19 labelWithCode:1000 inContext:v4];
  v7 = +[PLGraphEdge fetchRequest];
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %@", @"sourceNode.primaryLabel", v6];
  [v7 setPredicate:v8];

  v25[0] = @"sourceNode";
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
  [v7 setRelationshipKeyPathsForPrefetching:v9];

  v10 = [v4 executeFetchRequest:v7 error:0];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v20 + 1) + 8 * i) sourceNode];
        v16 = v15;
        if (v15 && ([v15 isDeleted] & 1) == 0)
        {
          v17 = [PLGraphNodeContainer newNodeContainerWithNode:v16];
          if ([v17 supportsCloudUpload] && !objc_msgSend(v17, "cloudLocalState"))
          {
            [v5 addObject:v17];
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }

  return v5;
}

@end