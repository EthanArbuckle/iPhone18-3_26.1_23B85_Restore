@interface PLAlbumJournalEntryPayload
+ (BOOL)isValidForPersistenceWithObjectDictionary:(id)dictionary additionalEntityName:(id)name;
+ (id)modelProperties;
+ (id)modelPropertiesDescription;
+ (id)nonPersistedModelPropertiesDescription;
+ (id)persistedPropertyNamesForEntityNames;
- (BOOL)comparePayloadValue:(id)value toObjectDictionaryValue:(id)dictionaryValue forPayloadProperty:(id)property;
- (BOOL)updatePayloadAttributes:(id)attributes andNilAttributes:(id)nilAttributes withManagedObject:(id)object forPayloadProperty:(id)property;
- (NSOrderedSet)assetUUIDs;
- (id)insertAlbumFromDataInManagedObjectContext:(id)context;
- (id)payloadValueFromAttributes:(id)attributes forPayloadProperty:(id)property;
- (void)appendAttributeKey:(id)key value:(id)value toDescriptionBuilder:(id)builder;
- (void)updateAlbum:(id)album includePendingChanges:(BOOL)changes;
@end

@implementation PLAlbumJournalEntryPayload

+ (BOOL)isValidForPersistenceWithObjectDictionary:(id)dictionary additionalEntityName:(id)name
{
  dictionaryCopy = dictionary;
  v5 = +[PLManagedAlbum validKindsForPersistence];
  v6 = [dictionaryCopy objectForKeyedSubscript:@"kind"];

  LOBYTE(dictionaryCopy) = [v5 containsObject:v6];
  return dictionaryCopy;
}

+ (id)persistedPropertyNamesForEntityNames
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__PLAlbumJournalEntryPayload_persistedPropertyNamesForEntityNames__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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
  block[4] = self;
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
  v9.receiver = self;
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
  v10.receiver = self;
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

- (BOOL)comparePayloadValue:(id)value toObjectDictionaryValue:(id)dictionaryValue forPayloadProperty:(id)property
{
  valueCopy = value;
  propertyCopy = property;
  dictionaryValueCopy = dictionaryValue;
  if ([propertyCopy isEqualToKey:@"assets"])
  {
    v11 = [MEMORY[0x1E695DFB8] orderedSetWithArray:dictionaryValueCopy];

    v12 = [v11 isEqualToOrderedSet:valueCopy];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = PLAlbumJournalEntryPayload;
    v12 = [(PLGenericAlbumJournalEntryPayload *)&v14 comparePayloadValue:valueCopy toObjectDictionaryValue:dictionaryValueCopy forPayloadProperty:propertyCopy];
  }

  return v12;
}

- (void)updateAlbum:(id)album includePendingChanges:(BOOL)changes
{
  changesCopy = changes;
  v25 = *MEMORY[0x1E69E9840];
  albumCopy = album;
  v20.receiver = self;
  v20.super_class = PLAlbumJournalEntryPayload;
  [(PLGenericAlbumJournalEntryPayload *)&v20 updateAlbum:albumCopy includePendingChanges:changesCopy];
  assetUUIDs = [(PLAlbumJournalEntryPayload *)self assetUUIDs];
  v8 = objc_opt_class();
  assets = [albumCopy assets];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __64__PLAlbumJournalEntryPayload_updateAlbum_includePendingChanges___block_invoke;
  v16[3] = &unk_1E7574BC0;
  v19 = changesCopy;
  v10 = assetUUIDs;
  v17 = v10;
  v11 = albumCopy;
  v18 = v11;
  v12 = [v8 sortedObjectsToAddWithUUIDs:v10 uuidKey:@"uuid" andExistingObjects:assets fetchBlock:v16];

  if (v12)
  {
    v13 = PLMigrationGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      uuid = [v11 uuid];
      *buf = 138412546;
      v22 = uuid;
      v23 = 2112;
      v24 = v10;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "Updating assets in album %@ to match persisted UUID ordering from %@", buf, 0x16u);
    }

    mutableAssets = [v11 mutableAssets];
    [mutableAssets addObjectsFromArray:v12];
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

