@interface PLManagedObjectJournalEntryPayload
+ (BOOL)_populateObjectDictionary:(id)a3 withObject:(id)a4 currentKeyPath:(id)a5 usingModelProperties:(id)a6 payloadClass:(Class)a7 info:(id)a8;
+ (BOOL)shouldPersistForChangedKeys:(id)a3 entityName:(id)a4;
+ (id)_populateRelationshipKeyPathsForPrefetching:(id)a3 currentKeyPath:(id)a4 usingModelProperties:(id)a5;
+ (id)additionalEntityNames;
+ (id)fetchRelationshipPropertyValuesForRelationshipName:(id)a3 fromManagedObject:(id)a4 usingPayloadProperty:(id)a5;
+ (id)modelProperties;
+ (id)modelPropertiesDescription;
+ (id)nonPersistedModelPropertiesDescription;
+ (id)objectDictionariesByUUIDForPayloadClass:(Class)a3 inManagedObjectContext:(id)a4 fetchPredicate:(id)a5 info:(id)a6 error:(id *)a7;
+ (id)payloadClassID;
+ (id)payloadWithData:(id)a3 forPayloadID:(id)a4 version:(unsigned int)a5 andNilProperties:(id)a6 error:(id *)a7;
+ (id)persistedPropertyNamesForEntityNames;
+ (id)persistedPropertyNamesForEntityNamesFromModelProperties;
+ (id)relationshipKeyPathsForPrefetching;
+ (id)relationshipKeyPathsForPrefetchingWithModelProperties:(id)a3 outUUIDPropertyName:(id *)a4;
+ (id)sortedObjectsToAddWithUUIDs:(id)a3 uuidKey:(id)a4 andExistingObjects:(id)a5 fetchBlock:(id)a6;
+ (unsigned)minimumSnapshotPayloadVersion;
+ (unsigned)payloadVersion;
+ (void)_populateAddtionalEntityNames:(id)a3 fromModelProperties:(id)a4;
+ (void)_populatePersistedPropertyNamesForAdditionalEntityNames:(id)a3 fromModelProperties:(id)a4;
+ (void)_populateValidationProperties:(id)a3 fromEntityDescription:(id)a4;
+ (void)_validateModelProperties:(id)a3 nonPersistedModelProperties:(id)a4 forEntityDescription:(id)a5;
+ (void)loadModelPropertiesDescription:(id)a3 parentPayloadProperty:(id)a4;
+ (void)populateValidationPropertiesFromManagedObjectModel:(id)a3;
+ (void)validatePayloadPropertiesForManagedObjectModel:(id)a3;
- (BOOL)_applyModelProperties:(id)a3 toPayloadAttributes:(id)a4 andNilAttributes:(id)a5 fromSourceObject:(id)a6 changedKeys:(id)a7 info:(id)a8;
- (BOOL)_comparePayloadAttributes:(id)a3 toObjectDictionary:(id)a4 currentKeyPath:(id)a5 usingModelProperties:(id)a6 errorDescriptions:(id)a7;
- (BOOL)_decodePayloadAttributesFromData:(id)a3 error:(id *)a4;
- (BOOL)comparePayloadValue:(id)a3 toObjectDictionaryValue:(id)a4 forPayloadProperty:(id)a5;
- (BOOL)containsAttributeForKey:(id)a3;
- (BOOL)payloadVersionIsLessThanVersion:(unsigned int)a3 forKey:(id)a4 inUpdatePayloads:(id)a5;
- (NSString)debugDescription;
- (NSString)description;
- (PLManagedObjectJournalEntryPayload)initWithInsertAdapter:(id)a3 changedKeys:(id)a4;
- (PLManagedObjectJournalEntryPayload)initWithInsertAdapter:(id)a3 changedKeys:(id)a4 info:(id)a5;
- (PLManagedObjectJournalEntryPayload)initWithManagedObject:(id)a3 changedKeys:(id)a4;
- (PLManagedObjectJournalEntryPayload)initWithPayloadID:(id)a3 payloadVersion:(unsigned int)a4 nilAttributes:(id)a5 sourceObject:(id)a6 changedKeys:(id)a7 modelProperties:(id)a8 info:(id)a9;
- (id)UUIDDataForString:(id)a3;
- (id)UUIDStringForData:(id)a3;
- (id)_attributesForPayloadAttributes:(id)a3 usingModelProperties:(id)a4;
- (id)_payloadAttributesListForSubRelationshipProperty:(id)a3 withManagedObjects:(id)a4 info:(id)a5;
- (id)descriptionForEntry:(id)a3;
- (id)descriptionForEntry:(id)a3 withBuilder:(id)a4;
- (id)descriptionWithBuilder:(id)a3;
- (id)encodedDataForUUIDStringArray:(id)a3;
- (id)encodedDataForUUIDStringOrderedSet:(id)a3;
- (id)encodedDataForUUIDStringSet:(id)a3;
- (id)orderedSetForUUIDEncodedData:(id)a3;
- (id)payloadAttributes;
- (id)payloadDataWithError:(id *)a3;
- (id)payloadValueFromAttributes:(id)a3 forPayloadProperty:(id)a4;
- (id)prettyDescriptionForEntry:(id)a3 indent:(int64_t)a4;
- (id)setForUUIDEncodedData:(id)a3;
- (void)_applyPayloadProperty:(id)a3 toManagedObject:(id)a4 key:(id)a5 payloadAttributesToUpdate:(id)a6 payloadDictionary:(id)a7 info:(id)a8;
- (void)_applyPayloadToManagedObject:(id)a3 forModelProperties:(id)a4 payloadAttributesToUpdate:(id)a5 info:(id)a6;
- (void)_applySubRelationshipPayloadProperty:(id)a3 toManagedObject:(id)a4 key:(id)a5 payloadAttributesToUpdate:(id)a6 payloadDictionary:(id)a7 info:(id)a8;
- (void)_resolveRelationshipsInObjectDictionary:(id)a3 atKeyPath:(id)a4 forPayloadProperty:(id)a5;
- (void)_updateNilAttributes:(id)a3 withModelProperties:(id)a4;
- (void)addAttributesDescriptionToBuilder:(id)a3;
- (void)addNilAttributesToBuilder:(id)a3;
- (void)appendAttributeKey:(id)a3 value:(id)a4 toDescriptionBuilder:(id)a5;
- (void)applyPayloadProperty:(id)a3 toManagedObject:(id)a4 key:(id)a5 payloadAttributesToUpdate:(id)a6 payloadDictionary:(id)a7 info:(id)a8;
- (void)applyPayloadToManagedObject:(id)a3 payloadAttributesToUpdate:(id)a4;
- (void)applyPayloadToManagedObject:(id)a3 payloadAttributesToUpdate:(id)a4 info:(id)a5;
- (void)mergePayload:(id)a3;
- (void)updatePayloadAttributes:(id)a3 andNilAttributes:(id)a4 forPayloadProperty:(id)a5 withUUIDStringData:(id)a6;
@end

