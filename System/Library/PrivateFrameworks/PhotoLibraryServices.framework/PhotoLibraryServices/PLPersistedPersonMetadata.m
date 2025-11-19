@interface PLPersistedPersonMetadata
+ (BOOL)_deleteMetadataFileWithMetadataURL:(id)a3;
+ (BOOL)deleteMetadataFileForPersonUUID:(id)a3 pathManager:(id)a4;
+ (BOOL)isValidPath:(id)a3 outPersonUUID:(id *)a4;
+ (id)_clusterRejectedFaceIDsWithPerson:(id)a3;
+ (id)_detectedFacesToArchiveWithPerson:(id)a3;
+ (id)_fetchFacesWithPredicate:(id)a3 resultType:(unint64_t)a4 managedObjectContext:(id)a5 error:(id *)a6;
+ (id)_metadataFileURLForPersonUUID:(id)a3 pathManager:(id)a4;
+ (id)_persistedFaceMetadataWithFaces:(id)a3 keyFace:(id)a4 clusterRejectedFaceIDs:(id)a5;
+ (id)_rejectedFacesToArchiveWithPerson:(id)a3;
+ (id)personUUIDsToDedupeWithMetadataURLs:(id)a3 cplEnabled:(BOOL)a4;
+ (id)urlsForPersistedPersonsInMetadataDirectoryOfLibrary:(id)a3;
+ (id)urlsForPersistedPersonsInMetadataDirectoryWithPathManager:(id)a3;
+ (void)performPostImportMigrationFromVersion:(unint64_t)a3 fromDataInManagedObjectContext:(id)a4;
+ (void)updateMergeTargetPersonWithPersonUUIDMapping:(id)a3 fromDataInManagedObjectContext:(id)a4;
- (BOOL)_insertDetectedFacesOnPerson:(id)a3 fromDataInManagedObjectContext:(id)a4 deferUnmatched:(BOOL)a5;
- (BOOL)_insertRejectedFacesOnPerson:(id)a3 fromDataInManagedObjectContext:(id)a4 deferUnmatched:(BOOL)a5;
- (BOOL)_readUUID;
- (BOOL)hasAllAssetsAvailableInManagedObjectContext:(id)a3 includePendingAssetChanges:(BOOL)a4;
- (BOOL)matchesEntityInLibraryBackedByManagedObjectContext:(id)a3 diff:(id *)a4;
- (BOOL)readDetectedFaces;
- (BOOL)readDetectedFacesFromKeyedUnarchiver:(id)a3;
- (BOOL)readMetadata;
- (BOOL)updateFacesInPerson:(id)a3 fromDataInManagedObjectContext:(id)a4 deferUnmatched:(BOOL)a5;
- (PLPersistedPersonMetadata)init;
- (PLPersistedPersonMetadata)initWithPLPerson:(id)a3 metadataURL:(id)a4;
- (PLPersistedPersonMetadata)initWithPLPerson:(id)a3 pathManager:(id)a4;
- (PLPersistedPersonMetadata)initWithPersistedDataAtURL:(id)a3 deferUnarchiving:(BOOL)a4 cplEnabled:(BOOL)a5;
- (id)_metadataData;
- (id)description;
- (id)detectedFaceIdentifiers;
- (id)insertPersonFromDataInManagedObjectContext:(id)a3;
- (id)jsonDictionary;
- (void)_addAssetUUIDsFromFaces:(id)a3 toMutableSet:(id)a4;
- (void)_saveMetadata;
- (void)removePersistedData;
@end

@implementation PLPersistedPersonMetadata

- (id)jsonDictionary
{
  v33[13] = *MEMORY[0x1E69E9840];
  v32[0] = @"personUUID";
  v31 = [(PLPersistedPersonMetadata *)self personUUID];
  v33[0] = v31;
  v32[1] = @"detectionType";
  v3 = [(PLPersistedPersonMetadata *)self detectionType];
  v30 = v3;
  v4 = &unk_1F0FBDA98;
  if (v3)
  {
    v4 = v3;
  }

  v33[1] = v4;
  v32[2] = @"fromVersion";
  v29 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PLPersistedPersonMetadata fromVersion](self, "fromVersion")}];
  v33[2] = v29;
  v32[3] = @"verifiedType";
  v28 = [MEMORY[0x1E696AD98] numberWithInt:{-[PLPersistedPersonMetadata verifiedType](self, "verifiedType")}];
  v33[3] = v28;
  v32[4] = @"fullName";
  v5 = [(PLPersistedPersonMetadata *)self fullName];
  v27 = v5;
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = &stru_1F0F06D80;
  }

  v33[4] = v6;
  v32[5] = @"displayName";
  v7 = [(PLPersistedPersonMetadata *)self displayName];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = &stru_1F0F06D80;
  }

  v33[5] = v8;
  v32[6] = @"personUri";
  v9 = [(PLPersistedPersonMetadata *)self personUri];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = &stru_1F0F06D80;
  }

  v33[6] = v11;
  v32[7] = @"contactMatchingDictionary";
  v12 = [(PLPersistedPersonMetadata *)self contactMatchingDictionary];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = &stru_1F0F06D80;
  }

  v33[7] = v14;
  v32[8] = @"manualOrder";
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PLPersistedPersonMetadata manualOrder](self, "manualOrder")}];
  v33[8] = v15;
  v32[9] = @"personType";
  v16 = [MEMORY[0x1E696AD98] numberWithInt:{-[PLPersistedPersonMetadata type](self, "type")}];
  v33[9] = v16;
  v32[10] = @"keyFacePickSource";
  v17 = [MEMORY[0x1E696AD98] numberWithShort:{-[PLPersistedPersonMetadata keyFacePickSource](self, "keyFacePickSource")}];
  v33[10] = v17;
  v32[11] = @"detectedFacesCount";
  v18 = MEMORY[0x1E696AD98];
  v19 = [(PLPersistedPersonMetadata *)self detectedFaces];
  v20 = [v18 numberWithUnsignedInteger:{objc_msgSend(v19, "count")}];
  v33[11] = v20;
  v32[12] = @"rejectedFacesCount";
  v21 = MEMORY[0x1E696AD98];
  v22 = [(PLPersistedPersonMetadata *)self rejectedFaces];
  v23 = [v21 numberWithUnsignedInteger:{objc_msgSend(v22, "count")}];
  v33[12] = v23;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:13];

  return v24;
}

