@interface PLUserFeedback
+ (id)_userFeedbacksMatchingPredicate:(id)a3 sortDescriptors:(id)a4 limit:(int64_t)a5 inManagedObjectContext:(id)a6;
+ (id)insertIntoManagedObjectContext:(id)a3 withDictionaryRepresentation:(id)a4;
+ (id)insertIntoManagedObjectContext:(id)a3 withUUID:(id)a4;
+ (id)newestUserFeedbackInSet:(id)a3;
+ (id)updateUserFeedback:(id)a3 withCPLSuggestionChange:(id)a4 inManagedObjectContext:(id)a5;
+ (id)userFeedbackWithUUID:(id)a3 inManagedObjectContext:(id)a4;
+ (id)userFeedbacksToUploadInManagedObjectContext:(id)a3 limit:(int64_t)a4;
+ (id)userFeedbacksWithUUIDs:(id)a3 inManagedObjectContext:(id)a4;
- (BOOL)_isPersonFeatureAutonamingType;
- (BOOL)_relationshipsInInvalidState;
- (BOOL)_validateNonNilUUID:(id *)a3;
- (BOOL)_validateRelationshipConstraintForInsert:(BOOL)a3 error:(id *)a4;
- (BOOL)isValidForPersistence;
- (BOOL)supportsCloudUpload;
- (BOOL)validateForInsert:(id *)a3;
- (BOOL)validateForUpdate:(id *)a3;
- (NSString)detailedDescription;
- (id)_objectUsedForPersistence;
- (id)cplSuggestionChange;
- (id)dictionaryRepresentation;
- (id)payloadForChangedKeys:(id)a3;
- (id)payloadID;
- (id)scopeIdentifier;
- (id)scopedIdentifier;
- (void)persistMetadataToFileSystemWithPathManager:(id)a3;
- (void)prepareForDeletion;
- (void)removePersistedFileSystemDataWithPathManager:(id)a3;
@end

@implementation PLUserFeedback

- (void)removePersistedFileSystemDataWithPathManager:(id)a3
{
  v4 = a3;
  v5 = [(PLUserFeedback *)self _objectUsedForPersistence];
  [v5 removePersistedFileSystemDataWithPathManager:v4];
}

- (void)persistMetadataToFileSystemWithPathManager:(id)a3
{
  v4 = a3;
  v5 = [(PLUserFeedback *)self _objectUsedForPersistence];
  [v5 persistMetadataToFileSystemWithPathManager:v4];
}

- (BOOL)isValidForPersistence
{
  v2 = [(PLUserFeedback *)self _objectUsedForPersistence];
  v3 = [v2 isValidForPersistence];

  return v3;
}

