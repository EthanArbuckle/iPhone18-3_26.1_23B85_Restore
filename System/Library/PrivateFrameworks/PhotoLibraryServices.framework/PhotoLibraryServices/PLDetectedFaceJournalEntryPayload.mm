@interface PLDetectedFaceJournalEntryPayload
+ (BOOL)isValidForPersistenceWithObjectDictionary:(id)a3 additionalEntityName:(id)a4;
+ (id)modelProperties;
+ (id)modelPropertiesDescription;
+ (id)nonPersistedModelPropertiesDescription;
+ (id)persistedPropertyNamesForEntityNames;
- (BOOL)comparePayloadValue:(id)a3 toObjectDictionaryValue:(id)a4 forPayloadProperty:(id)a5;
- (BOOL)insertFaceFromDataInManagedObjectContext:(id)a3 allowDeferred:(BOOL *)a4;
- (BOOL)insertWithAssets:(id)a3 inManagedObjectContext:(id)a4;
- (BOOL)isDeferrable;
- (BOOL)isHidden;
- (BOOL)isKeyFace;
- (BOOL)isManual;
- (BOOL)updatePayloadAttributes:(id)a3 andNilAttributes:(id)a4 withManagedObject:(id)a5 forPayloadProperty:(id)a6;
- (NSSet)assetIdentifiers;
- (NSString)assetUUID;
- (double)bodyCenterX;
- (double)bodyCenterY;
- (double)bodyHeight;
- (double)bodyWidth;
- (double)centerX;
- (double)centerY;
- (double)size;
- (id)_insertDeferredRebuildFaceForPersonUUID:(id)a3 inManagedObjectContext:(id)a4;
- (id)_insertDeferredRebuildFacesFromDataInManagedObjectContext:(id)a3;
- (id)_insertDetectedFaceWithAsset:(id)a3 inManagedObjectContext:(id)a4 checkExisting:(BOOL)a5;
- (id)clusterRejectedPersonsUUIDs;
- (id)payloadValueFromAttributes:(id)a3 forPayloadProperty:(id)a4;
- (id)personUUID;
- (id)rejectedPersonsUUIDs;
- (int)cloudNameSource;
- (int)faceAlgorithmVersion;
- (int)nameSource;
- (int64_t)assetIdentifierType;
- (unint64_t)assetIdentifierCount;
- (void)appendAttributeKey:(id)a3 value:(id)a4 toDescriptionBuilder:(id)a5;
- (void)setAssetUUID:(id)a3;
- (void)setLocalAssetIdentifierForCloudIdentifiers:(id)a3;
@end

@implementation PLDetectedFaceJournalEntryPayload

+ (id)modelPropertiesDescription
{
  v31[19] = *MEMORY[0x1E69E9840];
  v30[0] = @"uuid";
  v28 = +[PLJournalEntryPayloadProperty payloadPropertyForUUID];
  v31[0] = v28;
  v30[1] = @"centerX";
  v27 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v31[1] = v27;
  v30[2] = @"centerY";
  v26 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v31[2] = v26;
  v30[3] = @"size";
  v25 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v31[3] = v25;
  v30[4] = @"bodyCenterX";
  v24 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v31[4] = v24;
  v30[5] = @"bodyCenterY";
  v23 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v31[5] = v23;
  v30[6] = @"bodyWidth";
  v22 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v31[6] = v22;
  v30[7] = @"bodyHeight";
  v21 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v31[7] = v21;
  v30[8] = @"detectionType";
  v20 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v31[8] = v20;
  v30[9] = @"nameSource";
  v19 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v31[9] = v19;
  v30[10] = @"cloudNameSource";
  v18 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v31[10] = v18;
  v30[11] = @"hidden";
  v17 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v31[11] = v17;
  v30[12] = @"manual";
  v16 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v31[12] = v16;
  v30[13] = @"faceAlgorithmVersion";
  v2 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v31[13] = v2;
  v30[14] = @"assetForFace";
  v29[0] = @"uuid";
  v29[1] = @"cloudAssetGUID";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
  v4 = [MEMORY[0x1E695DFD8] setWithArray:v3];
  v5 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"asset" relatedEntityPropertyNames:v4 shouldPrefetchRelationship:1];

  v31[14] = v5;
  v30[15] = @"rejectedPersons";
  v6 = [MEMORY[0x1E695DFD8] setWithObject:@"personUUID"];
  v7 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"rejectedPersons" relatedEntityPropertyNames:v6 shouldPrefetchRelationship:1];

  v31[15] = v7;
  v30[16] = @"clusterRejectedPersons";
  v8 = [MEMORY[0x1E695DFD8] setWithObject:@"personUUID"];
  v9 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"clusterRejectedPersons" relatedEntityPropertyNames:v8 shouldPrefetchRelationship:1];

  v31[16] = v9;
  v30[17] = @"personForFace";
  v10 = [MEMORY[0x1E695DFD8] setWithObject:@"personUUID"];
  v11 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"person" relatedEntityPropertyNames:v10 shouldPrefetchRelationship:1];

  v31[17] = v11;
  v30[18] = @"personBeingKeyFace";
  v12 = [MEMORY[0x1E695DFD8] setWithObject:@"personUUID"];
  v13 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"personBeingKeyFace" relatedEntityPropertyNames:v12 shouldPrefetchRelationship:1];

  v31[18] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:19];

  return v14;
}

