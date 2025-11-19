@interface PLPersonJournalEntryPayload
+ (BOOL)isValidForPersistenceWithObjectDictionary:(id)a3 additionalEntityName:(id)a4;
+ (id)modelProperties;
+ (id)modelPropertiesDescription;
+ (id)nonPersistedModelPropertiesDescription;
+ (id)persistedPropertyNamesForEntityNames;
+ (void)updateMergeTargetPersonWithPersonUUIDMapping:(id)a3 fromDataInManagedObjectContext:(id)a4;
- (BOOL)comparePayloadValue:(id)a3 toObjectDictionaryValue:(id)a4 forPayloadProperty:(id)a5;
- (BOOL)updatePayloadAttributes:(id)a3 andNilAttributes:(id)a4 withManagedObject:(id)a5 forPayloadProperty:(id)a6;
- (NSString)mergeTargetPersonUUID;
- (PLPersonJournalEntryPayload)initWithUserFeedback:(id)a3 changedKeys:(id)a4;
- (id)insertPersonFromDataInManagedObjectContext:(id)a3;
- (id)payloadValueFromAttributes:(id)a3 forPayloadProperty:(id)a4;
- (int)cloudVerifiedType;
- (int)type;
- (int)verifiedType;
- (signed)keyFacePickSource;
- (unsigned)manualOrder;
- (void)appendAttributeKey:(id)a3 value:(id)a4 toDescriptionBuilder:(id)a5;
- (void)applyPayloadProperty:(id)a3 toManagedObject:(id)a4 key:(id)a5 payloadAttributesToUpdate:(id)a6;
@end

@implementation PLPersonJournalEntryPayload

- (BOOL)comparePayloadValue:(id)a3 toObjectDictionaryValue:(id)a4 forPayloadProperty:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  if ([v8 isEqualToKey:@"contactDict"])
  {
    v11 = [v9 isEqual:v10];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = PLPersonJournalEntryPayload;
    v11 = [(PLManagedObjectJournalEntryPayload *)&v14 comparePayloadValue:v10 toObjectDictionaryValue:v9 forPayloadProperty:v8];
  }

  v12 = v11;

  return v12;
}

- (void)applyPayloadProperty:(id)a3 toManagedObject:(id)a4 key:(id)a5 payloadAttributesToUpdate:(id)a6
{
  v56 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v45 = a6;
  v13 = [v10 requiresConversion];
  v14 = v11;
  v15 = [v10 key];
  v16 = v15;
  if (v13)
  {
    v17 = [v15 isEqualToString:@"contactDict"];

    if (v17)
    {
      v18 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"verifiedType"];
      v19 = [v18 intValue];

      if (v19 != -2)
      {
        payloadAttributes = self->super._payloadAttributes;
        v21 = [v10 key];
        v22 = [(NSMutableDictionary *)payloadAttributes objectForKeyedSubscript:v21];
        [v14 setContactMatchingDictionary:v22];
      }
    }

    else if ([v10 isEqualToKey:@"userFeedbacks"])
    {
      v43 = v14;
      v44 = v10;
      v41 = v12;
      v29 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"userFeedbacks"];
      v30 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      obj = v29;
      v31 = [obj countByEnumeratingWithState:&v51 objects:v55 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = *v52;
        do
        {
          for (i = 0; i != v32; ++i)
          {
            if (*v52 != v33)
            {
              objc_enumerationMutation(obj);
            }

            v35 = *(*(&v51 + 1) + 8 * i);
            v36 = [v35 objectForKeyedSubscript:@"userFeedbackUUID"];
            if (v36)
            {
              v37 = [v43 managedObjectContext];
              v38 = [PLUserFeedback insertIntoManagedObjectContext:v37 withUUID:v36];

              v39 = [v44 subRelationshipProperties];
              v47[0] = MEMORY[0x1E69E9820];
              v47[1] = 3221225472;
              v47[2] = __98__PLPersonJournalEntryPayload_applyPayloadProperty_toManagedObject_key_payloadAttributesToUpdate___block_invoke;
              v47[3] = &unk_1E7572828;
              v47[4] = self;
              v48 = v38;
              v49 = v45;
              v50 = v35;
              v40 = v38;
              [v39 enumerateKeysAndObjectsUsingBlock:v47];

              [v30 addObject:v40];
            }
          }

          v32 = [obj countByEnumeratingWithState:&v51 objects:v55 count:16];
        }

        while (v32);
      }

      v14 = v43;
      [v43 setUserFeedbacks:v30];

      v10 = v44;
      v12 = v41;
    }
  }

  else
  {
    v23 = [v15 isEqualToString:@"uri"];

    if (v23)
    {
      v24 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"verifiedType"];
      v25 = [v24 intValue];

      if (v25 != -2)
      {
        v26 = self->super._payloadAttributes;
        v27 = [v10 key];
        v28 = [(NSMutableDictionary *)v26 objectForKeyedSubscript:v27];
        [v14 setPersonUri:v28];
      }
    }

    else
    {
      v46.receiver = self;
      v46.super_class = PLPersonJournalEntryPayload;
      [(PLManagedObjectJournalEntryPayload *)&v46 applyPayloadProperty:v10 toManagedObject:v14 key:v12 payloadAttributesToUpdate:v45];
    }
  }
}

