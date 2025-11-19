@interface PLAlbumListJournalEntryPayload
+ (BOOL)isValidForPersistenceWithObjectDictionary:(id)a3 additionalEntityName:(id)a4;
+ (id)modelProperties;
+ (id)modelPropertiesDescription;
+ (id)nonPersistedModelPropertiesDescription;
+ (id)persistedPropertyNamesForEntityNames;
- (BOOL)comparePayloadValue:(id)a3 toObjectDictionaryValue:(id)a4 forPayloadProperty:(id)a5;
- (BOOL)updatePayloadAttributes:(id)a3 andNilAttributes:(id)a4 withManagedObject:(id)a5 forPayloadProperty:(id)a6;
- (NSOrderedSet)albumUUIDs;
- (id)insertAlbumListFromDataInManagedObjectContext:(id)a3;
- (id)payloadValueFromAttributes:(id)a3 forPayloadProperty:(id)a4;
- (signed)albumListType;
- (void)appendAttributeKey:(id)a3 value:(id)a4 toDescriptionBuilder:(id)a5;
- (void)updateAlbumList:(id)a3;
@end

@implementation PLAlbumListJournalEntryPayload

- (BOOL)comparePayloadValue:(id)a3 toObjectDictionaryValue:(id)a4 forPayloadProperty:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  if ([v9 isEqualToKey:@"albums"])
  {
    v11 = [MEMORY[0x1E695DFB8] orderedSetWithArray:v10];

    v12 = [v11 isEqualToOrderedSet:v8];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = PLAlbumListJournalEntryPayload;
    v12 = [(PLManagedObjectJournalEntryPayload *)&v14 comparePayloadValue:v8 toObjectDictionaryValue:v10 forPayloadProperty:v9];
  }

  return v12;
}

- (void)updateAlbumList:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PLAlbumListJournalEntryPayload *)self albumUUIDs];
  v6 = [v4 albums];
  v7 = [v6 valueForKey:@"uuid"];

  if ([v5 isEqual:v7])
  {
    v8 = PLMigrationGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v16 = [(PLAlbumListJournalEntryPayload *)self albumListType];
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "Persisted albumList %d UUIDs match existing UUID ordering", buf, 8u);
    }

LABEL_8:

    goto LABEL_9;
  }

  if ([v5 count])
  {
    v9 = PLMigrationGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      v16 = [(PLAlbumListJournalEntryPayload *)self albumListType];
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEFAULT, "Sorting albumList %d to match UUID ordering %@", buf, 0x12u);
    }

    v10 = [v4 albumsSortingComparator];
    v11 = [v4 albums];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __50__PLAlbumListJournalEntryPayload_updateAlbumList___block_invoke;
    v12[3] = &unk_1E756A6C0;
    v14 = v10;
    v13 = v5;
    v8 = v10;
    [v11 sortUsingComparator:v12];

    goto LABEL_8;
  }

LABEL_9:
}

uint64_t __50__PLAlbumListJournalEntryPayload_updateAlbumList___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = (*(*(a1 + 40) + 16))();
  if (!v7)
  {
    v8 = *(a1 + 32);
    v9 = [v5 uuid];
    v10 = [v8 indexOfObject:v9];

    v11 = *(a1 + 32);
    v12 = [v6 uuid];
    v13 = [v11 indexOfObject:v12];

    if (v10 >= v13)
    {
      v7 = v10 > v13;
    }

    else
    {
      v7 = -1;
    }
  }

  return v7;
}

- (id)insertAlbumListFromDataInManagedObjectContext:(id)a3
{
  v4 = a3;
  if ([PLManagedAlbumList isValidTypeForPersistence:[(PLAlbumListJournalEntryPayload *)self albumListType]])
  {
    v5 = [(PLAlbumListJournalEntryPayload *)self albumListType];
    v6 = [v4 photoLibrary];
    v7 = [PLManagedAlbumList _singletonListWithType:v5 library:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (signed)albumListType
{
  v2 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"identifier"];
  v3 = [v2 shortValue];

  return v3;
}

- (NSOrderedSet)albumUUIDs
{
  v3 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"albums"];
  v4 = [(PLManagedObjectJournalEntryPayload *)self orderedSetForUUIDEncodedData:v3];

  return v4;
}

- (id)payloadValueFromAttributes:(id)a3 forPayloadProperty:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 isEqualToKey:@"albums"])
  {
    v8 = [v7 key];

    v9 = [v6 objectForKeyedSubscript:v8];
    v10 = [(PLManagedObjectJournalEntryPayload *)self orderedSetForUUIDEncodedData:v9];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = PLAlbumListJournalEntryPayload;
    v10 = [(PLManagedObjectJournalEntryPayload *)&v12 payloadValueFromAttributes:v6 forPayloadProperty:v7];
  }

  return v10;
}

