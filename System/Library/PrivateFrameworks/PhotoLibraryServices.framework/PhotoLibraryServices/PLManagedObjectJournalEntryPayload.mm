@interface PLManagedObjectJournalEntryPayload
+ (BOOL)_populateObjectDictionary:(id)dictionary withObject:(id)object currentKeyPath:(id)path usingModelProperties:(id)properties payloadClass:(Class)class info:(id)info;
+ (BOOL)shouldPersistForChangedKeys:(id)keys entityName:(id)name;
+ (id)_populateRelationshipKeyPathsForPrefetching:(id)prefetching currentKeyPath:(id)path usingModelProperties:(id)properties;
+ (id)additionalEntityNames;
+ (id)fetchRelationshipPropertyValuesForRelationshipName:(id)name fromManagedObject:(id)object usingPayloadProperty:(id)property;
+ (id)modelProperties;
+ (id)modelPropertiesDescription;
+ (id)nonPersistedModelPropertiesDescription;
+ (id)objectDictionariesByUUIDForPayloadClass:(Class)class inManagedObjectContext:(id)context fetchPredicate:(id)predicate info:(id)info error:(id *)error;
+ (id)payloadClassID;
+ (id)payloadWithData:(id)data forPayloadID:(id)d version:(unsigned int)version andNilProperties:(id)properties error:(id *)error;
+ (id)persistedPropertyNamesForEntityNames;
+ (id)persistedPropertyNamesForEntityNamesFromModelProperties;
+ (id)relationshipKeyPathsForPrefetching;
+ (id)relationshipKeyPathsForPrefetchingWithModelProperties:(id)properties outUUIDPropertyName:(id *)name;
+ (id)sortedObjectsToAddWithUUIDs:(id)ds uuidKey:(id)key andExistingObjects:(id)objects fetchBlock:(id)block;
+ (unsigned)minimumSnapshotPayloadVersion;
+ (unsigned)payloadVersion;
+ (void)_populateAddtionalEntityNames:(id)names fromModelProperties:(id)properties;
+ (void)_populatePersistedPropertyNamesForAdditionalEntityNames:(id)names fromModelProperties:(id)properties;
+ (void)_populateValidationProperties:(id)properties fromEntityDescription:(id)description;
+ (void)_validateModelProperties:(id)properties nonPersistedModelProperties:(id)modelProperties forEntityDescription:(id)description;
+ (void)loadModelPropertiesDescription:(id)description parentPayloadProperty:(id)property;
+ (void)populateValidationPropertiesFromManagedObjectModel:(id)model;
+ (void)validatePayloadPropertiesForManagedObjectModel:(id)model;
- (BOOL)_applyModelProperties:(id)properties toPayloadAttributes:(id)attributes andNilAttributes:(id)nilAttributes fromSourceObject:(id)object changedKeys:(id)keys info:(id)info;
- (BOOL)_comparePayloadAttributes:(id)attributes toObjectDictionary:(id)dictionary currentKeyPath:(id)path usingModelProperties:(id)properties errorDescriptions:(id)descriptions;
- (BOOL)_decodePayloadAttributesFromData:(id)data error:(id *)error;
- (BOOL)comparePayloadValue:(id)value toObjectDictionaryValue:(id)dictionaryValue forPayloadProperty:(id)property;
- (BOOL)containsAttributeForKey:(id)key;
- (BOOL)payloadVersionIsLessThanVersion:(unsigned int)version forKey:(id)key inUpdatePayloads:(id)payloads;
- (NSString)debugDescription;
- (NSString)description;
- (PLManagedObjectJournalEntryPayload)initWithInsertAdapter:(id)adapter changedKeys:(id)keys;
- (PLManagedObjectJournalEntryPayload)initWithInsertAdapter:(id)adapter changedKeys:(id)keys info:(id)info;
- (PLManagedObjectJournalEntryPayload)initWithManagedObject:(id)object changedKeys:(id)keys;
- (PLManagedObjectJournalEntryPayload)initWithPayloadID:(id)d payloadVersion:(unsigned int)version nilAttributes:(id)attributes sourceObject:(id)object changedKeys:(id)keys modelProperties:(id)properties info:(id)info;
- (id)UUIDDataForString:(id)string;
- (id)UUIDStringForData:(id)data;
- (id)_attributesForPayloadAttributes:(id)attributes usingModelProperties:(id)properties;
- (id)_payloadAttributesListForSubRelationshipProperty:(id)property withManagedObjects:(id)objects info:(id)info;
- (id)descriptionForEntry:(id)entry;
- (id)descriptionForEntry:(id)entry withBuilder:(id)builder;
- (id)descriptionWithBuilder:(id)builder;
- (id)encodedDataForUUIDStringArray:(id)array;
- (id)encodedDataForUUIDStringOrderedSet:(id)set;
- (id)encodedDataForUUIDStringSet:(id)set;
- (id)orderedSetForUUIDEncodedData:(id)data;
- (id)payloadAttributes;
- (id)payloadDataWithError:(id *)error;
- (id)payloadValueFromAttributes:(id)attributes forPayloadProperty:(id)property;
- (id)prettyDescriptionForEntry:(id)entry indent:(int64_t)indent;
- (id)setForUUIDEncodedData:(id)data;
- (void)_applyPayloadProperty:(id)property toManagedObject:(id)object key:(id)key payloadAttributesToUpdate:(id)update payloadDictionary:(id)dictionary info:(id)info;
- (void)_applyPayloadToManagedObject:(id)object forModelProperties:(id)properties payloadAttributesToUpdate:(id)update info:(id)info;
- (void)_applySubRelationshipPayloadProperty:(id)property toManagedObject:(id)object key:(id)key payloadAttributesToUpdate:(id)update payloadDictionary:(id)dictionary info:(id)info;
- (void)_resolveRelationshipsInObjectDictionary:(id)dictionary atKeyPath:(id)path forPayloadProperty:(id)property;
- (void)_updateNilAttributes:(id)attributes withModelProperties:(id)properties;
- (void)addAttributesDescriptionToBuilder:(id)builder;
- (void)addNilAttributesToBuilder:(id)builder;
- (void)appendAttributeKey:(id)key value:(id)value toDescriptionBuilder:(id)builder;
- (void)applyPayloadProperty:(id)property toManagedObject:(id)object key:(id)key payloadAttributesToUpdate:(id)update payloadDictionary:(id)dictionary info:(id)info;
- (void)applyPayloadToManagedObject:(id)object payloadAttributesToUpdate:(id)update;
- (void)applyPayloadToManagedObject:(id)object payloadAttributesToUpdate:(id)update info:(id)info;
- (void)mergePayload:(id)payload;
- (void)updatePayloadAttributes:(id)attributes andNilAttributes:(id)nilAttributes forPayloadProperty:(id)property withUUIDStringData:(id)data;
@end

@implementation PLManagedObjectJournalEntryPayload

+ (id)additionalEntityNames
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  modelProperties = [self modelProperties];
  [self _populateAddtionalEntityNames:v3 fromModelProperties:modelProperties];

  return v3;
}

- (void)addAttributesDescriptionToBuilder:(id)builder
{
  v19 = *MEMORY[0x1E69E9840];
  builderCopy = builder;
  allKeys = [(NSMutableDictionary *)self->_payloadAttributes allKeys];
  v6 = [allKeys sortedArrayUsingSelector:sel_compare_];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        v13 = [(NSMutableDictionary *)self->_payloadAttributes objectForKeyedSubscript:v12, v14];
        [(PLManagedObjectJournalEntryPayload *)self appendAttributeKey:v12 value:v13 toDescriptionBuilder:builderCopy];
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

- (void)addNilAttributesToBuilder:(id)builder
{
  v19 = *MEMORY[0x1E69E9840];
  builderCopy = builder;
  if ([builderCopy style] == 1)
  {
    allObjects = [(NSMutableSet *)self->_nilAttributes allObjects];
    v6 = objc_alloc_init(MEMORY[0x1E696AD60]);
    [v6 appendString:@"["];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = allObjects;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v14 + 1) + 8 * i);
          [v6 appendString:{v12, v14}];
          lastObject = [v7 lastObject];

          if (v12 != lastObject)
          {
            [v6 appendString:{@", "}];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }

    [v6 appendString:@"]"];
    [builderCopy appendName:@"nilAttributes" object:v6];
  }

  else
  {
    [builderCopy appendName:@"nilAttributes" object:self->_nilAttributes];
  }
}

- (id)descriptionForEntry:(id)entry withBuilder:(id)builder
{
  builderCopy = builder;
  entryCopy = entry;
  payloadVersion = [(PLManagedObjectJournalEntryPayload *)self payloadVersion];
  payloadVersion2 = [entryCopy payloadVersion];

  if (payloadVersion != payloadVersion2)
  {
    [builderCopy appendName:@"version" integerValue:{-[PLManagedObjectJournalEntryPayload payloadVersion](self, "payloadVersion")}];
  }

  if ([(NSMutableSet *)self->_nilAttributes count])
  {
    [(PLManagedObjectJournalEntryPayload *)self addNilAttributesToBuilder:builderCopy];
  }

  if ([(NSMutableDictionary *)self->_payloadAttributes count])
  {
    [(PLManagedObjectJournalEntryPayload *)self addAttributesDescriptionToBuilder:builderCopy];
  }

  build = [builderCopy build];

  return build;
}

- (id)descriptionWithBuilder:(id)builder
{
  builderCopy = builder;
  payloadID = [(PLManagedObjectJournalEntryPayload *)self payloadID];
  [builderCopy appendName:@"payloadID" object:payloadID];

  [builderCopy appendName:@"version" integerValue:{-[PLManagedObjectJournalEntryPayload payloadVersion](self, "payloadVersion")}];
  if ([(NSMutableSet *)self->_nilAttributes count])
  {
    [(PLManagedObjectJournalEntryPayload *)self addNilAttributesToBuilder:builderCopy];
  }

  if ([(NSMutableDictionary *)self->_payloadAttributes count])
  {
    style = [builderCopy style];
    v7 = [PLDescriptionBuilder alloc];
    style2 = [builderCopy style];
    if (style == 1)
    {
      v9 = [(PLDescriptionBuilder *)v7 initWithObject:self style:style2 indent:0];
      [(PLManagedObjectJournalEntryPayload *)self addAttributesDescriptionToBuilder:v9];
      v10 = MEMORY[0x1E696AEC0];
      build = [(PLDescriptionBuilder *)v9 build];
      v12 = [v10 stringWithFormat:@"[%@]", build];
      [builderCopy appendName:@"attributes" object:v12];
    }

    else
    {
      v9 = -[PLDescriptionBuilder initWithObject:style:indent:](v7, "initWithObject:style:indent:", self, style2, [builderCopy indent] + 1);
      [(PLManagedObjectJournalEntryPayload *)self addAttributesDescriptionToBuilder:v9];
      if ([builderCopy style] == 2)
      {
        v13 = MEMORY[0x1E696AEC0];
        build2 = [(PLDescriptionBuilder *)v9 build];
        build = [v13 stringWithFormat:@"\n%@", build2];
      }

      else
      {
        build = [(PLDescriptionBuilder *)v9 build];
      }

      [builderCopy appendName:@"attributes" object:build];
    }
  }

  build3 = [builderCopy build];

  return build3;
}

- (id)prettyDescriptionForEntry:(id)entry indent:(int64_t)indent
{
  entryCopy = entry;
  v7 = [[PLDescriptionBuilder alloc] initWithObject:self style:3 indent:indent];
  v8 = [(PLManagedObjectJournalEntryPayload *)self descriptionForEntry:entryCopy withBuilder:v7];

  return v8;
}

- (id)descriptionForEntry:(id)entry
{
  entryCopy = entry;
  v5 = [[PLDescriptionBuilder alloc] initWithObject:self style:1 indent:0];
  v6 = [(PLManagedObjectJournalEntryPayload *)self descriptionForEntry:entryCopy withBuilder:v5];

  return v6;
}

- (NSString)debugDescription
{
  v3 = [[PLDescriptionBuilder alloc] initWithObject:self style:3 indent:0];
  v4 = [(PLManagedObjectJournalEntryPayload *)self descriptionWithBuilder:v3];

  return v4;
}

- (NSString)description
{
  v3 = [[PLDescriptionBuilder alloc] initWithObject:self style:1 indent:0];
  v4 = [(PLManagedObjectJournalEntryPayload *)self descriptionWithBuilder:v3];

  return v4;
}

- (id)_attributesForPayloadAttributes:(id)attributes usingModelProperties:(id)properties
{
  attributesCopy = attributes;
  v7 = MEMORY[0x1E695DF90];
  propertiesCopy = properties;
  v9 = objc_alloc_init(v7);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __91__PLManagedObjectJournalEntryPayload__attributesForPayloadAttributes_usingModelProperties___block_invoke;
  v15[3] = &unk_1E7572EE8;
  v15[4] = self;
  v16 = attributesCopy;
  v10 = v9;
  v17 = v10;
  v11 = attributesCopy;
  [propertiesCopy enumerateKeysAndObjectsUsingBlock:v15];

  v12 = v17;
  v13 = v10;

  return v10;
}

