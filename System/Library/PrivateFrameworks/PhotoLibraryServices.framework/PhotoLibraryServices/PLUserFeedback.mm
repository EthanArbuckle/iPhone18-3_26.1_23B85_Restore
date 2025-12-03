@interface PLUserFeedback
+ (id)_userFeedbacksMatchingPredicate:(id)predicate sortDescriptors:(id)descriptors limit:(int64_t)limit inManagedObjectContext:(id)context;
+ (id)insertIntoManagedObjectContext:(id)context withDictionaryRepresentation:(id)representation;
+ (id)insertIntoManagedObjectContext:(id)context withUUID:(id)d;
+ (id)newestUserFeedbackInSet:(id)set;
+ (id)updateUserFeedback:(id)feedback withCPLSuggestionChange:(id)change inManagedObjectContext:(id)context;
+ (id)userFeedbackWithUUID:(id)d inManagedObjectContext:(id)context;
+ (id)userFeedbacksToUploadInManagedObjectContext:(id)context limit:(int64_t)limit;
+ (id)userFeedbacksWithUUIDs:(id)ds inManagedObjectContext:(id)context;
- (BOOL)_isPersonFeatureAutonamingType;
- (BOOL)_relationshipsInInvalidState;
- (BOOL)_validateNonNilUUID:(id *)d;
- (BOOL)_validateRelationshipConstraintForInsert:(BOOL)insert error:(id *)error;
- (BOOL)isValidForPersistence;
- (BOOL)supportsCloudUpload;
- (BOOL)validateForInsert:(id *)insert;
- (BOOL)validateForUpdate:(id *)update;
- (NSString)detailedDescription;
- (id)_objectUsedForPersistence;
- (id)cplSuggestionChange;
- (id)dictionaryRepresentation;
- (id)payloadForChangedKeys:(id)keys;
- (id)payloadID;
- (id)scopeIdentifier;
- (id)scopedIdentifier;
- (void)persistMetadataToFileSystemWithPathManager:(id)manager;
- (void)prepareForDeletion;
- (void)removePersistedFileSystemDataWithPathManager:(id)manager;
@end

@implementation PLUserFeedback

- (void)removePersistedFileSystemDataWithPathManager:(id)manager
{
  managerCopy = manager;
  _objectUsedForPersistence = [(PLUserFeedback *)self _objectUsedForPersistence];
  [_objectUsedForPersistence removePersistedFileSystemDataWithPathManager:managerCopy];
}

- (void)persistMetadataToFileSystemWithPathManager:(id)manager
{
  managerCopy = manager;
  _objectUsedForPersistence = [(PLUserFeedback *)self _objectUsedForPersistence];
  [_objectUsedForPersistence persistMetadataToFileSystemWithPathManager:managerCopy];
}

- (BOOL)isValidForPersistence
{
  _objectUsedForPersistence = [(PLUserFeedback *)self _objectUsedForPersistence];
  isValidForPersistence = [_objectUsedForPersistence isValidForPersistence];

  return isValidForPersistence;
}

- (id)_objectUsedForPersistence
{
  memory = [(PLUserFeedback *)self memory];

  if (memory)
  {
    memory2 = [(PLUserFeedback *)self memory];
  }

  else
  {
    person = [(PLUserFeedback *)self person];

    if (person)
    {
      memory2 = [(PLUserFeedback *)self person];
    }

    else
    {
      memory2 = 0;
    }
  }

  return memory2;
}

