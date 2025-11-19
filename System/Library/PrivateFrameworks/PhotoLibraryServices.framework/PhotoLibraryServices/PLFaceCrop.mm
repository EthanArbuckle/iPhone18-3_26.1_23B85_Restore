@interface PLFaceCrop
+ (id)_faceCropsMatchingPredicate:(id)a3 limit:(unint64_t)a4 inManagedObjectContext:(id)a5;
+ (id)allFaceCropsInPhotoLibrary:(id)a3;
+ (id)batchFetchFaceCropByFaceObjectIDWithFaceObjectIDs:(id)a3 library:(id)a4;
+ (id)faceCropsToUploadInPhotoLibrary:(id)a3 limit:(unint64_t)a4;
+ (id)faceCropsWithUUIDs:(id)a3 inManagedObjectContext:(id)a4;
+ (id)faceCropsWithUUIDs:(id)a3 inPhotoLibrary:(id)a4;
+ (id)insertIntoManagedObjectContext:(id)a3 withUUID:(id)a4 resourceData:(id)a5 type:(signed __int16)a6;
+ (id)insertIntoPhotoLibrary:(id)a3 withUUID:(id)a4 resourceData:(id)a5 type:(signed __int16)a6;
+ (id)insertOrUpdateWithCPLFaceCrop:(id)a3 inPhotoLibrary:(id)a4;
+ (id)listOfSyncedProperties;
+ (int)_nameSourceForFaceFromFaceCrop:(id)a3;
+ (int)_trainingFaceTypeForFaceFromFaceCrop:(id)a3;
+ (int64_t)_cloudTypeToPushFromLocalType:(signed __int16)a3 cachedCloudType:(unsigned __int16)a4;
+ (signed)_localTypeFromCloudType:(int64_t)a3;
+ (void)resetCloudStateInPhotoLibrary:(id)a3;
- (BOOL)isSyncableChange;
- (BOOL)supportsCloudUpload;
- (NSString)debugDescription;
- (id)cplFaceCropChange;
- (id)scopeIdentifier;
- (id)scopedIdentifier;
- (void)applyPropertiesToTrainingFace;
- (void)prepareForDeletion;
- (void)willSave;
@end

@implementation PLFaceCrop

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(PLFaceCrop *)self uuid];
  v5 = [(PLFaceCrop *)self resourceData];
  v6 = [v5 length];
  v7 = [(PLFaceCrop *)self type]- 1;
  if (v7 > 4)
  {
    v8 = @"none";
  }

  else
  {
    v8 = off_1E7572868[v7];
  }

  v9 = [(PLFaceCrop *)self person];
  v10 = [v9 personUUID];
  v11 = [(PLFaceCrop *)self state];
  if (v11 > 2)
  {
    v12 = @"unknown";
  }

  else
  {
    v12 = off_1E7572890[v11];
  }

  v13 = [(PLFaceCrop *)self cloudLocalState];
  v14 = [(PLFaceCrop *)self invalidMergeCandidatePersonUUID];
  v15 = [v3 stringWithFormat:@"FaceCrop: UUID: %@ ResourceData: %lu bytes Type: %@ Person: %@ State: %@ Cloud State: %d Invalid merge candidate UUID: %@", v4, v6, v8, v10, v12, v13, v14];

  return v15;
}

- (id)cplFaceCropChange
{
  v3 = [(PLFaceCrop *)self scopedIdentifier];
  v4 = [MEMORY[0x1E6994AC8] newRecordWithScopedIdentifier:v3];
  v5 = [(PLFaceCrop *)self person];
  v6 = [v5 personUUID];
  [v4 setPersonIdentifier:v6];

  [v4 setFaceCropType:{objc_msgSend(objc_opt_class(), "_cloudTypeToPushFromLocalType:cachedCloudType:", -[PLFaceCrop type](self, "type"), -[PLFaceCrop cloudType](self, "cloudType"))}];
  v7 = [(PLFaceCrop *)self resourceData];
  [v4 setResourceData:v7];

  if ([MEMORY[0x1E6994B38] serverSupportsGraphPeopleHome])
  {
    v8 = [(PLFaceCrop *)self invalidMergeCandidatePersonUUID];
    [v4 setRejectedPersonIdentifier:v8];
  }

  return v4;
}