void __91__PLManagedObjectJournalEntryPayload__attributesForPayloadAttributes_usingModelProperties___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 subRelationshipProperties];

  if (!v5)
  {
    if ([v4 isUUIDKey])
    {
      goto LABEL_15;
    }

    v21 = [*(a1 + 32) payloadValueFromAttributes:*(a1 + 40) forPayloadProperty:v4];
    v22 = *(a1 + 48);
    v23 = [v4 key];
    [v22 setObject:v21 forKeyedSubscript:v23];

LABEL_14:
    goto LABEL_15;
  }

  if (([v4 isToManySubRelationship] & 1) == 0)
  {
    v24 = *(a1 + 32);
    v25 = *(a1 + 40);
    v26 = [v4 subRelationshipProperties];
    v21 = [v24 _attributesForPayloadAttributes:v25 usingModelProperties:v26];

    [*(a1 + 48) addEntriesFromDictionary:v21];
    goto LABEL_14;
  }

  v6 = *(a1 + 40);
  v7 = [v4 key];
  v8 = [v6 objectForKeyedSubscript:v7];

  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v28;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v28 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v27 + 1) + 8 * i);
        v16 = *(a1 + 32);
        v17 = [v4 subRelationshipProperties];
        v18 = [v16 _attributesForPayloadAttributes:v15 usingModelProperties:v17];
        [v9 addObject:v18];
      }

      v12 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v12);
  }

  v19 = *(a1 + 48);
  v20 = [v4 key];
  [v19 setObject:v9 forKeyedSubscript:v20];

LABEL_15:
}

- (void)applyPayloadToManagedObject:(id)object payloadAttributesToUpdate:(id)update info:(id)info
{
  infoCopy = info;
  updateCopy = update;
  objectCopy = object;
  modelProperties = [objc_opt_class() modelProperties];
  [(PLManagedObjectJournalEntryPayload *)self _applyPayloadToManagedObject:objectCopy forModelProperties:modelProperties payloadAttributesToUpdate:updateCopy info:infoCopy];
}

- (void)applyPayloadToManagedObject:(id)object payloadAttributesToUpdate:(id)update
{
  updateCopy = update;
  objectCopy = object;
  modelProperties = [objc_opt_class() modelProperties];
  [(PLManagedObjectJournalEntryPayload *)self _applyPayloadToManagedObject:objectCopy forModelProperties:modelProperties payloadAttributesToUpdate:updateCopy info:0];
}

- (void)updatePayloadAttributes:(id)attributes andNilAttributes:(id)nilAttributes forPayloadProperty:(id)property withUUIDStringData:(id)data
{
  attributesCopy = attributes;
  nilAttributesCopy = nilAttributes;
  dataCopy = data;
  v11 = [property key];
  if (dataCopy)
  {
    [attributesCopy setObject:dataCopy forKeyedSubscript:v11];
  }

  else
  {
    [nilAttributesCopy addObject:v11];
  }
}

- (BOOL)payloadVersionIsLessThanVersion:(unsigned int)version forKey:(id)key inUpdatePayloads:(id)payloads
{
  keyCopy = key;
  payloadsCopy = payloads;
  if (!keyCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLManagedObjectJournalEntryPayload.m" lineNumber:776 description:{@"Invalid parameter not satisfying: %@", @"key"}];
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  payloadVersion = [(PLManagedObjectJournalEntryPayload *)self payloadVersion];
  if (*(v18 + 6) >= version)
  {
    v11 = 0;
  }

  else
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __94__PLManagedObjectJournalEntryPayload_payloadVersionIsLessThanVersion_forKey_inUpdatePayloads___block_invoke;
    v14[3] = &unk_1E7564248;
    v15 = keyCopy;
    v16 = &v17;
    [payloadsCopy enumerateObjectsWithOptions:2 usingBlock:v14];
    v11 = *(v18 + 6) < version;
  }

  _Block_object_dispose(&v17, 8);

  return v11;
}

void __94__PLManagedObjectJournalEntryPayload_payloadVersionIsLessThanVersion_forKey_inUpdatePayloads___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if ([v6 containsAttributeForKey:*(a1 + 32)])
  {
    *(*(*(a1 + 40) + 8) + 24) = [v6 payloadVersion];
    *a4 = 1;
  }
}

- (id)UUIDStringForData:(id)data
{
  dataCopy = data;
  v6 = *MEMORY[0x1E69E9840];
  if (data)
  {
    memset(v5, 0, 37);
    uuid_unparse([data bytes], v5);
    dataCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v5];
  }

  return dataCopy;
}

- (id)UUIDDataForString:(id)string
{
  stringCopy = string;
  v6 = *MEMORY[0x1E69E9840];
  if (string)
  {
    memset(uu, 0, sizeof(uu));
    uuid_parse([string UTF8String], uu);
    stringCopy = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:uu length:16];
  }

  return stringCopy;
}

- (id)setForUUIDEncodedData:(id)data
{
  v14 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v4 = [dataCopy length];
  if (v4 >= 0x10)
  {
    v6 = v4 >> 4;
    v5 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:v4 >> 4];
    bytes = [dataCopy bytes];
    v8 = 0;
    v9 = 1;
    do
    {
      memset(v13, 0, sizeof(v13));
      uuid_unparse((bytes + 16 * v8), v13);
      v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v13];
      [v5 addObject:v10];

      v8 = v9;
    }

    while (v6 > v9++);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)orderedSetForUUIDEncodedData:(id)data
{
  v14 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v4 = [dataCopy length];
  if (v4 >= 0x10)
  {
    v6 = v4 >> 4;
    v5 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithCapacity:v4 >> 4];
    bytes = [dataCopy bytes];
    v8 = 0;
    v9 = 1;
    do
    {
      memset(v13, 0, sizeof(v13));
      uuid_unparse((bytes + 16 * v8), v13);
      v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v13];
      [v5 addObject:v10];

      v8 = v9;
    }

    while (v6 > v9++);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)encodedDataForUUIDStringArray:(id)array
{
  v23 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  if ([arrayCopy count])
  {
    v4 = 16 * [arrayCopy count];
    v5 = malloc_type_malloc(v4, 0x55FBA4F7uLL);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = arrayCopy;
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v18;
      do
      {
        v11 = 0;
        v12 = &v5[16 * v9];
        v9 += v8;
        do
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v13 = *(*(&v17 + 1) + 8 * v11);
          uTF8String = [v13 UTF8String];
          memset(uu, 0, sizeof(uu));
          uuid_parse(uTF8String, uu);
          *v12 = *uu;
          v12 += 16;
          ++v11;
        }

        while (v8 != v11);
        v8 = [v6 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v8);
    }

    v15 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v5 length:v4 freeWhenDone:1];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)encodedDataForUUIDStringOrderedSet:(id)set
{
  array = [set array];
  v5 = [(PLManagedObjectJournalEntryPayload *)self encodedDataForUUIDStringArray:array];

  return v5;
}

- (id)encodedDataForUUIDStringSet:(id)set
{
  allObjects = [set allObjects];
  v5 = [allObjects sortedArrayUsingSelector:sel_compare_];

  v6 = [(PLManagedObjectJournalEntryPayload *)self encodedDataForUUIDStringArray:v5];

  return v6;
}

- (id)payloadValueFromAttributes:(id)attributes forPayloadProperty:(id)property
{
  attributesCopy = attributes;
  v6 = [property key];
  v7 = [attributesCopy objectForKeyedSubscript:v6];

  return v7;
}

- (void)appendAttributeKey:(id)key value:(id)value toDescriptionBuilder:(id)builder
{
  keyCopy = key;
  valueCopy = value;
  builderCopy = builder;
  v9 = builderCopy;
  if (valueCopy)
  {
    if ([builderCopy style] == 1 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v9 appendName:keyCopy unsignedIntegerValue:{objc_msgSend(valueCopy, "count")}];
    }

    else
    {
      [v9 appendName:keyCopy object:valueCopy];
    }
  }
}

- (BOOL)comparePayloadValue:(id)value toObjectDictionaryValue:(id)dictionaryValue forPayloadProperty:(id)property
{
  valueCopy = value;
  dictionaryValueCopy = dictionaryValue;
  propertyCopy = property;
  v10 = propertyCopy;
  if (!valueCopy)
  {
    if ([propertyCopy isOptional])
    {
      valueCopy = 0;
    }

    else
    {
      valueCopy = [v10 defaultValue];
    }
  }

  if ([v10 type] == 500)
  {
    [dictionaryValueCopy doubleValue];
    v12 = v11;
    [valueCopy doubleValue];
    v14 = vabdd_f64(v12, v13) < 2.22044605e-16;
  }

  else
  {
    if ([v10 type] == 900 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v15 = objc_alloc_init(MEMORY[0x1E696AC80]);
      [v15 setFormatOptions:3955];
      v16 = [v15 dateFromString:dictionaryValueCopy];
      [v16 timeIntervalSinceReferenceDate];
      v18 = v17;

      [valueCopy timeIntervalSinceReferenceDate];
      v14 = vabdd_f64(v18, v19) < 0.001;
    }

    else
    {
      if ([v10 type] != 1000 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v14 = [dictionaryValueCopy isEqual:valueCopy];
        goto LABEL_15;
      }

      v15 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:dictionaryValueCopy options:0];
      v14 = [v15 isEqualToData:valueCopy];
    }
  }

LABEL_15:

  return v14;
}

- (void)_applyPayloadProperty:(id)property toManagedObject:(id)object key:(id)key payloadAttributesToUpdate:(id)update payloadDictionary:(id)dictionary info:(id)info
{
  propertyCopy = property;
  objectCopy = object;
  keyCopy = key;
  updateCopy = update;
  dictionaryCopy = dictionary;
  infoCopy = info;
  if (([propertyCopy requiresConversion] & 1) != 0 || (objc_msgSend(propertyCopy, "key"), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(dictionaryCopy, "objectForKeyedSubscript:", v19), v20 = objc_claimAutoreleasedReturnValue(), v20, v19, !v20))
  {
    subRelationshipProperties = [propertyCopy subRelationshipProperties];

    if (infoCopy && subRelationshipProperties)
    {
      [(PLManagedObjectJournalEntryPayload *)self _applySubRelationshipPayloadProperty:propertyCopy toManagedObject:objectCopy key:keyCopy payloadAttributesToUpdate:updateCopy payloadDictionary:dictionaryCopy info:infoCopy];
    }
  }

  else
  {
    v21 = [propertyCopy key];
    v22 = [dictionaryCopy objectForKeyedSubscript:v21];
    [objectCopy setValue:v22 forKey:keyCopy];
  }
}

- (void)_applySubRelationshipPayloadProperty:(id)property toManagedObject:(id)object key:(id)key payloadAttributesToUpdate:(id)update payloadDictionary:(id)dictionary info:(id)info
{
  v73 = *MEMORY[0x1E69E9840];
  propertyCopy = property;
  objectCopy = object;
  keyCopy = key;
  updateCopy = update;
  dictionaryCopy = dictionary;
  infoCopy = info;
  subRelationshipProperties = [propertyCopy subRelationshipProperties];

  if (subRelationshipProperties)
  {
    if ([propertyCopy isToManySubRelationship])
    {
      v15 = [propertyCopy key];
      v16 = [dictionaryCopy objectForKeyedSubscript:v15];

      if ([v16 count])
      {
        managedObjectContext = [objectCopy managedObjectContext];
        v38 = [objectCopy valueForKey:keyCopy];
        v70[0] = MEMORY[0x1E69E9820];
        v70[1] = 3221225472;
        v70[2] = __144__PLManagedObjectJournalEntryPayload__applySubRelationshipPayloadProperty_toManagedObject_key_payloadAttributesToUpdate_payloadDictionary_info___block_invoke;
        v70[3] = &unk_1E75641F8;
        v37 = objectCopy;
        v71 = v37;
        [v38 enumerateObjectsUsingBlock:v70];
        v18 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        obj = v16;
        v19 = [obj countByEnumeratingWithState:&v66 objects:v72 count:16];
        if (v19)
        {
          v20 = *v67;
          do
          {
            v21 = 0;
            do
            {
              if (*v67 != v20)
              {
                objc_enumerationMutation(obj);
              }

              v22 = *(*(&v66 + 1) + 8 * v21);
              v23 = MEMORY[0x1E695D5B8];
              subRelationshipEntityName = [propertyCopy subRelationshipEntityName];
              v25 = [v23 insertNewObjectForEntityForName:subRelationshipEntityName inManagedObjectContext:managedObjectContext];

              subRelationshipProperties2 = [propertyCopy subRelationshipProperties];
              v61[0] = MEMORY[0x1E69E9820];
              v61[1] = 3221225472;
              v61[2] = __144__PLManagedObjectJournalEntryPayload__applySubRelationshipPayloadProperty_toManagedObject_key_payloadAttributesToUpdate_payloadDictionary_info___block_invoke_2;
              v61[3] = &unk_1E756D0F8;
              v61[4] = self;
              v62 = v25;
              v63 = updateCopy;
              v64 = v22;
              v65 = infoCopy;
              v27 = v25;
              [subRelationshipProperties2 enumerateKeysAndObjectsUsingBlock:v61];

              [v18 addObject:v27];
              ++v21;
            }

            while (v19 != v21);
            v19 = [obj countByEnumeratingWithState:&v66 objects:v72 count:16];
          }

          while (v19);
        }

        [v37 setValue:v18 forKey:keyCopy];
      }

      else
      {
      }
    }

    else
    {
      v57 = 0;
      v58 = &v57;
      v59 = 0x2020000000;
      v60 = 0;
      subRelationshipProperties3 = [propertyCopy subRelationshipProperties];
      v52[0] = MEMORY[0x1E69E9820];
      v52[1] = 3221225472;
      v52[2] = __144__PLManagedObjectJournalEntryPayload__applySubRelationshipPayloadProperty_toManagedObject_key_payloadAttributesToUpdate_payloadDictionary_info___block_invoke_3;
      v52[3] = &unk_1E756C9D0;
      v29 = infoCopy;
      v53 = v29;
      selfCopy = self;
      v30 = dictionaryCopy;
      v55 = v30;
      v56 = &v57;
      [subRelationshipProperties3 enumerateKeysAndObjectsUsingBlock:v52];

      if (*(v58 + 24) == 1)
      {
        v31 = [objectCopy valueForKey:keyCopy];
        if (!v31)
        {
          v32 = MEMORY[0x1E695D5B8];
          subRelationshipEntityName2 = [propertyCopy subRelationshipEntityName];
          managedObjectContext2 = [objectCopy managedObjectContext];
          v31 = [v32 insertNewObjectForEntityForName:subRelationshipEntityName2 inManagedObjectContext:managedObjectContext2];

          [objectCopy setValue:v31 forKey:keyCopy];
        }

        subRelationshipProperties4 = [propertyCopy subRelationshipProperties];
        v46[0] = MEMORY[0x1E69E9820];
        v46[1] = 3221225472;
        v46[2] = __144__PLManagedObjectJournalEntryPayload__applySubRelationshipPayloadProperty_toManagedObject_key_payloadAttributesToUpdate_payloadDictionary_info___block_invoke_4;
        v46[3] = &unk_1E756D0F8;
        v47 = v29;
        selfCopy2 = self;
        v36 = v31;
        v49 = v36;
        v50 = updateCopy;
        v51 = v30;
        [subRelationshipProperties4 enumerateKeysAndObjectsUsingBlock:v46];
      }

      _Block_object_dispose(&v57, 8);
    }
  }
}