- (BOOL)matchesEntityInLibraryBackedByManagedObjectContext:(id)a3 diff:(id *)a4
{
  v54[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(PLPersistedPersonMetadata *)self personUUID];
  v8 = [PLPerson personWithUUID:v7 inManagedObjectContext:v6];

  if (v8)
  {
    v9 = [MEMORY[0x1E695DF90] dictionary];
    v10 = [MEMORY[0x1E695DF90] dictionary];
    v11 = [(PLPersistedPersonMetadata *)self fullName];
    v12 = [v8 fullName];
    IsEqual = PLObjectIsEqual();

    if ((IsEqual & 1) == 0)
    {
      v14 = [(PLPersistedPersonMetadata *)self fullName];
      [v9 _pl_setNonNilObject:v14 forKey:@"fullName"];

      v15 = [v8 fullName];
      [v10 _pl_setNonNilObject:v15 forKey:@"fullName"];
    }

    v16 = [(PLPersistedPersonMetadata *)self displayName];
    v17 = [v8 displayName];
    v18 = PLObjectIsEqual();

    if ((v18 & 1) == 0)
    {
      v19 = [(PLPersistedPersonMetadata *)self displayName];
      [v9 _pl_setNonNilObject:v19 forKey:@"displayName"];

      v20 = [v8 displayName];
      [v10 _pl_setNonNilObject:v20 forKey:@"displayName"];
    }

    v21 = [(PLPersistedPersonMetadata *)self verifiedType];
    if (v21 != [v8 verifiedType])
    {
      v22 = [MEMORY[0x1E696AD98] numberWithInt:{-[PLPersistedPersonMetadata verifiedType](self, "verifiedType")}];
      [v9 setObject:v22 forKey:@"verifiedType"];

      v23 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v8, "verifiedType")}];
      [v10 setObject:v23 forKey:@"verifiedType"];
    }

    if ([(PLPersistedPersonMetadata *)self verifiedType]!= -2)
    {
      v24 = [(PLPersistedPersonMetadata *)self personUri];
      v25 = [v8 personUri];
      v26 = PLObjectIsEqual();

      if ((v26 & 1) == 0)
      {
        v27 = [(PLPersistedPersonMetadata *)self personUri];
        [v9 _pl_setNonNilObject:v27 forKey:@"personUri"];

        v28 = [v8 personUri];
        [v10 _pl_setNonNilObject:v28 forKey:@"personUri"];
      }

      v29 = [(PLPersistedPersonMetadata *)self contactMatchingDictionary];
      v30 = [v8 contactMatchingDictionary];
      v31 = PLObjectIsEqual();

      if ((v31 & 1) == 0)
      {
        v32 = [(PLPersistedPersonMetadata *)self contactMatchingDictionary];
        [v9 _pl_setNonNilObject:v32 forKey:@"contactMatchingDictionary"];

        v33 = [v8 contactMatchingDictionary];
        [v10 _pl_setNonNilObject:v33 forKey:@"contactMatchingDictionary"];
      }
    }

    v34 = [(PLPersistedPersonMetadata *)self manualOrder];
    if (v34 != [v8 manualOrder])
    {
      v35 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PLPersistedPersonMetadata manualOrder](self, "manualOrder")}];
      [v9 setObject:v35 forKey:@"manualOrder"];

      v36 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v8, "manualOrder")}];
      [v10 setObject:v36 forKey:@"manualOrder"];
    }

    v37 = [(PLPersistedPersonMetadata *)self type];
    if (v37 != [v8 type])
    {
      v38 = [MEMORY[0x1E696AD98] numberWithInt:{-[PLPersistedPersonMetadata type](self, "type")}];
      [v9 setObject:v38 forKey:@"personType"];

      v39 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v8, "type")}];
      [v10 setObject:v39 forKey:@"personType"];
    }

    v40 = [(PLPersistedPersonMetadata *)self keyFacePickSource];
    if (v40 != [v8 keyFacePickSource])
    {
      v41 = [MEMORY[0x1E696AD98] numberWithShort:{-[PLPersistedPersonMetadata keyFacePickSource](self, "keyFacePickSource")}];
      [v9 setObject:v41 forKey:@"keyFacePickSource"];

      v42 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(v8, "keyFacePickSource")}];
      [v10 setObject:v42 forKey:@"keyFacePickSource"];
    }

    v43 = [(PLPersistedPersonMetadata *)self detectionType];

    if (v43)
    {
      v44 = [(PLPersistedPersonMetadata *)self detectionType];
      v45 = [v44 intValue];
      v46 = [v8 detectionType];

      if (v45 != v46)
      {
        v47 = MEMORY[0x1E696AD98];
        v48 = [(PLPersistedPersonMetadata *)self detectionType];
        v49 = [v47 numberWithInt:{objc_msgSend(v48, "intValue")}];
        [v9 setObject:v49 forKey:@"detectionType"];

LABEL_26:
        v51 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(v8, "detectionType")}];
        [v10 setObject:v51 forKey:@"detectionType"];
      }
    }

    else if ([v8 detectionType] != 1)
    {
      [v9 setObject:&unk_1F0FBDA98 forKey:@"detectionType"];
      goto LABEL_26;
    }

    if (a4)
    {
      v53[0] = @"metadata";
      v53[1] = @"library";
      v54[0] = v9;
      v54[1] = v10;
      *a4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:v53 count:2];
    }

    if ([v9 count])
    {
      v50 = 0;
    }

    else
    {
      v50 = [v10 count] == 0;
    }

    goto LABEL_33;
  }

  v50 = 0;
  if (a4)
  {
    *a4 = 0;
  }

LABEL_33:

  return v50;
}

- (void)_saveMetadata
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(PLPersistedPersonMetadata *)self _metadataData];
  v5 = MEMORY[0x1E69BF230];
  v6 = [(PLPersistedPersonMetadata *)self metadataURL];
  [v5 persistMetadata:v4 fileURL:v6];

  v7 = MEMORY[0x1E69BF238];
  v8 = [(PLPersistedPersonMetadata *)self metadataURL];
  v9 = [v8 path];
  [v7 changeFileOwnerToMobileAtPath:v9 error:0];

  objc_autoreleasePoolPop(v3);
}