- (BOOL)comparePayloadValue:(id)a3 toObjectDictionaryValue:(id)a4 forPayloadProperty:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v10 isEqualToKey:@"asset"])
  {
    if ([(PLDetectedFaceJournalEntryPayload *)self assetIdentifierType])
    {
      if ([(PLDetectedFaceJournalEntryPayload *)self assetIdentifierType]!= 1)
      {
        v12 = 0;
        goto LABEL_11;
      }

      v11 = @"cloudAssetGUID";
    }

    else
    {
      v11 = @"uuid";
    }

    v12 = [v9 objectForKeyedSubscript:v11];
LABEL_11:
    if (!(v8 | v12))
    {
      v14 = 1;
LABEL_16:

      goto LABEL_17;
    }

    v15 = v12;
    v16 = v8;
    goto LABEL_14;
  }

  if (([v10 isEqualToKey:@"rejectedPersons"] & 1) != 0 || objc_msgSend(v10, "isEqualToKey:", @"clusterRejectedPersons"))
  {
    v12 = [MEMORY[0x1E695DFD8] setWithArray:v9];
    v13 = [v12 isEqualToSet:v8];
LABEL_15:
    v14 = v13;
    goto LABEL_16;
  }

  if ([v10 isEqualToKey:@"personBeingKeyFace"])
  {
    if (![v8 BOOLValue])
    {
      v14 = 0;
      goto LABEL_17;
    }

    v12 = [(PLDetectedFaceJournalEntryPayload *)self personUUID];
    v15 = v9;
    v16 = v12;
LABEL_14:
    v13 = [v15 isEqualToString:v16];
    goto LABEL_15;
  }

  if ([v10 isEqualToKey:@"person"])
  {
    v18 = [v9 isEqualToString:v8];
  }

  else
  {
    v19.receiver = self;
    v19.super_class = PLDetectedFaceJournalEntryPayload;
    v18 = [(PLManagedObjectJournalEntryPayload *)&v19 comparePayloadValue:v8 toObjectDictionaryValue:v9 forPayloadProperty:v10];
  }

  v14 = v18;
LABEL_17:

  return v14;
}

- (id)payloadValueFromAttributes:(id)a3 forPayloadProperty:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([v7 isEqualToKey:@"asset"] & 1) != 0 || objc_msgSend(v7, "isEqualToKey:", @"person"))
  {
    v8 = [v7 key];
    v9 = [v6 objectForKeyedSubscript:v8];
    v10 = [(PLManagedObjectJournalEntryPayload *)self UUIDStringForData:v9];
LABEL_4:
    v11 = v10;

    goto LABEL_5;
  }

  if (([v7 isEqualToKey:@"rejectedPersons"] & 1) != 0 || objc_msgSend(v7, "isEqualToKey:", @"clusterRejectedPersons"))
  {
    v8 = [v7 key];
    v9 = [v6 objectForKeyedSubscript:v8];
    v10 = [(PLManagedObjectJournalEntryPayload *)self setForUUIDEncodedData:v9];
    goto LABEL_4;
  }

  v13.receiver = self;
  v13.super_class = PLDetectedFaceJournalEntryPayload;
  v11 = [(PLManagedObjectJournalEntryPayload *)&v13 payloadValueFromAttributes:v6 forPayloadProperty:v7];
LABEL_5:

  return v11;
}

