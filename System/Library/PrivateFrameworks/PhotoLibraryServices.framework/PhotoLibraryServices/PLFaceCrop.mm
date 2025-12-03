@interface PLFaceCrop
+ (id)_faceCropsMatchingPredicate:(id)predicate limit:(unint64_t)limit inManagedObjectContext:(id)context;
+ (id)allFaceCropsInPhotoLibrary:(id)library;
+ (id)batchFetchFaceCropByFaceObjectIDWithFaceObjectIDs:(id)ds library:(id)library;
+ (id)faceCropsToUploadInPhotoLibrary:(id)library limit:(unint64_t)limit;
+ (id)faceCropsWithUUIDs:(id)ds inManagedObjectContext:(id)context;
+ (id)faceCropsWithUUIDs:(id)ds inPhotoLibrary:(id)library;
+ (id)insertIntoManagedObjectContext:(id)context withUUID:(id)d resourceData:(id)data type:(signed __int16)type;
+ (id)insertIntoPhotoLibrary:(id)library withUUID:(id)d resourceData:(id)data type:(signed __int16)type;
+ (id)insertOrUpdateWithCPLFaceCrop:(id)crop inPhotoLibrary:(id)library;
+ (id)listOfSyncedProperties;
+ (int)_nameSourceForFaceFromFaceCrop:(id)crop;
+ (int)_trainingFaceTypeForFaceFromFaceCrop:(id)crop;
+ (int64_t)_cloudTypeToPushFromLocalType:(signed __int16)type cachedCloudType:(unsigned __int16)cloudType;
+ (signed)_localTypeFromCloudType:(int64_t)type;
+ (void)resetCloudStateInPhotoLibrary:(id)library;
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
  uuid = [(PLFaceCrop *)self uuid];
  resourceData = [(PLFaceCrop *)self resourceData];
  v6 = [resourceData length];
  v7 = [(PLFaceCrop *)self type]- 1;
  if (v7 > 4)
  {
    v8 = @"none";
  }

  else
  {
    v8 = off_1E7572868[v7];
  }

  person = [(PLFaceCrop *)self person];
  personUUID = [person personUUID];
  state = [(PLFaceCrop *)self state];
  if (state > 2)
  {
    v12 = @"unknown";
  }

  else
  {
    v12 = off_1E7572890[state];
  }

  cloudLocalState = [(PLFaceCrop *)self cloudLocalState];
  invalidMergeCandidatePersonUUID = [(PLFaceCrop *)self invalidMergeCandidatePersonUUID];
  v15 = [v3 stringWithFormat:@"FaceCrop: UUID: %@ ResourceData: %lu bytes Type: %@ Person: %@ State: %@ Cloud State: %d Invalid merge candidate UUID: %@", uuid, v6, v8, personUUID, v12, cloudLocalState, invalidMergeCandidatePersonUUID];

  return v15;
}

- (id)cplFaceCropChange
{
  scopedIdentifier = [(PLFaceCrop *)self scopedIdentifier];
  v4 = [MEMORY[0x1E6994AC8] newRecordWithScopedIdentifier:scopedIdentifier];
  person = [(PLFaceCrop *)self person];
  personUUID = [person personUUID];
  [v4 setPersonIdentifier:personUUID];

  [v4 setFaceCropType:{objc_msgSend(objc_opt_class(), "_cloudTypeToPushFromLocalType:cachedCloudType:", -[PLFaceCrop type](self, "type"), -[PLFaceCrop cloudType](self, "cloudType"))}];
  resourceData = [(PLFaceCrop *)self resourceData];
  [v4 setResourceData:resourceData];

  if ([MEMORY[0x1E6994B38] serverSupportsGraphPeopleHome])
  {
    invalidMergeCandidatePersonUUID = [(PLFaceCrop *)self invalidMergeCandidatePersonUUID];
    [v4 setRejectedPersonIdentifier:invalidMergeCandidatePersonUUID];
  }

  return v4;
}

- (id)scopedIdentifier
{
  v3 = objc_alloc(MEMORY[0x1E6994BB8]);
  scopeIdentifier = [(PLFaceCrop *)self scopeIdentifier];
  uuid = [(PLFaceCrop *)self uuid];
  v6 = [v3 initWithScopeIdentifier:scopeIdentifier identifier:uuid];

  return v6;
}

- (id)scopeIdentifier
{
  photoLibrary = [(PLManagedObject *)self photoLibrary];
  mainScopeIdentifier = [photoLibrary mainScopeIdentifier];

  return mainScopeIdentifier;
}