- (id)_metadataData
{
  v78 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  [v3 encodeInteger:10 forKey:@"version"];
  if (self->_person)
  {
    person = self->_person;
  }

  else
  {
    person = self;
  }

  v5 = [person personUUID];
  if (v5)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"personUUID"];
    [v3 encodeObject:v5 forKey:v6];
  }

  v7 = self->_person;
  if (v7)
  {
    goto LABEL_7;
  }

  v62 = [(PLPersistedPersonMetadata *)self detectionType];

  if (v62)
  {
    v7 = self->_person;
    if (!v7)
    {
      v63 = [(PLPersistedPersonMetadata *)self detectionType];
      v8 = [v63 intValue];

      goto LABEL_8;
    }

LABEL_7:
    v8 = [(PLPerson *)v7 detectionType];
LABEL_8:
    [v3 encodeInt:v8 forKey:@"detectionType"];
  }

  if (self->_person)
  {
    v9 = self->_person;
  }

  else
  {
    v9 = self;
  }

  v10 = [v9 fullName];
  if (v10)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"fullName"];
    [v3 encodeObject:v10 forKey:v11];
  }

  if (self->_person)
  {
    v12 = self->_person;
  }

  else
  {
    v12 = self;
  }

  v13 = [v12 displayName];
  if (v13)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"displayName"];
    [v3 encodeObject:v13 forKey:v14];
  }

  if (self->_person)
  {
    v15 = self->_person;
  }

  else
  {
    v15 = self;
  }

  v16 = [v15 manualOrder];
  if (v16)
  {
    [v3 encodeInteger:v16 forKey:@"manualOrder"];
  }

  if (self->_person)
  {
    v17 = self->_person;
  }

  else
  {
    v17 = self;
  }

  v18 = [v17 type];
  if (v18)
  {
    [v3 encodeInt32:v18 forKey:@"personType"];
  }

  if (self->_person)
  {
    v19 = self->_person;
  }

  else
  {
    v19 = self;
  }

  v20 = [v19 keyFacePickSource];
  if (v20)
  {
    [v3 encodeInt32:v20 forKey:@"keyFacePickSource"];
  }

  if (self->_person)
  {
    v21 = self->_person;
  }

  else
  {
    v21 = self;
  }

  v22 = [v21 verifiedType];
  if (!v22 || (v23 = v22, [v3 encodeInt32:v22 forKey:@"verifiedType"], v23 != -2))
  {
    if (self->_person)
    {
      v24 = self->_person;
    }

    else
    {
      v24 = self;
    }

    v25 = [v24 personUri];
    if (v25)
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"personUri"];
      [v3 encodeObject:v25 forKey:v26];
    }

    if (self->_person)
    {
      v27 = self->_person;
    }

    else
    {
      v27 = self;
    }

    v28 = [v27 contactMatchingDictionary];
    if (v28)
    {
      [v3 encodeObject:v28 forKey:@"contactMatchingDictionary"];
    }
  }

  v67 = v13;
  v68 = v10;
  if (self->_person)
  {
    v29 = self->_person;
  }

  else
  {
    v29 = self;
  }

  v30 = [v29 cloudVerifiedType];
  if (v30)
  {
    [v3 encodeInt32:v30 forKey:@"cloudVerifiedType"];
  }

  if (self->_person)
  {
    v31 = self->_person;
  }

  else
  {
    v31 = self;
  }

  v32 = [v31 userFeedbacks];
  v33 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v32, "count")}];
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v34 = v32;
  v35 = [v34 countByEnumeratingWithState:&v69 objects:v77 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v70;
    do
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v70 != v37)
        {
          objc_enumerationMutation(v34);
        }

        v39 = [*(*(&v69 + 1) + 8 * i) dictionaryRepresentation];
        [v33 addObject:v39];
      }

      v36 = [v34 countByEnumeratingWithState:&v69 objects:v77 count:16];
    }

    while (v36);
  }

  if ([v33 count])
  {
    [v3 encodeObject:v33 forKey:@"userFeedbacks"];
  }

  if (self->_person)
  {
    v40 = self->_person;
  }

  else
  {
    v40 = self;
  }

  v41 = [v40 assetSortOrder];
  if (v41)
  {
    [v3 encodeInt32:v41 forKey:@"assetSortOrder"];
  }

  if (self->_person)
  {
    v42 = [objc_opt_class() _detectedFacesToArchiveWithPerson:self->_person];
    if ([v42 count])
    {
      v43 = [(PLPerson *)self->_person keyFace];
      v44 = [objc_opt_class() _persistedFaceMetadataWithFaces:v42 keyFace:v43 clusterRejectedFaceIDs:0];
      v45 = [v42 count];
      if (v45 != [v44 count])
      {
        v46 = v5;
        v47 = PLMigrationGetLog();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          v48 = [v42 count];
          v49 = [v44 count];
          *buf = 138412546;
          v74 = v46;
          v75 = 1024;
          v76 = v48 - v49;
          _os_log_impl(&dword_19BF1F000, v47, OS_LOG_TYPE_ERROR, "Failed to encode some detected faces as metadata for %@ (%d failed)", buf, 0x12u);
        }

        v5 = v46;
      }

      [v3 encodeObject:v44 forKey:@"detectedFaces"];
    }

    v50 = v5;
    v51 = [objc_opt_class() _rejectedFacesToArchiveWithPerson:self->_person];
    v52 = [objc_opt_class() _clusterRejectedFaceIDsWithPerson:self->_person];
    if ([v51 count])
    {
      v53 = objc_opt_class();
      v54 = [MEMORY[0x1E695DFD8] setWithArray:v52];
      v55 = [v53 _persistedFaceMetadataWithFaces:v51 keyFace:0 clusterRejectedFaceIDs:v54];

      v56 = [v51 count];
      if (v56 != [v55 count])
      {
        v57 = PLMigrationGetLog();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          v66 = [v51 count];
          v58 = [v55 count];
          *buf = 138412546;
          v74 = v50;
          v75 = 1024;
          v76 = v66 - v58;
          _os_log_impl(&dword_19BF1F000, v57, OS_LOG_TYPE_ERROR, "Failed to encode some rejected faces as metadata for %@ (%d failed)", buf, 0x12u);
        }
      }

      [v3 encodeObject:v55 forKey:@"rejectedFaces"];
    }

    v59 = [(PLPerson *)self->_person mergeTargetPerson];
    v60 = [v59 personUUID];

    if (v60)
    {
      v61 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"mergeTargetPersonUUID"];
      [v3 encodeObject:v60 forKey:v61];
    }

    v5 = v50;
  }

  else
  {
    v42 = [(PLPersistedPersonMetadata *)self detectedFaces];
    if ([v42 count])
    {
      [v3 encodeObject:v42 forKey:@"detectedFaces"];
    }

    v51 = [(PLPersistedPersonMetadata *)self rejectedFaces];
    if ([v51 count])
    {
      [v3 encodeObject:v51 forKey:@"rejectedFaces"];
    }
  }

  v64 = [v3 encodedData];

  return v64;
}

