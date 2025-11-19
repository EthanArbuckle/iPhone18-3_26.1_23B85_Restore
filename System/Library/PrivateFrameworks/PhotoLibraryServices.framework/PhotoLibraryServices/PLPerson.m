@interface PLPerson
+ (BOOL)_deleteObjectsWithFetchRequest:(id)a3 reason:(signed __int16)a4 moc:(id)a5 progress:(id)a6 error:(id *)a7;
+ (BOOL)_detachFacesForPerson:(id)a3 reason:(signed __int16)a4 error:(id *)a5;
+ (BOOL)person:(id)a3 isBetterMergeTargetThanPerson:(id)a4;
+ (BOOL)resetAllInLibrary:(id)a3 error:(id *)a4;
+ (PLPerson)personWithUUID:(id)a3 inManagedObjectContext:(id)a4;
+ (id)_batchFetchPersonUUIDsByAssetUUIDWithAssetUUIDs:(id)a3 predicate:(id)a4 includedDetectionTypes:(id)a5 includeTemporalDetectedFaces:(BOOL)a6 inManagedObjectContext:(id)a7 error:(id *)a8;
+ (id)_predicateForSupportedDetectionTypesForUpload;
+ (id)_predicateForSupportedVerifiedTypesForUpload;
+ (id)_predicateToBlockHiddenGraphTypesForUpload;
+ (id)_stringFromContact:(id)a3 preferGivenName:(BOOL)a4;
+ (id)createUnverifiedPersonInManagedObjectContext:(id)a3;
+ (id)fetchDuplicatePersonUUIDsInManagedObjectContext:(id)a3 error:(id *)a4;
+ (id)fetchFinalMergeTargetPersonForPersonWithUUID:(id)a3 context:(id)a4 predicate:(id)a5;
+ (id)fetchMePersonInManagedObjectContext:(id)a3;
+ (id)fetchPersonCountByAssetUUIDForAssetUUIDs:(id)a3 predicate:(id)a4 includedDetectionTypes:(id)a5 library:(id)a6 error:(id *)a7;
+ (id)fetchPersonsWithUUIDs:(id)a3 managedObjectContext:(id)a4;
+ (id)insertIntoManagedObjectContext:(id)a3 withPersonUUID:(id)a4 fullName:(id)a5 verifiedType:(int)a6;
+ (id)insertIntoPhotoLibrary:(id)a3 withPersonUUID:(id)a4 fullName:(id)a5 verifiedType:(int)a6;
+ (id)isEligibleForSearchIndexingPredicateForLibraryIdentifier:(int64_t)a3;
+ (id)listOfSyncedProperties;
+ (id)personsMatchingPredicate:(id)a3 fetchLimit:(unint64_t)a4 sortDescriptors:(id)a5 relationshipKeyPathsForPrefetching:(id)a6 inManagedObjectContext:(id)a7;
+ (id)personsToPrefetchInManagedObjectContext:(id)a3;
+ (id)personsToUploadInManagedObjectContext:(id)a3 limit:(int64_t)a4;
+ (id)personsWithPersonUri:(id)a3 inManagedObjectContext:(id)a4;
+ (id)personsWithPersonUris:(id)a3 inManagedObjectContext:(id)a4;
+ (id)personsWithUUIDs:(id)a3 inManagedObjectContext:(id)a4;
+ (id)predicateForIncludedDetectionTypes:(id)a3;
+ (id)predicateForPersonsNeedingFaceCropGenerationForFaceObjectID:(id)a3;
+ (id)predicateForVisibleKeyFace;
+ (id)propertiesToFetch;
+ (id)resetAllInLibrary:(id)a3 completion:(id)a4;
+ (void)_resetMediaAnalysisAfterPersonResetInLibraryURL:(id)a3 resetPersons:(BOOL)a4 completion:(id)a5;
+ (void)_setPersonResetInProgress:(BOOL)a3 context:(id)a4;
+ (void)batchFetchAssociatedPersonByFaceGroupUUIDWithFaceGroupUUIDs:(id)a3 predicate:(id)a4 library:(id)a5 completion:(id)a6;
+ (void)batchFetchPersonUUIDsByAssetUUIDWithAssetUUIDs:(id)a3 predicate:(id)a4 includedDetectionTypes:(id)a5 includeTemporalDetectedFaces:(BOOL)a6 inManagedObjectContext:(id)a7 completion:(id)a8;
+ (void)batchFetchPersonsByAssetUUIDWithAssetUUIDs:(id)a3 predicate:(id)a4 includedDetectionTypes:(id)a5 library:(id)a6 completion:(id)a7;
+ (void)createAssociatedPersonForFaceGroup:(id)a3;
+ (void)enumerateAssetUUIDsForSearchIndexingWithDetectedFaceUUIDs:(id)a3 managedObjectContext:(id)a4 assetUUIDHandler:(id)a5;
+ (void)enumerateAssetUUIDsForSearchIndexingWithPersonUUID:(id)a3 managedObjectContext:(id)a4 libraryIdentifier:(int64_t)a5 assetUUIDHandler:(id)a6;
+ (void)resetCloudStateInPhotoLibrary:(id)a3;
- (BOOL)_allowSyncOfChangeWithKey:(id)a3;
- (BOOL)_hideGraphPersonInsteadOfDelete;
- (BOOL)_personResetIsInProgress;
- (BOOL)_updateGroupMembershipFromEdges:(id)a3 mergeTarget:(id)a4 error:(id *)a5;
- (BOOL)_updateSocialGroupMembershipWithPersonsToMerge:(id)a3 mergeTarget:(id)a4;
- (BOOL)dedupeGraphPersons:(id)a3 error:(id *)a4;
- (BOOL)deletePersonWithReason:(signed __int16)a3;
- (BOOL)isEligibleForSearchIndexing;
- (BOOL)isSyncableChange;
- (BOOL)isValidForPersistence;
- (BOOL)shouldIndexOnAssetsForSearch;
- (BOOL)supportsCloudUpload;
- (BOOL)validateDetectionTypesForMergingWithPersons:(id)a3 error:(id *)a4;
- (NSSet)allDetectedFaces;
- (id)cplPersonChange;
- (id)debugLogDescription;
- (id)edgesIn;
- (id)edgesOut;
- (id)faceGroupDescription;
- (id)finalMergeTargetPerson;
- (id)payloadForChangedKeys:(id)a3;
- (id)payloadID;
- (id)payloadIDForTombstone:(id)a3;
- (id)pickKeyFaceOptimalStateForContactDedupeWithPersons:(id)a3;
- (id)pickOptimalStateForUserInitiatedMergeWithPersons:(id)a3 nominalTarget:(id)a4;
- (id)reverseOrderedMergeTargetPersons;
- (id)scopeIdentifier;
- (id)scopedIdentifier;
- (id)syncDescription;
- (void)_basicMergePersons:(id)a3;
- (void)_logMergeDetailsForPerson:(id)a3;
- (void)_moveAllFacesToFinalMergeTarget;
- (void)_removeSharedLibraryPeopleRulesForPerson;
- (void)_signalBackgroundPersonNeededForPersonSyncWithJobFlags:(int64_t)a3;
- (void)_updateSharedLibraryPeopleRulesForTombstone;
- (void)applyCPLChangeForContactMatchingDictionary:(id)a3;
- (void)assignDetectionTypeFromFaces;
- (void)basicMergePersons:(id)a3;
- (void)createUnverifiedPersonForRejectedFaceUUIDs:(id)a3 inManagedObjectContext:(id)a4;
- (void)didSave;
- (void)disconnectFaceGroup;
- (void)mergePersons:(id)a3 withOptimalState:(id)a4;
- (void)persistMetadataToFileSystemWithPathManager:(id)a3;
- (void)prepareForDeletion;
- (void)prepareForUserInitiatedMergeWithPersons:(id)a3;
- (void)rejectFaceIfPossible:(id)a3 shouldCreateFaceCrop:(BOOL)a4;
- (void)removePersistedFileSystemDataWithPathManager:(id)a3;
- (void)resetAllFacesToDefault;
- (void)resetFacesProcessing;
- (void)setCPLSyncedMergeTarget:(id)a3;
- (void)setEffectiveVerifiedType:(int)a3;
- (void)setKeyFace:(id)a3 pickSource:(signed __int16)a4;
- (void)updateDetectionTypeIfNeeded;
- (void)willSave;
@end

@implementation PLPerson

- (BOOL)isEligibleForSearchIndexing
{
  if (([(PLPerson *)self isDeleted]& 1) != 0)
  {
    return 0;
  }

  v4 = objc_opt_class();
  v5 = [(PLManagedObject *)self photoLibrary];
  v6 = [v4 isEligibleForSearchIndexingPredicateForLibraryIdentifier:{+[PLSpotlightDonationUtilities wellKnownPhotoLibraryIdentifierFromPLPhotoLibrary:](PLSpotlightDonationUtilities, "wellKnownPhotoLibraryIdentifierFromPLPhotoLibrary:", v5)}];
  if ([v6 evaluateWithObject:self])
  {
    v7 = [(PLPerson *)self fullName];
    v3 = [v7 length] != 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)shouldIndexOnAssetsForSearch
{
  v3 = [(PLPerson *)self verifiedType];
  if (v3 != 1)
  {
    LOBYTE(v3) = [(PLPerson *)self verifiedType]== 2;
  }

  return v3;
}

+ (id)fetchPersonsWithUUIDs:(id)a3 managedObjectContext:(id)a4
{
  v6 = a3;
  v7 = MEMORY[0x1E695D5E0];
  v8 = a4;
  v9 = +[PLPerson entityName];
  v10 = [v7 fetchRequestWithEntityName:v9];

  v11 = [a1 propertiesToFetch];
  [v10 setPropertiesToFetch:v11];

  [v10 setIncludesPendingChanges:0];
  if ([v6 count] >= 0x65)
  {
    [v10 setFetchBatchSize:100];
  }

  v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"personUUID", v6];
  [v10 setPredicate:v12];

  [v10 setFetchLimit:{objc_msgSend(v6, "count")}];
  v17 = 0;
  v13 = [v8 executeFetchRequest:v10 error:&v17];

  v14 = v17;
  if (v13)
  {
    [MEMORY[0x1E69BF2D0] successWithResult:v13];
  }

  else
  {
    [MEMORY[0x1E69BF2D0] failureWithError:v14];
  }
  v15 = ;

  return v15;
}

+ (id)propertiesToFetch
{
  v4[2] = *MEMORY[0x1E69E9840];
  v4[0] = @"personUUID";
  v4[1] = @"fullName";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:2];

  return v2;
}

+ (void)enumerateAssetUUIDsForSearchIndexingWithDetectedFaceUUIDs:(id)a3 managedObjectContext:(id)a4 assetUUIDHandler:(id)a5
{
  v19[1] = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = MEMORY[0x1E695D5E0];
  v10 = a3;
  v11 = +[PLDetectedFace entityName];
  v12 = [v9 fetchRequestWithEntityName:v11];

  v19[0] = @"assetForFace";
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  [v12 setRelationshipKeyPathsForPrefetching:v13];

  v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"uuid IN %@", v10];

  [v12 setPredicate:v14];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __121__PLPerson_SearchIndex__enumerateAssetUUIDsForSearchIndexingWithDetectedFaceUUIDs_managedObjectContext_assetUUIDHandler___block_invoke;
  v17[3] = &unk_1E7570E20;
  v18 = v8;
  v15 = v8;
  v16 = [v7 enumerateObjectsFromFetchRequest:v12 count:0 usingDefaultBatchSizeWithBlock:v17];
}

void __121__PLPerson_SearchIndex__enumerateAssetUUIDsForSearchIndexingWithDetectedFaceUUIDs_managedObjectContext_assetUUIDHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v12 = a2;
  v7 = [v12 assetForFace];
  v8 = v7;
  if (v7)
  {
    v9 = *(a1 + 32);
    v10 = [v7 uuid];
    v11 = [v12 uuid];
    (*(v9 + 16))(v9, v10, v11, a3, a4);
  }
}

+ (void)enumerateAssetUUIDsForSearchIndexingWithPersonUUID:(id)a3 managedObjectContext:(id)a4 libraryIdentifier:(int64_t)a5 assetUUIDHandler:(id)a6
{
  v56 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [v9 length];
  if (v11 && v10 && v12)
  {
    v13 = +[PLPerson fetchRequest];
    [v13 setResultType:1];
    v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %@", @"personUUID", v9];
    [v13 setPredicate:v14];

    v48 = 0;
    v15 = [v10 executeFetchRequest:v13 error:&v48];
    v16 = v48;
    v17 = [v15 firstObject];
    if (v17)
    {
      v43 = a5;
      v18 = MEMORY[0x1E695D5E0];
      v19 = +[PLDetectedFace entityName];
      v20 = [v18 fetchRequestWithEntityName:v19];

      [v20 setResultType:2];
      v51 = @"assetForFace";
      v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v51 count:1];
      [v20 setPropertiesToFetch:v21];

      v44 = v17;
      v22 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@ OR %K == %@", @"personForFace", v17, @"personForTemporalDetectedFaces", v17];
      [v20 setPredicate:v22];

      v47 = v16;
      v23 = [v10 executeFetchRequest:v20 error:&v47];
      v24 = v47;

      if (v23)
      {
        v25 = [v23 _pl_map:&__block_literal_global_70682];
        v41 = v24;
        v42 = v15;
        v26 = MEMORY[0x1E695D5E0];
        +[PLManagedAsset entityName];
        v27 = v39 = v23;
        v28 = [v26 fetchRequestWithEntityName:v27];

        [v28 setResultType:2];
        v50 = @"uuid";
        v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v50 count:1];
        [v28 setPropertiesToFetch:v29];

        v30 = MEMORY[0x1E696AB28];
        v40 = v13;
        v31 = v25;
        v32 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", v25];
        v49[0] = v32;
        v33 = [PLManagedAsset isEligibleForSearchIndexingPredicateForLibraryIdentifier:v43];
        v49[1] = v33;
        v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:2];
        v35 = [v30 andPredicateWithSubpredicates:v34];
        [v28 setPredicate:v35];

        v36 = v31;
        v13 = v40;

        v15 = v42;
        v37 = v39;
        v45[0] = MEMORY[0x1E69E9820];
        v45[1] = 3221225472;
        v45[2] = __132__PLPerson_SearchIndex__enumerateAssetUUIDsForSearchIndexingWithPersonUUID_managedObjectContext_libraryIdentifier_assetUUIDHandler___block_invoke_2;
        v45[3] = &unk_1E7570DF8;
        v46 = v11;
        v38 = [v10 enumerateObjectsFromFetchRequest:v28 count:0 usingDefaultBatchSizeWithBlock:v45];

        v24 = v41;
      }

      else
      {
        v37 = 0;
        v36 = PLBackendGetLog();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v53 = v9;
          v54 = 2112;
          v55 = v24;
          _os_log_impl(&dword_19BF1F000, v36, OS_LOG_TYPE_ERROR, "Failed to fetch asset IDs for person with UUID %{public}@. Error: %@", buf, 0x16u);
        }
      }

      v17 = v44;
    }

    else
    {
      v20 = PLBackendGetLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v53 = v9;
        v54 = 2112;
        v55 = v16;
        _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_ERROR, "Cannot find person with uuid %{public}@. Error: %@", buf, 0x16u);
      }

      v24 = v16;
    }
  }
}

void __132__PLPerson_SearchIndex__enumerateAssetUUIDsForSearchIndexingWithPersonUUID_managedObjectContext_libraryIdentifier_assetUUIDHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKey:@"uuid"];
  (*(*(a1 + 32) + 16))();
}

+ (id)isEligibleForSearchIndexingPredicateForLibraryIdentifier:(int64_t)a3
{
  if (a3 == 3)
  {
    [MEMORY[0x1E696AE18] predicateWithValue:0];
  }

  else
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d OR %K == %d", @"verifiedType", 1, @"verifiedType", 2];
  }
  v3 = ;

  return v3;
}

- (id)payloadIDForTombstone:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"personUUID"];
  v4 = [PLJournalEntryPayloadIDFactory payloadIDWithUUIDString:v3];

  return v4;
}

- (id)payloadForChangedKeys:(id)a3
{
  v4 = a3;
  if ([(PLPerson *)self isValidForPersistence])
  {
    v5 = [(PLManagedObjectJournalEntryPayload *)[PLPersonJournalEntryPayload alloc] initWithManagedObject:self changedKeys:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)payloadID
{
  v2 = [(PLPerson *)self personUUID];
  v3 = [PLJournalEntryPayloadIDFactory payloadIDWithUUIDString:v2];

  return v3;
}

- (id)edgesIn
{
  v2 = [PLGraphNode nodeForActingObject:self createIfMissing:0];
  v3 = [v2 edgesIn];

  return v3;
}

- (id)edgesOut
{
  v2 = [PLGraphNode nodeForActingObject:self createIfMissing:0];
  v3 = [v2 edgesOut];

  return v3;
}

- (BOOL)_hideGraphPersonInsteadOfDelete
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = [(PLPerson *)self verifiedType];
  if (v3 == 2)
  {
    v4 = PLBackendGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(PLPerson *)self personUUID];
      *buf = 138543362;
      v24 = v5;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "Hiding graph person instead of delete: %{public}@", buf, 0xCu);
    }

    [(PLPerson *)self setType:0xFFFFFFFFLL];
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = [(PLPerson *)self faceCrops];
    v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v19;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v18 + 1) + 8 * i);
          v12 = [v11 face];
          v13 = v12;
          if (v12)
          {
            v14 = [v12 managedObjectContext];
            [v14 deleteObject:v13];
          }

          if (![v11 state])
          {
            [v11 setState:1];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v8);
    }

    v15 = [MEMORY[0x1E695DFD8] set];
    [(PLPerson *)self setDetectedFaces:v15];

    v16 = [MEMORY[0x1E695DFD8] set];
    [(PLPerson *)self setTemporalDetectedFaces:v16];
  }

  return v3 == 2;
}

- (BOOL)deletePersonWithReason:(signed __int16)a3
{
  v3 = a3;
  *&v13[5] = *MEMORY[0x1E69E9840];
  if (a3 != 6)
  {
    v6 = PLBackendGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(PLPerson *)self personUUID];
      *buf = 67109378;
      v13[0] = v3;
      LOWORD(v13[1]) = 2114;
      *(&v13[1] + 2) = v7;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "Delete person with reason %d: %{public}@", buf, 0x12u);
    }
  }

  if (![(PLPerson *)self isDeleted])
  {
    *(&self->super._willSaveCallCount + 1) = v3;
    if (_os_feature_enabled_impl())
    {
      v10 = [PLSocialGroup deleteSocialGroupsHavingMember:self];
    }

    else
    {
      v10 = 1;
    }

    if (v3 <= 9)
    {
      if (((1 << v3) & 0x19E) != 0 || ((1 << v3) & 0x240) != 0)
      {
LABEL_15:
        v8 = [(PLPerson *)self managedObjectContext];
        [v8 deleteObject:self];
        goto LABEL_16;
      }

      if (v3 == 5)
      {
        if ([(PLPerson *)self _hideGraphPersonInsteadOfDelete])
        {
          return v10;
        }

        goto LABEL_15;
      }
    }

    if (v3)
    {
      return 0;
    }

    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PLPerson.m" lineNumber:2110 description:@"Invalid parameter not satisfying: %@", @"reason != PLPersonDeleteReasonNone"];
    goto LABEL_8;
  }

  v8 = PLBackendGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(PLPerson *)self personUUID];
    *buf = 138543362;
    *v13 = v9;
    _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "Person already deleted: %{public}@", buf, 0xCu);
  }

LABEL_8:
  v10 = 0;
LABEL_16:

  return v10;
}