@implementation PLManagedObjectJournalEntryPayload

+ (id)additionalEntityNames
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v4 = [a1 modelProperties];
  [a1 _populateAddtionalEntityNames:v3 fromModelProperties:v4];

  return v3;
}

- (void)addAttributesDescriptionToBuilder:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_payloadAttributes allKeys];
  v6 = [v5 sortedArrayUsingSelector:sel_compare_];

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
        [(PLManagedObjectJournalEntryPayload *)self appendAttributeKey:v12 value:v13 toDescriptionBuilder:v4];
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

- (void)addNilAttributesToBuilder:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 style] == 1)
  {
    v5 = [(NSMutableSet *)self->_nilAttributes allObjects];
    v6 = objc_alloc_init(MEMORY[0x1E696AD60]);
    [v6 appendString:@"["];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = v5;
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
          v13 = [v7 lastObject];

          if (v12 != v13)
          {
            [v6 appendString:{@", "}];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }

    [v6 appendString:@"]"];
    [v4 appendName:@"nilAttributes" object:v6];
  }

  else
  {
    [v4 appendName:@"nilAttributes" object:self->_nilAttributes];
  }
}

- (id)descriptionForEntry:(id)a3 withBuilder:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PLManagedObjectJournalEntryPayload *)self payloadVersion];
  v9 = [v7 payloadVersion];

  if (v8 != v9)
  {
    [v6 appendName:@"version" integerValue:{-[PLManagedObjectJournalEntryPayload payloadVersion](self, "payloadVersion")}];
  }

  if ([(NSMutableSet *)self->_nilAttributes count])
  {
    [(PLManagedObjectJournalEntryPayload *)self addNilAttributesToBuilder:v6];
  }

  if ([(NSMutableDictionary *)self->_payloadAttributes count])
  {
    [(PLManagedObjectJournalEntryPayload *)self addAttributesDescriptionToBuilder:v6];
  }

  v10 = [v6 build];

  return v10;
}

- (id)descriptionWithBuilder:(id)a3
{
  v4 = a3;
  v5 = [(PLManagedObjectJournalEntryPayload *)self payloadID];
  [v4 appendName:@"payloadID" object:v5];

  [v4 appendName:@"version" integerValue:{-[PLManagedObjectJournalEntryPayload payloadVersion](self, "payloadVersion")}];
  if ([(NSMutableSet *)self->_nilAttributes count])
  {
    [(PLManagedObjectJournalEntryPayload *)self addNilAttributesToBuilder:v4];
  }

  if ([(NSMutableDictionary *)self->_payloadAttributes count])
  {
    v6 = [v4 style];
    v7 = [PLDescriptionBuilder alloc];
    v8 = [v4 style];
    if (v6 == 1)
    {
      v9 = [(PLDescriptionBuilder *)v7 initWithObject:self style:v8 indent:0];
      [(PLManagedObjectJournalEntryPayload *)self addAttributesDescriptionToBuilder:v9];
      v10 = MEMORY[0x1E696AEC0];
      v11 = [(PLDescriptionBuilder *)v9 build];
      v12 = [v10 stringWithFormat:@"[%@]", v11];
      [v4 appendName:@"attributes" object:v12];
    }

    else
    {
      v9 = -[PLDescriptionBuilder initWithObject:style:indent:](v7, "initWithObject:style:indent:", self, v8, [v4 indent] + 1);
      [(PLManagedObjectJournalEntryPayload *)self addAttributesDescriptionToBuilder:v9];
      if ([v4 style] == 2)
      {
        v13 = MEMORY[0x1E696AEC0];
        v14 = [(PLDescriptionBuilder *)v9 build];
        v11 = [v13 stringWithFormat:@"\n%@", v14];
      }

      else
      {
        v11 = [(PLDescriptionBuilder *)v9 build];
      }

      [v4 appendName:@"attributes" object:v11];
    }
  }

  v15 = [v4 build];

  return v15;
}

- (id)prettyDescriptionForEntry:(id)a3 indent:(int64_t)a4
{
  v6 = a3;
  v7 = [[PLDescriptionBuilder alloc] initWithObject:self style:3 indent:a4];
  v8 = [(PLManagedObjectJournalEntryPayload *)self descriptionForEntry:v6 withBuilder:v7];

  return v8;
}

