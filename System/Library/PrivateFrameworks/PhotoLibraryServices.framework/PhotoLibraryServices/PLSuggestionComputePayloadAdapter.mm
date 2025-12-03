@interface PLSuggestionComputePayloadAdapter
- (BOOL)isValidForJournalPersistence;
- (PLSuggestionComputePayloadAdapter)initWithManagedObject:(id)object suggestionTypes:(id)types;
- (id)payloadForChangedKeys:(id)keys;
- (id)payloadID;
- (id)payloadIDForTombstone:(id)tombstone;
@end

@implementation PLSuggestionComputePayloadAdapter

- (id)payloadIDForTombstone:(id)tombstone
{
  v3 = [tombstone objectForKeyedSubscript:@"uuid"];
  v4 = [PLJournalEntryPayloadIDFactory payloadIDWithUUIDString:v3];

  return v4;
}

- (id)payloadForChangedKeys:(id)keys
{
  keysCopy = keys;
  if ([(PLSuggestionComputePayloadAdapter *)self isValidForJournalPersistence])
  {
    v5 = [(PLManagedObjectJournalEntryPayload *)[PLSuggestionComputeJournalEntryPayload alloc] initWithInsertAdapter:self changedKeys:keysCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)payloadID
{
  suggestion = [(PLSuggestionComputePayloadAdapter *)self suggestion];
  uuid = [suggestion uuid];
  v4 = [PLJournalEntryPayloadIDFactory payloadIDWithUUIDString:uuid];

  return v4;
}

- (BOOL)isValidForJournalPersistence
{
  suggestionTypes = self->_suggestionTypes;
  v4 = MEMORY[0x1E696AD98];
  suggestion = [(PLSuggestionComputePayloadAdapter *)self suggestion];
  v6 = [v4 numberWithUnsignedShort:{objc_msgSend(suggestion, "type")}];
  v7 = [(NSSet *)suggestionTypes containsObject:v6];

  if (v7)
  {
    suggestion2 = [(PLSuggestionComputePayloadAdapter *)self suggestion];
    keyAssets = [suggestion2 keyAssets];

    if ([keyAssets count] == 1)
    {
      anyObject = [keyAssets anyObject];
      LOBYTE(v7) = [anyObject trashedState] == 0;
    }

    else
    {
      LOBYTE(v7) = 0;
    }
  }

  return v7;
}

- (PLSuggestionComputePayloadAdapter)initWithManagedObject:(id)object suggestionTypes:(id)types
{
  typesCopy = types;
  v11.receiver = self;
  v11.super_class = PLSuggestionComputePayloadAdapter;
  v7 = [(PLJournalEntryPayloadUpdateAdapter *)&v11 initWithManagedObject:object];
  if (v7)
  {
    v8 = [typesCopy copy];
    suggestionTypes = v7->_suggestionTypes;
    v7->_suggestionTypes = v8;
  }

  return v7;
}

@end