void __144__PLManagedObjectJournalEntryPayload__applySubRelationshipPayloadProperty_toManagedObject_key_payloadAttributesToUpdate_payloadDictionary_info___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 managedObjectContext];
  [v4 deleteObject:v3];
}

void __144__PLManagedObjectJournalEntryPayload__applySubRelationshipPayloadProperty_toManagedObject_key_payloadAttributesToUpdate_payloadDictionary_info___block_invoke_3(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v12 = a2;
  v7 = a3;
  v8 = a1[4];
  if (!v8 || [v8 shouldApplyWithPayloadProperty:v7 andPayload:a1[5]])
  {
    v9 = a1[6];
    v10 = [v7 key];
    v11 = [v9 objectForKeyedSubscript:v10];

    if (v11)
    {
      *(*(a1[7] + 8) + 24) = 1;
      *a4 = 1;
    }
  }
}

void __144__PLManagedObjectJournalEntryPayload__applySubRelationshipPayloadProperty_toManagedObject_key_payloadAttributesToUpdate_payloadDictionary_info___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  if (v6)
  {
    if (![v6 shouldApplyWithPayloadProperty:v5 andPayload:*(a1 + 40)])
    {
      goto LABEL_6;
    }

    v7 = *(a1 + 32);
  }

  else
  {
    v7 = 0;
  }

  [*(a1 + 40) applyPayloadProperty:v5 toManagedObject:*(a1 + 48) key:v8 payloadAttributesToUpdate:*(a1 + 56) payloadDictionary:*(a1 + 64) info:v7];
LABEL_6:
}

- (void)applyPayloadProperty:(id)property toManagedObject:(id)object key:(id)key payloadAttributesToUpdate:(id)update payloadDictionary:(id)dictionary info:(id)info
{
  propertyCopy = property;
  objectCopy = object;
  keyCopy = key;
  updateCopy = update;
  dictionaryCopy = dictionary;
  infoCopy = info;
  if (!infoCopy && self->_payloadAttributes == dictionaryCopy)
  {
    [(PLManagedObjectJournalEntryPayload *)self applyPayloadProperty:propertyCopy toManagedObject:objectCopy key:keyCopy payloadAttributesToUpdate:updateCopy];
  }

  else
  {
    [(PLManagedObjectJournalEntryPayload *)self _applyPayloadProperty:propertyCopy toManagedObject:objectCopy key:keyCopy payloadAttributesToUpdate:updateCopy payloadDictionary:dictionaryCopy info:infoCopy];
  }
}

- (id)payloadAttributes
{
  payloadAttributes = self->_payloadAttributes;
  modelProperties = [objc_opt_class() modelProperties];
  v5 = [(PLManagedObjectJournalEntryPayload *)self _attributesForPayloadAttributes:payloadAttributes usingModelProperties:modelProperties];

  return v5;
}

- (BOOL)containsAttributeForKey:(id)key
{
  keyCopy = key;
  v5 = [(NSMutableDictionary *)self->_payloadAttributes objectForKeyedSubscript:keyCopy];
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = [(NSMutableSet *)self->_nilAttributes containsObject:keyCopy];
  }

  return v6;
}

- (void)mergePayload:(id)payload
{
  payloadCopy = payload;
  [(NSMutableDictionary *)self->_payloadAttributes addEntriesFromDictionary:*(payloadCopy + 1)];
  if ([*(payloadCopy + 2) count])
  {
    payloadAttributes = self->_payloadAttributes;
    allObjects = [*(payloadCopy + 2) allObjects];
    [(NSMutableDictionary *)payloadAttributes removeObjectsForKeys:allObjects];
  }
}

- (id)payloadDataWithError:(id *)error
{
  if ([(NSMutableDictionary *)self->_payloadAttributes count])
  {
    [MEMORY[0x1E696AE40] dataWithPropertyList:self->_payloadAttributes format:200 options:0 error:error];
  }

  else
  {
    [MEMORY[0x1E695DEF0] data];
  }
  v5 = ;

  return v5;
}

- (BOOL)_decodePayloadAttributesFromData:(id)data error:(id *)error
{
  dataCopy = data;
  if ([dataCopy length])
  {
    v7 = [MEMORY[0x1E696AE40] propertyListWithData:dataCopy options:1 format:0 error:error];
    v8 = v7 != 0;
    if (v7)
    {
      [(PLManagedObjectJournalEntryPayload *)self migratePayloadAttributes:v7 andNilAttributes:self->_nilAttributes];
      objc_storeStrong(&self->_payloadAttributes, v7);
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)_applyPayloadToManagedObject:(id)object forModelProperties:(id)properties payloadAttributesToUpdate:(id)update info:(id)info
{
  objectCopy = object;
  updateCopy = update;
  infoCopy = info;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __117__PLManagedObjectJournalEntryPayload__applyPayloadToManagedObject_forModelProperties_payloadAttributesToUpdate_info___block_invoke;
  v16[3] = &unk_1E7572828;
  v17 = infoCopy;
  selfCopy = self;
  v19 = objectCopy;
  v20 = updateCopy;
  v13 = updateCopy;
  v14 = objectCopy;
  v15 = infoCopy;
  [properties enumerateKeysAndObjectsUsingBlock:v16];
}

void __117__PLManagedObjectJournalEntryPayload__applyPayloadToManagedObject_forModelProperties_payloadAttributesToUpdate_info___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  if (!v6 || [v6 shouldApplyWithPayloadProperty:v5 andPayload:*(a1 + 40)])
  {
    v7 = [v5 subRelationshipProperties];

    if (v7)
    {
      v8 = [*(a1 + 48) valueForKey:v19];
      if (v8)
      {
        v9 = [v5 isToManySubRelationship];
        v10 = *(a1 + 40);
        if ((v9 & 1) == 0)
        {
          v18 = [v5 subRelationshipProperties];
          [v10 _applyPayloadToManagedObject:v8 forModelProperties:v18 payloadAttributesToUpdate:*(a1 + 56) info:*(a1 + 32)];

          goto LABEL_13;
        }

        v11 = *(a1 + 48);
        v12 = *(a1 + 56);
        v13 = v10[1];
        v14 = *(a1 + 32);
        v15 = *(a1 + 40);
      }

      else
      {
        v17 = [v5 key];

        if (!v17)
        {
LABEL_13:

          goto LABEL_14;
        }

        v11 = *(a1 + 48);
        v12 = *(a1 + 56);
        v14 = *(a1 + 32);
        v15 = *(a1 + 40);
        v13 = v15[1];
      }

      [v15 applyPayloadProperty:v5 toManagedObject:v11 key:v19 payloadAttributesToUpdate:v12 payloadDictionary:v13 info:v14];
      goto LABEL_13;
    }

    v16 = [v5 key];

    if (v16)
    {
      [*(a1 + 40) applyPayloadProperty:v5 toManagedObject:*(a1 + 48) key:v19 payloadAttributesToUpdate:*(a1 + 56) payloadDictionary:*(*(a1 + 40) + 8) info:*(a1 + 32)];
    }
  }

LABEL_14:
}

- (BOOL)_applyModelProperties:(id)properties toPayloadAttributes:(id)attributes andNilAttributes:(id)nilAttributes fromSourceObject:(id)object changedKeys:(id)keys info:(id)info
{
  propertiesCopy = properties;
  attributesCopy = attributes;
  nilAttributesCopy = nilAttributes;
  objectCopy = object;
  keysCopy = keys;
  infoCopy = info;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __131__PLManagedObjectJournalEntryPayload__applyModelProperties_toPayloadAttributes_andNilAttributes_fromSourceObject_changedKeys_info___block_invoke;
  v26[3] = &unk_1E75641D0;
  v20 = keysCopy;
  v27 = v20;
  v21 = objectCopy;
  v28 = v21;
  v22 = infoCopy;
  v33 = &v34;
  v29 = v22;
  selfCopy = self;
  v23 = attributesCopy;
  v31 = v23;
  v24 = nilAttributesCopy;
  v32 = v24;
  [propertiesCopy enumerateKeysAndObjectsUsingBlock:v26];
  LOBYTE(attributesCopy) = *(v35 + 24);

  _Block_object_dispose(&v34, 8);
  return attributesCopy;
}

void __131__PLManagedObjectJournalEntryPayload__applyModelProperties_toPayloadAttributes_andNilAttributes_fromSourceObject_changedKeys_info___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v54 = a2;
  v7 = a3;
  v8 = v7;
  if (!*(a1 + 32))
  {
    v13 = [v7 subRelationshipProperties];

    if (v13)
    {
      v14 = [*(a1 + 40) valueForKey:v54];
      v15 = *(a1 + 48);
      if (!v15 || ([v15 validForPersistenceWithPayloadProperty:v8 andValue:v14 stop:*(*(a1 + 80) + 8) + 24] & 1) != 0)
      {
        if (!v14)
        {
          goto LABEL_55;
        }

        if ([v8 isToManySubRelationship])
        {
          v16 = [v8 key];

          if (v16)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v17 = [v14 allObjects];
                v18 = [v17 sortedArrayUsingComparator:&__block_literal_global_121];

                goto LABEL_42;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v18 = [v14 array];
LABEL_42:
                if (!v18)
                {
                  goto LABEL_55;
                }

                goto LABEL_46;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v18 = v14;
LABEL_46:
                v44 = [*(a1 + 56) _payloadAttributesListForSubRelationshipProperty:v8 withManagedObjects:v18 info:*(a1 + 48)];
                v45 = v44;
                if (v44)
                {
                  if ([v44 count])
                  {
                    v46 = *(a1 + 64);
                    v47 = [v8 key];
                    [v46 setObject:v45 forKeyedSubscript:v47];
                  }
                }

                else
                {
                  *(*(*(a1 + 80) + 8) + 24) = 1;
                  *a4 = 1;
                }

                goto LABEL_54;
              }
            }

LABEL_55:

            goto LABEL_56;
          }

          v49 = MEMORY[0x1E695DF30];
          v50 = MEMORY[0x1E696AEC0];
          v51 = objc_opt_class();
          v41 = NSStringFromClass(v51);
          v42 = [v50 stringWithFormat:@"Payload property has sub relationship properties, but relationship isn't to-one or to-many: %@, %@, %@", v41, v8, v14];
          v43 = v49;
LABEL_60:
          v52 = [v43 exceptionWithName:@"PayloadPropertyValidationException" reason:v42 userInfo:0];
          v53 = v52;

          objc_exception_throw(v52);
        }

LABEL_29:
        v27 = *(a1 + 56);
        v28 = [v8 subRelationshipProperties];
        *(*(*(a1 + 80) + 8) + 24) = [v27 _applyModelProperties:v28 toPayloadAttributes:*(a1 + 64) andNilAttributes:0 fromSourceObject:v14 changedKeys:0 info:*(a1 + 48)];
      }

LABEL_30:
      if (*(*(*(a1 + 80) + 8) + 24) == 1)
      {
        *a4 = 1;
      }

      goto LABEL_55;
    }
  }

  v9 = [v8 key];
  if (!v9)
  {
    goto LABEL_56;
  }

  v10 = v9;
  v11 = *(a1 + 32);
  if (!v11)
  {

    goto LABEL_16;
  }

  v12 = [v11 containsObject:v54];

  if (v12)
  {
LABEL_16:
    v14 = [*(a1 + 40) valueForKey:v54];
    v19 = *(a1 + 48);
    if (v19 && ([v19 validForPersistenceWithPayloadProperty:v8 andValue:v14 stop:*(*(a1 + 80) + 8) + 24] & 1) == 0)
    {
      goto LABEL_30;
    }

    if (v14)
    {
      if ([v8 requiresConversion])
      {
        v20 = [v8 subRelationshipProperties];

        if (!v20)
        {
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          v33 = *(a1 + 56);
          v34 = *(a1 + 64);
          v35 = *(a1 + 72);
          v36 = *(a1 + 40);
          if (isKindOfClass)
          {
            if ([v33 updatePayloadAttributes:v34 andNilAttributes:v35 withManagedObject:v36 forPayloadProperty:v8])
            {
              goto LABEL_55;
            }
          }

          else if ([v33 updatePayloadAttributes:v34 andNilAttributes:v35 withSourceObject:v36 forPayloadProperty:v8])
          {
            goto LABEL_55;
          }

          v38 = MEMORY[0x1E695DF30];
          v39 = MEMORY[0x1E696AEC0];
          v40 = objc_opt_class();
          v41 = NSStringFromClass(v40);
          v42 = [v39 stringWithFormat:@"Payload property not supported by payload class: %@, %@", v41, v8];
          v43 = v38;
          goto LABEL_60;
        }

        if (![v8 isToManySubRelationship])
        {
          goto LABEL_29;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_55;
        }

        v21 = [*(a1 + 56) _payloadAttributesListForSubRelationshipProperty:v8 withManagedObjects:v14 info:*(a1 + 48)];
        v18 = v21;
        if (v21)
        {
          if ([v21 count])
          {
            v22 = *(a1 + 64);
            v23 = [v8 key];
            [v22 setObject:v18 forKeyedSubscript:v23];
          }

          else
          {
            v48 = *(a1 + 72);
            v23 = [v8 key];
            [v48 addObject:v23];
          }
        }

        else
        {
          *(*(*(a1 + 80) + 8) + 24) = 1;
          *a4 = 1;
        }

LABEL_54:

        goto LABEL_55;
      }

      v29 = [v14 copy];
      v30 = *(a1 + 64);
      v31 = [v8 key];
      [v30 setObject:v29 forKeyedSubscript:v31];
    }

    else
    {
      if (!*(a1 + 32))
      {
        goto LABEL_55;
      }

      v24 = [v8 subRelationshipProperties];

      if (v24)
      {
        v25 = *(a1 + 56);
        v26 = *(a1 + 72);
        v18 = [v8 subRelationshipProperties];
        [v25 _updateNilAttributes:v26 withModelProperties:v18];
        goto LABEL_54;
      }

      v37 = *(a1 + 72);
      v29 = [v8 key];
      [v37 addObject:v29];
    }

    goto LABEL_55;
  }