- (id)descriptionForEntry:(id)a3
{
  v4 = a3;
  v5 = [[PLDescriptionBuilder alloc] initWithObject:self style:1 indent:0];
  v6 = [(PLManagedObjectJournalEntryPayload *)self descriptionForEntry:v4 withBuilder:v5];

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

- (id)_attributesForPayloadAttributes:(id)a3 usingModelProperties:(id)a4
{
  v6 = a3;
  v7 = MEMORY[0x1E695DF90];
  v8 = a4;
  v9 = objc_alloc_init(v7);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __91__PLManagedObjectJournalEntryPayload__attributesForPayloadAttributes_usingModelProperties___block_invoke;
  v15[3] = &unk_1E7572EE8;
  v15[4] = self;
  v16 = v6;
  v10 = v9;
  v17 = v10;
  v11 = v6;
  [v8 enumerateKeysAndObjectsUsingBlock:v15];

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

- (void)applyPayloadToManagedObject:(id)a3 payloadAttributesToUpdate:(id)a4 info:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [objc_opt_class() modelProperties];
  [(PLManagedObjectJournalEntryPayload *)self _applyPayloadToManagedObject:v10 forModelProperties:v11 payloadAttributesToUpdate:v9 info:v8];
}

- (void)applyPayloadToManagedObject:(id)a3 payloadAttributesToUpdate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [objc_opt_class() modelProperties];
  [(PLManagedObjectJournalEntryPayload *)self _applyPayloadToManagedObject:v7 forModelProperties:v8 payloadAttributesToUpdate:v6 info:0];
}

- (void)updatePayloadAttributes:(id)a3 andNilAttributes:(id)a4 forPayloadProperty:(id)a5 withUUIDStringData:(id)a6
{
  v12 = a3;
  v9 = a4;
  v10 = a6;
  v11 = [a5 key];
  if (v10)
  {
    [v12 setObject:v10 forKeyedSubscript:v11];
  }

  else
  {
    [v9 addObject:v11];
  }
}

- (BOOL)payloadVersionIsLessThanVersion:(unsigned int)a3 forKey:(id)a4 inUpdatePayloads:(id)a5
{
  v9 = a4;
  v10 = a5;
  if (!v9)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PLManagedObjectJournalEntryPayload.m" lineNumber:776 description:{@"Invalid parameter not satisfying: %@", @"key"}];
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = [(PLManagedObjectJournalEntryPayload *)self payloadVersion];
  if (*(v18 + 6) >= a3)
  {
    v11 = 0;
  }

  else
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __94__PLManagedObjectJournalEntryPayload_payloadVersionIsLessThanVersion_forKey_inUpdatePayloads___block_invoke;
    v14[3] = &unk_1E7564248;
    v15 = v9;
    v16 = &v17;
    [v10 enumerateObjectsWithOptions:2 usingBlock:v14];
    v11 = *(v18 + 6) < a3;
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

- (id)UUIDStringForData:(id)a3
{
  v3 = a3;
  v6 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    memset(v5, 0, 37);
    uuid_unparse([a3 bytes], v5);
    v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v5];
  }

  return v3;
}

- (id)UUIDDataForString:(id)a3
{
  v3 = a3;
  v6 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    memset(uu, 0, sizeof(uu));
    uuid_parse([a3 UTF8String], uu);
    v3 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:uu length:16];
  }

  return v3;
}

- (id)setForUUIDEncodedData:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 length];
  if (v4 >= 0x10)
  {
    v6 = v4 >> 4;
    v5 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:v4 >> 4];
    v7 = [v3 bytes];
    v8 = 0;
    v9 = 1;
    do
    {
      memset(v13, 0, sizeof(v13));
      uuid_unparse((v7 + 16 * v8), v13);
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

- (id)orderedSetForUUIDEncodedData:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 length];
  if (v4 >= 0x10)
  {
    v6 = v4 >> 4;
    v5 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithCapacity:v4 >> 4];
    v7 = [v3 bytes];
    v8 = 0;
    v9 = 1;
    do
    {
      memset(v13, 0, sizeof(v13));
      uuid_unparse((v7 + 16 * v8), v13);
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

- (id)encodedDataForUUIDStringArray:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 count])
  {
    v4 = 16 * [v3 count];
    v5 = malloc_type_malloc(v4, 0x55FBA4F7uLL);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = v3;
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
          v14 = [v13 UTF8String];
          memset(uu, 0, sizeof(uu));
          uuid_parse(v14, uu);
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

- (id)encodedDataForUUIDStringOrderedSet:(id)a3
{
  v4 = [a3 array];
  v5 = [(PLManagedObjectJournalEntryPayload *)self encodedDataForUUIDStringArray:v4];

  return v5;
}

- (id)encodedDataForUUIDStringSet:(id)a3
{
  v4 = [a3 allObjects];
  v5 = [v4 sortedArrayUsingSelector:sel_compare_];

  v6 = [(PLManagedObjectJournalEntryPayload *)self encodedDataForUUIDStringArray:v5];

  return v6;
}

- (id)payloadValueFromAttributes:(id)a3 forPayloadProperty:(id)a4
{
  v5 = a3;
  v6 = [a4 key];
  v7 = [v5 objectForKeyedSubscript:v6];

  return v7;
}

- (void)appendAttributeKey:(id)a3 value:(id)a4 toDescriptionBuilder:(id)a5
{
  v10 = a3;
  v7 = a4;
  v8 = a5;
  v9 = v8;
  if (v7)
  {
    if ([v8 style] == 1 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v9 appendName:v10 unsignedIntegerValue:{objc_msgSend(v7, "count")}];
    }

    else
    {
      [v9 appendName:v10 object:v7];
    }
  }
}

- (BOOL)comparePayloadValue:(id)a3 toObjectDictionaryValue:(id)a4 forPayloadProperty:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (!v7)
  {
    if ([v9 isOptional])
    {
      v7 = 0;
    }

    else
    {
      v7 = [v10 defaultValue];
    }
  }

  if ([v10 type] == 500)
  {
    [v8 doubleValue];
    v12 = v11;
    [v7 doubleValue];
    v14 = vabdd_f64(v12, v13) < 2.22044605e-16;
  }

  else
  {
    if ([v10 type] == 900 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v15 = objc_alloc_init(MEMORY[0x1E696AC80]);
      [v15 setFormatOptions:3955];
      v16 = [v15 dateFromString:v8];
      [v16 timeIntervalSinceReferenceDate];
      v18 = v17;

      [v7 timeIntervalSinceReferenceDate];
      v14 = vabdd_f64(v18, v19) < 0.001;
    }

    else
    {
      if ([v10 type] != 1000 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v14 = [v8 isEqual:v7];
        goto LABEL_15;
      }

      v15 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v8 options:0];
      v14 = [v15 isEqualToData:v7];
    }
  }

