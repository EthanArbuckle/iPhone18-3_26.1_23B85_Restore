@interface PLDetectionTrait
+ (BOOL)isPetDetectionType:(signed __int16)type;
+ (id)fetchDetectionTraitByFaceUUIDWithFaceUUIDs:(id)ds library:(id)library error:(id *)error;
+ (id)insertIntoManagedObjectContext:(id)context type:(signed __int16)type value:(signed __int16)value score:(double)score startTime:(double)time duration:(double)duration thumbnailIdentifier:(id)identifier;
- (id)debugLogDescription;
- (void)_touchPersonForPersistenceIfNeeded;
- (void)willSave;
@end

@implementation PLDetectionTrait

- (id)debugLogDescription
{
  v3 = +[PLDescriptionBuilder plainDescriptionBuilder];
  v4 = [(PLDetectionTrait *)self type]- 1;
  if (v4 > 3u)
  {
    v5 = @"unknown";
  }

  else
  {
    v5 = off_1E756B570[v4];
  }

  [v3 appendName:@"type" object:v5];
  [v3 appendName:@"value" integerValue:{-[PLDetectionTrait value](self, "value")}];
  [(PLDetectionTrait *)self score];
  [v3 appendName:@"score" doubleValue:?];
  [(PLDetectionTrait *)self startTime];
  [v3 appendName:@"startTime" doubleValue:?];
  [(PLDetectionTrait *)self duration];
  [v3 appendName:@"duration" doubleValue:?];
  thumbnailIdentifier = [(PLDetectionTrait *)self thumbnailIdentifier];
  [v3 appendName:@"thumbID" object:thumbnailIdentifier];

  build = [v3 build];

  return build;
}

- (void)_touchPersonForPersistenceIfNeeded
{
  pathManager = [(PLManagedObject *)self pathManager];
  isDCIM = [pathManager isDCIM];

  if (isDCIM)
  {
    detection = [(PLDetectionTrait *)self detection];
    v5 = [detection associatedPersonForFaceOrTorso:1 orTemporal:0];
    if (([v5 isInserted] & 1) == 0 && (objc_msgSend(v5, "isUpdated") & 1) == 0)
    {
      [v5 setEffectiveVerifiedType:{objc_msgSend(v5, "verifiedType")}];
    }
  }
}

- (void)willSave
{
  v4.receiver = self;
  v4.super_class = PLDetectionTrait;
  [(PLManagedObject *)&v4 willSave];
  managedObjectContext = [(PLDetectionTrait *)self managedObjectContext];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    PLPlatformSearchSupported();
    [(PLDetectionTrait *)self _touchPersonForPersistenceIfNeeded];
  }
}

+ (BOOL)isPetDetectionType:(signed __int16)type
{
  typeCopy = type;
  if (type == 2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLDetectionTrait.m" lineNumber:131 description:{@"Invalid parameter not satisfying: %@", @"detectionType != PLDetectionTypePet"}];
  }

  return typeCopy > 2;
}

+ (id)fetchDetectionTraitByFaceUUIDWithFaceUUIDs:(id)ds library:(id)library error:(id *)error
{
  dsCopy = ds;
  libraryCopy = library;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__35113;
  v30 = __Block_byref_object_dispose__35114;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__35113;
  v24 = __Block_byref_object_dispose__35114;
  v25 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __77__PLDetectionTrait_fetchDetectionTraitByFaceUUIDWithFaceUUIDs_library_error___block_invoke;
  v15[3] = &unk_1E7578898;
  v9 = libraryCopy;
  v16 = v9;
  v10 = dsCopy;
  v17 = v10;
  v18 = &v20;
  v19 = &v26;
  [v9 performBlockAndWait:v15];
  v11 = v27[5];
  v12 = v21[5];
  if (!v11 && error)
  {
    v12 = v12;
    *error = v12;
  }

  v13 = v27[5];
  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v26, 8);

  return v13;
}

void __77__PLDetectionTrait_fetchDetectionTraitByFaceUUIDWithFaceUUIDs_library_error___block_invoke(uint64_t a1)
{
  v35[2] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = MEMORY[0x1E695D5E0];
  v4 = +[PLDetectedFace entityName];
  v5 = [v3 fetchRequestWithEntityName:v4];

  v35[0] = @"%K";
  v35[1] = @"detectionTraits";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];
  [v5 setRelationshipKeyPathsForPrefetching:v6];

  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"uuid", *(a1 + 40)];
  [v5 setPredicate:v7];
  v8 = *(*(a1 + 48) + 8);
  obj = *(v8 + 40);
  v9 = [v2 executeFetchRequest:v5 error:&obj];
  objc_storeStrong((v8 + 40), obj);
  if (v9)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v25 objects:v34 count:16];
    if (v11)
    {
      v12 = v11;
      v23 = v7;
      v24 = v2;
      v13 = *v26;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v26 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v25 + 1) + 8 * i);
          v16 = [v15 uuid];
          v17 = [v15 detectionTraits];
          v18 = [v17 allObjects];

          if (v16)
          {
            v19 = v18 == 0;
          }

          else
          {
            v19 = 1;
          }

          if (!v19)
          {
            [*(*(*(a1 + 56) + 8) + 40) setObject:v18 forKeyedSubscript:v16];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v25 objects:v34 count:16];
      }

      while (v12);
      v7 = v23;
      v2 = v24;
    }
  }

  else
  {
    v20 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 136315394;
      v31 = "+[PLDetectionTrait fetchDetectionTraitByFaceUUIDWithFaceUUIDs:library:error:]_block_invoke";
      v32 = 2112;
      v33 = v21;
      _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_ERROR, "%s: Failed to execute face fetch: %@", buf, 0x16u);
    }

    v22 = *(*(a1 + 56) + 8);
    v10 = *(v22 + 40);
    *(v22 + 40) = 0;
  }
}

+ (id)insertIntoManagedObjectContext:(id)context type:(signed __int16)type value:(signed __int16)value score:(double)score startTime:(double)time duration:(double)duration thumbnailIdentifier:(id)identifier
{
  valueCopy = value;
  typeCopy = type;
  contextCopy = context;
  identifierCopy = identifier;
  if (contextCopy)
  {
    entityName = [self entityName];
    [MEMORY[0x1E695D5B8] insertNewObjectForEntityForName:entityName inManagedObjectContext:contextCopy];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLDetectionTrait.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"moc"}];

    entityName = [self entityName];
    PLSafeInsertNewObjectForEntityForNameInManagedObjectContext(entityName, 0, 0);
  }
  v20 = ;

  [v20 setType:typeCopy];
  [v20 setValue:valueCopy];
  [v20 setScore:score];
  [v20 setStartTime:time];
  [v20 setDuration:duration];
  if (identifierCopy)
  {
    [v20 setThumbnailIdentifier:identifierCopy];
  }

  return v20;
}

@end