LABEL_56:
}

uint64_t __131__PLManagedObjectJournalEntryPayload__applyModelProperties_toPayloadAttributes_andNilAttributes_fromSourceObject_changedKeys_info___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 objectID];
  v6 = [v5 URIRepresentation];
  v7 = [v6 absoluteString];
  v8 = [v4 objectID];

  v9 = [v8 URIRepresentation];
  v10 = [v9 absoluteString];
  v11 = [v7 compare:v10];

  return v11;
}

- (void)_updateNilAttributes:(id)attributes withModelProperties:(id)properties
{
  attributesCopy = attributes;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __79__PLManagedObjectJournalEntryPayload__updateNilAttributes_withModelProperties___block_invoke;
  v8[3] = &unk_1E756D1E8;
  v8[4] = self;
  v9 = attributesCopy;
  v7 = attributesCopy;
  [properties enumerateKeysAndObjectsUsingBlock:v8];
}

void __79__PLManagedObjectJournalEntryPayload__updateNilAttributes_withModelProperties___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = a3;
  v4 = [v12 subRelationshipProperties];
  if (v4 && (v5 = v4, v6 = [v12 isToManySubRelationship], v5, (v6 & 1) == 0))
  {
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v9 = [v12 subRelationshipProperties];
    [v10 _updateNilAttributes:v11 withModelProperties:v9];
  }

  else
  {
    v7 = [v12 key];

    if (!v7)
    {
      goto LABEL_7;
    }

    v8 = *(a1 + 40);
    v9 = [v12 key];
    [v8 addObject:v9];
  }

LABEL_7:
}

- (id)_payloadAttributesListForSubRelationshipProperty:(id)property withManagedObjects:(id)objects info:(id)info
{
  v33 = *MEMORY[0x1E69E9840];
  propertyCopy = property;
  objectsCopy = objects;
  infoCopy = info;
  v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v10 = objectsCopy;
  v11 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v29;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v29 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [objc_opt_class() payloadAdapterForManagedObject:*(*(&v28 + 1) + 8 * i)];
        v16 = v15;
        v27 = 0;
        if (infoCopy && ([v15 sourceObject], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(infoCopy, "validForPersistenceWithPayloadProperty:andValue:stop:", propertyCopy, v17, &v27), v17, (v18 & 1) == 0))
        {
          if (v27)
          {
            goto LABEL_18;
          }
        }

        else if ([v16 isValidForJournalPersistence])
        {
          v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
          subRelationshipProperties = [propertyCopy subRelationshipProperties];
          sourceObject = [v16 sourceObject];
          v27 = [(PLManagedObjectJournalEntryPayload *)self _applyModelProperties:subRelationshipProperties toPayloadAttributes:v19 andNilAttributes:0 fromSourceObject:sourceObject changedKeys:0 info:infoCopy];

          if (v27)
          {

LABEL_18:
            v23 = 0;
            v22 = v25;
            goto LABEL_19;
          }

          if ([v19 count])
          {
            [v25 addObject:v19];
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v22 = v25;
  v23 = v25;
LABEL_19:

  return v23;
}

- (PLManagedObjectJournalEntryPayload)initWithPayloadID:(id)d payloadVersion:(unsigned int)version nilAttributes:(id)attributes sourceObject:(id)object changedKeys:(id)keys modelProperties:(id)properties info:(id)info
{
  dCopy = d;
  attributesCopy = attributes;
  objectCopy = object;
  keysCopy = keys;
  propertiesCopy = properties;
  infoCopy = info;
  if (!dCopy)
  {
    goto LABEL_16;
  }

  v34.receiver = self;
  v34.super_class = PLManagedObjectJournalEntryPayload;
  self = [(PLManagedObjectJournalEntryPayload *)&v34 init];
  if (!self)
  {
    goto LABEL_16;
  }

  v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
  payloadAttributes = self->_payloadAttributes;
  self->_payloadAttributes = v22;

  objc_storeStrong(&self->_payloadID, d);
  self->_payloadVersion = version;
  if (!objectCopy)
  {
    v25 = [attributesCopy mutableCopy];
    nilAttributes = self->_nilAttributes;
    self->_nilAttributes = v25;

LABEL_16:
    self = self;
    selfCopy = self;
    goto LABEL_17;
  }

  if (keysCopy)
  {
    v24 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  }

  else
  {
    v24 = 0;
  }

  v27 = self->_nilAttributes;
  self->_nilAttributes = v24;

  v28 = [(PLManagedObjectJournalEntryPayload *)self _applyModelProperties:propertiesCopy toPayloadAttributes:self->_payloadAttributes andNilAttributes:self->_nilAttributes fromSourceObject:objectCopy changedKeys:keysCopy info:infoCopy];
  v29 = v28;
  if (keysCopy && !v28)
  {
    if ([(NSMutableDictionary *)self->_payloadAttributes count]|| [(NSMutableSet *)self->_nilAttributes count])
    {
      selfCopy2 = self;
    }

    else
    {
      selfCopy2 = 0;
    }

    v31 = selfCopy2;

    self = v31;
  }

  if (!v29)
  {
    goto LABEL_16;
  }

  selfCopy = 0;
LABEL_17:

  return selfCopy;
}

- (PLManagedObjectJournalEntryPayload)initWithManagedObject:(id)object changedKeys:(id)keys
{
  keysCopy = keys;
  objectCopy = object;
  payloadID = [objectCopy payloadID];
  payloadVersion = [objc_opt_class() payloadVersion];
  modelProperties = [objc_opt_class() modelProperties];
  v11 = [(PLManagedObjectJournalEntryPayload *)self initWithPayloadID:payloadID payloadVersion:payloadVersion nilAttributes:0 sourceObject:objectCopy changedKeys:keysCopy modelProperties:modelProperties info:0];

  return v11;
}

- (PLManagedObjectJournalEntryPayload)initWithInsertAdapter:(id)adapter changedKeys:(id)keys info:(id)info
{
  infoCopy = info;
  keysCopy = keys;
  adapterCopy = adapter;
  payloadID = [adapterCopy payloadID];
  payloadVersion = [objc_opt_class() payloadVersion];
  sourceObject = [adapterCopy sourceObject];

  modelProperties = [objc_opt_class() modelProperties];
  v15 = [(PLManagedObjectJournalEntryPayload *)self initWithPayloadID:payloadID payloadVersion:payloadVersion nilAttributes:0 sourceObject:sourceObject changedKeys:keysCopy modelProperties:modelProperties info:infoCopy];

  return v15;
}

- (PLManagedObjectJournalEntryPayload)initWithInsertAdapter:(id)adapter changedKeys:(id)keys
{
  keysCopy = keys;
  adapterCopy = adapter;
  payloadID = [adapterCopy payloadID];
  payloadVersion = [objc_opt_class() payloadVersion];
  sourceObject = [adapterCopy sourceObject];

  modelProperties = [objc_opt_class() modelProperties];
  v12 = [(PLManagedObjectJournalEntryPayload *)self initWithPayloadID:payloadID payloadVersion:payloadVersion nilAttributes:0 sourceObject:sourceObject changedKeys:keysCopy modelProperties:modelProperties info:0];

  return v12;
}

+ (id)objectDictionariesByUUIDForPayloadClass:(Class)class inManagedObjectContext:(id)context fetchPredicate:(id)predicate info:(id)info error:(id *)error
{
  v52 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v12 = MEMORY[0x1E695DF90];
  predicateCopy = predicate;
  contextCopy = context;
  v15 = objc_alloc_init(v12);
  modelProperties = [(objc_class *)class modelProperties];
  v47 = 0;
  v17 = [PLManagedObjectJournalEntryPayload relationshipKeyPathsForPrefetchingWithModelProperties:modelProperties outUUIDPropertyName:&v47];
  v18 = v47;

  v19 = objc_alloc(MEMORY[0x1E695D5E0]);
  entityName = [(objc_class *)class entityName];
  v21 = [v19 initWithEntityName:entityName];

  [v21 setReturnsObjectsAsFaults:0];
  [v21 setRelationshipKeyPathsForPrefetching:v17];
  [v21 setShouldRefreshRefetchedObjects:1];
  [v21 setPredicate:predicateCopy];

  v46 = 0;
  v22 = [contextCopy executeFetchRequest:v21 error:&v46];

  v23 = v46;
  v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v25 = v24;
  if (v22)
  {
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __127__PLManagedObjectJournalEntryPayload_objectDictionariesByUUIDForPayloadClass_inManagedObjectContext_fetchPredicate_info_error___block_invoke;
    v43[3] = &unk_1E7564298;
    v26 = v24;
    v44 = v26;
    classCopy = class;
    [v22 enumerateObjectsUsingBlock:v43];

    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __127__PLManagedObjectJournalEntryPayload_objectDictionariesByUUIDForPayloadClass_inManagedObjectContext_fetchPredicate_info_error___block_invoke_139;
    v37[3] = &unk_1E75642C0;
    selfCopy = self;
    classCopy2 = class;
    v38 = infoCopy;
    v39 = v18;
    v27 = v15;
    v40 = v27;
    [v26 enumerateObjectsUsingBlock:v37];
    v28 = v27;
  }

  else
  {
    v36 = v15;
    v29 = infoCopy;
    v30 = PLMigrationGetLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [(objc_class *)class payloadClassID];
      v32 = v31 = error;
      *buf = 138543618;
      v49 = v32;
      v50 = 2112;
      v51 = v23;
      _os_log_impl(&dword_19BF1F000, v30, OS_LOG_TYPE_ERROR, "Fetch failed for payload class %{public}@, error: %@", buf, 0x16u);

      error = v31;
    }

    if (error)
    {
      v33 = v23;
      v28 = 0;
      *error = v23;
    }

    else
    {
      v28 = 0;
    }

    infoCopy = v29;
    v15 = v36;
  }

  return v28;
}

void __127__PLManagedObjectJournalEntryPayload_objectDictionariesByUUIDForPayloadClass_inManagedObjectContext_fetchPredicate_info_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) payloadAdapterForManagedObject:a2];
  [v2 addObject:v3];
}

void __127__PLManagedObjectJournalEntryPayload_objectDictionariesByUUIDForPayloadClass_inManagedObjectContext_fetchPredicate_info_error___block_invoke_139(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 isValidForJournalPersistence])
  {
    v4 = [v3 sourceObject];
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v6 = *(a1 + 56);
    v7 = [*(a1 + 64) modelProperties];
    LOBYTE(v6) = [v6 _populateObjectDictionary:v5 withObject:v4 currentKeyPath:&stru_1F0F06D80 usingModelProperties:v7 payloadClass:*(a1 + 64) info:*(a1 + 32)];

    if ((v6 & 1) != 0 || ([v5 objectForKeyedSubscript:*(a1 + 40)], (v8 = objc_claimAutoreleasedReturnValue()) == 0))
    {
LABEL_15:

      goto LABEL_16;
    }

    v9 = v8;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 stringValue];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_9:
        v12 = [*(a1 + 48) objectForKeyedSubscript:v9];

        if (v12)
        {
          v13 = PLMigrationGetLog();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            v14 = [*(a1 + 64) payloadClassID];
            v15 = 138543618;
            v16 = v14;
            v17 = 2114;
            v18 = v9;
            _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "Duplicate object dictionary found for payload class %{public}@ with UUID %{public}@", &v15, 0x16u);
          }
        }

        else
        {
          [*(a1 + 48) setObject:v5 forKeyedSubscript:v9];
        }

        goto LABEL_15;
      }

      v10 = [v9 description];
    }

    v11 = v10;

    v9 = v11;
    goto LABEL_9;
  }

LABEL_16:
}