- (id)_objectUsedForPersistence
{
  v3 = [(PLUserFeedback *)self memory];

  if (v3)
  {
    v4 = [(PLUserFeedback *)self memory];
  }

  else
  {
    v5 = [(PLUserFeedback *)self person];

    if (v5)
    {
      v4 = [(PLUserFeedback *)self person];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (id)cplSuggestionChange
{
  v23[1] = *MEMORY[0x1E69E9840];
  v3 = [(PLUserFeedback *)self scopedIdentifier];
  v4 = [MEMORY[0x1E6994C00] newChangeWithScopedIdentifier:v3 changeType:0];
  [v4 setState:1];
  v5 = [(PLUserFeedback *)self lastModifiedDate];
  [v4 setCreationDate:v5];

  v6 = objc_alloc_init(MEMORY[0x1E6994C18]);
  v7 = [(PLUserFeedback *)self memory];

  if (!v7)
  {
    v14 = [(PLUserFeedback *)self person];

    if (!v14)
    {
      goto LABEL_10;
    }

    [v4 setType:102];
    v8 = objc_alloc_init(MEMORY[0x1E6994C10]);
    v15 = [(PLUserFeedback *)self person];
    v16 = [v15 personUUID];
    [v8 setPersonIdentifier:v16];

    [v8 setType:{-[PLUserFeedback type](self, "type")}];
    [v8 setFeature:{-[PLUserFeedback feature](self, "feature")}];
    v17 = [(PLUserFeedback *)self context];
    [v8 setContext:v17];

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
  v9 = [(PLUserFeedback *)self memory];
  v10 = [v9 uuid];
  [v8 setMemoryIdentifier:v10];

  [v8 setType:{-[PLUserFeedback type](self, "type")}];
  [v8 setFeature:{-[PLUserFeedback feature](self, "feature")}];
  v11 = [(PLUserFeedback *)self context];
  [v8 setContext:v11];

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
  v4 = [(PLUserFeedback *)self scopeIdentifier];
  v5 = [(PLUserFeedback *)self uuid];
  v6 = [v3 initWithScopeIdentifier:v4 identifier:v5];

  return v6;
}

- (id)scopeIdentifier
{
  v2 = [(PLManagedObject *)self photoLibrary];
  v3 = [v2 mainScopeIdentifier];

  return v3;
}

- (BOOL)supportsCloudUpload
{
  v3 = [(PLUserFeedback *)self memory];

  if (v3)
  {
    v4 = [(PLUserFeedback *)self memory];
LABEL_5:
    v6 = v4;
    v7 = [v4 supportsCloudUpload];

    return v7;
  }

  v5 = [(PLUserFeedback *)self person];

  if (v5)
  {
    v4 = [(PLUserFeedback *)self person];
    goto LABEL_5;
  }

  return 0;
}

- (BOOL)_isPersonFeatureAutonamingType
{
  v3 = [(PLUserFeedback *)self feature];
  if (v3 != 1)
  {
    LOBYTE(v3) = [(PLUserFeedback *)self feature]== 2;
  }

  return v3;
}

- (void)prepareForDeletion
{
  v4.receiver = self;
  v4.super_class = PLUserFeedback;
  [(PLUserFeedback *)&v4 prepareForDeletion];
  v3 = [(PLUserFeedback *)self managedObjectContext];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 recordCloudDeletionForObject:self];
  }
}

- (BOOL)validateForUpdate:(id *)a3
{
  v7.receiver = self;
  v7.super_class = PLUserFeedback;
  v5 = [(PLUserFeedback *)&v7 validateForUpdate:?];
  if (v5)
  {
    v5 = [(PLUserFeedback *)self _validateRelationshipConstraintForInsert:0 error:a3];
    if (v5)
    {
      LOBYTE(v5) = [(PLUserFeedback *)self _validateNonNilUUID:a3];
    }
  }

  return v5;
}

- (BOOL)validateForInsert:(id *)a3
{
  v7.receiver = self;
  v7.super_class = PLUserFeedback;
  v5 = [(PLUserFeedback *)&v7 validateForInsert:?];
  if (v5)
  {
    v5 = [(PLUserFeedback *)self _validateRelationshipConstraintForInsert:1 error:a3];
    if (v5)
    {
      LOBYTE(v5) = [(PLUserFeedback *)self _validateNonNilUUID:a3];
    }
  }

  return v5;
}

- (BOOL)_validateNonNilUUID:(id *)a3
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (MEMORY[0x19EAEE520](self, a2))
  {
    return 1;
  }

  v5 = [(PLUserFeedback *)self uuid];
  v6 = [v5 length];

  if (v6)
  {
    return 1;
  }

  if (a3)
  {
    v8 = MEMORY[0x1E696ABC0];
    v9 = *MEMORY[0x1E69BFF48];
    v15 = *MEMORY[0x1E696A578];
    v16[0] = @"Attempting to insert/update UserFeedback with nil UUID";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    *a3 = [v8 errorWithDomain:v9 code:71001 userInfo:v10];
  }

  v11 = PLBackendGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = [(PLUserFeedback *)self detailedDescription];
    v13 = 138412290;
    v14 = v12;
    _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "Attempting to insert/update UserFeedback with nil UUID: %@", &v13, 0xCu);
  }

  return 0;
}

- (BOOL)_validateRelationshipConstraintForInsert:(BOOL)a3 error:(id *)a4
{
  v4 = a3;
  v14 = *MEMORY[0x1E69E9840];
  if ([(PLUserFeedback *)self _relationshipsInInvalidState:a3])
  {
    v6 = PLBackendGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      if (v4)
      {
        v7 = @"insert";
      }

      else
      {
        v7 = @"update";
      }

      v8 = [(PLUserFeedback *)self detailedDescription];
      v10 = 138412546;
      v11 = v7;
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_FAULT, "Attempting to %@ an orphaned UserFeedback. An UserFeedback object should always have a Person or Memory relationship set: %@", &v10, 0x16u);
    }
  }

  return 1;
}