- (BOOL)dedupeGraphPersons:(id)a3 error:(id *)a4
{
  v55 = *MEMORY[0x1E69E9840];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v6 = a3;
  v7 = [v6 countByEnumeratingWithState:&v44 objects:v54 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v45;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v45 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v44 + 1) + 8 * i);
        if ([v11 verifiedType] != 2)
        {
          v18 = MEMORY[0x1E696AEC0];
          v19 = [v11 personUUID];
          v20 = [v18 stringWithFormat:@"Attempting to dedupe non-graph person (uuid = %@), caller should refetch persons and respond appropriately", v19];

          v21 = MEMORY[0x1E696ABC0];
          v22 = *MEMORY[0x1E69BFF48];
          v52 = *MEMORY[0x1E696A578];
          v53 = v20;
          v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
          v24 = [v21 errorWithDomain:v22 code:0 userInfo:v23];

          v25 = 0;
          goto LABEL_39;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v44 objects:v54 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  if ([(PLPerson *)self keyFacePickSource]!= 1)
  {
    [v6 sortedArrayUsingComparator:&__block_literal_global_399_110682];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v12 = v43 = 0u;
    v13 = [v12 countByEnumeratingWithState:&v40 objects:v51 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v41;
LABEL_12:
      v16 = 0;
      while (1)
      {
        if (*v41 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v40 + 1) + 8 * v16);
        if ([v17 keyFacePickSource] == 1)
        {
          break;
        }

        if (v14 == ++v16)
        {
          v14 = [v12 countByEnumeratingWithState:&v40 objects:v51 count:16];
          if (v14)
          {
            goto LABEL_12;
          }

          goto LABEL_18;
        }
      }

      v26 = [v17 keyFace];

      if (!v26)
      {
        goto LABEL_26;
      }

      if ((*MEMORY[0x1E6994D48] & 1) == 0)
      {
        v27 = __CPLAssetsdOSLogDomain();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v50 = v26;
          _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_DEFAULT, "Dedupe target does not have a picked key face, assigning new picked key face %@", buf, 0xCu);
        }
      }

      [(PLPerson *)self setKeyFace:v26 pickSource:1];
      v28 = [(PLPerson *)self mutableFaces];
      [v28 addObject:v26];

      [v26 fixPersonRelationshipsForFaceTorsoOrTemporal];
    }

    else
    {
LABEL_18:

LABEL_26:
      if (*MEMORY[0x1E6994D48])
      {
        goto LABEL_30;
      }

      v26 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_DEFAULT, "Unable to find picked key face from dedupe persons", buf, 2u);
      }
    }

LABEL_30:
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v29 = v6;
  v30 = [v29 countByEnumeratingWithState:&v36 objects:v48 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v37;
    do
    {
      for (j = 0; j != v31; ++j)
      {
        if (*v37 != v32)
        {
          objc_enumerationMutation(v29);
        }

        [*(*(&v36 + 1) + 8 * j) deletePersonWithReason:5];
      }

      v31 = [v29 countByEnumeratingWithState:&v36 objects:v48 count:16];
    }

    while (v31);
  }

  v24 = 0;
  v25 = 1;
LABEL_39:

  if (a4)
  {
    v34 = v24;
    *a4 = v24;
  }

  return v25;
}

uint64_t __37__PLPerson_dedupeGraphPersons_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 personUUID];
  v6 = [v4 personUUID];

  v7 = [v5 compare:v6];
  return v7;
}

- (BOOL)validateDetectionTypesForMergingWithPersons:(id)a3 error:(id *)a4
{
  v52 = *MEMORY[0x1E69E9840];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v6 = a3;
  v7 = [v6 countByEnumeratingWithState:&v37 objects:v51 count:16];
  if (v7)
  {
    v8 = v7;
    v35 = a4;
    v9 = *v38;
    v10 = 0x1E755F000uLL;
    v11 = MEMORY[0x1E6994D48];
    v36 = v6;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v38 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v37 + 1) + 8 * i);
        v14 = [(PLPerson *)self detectionType];
        if (v14 != [v13 detectionType])
        {
          if (-[PLPerson detectionType](self, "detectionType") == 1 && ([*(v10 + 3200) isPetDetectionType:{objc_msgSend(v13, "detectionType")}] & 1) != 0 || objc_msgSend(*(v10 + 3200), "isPetDetectionType:", -[PLPerson detectionType](self, "detectionType")) && objc_msgSend(v13, "detectionType") == 1)
          {
            v24 = MEMORY[0x1E696AEC0];
            v25 = [(PLPerson *)self personUUID];
            v26 = [(PLPerson *)self detectionType];
            v27 = [v13 personUUID];
            v28 = [v24 stringWithFormat:@"Preventing merge persons of different detection types: %@ (%hd) - %@ (%hd)", v25, v26, v27, objc_msgSend(v13, "detectionType")];

            if ((*v11 & 1) == 0)
            {
              v29 = __CPLAssetsdOSLogDomain();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                v42 = v28;
                _os_log_impl(&dword_19BF1F000, v29, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
              }
            }

            v30 = MEMORY[0x1E696ABC0];
            v31 = *MEMORY[0x1E69BFF48];
            v49 = *MEMORY[0x1E696A278];
            v50 = v28;
            v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
            v33 = [v30 errorWithDomain:v31 code:41005 userInfo:v32];
            if (v35)
            {
              v33 = v33;
              *v35 = v33;
            }

            v23 = 0;
            goto LABEL_25;
          }

          if ((*v11 & 1) == 0)
          {
            v15 = __CPLAssetsdOSLogDomain();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              v16 = [(PLPerson *)self personUUID];
              v17 = [(PLPerson *)self detectionType];
              [v13 personUUID];
              v18 = v10;
              v19 = v8;
              v21 = v20 = v9;
              v22 = [v13 detectionType];
              *buf = 138544130;
              v42 = v16;
              v43 = 1024;
              v44 = v17;
              v45 = 2114;
              v46 = v21;
              v47 = 1024;
              v48 = v22;
              _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_DEFAULT, "Merging persons of different detection types: %{public}@ (%hd) - %{public}@ (%hd)", buf, 0x22u);

              v9 = v20;
              v8 = v19;
              v10 = v18;

              v6 = v36;
              v11 = MEMORY[0x1E6994D48];
            }
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v37 objects:v51 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v23 = 1;
LABEL_25:

  return v23;
}

- (void)mergePersons:(id)a3 withOptimalState:(id)a4
{
  v44 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v33 = a4;
  context = objc_autoreleasePoolPush();
  [(PLPerson *)self basicMergePersons:v6];
  v31 = [(PLPerson *)self finalMergeTargetPerson];
  v7 = [(PLPerson *)self mergeCandidates];
  v8 = [v7 mutableCopy];

  v9 = [(PLPerson *)self mergeCandidatesWithConfidence];
  v10 = [v9 mutableCopy];

  v11 = [(PLPerson *)self invalidMergeCandidates];
  v12 = [v11 mutableCopy];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v13 = v6;
  v14 = [v13 countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v39;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v39 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v38 + 1) + 8 * i);
        v19 = [v18 mergeCandidates];
        v20 = [v19 allObjects];
        [v8 addObjectsFromArray:v20];

        v21 = [v18 mergeCandidatesWithConfidence];
        v22 = [v21 allObjects];
        [v10 addObjectsFromArray:v22];

        v23 = [v18 invalidMergeCandidates];
        v24 = [v23 allObjects];
        [v12 addObjectsFromArray:v24];
      }

      v15 = [v13 countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v15);
  }

  [v8 removeObject:v31];
  [v10 removeObject:v31];
  [v12 removeObject:v31];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v25 = v12;
  v26 = [v25 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v35;
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v35 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v34 + 1) + 8 * j);
        [v8 removeObject:v30];
        [v10 removeObject:v30];
      }

      v27 = [v25 countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v27);
  }

  [v31 setMergeCandidates:v8];
  [v31 setMergeCandidatesWithConfidence:v10];
  [v31 setInvalidMergeCandidates:v25];
  [v31 setValuesForKeysWithDictionary:v33];

  objc_autoreleasePoolPop(context);
}

- (void)basicMergePersons:(id)a3
{
  v5 = a3;
  v4 = [(PLPerson *)self finalMergeTargetPerson];
  if (_os_feature_enabled_impl())
  {
    [(PLPerson *)self _updateSocialGroupMembershipWithPersonsToMerge:v5 mergeTarget:v4];
  }

  [v4 _basicMergePersons:v5];
}

- (BOOL)_updateSocialGroupMembershipWithPersonsToMerge:(id)a3 mergeTarget:(id)a4
{
  v28[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(PLPerson *)self managedObjectContext];
  v9 = [v8 pl_graphCache];

  v10 = [(PLPerson *)self managedObjectContext];
  v11 = [v9 labelWithCode:1000 inContext:v10];

  if (v11)
  {
    v12 = +[PLGraphEdge fetchRequest];
    v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(%K = %@) AND (%K in %@)", @"sourceNode.primaryLabel", v11, @"targetPerson", v6];
    [v12 setPredicate:v13];

    [v12 setResultType:0];
    v28[0] = @"sourceNode";
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
    [v12 setRelationshipKeyPathsForPrefetching:v14];

    v15 = [(PLPerson *)self managedObjectContext];
    v25 = 0;
    v16 = [v15 executeFetchRequest:v12 error:&v25];
    v17 = v25;

    v18 = v16 != 0;
    if (!v16)
    {
      v19 = PLBackendGetLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v27 = v17;
        _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_ERROR, "Error fetching social group edges during person merge: %@", buf, 0xCu);
      }
    }

    if ([v16 count])
    {
      v24 = v17;
      v20 = [(PLPerson *)self _updateGroupMembershipFromEdges:v16 mergeTarget:v7 error:&v24];
      v21 = v24;

      if (!v20)
      {
        v22 = PLBackendGetLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v27 = v21;
          _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_ERROR, "Error adding/ removing members during person merge: %@", buf, 0xCu);
        }

        v18 = 0;
      }
    }

    else
    {
      v21 = v17;
    }
  }

  else
  {
    v12 = PLBackendGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "Error getting social group label during person merge", buf, 2u);
    }

    v18 = 0;
  }

  return v18;
}

- (BOOL)_updateGroupMembershipFromEdges:(id)a3 mergeTarget:(id)a4 error:(id *)a5
{
  v41 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v32 = a4;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v9)
  {
    v10 = v9;
    v29 = a5;
    v33 = 0;
    v11 = *v37;
    v31 = v8;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v37 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v36 + 1) + 8 * i);
        v14 = objc_autoreleasePoolPush();
        v15 = [v13 sourceNode];
        v16 = v15;
        if (v15 && ([v15 isDeleted] & 1) == 0)
        {
          v17 = [(PLGraphNodeContainer *)PLSocialGroup newNodeContainerWithNode:v16];
          v18 = [v13 targetPerson];
          v35 = v33;
          v19 = [v17 removeMember:v18 error:&v35];
          v20 = v35;

          if (!v19)
          {
            goto LABEL_18;
          }

          v34 = v20;
          v21 = [v17 addMember:v32 error:&v34];
          v33 = v34;

          if (!v21)
          {
            v20 = v33;
LABEL_18:

            objc_autoreleasePoolPop(v14);
            v8 = v31;

            v26 = v20;
            if (v29)
            {
              v26 = v26;
              v25 = 0;
              *v29 = v26;
            }

            else
            {
              v25 = 0;
            }

            v27 = v26;
            goto LABEL_22;
          }

          v22 = [v17 members];
          v23 = [v22 count];

          if (v23 <= 1)
          {
            v24 = [(PLPerson *)self managedObjectContext];
            [v24 deleteObject:v16];
          }

          v8 = v31;
        }

        objc_autoreleasePoolPop(v14);
      }

      v10 = [v8 countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }

    v25 = 1;
    v26 = v8;
    v27 = v33;
LABEL_22:
  }

  else
  {
    v25 = 1;
    v27 = v8;
  }

  return v25;
}

- (void)_logMergeDetailsForPerson:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 personUri];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = v5;
  v7 = [(PLPerson *)self personUri];
  if (v7)
  {
    v8 = v7;
    v9 = [v4 personUri];
    v10 = [(PLPerson *)self personUri];
    v11 = [v9 isEqualToString:v10];

    if (v11)
    {
LABEL_4:
      v12 = [v4 contactMatchingDictionary];
      v13 = [(PLPerson *)self contactMatchingDictionary];

      if (!v12)
      {
        if (v13)
        {
          if ((*MEMORY[0x1E6994D48] & 1) == 0)
          {
            v15 = __CPLAssetsdOSLogDomain();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              v22 = [v4 personUUID];
              v23 = [(PLPerson *)self personUUID];
              v24 = [(PLPerson *)self contactMatchingDictionary];
              v25 = [v24 allKeys];
              v26 = [v25 componentsJoinedByString:{@", "}];
              v32 = 138543874;
              v33 = v22;
              v34 = 2114;
              v35 = v23;
              v36 = 2114;
              v37 = v26;
              _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_DEFAULT, "Merging Persons: merge source %{public}@ has nil contactMatchingDictionary but target person %{public}@ has these keys: %{public}@", &v32, 0x20u);
            }

            goto LABEL_14;
          }
        }

        else if ((*MEMORY[0x1E6994D48] & 1) == 0)
        {
          v15 = __CPLAssetsdOSLogDomain();
          if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_14;
          }

          v16 = [v4 personUUID];
          v31 = [(PLPerson *)self personUUID];
          v32 = 138543618;
          v33 = v16;
          v34 = 2114;
          v35 = v31;
          _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_DEFAULT, "Merging Persons: %{public}@ -> %{public}@ both have nil contactMatchingDictionary", &v32, 0x16u);

          goto LABEL_13;
        }

        v12 = 0;
        goto LABEL_15;
      }

      if (!v13)
      {
        if (*MEMORY[0x1E6994D48])
        {
          goto LABEL_15;
        }

        v15 = __CPLAssetsdOSLogDomain();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v27 = [(PLPerson *)self personUUID];
          v28 = [v4 personUUID];
          v29 = [v12 allKeys];
          v30 = [v29 componentsJoinedByString:{@", "}];
          v32 = 138543874;
          v33 = v27;
          v34 = 2114;
          v35 = v28;
          v36 = 2114;
          v37 = v30;
          _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_DEFAULT, "Merging Persons: target person %{public}@ has nil contactMatchingDictionary but merge source %{public}@ has these keys: %{public}@", &v32, 0x20u);
        }

        goto LABEL_14;
      }

      v14 = [(PLPerson *)self contactMatchingDictionary];
      v15 = [PLContactStoreUtilitiesWorkaround compareContactMatchingDictionary:v12 withDictionary:v14];

      if (*MEMORY[0x1E6994D48])
      {
LABEL_14:

        goto LABEL_15;
      }

      v16 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [v4 personUUID];
        v18 = [(PLPerson *)self personUUID];
        v19 = [PLContactStoreUtilitiesWorkaround comparisonDictionaryDescription:v15];
        v32 = 138543874;
        v33 = v17;
        v34 = 2114;
        v35 = v18;
        v36 = 2114;
        v37 = v19;
        _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEFAULT, "Merging Persons: %{public}@ -> %{public}@ comparing contactMatchingDictionary (left=tombstone : right=target) contents: %{public}@", &v32, 0x20u);
      }

LABEL_13:

      goto LABEL_14;
    }
  }

  else
  {
  }

  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v12 = __CPLAssetsdOSLogDomain();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
LABEL_15:

      goto LABEL_16;
    }

    v15 = [v4 personUUID];
    v16 = [(PLPerson *)self personUUID];
    v20 = [v4 personUri];
    v21 = [(PLPerson *)self personUri];
    v32 = 138544130;
    v33 = v15;
    v34 = 2114;
    v35 = v16;
    v36 = 2114;
    v37 = v20;
    v38 = 2114;
    v39 = v21;
    _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "Merging Persons %{public}@ -> %{public}@ with different Contact identifiers: %{public}@ -> %{public}@", &v32, 0x2Au);

    goto LABEL_13;
  }

LABEL_16:
}