- (void)appendAttributeKey:(id)a3 value:(id)a4 toDescriptionBuilder:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  if ([v8 isEqualToString:@"albums"])
  {
    v11 = [(PLManagedObjectJournalEntryPayload *)self orderedSetForUUIDEncodedData:v10];

    v13.receiver = self;
    v13.super_class = PLAlbumListJournalEntryPayload;
    [(PLManagedObjectJournalEntryPayload *)&v13 appendAttributeKey:v8 value:v11 toDescriptionBuilder:v9];
    v10 = v11;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = PLAlbumListJournalEntryPayload;
    [(PLManagedObjectJournalEntryPayload *)&v12 appendAttributeKey:v8 value:v10 toDescriptionBuilder:v9];
  }
}

- (BOOL)updatePayloadAttributes:(id)a3 andNilAttributes:(id)a4 withManagedObject:(id)a5 forPayloadProperty:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v13 isEqualToKey:@"albums"];
  if (v14)
  {
    v15 = [v12 albums];
    v16 = [v13 relatedEntityPropertyNames];
    v17 = [v16 anyObject];
    v18 = [v15 valueForKey:v17];

    v19 = [(PLManagedObjectJournalEntryPayload *)self encodedDataForUUIDStringOrderedSet:v18];
    [(PLManagedObjectJournalEntryPayload *)self updatePayloadAttributes:v10 andNilAttributes:v11 forPayloadProperty:v13 withUUIDStringData:v19];
  }

  return v14;
}

+ (BOOL)isValidForPersistenceWithObjectDictionary:(id)a3 additionalEntityName:(id)a4
{
  v4 = [a3 objectForKeyedSubscript:{@"identifier", a4}];
  v5 = +[PLManagedAlbumList isValidTypeForPersistence:](PLManagedAlbumList, "isValidTypeForPersistence:", [v4 integerValue]);

  return v5;
}

+ (id)persistedPropertyNamesForEntityNames
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__PLAlbumListJournalEntryPayload_persistedPropertyNamesForEntityNames__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (persistedPropertyNamesForEntityNames_onceToken_28687 != -1)
  {
    dispatch_once(&persistedPropertyNamesForEntityNames_onceToken_28687, block);
  }

  v2 = persistedPropertyNamesForEntityNames_persistedPropertyNamesForEntityNames_28688;

  return v2;
}

void __70__PLAlbumListJournalEntryPayload_persistedPropertyNamesForEntityNames__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) persistedPropertyNamesForEntityNamesFromModelProperties];
  v2 = persistedPropertyNamesForEntityNames_persistedPropertyNamesForEntityNames_28688;
  persistedPropertyNamesForEntityNames_persistedPropertyNamesForEntityNames_28688 = v1;
}

+ (id)modelProperties
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__PLAlbumListJournalEntryPayload_modelProperties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (modelProperties_onceToken_28689 != -1)
  {
    dispatch_once(&modelProperties_onceToken_28689, block);
  }

  v2 = modelProperties_modelProperties_28690;

  return v2;
}

uint64_t __49__PLAlbumListJournalEntryPayload_modelProperties__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) modelPropertiesDescription];
  v3 = modelProperties_modelProperties_28690;
  modelProperties_modelProperties_28690 = v2;

  v4 = *(a1 + 32);
  v5 = modelProperties_modelProperties_28690;

  return [v4 loadModelPropertiesDescription:v5 parentPayloadProperty:0];
}

+ (id)nonPersistedModelPropertiesDescription
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"needsReorderingNumber";
  v2 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

+ (id)modelPropertiesDescription
{
  v9[3] = *MEMORY[0x1E69E9840];
  v8[0] = @"uuid";
  v2 = +[PLJournalEntryPayloadProperty payloadPropertyForUUID];
  v9[0] = v2;
  v8[1] = @"identifier";
  v3 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v9[1] = v3;
  v8[2] = @"albums";
  v4 = [MEMORY[0x1E695DFD8] setWithObject:@"uuid"];
  v5 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"albums" relatedEntityPropertyNames:v4 shouldPrefetchRelationship:1];

  v9[2] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];

  return v6;
}

@end