- (id)scopedIdentifier
{
  v3 = objc_alloc(MEMORY[0x1E6994BB8]);
  v4 = [(PLFaceCrop *)self scopeIdentifier];
  v5 = [(PLFaceCrop *)self uuid];
  v6 = [v3 initWithScopeIdentifier:v4 identifier:v5];

  return v6;
}

- (id)scopeIdentifier
{
  v2 = [(PLManagedObject *)self photoLibrary];
  v3 = [v2 mainScopeIdentifier];

  return v3;
}

- (BOOL)isSyncableChange
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [(PLFaceCrop *)self changedValues];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [objc_opt_class() listOfSyncedProperties];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = [v2 objectForKey:*(*(&v9 + 1) + 8 * i)];

        if (v7)
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (BOOL)supportsCloudUpload
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E6994A80] serverSupportsVision];
  if (v3)
  {
    v4 = [(PLFaceCrop *)self person];
    v5 = v4;
    if (v4)
    {
      if ([v4 verifiedType])
      {

        if ([objc_opt_class() _cloudTypeToPushFromLocalType:-[PLFaceCrop type](self cachedCloudType:{"type"), -[PLFaceCrop cloudType](self, "cloudType")}])
        {
          LOBYTE(v3) = 1;
          return v3;
        }

        v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"FaceCrop %@ with unknown cloud type is an error", self];
        if (*MEMORY[0x1E6994D48])
        {
LABEL_15:

          LOBYTE(v3) = 0;
          return v3;
        }

        v6 = __CPLAssetsdOSLogDomain();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v10 = v5;
          _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }

LABEL_14:

        goto LABEL_15;
      }

      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"FaceCrop %@ linked to unverified person %@", self, v5];
      if (*MEMORY[0x1E6994D48])
      {
        goto LABEL_14;
      }

      v7 = __CPLAssetsdOSLogDomain();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
LABEL_13:

        goto LABEL_14;
      }

      *buf = 138412290;
      v10 = v6;
    }

    else
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing person for faceCrop %@", self];
      if (*MEMORY[0x1E6994D48])
      {
        v5 = 0;
        goto LABEL_14;
      }

      v7 = __CPLAssetsdOSLogDomain();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_13;
      }

      *buf = 138412290;
      v10 = v6;
    }

    _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    goto LABEL_13;
  }

  return v3;
}

- (void)applyPropertiesToTrainingFace
{
  v6 = [(PLFaceCrop *)self person];
  v3 = [(PLFaceCrop *)self face];
  if ([(PLFaceCrop *)self type]== 2 || [(PLFaceCrop *)self type]== 4)
  {
    v4 = [v6 mutableRejectedFaces];
    [v4 addObject:v3];
  }

  else
  {
    v5 = [v6 mutableFaces];
    [v5 addObject:v3];

    [v3 fixPersonRelationshipsForFaceTorsoOrTemporal];
  }

  [v3 setEffectiveNameSource:{objc_msgSend(objc_opt_class(), "_nameSourceForFaceFromFaceCrop:", self)}];
  [v3 setTrainingType:{objc_msgSend(objc_opt_class(), "_trainingFaceTypeForFaceFromFaceCrop:", self)}];
}

- (void)prepareForDeletion
{
  v4.receiver = self;
  v4.super_class = PLFaceCrop;
  [(PLFaceCrop *)&v4 prepareForDeletion];
  v3 = [(PLFaceCrop *)self managedObjectContext];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v3 mergingChanges] & 1) == 0)
  {
    [v3 recordCloudDeletionForObject:self];
  }
}