- (void)_basicMergePersons:(id)a3
{
  v176 = *MEMORY[0x1E69E9840];
  v4 = a3;
  context = objc_autoreleasePoolPush();
  v112 = [(PLPerson *)self managedObjectContext];
  v119 = [MEMORY[0x1E695DF70] array];
  v153 = 0u;
  v154 = 0u;
  v155 = 0u;
  v156 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v153 objects:v175 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v154;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v154 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v153 + 1) + 8 * i);
        v12 = [(PLPerson *)self personUUID];
        v13 = [v11 personUUID];
        v14 = [v12 isEqualToString:v13];

        if (v14)
        {
          if ((*MEMORY[0x1E6994D48] & 1) == 0)
          {
            v15 = __CPLAssetsdOSLogDomain();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              v16 = [(PLPerson *)self personUUID];
              *buf = 138543362;
              v165 = v16;
              _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "Person to merge should never be the same as the target person, aborting merge, personUUID = %{public}@", buf, 0xCu);
            }
          }
        }

        else if ([(PLPerson *)self validateDetectionTypesForMergingWithPersons:v5 error:0])
        {
          if (v8)
          {
            v8 = 1;
          }

          else if ([v11 verifiedType] == 1)
          {
            v8 = 1;
            [(PLPerson *)self setVerifiedType:1];
          }

          else
          {
            v8 = 0;
          }

          [v119 addObject:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v153 objects:v175 count:16];
    }

    while (v7);
  }

  v17 = v119;
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v18 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v17 valueForKey:@"personUUID"];
      v20 = [(PLPerson *)self personUUID];
      *buf = 138543618;
      v165 = v19;
      v166 = 2114;
      v167 = v20;
      _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEFAULT, "Merging Person(s) %{public}@ to %{public}@", buf, 0x16u);
    }
  }

  v120 = [MEMORY[0x1E695DFA8] set];
  v21 = [MEMORY[0x1E695DFA8] set];
  v118 = [MEMORY[0x1E695DFA8] set];
  v149 = 0u;
  v150 = 0u;
  v151 = 0u;
  v152 = 0u;
  obj = v17;
  v22 = [obj countByEnumeratingWithState:&v149 objects:v174 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v150;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v150 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v149 + 1) + 8 * j);
        v27 = [v26 rejectedFaces];
        v28 = [v27 valueForKey:@"objectID"];

        [v120 unionSet:v28];
        v29 = [v26 allDetectedFaces];
        v30 = [v29 valueForKey:@"objectID"];

        [v21 unionSet:v30];
        v31 = [v26 rejectedFacesNeedingFaceCrops];
        v32 = [v31 valueForKey:@"objectID"];

        [v118 unionSet:v32];
      }

      v23 = [obj countByEnumeratingWithState:&v149 objects:v174 count:16];
    }

    while (v23);
  }

  v33 = [(PLPerson *)self allDetectedFaces];
  v34 = [v33 valueForKey:@"objectID"];

  v35 = [(PLPerson *)self rejectedFaces];
  v36 = [v35 valueForKey:@"objectID"];

  v37 = [(PLPerson *)self rejectedFacesNeedingFaceCrops];
  v38 = [v37 valueForKey:@"objectID"];

  v116 = [v36 mutableCopy];
  [v116 intersectSet:v21];
  v39 = [v120 mutableCopy];
  [v39 minusSet:v21];
  v108 = v36;
  [v39 minusSet:v36];
  [v39 minusSet:v34];
  v40 = [v118 mutableCopy];
  [v40 minusSet:v21];
  v111 = v38;
  [v40 minusSet:v38];
  v109 = v34;
  [v40 minusSet:v34];
  v41 = v112;
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v42 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v43 = [v21 count];
      v44 = v40;
      v45 = [v116 count];
      v46 = [v39 count];
      v47 = v39;
      v48 = [v111 count];
      v49 = [(PLPerson *)self personUUID];
      *buf = 134219010;
      v165 = v43;
      v166 = 2048;
      v167 = v45;
      v40 = v44;
      v168 = 2048;
      v169 = v46;
      v170 = 2048;
      v171 = v48;
      v39 = v47;
      v172 = 2114;
      v173 = v49;
      _os_log_impl(&dword_19BF1F000, v42, OS_LOG_TYPE_DEFAULT, "Adding %lu faces, unreject %lu faces, adding %lu rejectedFaces, %lu rejectedFacesNeedingFaceCrops to %{public}@", buf, 0x34u);

      v41 = v112;
    }
  }

  v147 = 0u;
  v148 = 0u;
  v145 = 0u;
  v146 = 0u;
  v50 = v21;
  v51 = [v50 countByEnumeratingWithState:&v145 objects:v163 count:16];
  if (v51)
  {
    v52 = v51;
    v53 = *v146;
    do
    {
      for (k = 0; k != v52; ++k)
      {
        if (*v146 != v53)
        {
          objc_enumerationMutation(v50);
        }

        v55 = [v41 objectWithID:*(*(&v145 + 1) + 8 * k)];
        v56 = [(PLPerson *)self mutableFaces];
        [v56 addObject:v55];

        [v55 fixPersonRelationshipsForFaceTorsoOrTemporal];
      }

      v52 = [v50 countByEnumeratingWithState:&v145 objects:v163 count:16];
    }

    while (v52);
  }

  v143 = 0u;
  v144 = 0u;
  v141 = 0u;
  v142 = 0u;
  v117 = v116;
  v57 = [v117 countByEnumeratingWithState:&v141 objects:v162 count:16];
  if (v57)
  {
    v58 = v57;
    v59 = *v142;
    do
    {
      for (m = 0; m != v58; ++m)
      {
        if (*v142 != v59)
        {
          objc_enumerationMutation(v117);
        }

        v61 = [v41 objectWithID:*(*(&v141 + 1) + 8 * m)];
        v62 = [(PLPerson *)self mutableRejectedFaces];
        [v62 removeObject:v61];
      }

      v58 = [v117 countByEnumeratingWithState:&v141 objects:v162 count:16];
    }

    while (v58);
  }

  v139 = 0u;
  v140 = 0u;
  v137 = 0u;
  v138 = 0u;
  v114 = v39;
  v63 = [v114 countByEnumeratingWithState:&v137 objects:v161 count:16];
  if (v63)
  {
    v64 = v63;
    v65 = *v138;
    do
    {
      for (n = 0; n != v64; ++n)
      {
        if (*v138 != v65)
        {
          objc_enumerationMutation(v114);
        }

        v67 = [v41 objectWithID:*(*(&v137 + 1) + 8 * n)];
        v68 = [(PLPerson *)self mutableRejectedFaces];
        [v68 addObject:v67];
      }

      v64 = [v114 countByEnumeratingWithState:&v137 objects:v161 count:16];
    }

    while (v64);
  }

  v135 = 0u;
  v136 = 0u;
  v133 = 0u;
  v134 = 0u;
  v113 = v40;
  v69 = [v113 countByEnumeratingWithState:&v133 objects:v160 count:16];
  if (v69)
  {
    v70 = v69;
    v71 = *v134;
    do
    {
      for (ii = 0; ii != v70; ++ii)
      {
        if (*v134 != v71)
        {
          objc_enumerationMutation(v113);
        }

        v73 = [v41 objectWithID:*(*(&v133 + 1) + 8 * ii)];
        v74 = [(PLPerson *)self mutableRejectedFacesNeedingFaceCrops];
        [v74 addObject:v73];
      }

      v70 = [v113 countByEnumeratingWithState:&v133 objects:v160 count:16];
    }

    while (v70);
  }

  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v75 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
    {
      v76 = [(PLPerson *)self personUUID];
      v77 = [(PLPerson *)self faceCrops];
      v78 = [v77 count];
      *buf = 138543618;
      v165 = v76;
      v166 = 2048;
      v167 = v78;
      _os_log_impl(&dword_19BF1F000, v75, OS_LOG_TYPE_DEFAULT, "Person %{public}@ has %lu faceCrops before merging", buf, 0x16u);
    }
  }

  v107 = v50;
  v131 = 0u;
  v132 = 0u;
  v129 = 0u;
  v130 = 0u;
  v79 = obj;
  v80 = [v79 countByEnumeratingWithState:&v129 objects:v159 count:16];
  if (v80)
  {
    v81 = v80;
    v82 = *v130;
    do
    {
      for (jj = 0; jj != v81; ++jj)
      {
        if (*v130 != v82)
        {
          objc_enumerationMutation(v79);
        }

        v84 = *(*(&v129 + 1) + 8 * jj);
        v85 = [v84 faceCrops];
        v125 = 0u;
        v126 = 0u;
        v127 = 0u;
        v128 = 0u;
        v86 = [v85 countByEnumeratingWithState:&v125 objects:v158 count:16];
        if (v86)
        {
          v87 = v86;
          v88 = *v126;
          do
          {
            for (kk = 0; kk != v87; ++kk)
            {
              if (*v126 != v88)
              {
                objc_enumerationMutation(v85);
              }

              [*(*(&v125 + 1) + 8 * kk) setState:0];
            }

            v87 = [v85 countByEnumeratingWithState:&v125 objects:v158 count:16];
          }

          while (v87);
        }

        v90 = [v84 faceCrops];
        v91 = [v90 allObjects];

        if ((*MEMORY[0x1E6994D48] & 1) == 0)
        {
          v92 = __CPLAssetsdOSLogDomain();
          if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
          {
            v93 = [v91 count];
            *buf = 134218242;
            v165 = v93;
            v166 = 2112;
            v167 = v84;
            _os_log_impl(&dword_19BF1F000, v92, OS_LOG_TYPE_DEFAULT, "Adding %lu faceCrops from %@", buf, 0x16u);
          }
        }

        v94 = [(PLPerson *)self mutableFaceCrops];
        [v94 addObjectsFromArray:v91];
      }

      v81 = [v79 countByEnumeratingWithState:&v129 objects:v159 count:16];
    }

    while (v81);
  }

  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v95 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
    {
      v96 = [(PLPerson *)self faceCrops];
      v97 = [v96 count];
      *buf = 138543618;
      v165 = self;
      v166 = 2048;
      v167 = v97;
      _os_log_impl(&dword_19BF1F000, v95, OS_LOG_TYPE_DEFAULT, "Person %{public}@ has %lu faceCrops after merging", buf, 0x16u);
    }
  }

  v123 = 0u;
  v124 = 0u;
  v121 = 0u;
  v122 = 0u;
  v98 = v79;
  v99 = [v98 countByEnumeratingWithState:&v121 objects:v157 count:16];
  if (v99)
  {
    v100 = v99;
    v101 = *v122;
    do
    {
      for (mm = 0; mm != v100; ++mm)
      {
        if (*v122 != v101)
        {
          objc_enumerationMutation(v98);
        }

        v103 = *(*(&v121 + 1) + 8 * mm);
        if ((*MEMORY[0x1E6994D48] & 1) == 0)
        {
          v104 = __CPLAssetsdOSLogDomain();
          if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
          {
            v105 = [v103 personUUID];
            v106 = [(PLPerson *)self personUUID];
            *buf = 138543618;
            v165 = v105;
            v166 = 2114;
            v167 = v106;
            _os_log_impl(&dword_19BF1F000, v104, OS_LOG_TYPE_DEFAULT, "Updating targetPerson for %{public}@ to %{public}@ after merging", buf, 0x16u);
          }
        }

        [(PLPerson *)self _logMergeDetailsForPerson:v103, v107];
        [v103 setMergeTargetPerson:self];
      }

      v100 = [v98 countByEnumeratingWithState:&v121 objects:v157 count:16];
    }

    while (v100);
  }

  objc_autoreleasePoolPop(context);
}

- (id)finalMergeTargetPerson
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = self;
  v3 = [(PLPerson *)v2 mergeTargetPerson];
  v4 = [(PLPerson *)v2 mergeTargetPerson];
  v5 = [v4 mergeTargetPerson];

  if (v3)
  {
    v6 = v2;
    while (v6 != v5)
    {
      v7 = v3;

      v3 = [(PLPerson *)v7 mergeTargetPerson];

      v8 = [(PLPerson *)v5 mergeTargetPerson];
      v9 = [v8 mergeTargetPerson];

      v6 = v7;
      v5 = v9;
      if (!v3)
      {
        v5 = v9;
        v6 = v7;
        goto LABEL_11;
      }
    }

    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v10 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v13 = 138412290;
        v14 = v2;
        _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "Looping merge target person %@", &v13, 0xCu);
      }
    }
  }

  else
  {
    v6 = v2;
  }

LABEL_11:
  v11 = v6;

  return v6;
}

- (id)pickKeyFaceOptimalStateForContactDedupeWithPersons:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 arrayByAddingObject:self];
  v6 = [v5 sortedArrayUsingComparator:&__block_literal_global_364_110738];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v21;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v21 != v11)
      {
        objc_enumerationMutation(v7);
      }

      v13 = [*(*(&v20 + 1) + 8 * v12) keyFace];
      v14 = v13;
      if (v13)
      {
        if (!v10)
        {
          v10 = v13;
        }

        if ([v14 nameSource] == 3 || objc_msgSend(v14, "nameSource") == 1)
        {
          break;
        }
      }

      if (v9 == ++v12)
      {
        v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_15;
      }
    }
  }

  else
  {
    v10 = 0;
LABEL_15:
    v14 = 0;
  }

  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = v10;
  }

  v16 = v15;
  v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v18 = [MEMORY[0x1E696AD98] numberWithShort:v14 != 0];
  [v17 setObject:v18 forKey:@"keyFacePickSource"];

  if (v16)
  {
    [v17 setObject:v16 forKey:@"keyFace"];
  }

  return v17;
}

uint64_t __63__PLPerson_pickKeyFaceOptimalStateForContactDedupeWithPersons___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 personUUID];
  v6 = [v4 personUUID];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)prepareForUserInitiatedMergeWithPersons:(id)a3
{
  v73 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PLPerson *)self managedObjectContext];
  v50 = self;
  v51 = v4;
  v6 = [v4 arrayByAddingObject:self];
  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d", @"verifiedType", 2];
  v8 = [v6 filteredArrayUsingPredicate:v7];

  v9 = 0x1E695D000uLL;
  v10 = MEMORY[0x1E695D5E0];
  v11 = +[PLFaceCrop entityName];
  v12 = [v10 fetchRequestWithEntityName:v11];

  v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"person", v8];
  [v12 setPredicate:v13];

  v65 = 0;
  v48 = v12;
  v14 = [v5 executeFetchRequest:v12 error:&v65];
  v15 = v65;
  v47 = v14;
  if (v14)
  {
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v16 = v14;
    v17 = [v16 countByEnumeratingWithState:&v61 objects:v72 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = v6;
      v20 = v8;
      v21 = *v62;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v62 != v21)
          {
            objc_enumerationMutation(v16);
          }

          v23 = *(*(&v61 + 1) + 8 * i);
          [v23 setPerson:0];
          [v5 deleteObject:v23];
        }

        v18 = [v16 countByEnumeratingWithState:&v61 objects:v72 count:16];
      }

      while (v18);
      v8 = v20;
      v6 = v19;
      v9 = 0x1E695D000;
    }
  }

  else
  {
    v16 = PLBackendGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v69 = "[PLPerson prepareForUserInitiatedMergeWithPersons:]";
      v70 = 2112;
      v71 = v15;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "%s error fetching face crops to delete: %@", buf, 0x16u);
    }
  }

  v24 = *(v9 + 1504);
  v25 = +[PLDetectedFace entityName];
  v26 = [v24 fetchRequestWithEntityName:v25];

  v27 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@ AND %K != %d", @"personForFace", v8, @"nameSource", 0];
  [v26 setPredicate:v27];

  v60 = v15;
  v28 = [v5 executeFetchRequest:v26 error:&v60];
  v29 = v60;

  v49 = v8;
  v46 = v29;
  if (v28)
  {
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v30 = v28;
    v31 = [v30 countByEnumeratingWithState:&v56 objects:v67 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v57;
      do
      {
        for (j = 0; j != v32; ++j)
        {
          if (*v57 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = *(*(&v56 + 1) + 8 * j);
          [v35 setEffectiveNameSource:0];
          [v35 setConfirmedFaceCropGenerationState:0];
        }

        v32 = [v30 countByEnumeratingWithState:&v56 objects:v67 count:16];
      }

      while (v32);
    }
  }

  else
  {
    v30 = PLBackendGetLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v69 = "[PLPerson prepareForUserInitiatedMergeWithPersons:]";
      v70 = 2112;
      v71 = v29;
      _os_log_impl(&dword_19BF1F000, v30, OS_LOG_TYPE_ERROR, "%s error fetching faces to reset: %@", buf, 0x16u);
    }
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v36 = v6;
  v37 = [v36 countByEnumeratingWithState:&v52 objects:v66 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v53;
    do
    {
      for (k = 0; k != v38; ++k)
      {
        if (*v53 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v41 = *(*(&v52 + 1) + 8 * k);
        v42 = [v41 keyFace];
        v43 = [v42 nameSource];

        if (v43 != 1)
        {
          v44 = [v41 keyFace];
          [v44 setEffectiveNameSource:1];

          v45 = [v41 keyFace];
          [v45 setConfirmedFaceCropGenerationState:1];
        }
      }

      v38 = [v36 countByEnumeratingWithState:&v52 objects:v66 count:16];
    }

    while (v38);
  }

  if ([(PLPerson *)v50 keyFacePickSource]!= 1)
  {
    [(PLPerson *)v50 setKeyFacePickSource:1];
  }
}

- (id)reverseOrderedMergeTargetPersons
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v5 = [(PLPerson *)self mergeTargetPerson];
  if (v5)
  {
    v6 = v5;
    while (![v4 containsObject:v6])
    {
      [v4 addObject:v6];
      [v3 insertObject:v6 atIndex:0];
      v7 = [v6 mergeTargetPerson];

      v6 = v7;
      if (!v7)
      {
        goto LABEL_9;
      }
    }

    v8 = PLBackendGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412546;
      v11 = self;
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "Found a looping merge target person for %@: %@", &v10, 0x16u);
    }
  }

LABEL_9:

  return v3;
}

- (id)pickOptimalStateForUserInitiatedMergeWithPersons:(id)a3 nominalTarget:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 arrayByAddingObject:self];
  v9 = [v8 sortedArrayUsingComparator:&__block_literal_global_341];
  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = [v9 lastObject];
  }

  v12 = v11;
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v11, "manualOrder")}];
  [v10 setObject:v13 forKey:@"manualOrder"];

  v14 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v12, "type")}];
  [v10 setObject:v14 forKey:@"type"];

  v15 = [v7 keyFace];

  if (v15)
  {
    v16 = [v7 keyFace];
    [v10 setObject:v16 forKey:@"keyFace"];
  }

  v17 = [v7 fullName];
  v18 = [v17 length];

  if (v18)
  {
    v19 = [v7 fullName];
    [v10 setObject:v19 forKey:@"fullName"];

    v20 = [v7 displayName];
    if (v20)
    {
      [v10 setObject:v20 forKey:@"displayName"];
    }

    else
    {
      v21 = [MEMORY[0x1E695DFB0] null];
      [v10 setObject:v21 forKey:@"displayName"];
    }
  }

  v22 = [v7 contactMatchingDictionary];
  if (v22)
  {

    goto LABEL_14;
  }

  v23 = [v7 personUri];

  if (v23)
  {
LABEL_14:
    v24 = [v7 contactMatchingDictionary];
    if (v24)
    {
      [v10 setObject:v24 forKey:@"contactMatchingDictionary"];
    }

    else
    {
      v25 = [MEMORY[0x1E695DFB0] null];
      [v10 setObject:v25 forKey:@"contactMatchingDictionary"];
    }

    v26 = [v7 personUri];
    if (v26)
    {
      [v10 setObject:v26 forKey:@"personUri"];
    }

    else
    {
      v27 = [MEMORY[0x1E695DFB0] null];
      [v10 setObject:v27 forKey:@"personUri"];
    }

    if (v15 && v18)
    {
      goto LABEL_38;
    }
  }

  v74 = 0;
  v75 = &v74;
  v76 = 0x3032000000;
  v77 = __Block_byref_object_copy__110782;
  v78 = __Block_byref_object_dispose__110783;
  v79 = 0;
  v68 = 0;
  v69 = &v68;
  v70 = 0x3032000000;
  v71 = __Block_byref_object_copy__110782;
  v72 = __Block_byref_object_dispose__110783;
  v73 = 0;
  v62 = 0;
  v63 = &v62;
  v64 = 0x3032000000;
  v65 = __Block_byref_object_copy__110782;
  v66 = __Block_byref_object_dispose__110783;
  v67 = 0;
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = __Block_byref_object_copy__110782;
  v60 = __Block_byref_object_dispose__110783;
  v61 = 0;
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy__110782;
  v54 = __Block_byref_object_dispose__110783;
  v55 = 0;
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __75__PLPerson_pickOptimalStateForUserInitiatedMergeWithPersons_nominalTarget___block_invoke_2;
  v49[3] = &unk_1E7577100;
  v49[4] = &v50;
  v49[5] = &v68;
  v49[6] = &v62;
  v49[7] = &v74;
  v49[8] = &v56;
  [v9 enumerateObjectsWithOptions:2 usingBlock:v49];
  v28 = v75[5];
  v29 = v10;
  v30 = v29;
  if (v28)
  {
    v31 = [v29 objectForKey:@"keyFace"];

    if (!v31)
    {
      [v30 setObject:v28 forKey:@"keyFace"];
    }
  }

  v32 = v69[5];
  v33 = v30;
  v34 = v33;
  if (v32)
  {
    v35 = [v33 objectForKey:@"fullName"];

    if (!v35)
    {
      [v34 setObject:v32 forKey:@"fullName"];
    }
  }

  v36 = v63[5];
  v37 = v34;
  v38 = v37;
  if (v36)
  {
    v39 = [v37 objectForKey:@"displayName"];

    if (!v39)
    {
      [v38 setObject:v36 forKey:@"displayName"];
    }
  }

  v40 = v57[5];
  v41 = v38;
  v42 = v41;
  if (v40)
  {
    v43 = [v41 objectForKey:@"contactMatchingDictionary"];

    if (!v43)
    {
      [v42 setObject:v40 forKey:@"contactMatchingDictionary"];
    }
  }

  v44 = v51[5];
  v45 = v42;
  v46 = v45;
  if (v44)
  {
    v47 = [v45 objectForKey:@"personUri"];

    if (!v47)
    {
      [v46 setObject:v44 forKey:@"personUri"];
    }
  }

  _Block_object_dispose(&v50, 8);
  _Block_object_dispose(&v56, 8);

  _Block_object_dispose(&v62, 8);
  _Block_object_dispose(&v68, 8);

  _Block_object_dispose(&v74, 8);
LABEL_38:

  return v10;
}

void __75__PLPerson_pickOptimalStateForUserInitiatedMergeWithPersons_nominalTarget___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  v34 = v3;
  if (!*(*(a1[4] + 8) + 40))
  {
    v4 = [v3 personUri];

    v3 = v34;
    if (v4)
    {
      v5 = [v34 personUri];
      v6 = *(a1[4] + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;

      v8 = [v34 fullName];
      v9 = *(a1[5] + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;

      v11 = [v34 displayName];
      v12 = *(a1[6] + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;

      v14 = [v34 keyFace];
      v15 = *(a1[7] + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = v14;

      v17 = [v34 contactMatchingDictionary];
      v18 = *(a1[8] + 8);
      v19 = *(v18 + 40);
      *(v18 + 40) = v17;

      v3 = v34;
    }
  }

  if (!*(*(a1[5] + 8) + 40))
  {
    v20 = [v34 fullName];

    v3 = v34;
    if (v20)
    {
      v21 = [v34 fullName];
      v22 = *(a1[5] + 8);
      v23 = *(v22 + 40);
      *(v22 + 40) = v21;

      v24 = [v34 displayName];
      v25 = *(a1[6] + 8);
      v26 = *(v25 + 40);
      *(v25 + 40) = v24;

      v27 = [v34 keyFace];
      v28 = *(a1[7] + 8);
      v29 = *(v28 + 40);
      *(v28 + 40) = v27;

      v3 = v34;
    }
  }

  if (!*(*(a1[7] + 8) + 40))
  {
    v30 = [v34 keyFace];

    v3 = v34;
    if (v30)
    {
      v31 = [v34 keyFace];
      v32 = *(a1[7] + 8);
      v33 = *(v32 + 40);
      *(v32 + 40) = v31;

      v3 = v34;
    }
  }
}

uint64_t __75__PLPerson_pickOptimalStateForUserInitiatedMergeWithPersons_nominalTarget___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 type];
  if (v6 == [v5 type])
  {
    v7 = [v4 fullName];
    if ([v7 length])
    {
      v8 = [v5 fullName];
      v9 = [v8 length];

      if (!v9)
      {
        goto LABEL_22;
      }
    }

    else
    {
    }

    v16 = [v4 fullName];
    if ([v16 length])
    {
    }

    else
    {
      v21 = [v5 fullName];
      v22 = [v21 length];

      if (v22)
      {
        goto LABEL_26;
      }
    }

    v17 = [v4 faceCount];
    if (v17 > [v5 faceCount])
    {
LABEL_22:
      v15 = 1;
      goto LABEL_27;
    }

    v18 = [v4 faceCount];
    if (v18 >= [v5 faceCount])
    {
      v19 = [v5 personUUID];
      v20 = [v4 personUUID];
      v15 = [v19 compare:v20];

      goto LABEL_27;
    }

LABEL_26:
    v15 = -1;
    goto LABEL_27;
  }

  v10 = [v4 type];
  v11 = [v5 type];
  v12 = 1;
  if (v10 <= v11)
  {
    v12 = -1;
  }

  v13 = 1;
  if (v10 != 1)
  {
    v13 = -1;
  }

  if (v11 == -1)
  {
    v12 = v13;
  }

  v14 = -1;
  if (v11 != 1)
  {
    v14 = 1;
  }

  if (v10 == -1)
  {
    v12 = v14;
  }

  if (v10 == v11)
  {
    v15 = 0;
  }

  else
  {
    v15 = v12;
  }

LABEL_27:

  return v15;
}

- (BOOL)_personResetIsInProgress
{
  v2 = [(PLPerson *)self managedObjectContext];
  v3 = [v2 userInfo];
  v4 = [v3 objectForKeyedSubscript:@"PLPersonReset"];
  v5 = [v4 isEqual:MEMORY[0x1E695E118]];

  return v5;
}

- (void)removePersistedFileSystemDataWithPathManager:(id)a3
{
  v5 = a3;
  v8 = v5;
  if (!v5)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PLPerson.m" lineNumber:1138 description:{@"Invalid parameter not satisfying: %@", @"pathManager"}];

    v5 = 0;
  }

  if ([v5 isDCIM])
  {
    v6 = [[PLPersistedPersonMetadata alloc] initWithPLPerson:self pathManager:v8];
    [(PLPersistedPersonMetadata *)v6 removePersistedData];
  }
}