- (BOOL)_relationshipsInInvalidState
{
  v3 = [(PLUserFeedback *)self person];
  if (v3)
  {
    v4 = [(PLUserFeedback *)self memory];
    if (v4)
    {
      v5 = 1;
LABEL_9:

      goto LABEL_10;
    }
  }

  v6 = [(PLUserFeedback *)self person];
  if (v6)
  {
    v5 = 0;
  }

  else
  {
    v7 = [(PLUserFeedback *)self memory];
    v5 = v7 == 0;
  }

  if (v3)
  {
    v4 = 0;
    goto LABEL_9;
  }

LABEL_10:

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(PLUserFeedback *)self uuid];

  if (v4)
  {
    v5 = [(PLUserFeedback *)self uuid];
    [v3 setObject:v5 forKeyedSubscript:@"PLUserFeedbackUUID"];
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

  v9 = [(PLUserFeedback *)self context];

  if (v9)
  {
    v10 = [(PLUserFeedback *)self context];
    [v3 setObject:v10 forKeyedSubscript:@"PLUserFeedbackContext"];
  }

  v11 = [(PLUserFeedback *)self lastModifiedDate];

  if (v11)
  {
    v12 = [(PLUserFeedback *)self lastModifiedDate];
    [v3 setObject:v12 forKeyedSubscript:@"PLUserFeedbackLastModifiedDate"];
  }

  return v3;
}

- (NSString)detailedDescription
{
  v16 = MEMORY[0x1E696AEC0];
  v15 = [(NSManagedObject *)self pl_shortDescription];
  v14 = [(PLUserFeedback *)self uuid];
  v3 = [(PLUserFeedback *)self memory];
  v4 = [v3 uuid];
  v5 = [(PLUserFeedback *)self person];
  v6 = [v5 personUUID];
  v7 = [(PLUserFeedback *)self type];
  v8 = [(PLUserFeedback *)self feature];
  v9 = [(PLUserFeedback *)self creationType];
  v10 = [(PLUserFeedback *)self context];
  v11 = [(PLUserFeedback *)self lastModifiedDate];
  v12 = [v16 stringWithFormat:@"%@ - UUID %@, Memory %@, Person %@, type %hd, feature %hd, crearionType %hd, context %@, lastModifiedDate %@, isDeleted:%d", v15, v14, v4, v6, v7, v8, v9, v10, v11, -[PLUserFeedback isDeleted](self, "isDeleted")];

  return v12;
}

+ (id)userFeedbacksToUploadInManagedObjectContext:(id)a3 limit:(int64_t)a4
{
  v26[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"cloudLocalState", 0];
  v8 = MEMORY[0x1E696AEB0];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", @"lastModifiedDate"];
  v10 = [v8 sortDescriptorWithKey:v9 ascending:0];
  v26[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];

  v12 = [a1 _userFeedbacksMatchingPredicate:v7 sortDescriptors:v11 limit:a4 inManagedObjectContext:v6];
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

+ (id)updateUserFeedback:(id)a3 withCPLSuggestionChange:(id)a4 inManagedObjectContext:(id)a5
{
  v38 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (!v7)
  {
    v18 = 0;
    goto LABEL_40;
  }

  v10 = [v8 creationDate];
  [v7 setLastModifiedDate:v10];

  [v7 setCloudLocalState:1];
  v11 = [v8 recordList];
  if ([v11 memorysCount])
  {
    v12 = [v11 memorys];
    v13 = [v12 firstObject];

    [v7 setType:{-[NSObject type](v13, "type")}];
    [v7 setFeature:{-[NSObject feature](v13, "feature")}];
    v14 = [v13 context];
    [v7 setContext:v14];

    v15 = [v13 memoryIdentifier];
    v16 = [v9 photoLibrary];
    v17 = [PLMemory memoryWithUUID:v15 inPhotoLibrary:v16];

    if (v17)
    {
      [v7 setMemory:v17];
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
          v34 = [v7 detailedDescription];
          *v36 = 138412290;
          *&v36[4] = v34;
          _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_ERROR, "Deleting UserFeedback in updateUserFeedback:withCPLSuggestionChange:inManagedObjectContext: %@", v36, 0xCu);
        }
      }

      goto LABEL_38;
    }

    v30 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = [v7 detailedDescription];
      *v36 = 138412802;
      *&v36[4] = v15;
      *&v36[12] = 2112;
      *&v36[14] = v8;
      *&v36[22] = 2112;
      v37 = v31;
      v32 = "Failed to find the right PLMemory %@ to associate CPLSuggestion %@ change with, deleting PLUserFeedback %@";