+ (id)fetchRelationshipPropertyValuesForRelationshipName:(id)name fromManagedObject:(id)object usingPayloadProperty:(id)property
{
  v65[1] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  objectCopy = object;
  propertyCopy = property;
  entity = [objectCopy entity];
  relationshipsByName = [entity relationshipsByName];
  v13 = [relationshipsByName objectForKeyedSubscript:nameCopy];

  inverseRelationship = [v13 inverseRelationship];
  v15 = inverseRelationship;
  if (v13 && inverseRelationship)
  {
    selfCopy = self;
    v52 = entity;
    v53 = propertyCopy;
    relatedEntityPropertyNames = [propertyCopy relatedEntityPropertyNames];
    anyObject = [relatedEntityPropertyNames anyObject];

    v18 = MEMORY[0x1E695D5E0];
    entity2 = [v15 entity];
    name = [entity2 name];
    v21 = [v18 fetchRequestWithEntityName:name];

    [v21 setResultType:2];
    LODWORD(v18) = [v15 isToMany];
    v22 = MEMORY[0x1E696AE18];
    name2 = [v15 name];
    v24 = name2;
    if (v18)
    {
      v25 = @"%K CONTAINS %@";
    }

    else
    {
      v25 = @"%K = %@";
    }

    objectCopy = [v22 predicateWithFormat:v25, name2, objectCopy];
    [v21 setPredicate:objectCopy];

    [v21 setAllocationType:1];
    v65[0] = anyObject;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:1];
    [v21 setPropertiesToFetch:v27];

    if ([v13 isOrdered])
    {
      v28 = MEMORY[0x1E696AEB0];
      name3 = [v15 name];
      v30 = [v28 sortDescriptorWithKey:name3 ascending:1];
      v64 = v30;
      v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v64 count:1];
      [v21 setSortDescriptors:v31];
    }

    managedObjectContext = [objectCopy managedObjectContext];
    v57 = 0;
    v33 = [managedObjectContext executeFetchRequest:v21 error:&v57];
    v34 = v57;

    if (v33)
    {
      v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v54[0] = MEMORY[0x1E69E9820];
      v54[1] = 3221225472;
      v54[2] = __128__PLManagedObjectJournalEntryPayload_fetchRelationshipPropertyValuesForRelationshipName_fromManagedObject_usingPayloadProperty___block_invoke;
      v54[3] = &unk_1E756D820;
      v55 = anyObject;
      v36 = v35;
      v56 = v36;
      [v33 enumerateObjectsUsingBlock:v54];
      v37 = v21;
      v38 = v33;
      v39 = v15;
      v40 = v13;
      v41 = anyObject;
      v42 = objectCopy;
      v43 = v34;
      v44 = nameCopy;
      v45 = v56;
      v46 = v36;

      nameCopy = v44;
      v34 = v43;
      objectCopy = v42;
      anyObject = v41;
      v13 = v40;
      v15 = v39;
      v33 = v38;
      v21 = v37;
      v47 = v46;
    }

    else
    {
      v47 = PLMigrationGetLog();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        payloadClassID = [selfCopy payloadClassID];
        *buf = 138412802;
        v59 = anyObject;
        v60 = 2112;
        v61 = payloadClassID;
        v62 = 2112;
        v63 = v34;
        _os_log_impl(&dword_19BF1F000, v47, OS_LOG_TYPE_ERROR, "JournalManager: failed to fetch relationship properties for relationship %@ on %@, error: %@", buf, 0x20u);
      }

      v46 = 0;
    }

    entity = v52;
    propertyCopy = v53;
  }

  else
  {
    anyObject = PLMigrationGetLog();
    if (os_log_type_enabled(anyObject, OS_LOG_TYPE_ERROR))
    {
      payloadClassID2 = [self payloadClassID];
      *buf = 138543618;
      v59 = nameCopy;
      v60 = 2114;
      v61 = payloadClassID2;
      _os_log_impl(&dword_19BF1F000, anyObject, OS_LOG_TYPE_ERROR, "JournalManager: relationship %{public}@ on %{public}@ does not define an inverse relationship", buf, 0x16u);
    }

    v46 = 0;
  }

  return v46;
}

void __128__PLManagedObjectJournalEntryPayload_fetchRelationshipPropertyValuesForRelationshipName_fromManagedObject_usingPayloadProperty___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:*(a1 + 32)];
  if (v3)
  {
    v4 = v3;
    [*(a1 + 40) addObject:v3];
    v3 = v4;
  }
}

+ (id)relationshipKeyPathsForPrefetchingWithModelProperties:(id)properties outUUIDPropertyName:(id *)name
{
  v6 = MEMORY[0x1E695DF70];
  propertiesCopy = properties;
  v8 = objc_alloc_init(v6);
  v9 = [self _populateRelationshipKeyPathsForPrefetching:v8 currentKeyPath:&stru_1F0F06D80 usingModelProperties:propertiesCopy];

  if (name)
  {
    v10 = v9;
    *name = v9;
  }

  return v8;
}

+ (id)_populateRelationshipKeyPathsForPrefetching:(id)prefetching currentKeyPath:(id)path usingModelProperties:(id)properties
{
  prefetchingCopy = prefetching;
  pathCopy = path;
  propertiesCopy = properties;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__144;
  v24 = __Block_byref_object_dispose__145;
  v25 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __118__PLManagedObjectJournalEntryPayload__populateRelationshipKeyPathsForPrefetching_currentKeyPath_usingModelProperties___block_invoke;
  v15[3] = &unk_1E7564270;
  v11 = pathCopy;
  v16 = v11;
  v12 = prefetchingCopy;
  v18 = &v20;
  selfCopy = self;
  v17 = v12;
  [propertiesCopy enumerateKeysAndObjectsUsingBlock:v15];
  v13 = v21[5];

  _Block_object_dispose(&v20, 8);

  return v13;
}

void __118__PLManagedObjectJournalEntryPayload__populateRelationshipKeyPathsForPrefetching_currentKeyPath_usingModelProperties___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = a2;
  v5 = a3;
  v6 = [v5 subRelationshipProperties];

  if (v6)
  {
    v7 = [*(a1 + 32) stringByAppendingString:v21];
    v8 = [v7 stringByAppendingString:@"."];

    v9 = *(a1 + 40);
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", *(a1 + 32), v21];
    [v9 addObject:v10];

    v11 = *(a1 + 56);
    v12 = *(a1 + 40);
    v13 = [v5 subRelationshipProperties];
    v14 = [v11 _populateRelationshipKeyPathsForPrefetching:v12 currentKeyPath:v8 usingModelProperties:v13];

LABEL_8:
    goto LABEL_9;
  }

  if ([v5 isUUIDKey])
  {
    v15 = *(*(a1 + 48) + 8);
    v16 = v21;
    v8 = *(v15 + 40);
    *(v15 + 40) = v16;
    goto LABEL_8;
  }

  v17 = [v5 relatedEntityPropertyNames];
  if (v17)
  {
    v18 = v17;
    v19 = [v5 shouldPrefetchRelationship];

    if (v19)
    {
      v20 = *(a1 + 40);
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", *(a1 + 32), v21];
      [v20 addObject:v8];
      goto LABEL_8;
    }
  }

LABEL_9:
}

+ (id)sortedObjectsToAddWithUUIDs:(id)ds uuidKey:(id)key andExistingObjects:(id)objects fetchBlock:(id)block
{
  dsCopy = ds;
  keyCopy = key;
  blockCopy = block;
  v12 = [objects valueForKey:keyCopy];
  if ([dsCopy count] && (objc_msgSend(dsCopy, "isEqual:", v12) & 1) == 0)
  {
    v14 = blockCopy[2](blockCopy);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __104__PLManagedObjectJournalEntryPayload_sortedObjectsToAddWithUUIDs_uuidKey_andExistingObjects_fetchBlock___block_invoke;
    v16[3] = &unk_1E7567600;
    v17 = dsCopy;
    v18 = keyCopy;
    v13 = [v14 sortedArrayUsingComparator:v16];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t __104__PLManagedObjectJournalEntryPayload_sortedObjectsToAddWithUUIDs_uuidKey_andExistingObjects_fetchBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a3;
  v8 = [a2 valueForKey:v6];
  v9 = [v5 indexOfObject:v8];

  v10 = *(a1 + 32);
  v11 = [v7 valueForKey:*(a1 + 40)];

  v12 = [v10 indexOfObject:v11];
  if (v9 < v12)
  {
    return -1;
  }

  else
  {
    return v9 > v12;
  }
}

+ (void)_populateAddtionalEntityNames:(id)names fromModelProperties:(id)properties
{
  namesCopy = names;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __88__PLManagedObjectJournalEntryPayload__populateAddtionalEntityNames_fromModelProperties___block_invoke;
  v8[3] = &unk_1E7564220;
  v9 = namesCopy;
  selfCopy = self;
  v7 = namesCopy;
  [properties enumerateKeysAndObjectsUsingBlock:v8];
}

void __88__PLManagedObjectJournalEntryPayload__populateAddtionalEntityNames_fromModelProperties___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = a3;
  v4 = [v14 subRelationshipProperties];

  if (v4)
  {
    v5 = [v14 subRelationshipEntityName];
    if (v5)
    {
      v6 = v5;
      v7 = [v14 isAdditionalEntityName];

      if (v7)
      {
        v8 = *(a1 + 32);
        v9 = [v14 subRelationshipEntityName];
        [v8 addObject:v9];
      }
    }

    v12 = a1 + 32;
    v10 = *(a1 + 32);
    v11 = *(v12 + 8);
    v13 = [v14 subRelationshipProperties];
    [v11 _populateAddtionalEntityNames:v10 fromModelProperties:v13];
  }
}

+ (void)_populatePersistedPropertyNamesForAdditionalEntityNames:(id)names fromModelProperties:(id)properties
{
  namesCopy = names;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __114__PLManagedObjectJournalEntryPayload__populatePersistedPropertyNamesForAdditionalEntityNames_fromModelProperties___block_invoke;
  v8[3] = &unk_1E7564220;
  v9 = namesCopy;
  selfCopy = self;
  v7 = namesCopy;
  [properties enumerateKeysAndObjectsUsingBlock:v8];
}

void __114__PLManagedObjectJournalEntryPayload__populatePersistedPropertyNamesForAdditionalEntityNames_fromModelProperties___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = a3;
  v4 = [v16 subRelationshipProperties];

  if (v4)
  {
    v5 = [v16 subRelationshipEntityName];

    if (v5)
    {
      v6 = MEMORY[0x1E695DFD8];
      v7 = [v16 subRelationshipProperties];
      v8 = [v7 allKeys];
      v9 = [v6 setWithArray:v8];
      v10 = *(a1 + 32);
      v11 = [v16 subRelationshipEntityName];
      [v10 setObject:v9 forKeyedSubscript:v11];
    }

    v14 = a1 + 32;
    v12 = *(a1 + 32);
    v13 = *(v14 + 8);
    v15 = [v16 subRelationshipProperties];
    [v13 _populatePersistedPropertyNamesForAdditionalEntityNames:v12 fromModelProperties:v15];
  }
}

+ (id)persistedPropertyNamesForEntityNamesFromModelProperties
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  modelProperties = [self modelProperties];
  v5 = MEMORY[0x1E695DFD8];
  allKeys = [modelProperties allKeys];
  v7 = [v5 setWithArray:allKeys];
  entityName = [self entityName];
  [v3 setObject:v7 forKeyedSubscript:entityName];

  [self _populatePersistedPropertyNamesForAdditionalEntityNames:v3 fromModelProperties:modelProperties];

  return v3;
}

+ (void)loadModelPropertiesDescription:(id)description parentPayloadProperty:(id)property
{
  propertyCopy = property;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __91__PLManagedObjectJournalEntryPayload_loadModelPropertiesDescription_parentPayloadProperty___block_invoke;
  v8[3] = &unk_1E7564220;
  v9 = propertyCopy;
  selfCopy = self;
  v7 = propertyCopy;
  [description enumerateKeysAndObjectsUsingBlock:v8];
}

void __91__PLManagedObjectJournalEntryPayload_loadModelPropertiesDescription_parentPayloadProperty___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  [v7 setParentProperty:*(a1 + 32)];
  v4 = [v7 subRelationshipProperties];

  if (v4)
  {
    v5 = *(a1 + 40);
    v6 = [v7 subRelationshipProperties];
    [v5 loadModelPropertiesDescription:v6 parentPayloadProperty:v7];
  }
}

+ (id)nonPersistedModelPropertiesDescription
{
  selfCopy = self;
  v3 = PLAbstractMethodException();
  objc_exception_throw(v3);
}

+ (id)modelPropertiesDescription
{
  selfCopy = self;
  v3 = PLAbstractMethodException();
  objc_exception_throw(v3);
}

+ (id)payloadClassID
{
  selfCopy = self;
  v3 = PLAbstractMethodException();
  objc_exception_throw(v3);
}

+ (id)payloadWithData:(id)data forPayloadID:(id)d version:(unsigned int)version andNilProperties:(id)properties error:(id *)error
{
  v9 = *&version;
  dataCopy = data;
  propertiesCopy = properties;
  dCopy = d;
  v15 = [[self alloc] initWithPayloadID:dCopy payloadVersion:v9 nilAttributes:propertiesCopy];

  if (dataCopy && ![v15 _decodePayloadAttributesFromData:dataCopy error:error])
  {
    v16 = 0;
  }

  else
  {
    v16 = v15;
  }

  return v16;
}

+ (id)relationshipKeyPathsForPrefetching
{
  modelProperties = [self modelProperties];
  v4 = [self relationshipKeyPathsForPrefetchingWithModelProperties:modelProperties outUUIDPropertyName:0];

  return v4;
}