- (void)persistMetadataToFileSystemWithPathManager:(id)a3
{
  v5 = a3;
  v8 = v5;
  if (!v5)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PLPerson.m" lineNumber:1130 description:{@"Invalid parameter not satisfying: %@", @"pathManager"}];

    v5 = 0;
  }

  if ([v5 isDCIM])
  {
    v6 = [[PLPersistedPersonMetadata alloc] initWithPLPerson:self pathManager:v8];
    [(PLPersistedPersonMetadata *)v6 writePersistedData];
  }
}

- (BOOL)isValidForPersistence
{
  if (![(PLPerson *)self verifiedType])
  {
    return 0;
  }

  v3 = [(PLPerson *)self personUUID];
  v4 = v3 != 0;

  return v4;
}

- (void)_signalBackgroundPersonNeededForPersonSyncWithJobFlags:(int64_t)a3
{
  v5 = [(PLPerson *)self managedObjectContext];
  v6 = [PLPhotoLibrary isBackgroundProcessingEnabledWithManagedObjectContext:v5];

  if (v6)
  {
    v7 = PLSyndicationGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *v16 = 0;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEBUG, "Triggering person sync update", v16, 2u);
    }

    if ((*(&self->super._willSaveCallCount + 3) & 1) == 0)
    {
      v8 = [(PLPerson *)self personUUID];
      v9 = [(PLPerson *)self managedObjectContext];
      v10 = [PLBackgroundJobWorkItem insertBackgroundJobWorkItemWithIdentifier:v8 jobType:10 jobFlags:a3 inManagedObjectContext:v9];

      *(&self->super._willSaveCallCount + 6) = 1;
      v11 = [(PLManagedObject *)self photoLibrary];
      v12 = [v11 libraryServicesManager];

      v13 = [v12 backgroundJobService];
      v14 = [v12 libraryBundle];
      v15 = [PLBackgroundJobWorkerTypes workerTypesMaskForBackgroundJobType:10];
      [v13 signalBackgroundProcessingNeededOnBundle:v14 workerTypes:v15];
    }
  }
}

- (void)_updateSharedLibraryPeopleRulesForTombstone
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"autoSharePolicy", 2];
  v4 = [(PLPerson *)self managedObjectContext];
  v5 = [(PLShare *)PLLibraryScope sharesWithPredicate:v3 fetchLimit:0 inManagedObjectContext:v4];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        v12 = [(PLPerson *)self personUUID];
        v13 = [(PLPerson *)self mergeTargetPerson];
        v14 = [v13 personUUID];
        [v11 updatePeopleRulesForTombstonePersonUUID:v12 replaceWithPersonUUID:v14];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }
}

- (void)setEffectiveVerifiedType:(int)a3
{
  v3 = *&a3;
  v5 = [(PLPerson *)self cloudVerifiedType];
  if (v3 == 2 && v5 == 1)
  {
    v6 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "Setting effectiveVerifiedType ignored, PLPersonVerifiedTypeUser cannot be overwritten by PLPersonVerifiedTypeGraph", v7, 2u);
    }
  }

  else
  {
    [(PLPerson *)self setVerifiedType:v3];
    [(PLPerson *)self setCloudVerifiedType:v3];
    if (v3 == -2)
    {
      [(PLPerson *)self setContactMatchingDictionary:0];

      [(PLPerson *)self setPersonUri:0];
    }
  }
}

- (void)rejectFaceIfPossible:(id)a3 shouldCreateFaceCrop:(BOOL)a4
{
  v4 = a4;
  v9 = a3;
  v6 = [(PLPerson *)self verifiedType];
  v7 = v9;
  if (v9)
  {
    if (v6)
    {
      v8 = [(PLPerson *)self mutableRejectedFaces];
      [v8 addObject:v9];

      v7 = v9;
      if (v4)
      {
        [v9 addRejectedPersonNeedingFaceCrops:self];
        v7 = v9;
      }
    }
  }
}

- (void)assignDetectionTypeFromFaces
{
  v60 = *MEMORY[0x1E69E9840];
  v59 = 0;
  memset(v58, 0, sizeof(v58));
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __40__PLPerson_assignDetectionTypeFromFaces__block_invoke;
  aBlock[3] = &unk_1E7576E48;
  aBlock[4] = &v38;
  aBlock[5] = &v34;
  aBlock[6] = &v42;
  v4 = _Block_copy(aBlock);
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = [(PLPerson *)self detectedFaces];
  v6 = [v5 countByEnumeratingWithState:&v29 objects:v57 count:16];
  if (v6)
  {
    v7 = *v30;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v30 != v7)
        {
          objc_enumerationMutation(v5);
        }

        (*(v4 + 2))(v4, *(*(&v29 + 1) + 8 * i), v58);
      }

      v6 = [v5 countByEnumeratingWithState:&v29 objects:v57 count:16];
    }

    while (v6);
  }

  v9 = [(PLPerson *)self temporalDetectedFaces];
  v10 = v39[3];
  if (v10 < [v9 count])
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v25 objects:v56 count:16];
    if (v12)
    {
      v13 = *v26;
      do
      {
        for (j = 0; j != v12; ++j)
        {
          if (*v26 != v13)
          {
            objc_enumerationMutation(v11);
          }

          (*(v4 + 2))(v4, *(*(&v25 + 1) + 8 * j), v58);
        }

        v12 = [v11 countByEnumeratingWithState:&v25 objects:v56 count:16];
      }

      while (v12);
    }
  }

  v15 = *(v35 + 12);
  if ((v15 - 3) < 2 || v15 == 1)
  {
    v17 = [(PLPerson *)self detectionType];
    if (*(v35 + 12) != v17)
    {
      v18 = PLBackendGetLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [(PLPerson *)self detectionType];
        v20 = *(v35 + 12);
        v21 = [(PLPerson *)self personUUID];
        v22 = v39[3];
        v23 = v43[3];
        *buf = 67110146;
        v47 = v19;
        v48 = 1024;
        v49 = v20;
        v50 = 2114;
        v51 = v21;
        v52 = 2048;
        v53 = v22;
        v54 = 2048;
        v55 = v23;
        _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEFAULT, "Changing detectionType from %d to %d on person %{public}@ for %tu of %tu detected faces", buf, 0x2Cu);
      }

      [(PLPerson *)self setDetectionType:*(v35 + 12)];
    }
  }

  else if (v15 == 2)
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"PLPerson.m" lineNumber:704 description:{@"Invalid parameter not satisfying: %@", @"majorityDetectionType != PLDetectionTypePet"}];
  }

  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v42, 8);
}

void __40__PLPerson_assignDetectionTypeFromFaces__block_invoke(void *a1, void *a2, uint64_t a3)
{
  v8 = a2;
  if (([v8 manual] & 1) == 0)
  {
    v5 = [v8 detectionType];
    if (v5 <= 4)
    {
      v6 = *(a3 + 8 * v5) + 1;
      v7 = *(a1[4] + 8);
      if (v6 > *(v7 + 24))
      {
        *(v7 + 24) = v6;
        *(*(a1[5] + 8) + 24) = v5;
      }

      *(a3 + 8 * v5) = v6;
      ++*(*(a1[6] + 8) + 24);
    }
  }
}

- (void)resetFacesProcessing
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = [(PLPerson *)self entity];
  v4 = MEMORY[0x1E695D5B8];
  v5 = +[PLDetectedFace entityName];
  v6 = [(PLPerson *)self managedObjectContext];
  v7 = [v4 entityForName:v5 inManagedObjectContext:v6];

  v27 = v3;
  v28 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v8 = [v3 relationshipsByName];
  v9 = [v8 allValues];

  v10 = [v9 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v34;
    do
    {
      v13 = 0;
      do
      {
        if (*v34 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v33 + 1) + 8 * v13);
        v15 = objc_autoreleasePoolPush();
        v16 = [v14 destinationEntity];
        v17 = [v16 isEqual:v7];

        if (v17)
        {
          v18 = [v14 name];
          v19 = [(PLPerson *)self valueForKey:v18];

          if (v19)
          {
            if ([v14 isToMany])
            {
              [v28 unionSet:v19];
            }

            else
            {
              [v28 addObject:v19];
            }
          }
        }

        objc_autoreleasePoolPop(v15);
        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v11);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v20 = v28;
  v21 = [v20 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v30;
    do
    {
      v24 = 0;
      do
      {
        if (*v30 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v29 + 1) + 8 * v24);
        v26 = objc_autoreleasePoolPush();
        [v25 setEffectiveNameSource:0];
        [v25 fixPersonRelationshipsForFaceTorsoOrTemporal];
        objc_autoreleasePoolPop(v26);
        ++v24;
      }

      while (v22 != v24);
      v22 = [v20 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v22);
  }
}

- (void)resetAllFacesToDefault
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [(PLPerson *)self allDetectedFaces];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        [v8 setClusterSequenceNumber:0];
        [v8 setVuObservationID:0];
        [v8 setAssociatedPerson:0];
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v9 = [(PLPerson *)self rejectedFaces];
  v10 = [v9 count];

  if (v10)
  {
    v11 = [(PLPerson *)self mutableRejectedFaces];
    [v11 removeAllObjects];

    v12 = [(PLPerson *)self mutableRejectedFacesNeedingFaceCrops];
    [v12 removeAllObjects];
  }
}

- (id)faceGroupDescription
{
  v6[3] = *MEMORY[0x1E69E9840];
  v6[0] = @"personUUID";
  v6[1] = @"associatedFaceGroup";
  v6[2] = @"detectedFaces";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:3];
  v4 = [(NSManagedObject *)self truncatedDescriptionWithPropertyKeys:v3];

  return v4;
}

- (id)debugLogDescription
{
  v3 = [(PLPerson *)self fullName];
  v4 = v3;
  v5 = @"<No Name>";
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  v7 = [(PLPerson *)self displayName];
  v8 = v7;
  v9 = @"<No Display Name>";
  if (v7)
  {
    v9 = v7;
  }

  v10 = v9;

  v11 = MEMORY[0x1E696AEC0];
  v12 = [(PLPerson *)self personUUID];
  v13 = [v11 stringWithFormat:@"%@ (%@) [%@]", v6, v10, v12];

  return v13;
}

- (void)setKeyFace:(id)a3 pickSource:(signed __int16)a4
{
  if (a3)
  {
    v5 = a4;
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  [(PLPerson *)self setKeyFacePickSource:v5];
  [(PLPerson *)self setKeyFace:v6];
}

- (void)updateDetectionTypeIfNeeded
{
  v3 = [(PLPerson *)self verifiedType];
  if ((v3 + 2) > 5 || ((1 << (v3 + 2)) & 0x27) == 0)
  {
    [(PLPerson *)self assignDetectionTypeFromFaces];
    if (![(PLPerson *)self cloudDetectionType])
    {
      if ([(PLPerson *)self detectionType])
      {
        v5 = [(PLPerson *)self detectionType];

        [(PLPerson *)self setCloudDetectionType:v5];
      }
    }
  }
}

- (void)didSave
{
  v3 = &self->super._willSaveCallCount + 2;
  if (*(&self->super._willSaveCallCount + 4) == 1)
  {
    v4 = [(PLManagedObject *)self photoLibrary];
    v5 = [v4 pathManager];
    [(PLPerson *)self persistMetadataToFileSystemWithPathManager:v5];
LABEL_5:

    *v3 = 0;
    goto LABEL_6;
  }

  v3 = (&self->super._willSaveCallCount + 5);
  if (*(&self->super._willSaveCallCount + 5) == 1)
  {
    v4 = [(PLManagedObject *)self photoLibrary];
    v5 = [v4 pathManager];
    [(PLPerson *)self removePersistedFileSystemDataWithPathManager:v5];
    goto LABEL_5;
  }

LABEL_6:
  *(&self->super._willSaveCallCount + 6) = 0;
}

- (void)willSave
{
  v86 = *MEMORY[0x1E69E9840];
  v81.receiver = self;
  v81.super_class = PLPerson;
  [(PLManagedObject *)&v81 willSave];
  v3 = [(PLPerson *)self changedValues];
  if (([(PLPerson *)self isDeleted]& 1) == 0)
  {
    v4 = [v3 objectForKey:@"mergeTargetPerson"];
    if ([(PLPerson *)self isEqual:v4])
    {
      v5 = PLBackendGetLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = [(PLPerson *)self personUUID];
        *buf = 138412290;
        v85 = v6;
        _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "Attempted to set merge target to self (person uuid: %@), merge target reset to nil", buf, 0xCu);
      }

      [(PLPerson *)self setMergeTargetPerson:0];
      v4 = 0;
      goto LABEL_19;
    }

    if (!v4)
    {
      goto LABEL_19;
    }

    v7 = [MEMORY[0x1E695DFB0] null];
    if (v4 != v7)
    {
      v8 = _os_feature_enabled_impl();

      if (!v8)
      {
LABEL_16:
        v13 = [MEMORY[0x1E695DFB0] null];
        v14 = [v13 isEqual:v4];

        if ((v14 & 1) == 0 && [(PLPerson *)self verifiedType]!= -2)
        {
          [(PLPerson *)self setEffectiveVerifiedType:4294967294];
          [(PLPerson *)self _updateSharedLibraryPeopleRulesForTombstone];
        }

LABEL_19:
        if ([(PLPerson *)self verifiedType]== -2)
        {
          v15 = [(PLPerson *)self mergeCandidates];
          v16 = [v15 count];

          if (v16)
          {
            v17 = [(PLPerson *)self mutableMergeCandidates];
            [v17 removeAllObjects];
          }

          v18 = [(PLPerson *)self mergeCandidatesWithConfidence];
          v19 = [v18 count];

          if (v19)
          {
            v20 = [(PLPerson *)self mutableMergeCandidatesWithConfidence];
            [v20 removeAllObjects];
          }

          v21 = [(PLPerson *)self invalidMergeCandidates];
          v22 = [v21 count];

          if (v22)
          {
            v23 = [(PLPerson *)self mutableInvalidMergeCandidates];
            [v23 removeAllObjects];
          }

          v24 = [(PLPerson *)self detectedFaces];
          v25 = [v24 count];

          if (v25)
          {
            [(PLPerson *)self _moveAllFacesToFinalMergeTarget];
          }
        }

        [(PLPerson *)self disconnectFaceGroup];
        v26 = [v3 objectForKey:@"mergeCandidatesWithConfidence"];
        v27 = v26;
        if (v26)
        {
          if (![v26 count])
          {
            [(PLPerson *)self mergeCandidateConfidence];
            if (v28 != 0.0)
            {
              [(PLPerson *)self setMergeCandidateConfidence:0.0];
            }
          }
        }

        v29 = [v3 objectForKeyedSubscript:@"type"];
        if (v29 && [(PLPerson *)self type]== -1)
        {
          [(PLPerson *)self _removeSharedLibraryPeopleRulesForPerson];
          [PLSocialGroup rejectSocialGroupsHavingMember:self];
        }

        v30 = [v3 objectForKeyedSubscript:@"verifiedType"];
        if (!v30)
        {
          goto LABEL_50;
        }

        v31 = v30;
        v32 = [(PLPerson *)self verifiedType];

        if (v32 != 1)
        {
          goto LABEL_50;
        }

        v83[0] = @"verifiedType";
        v83[1] = @"type";
        v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:2];
        v34 = [(PLPerson *)self committedValuesForKeys:v33];

        v35 = [v34 objectForKeyedSubscript:@"type"];
        if ([v35 intValue] == -1)
        {
          v36 = [v34 objectForKeyedSubscript:@"verifiedType"];
          v37 = [v36 intValue];

          if (v37 != 2 || [(PLPerson *)self type]== -1)
          {
            goto LABEL_49;
          }

          v76 = v3;
          v79 = 0u;
          v80 = 0u;
          v77 = 0u;
          v78 = 0u;
          v35 = [(PLPerson *)self faceCrops];
          v38 = [v35 countByEnumeratingWithState:&v77 objects:v82 count:16];
          if (v38)
          {
            v39 = v38;
            v73 = v34;
            v74 = v29;
            v75 = v4;
            v40 = *v78;
            do
            {
              for (i = 0; i != v39; ++i)
              {
                if (*v78 != v40)
                {
                  objc_enumerationMutation(v35);
                }

                v42 = *(*(&v77 + 1) + 8 * i);
                v43 = objc_autoreleasePoolPush();
                [v42 pl_safeSetValue:&unk_1F0FBED10 forKey:@"state" valueDidChangeHandler:0];
                objc_autoreleasePoolPop(v43);
              }

              v39 = [v35 countByEnumeratingWithState:&v77 objects:v82 count:16];
            }

            while (v39);
            v4 = v75;
            v3 = v76;
            v34 = v73;
            v29 = v74;
          }
        }

LABEL_49:
LABEL_50:

        goto LABEL_51;
      }

      objc_opt_class();
      v9 = [(PLPerson *)self managedObjectContext];
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

      v11 = v10;

      v12 = [v11 delayedSaveActions];
      [v12 recordDeduplicationNeededForGroupsContainingMember:v4];

      v7 = [v11 delayedSaveActions];

      [v7 recordSocialGroupContainmentUpdateNeededForPerson:v4];
    }

    goto LABEL_16;
  }

  if ([(PLPerson *)self isDeleted])
  {
    [(PLPerson *)self resetAllFacesToDefault];
  }

LABEL_51:
  v44 = [(PLPerson *)self managedObjectContext:v73];
  if ([(PLPerson *)self isDeleted]&& ((PLIsAssetsd() & 1) != 0 || MEMORY[0x19EAEE520]()))
  {
    v45 = [(PLPerson *)self managedObjectContext];
    [PLGraphNode cleanupDanglingNodeReferencesToDeletedActorsInContext:v45];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [PLDelayedSearchIndexUpdates recordPersonIfNeeded:self];
    v46 = [v3 objectForKeyedSubscript:@"cloudLocalState"];
    if (v46)
    {
      v47 = [v3 count] != 1;
    }

    else
    {
      v47 = 1;
    }

    v48 = [v3 count] != 0 && v47;
    if ([(PLPerson *)self isDeleted]& 1) == 0 && [(PLPerson *)self isValidForPersistence]&& (([(PLPerson *)self isInserted]| v48))
    {
      v49 = 68;
    }

    else
    {
      if ([(PLPerson *)self isValidForPersistence])
      {
        goto LABEL_69;
      }

      v50 = [(PLPerson *)self personUUID];
      v51 = v50;
      if (((v50 != 0) & v48) == 0)
      {

LABEL_69:
        v53 = [v3 objectForKeyedSubscript:@"userFeedbacks"];
        v54 = [v3 objectForKeyedSubscript:@"type"];
        v55 = v54;
        if (v53 || [v54 integerValue] == -1)
        {
          v56 = PLBackendGetLog();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
          {
            v57 = [(PLPerson *)self personUUID];
            *buf = 138543362;
            v85 = v57;
            _os_log_impl(&dword_19BF1F000, v56, OS_LOG_TYPE_INFO, "Updating featured content due to changes on user feedback for person %{public}@", buf, 0xCu);
          }

          v58 = [v44 delayedSaveActions];
          v59 = [(PLPerson *)self personUUID];
          [v58 recordFeaturedContentUpdateNeededForPersonUUID:v59];
        }

        goto LABEL_75;
      }

      v52 = [(PLPerson *)self isDeleted];

      if (v52)
      {
        goto LABEL_69;
      }

      v49 = 69;
    }

    *(&self->super.super.super.isa + v49) = 1;
    goto LABEL_69;
  }

