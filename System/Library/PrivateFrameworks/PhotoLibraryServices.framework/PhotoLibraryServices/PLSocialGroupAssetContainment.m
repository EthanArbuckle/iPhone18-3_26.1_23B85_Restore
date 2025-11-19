@interface PLSocialGroupAssetContainment
+ (BOOL)_updateAssetPersonEdgesForAssetIDsInBatch:(id)a3 inContext:(id)a4 error:(id *)a5;
+ (BOOL)_updateAssetPersonEdgesForAssetWithID:(id)a3 usingPersonFaceSizes:(id)a4 existingEdges:(id)a5 actorNodesByActorID:(id)a6 inContext:(id)a7 error:(id *)a8;
+ (BOOL)updateAndSaveAssetPersonEdgesForAssetsWithIDs:(id)a3 inContext:(id)a4 error:(id *)a5;
+ (id)_batchAssetIDs:(id)a3;
+ (id)_generateFaceSizesByPersonIDByAssetIDForAssetIDs:(id)a3 inContext:(id)a4 error:(id *)a5;
+ (int)_detectedFaceSizeFromBodyHeight:(double)a3 bodyWidth:(double)a4 size:(double)a5;
+ (void)_updateEdgeLabelsIfNeededForEdge:(id)a3 expectedLabel:(id)a4;
- (BOOL)_foundPersonIDsPassingContainmentRequirements:(id)a3;
- (PLSocialGroupAssetContainment)initWithPersons:(id)a3 inContext:(id)a4;
- (PLSocialGroupAssetContainment)initWithSocialGroup:(id)a3;
- (id)_assetIDsPassingContainmentRequirementsFromAssetPersonEdgeDictionaries:(id)a3 potentialAssetIDs:(id)a4 personIDsByAssetID:(id)a5 error:(id *)a6;
- (id)_assetIDsWithLargeMemberFacesFromAssetPersonEdgeDictionaries:(id)a3 containmentProgress:(id)a4 error:(id *)a5;
- (id)_assetIDsWithRequiredPersonsPresentWithAssetIDs:(id)a3 minimumNumberOfSharedAssets:(unint64_t)a4 error:(id *)a5;
- (id)_assetPersonEdgeDictionaries:(id *)a3 forAssetIDs:(id)a4;
- (id)_containmentResultFromPersonIDsByAssetID:(id)a3 exclusivePotentialAssetIDs:(id)a4 error:(id *)a5;
- (id)_edgeExternalIdentifiersFromAssetPersonEdgeDictionaries:(id)a3;
- (id)_exclusivePotentialAssetIDsFromAssetPersonEdgeDictionaries:(id)a3 potentialInclusiveAssetIDs:(id)a4 containmentProgress:(id)a5 error:(id *)a6;
- (id)_fetchEdgeExternalIdentifiersWithLabel:(id)a3 inEdgeExternalIdentifiers:(id)a4 containmentProgress:(id)a5 error:(id *)a6;
- (id)_fetchEdgeInfosToMediumAndLargeNonMembersInPotentialAssetIDs:(id)a3 edgeInfosToSmallNonMembers:(id)a4 error:(id *)a5;
- (id)_fetchEdgeInfosToSmallNonMembersInPotentialAssetIDs:(id)a3 error:(id *)a4;
- (id)_personIDsByAssetIDFromAssetPersonEdgeDictionaries:(id)a3 potentialAssetIDs:(id)a4 error:(id *)a5;
- (id)_potentialAssetIDsExcludingNonMembersFromAssetIDs:(id)a3 assetIDsWithLargeMemberFaces:(id)a4 error:(id *)a5;
- (id)_runAssetContainmentOnAssetIDs:(id)a3 minimumNumberOfSharedAssets:(unint64_t)a4 error:(id *)a5;
- (id)assetIDsIncludedInExclusiveContainment:(id)a3 error:(id *)a4;
@end

@implementation PLSocialGroupAssetContainment

- (id)assetIDsIncludedInExclusiveContainment:(id)a3 error:(id *)a4
{
  v4 = [(PLSocialGroupAssetContainment *)self _runAssetContainmentOnAssetIDs:a3 minimumNumberOfSharedAssets:0 error:a4];
  v5 = [v4 exclusiveAssetIDs];

  return v5;
}

- (id)_runAssetContainmentOnAssetIDs:(id)a3 minimumNumberOfSharedAssets:(unint64_t)a4 error:(id *)a5
{
  v16[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  if ([(NSSet *)self->_members count]> 1)
  {
    v13 = [(PLSocialGroupAssetContainment *)self _assetIDsWithRequiredPersonsPresentWithAssetIDs:v8 minimumNumberOfSharedAssets:a4 error:a5];
  }

  else
  {
    v9 = MEMORY[0x1E696ABC0];
    v10 = *MEMORY[0x1E69BFF48];
    v15 = *MEMORY[0x1E696A278];
    v16[0] = @"unexpected member set size";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v12 = [v9 errorWithDomain:v10 code:41003 userInfo:v11];
    if (a5)
    {
      v12 = v12;
      *a5 = v12;
    }

    v13 = 0;
  }

  return v13;
}

- (id)_assetIDsWithRequiredPersonsPresentWithAssetIDs:(id)a3 minimumNumberOfSharedAssets:(unint64_t)a4 error:(id *)a5
{
  v40 = *MEMORY[0x1E69E9840];
  v8 = a3;
  if (a4)
  {
    v9 = 4;
  }

  else
  {
    v9 = 3;
  }

  v10 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:v9];
  [v10 becomeCurrentWithPendingUnitCount:1];
  v11 = [(PLSocialGroupAssetContainment *)self _assetPersonEdgeDictionaries:a5 forAssetIDs:v8];
  [v10 resignCurrent];
  if (!v11)
  {
    v27 = 0;
    goto LABEL_25;
  }

  v30 = a4;
  v31 = a5;
  v32 = v8;
  v12 = [MEMORY[0x1E695DFA8] set];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v13 = v11;
  v14 = [v13 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v34;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v34 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v33 + 1) + 8 * i) objectForKeyedSubscript:@"sourceAsset"];
        [v12 addObject:v18];
      }

      v15 = [v13 countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v15);
  }

  [v10 becomeCurrentWithPendingUnitCount:1];
  v19 = [(PLSocialGroupAssetContainment *)self _personIDsByAssetIDFromAssetPersonEdgeDictionaries:v13 potentialAssetIDs:v12 error:v31];
  [v10 resignCurrent];
  if (!v19)
  {
    goto LABEL_20;
  }

  if (!v30)
  {
    goto LABEL_23;
  }

  [v10 becomeCurrentWithPendingUnitCount:1];
  v20 = [(PLSocialGroupAssetContainment *)self _containmentResultFromPersonIDsByAssetID:v19 exclusivePotentialAssetIDs:0 error:v31];
  [v10 resignCurrent];
  if (v20)
  {
    [v20 inclusiveAssetIDs];
    v21 = v29 = v20;
    v22 = [v21 count];

    if (v22 < v30)
    {
      v23 = MEMORY[0x1E696ABC0];
      v24 = *MEMORY[0x1E69BFF48];
      v37 = *MEMORY[0x1E696A278];
      v38 = @"Insufficent number of assets with all members present";
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      v26 = [v23 errorWithDomain:v24 code:41008 userInfo:v25];
      if (v31)
      {
        v26 = v26;
        *v31 = v26;
      }

      v20 = v29;
      goto LABEL_19;
    }

LABEL_23:
    [v10 becomeCurrentWithPendingUnitCount:1];
    v27 = [(PLSocialGroupAssetContainment *)self _assetIDsPassingContainmentRequirementsFromAssetPersonEdgeDictionaries:v13 potentialAssetIDs:v12 personIDsByAssetID:v19 error:v31];
    [v10 resignCurrent];
    goto LABEL_24;
  }