- (id)insertAlbumFromDataInManagedObjectContext:(id)context
{
  contextCopy = context;
  kind = [(PLGenericAlbumJournalEntryPayload *)self kind];
  intValue = [kind intValue];
  title = [(PLGenericAlbumJournalEntryPayload *)self title];
  photoLibrary = [contextCopy photoLibrary];

  v9 = [PLGenericAlbum insertNewAlbumWithKind:intValue title:title intoLibrary:photoLibrary];

  return v9;
}

- (NSOrderedSet)assetUUIDs
{
  v3 = [(NSMutableDictionary *)self->super.super._payloadAttributes objectForKeyedSubscript:@"assets"];
  v4 = [(PLManagedObjectJournalEntryPayload *)self orderedSetForUUIDEncodedData:v3];

  return v4;
}

- (id)payloadValueFromAttributes:(id)attributes forPayloadProperty:(id)property
{
  attributesCopy = attributes;
  propertyCopy = property;
  if ([propertyCopy isEqualToKey:@"assets"])
  {
    v8 = [propertyCopy key];

    v9 = [attributesCopy objectForKeyedSubscript:v8];
    v10 = [(PLManagedObjectJournalEntryPayload *)self orderedSetForUUIDEncodedData:v9];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = PLAlbumJournalEntryPayload;
    v10 = [(PLGenericAlbumJournalEntryPayload *)&v12 payloadValueFromAttributes:attributesCopy forPayloadProperty:propertyCopy];
  }

  return v10;
}

- (void)appendAttributeKey:(id)key value:(id)value toDescriptionBuilder:(id)builder
{
  keyCopy = key;
  builderCopy = builder;
  valueCopy = value;
  if ([keyCopy isEqualToString:@"assets"])
  {
    v11 = [(PLManagedObjectJournalEntryPayload *)self orderedSetForUUIDEncodedData:valueCopy];

    v13.receiver = self;
    v13.super_class = PLAlbumJournalEntryPayload;
    [(PLGenericAlbumJournalEntryPayload *)&v13 appendAttributeKey:keyCopy value:v11 toDescriptionBuilder:builderCopy];
    valueCopy = v11;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = PLAlbumJournalEntryPayload;
    [(PLGenericAlbumJournalEntryPayload *)&v12 appendAttributeKey:keyCopy value:valueCopy toDescriptionBuilder:builderCopy];
  }
}

- (BOOL)updatePayloadAttributes:(id)attributes andNilAttributes:(id)nilAttributes withManagedObject:(id)object forPayloadProperty:(id)property
{
  attributesCopy = attributes;
  nilAttributesCopy = nilAttributes;
  objectCopy = object;
  propertyCopy = property;
  if ([propertyCopy isEqualToKey:@"assets"])
  {
    v14 = [objc_opt_class() fetchRelationshipPropertyValuesForRelationshipName:@"assets" fromManagedObject:objectCopy usingPayloadProperty:propertyCopy];
    v15 = [(PLManagedObjectJournalEntryPayload *)self encodedDataForUUIDStringArray:v14];
    [(PLManagedObjectJournalEntryPayload *)self updatePayloadAttributes:attributesCopy andNilAttributes:nilAttributesCopy forPayloadProperty:propertyCopy withUUIDStringData:v15];

    v16 = 1;
  }

  else
  {
    v18.receiver = self;
    v18.super_class = PLAlbumJournalEntryPayload;
    v16 = [(PLGenericAlbumJournalEntryPayload *)&v18 updatePayloadAttributes:attributesCopy andNilAttributes:nilAttributesCopy withManagedObject:objectCopy forPayloadProperty:propertyCopy];
  }

  return v16;
}

@end