LABEL_75:
  v60 = MEMORY[0x1E695DFA8];
  v61 = [(PLPerson *)self entity];
  v62 = [v61 relationshipsByName];
  v63 = [v62 allKeys];
  v64 = [v60 setWithArray:v63];

  [v64 addObject:@"faceCount"];
  if (([(PLPerson *)self isInserted]& 1) != 0 || ([(PLPerson *)self isDeleted]& 1) != 0)
  {
    v65 = 1;
  }

  else
  {
    v66 = MEMORY[0x1E695DFD8];
    v67 = [v3 allKeys];
    v68 = [v66 setWithArray:v67];
    v65 = [v68 isSubsetOfSet:v64] ^ 1;
  }

  v69 = [(PLManagedObject *)self photoLibrary];
  v70 = [v69 libraryServicesManager];
  v71 = [v70 wellKnownPhotoLibraryIdentifier];

  if (v65 && (v71 == 1 || MEMORY[0x19EAEE520]()))
  {
    if ([(PLPerson *)self isDeleted])
    {
      v72 = 2;
    }

    else
    {
      v72 = 1;
    }

    [(PLPerson *)self _signalBackgroundPersonNeededForPersonSyncWithJobFlags:v72];
  }
}

- (void)_moveAllFacesToFinalMergeTarget
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [(PLPerson *)self finalMergeTargetPerson];
  v4 = v3;
  if (v3 && v3 != self)
  {
    v5 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(PLPerson *)self personUUID];
      v7 = [(PLPerson *)self detectedFaces];
      v8 = [v7 count];
      v9 = [(PLPerson *)v4 personUUID];
      *buf = 138543874;
      v13 = v6;
      v14 = 2048;
      v15 = v8;
      v16 = 2114;
      v17 = v9;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "Tombstone Person %{public}@ has %tu faces. Moving them to final merge target %{public}@", buf, 0x20u);
    }

    v11 = self;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
    [(PLPerson *)v4 _basicMergePersons:v10];
  }
}

- (void)createUnverifiedPersonForRejectedFaceUUIDs:(id)a3 inManagedObjectContext:(id)a4
{
  v45 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = [objc_opt_class() createUnverifiedPersonInManagedObjectContext:v7];
    v9 = MEMORY[0x1E695D5E0];
    v10 = +[PLDetectedFace entityName];
    v11 = [v9 fetchRequestWithEntityName:v10];

    v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K in %@", @"uuid", v6];
    [v11 setPredicate:v12];

    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __78__PLPerson_createUnverifiedPersonForRejectedFaceUUIDs_inManagedObjectContext___block_invoke;
    v37[3] = &unk_1E7576E20;
    v37[4] = self;
    v14 = v8;
    v38 = v14;
    v15 = v13;
    v39 = v15;
    v16 = [v7 enumerateObjectsFromFetchRequest:v11 usingDefaultBatchSizeWithBlock:v37];
    if ([v15 count])
    {
      v29 = v14;
      v30 = v11;
      v31 = v7;
      v32 = v6;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v17 = v15;
      v18 = [v17 countByEnumeratingWithState:&v33 objects:v44 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = 0;
        v21 = 0;
        v22 = *v34;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v34 != v22)
            {
              objc_enumerationMutation(v17);
            }

            v24 = *(*(&v33 + 1) + 8 * i);
            v25 = [v17 objectForKeyedSubscript:v24];
            v26 = [v25 unsignedIntegerValue];

            if (v26 > v20)
            {
              v21 = [v24 shortValue];
              v20 = v26;
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v33 objects:v44 count:16];
        }

        while (v19);
      }

      else
      {
        v21 = 0;
      }

      v14 = v29;
      [v29 setDetectionType:v21];
      v7 = v31;
      v6 = v32;
      v11 = v30;
    }

    v27 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = [v14 personUUID];
      *buf = 138543618;
      v41 = v28;
      v42 = 2114;
      v43 = v6;
      _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_INFO, "Created unverified person %{public}@ for rejected face UUIDs %{public}@", buf, 0x16u);
    }
  }
}

void __78__PLPerson_createUnverifiedPersonForRejectedFaceUUIDs_inManagedObjectContext___block_invoke(void *a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 associatedPersonForFaceOrTorso:1 orTemporal:1];
  v5 = v4;
  if (v4 && ![v4 isEqual:a1[4]])
  {
    v13 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [v3 uuid];
      v15 = [v5 personUUID];
      v16 = 138543618;
      v17 = v14;
      v18 = 2114;
      v19 = v15;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "Skipping unverified person assignment for face %{public}@ is already associated with person %{public}@", &v16, 0x16u);
    }
  }

  else
  {
    [v3 setAssociatedPerson:a1[5]];
    v6 = a1[6];
    v7 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(v3, "detectionType")}];
    v8 = [v6 objectForKeyedSubscript:v7];
    v9 = [v8 unsignedIntegerValue];

    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v9 + 1];
    v11 = a1[6];
    v12 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(v3, "detectionType")}];
    [v11 setObject:v10 forKeyedSubscript:v12];
  }
}

- (void)disconnectFaceGroup
{
  v3 = [(PLPerson *)self associatedFaceGroup];
  if ([(PLPerson *)self verifiedType]&& v3)
  {
    [(PLPerson *)self setAssociatedFaceGroup:0];
    [objc_opt_class() createAssociatedPersonForFaceGroup:v3];
  }
}

- (void)_removeSharedLibraryPeopleRulesForPerson
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"autoSharePolicy", 2];
  v4 = [(PLPerson *)self managedObjectContext];
  v5 = [(PLShare *)PLLibraryScope sharesWithPredicate:v3 fetchLimit:0 inManagedObjectContext:v4];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        v12 = [(PLPerson *)self personUUID];
        [v11 removePeopleRulesForPersonUUID:v12];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

- (void)prepareForDeletion
{
  v18 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = PLPerson;
  [(PLPerson *)&v13 prepareForDeletion];
  v3 = [(PLPerson *)self managedObjectContext];
  if ((PLIsAssetsd() & 1) != 0 || MEMORY[0x19EAEE520]())
  {
    [PLGraphNode registerDeletedNodeActorForDanglingNodeCleanup:self];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v3 mergingChanges] & 1) == 0)
  {
    v4 = PLBackendGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [(PLPerson *)self personUUID];
      *buf = 138543362;
      v15 = v5;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_INFO, "prepareForDeletion of person %{public}@", buf, 0xCu);
    }

    v6 = [v3 mergePolicy];
    objc_opt_class();
    if (((objc_opt_isKindOfClass() & 1) == 0 || ([v6 isResolvingConflicts] & 1) == 0) && !-[PLPerson _personResetIsInProgress](self, "_personResetIsInProgress") && -[PLPerson verifiedType](self, "verifiedType") == 2 && !*(&self->super._willSaveCallCount + 1))
    {
      v7 = PLBackendGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [(PLPerson *)self personUUID];
        v9 = [v3 name];
        *buf = 138543618;
        v15 = v8;
        v16 = 2112;
        v17 = v9;
        _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "Deleting graph person %{public}@ with unspecified reason in context %@", buf, 0x16u);
      }
    }

    v10 = [(PLPerson *)self personUUID];

    if (v10)
    {
      v11 = [(PLManagedObject *)self photoLibrary];
      v12 = [v11 pathManager];
      [(PLPerson *)self removePersistedFileSystemDataWithPathManager:v12];
    }

    [v3 recordCloudDeletionForObject:self];
  }
}

- (NSSet)allDetectedFaces
{
  v3 = [(PLPerson *)self detectedFaces];
  v4 = [v3 mutableCopy];

  v5 = [(PLPerson *)self temporalDetectedFaces];
  [v4 unionSet:v5];

  v6 = [v4 copy];

  return v6;
}

+ (id)fetchFinalMergeTargetPersonForPersonWithUUID:(id)a3 context:(id)a4 predicate:(id)a5
{
  v30[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [a1 fetchRequest];
  v30[0] = @"mergeTargetPerson.mergeTargetPerson.mergeTargetPerson.mergeTargetPerson.mergeTargetPerson";
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
  [v11 setRelationshipKeyPathsForPrefetching:v12];

  v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"personUUID == %@", v8];
  v14 = v13;
  if (v9)
  {
    v15 = MEMORY[0x1E696AB28];
    v29[0] = v9;
    v29[1] = v13;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
    v17 = [v15 andPredicateWithSubpredicates:v16];
  }

  else
  {
    v17 = v13;
  }

  [v11 setPredicate:v17];
  [v11 setReturnsObjectsAsFaults:0];
  [v11 setFetchLimit:1];
  v24 = 0;
  v18 = [v10 executeFetchRequest:v11 error:&v24];

  v19 = v24;
  if (!v18)
  {
    v20 = PLBackendGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v26 = v8;
      v27 = 2112;
      v28 = v19;
      _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_ERROR, "Failed to fetch final merge target person with UUID %@: %@", buf, 0x16u);
    }
  }

  v21 = [v18 firstObject];
  v22 = [v21 finalMergeTargetPerson];

  return v22;
}

+ (BOOL)_detachFacesForPerson:(id)a3 reason:(signed __int16)a4 error:(id *)a5
{
  v6 = a4;
  v52[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10 = [v8 managedObjectContext];
  v11 = [v8 allDetectedFaces];
  v12 = [v11 allObjects];

  v13 = [v12 count];
  v14 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:v13];
  v15 = 0;
  if (v6 == 6 && v13)
  {
    v15 = [a1 createUnverifiedPersonInManagedObjectContext:v10];
    [v15 setDetectionType:{objc_msgSend(v8, "detectionType")}];
    v16 = [v8 mdID];
    [v15 setMdID:v16];
  }

  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __47__PLPerson__detachFacesForPerson_reason_error___block_invoke;
  v45[3] = &unk_1E7577090;
  v17 = v14;
  v46 = v17;
  v18 = v9;
  v47 = v18;
  v19 = v15;
  v48 = v19;
  v20 = [v10 enumerateWithIncrementalSaveUsingObjects:v12 withBlock:v45];
  if ([v17 isCancelled] && !v20)
  {
    v21 = MEMORY[0x1E696ABC0];
    v22 = *MEMORY[0x1E69BFF48];
    v51 = *MEMORY[0x1E696A278];
    v52[0] = @"Person reset cancelled while deleting unnamed faces";
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:&v51 count:1];
    v20 = [v21 errorWithDomain:v22 code:41031 userInfo:v23];
  }

  if (!v20)
  {
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __47__PLPerson__detachFacesForPerson_reason_error___block_invoke_2;
    v43[3] = &unk_1E75770B8;
    v44 = v17;
    v20 = [v10 enumerateWithIncrementalSaveUsingObjects:v18 withBlock:v43];
  }

  if (v19)
  {
    v24 = +[PLKeyFaceManager sharedInstance];
    v25 = [v19 personUUID];
    [v19 photoLibrary];
    v42 = v19;
    v26 = v17;
    v27 = v8;
    v28 = v18;
    v29 = v12;
    v30 = v10;
    v32 = v31 = a5;
    [v24 markPersonAsNeedingKeyFace:v25 photoLibrary:v32];

    a5 = v31;
    v10 = v30;
    v12 = v29;
    v18 = v28;
    v8 = v27;
    v17 = v26;
    v19 = v42;
  }

  if ([v17 isCancelled] && !v20)
  {
    v33 = a5;
    v34 = MEMORY[0x1E696ABC0];
    v35 = *MEMORY[0x1E69BFF48];
    v49 = *MEMORY[0x1E696A278];
    v50 = @"Person reset cancelled while deleting verified faces";
    v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
    v37 = v34;
    a5 = v33;
    v20 = [v37 errorWithDomain:v35 code:41031 userInfo:v36];
  }

  v38 = v20;
  v39 = v38;
  if (v20 && a5)
  {
    v40 = v38;
    *a5 = v39;
  }

  return v20 == 0;
}

void __47__PLPerson__detachFacesForPerson_reason_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if ([*(a1 + 32) isCancelled])
  {
    *a4 = 1;
  }

  else
  {
    if ([v6 nameSource] && objc_msgSend(v6, "nameSource") != 2)
    {
      [*(a1 + 40) addObject:v6];
    }

    else
    {
      [v6 removeAllPersonRelationships];
      [*(a1 + 32) setCompletedUnitCount:{objc_msgSend(*(a1 + 32), "completedUnitCount") + 1}];
    }

    [v6 setAssociatedPerson:*(a1 + 48)];
  }
}

void __47__PLPerson__detachFacesForPerson_reason_error___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if ([*(a1 + 32) isCancelled])
  {
    *a4 = 1;
  }

  else
  {
    [v6 removeAllPersonRelationships];
    [*(a1 + 32) setCompletedUnitCount:{objc_msgSend(*(a1 + 32), "completedUnitCount") + 1}];
  }
}

+ (BOOL)_deleteObjectsWithFetchRequest:(id)a3 reason:(signed __int16)a4 moc:(id)a5 progress:(id)a6 error:(id *)a7
{
  v53 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a5;
  v32 = a6;
  [v12 setFetchBatchSize:100];
  v40 = 0;
  v14 = [v13 executeFetchRequest:v12 error:&v40];
  v15 = v40;
  if (v14)
  {
    *v49 = 0;
    *&v49[8] = v49;
    *&v49[16] = 0x3032000000;
    v50 = __Block_byref_object_copy__110782;
    v51 = __Block_byref_object_dispose__110783;
    v52 = 0;
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __69__PLPerson__deleteObjectsWithFetchRequest_reason_moc_progress_error___block_invoke;
    v33[3] = &unk_1E7577068;
    v16 = v32;
    v34 = v16;
    v37 = v49;
    v38 = a1;
    v39 = a4;
    v31 = v12;
    v35 = v31;
    v36 = v13;
    v17 = [v36 enumerateWithIncrementalSaveUsingObjects:v14 withBlock:v33];
    v18 = v17;
    v19 = *(*&v49[8] + 40);
    if (!v19)
    {
      v19 = v17;
    }

    v20 = v19;
    if (v20 || [v16 isCancelled] && (v28 = MEMORY[0x1E696ABC0], v47 = *MEMORY[0x1E696A278], v48 = @"Person reset cancelled during person delete", objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v48, &v47, 1), v29 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v28, "errorWithDomain:code:userInfo:", *MEMORY[0x1E69BFF48], 41031, v29), v20 = objc_claimAutoreleasedReturnValue(), v29, v20))
    {
      v21 = PLBackendGetLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = [v31 entityName];
        *buf = 138543874;
        v42 = v22;
        v43 = 2082;
        v44 = "+[PLPerson _deleteObjectsWithFetchRequest:reason:moc:progress:error:]";
        v45 = 2112;
        v46 = v20;
        _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_ERROR, "Failed to delete %{public}@ in %{public}s %@", buf, 0x20u);
      }

      if (a7)
      {
        v23 = v20;
        *a7 = v20;
      }

      v24 = 0;
    }

    else
    {
      v24 = 1;
    }

    _Block_object_dispose(v49, 8);
  }

  else
  {
    v25 = PLBackendGetLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = [v12 entityName];
      *v49 = 138543874;
      *&v49[4] = v26;
      *&v49[12] = 2082;
      *&v49[14] = "+[PLPerson _deleteObjectsWithFetchRequest:reason:moc:progress:error:]";
      *&v49[22] = 2112;
      v50 = v15;
      _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_ERROR, "Failed to fetch %{public}@ in %{public}s %@", v49, 0x20u);
    }

    if (a7)
    {
      v27 = v15;
      v24 = 0;
      *a7 = v15;
    }

    else
    {
      v24 = 0;
    }
  }

  return v24;
}

void __69__PLPerson__deleteObjectsWithFetchRequest_reason_moc_progress_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if ([*(a1 + 32) isCancelled])
  {
    *a4 = 1;
  }

  else
  {
    [*(a1 + 32) becomeCurrentWithPendingUnitCount:1];
    v7 = [*(a1 + 40) entityName];
    v8 = +[PLPerson entityName];
    v9 = [v7 isEqualToString:v8];

    if (v9 && (v10 = *(a1 + 72), v11 = *(a1 + 64), v12 = *(*(a1 + 56) + 8), obj = *(v12 + 40), v13 = [v11 _detachFacesForPerson:v6 reason:v10 error:&obj], objc_storeStrong((v12 + 40), obj), (v13 & 1) == 0))
    {
      *a4 = 1;
    }

    else if (!*a4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v6 deletePersonWithReason:*(a1 + 72)];
      }

      else
      {
        [*(a1 + 48) deleteObject:v6];
      }
    }

    [*(a1 + 32) resignCurrent];
  }
}

+ (void)_resetMediaAnalysisAfterPersonResetInLibraryURL:(id)a3 resetPersons:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v7 = a5;
  if (v6)
  {
    [PLMediaAnalysisServiceRequestAdapter requestResetPersons:0 photoLibraryURL:v8 completionHandler:v7];
  }

  [PLMediaAnalysisServiceRequestAdapter requestResetFaceClassificationModelForPhotoLibraryURL:v8 progressHandler:&__block_literal_global_324 completionHandler:v7];
}

+ (id)resetAllInLibrary:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v57[0] = 0;
  v57[1] = v57;
  v57[2] = 0x2020000000;
  v58 = 0;
  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = __Block_byref_object_copy__110782;
  v55 = __Block_byref_object_dispose__110783;
  v56 = 0;
  v8 = [v6 managedObjectContext];
  [a1 _setPersonResetInProgress:1 context:v8];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __41__PLPerson_resetAllInLibrary_completion___block_invoke;
  aBlock[3] = &unk_1E7576FA8;
  v50 = a1;
  v9 = v8;
  v48 = v9;
  v10 = v7;
  v49 = v10;
  v11 = _Block_copy(aBlock);
  v12 = +[PLPerson fetchRequest];
  v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %d", @"verifiedType", 0];
  [v12 setPredicate:v13];

  [v12 setFetchBatchSize:100];
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __41__PLPerson_resetAllInLibrary_completion___block_invoke_2;
  v38[3] = &unk_1E7578898;
  v41 = &v43;
  v14 = v9;
  v39 = v14;
  v15 = v12;
  v40 = v15;
  v42 = &v51;
  [v6 performBlockAndWait:v38];
  if (v52[5])
  {
    v11[2](v11, 0);
    v16 = 0;
  }

  else
  {
    v17 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:v44[3]];
    v22 = [MEMORY[0x1E69BF360] transaction:"+[PLPerson resetAllInLibrary:completion:]"];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __41__PLPerson_resetAllInLibrary_completion___block_invoke_3;
    v30[3] = &unk_1E7576FD0;
    v34 = &v43;
    v35 = v57;
    v37 = a1;
    v31 = v15;
    v32 = v14;
    v18 = v17;
    v33 = v18;
    v36 = &v51;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __41__PLPerson_resetAllInLibrary_completion___block_invoke_318;
    v23[3] = &unk_1E7577020;
    v24 = v6;
    v27 = v57;
    v29 = a1;
    v26 = v11;
    v28 = &v51;
    v19 = v22;
    v25 = v19;
    [v24 performTransaction:v30 completionHandler:v23];
    v20 = v25;
    v16 = v18;
  }

  _Block_object_dispose(&v43, 8);
  _Block_object_dispose(&v51, 8);

  _Block_object_dispose(v57, 8);

  return v16;
}