LABEL_19:

LABEL_20:
  v27 = 0;
LABEL_24:

  v8 = v32;
LABEL_25:

  return v27;
}

- (id)_assetIDsPassingContainmentRequirementsFromAssetPersonEdgeDictionaries:(id)a3 potentialAssetIDs:(id)a4 personIDsByAssetID:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = MEMORY[0x1E696AE38];
  v12 = a4;
  v13 = a3;
  v14 = [v11 progressWithTotalUnitCount:4];
  v15 = [(PLSocialGroupAssetContainment *)self _exclusivePotentialAssetIDsFromAssetPersonEdgeDictionaries:v13 potentialInclusiveAssetIDs:v12 containmentProgress:v14 error:a6];

  if (v15)
  {
    [v14 becomeCurrentWithPendingUnitCount:1];
    v16 = [(PLSocialGroupAssetContainment *)self _containmentResultFromPersonIDsByAssetID:v10 exclusivePotentialAssetIDs:v15 error:a6];
    [v14 resignCurrent];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)_containmentResultFromPersonIDsByAssetID:(id)a3 exclusivePotentialAssetIDs:(id)a4 error:(id *)a5
{
  v35[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = MEMORY[0x1E695DFA8];
  v10 = a3;
  v11 = [v9 set];
  v12 = [MEMORY[0x1E695DFA8] set];
  v13 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
  v14 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:{objc_msgSend(v10, "count")}];
  [v13 becomeCurrentWithPendingUnitCount:1];
  v25 = MEMORY[0x1E69E9820];
  v26 = 3221225472;
  v27 = __107__PLSocialGroupAssetContainment__containmentResultFromPersonIDsByAssetID_exclusivePotentialAssetIDs_error___block_invoke;
  v28 = &unk_1E7569FE8;
  v15 = v14;
  v29 = v15;
  v30 = self;
  v16 = v11;
  v31 = v16;
  v17 = v8;
  v32 = v17;
  v18 = v12;
  v33 = v18;
  [v10 enumerateKeysAndObjectsUsingBlock:&v25];

  [v13 resignCurrent];
  if ([v13 isCancelled])
  {
    v19 = MEMORY[0x1E696ABC0];
    v20 = *MEMORY[0x1E69BFF48];
    v34 = *MEMORY[0x1E696A278];
    v35[0] = @"User cancelled exclusive/ inclusive assetID processing";
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:&v34 count:1];
    v22 = [v19 errorWithDomain:v20 code:3072 userInfo:v21];
    if (a5)
    {
      v22 = v22;
      *a5 = v22;
    }

    v23 = 0;
  }

  else
  {
    v23 = [[PLSocialGroupAssetContainmentResult alloc] initWithInclusiveAssetIDs:v16 exclusiveAssetIDs:v18];
  }

  return v23;
}

void __107__PLSocialGroupAssetContainment__containmentResultFromPersonIDsByAssetID_exclusivePotentialAssetIDs_error___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v9 = a2;
  v7 = a3;
  if ([*(a1 + 32) isCancelled])
  {
    *a4 = 1;
  }

  else if ([*(a1 + 40) _foundPersonIDsPassingContainmentRequirements:v7])
  {
    [*(a1 + 48) addObject:v9];
    v8 = *(a1 + 56);
    if (v8)
    {
      if ([v8 containsObject:v9])
      {
        [*(a1 + 64) addObject:v9];
      }
    }
  }

  [*(a1 + 32) setCompletedUnitCount:{objc_msgSend(*(a1 + 32), "completedUnitCount") + 1}];
}

