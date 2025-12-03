@interface PLGenericAlbumJournalEntryPayload
+ (id)modelPropertiesDescription;
+ (id)nonPersistedModelPropertiesDescription;
- (BOOL)comparePayloadValue:(id)value toObjectDictionaryValue:(id)dictionaryValue forPayloadProperty:(id)property;
- (BOOL)customSortAscending;
- (BOOL)isInTrash;
- (BOOL)isPinned;
- (BOOL)isPrototype;
- (BOOL)updatePayloadAttributes:(id)attributes andNilAttributes:(id)nilAttributes withManagedObject:(id)object forPayloadProperty:(id)property;
- (NSString)customKeyAssetUUID;
- (id)payloadValueFromAttributes:(id)attributes forPayloadProperty:(id)property;
- (int)customSortKey;
- (void)appendAttributeKey:(id)key value:(id)value toDescriptionBuilder:(id)builder;
- (void)updateAlbum:(id)album includePendingChanges:(BOOL)changes;
@end

@implementation PLGenericAlbumJournalEntryPayload

- (BOOL)comparePayloadValue:(id)value toObjectDictionaryValue:(id)dictionaryValue forPayloadProperty:(id)property
{
  valueCopy = value;
  dictionaryValueCopy = dictionaryValue;
  propertyCopy = property;
  if ([propertyCopy isEqualToKey:@"customKeyAsset"])
  {
    goto LABEL_2;
  }

  if ([propertyCopy isEqualToKey:@"inTrash"])
  {
    integerValue = [dictionaryValueCopy integerValue];
    v12 = [valueCopy BOOLValue] ^ (integerValue == 0);
    goto LABEL_12;
  }

  if (![propertyCopy isEqualToKey:@"cloudGUID"])
  {
    v18.receiver = self;
    v18.super_class = PLGenericAlbumJournalEntryPayload;
    v11 = [(PLManagedObjectJournalEntryPayload *)&v18 comparePayloadValue:valueCopy toObjectDictionaryValue:dictionaryValueCopy forPayloadProperty:propertyCopy];
    goto LABEL_3;
  }

  kind = [(PLGenericAlbumJournalEntryPayload *)self kind];
  if ([kind integerValue] == 3999)
  {

LABEL_11:
    LOBYTE(v12) = 1;
    goto LABEL_12;
  }

  kind2 = [(PLGenericAlbumJournalEntryPayload *)self kind];
  integerValue2 = [kind2 integerValue];

  if (integerValue2 == 3998)
  {
    goto LABEL_11;
  }

LABEL_2:
  v11 = [dictionaryValueCopy isEqualToString:valueCopy];
LABEL_3:
  LOBYTE(v12) = v11;
LABEL_12:

  return v12;
}

- (NSString)customKeyAssetUUID
{
  v3 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"customKeyAsset"];
  v4 = [(PLManagedObjectJournalEntryPayload *)self UUIDStringForData:v3];

  return v4;
}