- (id)payloadValueFromAttributes:(id)a3 forPayloadProperty:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 isEqualToKey:@"mergeTarget"])
  {
    v8 = [v7 key];

    v9 = [v6 objectForKeyedSubscript:v8];
    v10 = [(PLManagedObjectJournalEntryPayload *)self UUIDStringForData:v9];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = PLPersonJournalEntryPayload;
    v10 = [(PLManagedObjectJournalEntryPayload *)&v12 payloadValueFromAttributes:v6 forPayloadProperty:v7];
  }

  return v10;
}

- (void)appendAttributeKey:(id)a3 value:(id)a4 toDescriptionBuilder:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  if ([v8 isEqualToString:@"mergeTarget"])
  {
    v11 = [(PLManagedObjectJournalEntryPayload *)self UUIDStringForData:v10];

    v13.receiver = self;
    v13.super_class = PLPersonJournalEntryPayload;
    [(PLManagedObjectJournalEntryPayload *)&v13 appendAttributeKey:v8 value:v11 toDescriptionBuilder:v9];
    v10 = v11;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = PLPersonJournalEntryPayload;
    [(PLManagedObjectJournalEntryPayload *)&v12 appendAttributeKey:v8 value:v10 toDescriptionBuilder:v9];
  }
}

- (BOOL)updatePayloadAttributes:(id)a3 andNilAttributes:(id)a4 withManagedObject:(id)a5 forPayloadProperty:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = v10;
  if ([v11 isEqualToKey:@"mergeTarget"])
  {
    v13 = [v12 mergeTargetPerson];
    v14 = [v13 personUUID];
    v15 = [(PLManagedObjectJournalEntryPayload *)self UUIDDataForString:v14];
    v16 = [v11 key];
    [v9 setObject:v15 forKeyedSubscript:v16];
  }

  else
  {
    if (![v11 isEqualToKey:@"contactDict"])
    {
      v17 = 0;
      goto LABEL_7;
    }

    v13 = [v12 contactMatchingDictionary];
    v14 = [v11 key];
    [v9 setObject:v13 forKeyedSubscript:v14];
  }

  v17 = 1;
LABEL_7:

  return v17;
}

- (NSString)mergeTargetPersonUUID
{
  v3 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"mergeTarget"];
  v4 = [(PLManagedObjectJournalEntryPayload *)self UUIDStringForData:v3];

  return v4;
}

- (signed)keyFacePickSource
{
  v2 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"keyFacePickSource"];
  v3 = [v2 integerValue];

  return v3;
}

- (int)cloudVerifiedType
{
  v2 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"cloudVerifiedType"];
  v3 = [v2 integerValue];

  return v3;
}

- (int)verifiedType
{
  v2 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"verifiedType"];
  v3 = [v2 integerValue];

  return v3;
}

- (int)type
{
  v2 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"type"];
  v3 = [v2 integerValue];

  return v3;
}

- (unsigned)manualOrder
{
  v2 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"order"];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (PLPersonJournalEntryPayload)initWithUserFeedback:(id)a3 changedKeys:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = MEMORY[0x1E695DFD8];
    v9 = [objc_opt_class() modelProperties];
    v10 = [v9 objectForKeyedSubscript:@"userFeedbacks"];
    v11 = [v10 subRelationshipProperties];
    v12 = [v11 allKeys];
    v13 = [v8 setWithArray:v12];

    if ([v7 intersectsSet:v13])
    {
      v14 = [v6 person];
      v15 = [v6 payloadID];
      v16 = [objc_opt_class() payloadVersion];
      v17 = [MEMORY[0x1E695DFD8] setWithObject:@"userFeedbacks"];
      v18 = [objc_opt_class() modelProperties];
      v21.receiver = self;
      v21.super_class = PLPersonJournalEntryPayload;
      v19 = [(PLManagedObjectJournalEntryPayload *)&v21 initWithPayloadID:v15 payloadVersion:v16 managedObject:v14 changedKeys:v17 modelProperties:v18];
    }

    else
    {

      v19 = 0;
    }
  }

  else
  {

    v19 = 0;
  }

  return v19;
}

