@interface PLAmbientSuggestionComputePayloadAdapter
- (id)payloadForChangedKeys:(id)keys;
@end

@implementation PLAmbientSuggestionComputePayloadAdapter

- (id)payloadForChangedKeys:(id)keys
{
  keysCopy = keys;
  if ([(PLSuggestionComputePayloadAdapter *)self isValidForJournalPersistence])
  {
    v5 = [(PLManagedObjectJournalEntryPayload *)[PLAmbientSuggestionComputeJournalEntryPayload alloc] initWithInsertAdapter:self changedKeys:keysCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end