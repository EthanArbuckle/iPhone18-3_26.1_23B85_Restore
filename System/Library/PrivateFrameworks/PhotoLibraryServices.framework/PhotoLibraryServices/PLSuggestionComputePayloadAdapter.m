@interface PLSuggestionComputePayloadAdapter
- (BOOL)isValidForJournalPersistence;
- (PLSuggestionComputePayloadAdapter)initWithManagedObject:(id)a3 suggestionTypes:(id)a4;
- (id)payloadForChangedKeys:(id)a3;
- (id)payloadID;
- (id)payloadIDForTombstone:(id)a3;
@end

@implementation PLSuggestionComputePayloadAdapter

- (id)payloadIDForTombstone:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"uuid"];
  v4 = [PLJournalEntryPayloadIDFactory payloadIDWithUUIDString:v3];

  return v4;
}

- (id)payloadForChangedKeys:(id)a3
{
  v4 = a3;
  if ([(PLSuggestionComputePayloadAdapter *)self isValidForJournalPersistence])
  {
    v5 = [(PLManagedObjectJournalEntryPayload *)[PLSuggestionComputeJournalEntryPayload alloc] initWithInsertAdapter:self changedKeys:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)payloadID
{
  v2 = [(PLSuggestionComputePayloadAdapter *)self suggestion];
  v3 = [v2 uuid];
  v4 = [PLJournalEntryPayloadIDFactory payloadIDWithUUIDString:v3];

  return v4;
}

- (BOOL)isValidForJournalPersistence
{
  suggestionTypes = self->_suggestionTypes;
  v4 = MEMORY[0x1E696AD98];
  v5 = [(PLSuggestionComputePayloadAdapter *)self suggestion];
  v6 = [v4 numberWithUnsignedShort:{objc_msgSend(v5, "type")}];
  v7 = [(NSSet *)suggestionTypes containsObject:v6];

  if (v7)
  {
    v8 = [(PLSuggestionComputePayloadAdapter *)self suggestion];
    v9 = [v8 keyAssets];

    if ([v9 count] == 1)
    {
      v10 = [v9 anyObject];
      LOBYTE(v7) = [v10 trashedState] == 0;
    }

    else
    {
      LOBYTE(v7) = 0;
    }
  }

  return v7;
}

- (PLSuggestionComputePayloadAdapter)initWithManagedObject:(id)a3 suggestionTypes:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = PLSuggestionComputePayloadAdapter;
  v7 = [(PLJournalEntryPayloadUpdateAdapter *)&v11 initWithManagedObject:a3];
  if (v7)
  {
    v8 = [v6 copy];
    suggestionTypes = v7->_suggestionTypes;
    v7->_suggestionTypes = v8;
  }

  return v7;
}

@end