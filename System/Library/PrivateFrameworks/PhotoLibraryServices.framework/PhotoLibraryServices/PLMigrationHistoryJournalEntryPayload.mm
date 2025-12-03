@interface PLMigrationHistoryJournalEntryPayload
+ (id)modelProperties;
+ (id)modelPropertiesDescription;
+ (id)persistedPropertyNamesForEntityNames;
- (BOOL)comparePayloadValue:(id)value toObjectDictionaryValue:(id)dictionaryValue forPayloadProperty:(id)property;
- (BOOL)updatePayloadAttributes:(id)attributes andNilAttributes:(id)nilAttributes withManagedObject:(id)object forPayloadProperty:(id)property;
- (id)insertMigrationHistoryFromDataInManagedObjectContext:(id)context;
- (id)payloadValueFromAttributes:(id)attributes forPayloadProperty:(id)property;
- (void)appendAttributeKey:(id)key value:(id)value toDescriptionBuilder:(id)builder;
- (void)applyPayloadProperty:(id)property toManagedObject:(id)object key:(id)key payloadAttributesToUpdate:(id)update;
@end

@implementation PLMigrationHistoryJournalEntryPayload

- (id)insertMigrationHistoryFromDataInManagedObjectContext:(id)context
{
  v4 = [(PLManagedObject *)PLMigrationHistory insertInManagedObjectContext:context];
  payloadID = [(PLManagedObjectJournalEntryPayload *)self payloadID];
  payloadIDString = [payloadID payloadIDString];
  [v4 setIndex:{objc_msgSend(payloadIDString, "longLongValue")}];

  [(PLManagedObjectJournalEntryPayload *)self applyPayloadToManagedObject:v4 payloadAttributesToUpdate:0];

  return v4;
}

- (BOOL)comparePayloadValue:(id)value toObjectDictionaryValue:(id)dictionaryValue forPayloadProperty:(id)property
{
  valueCopy = value;
  dictionaryValueCopy = dictionaryValue;
  propertyCopy = property;
  if ([propertyCopy isEqualToKey:@"globalKeyValues"])
  {
    v11 = 1;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = PLMigrationHistoryJournalEntryPayload;
    v11 = [(PLManagedObjectJournalEntryPayload *)&v13 comparePayloadValue:valueCopy toObjectDictionaryValue:dictionaryValueCopy forPayloadProperty:propertyCopy];
  }

  return v11;
}

- (void)applyPayloadProperty:(id)property toManagedObject:(id)object key:(id)key payloadAttributesToUpdate:(id)update
{
  propertyCopy = property;
  objectCopy = object;
  keyCopy = key;
  updateCopy = update;
  if ([propertyCopy requiresConversion])
  {
    v14 = [propertyCopy key];
    v15 = [v14 isEqualToString:@"globalKeyValues"];

    if (v15)
    {
      v16 = MEMORY[0x1E696B0A0];
      v17 = objectCopy;
      v18 = [v16 valueTransformerForName:@"PLGlobalKeyValueAnyTransformer"];
      payloadAttributes = self->super._payloadAttributes;
      v20 = [propertyCopy key];
      v21 = [(NSMutableDictionary *)payloadAttributes objectForKeyedSubscript:v20];
      v22 = [v18 transformedValue:v21];
      [v17 setGlobalKeyValues:v22];
    }
  }

  else
  {
    v23.receiver = self;
    v23.super_class = PLMigrationHistoryJournalEntryPayload;
    [(PLManagedObjectJournalEntryPayload *)&v23 applyPayloadProperty:propertyCopy toManagedObject:objectCopy key:keyCopy payloadAttributesToUpdate:updateCopy];
  }
}

- (id)payloadValueFromAttributes:(id)attributes forPayloadProperty:(id)property
{
  attributesCopy = attributes;
  propertyCopy = property;
  if ([propertyCopy isEqualToKey:@"globalKeyValues"])
  {
    v8 = [MEMORY[0x1E696B0A0] valueTransformerForName:@"PLGlobalKeyValueAnyTransformer"];
    v9 = [propertyCopy key];
    v10 = [attributesCopy objectForKeyedSubscript:v9];
    v11 = [v8 transformedValue:v10];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = PLMigrationHistoryJournalEntryPayload;
    v11 = [(PLManagedObjectJournalEntryPayload *)&v13 payloadValueFromAttributes:attributesCopy forPayloadProperty:propertyCopy];
  }

  return v11;
}

- (void)appendAttributeKey:(id)key value:(id)value toDescriptionBuilder:(id)builder
{
  keyCopy = key;
  valueCopy = value;
  builderCopy = builder;
  if ([keyCopy isEqualToString:@"globalKeyValues"])
  {
    v11 = [MEMORY[0x1E696B0A0] valueTransformerForName:@"PLGlobalKeyValueAnyTransformer"];
    v12 = [v11 transformedValue:valueCopy];
    v14.receiver = self;
    v14.super_class = PLMigrationHistoryJournalEntryPayload;
    [(PLManagedObjectJournalEntryPayload *)&v14 appendAttributeKey:keyCopy value:v12 toDescriptionBuilder:builderCopy];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = PLMigrationHistoryJournalEntryPayload;
    [(PLManagedObjectJournalEntryPayload *)&v13 appendAttributeKey:keyCopy value:valueCopy toDescriptionBuilder:builderCopy];
  }
}

- (BOOL)updatePayloadAttributes:(id)attributes andNilAttributes:(id)nilAttributes withManagedObject:(id)object forPayloadProperty:(id)property
{
  attributesCopy = attributes;
  objectCopy = object;
  propertyCopy = property;
  v11 = [propertyCopy isEqualToKey:@"globalKeyValues"];
  if (v11)
  {
    v12 = [MEMORY[0x1E696B0A0] valueTransformerForName:@"PLGlobalKeyValueAnyTransformer"];
    globalKeyValues = [objectCopy globalKeyValues];
    v14 = [v12 reverseTransformedValue:globalKeyValues];
    v15 = [propertyCopy key];
    [attributesCopy setObject:v14 forKeyedSubscript:v15];
  }

  return v11;
}

+ (id)persistedPropertyNamesForEntityNames
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__PLMigrationHistoryJournalEntryPayload_persistedPropertyNamesForEntityNames__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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
  block[4] = self;
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