void __41__PLPerson_resetAllInLibrary_completion___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v4 = a1[6];
  v5 = a1[4];
  v6 = a3;
  [v4 _setPersonResetInProgress:0 context:v5];
  (*(a1[5] + 16))();
}

void __41__PLPerson_resetAllInLibrary_completion___block_invoke_2(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v7 = 0;
  v4 = [v2 countForFetchRequest:v3 error:&v7];
  v5 = v7;
  v6 = v7;
  *(*(a1[6] + 8) + 24) = v4;
  if (*(*(a1[6] + 8) + 24) == 0x7FFFFFFFFFFFFFFFLL)
  {
    objc_storeStrong((*(a1[7] + 8) + 40), v5);
  }
}

void __41__PLPerson_resetAllInLibrary_completion___block_invoke_3(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = PLBackendGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1[7] + 8) + 24);
    *buf = 134217984;
    v22 = v3;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEFAULT, "Person reset deleting %tu persons", buf, 0xCu);
  }

  v4 = a1[10];
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  v20 = 0;
  v8 = [v4 _deleteObjectsWithFetchRequest:v5 reason:6 moc:v6 progress:v7 error:&v20];
  v9 = v20;
  v10 = v9;
  *(*(a1[8] + 8) + 24) = v8;
  if (*(*(a1[8] + 8) + 24))
  {
    v11 = PLBackendGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "Person reset deleting face crops, if any are still remaining", buf, 2u);
    }

    v12 = +[PLFaceCrop fetchRequest];
    v13 = a1[10];
    v14 = a1[5];
    v19 = v10;
    v15 = [v13 _deleteObjectsWithFetchRequest:v12 reason:6 moc:v14 progress:0 error:&v19];
    v16 = v19;
    v17 = v19;

    *(*(a1[8] + 8) + 24) = v15;
    if ((*(*(a1[8] + 8) + 24) & 1) == 0)
    {
      objc_storeStrong((*(a1[9] + 8) + 40), v16);
    }
  }

  else
  {
    v18 = *(a1[9] + 8);
    v17 = v9;
    v12 = *(v18 + 40);
    *(v18 + 40) = v17;
  }
}

uint64_t __41__PLPerson_resetAllInLibrary_completion___block_invoke_318(uint64_t a1)
{
  v2 = [*(a1 + 32) globalValues];
  v3 = [v2 libraryCreateOptions];

  if (*(*(*(a1 + 56) + 8) + 24) == 1 && (v3 & 0x10) == 0)
  {
    v5 = [MEMORY[0x1E69BF360] transaction:"Person Reset XPC to MAD"];
    v6 = *(a1 + 72);
    v7 = [*(a1 + 32) pathManager];
    v8 = [v7 libraryURL];
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __41__PLPerson_resetAllInLibrary_completion___block_invoke_2_320;
    v15 = &unk_1E7576FF8;
    v9 = *(a1 + 48);
    v16 = v5;
    v17 = v9;
    v10 = v5;
    [v6 _resetMediaAnalysisAfterPersonResetInLibraryURL:v8 resetPersons:1 completion:&v12];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }

  return [*(a1 + 40) stillAlive];
}

uint64_t __41__PLPerson_resetAllInLibrary_completion___block_invoke_2_320(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 stillAlive];
}

+ (void)_setPersonResetInProgress:(BOOL)a3 context:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__PLPerson__setPersonResetInProgress_context___block_invoke;
  v7[3] = &unk_1E7576F80;
  v9 = a3;
  v8 = v5;
  v6 = v5;
  [v6 performBlockAndWait:v7];
}

void __46__PLPerson__setPersonResetInProgress_context___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) userInfo];
  v3 = v2;
  if (v1 == 1)
  {
    [v2 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"PLPersonReset"];
  }

  else
  {
    [v2 removeObjectForKey:@"PLPersonReset"];
  }
}

+ (BOOL)resetAllInLibrary:(id)a3 error:(id *)a4
{
  v5 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 1;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__110782;
  v22 = __Block_byref_object_dispose__110783;
  v23 = 0;
  v6 = [v5 managedObjectContext];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __36__PLPerson_resetAllInLibrary_error___block_invoke;
  v14[3] = &unk_1E7578870;
  v7 = v6;
  v15 = v7;
  v16 = &v24;
  v17 = &v18;
  [v5 performTransactionAndWait:v14];
  if (*(v25 + 24) == 1)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __36__PLPerson_resetAllInLibrary_error___block_invoke_310;
    v10[3] = &unk_1E7578870;
    v11 = v7;
    v12 = &v24;
    v13 = &v18;
    [v5 performBlockAndWait:v10];
  }

  if (a4)
  {
    *a4 = v19[5];
  }

  v8 = *(v25 + 24);

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v8;
}

void __36__PLPerson_resetAllInLibrary_error___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = +[PLPerson fetchRequest];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %d", @"verifiedType", 0];
  [v2 setPredicate:v3];

  [v2 setFetchBatchSize:100];
  v4 = *(a1 + 32);
  v13 = 0;
  v5 = [v4 executeFetchRequest:v2 error:&v13];
  v6 = v13;
  if (!v5)
  {
    v10 = PLBackendGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = v6;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "Person reset failed to fetch verified persons with error: %@", buf, 0xCu);
    }

LABEL_11:

    *(*(*(a1 + 40) + 8) + 24) = 0;
    v11 = *(*(a1 + 48) + 8);
    v6 = v6;
    v12 = *(v11 + 40);
    *(v11 + 40) = v6;

    goto LABEL_12;
  }

  if ([v5 count])
  {
    v7 = PLBackendGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v5 count];
      *buf = 134217984;
      v15 = v8;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "Person reset deleting %lu verified persons", buf, 0xCu);
    }

    v9 = [*(a1 + 32) enumerateWithIncrementalSaveUsingObjects:v5 withBlock:&__block_literal_global_110989];

    if (!v9)
    {
      v6 = 0;
      goto LABEL_12;
    }

    v10 = PLBackendGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = v9;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "Person reset failed to save with error: %@", buf, 0xCu);
    }

    v6 = v9;
    goto LABEL_11;
  }

LABEL_12:
}

void __36__PLPerson_resetAllInLibrary_error___block_invoke_310(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = +[PLFaceCrop fetchRequest];
  [v2 setFetchBatchSize:100];
  v3 = *(a1 + 32);
  v12 = 0;
  v4 = [v3 executeFetchRequest:v2 error:&v12];
  v5 = v12;
  if (!v4)
  {
    v9 = PLBackendGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v5;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "Person reset failed to fetch face crops with error: %@", buf, 0xCu);
    }

LABEL_11:

    *(*(*(a1 + 40) + 8) + 24) = 0;
    v10 = *(*(a1 + 48) + 8);
    v5 = v5;
    v11 = *(v10 + 40);
    *(v10 + 40) = v5;

    goto LABEL_12;
  }

  if ([v4 count])
  {
    v6 = PLBackendGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v4 count];
      *buf = 134217984;
      v14 = v7;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "Person reset found %lu face crops to delete, these are probably orphaned", buf, 0xCu);
    }

    v8 = [*(a1 + 32) deleteObjectsWithIncrementalSave:v4];

    if (!v8)
    {
      v5 = 0;
      goto LABEL_12;
    }

    v9 = PLBackendGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v8;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "Person reset failed to save with error: %@", buf, 0xCu);
    }

    v5 = v8;
    goto LABEL_11;
  }

LABEL_12:
}

+ (id)predicateForIncludedDetectionTypes:(id)a3
{
  v3 = a3;
  if ([v3 containsObject:&unk_1F0FBED40])
  {
    v4 = [v3 containsObject:&unk_1F0FBED58];

    if (v4)
    {
      v5 = 0;
    }

    else
    {
      v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K >= %@", @"detectionType", &unk_1F0FBED40];
    }
  }

  else
  {
    v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"detectionType", v3];
  }

  return v5;
}

+ (id)predicateForVisibleKeyFace
{
  v11[5] = *MEMORY[0x1E69E9840];
  v2 = [PLManagedAsset predicateToExcludeNonvisibleBurstAssetsWithAvalanchePickTypeKeyPath:@"keyFace.assetForFace.avalanchePickType"];
  v3 = [PLManagedAsset predicateToExcludeHiddenAssetsWithHiddenKeyPath:@"keyFace.assetForFace.hidden"];
  v4 = [PLManagedAsset predicateToExcludeTrashedAssetsWithTrashedStateKeyPath:@"keyFace.assetForFace.trashedState"];
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != nil", @"keyFace"];
  v6 = [PLManagedAsset predicateToExcludeVideosWithVideoKeyFrameSetWithKeyPathToAsset:@"keyFace.assetForFace"];
  v7 = MEMORY[0x1E696AB28];
  v11[0] = v5;
  v11[1] = v2;
  v11[2] = v3;
  v11[3] = v4;
  v11[4] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:5];
  v9 = [v7 andPredicateWithSubpredicates:v8];

  return v9;
}

+ (id)predicateForPersonsNeedingFaceCropGenerationForFaceObjectID:(id)a3
{
  v33[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AE18];
  v4 = a3;
  v5 = [v3 predicateWithFormat:@"%K == %d", @"verifiedType", 1];
  v27 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SUBQUERY(%K, $f, $f == %@ AND $f.%K == %d AND ($f.%K == %d OR $f.%K == %d)).@count > 0", @"detectedFaces", v4, @"confirmedFaceCropGenerationState", 1, @"nameSource", 3, @"nameSource", 1];
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"verifiedType", 2];
  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SUBQUERY(%K, $f, $f == %@ AND $f.%K == %d AND $f.%K == %d).@count > 0", @"detectedFaces", v4, @"confirmedFaceCropGenerationState", 1, @"nameSource", 5];
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%@ IN %K AND %@ IN %K", v4, @"rejectedFaces", v4, @"rejectedFacesNeedingFaceCrops"];

  v9 = MEMORY[0x1E696AB28];
  v28 = v5;
  v33[0] = v5;
  v33[1] = v6;
  v26 = v6;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
  v11 = [v9 orPredicateWithSubpredicates:v10];

  v12 = MEMORY[0x1E696AB28];
  v32[0] = v5;
  v32[1] = v27;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
  v14 = [v12 andPredicateWithSubpredicates:v13];

  v15 = MEMORY[0x1E696AB28];
  v31[0] = v6;
  v31[1] = v7;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
  v17 = [v15 andPredicateWithSubpredicates:v16];

  v18 = MEMORY[0x1E696AB28];
  v30[0] = v11;
  v30[1] = v8;
  v19 = v8;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
  v21 = [v18 andPredicateWithSubpredicates:v20];

  v22 = MEMORY[0x1E696AB28];
  v29[0] = v14;
  v29[1] = v17;
  v29[2] = v21;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:3];
  v24 = [v22 orPredicateWithSubpredicates:v23];

  return v24;
}

+ (id)_stringFromContact:(id)a3 preferGivenName:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [v5 givenName];
  v7 = v6;
  if (v4 && [v6 length])
  {
    v8 = v7;
  }

  else
  {
    v8 = [MEMORY[0x1E695CD80] stringFromContact:v5 style:0];
  }

  v9 = v8;

  return v9;
}

+ (id)fetchMePersonInManagedObjectContext:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695D5E0];
  v5 = a3;
  v6 = +[PLPerson entityName];
  v7 = [v4 fetchRequestWithEntityName:v6];

  v8 = [a1 predicateForMePerson];
  [v7 setPredicate:v8];

  [v7 setFetchLimit:1];
  v14 = 0;
  v9 = [v5 executeFetchRequest:v7 error:&v14];

  v10 = v14;
  if (v9)
  {
    v11 = [v9 firstObject];
  }

  else
  {
    v12 = PLBackendGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v10;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "Fetch for me person failed: %@", buf, 0xCu);
    }

    v11 = 0;
  }

  return v11;
}

+ (void)batchFetchAssociatedPersonByFaceGroupUUIDWithFaceGroupUUIDs:(id)a3 predicate:(id)a4 library:(id)a5 completion:(id)a6
{
  v8 = a3;
  v9 = a5;
  v10 = a6;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __101__PLPerson_batchFetchAssociatedPersonByFaceGroupUUIDWithFaceGroupUUIDs_predicate_library_completion___block_invoke;
  v14[3] = &unk_1E7576F38;
  v15 = v9;
  v16 = v8;
  v17 = v10;
  v11 = v8;
  v12 = v10;
  v13 = v9;
  [v13 performBlockAndWait:v14];
}

void __101__PLPerson_batchFetchAssociatedPersonByFaceGroupUUIDWithFaceGroupUUIDs_predicate_library_completion___block_invoke(uint64_t a1)
{
  v1 = a1;
  v29 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = MEMORY[0x1E695D5E0];
  v4 = +[PLPerson entityName];
  v5 = [v3 fetchRequestWithEntityName:v4];

  [v5 setRelationshipKeyPathsForPrefetching:&unk_1F0FC0270];
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"associatedFaceGroup.uuid IN %@", *(v1 + 40)];
  [v5 setPredicate:v6];
  v27 = 0;
  v7 = [v2 executeFetchRequest:v5 error:&v27];
  v8 = v27;
  v9 = v8;
  if (v7)
  {
    v19 = v8;
    v20 = v6;
    v21 = v1;
    v22 = v2;
    v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v7, "count")}];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v11 = v7;
    v12 = [v11 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v24;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v24 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v23 + 1) + 8 * i);
          v17 = [v16 associatedFaceGroup];
          v18 = [v17 uuid];

          if (v18)
          {
            [v10 setObject:v16 forKeyedSubscript:v18];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v13);
    }

    v1 = v21;
    v2 = v22;
    v9 = v19;
    v6 = v20;
  }

  else
  {
    v10 = 0;
  }

  (*(*(v1 + 48) + 16))();
}

+ (id)fetchPersonCountByAssetUUIDForAssetUUIDs:(id)a3 predicate:(id)a4 includedDetectionTypes:(id)a5 library:(id)a6 error:(id *)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__110782;
  v39 = __Block_byref_object_dispose__110783;
  v40 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__110782;
  v33 = __Block_byref_object_dispose__110783;
  v34 = 0;
  v14 = a6;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __100__PLPerson_fetchPersonCountByAssetUUIDForAssetUUIDs_predicate_includedDetectionTypes_library_error___block_invoke;
  v22[3] = &unk_1E7576F10;
  v15 = v14;
  v23 = v15;
  v16 = v12;
  v24 = v16;
  v17 = v11;
  v25 = v17;
  v18 = v13;
  v26 = v18;
  v27 = &v29;
  v28 = &v35;
  [v15 performBlockAndWait:v22];
  if (a7)
  {
    v19 = v30[5];
    if (v19)
    {
      *a7 = v19;
    }
  }

  v20 = v36[5];

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v35, 8);

  return v20;
}

void __100__PLPerson_fetchPersonCountByAssetUUIDForAssetUUIDs_predicate_includedDetectionTypes_library_error___block_invoke(uint64_t a1)
{
  v131[2] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = MEMORY[0x1E695D5E0];
  if (!*(a1 + 40))
  {
    v54 = +[PLManagedAsset entityName];
    v5 = [v3 fetchRequestWithEntityName:v54];

    v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"uuid", *(a1 + 48)];
    v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY %K.%K != nil", @"detectedFaces", @"personForFace"];
    v55 = MEMORY[0x1E696AB28];
    v124[0] = v7;
    v124[1] = v9;
    v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:v124 count:2];
    v57 = [v55 andPredicateWithSubpredicates:v56];

    v84 = v57;
    [v5 setPredicate:v57];
    [v5 setResultType:2];
    v58 = objc_alloc_init(MEMORY[0x1E695D5C8]);
    v59 = MEMORY[0x1E696ABC8];
    v60 = [MEMORY[0x1E696ABC8] expressionForEvaluatedObject];
    v123 = v60;
    v61 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v123 count:1];
    v62 = [v59 expressionForFunction:@"count:" arguments:v61];

    [v58 setName:@"count"];
    v100 = v62;
    [v58 setExpression:v62];
    [v58 setExpressionResultType:200];
    v122[0] = @"uuid";
    obj = v58;
    v122[1] = v58;
    v63 = [MEMORY[0x1E695DEC8] arrayWithObjects:v122 count:2];
    [v5 setPropertiesToFetch:v63];

    [v5 setPropertiesToGroupBy:&unk_1F0FC0258];
    v106 = 0;
    v64 = [v2 executeFetchRequest:v5 error:&v106];
    v65 = v106;
    v66 = v106;
    v67 = v66;
    if (v64)
    {
      v97 = v66;
      v86 = v9;
      v88 = v7;
      v91 = v2;
      v68 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v69 = *(*(a1 + 72) + 8);
      v70 = *(v69 + 40);
      *(v69 + 40) = v68;

      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
      v99 = v64;
      v71 = v64;
      v72 = [v71 countByEnumeratingWithState:&v102 objects:v121 count:16];
      if (v72)
      {
        v73 = v72;
        v74 = *v103;
        do
        {
          for (i = 0; i != v73; ++i)
          {
            if (*v103 != v74)
            {
              objc_enumerationMutation(v71);
            }

            v76 = *(*(&v102 + 1) + 8 * i);
            v77 = [v76 objectForKeyedSubscript:@"count"];
            v78 = *(*(*(a1 + 72) + 8) + 40);
            v79 = [v76 objectForKeyedSubscript:@"uuid"];
            [v78 setObject:v77 forKeyedSubscript:v79];
          }

          v73 = [v71 countByEnumeratingWithState:&v102 objects:v121 count:16];
        }

        while (v73);
      }

      v2 = v91;
      v9 = v86;
      v7 = v88;
      v67 = v97;
      v64 = v99;
    }

    else
    {
      objc_storeStrong((*(*(a1 + 64) + 8) + 40), v65);
    }

    v40 = v84;
    goto LABEL_54;
  }

  v4 = +[PLDetectedFace entityName];
  v5 = [v3 fetchRequestWithEntityName:v4];

  v131[0] = @"personForFace";
  v131[1] = @"assetForFace";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v131 count:2];
  [v5 setRelationshipKeyPathsForPrefetching:v6];

  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"assetForFace.uuid", *(a1 + 48)];
  if (*(a1 + 56) && ([PLDetectedFace predicateForIncludedDetectionTypes:?], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = v8;
    v10 = MEMORY[0x1E696AB28];
    v130[0] = v7;
    v130[1] = v8;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v130 count:2];
    v12 = [v10 andPredicateWithSubpredicates:v11];

    [v5 setPredicate:v12];
  }

  else
  {
    [v5 setPredicate:v7];
    v9 = 0;
  }

  v120 = 0;
  v13 = [v2 executeFetchRequest:v5 error:&v120];
  v14 = v120;
  v15 = v14;
  if (v13)
  {
    v85 = v9;
    v87 = v7;
    v89 = v5;
    v90 = v2;
    v100 = [MEMORY[0x1E695DF90] dictionary];
    v116 = 0u;
    v117 = 0u;
    v118 = 0u;
    v119 = 0u;
    obj = v13;
    v16 = [obj countByEnumeratingWithState:&v116 objects:v129 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v117;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v117 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v116 + 1) + 8 * j);
          v21 = [v20 assetForFace];
          v22 = [v21 uuid];

          v23 = [v20 associatedPersonForFaceOrTorso:1 orTemporal:0];
          v24 = [v23 personUUID];

          if (v22)
          {
            v25 = v24 == 0;
          }

          else
          {
            v25 = 1;
          }

          if (!v25)
          {
            v26 = [v100 objectForKeyedSubscript:v24];
            if (!v26)
            {
              v26 = [MEMORY[0x1E695DF70] array];
              [v100 setObject:v26 forKeyedSubscript:v24];
            }

            [v26 addObject:v22];
          }
        }

        v17 = [obj countByEnumeratingWithState:&v116 objects:v129 count:16];
      }

      while (v17);
    }

    v27 = MEMORY[0x1E695D5E0];
    v28 = +[PLPerson entityName];
    v29 = [v27 fetchRequestWithEntityName:v28];

    v128 = @"personUUID";
    v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v128 count:1];
    [v29 setPropertiesToFetch:v30];

    [v29 setResultType:2];
    v31 = MEMORY[0x1E696AE18];
    v32 = [v100 allKeys];
    v33 = [v31 predicateWithFormat:@"personUUID IN %@", v32];

    v34 = MEMORY[0x1E696AB28];
    v35 = *(a1 + 40);
    v127[0] = v33;
    v127[1] = v35;
    v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v127 count:2];
    v37 = [v34 andPredicateWithSubpredicates:v36];
    [v29 setPredicate:v37];

    v115 = v15;
    v2 = v90;
    v38 = [v90 executeFetchRequest:v29 error:&v115];
    v39 = v115;
    v40 = v115;

    if (v38)
    {
      v81 = v33;
      v82 = v29;
      v83 = v40;
      v41 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v42 = *(*(a1 + 72) + 8);
      v43 = *(v42 + 40);
      *(v42 + 40) = v41;

      v113 = 0u;
      v114 = 0u;
      v111 = 0u;
      v112 = 0u;
      v92 = v38;
      v95 = [v92 countByEnumeratingWithState:&v111 objects:v126 count:16];
      if (v95)
      {
        v94 = *v112;
        do
        {
          v44 = 0;
          do
          {
            if (*v112 != v94)
            {
              objc_enumerationMutation(v92);
            }

            v98 = v44;
            v96 = [*(*(&v111 + 1) + 8 * v44) objectForKeyedSubscript:@"personUUID"];
            v45 = [v100 objectForKeyedSubscript:?];
            v107 = 0u;
            v108 = 0u;
            v109 = 0u;
            v110 = 0u;
            v46 = [v45 countByEnumeratingWithState:&v107 objects:v125 count:16];
            if (v46)
            {
              v47 = v46;
              v48 = *v108;
              do
              {
                for (k = 0; k != v47; ++k)
                {
                  if (*v108 != v48)
                  {
                    objc_enumerationMutation(v45);
                  }

                  v50 = *(*(&v107 + 1) + 8 * k);
                  v51 = [*(*(*(a1 + 72) + 8) + 40) objectForKeyedSubscript:v50];
                  if (v51)
                  {
                    v52 = v51;
                    v53 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v51, "integerValue") + 1}];
                  }

                  else
                  {
                    v53 = &unk_1F0FBED28;
                  }

                  [*(*(*(a1 + 72) + 8) + 40) setObject:v53 forKeyedSubscript:v50];
                }

                v47 = [v45 countByEnumeratingWithState:&v107 objects:v125 count:16];
              }

              while (v47);
            }

            v44 = v98 + 1;
          }

          while (v98 + 1 != v95);
          v95 = [v92 countByEnumeratingWithState:&v111 objects:v126 count:16];
        }

        while (v95);
      }

      v2 = v90;
      v29 = v82;
      v40 = v83;
      v33 = v81;
    }

    else
    {
      objc_storeStrong((*(*(a1 + 64) + 8) + 40), v39);
    }

    v7 = v87;
    v5 = v89;
    v9 = v85;