LABEL_31:
      _os_log_impl(&dword_19BF1F000, v30, OS_LOG_TYPE_ERROR, v32, v36, 0x20u);

      goto LABEL_32;
    }

    goto LABEL_32;
  }

  if ([v11 personsCount])
  {
    v19 = [v11 persons];
    v13 = [v19 firstObject];

    [v7 setType:{-[NSObject type](v13, "type")}];
    [v7 setFeature:{-[NSObject feature](v13, "feature")}];
    v20 = [v13 context];
    [v7 setContext:v20];

    v15 = [v13 personIdentifier];
    v21 = [PLPerson personWithUUID:v15 inManagedObjectContext:v9];
    if (v21)
    {
      v17 = v21;
      [v7 setPerson:v21];
LABEL_9:

      if (![v7 _relationshipsInInvalidState])
      {
        v25 = [v7 person];
        if (v25)
        {
          v26 = v25;
          v27 = [v7 _isPersonFeatureAutonamingType];

          if (v27)
          {
            if ((*MEMORY[0x1E6994D48] & 1) == 0)
            {
              v28 = __CPLAssetsdOSLogDomain();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
              {
                v29 = [v7 detailedDescription];
                *v36 = 138412290;
                *&v36[4] = v29;
                _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_DEFAULT, "Posting darwin notification for autonaming user feedback %@", v36, 0xCu);
              }
            }

            pl_notify_post_with_retry();
          }
        }

        v18 = v7;
        goto LABEL_39;
      }

      if ((*MEMORY[0x1E6994D48] & 1) == 0)
      {
        v13 = __CPLAssetsdOSLogDomain();
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_34;
        }

        v15 = [v7 detailedDescription];
        *v36 = 138412290;
        *&v36[4] = v15;
        v22 = "UserFeedback relationships are in an invalid state, deleting PLUserFeedback %@";
        v23 = v13;
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
      v31 = [v7 detailedDescription];
      *v36 = 138412802;
      *&v36[4] = v15;
      *&v36[12] = 2112;
      *&v36[14] = v8;
      *&v36[22] = 2112;
      v37 = v31;
      v32 = "Failed to find the right PLPerson %@ to associate CPLSuggestion %@ change with, deleting PLUserFeedback %@";
      goto LABEL_31;
    }

LABEL_32:

    goto LABEL_33;
  }

  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v13 = __CPLAssetsdOSLogDomain();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_34;
    }

    v15 = [v7 detailedDescription];
    *v36 = 138412546;
    *&v36[4] = v8;
    *&v36[12] = 2112;
    *&v36[14] = v15;
    v22 = "Failed to find any PLMemory or PLPerson entries in record list to associate CPLSuggestion %@ change with, deleting PLUserFeedback %@";
    v23 = v13;
    v24 = 22;
    goto LABEL_27;
  }

LABEL_38:
  [v9 deleteObject:{v7, *v36, *&v36[16], v37}];
  v18 = 0;
LABEL_39:

LABEL_40:

  return v18;
}

+ (id)newestUserFeedbackInSet:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 count])
  {
    v4 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"lastModifiedDate" ascending:0];
    v9[0] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    v6 = [v3 sortedArrayUsingDescriptors:v5];

    v7 = [v6 firstObject];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)userFeedbacksWithUUIDs:(id)a3 inManagedObjectContext:(id)a4
{
  v6 = MEMORY[0x1E696AE18];
  v7 = a4;
  v8 = [v6 predicateWithFormat:@"%K IN %@", @"uuid", a3];
  v9 = [a1 _userFeedbacksMatchingPredicate:v8 sortDescriptors:0 limit:0 inManagedObjectContext:v7];

  return v9;
}

