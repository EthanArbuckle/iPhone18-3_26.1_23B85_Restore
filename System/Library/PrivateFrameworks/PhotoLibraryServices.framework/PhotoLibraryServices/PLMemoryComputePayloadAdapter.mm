@interface PLMemoryComputePayloadAdapter
- (BOOL)isValidForJournalPersistence;
- (id)payloadForChangedKeys:(id)a3;
- (id)payloadID;
- (id)payloadIDForTombstone:(id)a3;
@end

@implementation PLMemoryComputePayloadAdapter

- (id)payloadIDForTombstone:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"uuid"];
  v4 = [PLJournalEntryPayloadIDFactory payloadIDWithUUIDString:v3];

  return v4;
}

- (id)payloadForChangedKeys:(id)a3
{
  v4 = a3;
  if ([(PLMemoryComputePayloadAdapter *)self isValidForJournalPersistence])
  {
    v5 = [(PLManagedObjectJournalEntryPayload *)[PLMemoryComputeJournalEntryPayload alloc] initWithInsertAdapter:self changedKeys:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)payloadID
{
  v2 = [(PLMemoryComputePayloadAdapter *)self memory];
  v3 = [v2 uuid];
  v4 = [PLJournalEntryPayloadIDFactory payloadIDWithUUIDString:v3];

  return v4;
}

- (BOOL)isValidForJournalPersistence
{
  v3 = [(PLMemoryComputePayloadAdapter *)self memory];
  if ([v3 pendingState] == 2)
  {
    v4 = [(PLMemoryComputePayloadAdapter *)self memory];
    v5 = [v4 rejected] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

@end