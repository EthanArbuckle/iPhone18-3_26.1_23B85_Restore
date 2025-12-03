@interface PLImportSessionJournalEntryPayload
+ (id)modelProperties;
+ (id)modelPropertiesDescription;
+ (id)persistedPropertyNamesForEntityNames;
- (BOOL)comparePayloadValue:(id)value toObjectDictionaryValue:(id)dictionaryValue forPayloadProperty:(id)property;
- (BOOL)updatePayloadAttributes:(id)attributes andNilAttributes:(id)nilAttributes withManagedObject:(id)object forPayloadProperty:(id)property;
- (NSSet)assetUUIDs;
- (id)insertAlbumFromDataInManagedObjectContext:(id)context;
- (id)payloadValueFromAttributes:(id)attributes forPayloadProperty:(id)property;
- (void)appendAttributeKey:(id)key value:(id)value toDescriptionBuilder:(id)builder;
- (void)updateAlbum:(id)album includePendingChanges:(BOOL)changes;
@end

@implementation PLImportSessionJournalEntryPayload

+ (id)persistedPropertyNamesForEntityNames
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__PLImportSessionJournalEntryPayload_persistedPropertyNamesForEntityNames__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (persistedPropertyNamesForEntityNames_onceToken_11290 != -1)
  {
    dispatch_once(&persistedPropertyNamesForEntityNames_onceToken_11290, block);
  }

  v2 = persistedPropertyNamesForEntityNames_persistedPropertyNamesForEntityNames_11291;

  return v2;
}

void __74__PLImportSessionJournalEntryPayload_persistedPropertyNamesForEntityNames__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) persistedPropertyNamesForEntityNamesFromModelProperties];
  v2 = persistedPropertyNamesForEntityNames_persistedPropertyNamesForEntityNames_11291;
  persistedPropertyNamesForEntityNames_persistedPropertyNamesForEntityNames_11291 = v1;
}

+ (id)modelProperties
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__PLImportSessionJournalEntryPayload_modelProperties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (modelProperties_onceToken_11292 != -1)
  {
    dispatch_once(&modelProperties_onceToken_11292, block);
  }

  v2 = modelProperties_modelProperties_11293;

  return v2;
}

uint64_t __53__PLImportSessionJournalEntryPayload_modelProperties__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) modelPropertiesDescription];
  v3 = modelProperties_modelProperties_11293;
  modelProperties_modelProperties_11293 = v2;

  v4 = *(a1 + 32);
  v5 = modelProperties_modelProperties_11293;

  return [v4 loadModelPropertiesDescription:v5 parentPayloadProperty:0];
}

+ (id)modelPropertiesDescription
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E695DF90]);
  v10.receiver = self;
  v10.super_class = &OBJC_METACLASS___PLImportSessionJournalEntryPayload;
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
    v11 = [MEMORY[0x1E695DFD8] setWithArray:dictionaryValueCopy];

    v12 = [v11 isEqualToSet:valueCopy];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = PLImportSessionJournalEntryPayload;
    v12 = [(PLGenericAlbumJournalEntryPayload *)&v14 comparePayloadValue:valueCopy toObjectDictionaryValue:dictionaryValueCopy forPayloadProperty:propertyCopy];
  }

  return v12;
}

- (void)updateAlbum:(id)album includePendingChanges:(BOOL)changes
{
  changesCopy = changes;
  v20 = *MEMORY[0x1E69E9840];
  albumCopy = album;
  v15.receiver = self;
  v15.super_class = PLImportSessionJournalEntryPayload;
  [(PLGenericAlbumJournalEntryPayload *)&v15 updateAlbum:albumCopy includePendingChanges:changesCopy];
  assetUUIDs = [(PLImportSessionJournalEntryPayload *)self assetUUIDs];
  allObjects = [assetUUIDs allObjects];
  managedObjectContext = [albumCopy managedObjectContext];
  v10 = [PLManagedAsset assetsWithUUIDs:allObjects options:changesCopy | 2 inManagedObjectContext:managedObjectContext];

  if (v10)
  {
    v11 = albumCopy;
    v12 = PLMigrationGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      uuid = [v11 uuid];
      *buf = 138412546;
      v17 = uuid;
      v18 = 2112;
      v19 = assetUUIDs;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "Updating assets in import session %@ to match persisted UUID from %@", buf, 0x16u);
    }

    mutableAssets = [v11 mutableAssets];
    [mutableAssets addObjectsFromArray:v10];
  }
}

- (id)insertAlbumFromDataInManagedObjectContext:(id)context
{
  contextCopy = context;
  importSessionID = [(PLGenericAlbumJournalEntryPayload *)self importSessionID];
  v6 = [PLImportSession insertNewImportSessionAlbumWithImportSessionID:importSessionID inManagedObjectContext:contextCopy];

  return v6;
}

- (NSSet)assetUUIDs
{
  v3 = [(NSMutableDictionary *)self->super.super._payloadAttributes objectForKeyedSubscript:@"assets"];
  v4 = [(PLManagedObjectJournalEntryPayload *)self setForUUIDEncodedData:v3];

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
    v10 = [(PLManagedObjectJournalEntryPayload *)self setForUUIDEncodedData:v9];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = PLImportSessionJournalEntryPayload;
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
    v11 = [(PLManagedObjectJournalEntryPayload *)self setForUUIDEncodedData:valueCopy];

    v13.receiver = self;
    v13.super_class = PLImportSessionJournalEntryPayload;
    [(PLGenericAlbumJournalEntryPayload *)&v13 appendAttributeKey:keyCopy value:v11 toDescriptionBuilder:builderCopy];
    valueCopy = v11;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = PLImportSessionJournalEntryPayload;
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
    v18.super_class = PLImportSessionJournalEntryPayload;
    v16 = [(PLGenericAlbumJournalEntryPayload *)&v18 updatePayloadAttributes:attributesCopy andNilAttributes:nilAttributesCopy withManagedObject:objectCopy forPayloadProperty:propertyCopy];
  }

  return v16;
}

@end