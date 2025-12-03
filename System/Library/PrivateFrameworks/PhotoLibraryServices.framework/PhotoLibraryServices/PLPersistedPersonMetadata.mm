@interface PLPersistedPersonMetadata
+ (BOOL)_deleteMetadataFileWithMetadataURL:(id)l;
+ (BOOL)deleteMetadataFileForPersonUUID:(id)d pathManager:(id)manager;
+ (BOOL)isValidPath:(id)path outPersonUUID:(id *)d;
+ (id)_clusterRejectedFaceIDsWithPerson:(id)person;
+ (id)_detectedFacesToArchiveWithPerson:(id)person;
+ (id)_fetchFacesWithPredicate:(id)predicate resultType:(unint64_t)type managedObjectContext:(id)context error:(id *)error;
+ (id)_metadataFileURLForPersonUUID:(id)d pathManager:(id)manager;
+ (id)_persistedFaceMetadataWithFaces:(id)faces keyFace:(id)face clusterRejectedFaceIDs:(id)ds;
+ (id)_rejectedFacesToArchiveWithPerson:(id)person;
+ (id)personUUIDsToDedupeWithMetadataURLs:(id)ls cplEnabled:(BOOL)enabled;
+ (id)urlsForPersistedPersonsInMetadataDirectoryOfLibrary:(id)library;
+ (id)urlsForPersistedPersonsInMetadataDirectoryWithPathManager:(id)manager;
+ (void)performPostImportMigrationFromVersion:(unint64_t)version fromDataInManagedObjectContext:(id)context;
+ (void)updateMergeTargetPersonWithPersonUUIDMapping:(id)mapping fromDataInManagedObjectContext:(id)context;
- (BOOL)_insertDetectedFacesOnPerson:(id)person fromDataInManagedObjectContext:(id)context deferUnmatched:(BOOL)unmatched;
- (BOOL)_insertRejectedFacesOnPerson:(id)person fromDataInManagedObjectContext:(id)context deferUnmatched:(BOOL)unmatched;
- (BOOL)_readUUID;
- (BOOL)hasAllAssetsAvailableInManagedObjectContext:(id)context includePendingAssetChanges:(BOOL)changes;
- (BOOL)matchesEntityInLibraryBackedByManagedObjectContext:(id)context diff:(id *)diff;
- (BOOL)readDetectedFaces;
- (BOOL)readDetectedFacesFromKeyedUnarchiver:(id)unarchiver;
- (BOOL)readMetadata;
- (BOOL)updateFacesInPerson:(id)person fromDataInManagedObjectContext:(id)context deferUnmatched:(BOOL)unmatched;
- (PLPersistedPersonMetadata)init;
- (PLPersistedPersonMetadata)initWithPLPerson:(id)person metadataURL:(id)l;
- (PLPersistedPersonMetadata)initWithPLPerson:(id)person pathManager:(id)manager;
- (PLPersistedPersonMetadata)initWithPersistedDataAtURL:(id)l deferUnarchiving:(BOOL)unarchiving cplEnabled:(BOOL)enabled;
- (id)_metadataData;
- (id)description;
- (id)detectedFaceIdentifiers;
- (id)insertPersonFromDataInManagedObjectContext:(id)context;
- (id)jsonDictionary;
- (void)_addAssetUUIDsFromFaces:(id)faces toMutableSet:(id)set;
- (void)_saveMetadata;
- (void)removePersistedData;
@end

@implementation PLPersistedPersonMetadata

- (id)jsonDictionary
{
  v33[13] = *MEMORY[0x1E69E9840];
  v32[0] = @"personUUID";
  personUUID = [(PLPersistedPersonMetadata *)self personUUID];
  v33[0] = personUUID;
  v32[1] = @"detectionType";
  detectionType = [(PLPersistedPersonMetadata *)self detectionType];
  v30 = detectionType;
  v4 = &unk_1F0FBDA98;
  if (detectionType)
  {
    v4 = detectionType;
  }

  v33[1] = v4;
  v32[2] = @"fromVersion";
  v29 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PLPersistedPersonMetadata fromVersion](self, "fromVersion")}];
  v33[2] = v29;
  v32[3] = @"verifiedType";
  v28 = [MEMORY[0x1E696AD98] numberWithInt:{-[PLPersistedPersonMetadata verifiedType](self, "verifiedType")}];
  v33[3] = v28;
  v32[4] = @"fullName";
  fullName = [(PLPersistedPersonMetadata *)self fullName];
  v27 = fullName;
  if (fullName)
  {
    v6 = fullName;
  }

  else
  {
    v6 = &stru_1F0F06D80;
  }

  v33[4] = v6;
  v32[5] = @"displayName";
  displayName = [(PLPersistedPersonMetadata *)self displayName];
  if (displayName)
  {
    v8 = displayName;
  }

  else
  {
    v8 = &stru_1F0F06D80;
  }

  v33[5] = v8;
  v32[6] = @"personUri";
  personUri = [(PLPersistedPersonMetadata *)self personUri];
  v10 = personUri;
  if (personUri)
  {
    v11 = personUri;
  }

  else
  {
    v11 = &stru_1F0F06D80;
  }

  v33[6] = v11;
  v32[7] = @"contactMatchingDictionary";
  contactMatchingDictionary = [(PLPersistedPersonMetadata *)self contactMatchingDictionary];
  v13 = contactMatchingDictionary;
  if (contactMatchingDictionary)
  {
    v14 = contactMatchingDictionary;
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
  detectedFaces = [(PLPersistedPersonMetadata *)self detectedFaces];
  v20 = [v18 numberWithUnsignedInteger:{objc_msgSend(detectedFaces, "count")}];
  v33[11] = v20;
  v32[12] = @"rejectedFacesCount";
  v21 = MEMORY[0x1E696AD98];
  rejectedFaces = [(PLPersistedPersonMetadata *)self rejectedFaces];
  v23 = [v21 numberWithUnsignedInteger:{objc_msgSend(rejectedFaces, "count")}];
  v33[12] = v23;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:13];

  return v24;
}