LABEL_15:

  return v14;
}

- (void)_applyPayloadProperty:(id)a3 toManagedObject:(id)a4 key:(id)a5 payloadAttributesToUpdate:(id)a6 payloadDictionary:(id)a7 info:(id)a8
{
  v24 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  if (([v24 requiresConversion] & 1) != 0 || (objc_msgSend(v24, "key"), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "objectForKeyedSubscript:", v19), v20 = objc_claimAutoreleasedReturnValue(), v20, v19, !v20))
  {
    v23 = [v24 subRelationshipProperties];

    if (v18 && v23)
    {
      [(PLManagedObjectJournalEntryPayload *)self _applySubRelationshipPayloadProperty:v24 toManagedObject:v14 key:v15 payloadAttributesToUpdate:v16 payloadDictionary:v17 info:v18];
    }
  }

  else
  {
    v21 = [v24 key];
    v22 = [v17 objectForKeyedSubscript:v21];
    [v14 setValue:v22 forKey:v15];
  }
}

- (void)_applySubRelationshipPayloadProperty:(id)a3 toManagedObject:(id)a4 key:(id)a5 payloadAttributesToUpdate:(id)a6 payloadDictionary:(id)a7 info:(id)a8
{
  v73 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v41 = a4;
  v39 = a5;
  v44 = a6;
  v40 = a7;
  v45 = a8;
  v14 = [v13 subRelationshipProperties];

  if (v14)
  {
    if ([v13 isToManySubRelationship])
    {
      v15 = [v13 key];
      v16 = [v40 objectForKeyedSubscript:v15];

      if ([v16 count])
      {
        v17 = [v41 managedObjectContext];
        v38 = [v41 valueForKey:v39];
        v70[0] = MEMORY[0x1E69E9820];
        v70[1] = 3221225472;
        v70[2] = __144__PLManagedObjectJournalEntryPayload__applySubRelationshipPayloadProperty_toManagedObject_key_payloadAttributesToUpdate_payloadDictionary_info___block_invoke;
        v70[3] = &unk_1E75641F8;
        v37 = v41;
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
              v24 = [v13 subRelationshipEntityName];
              v25 = [v23 insertNewObjectForEntityForName:v24 inManagedObjectContext:v17];

              v26 = [v13 subRelationshipProperties];
              v61[0] = MEMORY[0x1E69E9820];
              v61[1] = 3221225472;
              v61[2] = __144__PLManagedObjectJournalEntryPayload__applySubRelationshipPayloadProperty_toManagedObject_key_payloadAttributesToUpdate_payloadDictionary_info___block_invoke_2;
              v61[3] = &unk_1E756D0F8;
              v61[4] = self;
              v62 = v25;
              v63 = v44;
              v64 = v22;
              v65 = v45;
              v27 = v25;
              [v26 enumerateKeysAndObjectsUsingBlock:v61];

              [v18 addObject:v27];
              ++v21;
            }

            while (v19 != v21);
            v19 = [obj countByEnumeratingWithState:&v66 objects:v72 count:16];
          }

          while (v19);
        }

        [v37 setValue:v18 forKey:v39];
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
      v28 = [v13 subRelationshipProperties];
      v52[0] = MEMORY[0x1E69E9820];
      v52[1] = 3221225472;
      v52[2] = __144__PLManagedObjectJournalEntryPayload__applySubRelationshipPayloadProperty_toManagedObject_key_payloadAttributesToUpdate_payloadDictionary_info___block_invoke_3;
      v52[3] = &unk_1E756C9D0;
      v29 = v45;
      v53 = v29;
      v54 = self;
      v30 = v40;
      v55 = v30;
      v56 = &v57;
      [v28 enumerateKeysAndObjectsUsingBlock:v52];

      if (*(v58 + 24) == 1)
      {
        v31 = [v41 valueForKey:v39];
        if (!v31)
        {
          v32 = MEMORY[0x1E695D5B8];
          v33 = [v13 subRelationshipEntityName];
          v34 = [v41 managedObjectContext];
          v31 = [v32 insertNewObjectForEntityForName:v33 inManagedObjectContext:v34];

          [v41 setValue:v31 forKey:v39];
        }

        v35 = [v13 subRelationshipProperties];
        v46[0] = MEMORY[0x1E69E9820];
        v46[1] = 3221225472;
        v46[2] = __144__PLManagedObjectJournalEntryPayload__applySubRelationshipPayloadProperty_toManagedObject_key_payloadAttributesToUpdate_payloadDictionary_info___block_invoke_4;
        v46[3] = &unk_1E756D0F8;
        v47 = v29;
        v48 = self;
        v36 = v31;
        v49 = v36;
        v50 = v44;
        v51 = v30;
        [v35 enumerateKeysAndObjectsUsingBlock:v46];
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

- (void)applyPayloadProperty:(id)a3 toManagedObject:(id)a4 key:(id)a5 payloadAttributesToUpdate:(id)a6 payloadDictionary:(id)a7 info:(id)a8
{
  v19 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  if (!v18 && self->_payloadAttributes == v17)
  {
    [(PLManagedObjectJournalEntryPayload *)self applyPayloadProperty:v19 toManagedObject:v14 key:v15 payloadAttributesToUpdate:v16];
  }

  else
  {
    [(PLManagedObjectJournalEntryPayload *)self _applyPayloadProperty:v19 toManagedObject:v14 key:v15 payloadAttributesToUpdate:v16 payloadDictionary:v17 info:v18];
  }
}

- (id)payloadAttributes
{
  payloadAttributes = self->_payloadAttributes;
  v4 = [objc_opt_class() modelProperties];
  v5 = [(PLManagedObjectJournalEntryPayload *)self _attributesForPayloadAttributes:payloadAttributes usingModelProperties:v4];

  return v5;
}

- (BOOL)containsAttributeForKey:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_payloadAttributes objectForKeyedSubscript:v4];
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = [(NSMutableSet *)self->_nilAttributes containsObject:v4];
  }

  return v6;
}