- (id)_exclusivePotentialAssetIDsFromAssetPersonEdgeDictionaries:(id)a3 potentialInclusiveAssetIDs:(id)a4 containmentProgress:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = MEMORY[0x1E695DFA8];
  v12 = a3;
  v13 = [v11 setWithSet:a4];
  v14 = [(PLSocialGroupAssetContainment *)self _assetIDsWithLargeMemberFacesFromAssetPersonEdgeDictionaries:v12 containmentProgress:v10 error:a6];

  if (v14)
  {
    [v10 becomeCurrentWithPendingUnitCount:1];
    v15 = [(PLSocialGroupAssetContainment *)self _potentialAssetIDsExcludingNonMembersFromAssetIDs:v13 assetIDsWithLargeMemberFaces:v14 error:a6];

    [v10 resignCurrent];
    if (v15)
    {
      v13 = v15;
      v15 = v13;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)_potentialAssetIDsExcludingNonMembersFromAssetIDs:(id)a3 assetIDsWithLargeMemberFaces:(id)a4 error:(id *)a5
{
  v43 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:2];
  [v10 becomeCurrentWithPendingUnitCount:1];
  v11 = [(PLSocialGroupAssetContainment *)self _fetchEdgeInfosToSmallNonMembersInPotentialAssetIDs:v8 error:a5];
  [v10 resignCurrent];
  if (v11)
  {
    [v10 becomeCurrentWithPendingUnitCount:1];
    v12 = [(PLSocialGroupAssetContainment *)self _fetchEdgeInfosToMediumAndLargeNonMembersInPotentialAssetIDs:v8 edgeInfosToSmallNonMembers:v11 error:a5];
    [v10 resignCurrent];
    if (v12)
    {
      v31 = v12;
      v32 = v11;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v13 = v12;
      v14 = [v13 countByEnumeratingWithState:&v37 objects:v42 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v38;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v38 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v37 + 1) + 8 * i);
            v19 = objc_autoreleasePoolPush();
            v20 = [v18 objectForKeyedSubscript:@"sourceAsset"];
            [v8 removeObject:v20];

            objc_autoreleasePoolPop(v19);
          }

          v15 = [v13 countByEnumeratingWithState:&v37 objects:v42 count:16];
        }

        while (v15);
      }

      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v21 = v32;
      v22 = [v21 countByEnumeratingWithState:&v33 objects:v41 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v34;
        do
        {
          for (j = 0; j != v23; ++j)
          {
            if (*v34 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = *(*(&v33 + 1) + 8 * j);
            v27 = objc_autoreleasePoolPush();
            v28 = [v26 objectForKeyedSubscript:@"sourceAsset"];
            if (([v9 containsObject:v28] & 1) == 0)
            {
              [v8 removeObject:v28];
            }

            objc_autoreleasePoolPop(v27);
          }

          v23 = [v21 countByEnumeratingWithState:&v33 objects:v41 count:16];
        }

        while (v23);
      }

      v29 = v8;
      v12 = v31;
      v11 = v32;
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

  return v29;
}

- (id)_fetchEdgeInfosToMediumAndLargeNonMembersInPotentialAssetIDs:(id)a3 edgeInfosToSmallNonMembers:(id)a4 error:(id *)a5
{
  v34[2] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a3;
  v10 = +[PLGraphEdge fetchRequest];
  [v10 setResultType:2];
  v34[0] = @"objectID";
  v34[1] = @"sourceAsset";
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
  [v10 setPropertiesToFetch:v11];

  v12 = MEMORY[0x1E696AE18];
  v13 = [v8 valueForKey:@"objectID"];

  v14 = [v12 predicateWithFormat:@"NOT (self in %@) AND NOT (%K in %@) AND ANY %K in %@", v13, @"targetPerson", self->_members, @"sourceAsset", v9];

  [v10 setPredicate:v14];
  v15 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
  if ([v15 isCancelled])
  {
    v16 = MEMORY[0x1E696ABC0];
    v17 = *MEMORY[0x1E69BFF48];
    v30 = *MEMORY[0x1E696A278];
    v31 = @"User cancelled progress before fetching edges for medium/large nonmembers";
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v19 = [v16 errorWithDomain:v17 code:3072 userInfo:v18];
    if (a5)
    {
      v19 = v19;
      *a5 = v19;
    }

    v20 = 0;
    v21 = 0;
  }

  else
  {
    context = self->_context;
    v29 = 0;
    v20 = [(NSManagedObjectContext *)context executeFetchRequest:v10 error:&v29];
    v21 = v29;
    if (!v20)
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"runAssetContainment: error fetching edges with non-member persons: %@", v21];
      v24 = MEMORY[0x1E696ABC0];
      v25 = *MEMORY[0x1E69BFF48];
      v32 = *MEMORY[0x1E696A278];
      v33 = v23;
      v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
      v27 = [v24 errorWithDomain:v25 code:41003 userInfo:v26];
      if (a5)
      {
        v27 = v27;
        *a5 = v27;
      }
    }

    [v15 setCompletedUnitCount:{objc_msgSend(v15, "completedUnitCount") + 1}];
  }

  return v20;
}

- (id)_fetchEdgeInfosToSmallNonMembersInPotentialAssetIDs:(id)a3 error:(id *)a4
{
  v38[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(NSManagedObjectContext *)self->_context pl_graphCache];
  v8 = [v7 objectIDForLabelWithCode:1200 inContext:self->_context];
  v9 = +[PLGraphEdge fetchRequest];
  [v9 setResultType:2];
  v38[0] = @"sourceAsset";
  v38[1] = @"objectID";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:2];
  [v9 setPropertiesToFetch:v10];

  if (!v8)
  {
    v18 = MEMORY[0x1E696ABC0];
    v19 = *MEMORY[0x1E69BFF48];
    v36 = *MEMORY[0x1E696A278];
    v37 = @"runAssetContainment: error fetching small face label";
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    v20 = [v18 errorWithDomain:v19 code:41003 userInfo:v17];
    v12 = v20;
    if (a4)
    {
      v21 = v20;
      v22 = 0;
      *a4 = v12;
      goto LABEL_14;
    }

    goto LABEL_8;
  }

  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(%K = %@) AND NOT (%K in %@) AND ANY %K in %@", @"primaryLabel", v8, @"targetPerson", self->_members, @"sourceAsset", v6];
  [v9 setPredicate:v11];

  v12 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
  if ([v12 isCancelled])
  {
    v13 = MEMORY[0x1E696ABC0];
    v14 = *MEMORY[0x1E69BFF48];
    v32 = *MEMORY[0x1E696A278];
    v33 = @"User cancelled progress before fetching edges to small nonmembers";
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v16 = [v13 errorWithDomain:v14 code:3072 userInfo:v15];
    if (a4)
    {
      v16 = v16;
      *a4 = v16;
    }

    v17 = 0;
LABEL_8:
    v22 = 0;
    goto LABEL_14;
  }

  context = self->_context;
  v31 = 0;
  v22 = [(NSManagedObjectContext *)context executeFetchRequest:v9 error:&v31];
  v17 = v31;
  if (!v22)
  {
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"runAssetContainment: error fetching edges with small non-member persons: %@", v17];
    v29 = MEMORY[0x1E696ABC0];
    v25 = *MEMORY[0x1E69BFF48];
    v34 = *MEMORY[0x1E696A278];
    v35 = v24;
    v30 = v24;
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    v27 = [v29 errorWithDomain:v25 code:41003 userInfo:v26];
    if (a4)
    {
      v27 = v27;
      *a4 = v27;
    }
  }

  [v12 setCompletedUnitCount:{objc_msgSend(v12, "completedUnitCount") + 1}];
LABEL_14:

  return v22;
}