- (BOOL)readMetadata
{
  v68 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DEF0];
  v4 = [(PLPersistedPersonMetadata *)self metadataURL];
  v5 = [v3 dataWithContentsOfURL:v4];

  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E696ACD0]) pl_safeInitForReadingFromData:v5];
    v7 = v6;
    v8 = v6 != 0;
    if (!v6)
    {
LABEL_57:

      goto LABEL_58;
    }

    v9 = [v6 decodeIntegerForKey:@"version"];
    [(PLPersistedPersonMetadata *)self setFromVersion:v9];
    v10 = [v7 decodeObjectOfClass:objc_opt_class() forKey:@"personUUID"];
    [(PLPersistedPersonMetadata *)self setPersonUUID:v10];

    if ([v7 containsValueForKey:@"detectionType"])
    {
      v11 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(v7, "decodeIntForKey:", @"detectionType"}];
      [(PLPersistedPersonMetadata *)self setDetectionType:v11];
    }

    v12 = [v7 decodeObjectOfClass:objc_opt_class() forKey:@"mergeTargetPersonUUID"];
    [(PLPersistedPersonMetadata *)self setMergeTargetPersonUUID:v12];

    v13 = [v7 decodeObjectOfClass:objc_opt_class() forKey:@"fullName"];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = &stru_1F0F06D80;
    }

    v16 = v15;

    v58 = v16;
    [(PLPersistedPersonMetadata *)self setFullName:v16];
    v17 = [v7 decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = &stru_1F0F06D80;
    }

    v20 = v19;

    v57 = v20;
    [(PLPersistedPersonMetadata *)self setDisplayName:v20];
    -[PLPersistedPersonMetadata setManualOrder:](self, "setManualOrder:", [v7 decodeIntegerForKey:@"manualOrder"]);
    -[PLPersistedPersonMetadata setType:](self, "setType:", [v7 decodeInt32ForKey:@"personType"]);
    v56 = [v7 containsValueForKey:@"keyFacePickSource"];
    if (v56)
    {
      -[PLPersistedPersonMetadata setKeyFacePickSource:](self, "setKeyFacePickSource:", [v7 decodeInt32ForKey:@"keyFacePickSource"]);
    }

    v21 = [v7 containsValueForKey:@"verifiedType"];
    v22 = v21;
    if (v21)
    {
      v23 = [v7 decodeInt32ForKey:@"verifiedType"];
      [(PLPersistedPersonMetadata *)self setVerifiedType:v23];
      if ([v7 containsValueForKey:@"cloudVerifiedType"])
      {
        v24 = [v7 decodeInt32ForKey:@"cloudVerifiedType"];
        v25 = self;
      }

      else
      {
        v28 = PLMigrationGetLog();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_ERROR, "Person metatdata contains verifiedType but not cloudVerifiedType", buf, 2u);
        }

        v25 = self;
        v24 = v23;
      }

      [(PLPersistedPersonMetadata *)v25 setCloudVerifiedType:v24];
    }

    else
    {
      v26 = PLMigrationGetLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = [(PLPersistedPersonMetadata *)self personUUID];
        *buf = 138412290;
        v65 = v27;
        _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_DEFAULT, "Person metadata for %@ does not contain verifiedType, needs fixup later", buf, 0xCu);
      }
    }

    if ([(PLPersistedPersonMetadata *)self verifiedType]!= -2)
    {
      v29 = [v7 decodePropertyListForKey:@"contactMatchingDictionary"];
      [(PLPersistedPersonMetadata *)self setContactMatchingDictionary:v29];

      v30 = [v7 decodeObjectOfClass:objc_opt_class() forKey:@"personUri"];
      [(PLPersistedPersonMetadata *)self setPersonUri:v30];
    }

    v31 = MEMORY[0x1E695DFD8];
    v32 = objc_opt_class();
    v33 = objc_opt_class();
    v34 = objc_opt_class();
    v35 = objc_opt_class();
    v36 = [v31 setWithObjects:{v32, v33, v34, v35, objc_opt_class(), 0}];
    v37 = [v7 decodeObjectOfClasses:v36 forKey:@"userFeedbacks"];
    [(PLPersistedPersonMetadata *)self setUserFeedbacksDictionaryArray:v37];

    -[PLPersistedPersonMetadata setAssetSortOrder:](self, "setAssetSortOrder:", [v7 decodeIntForKey:@"assetSortOrder"]);
    if (v9 >= 2)
    {
      [(PLPersistedPersonMetadata *)self readDetectedFacesFromKeyedUnarchiver:v7];
      v39 = [(PLPersistedPersonMetadata *)self detectedFaces];
      v38 = [v39 count] != 0;

      if (v9 < 5)
      {
        v40 = PLMigrationGetLog();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          v44 = [(PLPersistedPersonMetadata *)self personUUID];
          *buf = 138412290;
          v65 = v44;
          _os_log_impl(&dword_19BF1F000, v40, OS_LOG_TYPE_DEFAULT, "Dropping all rejected faces for person %@", buf, 0xCu);
        }
      }

      else
      {
        v40 = [PLPersistedPersonFaceMetadata _persistedFacesWithUnarchiver:v7 key:@"rejectedFaces"];
        v41 = PLMigrationGetLog();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          v42 = [v40 count];
          v43 = [(PLPersistedPersonMetadata *)self personUUID];
          *buf = 134218242;
          v65 = v42;
          v66 = 2112;
          v67 = v43;
          _os_log_impl(&dword_19BF1F000, v41, OS_LOG_TYPE_DEFAULT, "Found %ld rejected faces for person %@", buf, 0x16u);
        }

        [(PLPersistedPersonMetadata *)self setRejectedFaces:v40];
      }

      if (v22)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v38 = 0;
      if (v22)
      {
        goto LABEL_42;
      }
    }

    if (self->_cplEnabled)
    {
      v45 = [(PLPersistedPersonMetadata *)self fullName];
      if ([v45 length] || -[PLPersistedPersonMetadata type](self, "type"))
      {
      }

      else
      {
        v54 = [(PLPersistedPersonMetadata *)self contactMatchingDictionary];
        v55 = v54 != 0 || v38;

        if (!v55)
        {
          v46 = 0xFFFFFFFFLL;
          goto LABEL_41;
        }
      }
    }

    v46 = 1;
LABEL_41:
    [(PLPersistedPersonMetadata *)self setVerifiedType:v46];
    [(PLPersistedPersonMetadata *)self setCloudVerifiedType:v46];
LABEL_42:
    if ((v56 & 1) == 0)
    {
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v47 = [(PLPersistedPersonMetadata *)self detectedFaces];
      v48 = [v47 countByEnumeratingWithState:&v59 objects:v63 count:16];
      if (v48)
      {
        v49 = v48;
        v50 = *v60;
        while (2)
        {
          for (i = 0; i != v49; ++i)
          {
            if (*v60 != v50)
            {
              objc_enumerationMutation(v47);
            }

            v52 = *(*(&v59 + 1) + 8 * i);
            if ([v52 isRepresentative])
            {
              if ([v52 nameSource] == 1 || objc_msgSend(v52, "nameSource") == 3)
              {
                [(PLPersistedPersonMetadata *)self setKeyFacePickSource:1];
              }

              goto LABEL_55;
            }
          }

          v49 = [v47 countByEnumeratingWithState:&v59 objects:v63 count:16];
          if (v49)
          {
            continue;
          }

          break;
        }
      }

LABEL_55:
    }

    v8 = 1;
    goto LABEL_57;
  }

  v8 = 0;
LABEL_58:

  return v8;
}

- (BOOL)readDetectedFacesFromKeyedUnarchiver:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 decodeIntegerForKey:@"version"];
    if (v6 >= 2)
    {
      v7 = v6;
      v8 = [PLPersistedPersonFaceMetadata _persistedFacesWithUnarchiver:v5 key:@"detectedFaces"];
      v9 = PLMigrationGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [v8 count];
        v11 = [(PLPersistedPersonMetadata *)self personUUID];
        v14 = 134218242;
        v15 = v10;
        v16 = 2112;
        v17 = v11;
        _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEFAULT, "Found %ld detected faces (pre-migration) for person %@", &v14, 0x16u);
      }

      v12 = [PLPersistedPersonFaceMetadata _migrateDetectedFaces:v8 forPersonMetadata:self fromVersion:v7];

      [(PLPersistedPersonMetadata *)self setDetectedFaces:v12];
    }
  }

  return v5 != 0;
}