- (id)cplSuggestionChange
{
  v23[1] = *MEMORY[0x1E69E9840];
  scopedIdentifier = [(PLUserFeedback *)self scopedIdentifier];
  v4 = [MEMORY[0x1E6994C00] newChangeWithScopedIdentifier:scopedIdentifier changeType:0];
  [v4 setState:1];
  lastModifiedDate = [(PLUserFeedback *)self lastModifiedDate];
  [v4 setCreationDate:lastModifiedDate];

  v6 = objc_alloc_init(MEMORY[0x1E6994C18]);
  memory = [(PLUserFeedback *)self memory];

  if (!memory)
  {
    person = [(PLUserFeedback *)self person];

    if (!person)
    {
      goto LABEL_10;
    }

    [v4 setType:102];
    v8 = objc_alloc_init(MEMORY[0x1E6994C10]);
    person2 = [(PLUserFeedback *)self person];
    personUUID = [person2 personUUID];
    [v8 setPersonIdentifier:personUUID];

    [v8 setType:{-[PLUserFeedback type](self, "type")}];
    [v8 setFeature:{-[PLUserFeedback feature](self, "feature")}];
    context = [(PLUserFeedback *)self context];
    [v8 setContext:context];

    v22 = v8;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
    v19 = [v18 mutableCopy];
    [v6 setPersons:v19];

    if ([(PLUserFeedback *)self feature])
    {
      if (![(PLUserFeedback *)self _isPersonFeatureAutonamingType])
      {
        goto LABEL_9;
      }

      v20 = 1102;
    }

    else
    {
      v20 = 1101;
    }

    [v4 setSubtype:v20];
    goto LABEL_9;
  }

  [v4 setType:101];
  v8 = objc_alloc_init(MEMORY[0x1E6994C08]);
  memory2 = [(PLUserFeedback *)self memory];
  uuid = [memory2 uuid];
  [v8 setMemoryIdentifier:uuid];

  [v8 setType:{-[PLUserFeedback type](self, "type")}];
  [v8 setFeature:{-[PLUserFeedback feature](self, "feature")}];
  context2 = [(PLUserFeedback *)self context];
  [v8 setContext:context2];

  v23[0] = v8;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  v13 = [v12 mutableCopy];
  [v6 setMemorys:v13];

LABEL_9:
LABEL_10:
  [v4 setRecordList:v6];

  return v4;
}

- (id)scopedIdentifier
{
  v3 = objc_alloc(MEMORY[0x1E6994BB8]);
  scopeIdentifier = [(PLUserFeedback *)self scopeIdentifier];
  uuid = [(PLUserFeedback *)self uuid];
  v6 = [v3 initWithScopeIdentifier:scopeIdentifier identifier:uuid];

  return v6;
}

- (id)scopeIdentifier
{
  photoLibrary = [(PLManagedObject *)self photoLibrary];
  mainScopeIdentifier = [photoLibrary mainScopeIdentifier];

  return mainScopeIdentifier;
}

- (BOOL)supportsCloudUpload
{
  memory = [(PLUserFeedback *)self memory];

  if (memory)
  {
    memory2 = [(PLUserFeedback *)self memory];
LABEL_5:
    v6 = memory2;
    supportsCloudUpload = [memory2 supportsCloudUpload];

    return supportsCloudUpload;
  }

  person = [(PLUserFeedback *)self person];

  if (person)
  {
    memory2 = [(PLUserFeedback *)self person];
    goto LABEL_5;
  }

  return 0;
}

- (BOOL)_isPersonFeatureAutonamingType
{
  feature = [(PLUserFeedback *)self feature];
  if (feature != 1)
  {
    LOBYTE(feature) = [(PLUserFeedback *)self feature]== 2;
  }

  return feature;
}

- (void)prepareForDeletion
{
  v4.receiver = self;
  v4.super_class = PLUserFeedback;
  [(PLUserFeedback *)&v4 prepareForDeletion];
  managedObjectContext = [(PLUserFeedback *)self managedObjectContext];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [managedObjectContext recordCloudDeletionForObject:self];
  }
}

- (BOOL)validateForUpdate:(id *)update
{
  v7.receiver = self;
  v7.super_class = PLUserFeedback;
  v5 = [(PLUserFeedback *)&v7 validateForUpdate:?];
  if (v5)
  {
    v5 = [(PLUserFeedback *)self _validateRelationshipConstraintForInsert:0 error:update];
    if (v5)
    {
      LOBYTE(v5) = [(PLUserFeedback *)self _validateNonNilUUID:update];
    }
  }

  return v5;
}

- (BOOL)validateForInsert:(id *)insert
{
  v7.receiver = self;
  v7.super_class = PLUserFeedback;
  v5 = [(PLUserFeedback *)&v7 validateForInsert:?];
  if (v5)
  {
    v5 = [(PLUserFeedback *)self _validateRelationshipConstraintForInsert:1 error:insert];
    if (v5)
    {
      LOBYTE(v5) = [(PLUserFeedback *)self _validateNonNilUUID:insert];
    }
  }

  return v5;
}