- (id)_personIDsByAssetIDFromAssetPersonEdgeDictionaries:(id)a3 potentialAssetIDs:(id)a4 error:(id *)a5
{
  v29 = a5;
  v40 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v7, "count")}];
  if ([v6 count])
  {
    v9 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:{objc_msgSend(v6, "count")}];
  }

  else
  {
    v9 = 0;
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v10 = v6;
  v31 = [v10 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v31)
  {
    v11 = *v34;
    v30 = *v34;
    while (2)
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v34 != v11)
        {
          objc_enumerationMutation(v10);
        }

        v13 = *(*(&v33 + 1) + 8 * i);
        if ([v9 isCancelled])
        {
          v24 = MEMORY[0x1E696ABC0];
          v25 = *MEMORY[0x1E69BFF48];
          v37 = *MEMORY[0x1E696A278];
          v38 = @"User cancelled processing for personIDs by assetIDs";
          v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
          v27 = [v24 errorWithDomain:v25 code:3072 userInfo:v26];
          if (v29)
          {
            v27 = v27;
            *v29 = v27;
          }

          v23 = 0;
          goto LABEL_21;
        }

        context = objc_autoreleasePoolPush();
        v14 = [v13 objectForKeyedSubscript:@"sourceAsset"];
        v15 = [v13 objectForKeyedSubscript:@"targetPerson"];
        if ([v7 containsObject:v14])
        {
          v16 = [v8 objectForKeyedSubscript:v14];
          if (v16)
          {
            [v8 objectForKeyedSubscript:v14];
            v17 = v9;
            v18 = v10;
            v19 = v8;
            v21 = v20 = v7;
            v22 = [v21 mutableCopy];

            v7 = v20;
            v8 = v19;
            v10 = v18;
            v9 = v17;
            v11 = v30;
          }

          else
          {
            v22 = [MEMORY[0x1E695DFA8] set];
          }

          [v22 addObject:v15];
          [v8 setObject:v22 forKeyedSubscript:v14];
        }

        [v9 setCompletedUnitCount:{objc_msgSend(v9, "completedUnitCount") + 1}];

        objc_autoreleasePoolPop(context);
      }

      v31 = [v10 countByEnumeratingWithState:&v33 objects:v39 count:16];
      if (v31)
      {
        continue;
      }

      break;
    }
  }

  v23 = v8;
LABEL_21:

  return v23;
}

- (id)_assetIDsWithLargeMemberFacesFromAssetPersonEdgeDictionaries:(id)a3 containmentProgress:(id)a4 error:(id *)a5
{
  v54 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = self->_context;
  v11 = [(NSManagedObjectContext *)v10 pl_graphCache];
  v12 = [v11 labelWithCode:1200 inContext:v10];
  v13 = [v11 labelWithCode:1201 inContext:v10];
  v46 = [MEMORY[0x1E695DFA8] set];
  v43 = [MEMORY[0x1E695DFA8] set];
  if (v12)
  {
    v14 = v13 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = MEMORY[0x1E696ABC0];
    v16 = *MEMORY[0x1E69BFF48];
    v51 = *MEMORY[0x1E696A278];
    v52 = @"_assetIDsWithLargeMemberFacesFromAssetPersonEdgeDictionaries: error fetching small/ large face label";
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
    v18 = [v15 errorWithDomain:v16 code:41003 userInfo:v17];
    if (a5)
    {
      v18 = v18;
      *a5 = v18;
    }

    v19 = 0;
  }

  else
  {
    v42 = v8;
    v20 = [(PLSocialGroupAssetContainment *)self _edgeExternalIdentifiersFromAssetPersonEdgeDictionaries:v8];
    v21 = [(PLSocialGroupAssetContainment *)self _fetchEdgeExternalIdentifiersWithLabel:v12 inEdgeExternalIdentifiers:v20 containmentProgress:v9 error:a5];
    v41 = v9;
    v22 = [(PLSocialGroupAssetContainment *)self _fetchEdgeExternalIdentifiersWithLabel:v13 inEdgeExternalIdentifiers:v20 containmentProgress:v9 error:a5];
    v23 = MEMORY[0x1E695DFA8];
    v24 = [(NSSet *)self->_members valueForKey:@"objectID"];
    v25 = [v23 setWithSet:v24];

    if (v22 && v21)
    {
      v44 = v21;
      v36 = v20;
      v37 = v13;
      v38 = v12;
      v39 = v11;
      v40 = v10;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      obj = v42;
      v26 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v48;
        do
        {
          for (i = 0; i != v27; ++i)
          {
            if (*v48 != v28)
            {
              objc_enumerationMutation(obj);
            }

            v30 = *(*(&v47 + 1) + 8 * i);
            v31 = objc_autoreleasePoolPush();
            v32 = [v30 objectForKeyedSubscript:{@"targetPerson", v36}];
            v33 = [v30 objectForKeyedSubscript:@"sourceAsset"];
            v34 = [v30 objectForKeyedSubscript:@"externalIdentifier"];
            if ([v25 containsObject:v32] && ((objc_msgSend(v44, "containsObject:", v34) & 1) != 0 || (objc_msgSend(v22, "containsObject:", v34) & 1) == 0))
            {
              [v46 addObject:v33];
              [v43 removeObject:v33];
            }

            else if ([v25 containsObject:v32] && objc_msgSend(v22, "containsObject:", v34) && (objc_msgSend(v46, "containsObject:", v33) & 1) == 0)
            {
              [v43 addObject:v33];
            }

            objc_autoreleasePoolPop(v31);
          }

          v27 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
        }

        while (v27);
      }

      v19 = v43;
      v9 = v41;
      v8 = v42;
      v11 = v39;
      v10 = v40;
      v13 = v37;
      v12 = v38;
    }

    else
    {

      v19 = 0;
      v9 = v41;
      v8 = v42;
    }
  }

  return v19;
}

