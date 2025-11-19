@interface PLMigrationHistoryJournalEntryPayload
+ (id)modelProperties;
+ (id)modelPropertiesDescription;
+ (id)persistedPropertyNamesForEntityNames;
- (BOOL)comparePayloadValue:(id)a3 toObjectDictionaryValue:(id)a4 forPayloadProperty:(id)a5;
- (BOOL)updatePayloadAttributes:(id)a3 andNilAttributes:(id)a4 withManagedObject:(id)a5 forPayloadProperty:(id)a6;
- (id)insertMigrationHistoryFromDataInManagedObjectContext:(id)a3;
- (id)payloadValueFromAttributes:(id)a3 forPayloadProperty:(id)a4;
- (void)appendAttributeKey:(id)a3 value:(id)a4 toDescriptionBuilder:(id)a5;
- (void)applyPayloadProperty:(id)a3 toManagedObject:(id)a4 key:(id)a5 payloadAttributesToUpdate:(id)a6;
@end

@implementation PLMigrationHistoryJournalEntryPayload

- (id)insertMigrationHistoryFromDataInManagedObjectContext:(id)a3
{
  v4 = [(PLManagedObject *)PLMigrationHistory insertInManagedObjectContext:a3];
  v5 = [(PLManagedObjectJournalEntryPayload *)self payloadID];
  v6 = [v5 payloadIDString];
  [v4 setIndex:{objc_msgSend(v6, "longLongValue")}];

  [(PLManagedObjectJournalEntryPayload *)self applyPayloadToManagedObject:v4 payloadAttributesToUpdate:0];

  return v4;
}

- (BOOL)comparePayloadValue:(id)a3 toObjectDictionaryValue:(id)a4 forPayloadProperty:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v10 isEqualToKey:@"globalKeyValues"])
  {
    v11 = 1;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = PLMigrationHistoryJournalEntryPayload;
    v11 = [(PLManagedObjectJournalEntryPayload *)&v13 comparePayloadValue:v8 toObjectDictionaryValue:v9 forPayloadProperty:v10];
  }

  return v11;
}

- (void)applyPayloadProperty:(id)a3 toManagedObject:(id)a4 key:(id)a5 payloadAttributesToUpdate:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([v10 requiresConversion])
  {
    v14 = [v10 key];
    v15 = [v14 isEqualToString:@"globalKeyValues"];

    if (v15)
    {
      v16 = MEMORY[0x1E696B0A0];
      v17 = v11;
      v18 = [v16 valueTransformerForName:@"PLGlobalKeyValueAnyTransformer"];
      payloadAttributes = self->super._payloadAttributes;
      v20 = [v10 key];
      v21 = [(NSMutableDictionary *)payloadAttributes objectForKeyedSubscript:v20];
      v22 = [v18 transformedValue:v21];
      [v17 setGlobalKeyValues:v22];
    }
  }

  else
  {
    v23.receiver = self;
    v23.super_class = PLMigrationHistoryJournalEntryPayload;
    [(PLManagedObjectJournalEntryPayload *)&v23 applyPayloadProperty:v10 toManagedObject:v11 key:v12 payloadAttributesToUpdate:v13];
  }
}

- (id)payloadValueFromAttributes:(id)a3 forPayloadProperty:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 isEqualToKey:@"globalKeyValues"])
  {
    v8 = [MEMORY[0x1E696B0A0] valueTransformerForName:@"PLGlobalKeyValueAnyTransformer"];
    v9 = [v7 key];
    v10 = [v6 objectForKeyedSubscript:v9];
    v11 = [v8 transformedValue:v10];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = PLMigrationHistoryJournalEntryPayload;
    v11 = [(PLManagedObjectJournalEntryPayload *)&v13 payloadValueFromAttributes:v6 forPayloadProperty:v7];
  }

  return v11;
}