LABEL_54:

    goto LABEL_55;
  }

  v80 = *(*(a1 + 64) + 8);
  v40 = v14;
  obj = 0;
  v101 = *(v80 + 40);
  *(v80 + 40) = v40;

LABEL_55:
}

+ (void)batchFetchPersonsByAssetUUIDWithAssetUUIDs:(id)a3 predicate:(id)a4 includedDetectionTypes:(id)a5 library:(id)a6 completion:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __107__PLPerson_batchFetchPersonsByAssetUUIDWithAssetUUIDs_predicate_includedDetectionTypes_library_completion___block_invoke;
  v21[3] = &unk_1E7576EE8;
  v22 = v14;
  v23 = v11;
  v24 = v13;
  v25 = v12;
  v26 = v15;
  v16 = v11;
  v17 = v13;
  v18 = v12;
  v19 = v15;
  v20 = v14;
  [v20 performBlockAndWait:v21];
}

void __107__PLPerson_batchFetchPersonsByAssetUUIDWithAssetUUIDs_predicate_includedDetectionTypes_library_completion___block_invoke(uint64_t a1)
{
  v1 = a1;
  v84[2] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = MEMORY[0x1E695D5E0];
  v4 = +[PLDetectedFace entityName];
  v5 = [v3 fetchRequestWithEntityName:v4];

  v84[0] = @"personForFace";
  v84[1] = @"assetForFace";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v84 count:2];
  [v5 setRelationshipKeyPathsForPrefetching:v6];

  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"assetForFace.uuid", v1[5]];
  if (v1[6] && ([PLDetectedFace predicateForIncludedDetectionTypes:?], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = v8;
    v10 = MEMORY[0x1E696AB28];
    v83[0] = v7;
    v83[1] = v8;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:2];
    v12 = [v10 andPredicateWithSubpredicates:v11];

    [v5 setPredicate:v12];
  }

  else
  {
    [v5 setPredicate:v7];
    v9 = 0;
  }

  v78 = 0;
  v13 = [v2 executeFetchRequest:v5 error:&v78];
  v14 = v78;
  if (v13)
  {
    v55 = v9;
    v56 = v5;
    v57 = v1;
    v58 = v2;
    v59 = [MEMORY[0x1E695DF70] array];
    v64 = [MEMORY[0x1E695DF90] dictionary];
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v54 = v13;
    v15 = v13;
    v16 = [v15 countByEnumeratingWithState:&v74 objects:v82 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v75;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v75 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v74 + 1) + 8 * i);
          v21 = [v20 assetForFace];
          v22 = [v21 uuid];

          v23 = [v20 associatedPersonForFaceOrTorso:1 orTemporal:0];
          v24 = v23;
          if (v22)
          {
            v25 = v23 == 0;
          }

          else
          {
            v25 = 1;
          }

          if (!v25)
          {
            v26 = [v23 personUUID];
            v27 = [v64 objectForKeyedSubscript:v26];

            if (!v27)
            {
              v27 = [MEMORY[0x1E695DF70] array];
              v28 = [v24 personUUID];
              [v64 setObject:v27 forKeyedSubscript:v28];

              [v59 addObject:v24];
            }

            [v27 addObject:v22];
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v74 objects:v82 count:16];
      }

      while (v17);
    }

    v1 = v57;
    if (v57[7])
    {
      v29 = MEMORY[0x1E695D5E0];
      v30 = +[PLPerson entityName];
      v31 = [v29 fetchRequestWithEntityName:v30];

      v32 = MEMORY[0x1E696AE18];
      v33 = [v64 allKeys];
      v34 = [v32 predicateWithFormat:@"personUUID IN %@", v33];

      v35 = MEMORY[0x1E696AB28];
      v36 = v57[7];
      v81[0] = v34;
      v81[1] = v36;
      v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v81 count:2];
      v38 = [v35 andPredicateWithSubpredicates:v37];
      [v31 setPredicate:v38];

      v73 = v14;
      v2 = v58;
      v39 = [v58 executeFetchRequest:v31 error:&v73];
      v40 = v73;

      if (v39)
      {
        v41 = v39;
      }

      v14 = v40;
      if (v39)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v39 = v59;
      v2 = v58;
      if (v39)
      {
LABEL_24:
        v53 = v14;
        v42 = [MEMORY[0x1E695DF90] dictionary];
        v69 = 0u;
        v70 = 0u;
        v71 = 0u;
        v72 = 0u;
        v52 = v39;
        obj = v39;
        v62 = [obj countByEnumeratingWithState:&v69 objects:v80 count:16];
        if (v62)
        {
          v61 = *v70;
          do
          {
            for (j = 0; j != v62; ++j)
            {
              if (*v70 != v61)
              {
                objc_enumerationMutation(obj);
              }

              v44 = *(*(&v69 + 1) + 8 * j);
              v63 = [v44 personUUID];
              v45 = [v64 objectForKeyedSubscript:?];
              v65 = 0u;
              v66 = 0u;
              v67 = 0u;
              v68 = 0u;
              v46 = [v45 countByEnumeratingWithState:&v65 objects:v79 count:16];
              if (v46)
              {
                v47 = v46;
                v48 = *v66;
                do
                {
                  for (k = 0; k != v47; ++k)
                  {
                    if (*v66 != v48)
                    {
                      objc_enumerationMutation(v45);
                    }

                    v50 = *(*(&v65 + 1) + 8 * k);
                    v51 = [v42 objectForKeyedSubscript:v50];
                    if (!v51)
                    {
                      v51 = [MEMORY[0x1E695DF70] array];
                      [v42 setObject:v51 forKeyedSubscript:v50];
                    }

                    [v51 addObject:v44];
                  }

                  v47 = [v45 countByEnumeratingWithState:&v65 objects:v79 count:16];
                }

                while (v47);
              }
            }

            v62 = [obj countByEnumeratingWithState:&v69 objects:v80 count:16];
          }

          while (v62);
        }

        v1 = v57;
        v2 = v58;
        v39 = v52;
        v14 = v53;
        goto LABEL_44;
      }
    }

    v42 = 0;
LABEL_44:

    v5 = v56;
    v13 = v54;
    v9 = v55;
    goto LABEL_45;
  }

  v42 = 0;
LABEL_45:
  (*(v1[8] + 16))();
}

+ (void)batchFetchPersonUUIDsByAssetUUIDWithAssetUUIDs:(id)a3 predicate:(id)a4 includedDetectionTypes:(id)a5 includeTemporalDetectedFaces:(BOOL)a6 inManagedObjectContext:(id)a7 completion:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __155__PLPerson_batchFetchPersonUUIDsByAssetUUIDWithAssetUUIDs_predicate_includedDetectionTypes_includeTemporalDetectedFaces_inManagedObjectContext_completion___block_invoke;
  v24[3] = &unk_1E7576EC0;
  v25 = v14;
  v26 = v15;
  v31 = a6;
  v27 = v16;
  v28 = v17;
  v29 = v18;
  v30 = a1;
  v19 = v18;
  v20 = v17;
  v21 = v16;
  v22 = v15;
  v23 = v14;
  [v20 performBlockAndWait:v24];
}

void __155__PLPerson_batchFetchPersonUUIDsByAssetUUIDWithAssetUUIDs_predicate_includedDetectionTypes_includeTemporalDetectedFaces_inManagedObjectContext_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 80);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v10 = 0;
  v8 = [v2 _batchFetchPersonUUIDsByAssetUUIDWithAssetUUIDs:v3 predicate:v4 includedDetectionTypes:v6 includeTemporalDetectedFaces:v5 inManagedObjectContext:v7 error:&v10];
  v9 = v10;
  (*(*(a1 + 64) + 16))();
}

+ (id)_batchFetchPersonUUIDsByAssetUUIDWithAssetUUIDs:(id)a3 predicate:(id)a4 includedDetectionTypes:(id)a5 includeTemporalDetectedFaces:(BOOL)a6 inManagedObjectContext:(id)a7 error:(id *)a8
{
  v10 = a6;
  v79[2] = *MEMORY[0x1E69E9840];
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = MEMORY[0x1E695DF90];
  v17 = a3;
  v18 = [v16 dictionary];
  v19 = MEMORY[0x1E695D5E0];
  v20 = +[PLManagedAsset entityName];
  v21 = [v19 fetchRequestWithEntityName:v20];

  v22 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"uuid", v17];

  [v21 setPredicate:v22];
  [v21 setResultType:1];
  v70 = 0;
  v62 = v15;
  v23 = [v15 executeFetchRequest:v21 error:&v70];
  v24 = v70;
  if (v23)
  {
    v58 = a8;
    v59 = v18;
    v25 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"assetForFace", v23];
    v56 = v24;
    v57 = v23;
    if (v10)
    {
      v26 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"assetForTemporalDetectedFaces", v23];
      v27 = MEMORY[0x1E696AB28];
      v79[0] = v25;
      v79[1] = v26;
      v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v79 count:2];
      v29 = [v27 orPredicateWithSubpredicates:v28];

      v25 = v29;
    }

    v61 = v13;
    if (v13)
    {
      v32 = MEMORY[0x1E696AB28];
      v78[0] = v25;
      v78[1] = v13;
      v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v78 count:2];
      v30 = [v32 andPredicateWithSubpredicates:v33];
    }

    else
    {
      v30 = v25;
    }

    v60 = v14;
    if (v14)
    {
      v34 = [PLDetectedFace predicateForIncludedDetectionTypes:v14];
      v35 = v34;
      if (v34)
      {
        v36 = MEMORY[0x1E696AB28];
        v77[0] = v30;
        v77[1] = v34;
        v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v77 count:2];
        v38 = [v36 andPredicateWithSubpredicates:v37];

        v30 = v38;
      }
    }

    v39 = +[PLDetectedFace fetchRequest];
    v40 = objc_alloc_init(MEMORY[0x1E695D5C8]);
    [v40 setName:@"assetUUID"];
    v41 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"assetForFace.uuid"];
    [v40 setExpression:v41];

    [v40 setExpressionResultType:700];
    v42 = objc_alloc_init(MEMORY[0x1E695D5C8]);
    [v42 setName:@"personUUID"];
    v43 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"personForFace.personUUID"];
    [v42 setExpression:v43];

    [v42 setExpressionResultType:700];
    v76[0] = v40;
    v76[1] = v42;
    v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:v76 count:2];
    if (v10)
    {
      v45 = objc_alloc_init(MEMORY[0x1E695D5C8]);
      [v45 setName:@"temporalAssetUUID"];
      v46 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"assetForTemporalDetectedFaces.uuid"];
      [v45 setExpression:v46];

      [v45 setExpressionResultType:700];
      v47 = objc_alloc_init(MEMORY[0x1E695D5C8]);
      [v47 setName:@"temporalPersonUUID"];
      v48 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"personForTemporalDetectedFaces.personUUID"];
      [v47 setExpression:v48];

      [v47 setExpressionResultType:700];
      v75[0] = v45;
      v75[1] = v47;
      v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:v75 count:2];
      v50 = [v44 arrayByAddingObjectsFromArray:v49];

      v44 = v50;
    }

    v18 = v59;
    [v39 setPropertiesToFetch:v44];
    [v39 setPredicate:v30];
    [v39 setResultType:2];
    v69 = v56;
    v51 = [v62 executeFetchRequest:v39 error:&v69];
    v31 = v69;

    if (v51)
    {
      v63[0] = MEMORY[0x1E69E9820];
      v63[1] = 3221225472;
      v63[2] = __151__PLPerson__batchFetchPersonUUIDsByAssetUUIDWithAssetUUIDs_predicate_includedDetectionTypes_includeTemporalDetectedFaces_inManagedObjectContext_error___block_invoke;
      v63[3] = &unk_1E7576E98;
      v64 = v59;
      v65 = @"assetUUID";
      v66 = @"personUUID";
      v67 = @"temporalAssetUUID";
      v68 = @"temporalPersonUUID";
      [v51 enumerateObjectsUsingBlock:v63];

      v52 = v64;
    }

    else
    {
      v52 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v72 = "+[PLPerson _batchFetchPersonUUIDsByAssetUUIDWithAssetUUIDs:predicate:includedDetectionTypes:includeTemporalDetectedFaces:inManagedObjectContext:error:]";
        v73 = 2112;
        v74 = v31;
        _os_log_impl(&dword_19BF1F000, v52, OS_LOG_TYPE_ERROR, "%s error fetching face data: %@", buf, 0x16u);
      }
    }

    v14 = v60;
    v13 = v61;
    v23 = v57;
    a8 = v58;
  }

  else
  {
    v30 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v72 = "+[PLPerson _batchFetchPersonUUIDsByAssetUUIDWithAssetUUIDs:predicate:includedDetectionTypes:includeTemporalDetectedFaces:inManagedObjectContext:error:]";
      v73 = 2112;
      v74 = v24;
      _os_log_impl(&dword_19BF1F000, v30, OS_LOG_TYPE_ERROR, "%s error fetching assets: %@", buf, 0x16u);
    }

    v31 = v24;
  }

  if (a8)
  {
    v53 = v31;
    *a8 = v31;
  }

  v54 = v18;

  return v18;
}

void __151__PLPerson__batchFetchPersonUUIDsByAssetUUIDWithAssetUUIDs_predicate_includedDetectionTypes_includeTemporalDetectedFaces_inManagedObjectContext_error___block_invoke(uint64_t a1, void *a2)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __151__PLPerson__batchFetchPersonUUIDsByAssetUUIDWithAssetUUIDs_predicate_includedDetectionTypes_includeTemporalDetectedFaces_inManagedObjectContext_error___block_invoke_2;
  aBlock[3] = &unk_1E7576E70;
  v11 = *(a1 + 32);
  v4 = a2;
  v5 = _Block_copy(aBlock);
  v6 = [v4 objectForKeyedSubscript:*(a1 + 40)];
  v7 = [v4 objectForKeyedSubscript:*(a1 + 48)];
  v5[2](v5, v6, v7);
  v8 = [v4 objectForKeyedSubscript:*(a1 + 56)];
  v9 = [v4 objectForKeyedSubscript:*(a1 + 64)];

  v5[2](v5, v8, v9);
}

void __151__PLPerson__batchFetchPersonUUIDsByAssetUUIDWithAssetUUIDs_predicate_includedDetectionTypes_includeTemporalDetectedFaces_inManagedObjectContext_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (v8 && v5)
  {
    v6 = [*(a1 + 32) objectForKeyedSubscript:v8];
    if (v6)
    {
      v7 = v6;
      if (([v6 containsObject:v5] & 1) == 0)
      {
        [v7 addObject:v5];
      }
    }

    else
    {
      v7 = [MEMORY[0x1E695DF70] arrayWithObject:v5];
      [*(a1 + 32) setObject:v7 forKeyedSubscript:v8];
    }
  }
}

+ (id)createUnverifiedPersonInManagedObjectContext:(id)a3
{
  v3 = MEMORY[0x1E696AFB0];
  v4 = a3;
  v5 = [v3 UUID];
  v6 = [v5 UUIDString];
  v7 = [PLPerson insertIntoManagedObjectContext:v4 withPersonUUID:v6 fullName:&stru_1F0F06D80 verifiedType:0];

  return v7;
}

+ (void)createAssociatedPersonForFaceGroup:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [v4 managedObjectContext];
    [a1 createAssociatedPersonForFaceGroup:v4 inManagedObjectContext:v5];
  }
}

+ (id)personsWithUUIDs:(id)a3 inManagedObjectContext:(id)a4
{
  v6 = MEMORY[0x1E696AE18];
  v7 = a4;
  v8 = [v6 predicateWithFormat:@"personUUID IN %@", a3];
  v9 = [a1 personsMatchingPredicate:v8 fetchLimit:0 sortDescriptors:0 relationshipKeyPathsForPrefetching:0 inManagedObjectContext:v7];

  return v9;
}

+ (id)personsWithPersonUris:(id)a3 inManagedObjectContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"personUri", v6];
    v10 = [a1 personsMatchingPredicate:v9 fetchLimit:0 sortDescriptors:0 relationshipKeyPathsForPrefetching:0 inManagedObjectContext:v7];

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)personsWithPersonUri:(id)a3 inManagedObjectContext:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v6 = MEMORY[0x1E695DEC8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 arrayWithObjects:&v12 count:1];

  v10 = [a1 personsWithPersonUris:v9 inManagedObjectContext:{v7, v12, v13}];

  return v10;
}

+ (PLPerson)personWithUUID:(id)a3 inManagedObjectContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"personUUID == %@", v6];
    v10 = [a1 personsMatchingPredicate:v9 fetchLimit:1 sortDescriptors:0 relationshipKeyPathsForPrefetching:0 inManagedObjectContext:v7];
    if ([v10 count])
    {
      v11 = [v10 firstObject];
    }

    else
    {
      v11 = 0;
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)personsMatchingPredicate:(id)a3 fetchLimit:(unint64_t)a4 sortDescriptors:(id)a5 relationshipKeyPathsForPrefetching:(id)a6 inManagedObjectContext:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__110782;
  v34 = __Block_byref_object_dispose__110783;
  v35 = 0;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __122__PLPerson_personsMatchingPredicate_fetchLimit_sortDescriptors_relationshipKeyPathsForPrefetching_inManagedObjectContext___block_invoke;
  v22[3] = &unk_1E7576DF8;
  v28 = a1;
  v16 = v12;
  v23 = v16;
  v29 = a4;
  v17 = v13;
  v24 = v17;
  v18 = v14;
  v25 = v18;
  v27 = &v30;
  v19 = v15;
  v26 = v19;
  [v19 performBlockAndWait:v22];
  v20 = v31[5];

  _Block_object_dispose(&v30, 8);

  return v20;
}

