@interface PLPerson
+ (BOOL)_deleteObjectsWithFetchRequest:(id)request reason:(signed __int16)reason moc:(id)moc progress:(id)progress error:(id *)error;
+ (BOOL)_detachFacesForPerson:(id)person reason:(signed __int16)reason error:(id *)error;
+ (BOOL)person:(id)person isBetterMergeTargetThanPerson:(id)thanPerson;
+ (BOOL)resetAllInLibrary:(id)library error:(id *)error;
+ (PLPerson)personWithUUID:(id)d inManagedObjectContext:(id)context;
+ (id)_batchFetchPersonUUIDsByAssetUUIDWithAssetUUIDs:(id)ds predicate:(id)predicate includedDetectionTypes:(id)types includeTemporalDetectedFaces:(BOOL)faces inManagedObjectContext:(id)context error:(id *)error;
+ (id)_predicateForSupportedDetectionTypesForUpload;
+ (id)_predicateForSupportedVerifiedTypesForUpload;
+ (id)_predicateToBlockHiddenGraphTypesForUpload;
+ (id)_stringFromContact:(id)contact preferGivenName:(BOOL)name;
+ (id)createUnverifiedPersonInManagedObjectContext:(id)context;
+ (id)fetchDuplicatePersonUUIDsInManagedObjectContext:(id)context error:(id *)error;
+ (id)fetchFinalMergeTargetPersonForPersonWithUUID:(id)d context:(id)context predicate:(id)predicate;
+ (id)fetchMePersonInManagedObjectContext:(id)context;
+ (id)fetchPersonCountByAssetUUIDForAssetUUIDs:(id)ds predicate:(id)predicate includedDetectionTypes:(id)types library:(id)library error:(id *)error;
+ (id)fetchPersonsWithUUIDs:(id)ds managedObjectContext:(id)context;
+ (id)insertIntoManagedObjectContext:(id)context withPersonUUID:(id)d fullName:(id)name verifiedType:(int)type;
+ (id)insertIntoPhotoLibrary:(id)library withPersonUUID:(id)d fullName:(id)name verifiedType:(int)type;
+ (id)isEligibleForSearchIndexingPredicateForLibraryIdentifier:(int64_t)identifier;
+ (id)listOfSyncedProperties;
+ (id)personsMatchingPredicate:(id)predicate fetchLimit:(unint64_t)limit sortDescriptors:(id)descriptors relationshipKeyPathsForPrefetching:(id)prefetching inManagedObjectContext:(id)context;
+ (id)personsToPrefetchInManagedObjectContext:(id)context;
+ (id)personsToUploadInManagedObjectContext:(id)context limit:(int64_t)limit;
+ (id)personsWithPersonUri:(id)uri inManagedObjectContext:(id)context;
+ (id)personsWithPersonUris:(id)uris inManagedObjectContext:(id)context;
+ (id)personsWithUUIDs:(id)ds inManagedObjectContext:(id)context;
+ (id)predicateForIncludedDetectionTypes:(id)types;
+ (id)predicateForPersonsNeedingFaceCropGenerationForFaceObjectID:(id)d;
+ (id)predicateForVisibleKeyFace;
+ (id)propertiesToFetch;
+ (id)resetAllInLibrary:(id)library completion:(id)completion;
+ (void)_resetMediaAnalysisAfterPersonResetInLibraryURL:(id)l resetPersons:(BOOL)persons completion:(id)completion;
+ (void)_setPersonResetInProgress:(BOOL)progress context:(id)context;
+ (void)batchFetchAssociatedPersonByFaceGroupUUIDWithFaceGroupUUIDs:(id)ds predicate:(id)predicate library:(id)library completion:(id)completion;
+ (void)batchFetchPersonUUIDsByAssetUUIDWithAssetUUIDs:(id)ds predicate:(id)predicate includedDetectionTypes:(id)types includeTemporalDetectedFaces:(BOOL)faces inManagedObjectContext:(id)context completion:(id)completion;
+ (void)batchFetchPersonsByAssetUUIDWithAssetUUIDs:(id)ds predicate:(id)predicate includedDetectionTypes:(id)types library:(id)library completion:(id)completion;
+ (void)createAssociatedPersonForFaceGroup:(id)group;
+ (void)enumerateAssetUUIDsForSearchIndexingWithDetectedFaceUUIDs:(id)ds managedObjectContext:(id)context assetUUIDHandler:(id)handler;
+ (void)enumerateAssetUUIDsForSearchIndexingWithPersonUUID:(id)d managedObjectContext:(id)context libraryIdentifier:(int64_t)identifier assetUUIDHandler:(id)handler;
+ (void)resetCloudStateInPhotoLibrary:(id)library;
- (BOOL)_allowSyncOfChangeWithKey:(id)key;
- (BOOL)_hideGraphPersonInsteadOfDelete;
- (BOOL)_personResetIsInProgress;
- (BOOL)_updateGroupMembershipFromEdges:(id)edges mergeTarget:(id)target error:(id *)error;
- (BOOL)_updateSocialGroupMembershipWithPersonsToMerge:(id)merge mergeTarget:(id)target;
- (BOOL)dedupeGraphPersons:(id)persons error:(id *)error;
- (BOOL)deletePersonWithReason:(signed __int16)reason;
- (BOOL)isEligibleForSearchIndexing;
- (BOOL)isSyncableChange;
- (BOOL)isValidForPersistence;
- (BOOL)shouldIndexOnAssetsForSearch;
- (BOOL)supportsCloudUpload;
- (BOOL)validateDetectionTypesForMergingWithPersons:(id)persons error:(id *)error;
- (NSSet)allDetectedFaces;
- (id)cplPersonChange;
- (id)debugLogDescription;
- (id)edgesIn;
- (id)edgesOut;
- (id)faceGroupDescription;
- (id)finalMergeTargetPerson;
- (id)payloadForChangedKeys:(id)keys;
- (id)payloadID;
- (id)payloadIDForTombstone:(id)tombstone;
- (id)pickKeyFaceOptimalStateForContactDedupeWithPersons:(id)persons;
- (id)pickOptimalStateForUserInitiatedMergeWithPersons:(id)persons nominalTarget:(id)target;
- (id)reverseOrderedMergeTargetPersons;
- (id)scopeIdentifier;
- (id)scopedIdentifier;
- (id)syncDescription;
- (void)_basicMergePersons:(id)persons;
- (void)_logMergeDetailsForPerson:(id)person;
- (void)_moveAllFacesToFinalMergeTarget;
- (void)_removeSharedLibraryPeopleRulesForPerson;
- (void)_signalBackgroundPersonNeededForPersonSyncWithJobFlags:(int64_t)flags;
- (void)_updateSharedLibraryPeopleRulesForTombstone;
- (void)applyCPLChangeForContactMatchingDictionary:(id)dictionary;
- (void)assignDetectionTypeFromFaces;
- (void)basicMergePersons:(id)persons;
- (void)createUnverifiedPersonForRejectedFaceUUIDs:(id)ds inManagedObjectContext:(id)context;
- (void)didSave;
- (void)disconnectFaceGroup;
- (void)mergePersons:(id)persons withOptimalState:(id)state;
- (void)persistMetadataToFileSystemWithPathManager:(id)manager;
- (void)prepareForDeletion;
- (void)prepareForUserInitiatedMergeWithPersons:(id)persons;
- (void)rejectFaceIfPossible:(id)possible shouldCreateFaceCrop:(BOOL)crop;
- (void)removePersistedFileSystemDataWithPathManager:(id)manager;
- (void)resetAllFacesToDefault;
- (void)resetFacesProcessing;
- (void)setCPLSyncedMergeTarget:(id)target;
- (void)setEffectiveVerifiedType:(int)type;
- (void)setKeyFace:(id)face pickSource:(signed __int16)source;
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
  photoLibrary = [(PLManagedObject *)self photoLibrary];
  v6 = [v4 isEligibleForSearchIndexingPredicateForLibraryIdentifier:{+[PLSpotlightDonationUtilities wellKnownPhotoLibraryIdentifierFromPLPhotoLibrary:](PLSpotlightDonationUtilities, "wellKnownPhotoLibraryIdentifierFromPLPhotoLibrary:", photoLibrary)}];
  if ([v6 evaluateWithObject:self])
  {
    fullName = [(PLPerson *)self fullName];
    v3 = [fullName length] != 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)shouldIndexOnAssetsForSearch
{
  verifiedType = [(PLPerson *)self verifiedType];
  if (verifiedType != 1)
  {
    LOBYTE(verifiedType) = [(PLPerson *)self verifiedType]== 2;
  }

  return verifiedType;
}

+ (id)fetchPersonsWithUUIDs:(id)ds managedObjectContext:(id)context
{
  dsCopy = ds;
  v7 = MEMORY[0x1E695D5E0];
  contextCopy = context;
  v9 = +[PLPerson entityName];
  v10 = [v7 fetchRequestWithEntityName:v9];

  propertiesToFetch = [self propertiesToFetch];
  [v10 setPropertiesToFetch:propertiesToFetch];

  [v10 setIncludesPendingChanges:0];
  if ([dsCopy count] >= 0x65)
  {
    [v10 setFetchBatchSize:100];
  }

  dsCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"personUUID", dsCopy];
  [v10 setPredicate:dsCopy];

  [v10 setFetchLimit:{objc_msgSend(dsCopy, "count")}];
  v17 = 0;
  v13 = [contextCopy executeFetchRequest:v10 error:&v17];

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

+ (void)enumerateAssetUUIDsForSearchIndexingWithDetectedFaceUUIDs:(id)ds managedObjectContext:(id)context assetUUIDHandler:(id)handler
{
  v19[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  handlerCopy = handler;
  v9 = MEMORY[0x1E695D5E0];
  dsCopy = ds;
  v11 = +[PLDetectedFace entityName];
  v12 = [v9 fetchRequestWithEntityName:v11];

  v19[0] = @"assetForFace";
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  [v12 setRelationshipKeyPathsForPrefetching:v13];

  dsCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"uuid IN %@", dsCopy];

  [v12 setPredicate:dsCopy];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __121__PLPerson_SearchIndex__enumerateAssetUUIDsForSearchIndexingWithDetectedFaceUUIDs_managedObjectContext_assetUUIDHandler___block_invoke;
  v17[3] = &unk_1E7570E20;
  v18 = handlerCopy;
  v15 = handlerCopy;
  v16 = [contextCopy enumerateObjectsFromFetchRequest:v12 count:0 usingDefaultBatchSizeWithBlock:v17];
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

+ (void)enumerateAssetUUIDsForSearchIndexingWithPersonUUID:(id)d managedObjectContext:(id)context libraryIdentifier:(int64_t)identifier assetUUIDHandler:(id)handler
{
  v56 = *MEMORY[0x1E69E9840];
  dCopy = d;
  contextCopy = context;
  handlerCopy = handler;
  v12 = [dCopy length];
  if (handlerCopy && contextCopy && v12)
  {
    v13 = +[PLPerson fetchRequest];
    [v13 setResultType:1];
    dCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %@", @"personUUID", dCopy];
    [v13 setPredicate:dCopy];

    v48 = 0;
    v15 = [contextCopy executeFetchRequest:v13 error:&v48];
    v16 = v48;
    firstObject = [v15 firstObject];
    if (firstObject)
    {
      identifierCopy = identifier;
      v18 = MEMORY[0x1E695D5E0];
      v19 = +[PLDetectedFace entityName];
      v20 = [v18 fetchRequestWithEntityName:v19];

      [v20 setResultType:2];
      v51 = @"assetForFace";
      v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v51 count:1];
      [v20 setPropertiesToFetch:v21];

      v44 = firstObject;
      v22 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@ OR %K == %@", @"personForFace", firstObject, @"personForTemporalDetectedFaces", firstObject];
      [v20 setPredicate:v22];

      v47 = v16;
      v23 = [contextCopy executeFetchRequest:v20 error:&v47];
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
        v33 = [PLManagedAsset isEligibleForSearchIndexingPredicateForLibraryIdentifier:identifierCopy];
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
        v46 = handlerCopy;
        v38 = [contextCopy enumerateObjectsFromFetchRequest:v28 count:0 usingDefaultBatchSizeWithBlock:v45];

        v24 = v41;
      }

      else
      {
        v37 = 0;
        v36 = PLBackendGetLog();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v53 = dCopy;
          v54 = 2112;
          v55 = v24;
          _os_log_impl(&dword_19BF1F000, v36, OS_LOG_TYPE_ERROR, "Failed to fetch asset IDs for person with UUID %{public}@. Error: %@", buf, 0x16u);
        }
      }

      firstObject = v44;
    }

    else
    {
      v20 = PLBackendGetLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v53 = dCopy;
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

+ (id)isEligibleForSearchIndexingPredicateForLibraryIdentifier:(int64_t)identifier
{
  if (identifier == 3)
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

- (id)payloadIDForTombstone:(id)tombstone
{
  v3 = [tombstone objectForKeyedSubscript:@"personUUID"];
  v4 = [PLJournalEntryPayloadIDFactory payloadIDWithUUIDString:v3];

  return v4;
}

- (id)payloadForChangedKeys:(id)keys
{
  keysCopy = keys;
  if ([(PLPerson *)self isValidForPersistence])
  {
    v5 = [(PLManagedObjectJournalEntryPayload *)[PLPersonJournalEntryPayload alloc] initWithManagedObject:self changedKeys:keysCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)payloadID
{
  personUUID = [(PLPerson *)self personUUID];
  v3 = [PLJournalEntryPayloadIDFactory payloadIDWithUUIDString:personUUID];

  return v3;
}

- (id)edgesIn
{
  v2 = [PLGraphNode nodeForActingObject:self createIfMissing:0];
  edgesIn = [v2 edgesIn];

  return edgesIn;
}

- (id)edgesOut
{
  v2 = [PLGraphNode nodeForActingObject:self createIfMissing:0];
  edgesOut = [v2 edgesOut];

  return edgesOut;
}

- (BOOL)_hideGraphPersonInsteadOfDelete
{
  v25 = *MEMORY[0x1E69E9840];
  verifiedType = [(PLPerson *)self verifiedType];
  if (verifiedType == 2)
  {
    v4 = PLBackendGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      personUUID = [(PLPerson *)self personUUID];
      *buf = 138543362;
      v24 = personUUID;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "Hiding graph person instead of delete: %{public}@", buf, 0xCu);
    }

    [(PLPerson *)self setType:0xFFFFFFFFLL];
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    faceCrops = [(PLPerson *)self faceCrops];
    v7 = [faceCrops countByEnumeratingWithState:&v18 objects:v22 count:16];
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
            objc_enumerationMutation(faceCrops);
          }

          v11 = *(*(&v18 + 1) + 8 * i);
          face = [v11 face];
          v13 = face;
          if (face)
          {
            managedObjectContext = [face managedObjectContext];
            [managedObjectContext deleteObject:v13];
          }

          if (![v11 state])
          {
            [v11 setState:1];
          }
        }

        v8 = [faceCrops countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v8);
    }

    v15 = [MEMORY[0x1E695DFD8] set];
    [(PLPerson *)self setDetectedFaces:v15];

    v16 = [MEMORY[0x1E695DFD8] set];
    [(PLPerson *)self setTemporalDetectedFaces:v16];
  }

  return verifiedType == 2;
}