- (BOOL)_validateNonNilUUID:(id *)d
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (MEMORY[0x19EAEE520](self, a2))
  {
    return 1;
  }

  uuid = [(PLUserFeedback *)self uuid];
  v6 = [uuid length];

  if (v6)
  {
    return 1;
  }

  if (d)
  {
    v8 = MEMORY[0x1E696ABC0];
    v9 = *MEMORY[0x1E69BFF48];
    v15 = *MEMORY[0x1E696A578];
    v16[0] = @"Attempting to insert/update UserFeedback with nil UUID";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    *d = [v8 errorWithDomain:v9 code:71001 userInfo:v10];
  }

  v11 = PLBackendGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    detailedDescription = [(PLUserFeedback *)self detailedDescription];
    v13 = 138412290;
    v14 = detailedDescription;
    _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "Attempting to insert/update UserFeedback with nil UUID: %@", &v13, 0xCu);
  }

  return 0;
}

- (BOOL)_validateRelationshipConstraintForInsert:(BOOL)insert error:(id *)error
{
  insertCopy = insert;
  v14 = *MEMORY[0x1E69E9840];
  if ([(PLUserFeedback *)self _relationshipsInInvalidState:insert])
  {
    v6 = PLBackendGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      if (insertCopy)
      {
        v7 = @"insert";
      }

      else
      {
        v7 = @"update";
      }

      detailedDescription = [(PLUserFeedback *)self detailedDescription];
      v10 = 138412546;
      v11 = v7;
      v12 = 2112;
      v13 = detailedDescription;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_FAULT, "Attempting to %@ an orphaned UserFeedback. An UserFeedback object should always have a Person or Memory relationship set: %@", &v10, 0x16u);
    }
  }

  return 1;
}

- (BOOL)_relationshipsInInvalidState
{
  person = [(PLUserFeedback *)self person];
  if (person)
  {
    memory = [(PLUserFeedback *)self memory];
    if (memory)
    {
      v5 = 1;
LABEL_9:

      goto LABEL_10;
    }
  }

  person2 = [(PLUserFeedback *)self person];
  if (person2)
  {
    v5 = 0;
  }

  else
  {
    memory2 = [(PLUserFeedback *)self memory];
    v5 = memory2 == 0;
  }

  if (person)
  {
    memory = 0;
    goto LABEL_9;
  }

LABEL_10:

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  uuid = [(PLUserFeedback *)self uuid];

  if (uuid)
  {
    uuid2 = [(PLUserFeedback *)self uuid];
    [v3 setObject:uuid2 forKeyedSubscript:@"PLUserFeedbackUUID"];
  }

  if ([(PLUserFeedback *)self type])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithShort:{-[PLUserFeedback type](self, "type")}];
    [v3 setObject:v6 forKeyedSubscript:@"PLUserFeedbackType"];
  }

  if ([(PLUserFeedback *)self feature])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithShort:{-[PLUserFeedback feature](self, "feature")}];
    [v3 setObject:v7 forKeyedSubscript:@"PLUserFeedbackFeature"];
  }

  if ([(PLUserFeedback *)self creationType])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithShort:{-[PLUserFeedback creationType](self, "creationType")}];
    [v3 setObject:v8 forKeyedSubscript:@"PLUserFeedbackCreationType"];
  }

  context = [(PLUserFeedback *)self context];

  if (context)
  {
    context2 = [(PLUserFeedback *)self context];
    [v3 setObject:context2 forKeyedSubscript:@"PLUserFeedbackContext"];
  }

  lastModifiedDate = [(PLUserFeedback *)self lastModifiedDate];

  if (lastModifiedDate)
  {
    lastModifiedDate2 = [(PLUserFeedback *)self lastModifiedDate];
    [v3 setObject:lastModifiedDate2 forKeyedSubscript:@"PLUserFeedbackLastModifiedDate"];
  }

  return v3;
}

- (NSString)detailedDescription
{
  v16 = MEMORY[0x1E696AEC0];
  pl_shortDescription = [(NSManagedObject *)self pl_shortDescription];
  uuid = [(PLUserFeedback *)self uuid];
  memory = [(PLUserFeedback *)self memory];
  uuid2 = [memory uuid];
  person = [(PLUserFeedback *)self person];
  personUUID = [person personUUID];
  type = [(PLUserFeedback *)self type];
  feature = [(PLUserFeedback *)self feature];
  creationType = [(PLUserFeedback *)self creationType];
  context = [(PLUserFeedback *)self context];
  lastModifiedDate = [(PLUserFeedback *)self lastModifiedDate];
  v12 = [v16 stringWithFormat:@"%@ - UUID %@, Memory %@, Person %@, type %hd, feature %hd, crearionType %hd, context %@, lastModifiedDate %@, isDeleted:%d", pl_shortDescription, uuid, uuid2, personUUID, type, feature, creationType, context, lastModifiedDate, -[PLUserFeedback isDeleted](self, "isDeleted")];

  return v12;
}