- (void)appendAttributeKey:(id)a3 value:(id)a4 toDescriptionBuilder:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (([v8 isEqualToString:@"asset"] & 1) != 0 || objc_msgSend(v8, "isEqualToString:", @"person"))
  {
    v11 = [(PLManagedObjectJournalEntryPayload *)self UUIDStringForData:v9];
    v14.receiver = self;
    v14.super_class = PLDetectedFaceJournalEntryPayload;
    [(PLManagedObjectJournalEntryPayload *)&v14 appendAttributeKey:v8 value:v11 toDescriptionBuilder:v10];
  }

  else
  {
    if (([v8 isEqualToString:@"rejectedPersons"] & 1) == 0 && !objc_msgSend(v8, "isEqualToString:", @"clusterRejectedPersons"))
    {
      v12.receiver = self;
      v12.super_class = PLDetectedFaceJournalEntryPayload;
      [(PLManagedObjectJournalEntryPayload *)&v12 appendAttributeKey:v8 value:v9 toDescriptionBuilder:v10];
      goto LABEL_5;
    }

    v11 = [(PLManagedObjectJournalEntryPayload *)self setForUUIDEncodedData:v9];
    v13.receiver = self;
    v13.super_class = PLDetectedFaceJournalEntryPayload;
    [(PLManagedObjectJournalEntryPayload *)&v13 appendAttributeKey:v8 value:v11 toDescriptionBuilder:v10];
  }

LABEL_5:
}

- (BOOL)updatePayloadAttributes:(id)a3 andNilAttributes:(id)a4 withManagedObject:(id)a5 forPayloadProperty:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v12;
  if (![v13 isEqualToKey:@"asset"])
  {
    if (([v13 isEqualToKey:@"rejectedPersons"] & 1) != 0 || objc_msgSend(v13, "isEqualToKey:", @"clusterRejectedPersons"))
    {
      if ([v13 isEqualToKey:@"clusterRejectedPersons"])
      {
        [v14 clusterRejectedPersons];
      }

      else
      {
        [v14 rejectedPersons];
      }
      v16 = ;
      v18 = [v13 relatedEntityPropertyNames];
      v19 = [v18 anyObject];
      v20 = [v16 valueForKey:v19];

      v21 = [(PLManagedObjectJournalEntryPayload *)self encodedDataForUUIDStringSet:v20];
      [(PLManagedObjectJournalEntryPayload *)self updatePayloadAttributes:v10 andNilAttributes:v11 forPayloadProperty:v13 withUUIDStringData:v21];
    }

    else
    {
      if ([v13 isEqualToKey:@"person"])
      {
        v16 = [v14 associatedPersonForFaceOrTorso:1 orTemporal:0];
        v20 = [v16 personUUID];
        v28 = [(PLManagedObjectJournalEntryPayload *)self UUIDDataForString:v20];
        v29 = [v13 key];
        [v10 setObject:v28 forKeyedSubscript:v29];
      }

      else
      {
        if (![v13 isEqualToKey:@"personBeingKeyFace"])
        {
          v26 = 0;
          goto LABEL_17;
        }

        v30 = MEMORY[0x1E696AD98];
        v16 = [v14 personBeingKeyFace];
        v20 = [v30 numberWithInt:v16 != 0];
        v28 = [v13 key];
        [v10 setObject:v20 forKeyedSubscript:v28];
      }
    }

LABEL_16:

    v26 = 1;
LABEL_17:

    return v26;
  }

  v15 = [v14 associatedAssetForFaceOrTorso:1 orTemporal:0];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 cloudAssetGUID];
    if (v17)
    {
      [v16 cloudAssetGUID];
    }

    else
    {
      [v16 uuid];
    }
    v22 = ;
    v23 = [(PLManagedObjectJournalEntryPayload *)self UUIDDataForString:v22];
    v24 = [v13 key];
    [v10 setObject:v23 forKeyedSubscript:v24];

    v20 = [v16 cloudAssetGUID];
    if (v20)
    {
      v25 = &unk_1F0FBD7F8;
    }

    else
    {
      v25 = &unk_1F0FBD810;
    }

    [v10 setObject:v25 forKeyedSubscript:@"assetIDType"];
    goto LABEL_16;
  }

  v31 = _PFAssertFailHandler();
  return [(PLDetectedFaceJournalEntryPayload *)v31 faceAlgorithmVersion];
}

- (int)faceAlgorithmVersion
{
  v2 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"faceAlgorithmVersion"];
  v3 = [v2 intValue];

  return v3;
}