- (BOOL)deletePersonWithReason:(signed __int16)reason
{
  reasonCopy = reason;
  *&v13[5] = *MEMORY[0x1E69E9840];
  if (reason != 6)
  {
    v6 = PLBackendGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      personUUID = [(PLPerson *)self personUUID];
      *buf = 67109378;
      v13[0] = reasonCopy;
      LOWORD(v13[1]) = 2114;
      *(&v13[1] + 2) = personUUID;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "Delete person with reason %d: %{public}@", buf, 0x12u);
    }
  }

  if (![(PLPerson *)self isDeleted])
  {
    *(&self->super._willSaveCallCount + 1) = reasonCopy;
    if (_os_feature_enabled_impl())
    {
      v10 = [PLSocialGroup deleteSocialGroupsHavingMember:self];
    }

    else
    {
      v10 = 1;
    }

    if (reasonCopy <= 9)
    {
      if (((1 << reasonCopy) & 0x19E) != 0 || ((1 << reasonCopy) & 0x240) != 0)
      {
LABEL_15:
        managedObjectContext = [(PLPerson *)self managedObjectContext];
        [managedObjectContext deleteObject:self];
        goto LABEL_16;
      }

      if (reasonCopy == 5)
      {
        if ([(PLPerson *)self _hideGraphPersonInsteadOfDelete])
        {
          return v10;
        }

        goto LABEL_15;
      }
    }

    if (reasonCopy)
    {
      return 0;
    }

    managedObjectContext = [MEMORY[0x1E696AAA8] currentHandler];
    [managedObjectContext handleFailureInMethod:a2 object:self file:@"PLPerson.m" lineNumber:2110 description:@"Invalid parameter not satisfying: %@", @"reason != PLPersonDeleteReasonNone"];
    goto LABEL_8;
  }

  managedObjectContext = PLBackendGetLog();
  if (os_log_type_enabled(managedObjectContext, OS_LOG_TYPE_DEFAULT))
  {
    personUUID2 = [(PLPerson *)self personUUID];
    *buf = 138543362;
    *v13 = personUUID2;
    _os_log_impl(&dword_19BF1F000, managedObjectContext, OS_LOG_TYPE_DEFAULT, "Person already deleted: %{public}@", buf, 0xCu);
  }

LABEL_8:
  v10 = 0;
LABEL_16:

  return v10;
}

- (BOOL)dedupeGraphPersons:(id)persons error:(id *)error
{
  v55 = *MEMORY[0x1E69E9840];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  personsCopy = persons;
  v7 = [personsCopy countByEnumeratingWithState:&v44 objects:v54 count:16];
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
          objc_enumerationMutation(personsCopy);
        }

        v11 = *(*(&v44 + 1) + 8 * i);
        if ([v11 verifiedType] != 2)
        {
          v18 = MEMORY[0x1E696AEC0];
          personUUID = [v11 personUUID];
          v20 = [v18 stringWithFormat:@"Attempting to dedupe non-graph person (uuid = %@), caller should refetch persons and respond appropriately", personUUID];

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

      v8 = [personsCopy countByEnumeratingWithState:&v44 objects:v54 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  if ([(PLPerson *)self keyFacePickSource]!= 1)
  {
    [personsCopy sortedArrayUsingComparator:&__block_literal_global_399_110682];
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

      keyFace = [v17 keyFace];

      if (!keyFace)
      {
        goto LABEL_26;
      }

      if ((*MEMORY[0x1E6994D48] & 1) == 0)
      {
        v27 = __CPLAssetsdOSLogDomain();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v50 = keyFace;
          _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_DEFAULT, "Dedupe target does not have a picked key face, assigning new picked key face %@", buf, 0xCu);
        }
      }

      [(PLPerson *)self setKeyFace:keyFace pickSource:1];
      mutableFaces = [(PLPerson *)self mutableFaces];
      [mutableFaces addObject:keyFace];

      [keyFace fixPersonRelationshipsForFaceTorsoOrTemporal];
    }

    else
    {
LABEL_18:

LABEL_26:
      if (*MEMORY[0x1E6994D48])
      {
        goto LABEL_30;
      }

      keyFace = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(keyFace, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, keyFace, OS_LOG_TYPE_DEFAULT, "Unable to find picked key face from dedupe persons", buf, 2u);
      }
    }

LABEL_30:
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v29 = personsCopy;
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

  if (error)
  {
    v34 = v24;
    *error = v24;
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

- (BOOL)validateDetectionTypesForMergingWithPersons:(id)persons error:(id *)error
{
  v52 = *MEMORY[0x1E69E9840];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  personsCopy = persons;
  v7 = [personsCopy countByEnumeratingWithState:&v37 objects:v51 count:16];
  if (v7)
  {
    v8 = v7;
    errorCopy = error;
    v9 = *v38;
    v10 = 0x1E755F000uLL;
    v11 = MEMORY[0x1E6994D48];
    v36 = personsCopy;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v38 != v9)
        {
          objc_enumerationMutation(personsCopy);
        }

        v13 = *(*(&v37 + 1) + 8 * i);
        detectionType = [(PLPerson *)self detectionType];
        if (detectionType != [v13 detectionType])
        {
          if (-[PLPerson detectionType](self, "detectionType") == 1 && ([*(v10 + 3200) isPetDetectionType:{objc_msgSend(v13, "detectionType")}] & 1) != 0 || objc_msgSend(*(v10 + 3200), "isPetDetectionType:", -[PLPerson detectionType](self, "detectionType")) && objc_msgSend(v13, "detectionType") == 1)
          {
            v24 = MEMORY[0x1E696AEC0];
            personUUID = [(PLPerson *)self personUUID];
            detectionType2 = [(PLPerson *)self detectionType];
            personUUID2 = [v13 personUUID];
            v28 = [v24 stringWithFormat:@"Preventing merge persons of different detection types: %@ (%hd) - %@ (%hd)", personUUID, detectionType2, personUUID2, objc_msgSend(v13, "detectionType")];

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
            if (errorCopy)
            {
              v33 = v33;
              *errorCopy = v33;
            }

            v23 = 0;
            goto LABEL_25;
          }

          if ((*v11 & 1) == 0)
          {
            v15 = __CPLAssetsdOSLogDomain();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              personUUID3 = [(PLPerson *)self personUUID];
              detectionType3 = [(PLPerson *)self detectionType];
              [v13 personUUID];
              v18 = v10;
              v19 = v8;
              v21 = v20 = v9;
              detectionType4 = [v13 detectionType];
              *buf = 138544130;
              v42 = personUUID3;
              v43 = 1024;
              v44 = detectionType3;
              v45 = 2114;
              v46 = v21;
              v47 = 1024;
              v48 = detectionType4;
              _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_DEFAULT, "Merging persons of different detection types: %{public}@ (%hd) - %{public}@ (%hd)", buf, 0x22u);

              v9 = v20;
              v8 = v19;
              v10 = v18;

              personsCopy = v36;
              v11 = MEMORY[0x1E6994D48];
            }
          }
        }
      }

      v8 = [personsCopy countByEnumeratingWithState:&v37 objects:v51 count:16];
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

- (void)mergePersons:(id)persons withOptimalState:(id)state
{
  v44 = *MEMORY[0x1E69E9840];
  personsCopy = persons;
  stateCopy = state;
  context = objc_autoreleasePoolPush();
  [(PLPerson *)self basicMergePersons:personsCopy];
  finalMergeTargetPerson = [(PLPerson *)self finalMergeTargetPerson];
  mergeCandidates = [(PLPerson *)self mergeCandidates];
  v8 = [mergeCandidates mutableCopy];

  mergeCandidatesWithConfidence = [(PLPerson *)self mergeCandidatesWithConfidence];
  v10 = [mergeCandidatesWithConfidence mutableCopy];

  invalidMergeCandidates = [(PLPerson *)self invalidMergeCandidates];
  v12 = [invalidMergeCandidates mutableCopy];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v13 = personsCopy;
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
        mergeCandidates2 = [v18 mergeCandidates];
        allObjects = [mergeCandidates2 allObjects];
        [v8 addObjectsFromArray:allObjects];

        mergeCandidatesWithConfidence2 = [v18 mergeCandidatesWithConfidence];
        allObjects2 = [mergeCandidatesWithConfidence2 allObjects];
        [v10 addObjectsFromArray:allObjects2];

        invalidMergeCandidates2 = [v18 invalidMergeCandidates];
        allObjects3 = [invalidMergeCandidates2 allObjects];
        [v12 addObjectsFromArray:allObjects3];
      }

      v15 = [v13 countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v15);
  }

  [v8 removeObject:finalMergeTargetPerson];
  [v10 removeObject:finalMergeTargetPerson];
  [v12 removeObject:finalMergeTargetPerson];
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

  [finalMergeTargetPerson setMergeCandidates:v8];
  [finalMergeTargetPerson setMergeCandidatesWithConfidence:v10];
  [finalMergeTargetPerson setInvalidMergeCandidates:v25];
  [finalMergeTargetPerson setValuesForKeysWithDictionary:stateCopy];

  objc_autoreleasePoolPop(context);
}

- (void)basicMergePersons:(id)persons
{
  personsCopy = persons;
  finalMergeTargetPerson = [(PLPerson *)self finalMergeTargetPerson];
  if (_os_feature_enabled_impl())
  {
    [(PLPerson *)self _updateSocialGroupMembershipWithPersonsToMerge:personsCopy mergeTarget:finalMergeTargetPerson];
  }

  [finalMergeTargetPerson _basicMergePersons:personsCopy];
}