- (BOOL)readDetectedFaces
{
  v3 = MEMORY[0x1E695DEF0];
  v4 = [(PLPersistedPersonMetadata *)self metadataURL];
  v5 = [v3 dataWithContentsOfURL:v4];

  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E696ACD0]) pl_safeInitForReadingFromData:v5];
    v7 = [(PLPersistedPersonMetadata *)self readDetectedFacesFromKeyedUnarchiver:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_readUUID
{
  v3 = MEMORY[0x1E695DEF0];
  v4 = [(PLPersistedPersonMetadata *)self metadataURL];
  v5 = [v3 dataWithContentsOfURL:v4];

  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E696ACD0]) pl_safeInitForReadingFromData:v5];
    v7 = v6 != 0;
    if (v6)
    {
      v8 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"personUUID"];
      [(PLPersistedPersonMetadata *)self setPersonUUID:v8];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)description
{
  if (self->_person)
  {
    person = self->_person;
  }

  else
  {
    person = self;
  }

  v4 = [PLDescriptionBuilder prettyMultiLineDescriptionBuilderWithObject:person indent:0];
  v5 = self->_person;
  if (v5)
  {
    v6 = [(PLPerson *)v5 objectID];
    [v6 description];
  }

  else
  {
    v6 = [(PLPersistedPersonMetadata *)self metadataURL];
    [v6 path];
  }
  v7 = ;

  [v4 appendName:@"source" object:v7];
  [v4 appendName:@"version" integerValue:{-[PLPersistedPersonMetadata fromVersion](self, "fromVersion")}];
  [v4 appendName:@"personUUID" typeCode:"@" value:&self->_personUUID];
  [v4 appendName:@"detectionType" typeCode:"@" value:&self->_detectionType];
  [v4 appendName:@"verifiedType" typeCode:"i" value:&self->_verifiedType];
  [v4 appendName:@"fullName" typeCode:"@" value:&self->_fullName];
  [v4 appendName:@"displayName" typeCode:"@" value:&self->_displayName];
  [v4 appendName:@"manualOrder" typeCode:"I" value:&self->_manualOrder];
  [v4 appendName:@"type" typeCode:"i" value:&self->_type];
  [v4 appendName:@"cloudVerifiedType" typeCode:"i" value:&self->_cloudVerifiedType];
  if (self->_person)
  {
    v8 = self->_person;
  }

  else
  {
    v8 = self;
  }

  v9 = [v8 detectedFaces];
  v10 = [v9 count];

  if (self->_person)
  {
    v11 = self->_person;
  }

  else
  {
    v11 = self;
  }

  v12 = [v11 rejectedFaces];
  v13 = [v12 count];

  [v4 appendName:@"faces" integerValue:v10];
  [v4 appendName:@"rejected" integerValue:v13];
  v14 = [v4 build];

  return v14;
}

- (BOOL)_insertRejectedFacesOnPerson:(id)a3 fromDataInManagedObjectContext:(id)a4 deferUnmatched:(BOOL)a5
{
  v58 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v49 = 0;
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
  v10 = [(PLPersistedPersonMetadata *)self rejectedFaces];
  v11 = [[PLFaceRebuildHelper alloc] initWithContext:v9];
  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __104__PLPersistedPersonMetadata__insertRejectedFacesOnPerson_fromDataInManagedObjectContext_deferUnmatched___block_invoke;
  v25 = &unk_1E7571CA8;
  v12 = v11;
  v26 = v12;
  v13 = v8;
  v27 = v13;
  v29 = &v42;
  v33 = a5;
  v14 = v9;
  v28 = v14;
  v30 = &v38;
  v31 = &v34;
  v32 = &v46;
  [PLPersistedPersonFaceMetadata enumerateMatchedAssetsWithMetadata:v10 inContext:v14 withBlock:&v22];
  v15 = PLMigrationGetLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(v43 + 6);
    v17 = *(v39 + 6);
    v18 = *(v35 + 6);
    v19 = [v13 personUUID];
    *buf = 67109890;
    v51 = v16;
    v52 = 1024;
    v53 = v17;
    v54 = 1024;
    v55 = v18;
    v56 = 2112;
    v57 = v19;
    _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_DEFAULT, "Rebuilt %d rejected faces, deferred %d, dropped %d for %@", buf, 0x1Eu);
  }

  v20 = *(v47 + 6) == *(v43 + 6);
  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(&v46, 8);

  return v20;
}

void __104__PLPersistedPersonMetadata__insertRejectedFacesOnPerson_fromDataInManagedObjectContext_deferUnmatched___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    [*(a1 + 32) rebuildRejectedFace:v5 onAsset:v6 person:*(a1 + 40)];
    v7 = *(a1 + 56);
LABEL_11:
    ++*(*(v7 + 8) + 24);
    goto LABEL_12;
  }

  if (*(a1 + 88) != 1 || ([v5 assetCloudGUID], v8 = objc_claimAutoreleasedReturnValue(), v8, !v8))
  {
    v12 = PLMigrationGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      v14 = v5;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "Dropping unmatched face: %@", &v13, 0xCu);
    }

    v7 = *(a1 + 72);
    goto LABEL_11;
  }

  v9 = *(a1 + 48);
  v10 = [*(a1 + 40) personUUID];
  v11 = [v5 _insertDeferredRebuildFaceFromDataInManagedObjectContext:v9 personUUID:v10 isRejected:1];

  if (v11)
  {
    ++*(*(*(a1 + 64) + 8) + 24);
  }

LABEL_12:
  ++*(*(*(a1 + 80) + 8) + 24);
}

- (BOOL)_insertDetectedFacesOnPerson:(id)a3 fromDataInManagedObjectContext:(id)a4 deferUnmatched:(BOOL)a5
{
  v58 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v49 = 0;
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
  v10 = [(PLPersistedPersonMetadata *)self detectedFaces];
  v11 = [[PLFaceRebuildHelper alloc] initWithContext:v9];
  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __104__PLPersistedPersonMetadata__insertDetectedFacesOnPerson_fromDataInManagedObjectContext_deferUnmatched___block_invoke;
  v25 = &unk_1E7571CA8;
  v12 = v11;
  v26 = v12;
  v13 = v8;
  v27 = v13;
  v29 = &v42;
  v33 = a5;
  v14 = v9;
  v28 = v14;
  v30 = &v38;
  v31 = &v34;
  v32 = &v46;
  [PLPersistedPersonFaceMetadata enumerateMatchedAssetsWithMetadata:v10 inContext:v14 withBlock:&v22];
  v15 = PLMigrationGetLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(v43 + 6);
    v17 = *(v39 + 6);
    v18 = *(v35 + 6);
    v19 = [v13 personUUID];
    *buf = 67109890;
    v51 = v16;
    v52 = 1024;
    v53 = v17;
    v54 = 1024;
    v55 = v18;
    v56 = 2112;
    v57 = v19;
    _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_DEFAULT, "Rebuilt %d detected faces, deferred %d, dropped %d for person %@", buf, 0x1Eu);
  }

  v20 = *(v47 + 6) == *(v43 + 6);
  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(&v46, 8);

  return v20;
}

