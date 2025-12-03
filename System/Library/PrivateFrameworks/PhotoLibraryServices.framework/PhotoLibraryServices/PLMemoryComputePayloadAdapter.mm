@interface PLMemoryComputePayloadAdapter
- (BOOL)isValidForJournalPersistence;
- (id)payloadForChangedKeys:(id)keys;
- (id)payloadID;
- (id)payloadIDForTombstone:(id)tombstone;
@end

@implementation PLMemoryComputePayloadAdapter

- (id)payloadIDForTombstone:(id)tombstone
{
  v3 = [tombstone objectForKeyedSubscript:@"uuid"];
  v4 = [PLJournalEntryPayloadIDFactory payloadIDWithUUIDString:v3];

  return v4;
}

- (id)payloadForChangedKeys:(id)keys
{
  keysCopy = keys;
  if ([(PLMemoryComputePayloadAdapter *)self isValidForJournalPersistence])
  {
    v5 = [(PLManagedObjectJournalEntryPayload *)[PLMemoryComputeJournalEntryPayload alloc] initWithInsertAdapter:self changedKeys:keysCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)payloadID
{
  memory = [(PLMemoryComputePayloadAdapter *)self memory];
  uuid = [memory uuid];
  v4 = [PLJournalEntryPayloadIDFactory payloadIDWithUUIDString:uuid];

  return v4;
}

- (BOOL)isValidForJournalPersistence
{
  memory = [(PLMemoryComputePayloadAdapter *)self memory];
  if ([memory pendingState] == 2)
  {
    memory2 = [(PLMemoryComputePayloadAdapter *)self memory];
    v5 = [memory2 rejected] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

@end