- (BOOL)_updateSocialGroupMembershipWithPersonsToMerge:(id)merge mergeTarget:(id)target
{
  v28[1] = *MEMORY[0x1E69E9840];
  mergeCopy = merge;
  targetCopy = target;
  managedObjectContext = [(PLPerson *)self managedObjectContext];
  pl_graphCache = [managedObjectContext pl_graphCache];

  managedObjectContext2 = [(PLPerson *)self managedObjectContext];
  v11 = [pl_graphCache labelWithCode:1000 inContext:managedObjectContext2];

  if (v11)
  {
    v12 = +[PLGraphEdge fetchRequest];
    mergeCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"(%K = %@) AND (%K in %@)", @"sourceNode.primaryLabel", v11, @"targetPerson", mergeCopy];
    [v12 setPredicate:mergeCopy];

    [v12 setResultType:0];
    v28[0] = @"sourceNode";
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
    [v12 setRelationshipKeyPathsForPrefetching:v14];

    managedObjectContext3 = [(PLPerson *)self managedObjectContext];
    v25 = 0;
    v16 = [managedObjectContext3 executeFetchRequest:v12 error:&v25];
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
      v20 = [(PLPerson *)self _updateGroupMembershipFromEdges:v16 mergeTarget:targetCopy error:&v24];
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

- (BOOL)_updateGroupMembershipFromEdges:(id)edges mergeTarget:(id)target error:(id *)error
{
  v41 = *MEMORY[0x1E69E9840];
  edgesCopy = edges;
  targetCopy = target;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v8 = edgesCopy;
  v9 = [v8 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v9)
  {
    v10 = v9;
    errorCopy = error;
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
        sourceNode = [v13 sourceNode];
        v16 = sourceNode;
        if (sourceNode && ([sourceNode isDeleted] & 1) == 0)
        {
          v17 = [(PLGraphNodeContainer *)PLSocialGroup newNodeContainerWithNode:v16];
          targetPerson = [v13 targetPerson];
          v35 = v33;
          v19 = [v17 removeMember:targetPerson error:&v35];
          v20 = v35;

          if (!v19)
          {
            goto LABEL_18;
          }

          v34 = v20;
          v21 = [v17 addMember:targetCopy error:&v34];
          v33 = v34;

          if (!v21)
          {
            v20 = v33;
LABEL_18:

            objc_autoreleasePoolPop(v14);
            v8 = v31;

            v26 = v20;
            if (errorCopy)
            {
              v26 = v26;
              v25 = 0;
              *errorCopy = v26;
            }

            else
            {
              v25 = 0;
            }

            v27 = v26;
            goto LABEL_22;
          }

          members = [v17 members];
          v23 = [members count];

          if (v23 <= 1)
          {
            managedObjectContext = [(PLPerson *)self managedObjectContext];
            [managedObjectContext deleteObject:v16];
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

- (void)_logMergeDetailsForPerson:(id)person
{
  v40 = *MEMORY[0x1E69E9840];
  personCopy = person;
  personUri = [personCopy personUri];
  if (!personUri)
  {
    goto LABEL_4;
  }

  v6 = personUri;
  personUri2 = [(PLPerson *)self personUri];
  if (personUri2)
  {
    v8 = personUri2;
    personUri3 = [personCopy personUri];
    personUri4 = [(PLPerson *)self personUri];
    v11 = [personUri3 isEqualToString:personUri4];

    if (v11)
    {
LABEL_4:
      contactMatchingDictionary = [personCopy contactMatchingDictionary];
      contactMatchingDictionary2 = [(PLPerson *)self contactMatchingDictionary];

      if (!contactMatchingDictionary)
      {
        if (contactMatchingDictionary2)
        {
          if ((*MEMORY[0x1E6994D48] & 1) == 0)
          {
            personUUID9 = __CPLAssetsdOSLogDomain();
            if (os_log_type_enabled(personUUID9, OS_LOG_TYPE_DEFAULT))
            {
              personUUID = [personCopy personUUID];
              personUUID2 = [(PLPerson *)self personUUID];
              contactMatchingDictionary3 = [(PLPerson *)self contactMatchingDictionary];
              allKeys = [contactMatchingDictionary3 allKeys];
              v26 = [allKeys componentsJoinedByString:{@", "}];
              v32 = 138543874;
              v33 = personUUID;
              v34 = 2114;
              v35 = personUUID2;
              v36 = 2114;
              v37 = v26;
              _os_log_impl(&dword_19BF1F000, personUUID9, OS_LOG_TYPE_DEFAULT, "Merging Persons: merge source %{public}@ has nil contactMatchingDictionary but target person %{public}@ has these keys: %{public}@", &v32, 0x20u);
            }

            goto LABEL_14;
          }
        }

        else if ((*MEMORY[0x1E6994D48] & 1) == 0)
        {
          personUUID9 = __CPLAssetsdOSLogDomain();
          if (!os_log_type_enabled(personUUID9, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_14;
          }

          personUUID3 = [personCopy personUUID];
          personUUID4 = [(PLPerson *)self personUUID];
          v32 = 138543618;
          v33 = personUUID3;
          v34 = 2114;
          v35 = personUUID4;
          _os_log_impl(&dword_19BF1F000, personUUID9, OS_LOG_TYPE_DEFAULT, "Merging Persons: %{public}@ -> %{public}@ both have nil contactMatchingDictionary", &v32, 0x16u);

          goto LABEL_13;
        }

        contactMatchingDictionary = 0;
        goto LABEL_15;
      }

      if (!contactMatchingDictionary2)
      {
        if (*MEMORY[0x1E6994D48])
        {
          goto LABEL_15;
        }

        personUUID9 = __CPLAssetsdOSLogDomain();
        if (os_log_type_enabled(personUUID9, OS_LOG_TYPE_DEFAULT))
        {
          personUUID5 = [(PLPerson *)self personUUID];
          personUUID6 = [personCopy personUUID];
          allKeys2 = [contactMatchingDictionary allKeys];
          v30 = [allKeys2 componentsJoinedByString:{@", "}];
          v32 = 138543874;
          v33 = personUUID5;
          v34 = 2114;
          v35 = personUUID6;
          v36 = 2114;
          v37 = v30;
          _os_log_impl(&dword_19BF1F000, personUUID9, OS_LOG_TYPE_DEFAULT, "Merging Persons: target person %{public}@ has nil contactMatchingDictionary but merge source %{public}@ has these keys: %{public}@", &v32, 0x20u);
        }

        goto LABEL_14;
      }

      contactMatchingDictionary4 = [(PLPerson *)self contactMatchingDictionary];
      personUUID9 = [PLContactStoreUtilitiesWorkaround compareContactMatchingDictionary:contactMatchingDictionary withDictionary:contactMatchingDictionary4];

      if (*MEMORY[0x1E6994D48])
      {
LABEL_14:

        goto LABEL_15;
      }

      personUUID3 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(personUUID3, OS_LOG_TYPE_DEFAULT))
      {
        personUUID7 = [personCopy personUUID];
        personUUID8 = [(PLPerson *)self personUUID];
        v19 = [PLContactStoreUtilitiesWorkaround comparisonDictionaryDescription:personUUID9];
        v32 = 138543874;
        v33 = personUUID7;
        v34 = 2114;
        v35 = personUUID8;
        v36 = 2114;
        v37 = v19;
        _os_log_impl(&dword_19BF1F000, personUUID3, OS_LOG_TYPE_DEFAULT, "Merging Persons: %{public}@ -> %{public}@ comparing contactMatchingDictionary (left=tombstone : right=target) contents: %{public}@", &v32, 0x20u);
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
    contactMatchingDictionary = __CPLAssetsdOSLogDomain();
    if (!os_log_type_enabled(contactMatchingDictionary, OS_LOG_TYPE_ERROR))
    {
LABEL_15:

      goto LABEL_16;
    }

    personUUID9 = [personCopy personUUID];
    personUUID3 = [(PLPerson *)self personUUID];
    personUri5 = [personCopy personUri];
    personUri6 = [(PLPerson *)self personUri];
    v32 = 138544130;
    v33 = personUUID9;
    v34 = 2114;
    v35 = personUUID3;
    v36 = 2114;
    v37 = personUri5;
    v38 = 2114;
    v39 = personUri6;
    _os_log_impl(&dword_19BF1F000, contactMatchingDictionary, OS_LOG_TYPE_ERROR, "Merging Persons %{public}@ -> %{public}@ with different Contact identifiers: %{public}@ -> %{public}@", &v32, 0x2Au);

    goto LABEL_13;
  }

LABEL_16:
}

- (void)_basicMergePersons:(id)persons
{
  v176 = *MEMORY[0x1E69E9840];
  personsCopy = persons;
  context = objc_autoreleasePoolPush();
  managedObjectContext = [(PLPerson *)self managedObjectContext];
  array = [MEMORY[0x1E695DF70] array];
  v153 = 0u;
  v154 = 0u;
  v155 = 0u;
  v156 = 0u;
  v5 = personsCopy;
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
        personUUID = [(PLPerson *)self personUUID];
        personUUID2 = [v11 personUUID];
        v14 = [personUUID isEqualToString:personUUID2];

        if (v14)
        {
          if ((*MEMORY[0x1E6994D48] & 1) == 0)
          {
            v15 = __CPLAssetsdOSLogDomain();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              personUUID3 = [(PLPerson *)self personUUID];
              *buf = 138543362;
              selfCopy = personUUID3;
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

          [array addObject:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v153 objects:v175 count:16];
    }

    while (v7);
  }

  v17 = array;
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v18 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v17 valueForKey:@"personUUID"];
      personUUID4 = [(PLPerson *)self personUUID];
      *buf = 138543618;
      selfCopy = v19;
      v166 = 2114;
      v167 = personUUID4;
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
        rejectedFaces = [v26 rejectedFaces];
        v28 = [rejectedFaces valueForKey:@"objectID"];

        [v120 unionSet:v28];
        allDetectedFaces = [v26 allDetectedFaces];
        v30 = [allDetectedFaces valueForKey:@"objectID"];

        [v21 unionSet:v30];
        rejectedFacesNeedingFaceCrops = [v26 rejectedFacesNeedingFaceCrops];
        v32 = [rejectedFacesNeedingFaceCrops valueForKey:@"objectID"];

        [v118 unionSet:v32];
      }

      v23 = [obj countByEnumeratingWithState:&v149 objects:v174 count:16];
    }

    while (v23);
  }

  allDetectedFaces2 = [(PLPerson *)self allDetectedFaces];
  v34 = [allDetectedFaces2 valueForKey:@"objectID"];

  rejectedFaces2 = [(PLPerson *)self rejectedFaces];
  v36 = [rejectedFaces2 valueForKey:@"objectID"];

  rejectedFacesNeedingFaceCrops2 = [(PLPerson *)self rejectedFacesNeedingFaceCrops];
  v38 = [rejectedFacesNeedingFaceCrops2 valueForKey:@"objectID"];

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
  v41 = managedObjectContext;
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
      personUUID5 = [(PLPerson *)self personUUID];
      *buf = 134219010;
      selfCopy = v43;
      v166 = 2048;
      v167 = v45;
      v40 = v44;
      v168 = 2048;
      v169 = v46;
      v170 = 2048;
      v171 = v48;
      v39 = v47;
      v172 = 2114;
      v173 = personUUID5;
      _os_log_impl(&dword_19BF1F000, v42, OS_LOG_TYPE_DEFAULT, "Adding %lu faces, unreject %lu faces, adding %lu rejectedFaces, %lu rejectedFacesNeedingFaceCrops to %{public}@", buf, 0x34u);

      v41 = managedObjectContext;
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
        mutableFaces = [(PLPerson *)self mutableFaces];
        [mutableFaces addObject:v55];

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
        mutableRejectedFaces = [(PLPerson *)self mutableRejectedFaces];
        [mutableRejectedFaces removeObject:v61];
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
        mutableRejectedFaces2 = [(PLPerson *)self mutableRejectedFaces];
        [mutableRejectedFaces2 addObject:v67];
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
        mutableRejectedFacesNeedingFaceCrops = [(PLPerson *)self mutableRejectedFacesNeedingFaceCrops];
        [mutableRejectedFacesNeedingFaceCrops addObject:v73];
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
      personUUID6 = [(PLPerson *)self personUUID];
      faceCrops = [(PLPerson *)self faceCrops];
      v78 = [faceCrops count];
      *buf = 138543618;
      selfCopy = personUUID6;
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
        faceCrops2 = [v84 faceCrops];
        v125 = 0u;
        v126 = 0u;
        v127 = 0u;
        v128 = 0u;
        v86 = [faceCrops2 countByEnumeratingWithState:&v125 objects:v158 count:16];
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
                objc_enumerationMutation(faceCrops2);
              }

              [*(*(&v125 + 1) + 8 * kk) setState:0];
            }

            v87 = [faceCrops2 countByEnumeratingWithState:&v125 objects:v158 count:16];
          }

          while (v87);
        }

        faceCrops3 = [v84 faceCrops];
        allObjects = [faceCrops3 allObjects];

        if ((*MEMORY[0x1E6994D48] & 1) == 0)
        {
          v92 = __CPLAssetsdOSLogDomain();
          if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
          {
            v93 = [allObjects count];
            *buf = 134218242;
            selfCopy = v93;
            v166 = 2112;
            v167 = v84;
            _os_log_impl(&dword_19BF1F000, v92, OS_LOG_TYPE_DEFAULT, "Adding %lu faceCrops from %@", buf, 0x16u);
          }
        }

        mutableFaceCrops = [(PLPerson *)self mutableFaceCrops];
        [mutableFaceCrops addObjectsFromArray:allObjects];
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
      faceCrops4 = [(PLPerson *)self faceCrops];
      v97 = [faceCrops4 count];
      *buf = 138543618;
      selfCopy = self;
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
            personUUID7 = [v103 personUUID];
            personUUID8 = [(PLPerson *)self personUUID];
            *buf = 138543618;
            selfCopy = personUUID7;
            v166 = 2114;
            v167 = personUUID8;
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
  selfCopy = self;
  mergeTargetPerson = [(PLPerson *)selfCopy mergeTargetPerson];
  mergeTargetPerson2 = [(PLPerson *)selfCopy mergeTargetPerson];
  v4MergeTargetPerson = [mergeTargetPerson2 mergeTargetPerson];

  if (mergeTargetPerson)
  {
    v6 = selfCopy;
    while (v6 != v4MergeTargetPerson)
    {
      v7 = mergeTargetPerson;

      mergeTargetPerson = [(PLPerson *)v7 mergeTargetPerson];

      v5MergeTargetPerson = [(PLPerson *)v4MergeTargetPerson mergeTargetPerson];
      v8MergeTargetPerson = [v5MergeTargetPerson mergeTargetPerson];

      v6 = v7;
      v4MergeTargetPerson = v8MergeTargetPerson;
      if (!mergeTargetPerson)
      {
        v4MergeTargetPerson = v8MergeTargetPerson;
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
        v14 = selfCopy;
        _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "Looping merge target person %@", &v13, 0xCu);
      }
    }
  }

  else
  {
    v6 = selfCopy;
  }