- (id)_edgeExternalIdentifiersFromAssetPersonEdgeDictionaries:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DFA8] set];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * i) objectForKeyedSubscript:{@"externalIdentifier", v12}];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)_fetchEdgeExternalIdentifiersWithLabel:(id)a3 inEdgeExternalIdentifiers:(id)a4 containmentProgress:(id)a5 error:(id *)a6
{
  v31 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a5;
  v11 = [a3 edgeExternalIdentifiersHavingLabel];
  if (v11)
  {
    v12 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v9, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v13 = v9;
    v14 = [v13 countByEnumeratingWithState:&v24 objects:v30 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v25;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v25 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [*(*(&v24 + 1) + 8 * i) longLongValue];
          if ([v11 bitAtIndex:v18 error:0])
          {
            v19 = [MEMORY[0x1E696AD98] numberWithLongLong:v18];
            [v12 addObject:v19];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v24 objects:v30 count:16];
      }

      while (v15);
    }
  }

  else
  {
    v20 = MEMORY[0x1E696ABC0];
    v21 = *MEMORY[0x1E69BFF48];
    v28 = *MEMORY[0x1E696A278];
    v29 = @"Unable to fetch edgeExternalIdentifiersHavingLabel";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v22 = [v20 errorWithDomain:v21 code:41003 userInfo:v13];
    if (a6)
    {
      v22 = v22;
      *a6 = v22;
    }

    v12 = 0;
  }

  [v10 setCompletedUnitCount:{objc_msgSend(v10, "completedUnitCount") + 1}];

  return v12;
}

- (id)_assetPersonEdgeDictionaries:(id *)a3 forAssetIDs:(id)a4
{
  v40[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  if ([(NSSet *)self->_members count]> 1)
  {
    v9 = +[PLGraphEdge fetchRequest];
    v14 = [MEMORY[0x1E695DF70] array];
    members = self->_members;
    if (v6)
    {
      [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@ AND noindex:(%K) IN %@", @"sourceAsset", v6, @"targetPerson", members];
    }

    else
    {
      [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != nil AND %K IN %@", @"sourceAsset", @"targetPerson", members, v31];
    }
    v16 = ;
    [v14 addObject:v16];

    v17 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v14];
    [v9 setPredicate:v17];

    [v9 setResultType:2];
    v38[0] = @"sourceAsset";
    v38[1] = @"targetPerson";
    v38[2] = @"objectID";
    v38[3] = @"externalIdentifier";
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:4];
    [v9 setPropertiesToFetch:v18];

    v19 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
    if ([v19 isCancelled])
    {
      v20 = MEMORY[0x1E696ABC0];
      v21 = *MEMORY[0x1E69BFF48];
      v34 = *MEMORY[0x1E696A278];
      v35 = @"User cancelled progress before fetching asset-person edges";
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      v23 = [v20 errorWithDomain:v21 code:3072 userInfo:v22];
      if (a3)
      {
        v23 = v23;
        *a3 = v23;
      }

      v11 = 0;
      v13 = 0;
    }

    else
    {
      context = self->_context;
      v33 = 0;
      v13 = [(NSManagedObjectContext *)context executeFetchRequest:v9 error:&v33];
      v11 = v33;
      if (!v13)
      {
        v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"runAssetContainment: error fetching asset-person edges: %@", v11];
        v26 = MEMORY[0x1E696ABC0];
        v27 = *MEMORY[0x1E69BFF48];
        v36 = *MEMORY[0x1E696A278];
        v37 = v25;
        v32 = v25;
        v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
        v29 = [v26 errorWithDomain:v27 code:41003 userInfo:v28];
        if (a3)
        {
          v29 = v29;
          *a3 = v29;
        }
      }

      [v19 setCompletedUnitCount:{objc_msgSend(v19, "completedUnitCount") + 1}];
    }
  }

  else
  {
    v7 = MEMORY[0x1E696ABC0];
    v8 = *MEMORY[0x1E69BFF48];
    v39 = *MEMORY[0x1E696A278];
    v40[0] = @"_assetPersonEdgeDictionaries: invalid member size";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:&v39 count:1];
    v10 = [v7 errorWithDomain:v8 code:41003 userInfo:v9];
    v11 = v10;
    if (a3)
    {
      v12 = v10;
      v13 = 0;
      *a3 = v11;
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (BOOL)_foundPersonIDsPassingContainmentRequirements:(id)a3
{
  members = self->_members;
  v5 = a3;
  v6 = [(NSSet *)members valueForKey:@"objectID"];
  v7 = [v6 mutableCopy];

  [v7 intersectSet:v5];
  if ([(NSSet *)self->_members count])
  {
    v8 = [v7 count];
    v9 = v8 >= [(NSSet *)self->_members count];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (PLSocialGroupAssetContainment)initWithSocialGroup:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = PLSocialGroupAssetContainment;
  v6 = [(PLSocialGroupAssetContainment *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_socialGroup, a3);
    v8 = [v5 sourceNode];
    v9 = [v8 managedObjectContext];
    context = v7->_context;
    v7->_context = v9;

    v11 = [v5 members];
    members = v7->_members;
    v7->_members = v11;

    v13 = v7;
  }

  return v7;
}

- (PLSocialGroupAssetContainment)initWithPersons:(id)a3 inContext:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = PLSocialGroupAssetContainment;
  v9 = [(PLSocialGroupAssetContainment *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_context, a4);
    objc_storeStrong(&v10->_members, a3);
    v11 = v10;
  }

  return v10;
}

+ (BOOL)updateAndSaveAssetPersonEdgesForAssetsWithIDs:(id)a3 inContext:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  if (!v10)
  {
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    [v26 handleFailureInMethod:a2 object:a1 file:@"PLSocialGroupAssetContainment.m" lineNumber:713 description:{@"Invalid parameter not satisfying: %@", @"context"}];
  }

  v11 = PLBackendGetLog();
  v12 = os_signpost_id_generate(v11);

  v13 = v11;
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "AssetPersonEdgesUpdate", "begin updatingAssetPersonEdges", buf, 2u);
  }

  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 1;
  *buf = 0;
  v39 = buf;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__25722;
  v42 = __Block_byref_object_dispose__25723;
  v43 = 0;
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __95__PLSocialGroupAssetContainment_updateAndSaveAssetPersonEdgesForAssetsWithIDs_inContext_error___block_invoke;
  v36[3] = &unk_1E75781E8;
  v15 = v10;
  v37 = v15;
  [v15 pl_performBlockAndWait:v36];
  v16 = [a1 _batchAssetIDs:v9];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __95__PLSocialGroupAssetContainment_updateAndSaveAssetPersonEdgesForAssetsWithIDs_inContext_error___block_invoke_2;
  v30[3] = &unk_1E756E960;
  v17 = v16;
  v31 = v17;
  v35 = a1;
  v18 = v15;
  v32 = v18;
  v33 = buf;
  v34 = &v44;
  [v18 pl_performBlockAndWait:v30];
  v19 = v14;
  v20 = v19;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    *v29 = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v20, OS_SIGNPOST_INTERVAL_END, v12, "AssetPersonEdgesUpdate", "", v29, 2u);
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __95__PLSocialGroupAssetContainment_updateAndSaveAssetPersonEdgesForAssetsWithIDs_inContext_error___block_invoke_174;
  v27[3] = &unk_1E75781E8;
  v21 = v18;
  v28 = v21;
  [v21 pl_performBlockAndWait:v27];
  v22 = *(v45 + 24);
  v23 = *(v39 + 5);
  if (a5 && (v22 & 1) == 0)
  {
    v23 = v23;
    *a5 = v23;
  }

  v24 = *(v45 + 24);
  _Block_object_dispose(buf, 8);

  _Block_object_dispose(&v44, 8);
  return v24;
}