- (BOOL)isSyncableChange
{
  v14 = *MEMORY[0x1E69E9840];
  changedValues = [(PLFaceCrop *)self changedValues];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  listOfSyncedProperties = [objc_opt_class() listOfSyncedProperties];
  v4 = [listOfSyncedProperties countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(listOfSyncedProperties);
        }

        v7 = [changedValues objectForKey:*(*(&v9 + 1) + 8 * i)];

        if (v7)
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [listOfSyncedProperties countByEnumeratingWithState:&v9 objects:v13 count:16];
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
  serverSupportsVision = [MEMORY[0x1E6994A80] serverSupportsVision];
  if (serverSupportsVision)
  {
    person = [(PLFaceCrop *)self person];
    v5 = person;
    if (person)
    {
      if ([person verifiedType])
      {

        if ([objc_opt_class() _cloudTypeToPushFromLocalType:-[PLFaceCrop type](self cachedCloudType:{"type"), -[PLFaceCrop cloudType](self, "cloudType")}])
        {
          LOBYTE(serverSupportsVision) = 1;
          return serverSupportsVision;
        }

        v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"FaceCrop %@ with unknown cloud type is an error", self];
        if (*MEMORY[0x1E6994D48])
        {
LABEL_15:

          LOBYTE(serverSupportsVision) = 0;
          return serverSupportsVision;
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

  return serverSupportsVision;
}

- (void)applyPropertiesToTrainingFace
{
  person = [(PLFaceCrop *)self person];
  face = [(PLFaceCrop *)self face];
  if ([(PLFaceCrop *)self type]== 2 || [(PLFaceCrop *)self type]== 4)
  {
    mutableRejectedFaces = [person mutableRejectedFaces];
    [mutableRejectedFaces addObject:face];
  }

  else
  {
    mutableFaces = [person mutableFaces];
    [mutableFaces addObject:face];

    [face fixPersonRelationshipsForFaceTorsoOrTemporal];
  }

  [face setEffectiveNameSource:{objc_msgSend(objc_opt_class(), "_nameSourceForFaceFromFaceCrop:", self)}];
  [face setTrainingType:{objc_msgSend(objc_opt_class(), "_trainingFaceTypeForFaceFromFaceCrop:", self)}];
}

- (void)prepareForDeletion
{
  v4.receiver = self;
  v4.super_class = PLFaceCrop;
  [(PLFaceCrop *)&v4 prepareForDeletion];
  managedObjectContext = [(PLFaceCrop *)self managedObjectContext];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([managedObjectContext mergingChanges] & 1) == 0)
  {
    [managedObjectContext recordCloudDeletionForObject:self];
  }
}

- (void)willSave
{
  v23.receiver = self;
  v23.super_class = PLFaceCrop;
  [(PLManagedObject *)&v23 willSave];
  changedValues = [(PLFaceCrop *)self changedValues];
  v4 = [changedValues objectForKey:@"person"];
  if (v4)
  {
    face = [(PLFaceCrop *)self face];

    if (face)
    {
      null = [MEMORY[0x1E695DFB0] null];
      if (v4 == null)
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
        face2 = [(PLFaceCrop *)self face];
        rejectedPersons = [face2 rejectedPersons];
        anyObject = [rejectedPersons anyObject];

        if (anyObject)
        {
          if ([anyObject isEqual:v8])
          {
LABEL_25:

LABEL_26:
            goto LABEL_27;
          }

          if (v4 == null)
          {
            v12 = [MEMORY[0x1E695DFD8] set];
LABEL_14:
            face5 = v12;
            face3 = [(PLFaceCrop *)self face];
            [face3 setRejectedPersons:face5];

LABEL_23:
            goto LABEL_25;
          }

LABEL_13:
          v12 = [MEMORY[0x1E695DFD8] setWithObject:v4];
          goto LABEL_14;
        }

        if (v4 != null)
        {
          goto LABEL_13;
        }

LABEL_24:
        anyObject = 0;
        goto LABEL_25;
      }

      if ([(PLFaceCrop *)self type]!= 3 && [(PLFaceCrop *)self type]!= 1 && [(PLFaceCrop *)self type]!= 5)
      {
        goto LABEL_26;
      }

      face4 = [(PLFaceCrop *)self face];
      anyObject = [face4 associatedPersonForFaceOrTorso:1 orTemporal:0];

      if (anyObject)
      {
        if ([anyObject isEqual:v8])
        {
          goto LABEL_25;
        }
      }

      else if (v4 == null)
      {
        goto LABEL_24;
      }

      face5 = [(PLFaceCrop *)self face];
      [face5 setAssociatedPerson:v8];
      goto LABEL_23;
    }
  }

LABEL_27:
  managedObjectContext = [(PLFaceCrop *)self managedObjectContext];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(PLFaceCrop *)self setNeedsPersistenceUpdate:0];
    if (([(PLFaceCrop *)self isDeleted]& 1) == 0 && ([(PLFaceCrop *)self isSyncableChange]|| [(PLFaceCrop *)self isInserted]))
    {
      [(PLFaceCrop *)self setNeedsPersistenceUpdate:1];
    }
  }

  photoLibrary = [(PLManagedObject *)self photoLibrary];
  libraryServicesManager = [photoLibrary libraryServicesManager];

  if (libraryServicesManager)
  {
    if ([libraryServicesManager wellKnownPhotoLibraryIdentifier] == 3)
    {
      photoLibrary2 = [(PLManagedObject *)self photoLibrary];
      managedObjectContext2 = [photoLibrary2 managedObjectContext];

      if (managedObjectContext2)
      {
        [managedObjectContext2 recordNeedsBackgroundJobProcessing];
      }

      else
      {
        v21 = PLSyndicationGetLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *v22 = 0;
          _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_ERROR, "PersonSync: MOC is nil, unable to register for background job processing", v22, 2u);
        }

        managedObjectContext2 = 0;
      }