+ (BOOL)shouldPersistForChangedKeys:(id)keys entityName:(id)name
{
  keysCopy = keys;
  nameCopy = name;
  persistedPropertyNamesForEntityNames = [self persistedPropertyNamesForEntityNames];
  v9 = [persistedPropertyNamesForEntityNames objectForKeyedSubscript:nameCopy];

  if (v9)
  {
    v10 = [keysCopy intersectsSet:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (unsigned)minimumSnapshotPayloadVersion
{
  selfCopy = self;
  v3 = PLAbstractMethodException();
  objc_exception_throw(v3);
}

+ (unsigned)payloadVersion
{
  selfCopy = self;
  v3 = PLAbstractMethodException();
  objc_exception_throw(v3);
}

+ (id)persistedPropertyNamesForEntityNames
{
  selfCopy = self;
  v3 = PLAbstractMethodException();
  objc_exception_throw(v3);
}

+ (id)modelProperties
{
  selfCopy = self;
  v3 = PLAbstractMethodException();
  objc_exception_throw(v3);
}

+ (void)populateValidationPropertiesFromManagedObjectModel:(id)model
{
  entitiesByName = [model entitiesByName];
  entityName = [self entityName];
  v7 = [entitiesByName objectForKeyedSubscript:entityName];

  modelProperties = [objc_opt_class() modelProperties];
  [self _populateValidationProperties:modelProperties fromEntityDescription:v7];
}

+ (void)validatePayloadPropertiesForManagedObjectModel:(id)model
{
  entitiesByName = [model entitiesByName];
  entityName = [self entityName];
  v9 = [entitiesByName objectForKeyedSubscript:entityName];

  v6 = objc_opt_class();
  modelProperties = [objc_opt_class() modelProperties];
  nonPersistedModelPropertiesDescription = [objc_opt_class() nonPersistedModelPropertiesDescription];
  [v6 _validateModelProperties:modelProperties nonPersistedModelProperties:nonPersistedModelPropertiesDescription forEntityDescription:v9];
}

- (void)_resolveRelationshipsInObjectDictionary:(id)dictionary atKeyPath:(id)path forPayloadProperty:(id)property
{
  v35 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  pathCopy = path;
  propertyCopy = property;
  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v11 = propertyCopy;
  subRelationshipProperties = [propertyCopy subRelationshipProperties];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __148__PLManagedObjectJournalEntryPayload_PLJournalEntryPayloadValidationInternal___resolveRelationshipsInObjectDictionary_atKeyPath_forPayloadProperty___block_invoke;
  v30[3] = &unk_1E7572EE8;
  v13 = pathCopy;
  v31 = v13;
  v14 = dictionaryCopy;
  v32 = v14;
  v15 = v10;
  v33 = v15;
  [subRelationshipProperties enumerateKeysAndObjectsUsingBlock:v30];

  if ([v15 count])
  {
    v22 = v14;
    [v14 objectForKeyedSubscript:v13];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = v29 = 0u;
    v16 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v27;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v27 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v26 + 1) + 8 * i);
          subRelationshipProperties2 = [v11 subRelationshipProperties];
          v24[0] = MEMORY[0x1E69E9820];
          v24[1] = 3221225472;
          v24[2] = __148__PLManagedObjectJournalEntryPayload_PLJournalEntryPayloadValidationInternal___resolveRelationshipsInObjectDictionary_atKeyPath_forPayloadProperty___block_invoke_3;
          v24[3] = &unk_1E756D1E8;
          v24[4] = v20;
          v25 = v15;
          [subRelationshipProperties2 enumerateKeysAndObjectsUsingBlock:v24];
        }

        v17 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v17);
    }

    v14 = v22;
  }
}

void __148__PLManagedObjectJournalEntryPayload_PLJournalEntryPayloadValidationInternal___resolveRelationshipsInObjectDictionary_atKeyPath_forPayloadProperty___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v56 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v6 relatedEntityPropertyNames];
  if (v7)
  {
  }

  else
  {
    v12 = [v6 subRelationshipProperties];
    if (!v12)
    {
      goto LABEL_30;
    }

    v13 = v12;
    v14 = [v6 isToManySubRelationship];

    if (v14)
    {
      goto LABEL_30;
    }
  }

  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9 = [v6 relatedEntityPropertyNames];

  v35 = v6;
  if (v9)
  {
    v10 = [v6 relatedEntityPropertyNames];
    v11 = [v10 allObjects];
    [v8 addObjectsFromArray:v11];
  }

  else
  {
    v15 = [v6 subRelationshipProperties];
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __148__PLManagedObjectJournalEntryPayload_PLJournalEntryPayloadValidationInternal___resolveRelationshipsInObjectDictionary_atKeyPath_forPayloadProperty___block_invoke_2;
    v52[3] = &unk_1E75643D8;
    v53 = v8;
    [v15 enumerateKeysAndObjectsUsingBlock:v52];
  }

  v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@.pk", *(a1 + 32), v5];
  v16 = [*(a1 + 40) objectForKeyedSubscript:?];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = v8;
  v41 = [obj countByEnumeratingWithState:&v48 objects:v55 count:16];
  if (v41)
  {
    v17 = *v49;
    v18 = 0x1E695D000uLL;
    v38 = a1;
    v39 = v5;
    v36 = *v49;
    v37 = v16;
    do
    {
      for (i = 0; i != v41; ++i)
      {
        if (*v49 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v42 = *(*(&v48 + 1) + 8 * i);
        v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@.%@", *(a1 + 32), v5, v42];
        v20 = [*(a1 + 40) objectForKeyedSubscript:?];
        v21 = objc_alloc_init(*(v18 + 3984));
        if (v20)
        {
          v22 = v16 == 0;
        }

        else
        {
          v22 = 1;
        }

        if (!v22)
        {
          v23 = [v16 objectEnumerator];
          v44 = 0u;
          v45 = 0u;
          v46 = 0u;
          v47 = 0u;
          v24 = v20;
          v25 = [v24 countByEnumeratingWithState:&v44 objects:v54 count:16];
          if (v25)
          {
            v26 = v25;
            v27 = *v45;
LABEL_20:
            v28 = 0;
            while (1)
            {
              if (*v45 != v27)
              {
                objc_enumerationMutation(v24);
              }

              v29 = *(*(&v44 + 1) + 8 * v28);
              v30 = [v23 nextObject];
              if (!v30)
              {
                break;
              }

              v31 = v30;
              [v21 setObject:v29 forKeyedSubscript:v30];

              if (v26 == ++v28)
              {
                v26 = [v24 countByEnumeratingWithState:&v44 objects:v54 count:16];
                if (v26)
                {
                  goto LABEL_20;
                }

                break;
              }
            }
          }

          a1 = v38;
          v5 = v39;
          v32 = *(v38 + 48);
          v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v39, v42];
          [v32 setObject:v21 forKeyedSubscript:v33];

          v17 = v36;
          v16 = v37;
          v18 = 0x1E695D000;
        }
      }

      v41 = [obj countByEnumeratingWithState:&v48 objects:v55 count:16];
    }

    while (v41);
  }

  v6 = v35;
LABEL_30:
}

void __148__PLManagedObjectJournalEntryPayload_PLJournalEntryPayloadValidationInternal___resolveRelationshipsInObjectDictionary_atKeyPath_forPayloadProperty___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v27 = a2;
  v5 = a3;
  v6 = [v5 relatedEntityPropertyNames];
  if (v6)
  {
  }

  else
  {
    v14 = [v5 subRelationshipProperties];
    if (!v14)
    {
      goto LABEL_19;
    }

    v15 = v14;
    v16 = [v5 isToManySubRelationship];

    if (v16)
    {
      goto LABEL_19;
    }
  }

  v7 = *(a1 + 32);
  v8 = [v27 stringByAppendingString:@"PrimaryKey"];
  v9 = [v7 objectForKeyedSubscript:v8];

  v26 = v9;
  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v11 = [v5 relatedEntityPropertyNames];

    if (v11)
    {
      v12 = [v5 relatedEntityPropertyNames];
      v13 = [v12 allObjects];
      [v10 addObjectsFromArray:v13];
    }

    else
    {
      v17 = [v5 subRelationshipProperties];
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __148__PLManagedObjectJournalEntryPayload_PLJournalEntryPayloadValidationInternal___resolveRelationshipsInObjectDictionary_atKeyPath_forPayloadProperty___block_invoke_4;
      v32[3] = &unk_1E75643D8;
      v33 = v10;
      [v17 enumerateKeysAndObjectsUsingBlock:v32];
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v18 = v10;
    v19 = [v18 countByEnumeratingWithState:&v28 objects:v34 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v29;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v29 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v27, *(*(&v28 + 1) + 8 * i)];
          v24 = [*(a1 + 40) objectForKeyedSubscript:v23];
          v25 = [v24 objectForKeyedSubscript:v26];
          [*(a1 + 32) setObject:v25 forKeyedSubscript:v23];
        }

        v20 = [v18 countByEnumeratingWithState:&v28 objects:v34 count:16];
      }

      while (v20);
    }
  }

LABEL_19:
}

- (BOOL)_comparePayloadAttributes:(id)attributes toObjectDictionary:(id)dictionary currentKeyPath:(id)path usingModelProperties:(id)properties errorDescriptions:(id)descriptions
{
  attributesCopy = attributes;
  dictionaryCopy = dictionary;
  pathCopy = path;
  propertiesCopy = properties;
  descriptionsCopy = descriptions;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 1;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __178__PLManagedObjectJournalEntryPayload_PLJournalEntryPayloadValidationInternal___comparePayloadAttributes_toObjectDictionary_currentKeyPath_usingModelProperties_errorDescriptions___block_invoke;
  v22[3] = &unk_1E75643B0;
  v17 = pathCopy;
  v23 = v17;
  selfCopy = self;
  v18 = attributesCopy;
  v25 = v18;
  v19 = dictionaryCopy;
  v26 = v19;
  v20 = descriptionsCopy;
  v27 = v20;
  v28 = &v29;
  [propertiesCopy enumerateKeysAndObjectsUsingBlock:v22];
  LOBYTE(pathCopy) = *(v30 + 24);

  _Block_object_dispose(&v29, 8);
  return pathCopy;
}

void __178__PLManagedObjectJournalEntryPayload_PLJournalEntryPayloadValidationInternal___comparePayloadAttributes_toObjectDictionary_currentKeyPath_usingModelProperties_errorDescriptions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v100[8] = *MEMORY[0x1E69E9840];
  v75 = a2;
  v68 = a3;
  v4 = [v68 subRelationshipProperties];

  if (!v4)
  {
    v66 = [*(a1 + 40) payloadValueFromAttributes:*(a1 + 48) forPayloadProperty:v68];
    v67 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", *(a1 + 32), v75];
    v19 = [v68 key];

    if (!v19)
    {
      v22 = 0;
      goto LABEL_63;
    }

    if ([v68 isUUIDKey])
    {
      v20 = MEMORY[0x1E696AEC0];
      v21 = [*(a1 + 56) objectForKeyedSubscript:v67];
      v22 = [v20 stringWithFormat:@"%@", v21];

      v23 = [*(*(a1 + 40) + 24) payloadIDString];
      LOBYTE(v20) = [(__CFString *)v22 isEqualToString:v23];

      if (v20)
      {
        goto LABEL_63;
      }

      goto LABEL_55;
    }

    v36 = [v68 relatedEntityPropertyNames];
    v65 = v36;
    v37 = v36;
    if (v36)
    {
      if ([v36 count] == 1)
      {
        v38 = MEMORY[0x1E696AEC0];
        v39 = *(a1 + 32);
        v40 = [v37 anyObject];
        v41 = [v38 stringWithFormat:@"%@%@.%@", v39, v75, v40];

        v22 = [*(a1 + 56) objectForKeyedSubscript:v41];
        v67 = v41;
      }

      else
      {
        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        v42 = v37;
        v74 = [v42 countByEnumeratingWithState:&v77 objects:v98 count:16];
        if (v74)
        {
          v43 = 0;
          v70 = *v78;
          v72 = 0;
          do
          {
            for (i = 0; i != v74; ++i)
            {
              if (*v78 != v70)
              {
                objc_enumerationMutation(v42);
              }

              v45 = *(*(&v77 + 1) + 8 * i);
              v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@.%@", *(a1 + 32), v75, v45];
              v47 = [*(a1 + 56) objectForKeyedSubscript:v46];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                if (!v43)
                {
                  v43 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v47, "count")}];
                }

                if ([v47 count])
                {
                  v48 = 0;
                  do
                  {
                    if (v48 >= [v43 count] || (objc_msgSend(v43, "objectAtIndex:", v48), (v49 = objc_claimAutoreleasedReturnValue()) == 0))
                    {
                      v49 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v42, "count")}];
                      [v43 addObject:v49];
                    }

                    v50 = [v47 objectAtIndex:v48];
                    [v49 setObject:v50 forKeyedSubscript:v45];

                    ++v48;
                  }

                  while (v48 < [v47 count]);
                }
              }

              else
              {
                v51 = v72;
                if (!v72)
                {
                  v51 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v42, "count")}];
                }

                v72 = v51;
                [v51 setObject:v47 forKeyedSubscript:v45];
              }
            }

            v74 = [v42 countByEnumeratingWithState:&v77 objects:v98 count:16];
          }

          while (v74);
        }

        else
        {
          v43 = 0;
          v72 = 0;
        }

        if (v43)
        {
          v52 = v43;
        }

        else
        {
          v52 = v72;
        }

        v22 = v52;
      }
    }

    else
    {
      v22 = [*(a1 + 56) objectForKeyedSubscript:v67];
    }

    if (v22)
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_54;
      }

      v53 = [(__CFString *)v22 count]== 0;
    }

    else
    {
      v53 = 1;
    }

    if (v53 && !v66)
    {
      v54 = 0;
LABEL_62:

      v66 = v54;
      goto LABEL_63;
    }

LABEL_54:
    v55 = [*(a1 + 40) comparePayloadValue:v66 toObjectDictionaryValue:v22 forPayloadProperty:v68];

    if ((v55 & 1) == 0)
    {
LABEL_55:
      v56 = v22;
      if (v22)
      {
        v57 = v22;
      }

      else
      {
        v57 = @"<nil>";
      }

      v22 = v57;

      if (v66)
      {
        v58 = v66;
      }

      else
      {
        v58 = @"<nil>";
      }

      v54 = v58;

      v96[0] = @"payloadClassID";
      v59 = [objc_opt_class() payloadClassID];
      v60 = *(*(a1 + 40) + 24);
      v97[0] = v59;
      v97[1] = v60;
      v96[1] = @"payloadID";
      v96[2] = @"type";
      v97[2] = @"value";
      v97[3] = v67;
      v96[3] = @"objectDictionaryKeyPath";
      v96[4] = @"payloadKey";
      v61 = [v68 key];
      v97[4] = v61;
      v96[5] = @"objectDictionaryValue";
      v96[6] = @"payloadValue";
      v97[5] = v22;
      v97[6] = v54;
      v96[7] = @"description";
      v62 = MEMORY[0x1E696AEC0];
      v63 = [v68 key];
      v64 = [v62 stringWithFormat:@"values not equal: %@: %@, %@: %@", v67, v22, v63, v54];
      v97[7] = v64;
      v65 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v97 forKeys:v96 count:8];

      [*(a1 + 64) addObject:v65];
      *(*(*(a1 + 72) + 8) + 24) = 0;
      goto LABEL_62;
    }