- (BOOL)matchesEntityInLibraryBackedByManagedObjectContext:(id)context diff:(id *)diff
{
  v54[2] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  personUUID = [(PLPersistedPersonMetadata *)self personUUID];
  v8 = [PLPerson personWithUUID:personUUID inManagedObjectContext:contextCopy];

  if (v8)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    fullName = [(PLPersistedPersonMetadata *)self fullName];
    fullName2 = [v8 fullName];
    IsEqual = PLObjectIsEqual();

    if ((IsEqual & 1) == 0)
    {
      fullName3 = [(PLPersistedPersonMetadata *)self fullName];
      [dictionary _pl_setNonNilObject:fullName3 forKey:@"fullName"];

      fullName4 = [v8 fullName];
      [dictionary2 _pl_setNonNilObject:fullName4 forKey:@"fullName"];
    }

    displayName = [(PLPersistedPersonMetadata *)self displayName];
    displayName2 = [v8 displayName];
    v18 = PLObjectIsEqual();

    if ((v18 & 1) == 0)
    {
      displayName3 = [(PLPersistedPersonMetadata *)self displayName];
      [dictionary _pl_setNonNilObject:displayName3 forKey:@"displayName"];

      displayName4 = [v8 displayName];
      [dictionary2 _pl_setNonNilObject:displayName4 forKey:@"displayName"];
    }

    verifiedType = [(PLPersistedPersonMetadata *)self verifiedType];
    if (verifiedType != [v8 verifiedType])
    {
      v22 = [MEMORY[0x1E696AD98] numberWithInt:{-[PLPersistedPersonMetadata verifiedType](self, "verifiedType")}];
      [dictionary setObject:v22 forKey:@"verifiedType"];

      v23 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v8, "verifiedType")}];
      [dictionary2 setObject:v23 forKey:@"verifiedType"];
    }

    if ([(PLPersistedPersonMetadata *)self verifiedType]!= -2)
    {
      personUri = [(PLPersistedPersonMetadata *)self personUri];
      personUri2 = [v8 personUri];
      v26 = PLObjectIsEqual();

      if ((v26 & 1) == 0)
      {
        personUri3 = [(PLPersistedPersonMetadata *)self personUri];
        [dictionary _pl_setNonNilObject:personUri3 forKey:@"personUri"];

        personUri4 = [v8 personUri];
        [dictionary2 _pl_setNonNilObject:personUri4 forKey:@"personUri"];
      }

      contactMatchingDictionary = [(PLPersistedPersonMetadata *)self contactMatchingDictionary];
      contactMatchingDictionary2 = [v8 contactMatchingDictionary];
      v31 = PLObjectIsEqual();

      if ((v31 & 1) == 0)
      {
        contactMatchingDictionary3 = [(PLPersistedPersonMetadata *)self contactMatchingDictionary];
        [dictionary _pl_setNonNilObject:contactMatchingDictionary3 forKey:@"contactMatchingDictionary"];

        contactMatchingDictionary4 = [v8 contactMatchingDictionary];
        [dictionary2 _pl_setNonNilObject:contactMatchingDictionary4 forKey:@"contactMatchingDictionary"];
      }
    }

    manualOrder = [(PLPersistedPersonMetadata *)self manualOrder];
    if (manualOrder != [v8 manualOrder])
    {
      v35 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PLPersistedPersonMetadata manualOrder](self, "manualOrder")}];
      [dictionary setObject:v35 forKey:@"manualOrder"];

      v36 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v8, "manualOrder")}];
      [dictionary2 setObject:v36 forKey:@"manualOrder"];
    }

    type = [(PLPersistedPersonMetadata *)self type];
    if (type != [v8 type])
    {
      v38 = [MEMORY[0x1E696AD98] numberWithInt:{-[PLPersistedPersonMetadata type](self, "type")}];
      [dictionary setObject:v38 forKey:@"personType"];

      v39 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v8, "type")}];
      [dictionary2 setObject:v39 forKey:@"personType"];
    }

    keyFacePickSource = [(PLPersistedPersonMetadata *)self keyFacePickSource];
    if (keyFacePickSource != [v8 keyFacePickSource])
    {
      v41 = [MEMORY[0x1E696AD98] numberWithShort:{-[PLPersistedPersonMetadata keyFacePickSource](self, "keyFacePickSource")}];
      [dictionary setObject:v41 forKey:@"keyFacePickSource"];

      v42 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(v8, "keyFacePickSource")}];
      [dictionary2 setObject:v42 forKey:@"keyFacePickSource"];
    }

    detectionType = [(PLPersistedPersonMetadata *)self detectionType];

    if (detectionType)
    {
      detectionType2 = [(PLPersistedPersonMetadata *)self detectionType];
      intValue = [detectionType2 intValue];
      detectionType3 = [v8 detectionType];

      if (intValue != detectionType3)
      {
        v47 = MEMORY[0x1E696AD98];
        detectionType4 = [(PLPersistedPersonMetadata *)self detectionType];
        v49 = [v47 numberWithInt:{objc_msgSend(detectionType4, "intValue")}];
        [dictionary setObject:v49 forKey:@"detectionType"];

LABEL_26:
        v51 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(v8, "detectionType")}];
        [dictionary2 setObject:v51 forKey:@"detectionType"];
      }
    }

    else if ([v8 detectionType] != 1)
    {
      [dictionary setObject:&unk_1F0FBDA98 forKey:@"detectionType"];
      goto LABEL_26;
    }

    if (diff)
    {
      v53[0] = @"metadata";
      v53[1] = @"library";
      v54[0] = dictionary;
      v54[1] = dictionary2;
      *diff = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:v53 count:2];
    }

    if ([dictionary count])
    {
      v50 = 0;
    }

    else
    {
      v50 = [dictionary2 count] == 0;
    }

    goto LABEL_33;
  }

  v50 = 0;
  if (diff)
  {
    *diff = 0;
  }