- (BOOL)isDeferrable
{
  [(PLDetectedFaceJournalEntryPayload *)self centerX];
  if (v3 == 0.0)
  {
    return 0;
  }

  [(PLDetectedFaceJournalEntryPayload *)self bodyCenterX];
  if (v4 != 0.0)
  {
    return 0;
  }

  v5 = [(PLDetectedFaceJournalEntryPayload *)self detectionType];
  if (v5)
  {
    v6 = [(PLDetectedFaceJournalEntryPayload *)self detectionType];
    v7 = [v6 integerValue] == 1;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (id)clusterRejectedPersonsUUIDs
{
  v3 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"clusterRejectedPersons"];
  v4 = [(PLManagedObjectJournalEntryPayload *)self setForUUIDEncodedData:v3];

  return v4;
}

- (id)rejectedPersonsUUIDs
{
  v3 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"rejectedPersons"];
  v4 = [(PLManagedObjectJournalEntryPayload *)self setForUUIDEncodedData:v3];

  return v4;
}

- (int)cloudNameSource
{
  v2 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"cloudNameSource"];
  v3 = [v2 intValue];

  return v3;
}

- (int)nameSource
{
  v2 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"nameSource"];
  v3 = [v2 intValue];

  return v3;
}

- (BOOL)isManual
{
  v2 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"manual"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)isHidden
{
  v2 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"hidden"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (double)bodyHeight
{
  v2 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"bodyHeight"];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (double)bodyWidth
{
  v2 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"bodyWidth"];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (double)bodyCenterY
{
  v2 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"bodyCenterY"];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (double)bodyCenterX
{
  v2 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"bodyCenterX"];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (double)size
{
  v2 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"size"];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (double)centerY
{
  v2 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"centerY"];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (double)centerX
{
  v2 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"centerX"];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (void)setAssetUUID:(id)a3
{
  v4 = [(PLManagedObjectJournalEntryPayload *)self UUIDDataForString:a3];
  [(NSMutableDictionary *)self->super._payloadAttributes setObject:v4 forKeyedSubscript:@"asset"];
}

- (NSString)assetUUID
{
  v3 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"asset"];
  v4 = [(PLManagedObjectJournalEntryPayload *)self UUIDStringForData:v3];

  return v4;
}

- (BOOL)isKeyFace
{
  v2 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"personBeingKeyFace"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (id)personUUID
{
  v3 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"person"];
  v4 = [(PLManagedObjectJournalEntryPayload *)self UUIDStringForData:v3];

  return v4;
}

- (int64_t)assetIdentifierType
{
  v2 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"assetIDType"];
  v3 = [v2 integerValue];

  return v3;
}

- (void)setLocalAssetIdentifierForCloudIdentifiers:(id)a3
{
  v5 = [a3 allValues];
  v4 = [v5 firstObject];
  [(PLDetectedFaceJournalEntryPayload *)self setAssetUUID:v4];
}

- (unint64_t)assetIdentifierCount
{
  v2 = [(PLDetectedFaceJournalEntryPayload *)self assetUUID];
  v3 = v2 != 0;

  return v3;
}

- (NSSet)assetIdentifiers
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v4 = [(PLDetectedFaceJournalEntryPayload *)self assetUUID];
  if (v4)
  {
    [v3 addObject:v4];
  }

  return v3;
}

- (BOOL)insertWithAssets:(id)a3 inManagedObjectContext:(id)a4
{
  v6 = a4;
  v7 = [a3 anyObject];
  v8 = [(PLDetectedFaceJournalEntryPayload *)self _insertDetectedFaceWithAsset:v7 inManagedObjectContext:v6 checkExisting:1];

  return v8 != 0;
}

- (BOOL)insertFaceFromDataInManagedObjectContext:(id)a3 allowDeferred:(BOOL *)a4
{
  v6 = a3;
  v7 = [PLCloudAssetPayloadRestore assetForPayload:self inManagedObjectContext:v6];
  if (v7)
  {
    v8 = [(PLDetectedFaceJournalEntryPayload *)self _insertDetectedFaceWithAsset:v7 inManagedObjectContext:v6 checkExisting:0];
    v9 = v8;
  }

  else
  {
    if (a4)
    {
      if (*a4)
      {
        v9 = [(PLDetectedFaceJournalEntryPayload *)self _insertDeferredRebuildFacesFromDataInManagedObjectContext:v6];
      }

      else
      {
        v9 = 0;
      }

      *a4 = [v9 count] != 0;
    }

    else
    {
      v9 = 0;
    }

    v8 = [v9 count];
  }

  v10 = v8 != 0;

  return v10;
}