- (int)customSortKey
{
  v2 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"customSortKey"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (BOOL)customSortAscending
{
  v2 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"customSortAscending"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)isInTrash
{
  v2 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"inTrash"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)isPrototype
{
  v2 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"prototype"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)isPinned
{
  v2 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"pinned"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)updateAlbum:(id)album includePendingChanges:(BOOL)changes
{
  albumCopy = album;
  payloadID = [(PLManagedObjectJournalEntryPayload *)self payloadID];
  payloadIDString = [payloadID payloadIDString];
  [albumCopy setUuid:payloadIDString];

  title = [(PLGenericAlbumJournalEntryPayload *)self title];
  [albumCopy setTitle:title];

  kind = [(PLGenericAlbumJournalEntryPayload *)self kind];
  [albumCopy setKind:kind];

  cloudGUID = [(PLGenericAlbumJournalEntryPayload *)self cloudGUID];

  if (cloudGUID)
  {
    cloudGUID2 = [(PLGenericAlbumJournalEntryPayload *)self cloudGUID];
    [albumCopy setCloudGUID:cloudGUID2];
  }

  if (-[PLGenericAlbumJournalEntryPayload isInTrash](self, "isInTrash") && [albumCopy canMoveToTrash])
  {
    [albumCopy applyTrashedState:1 cascade:1];
  }

  if ([(PLGenericAlbumJournalEntryPayload *)self isPinned])
  {
    [albumCopy setIsPinned:{-[PLGenericAlbumJournalEntryPayload isPinned](self, "isPinned")}];
  }

  if ([(PLGenericAlbumJournalEntryPayload *)self isPrototype])
  {
    [albumCopy setIsPrototype:{-[PLGenericAlbumJournalEntryPayload isPrototype](self, "isPrototype")}];
  }

  [albumCopy setCustomSortAscending:{-[PLGenericAlbumJournalEntryPayload customSortAscending](self, "customSortAscending")}];
  [albumCopy setCustomSortKey:{-[PLGenericAlbumJournalEntryPayload customSortKey](self, "customSortKey")}];
  customKeyAssetUUID = [(PLGenericAlbumJournalEntryPayload *)self customKeyAssetUUID];
  if (customKeyAssetUUID)
  {
    managedObjectContext = [albumCopy managedObjectContext];
    v13 = [PLManagedAsset assetWithUUID:customKeyAssetUUID inManagedObjectContext:managedObjectContext];

    if (v13)
    {
      [albumCopy setCustomKeyAsset:v13];
    }
  }

  userQueryData = [(PLGenericAlbumJournalEntryPayload *)self userQueryData];
  [albumCopy setUserQueryData:userQueryData];

  creationDate = [(PLGenericAlbumJournalEntryPayload *)self creationDate];

  if (creationDate)
  {
    creationDate2 = [(PLGenericAlbumJournalEntryPayload *)self creationDate];
    [albumCopy setCreationDate:creationDate2];
  }

  importedByBundleIdentifier = [(PLGenericAlbumJournalEntryPayload *)self importedByBundleIdentifier];

  if (importedByBundleIdentifier)
  {
    importedByBundleIdentifier2 = [(PLGenericAlbumJournalEntryPayload *)self importedByBundleIdentifier];
    [albumCopy setImportedByBundleIdentifier:importedByBundleIdentifier2];
  }

  lastModifiedDate = [(PLGenericAlbumJournalEntryPayload *)self lastModifiedDate];

  if (lastModifiedDate)
  {
    lastModifiedDate2 = [(PLGenericAlbumJournalEntryPayload *)self lastModifiedDate];
    [albumCopy setLastModifiedDate:lastModifiedDate2];
  }
}

- (id)payloadValueFromAttributes:(id)attributes forPayloadProperty:(id)property
{
  attributesCopy = attributes;
  propertyCopy = property;
  if ([propertyCopy isEqualToKey:@"customKeyAsset"])
  {
    v8 = [propertyCopy key];

    v9 = [attributesCopy objectForKeyedSubscript:v8];
    v10 = [(PLManagedObjectJournalEntryPayload *)self UUIDStringForData:v9];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = PLGenericAlbumJournalEntryPayload;
    v10 = [(PLManagedObjectJournalEntryPayload *)&v12 payloadValueFromAttributes:attributesCopy forPayloadProperty:propertyCopy];
  }

  return v10;
}

- (void)appendAttributeKey:(id)key value:(id)value toDescriptionBuilder:(id)builder
{
  keyCopy = key;
  builderCopy = builder;
  valueCopy = value;
  if ([keyCopy isEqualToString:@"customKeyAsset"])
  {
    v11 = [(PLManagedObjectJournalEntryPayload *)self UUIDStringForData:valueCopy];

    [builderCopy appendName:keyCopy object:v11];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = PLGenericAlbumJournalEntryPayload;
    [(PLManagedObjectJournalEntryPayload *)&v12 appendAttributeKey:keyCopy value:valueCopy toDescriptionBuilder:builderCopy];
  }
}

- (BOOL)updatePayloadAttributes:(id)attributes andNilAttributes:(id)nilAttributes withManagedObject:(id)object forPayloadProperty:(id)property
{
  attributesCopy = attributes;
  objectCopy = object;
  propertyCopy = property;
  v12 = objectCopy;
  if ([propertyCopy isEqualToKey:@"customKeyAsset"])
  {
    customKeyAsset = [v12 customKeyAsset];
    uuid = [customKeyAsset uuid];
    v15 = [(PLManagedObjectJournalEntryPayload *)self UUIDDataForString:uuid];
    v16 = [propertyCopy key];
    [attributesCopy setObject:v15 forKeyedSubscript:v16];
  }

  else
  {
    if (![propertyCopy isEqualToKey:@"inTrash"])
    {
      v17 = 0;
      goto LABEL_7;
    }

    customKeyAsset = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v12, "isInTrash")}];
    uuid = [propertyCopy key];
    [attributesCopy setObject:customKeyAsset forKeyedSubscript:uuid];
  }

  v17 = 1;