- (void)mergePayload:(id)a3
{
  v6 = a3;
  [(NSMutableDictionary *)self->_payloadAttributes addEntriesFromDictionary:*(v6 + 1)];
  if ([*(v6 + 2) count])
  {
    payloadAttributes = self->_payloadAttributes;
    v5 = [*(v6 + 2) allObjects];
    [(NSMutableDictionary *)payloadAttributes removeObjectsForKeys:v5];
  }
}

- (id)payloadDataWithError:(id *)a3
{
  if ([(NSMutableDictionary *)self->_payloadAttributes count])
  {
    [MEMORY[0x1E696AE40] dataWithPropertyList:self->_payloadAttributes format:200 options:0 error:a3];
  }

  else
  {
    [MEMORY[0x1E695DEF0] data];
  }
  v5 = ;

  return v5;
}

- (BOOL)_decodePayloadAttributesFromData:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([v6 length])
  {
    v7 = [MEMORY[0x1E696AE40] propertyListWithData:v6 options:1 format:0 error:a4];
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

- (void)_applyPayloadToManagedObject:(id)a3 forModelProperties:(id)a4 payloadAttributesToUpdate:(id)a5 info:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __117__PLManagedObjectJournalEntryPayload__applyPayloadToManagedObject_forModelProperties_payloadAttributesToUpdate_info___block_invoke;
  v16[3] = &unk_1E7572828;
  v17 = v12;
  v18 = self;
  v19 = v10;
  v20 = v11;
  v13 = v11;
  v14 = v10;
  v15 = v12;
  [a4 enumerateKeysAndObjectsUsingBlock:v16];
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

- (BOOL)_applyModelProperties:(id)a3 toPayloadAttributes:(id)a4 andNilAttributes:(id)a5 fromSourceObject:(id)a6 changedKeys:(id)a7 info:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __131__PLManagedObjectJournalEntryPayload__applyModelProperties_toPayloadAttributes_andNilAttributes_fromSourceObject_changedKeys_info___block_invoke;
  v26[3] = &unk_1E75641D0;
  v20 = v18;
  v27 = v20;
  v21 = v17;
  v28 = v21;
  v22 = v19;
  v33 = &v34;
  v29 = v22;
  v30 = self;
  v23 = v15;
  v31 = v23;
  v24 = v16;
  v32 = v24;
  [v14 enumerateKeysAndObjectsUsingBlock:v26];
  LOBYTE(v15) = *(v35 + 24);

  _Block_object_dispose(&v34, 8);
  return v15;
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

- (void)_updateNilAttributes:(id)a3 withModelProperties:(id)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __79__PLManagedObjectJournalEntryPayload__updateNilAttributes_withModelProperties___block_invoke;
  v8[3] = &unk_1E756D1E8;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [a4 enumerateKeysAndObjectsUsingBlock:v8];
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

- (id)_payloadAttributesListForSubRelationshipProperty:(id)a3 withManagedObjects:(id)a4 info:(id)a5
{
  v33 = *MEMORY[0x1E69E9840];
  v26 = a3;
  v8 = a4;
  v9 = a5;
  v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v10 = v8;
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
        if (v9 && ([v15 sourceObject], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v9, "validForPersistenceWithPayloadProperty:andValue:stop:", v26, v17, &v27), v17, (v18 & 1) == 0))
        {
          if (v27)
          {
            goto LABEL_18;
          }
        }

        else if ([v16 isValidForJournalPersistence])
        {
          v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
          v20 = [v26 subRelationshipProperties];
          v21 = [v16 sourceObject];
          v27 = [(PLManagedObjectJournalEntryPayload *)self _applyModelProperties:v20 toPayloadAttributes:v19 andNilAttributes:0 fromSourceObject:v21 changedKeys:0 info:v9];

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

- (PLManagedObjectJournalEntryPayload)initWithPayloadID:(id)a3 payloadVersion:(unsigned int)a4 nilAttributes:(id)a5 sourceObject:(id)a6 changedKeys:(id)a7 modelProperties:(id)a8 info:(id)a9
{
  v16 = a3;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  if (!v16)
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

  objc_storeStrong(&self->_payloadID, a3);
  self->_payloadVersion = a4;
  if (!v18)
  {
    v25 = [v17 mutableCopy];
    nilAttributes = self->_nilAttributes;
    self->_nilAttributes = v25;

LABEL_16:
    self = self;
    v32 = self;
    goto LABEL_17;
  }

  if (v19)
  {
    v24 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  }

  else
  {
    v24 = 0;
  }

  v27 = self->_nilAttributes;
  self->_nilAttributes = v24;

  v28 = [(PLManagedObjectJournalEntryPayload *)self _applyModelProperties:v20 toPayloadAttributes:self->_payloadAttributes andNilAttributes:self->_nilAttributes fromSourceObject:v18 changedKeys:v19 info:v21];
  v29 = v28;
  if (v19 && !v28)
  {
    if ([(NSMutableDictionary *)self->_payloadAttributes count]|| [(NSMutableSet *)self->_nilAttributes count])
    {
      v30 = self;
    }

    else
    {
      v30 = 0;
    }

    v31 = v30;

    self = v31;
  }

  if (!v29)
  {
    goto LABEL_16;
  }

  v32 = 0;
LABEL_17:

  return v32;
}

- (PLManagedObjectJournalEntryPayload)initWithManagedObject:(id)a3 changedKeys:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 payloadID];
  v9 = [objc_opt_class() payloadVersion];
  v10 = [objc_opt_class() modelProperties];
  v11 = [(PLManagedObjectJournalEntryPayload *)self initWithPayloadID:v8 payloadVersion:v9 nilAttributes:0 sourceObject:v7 changedKeys:v6 modelProperties:v10 info:0];

  return v11;
}