- (id)insertPersonFromDataInManagedObjectContext:(id)a3
{
  v4 = a3;
  v5 = [(PLManagedObjectJournalEntryPayload *)self payloadID];
  v6 = [v5 payloadIDString];
  v7 = [(PLPersonJournalEntryPayload *)self fullName];
  v8 = [PLPerson insertIntoManagedObjectContext:v4 withPersonUUID:v6 fullName:v7 verifiedType:[(PLPersonJournalEntryPayload *)self verifiedType]];

  [(PLManagedObjectJournalEntryPayload *)self applyPayloadToManagedObject:v8 payloadAttributesToUpdate:0];

  return v8;
}

+ (BOOL)isValidForPersistenceWithObjectDictionary:(id)a3 additionalEntityName:(id)a4
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"verifiedType"];
  if ([v5 integerValue])
  {
    v6 = [v4 objectForKeyedSubscript:@"personUUID"];
    v7 = v6 != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)persistedPropertyNamesForEntityNames
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__PLPersonJournalEntryPayload_persistedPropertyNamesForEntityNames__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (persistedPropertyNamesForEntityNames_onceToken_81040 != -1)
  {
    dispatch_once(&persistedPropertyNamesForEntityNames_onceToken_81040, block);
  }

  v2 = persistedPropertyNamesForEntityNames_persistedPropertyNamesForEntityNames_81041;

  return v2;
}

void __67__PLPersonJournalEntryPayload_persistedPropertyNamesForEntityNames__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) persistedPropertyNamesForEntityNamesFromModelProperties];
  v2 = persistedPropertyNamesForEntityNames_persistedPropertyNamesForEntityNames_81041;
  persistedPropertyNamesForEntityNames_persistedPropertyNamesForEntityNames_81041 = v1;
}

+ (id)modelProperties
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__PLPersonJournalEntryPayload_modelProperties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (modelProperties_onceToken_81042 != -1)
  {
    dispatch_once(&modelProperties_onceToken_81042, block);
  }

  v2 = modelProperties_modelProperties_81043;

  return v2;
}

uint64_t __46__PLPersonJournalEntryPayload_modelProperties__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) modelPropertiesDescription];
  v3 = modelProperties_modelProperties_81043;
  modelProperties_modelProperties_81043 = v2;

  v4 = *(a1 + 32);
  v5 = modelProperties_modelProperties_81043;

  return [v4 loadModelPropertiesDescription:v5 parentPayloadProperty:0];
}

+ (id)nonPersistedModelPropertiesDescription
{
  v42[30] = *MEMORY[0x1E69E9840];
  v41[0] = @"cloudDeleteState";
  v38 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v42[0] = v38;
  v41[1] = @"cloudLocalState";
  v37 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v42[1] = v37;
  v41[2] = @"faceCount";
  v36 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v42[2] = v36;
  v41[3] = @"inPersonNamingModel";
  v35 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v42[3] = v35;
  v41[4] = @"questionType";
  v34 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v42[4] = v34;
  v41[5] = @"genderType";
  v33 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v42[5] = v33;
  v41[6] = @"ageType";
  v32 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v42[6] = v32;
  v41[7] = @"suggestedForClientType";
  v31 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v42[7] = v31;
  v41[8] = @"mergeCandidateConfidence";
  v30 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v42[8] = v30;
  v41[9] = @"mdID";
  v29 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v42[9] = v29;
  v41[10] = @"cloudDetectionType";
  v28 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v42[10] = v28;
  v41[11] = @"isMeConfidence";
  v27 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v42[11] = v27;
  v41[12] = @"associatedFaceGroup";
  v26 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v42[12] = v26;
  v41[13] = @"faceCrops";
  v25 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v42[13] = v25;
  v41[14] = @"rejectedFacesNeedingFaceCrops";
  v24 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v42[14] = v24;
  v41[15] = @"clusterRejectedFaces";
  v23 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v42[15] = v23;
  v41[16] = @"detectedFaces";
  v22 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v42[16] = v22;
  v41[17] = @"detectedTorsos";
  v21 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v42[17] = v21;
  v41[18] = @"temporalDetectedFaces";
  v20 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v42[18] = v20;
  v41[19] = @"keyFace";
  v19 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v42[19] = v19;
  v41[20] = @"rejectedFaces";
  v18 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v42[20] = v18;
  v41[21] = @"invalidMergeCandidates";
  v17 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v42[21] = v17;
  v41[22] = @"mergeCandidates";
  v16 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v42[22] = v16;
  v41[23] = @"mergeCandidatesWithConfidence";
  v15 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v42[23] = v15;
  v41[24] = @"mergeSourcePersons";
  v14 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v42[24] = v14;
  v41[25] = @"personReferences";
  v13 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v42[25] = v13;
  v41[26] = @"shareParticipant";
  v2 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v42[26] = v2;
  v41[27] = @"edgesIn";
  v3 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v42[27] = v3;
  v41[28] = @"edgesOut";
  v4 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v42[28] = v4;
  v41[29] = @"userFeedbacks";
  v39[0] = @"cloudDeleteState";
  v5 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v40[0] = v5;
  v39[1] = @"cloudLocalState";
  v6 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v40[1] = v6;
  v39[2] = @"memory";
  v7 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v40[2] = v7;
  v39[3] = @"person";
  v8 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v40[3] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:4];
  v10 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 subRelationshipProperties:v9 subRelationshipEntityName:0 isToMany:1 isAdditionalEntityName:1 info:0];
  v42[29] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:30];

  return v11;
}