LABEL_33:

  return v50;
}

- (void)_saveMetadata
{
  v3 = objc_autoreleasePoolPush();
  _metadataData = [(PLPersistedPersonMetadata *)self _metadataData];
  v5 = MEMORY[0x1E69BF230];
  metadataURL = [(PLPersistedPersonMetadata *)self metadataURL];
  [v5 persistMetadata:_metadataData fileURL:metadataURL];

  v7 = MEMORY[0x1E69BF238];
  metadataURL2 = [(PLPersistedPersonMetadata *)self metadataURL];
  path = [metadataURL2 path];
  [v7 changeFileOwnerToMobileAtPath:path error:0];

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

  personUUID = [person personUUID];
  if (personUUID)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"personUUID"];
    [v3 encodeObject:personUUID forKey:v6];
  }

  v7 = self->_person;
  if (v7)
  {
    goto LABEL_7;
  }

  detectionType = [(PLPersistedPersonMetadata *)self detectionType];

  if (detectionType)
  {
    v7 = self->_person;
    if (!v7)
    {
      detectionType2 = [(PLPersistedPersonMetadata *)self detectionType];
      intValue = [detectionType2 intValue];

      goto LABEL_8;
    }

LABEL_7:
    intValue = [(PLPerson *)v7 detectionType];
LABEL_8:
    [v3 encodeInt:intValue forKey:@"detectionType"];
  }

  if (self->_person)
  {
    selfCopy = self->_person;
  }

  else
  {
    selfCopy = self;
  }

  fullName = [selfCopy fullName];
  if (fullName)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"fullName"];
    [v3 encodeObject:fullName forKey:v11];
  }

  if (self->_person)
  {
    selfCopy2 = self->_person;
  }

  else
  {
    selfCopy2 = self;
  }

  displayName = [selfCopy2 displayName];
  if (displayName)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"displayName"];
    [v3 encodeObject:displayName forKey:v14];
  }

  if (self->_person)
  {
    selfCopy3 = self->_person;
  }

  else
  {
    selfCopy3 = self;
  }

  manualOrder = [selfCopy3 manualOrder];
  if (manualOrder)
  {
    [v3 encodeInteger:manualOrder forKey:@"manualOrder"];
  }

  if (self->_person)
  {
    selfCopy4 = self->_person;
  }

  else
  {
    selfCopy4 = self;
  }

  type = [selfCopy4 type];
  if (type)
  {
    [v3 encodeInt32:type forKey:@"personType"];
  }

  if (self->_person)
  {
    selfCopy5 = self->_person;
  }

  else
  {
    selfCopy5 = self;
  }

  keyFacePickSource = [selfCopy5 keyFacePickSource];
  if (keyFacePickSource)
  {
    [v3 encodeInt32:keyFacePickSource forKey:@"keyFacePickSource"];
  }

  if (self->_person)
  {
    selfCopy6 = self->_person;
  }

  else
  {
    selfCopy6 = self;
  }

  verifiedType = [selfCopy6 verifiedType];
  if (!verifiedType || (v23 = verifiedType, [v3 encodeInt32:verifiedType forKey:@"verifiedType"], v23 != -2))
  {
    if (self->_person)
    {
      selfCopy7 = self->_person;
    }

    else
    {
      selfCopy7 = self;
    }

    personUri = [selfCopy7 personUri];
    if (personUri)
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"personUri"];
      [v3 encodeObject:personUri forKey:v26];
    }

    if (self->_person)
    {
      selfCopy8 = self->_person;
    }

    else
    {
      selfCopy8 = self;
    }

    contactMatchingDictionary = [selfCopy8 contactMatchingDictionary];
    if (contactMatchingDictionary)
    {
      [v3 encodeObject:contactMatchingDictionary forKey:@"contactMatchingDictionary"];
    }
  }

  v67 = displayName;
  v68 = fullName;
  if (self->_person)
  {
    selfCopy9 = self->_person;
  }

  else
  {
    selfCopy9 = self;
  }

  cloudVerifiedType = [selfCopy9 cloudVerifiedType];
  if (cloudVerifiedType)
  {
    [v3 encodeInt32:cloudVerifiedType forKey:@"cloudVerifiedType"];
  }

  if (self->_person)
  {
    selfCopy10 = self->_person;
  }

  else
  {
    selfCopy10 = self;
  }

  userFeedbacks = [selfCopy10 userFeedbacks];
  v33 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(userFeedbacks, "count")}];
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v34 = userFeedbacks;
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

        dictionaryRepresentation = [*(*(&v69 + 1) + 8 * i) dictionaryRepresentation];
        [v33 addObject:dictionaryRepresentation];
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
    selfCopy11 = self->_person;
  }

  else
  {
    selfCopy11 = self;
  }

  assetSortOrder = [selfCopy11 assetSortOrder];
  if (assetSortOrder)
  {
    [v3 encodeInt32:assetSortOrder forKey:@"assetSortOrder"];
  }

  if (self->_person)
  {
    detectedFaces = [objc_opt_class() _detectedFacesToArchiveWithPerson:self->_person];
    if ([detectedFaces count])
    {
      keyFace = [(PLPerson *)self->_person keyFace];
      v44 = [objc_opt_class() _persistedFaceMetadataWithFaces:detectedFaces keyFace:keyFace clusterRejectedFaceIDs:0];
      v45 = [detectedFaces count];
      if (v45 != [v44 count])
      {
        v46 = personUUID;
        v47 = PLMigrationGetLog();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          v48 = [detectedFaces count];
          v49 = [v44 count];
          *buf = 138412546;
          v74 = v46;
          v75 = 1024;
          v76 = v48 - v49;
          _os_log_impl(&dword_19BF1F000, v47, OS_LOG_TYPE_ERROR, "Failed to encode some detected faces as metadata for %@ (%d failed)", buf, 0x12u);
        }

        personUUID = v46;
      }

      [v3 encodeObject:v44 forKey:@"detectedFaces"];
    }

    v50 = personUUID;
    rejectedFaces = [objc_opt_class() _rejectedFacesToArchiveWithPerson:self->_person];
    v52 = [objc_opt_class() _clusterRejectedFaceIDsWithPerson:self->_person];
    if ([rejectedFaces count])
    {
      v53 = objc_opt_class();
      v54 = [MEMORY[0x1E695DFD8] setWithArray:v52];
      v55 = [v53 _persistedFaceMetadataWithFaces:rejectedFaces keyFace:0 clusterRejectedFaceIDs:v54];

      v56 = [rejectedFaces count];
      if (v56 != [v55 count])
      {
        v57 = PLMigrationGetLog();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          v66 = [rejectedFaces count];
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

    mergeTargetPerson = [(PLPerson *)self->_person mergeTargetPerson];
    personUUID2 = [mergeTargetPerson personUUID];

    if (personUUID2)
    {
      v61 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"mergeTargetPersonUUID"];
      [v3 encodeObject:personUUID2 forKey:v61];
    }

    personUUID = v50;
  }

  else
  {
    detectedFaces = [(PLPersistedPersonMetadata *)self detectedFaces];
    if ([detectedFaces count])
    {
      [v3 encodeObject:detectedFaces forKey:@"detectedFaces"];
    }

    rejectedFaces = [(PLPersistedPersonMetadata *)self rejectedFaces];
    if ([rejectedFaces count])
    {
      [v3 encodeObject:rejectedFaces forKey:@"rejectedFaces"];
    }
  }

  encodedData = [v3 encodedData];

  return encodedData;
}