- (PLManagedObjectJournalEntryPayload)initWithInsertAdapter:(id)a3 changedKeys:(id)a4 info:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v10 payloadID];
  v12 = [objc_opt_class() payloadVersion];
  v13 = [v10 sourceObject];

  v14 = [objc_opt_class() modelProperties];
  v15 = [(PLManagedObjectJournalEntryPayload *)self initWithPayloadID:v11 payloadVersion:v12 nilAttributes:0 sourceObject:v13 changedKeys:v9 modelProperties:v14 info:v8];

  return v15;
}

- (PLManagedObjectJournalEntryPayload)initWithInsertAdapter:(id)a3 changedKeys:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 payloadID];
  v9 = [objc_opt_class() payloadVersion];
  v10 = [v7 sourceObject];

  v11 = [objc_opt_class() modelProperties];
  v12 = [(PLManagedObjectJournalEntryPayload *)self initWithPayloadID:v8 payloadVersion:v9 nilAttributes:0 sourceObject:v10 changedKeys:v6 modelProperties:v11 info:0];

  return v12;
}

+ (id)objectDictionariesByUUIDForPayloadClass:(Class)a3 inManagedObjectContext:(id)a4 fetchPredicate:(id)a5 info:(id)a6 error:(id *)a7
{
  v52 = *MEMORY[0x1E69E9840];
  v11 = a6;
  v12 = MEMORY[0x1E695DF90];
  v13 = a5;
  v14 = a4;
  v15 = objc_alloc_init(v12);
  v16 = [(objc_class *)a3 modelProperties];
  v47 = 0;
  v17 = [PLManagedObjectJournalEntryPayload relationshipKeyPathsForPrefetchingWithModelProperties:v16 outUUIDPropertyName:&v47];
  v18 = v47;

  v19 = objc_alloc(MEMORY[0x1E695D5E0]);
  v20 = [(objc_class *)a3 entityName];
  v21 = [v19 initWithEntityName:v20];

  [v21 setReturnsObjectsAsFaults:0];
  [v21 setRelationshipKeyPathsForPrefetching:v17];
  [v21 setShouldRefreshRefetchedObjects:1];
  [v21 setPredicate:v13];

  v46 = 0;
  v22 = [v14 executeFetchRequest:v21 error:&v46];

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
    v45 = a3;
    [v22 enumerateObjectsUsingBlock:v43];

    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __127__PLManagedObjectJournalEntryPayload_objectDictionariesByUUIDForPayloadClass_inManagedObjectContext_fetchPredicate_info_error___block_invoke_139;
    v37[3] = &unk_1E75642C0;
    v41 = a1;
    v42 = a3;
    v38 = v11;
    v39 = v18;
    v27 = v15;
    v40 = v27;
    [v26 enumerateObjectsUsingBlock:v37];
    v28 = v27;
  }

  else
  {
    v36 = v15;
    v29 = v11;
    v30 = PLMigrationGetLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [(objc_class *)a3 payloadClassID];
      v32 = v31 = a7;
      *buf = 138543618;
      v49 = v32;
      v50 = 2112;
      v51 = v23;
      _os_log_impl(&dword_19BF1F000, v30, OS_LOG_TYPE_ERROR, "Fetch failed for payload class %{public}@, error: %@", buf, 0x16u);

      a7 = v31;
    }

    if (a7)
    {
      v33 = v23;
      v28 = 0;
      *a7 = v23;
    }

    else
    {
      v28 = 0;
    }

    v11 = v29;
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

+ (id)fetchRelationshipPropertyValuesForRelationshipName:(id)a3 fromManagedObject:(id)a4 usingPayloadProperty:(id)a5
{
  v65[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 entity];
  v12 = [v11 relationshipsByName];
  v13 = [v12 objectForKeyedSubscript:v8];

  v14 = [v13 inverseRelationship];
  v15 = v14;
  if (v13 && v14)
  {
    v51 = a1;
    v52 = v11;
    v53 = v10;
    v16 = [v10 relatedEntityPropertyNames];
    v17 = [v16 anyObject];

    v18 = MEMORY[0x1E695D5E0];
    v19 = [v15 entity];
    v20 = [v19 name];
    v21 = [v18 fetchRequestWithEntityName:v20];

    [v21 setResultType:2];
    LODWORD(v18) = [v15 isToMany];
    v22 = MEMORY[0x1E696AE18];
    v23 = [v15 name];
    v24 = v23;
    if (v18)
    {
      v25 = @"%K CONTAINS %@";
    }

    else
    {
      v25 = @"%K = %@";
    }

    v26 = [v22 predicateWithFormat:v25, v23, v9];
    [v21 setPredicate:v26];

    [v21 setAllocationType:1];
    v65[0] = v17;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:1];
    [v21 setPropertiesToFetch:v27];

    if ([v13 isOrdered])
    {
      v28 = MEMORY[0x1E696AEB0];
      v29 = [v15 name];
      v30 = [v28 sortDescriptorWithKey:v29 ascending:1];
      v64 = v30;
      v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v64 count:1];
      [v21 setSortDescriptors:v31];
    }

    v32 = [v9 managedObjectContext];
    v57 = 0;
    v33 = [v32 executeFetchRequest:v21 error:&v57];
    v34 = v57;

    if (v33)
    {
      v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v54[0] = MEMORY[0x1E69E9820];
      v54[1] = 3221225472;
      v54[2] = __128__PLManagedObjectJournalEntryPayload_fetchRelationshipPropertyValuesForRelationshipName_fromManagedObject_usingPayloadProperty___block_invoke;
      v54[3] = &unk_1E756D820;
      v55 = v17;
      v36 = v35;
      v56 = v36;
      [v33 enumerateObjectsUsingBlock:v54];
      v37 = v21;
      v38 = v33;
      v39 = v15;
      v40 = v13;
      v41 = v17;
      v42 = v9;
      v43 = v34;
      v44 = v8;
      v45 = v56;
      v46 = v36;

      v8 = v44;
      v34 = v43;
      v9 = v42;
      v17 = v41;
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
        v49 = [v51 payloadClassID];
        *buf = 138412802;
        v59 = v17;
        v60 = 2112;
        v61 = v49;
        v62 = 2112;
        v63 = v34;
        _os_log_impl(&dword_19BF1F000, v47, OS_LOG_TYPE_ERROR, "JournalManager: failed to fetch relationship properties for relationship %@ on %@, error: %@", buf, 0x20u);
      }

      v46 = 0;
    }

    v11 = v52;
    v10 = v53;
  }

  else
  {
    v17 = PLMigrationGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v48 = [a1 payloadClassID];
      *buf = 138543618;
      v59 = v8;
      v60 = 2114;
      v61 = v48;
      _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_ERROR, "JournalManager: relationship %{public}@ on %{public}@ does not define an inverse relationship", buf, 0x16u);
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