- (void)willSave
{
  v23.receiver = self;
  v23.super_class = PLFaceCrop;
  [(PLManagedObject *)&v23 willSave];
  v3 = [(PLFaceCrop *)self changedValues];
  v4 = [v3 objectForKey:@"person"];
  if (v4)
  {
    v5 = [(PLFaceCrop *)self face];

    if (v5)
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      if (v4 == v6)
      {
        v7 = 0;
      }

      else
      {
        v7 = v4;
      }

      v8 = v7;

      if ([(PLFaceCrop *)self type]== 4 || [(PLFaceCrop *)self type]== 2)
      {
        v9 = [(PLFaceCrop *)self face];
        v10 = [v9 rejectedPersons];
        v11 = [v10 anyObject];

        if (v11)
        {
          if ([v11 isEqual:v8])
          {
LABEL_25:

LABEL_26:
            goto LABEL_27;
          }

          if (v4 == v6)
          {
            v12 = [MEMORY[0x1E695DFD8] set];
LABEL_14:
            v13 = v12;
            v14 = [(PLFaceCrop *)self face];
            [v14 setRejectedPersons:v13];

LABEL_23:
            goto LABEL_25;
          }

LABEL_13:
          v12 = [MEMORY[0x1E695DFD8] setWithObject:v4];
          goto LABEL_14;
        }

        if (v4 != v6)
        {
          goto LABEL_13;
        }

LABEL_24:
        v11 = 0;
        goto LABEL_25;
      }

      if ([(PLFaceCrop *)self type]!= 3 && [(PLFaceCrop *)self type]!= 1 && [(PLFaceCrop *)self type]!= 5)
      {
        goto LABEL_26;
      }

      v15 = [(PLFaceCrop *)self face];
      v11 = [v15 associatedPersonForFaceOrTorso:1 orTemporal:0];

      if (v11)
      {
        if ([v11 isEqual:v8])
        {
          goto LABEL_25;
        }
      }

      else if (v4 == v6)
      {
        goto LABEL_24;
      }

      v13 = [(PLFaceCrop *)self face];
      [v13 setAssociatedPerson:v8];
      goto LABEL_23;
    }
  }

LABEL_27:
  v16 = [(PLFaceCrop *)self managedObjectContext];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(PLFaceCrop *)self setNeedsPersistenceUpdate:0];
    if (([(PLFaceCrop *)self isDeleted]& 1) == 0 && ([(PLFaceCrop *)self isSyncableChange]|| [(PLFaceCrop *)self isInserted]))
    {
      [(PLFaceCrop *)self setNeedsPersistenceUpdate:1];
    }
  }

  v17 = [(PLManagedObject *)self photoLibrary];
  v18 = [v17 libraryServicesManager];

  if (v18)
  {
    if ([v18 wellKnownPhotoLibraryIdentifier] == 3)
    {
      v19 = [(PLManagedObject *)self photoLibrary];
      v20 = [v19 managedObjectContext];

      if (v20)
      {
        [v20 recordNeedsBackgroundJobProcessing];
      }

      else
      {
        v21 = PLSyndicationGetLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *v22 = 0;
          _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_ERROR, "PersonSync: MOC is nil, unable to register for background job processing", v22, 2u);
        }

        v20 = 0;
      }

LABEL_42:
    }
  }

  else if ((MEMORY[0x19EAEE520]() & 1) == 0)
  {
    v20 = PLSyndicationGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *v22 = 0;
      _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_INFO, "PLFaceCrop willSave: LSM is nil, not registering for background job processing", v22, 2u);
    }

    goto LABEL_42;
  }
}

