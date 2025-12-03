@interface PLFetchingAlbumJournalEntryPayload
+ (BOOL)isValidForPersistenceWithObjectDictionary:(id)dictionary additionalEntityName:(id)name;
+ (id)modelProperties;
+ (id)nonPersistedModelPropertiesDescription;
+ (id)persistedPropertyNamesForEntityNames;
- (id)insertAlbumFromDataInManagedObjectContext:(id)context;
- (void)_fixHasLocationSmartAlbum;
- (void)migrateMergedPayloadWithUpdatePayloads:(id)payloads;
@end

@implementation PLFetchingAlbumJournalEntryPayload

+ (BOOL)isValidForPersistenceWithObjectDictionary:(id)dictionary additionalEntityName:(id)name
{
  dictionaryCopy = dictionary;
  v5 = +[PLFetchingAlbum validKindsForPersistence];
  v6 = [dictionaryCopy objectForKeyedSubscript:@"kind"];

  LOBYTE(dictionaryCopy) = [v5 containsObject:v6];
  return dictionaryCopy;
}

+ (id)persistedPropertyNamesForEntityNames
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__PLFetchingAlbumJournalEntryPayload_persistedPropertyNamesForEntityNames__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (persistedPropertyNamesForEntityNames_onceToken_53643 != -1)
  {
    dispatch_once(&persistedPropertyNamesForEntityNames_onceToken_53643, block);
  }

  v2 = persistedPropertyNamesForEntityNames_persistedPropertyNamesForEntityNames_53644;

  return v2;
}

void __74__PLFetchingAlbumJournalEntryPayload_persistedPropertyNamesForEntityNames__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) persistedPropertyNamesForEntityNamesFromModelProperties];
  v2 = persistedPropertyNamesForEntityNames_persistedPropertyNamesForEntityNames_53644;
  persistedPropertyNamesForEntityNames_persistedPropertyNamesForEntityNames_53644 = v1;
}

+ (id)modelProperties
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__PLFetchingAlbumJournalEntryPayload_modelProperties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (modelProperties_onceToken_53645 != -1)
  {
    dispatch_once(&modelProperties_onceToken_53645, block);
  }

  v2 = modelProperties_modelProperties_53646;

  return v2;
}

uint64_t __53__PLFetchingAlbumJournalEntryPayload_modelProperties__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) modelPropertiesDescription];
  v3 = modelProperties_modelProperties_53646;
  modelProperties_modelProperties_53646 = v2;

  v4 = *(a1 + 32);
  v5 = modelProperties_modelProperties_53646;

  return [v4 loadModelPropertiesDescription:v5 parentPayloadProperty:0];
}

+ (id)nonPersistedModelPropertiesDescription
{
  v13[3] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E695DF90]);
  v11.receiver = self;
  v11.super_class = &OBJC_METACLASS___PLFetchingAlbumJournalEntryPayload;
  v4 = objc_msgSendSuper2(&v11, sel_nonPersistedModelPropertiesDescription);
  v5 = [v3 initWithDictionary:v4];

  v12[0] = @"customQueryParameters";
  v6 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v13[0] = v6;
  v12[1] = @"customQueryType";
  v7 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v13[1] = v7;
  v12[2] = @"searchIndexRebuildState";
  v8 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v13[2] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  [v5 addEntriesFromDictionary:v9];

  return v5;
}

- (void)migrateMergedPayloadWithUpdatePayloads:(id)payloads
{
  payloadsCopy = payloads;
  if ([(PLManagedObjectJournalEntryPayload *)self payloadVersion]<= 1)
  {
    [(PLFetchingAlbumJournalEntryPayload *)self _fixHasLocationSmartAlbum];
  }

  v5.receiver = self;
  v5.super_class = PLFetchingAlbumJournalEntryPayload;
  [(PLManagedObjectJournalEntryPayload *)&v5 migrateMergedPayloadWithUpdatePayloads:payloadsCopy];
}

- (id)insertAlbumFromDataInManagedObjectContext:(id)context
{
  photoLibrary = [context photoLibrary];
  v4 = [PLGenericAlbum insertNewSmartAlbumIntoLibrary:photoLibrary];

  return v4;
}

- (void)_fixHasLocationSmartAlbum
{
  userQueryData = [(PLGenericAlbumJournalEntryPayload *)self userQueryData];
  v3 = [PLQueryHandler constructQueryFromData:?];
  if ([PLQueryHandler fixUserQueryDataInQuery:v3])
  {
    v4 = [PLQueryHandler dataFromQuery:v3];
    [(PLGenericAlbumJournalEntryPayload *)self setUserQueryData:v4];
  }
}

@end