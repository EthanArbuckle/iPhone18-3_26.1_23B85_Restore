@interface PLAmbientSuggestionComputePayloadAdapter
- (id)payloadForChangedKeys:(id)a3;
@end

@implementation PLAmbientSuggestionComputePayloadAdapter

- (id)payloadForChangedKeys:(id)a3
{
  v4 = a3;
  if ([(PLSuggestionComputePayloadAdapter *)self isValidForJournalPersistence])
  {
    v5 = [(PLManagedObjectJournalEntryPayload *)[PLAmbientSuggestionComputeJournalEntryPayload alloc] initWithInsertAdapter:self changedKeys:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end