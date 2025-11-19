@interface PLAlbumJournalEntryPayload
+ (BOOL)isValidForPersistenceWithObjectDictionary:(id)a3 additionalEntityName:(id)a4;
+ (id)modelProperties;
+ (id)modelPropertiesDescription;
+ (id)nonPersistedModelPropertiesDescription;
+ (id)persistedPropertyNamesForEntityNames;
- (BOOL)comparePayloadValue:(id)a3 toObjectDictionaryValue:(id)a4 forPayloadProperty:(id)a5;
- (BOOL)updatePayloadAttributes:(id)a3 andNilAttributes:(id)a4 withManagedObject:(id)a5 forPayloadProperty:(id)a6;
- (NSOrderedSet)assetUUIDs;
- (id)insertAlbumFromDataInManagedObjectContext:(id)a3;
- (id)payloadValueFromAttributes:(id)a3 forPayloadProperty:(id)a4;
- (void)appendAttributeKey:(id)a3 value:(id)a4 toDescriptionBuilder:(id)a5;
- (void)updateAlbum:(id)a3 includePendingChanges:(BOOL)a4;
@end

@implementation PLAlbumJournalEntryPayload

+ (BOOL)isValidForPersistenceWithObjectDictionary:(id)a3 additionalEntityName:(id)a4
{
  v4 = a3;
  v5 = +[PLManagedAlbum validKindsForPersistence];
  v6 = [v4 objectForKeyedSubscript:@"kind"];

  LOBYTE(v4) = [v5 containsObject:v6];
  return v4;
}

+ (id)persistedPropertyNamesForEntityNames
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__PLAlbumJournalEntryPayload_persistedPropertyNamesForEntityNames__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (persistedPropertyNamesForEntityNames_onceToken_97226 != -1)
  {
    dispatch_once(&persistedPropertyNamesForEntityNames_onceToken_97226, block);
  }

  v2 = persistedPropertyNamesForEntityNames_persistedPropertyNamesForEntityNames_97227;

  return v2;
}

void __66__PLAlbumJournalEntryPayload_persistedPropertyNamesForEntityNames__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) persistedPropertyNamesForEntityNamesFromModelProperties];
  v2 = persistedPropertyNamesForEntityNames_persistedPropertyNamesForEntityNames_97227;
  persistedPropertyNamesForEntityNames_persistedPropertyNamesForEntityNames_97227 = v1;
}

+ (id)modelProperties
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__PLAlbumJournalEntryPayload_modelProperties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (modelProperties_onceToken_97228 != -1)
  {
    dispatch_once(&modelProperties_onceToken_97228, block);
  }

  v2 = modelProperties_modelProperties_97229;

  return v2;
}

uint64_t __45__PLAlbumJournalEntryPayload_modelProperties__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) modelPropertiesDescription];
  v3 = modelProperties_modelProperties_97229;
  modelProperties_modelProperties_97229 = v2;

  v4 = *(a1 + 32);
  v5 = modelProperties_modelProperties_97229;

  return [v4 loadModelPropertiesDescription:v5 parentPayloadProperty:0];
}

+ (id)nonPersistedModelPropertiesDescription
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E695DF90]);
  v9.receiver = a1;
  v9.super_class = &OBJC_METACLASS___PLAlbumJournalEntryPayload;
  v4 = objc_msgSendSuper2(&v9, sel_nonPersistedModelPropertiesDescription);
  v5 = [v3 initWithDictionary:v4];

  v10 = @"searchIndexRebuildState";
  v6 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v11[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  [v5 addEntriesFromDictionary:v7];

  return v5;
}

+ (id)modelPropertiesDescription
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E695DF90]);
  v10.receiver = a1;
  v10.super_class = &OBJC_METACLASS___PLAlbumJournalEntryPayload;
  v4 = objc_msgSendSuper2(&v10, sel_modelPropertiesDescription);
  v5 = [v3 initWithDictionary:v4];

  v11 = @"assets";
  v6 = [MEMORY[0x1E695DFD8] setWithObject:@"uuid"];
  v7 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"assets" relatedEntityPropertyNames:v6 shouldPrefetchRelationship:0];

  v12[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  [v5 addEntriesFromDictionary:v8];

  return v5;
}

- (BOOL)comparePayloadValue:(id)a3 toObjectDictionaryValue:(id)a4 forPayloadProperty:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  if ([v9 isEqualToKey:@"assets"])
  {
    v11 = [MEMORY[0x1E695DFB8] orderedSetWithArray:v10];

    v12 = [v11 isEqualToOrderedSet:v8];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = PLAlbumJournalEntryPayload;
    v12 = [(PLGenericAlbumJournalEntryPayload *)&v14 comparePayloadValue:v8 toObjectDictionaryValue:v10 forPayloadProperty:v9];
  }

  return v12;
}