LABEL_42:
    }
  }

  else if ((MEMORY[0x19EAEE520]() & 1) == 0)
  {
    managedObjectContext2 = PLSyndicationGetLog();
    if (os_log_type_enabled(managedObjectContext2, OS_LOG_TYPE_INFO))
    {
      *v22 = 0;
      _os_log_impl(&dword_19BF1F000, managedObjectContext2, OS_LOG_TYPE_INFO, "PLFaceCrop willSave: LSM is nil, not registering for background job processing", v22, 2u);
    }

    goto LABEL_42;
  }
}

+ (void)resetCloudStateInPhotoLibrary:(id)library
{
  v18 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_alloc(MEMORY[0x1E695D560]);
  entityName = [self entityName];
  v8 = [v6 initWithEntityName:entityName];

  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"cloudLocalState != %d", 0];
  [v8 setResultType:2];
  [v8 setPropertiesToUpdate:&unk_1F0FC07A8];
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

+ (id)insertOrUpdateWithCPLFaceCrop:(id)crop inPhotoLibrary:(id)library
{
  v41[1] = *MEMORY[0x1E69E9840];
  cropCopy = crop;
  libraryCopy = library;
  scopedIdentifier = [cropCopy scopedIdentifier];
  identifier = [scopedIdentifier identifier];

  personIdentifier = [cropCopy personIdentifier];
  managedObjectContext = [libraryCopy managedObjectContext];
  v12 = [PLPerson personWithUUID:personIdentifier inManagedObjectContext:managedObjectContext];
  finalMergeTargetPerson = [v12 finalMergeTargetPerson];

  if (finalMergeTargetPerson)
  {
    v14 = [self _localTypeFromCloudType:{objc_msgSend(cropCopy, "faceCropType")}];
    v41[0] = identifier;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:1];
    v16 = [self faceCropsWithUUIDs:v15 inPhotoLibrary:libraryCopy];

    if ([v16 count])
    {
      firstObject = [v16 firstObject];
      resourceData = [cropCopy resourceData];
      [firstObject setResourceData:resourceData];

      [firstObject setType:v14];
      if (firstObject)
      {
        goto LABEL_4;
      }
    }

    else
    {
      resourceData2 = [cropCopy resourceData];
      firstObject = [self insertIntoPhotoLibrary:libraryCopy withUUID:identifier resourceData:resourceData2 type:v14];

      if (firstObject)
      {
LABEL_4:
        person = [firstObject person];
        [firstObject setCloudLocalState:1];
        [firstObject setPerson:finalMergeTargetPerson];
        [firstObject setCloudType:{objc_msgSend(cropCopy, "faceCropType")}];
        if ([person verifiedType]== -2)
        {
          mergeTargetPerson = [person mergeTargetPerson];
          if (mergeTargetPerson)
          {
          }

          else if ([finalMergeTargetPerson verifiedType] == 1)
          {
            if ((*MEMORY[0x1E6994D48] & 1) == 0)
            {
              v22 = __CPLAssetsdOSLogDomain();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412802;
                v36 = cropCopy;
                v37 = 2112;
                v38 = person;
                v39 = 2112;
                v40 = finalMergeTargetPerson;
                _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_DEFAULT, "Setting inferred merge target due to cplFaceCropChange %@ moving from tombstone person %@ to user-verified person %@", buf, 0x20u);
              }
            }

            [person setCPLSyncedMergeTarget:finalMergeTargetPerson];
          }
        }

        if (![MEMORY[0x1E6994B38] serverSupportsGraphPeopleHome])
        {
          goto LABEL_32;
        }

        rejectedPersonIdentifier = [cropCopy rejectedPersonIdentifier];
        if (![rejectedPersonIdentifier length])
        {
          [firstObject setInvalidMergeCandidatePersonUUID:0];
LABEL_31:

LABEL_32:
          goto LABEL_33;
        }

        v33 = identifier;
        managedObjectContext2 = [libraryCopy managedObjectContext];
        v25 = rejectedPersonIdentifier;
        v26 = managedObjectContext2;
        v34 = v25;
        v27 = [PLPerson personWithUUID:"personWithUUID:inManagedObjectContext:" inManagedObjectContext:?];
        finalMergeTargetPerson2 = [v27 finalMergeTargetPerson];

        if (finalMergeTargetPerson2)
        {
          mutableInvalidMergeCandidates = [finalMergeTargetPerson mutableInvalidMergeCandidates];
          [mutableInvalidMergeCandidates addObject:finalMergeTargetPerson2];

          mutableMergeCandidates = [finalMergeTargetPerson mutableMergeCandidates];
          [mutableMergeCandidates removeObject:finalMergeTargetPerson2];
        }

        else
        {
          if (*MEMORY[0x1E6994D48])
          {
LABEL_30:
            rejectedPersonIdentifier = v34;
            [firstObject setInvalidMergeCandidatePersonUUID:v34];

            identifier = v33;
            goto LABEL_31;
          }

          mutableMergeCandidates = __CPLAssetsdOSLogDomain();
          if (os_log_type_enabled(mutableMergeCandidates, OS_LOG_TYPE_DEFAULT))
          {
            scopedIdentifier2 = [cropCopy scopedIdentifier];
            *buf = 138412546;
            v36 = v34;
            v37 = 2112;
            v38 = scopedIdentifier2;
            _os_log_impl(&dword_19BF1F000, mutableMergeCandidates, OS_LOG_TYPE_DEFAULT, "Did not find invalid merge candidate with person UUID %@ for cplFaceCropChange %@", buf, 0x16u);
          }
        }

        goto LABEL_30;
      }
    }

    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      person = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(person, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v36 = cropCopy;
        _os_log_impl(&dword_19BF1F000, person, OS_LOG_TYPE_ERROR, "Error, unable to find face crop to update or insert new face crop for %@", buf, 0xCu);
      }

      goto LABEL_32;
    }