+ (void)resetCloudStateInPhotoLibrary:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_alloc(MEMORY[0x1E695D560]);
  v7 = [a1 entityName];
  v8 = [v6 initWithEntityName:v7];

  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"cloudLocalState != %d", 0];
  [v8 setResultType:2];
  [v8 setPropertiesToUpdate:&unk_1F0FC07A8];
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
        _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "Batch updated %@ faceCrop", buf, 0xCu);
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
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "Failed to batch update faceCrop: %@", buf, 0xCu);
    }

    goto LABEL_8;
  }

  objc_autoreleasePoolPop(v5);
}

+ (id)insertOrUpdateWithCPLFaceCrop:(id)a3 inPhotoLibrary:(id)a4
{
  v41[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 scopedIdentifier];
  v9 = [v8 identifier];

  v10 = [v6 personIdentifier];
  v11 = [v7 managedObjectContext];
  v12 = [PLPerson personWithUUID:v10 inManagedObjectContext:v11];
  v13 = [v12 finalMergeTargetPerson];

  if (v13)
  {
    v14 = [a1 _localTypeFromCloudType:{objc_msgSend(v6, "faceCropType")}];
    v41[0] = v9;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:1];
    v16 = [a1 faceCropsWithUUIDs:v15 inPhotoLibrary:v7];

    if ([v16 count])
    {
      v17 = [v16 firstObject];
      v18 = [v6 resourceData];
      [v17 setResourceData:v18];

      [v17 setType:v14];
      if (v17)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v21 = [v6 resourceData];
      v17 = [a1 insertIntoPhotoLibrary:v7 withUUID:v9 resourceData:v21 type:v14];

      if (v17)
      {
LABEL_4:
        v19 = [v17 person];
        [v17 setCloudLocalState:1];
        [v17 setPerson:v13];
        [v17 setCloudType:{objc_msgSend(v6, "faceCropType")}];
        if ([v19 verifiedType]== -2)
        {
          v20 = [v19 mergeTargetPerson];
          if (v20)
          {
          }

          else if ([v13 verifiedType] == 1)
          {
            if ((*MEMORY[0x1E6994D48] & 1) == 0)
            {
              v22 = __CPLAssetsdOSLogDomain();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412802;
                v36 = v6;
                v37 = 2112;
                v38 = v19;
                v39 = 2112;
                v40 = v13;
                _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_DEFAULT, "Setting inferred merge target due to cplFaceCropChange %@ moving from tombstone person %@ to user-verified person %@", buf, 0x20u);
              }
            }

            [v19 setCPLSyncedMergeTarget:v13];
          }
        }

        if (![MEMORY[0x1E6994B38] serverSupportsGraphPeopleHome])
        {
          goto LABEL_32;
        }

        v23 = [v6 rejectedPersonIdentifier];
        if (![v23 length])
        {
          [v17 setInvalidMergeCandidatePersonUUID:0];
LABEL_31:

LABEL_32:
          goto LABEL_33;
        }

        v33 = v9;
        v24 = [v7 managedObjectContext];
        v25 = v23;
        v26 = v24;
        v34 = v25;
        v27 = [PLPerson personWithUUID:"personWithUUID:inManagedObjectContext:" inManagedObjectContext:?];
        v28 = [v27 finalMergeTargetPerson];

        if (v28)
        {
          v29 = [v13 mutableInvalidMergeCandidates];
          [v29 addObject:v28];

          v30 = [v13 mutableMergeCandidates];
          [v30 removeObject:v28];
        }

        else
        {
          if (*MEMORY[0x1E6994D48])
          {
LABEL_30:
            v23 = v34;
            [v17 setInvalidMergeCandidatePersonUUID:v34];

            v9 = v33;
            goto LABEL_31;
          }

          v30 = __CPLAssetsdOSLogDomain();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            v31 = [v6 scopedIdentifier];
            *buf = 138412546;
            v36 = v34;
            v37 = 2112;
            v38 = v31;
            _os_log_impl(&dword_19BF1F000, v30, OS_LOG_TYPE_DEFAULT, "Did not find invalid merge candidate with person UUID %@ for cplFaceCropChange %@", buf, 0x16u);
          }
        }

        goto LABEL_30;
      }
    }

    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v19 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v36 = v6;
        _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_ERROR, "Error, unable to find face crop to update or insert new face crop for %@", buf, 0xCu);
      }

      goto LABEL_32;
    }