void __104__PLPersistedPersonMetadata__insertDetectedFacesOnPerson_fromDataInManagedObjectContext_deferUnmatched___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    [*(a1 + 32) rebuildDetectedFace:v5 onAsset:v6 person:*(a1 + 40)];
    v7 = *(a1 + 56);
LABEL_13:
    ++*(*(v7 + 8) + 24);
    goto LABEL_14;
  }

  if (*(a1 + 88) != 1 || ([v5 assetCloudGUID], v8 = objc_claimAutoreleasedReturnValue(), v8, !v8))
  {
    v12 = PLMigrationGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      v14 = v5;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "Dropping unmatched face: %@", &v13, 0xCu);
    }

    v7 = *(a1 + 72);
    goto LABEL_13;
  }

  v9 = *(a1 + 48);
  v10 = [*(a1 + 40) personUUID];
  v11 = [v5 _insertDeferredRebuildFaceFromDataInManagedObjectContext:v9 personUUID:v10 isRejected:0];

  if (v11)
  {
    if ([v5 isRepresentative])
    {
      [v11 setRepresentative:1];
    }

    ++*(*(*(a1 + 64) + 8) + 24);
  }

LABEL_14:
  ++*(*(*(a1 + 80) + 8) + 24);
}

- (BOOL)hasAllAssetsAvailableInManagedObjectContext:(id)a3 includePendingAssetChanges:(BOOL)a4
{
  v4 = a4;
  v22 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E695DFA8];
  v7 = a3;
  v8 = [v6 set];
  v9 = [(PLPersistedPersonMetadata *)self detectedFaces];
  [(PLPersistedPersonMetadata *)self _addAssetUUIDsFromFaces:v9 toMutableSet:v8];

  v10 = [(PLPersistedPersonMetadata *)self rejectedFaces];
  [(PLPersistedPersonMetadata *)self _addAssetUUIDsFromFaces:v10 toMutableSet:v8];

  v11 = [v8 allObjects];
  v17 = 0;
  v12 = [PLManagedAsset countForAssetsWithUUIDs:v11 includePendingChanges:v4 inManagedObjectContext:v7 error:&v17];

  v13 = v17;
  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = PLMigrationGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v19 = self;
      v20 = 2112;
      v21 = v13;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "Failed to fetch count for assets in person metadata %@, %@", buf, 0x16u);
    }
  }

  v15 = v12 == [v8 count];

  return v15;
}

- (void)_addAssetUUIDsFromFaces:(id)a3 toMutableSet:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = [*(*(&v12 + 1) + 8 * v10) assetUUID];
        if (v11)
        {
          [v6 addObject:v11];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (BOOL)updateFacesInPerson:(id)a3 fromDataInManagedObjectContext:(id)a4 deferUnmatched:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [(PLPersistedPersonMetadata *)self _insertDetectedFacesOnPerson:v9 fromDataInManagedObjectContext:v8 deferUnmatched:v5];
  LOBYTE(v5) = [(PLPersistedPersonMetadata *)self _insertRejectedFacesOnPerson:v9 fromDataInManagedObjectContext:v8 deferUnmatched:v5];

  return v5 && v10;
}

- (id)insertPersonFromDataInManagedObjectContext:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PLPersistedPersonMetadata *)self personUUID];
  v6 = [(PLPersistedPersonMetadata *)self fullName];
  v7 = [PLPerson insertIntoManagedObjectContext:v4 withPersonUUID:v5 fullName:v6 verifiedType:[(PLPersistedPersonMetadata *)self verifiedType]];

  v8 = [(PLPersistedPersonMetadata *)self detectionType];

  if (v8)
  {
    v9 = [(PLPersistedPersonMetadata *)self detectionType];
    [v7 setDetectionType:{objc_msgSend(v9, "intValue")}];
  }

  [v7 setCloudVerifiedType:{-[PLPersistedPersonMetadata cloudVerifiedType](self, "cloudVerifiedType")}];
  v10 = [(PLPersistedPersonMetadata *)self displayName];
  [v7 setDisplayName:v10];

  [v7 setManualOrder:{-[PLPersistedPersonMetadata manualOrder](self, "manualOrder")}];
  [v7 setType:{-[PLPersistedPersonMetadata type](self, "type")}];
  if ([(PLPersistedPersonMetadata *)self verifiedType]!= -2)
  {
    v11 = [(PLPersistedPersonMetadata *)self personUri];
    [v7 setPersonUri:v11];

    v12 = [(PLPersistedPersonMetadata *)self contactMatchingDictionary];
    [v7 setContactMatchingDictionary:v12];
  }

  [v7 setKeyFacePickSource:{-[PLPersistedPersonMetadata keyFacePickSource](self, "keyFacePickSource")}];
  v13 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v14 = [(PLPersistedPersonMetadata *)self userFeedbacksDictionaryArray];
  v15 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v22;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [PLUserFeedback insertIntoManagedObjectContext:v4 withDictionaryRepresentation:*(*(&v21 + 1) + 8 * i)];
        [v13 addObject:v19];
      }

      v16 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v16);
  }

  [v7 setUserFeedbacks:v13];
  [v7 setAssetSortOrder:{-[PLPersistedPersonMetadata assetSortOrder](self, "assetSortOrder")}];

  return v7;
}

- (void)removePersistedData
{
  v3 = objc_opt_class();
  v4 = [(PLPersistedPersonMetadata *)self metadataURL];
  [v3 _deleteMetadataFileWithMetadataURL:v4];
}

- (id)detectedFaceIdentifiers
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFA8];
  v4 = [(PLPersistedPersonMetadata *)self detectedFaces];
  v5 = [v3 setWithCapacity:{objc_msgSend(v4, "count")}];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [(PLPersistedPersonMetadata *)self detectedFaces];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v13 + 1) + 8 * i) _identifier];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (PLPersistedPersonMetadata)initWithPersistedDataAtURL:(id)a3 deferUnarchiving:(BOOL)a4 cplEnabled:(BOOL)a5
{
  v6 = a4;
  v9 = a3;
  v14.receiver = self;
  v14.super_class = PLPersistedPersonMetadata;
  v10 = [(PLPersistedPersonMetadata *)&v14 init];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_6;
  }

  objc_storeStrong(&v10->_metadataURL, a3);
  v11->_cplEnabled = a5;
  if (!v6)
  {
    if (![(PLPersistedPersonMetadata *)v11 readMetadata])
    {
      goto LABEL_4;
    }

LABEL_6:
    v12 = v11;
    goto LABEL_7;
  }

  if ([(PLPersistedPersonMetadata *)v11 _readUUID])
  {
    goto LABEL_6;
  }

LABEL_4:
  v12 = 0;
LABEL_7:

  return v12;
}