void __95__PLSocialGroupAssetContainment_updateAndSaveAssetPersonEdgesForAssetsWithIDs_inContext_error___block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x1E696AD98] numberWithBool:1];
  v2 = [*(a1 + 32) userInfo];
  [v2 setObject:v3 forKeyedSubscript:@"updatingAssetPersonEdgesKey"];
}

void __95__PLSocialGroupAssetContainment_updateAndSaveAssetPersonEdgesForAssetsWithIDs_inContext_error___block_invoke_2(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v18 + 1) + 8 * i);
        v8 = objc_autoreleasePoolPush();
        v9 = *(a1 + 64);
        v10 = *(a1 + 40);
        v11 = *(*(a1 + 48) + 8);
        obj = *(v11 + 40);
        v12 = [v9 _updateAssetPersonEdgesForAssetIDsInBatch:v7 inContext:v10 error:&obj];
        objc_storeStrong((v11 + 40), obj);
        v13 = *(a1 + 40);
        v16 = 0;
        LOBYTE(v11) = [v13 save:&v16];
        v14 = v16;
        if ((v11 & 1) == 0)
        {
          v15 = PLBackendGetLog();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v23 = v14;
            _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "Error saving asset-person edges: %@", buf, 0xCu);
          }

LABEL_14:
          *(*(*(a1 + 56) + 8) + 24) = 0;

          objc_autoreleasePoolPop(v8);
          goto LABEL_15;
        }

        [*(a1 + 40) refreshAllObjects];
        if ((v12 & 1) == 0)
        {
          goto LABEL_14;
        }

        objc_autoreleasePoolPop(v8);
      }

      v4 = [v2 countByEnumeratingWithState:&v18 objects:v24 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:
}

void __95__PLSocialGroupAssetContainment_updateAndSaveAssetPersonEdgesForAssetsWithIDs_inContext_error___block_invoke_174(uint64_t a1)
{
  v3 = [MEMORY[0x1E696AD98] numberWithBool:0];
  v2 = [*(a1 + 32) userInfo];
  [v2 setObject:v3 forKeyedSubscript:@"updatingAssetPersonEdgesKey"];
}

+ (id)_batchAssetIDs:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:400];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __48__PLSocialGroupAssetContainment__batchAssetIDs___block_invoke;
  v12[3] = &unk_1E756A088;
  v13 = v4;
  v14 = v3;
  v6 = v5;
  v15 = v6;
  v7 = v3;
  v8 = v4;
  [v7 enumerateObjectsUsingBlock:v12];
  v9 = v15;
  v10 = v6;

  return v6;
}

uint64_t __48__PLSocialGroupAssetContainment__batchAssetIDs___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) addObject:a2];
  v5 = [*(a1 + 40) count];
  result = [*(a1 + 32) count];
  if (result == 400 || v5 - 1 == a3)
  {
    v8 = *(a1 + 48);
    v9 = [*(a1 + 32) copy];
    [v8 addObject:v9];

    v10 = *(a1 + 32);

    return [v10 removeAllObjects];
  }

  return result;
}

+ (BOOL)_updateAssetPersonEdgesForAssetIDsInBatch:(id)a3 inContext:(id)a4 error:(id *)a5
{
  v68[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    v32 = [MEMORY[0x1E696AAA8] currentHandler];
    [v32 handleFailureInMethod:a2 object:a1 file:@"PLSocialGroupAssetContainment.m" lineNumber:595 description:{@"Invalid parameter not satisfying: %@", @"context"}];

    v9 = 0;
  }

  v63 = 0;
  v64 = &v63;
  v65 = 0x2020000000;
  v66 = 0;
  v57 = 0;
  v58 = &v57;
  v59 = 0x3032000000;
  v60 = __Block_byref_object_copy__25722;
  v61 = __Block_byref_object_dispose__25723;
  v62 = 0;
  obj = 0;
  v35 = a1;
  v40 = v9;
  v41 = [a1 _generateFaceSizesByPersonIDByAssetIDForAssetIDs:v8 inContext:v9 error:&obj];
  objc_storeStrong(&v62, obj);
  v10 = [MEMORY[0x1E695DF70] array];
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __91__PLSocialGroupAssetContainment__updateAssetPersonEdgesForAssetIDsInBatch_inContext_error___block_invoke;
  v54[3] = &unk_1E756A038;
  v39 = v10;
  v55 = v39;
  [v41 enumerateKeysAndObjectsUsingBlock:v54];
  v11 = [MEMORY[0x1E695DFA8] set];
  [v11 addObjectsFromArray:v8];
  [v11 addObjectsFromArray:v39];
  v38 = v11;
  if (v41)
  {
    v12 = [PLGraphNode nodesForActingObjectIDs:v11 createIfMissing:1 inContext:v40];
    if (!v58[5])
    {
      v33 = v12;
      v36 = +[PLGraphEdge fetchRequest];
      v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@ AND %K != nil", @"sourceAsset", v8, @"targetPerson"];
      [v36 setPredicate:v13];

      [v36 setResultType:0];
      [v36 setReturnsObjectsAsFaults:0];
      v14 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"sourceAsset" ascending:1];
      v68[0] = v14;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:1];
      [v36 setSortDescriptors:v15];

      v16 = (v58 + 5);
      v53 = v58[5];
      v34 = [v40 executeFetchRequest:v36 error:&v53];
      objc_storeStrong(v16, v53);
      if (v34)
      {
        v17 = [MEMORY[0x1E695DF90] dictionary];
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v18 = v34;
        v19 = [v18 countByEnumeratingWithState:&v49 objects:v67 count:16];
        if (v19)
        {
          v20 = *v50;
          do
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v50 != v20)
              {
                objc_enumerationMutation(v18);
              }

              v22 = *(*(&v49 + 1) + 8 * i);
              v23 = objc_autoreleasePoolPush();
              v24 = [v22 objectIDsForRelationshipNamed:@"sourceAsset"];
              v25 = [v24 firstObject];

              if (v25)
              {
                v26 = [v17 objectForKeyedSubscript:v25];
                if (!v26)
                {
                  v26 = [MEMORY[0x1E695DFA8] set];
                  [v17 setObject:v26 forKeyedSubscript:v25];
                }

                [v26 addObject:v22];
              }

              objc_autoreleasePoolPop(v23);
            }

            v19 = [v18 countByEnumeratingWithState:&v49 objects:v67 count:16];
          }

          while (v19);
        }

        v42[0] = MEMORY[0x1E69E9820];
        v42[1] = 3221225472;
        v42[2] = __91__PLSocialGroupAssetContainment__updateAssetPersonEdgesForAssetIDsInBatch_inContext_error___block_invoke_2;
        v42[3] = &unk_1E756A060;
        v46 = &v63;
        v48 = v35;
        v27 = v17;
        v43 = v27;
        v44 = v33;
        v45 = v40;
        v47 = &v57;
        [v41 enumerateKeysAndObjectsUsingBlock:v42];
      }

      v12 = v33;
    }
  }

  v28 = *(v64 + 24);
  v29 = v58[5];
  if (a5 && (v28 & 1) == 0)
  {
    v29 = v29;
    *a5 = v29;
  }

  v30 = *(v64 + 24);
  _Block_object_dispose(&v57, 8);

  _Block_object_dispose(&v63, 8);
  return v30 & 1;
}

