@interface PLDetectedFaceComputePayloadAdapter
- (BOOL)isValidForJournalPersistence;
- (id)payloadForChangedKeys:(id)keys;
- (id)payloadID;
- (id)payloadIDForTombstone:(id)tombstone;
@end

@implementation PLDetectedFaceComputePayloadAdapter

- (id)payloadIDForTombstone:(id)tombstone
{
  v3 = [tombstone objectForKeyedSubscript:@"uuid"];
  v4 = [PLJournalEntryPayloadIDFactory payloadIDWithUUIDString:v3];

  return v4;
}

- (id)payloadForChangedKeys:(id)keys
{
  keysCopy = keys;
  if ([(PLDetectedFaceComputePayloadAdapter *)self isValidForJournalPersistence])
  {
    v5 = [(PLManagedObjectJournalEntryPayload *)[PLDetectedFaceComputeJournalEntryPayload alloc] initWithInsertAdapter:self changedKeys:keysCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)payloadID
{
  face = [(PLDetectedFaceComputePayloadAdapter *)self face];
  uuid = [face uuid];
  v4 = [PLJournalEntryPayloadIDFactory payloadIDWithUUIDString:uuid];

  return v4;
}

- (BOOL)isValidForJournalPersistence
{
  face = [(PLDetectedFaceComputePayloadAdapter *)self face];
  assetForFace = [face assetForFace];
  if (!assetForFace)
  {
    v9 = 0;
LABEL_9:

    return v9;
  }

  v5 = assetForFace;
  face2 = [(PLDetectedFaceComputePayloadAdapter *)self face];
  assetForFace2 = [face2 assetForFace];
  trashedState = [assetForFace2 trashedState];

  if (!trashedState)
  {
    face = [(PLDetectedFaceComputePayloadAdapter *)self face];
    personForFace = [face personForFace];
    if (personForFace)
    {
      face3 = [(PLDetectedFaceComputePayloadAdapter *)self face];
      personForFace2 = [face3 personForFace];
      v9 = [personForFace2 verifiedType] != 0;
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