- (id)_insertDeferredRebuildFacesFromDataInManagedObjectContext:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(PLDetectedFaceJournalEntryPayload *)self isDeferrable])
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if ([(PLDetectedFaceJournalEntryPayload *)self assetIdentifierType]== 1)
    {
      v6 = [(PLDetectedFaceJournalEntryPayload *)self personUUID];

      if (v6)
      {
        v7 = [(PLDetectedFaceJournalEntryPayload *)self personUUID];
        v8 = [(PLDetectedFaceJournalEntryPayload *)self _insertDeferredRebuildFaceForPersonUUID:v7 inManagedObjectContext:v4];

        if (v8)
        {
          if ([(PLDetectedFaceJournalEntryPayload *)self isKeyFace])
          {
            [v8 setRepresentative:1];
          }

          [v5 addObject:v8];
        }
      }

      v9 = [(PLDetectedFaceJournalEntryPayload *)self rejectedPersonsUUIDs];
      v10 = [(PLDetectedFaceJournalEntryPayload *)self clusterRejectedPersonsUUIDs];
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v11 = [v10 countByEnumeratingWithState:&v30 objects:v35 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v31;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v31 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = [(PLDetectedFaceJournalEntryPayload *)self _insertDeferredRebuildFaceForPersonUUID:*(*(&v30 + 1) + 8 * i) inManagedObjectContext:v4];
            v16 = v15;
            if (v15)
            {
              [v15 setRejected:1];
              [v16 setClusterRejected:1];
              [v5 addObject:v16];
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v30 objects:v35 count:16];
        }

        while (v12);
      }

      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v17 = v9;
      v18 = [v17 countByEnumeratingWithState:&v26 objects:v34 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v27;
        do
        {
          for (j = 0; j != v19; ++j)
          {
            if (*v27 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v26 + 1) + 8 * j);
            if (([v10 containsObject:{v22, v26}] & 1) == 0)
            {
              v23 = [(PLDetectedFaceJournalEntryPayload *)self _insertDeferredRebuildFaceForPersonUUID:v22 inManagedObjectContext:v4];
              v24 = v23;
              if (v23)
              {
                [v23 setRejected:1];
                [v5 addObject:v24];
              }
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v26 objects:v34 count:16];
        }

        while (v19);
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_insertDetectedFaceWithAsset:(id)a3 inManagedObjectContext:(id)a4 checkExisting:(BOOL)a5
{
  v5 = a5;
  v68 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [[PLFaceRebuildHelper alloc] initWithContext:v9];
  v11 = v10;
  if (v5 && ([(PLFaceRebuildHelper *)v10 findExistingDetectedFaceForRebuildFace:self onAsset:v8], (v12 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v13 = v12;
    v14 = PLMigrationGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [v13 uuid];
      *buf = 138543618;
      v63 = v15;
      v64 = 2112;
      v65 = self;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_INFO, "Found existing DetectedFace (%{public}@) for payload: %@", buf, 0x16u);
    }
  }

  else
  {
    v13 = [(PLFaceRebuildHelper *)v11 insertDetectedFaceForRebuildFace:self onAsset:v8];
    if (!v13)
    {
      goto LABEL_47;
    }

    v47 = v11;
    v16 = [(PLManagedObjectJournalEntryPayload *)self payloadID];
    v17 = [v16 payloadIDString];
    [v13 setUuid:v17];

    v18 = [(PLDetectedFaceJournalEntryPayload *)self personUUID];

    v19 = off_1E7560000;
    if (v18)
    {
      v20 = [(PLDetectedFaceJournalEntryPayload *)self personUUID];
      v21 = [PLPerson personWithUUID:v20 inManagedObjectContext:v9];

      if (v21)
      {
        [v13 setAssociatedPerson:v21];
        if ([(PLDetectedFaceJournalEntryPayload *)self isKeyFace])
        {
          v22 = [v21 keyFace];

          if (!v22)
          {
            [v21 setKeyFace:v13 pickSource:{objc_msgSend(v21, "keyFacePickSource")}];
          }
        }

        if ((_PLIsCloudPhotoLibraryEnabledForCurrentUserWithDataclass(*MEMORY[0x1E6959638]) & 1) == 0 && ([(PLDetectedFaceJournalEntryPayload *)self nameSource]== 1 || [(PLDetectedFaceJournalEntryPayload *)self nameSource]== 5))
        {
          [v13 setConfirmedFaceCropGenerationState:1];
        }
      }

      else
      {
        v23 = PLMigrationGetLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v24 = [(PLDetectedFaceJournalEntryPayload *)self personUUID];
          v25 = [(PLManagedObjectJournalEntryPayload *)self payloadID];
          *buf = 138543874;
          v63 = v24;
          v64 = 2114;
          v65 = v25;
          v66 = 2112;
          v67 = self;
          _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_ERROR, "Person with %{public}@ not found for face %{public}@ with payload: %@", buf, 0x20u);
        }
      }
    }

    v48 = v8;
    v46 = [(PLDetectedFaceJournalEntryPayload *)self rejectedPersonsUUIDs];
    v51 = self;
    v26 = [(PLDetectedFaceJournalEntryPayload *)self clusterRejectedPersonsUUIDs];
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v27 = [v26 countByEnumeratingWithState:&v56 objects:v61 count:16];
    v50 = v9;
    if (v27)
    {
      v28 = v27;
      v29 = *v57;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v57 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = [PLPerson personWithUUID:*(*(&v56 + 1) + 8 * i) inManagedObjectContext:v9];
          if (v31)
          {
            [v13 addRejectedPerson:v31];
            [v13 addClusterRejectedPerson:v31];
            [v13 addRejectedPersonNeedingFaceCrops:v31];
          }

          else
          {
            v32 = PLMigrationGetLog();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              v33 = [(PLDetectedFaceJournalEntryPayload *)v51 personUUID];
              v34 = [(PLManagedObjectJournalEntryPayload *)v51 payloadID];
              *buf = 138543874;
              v63 = v33;
              v64 = 2114;
              v65 = v34;
              v66 = 2112;
              v67 = v51;
              v9 = v50;
              _os_log_impl(&dword_19BF1F000, v32, OS_LOG_TYPE_ERROR, "Cluster rejected person with %{public}@ not found for face %{public}@ with payload: %@", buf, 0x20u);

              v19 = off_1E7560000;
            }
          }
        }

        v28 = [v26 countByEnumeratingWithState:&v56 objects:v61 count:16];
      }

      while (v28);
    }

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v14 = v46;
    v35 = [v14 countByEnumeratingWithState:&v52 objects:v60 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v53;
      v49 = v13;
      do
      {
        for (j = 0; j != v36; ++j)
        {
          if (*v53 != v37)
          {
            objc_enumerationMutation(v14);
          }

          v39 = *(*(&v52 + 1) + 8 * j);
          if (([v26 containsObject:v39] & 1) == 0)
          {
            v40 = [(__objc2_class *)v19[315] personWithUUID:v39 inManagedObjectContext:v9];
            if (v40)
            {
              [v13 addRejectedPerson:v40];
            }

            else
            {
              v41 = PLMigrationGetLog();
              if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
              {
                v42 = [(PLDetectedFaceJournalEntryPayload *)v51 personUUID];
                [(PLManagedObjectJournalEntryPayload *)v51 payloadID];
                v44 = v43 = v14;
                *buf = 138543874;
                v63 = v42;
                v64 = 2114;
                v65 = v44;
                v66 = 2112;
                v67 = v51;
                v9 = v50;
                _os_log_impl(&dword_19BF1F000, v41, OS_LOG_TYPE_ERROR, "Rejected person with %{public}@ not found for face %{public}@ with payload: %@", buf, 0x20u);

                v14 = v43;
                v13 = v49;

                v19 = off_1E7560000;
              }
            }
          }
        }

        v36 = [v14 countByEnumeratingWithState:&v52 objects:v60 count:16];
      }

      while (v36);
    }

    v11 = v47;
    v8 = v48;
  }

