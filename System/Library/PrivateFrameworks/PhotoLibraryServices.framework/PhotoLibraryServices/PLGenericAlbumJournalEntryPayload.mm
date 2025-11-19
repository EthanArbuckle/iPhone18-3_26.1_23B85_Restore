@interface PLGenericAlbumJournalEntryPayload
+ (id)modelPropertiesDescription;
+ (id)nonPersistedModelPropertiesDescription;
- (BOOL)comparePayloadValue:(id)a3 toObjectDictionaryValue:(id)a4 forPayloadProperty:(id)a5;
- (BOOL)customSortAscending;
- (BOOL)isInTrash;
- (BOOL)isPinned;
- (BOOL)isPrototype;
- (BOOL)updatePayloadAttributes:(id)a3 andNilAttributes:(id)a4 withManagedObject:(id)a5 forPayloadProperty:(id)a6;
- (NSString)customKeyAssetUUID;
- (id)payloadValueFromAttributes:(id)a3 forPayloadProperty:(id)a4;
- (int)customSortKey;
- (void)appendAttributeKey:(id)a3 value:(id)a4 toDescriptionBuilder:(id)a5;
- (void)updateAlbum:(id)a3 includePendingChanges:(BOOL)a4;
@end

@implementation PLGenericAlbumJournalEntryPayload

- (BOOL)comparePayloadValue:(id)a3 toObjectDictionaryValue:(id)a4 forPayloadProperty:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v10 isEqualToKey:@"customKeyAsset"])
  {
    goto LABEL_2;
  }

  if ([v10 isEqualToKey:@"inTrash"])
  {
    v13 = [v9 integerValue];
    v12 = [v8 BOOLValue] ^ (v13 == 0);
    goto LABEL_12;
  }

  if (![v10 isEqualToKey:@"cloudGUID"])
  {
    v18.receiver = self;
    v18.super_class = PLGenericAlbumJournalEntryPayload;
    v11 = [(PLManagedObjectJournalEntryPayload *)&v18 comparePayloadValue:v8 toObjectDictionaryValue:v9 forPayloadProperty:v10];
    goto LABEL_3;
  }

  v14 = [(PLGenericAlbumJournalEntryPayload *)self kind];
  if ([v14 integerValue] == 3999)
  {

LABEL_11:
    LOBYTE(v12) = 1;
    goto LABEL_12;
  }

  v15 = [(PLGenericAlbumJournalEntryPayload *)self kind];
  v16 = [v15 integerValue];

  if (v16 == 3998)
  {
    goto LABEL_11;
  }

LABEL_2:
  v11 = [v9 isEqualToString:v8];
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
  v3 = [v2 integerValue];

  return v3;
}

