@interface PLDetectionTrait
+ (BOOL)isPetDetectionType:(signed __int16)a3;
+ (id)fetchDetectionTraitByFaceUUIDWithFaceUUIDs:(id)a3 library:(id)a4 error:(id *)a5;
+ (id)insertIntoManagedObjectContext:(id)a3 type:(signed __int16)a4 value:(signed __int16)a5 score:(double)a6 startTime:(double)a7 duration:(double)a8 thumbnailIdentifier:(id)a9;
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
  v6 = [(PLDetectionTrait *)self thumbnailIdentifier];
  [v3 appendName:@"thumbID" object:v6];

  v7 = [v3 build];

  return v7;
}

- (void)_touchPersonForPersistenceIfNeeded
{
  v3 = [(PLManagedObject *)self pathManager];
  v4 = [v3 isDCIM];

  if (v4)
  {
    v6 = [(PLDetectionTrait *)self detection];
    v5 = [v6 associatedPersonForFaceOrTorso:1 orTemporal:0];
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
  v3 = [(PLDetectionTrait *)self managedObjectContext];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    PLPlatformSearchSupported();
    [(PLDetectionTrait *)self _touchPersonForPersistenceIfNeeded];
  }
}

+ (BOOL)isPetDetectionType:(signed __int16)a3
{
  v3 = a3;
  if (a3 == 2)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:a1 file:@"PLDetectionTrait.m" lineNumber:131 description:{@"Invalid parameter not satisfying: %@", @"detectionType != PLDetectionTypePet"}];
  }

  return v3 > 2;
}

+ (id)fetchDetectionTraitByFaceUUIDWithFaceUUIDs:(id)a3 library:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__35113;
  v30 = __Block_byref_object_dispose__35114;
  v31 = [MEMORY[0x1E695DF90] dictionary];
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
  v9 = v8;
  v16 = v9;
  v10 = v7;
  v17 = v10;
  v18 = &v20;
  v19 = &v26;
  [v9 performBlockAndWait:v15];
  v11 = v27[5];
  v12 = v21[5];
  if (!v11 && a5)
  {
    v12 = v12;
    *a5 = v12;
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

+ (id)insertIntoManagedObjectContext:(id)a3 type:(signed __int16)a4 value:(signed __int16)a5 score:(double)a6 startTime:(double)a7 duration:(double)a8 thumbnailIdentifier:(id)a9
{
  v13 = a5;
  v14 = a4;
  v17 = a3;
  v18 = a9;
  if (v17)
  {
    v19 = [a1 entityName];
    [MEMORY[0x1E695D5B8] insertNewObjectForEntityForName:v19 inManagedObjectContext:v17];
  }

  else
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:a1 file:@"PLDetectionTrait.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"moc"}];

    v19 = [a1 entityName];
    PLSafeInsertNewObjectForEntityForNameInManagedObjectContext(v19, 0, 0);
  }
  v20 = ;

  [v20 setType:v14];
  [v20 setValue:v13];
  [v20 setScore:a6];
  [v20 setStartTime:a7];
  [v20 setDuration:a8];
  if (v18)
  {
    [v20 setThumbnailIdentifier:v18];
  }

  return v20;
}

@end