LABEL_63:

    goto LABEL_64;
  }

  v5 = [v68 isToManySubRelationship];
  v6 = [*(a1 + 32) stringByAppendingString:v75];
  v7 = v6;
  if (v5)
  {
    [*(a1 + 40) _resolveRelationshipsInObjectDictionary:*(a1 + 56) atKeyPath:v6 forPayloadProperty:v68];
    v8 = [*(a1 + 56) objectForKeyedSubscript:v7];
    v93[0] = MEMORY[0x1E69E9820];
    v93[1] = 3221225472;
    v93[2] = __178__PLManagedObjectJournalEntryPayload_PLJournalEntryPayloadValidationInternal___comparePayloadAttributes_toObjectDictionary_currentKeyPath_usingModelProperties_errorDescriptions___block_invoke_2;
    v93[3] = &unk_1E7564338;
    v9 = v68;
    v10 = *(a1 + 40);
    v94 = v9;
    v95 = v10;
    v11 = [v8 indexesOfObjectsPassingTest:v93];

    v12 = *(a1 + 48);
    v13 = [v9 key];
    v14 = [v12 objectForKeyedSubscript:v13];

    v89 = 0;
    v90 = &v89;
    v91 = 0x2020000000;
    v15 = [v11 count];
    v92 = v15 == [v14 count];
    if (*(v90 + 24) == 1)
    {
      v81[0] = MEMORY[0x1E69E9820];
      v81[1] = 3221225472;
      v81[2] = __178__PLManagedObjectJournalEntryPayload_PLJournalEntryPayloadValidationInternal___comparePayloadAttributes_toObjectDictionary_currentKeyPath_usingModelProperties_errorDescriptions___block_invoke_3;
      v81[3] = &unk_1E7564388;
      v82 = *(a1 + 56);
      v83 = v7;
      v16 = v14;
      v17 = *(a1 + 40);
      v84 = v16;
      v85 = v17;
      v86 = v9;
      v87 = *(a1 + 64);
      v88 = &v89;
      [v11 enumerateIndexesUsingBlock:v81];

      v18 = v82;
    }

    else
    {
      v99[0] = @"payloadClassID";
      v73 = [objc_opt_class() payloadClassID];
      v100[0] = v73;
      v99[1] = @"payloadID";
      v71 = [*(*(a1 + 40) + 24) payloadIDString];
      v100[1] = v71;
      v100[2] = @"to-many count";
      v99[2] = @"type";
      v99[3] = @"objectDictionaryKeyPath";
      v100[3] = v7;
      v99[4] = @"payloadKey";
      v69 = [v9 key];
      v100[4] = v69;
      v99[5] = @"objectDictionaryCount";
      v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v11, "count")}];
      v100[5] = v30;
      v99[6] = @"payloadAttributeListCount";
      v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v14, "count")}];
      v100[6] = v31;
      v99[7] = @"description";
      v32 = MEMORY[0x1E696AEC0];
      v33 = [v11 count];
      v34 = [v9 key];
      v35 = [v32 stringWithFormat:@"differing number of entries: %@: %ld, %@: %ld", v7, v33, v34, objc_msgSend(v14, "count")];
      v100[7] = v35;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v100 forKeys:v99 count:8];

      [*(a1 + 64) addObject:v18];
    }

    if ((v90[3] & 1) == 0)
    {
      *(*(*(a1 + 72) + 8) + 24) = 0;
    }

    _Block_object_dispose(&v89, 8);
  }

  else
  {
    v24 = [v6 stringByAppendingString:@"."];

    v25 = *(a1 + 40);
    v26 = *(a1 + 48);
    v27 = *(a1 + 56);
    v28 = [v68 subRelationshipProperties];
    v29 = [v25 _comparePayloadAttributes:v26 toObjectDictionary:v27 currentKeyPath:v24 usingModelProperties:v28 errorDescriptions:*(a1 + 64)];

    if ((v29 & 1) == 0)
    {
      *(*(*(a1 + 72) + 8) + 24) = 0;
    }
  }

LABEL_64:
}

uint64_t __178__PLManagedObjectJournalEntryPayload_PLJournalEntryPayloadValidationInternal___comparePayloadAttributes_toObjectDictionary_currentKeyPath_usingModelProperties_errorDescriptions___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) subRelationshipEntityName];
  if (v4)
  {
    v5 = objc_opt_class();
    v6 = [*(a1 + 32) subRelationshipEntityName];
    v7 = [v5 isValidForPersistenceWithObjectDictionary:v3 additionalEntityName:v6];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

void __178__PLManagedObjectJournalEntryPayload_PLJournalEntryPayloadValidationInternal___comparePayloadAttributes_toObjectDictionary_currentKeyPath_usingModelProperties_errorDescriptions___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v62 = *MEMORY[0x1E69E9840];
  v4 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
  v5 = [v4 objectAtIndexedSubscript:a2];

  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __178__PLManagedObjectJournalEntryPayload_PLJournalEntryPayloadValidationInternal___comparePayloadAttributes_toObjectDictionary_currentKeyPath_usingModelProperties_errorDescriptions___block_invoke_4;
  v53[3] = &unk_1E7564360;
  v6 = *(a1 + 48);
  v53[4] = *(a1 + 56);
  v44 = v5;
  v54 = v44;
  v55 = *(a1 + 64);
  v7 = [v6 indexesOfObjectsPassingTest:v53];
  if ([v7 count])
  {
    if ([v7 count] < 2)
    {
      goto LABEL_20;
    }

    v8 = [*(a1 + 48) objectsAtIndexes:v7];
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v45 objects:v58 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v46;
      do
      {
        v14 = 0;
        do
        {
          if (*v46 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v45 + 1) + 8 * v14);
          v16 = *(a1 + 56);
          v17 = [*(a1 + 64) subRelationshipProperties];
          v18 = [v16 _attributesForPayloadAttributes:v15 usingModelProperties:v17];
          [v9 addObject:v18];

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v45 objects:v58 count:16];
      }

      while (v12);
    }

    v56[0] = @"payloadClassID";
    v43 = [objc_opt_class() payloadClassID];
    v57[0] = v43;
    v56[1] = @"payloadID";
    v42 = [*(*(a1 + 56) + 24) payloadIDString];
    v57[1] = v42;
    v57[2] = @"to-many multiple matches";
    v56[2] = @"type";
    v56[3] = @"objectDictionaryKeyPath";
    v57[3] = *(a1 + 40);
    v56[4] = @"payloadKey";
    v19 = [*(a1 + 64) key];
    v57[4] = v19;
    v57[5] = v44;
    v56[5] = @"objectDictionaryValue";
    v56[6] = @"payloadValue";
    v57[6] = v9;
    v56[7] = @"description";
    v20 = MEMORY[0x1E696AEC0];
    v21 = *(a1 + 40);
    v22 = [v7 count];
    v23 = [*(a1 + 64) key];
    v24 = [v20 stringWithFormat:@"%@: %@ matches %ld payloads: %@: %@", v21, v44, v22, v23, v9];
    v57[7] = v24;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:v56 count:8];

    [*(a1 + 72) addObject:v25];
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v26 = *(a1 + 48);
    v27 = [v26 countByEnumeratingWithState:&v49 objects:v61 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v50;
      do
      {
        v30 = 0;
        do
        {
          if (*v50 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v49 + 1) + 8 * v30);
          v32 = *(a1 + 56);
          v33 = [*(a1 + 64) subRelationshipProperties];
          v34 = [v32 _attributesForPayloadAttributes:v31 usingModelProperties:v33];
          [v10 addObject:v34];

          ++v30;
        }

        while (v28 != v30);
        v28 = [v26 countByEnumeratingWithState:&v49 objects:v61 count:16];
      }

      while (v28);
    }

    v59[0] = @"payloadClassID";
    v35 = [objc_opt_class() payloadClassID];
    v60[0] = v35;
    v59[1] = @"payloadID";
    v36 = [*(*(a1 + 56) + 24) payloadIDString];
    v60[1] = v36;
    v60[2] = @"to-many none match";
    v59[2] = @"type";
    v59[3] = @"objectDictionaryKeyPath";
    v60[3] = *(a1 + 40);
    v59[4] = @"payloadKey";
    v37 = [*(a1 + 64) key];
    v60[4] = v37;
    v60[5] = v44;
    v59[5] = @"objectDictionaryValue";
    v59[6] = @"payloadValue";
    v60[6] = v10;
    v59[7] = @"description";
    v38 = MEMORY[0x1E696AEC0];
    v39 = *(a1 + 40);
    v40 = [*(a1 + 64) key];
    v41 = [v38 stringWithFormat:@"%@: %@ doesn't match any payload in: %@: %@", v39, v44, v40, v10];
    v60[7] = v41;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v60 forKeys:v59 count:8];

    [*(a1 + 72) addObject:v9];
  }

LABEL_20:
  if (*(*(*(a1 + 80) + 8) + 24) == 1)
  {
    *(*(*(a1 + 80) + 8) + 24) = [v7 count] == 1;
  }
}

uint64_t __178__PLManagedObjectJournalEntryPayload_PLJournalEntryPayloadValidationInternal___comparePayloadAttributes_toObjectDictionary_currentKeyPath_usingModelProperties_errorDescriptions___block_invoke_4(void *a1, void *a2)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a2;
  v6 = [v4 subRelationshipProperties];
  v7 = [v2 _comparePayloadAttributes:v5 toObjectDictionary:v3 currentKeyPath:&stru_1F0F06D80 usingModelProperties:v6 errorDescriptions:0];

  return v7;
}

+ (BOOL)_populateObjectDictionary:(id)dictionary withObject:(id)object currentKeyPath:(id)path usingModelProperties:(id)properties payloadClass:(Class)class info:(id)info
{
  dictionaryCopy = dictionary;
  objectCopy = object;
  pathCopy = path;
  propertiesCopy = properties;
  infoCopy = info;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __170__PLManagedObjectJournalEntryPayload_PLJournalEntryPayloadValidationInternal___populateObjectDictionary_withObject_currentKeyPath_usingModelProperties_payloadClass_info___block_invoke;
  v24[3] = &unk_1E7564400;
  v19 = objectCopy;
  v25 = v19;
  v20 = infoCopy;
  v26 = v20;
  v29 = &v32;
  v21 = pathCopy;
  v27 = v21;
  selfCopy = self;
  v22 = dictionaryCopy;
  v28 = v22;
  classCopy = class;
  [propertiesCopy enumerateKeysAndObjectsUsingBlock:v24];
  LOBYTE(class) = *(v33 + 24);

  _Block_object_dispose(&v32, 8);
  return class;
}