+ (id)userFeedbacksToUploadInManagedObjectContext:(id)context limit:(int64_t)limit
{
  v26[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"cloudLocalState", 0];
  v8 = MEMORY[0x1E696AEB0];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", @"lastModifiedDate"];
  v10 = [v8 sortDescriptorWithKey:v9 ascending:0];
  v26[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];

  v12 = [self _userFeedbacksMatchingPredicate:v7 sortDescriptors:v11 limit:limit inManagedObjectContext:contextCopy];
  v13 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v12, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v14 = v12;
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

        v19 = *(*(&v21 + 1) + 8 * i);
        if ([v19 supportsCloudUpload])
        {
          [v13 addObject:v19];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v16);
  }

  return v13;
}

+ (id)updateUserFeedback:(id)feedback withCPLSuggestionChange:(id)change inManagedObjectContext:(id)context
{
  v38 = *MEMORY[0x1E69E9840];
  feedbackCopy = feedback;
  changeCopy = change;
  contextCopy = context;
  if (!feedbackCopy)
  {
    v18 = 0;
    goto LABEL_40;
  }

  creationDate = [changeCopy creationDate];
  [feedbackCopy setLastModifiedDate:creationDate];

  [feedbackCopy setCloudLocalState:1];
  recordList = [changeCopy recordList];
  if ([recordList memorysCount])
  {
    memorys = [recordList memorys];
    firstObject = [memorys firstObject];

    [feedbackCopy setType:{-[NSObject type](firstObject, "type")}];
    [feedbackCopy setFeature:{-[NSObject feature](firstObject, "feature")}];
    context = [firstObject context];
    [feedbackCopy setContext:context];

    memoryIdentifier = [firstObject memoryIdentifier];
    photoLibrary = [contextCopy photoLibrary];
    v17 = [PLMemory memoryWithUUID:memoryIdentifier inPhotoLibrary:photoLibrary];

    if (v17)
    {
      [feedbackCopy setMemory:v17];
      goto LABEL_9;
    }

    if (*MEMORY[0x1E6994D48])
    {
LABEL_33:

LABEL_34:
      if ((*MEMORY[0x1E6994D48] & 1) == 0)
      {
        v33 = __CPLAssetsdOSLogDomain();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          detailedDescription = [feedbackCopy detailedDescription];
          *v36 = 138412290;
          *&v36[4] = detailedDescription;
          _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_ERROR, "Deleting UserFeedback in updateUserFeedback:withCPLSuggestionChange:inManagedObjectContext: %@", v36, 0xCu);
        }
      }

      goto LABEL_38;
    }

    v30 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      detailedDescription2 = [feedbackCopy detailedDescription];
      *v36 = 138412802;
      *&v36[4] = memoryIdentifier;
      *&v36[12] = 2112;
      *&v36[14] = changeCopy;
      *&v36[22] = 2112;
      v37 = detailedDescription2;
      v32 = "Failed to find the right PLMemory %@ to associate CPLSuggestion %@ change with, deleting PLUserFeedback %@";