- (BOOL)readMetadata
{
  v68 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DEF0];
  metadataURL = [(PLPersistedPersonMetadata *)self metadataURL];
  v5 = [v3 dataWithContentsOfURL:metadataURL];

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
        selfCopy2 = self;
      }

      else
      {
        v28 = PLMigrationGetLog();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_ERROR, "Person metatdata contains verifiedType but not cloudVerifiedType", buf, 2u);
        }

        selfCopy2 = self;
        v24 = v23;
      }

      [(PLPersistedPersonMetadata *)selfCopy2 setCloudVerifiedType:v24];
    }

    else
    {
      v26 = PLMigrationGetLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        personUUID = [(PLPersistedPersonMetadata *)self personUUID];
        *buf = 138412290;
        v65 = personUUID;
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
      detectedFaces = [(PLPersistedPersonMetadata *)self detectedFaces];
      v38 = [detectedFaces count] != 0;

      if (v9 < 5)
      {
        v40 = PLMigrationGetLog();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          personUUID2 = [(PLPersistedPersonMetadata *)self personUUID];
          *buf = 138412290;
          v65 = personUUID2;
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
          personUUID3 = [(PLPersistedPersonMetadata *)self personUUID];
          *buf = 134218242;
          v65 = v42;
          v66 = 2112;
          v67 = personUUID3;
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
      fullName = [(PLPersistedPersonMetadata *)self fullName];
      if ([fullName length] || -[PLPersistedPersonMetadata type](self, "type"))
      {
      }

      else
      {
        contactMatchingDictionary = [(PLPersistedPersonMetadata *)self contactMatchingDictionary];
        v55 = contactMatchingDictionary != 0 || v38;

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
      detectedFaces2 = [(PLPersistedPersonMetadata *)self detectedFaces];
      v48 = [detectedFaces2 countByEnumeratingWithState:&v59 objects:v63 count:16];
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
              objc_enumerationMutation(detectedFaces2);
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

          v49 = [detectedFaces2 countByEnumeratingWithState:&v59 objects:v63 count:16];
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

- (BOOL)readDetectedFacesFromKeyedUnarchiver:(id)unarchiver
{
  v18 = *MEMORY[0x1E69E9840];
  unarchiverCopy = unarchiver;
  v5 = unarchiverCopy;
  if (unarchiverCopy)
  {
    v6 = [unarchiverCopy decodeIntegerForKey:@"version"];
    if (v6 >= 2)
    {
      v7 = v6;
      v8 = [PLPersistedPersonFaceMetadata _persistedFacesWithUnarchiver:v5 key:@"detectedFaces"];
      v9 = PLMigrationGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [v8 count];
        personUUID = [(PLPersistedPersonMetadata *)self personUUID];
        v14 = 134218242;
        v15 = v10;
        v16 = 2112;
        v17 = personUUID;
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
  metadataURL = [(PLPersistedPersonMetadata *)self metadataURL];
  v5 = [v3 dataWithContentsOfURL:metadataURL];

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
  metadataURL = [(PLPersistedPersonMetadata *)self metadataURL];
  v5 = [v3 dataWithContentsOfURL:metadataURL];

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
    objectID = [(PLPerson *)v5 objectID];
    [objectID description];
  }

  else
  {
    objectID = [(PLPersistedPersonMetadata *)self metadataURL];
    [objectID path];
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
    selfCopy = self->_person;
  }

  else
  {
    selfCopy = self;
  }

  detectedFaces = [selfCopy detectedFaces];
  v10 = [detectedFaces count];

  if (self->_person)
  {
    selfCopy2 = self->_person;
  }

  else
  {
    selfCopy2 = self;
  }

  rejectedFaces = [selfCopy2 rejectedFaces];
  v13 = [rejectedFaces count];

  [v4 appendName:@"faces" integerValue:v10];
  [v4 appendName:@"rejected" integerValue:v13];
  build = [v4 build];

  return build;
}

- (BOOL)_insertRejectedFacesOnPerson:(id)person fromDataInManagedObjectContext:(id)context deferUnmatched:(BOOL)unmatched
{
  v58 = *MEMORY[0x1E69E9840];
  personCopy = person;
  contextCopy = context;
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
  rejectedFaces = [(PLPersistedPersonMetadata *)self rejectedFaces];
  v11 = [[PLFaceRebuildHelper alloc] initWithContext:contextCopy];
  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __104__PLPersistedPersonMetadata__insertRejectedFacesOnPerson_fromDataInManagedObjectContext_deferUnmatched___block_invoke;
  v25 = &unk_1E7571CA8;
  v12 = v11;
  v26 = v12;
  v13 = personCopy;
  v27 = v13;
  v29 = &v42;
  unmatchedCopy = unmatched;
  v14 = contextCopy;
  v28 = v14;
  v30 = &v38;
  v31 = &v34;
  v32 = &v46;
  [PLPersistedPersonFaceMetadata enumerateMatchedAssetsWithMetadata:rejectedFaces inContext:v14 withBlock:&v22];
  v15 = PLMigrationGetLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(v43 + 6);
    v17 = *(v39 + 6);
    v18 = *(v35 + 6);
    personUUID = [v13 personUUID];
    *buf = 67109890;
    v51 = v16;
    v52 = 1024;
    v53 = v17;
    v54 = 1024;
    v55 = v18;
    v56 = 2112;
    v57 = personUUID;
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

- (BOOL)_insertDetectedFacesOnPerson:(id)person fromDataInManagedObjectContext:(id)context deferUnmatched:(BOOL)unmatched
{
  v58 = *MEMORY[0x1E69E9840];
  personCopy = person;
  contextCopy = context;
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
  detectedFaces = [(PLPersistedPersonMetadata *)self detectedFaces];
  v11 = [[PLFaceRebuildHelper alloc] initWithContext:contextCopy];
  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __104__PLPersistedPersonMetadata__insertDetectedFacesOnPerson_fromDataInManagedObjectContext_deferUnmatched___block_invoke;
  v25 = &unk_1E7571CA8;
  v12 = v11;
  v26 = v12;
  v13 = personCopy;
  v27 = v13;
  v29 = &v42;
  unmatchedCopy = unmatched;
  v14 = contextCopy;
  v28 = v14;
  v30 = &v38;
  v31 = &v34;
  v32 = &v46;
  [PLPersistedPersonFaceMetadata enumerateMatchedAssetsWithMetadata:detectedFaces inContext:v14 withBlock:&v22];
  v15 = PLMigrationGetLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(v43 + 6);
    v17 = *(v39 + 6);
    v18 = *(v35 + 6);
    personUUID = [v13 personUUID];
    *buf = 67109890;
    v51 = v16;
    v52 = 1024;
    v53 = v17;
    v54 = 1024;
    v55 = v18;
    v56 = 2112;
    v57 = personUUID;
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

- (BOOL)hasAllAssetsAvailableInManagedObjectContext:(id)context includePendingAssetChanges:(BOOL)changes
{
  changesCopy = changes;
  v22 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E695DFA8];
  contextCopy = context;
  v8 = [v6 set];
  detectedFaces = [(PLPersistedPersonMetadata *)self detectedFaces];
  [(PLPersistedPersonMetadata *)self _addAssetUUIDsFromFaces:detectedFaces toMutableSet:v8];

  rejectedFaces = [(PLPersistedPersonMetadata *)self rejectedFaces];
  [(PLPersistedPersonMetadata *)self _addAssetUUIDsFromFaces:rejectedFaces toMutableSet:v8];

  allObjects = [v8 allObjects];
  v17 = 0;
  v12 = [PLManagedAsset countForAssetsWithUUIDs:allObjects includePendingChanges:changesCopy inManagedObjectContext:contextCopy error:&v17];

  v13 = v17;
  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = PLMigrationGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      selfCopy = self;
      v20 = 2112;
      v21 = v13;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "Failed to fetch count for assets in person metadata %@, %@", buf, 0x16u);
    }
  }

  v15 = v12 == [v8 count];

  return v15;
}

- (void)_addAssetUUIDsFromFaces:(id)faces toMutableSet:(id)set
{
  v17 = *MEMORY[0x1E69E9840];
  facesCopy = faces;
  setCopy = set;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [facesCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(facesCopy);
        }

        assetUUID = [*(*(&v12 + 1) + 8 * v10) assetUUID];
        if (assetUUID)
        {
          [setCopy addObject:assetUUID];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [facesCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (BOOL)updateFacesInPerson:(id)person fromDataInManagedObjectContext:(id)context deferUnmatched:(BOOL)unmatched
{
  unmatchedCopy = unmatched;
  contextCopy = context;
  personCopy = person;
  v10 = [(PLPersistedPersonMetadata *)self _insertDetectedFacesOnPerson:personCopy fromDataInManagedObjectContext:contextCopy deferUnmatched:unmatchedCopy];
  LOBYTE(unmatchedCopy) = [(PLPersistedPersonMetadata *)self _insertRejectedFacesOnPerson:personCopy fromDataInManagedObjectContext:contextCopy deferUnmatched:unmatchedCopy];

  return unmatchedCopy && v10;
}

- (id)insertPersonFromDataInManagedObjectContext:(id)context
{
  v26 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  personUUID = [(PLPersistedPersonMetadata *)self personUUID];
  fullName = [(PLPersistedPersonMetadata *)self fullName];
  v7 = [PLPerson insertIntoManagedObjectContext:contextCopy withPersonUUID:personUUID fullName:fullName verifiedType:[(PLPersistedPersonMetadata *)self verifiedType]];

  detectionType = [(PLPersistedPersonMetadata *)self detectionType];

  if (detectionType)
  {
    detectionType2 = [(PLPersistedPersonMetadata *)self detectionType];
    [v7 setDetectionType:{objc_msgSend(detectionType2, "intValue")}];
  }

  [v7 setCloudVerifiedType:{-[PLPersistedPersonMetadata cloudVerifiedType](self, "cloudVerifiedType")}];
  displayName = [(PLPersistedPersonMetadata *)self displayName];
  [v7 setDisplayName:displayName];

  [v7 setManualOrder:{-[PLPersistedPersonMetadata manualOrder](self, "manualOrder")}];
  [v7 setType:{-[PLPersistedPersonMetadata type](self, "type")}];
  if ([(PLPersistedPersonMetadata *)self verifiedType]!= -2)
  {
    personUri = [(PLPersistedPersonMetadata *)self personUri];
    [v7 setPersonUri:personUri];

    contactMatchingDictionary = [(PLPersistedPersonMetadata *)self contactMatchingDictionary];
    [v7 setContactMatchingDictionary:contactMatchingDictionary];
  }

  [v7 setKeyFacePickSource:{-[PLPersistedPersonMetadata keyFacePickSource](self, "keyFacePickSource")}];
  v13 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  userFeedbacksDictionaryArray = [(PLPersistedPersonMetadata *)self userFeedbacksDictionaryArray];
  v15 = [userFeedbacksDictionaryArray countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(userFeedbacksDictionaryArray);
        }

        v19 = [PLUserFeedback insertIntoManagedObjectContext:contextCopy withDictionaryRepresentation:*(*(&v21 + 1) + 8 * i)];
        [v13 addObject:v19];
      }

      v16 = [userFeedbacksDictionaryArray countByEnumeratingWithState:&v21 objects:v25 count:16];
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
  metadataURL = [(PLPersistedPersonMetadata *)self metadataURL];
  [v3 _deleteMetadataFileWithMetadataURL:metadataURL];
}

- (id)detectedFaceIdentifiers
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFA8];
  detectedFaces = [(PLPersistedPersonMetadata *)self detectedFaces];
  v5 = [v3 setWithCapacity:{objc_msgSend(detectedFaces, "count")}];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  detectedFaces2 = [(PLPersistedPersonMetadata *)self detectedFaces];
  v7 = [detectedFaces2 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(detectedFaces2);
        }

        _identifier = [*(*(&v13 + 1) + 8 * i) _identifier];
        [v5 addObject:_identifier];
      }

      v8 = [detectedFaces2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (PLPersistedPersonMetadata)initWithPersistedDataAtURL:(id)l deferUnarchiving:(BOOL)unarchiving cplEnabled:(BOOL)enabled
{
  unarchivingCopy = unarchiving;
  lCopy = l;
  v14.receiver = self;
  v14.super_class = PLPersistedPersonMetadata;
  v10 = [(PLPersistedPersonMetadata *)&v14 init];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_6;
  }

  objc_storeStrong(&v10->_metadataURL, l);
  v11->_cplEnabled = enabled;
  if (!unarchivingCopy)
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

- (PLPersistedPersonMetadata)initWithPLPerson:(id)person metadataURL:(id)l
{
  personCopy = person;
  lCopy = l;
  v13.receiver = self;
  v13.super_class = PLPersistedPersonMetadata;
  v9 = [(PLPersistedPersonMetadata *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_person, person);
    objc_storeStrong(&v10->_metadataURL, l);
    photoLibrary = [personCopy photoLibrary];
    v10->_cplEnabled = [photoLibrary isCloudPhotoLibraryEnabled];
  }

  return v10;
}

- (PLPersistedPersonMetadata)initWithPLPerson:(id)person pathManager:(id)manager
{
  managerCopy = manager;
  personCopy = person;
  v8 = objc_opt_class();
  personUUID = [personCopy personUUID];
  v10 = [v8 _metadataFileURLForPersonUUID:personUUID pathManager:managerCopy];

  v11 = [(PLPersistedPersonMetadata *)self initWithPLPerson:personCopy metadataURL:v10];
  return v11;
}

- (PLPersistedPersonMetadata)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PLPersistedPersonMetadata.m" lineNumber:558 description:@"Can't initialize a PLPersistedPersonMetadata object using -init."];

  return 0;
}

+ (void)performPostImportMigrationFromVersion:(unint64_t)version fromDataInManagedObjectContext:(id)context
{
  v13 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v6 = PLMigrationGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134217984;
    versionCopy = version;
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "Post-import migration of persons from metadata version %lu", &v11, 0xCu);
  }

  if (version <= 9)
  {
    v7 = PLMigrationGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "Resetting manual order on persons", &v11, 2u);
    }

    photoLibrary = [contextCopy photoLibrary];
    libraryServicesManager = [photoLibrary libraryServicesManager];
    modelMigrator = [libraryServicesManager modelMigrator];
    [modelMigrator resetManualOrderForNonFavoritePeopleInManagedObjectContext:contextCopy];
  }
}