void __122__PLPerson_personsMatchingPredicate_fetchLimit_sortDescriptors_relationshipKeyPathsForPrefetching_inManagedObjectContext___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695D5E0];
  v3 = [*(a1 + 72) entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  if (*(a1 + 32))
  {
    [v4 setPredicate:?];
  }

  if (*(a1 + 80))
  {
    [v4 setFetchLimit:?];
  }

  if (*(a1 + 40))
  {
    [v4 setSortDescriptors:?];
  }

  if (*(a1 + 48))
  {
    [v4 setRelationshipKeyPathsForPrefetching:?];
  }

  v5 = *(a1 + 56);
  v12 = 0;
  v6 = [v5 executeFetchRequest:v4 error:&v12];
  v7 = v12;
  v8 = *(*(a1 + 64) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v6;

  if (!*(*(*(a1 + 64) + 8) + 40) && (*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v10 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      *buf = 138412546;
      v14 = v11;
      v15 = 2112;
      v16 = v7;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "Failed to find person matching predicate %@: %@", buf, 0x16u);
    }
  }
}

+ (id)insertIntoManagedObjectContext:(id)a3 withPersonUUID:(id)a4 fullName:(id)a5 verifiedType:(int)a6
{
  v6 = *&a6;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (v11)
  {
    v14 = [a1 entityName];
    [MEMORY[0x1E695D5B8] insertNewObjectForEntityForName:v14 inManagedObjectContext:v11];
  }

  else
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:a1 file:@"PLPerson.m" lineNumber:199 description:{@"Invalid parameter not satisfying: %@", @"moc"}];

    v14 = [a1 entityName];
    PLSafeInsertNewObjectForEntityForNameInManagedObjectContext(v14, 0, 0);
  }
  v15 = ;

  [v15 setPersonUUID:v12];
  [v15 setFullName:v13];
  [v15 setType:0];
  [v15 setEffectiveVerifiedType:v6];

  return v15;
}

+ (id)insertIntoPhotoLibrary:(id)a3 withPersonUUID:(id)a4 fullName:(id)a5 verifiedType:(int)a6
{
  v6 = *&a6;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (!v11)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:a1 file:@"PLPerson.m" lineNumber:193 description:{@"Invalid parameter not satisfying: %@", @"library"}];
  }

  v14 = [v11 managedObjectContext];
  v15 = [a1 insertIntoManagedObjectContext:v14 withPersonUUID:v12 fullName:v13 verifiedType:v6];

  return v15;
}

+ (id)fetchDuplicatePersonUUIDsInManagedObjectContext:(id)a3 error:(id *)a4
{
  v5 = a3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__110782;
  v25 = __Block_byref_object_dispose__110783;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__110782;
  v19 = __Block_byref_object_dispose__110783;
  v20 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __66__PLPerson_fetchDuplicatePersonUUIDsInManagedObjectContext_error___block_invoke;
  v11[3] = &unk_1E7578870;
  v6 = v5;
  v12 = v6;
  v13 = &v15;
  v14 = &v21;
  [v6 performBlockAndWait:v11];
  v7 = v16[5];
  v8 = v22[5];
  if (!v7 && a4)
  {
    v8 = v8;
    *a4 = v8;
  }

  v9 = v16[5];
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);

  return v9;
}

void __66__PLPerson_fetchDuplicatePersonUUIDsInManagedObjectContext_error___block_invoke(void *a1)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695D5E0];
  v3 = +[PLPerson entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  v19[0] = @"personUUID";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  [v4 setPropertiesToGroupBy:v5];

  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"count(SELF) > 1"];
  [v4 setHavingPredicate:v6];

  [v4 setResultType:2];
  v18 = @"personUUID";
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
  [v4 setPropertiesToFetch:v7];

  v8 = a1[4];
  v17 = 0;
  v9 = [v8 executeFetchRequest:v4 error:&v17];
  v10 = v17;
  v11 = v10;
  if (v9)
  {
    v12 = [v9 valueForKey:@"personUUID"];
    v13 = *(a1[5] + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }

  else
  {
    v15 = *(a1[6] + 8);
    v16 = v10;
    v14 = *(v15 + 40);
    *(v15 + 40) = v16;
  }
}

- (id)syncDescription
{
  v6[12] = *MEMORY[0x1E69E9840];
  v6[0] = @"personUUID";
  v6[1] = @"verifiedType";
  v6[2] = @"fullName";
  v6[3] = @"cloudLocalState";
  v6[4] = @"cloudVerifiedType";
  v6[5] = @"mergeTargetPerson";
  v6[6] = @"faceCount";
  v6[7] = @"personUri";
  v6[8] = @"contactMatchingDictionary";
  v6[9] = @"type";
  v6[10] = @"manualOrder";
  v6[11] = @"detectionType";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:12];
  v4 = [(NSManagedObject *)self truncatedDescriptionWithPropertyKeys:v3];

  return v4;
}

- (void)setCPLSyncedMergeTarget:(id)a3
{
  v24[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 finalMergeTargetPerson];
  v6 = [(PLPerson *)self mergeTargetPerson];

  if (!v6)
  {
    v7 = [(PLPerson *)self personUUID];
    v8 = [v5 personUUID];
    v9 = [v7 isEqualToString:v8];

    if ((v9 & 1) == 0)
    {
      v10 = [(PLPerson *)self keyFace];
      v11 = [(PLPerson *)self keyFacePickSource];
      v24[0] = self;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
      [v5 basicMergePersons:v12];

      v13 = [v5 keyFace];

      if (!v13 && v10 && v11 == 1)
      {
        if ((*MEMORY[0x1E6994D48] & 1) == 0)
        {
          v14 = __CPLAssetsdOSLogDomain();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = [v5 personUUID];
            v16 = [v10 uuid];
            v17 = [(PLPerson *)self personUUID];
            v18 = 138543874;
            v19 = v15;
            v20 = 2114;
            v21 = v16;
            v22 = 2114;
            v23 = v17;
            _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEFAULT, "Final merge target person %{public}@ missing key face, updating to key face %{public}@ from %{public}@", &v18, 0x20u);
          }
        }

        [v5 setKeyFace:v10 pickSource:1];
      }

      goto LABEL_14;
    }

    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v10 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v18 = 138412546;
        v19 = self;
        v20 = 2112;
        v21 = v4;
        _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "Unable to merge %@ to %@, final merge target personUUID is the same", &v18, 0x16u);
      }

LABEL_14:
    }
  }
}

- (id)cplPersonChange
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [(PLPerson *)self personUUID];

  if (v3)
  {
    v4 = [(PLPerson *)self scopedIdentifier];
    v5 = [MEMORY[0x1E6994B38] newChangeWithScopedIdentifier:v4 changeType:0];
    v6 = [(PLPerson *)self fullName];
    [v5 setFullName:v6];

    v7 = [(PLPerson *)self displayName];
    [v5 setDisplayName:v7];

    [v5 setPersonType:{-[PLPerson type](self, "type")}];
    [v5 setManualSortOrder:{-[PLPerson manualOrder](self, "manualOrder")}];
    if ([MEMORY[0x1E6994B38] serverSupportsAssetSortOrder])
    {
      [v5 setAssetSortOrder:{-[PLPerson assetSortOrder](self, "assetSortOrder")}];
    }

    v8 = [(PLPerson *)self contactMatchingDictionary];
    [v5 setContactMatchingDictionary:v8];

    if ([MEMORY[0x1E6994B38] serverSupportsGraphPeopleHome])
    {
      v9 = [(PLPerson *)self cloudVerifiedType];
      v10 = [(PLPerson *)self cloudDetectionType];
      if (v9 == -2)
      {
        v12 = -2;
      }

      else
      {
        v11 = v10;
        if (v9 == 2)
        {
          if ([MEMORY[0x1E6994B38] serverSupportsDetectionType] && +[PLDetectionTrait isPetDetectionType:](PLDetectionTrait, "isPetDetectionType:", v11))
          {
            v12 = 4;
          }

          else
          {
            v12 = 2;
          }
        }

        else if (v9 == 1)
        {
          if ([MEMORY[0x1E6994B38] serverSupportsDetectionType] && +[PLDetectionTrait isPetDetectionType:](PLDetectionTrait, "isPetDetectionType:", v11))
          {
            v12 = 3;
          }

          else
          {
            v12 = 1;
          }
        }

        else
        {
          v12 = 0;
        }
      }

      [v5 setVerifiedType:v12];
    }

    if ([MEMORY[0x1E6994B38] serverSupportsMergeTargetRef])
    {
      v15 = [(PLPerson *)self mergeTargetPerson];
      v16 = v15;
      if (v15)
      {
        v17 = [v15 personUUID];
        [v5 setMergeTargetPersonIdentifier:v17];
      }
    }

    if ([MEMORY[0x1E6994B38] serverSupportsDetectionType])
    {
      [v5 setDetectionType:{-[PLPerson cloudDetectionType](self, "cloudDetectionType")}];
    }
  }

  else
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing personUUID for person %@, Please file a Radar to Photos Backend iCloud with 'cplctl diagnose' logs and relate to 32789330", self];
    PLSimulateCrash();

    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v14 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v20 = self;
        _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "Trying to upload a person %@ without a personUUID, skipping", buf, 0xCu);
      }
    }

    v5 = 0;
  }

  return v5;
}

- (id)scopedIdentifier
{
  v3 = objc_alloc(MEMORY[0x1E6994BB8]);
  v4 = [(PLPerson *)self scopeIdentifier];
  v5 = [(PLPerson *)self personUUID];
  v6 = [v3 initWithScopeIdentifier:v4 identifier:v5];

  return v6;
}

- (id)scopeIdentifier
{
  v2 = [(PLManagedObject *)self photoLibrary];
  v3 = [v2 mainScopeIdentifier];

  return v3;
}

- (void)applyCPLChangeForContactMatchingDictionary:(id)a3
{
  v28[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(PLPerson *)self setContactMatchingDictionary:v4];
  if (v4 || [0 count])
  {
    v5 = objc_alloc_init(MEMORY[0x1E695CE18]);
    v28[0] = *MEMORY[0x1E695C258];
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
    v7 = [PLContactStoreUtilitiesWorkaround contactWithMatchingDictionary:v4 keysToFetch:v6 contactStore:v5];

    if (v7)
    {
      v8 = [(PLPerson *)self personUri];
      if (!v8 || (v9 = v8, -[PLPerson personUri](self, "personUri"), v10 = objc_claimAutoreleasedReturnValue(), [v7 identifier], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v10, "isEqualToString:", v11), v11, v10, v9, (v12 & 1) == 0))
      {
        if ((*MEMORY[0x1E6994D48] & 1) == 0)
        {
          v13 = __CPLAssetsdOSLogDomain();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v14 = [(PLPerson *)self personUUID];
            v15 = [v7 identifier];
            v16 = [(PLPerson *)self personUri];
            v22 = 138543874;
            v23 = v14;
            v24 = 2114;
            v25 = v15;
            v26 = 2114;
            v27 = v16;
            _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "Setting contact ID of person %{public}@ to %{public}@ (was %{public}@)", &v22, 0x20u);
          }
        }

        v17 = [v7 identifier];
        [(PLPerson *)self setPersonUri:v17];
      }
    }

    else
    {
      if ((*MEMORY[0x1E6994D48] & 1) == 0)
      {
        v18 = __CPLAssetsdOSLogDomain();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = [(PLPerson *)self personUUID];
          v22 = 138543362;
          v23 = v19;
          _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEFAULT, "Reset contact ID of person %{public}@ to nil since we can't find the contact", &v22, 0xCu);
        }
      }

      [(PLPerson *)self setPersonUri:0];
    }
  }

  else
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v20 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [(PLPerson *)self personUUID];
        v22 = 138543362;
        v23 = v21;
        _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_DEFAULT, "Setting contact ID of person %{public}@ to nil since contactsMatchingDictionary on cloud record was nil", &v22, 0xCu);
      }
    }

    [(PLPerson *)self setPersonUri:0];
  }
}

- (BOOL)_allowSyncOfChangeWithKey:(id)a3
{
  if (![a3 isEqualToString:@"manualOrder"])
  {
    return 1;
  }

  v4 = [(PLPerson *)self cloudLocalState];
  v5 = [(PLPerson *)self verifiedType];
  v6 = [(PLPerson *)self manualOrder];
  return v4 != 1 || v5 != 2 || v6 < 0x400;
}

- (BOOL)isSyncableChange
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [(PLPerson *)self changedValues];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [objc_opt_class() listOfSyncedProperties];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v3 objectForKey:v9];

        if (v10 && [(PLPerson *)self _allowSyncOfChangeWithKey:v9])
        {
          v11 = 1;
          goto LABEL_12;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_12:

  return v11;
}

- (BOOL)supportsCloudUpload
{
  v11[3] = *MEMORY[0x1E69E9840];
  if (![MEMORY[0x1E6994A80] serverSupportsVision])
  {
    return 0;
  }

  if (![MEMORY[0x1E6994B38] serverSupportsGraphPeopleHome])
  {
    return [(PLPerson *)self verifiedType]== 1;
  }

  v3 = MEMORY[0x1E696AB28];
  v4 = [objc_opt_class() _predicateForSupportedVerifiedTypesForUpload];
  v5 = [objc_opt_class() _predicateForSupportedDetectionTypesForUpload];
  v11[1] = v5;
  v6 = [objc_opt_class() _predicateToBlockHiddenGraphTypesForUpload];
  v11[2] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:3];
  v8 = [v3 andPredicateWithSubpredicates:v7];

  v9 = [v8 evaluateWithObject:self];
  return v9;
}

+ (BOOL)person:(id)a3 isBetterMergeTargetThanPerson:(id)a4
{
  v5 = a4;
  v6 = [a3 personUUID];
  v7 = [v5 personUUID];

  LOBYTE(v5) = [v6 compare:v7] == -1;
  return v5;
}

+ (void)resetCloudStateInPhotoLibrary:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_alloc(MEMORY[0x1E695D560]);
  v7 = [a1 entityName];
  v8 = [v6 initWithEntityName:v7];

  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %d", @"cloudLocalState", 0];
  [v8 setResultType:2];
  [v8 setPropertiesToUpdate:&unk_1F0FC0820];
  [v8 setPredicate:v9];
  v10 = [v4 managedObjectContext];
  v15 = 0;
  v11 = [v10 executeRequest:v8 error:&v15];
  v12 = v15;

  if (v11)
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v13 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [v11 result];
        *buf = 138412290;
        v17 = v14;
        _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "Batch updated %@ people", buf, 0xCu);
      }

LABEL_8:
    }
  }

  else if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v13 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v12;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "Failed to batch update people: %@", buf, 0xCu);
    }

    goto LABEL_8;
  }

  objc_autoreleasePoolPop(v5);
}

+ (id)personsToPrefetchInManagedObjectContext:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AE18];
  v5 = a3;
  v6 = [v4 predicateWithFormat:@"%K = %d AND %K != %d AND %K != NULL", @"verifiedType", 1, @"type", 0xFFFFFFFFLL, @"keyFace"];
  v7 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"type" ascending:0];
  v13[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];

  v12 = @"keyFace.assetForFace";
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
  v10 = [a1 personsMatchingPredicate:v6 fetchLimit:100 sortDescriptors:v8 relationshipKeyPathsForPrefetching:v9 inManagedObjectContext:v5];

  return v10;
}

+ (id)personsToUploadInManagedObjectContext:(id)a3 limit:(int64_t)a4
{
  v20[4] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696AE18];
  v7 = a3;
  v8 = [v6 predicateWithFormat:@"%K == %d", @"cloudLocalState", 0];
  v9 = MEMORY[0x1E696AB28];
  v20[0] = v8;
  v10 = [a1 _predicateForSupportedVerifiedTypesForUpload];
  v20[1] = v10;
  v11 = [a1 _predicateForSupportedDetectionTypesForUpload];
  v20[2] = v11;
  v12 = [a1 _predicateToBlockHiddenGraphTypesForUpload];
  v20[3] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:4];
  v14 = [v9 andPredicateWithSubpredicates:v13];

  v15 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"manualOrder" ascending:0];
  v19 = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];

  v17 = [a1 personsMatchingPredicate:v14 fetchLimit:a4 sortDescriptors:v16 relationshipKeyPathsForPrefetching:0 inManagedObjectContext:v7];

  return v17;
}

+ (id)_predicateToBlockHiddenGraphTypesForUpload
{
  v2 = MEMORY[0x1E696AB28];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d AND %K == %d", @"type", 0xFFFFFFFFLL, @"verifiedType", 2];
  v4 = [v2 notPredicateWithSubpredicate:v3];

  return v4;
}

+ (id)_predicateForSupportedDetectionTypesForUpload
{
  pl_dispatch_once();
  v2 = _predicateForSupportedDetectionTypesForUpload_predicate;

  return v2;
}

void __62__PLPerson_CPL___predicateForSupportedDetectionTypesForUpload__block_invoke()
{
  if ([MEMORY[0x1E6994B38] serverSupportsDetectionType])
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d OR %K > %d", @"detectionType", 1, @"detectionType", 2];
  }

  else
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"detectionType", 1, v2, v3];
  }
  v0 = ;
  v1 = _predicateForSupportedDetectionTypesForUpload_predicate;
  _predicateForSupportedDetectionTypesForUpload_predicate = v0;
}

+ (id)_predicateForSupportedVerifiedTypesForUpload
{
  pl_dispatch_once();
  v2 = _predicateForSupportedVerifiedTypesForUpload_predicate;

  return v2;
}

void __61__PLPerson_CPL___predicateForSupportedVerifiedTypesForUpload__block_invoke()
{
  v0 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %d AND %K != %d AND %K != nil", @"verifiedType", 0, @"verifiedType", 0xFFFFFFFFLL, @"personUUID"];
  v1 = _predicateForSupportedVerifiedTypesForUpload_predicate;
  _predicateForSupportedVerifiedTypesForUpload_predicate = v0;
}

+ (id)listOfSyncedProperties
{
  if ([MEMORY[0x1E6994B38] serverSupportsGraphPeopleHome])
  {
    if ([MEMORY[0x1E6994B38] serverSupportsMergeTargetRef])
    {
      pl_dispatch_once();
      v2 = &listOfSyncedProperties_pl_once_object_1;
    }

    else
    {
      pl_dispatch_once();
      v2 = &listOfSyncedProperties_pl_once_object_2;
    }
  }

  else
  {
    pl_dispatch_once();
    v2 = &listOfSyncedProperties_pl_once_object_3;
  }

  v3 = *v2;

  return v3;
}

void __39__PLPerson_CPL__listOfSyncedProperties__block_invoke()
{
  v3[9] = *MEMORY[0x1E69E9840];
  v3[0] = @"personUUID";
  v3[1] = @"fullName";
  v3[2] = @"displayName";
  v3[3] = @"type";
  v3[4] = @"manualOrder";
  v3[5] = @"contactMatchingDictionary";
  v3[6] = @"verifiedType";
  v3[7] = @"mergeTargetPerson";
  v3[8] = @"assetSortOrder";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:9];
  v1 = [v0 copy];
  v2 = listOfSyncedProperties_pl_once_object_1;
  listOfSyncedProperties_pl_once_object_1 = v1;
}

void __39__PLPerson_CPL__listOfSyncedProperties__block_invoke_2()
{
  v3[7] = *MEMORY[0x1E69E9840];
  v3[0] = @"personUUID";
  v3[1] = @"fullName";
  v3[2] = @"displayName";
  v3[3] = @"type";
  v3[4] = @"manualOrder";
  v3[5] = @"contactMatchingDictionary";
  v3[6] = @"verifiedType";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:7];
  v1 = [v0 copy];
  v2 = listOfSyncedProperties_pl_once_object_2;
  listOfSyncedProperties_pl_once_object_2 = v1;
}

void __39__PLPerson_CPL__listOfSyncedProperties__block_invoke_3()
{
  v3[6] = *MEMORY[0x1E69E9840];
  v3[0] = @"personUUID";
  v3[1] = @"fullName";
  v3[2] = @"displayName";
  v3[3] = @"type";
  v3[4] = @"manualOrder";
  v3[5] = @"contactMatchingDictionary";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:6];
  v1 = [v0 copy];
  v2 = listOfSyncedProperties_pl_once_object_3;
  listOfSyncedProperties_pl_once_object_3 = v1;
}

@end