LABEL_31:
      _os_log_impl(&dword_19BF1F000, v30, OS_LOG_TYPE_ERROR, v32, v36, 0x20u);

      goto LABEL_32;
    }

    goto LABEL_32;
  }

  if ([recordList personsCount])
  {
    persons = [recordList persons];
    firstObject = [persons firstObject];

    [feedbackCopy setType:{-[NSObject type](firstObject, "type")}];
    [feedbackCopy setFeature:{-[NSObject feature](firstObject, "feature")}];
    context2 = [firstObject context];
    [feedbackCopy setContext:context2];

    memoryIdentifier = [firstObject personIdentifier];
    v21 = [PLPerson personWithUUID:memoryIdentifier inManagedObjectContext:contextCopy];
    if (v21)
    {
      v17 = v21;
      [feedbackCopy setPerson:v21];
LABEL_9:

      if (![feedbackCopy _relationshipsInInvalidState])
      {
        person = [feedbackCopy person];
        if (person)
        {
          v26 = person;
          _isPersonFeatureAutonamingType = [feedbackCopy _isPersonFeatureAutonamingType];

          if (_isPersonFeatureAutonamingType)
          {
            if ((*MEMORY[0x1E6994D48] & 1) == 0)
            {
              v28 = __CPLAssetsdOSLogDomain();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
              {
                detailedDescription3 = [feedbackCopy detailedDescription];
                *v36 = 138412290;
                *&v36[4] = detailedDescription3;
                _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_DEFAULT, "Posting darwin notification for autonaming user feedback %@", v36, 0xCu);
              }
            }

            pl_notify_post_with_retry();
          }
        }

        v18 = feedbackCopy;
        goto LABEL_39;
      }

      if ((*MEMORY[0x1E6994D48] & 1) == 0)
      {
        firstObject = __CPLAssetsdOSLogDomain();
        if (!os_log_type_enabled(firstObject, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_34;
        }

        memoryIdentifier = [feedbackCopy detailedDescription];
        *v36 = 138412290;
        *&v36[4] = memoryIdentifier;
        v22 = "UserFeedback relationships are in an invalid state, deleting PLUserFeedback %@";
        v23 = firstObject;
        v24 = 12;
LABEL_27:
        _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_ERROR, v22, v36, v24);
        goto LABEL_33;
      }

      goto LABEL_38;
    }

    if (*MEMORY[0x1E6994D48])
    {
      goto LABEL_33;
    }

    v30 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      detailedDescription2 = [feedbackCopy detailedDescription];
      *v36 = 138412802;
      *&v36[4] = memoryIdentifier;
      *&v36[12] = 2112;
      *&v36[14] = changeCopy;
      *&v36[22] = 2112;
      v37 = detailedDescription2;
      v32 = "Failed to find the right PLPerson %@ to associate CPLSuggestion %@ change with, deleting PLUserFeedback %@";
      goto LABEL_31;
    }

LABEL_32:

    goto LABEL_33;
  }

  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    firstObject = __CPLAssetsdOSLogDomain();
    if (!os_log_type_enabled(firstObject, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_34;
    }

    memoryIdentifier = [feedbackCopy detailedDescription];
    *v36 = 138412546;
    *&v36[4] = changeCopy;
    *&v36[12] = 2112;
    *&v36[14] = memoryIdentifier;
    v22 = "Failed to find any PLMemory or PLPerson entries in record list to associate CPLSuggestion %@ change with, deleting PLUserFeedback %@";
    v23 = firstObject;
    v24 = 22;
    goto LABEL_27;
  }

LABEL_38:
  [contextCopy deleteObject:{feedbackCopy, *v36, *&v36[16], v37}];
  v18 = 0;
LABEL_39:

LABEL_40:

  return v18;
}