+ (id)userFeedbackWithUUID:(id)a3 inManagedObjectContext:(id)a4
{
  v6 = MEMORY[0x1E696AE18];
  v7 = a4;
  v8 = [v6 predicateWithFormat:@"%K == %@", @"uuid", a3];
  v9 = [a1 _userFeedbacksMatchingPredicate:v8 sortDescriptors:0 limit:1 inManagedObjectContext:v7];

  v10 = [v9 firstObject];

  return v10;
}

+ (id)insertIntoManagedObjectContext:(id)a3 withDictionaryRepresentation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 objectForKeyedSubscript:@"PLUserFeedbackUUID"];

  if (v8)
  {
    v9 = [v7 objectForKeyedSubscript:@"PLUserFeedbackUUID"];
    v10 = [a1 insertIntoManagedObjectContext:v6 withUUID:v9];

    if (v10)
    {
      v11 = [v7 objectForKeyedSubscript:@"PLUserFeedbackType"];
      v12 = [v11 intValue];

      if (v12)
      {
        [v10 setType:v12];
      }

      v13 = [v7 objectForKeyedSubscript:@"PLUserFeedbackFeature"];
      v14 = [v13 intValue];

      if (v14)
      {
        [v10 setFeature:v14];
      }

      v15 = [v7 objectForKeyedSubscript:@"PLUserFeedbackCreationType"];
      v16 = [v15 intValue];

      if (v16)
      {
        [v10 setCreationType:v16];
      }

      v17 = [v7 objectForKeyedSubscript:@"PLUserFeedbackContext"];
      if (v17)
      {
        [v10 setContext:v17];
      }

      v18 = [v7 objectForKeyedSubscript:@"PLUserFeedbackLastModifiedDate"];
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

+ (id)insertIntoManagedObjectContext:(id)a3 withUUID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 entityName];
  v9 = PLSafeInsertNewObjectForEntityForNameInManagedObjectContext(v8, v7, 0);

  [v9 setUuid:v6];
  [v9 setCreationType:1];

  return v9;
}

+ (id)_userFeedbacksMatchingPredicate:(id)a3 sortDescriptors:(id)a4 limit:(int64_t)a5 inManagedObjectContext:(id)a6
{
  v25 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a6;
  v12 = MEMORY[0x1E695D5E0];
  v13 = a3;
  v14 = [a1 entityName];
  v15 = [v12 fetchRequestWithEntityName:v14];

  [v15 setFetchBatchSize:100];
  [v15 setPredicate:v13];

  if (v10)
  {
    [v15 setSortDescriptors:v10];
  }

  if (a5 >= 1)
  {
    [v15 setFetchLimit:a5];
  }

  v22 = 0;
  v16 = [v11 executeFetchRequest:v15 error:&v22];
  v17 = v22;
  if (v16)
  {
    v19 = v16;
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

    v19 = [MEMORY[0x1E695DEC8] array];
  }

  v20 = v19;

  return v20;
}

- (id)payloadForChangedKeys:(id)a3
{
  v4 = a3;
  v5 = [(PLUserFeedback *)self memory];

  if (v5)
  {
    v6 = [(PLUserFeedback *)self memory];
    if ([v6 isValidForPersistence])
    {
      v7 = off_1E7560278;
LABEL_7:
      v9 = [objc_alloc(*v7) initWithUserFeedback:self changedKeys:v4];
LABEL_9:

      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v8 = [(PLUserFeedback *)self person];

  if (v8)
  {
    v6 = [(PLUserFeedback *)self person];
    if ([v6 isValidForPersistence])
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
  v3 = [(PLUserFeedback *)self memory];

  if (v3)
  {
    v4 = [(PLUserFeedback *)self memory];
    v5 = [v4 uuid];
LABEL_5:
    v7 = v5;
    v8 = [PLJournalEntryPayloadIDFactory payloadIDWithUUIDString:v5];

    goto LABEL_6;
  }

  v6 = [(PLUserFeedback *)self person];

  if (v6)
  {
    v4 = [(PLUserFeedback *)self person];
    v5 = [v4 personUUID];
    goto LABEL_5;
  }

  v8 = 0;
LABEL_6:

  return v8;
}

@end