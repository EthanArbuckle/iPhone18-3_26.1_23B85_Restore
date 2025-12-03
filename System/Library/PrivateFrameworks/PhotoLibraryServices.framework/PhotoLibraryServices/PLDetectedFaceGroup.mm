@interface PLDetectedFaceGroup
+ (id)detectedFaceGroupWithUUID:(id)d inManagedObjectContext:(id)context;
+ (void)batchFetchFaceGroupByFaceUUIDWithFaceUUIDs:(id)ds predicate:(id)predicate library:(id)library completion:(id)completion;
- (void)awakeFromInsert;
- (void)willSave;
@end

@implementation PLDetectedFaceGroup

- (void)willSave
{
  v4.receiver = self;
  v4.super_class = PLDetectedFaceGroup;
  [(PLManagedObject *)&v4 willSave];
  if (([(PLDetectedFaceGroup *)self isDeleted]& 1) == 0)
  {
    associatedPerson = [(PLDetectedFaceGroup *)self associatedPerson];

    if (!associatedPerson)
    {
      [PLPerson createAssociatedPersonForFaceGroup:self];
    }
  }
}

- (void)awakeFromInsert
{
  v4.receiver = self;
  v4.super_class = PLDetectedFaceGroup;
  [(PLDetectedFaceGroup *)&v4 awakeFromInsert];
  uUIDString = [MEMORY[0x1E69BF320] UUIDString];
  [(PLDetectedFaceGroup *)self setUuid:uUIDString];
}

+ (void)batchFetchFaceGroupByFaceUUIDWithFaceUUIDs:(id)ds predicate:(id)predicate library:(id)library completion:(id)completion
{
  dsCopy = ds;
  libraryCopy = library;
  completionCopy = completion;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __95__PLDetectedFaceGroup_batchFetchFaceGroupByFaceUUIDWithFaceUUIDs_predicate_library_completion___block_invoke;
  v14[3] = &unk_1E7576F38;
  v15 = libraryCopy;
  v16 = dsCopy;
  v17 = completionCopy;
  v11 = completionCopy;
  v12 = dsCopy;
  v13 = libraryCopy;
  [v13 performBlockAndWait:v14];
}

void __95__PLDetectedFaceGroup_batchFetchFaceGroupByFaceUUIDWithFaceUUIDs_predicate_library_completion___block_invoke(uint64_t a1)
{
  v1 = a1;
  v32 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = MEMORY[0x1E695D5E0];
  v4 = +[PLDetectedFace entityName];
  v5 = [v3 fetchRequestWithEntityName:v4];

  [v5 setRelationshipKeyPathsForPrefetching:&unk_1F0FBF388];
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"uuid IN %@", *(v1 + 40)];
  [v5 setPredicate:v6];
  v30 = 0;
  v7 = [v2 executeFetchRequest:v5 error:&v30];
  v8 = v30;
  v9 = v8;
  if (v7)
  {
    v22 = v8;
    v23 = v6;
    v24 = v1;
    v25 = v2;
    v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v7, "count")}];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v11 = v7;
    v12 = [v11 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v27;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v27 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v26 + 1) + 8 * i);
          v17 = [v16 uuid];
          v18 = [v16 faceGroup];
          v19 = v18;
          if (v17)
          {
            v20 = v18 == 0;
          }

          else
          {
            v20 = 1;
          }

          if (!v20)
          {
            v21 = [v18 uuid];

            if (v21)
            {
              [v10 setObject:v19 forKeyedSubscript:v17];
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v13);
    }

    v1 = v24;
    v2 = v25;
    v9 = v22;
    v6 = v23;
  }

  else
  {
    v10 = 0;
  }

  (*(*(v1 + 48) + 16))();
}

+ (id)detectedFaceGroupWithUUID:(id)d inManagedObjectContext:(id)context
{
  dCopy = d;
  contextCopy = context;
  if (dCopy)
  {
    v8 = objc_autoreleasePoolPush();
    dCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"uuid", dCopy];
    v10 = MEMORY[0x1E695D5E0];
    entityName = [self entityName];
    v12 = [v10 fetchRequestWithEntityName:entityName];

    [v12 setPredicate:dCopy];
    v16 = 0;
    v13 = [contextCopy executeFetchRequest:v12 error:&v16];
    firstObject = [v13 firstObject];

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

@end