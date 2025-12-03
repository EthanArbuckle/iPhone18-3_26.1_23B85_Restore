@interface PLAmbientSuggestionComputeJournalEntryPayload
+ (BOOL)isValidForPersistenceWithObjectDictionary:(id)dictionary additionalEntityName:(id)name;
+ (id)payloadAdapterForManagedObject:(id)object;
+ (id)payloadClassID;
+ (id)snapshotSortDescriptors;
@end

@implementation PLAmbientSuggestionComputeJournalEntryPayload

+ (BOOL)isValidForPersistenceWithObjectDictionary:(id)dictionary additionalEntityName:(id)name
{
  nameCopy = name;
  dictionaryCopy = dictionary;
  supportedSuggestionTypes = [self supportedSuggestionTypes];
  LOBYTE(self) = [self isValidForPersistenceWithObjectDictionary:dictionaryCopy additionalEntityName:nameCopy suggestionTypes:supportedSuggestionTypes];

  return self;
}

+ (id)payloadAdapterForManagedObject:(id)object
{
  objectCopy = object;
  v5 = [PLAmbientSuggestionComputePayloadAdapter alloc];
  supportedSuggestionTypes = [self supportedSuggestionTypes];
  v7 = [(PLSuggestionComputePayloadAdapter *)v5 initWithManagedObject:objectCopy suggestionTypes:supportedSuggestionTypes];

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
  entityName = [self entityName];
  v4 = [v2 stringWithFormat:@"Ambient%@Compute", entityName];

  return v4;
}

@end