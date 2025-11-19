@interface PLAmbientSuggestionComputeJournalEntryPayload
+ (BOOL)isValidForPersistenceWithObjectDictionary:(id)a3 additionalEntityName:(id)a4;
+ (id)payloadAdapterForManagedObject:(id)a3;
+ (id)payloadClassID;
+ (id)snapshotSortDescriptors;
@end

@implementation PLAmbientSuggestionComputeJournalEntryPayload

+ (BOOL)isValidForPersistenceWithObjectDictionary:(id)a3 additionalEntityName:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 supportedSuggestionTypes];
  LOBYTE(a1) = [a1 isValidForPersistenceWithObjectDictionary:v7 additionalEntityName:v6 suggestionTypes:v8];

  return a1;
}

+ (id)payloadAdapterForManagedObject:(id)a3
{
  v4 = a3;
  v5 = [PLAmbientSuggestionComputePayloadAdapter alloc];
  v6 = [a1 supportedSuggestionTypes];
  v7 = [(PLSuggestionComputePayloadAdapter *)v5 initWithManagedObject:v4 suggestionTypes:v6];

  return v7;
}

+ (id)snapshotSortDescriptors
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:0];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

+ (id)payloadClassID
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [a1 entityName];
  v4 = [v2 stringWithFormat:@"Ambient%@Compute", v3];

  return v4;
}

@end