+ (id)relationshipKeyPathsForPrefetchingWithModelProperties:(id)a3 outUUIDPropertyName:(id *)a4
{
  v6 = MEMORY[0x1E695DF70];
  v7 = a3;
  v8 = objc_alloc_init(v6);
  v9 = [a1 _populateRelationshipKeyPathsForPrefetching:v8 currentKeyPath:&stru_1F0F06D80 usingModelProperties:v7];

  if (a4)
  {
    v10 = v9;
    *a4 = v9;
  }

  return v8;
}

+ (id)_populateRelationshipKeyPathsForPrefetching:(id)a3 currentKeyPath:(id)a4 usingModelProperties:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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
  v11 = v9;
  v16 = v11;
  v12 = v8;
  v18 = &v20;
  v19 = a1;
  v17 = v12;
  [v10 enumerateKeysAndObjectsUsingBlock:v15];
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

+ (id)sortedObjectsToAddWithUUIDs:(id)a3 uuidKey:(id)a4 andExistingObjects:(id)a5 fetchBlock:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [a5 valueForKey:v10];
  if ([v9 count] && (objc_msgSend(v9, "isEqual:", v12) & 1) == 0)
  {
    v14 = v11[2](v11);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __104__PLManagedObjectJournalEntryPayload_sortedObjectsToAddWithUUIDs_uuidKey_andExistingObjects_fetchBlock___block_invoke;
    v16[3] = &unk_1E7567600;
    v17 = v9;
    v18 = v10;
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

+ (void)_populateAddtionalEntityNames:(id)a3 fromModelProperties:(id)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __88__PLManagedObjectJournalEntryPayload__populateAddtionalEntityNames_fromModelProperties___block_invoke;
  v8[3] = &unk_1E7564220;
  v9 = v6;
  v10 = a1;
  v7 = v6;
  [a4 enumerateKeysAndObjectsUsingBlock:v8];
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

+ (void)_populatePersistedPropertyNamesForAdditionalEntityNames:(id)a3 fromModelProperties:(id)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __114__PLManagedObjectJournalEntryPayload__populatePersistedPropertyNamesForAdditionalEntityNames_fromModelProperties___block_invoke;
  v8[3] = &unk_1E7564220;
  v9 = v6;
  v10 = a1;
  v7 = v6;
  [a4 enumerateKeysAndObjectsUsingBlock:v8];
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
  v4 = [a1 modelProperties];
  v5 = MEMORY[0x1E695DFD8];
  v6 = [v4 allKeys];
  v7 = [v5 setWithArray:v6];
  v8 = [a1 entityName];
  [v3 setObject:v7 forKeyedSubscript:v8];

  [a1 _populatePersistedPropertyNamesForAdditionalEntityNames:v3 fromModelProperties:v4];

  return v3;
}

+ (void)loadModelPropertiesDescription:(id)a3 parentPayloadProperty:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __91__PLManagedObjectJournalEntryPayload_loadModelPropertiesDescription_parentPayloadProperty___block_invoke;
  v8[3] = &unk_1E7564220;
  v9 = v6;
  v10 = a1;
  v7 = v6;
  [a3 enumerateKeysAndObjectsUsingBlock:v8];
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
  v2 = a1;
  v3 = PLAbstractMethodException();
  objc_exception_throw(v3);
}

+ (id)modelPropertiesDescription
{
  v2 = a1;
  v3 = PLAbstractMethodException();
  objc_exception_throw(v3);
}

+ (id)payloadClassID
{
  v2 = a1;
  v3 = PLAbstractMethodException();
  objc_exception_throw(v3);
}

+ (id)payloadWithData:(id)a3 forPayloadID:(id)a4 version:(unsigned int)a5 andNilProperties:(id)a6 error:(id *)a7
{
  v9 = *&a5;
  v12 = a3;
  v13 = a6;
  v14 = a4;
  v15 = [[a1 alloc] initWithPayloadID:v14 payloadVersion:v9 nilAttributes:v13];

  if (v12 && ![v15 _decodePayloadAttributesFromData:v12 error:a7])
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
  v3 = [a1 modelProperties];
  v4 = [a1 relationshipKeyPathsForPrefetchingWithModelProperties:v3 outUUIDPropertyName:0];

  return v4;
}