+ (id)newestUserFeedbackInSet:(id)set
{
  v9[1] = *MEMORY[0x1E69E9840];
  setCopy = set;
  if ([setCopy count])
  {
    v4 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"lastModifiedDate" ascending:0];
    v9[0] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    v6 = [setCopy sortedArrayUsingDescriptors:v5];

    firstObject = [v6 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

+ (id)userFeedbacksWithUUIDs:(id)ds inManagedObjectContext:(id)context
{
  v6 = MEMORY[0x1E696AE18];
  contextCopy = context;
  v8 = [v6 predicateWithFormat:@"%K IN %@", @"uuid", ds];
  v9 = [self _userFeedbacksMatchingPredicate:v8 sortDescriptors:0 limit:0 inManagedObjectContext:contextCopy];

  return v9;
}

+ (id)userFeedbackWithUUID:(id)d inManagedObjectContext:(id)context
{
  v6 = MEMORY[0x1E696AE18];
  contextCopy = context;
  v8 = [v6 predicateWithFormat:@"%K == %@", @"uuid", d];
  v9 = [self _userFeedbacksMatchingPredicate:v8 sortDescriptors:0 limit:1 inManagedObjectContext:contextCopy];

  firstObject = [v9 firstObject];

  return firstObject;
}

+ (id)insertIntoManagedObjectContext:(id)context withDictionaryRepresentation:(id)representation
{
  contextCopy = context;
  representationCopy = representation;
  v8 = [representationCopy objectForKeyedSubscript:@"PLUserFeedbackUUID"];

  if (v8)
  {
    v9 = [representationCopy objectForKeyedSubscript:@"PLUserFeedbackUUID"];
    v10 = [self insertIntoManagedObjectContext:contextCopy withUUID:v9];

    if (v10)
    {
      v11 = [representationCopy objectForKeyedSubscript:@"PLUserFeedbackType"];
      intValue = [v11 intValue];

      if (intValue)
      {
        [v10 setType:intValue];
      }

      v13 = [representationCopy objectForKeyedSubscript:@"PLUserFeedbackFeature"];
      intValue2 = [v13 intValue];

      if (intValue2)
      {
        [v10 setFeature:intValue2];
      }

      v15 = [representationCopy objectForKeyedSubscript:@"PLUserFeedbackCreationType"];
      intValue3 = [v15 intValue];

      if (intValue3)
      {
        [v10 setCreationType:intValue3];
      }

      v17 = [representationCopy objectForKeyedSubscript:@"PLUserFeedbackContext"];
      if (v17)
      {
        [v10 setContext:v17];
      }

      v18 = [representationCopy objectForKeyedSubscript:@"PLUserFeedbackLastModifiedDate"];
      if (v18)
      {
        [v10 setLastModifiedDate:v18];
      }

      v19 = v10;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)insertIntoManagedObjectContext:(id)context withUUID:(id)d
{
  dCopy = d;
  contextCopy = context;
  entityName = [self entityName];
  v9 = PLSafeInsertNewObjectForEntityForNameInManagedObjectContext(entityName, contextCopy, 0);

  [v9 setUuid:dCopy];
  [v9 setCreationType:1];

  return v9;
}

+ (id)_userFeedbacksMatchingPredicate:(id)predicate sortDescriptors:(id)descriptors limit:(int64_t)limit inManagedObjectContext:(id)context
{
  v25 = *MEMORY[0x1E69E9840];
  descriptorsCopy = descriptors;
  contextCopy = context;
  v12 = MEMORY[0x1E695D5E0];
  predicateCopy = predicate;
  entityName = [self entityName];
  v15 = [v12 fetchRequestWithEntityName:entityName];

  [v15 setFetchBatchSize:100];
  [v15 setPredicate:predicateCopy];

  if (descriptorsCopy)
  {
    [v15 setSortDescriptors:descriptorsCopy];
  }

  if (limit >= 1)
  {
    [v15 setFetchLimit:limit];
  }

  v22 = 0;
  v16 = [contextCopy executeFetchRequest:v15 error:&v22];
  v17 = v22;
  if (v16)
  {
    array = v16;
  }

  else
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v18 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v24 = v17;
        _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, "Failed to fetch user feedbacks: %@", buf, 0xCu);
      }
    }

    array = [MEMORY[0x1E695DEC8] array];
  }

  v20 = array;

  return v20;
}

- (id)payloadForChangedKeys:(id)keys
{
  keysCopy = keys;
  memory = [(PLUserFeedback *)self memory];

  if (memory)
  {
    memory2 = [(PLUserFeedback *)self memory];
    if ([memory2 isValidForPersistence])
    {
      v7 = off_1E7560278;
LABEL_7:
      v9 = [objc_alloc(*v7) initWithUserFeedback:self changedKeys:keysCopy];
LABEL_9:

      goto LABEL_10;
    }

    goto LABEL_8;
  }

  person = [(PLUserFeedback *)self person];

  if (person)
  {
    memory2 = [(PLUserFeedback *)self person];
    if ([memory2 isValidForPersistence])
    {
      v7 = off_1E75609F0;
      goto LABEL_7;
    }

LABEL_8:
    v9 = 0;
    goto LABEL_9;
  }

  v9 = 0;
LABEL_10:

  return v9;
}

- (id)payloadID
{
  memory = [(PLUserFeedback *)self memory];

  if (memory)
  {
    memory2 = [(PLUserFeedback *)self memory];
    uuid = [memory2 uuid];
LABEL_5:
    v7 = uuid;
    v8 = [PLJournalEntryPayloadIDFactory payloadIDWithUUIDString:uuid];

    goto LABEL_6;
  }

  person = [(PLUserFeedback *)self person];

  if (person)
  {
    memory2 = [(PLUserFeedback *)self person];
    uuid = [memory2 personUUID];
    goto LABEL_5;
  }

  v8 = 0;
LABEL_6:

  return v8;
}

@end