LABEL_47:

  return v13;
}

- (id)_insertDeferredRebuildFaceForPersonUUID:(id)a3 inManagedObjectContext:(id)a4
{
  v6 = a3;
  v7 = [(PLManagedObject *)PLDeferredRebuildFace insertInManagedObjectContext:a4];
  v8 = [(PLManagedObjectJournalEntryPayload *)self payloadID];
  v9 = [v8 payloadIDString];
  [v7 setFaceUUID:v9];

  v10 = [MEMORY[0x1E69BF320] UUIDString];
  [v7 setUuid:v10];

  [(PLDetectedFaceJournalEntryPayload *)self centerX];
  [v7 setCenterX:?];
  [(PLDetectedFaceJournalEntryPayload *)self centerY];
  [v7 setCenterY:?];
  [(PLDetectedFaceJournalEntryPayload *)self size];
  [v7 setSize:?];
  [v7 setManual:{-[PLDetectedFaceJournalEntryPayload isManual](self, "isManual")}];
  [v7 setHidden:{-[PLDetectedFaceJournalEntryPayload isHidden](self, "isHidden")}];
  [v7 setNameSource:{-[PLDetectedFaceJournalEntryPayload nameSource](self, "nameSource")}];
  [v7 setCloudNameSource:{-[PLDetectedFaceJournalEntryPayload cloudNameSource](self, "cloudNameSource")}];
  v11 = [(PLDetectedFaceJournalEntryPayload *)self assetUUID];
  [v7 setAssetCloudGUID:v11];

  v12 = [(PLDetectedFaceJournalEntryPayload *)self assetUUID];
  [v7 setAssetUUID:v12];

  [v7 setPersonUUID:v6];
  if ([(PLDetectedFaceJournalEntryPayload *)self faceAlgorithmVersion])
  {
    v13 = [(PLDetectedFaceJournalEntryPayload *)self faceAlgorithmVersion];
  }

  else
  {
    v13 = 1;
  }

  [v7 setFaceAlgorithmVersion:v13];

  return v7;
}