+ (id)modelPropertiesDescription
{
  v29[14] = *MEMORY[0x1E69E9840];
  v28[0] = @"personUUID";
  v25 = +[PLJournalEntryPayloadProperty payloadPropertyForUUID];
  v29[0] = v25;
  v28[1] = @"detectionType";
  v24 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v29[1] = v24;
  v28[2] = @"fullName";
  v23 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v29[2] = v23;
  v28[3] = @"displayName";
  v22 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v29[3] = v22;
  v28[4] = @"personUri";
  v21 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"uri" andType:700 info:0];
  v29[4] = v21;
  v28[5] = @"manualOrder";
  v20 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"order" andType:200 info:0];
  v29[5] = v20;
  v28[6] = @"type";
  v19 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"type" andType:200 info:0];
  v29[6] = v19;
  v28[7] = @"verifiedType";
  v18 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v29[7] = v18;
  v28[8] = @"cloudVerifiedType";
  v17 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v29[8] = v17;
  v28[9] = @"keyFacePickSource";
  v16 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v29[9] = v16;
  v28[10] = @"contactMatchingDictionary";
  v15 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"contactDict" andType:1800 info:0];
  v29[10] = v15;
  v28[11] = @"assetSortOrder";
  v14 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v29[11] = v14;
  v28[12] = @"mergeTargetPerson";
  v2 = [MEMORY[0x1E695DFD8] setWithObject:@"personUUID"];
  v3 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"mergeTarget" relatedEntityPropertyNames:v2 shouldPrefetchRelationship:1];

  v29[12] = v3;
  v28[13] = @"userFeedbacks";
  v26[0] = @"uuid";
  v4 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"userFeedbackUUID" andType:700 info:0];
  v27[0] = v4;
  v26[1] = @"type";
  v5 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"userFeedbackType" andType:100 info:0];
  v27[1] = v5;
  v26[2] = @"feature";
  v6 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"userFeedbackFeature" andType:100 info:0];
  v27[2] = v6;
  v26[3] = @"creationType";
  v7 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"userFeedbackCreationType" andType:100 info:0];
  v27[3] = v7;
  v26[4] = @"context";
  v8 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"userFeedbackContext" andType:700 info:0];
  v27[4] = v8;
  v26[5] = @"lastModifiedDate";
  v9 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"userFeedbackLastModifiedDate" andType:900 info:0];
  v27[5] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:6];
  v11 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"userFeedbacks" subRelationshipProperties:v10 subRelationshipEntityName:0 isToMany:1 isAdditionalEntityName:1 info:0];
  v29[13] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:14];

  return v12;
}

+ (void)updateMergeTargetPersonWithPersonUUIDMapping:(id)a3 fromDataInManagedObjectContext:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v7)
  {
    v9 = v7;
    v21 = *v23;
    *&v8 = 138412546;
    v20 = v8;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v21)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        v12 = [v5 objectForKey:{v11, v20}];
        v13 = [PLPerson personWithUUID:v11 inManagedObjectContext:v6];
        v14 = [PLPerson personWithUUID:v12 inManagedObjectContext:v6];
        v15 = [v14 finalMergeTargetPerson];

        v16 = PLMigrationGetLog();
        v17 = v16;
        if (v13)
        {
          v18 = v15 == 0;
        }

        else
        {
          v18 = 1;
        }

        if (v18)
        {
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = v20;
            v27 = v12;
            v28 = 2112;
            v29 = v11;
            _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_ERROR, "Failed to find merge target person with UUID %@ for person with UUID %@", buf, 0x16u);
          }
        }

        else
        {
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v20;
            v27 = v15;
            v28 = 2112;
            v29 = v13;
            _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEFAULT, "Setting merge target person %@ for %@", buf, 0x16u);
          }

          [v13 setMergeTargetPerson:v15];
        }
      }

      v9 = [v5 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v9);
  }
}

@end