+ (void)updateMergeTargetPersonWithPersonUUIDMapping:(id)mapping fromDataInManagedObjectContext:(id)context
{
  v31 = *MEMORY[0x1E69E9840];
  mappingCopy = mapping;
  contextCopy = context;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = [mappingCopy countByEnumeratingWithState:&v22 objects:v30 count:16];
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
          objc_enumerationMutation(mappingCopy);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        v12 = [mappingCopy objectForKey:{v11, v20}];
        v13 = [PLPerson personWithUUID:v11 inManagedObjectContext:contextCopy];
        v14 = [PLPerson personWithUUID:v12 inManagedObjectContext:contextCopy];
        finalMergeTargetPerson = [v14 finalMergeTargetPerson];

        v16 = PLMigrationGetLog();
        v17 = v16;
        if (v13)
        {
          v18 = finalMergeTargetPerson == 0;
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
            v27 = finalMergeTargetPerson;
            v28 = 2112;
            v29 = v13;
            _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEFAULT, "Setting merge target person %@ for %@", buf, 0x16u);
          }

          [v13 setMergeTargetPerson:finalMergeTargetPerson];
        }
      }

      v9 = [mappingCopy countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v9);
  }
}

+ (id)personUUIDsToDedupeWithMetadataURLs:(id)ls cplEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v46 = *MEMORY[0x1E69E9840];
  lsCopy = ls;
  v29 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  context = objc_autoreleasePoolPush();
  v6 = PLMigrationGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "Deduping person metadata archives based on their sets of faces", buf, 2u);
  }

  v31 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(lsCopy, "count")}];
  v32 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithCapacity:{objc_msgSend(lsCopy, "count")}];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v7 = lsCopy;
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
        context = [[PLPersistedPersonMetadata alloc] initWithPersistedDataAtURL:v12 deferUnarchiving:1 cplEnabled:enabledCopy, v29, context];
        personUUID = [(PLPersistedPersonMetadata *)context personUUID];
        if (personUUID)
        {
          v15 = personUUID;
          readDetectedFaces = [(PLPersistedPersonMetadata *)context readDetectedFaces];

          if (readDetectedFaces)
          {
            detectedFaceIdentifiers = [(PLPersistedPersonMetadata *)context detectedFaceIdentifiers];
            v18 = [detectedFaceIdentifiers count];

            if (!v18)
            {
              goto LABEL_16;
            }

            personUUID2 = [(PLPersistedPersonMetadata *)context personUUID];
            [v32 addObject:personUUID2];

            detectedFaceIdentifiers2 = [(PLPersistedPersonMetadata *)context detectedFaceIdentifiers];
            personUUID3 = [(PLPersistedPersonMetadata *)context personUUID];
            [v31 setObject:detectedFaceIdentifiers2 forKey:personUUID3];
            goto LABEL_14;
          }
        }

        detectedFaceIdentifiers2 = PLMigrationGetLog();
        if (os_log_type_enabled(detectedFaceIdentifiers2, OS_LOG_TYPE_ERROR))
        {
          personUUID3 = [v12 path];
          *buf = 138412290;
          v44 = personUUID3;
          _os_log_impl(&dword_19BF1F000, detectedFaceIdentifiers2, OS_LOG_TYPE_ERROR, "Failed to read invalid or missing metadata at %@, this person will not be deduped", buf, 0xCu);
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

+ (id)_persistedFaceMetadataWithFaces:(id)faces keyFace:(id)face clusterRejectedFaceIDs:(id)ds
{
  v30 = *MEMORY[0x1E69E9840];
  facesCopy = faces;
  faceCopy = face;
  dsCopy = ds;
  v24 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(facesCopy, "count")}];
  v22 = faceCopy;
  objectID = [faceCopy objectID];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = facesCopy;
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
        objectID2 = [v15 objectID];
        v17 = [objectID isEqual:objectID2];

        objectID3 = [v15 objectID];
        v19 = [dsCopy containsObject:objectID3];

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