void __91__PLSocialGroupAssetContainment__updateAssetPersonEdgesForAssetIDsInBatch_inContext_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [a3 allKeys];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(a1 + 32) addObject:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

void __91__PLSocialGroupAssetContainment__updateAssetPersonEdgesForAssetIDsInBatch_inContext_error___block_invoke_2(void *a1, void *a2, void *a3)
{
  v5 = a1[9];
  v6 = a1[4];
  v7 = a3;
  v8 = a2;
  v9 = [v6 objectForKeyedSubscript:v8];
  v10 = a1[5];
  v11 = a1[6];
  v12 = *(a1[8] + 8);
  obj = *(v12 + 40);
  LOBYTE(v5) = [v5 _updateAssetPersonEdgesForAssetWithID:v8 usingPersonFaceSizes:v7 existingEdges:v9 actorNodesByActorID:v10 inContext:v11 error:&obj];

  objc_storeStrong((v12 + 40), obj);
  *(*(a1[7] + 8) + 24) = v5;
}

+ (id)_generateFaceSizesByPersonIDByAssetIDForAssetIDs:(id)a3 inContext:(id)a4 error:(id *)a5
{
  v79[6] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    v55 = [MEMORY[0x1E696AAA8] currentHandler];
    [v55 handleFailureInMethod:a2 object:a1 file:@"PLSocialGroupAssetContainment.m" lineNumber:521 description:{@"Invalid parameter not satisfying: %@", @"context"}];
  }

  v10 = [v8 copy];
  v11 = +[PLDetectedFace fetchRequest];
  [v11 setResultType:2];
  v79[0] = @"assetForFace";
  v79[1] = @"personForFace";
  v79[2] = @"size";
  v79[3] = @"bodyWidth";
  v79[4] = @"bodyHeight";
  v79[5] = @"objectID";
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v79 count:6];
  [v11 setPropertiesToFetch:v12];

  v13 = MEMORY[0x1E696AB28];
  v60 = v10;
  v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"assetForFace", v10];
  v78[0] = v14;
  v15 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = YES", @"assetVisible"];
  v78[1] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v78 count:2];
  v17 = [v13 andPredicateWithSubpredicates:v16];
  [v11 setPredicate:v17];

  v61 = v11;
  [v11 setFetchBatchSize:100];
  v18 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v8, "count")}];
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  obj = v8;
  v19 = [obj countByEnumeratingWithState:&v72 objects:v77 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v73;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v73 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v72 + 1) + 8 * i);
        v24 = [MEMORY[0x1E695DF90] dictionary];
        [v18 setObject:v24 forKeyedSubscript:v23];
      }

      v20 = [obj countByEnumeratingWithState:&v72 objects:v77 count:16];
    }

    while (v20);
  }

  v71 = 0;
  v25 = [v9 executeFetchRequest:v61 error:&v71];
  v26 = v71;
  v27 = v26;
  if (v25)
  {
    v58 = v26;
    v59 = v9;
    v56 = a2;
    v57 = v25;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v65 = v25;
    v28 = [v65 countByEnumeratingWithState:&v67 objects:v76 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v68;
      v62 = *v68;
      do
      {
        v31 = 0;
        v64 = v29;
        do
        {
          if (*v68 != v30)
          {
            objc_enumerationMutation(v65);
          }

          v32 = *(*(&v67 + 1) + 8 * v31);
          v33 = objc_autoreleasePoolPush();
          v34 = [v32 objectForKeyedSubscript:@"assetForFace"];
          v35 = [v32 objectForKeyedSubscript:@"personForFace"];
          v36 = v35;
          if (v34)
          {
            v37 = v35 == 0;
          }

          else
          {
            v37 = 1;
          }

          if (!v37)
          {
            v38 = [v18 objectForKeyedSubscript:v34];
            if (!v38)
            {
              v51 = [MEMORY[0x1E696AAA8] currentHandler];
              [v51 handleFailureInMethod:v56 object:a1 file:@"PLSocialGroupAssetContainment.m" lineNumber:572 description:@"expected existing collection"];
            }

            v39 = [v32 objectForKeyedSubscript:@"bodyHeight"];
            [v39 doubleValue];
            v41 = v40;
            v42 = [v32 objectForKeyedSubscript:@"bodyWidth"];
            [v42 doubleValue];
            v44 = v43;
            v45 = [v32 objectForKeyedSubscript:@"size"];
            [v45 doubleValue];
            v47 = [a1 _detectedFaceSizeFromBodyHeight:v41 bodyWidth:v44 size:v46];

            v48 = [v38 objectForKeyedSubscript:v36];
            v49 = v48;
            if (!v48 || v47 > [v48 integerValue])
            {
              v50 = [MEMORY[0x1E696AD98] numberWithInt:v47];
              [v38 setObject:v50 forKeyedSubscript:v36];
            }

            v30 = v62;
            v29 = v64;
          }

          objc_autoreleasePoolPop(v33);
          ++v31;
        }

        while (v29 != v31);
        v29 = [v65 countByEnumeratingWithState:&v67 objects:v76 count:16];
      }

      while (v29);
    }

    v52 = v18;
    v27 = v58;
    v9 = v59;
    v25 = v57;
  }

  else if (a5)
  {
    v53 = v26;
    v52 = 0;
    *a5 = v27;
  }

  else
  {
    v52 = 0;
  }

  return v52;
}