LABEL_11:
  v11 = v6;

  return v6;
}

- (id)pickKeyFaceOptimalStateForContactDedupeWithPersons:(id)persons
{
  v25 = *MEMORY[0x1E69E9840];
  personsCopy = persons;
  v5 = [personsCopy arrayByAddingObject:self];
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

      keyFace = [*(*(&v20 + 1) + 8 * v12) keyFace];
      v14 = keyFace;
      if (keyFace)
      {
        if (!v10)
        {
          v10 = keyFace;
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

- (void)prepareForUserInitiatedMergeWithPersons:(id)persons
{
  v73 = *MEMORY[0x1E69E9840];
  personsCopy = persons;
  managedObjectContext = [(PLPerson *)self managedObjectContext];
  selfCopy = self;
  v51 = personsCopy;
  v6 = [personsCopy arrayByAddingObject:self];
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
  v14 = [managedObjectContext executeFetchRequest:v12 error:&v65];
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
          [managedObjectContext deleteObject:v23];
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
  v28 = [managedObjectContext executeFetchRequest:v26 error:&v60];
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
        keyFace = [v41 keyFace];
        nameSource = [keyFace nameSource];

        if (nameSource != 1)
        {
          keyFace2 = [v41 keyFace];
          [keyFace2 setEffectiveNameSource:1];

          keyFace3 = [v41 keyFace];
          [keyFace3 setConfirmedFaceCropGenerationState:1];
        }
      }

      v38 = [v36 countByEnumeratingWithState:&v52 objects:v66 count:16];
    }

    while (v38);
  }

  if ([(PLPerson *)selfCopy keyFacePickSource]!= 1)
  {
    [(PLPerson *)selfCopy setKeyFacePickSource:1];
  }
}

- (id)reverseOrderedMergeTargetPersons
{
  v14 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  mergeTargetPerson = [(PLPerson *)self mergeTargetPerson];
  if (mergeTargetPerson)
  {
    v6 = mergeTargetPerson;
    while (![v4 containsObject:v6])
    {
      [v4 addObject:v6];
      [array insertObject:v6 atIndex:0];
      mergeTargetPerson2 = [v6 mergeTargetPerson];

      v6 = mergeTargetPerson2;
      if (!mergeTargetPerson2)
      {
        goto LABEL_9;
      }
    }

    v8 = PLBackendGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412546;
      selfCopy = self;
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "Found a looping merge target person for %@: %@", &v10, 0x16u);
    }
  }

LABEL_9:

  return array;
}

- (id)pickOptimalStateForUserInitiatedMergeWithPersons:(id)persons nominalTarget:(id)target
{
  personsCopy = persons;
  targetCopy = target;
  v8 = [personsCopy arrayByAddingObject:self];
  v9 = [v8 sortedArrayUsingComparator:&__block_literal_global_341];
  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (targetCopy)
  {
    lastObject = targetCopy;
  }

  else
  {
    lastObject = [v9 lastObject];
  }

  v12 = lastObject;
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(lastObject, "manualOrder")}];
  [v10 setObject:v13 forKey:@"manualOrder"];

  v14 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v12, "type")}];
  [v10 setObject:v14 forKey:@"type"];

  keyFace = [targetCopy keyFace];

  if (keyFace)
  {
    keyFace2 = [targetCopy keyFace];
    [v10 setObject:keyFace2 forKey:@"keyFace"];
  }

  fullName = [targetCopy fullName];
  v18 = [fullName length];

  if (v18)
  {
    fullName2 = [targetCopy fullName];
    [v10 setObject:fullName2 forKey:@"fullName"];

    displayName = [targetCopy displayName];
    if (displayName)
    {
      [v10 setObject:displayName forKey:@"displayName"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [v10 setObject:null forKey:@"displayName"];
    }
  }

  contactMatchingDictionary = [targetCopy contactMatchingDictionary];
  if (contactMatchingDictionary)
  {

    goto LABEL_14;
  }

  personUri = [targetCopy personUri];

  if (personUri)
  {
LABEL_14:
    contactMatchingDictionary2 = [targetCopy contactMatchingDictionary];
    if (contactMatchingDictionary2)
    {
      [v10 setObject:contactMatchingDictionary2 forKey:@"contactMatchingDictionary"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [v10 setObject:null2 forKey:@"contactMatchingDictionary"];
    }

    personUri2 = [targetCopy personUri];
    if (personUri2)
    {
      [v10 setObject:personUri2 forKey:@"personUri"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [v10 setObject:null3 forKey:@"personUri"];
    }

    if (keyFace && v18)
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
  managedObjectContext = [(PLPerson *)self managedObjectContext];
  userInfo = [managedObjectContext userInfo];
  v4 = [userInfo objectForKeyedSubscript:@"PLPersonReset"];
  v5 = [v4 isEqual:MEMORY[0x1E695E118]];

  return v5;
}

- (void)removePersistedFileSystemDataWithPathManager:(id)manager
{
  managerCopy = manager;
  v8 = managerCopy;
  if (!managerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLPerson.m" lineNumber:1138 description:{@"Invalid parameter not satisfying: %@", @"pathManager"}];

    managerCopy = 0;
  }

  if ([managerCopy isDCIM])
  {
    v6 = [[PLPersistedPersonMetadata alloc] initWithPLPerson:self pathManager:v8];
    [(PLPersistedPersonMetadata *)v6 removePersistedData];
  }
}

- (void)persistMetadataToFileSystemWithPathManager:(id)manager
{
  managerCopy = manager;
  v8 = managerCopy;
  if (!managerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLPerson.m" lineNumber:1130 description:{@"Invalid parameter not satisfying: %@", @"pathManager"}];

    managerCopy = 0;
  }

  if ([managerCopy isDCIM])
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

  personUUID = [(PLPerson *)self personUUID];
  v4 = personUUID != 0;

  return v4;
}

- (void)_signalBackgroundPersonNeededForPersonSyncWithJobFlags:(int64_t)flags
{
  managedObjectContext = [(PLPerson *)self managedObjectContext];
  v6 = [PLPhotoLibrary isBackgroundProcessingEnabledWithManagedObjectContext:managedObjectContext];

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
      personUUID = [(PLPerson *)self personUUID];
      managedObjectContext2 = [(PLPerson *)self managedObjectContext];
      v10 = [PLBackgroundJobWorkItem insertBackgroundJobWorkItemWithIdentifier:personUUID jobType:10 jobFlags:flags inManagedObjectContext:managedObjectContext2];

      *(&self->super._willSaveCallCount + 6) = 1;
      photoLibrary = [(PLManagedObject *)self photoLibrary];
      libraryServicesManager = [photoLibrary libraryServicesManager];

      backgroundJobService = [libraryServicesManager backgroundJobService];
      libraryBundle = [libraryServicesManager libraryBundle];
      v15 = [PLBackgroundJobWorkerTypes workerTypesMaskForBackgroundJobType:10];
      [backgroundJobService signalBackgroundProcessingNeededOnBundle:libraryBundle workerTypes:v15];
    }
  }
}

- (void)_updateSharedLibraryPeopleRulesForTombstone
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"autoSharePolicy", 2];
  managedObjectContext = [(PLPerson *)self managedObjectContext];
  v5 = [(PLShare *)PLLibraryScope sharesWithPredicate:v3 fetchLimit:0 inManagedObjectContext:managedObjectContext];

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
        personUUID = [(PLPerson *)self personUUID];
        mergeTargetPerson = [(PLPerson *)self mergeTargetPerson];
        personUUID2 = [mergeTargetPerson personUUID];
        [v11 updatePeopleRulesForTombstonePersonUUID:personUUID replaceWithPersonUUID:personUUID2];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }
}