+ (BOOL)isValidForPersistenceWithObjectDictionary:(id)a3 additionalEntityName:(id)a4
{
  v6 = a3;
  v7 = v6;
  if (!a4)
  {
    v9 = [v6 objectForKeyedSubscript:@"nameSource"];
    v10 = [v9 integerValue];

    v11 = [v7 objectForKeyedSubscript:@"manual"];
    v12 = [v11 BOOLValue];
    if ((v12 & 1) != 0 || (v8 = 0, v10 <= 5) && ((1 << v10) & 0x2A) != 0)
    {
      v4 = [v7 objectForKeyedSubscript:@"assetForFace.uuid"];
      if (v4)
      {
        v8 = 1;
        if (v12)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v13 = [v7 objectForKeyedSubscript:@"assetForFace.cloudAssetGUID"];
        v8 = v13 != 0;

        if (v12)
        {
LABEL_12:

LABEL_13:
          goto LABEL_14;
        }
      }
    }

    if (v10 > 5 || ((1 << v10) & 0x2A) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v8 = 1;
LABEL_14:

  return v8;
}

+ (id)persistedPropertyNamesForEntityNames
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__PLDetectedFaceJournalEntryPayload_persistedPropertyNamesForEntityNames__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (persistedPropertyNamesForEntityNames_onceToken_72304 != -1)
  {
    dispatch_once(&persistedPropertyNamesForEntityNames_onceToken_72304, block);
  }

  v2 = persistedPropertyNamesForEntityNames_persistedPropertyNamesForEntityNames_72305;

  return v2;
}

void __73__PLDetectedFaceJournalEntryPayload_persistedPropertyNamesForEntityNames__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) persistedPropertyNamesForEntityNamesFromModelProperties];
  v2 = persistedPropertyNamesForEntityNames_persistedPropertyNamesForEntityNames_72305;
  persistedPropertyNamesForEntityNames_persistedPropertyNamesForEntityNames_72305 = v1;
}

+ (id)modelProperties
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__PLDetectedFaceJournalEntryPayload_modelProperties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (modelProperties_onceToken_72306 != -1)
  {
    dispatch_once(&modelProperties_onceToken_72306, block);
  }

  v2 = modelProperties_modelProperties_72307;

  return v2;
}

uint64_t __52__PLDetectedFaceJournalEntryPayload_modelProperties__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) modelPropertiesDescription];
  v3 = modelProperties_modelProperties_72307;
  modelProperties_modelProperties_72307 = v2;

  v4 = *(a1 + 32);
  v5 = modelProperties_modelProperties_72307;

  return [v4 loadModelPropertiesDescription:v5 parentPayloadProperty:0];
}