- (void)updateAlbum:(id)a3 includePendingChanges:(BOOL)a4
{
  v4 = a4;
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v20.receiver = self;
  v20.super_class = PLAlbumJournalEntryPayload;
  [(PLGenericAlbumJournalEntryPayload *)&v20 updateAlbum:v6 includePendingChanges:v4];
  v7 = [(PLAlbumJournalEntryPayload *)self assetUUIDs];
  v8 = objc_opt_class();
  v9 = [v6 assets];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __64__PLAlbumJournalEntryPayload_updateAlbum_includePendingChanges___block_invoke;
  v16[3] = &unk_1E7574BC0;
  v19 = v4;
  v10 = v7;
  v17 = v10;
  v11 = v6;
  v18 = v11;
  v12 = [v8 sortedObjectsToAddWithUUIDs:v10 uuidKey:@"uuid" andExistingObjects:v9 fetchBlock:v16];

  if (v12)
  {
    v13 = PLMigrationGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v11 uuid];
      *buf = 138412546;
      v22 = v14;
      v23 = 2112;
      v24 = v10;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "Updating assets in album %@ to match persisted UUID ordering from %@", buf, 0x16u);
    }

    v15 = [v11 mutableAssets];
    [v15 addObjectsFromArray:v12];
  }
}

id __64__PLAlbumJournalEntryPayload_updateAlbum_includePendingChanges___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) array];
  v4 = [*(a1 + 40) managedObjectContext];
  v5 = [PLManagedAsset assetsWithUUIDs:v3 options:v2 | 2 inManagedObjectContext:v4];

  return v5;
}

- (id)insertAlbumFromDataInManagedObjectContext:(id)a3
{
  v4 = a3;
  v5 = [(PLGenericAlbumJournalEntryPayload *)self kind];
  v6 = [v5 intValue];
  v7 = [(PLGenericAlbumJournalEntryPayload *)self title];
  v8 = [v4 photoLibrary];

  v9 = [PLGenericAlbum insertNewAlbumWithKind:v6 title:v7 intoLibrary:v8];

  return v9;
}

- (NSOrderedSet)assetUUIDs
{
  v3 = [(NSMutableDictionary *)self->super.super._payloadAttributes objectForKeyedSubscript:@"assets"];
  v4 = [(PLManagedObjectJournalEntryPayload *)self orderedSetForUUIDEncodedData:v3];

  return v4;
}

- (id)payloadValueFromAttributes:(id)a3 forPayloadProperty:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 isEqualToKey:@"assets"])
  {
    v8 = [v7 key];

    v9 = [v6 objectForKeyedSubscript:v8];
    v10 = [(PLManagedObjectJournalEntryPayload *)self orderedSetForUUIDEncodedData:v9];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = PLAlbumJournalEntryPayload;
    v10 = [(PLGenericAlbumJournalEntryPayload *)&v12 payloadValueFromAttributes:v6 forPayloadProperty:v7];
  }

  return v10;
}

- (void)appendAttributeKey:(id)a3 value:(id)a4 toDescriptionBuilder:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  if ([v8 isEqualToString:@"assets"])
  {
    v11 = [(PLManagedObjectJournalEntryPayload *)self orderedSetForUUIDEncodedData:v10];

    v13.receiver = self;
    v13.super_class = PLAlbumJournalEntryPayload;
    [(PLGenericAlbumJournalEntryPayload *)&v13 appendAttributeKey:v8 value:v11 toDescriptionBuilder:v9];
    v10 = v11;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = PLAlbumJournalEntryPayload;
    [(PLGenericAlbumJournalEntryPayload *)&v12 appendAttributeKey:v8 value:v10 toDescriptionBuilder:v9];
  }
}

- (BOOL)updatePayloadAttributes:(id)a3 andNilAttributes:(id)a4 withManagedObject:(id)a5 forPayloadProperty:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([v13 isEqualToKey:@"assets"])
  {
    v14 = [objc_opt_class() fetchRelationshipPropertyValuesForRelationshipName:@"assets" fromManagedObject:v12 usingPayloadProperty:v13];
    v15 = [(PLManagedObjectJournalEntryPayload *)self encodedDataForUUIDStringArray:v14];
    [(PLManagedObjectJournalEntryPayload *)self updatePayloadAttributes:v10 andNilAttributes:v11 forPayloadProperty:v13 withUUIDStringData:v15];

    v16 = 1;
  }

  else
  {
    v18.receiver = self;
    v18.super_class = PLAlbumJournalEntryPayload;
    v16 = [(PLGenericAlbumJournalEntryPayload *)&v18 updatePayloadAttributes:v10 andNilAttributes:v11 withManagedObject:v12 forPayloadProperty:v13];
  }

  return v16;
}

@end