- (void)setEffectiveVerifiedType:(int)type
{
  v3 = *&type;
  cloudVerifiedType = [(PLPerson *)self cloudVerifiedType];
  if (v3 == 2 && cloudVerifiedType == 1)
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

- (void)rejectFaceIfPossible:(id)possible shouldCreateFaceCrop:(BOOL)crop
{
  cropCopy = crop;
  possibleCopy = possible;
  verifiedType = [(PLPerson *)self verifiedType];
  v7 = possibleCopy;
  if (possibleCopy)
  {
    if (verifiedType)
    {
      mutableRejectedFaces = [(PLPerson *)self mutableRejectedFaces];
      [mutableRejectedFaces addObject:possibleCopy];

      v7 = possibleCopy;
      if (cropCopy)
      {
        [possibleCopy addRejectedPersonNeedingFaceCrops:self];
        v7 = possibleCopy;
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
  detectedFaces = [(PLPerson *)self detectedFaces];
  v6 = [detectedFaces countByEnumeratingWithState:&v29 objects:v57 count:16];
  if (v6)
  {
    v7 = *v30;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v30 != v7)
        {
          objc_enumerationMutation(detectedFaces);
        }

        (*(v4 + 2))(v4, *(*(&v29 + 1) + 8 * i), v58);
      }

      v6 = [detectedFaces countByEnumeratingWithState:&v29 objects:v57 count:16];
    }

    while (v6);
  }

  temporalDetectedFaces = [(PLPerson *)self temporalDetectedFaces];
  v10 = v39[3];
  if (v10 < [temporalDetectedFaces count])
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v11 = temporalDetectedFaces;
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
    detectionType = [(PLPerson *)self detectionType];
    if (*(v35 + 12) != detectionType)
    {
      v18 = PLBackendGetLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        detectionType2 = [(PLPerson *)self detectionType];
        v20 = *(v35 + 12);
        personUUID = [(PLPerson *)self personUUID];
        v22 = v39[3];
        v23 = v43[3];
        *buf = 67110146;
        v47 = detectionType2;
        v48 = 1024;
        v49 = v20;
        v50 = 2114;
        v51 = personUUID;
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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLPerson.m" lineNumber:704 description:{@"Invalid parameter not satisfying: %@", @"majorityDetectionType != PLDetectionTypePet"}];
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
  entity = [(PLPerson *)self entity];
  v4 = MEMORY[0x1E695D5B8];
  v5 = +[PLDetectedFace entityName];
  managedObjectContext = [(PLPerson *)self managedObjectContext];
  v7 = [v4 entityForName:v5 inManagedObjectContext:managedObjectContext];

  v27 = entity;
  v28 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  relationshipsByName = [entity relationshipsByName];
  allValues = [relationshipsByName allValues];

  v10 = [allValues countByEnumeratingWithState:&v33 objects:v38 count:16];
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
          objc_enumerationMutation(allValues);
        }

        v14 = *(*(&v33 + 1) + 8 * v13);
        v15 = objc_autoreleasePoolPush();
        destinationEntity = [v14 destinationEntity];
        v17 = [destinationEntity isEqual:v7];

        if (v17)
        {
          name = [v14 name];
          v19 = [(PLPerson *)self valueForKey:name];

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
      v11 = [allValues countByEnumeratingWithState:&v33 objects:v38 count:16];
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
  allDetectedFaces = [(PLPerson *)self allDetectedFaces];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [allDetectedFaces countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(allDetectedFaces);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        [v8 setClusterSequenceNumber:0];
        [v8 setVuObservationID:0];
        [v8 setAssociatedPerson:0];
      }

      v5 = [allDetectedFaces countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  rejectedFaces = [(PLPerson *)self rejectedFaces];
  v10 = [rejectedFaces count];

  if (v10)
  {
    mutableRejectedFaces = [(PLPerson *)self mutableRejectedFaces];
    [mutableRejectedFaces removeAllObjects];

    mutableRejectedFacesNeedingFaceCrops = [(PLPerson *)self mutableRejectedFacesNeedingFaceCrops];
    [mutableRejectedFacesNeedingFaceCrops removeAllObjects];
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
  fullName = [(PLPerson *)self fullName];
  v4 = fullName;
  v5 = @"<No Name>";
  if (fullName)
  {
    v5 = fullName;
  }

  v6 = v5;

  displayName = [(PLPerson *)self displayName];
  v8 = displayName;
  v9 = @"<No Display Name>";
  if (displayName)
  {
    v9 = displayName;
  }

  v10 = v9;

  v11 = MEMORY[0x1E696AEC0];
  personUUID = [(PLPerson *)self personUUID];
  v13 = [v11 stringWithFormat:@"%@ (%@) [%@]", v6, v10, personUUID];

  return v13;
}

- (void)setKeyFace:(id)face pickSource:(signed __int16)source
{
  if (face)
  {
    sourceCopy = source;
  }

  else
  {
    sourceCopy = 0;
  }

  faceCopy = face;
  [(PLPerson *)self setKeyFacePickSource:sourceCopy];
  [(PLPerson *)self setKeyFace:faceCopy];
}

- (void)updateDetectionTypeIfNeeded
{
  verifiedType = [(PLPerson *)self verifiedType];
  if ((verifiedType + 2) > 5 || ((1 << (verifiedType + 2)) & 0x27) == 0)
  {
    [(PLPerson *)self assignDetectionTypeFromFaces];
    if (![(PLPerson *)self cloudDetectionType])
    {
      if ([(PLPerson *)self detectionType])
      {
        detectionType = [(PLPerson *)self detectionType];

        [(PLPerson *)self setCloudDetectionType:detectionType];
      }
    }
  }
}

- (void)didSave
{
  v3 = &self->super._willSaveCallCount + 2;
  if (*(&self->super._willSaveCallCount + 4) == 1)
  {
    photoLibrary = [(PLManagedObject *)self photoLibrary];
    pathManager = [photoLibrary pathManager];
    [(PLPerson *)self persistMetadataToFileSystemWithPathManager:pathManager];
LABEL_5:

    *v3 = 0;
    goto LABEL_6;
  }

  v3 = (&self->super._willSaveCallCount + 5);
  if (*(&self->super._willSaveCallCount + 5) == 1)
  {
    photoLibrary = [(PLManagedObject *)self photoLibrary];
    pathManager = [photoLibrary pathManager];
    [(PLPerson *)self removePersistedFileSystemDataWithPathManager:pathManager];
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
  changedValues = [(PLPerson *)self changedValues];
  if (([(PLPerson *)self isDeleted]& 1) == 0)
  {
    v4 = [changedValues objectForKey:@"mergeTargetPerson"];
    if ([(PLPerson *)self isEqual:v4])
    {
      v5 = PLBackendGetLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        personUUID = [(PLPerson *)self personUUID];
        *buf = 138412290;
        v85 = personUUID;
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

    null = [MEMORY[0x1E695DFB0] null];
    if (v4 != null)
    {
      v8 = _os_feature_enabled_impl();

      if (!v8)
      {
LABEL_16:
        null2 = [MEMORY[0x1E695DFB0] null];
        v14 = [null2 isEqual:v4];

        if ((v14 & 1) == 0 && [(PLPerson *)self verifiedType]!= -2)
        {
          [(PLPerson *)self setEffectiveVerifiedType:4294967294];
          [(PLPerson *)self _updateSharedLibraryPeopleRulesForTombstone];
        }

LABEL_19:
        if ([(PLPerson *)self verifiedType]== -2)
        {
          mergeCandidates = [(PLPerson *)self mergeCandidates];
          v16 = [mergeCandidates count];

          if (v16)
          {
            mutableMergeCandidates = [(PLPerson *)self mutableMergeCandidates];
            [mutableMergeCandidates removeAllObjects];
          }

          mergeCandidatesWithConfidence = [(PLPerson *)self mergeCandidatesWithConfidence];
          v19 = [mergeCandidatesWithConfidence count];

          if (v19)
          {
            mutableMergeCandidatesWithConfidence = [(PLPerson *)self mutableMergeCandidatesWithConfidence];
            [mutableMergeCandidatesWithConfidence removeAllObjects];
          }

          invalidMergeCandidates = [(PLPerson *)self invalidMergeCandidates];
          v22 = [invalidMergeCandidates count];

          if (v22)
          {
            mutableInvalidMergeCandidates = [(PLPerson *)self mutableInvalidMergeCandidates];
            [mutableInvalidMergeCandidates removeAllObjects];
          }

          detectedFaces = [(PLPerson *)self detectedFaces];
          v25 = [detectedFaces count];

          if (v25)
          {
            [(PLPerson *)self _moveAllFacesToFinalMergeTarget];
          }
        }

        [(PLPerson *)self disconnectFaceGroup];
        v26 = [changedValues objectForKey:@"mergeCandidatesWithConfidence"];
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

        v29 = [changedValues objectForKeyedSubscript:@"type"];
        if (v29 && [(PLPerson *)self type]== -1)
        {
          [(PLPerson *)self _removeSharedLibraryPeopleRulesForPerson];
          [PLSocialGroup rejectSocialGroupsHavingMember:self];
        }

        v30 = [changedValues objectForKeyedSubscript:@"verifiedType"];
        if (!v30)
        {
          goto LABEL_50;
        }

        v31 = v30;
        verifiedType = [(PLPerson *)self verifiedType];

        if (verifiedType != 1)
        {
          goto LABEL_50;
        }

        v83[0] = @"verifiedType";
        v83[1] = @"type";
        v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:2];
        v34 = [(PLPerson *)self committedValuesForKeys:v33];

        faceCrops = [v34 objectForKeyedSubscript:@"type"];
        if ([faceCrops intValue] == -1)
        {
          v36 = [v34 objectForKeyedSubscript:@"verifiedType"];
          intValue = [v36 intValue];

          if (intValue != 2 || [(PLPerson *)self type]== -1)
          {
            goto LABEL_49;
          }

          v76 = changedValues;
          v79 = 0u;
          v80 = 0u;
          v77 = 0u;
          v78 = 0u;
          faceCrops = [(PLPerson *)self faceCrops];
          v38 = [faceCrops countByEnumeratingWithState:&v77 objects:v82 count:16];
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
                  objc_enumerationMutation(faceCrops);
                }

                v42 = *(*(&v77 + 1) + 8 * i);
                v43 = objc_autoreleasePoolPush();
                [v42 pl_safeSetValue:&unk_1F0FBED10 forKey:@"state" valueDidChangeHandler:0];
                objc_autoreleasePoolPop(v43);
              }

              v39 = [faceCrops countByEnumeratingWithState:&v77 objects:v82 count:16];
            }

            while (v39);
            v4 = v75;
            changedValues = v76;
            v34 = v73;
            v29 = v74;
          }
        }

LABEL_49:
LABEL_50:

        goto LABEL_51;
      }

      objc_opt_class();
      managedObjectContext = [(PLPerson *)self managedObjectContext];
      if (objc_opt_isKindOfClass())
      {
        v10 = managedObjectContext;
      }

      else
      {
        v10 = 0;
      }

      v11 = v10;

      delayedSaveActions = [v11 delayedSaveActions];
      [delayedSaveActions recordDeduplicationNeededForGroupsContainingMember:v4];

      null = [v11 delayedSaveActions];

      [null recordSocialGroupContainmentUpdateNeededForPerson:v4];
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
    managedObjectContext2 = [(PLPerson *)self managedObjectContext];
    [PLGraphNode cleanupDanglingNodeReferencesToDeletedActorsInContext:managedObjectContext2];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [PLDelayedSearchIndexUpdates recordPersonIfNeeded:self];
    v46 = [changedValues objectForKeyedSubscript:@"cloudLocalState"];
    if (v46)
    {
      v47 = [changedValues count] != 1;
    }

    else
    {
      v47 = 1;
    }

    v48 = [changedValues count] != 0 && v47;
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

      personUUID2 = [(PLPerson *)self personUUID];
      v51 = personUUID2;
      if (((personUUID2 != 0) & v48) == 0)
      {

LABEL_69:
        v53 = [changedValues objectForKeyedSubscript:@"userFeedbacks"];
        v54 = [changedValues objectForKeyedSubscript:@"type"];
        v55 = v54;
        if (v53 || [v54 integerValue] == -1)
        {
          v56 = PLBackendGetLog();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
          {
            personUUID3 = [(PLPerson *)self personUUID];
            *buf = 138543362;
            v85 = personUUID3;
            _os_log_impl(&dword_19BF1F000, v56, OS_LOG_TYPE_INFO, "Updating featured content due to changes on user feedback for person %{public}@", buf, 0xCu);
          }

          delayedSaveActions2 = [v44 delayedSaveActions];
          personUUID4 = [(PLPerson *)self personUUID];
          [delayedSaveActions2 recordFeaturedContentUpdateNeededForPersonUUID:personUUID4];
        }

        goto LABEL_75;
      }

      isDeleted = [(PLPerson *)self isDeleted];

      if (isDeleted)
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
  entity = [(PLPerson *)self entity];
  relationshipsByName = [entity relationshipsByName];
  allKeys = [relationshipsByName allKeys];
  v64 = [v60 setWithArray:allKeys];

  [v64 addObject:@"faceCount"];
  if (([(PLPerson *)self isInserted]& 1) != 0 || ([(PLPerson *)self isDeleted]& 1) != 0)
  {
    v65 = 1;
  }

  else
  {
    v66 = MEMORY[0x1E695DFD8];
    allKeys2 = [changedValues allKeys];
    v68 = [v66 setWithArray:allKeys2];
    v65 = [v68 isSubsetOfSet:v64] ^ 1;
  }

  photoLibrary = [(PLManagedObject *)self photoLibrary];
  libraryServicesManager = [photoLibrary libraryServicesManager];
  wellKnownPhotoLibraryIdentifier = [libraryServicesManager wellKnownPhotoLibraryIdentifier];

  if (v65 && (wellKnownPhotoLibraryIdentifier == 1 || MEMORY[0x19EAEE520]()))
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
  finalMergeTargetPerson = [(PLPerson *)self finalMergeTargetPerson];
  v4 = finalMergeTargetPerson;
  if (finalMergeTargetPerson && finalMergeTargetPerson != self)
  {
    v5 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      personUUID = [(PLPerson *)self personUUID];
      detectedFaces = [(PLPerson *)self detectedFaces];
      v8 = [detectedFaces count];
      personUUID2 = [(PLPerson *)v4 personUUID];
      *buf = 138543874;
      v13 = personUUID;
      v14 = 2048;
      v15 = v8;
      v16 = 2114;
      v17 = personUUID2;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "Tombstone Person %{public}@ has %tu faces. Moving them to final merge target %{public}@", buf, 0x20u);
    }

    selfCopy = self;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&selfCopy count:1];
    [(PLPerson *)v4 _basicMergePersons:v10];
  }
}