+ (id)nonPersistedModelPropertiesDescription
{
  v61[56] = *MEMORY[0x1E69E9840];
  v60[0] = @"adjustmentVersion";
  v59 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v61[0] = v59;
  v60[1] = @"ageType";
  v58 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v61[1] = v58;
  v60[2] = @"assetVisible";
  v57 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v61[2] = v57;
  v60[3] = @"blurScore";
  v56 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v61[3] = v56;
  v60[4] = @"clusterSequenceNumber";
  v55 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v61[4] = v55;
  v60[5] = @"vuObservationID";
  v54 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v61[5] = v54;
  v60[6] = @"confirmedFaceCropGenerationState";
  v53 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v61[6] = v53;
  v60[7] = @"eyeMakeupType";
  v52 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v61[7] = v52;
  v60[8] = @"duration";
  v51 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v61[8] = v51;
  v60[9] = @"eyesState";
  v50 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v61[9] = v50;
  v60[10] = @"facialHairType";
  v49 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v61[10] = v49;
  v60[11] = @"genderType";
  v48 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v61[11] = v48;
  v60[12] = @"glassesType";
  v47 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v61[12] = v47;
  v60[13] = @"groupingIdentifier";
  v46 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v61[13] = v46;
  v60[14] = @"hairColorType";
  v45 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v61[14] = v45;
  v60[15] = @"hasSmile";
  v44 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v61[15] = v44;
  v60[16] = @"isLeftEyeClosed";
  v43 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v61[16] = v43;
  v60[17] = @"isRightEyeClosed";
  v42 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v61[17] = v42;
  v60[18] = @"lipMakeupType";
  v41 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v61[18] = v41;
  v60[19] = @"faceExpressionType";
  v40 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v61[19] = v40;
  v60[20] = @"headgearType";
  v39 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v61[20] = v39;
  v60[21] = @"hairType";
  v38 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v61[21] = v38;
  v60[22] = @"poseType";
  v37 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v61[22] = v37;
  v60[23] = @"skintoneType";
  v36 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v61[23] = v36;
  v60[24] = @"ethnicityType";
  v35 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v61[24] = v35;
  v60[25] = @"hasFaceMask";
  v34 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v61[25] = v34;
  v60[26] = @"gazeType";
  v33 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v61[26] = v33;
  v60[27] = @"gazeCenterX";
  v32 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v61[27] = v32;
  v60[28] = @"gazeCenterY";
  v31 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v61[28] = v31;
  v60[29] = @"gazeRectString";
  v30 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v61[29] = v30;
  v60[30] = @"gazeAngle";
  v29 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v61[30] = v29;
  v60[31] = @"gazeConfidence";
  v28 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v61[31] = v28;
  v60[32] = @"masterIdentifier";
  v27 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v61[32] = v27;
  v60[33] = @"roll";
  v26 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v61[33] = v26;
  v60[34] = @"poseYaw";
  v25 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v61[34] = v25;
  v60[35] = @"qualityMeasure";
  v24 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v61[35] = v24;
  v60[36] = @"quality";
  v23 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v61[36] = v23;
  v60[37] = @"smileType";
  v22 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v61[37] = v22;
  v60[38] = @"sourceHeight";
  v21 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v61[38] = v21;
  v60[39] = @"sourceWidth";
  v20 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v61[39] = v20;
  v60[40] = @"startTime";
  v19 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v61[40] = v19;
  v60[41] = @"thumbnailIdentifier";
  v18 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v61[41] = v18;
  v60[42] = @"cloudLocalState";
  v17 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v61[42] = v17;
  v60[43] = @"isInTrash";
  v16 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v61[43] = v16;
  v60[44] = @"trainingType";
  v15 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v61[44] = v15;
  v60[45] = @"vipModelType";
  v14 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v61[45] = v14;
  v60[46] = @"assetForTorso";
  v2 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v61[46] = v2;
  v60[47] = @"personForTorso";
  v3 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v61[47] = v3;
  v60[48] = @"assetForTemporalDetectedFaces";
  v4 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v61[48] = v4;
  v60[49] = @"personForTemporalDetectedFaces";
  v5 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v61[49] = v5;
  v60[50] = @"faceCrop";
  v6 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v61[50] = v6;
  v60[51] = @"faceGroup";
  v7 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v61[51] = v7;
  v60[52] = @"faceGroupBeingKeyFace";
  v8 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v61[52] = v8;
  v60[53] = @"faceprint";
  v9 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v61[53] = v9;
  v60[54] = @"rejectedPersonsNeedingFaceCrops";
  v10 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v61[54] = v10;
  v60[55] = @"detectionTraits";
  v11 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v61[55] = v11;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v61 forKeys:v60 count:56];

  return v13;
}

@end