- (void)appendAttributeKey:(id)a3 value:(id)a4 toDescriptionBuilder:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 isEqualToString:@"globalKeyValues"])
  {
    v11 = [MEMORY[0x1E696B0A0] valueTransformerForName:@"PLGlobalKeyValueAnyTransformer"];
    v12 = [v11 transformedValue:v9];
    v14.receiver = self;
    v14.super_class = PLMigrationHistoryJournalEntryPayload;
    [(PLManagedObjectJournalEntryPayload *)&v14 appendAttributeKey:v8 value:v12 toDescriptionBuilder:v10];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = PLMigrationHistoryJournalEntryPayload;
    [(PLManagedObjectJournalEntryPayload *)&v13 appendAttributeKey:v8 value:v9 toDescriptionBuilder:v10];
  }
}

- (BOOL)updatePayloadAttributes:(id)a3 andNilAttributes:(id)a4 withManagedObject:(id)a5 forPayloadProperty:(id)a6
{
  v8 = a3;
  v9 = a5;
  v10 = a6;
  v11 = [v10 isEqualToKey:@"globalKeyValues"];
  if (v11)
  {
    v12 = [MEMORY[0x1E696B0A0] valueTransformerForName:@"PLGlobalKeyValueAnyTransformer"];
    v13 = [v9 globalKeyValues];
    v14 = [v12 reverseTransformedValue:v13];
    v15 = [v10 key];
    [v8 setObject:v14 forKeyedSubscript:v15];
  }

  return v11;
}

+ (id)persistedPropertyNamesForEntityNames
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__PLMigrationHistoryJournalEntryPayload_persistedPropertyNamesForEntityNames__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (persistedPropertyNamesForEntityNames_onceToken_100288 != -1)
  {
    dispatch_once(&persistedPropertyNamesForEntityNames_onceToken_100288, block);
  }

  v2 = persistedPropertyNamesForEntityNames_persistedPropertyNamesForEntityNames_100289;

  return v2;
}

void __77__PLMigrationHistoryJournalEntryPayload_persistedPropertyNamesForEntityNames__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) persistedPropertyNamesForEntityNamesFromModelProperties];
  v2 = persistedPropertyNamesForEntityNames_persistedPropertyNamesForEntityNames_100289;
  persistedPropertyNamesForEntityNames_persistedPropertyNamesForEntityNames_100289 = v1;
}

+ (id)modelProperties
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__PLMigrationHistoryJournalEntryPayload_modelProperties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (modelProperties_onceToken_100290 != -1)
  {
    dispatch_once(&modelProperties_onceToken_100290, block);
  }

  v2 = modelProperties_modelProperties_100291;

  return v2;
}

uint64_t __56__PLMigrationHistoryJournalEntryPayload_modelProperties__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) modelPropertiesDescription];
  v3 = modelProperties_modelProperties_100291;
  modelProperties_modelProperties_100291 = v2;

  v4 = *(a1 + 32);
  v5 = modelProperties_modelProperties_100291;

  return [v4 loadModelPropertiesDescription:v5 parentPayloadProperty:0];
}

+ (id)modelPropertiesDescription
{
  v20[15] = *MEMORY[0x1E69E9840];
  v19[0] = @"index";
  v18 = +[PLJournalEntryPayloadProperty payloadPropertyForUUID];
  v20[0] = v18;
  v19[1] = @"modelVersion";
  v17 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v20[1] = v17;
  v19[2] = @"sourceModelVersion";
  v16 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v20[2] = v16;
  v19[3] = @"migrationType";
  v15 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v20[3] = v15;
  v19[4] = @"osVersion";
  v14 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v20[4] = v14;
  v19[5] = @"migrationDate";
  v13 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v20[5] = v13;
  v19[6] = @"forceRebuildReason";
  v2 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v20[6] = v2;
  v19[7] = @"origin";
  v3 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v20[7] = v3;
  v19[8] = @"globalKeyValues";
  v4 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v20[8] = v4;
  v19[9] = @"storeUUID";
  v5 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v20[9] = v5;
  v19[10] = @"frameworkUUID";
  v6 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v20[10] = v6;
  v19[11] = @"hardwareModel";
  v7 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v20[11] = v7;
  v19[12] = @"deviceUniqueID";
  v8 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v20[12] = v8;
  v19[13] = @"cplEnabled";
  v9 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v20[13] = v9;
  v19[14] = @"initialSyncDate";
  v10 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v20[14] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:15];

  return v11;
}

@end