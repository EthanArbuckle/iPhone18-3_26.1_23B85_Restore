@interface PLDetectedFaceComputePayloadAdapter
- (BOOL)isValidForJournalPersistence;
- (id)payloadForChangedKeys:(id)a3;
- (id)payloadID;
- (id)payloadIDForTombstone:(id)a3;
@end

@implementation PLDetectedFaceComputePayloadAdapter

- (id)payloadIDForTombstone:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"uuid"];
  v4 = [PLJournalEntryPayloadIDFactory payloadIDWithUUIDString:v3];

  return v4;
}

- (id)payloadForChangedKeys:(id)a3
{
  v4 = a3;
  if ([(PLDetectedFaceComputePayloadAdapter *)self isValidForJournalPersistence])
  {
    v5 = [(PLManagedObjectJournalEntryPayload *)[PLDetectedFaceComputeJournalEntryPayload alloc] initWithInsertAdapter:self changedKeys:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)payloadID
{
  v2 = [(PLDetectedFaceComputePayloadAdapter *)self face];
  v3 = [v2 uuid];
  v4 = [PLJournalEntryPayloadIDFactory payloadIDWithUUIDString:v3];

  return v4;
}

- (BOOL)isValidForJournalPersistence
{
  v3 = [(PLDetectedFaceComputePayloadAdapter *)self face];
  v4 = [v3 assetForFace];
  if (!v4)
  {
    v9 = 0;
LABEL_9:

    return v9;
  }

  v5 = v4;
  v6 = [(PLDetectedFaceComputePayloadAdapter *)self face];
  v7 = [v6 assetForFace];
  v8 = [v7 trashedState];

  if (!v8)
  {
    v3 = [(PLDetectedFaceComputePayloadAdapter *)self face];
    v10 = [v3 personForFace];
    if (v10)
    {
      v11 = [(PLDetectedFaceComputePayloadAdapter *)self face];
      v12 = [v11 personForFace];
      v9 = [v12 verifiedType] != 0;
    }

    else
    {
      v9 = 0;
    }

    goto LABEL_9;
  }

  return 0;
}

@end