- (void)createUnverifiedPersonForRejectedFaceUUIDs:(id)ds inManagedObjectContext:(id)context
{
  v45 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  contextCopy = context;
  if ([dsCopy count])
  {
    v8 = [objc_opt_class() createUnverifiedPersonInManagedObjectContext:contextCopy];
    v9 = MEMORY[0x1E695D5E0];
    v10 = +[PLDetectedFace entityName];
    v11 = [v9 fetchRequestWithEntityName:v10];

    dsCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K in %@", @"uuid", dsCopy];
    [v11 setPredicate:dsCopy];

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
    v16 = [contextCopy enumerateObjectsFromFetchRequest:v11 usingDefaultBatchSizeWithBlock:v37];
    if ([v15 count])
    {
      v29 = v14;
      v30 = v11;
      v31 = contextCopy;
      v32 = dsCopy;
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
        shortValue = 0;
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
            unsignedIntegerValue = [v25 unsignedIntegerValue];

            if (unsignedIntegerValue > v20)
            {
              shortValue = [v24 shortValue];
              v20 = unsignedIntegerValue;
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v33 objects:v44 count:16];
        }

        while (v19);
      }

      else
      {
        shortValue = 0;
      }

      v14 = v29;
      [v29 setDetectionType:shortValue];
      contextCopy = v31;
      dsCopy = v32;
      v11 = v30;
    }

    v27 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      personUUID = [v14 personUUID];
      *buf = 138543618;
      v41 = personUUID;
      v42 = 2114;
      v43 = dsCopy;
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
  associatedFaceGroup = [(PLPerson *)self associatedFaceGroup];
  if ([(PLPerson *)self verifiedType]&& associatedFaceGroup)
  {
    [(PLPerson *)self setAssociatedFaceGroup:0];
    [objc_opt_class() createAssociatedPersonForFaceGroup:associatedFaceGroup];
  }
}

- (void)_removeSharedLibraryPeopleRulesForPerson
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"autoSharePolicy", 2];
  managedObjectContext = [(PLPerson *)self managedObjectContext];
  v5 = [(PLShare *)PLLibraryScope sharesWithPredicate:v3 fetchLimit:0 inManagedObjectContext:managedObjectContext];

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
        personUUID = [(PLPerson *)self personUUID];
        [v11 removePeopleRulesForPersonUUID:personUUID];

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
  managedObjectContext = [(PLPerson *)self managedObjectContext];
  if ((PLIsAssetsd() & 1) != 0 || MEMORY[0x19EAEE520]())
  {
    [PLGraphNode registerDeletedNodeActorForDanglingNodeCleanup:self];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([managedObjectContext mergingChanges] & 1) == 0)
  {
    v4 = PLBackendGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      personUUID = [(PLPerson *)self personUUID];
      *buf = 138543362;
      v15 = personUUID;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_INFO, "prepareForDeletion of person %{public}@", buf, 0xCu);
    }

    mergePolicy = [managedObjectContext mergePolicy];
    objc_opt_class();
    if (((objc_opt_isKindOfClass() & 1) == 0 || ([mergePolicy isResolvingConflicts] & 1) == 0) && !-[PLPerson _personResetIsInProgress](self, "_personResetIsInProgress") && -[PLPerson verifiedType](self, "verifiedType") == 2 && !*(&self->super._willSaveCallCount + 1))
    {
      v7 = PLBackendGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        personUUID2 = [(PLPerson *)self personUUID];
        name = [managedObjectContext name];
        *buf = 138543618;
        v15 = personUUID2;
        v16 = 2112;
        v17 = name;
        _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "Deleting graph person %{public}@ with unspecified reason in context %@", buf, 0x16u);
      }
    }

    personUUID3 = [(PLPerson *)self personUUID];

    if (personUUID3)
    {
      photoLibrary = [(PLManagedObject *)self photoLibrary];
      pathManager = [photoLibrary pathManager];
      [(PLPerson *)self removePersistedFileSystemDataWithPathManager:pathManager];
    }

    [managedObjectContext recordCloudDeletionForObject:self];
  }
}

- (NSSet)allDetectedFaces
{
  detectedFaces = [(PLPerson *)self detectedFaces];
  v4 = [detectedFaces mutableCopy];

  temporalDetectedFaces = [(PLPerson *)self temporalDetectedFaces];
  [v4 unionSet:temporalDetectedFaces];

  v6 = [v4 copy];

  return v6;
}

+ (id)fetchFinalMergeTargetPersonForPersonWithUUID:(id)d context:(id)context predicate:(id)predicate
{
  v30[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  predicateCopy = predicate;
  contextCopy = context;
  fetchRequest = [self fetchRequest];
  v30[0] = @"mergeTargetPerson.mergeTargetPerson.mergeTargetPerson.mergeTargetPerson.mergeTargetPerson";
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
  [fetchRequest setRelationshipKeyPathsForPrefetching:v12];

  dCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"personUUID == %@", dCopy];
  v14 = dCopy;
  if (predicateCopy)
  {
    v15 = MEMORY[0x1E696AB28];
    v29[0] = predicateCopy;
    v29[1] = dCopy;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
    v17 = [v15 andPredicateWithSubpredicates:v16];
  }

  else
  {
    v17 = dCopy;
  }

  [fetchRequest setPredicate:v17];
  [fetchRequest setReturnsObjectsAsFaults:0];
  [fetchRequest setFetchLimit:1];
  v24 = 0;
  v18 = [contextCopy executeFetchRequest:fetchRequest error:&v24];

  v19 = v24;
  if (!v18)
  {
    v20 = PLBackendGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v26 = dCopy;
      v27 = 2112;
      v28 = v19;
      _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_ERROR, "Failed to fetch final merge target person with UUID %@: %@", buf, 0x16u);
    }
  }

  firstObject = [v18 firstObject];
  finalMergeTargetPerson = [firstObject finalMergeTargetPerson];

  return finalMergeTargetPerson;
}