+ (BOOL)_updateAssetPersonEdgesForAssetWithID:(id)a3 usingPersonFaceSizes:(id)a4 existingEdges:(id)a5 actorNodesByActorID:(id)a6 inContext:(id)a7 error:(id *)a8
{
  v67[1] = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  if (!v18)
  {
    v43 = [MEMORY[0x1E696AAA8] currentHandler];
    [v43 handleFailureInMethod:a2 object:a1 file:@"PLSocialGroupAssetContainment.m" lineNumber:474 description:{@"Invalid parameter not satisfying: %@", @"context"}];
  }

  v19 = [v18 pl_graphCache];
  v20 = [v19 labelWithCode:1200 inContext:v18];
  v50 = v19;
  v21 = [v19 labelWithCode:1201 inContext:v18];
  v22 = v21;
  if (v20)
  {
    v23 = v21 == 0;
  }

  else
  {
    v23 = 1;
  }

  v24 = !v23;
  v44 = v24;
  if (v23)
  {
    v48 = v16;
    v25 = v17;
    v26 = v14;
    v27 = MEMORY[0x1E696ABC0];
    v28 = *MEMORY[0x1E69BFF48];
    v66 = *MEMORY[0x1E696A278];
    v67[0] = @"_updateAssetPersonEdgesForAssetWithID: error getting small/ large face label";
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v67 forKeys:&v66 count:1];
    v30 = [v27 errorWithDomain:v28 code:41003 userInfo:v29];
    if (a8)
    {
      v30 = v30;
      *a8 = v30;
    }

    v14 = v26;
    v17 = v25;
    v16 = v48;
  }

  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = __142__PLSocialGroupAssetContainment__updateAssetPersonEdgesForAssetWithID_usingPersonFaceSizes_existingEdges_actorNodesByActorID_inContext_error___block_invoke;
  v57[3] = &unk_1E756A010;
  v49 = v20;
  v58 = v49;
  v47 = v22;
  v59 = v47;
  v31 = v16;
  v60 = v31;
  v52 = v18;
  v61 = v52;
  v45 = v17;
  v62 = v45;
  v46 = v14;
  v63 = v46;
  v64 = a1;
  [v15 enumerateKeysAndObjectsUsingBlock:v57];
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v32 = v31;
  v33 = [v32 countByEnumeratingWithState:&v53 objects:v65 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v54;
    do
    {
      for (i = 0; i != v34; ++i)
      {
        if (*v54 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v37 = *(*(&v53 + 1) + 8 * i);
        v38 = objc_autoreleasePoolPush();
        v39 = [v37 objectIDsForRelationshipNamed:@"targetPerson"];
        v40 = [v39 firstObject];

        v41 = [v15 objectForKeyedSubscript:v40];

        if (!v41)
        {
          [v52 deleteObject:v37];
        }

        objc_autoreleasePoolPop(v38);
      }

      v34 = [v32 countByEnumeratingWithState:&v53 objects:v65 count:16];
    }

    while (v34);
  }

  return v44;
}

void __142__PLSocialGroupAssetContainment__updateAssetPersonEdgesForAssetWithID_usingPersonFaceSizes_existingEdges_actorNodesByActorID_inContext_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (![v6 integerValue])
  {
    v7 = 32;
    goto LABEL_5;
  }

  if ([v6 integerValue] == 2)
  {
    v7 = 40;
LABEL_5:
    v8 = *(a1 + v7);
    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:
  v9 = *(a1 + 48);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __142__PLSocialGroupAssetContainment__updateAssetPersonEdgesForAssetWithID_usingPersonFaceSizes_existingEdges_actorNodesByActorID_inContext_error___block_invoke_2;
  v14[3] = &unk_1E756B3A8;
  v10 = v5;
  v15 = v10;
  v11 = [v9 _pl_firstObjectPassingTest:v14];
  if (!v11)
  {
    v11 = [(PLManagedObject *)PLGraphEdge insertInManagedObjectContext:*(a1 + 56)];
    v12 = [*(a1 + 64) objectForKeyedSubscript:*(a1 + 72)];
    [v11 setSourceNode:v12];

    v13 = [*(a1 + 64) objectForKeyedSubscript:v10];
    [v11 setTargetNode:v13];
  }

  [*(a1 + 80) _updateEdgeLabelsIfNeededForEdge:v11 expectedLabel:v8];
}

uint64_t __142__PLSocialGroupAssetContainment__updateAssetPersonEdgesForAssetWithID_usingPersonFaceSizes_existingEdges_actorNodesByActorID_inContext_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 objectIDsForRelationshipNamed:@"targetPerson"];
  v4 = [v3 firstObject];

  v5 = [v4 isEqual:*(a1 + 32)];
  return v5;
}

+ (void)_updateEdgeLabelsIfNeededForEdge:(id)a3 expectedLabel:(id)a4
{
  v11 = a3;
  v5 = a4;
  v6 = [v11 primaryLabel];
  v7 = v6;
  if (v5)
  {
    v8 = [v6 isEqual:v5];

    if (v8)
    {
      goto LABEL_7;
    }

    v9 = v11;
    v10 = v5;
  }

  else
  {

    if (!v7)
    {
      goto LABEL_7;
    }

    v9 = v11;
    v10 = 0;
  }

  [v9 setPrimaryLabel:v10];
LABEL_7:
}

+ (int)_detectedFaceSizeFromBodyHeight:(double)a3 bodyWidth:(double)a4 size:(double)a5
{
  if (a5 == 0.0)
  {
    v6 = a3 * a4;
    +[PLSocialGroupAssetContainment _assetContainmentSmallTorsoThreshold];
    if (v6 < a3)
    {
      return 0;
    }
  }

  if (a5 <= 0.0)
  {
    return 1;
  }

  [PLSocialGroupAssetContainment _assetContainmentSmallFaceThreshold:a3];
  if (v7 > a5)
  {
    return 0;
  }

  +[PLSocialGroupAssetContainment _assetContainmentLargeFaceThreshold];
  if (v9 >= a5)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

@end