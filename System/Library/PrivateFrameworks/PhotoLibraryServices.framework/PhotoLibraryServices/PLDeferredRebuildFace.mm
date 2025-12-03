@interface PLDeferredRebuildFace
+ (id)deferredFacesWithAssetCloudGUID:(id)d inManagedObjectContext:(id)context;
- (id)payloadForChangedKeys:(id)keys;
- (id)payloadID;
- (id)payloadIDForTombstone:(id)tombstone;
- (id)payloadIDsByPayloadClassIDToDeleteOnInsert;
@end

@implementation PLDeferredRebuildFace

- (id)payloadIDsByPayloadClassIDToDeleteOnInsert
{
  v9[1] = *MEMORY[0x1E69E9840];
  faceUUID = [(PLDeferredRebuildFace *)self faceUUID];
  v3 = [PLJournalEntryPayloadIDFactory payloadIDWithUUIDString:faceUUID];

  if (v3)
  {
    v4 = +[PLDetectedFaceJournalEntryPayload payloadClassID];
    v8 = v4;
    v5 = [MEMORY[0x1E695DFD8] setWithObject:v3];
    v9[0] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)payloadIDForTombstone:(id)tombstone
{
  v3 = [tombstone objectForKeyedSubscript:@"uuid"];
  v4 = [PLJournalEntryPayloadIDFactory payloadIDWithUUIDString:v3];

  return v4;
}

- (id)payloadForChangedKeys:(id)keys
{
  keysCopy = keys;
  uuid = [(PLDeferredRebuildFace *)self uuid];
  if (uuid)
  {
    v6 = [(PLManagedObjectJournalEntryPayload *)[PLDeferredRebuildFaceJournalEntryPayload alloc] initWithManagedObject:self changedKeys:keysCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)payloadID
{
  uuid = [(PLDeferredRebuildFace *)self uuid];
  v3 = [PLJournalEntryPayloadIDFactory payloadIDWithUUIDString:uuid];

  return v3;
}

+ (id)deferredFacesWithAssetCloudGUID:(id)d inManagedObjectContext:(id)context
{
  dCopy = d;
  contextCopy = context;
  if (dCopy)
  {
    v9 = dCopy;
    v10 = contextCopy;
    v7 = pl_result_with_autoreleasepool();
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  return v7;
}

id __80__PLDeferredRebuildFace_deferredFacesWithAssetCloudGUID_inManagedObjectContext___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695D5E0];
  v3 = [*(a1 + 48) entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"assetCloudGUID", *(a1 + 32)];
  [v4 setPredicate:v5];
  [v4 setReturnsObjectsAsFaults:0];
  [v4 setFetchBatchSize:100];
  v6 = *(a1 + 40);
  v11 = 0;
  v7 = [v6 executeFetchRequest:v4 error:&v11];
  v8 = v11;
  if (!v7)
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v9 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v13 = v8;
        _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "Error fetching rebuild faces: %@", buf, 0xCu);
      }
    }

    v7 = MEMORY[0x1E695E0F0];
  }

  return v7;
}

@end