LABEL_10:
    firstObject = 0;
LABEL_33:

    goto LABEL_34;
  }

  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v16 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v36 = cropCopy;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "Unable to find person for cplFaceCropChange %@, skipping", buf, 0xCu);
    }

    goto LABEL_10;
  }

  firstObject = 0;
LABEL_34:

  return firstObject;
}

+ (signed)_localTypeFromCloudType:(int64_t)type
{
  if ((~type & 0xC) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = 5;
  }

  if ((type & 4) != 0)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if ((type & 2) != 0)
  {
    v3 = v4;
  }

  if ((type & 4) != 0)
  {
    v5 = 1;
  }

  else
  {
    v5 = 3;
  }

  if (type)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

+ (int64_t)_cloudTypeToPushFromLocalType:(signed __int16)type cachedCloudType:(unsigned __int16)cloudType
{
  if (type > 2)
  {
    v4 = 1;
    v5 = 2;
    v7 = 12;
    if (type != 5)
    {
      v7 = 0;
    }

    if (type != 4)
    {
      v5 = v7;
    }

    v6 = type == 3;
  }

  else
  {
    if (!type)
    {
      return cloudType;
    }

    v4 = 5;
    v5 = 6;
    if (type != 2)
    {
      v5 = 0;
    }

    v6 = type == 1;
  }

  if (!v6)
  {
    v4 = v5;
  }

  return v4 | cloudType & 0xFFF0;
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

+ (int)_nameSourceForFaceFromFaceCrop:(id)crop
{
  v3 = [crop type] - 1;
  if (v3 > 4)
  {
    return 0;
  }

  else
  {
    return dword_19C60FD08[v3];
  }
}

+ (int)_trainingFaceTypeForFaceFromFaceCrop:(id)crop
{
  type = [crop type];
  if (type >= 6)
  {
    return 2;
  }

  else
  {
    return type;
  }
}

+ (id)batchFetchFaceCropByFaceObjectIDWithFaceObjectIDs:(id)ds library:(id)library
{
  dsCopy = ds;
  libraryCopy = library;
  if (!libraryCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLFaceCrop.m" lineNumber:240 description:{@"Invalid parameter not satisfying: %@", @"library"}];
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
  v9 = libraryCopy;
  v15 = v9;
  selfCopy = self;
  v10 = dsCopy;
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

+ (id)faceCropsToUploadInPhotoLibrary:(id)library limit:(unint64_t)limit
{
  v6 = MEMORY[0x1E696AE18];
  libraryCopy = library;
  v8 = [v6 predicateWithFormat:@"cloudLocalState == %d", 0];
  managedObjectContext = [libraryCopy managedObjectContext];

  v10 = [self _faceCropsMatchingPredicate:v8 limit:limit inManagedObjectContext:managedObjectContext];

  return v10;
}

+ (id)faceCropsWithUUIDs:(id)ds inManagedObjectContext:(id)context
{
  v6 = MEMORY[0x1E696AE18];
  contextCopy = context;
  v8 = [v6 predicateWithFormat:@"uuid IN %@", ds];
  v9 = [self _faceCropsMatchingPredicate:v8 limit:0 inManagedObjectContext:contextCopy];

  return v9;
}

+ (id)faceCropsWithUUIDs:(id)ds inPhotoLibrary:(id)library
{
  dsCopy = ds;
  managedObjectContext = [library managedObjectContext];
  v8 = [self faceCropsWithUUIDs:dsCopy inManagedObjectContext:managedObjectContext];

  return v8;
}

+ (id)allFaceCropsInPhotoLibrary:(id)library
{
  managedObjectContext = [library managedObjectContext];
  v5 = [self _faceCropsMatchingPredicate:0 limit:0 inManagedObjectContext:managedObjectContext];

  return v5;
}

+ (id)_faceCropsMatchingPredicate:(id)predicate limit:(unint64_t)limit inManagedObjectContext:(id)context
{
  v21 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  contextCopy = context;
  v10 = objc_autoreleasePoolPush();
  v11 = MEMORY[0x1E695D5E0];
  entityName = [self entityName];
  v13 = [v11 fetchRequestWithEntityName:entityName];

  if (predicateCopy)
  {
    [v13 setPredicate:predicateCopy];
  }

  if (!limit || ([v13 setFetchLimit:limit], limit - 101 <= 0xFFFFFFFFFFFFFF9BLL))
  {
    [v13 setFetchBatchSize:100];
  }

  v18 = 0;
  v14 = [contextCopy executeFetchRequest:v13 error:&v18];
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

+ (id)insertIntoManagedObjectContext:(id)context withUUID:(id)d resourceData:(id)data type:(signed __int16)type
{
  typeCopy = type;
  contextCopy = context;
  dCopy = d;
  dataCopy = data;
  if (contextCopy)
  {
    entityName = [self entityName];
    [MEMORY[0x1E695D5B8] insertNewObjectForEntityForName:entityName inManagedObjectContext:contextCopy];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLFaceCrop.m" lineNumber:144 description:{@"Invalid parameter not satisfying: %@", @"moc"}];

    entityName = [self entityName];
    PLSafeInsertNewObjectForEntityForNameInManagedObjectContext(entityName, 0, 0);
  }
  v15 = ;

  if (v15)
  {
    [v15 setUuid:dCopy];
    [v15 setResourceData:dataCopy];
    [v15 setType:typeCopy];
  }

  return v15;
}

+ (id)insertIntoPhotoLibrary:(id)library withUUID:(id)d resourceData:(id)data type:(signed __int16)type
{
  typeCopy = type;
  libraryCopy = library;
  dCopy = d;
  dataCopy = data;
  if (!libraryCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLFaceCrop.m" lineNumber:139 description:{@"Invalid parameter not satisfying: %@", @"library"}];
  }

  managedObjectContext = [libraryCopy managedObjectContext];
  v15 = [self insertIntoManagedObjectContext:managedObjectContext withUUID:dCopy resourceData:dataCopy type:typeCopy];

  return v15;
}

@end