LABEL_10:
    v17 = 0;
LABEL_33:

    goto LABEL_34;
  }

  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v16 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v36 = v6;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "Unable to find person for cplFaceCropChange %@, skipping", buf, 0xCu);
    }

    goto LABEL_10;
  }

  v17 = 0;
LABEL_34:

  return v17;
}

+ (signed)_localTypeFromCloudType:(int64_t)a3
{
  if ((~a3 & 0xC) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = 5;
  }

  if ((a3 & 4) != 0)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if ((a3 & 2) != 0)
  {
    v3 = v4;
  }

  if ((a3 & 4) != 0)
  {
    v5 = 1;
  }

  else
  {
    v5 = 3;
  }

  if (a3)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

+ (int64_t)_cloudTypeToPushFromLocalType:(signed __int16)a3 cachedCloudType:(unsigned __int16)a4
{
  if (a3 > 2)
  {
    v4 = 1;
    v5 = 2;
    v7 = 12;
    if (a3 != 5)
    {
      v7 = 0;
    }

    if (a3 != 4)
    {
      v5 = v7;
    }

    v6 = a3 == 3;
  }

  else
  {
    if (!a3)
    {
      return a4;
    }

    v4 = 5;
    v5 = 6;
    if (a3 != 2)
    {
      v5 = 0;
    }

    v6 = a3 == 1;
  }

  if (!v6)
  {
    v4 = v5;
  }

  return v4 | a4 & 0xFFF0;
}

+ (id)listOfSyncedProperties
{
  pl_dispatch_once();
  v2 = listOfSyncedProperties_result_81374;

  return v2;
}

void __36__PLFaceCrop_listOfSyncedProperties__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"type", @"person", @"resourceData", 0}];
  v1 = listOfSyncedProperties_result_81374;
  listOfSyncedProperties_result_81374 = v0;
}

+ (int)_nameSourceForFaceFromFaceCrop:(id)a3
{
  v3 = [a3 type] - 1;
  if (v3 > 4)
  {
    return 0;
  }

  else
  {
    return dword_19C60FD08[v3];
  }
}

+ (int)_trainingFaceTypeForFaceFromFaceCrop:(id)a3
{
  v3 = [a3 type];
  if (v3 >= 6)
  {
    return 2;
  }

  else
  {
    return v3;
  }
}

+ (id)batchFetchFaceCropByFaceObjectIDWithFaceObjectIDs:(id)a3 library:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:a1 file:@"PLFaceCrop.m" lineNumber:240 description:{@"Invalid parameter not satisfying: %@", @"library"}];
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__81385;
  v23 = __Block_byref_object_dispose__81386;
  v24 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __72__PLFaceCrop_batchFetchFaceCropByFaceObjectIDWithFaceObjectIDs_library___block_invoke;
  v14[3] = &unk_1E7576680;
  v9 = v8;
  v15 = v9;
  v18 = a1;
  v10 = v7;
  v16 = v10;
  v17 = &v19;
  [v9 performBlockAndWait:v14];
  v11 = v20[5];

  _Block_object_dispose(&v19, 8);

  return v11;
}

void __72__PLFaceCrop_batchFetchFaceCropByFaceObjectIDWithFaceObjectIDs_library___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"face", *(a1 + 40)];
  v4 = [*(a1 + 56) _faceCropsMatchingPredicate:v3 limit:0 inManagedObjectContext:v2];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __72__PLFaceCrop_batchFetchFaceCropByFaceObjectIDWithFaceObjectIDs_library___block_invoke_2;
  v8[3] = &__block_descriptor_40_e39___NSManagedObjectID_16__0__PLFaceCrop_8l;
  v8[4] = *(a1 + 56);
  v5 = [v4 _pl_indexBy:v8];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