+ (BOOL)shouldPersistForChangedKeys:(id)a3 entityName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 persistedPropertyNamesForEntityNames];
  v9 = [v8 objectForKeyedSubscript:v7];

  if (v9)
  {
    v10 = [v6 intersectsSet:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (unsigned)minimumSnapshotPayloadVersion
{
  v2 = a1;
  v3 = PLAbstractMethodException();
  objc_exception_throw(v3);
}

+ (unsigned)payloadVersion
{
  v2 = a1;
  v3 = PLAbstractMethodException();
  objc_exception_throw(v3);
}

+ (id)persistedPropertyNamesForEntityNames
{
  v2 = a1;
  v3 = PLAbstractMethodException();
  objc_exception_throw(v3);
}

+ (id)modelProperties
{
  v2 = a1;
  v3 = PLAbstractMethodException();
  objc_exception_throw(v3);
}

+ (void)populateValidationPropertiesFromManagedObjectModel:(id)a3
{
  v4 = [a3 entitiesByName];
  v5 = [a1 entityName];
  v7 = [v4 objectForKeyedSubscript:v5];

  v6 = [objc_opt_class() modelProperties];
  [a1 _populateValidationProperties:v6 fromEntityDescription:v7];
}

+ (void)validatePayloadPropertiesForManagedObjectModel:(id)a3
{
  v4 = [a3 entitiesByName];
  v5 = [a1 entityName];
  v9 = [v4 objectForKeyedSubscript:v5];

  v6 = objc_opt_class();
  v7 = [objc_opt_class() modelProperties];
  v8 = [objc_opt_class() nonPersistedModelPropertiesDescription];
  [v6 _validateModelProperties:v7 nonPersistedModelProperties:v8 forEntityDescription:v9];
}

- (void)_resolveRelationshipsInObjectDictionary:(id)a3 atKeyPath:(id)a4 forPayloadProperty:(id)a5
{
  v35 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v11 = v9;
  v12 = [v9 subRelationshipProperties];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __148__PLManagedObjectJournalEntryPayload_PLJournalEntryPayloadValidationInternal___resolveRelationshipsInObjectDictionary_atKeyPath_forPayloadProperty___block_invoke;
  v30[3] = &unk_1E7572EE8;
  v13 = v8;
  v31 = v13;
  v14 = v7;
  v32 = v14;
  v15 = v10;
  v33 = v15;
  [v12 enumerateKeysAndObjectsUsingBlock:v30];

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
          v21 = [v11 subRelationshipProperties];
          v24[0] = MEMORY[0x1E69E9820];
          v24[1] = 3221225472;
          v24[2] = __148__PLManagedObjectJournalEntryPayload_PLJournalEntryPayloadValidationInternal___resolveRelationshipsInObjectDictionary_atKeyPath_forPayloadProperty___block_invoke_3;
          v24[3] = &unk_1E756D1E8;
          v24[4] = v20;
          v25 = v15;
          [v21 enumerateKeysAndObjectsUsingBlock:v24];
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

- (BOOL)_comparePayloadAttributes:(id)a3 toObjectDictionary:(id)a4 currentKeyPath:(id)a5 usingModelProperties:(id)a6 errorDescriptions:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 1;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __178__PLManagedObjectJournalEntryPayload_PLJournalEntryPayloadValidationInternal___comparePayloadAttributes_toObjectDictionary_currentKeyPath_usingModelProperties_errorDescriptions___block_invoke;
  v22[3] = &unk_1E75643B0;
  v17 = v14;
  v23 = v17;
  v24 = self;
  v18 = v12;
  v25 = v18;
  v19 = v13;
  v26 = v19;
  v20 = v16;
  v27 = v20;
  v28 = &v29;
  [v15 enumerateKeysAndObjectsUsingBlock:v22];
  LOBYTE(v14) = *(v30 + 24);

  _Block_object_dispose(&v29, 8);
  return v14;
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

+ (BOOL)_populateObjectDictionary:(id)a3 withObject:(id)a4 currentKeyPath:(id)a5 usingModelProperties:(id)a6 payloadClass:(Class)a7 info:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __170__PLManagedObjectJournalEntryPayload_PLJournalEntryPayloadValidationInternal___populateObjectDictionary_withObject_currentKeyPath_usingModelProperties_payloadClass_info___block_invoke;
  v24[3] = &unk_1E7564400;
  v19 = v15;
  v25 = v19;
  v20 = v18;
  v26 = v20;
  v29 = &v32;
  v21 = v16;
  v27 = v21;
  v30 = a1;
  v22 = v14;
  v28 = v22;
  v31 = a7;
  [v17 enumerateKeysAndObjectsUsingBlock:v24];
  LOBYTE(a7) = *(v33 + 24);

  _Block_object_dispose(&v32, 8);
  return a7;
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

+ (void)_populateValidationProperties:(id)a3 fromEntityDescription:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __131__PLManagedObjectJournalEntryPayload_PLJournalEntryPayloadValidationInternal___populateValidationProperties_fromEntityDescription___block_invoke;
  v8[3] = &unk_1E7564220;
  v9 = v6;
  v10 = a1;
  v7 = v6;
  [a3 enumerateKeysAndObjectsUsingBlock:v8];
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

+ (void)_validateModelProperties:(id)a3 nonPersistedModelProperties:(id)a4 forEntityDescription:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 attributesByName];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __153__PLManagedObjectJournalEntryPayload_PLJournalEntryPayloadValidationInternal___validateModelProperties_nonPersistedModelProperties_forEntityDescription___block_invoke;
  v21[3] = &unk_1E75642E8;
  v12 = v8;
  v22 = v12;
  v13 = v9;
  v23 = v13;
  v24 = a1;
  [v11 enumerateKeysAndObjectsUsingBlock:v21];

  v14 = [v10 relationshipsByName];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __153__PLManagedObjectJournalEntryPayload_PLJournalEntryPayloadValidationInternal___validateModelProperties_nonPersistedModelProperties_forEntityDescription___block_invoke_2;
  v17[3] = &unk_1E7564310;
  v18 = v12;
  v19 = v13;
  v20 = a1;
  v15 = v13;
  v16 = v12;
  [v14 enumerateKeysAndObjectsUsingBlock:v17];
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