+ (id)_clusterRejectedFaceIDsWithPerson:(id)person
{
  v17 = *MEMORY[0x1E69E9840];
  personCopy = person;
  personCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K CONTAINS %@", @"clusterRejectedPersons", personCopy];
  managedObjectContext = [personCopy managedObjectContext];
  v12 = 0;
  v7 = [self _fetchFacesWithPredicate:personCopy resultType:1 managedObjectContext:managedObjectContext error:&v12];
  v8 = v12;

  if (!v7)
  {
    v9 = PLMigrationGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      personUUID = [personCopy personUUID];
      *buf = 138412546;
      v14 = personUUID;
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "Failed to fetch clusterRejectedFaceIDsWithPerson %@: %@", buf, 0x16u);
    }
  }

  return v7;
}

+ (id)_rejectedFacesToArchiveWithPerson:(id)person
{
  v17 = *MEMORY[0x1E69E9840];
  personCopy = person;
  personCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K CONTAINS %@", @"rejectedPersons", personCopy];
  managedObjectContext = [personCopy managedObjectContext];
  v12 = 0;
  v7 = [self _fetchFacesWithPredicate:personCopy resultType:0 managedObjectContext:managedObjectContext error:&v12];
  v8 = v12;

  if (!v7)
  {
    v9 = PLMigrationGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      personUUID = [personCopy personUUID];
      *buf = 138412546;
      v14 = personUUID;
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "Failed to fetch rejectedFacesToArchiveWithPerson %@: %@", buf, 0x16u);
    }
  }

  return v7;
}

