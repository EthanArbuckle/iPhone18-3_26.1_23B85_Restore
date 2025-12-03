@interface PLAlbumListJournalEntryPayload
+ (BOOL)isValidForPersistenceWithObjectDictionary:(id)dictionary additionalEntityName:(id)name;
+ (id)modelProperties;
+ (id)modelPropertiesDescription;
+ (id)nonPersistedModelPropertiesDescription;
+ (id)persistedPropertyNamesForEntityNames;
- (BOOL)comparePayloadValue:(id)value toObjectDictionaryValue:(id)dictionaryValue forPayloadProperty:(id)property;
- (BOOL)updatePayloadAttributes:(id)attributes andNilAttributes:(id)nilAttributes withManagedObject:(id)object forPayloadProperty:(id)property;
- (NSOrderedSet)albumUUIDs;
- (id)insertAlbumListFromDataInManagedObjectContext:(id)context;
- (id)payloadValueFromAttributes:(id)attributes forPayloadProperty:(id)property;
- (signed)albumListType;
- (void)appendAttributeKey:(id)key value:(id)value toDescriptionBuilder:(id)builder;
- (void)updateAlbumList:(id)list;
@end

@implementation PLAlbumListJournalEntryPayload

- (BOOL)comparePayloadValue:(id)value toObjectDictionaryValue:(id)dictionaryValue forPayloadProperty:(id)property
{
  valueCopy = value;
  propertyCopy = property;
  dictionaryValueCopy = dictionaryValue;
  if ([propertyCopy isEqualToKey:@"albums"])
  {
    v11 = [MEMORY[0x1E695DFB8] orderedSetWithArray:dictionaryValueCopy];

    v12 = [v11 isEqualToOrderedSet:valueCopy];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = PLAlbumListJournalEntryPayload;
    v12 = [(PLManagedObjectJournalEntryPayload *)&v14 comparePayloadValue:valueCopy toObjectDictionaryValue:dictionaryValueCopy forPayloadProperty:propertyCopy];
  }

  return v12;
}

- (void)updateAlbumList:(id)list
{
  v19 = *MEMORY[0x1E69E9840];
  listCopy = list;
  albumUUIDs = [(PLAlbumListJournalEntryPayload *)self albumUUIDs];
  albums = [listCopy albums];
  v7 = [albums valueForKey:@"uuid"];

  if ([albumUUIDs isEqual:v7])
  {
    v8 = PLMigrationGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      albumListType = [(PLAlbumListJournalEntryPayload *)self albumListType];
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "Persisted albumList %d UUIDs match existing UUID ordering", buf, 8u);
    }

LABEL_8:

    goto LABEL_9;
  }

  if ([albumUUIDs count])
  {
    v9 = PLMigrationGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      albumListType = [(PLAlbumListJournalEntryPayload *)self albumListType];
      v17 = 2112;
      v18 = albumUUIDs;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEFAULT, "Sorting albumList %d to match UUID ordering %@", buf, 0x12u);
    }

    albumsSortingComparator = [listCopy albumsSortingComparator];
    albums2 = [listCopy albums];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __50__PLAlbumListJournalEntryPayload_updateAlbumList___block_invoke;
    v12[3] = &unk_1E756A6C0;
    v14 = albumsSortingComparator;
    v13 = albumUUIDs;
    v8 = albumsSortingComparator;
    [albums2 sortUsingComparator:v12];

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

- (id)insertAlbumListFromDataInManagedObjectContext:(id)context
{
  contextCopy = context;
  if ([PLManagedAlbumList isValidTypeForPersistence:[(PLAlbumListJournalEntryPayload *)self albumListType]])
  {
    albumListType = [(PLAlbumListJournalEntryPayload *)self albumListType];
    photoLibrary = [contextCopy photoLibrary];
    v7 = [PLManagedAlbumList _singletonListWithType:albumListType library:photoLibrary];
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
  shortValue = [v2 shortValue];

  return shortValue;
}

- (NSOrderedSet)albumUUIDs
{
  v3 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"albums"];
  v4 = [(PLManagedObjectJournalEntryPayload *)self orderedSetForUUIDEncodedData:v3];

  return v4;
}

- (id)payloadValueFromAttributes:(id)attributes forPayloadProperty:(id)property
{
  attributesCopy = attributes;
  propertyCopy = property;
  if ([propertyCopy isEqualToKey:@"albums"])
  {
    v8 = [propertyCopy key];

    v9 = [attributesCopy objectForKeyedSubscript:v8];
    v10 = [(PLManagedObjectJournalEntryPayload *)self orderedSetForUUIDEncodedData:v9];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = PLAlbumListJournalEntryPayload;
    v10 = [(PLManagedObjectJournalEntryPayload *)&v12 payloadValueFromAttributes:attributesCopy forPayloadProperty:propertyCopy];
  }

  return v10;
}

- (void)appendAttributeKey:(id)key value:(id)value toDescriptionBuilder:(id)builder
{
  keyCopy = key;
  builderCopy = builder;
  valueCopy = value;
  if ([keyCopy isEqualToString:@"albums"])
  {
    v11 = [(PLManagedObjectJournalEntryPayload *)self orderedSetForUUIDEncodedData:valueCopy];

    v13.receiver = self;
    v13.super_class = PLAlbumListJournalEntryPayload;
    [(PLManagedObjectJournalEntryPayload *)&v13 appendAttributeKey:keyCopy value:v11 toDescriptionBuilder:builderCopy];
    valueCopy = v11;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = PLAlbumListJournalEntryPayload;
    [(PLManagedObjectJournalEntryPayload *)&v12 appendAttributeKey:keyCopy value:valueCopy toDescriptionBuilder:builderCopy];
  }
}

- (BOOL)updatePayloadAttributes:(id)attributes andNilAttributes:(id)nilAttributes withManagedObject:(id)object forPayloadProperty:(id)property
{
  attributesCopy = attributes;
  nilAttributesCopy = nilAttributes;
  objectCopy = object;
  propertyCopy = property;
  v14 = [propertyCopy isEqualToKey:@"albums"];
  if (v14)
  {
    albums = [objectCopy albums];
    relatedEntityPropertyNames = [propertyCopy relatedEntityPropertyNames];
    anyObject = [relatedEntityPropertyNames anyObject];
    v18 = [albums valueForKey:anyObject];

    v19 = [(PLManagedObjectJournalEntryPayload *)self encodedDataForUUIDStringOrderedSet:v18];
    [(PLManagedObjectJournalEntryPayload *)self updatePayloadAttributes:attributesCopy andNilAttributes:nilAttributesCopy forPayloadProperty:propertyCopy withUUIDStringData:v19];
  }

  return v14;
}

+ (BOOL)isValidForPersistenceWithObjectDictionary:(id)dictionary additionalEntityName:(id)name
{
  v4 = [dictionary objectForKeyedSubscript:{@"identifier", name}];
  v5 = +[PLManagedAlbumList isValidTypeForPersistence:](PLManagedAlbumList, "isValidTypeForPersistence:", [v4 integerValue]);

  return v5;
}

+ (id)persistedPropertyNamesForEntityNames
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__PLAlbumListJournalEntryPayload_persistedPropertyNamesForEntityNames__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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
  block[4] = self;
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