- (PLPersistedPersonMetadata)initWithPLPerson:(id)a3 metadataURL:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = PLPersistedPersonMetadata;
  v9 = [(PLPersistedPersonMetadata *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_person, a3);
    objc_storeStrong(&v10->_metadataURL, a4);
    v11 = [v7 photoLibrary];
    v10->_cplEnabled = [v11 isCloudPhotoLibraryEnabled];
  }

  return v10;
}

- (PLPersistedPersonMetadata)initWithPLPerson:(id)a3 pathManager:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_class();
  v9 = [v7 personUUID];
  v10 = [v8 _metadataFileURLForPersonUUID:v9 pathManager:v6];

  v11 = [(PLPersistedPersonMetadata *)self initWithPLPerson:v7 metadataURL:v10];
  return v11;
}

- (PLPersistedPersonMetadata)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PLPersistedPersonMetadata.m" lineNumber:558 description:@"Can't initialize a PLPersistedPersonMetadata object using -init."];

  return 0;
}

+ (void)performPostImportMigrationFromVersion:(unint64_t)a3 fromDataInManagedObjectContext:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = PLMigrationGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134217984;
    v12 = a3;
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "Post-import migration of persons from metadata version %lu", &v11, 0xCu);
  }

  if (a3 <= 9)
  {
    v7 = PLMigrationGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "Resetting manual order on persons", &v11, 2u);
    }

    v8 = [v5 photoLibrary];
    v9 = [v8 libraryServicesManager];
    v10 = [v9 modelMigrator];
    [v10 resetManualOrderForNonFavoritePeopleInManagedObjectContext:v5];
  }
}

+ (void)updateMergeTargetPersonWithPersonUUIDMapping:(id)a3 fromDataInManagedObjectContext:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v7)
  {
    v9 = v7;
    v21 = *v23;
    *&v8 = 138412546;
    v20 = v8;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v21)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        v12 = [v5 objectForKey:{v11, v20}];
        v13 = [PLPerson personWithUUID:v11 inManagedObjectContext:v6];
        v14 = [PLPerson personWithUUID:v12 inManagedObjectContext:v6];
        v15 = [v14 finalMergeTargetPerson];

        v16 = PLMigrationGetLog();
        v17 = v16;
        if (v13)
        {
          v18 = v15 == 0;
        }

        else
        {
          v18 = 1;
        }

        if (v18)
        {
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = v20;
            v27 = v12;
            v28 = 2112;
            v29 = v11;
            _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_ERROR, "Failed to find merge target person with UUID %@ for person with UUID %@", buf, 0x16u);
          }
        }

        else
        {
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v20;
            v27 = v15;
            v28 = 2112;
            v29 = v13;
            _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEFAULT, "Setting merge target person %@ for %@", buf, 0x16u);
          }

          [v13 setMergeTargetPerson:v15];
        }
      }

      v9 = [v5 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v9);
  }
}

+ (id)personUUIDsToDedupeWithMetadataURLs:(id)a3 cplEnabled:(BOOL)a4
{
  v4 = a4;
  v46 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v29 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  context = objc_autoreleasePoolPush();
  v6 = PLMigrationGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "Deduping person metadata archives based on their sets of faces", buf, 2u);
  }

  v31 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v32 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v39 objects:v45 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v40;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v40 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v39 + 1) + 8 * i);
        v13 = [[PLPersistedPersonMetadata alloc] initWithPersistedDataAtURL:v12 deferUnarchiving:1 cplEnabled:v4, v29, context];
        v14 = [(PLPersistedPersonMetadata *)v13 personUUID];
        if (v14)
        {
          v15 = v14;
          v16 = [(PLPersistedPersonMetadata *)v13 readDetectedFaces];

          if (v16)
          {
            v17 = [(PLPersistedPersonMetadata *)v13 detectedFaceIdentifiers];
            v18 = [v17 count];

            if (!v18)
            {
              goto LABEL_16;
            }

            v19 = [(PLPersistedPersonMetadata *)v13 personUUID];
            [v32 addObject:v19];

            v20 = [(PLPersistedPersonMetadata *)v13 detectedFaceIdentifiers];
            v21 = [(PLPersistedPersonMetadata *)v13 personUUID];
            [v31 setObject:v20 forKey:v21];
            goto LABEL_14;
          }
        }

        v20 = PLMigrationGetLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = [v12 path];
          *buf = 138412290;
          v44 = v21;
          _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_ERROR, "Failed to read invalid or missing metadata at %@, this person will not be deduped", buf, 0xCu);
LABEL_14:
        }

LABEL_16:
      }

      v9 = [v7 countByEnumeratingWithState:&v39 objects:v45 count:16];
    }

    while (v9);
  }

  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __76__PLPersistedPersonMetadata_personUUIDsToDedupeWithMetadataURLs_cplEnabled___block_invoke;
  v37[3] = &unk_1E7571CD0;
  v22 = v31;
  v38 = v22;
  [v32 sortUsingComparator:v37];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __76__PLPersistedPersonMetadata_personUUIDsToDedupeWithMetadataURLs_cplEnabled___block_invoke_2;
  v33[3] = &unk_1E7571CF8;
  v34 = v22;
  v35 = v32;
  v23 = v29;
  v36 = v23;
  v24 = v32;
  v25 = v22;
  [v24 enumerateObjectsUsingBlock:v33];
  v26 = PLMigrationGetLog();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = [v23 count];
    *buf = 134217984;
    v44 = v27;
    _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_DEFAULT, "Found %ld person duplicates, these will be skipped while rebuilding persons", buf, 0xCu);
  }

  objc_autoreleasePoolPop(context);

  return v23;
}

uint64_t __76__PLPersistedPersonMetadata_personUUIDsToDedupeWithMetadataURLs_cplEnabled___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKey:a2];
  v8 = [v7 count];

  v9 = [*(a1 + 32) objectForKey:v6];

  v10 = [v9 count];
  if (v8 < v10)
  {
    return -1;
  }

  else
  {
    return v8 > v10;
  }
}

void __76__PLPersistedPersonMetadata_personUUIDsToDedupeWithMetadataURLs_cplEnabled___block_invoke_2(id *a1, void *a2, uint64_t a3)
{
  v8 = a2;
  v5 = [a1[4] objectForKey:?];
  while (++a3 < [a1[5] count])
  {
    v6 = [a1[5] objectAtIndex:a3];
    v7 = [a1[4] objectForKey:v6];
    if ([v5 isSubsetOfSet:v7])
    {
      [a1[6] addObject:v8];

      break;
    }
  }
}

+ (id)_persistedFaceMetadataWithFaces:(id)a3 keyFace:(id)a4 clusterRejectedFaceIDs:(id)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v24 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v7, "count")}];
  v22 = v8;
  v10 = [v8 objectID];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v7;
  v11 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v26;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v25 + 1) + 8 * i);
        v16 = [v15 objectID];
        v17 = [v10 isEqual:v16];

        v18 = [v15 objectID];
        v19 = [v9 containsObject:v18];

        v20 = [PLPersistedPersonFaceMetadata _persistedFaceMetadataWithDetectedFace:v15 isKeyFace:v17 isClusterRejected:v19];
        if (v20)
        {
          [v24 addObject:v20];
        }
      }

      v12 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v12);
  }

  return v24;
}