+ (id)_detectedFacesToArchiveWithPerson:(id)person
{
  v23[2] = *MEMORY[0x1E69E9840];
  personCopy = person;
  v5 = MEMORY[0x1E696AE18];
  objectID = [personCopy objectID];
  v7 = [v5 predicateWithFormat:@"%K = %@", @"personForFace", objectID];

  v8 = +[PLDetectedFace predicateForArchival];
  v9 = MEMORY[0x1E696AB28];
  v23[0] = v7;
  v23[1] = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  v11 = [v9 andPredicateWithSubpredicates:v10];

  managedObjectContext = [personCopy managedObjectContext];
  v18 = 0;
  v13 = [self _fetchFacesWithPredicate:v11 resultType:0 managedObjectContext:managedObjectContext error:&v18];
  v14 = v18;

  if (!v13)
  {
    v15 = PLMigrationGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      personUUID = [personCopy personUUID];
      *buf = 138412546;
      v20 = personUUID;
      v21 = 2112;
      v22 = v14;
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "Failed to fetch detectedFacesToArchiveFromPerson %@: %@", buf, 0x16u);
    }
  }

  return v13;
}

+ (id)_fetchFacesWithPredicate:(id)predicate resultType:(unint64_t)type managedObjectContext:(id)context error:(id *)error
{
  contextCopy = context;
  predicateCopy = predicate;
  v11 = +[PLDetectedFace fetchRequest];
  [v11 setPredicate:predicateCopy];

  [v11 setFetchBatchSize:100];
  [v11 setResultType:type];
  if (type != 1)
  {
    v12 = +[PLPersistedPersonFaceMetadata _detectedFaceRelationshipKeyPathsToPrefetch];
    [v11 setRelationshipKeyPathsForPrefetching:v12];
  }

  v16 = 0;
  v13 = [contextCopy executeFetchRequest:v11 error:&v16];
  v14 = v16;
  if (error && !v13)
  {
    v14 = v14;
    *error = v14;
  }

  return v13;
}