+ (BOOL)_detachFacesForPerson:(id)person reason:(signed __int16)reason error:(id *)error
{
  reasonCopy = reason;
  v52[1] = *MEMORY[0x1E69E9840];
  personCopy = person;
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  managedObjectContext = [personCopy managedObjectContext];
  allDetectedFaces = [personCopy allDetectedFaces];
  allObjects = [allDetectedFaces allObjects];

  v13 = [allObjects count];
  v14 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:v13];
  v15 = 0;
  if (reasonCopy == 6 && v13)
  {
    v15 = [self createUnverifiedPersonInManagedObjectContext:managedObjectContext];
    [v15 setDetectionType:{objc_msgSend(personCopy, "detectionType")}];
    mdID = [personCopy mdID];
    [v15 setMdID:mdID];
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
  v20 = [managedObjectContext enumerateWithIncrementalSaveUsingObjects:allObjects withBlock:v45];
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
    v20 = [managedObjectContext enumerateWithIncrementalSaveUsingObjects:v18 withBlock:v43];
  }

  if (v19)
  {
    v24 = +[PLKeyFaceManager sharedInstance];
    personUUID = [v19 personUUID];
    [v19 photoLibrary];
    v42 = v19;
    v26 = v17;
    v27 = personCopy;
    v28 = v18;
    v29 = allObjects;
    v30 = managedObjectContext;
    v32 = v31 = error;
    [v24 markPersonAsNeedingKeyFace:personUUID photoLibrary:v32];

    error = v31;
    managedObjectContext = v30;
    allObjects = v29;
    v18 = v28;
    personCopy = v27;
    v17 = v26;
    v19 = v42;
  }

  if ([v17 isCancelled] && !v20)
  {
    errorCopy = error;
    v34 = MEMORY[0x1E696ABC0];
    v35 = *MEMORY[0x1E69BFF48];
    v49 = *MEMORY[0x1E696A278];
    v50 = @"Person reset cancelled while deleting verified faces";
    v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
    v37 = v34;
    error = errorCopy;
    v20 = [v37 errorWithDomain:v35 code:41031 userInfo:v36];
  }

  v38 = v20;
  v39 = v38;
  if (v20 && error)
  {
    v40 = v38;
    *error = v39;
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

+ (BOOL)_deleteObjectsWithFetchRequest:(id)request reason:(signed __int16)reason moc:(id)moc progress:(id)progress error:(id *)error
{
  v53 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  mocCopy = moc;
  progressCopy = progress;
  [requestCopy setFetchBatchSize:100];
  v40 = 0;
  v14 = [mocCopy executeFetchRequest:requestCopy error:&v40];
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
    v16 = progressCopy;
    v34 = v16;
    v37 = v49;
    selfCopy = self;
    reasonCopy = reason;
    v31 = requestCopy;
    v35 = v31;
    v36 = mocCopy;
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
        entityName = [v31 entityName];
        *buf = 138543874;
        v42 = entityName;
        v43 = 2082;
        v44 = "+[PLPerson _deleteObjectsWithFetchRequest:reason:moc:progress:error:]";
        v45 = 2112;
        v46 = v20;
        _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_ERROR, "Failed to delete %{public}@ in %{public}s %@", buf, 0x20u);
      }

      if (error)
      {
        v23 = v20;
        *error = v20;
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
      entityName2 = [requestCopy entityName];
      *v49 = 138543874;
      *&v49[4] = entityName2;
      *&v49[12] = 2082;
      *&v49[14] = "+[PLPerson _deleteObjectsWithFetchRequest:reason:moc:progress:error:]";
      *&v49[22] = 2112;
      v50 = v15;
      _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_ERROR, "Failed to fetch %{public}@ in %{public}s %@", v49, 0x20u);
    }

    if (error)
    {
      v27 = v15;
      v24 = 0;
      *error = v15;
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

+ (void)_resetMediaAnalysisAfterPersonResetInLibraryURL:(id)l resetPersons:(BOOL)persons completion:(id)completion
{
  personsCopy = persons;
  lCopy = l;
  completionCopy = completion;
  if (personsCopy)
  {
    [PLMediaAnalysisServiceRequestAdapter requestResetPersons:0 photoLibraryURL:lCopy completionHandler:completionCopy];
  }

  [PLMediaAnalysisServiceRequestAdapter requestResetFaceClassificationModelForPhotoLibraryURL:lCopy progressHandler:&__block_literal_global_324 completionHandler:completionCopy];
}

+ (id)resetAllInLibrary:(id)library completion:(id)completion
{
  libraryCopy = library;
  completionCopy = completion;
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
  managedObjectContext = [libraryCopy managedObjectContext];
  [self _setPersonResetInProgress:1 context:managedObjectContext];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __41__PLPerson_resetAllInLibrary_completion___block_invoke;
  aBlock[3] = &unk_1E7576FA8;
  selfCopy = self;
  v9 = managedObjectContext;
  v48 = v9;
  v10 = completionCopy;
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
  [libraryCopy performBlockAndWait:v38];
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
    selfCopy2 = self;
    v31 = v15;
    v32 = v14;
    v18 = v17;
    v33 = v18;
    v36 = &v51;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __41__PLPerson_resetAllInLibrary_completion___block_invoke_318;
    v23[3] = &unk_1E7577020;
    v24 = libraryCopy;
    v27 = v57;
    selfCopy3 = self;
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

+ (void)_setPersonResetInProgress:(BOOL)progress context:(id)context
{
  contextCopy = context;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__PLPerson__setPersonResetInProgress_context___block_invoke;
  v7[3] = &unk_1E7576F80;
  progressCopy = progress;
  v8 = contextCopy;
  v6 = contextCopy;
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

+ (BOOL)resetAllInLibrary:(id)library error:(id *)error
{
  libraryCopy = library;
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
  managedObjectContext = [libraryCopy managedObjectContext];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __36__PLPerson_resetAllInLibrary_error___block_invoke;
  v14[3] = &unk_1E7578870;
  v7 = managedObjectContext;
  v15 = v7;
  v16 = &v24;
  v17 = &v18;
  [libraryCopy performTransactionAndWait:v14];
  if (*(v25 + 24) == 1)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __36__PLPerson_resetAllInLibrary_error___block_invoke_310;
    v10[3] = &unk_1E7578870;
    v11 = v7;
    v12 = &v24;
    v13 = &v18;
    [libraryCopy performBlockAndWait:v10];
  }

  if (error)
  {
    *error = v19[5];
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

+ (id)predicateForIncludedDetectionTypes:(id)types
{
  typesCopy = types;
  if ([typesCopy containsObject:&unk_1F0FBED40])
  {
    v4 = [typesCopy containsObject:&unk_1F0FBED58];

    if (v4)
    {
      typesCopy = 0;
    }

    else
    {
      typesCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K >= %@", @"detectionType", &unk_1F0FBED40];
    }
  }

  else
  {
    typesCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"detectionType", typesCopy];
  }

  return typesCopy;
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

+ (id)predicateForPersonsNeedingFaceCropGenerationForFaceObjectID:(id)d
{
  v33[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AE18];
  dCopy = d;
  v5 = [v3 predicateWithFormat:@"%K == %d", @"verifiedType", 1];
  v27 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SUBQUERY(%K, $f, $f == %@ AND $f.%K == %d AND ($f.%K == %d OR $f.%K == %d)).@count > 0", @"detectedFaces", dCopy, @"confirmedFaceCropGenerationState", 1, @"nameSource", 3, @"nameSource", 1];
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"verifiedType", 2];
  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SUBQUERY(%K, $f, $f == %@ AND $f.%K == %d AND $f.%K == %d).@count > 0", @"detectedFaces", dCopy, @"confirmedFaceCropGenerationState", 1, @"nameSource", 5];
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%@ IN %K AND %@ IN %K", dCopy, @"rejectedFaces", dCopy, @"rejectedFacesNeedingFaceCrops"];

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

+ (id)_stringFromContact:(id)contact preferGivenName:(BOOL)name
{
  nameCopy = name;
  contactCopy = contact;
  givenName = [contactCopy givenName];
  v7 = givenName;
  if (nameCopy && [givenName length])
  {
    v8 = v7;
  }

  else
  {
    v8 = [MEMORY[0x1E695CD80] stringFromContact:contactCopy style:0];
  }

  v9 = v8;

  return v9;
}

+ (id)fetchMePersonInManagedObjectContext:(id)context
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695D5E0];
  contextCopy = context;
  v6 = +[PLPerson entityName];
  v7 = [v4 fetchRequestWithEntityName:v6];

  predicateForMePerson = [self predicateForMePerson];
  [v7 setPredicate:predicateForMePerson];

  [v7 setFetchLimit:1];
  v14 = 0;
  v9 = [contextCopy executeFetchRequest:v7 error:&v14];

  v10 = v14;
  if (v9)
  {
    firstObject = [v9 firstObject];
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

    firstObject = 0;
  }

  return firstObject;
}

+ (void)batchFetchAssociatedPersonByFaceGroupUUIDWithFaceGroupUUIDs:(id)ds predicate:(id)predicate library:(id)library completion:(id)completion
{
  dsCopy = ds;
  libraryCopy = library;
  completionCopy = completion;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __101__PLPerson_batchFetchAssociatedPersonByFaceGroupUUIDWithFaceGroupUUIDs_predicate_library_completion___block_invoke;
  v14[3] = &unk_1E7576F38;
  v15 = libraryCopy;
  v16 = dsCopy;
  v17 = completionCopy;
  v11 = dsCopy;
  v12 = completionCopy;
  v13 = libraryCopy;
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

+ (id)fetchPersonCountByAssetUUIDForAssetUUIDs:(id)ds predicate:(id)predicate includedDetectionTypes:(id)types library:(id)library error:(id *)error
{
  dsCopy = ds;
  predicateCopy = predicate;
  typesCopy = types;
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
  libraryCopy = library;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __100__PLPerson_fetchPersonCountByAssetUUIDForAssetUUIDs_predicate_includedDetectionTypes_library_error___block_invoke;
  v22[3] = &unk_1E7576F10;
  v15 = libraryCopy;
  v23 = v15;
  v16 = predicateCopy;
  v24 = v16;
  v17 = dsCopy;
  v25 = v17;
  v18 = typesCopy;
  v26 = v18;
  v27 = &v29;
  v28 = &v35;
  [v15 performBlockAndWait:v22];
  if (error)
  {
    v19 = v30[5];
    if (v19)
    {
      *error = v19;
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

+ (void)batchFetchPersonsByAssetUUIDWithAssetUUIDs:(id)ds predicate:(id)predicate includedDetectionTypes:(id)types library:(id)library completion:(id)completion
{
  dsCopy = ds;
  predicateCopy = predicate;
  typesCopy = types;
  libraryCopy = library;
  completionCopy = completion;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __107__PLPerson_batchFetchPersonsByAssetUUIDWithAssetUUIDs_predicate_includedDetectionTypes_library_completion___block_invoke;
  v21[3] = &unk_1E7576EE8;
  v22 = libraryCopy;
  v23 = dsCopy;
  v24 = typesCopy;
  v25 = predicateCopy;
  v26 = completionCopy;
  v16 = dsCopy;
  v17 = typesCopy;
  v18 = predicateCopy;
  v19 = completionCopy;
  v20 = libraryCopy;
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

+ (void)batchFetchPersonUUIDsByAssetUUIDWithAssetUUIDs:(id)ds predicate:(id)predicate includedDetectionTypes:(id)types includeTemporalDetectedFaces:(BOOL)faces inManagedObjectContext:(id)context completion:(id)completion
{
  dsCopy = ds;
  predicateCopy = predicate;
  typesCopy = types;
  contextCopy = context;
  completionCopy = completion;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __155__PLPerson_batchFetchPersonUUIDsByAssetUUIDWithAssetUUIDs_predicate_includedDetectionTypes_includeTemporalDetectedFaces_inManagedObjectContext_completion___block_invoke;
  v24[3] = &unk_1E7576EC0;
  v25 = dsCopy;
  v26 = predicateCopy;
  facesCopy = faces;
  v27 = typesCopy;
  v28 = contextCopy;
  v29 = completionCopy;
  selfCopy = self;
  v19 = completionCopy;
  v20 = contextCopy;
  v21 = typesCopy;
  v22 = predicateCopy;
  v23 = dsCopy;
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

+ (id)_batchFetchPersonUUIDsByAssetUUIDWithAssetUUIDs:(id)ds predicate:(id)predicate includedDetectionTypes:(id)types includeTemporalDetectedFaces:(BOOL)faces inManagedObjectContext:(id)context error:(id *)error
{
  facesCopy = faces;
  v79[2] = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  typesCopy = types;
  contextCopy = context;
  v16 = MEMORY[0x1E695DF90];
  dsCopy = ds;
  dictionary = [v16 dictionary];
  v19 = MEMORY[0x1E695D5E0];
  v20 = +[PLManagedAsset entityName];
  v21 = [v19 fetchRequestWithEntityName:v20];

  dsCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"uuid", dsCopy];

  [v21 setPredicate:dsCopy];
  [v21 setResultType:1];
  v70 = 0;
  v62 = contextCopy;
  v23 = [contextCopy executeFetchRequest:v21 error:&v70];
  v24 = v70;
  if (v23)
  {
    errorCopy = error;
    v59 = dictionary;
    v25 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"assetForFace", v23];
    v56 = v24;
    v57 = v23;
    if (facesCopy)
    {
      v26 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"assetForTemporalDetectedFaces", v23];
      v27 = MEMORY[0x1E696AB28];
      v79[0] = v25;
      v79[1] = v26;
      v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v79 count:2];
      v29 = [v27 orPredicateWithSubpredicates:v28];

      v25 = v29;
    }

    v61 = predicateCopy;
    if (predicateCopy)
    {
      v32 = MEMORY[0x1E696AB28];
      v78[0] = v25;
      v78[1] = predicateCopy;
      v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v78 count:2];
      v30 = [v32 andPredicateWithSubpredicates:v33];
    }

    else
    {
      v30 = v25;
    }

    v60 = typesCopy;
    if (typesCopy)
    {
      v34 = [PLDetectedFace predicateForIncludedDetectionTypes:typesCopy];
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
    if (facesCopy)
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

    dictionary = v59;
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

    typesCopy = v60;
    predicateCopy = v61;
    v23 = v57;
    error = errorCopy;
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

  if (error)
  {
    v53 = v31;
    *error = v31;
  }

  v54 = dictionary;

  return dictionary;
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

+ (id)createUnverifiedPersonInManagedObjectContext:(id)context
{
  v3 = MEMORY[0x1E696AFB0];
  contextCopy = context;
  uUID = [v3 UUID];
  uUIDString = [uUID UUIDString];
  v7 = [PLPerson insertIntoManagedObjectContext:contextCopy withPersonUUID:uUIDString fullName:&stru_1F0F06D80 verifiedType:0];

  return v7;
}

+ (void)createAssociatedPersonForFaceGroup:(id)group
{
  if (group)
  {
    groupCopy = group;
    managedObjectContext = [groupCopy managedObjectContext];
    [self createAssociatedPersonForFaceGroup:groupCopy inManagedObjectContext:managedObjectContext];
  }
}

+ (id)personsWithUUIDs:(id)ds inManagedObjectContext:(id)context
{
  v6 = MEMORY[0x1E696AE18];
  contextCopy = context;
  v8 = [v6 predicateWithFormat:@"personUUID IN %@", ds];
  v9 = [self personsMatchingPredicate:v8 fetchLimit:0 sortDescriptors:0 relationshipKeyPathsForPrefetching:0 inManagedObjectContext:contextCopy];

  return v9;
}

+ (id)personsWithPersonUris:(id)uris inManagedObjectContext:(id)context
{
  urisCopy = uris;
  contextCopy = context;
  if (urisCopy)
  {
    v8 = objc_autoreleasePoolPush();
    urisCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"personUri", urisCopy];
    v10 = [self personsMatchingPredicate:urisCopy fetchLimit:0 sortDescriptors:0 relationshipKeyPathsForPrefetching:0 inManagedObjectContext:contextCopy];

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)personsWithPersonUri:(id)uri inManagedObjectContext:(id)context
{
  v13 = *MEMORY[0x1E69E9840];
  uriCopy = uri;
  v6 = MEMORY[0x1E695DEC8];
  contextCopy = context;
  uriCopy2 = uri;
  v9 = [v6 arrayWithObjects:&uriCopy count:1];

  v10 = [self personsWithPersonUris:v9 inManagedObjectContext:{contextCopy, uriCopy, v13}];

  return v10;
}

+ (PLPerson)personWithUUID:(id)d inManagedObjectContext:(id)context
{
  dCopy = d;
  contextCopy = context;
  if (dCopy)
  {
    v8 = objc_autoreleasePoolPush();
    dCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"personUUID == %@", dCopy];
    v10 = [self personsMatchingPredicate:dCopy fetchLimit:1 sortDescriptors:0 relationshipKeyPathsForPrefetching:0 inManagedObjectContext:contextCopy];
    if ([v10 count])
    {
      firstObject = [v10 firstObject];
    }

    else
    {
      firstObject = 0;
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

+ (id)personsMatchingPredicate:(id)predicate fetchLimit:(unint64_t)limit sortDescriptors:(id)descriptors relationshipKeyPathsForPrefetching:(id)prefetching inManagedObjectContext:(id)context
{
  predicateCopy = predicate;
  descriptorsCopy = descriptors;
  prefetchingCopy = prefetching;
  contextCopy = context;
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
  selfCopy = self;
  v16 = predicateCopy;
  v23 = v16;
  limitCopy = limit;
  v17 = descriptorsCopy;
  v24 = v17;
  v18 = prefetchingCopy;
  v25 = v18;
  v27 = &v30;
  v19 = contextCopy;
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

+ (id)insertIntoManagedObjectContext:(id)context withPersonUUID:(id)d fullName:(id)name verifiedType:(int)type
{
  v6 = *&type;
  contextCopy = context;
  dCopy = d;
  nameCopy = name;
  if (contextCopy)
  {
    entityName = [self entityName];
    [MEMORY[0x1E695D5B8] insertNewObjectForEntityForName:entityName inManagedObjectContext:contextCopy];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLPerson.m" lineNumber:199 description:{@"Invalid parameter not satisfying: %@", @"moc"}];

    entityName = [self entityName];
    PLSafeInsertNewObjectForEntityForNameInManagedObjectContext(entityName, 0, 0);
  }
  v15 = ;

  [v15 setPersonUUID:dCopy];
  [v15 setFullName:nameCopy];
  [v15 setType:0];
  [v15 setEffectiveVerifiedType:v6];

  return v15;
}

+ (id)insertIntoPhotoLibrary:(id)library withPersonUUID:(id)d fullName:(id)name verifiedType:(int)type
{
  v6 = *&type;
  libraryCopy = library;
  dCopy = d;
  nameCopy = name;
  if (!libraryCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLPerson.m" lineNumber:193 description:{@"Invalid parameter not satisfying: %@", @"library"}];
  }

  managedObjectContext = [libraryCopy managedObjectContext];
  v15 = [self insertIntoManagedObjectContext:managedObjectContext withPersonUUID:dCopy fullName:nameCopy verifiedType:v6];

  return v15;
}

+ (id)fetchDuplicatePersonUUIDsInManagedObjectContext:(id)context error:(id *)error
{
  contextCopy = context;
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
  v6 = contextCopy;
  v12 = v6;
  v13 = &v15;
  v14 = &v21;
  [v6 performBlockAndWait:v11];
  v7 = v16[5];
  v8 = v22[5];
  if (!v7 && error)
  {
    v8 = v8;
    *error = v8;
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

- (void)setCPLSyncedMergeTarget:(id)target
{
  v24[1] = *MEMORY[0x1E69E9840];
  targetCopy = target;
  finalMergeTargetPerson = [targetCopy finalMergeTargetPerson];
  mergeTargetPerson = [(PLPerson *)self mergeTargetPerson];

  if (!mergeTargetPerson)
  {
    personUUID = [(PLPerson *)self personUUID];
    personUUID2 = [finalMergeTargetPerson personUUID];
    v9 = [personUUID isEqualToString:personUUID2];

    if ((v9 & 1) == 0)
    {
      keyFace = [(PLPerson *)self keyFace];
      keyFacePickSource = [(PLPerson *)self keyFacePickSource];
      v24[0] = self;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
      [finalMergeTargetPerson basicMergePersons:v12];

      keyFace2 = [finalMergeTargetPerson keyFace];

      if (!keyFace2 && keyFace && keyFacePickSource == 1)
      {
        if ((*MEMORY[0x1E6994D48] & 1) == 0)
        {
          v14 = __CPLAssetsdOSLogDomain();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            personUUID3 = [finalMergeTargetPerson personUUID];
            uuid = [keyFace uuid];
            personUUID4 = [(PLPerson *)self personUUID];
            v18 = 138543874;
            selfCopy = personUUID3;
            v20 = 2114;
            v21 = uuid;
            v22 = 2114;
            v23 = personUUID4;
            _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEFAULT, "Final merge target person %{public}@ missing key face, updating to key face %{public}@ from %{public}@", &v18, 0x20u);
          }
        }

        [finalMergeTargetPerson setKeyFace:keyFace pickSource:1];
      }

      goto LABEL_14;
    }

    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      keyFace = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(keyFace, OS_LOG_TYPE_ERROR))
      {
        v18 = 138412546;
        selfCopy = self;
        v20 = 2112;
        v21 = targetCopy;
        _os_log_impl(&dword_19BF1F000, keyFace, OS_LOG_TYPE_ERROR, "Unable to merge %@ to %@, final merge target personUUID is the same", &v18, 0x16u);
      }

LABEL_14:
    }
  }
}

- (id)cplPersonChange
{
  v21 = *MEMORY[0x1E69E9840];
  personUUID = [(PLPerson *)self personUUID];

  if (personUUID)
  {
    scopedIdentifier = [(PLPerson *)self scopedIdentifier];
    v5 = [MEMORY[0x1E6994B38] newChangeWithScopedIdentifier:scopedIdentifier changeType:0];
    fullName = [(PLPerson *)self fullName];
    [v5 setFullName:fullName];

    displayName = [(PLPerson *)self displayName];
    [v5 setDisplayName:displayName];

    [v5 setPersonType:{-[PLPerson type](self, "type")}];
    [v5 setManualSortOrder:{-[PLPerson manualOrder](self, "manualOrder")}];
    if ([MEMORY[0x1E6994B38] serverSupportsAssetSortOrder])
    {
      [v5 setAssetSortOrder:{-[PLPerson assetSortOrder](self, "assetSortOrder")}];
    }

    contactMatchingDictionary = [(PLPerson *)self contactMatchingDictionary];
    [v5 setContactMatchingDictionary:contactMatchingDictionary];

    if ([MEMORY[0x1E6994B38] serverSupportsGraphPeopleHome])
    {
      cloudVerifiedType = [(PLPerson *)self cloudVerifiedType];
      cloudDetectionType = [(PLPerson *)self cloudDetectionType];
      if (cloudVerifiedType == -2)
      {
        v12 = -2;
      }

      else
      {
        v11 = cloudDetectionType;
        if (cloudVerifiedType == 2)
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

        else if (cloudVerifiedType == 1)
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
      mergeTargetPerson = [(PLPerson *)self mergeTargetPerson];
      v16 = mergeTargetPerson;
      if (mergeTargetPerson)
      {
        personUUID2 = [mergeTargetPerson personUUID];
        [v5 setMergeTargetPersonIdentifier:personUUID2];
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
        selfCopy = self;
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
  scopeIdentifier = [(PLPerson *)self scopeIdentifier];
  personUUID = [(PLPerson *)self personUUID];
  v6 = [v3 initWithScopeIdentifier:scopeIdentifier identifier:personUUID];

  return v6;
}

- (id)scopeIdentifier
{
  photoLibrary = [(PLManagedObject *)self photoLibrary];
  mainScopeIdentifier = [photoLibrary mainScopeIdentifier];

  return mainScopeIdentifier;
}

- (void)applyCPLChangeForContactMatchingDictionary:(id)dictionary
{
  v28[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  [(PLPerson *)self setContactMatchingDictionary:dictionaryCopy];
  if (dictionaryCopy || [0 count])
  {
    v5 = objc_alloc_init(MEMORY[0x1E695CE18]);
    v28[0] = *MEMORY[0x1E695C258];
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
    v7 = [PLContactStoreUtilitiesWorkaround contactWithMatchingDictionary:dictionaryCopy keysToFetch:v6 contactStore:v5];

    if (v7)
    {
      personUri = [(PLPerson *)self personUri];
      if (!personUri || (v9 = personUri, -[PLPerson personUri](self, "personUri"), v10 = objc_claimAutoreleasedReturnValue(), [v7 identifier], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v10, "isEqualToString:", v11), v11, v10, v9, (v12 & 1) == 0))
      {
        if ((*MEMORY[0x1E6994D48] & 1) == 0)
        {
          v13 = __CPLAssetsdOSLogDomain();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            personUUID = [(PLPerson *)self personUUID];
            identifier = [v7 identifier];
            personUri2 = [(PLPerson *)self personUri];
            v22 = 138543874;
            v23 = personUUID;
            v24 = 2114;
            v25 = identifier;
            v26 = 2114;
            v27 = personUri2;
            _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "Setting contact ID of person %{public}@ to %{public}@ (was %{public}@)", &v22, 0x20u);
          }
        }

        identifier2 = [v7 identifier];
        [(PLPerson *)self setPersonUri:identifier2];
      }
    }

    else
    {
      if ((*MEMORY[0x1E6994D48] & 1) == 0)
      {
        v18 = __CPLAssetsdOSLogDomain();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          personUUID2 = [(PLPerson *)self personUUID];
          v22 = 138543362;
          v23 = personUUID2;
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
        personUUID3 = [(PLPerson *)self personUUID];
        v22 = 138543362;
        v23 = personUUID3;
        _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_DEFAULT, "Setting contact ID of person %{public}@ to nil since contactsMatchingDictionary on cloud record was nil", &v22, 0xCu);
      }
    }

    [(PLPerson *)self setPersonUri:0];
  }
}

- (BOOL)_allowSyncOfChangeWithKey:(id)key
{
  if (![key isEqualToString:@"manualOrder"])
  {
    return 1;
  }

  cloudLocalState = [(PLPerson *)self cloudLocalState];
  verifiedType = [(PLPerson *)self verifiedType];
  manualOrder = [(PLPerson *)self manualOrder];
  return cloudLocalState != 1 || verifiedType != 2 || manualOrder < 0x400;
}

- (BOOL)isSyncableChange
{
  v18 = *MEMORY[0x1E69E9840];
  changedValues = [(PLPerson *)self changedValues];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  listOfSyncedProperties = [objc_opt_class() listOfSyncedProperties];
  v5 = [listOfSyncedProperties countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(listOfSyncedProperties);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [changedValues objectForKey:v9];

        if (v10 && [(PLPerson *)self _allowSyncOfChangeWithKey:v9])
        {
          v11 = 1;
          goto LABEL_12;
        }
      }

      v6 = [listOfSyncedProperties countByEnumeratingWithState:&v13 objects:v17 count:16];
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
  _predicateForSupportedVerifiedTypesForUpload = [objc_opt_class() _predicateForSupportedVerifiedTypesForUpload];
  _predicateForSupportedDetectionTypesForUpload = [objc_opt_class() _predicateForSupportedDetectionTypesForUpload];
  v11[1] = _predicateForSupportedDetectionTypesForUpload;
  _predicateToBlockHiddenGraphTypesForUpload = [objc_opt_class() _predicateToBlockHiddenGraphTypesForUpload];
  v11[2] = _predicateToBlockHiddenGraphTypesForUpload;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:3];
  v8 = [v3 andPredicateWithSubpredicates:v7];

  v9 = [v8 evaluateWithObject:self];
  return v9;
}

+ (BOOL)person:(id)person isBetterMergeTargetThanPerson:(id)thanPerson
{
  thanPersonCopy = thanPerson;
  personUUID = [person personUUID];
  personUUID2 = [thanPersonCopy personUUID];

  LOBYTE(thanPersonCopy) = [personUUID compare:personUUID2] == -1;
  return thanPersonCopy;
}

+ (void)resetCloudStateInPhotoLibrary:(id)library
{
  v18 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_alloc(MEMORY[0x1E695D560]);
  entityName = [self entityName];
  v8 = [v6 initWithEntityName:entityName];

  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %d", @"cloudLocalState", 0];
  [v8 setResultType:2];
  [v8 setPropertiesToUpdate:&unk_1F0FC0820];
  [v8 setPredicate:v9];
  managedObjectContext = [libraryCopy managedObjectContext];
  v15 = 0;
  v11 = [managedObjectContext executeRequest:v8 error:&v15];
  v12 = v15;

  if (v11)
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v13 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        result = [v11 result];
        *buf = 138412290;
        v17 = result;
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

+ (id)personsToPrefetchInManagedObjectContext:(id)context
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AE18];
  contextCopy = context;
  v6 = [v4 predicateWithFormat:@"%K = %d AND %K != %d AND %K != NULL", @"verifiedType", 1, @"type", 0xFFFFFFFFLL, @"keyFace"];
  v7 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"type" ascending:0];
  v13[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];

  v12 = @"keyFace.assetForFace";
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
  v10 = [self personsMatchingPredicate:v6 fetchLimit:100 sortDescriptors:v8 relationshipKeyPathsForPrefetching:v9 inManagedObjectContext:contextCopy];

  return v10;
}

+ (id)personsToUploadInManagedObjectContext:(id)context limit:(int64_t)limit
{
  v20[4] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696AE18];
  contextCopy = context;
  v8 = [v6 predicateWithFormat:@"%K == %d", @"cloudLocalState", 0];
  v9 = MEMORY[0x1E696AB28];
  v20[0] = v8;
  _predicateForSupportedVerifiedTypesForUpload = [self _predicateForSupportedVerifiedTypesForUpload];
  v20[1] = _predicateForSupportedVerifiedTypesForUpload;
  _predicateForSupportedDetectionTypesForUpload = [self _predicateForSupportedDetectionTypesForUpload];
  v20[2] = _predicateForSupportedDetectionTypesForUpload;
  _predicateToBlockHiddenGraphTypesForUpload = [self _predicateToBlockHiddenGraphTypesForUpload];
  v20[3] = _predicateToBlockHiddenGraphTypesForUpload;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:4];
  v14 = [v9 andPredicateWithSubpredicates:v13];

  v15 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"manualOrder" ascending:0];
  v19 = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];

  v17 = [self personsMatchingPredicate:v14 fetchLimit:limit sortDescriptors:v16 relationshipKeyPathsForPrefetching:0 inManagedObjectContext:contextCopy];

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