+ (id)_clusterRejectedFaceIDsWithPerson:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K CONTAINS %@", @"clusterRejectedPersons", v4];
  v6 = [v4 managedObjectContext];
  v12 = 0;
  v7 = [a1 _fetchFacesWithPredicate:v5 resultType:1 managedObjectContext:v6 error:&v12];
  v8 = v12;

  if (!v7)
  {
    v9 = PLMigrationGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [v4 personUUID];
      *buf = 138412546;
      v14 = v10;
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "Failed to fetch clusterRejectedFaceIDsWithPerson %@: %@", buf, 0x16u);
    }
  }

  return v7;
}

+ (id)_rejectedFacesToArchiveWithPerson:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K CONTAINS %@", @"rejectedPersons", v4];
  v6 = [v4 managedObjectContext];
  v12 = 0;
  v7 = [a1 _fetchFacesWithPredicate:v5 resultType:0 managedObjectContext:v6 error:&v12];
  v8 = v12;

  if (!v7)
  {
    v9 = PLMigrationGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [v4 personUUID];
      *buf = 138412546;
      v14 = v10;
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "Failed to fetch rejectedFacesToArchiveWithPerson %@: %@", buf, 0x16u);
    }
  }

  return v7;
}

+ (id)_detectedFacesToArchiveWithPerson:(id)a3
{
  v23[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E696AE18];
  v6 = [v4 objectID];
  v7 = [v5 predicateWithFormat:@"%K = %@", @"personForFace", v6];

  v8 = +[PLDetectedFace predicateForArchival];
  v9 = MEMORY[0x1E696AB28];
  v23[0] = v7;
  v23[1] = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  v11 = [v9 andPredicateWithSubpredicates:v10];

  v12 = [v4 managedObjectContext];
  v18 = 0;
  v13 = [a1 _fetchFacesWithPredicate:v11 resultType:0 managedObjectContext:v12 error:&v18];
  v14 = v18;

  if (!v13)
  {
    v15 = PLMigrationGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [v4 personUUID];
      *buf = 138412546;
      v20 = v16;
      v21 = 2112;
      v22 = v14;
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "Failed to fetch detectedFacesToArchiveFromPerson %@: %@", buf, 0x16u);
    }
  }

  return v13;
}

+ (id)_fetchFacesWithPredicate:(id)a3 resultType:(unint64_t)a4 managedObjectContext:(id)a5 error:(id *)a6
{
  v9 = a5;
  v10 = a3;
  v11 = +[PLDetectedFace fetchRequest];
  [v11 setPredicate:v10];

  [v11 setFetchBatchSize:100];
  [v11 setResultType:a4];
  if (a4 != 1)
  {
    v12 = +[PLPersistedPersonFaceMetadata _detectedFaceRelationshipKeyPathsToPrefetch];
    [v11 setRelationshipKeyPathsForPrefetching:v12];
  }

  v16 = 0;
  v13 = [v9 executeFetchRequest:v11 error:&v16];
  v14 = v16;
  if (a6 && !v13)
  {
    v14 = v14;
    *a6 = v14;
  }

  return v13;
}

+ (BOOL)_deleteMetadataFileWithMetadataURL:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [v3 path];
  v6 = [v4 fileExistsAtPath:v5];

  if (v6)
  {
    v7 = [MEMORY[0x1E696AC08] defaultManager];
    v17 = 0;
    v8 = [v7 removeItemAtURL:v3 error:&v17];
    v9 = v17;

    v10 = PLMigrationGetLog();
    v11 = v10;
    if (v8)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v19 = v3;
        v12 = "Removed person persistence data at URL %@";
        v13 = v11;
        v14 = OS_LOG_TYPE_INFO;
        v15 = 12;
LABEL_10:
        _os_log_impl(&dword_19BF1F000, v13, v14, v12, buf, v15);
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v19 = v3;
      v20 = 2112;
      v21 = v9;
      v12 = "Failed to remove person persistence data at URL (%@) with error: %@";
      v13 = v11;
      v14 = OS_LOG_TYPE_ERROR;
      v15 = 22;
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  v9 = PLMigrationGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v19 = v3;
    _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_INFO, "Attempting to remove person persistence data that does not exist at URL %@", buf, 0xCu);
  }

  v8 = 0;
LABEL_12:

  return v8;
}

+ (BOOL)deleteMetadataFileForPersonUUID:(id)a3 pathManager:(id)a4
{
  v4 = a1;
  v5 = [a1 _metadataFileURLForPersonUUID:a3 pathManager:a4];
  LOBYTE(v4) = [v4 _deleteMetadataFileWithMetadataURL:v5];

  return v4;
}

+ (id)urlsForPersistedPersonsInMetadataDirectoryWithPathManager:(id)a3
{
  v4 = MEMORY[0x1E695DFF8];
  v5 = [a3 privateDirectoryWithSubType:5 createIfNeeded:0 error:0];
  v6 = [v4 fileURLWithPath:v5 isDirectory:1];

  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v8 = [v7 contentsOfDirectoryAtURL:v6 includingPropertiesForKeys:0 options:0 error:0];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __87__PLPersistedPersonMetadata_urlsForPersistedPersonsInMetadataDirectoryWithPathManager___block_invoke;
  v11[3] = &__block_descriptor_40_e15_B16__0__NSURL_8l;
  v11[4] = a1;
  v9 = [v8 _pl_filter:v11];

  return v9;
}

uint64_t __87__PLPersistedPersonMetadata_urlsForPersistedPersonsInMetadataDirectoryWithPathManager___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 path];
  v4 = [v2 isValidPath:v3];

  return v4;
}

+ (id)urlsForPersistedPersonsInMetadataDirectoryOfLibrary:(id)a3
{
  v4 = [a3 pathManager];
  v5 = [a1 urlsForPersistedPersonsInMetadataDirectoryWithPathManager:v4];

  return v5;
}

+ (id)_metadataFileURLForPersonUUID:(id)a3 pathManager:(id)a4
{
  v5 = MEMORY[0x1E695DFF8];
  v6 = a3;
  v7 = [a4 privateDirectoryWithSubType:5 createIfNeeded:1 error:0];
  v8 = [v5 fileURLWithPath:v7 isDirectory:1];

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v6, PLFaceMetadataExtension];

  v10 = [v8 URLByAppendingPathComponent:v9];

  return v10;
}

+ (BOOL)isValidPath:(id)a3 outPersonUUID:(id *)a4
{
  v5 = a3;
  v6 = [v5 pathExtension];
  v7 = [v6 isEqualToString:PLFaceMetadataExtension];
  v8 = v7;
  if (a4 && v7)
  {
    v9 = [v5 pathComponents];
    v10 = [v9 lastObject];

    *a4 = [v10 stringByDeletingPathExtension];
  }

  return v8;
}

@end