- (BOOL)customSortAscending
{
  v2 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"customSortAscending"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)isInTrash
{
  v2 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"inTrash"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)isPrototype
{
  v2 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"prototype"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)isPinned
{
  v2 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"pinned"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)updateAlbum:(id)a3 includePendingChanges:(BOOL)a4
{
  v21 = a3;
  v5 = [(PLManagedObjectJournalEntryPayload *)self payloadID];
  v6 = [v5 payloadIDString];
  [v21 setUuid:v6];

  v7 = [(PLGenericAlbumJournalEntryPayload *)self title];
  [v21 setTitle:v7];

  v8 = [(PLGenericAlbumJournalEntryPayload *)self kind];
  [v21 setKind:v8];

  v9 = [(PLGenericAlbumJournalEntryPayload *)self cloudGUID];

  if (v9)
  {
    v10 = [(PLGenericAlbumJournalEntryPayload *)self cloudGUID];
    [v21 setCloudGUID:v10];
  }

  if (-[PLGenericAlbumJournalEntryPayload isInTrash](self, "isInTrash") && [v21 canMoveToTrash])
  {
    [v21 applyTrashedState:1 cascade:1];
  }

  if ([(PLGenericAlbumJournalEntryPayload *)self isPinned])
  {
    [v21 setIsPinned:{-[PLGenericAlbumJournalEntryPayload isPinned](self, "isPinned")}];
  }

  if ([(PLGenericAlbumJournalEntryPayload *)self isPrototype])
  {
    [v21 setIsPrototype:{-[PLGenericAlbumJournalEntryPayload isPrototype](self, "isPrototype")}];
  }

  [v21 setCustomSortAscending:{-[PLGenericAlbumJournalEntryPayload customSortAscending](self, "customSortAscending")}];
  [v21 setCustomSortKey:{-[PLGenericAlbumJournalEntryPayload customSortKey](self, "customSortKey")}];
  v11 = [(PLGenericAlbumJournalEntryPayload *)self customKeyAssetUUID];
  if (v11)
  {
    v12 = [v21 managedObjectContext];
    v13 = [PLManagedAsset assetWithUUID:v11 inManagedObjectContext:v12];

    if (v13)
    {
      [v21 setCustomKeyAsset:v13];
    }
  }

  v14 = [(PLGenericAlbumJournalEntryPayload *)self userQueryData];
  [v21 setUserQueryData:v14];

  v15 = [(PLGenericAlbumJournalEntryPayload *)self creationDate];

  if (v15)
  {
    v16 = [(PLGenericAlbumJournalEntryPayload *)self creationDate];
    [v21 setCreationDate:v16];
  }

  v17 = [(PLGenericAlbumJournalEntryPayload *)self importedByBundleIdentifier];

  if (v17)
  {
    v18 = [(PLGenericAlbumJournalEntryPayload *)self importedByBundleIdentifier];
    [v21 setImportedByBundleIdentifier:v18];
  }

  v19 = [(PLGenericAlbumJournalEntryPayload *)self lastModifiedDate];

  if (v19)
  {
    v20 = [(PLGenericAlbumJournalEntryPayload *)self lastModifiedDate];
    [v21 setLastModifiedDate:v20];
  }
}

- (id)payloadValueFromAttributes:(id)a3 forPayloadProperty:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 isEqualToKey:@"customKeyAsset"])
  {
    v8 = [v7 key];

    v9 = [v6 objectForKeyedSubscript:v8];
    v10 = [(PLManagedObjectJournalEntryPayload *)self UUIDStringForData:v9];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = PLGenericAlbumJournalEntryPayload;
    v10 = [(PLManagedObjectJournalEntryPayload *)&v12 payloadValueFromAttributes:v6 forPayloadProperty:v7];
  }

  return v10;
}

- (void)appendAttributeKey:(id)a3 value:(id)a4 toDescriptionBuilder:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  if ([v8 isEqualToString:@"customKeyAsset"])
  {
    v11 = [(PLManagedObjectJournalEntryPayload *)self UUIDStringForData:v10];

    [v9 appendName:v8 object:v11];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = PLGenericAlbumJournalEntryPayload;
    [(PLManagedObjectJournalEntryPayload *)&v12 appendAttributeKey:v8 value:v10 toDescriptionBuilder:v9];
  }
}

- (BOOL)updatePayloadAttributes:(id)a3 andNilAttributes:(id)a4 withManagedObject:(id)a5 forPayloadProperty:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = v10;
  if ([v11 isEqualToKey:@"customKeyAsset"])
  {
    v13 = [v12 customKeyAsset];
    v14 = [v13 uuid];
    v15 = [(PLManagedObjectJournalEntryPayload *)self UUIDDataForString:v14];
    v16 = [v11 key];
    [v9 setObject:v15 forKeyedSubscript:v16];
  }

  else
  {
    if (![v11 isEqualToKey:@"inTrash"])
    {
      v17 = 0;
      goto LABEL_7;
    }

    v13 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v12, "isInTrash")}];
    v14 = [v11 key];
    [v9 setObject:v13 forKeyedSubscript:v14];
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