id __72__PLFaceCrop_batchFetchFaceCropByFaceObjectIDWithFaceObjectIDs_library___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 objectIDsForRelationshipNamed:@"face"];
  v3 = [v2 firstObject];

  return v3;
}

+ (id)faceCropsToUploadInPhotoLibrary:(id)a3 limit:(unint64_t)a4
{
  v6 = MEMORY[0x1E696AE18];
  v7 = a3;
  v8 = [v6 predicateWithFormat:@"cloudLocalState == %d", 0];
  v9 = [v7 managedObjectContext];

  v10 = [a1 _faceCropsMatchingPredicate:v8 limit:a4 inManagedObjectContext:v9];

  return v10;
}

+ (id)faceCropsWithUUIDs:(id)a3 inManagedObjectContext:(id)a4
{
  v6 = MEMORY[0x1E696AE18];
  v7 = a4;
  v8 = [v6 predicateWithFormat:@"uuid IN %@", a3];
  v9 = [a1 _faceCropsMatchingPredicate:v8 limit:0 inManagedObjectContext:v7];

  return v9;
}

+ (id)faceCropsWithUUIDs:(id)a3 inPhotoLibrary:(id)a4
{
  v6 = a3;
  v7 = [a4 managedObjectContext];
  v8 = [a1 faceCropsWithUUIDs:v6 inManagedObjectContext:v7];

  return v8;
}

+ (id)allFaceCropsInPhotoLibrary:(id)a3
{
  v4 = [a3 managedObjectContext];
  v5 = [a1 _faceCropsMatchingPredicate:0 limit:0 inManagedObjectContext:v4];

  return v5;
}

+ (id)_faceCropsMatchingPredicate:(id)a3 limit:(unint64_t)a4 inManagedObjectContext:(id)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = objc_autoreleasePoolPush();
  v11 = MEMORY[0x1E695D5E0];
  v12 = [a1 entityName];
  v13 = [v11 fetchRequestWithEntityName:v12];

  if (v8)
  {
    [v13 setPredicate:v8];
  }

  if (!a4 || ([v13 setFetchLimit:a4], a4 - 101 <= 0xFFFFFFFFFFFFFF9BLL))
  {
    [v13 setFetchBatchSize:100];
  }

  v18 = 0;
  v14 = [v9 executeFetchRequest:v13 error:&v18];
  v15 = v18;
  if (!v14 && (*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v16 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = v15;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "Failed to fetch faceCrops: %@", buf, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v10);

  return v14;
}

+ (id)insertIntoManagedObjectContext:(id)a3 withUUID:(id)a4 resourceData:(id)a5 type:(signed __int16)a6
{
  v6 = a6;
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
    [v17 handleFailureInMethod:a2 object:a1 file:@"PLFaceCrop.m" lineNumber:144 description:{@"Invalid parameter not satisfying: %@", @"moc"}];

    v14 = [a1 entityName];
    PLSafeInsertNewObjectForEntityForNameInManagedObjectContext(v14, 0, 0);
  }
  v15 = ;

  if (v15)
  {
    [v15 setUuid:v12];
    [v15 setResourceData:v13];
    [v15 setType:v6];
  }

  return v15;
}

+ (id)insertIntoPhotoLibrary:(id)a3 withUUID:(id)a4 resourceData:(id)a5 type:(signed __int16)a6
{
  v6 = a6;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (!v11)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:a1 file:@"PLFaceCrop.m" lineNumber:139 description:{@"Invalid parameter not satisfying: %@", @"library"}];
  }

  v14 = [v11 managedObjectContext];
  v15 = [a1 insertIntoManagedObjectContext:v14 withUUID:v12 resourceData:v13 type:v6];

  return v15;
}

@end