void __170__PLManagedObjectJournalEntryPayload_PLJournalEntryPayloadValidationInternal___populateObjectDictionary_withObject_currentKeyPath_usingModelProperties_payloadClass_info___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v96 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  if ([v8 hasSourceObjectValue])
  {
    v9 = [*(a1 + 32) valueForKey:v7];
    v10 = *(a1 + 40);
    if (v10 && ([v10 validForPersistenceWithPayloadProperty:v8 andValue:v9 stop:*(*(a1 + 64) + 8) + 24] & 1) == 0)
    {
      if (*(*(*(a1 + 64) + 8) + 24) == 1)
      {
        *a4 = 1;
      }

      goto LABEL_63;
    }

    v11 = [v8 subRelationshipProperties];

    v69 = v7;
    v70 = a1;
    if (v11)
    {
      v62 = a4;
      if (([v8 isToManySubRelationship] & 1) == 0)
      {
        v41 = [*(a1 + 48) stringByAppendingString:v7];
        v42 = [v41 stringByAppendingString:@"."];

        v43 = v9;
        v44 = v9;
        v45 = *(a1 + 72);
        v46 = *(a1 + 56);
        v47 = [v8 subRelationshipProperties];
        *(*(*(a1 + 64) + 8) + 24) = [v45 _populateObjectDictionary:v46 withObject:v44 currentKeyPath:v42 usingModelProperties:v47 payloadClass:*(a1 + 80) info:*(a1 + 40)];

        if (*(*(*(a1 + 64) + 8) + 24) == 1)
        {
          *v62 = 1;
        }

        v9 = v43;
        goto LABEL_63;
      }

      v64 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v60 = [*(a1 + 48) stringByAppendingString:v7];
      v58 = v9;
      v87 = 0u;
      v88 = 0u;
      v89 = 0u;
      v90 = 0u;
      obj = v9;
      v12 = [obj countByEnumeratingWithState:&v87 objects:v95 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v88;
        while (2)
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v88 != v14)
            {
              objc_enumerationMutation(obj);
            }

            v16 = [*(v70 + 80) payloadAdapterForManagedObject:*(*(&v87 + 1) + 8 * i)];
            if ([v16 isValidForJournalPersistence])
            {
              v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
              v18 = *(v70 + 72);
              v19 = [v16 sourceObject];
              v20 = v8;
              v21 = [v8 subRelationshipProperties];
              *(*(*(v70 + 64) + 8) + 24) = [v18 _populateObjectDictionary:v17 withObject:v19 currentKeyPath:&stru_1F0F06D80 usingModelProperties:v21 payloadClass:*(v70 + 80) info:*(v70 + 40)];

              if (*(*(*(v70 + 64) + 8) + 24))
              {
                *a4 = 1;

                v7 = v69;
                v9 = v58;
                v8 = v20;
                goto LABEL_63;
              }

              [v64 addObject:v17];

              v7 = v69;
              v8 = v20;
            }
          }

          v13 = [obj countByEnumeratingWithState:&v87 objects:v95 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }

      [*(v70 + 56) setObject:v64 forKeyedSubscript:v60];
    }

    else
    {
      v22 = [v8 relatedEntityPropertyNames];

      if (!v22)
      {
        if (([v8 isUUIDKey] & 1) != 0 || (objc_msgSend(v8, "key"), v48 = objc_claimAutoreleasedReturnValue(), v48, v48))
        {
          v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", *(a1 + 48), v7];
          [*(a1 + 56) setObject:v9 forKeyedSubscript:v49];
        }

        goto LABEL_63;
      }

      objc_opt_class();
      v63 = v8;
      v58 = v9;
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
        v23 = [v8 relatedEntityPropertyNames];
        v24 = [v23 countByEnumeratingWithState:&v83 objects:v94 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v84;
          do
          {
            for (j = 0; j != v25; ++j)
            {
              if (*v84 != v26)
              {
                objc_enumerationMutation(v23);
              }

              v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@.%@", *(a1 + 48), v69, *(*(&v83 + 1) + 8 * j)];
              v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
              [*(a1 + 56) setObject:v29 forKeyedSubscript:v28];
            }

            v25 = [v23 countByEnumeratingWithState:&v83 objects:v94 count:16];
          }

          while (v25);
        }

        v81 = 0u;
        v82 = 0u;
        v79 = 0u;
        v80 = 0u;
        v59 = v58;
        v7 = v69;
        v65 = [v59 countByEnumeratingWithState:&v79 objects:v93 count:16];
        if (v65)
        {
          v61 = *v80;
          do
          {
            v30 = 0;
            do
            {
              if (*v80 != v61)
              {
                objc_enumerationMutation(v59);
              }

              obja = v30;
              v31 = *(*(&v79 + 1) + 8 * v30);
              v75 = 0u;
              v76 = 0u;
              v77 = 0u;
              v78 = 0u;
              v32 = [v63 relatedEntityPropertyNames];
              v33 = [v32 countByEnumeratingWithState:&v75 objects:v92 count:16];
              if (v33)
              {
                v34 = v33;
                v35 = *v76;
                do
                {
                  for (k = 0; k != v34; ++k)
                  {
                    if (*v76 != v35)
                    {
                      objc_enumerationMutation(v32);
                    }

                    v37 = *(*(&v75 + 1) + 8 * k);
                    v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@.%@", *(v70 + 48), v7, v37];
                    v39 = [v31 valueForKeyPath:v37];
                    if (v39)
                    {
                      v40 = [*(v70 + 56) objectForKeyedSubscript:v38];
                      [v40 addObject:v39];

                      v7 = v69;
                    }
                  }

                  v34 = [v32 countByEnumeratingWithState:&v75 objects:v92 count:16];
                }

                while (v34);
              }

              v30 = obja + 1;
            }

            while (obja + 1 != v65);
            v65 = [v59 countByEnumeratingWithState:&v79 objects:v93 count:16];
          }

          while (v65);
        }
      }

      else
      {
        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        objb = [v8 relatedEntityPropertyNames];
        v50 = [objb countByEnumeratingWithState:&v71 objects:v91 count:16];
        if (v50)
        {
          v51 = v50;
          v52 = *v72;
          do
          {
            for (m = 0; m != v51; ++m)
            {
              if (*v72 != v52)
              {
                objc_enumerationMutation(objb);
              }

              v54 = *(*(&v71 + 1) + 8 * m);
              v55 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@.%@", *(v70 + 48), v7, v54];
              v56 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v7, v54];
              v57 = [*(v70 + 32) valueForKeyPath:v56];
              [*(v70 + 56) setObject:v57 forKeyedSubscript:v55];
            }

            v51 = [objb countByEnumeratingWithState:&v71 objects:v91 count:16];
          }

          while (v51);
        }
      }

      v8 = v63;
    }

    v9 = v58;
LABEL_63:
  }
}

+ (void)_populateValidationProperties:(id)properties fromEntityDescription:(id)description
{
  descriptionCopy = description;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __131__PLManagedObjectJournalEntryPayload_PLJournalEntryPayloadValidationInternal___populateValidationProperties_fromEntityDescription___block_invoke;
  v8[3] = &unk_1E7564220;
  v9 = descriptionCopy;
  selfCopy = self;
  v7 = descriptionCopy;
  [properties enumerateKeysAndObjectsUsingBlock:v8];
}

void __131__PLManagedObjectJournalEntryPayload_PLJournalEntryPayloadValidationInternal___populateValidationProperties_fromEntityDescription___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  v6 = [v5 subRelationshipProperties];

  if (v6)
  {
    v7 = [*(a1 + 32) relationshipsByName];
    v8 = [v7 objectForKeyedSubscript:v14];

    if (!v8)
    {
LABEL_5:

      goto LABEL_7;
    }

    v9 = *(a1 + 40);
    v10 = [v5 subRelationshipProperties];
    v11 = [v8 destinationEntity];
    [v9 _populateValidationProperties:v10 fromEntityDescription:v11];

LABEL_4:
    goto LABEL_5;
  }

  v12 = [v5 relatedEntityPropertyNames];

  if (!v12)
  {
    v13 = [*(a1 + 32) attributesByName];
    v8 = [v13 objectForKeyedSubscript:v14];

    if (!v8)
    {
      goto LABEL_5;
    }

    [v5 setOptional:{objc_msgSend(v8, "isOptional")}];
    v10 = [v8 defaultValue];
    [v5 setDefaultValue:v10];
    goto LABEL_4;
  }

LABEL_7:
}

+ (void)_validateModelProperties:(id)properties nonPersistedModelProperties:(id)modelProperties forEntityDescription:(id)description
{
  propertiesCopy = properties;
  modelPropertiesCopy = modelProperties;
  descriptionCopy = description;
  attributesByName = [descriptionCopy attributesByName];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __153__PLManagedObjectJournalEntryPayload_PLJournalEntryPayloadValidationInternal___validateModelProperties_nonPersistedModelProperties_forEntityDescription___block_invoke;
  v21[3] = &unk_1E75642E8;
  v12 = propertiesCopy;
  v22 = v12;
  v13 = modelPropertiesCopy;
  v23 = v13;
  selfCopy = self;
  [attributesByName enumerateKeysAndObjectsUsingBlock:v21];

  relationshipsByName = [descriptionCopy relationshipsByName];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __153__PLManagedObjectJournalEntryPayload_PLJournalEntryPayloadValidationInternal___validateModelProperties_nonPersistedModelProperties_forEntityDescription___block_invoke_2;
  v17[3] = &unk_1E7564310;
  v18 = v12;
  v19 = v13;
  selfCopy2 = self;
  v15 = v13;
  v16 = v12;
  [relationshipsByName enumerateKeysAndObjectsUsingBlock:v17];
}

void __153__PLManagedObjectJournalEntryPayload_PLJournalEntryPayloadValidationInternal___validateModelProperties_nonPersistedModelProperties_forEntityDescription___block_invoke(id *a1, void *a2, void *a3)
{
  v28 = a2;
  v5 = a3;
  v6 = [a1[4] objectForKeyedSubscript:v28];
  v7 = [a1[5] objectForKeyedSubscript:v28];
  if (v6)
  {
    v8 = [v6 key];
    if (v8)
    {
      v9 = v8;
      v10 = [v6 isUUIDKey];

      if ((v10 & 1) == 0)
      {
        v11 = [v5 attributeType];
        if (v11 != [v6 type])
        {
          v22 = MEMORY[0x1E695DF30];
          v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Mismatch between attribute and payload types for attribute name: %@ (%lu != %lu)", v28, objc_msgSend(v5, "attributeType"), objc_msgSend(v6, "type")];
          v23 = [v22 exceptionWithName:@"PayloadPropertyValidationException" reason:v15 userInfo:0];
          v24 = v23;
          goto LABEL_17;
        }

        v12 = [v6 subRelationshipProperties];

        if (v12)
        {
          v13 = MEMORY[0x1E695DF30];
          v25 = MEMORY[0x1E696AEC0];
          v15 = [v6 key];
          [v25 stringWithFormat:@"Sub-relation property %@ defined as an attribute: %@", v15, v28];
          goto LABEL_16;
        }

        if (v7)
        {
          v13 = MEMORY[0x1E695DF30];
          v14 = MEMORY[0x1E696AEC0];
          v15 = [v6 key];
          [v14 stringWithFormat:@"attribute %@ defined as both a persisted and non-persisted property for payload property: %@", v28, v15];
          v26 = LABEL_16:;
          v23 = [v13 exceptionWithName:@"PayloadPropertyValidationException" reason:v26 userInfo:0];
          v27 = v23;

LABEL_17:
          objc_exception_throw(v23);
        }
      }
    }
  }

  else if (([v5 isTransient] & 1) == 0 && !v7)
  {
    v16 = MEMORY[0x1E695DF30];
    v17 = MEMORY[0x1E696AEC0];
    v18 = [a1[6] payloadClassID];
    v19 = [v17 stringWithFormat:@"attribute %@ not defined as a persisted or non-persisted property for %@", v28, v18];
    v20 = [v16 exceptionWithName:@"PayloadPropertyValidationException" reason:v19 userInfo:0];
    v21 = v20;

    objc_exception_throw(v20);
  }
}

void __153__PLManagedObjectJournalEntryPayload_PLJournalEntryPayloadValidationInternal___validateModelProperties_nonPersistedModelProperties_forEntityDescription___block_invoke_2(id *a1, void *a2, void *a3)
{
  v54 = a2;
  v5 = a3;
  v6 = [a1[4] objectForKeyedSubscript:v54];
  v7 = [a1[5] objectForKeyedSubscript:v54];
  v8 = v7;
  if (!v6)
  {
    if (!v7)
    {
      v24 = MEMORY[0x1E695DF30];
      v25 = MEMORY[0x1E696AEC0];
      v26 = [a1[6] payloadClassID];
      v27 = [v25 stringWithFormat:@"relationship %@ not defined as a persisted or non-persisted property for %@", v54, v26];
      v28 = [v24 exceptionWithName:@"PayloadPropertyValidationException" reason:v27 userInfo:0];
      v29 = v28;

      objc_exception_throw(v28);
    }

    goto LABEL_17;
  }

  if ([v6 isUUIDKey])
  {
    goto LABEL_17;
  }

  if (v8)
  {
    v9 = [v8 subRelationshipProperties];

    if (!v9)
    {
      v31 = MEMORY[0x1E695DF30];
      v32 = MEMORY[0x1E696AEC0];
      v33 = [v6 key];
      [v32 stringWithFormat:@"relationship %@ defined as both a persisted and non-persisted property for payload property: %@", v54, v33];
      goto LABEL_22;
    }
  }

  v10 = [v6 subRelationshipProperties];

  if (v10)
  {
    v11 = [v8 subRelationshipProperties];

    if (v11)
    {
      v12 = [v6 subRelationshipEntityName];
      if (v12)
      {
        v13 = v12;
        v14 = [v6 subRelationshipEntityName];
        v15 = [v5 destinationEntity];
        v16 = [v15 name];
        v17 = [v14 isEqualToString:v16];

        if ((v17 & 1) == 0)
        {
          v40 = MEMORY[0x1E695DF30];
          v41 = MEMORY[0x1E696AEC0];
          v42 = [v5 destinationEntity];
          v43 = [v42 name];
          v44 = [v6 subRelationshipEntityName];
          v45 = [v41 stringWithFormat:@"relationship %@ destination entity name %@ does not match sub-relationship entity name %@", v54, v43, v44];
          v46 = [v40 exceptionWithName:@"PayloadPropertyValidationException" reason:v45 userInfo:0];
          v47 = v46;

          objc_exception_throw(v46);
        }
      }

      v18 = [v6 isToManySubRelationship];
      if (v18 == [v5 isToMany])
      {
        v19 = a1[6];
        v20 = [v6 subRelationshipProperties];
        v21 = [v8 subRelationshipProperties];
        v22 = [v5 destinationEntity];
        [v19 _validateModelProperties:v20 nonPersistedModelProperties:v21 forEntityDescription:v22];

        goto LABEL_11;
      }

      v38 = MEMORY[0x1E695DF30];
      v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"relationship %@ isToMany %d does not match sub-relationship isToMany %d", v54, objc_msgSend(v5, "isToMany"), objc_msgSend(v6, "isToManySubRelationship")];
      v36 = [v38 exceptionWithName:@"PayloadPropertyValidationException" reason:v33 userInfo:0];
      v39 = v36;
LABEL_24:

      goto LABEL_25;
    }

    v31 = MEMORY[0x1E695DF30];
    v34 = MEMORY[0x1E696AEC0];
    v33 = [v6 key];
    [v34 stringWithFormat:@"relationship %@ defines persisted sub-relationship properties but no non-persisted sub-relationship properties : %@", v54, v33];
    v35 = LABEL_22:;
    v36 = [v31 exceptionWithName:@"PayloadPropertyValidationException" reason:v35 userInfo:0];
    v37 = v36;

    goto LABEL_24;
  }

LABEL_11:
  v23 = [v6 relatedEntityPropertyNames];
  if (!v23 || [v6 shouldPrefetchRelationship])
  {

    goto LABEL_17;
  }

  v30 = [v5 inverseRelationship];

  if (!v30)
  {
    v48 = MEMORY[0x1E695DF30];
    v49 = MEMORY[0x1E696AEC0];
    v50 = [v6 relatedEntityPropertyNames];
    v51 = [v6 key];
    v52 = [v49 stringWithFormat:@"relationship %@ defines relationPropertyNames (%@) but the model does not define an inverse relationship: %@", v54, v50, v51];
    v36 = [v48 exceptionWithName:@"PayloadPropertyValidationException" reason:v52 userInfo:0];
    v53 = v36;

LABEL_25:
    objc_exception_throw(v36);
  }

LABEL_17:
}

@end