LABEL_7:

  return v17;
}

+ (id)nonPersistedModelPropertiesDescription
{
  v20[15] = *MEMORY[0x1E69E9840];
  v19[0] = @"cachedCount";
  v18 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v20[0] = v18;
  v19[1] = @"cachedPhotosCount";
  v17 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v20[1] = v17;
  v19[2] = @"cachedVideosCount";
  v16 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v20[2] = v16;
  v19[3] = @"cloudDeleteState";
  v15 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v20[3] = v15;
  v19[4] = @"cloudLocalState";
  v14 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v20[4] = v14;
  v19[5] = @"endDate";
  v13 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v20[5] = v13;
  v19[6] = @"pendingItemsCount";
  v2 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v20[6] = v2;
  v19[7] = @"pendingItemsType";
  v3 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v20[7] = v3;
  v19[8] = @"startDate";
  v4 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v20[8] = v4;
  v19[9] = @"syncEventOrderKey";
  v5 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v20[9] = v5;
  v19[10] = @"trashedDate";
  v6 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v20[10] = v6;
  v19[11] = @"albumLists";
  v7 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v20[11] = v7;
  v19[12] = @"keyAssets";
  v8 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v20[12] = v8;
  v19[13] = @"parentFolder";
  v9 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v20[13] = v9;
  v19[14] = @"privacyState";
  v10 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v20[14] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:15];

  return v11;
}

+ (id)modelPropertiesDescription
{
  v21[15] = *MEMORY[0x1E69E9840];
  v20[0] = @"uuid";
  v19 = +[PLJournalEntryPayloadProperty payloadPropertyForUUID];
  v21[0] = v19;
  v20[1] = @"cloudGUID";
  v18 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v21[1] = v18;
  v20[2] = @"title";
  v17 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v21[2] = v17;
  v20[3] = @"kind";
  v16 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v21[3] = v16;
  v20[4] = @"isPinned";
  v15 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"pinned" andType:800 info:0];
  v21[4] = v15;
  v20[5] = @"isPrototype";
  v14 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"prototype" andType:800 info:0];
  v21[5] = v14;
  v20[6] = @"trashedState";
  v2 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"inTrash" andType:100 requiresConversion:1 info:0];
  v21[6] = v2;
  v20[7] = @"customSortAscending";
  v3 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v21[7] = v3;
  v20[8] = @"customSortKey";
  v4 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v21[8] = v4;
  v20[9] = @"importSessionID";
  v5 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v21[9] = v5;
  v20[10] = @"customKeyAsset";
  v6 = [MEMORY[0x1E695DFD8] setWithObject:@"uuid"];
  v7 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"customKeyAsset" relatedEntityPropertyNames:v6 shouldPrefetchRelationship:1];

  v21[10] = v7;
  v20[11] = @"userQueryData";
  v8 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v21[11] = v8;
  v20[12] = @"creationDate";
  v9 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v21[12] = v9;
  v20[13] = @"importedByBundleIdentifier";
  v10 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v21[13] = v10;
  v20[14] = @"lastModifiedDate";
  v11 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v21[14] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:15];

  return v12;
}

@end