+ (BOOL)_deleteMetadataFileWithMetadataURL:(id)l
{
  v22 = *MEMORY[0x1E69E9840];
  lCopy = l;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [lCopy path];
  v6 = [defaultManager fileExistsAtPath:path];

  if (v6)
  {
    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    v17 = 0;
    v8 = [defaultManager2 removeItemAtURL:lCopy error:&v17];
    v9 = v17;

    v10 = PLMigrationGetLog();
    v11 = v10;
    if (v8)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v19 = lCopy;
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
      v19 = lCopy;
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
    v19 = lCopy;
    _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_INFO, "Attempting to remove person persistence data that does not exist at URL %@", buf, 0xCu);
  }

  v8 = 0;
LABEL_12:

  return v8;
}

+ (BOOL)deleteMetadataFileForPersonUUID:(id)d pathManager:(id)manager
{
  selfCopy = self;
  v5 = [self _metadataFileURLForPersonUUID:d pathManager:manager];
  LOBYTE(selfCopy) = [selfCopy _deleteMetadataFileWithMetadataURL:v5];

  return selfCopy;
}

+ (id)urlsForPersistedPersonsInMetadataDirectoryWithPathManager:(id)manager
{
  v4 = MEMORY[0x1E695DFF8];
  v5 = [manager privateDirectoryWithSubType:5 createIfNeeded:0 error:0];
  v6 = [v4 fileURLWithPath:v5 isDirectory:1];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v8 = [defaultManager contentsOfDirectoryAtURL:v6 includingPropertiesForKeys:0 options:0 error:0];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __87__PLPersistedPersonMetadata_urlsForPersistedPersonsInMetadataDirectoryWithPathManager___block_invoke;
  v11[3] = &__block_descriptor_40_e15_B16__0__NSURL_8l;
  v11[4] = self;
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

+ (id)urlsForPersistedPersonsInMetadataDirectoryOfLibrary:(id)library
{
  pathManager = [library pathManager];
  v5 = [self urlsForPersistedPersonsInMetadataDirectoryWithPathManager:pathManager];

  return v5;
}

+ (id)_metadataFileURLForPersonUUID:(id)d pathManager:(id)manager
{
  v5 = MEMORY[0x1E695DFF8];
  dCopy = d;
  v7 = [manager privateDirectoryWithSubType:5 createIfNeeded:1 error:0];
  v8 = [v5 fileURLWithPath:v7 isDirectory:1];

  pLFaceMetadataExtension = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", dCopy, PLFaceMetadataExtension];

  v10 = [v8 URLByAppendingPathComponent:pLFaceMetadataExtension];

  return v10;
}

+ (BOOL)isValidPath:(id)path outPersonUUID:(id *)d
{
  pathCopy = path;
  pathExtension = [pathCopy pathExtension];
  v7 = [pathExtension isEqualToString:PLFaceMetadataExtension];
  v8 = v7;
  if (d && v7)
  {
    pathComponents = [pathCopy pathComponents];
    lastObject = [pathComponents lastObject];

    *d = [lastObject stringByDeletingPathExtension];
  }

  return v8;
}

@end