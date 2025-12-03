@interface PLPersonJournalEntryPayload
+ (BOOL)isValidForPersistenceWithObjectDictionary:(id)dictionary additionalEntityName:(id)name;
+ (id)modelProperties;
+ (id)modelPropertiesDescription;
+ (id)nonPersistedModelPropertiesDescription;
+ (id)persistedPropertyNamesForEntityNames;
+ (void)updateMergeTargetPersonWithPersonUUIDMapping:(id)mapping fromDataInManagedObjectContext:(id)context;
- (BOOL)comparePayloadValue:(id)value toObjectDictionaryValue:(id)dictionaryValue forPayloadProperty:(id)property;
- (BOOL)updatePayloadAttributes:(id)attributes andNilAttributes:(id)nilAttributes withManagedObject:(id)object forPayloadProperty:(id)property;
- (NSString)mergeTargetPersonUUID;
- (PLPersonJournalEntryPayload)initWithUserFeedback:(id)feedback changedKeys:(id)keys;
- (id)insertPersonFromDataInManagedObjectContext:(id)context;
- (id)payloadValueFromAttributes:(id)attributes forPayloadProperty:(id)property;
- (int)cloudVerifiedType;
- (int)type;
- (int)verifiedType;
- (signed)keyFacePickSource;
- (unsigned)manualOrder;
- (void)appendAttributeKey:(id)key value:(id)value toDescriptionBuilder:(id)builder;
- (void)applyPayloadProperty:(id)property toManagedObject:(id)object key:(id)key payloadAttributesToUpdate:(id)update;
@end

@implementation PLPersonJournalEntryPayload

- (BOOL)comparePayloadValue:(id)value toObjectDictionaryValue:(id)dictionaryValue forPayloadProperty:(id)property
{
  propertyCopy = property;
  dictionaryValueCopy = dictionaryValue;
  valueCopy = value;
  if ([propertyCopy isEqualToKey:@"contactDict"])
  {
    v11 = [dictionaryValueCopy isEqual:valueCopy];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = PLPersonJournalEntryPayload;
    v11 = [(PLManagedObjectJournalEntryPayload *)&v14 comparePayloadValue:valueCopy toObjectDictionaryValue:dictionaryValueCopy forPayloadProperty:propertyCopy];
  }

  v12 = v11;

  return v12;
}

- (void)applyPayloadProperty:(id)property toManagedObject:(id)object key:(id)key payloadAttributesToUpdate:(id)update
{
  v56 = *MEMORY[0x1E69E9840];
  propertyCopy = property;
  objectCopy = object;
  keyCopy = key;
  updateCopy = update;
  requiresConversion = [propertyCopy requiresConversion];
  v14 = objectCopy;
  v15 = [propertyCopy key];
  v16 = v15;
  if (requiresConversion)
  {
    v17 = [v15 isEqualToString:@"contactDict"];

    if (v17)
    {
      v18 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"verifiedType"];
      intValue = [v18 intValue];

      if (intValue != -2)
      {
        payloadAttributes = self->super._payloadAttributes;
        v21 = [propertyCopy key];
        v22 = [(NSMutableDictionary *)payloadAttributes objectForKeyedSubscript:v21];
        [v14 setContactMatchingDictionary:v22];
      }
    }

    else if ([propertyCopy isEqualToKey:@"userFeedbacks"])
    {
      v43 = v14;
      v44 = propertyCopy;
      v41 = keyCopy;
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
              managedObjectContext = [v43 managedObjectContext];
              v38 = [PLUserFeedback insertIntoManagedObjectContext:managedObjectContext withUUID:v36];

              subRelationshipProperties = [v44 subRelationshipProperties];
              v47[0] = MEMORY[0x1E69E9820];
              v47[1] = 3221225472;
              v47[2] = __98__PLPersonJournalEntryPayload_applyPayloadProperty_toManagedObject_key_payloadAttributesToUpdate___block_invoke;
              v47[3] = &unk_1E7572828;
              v47[4] = self;
              v48 = v38;
              v49 = updateCopy;
              v50 = v35;
              v40 = v38;
              [subRelationshipProperties enumerateKeysAndObjectsUsingBlock:v47];

              [v30 addObject:v40];
            }
          }

          v32 = [obj countByEnumeratingWithState:&v51 objects:v55 count:16];
        }

        while (v32);
      }

      v14 = v43;
      [v43 setUserFeedbacks:v30];

      propertyCopy = v44;
      keyCopy = v41;
    }
  }

  else
  {
    v23 = [v15 isEqualToString:@"uri"];

    if (v23)
    {
      v24 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"verifiedType"];
      intValue2 = [v24 intValue];

      if (intValue2 != -2)
      {
        v26 = self->super._payloadAttributes;
        v27 = [propertyCopy key];
        v28 = [(NSMutableDictionary *)v26 objectForKeyedSubscript:v27];
        [v14 setPersonUri:v28];
      }
    }

    else
    {
      v46.receiver = self;
      v46.super_class = PLPersonJournalEntryPayload;
      [(PLManagedObjectJournalEntryPayload *)&v46 applyPayloadProperty:propertyCopy toManagedObject:v14 key:keyCopy payloadAttributesToUpdate:updateCopy];
    }
  }
}

- (id)payloadValueFromAttributes:(id)attributes forPayloadProperty:(id)property
{
  attributesCopy = attributes;
  propertyCopy = property;
  if ([propertyCopy isEqualToKey:@"mergeTarget"])
  {
    v8 = [propertyCopy key];

    v9 = [attributesCopy objectForKeyedSubscript:v8];
    v10 = [(PLManagedObjectJournalEntryPayload *)self UUIDStringForData:v9];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = PLPersonJournalEntryPayload;
    v10 = [(PLManagedObjectJournalEntryPayload *)&v12 payloadValueFromAttributes:attributesCopy forPayloadProperty:propertyCopy];
  }

  return v10;
}

- (void)appendAttributeKey:(id)key value:(id)value toDescriptionBuilder:(id)builder
{
  keyCopy = key;
  builderCopy = builder;
  valueCopy = value;
  if ([keyCopy isEqualToString:@"mergeTarget"])
  {
    v11 = [(PLManagedObjectJournalEntryPayload *)self UUIDStringForData:valueCopy];

    v13.receiver = self;
    v13.super_class = PLPersonJournalEntryPayload;
    [(PLManagedObjectJournalEntryPayload *)&v13 appendAttributeKey:keyCopy value:v11 toDescriptionBuilder:builderCopy];
    valueCopy = v11;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = PLPersonJournalEntryPayload;
    [(PLManagedObjectJournalEntryPayload *)&v12 appendAttributeKey:keyCopy value:valueCopy toDescriptionBuilder:builderCopy];
  }
}

- (BOOL)updatePayloadAttributes:(id)attributes andNilAttributes:(id)nilAttributes withManagedObject:(id)object forPayloadProperty:(id)property
{
  attributesCopy = attributes;
  objectCopy = object;
  propertyCopy = property;
  v12 = objectCopy;
  if ([propertyCopy isEqualToKey:@"mergeTarget"])
  {
    mergeTargetPerson = [v12 mergeTargetPerson];
    personUUID = [mergeTargetPerson personUUID];
    v15 = [(PLManagedObjectJournalEntryPayload *)self UUIDDataForString:personUUID];
    v16 = [propertyCopy key];
    [attributesCopy setObject:v15 forKeyedSubscript:v16];
  }

  else
  {
    if (![propertyCopy isEqualToKey:@"contactDict"])
    {
      v17 = 0;
      goto LABEL_7;
    }

    mergeTargetPerson = [v12 contactMatchingDictionary];
    personUUID = [propertyCopy key];
    [attributesCopy setObject:mergeTargetPerson forKeyedSubscript:personUUID];
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
  integerValue = [v2 integerValue];

  return integerValue;
}

- (int)cloudVerifiedType
{
  v2 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"cloudVerifiedType"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (int)verifiedType
{
  v2 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"verifiedType"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (int)type
{
  v2 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"type"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (unsigned)manualOrder
{
  v2 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"order"];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (PLPersonJournalEntryPayload)initWithUserFeedback:(id)feedback changedKeys:(id)keys
{
  feedbackCopy = feedback;
  keysCopy = keys;
  if (keysCopy)
  {
    v8 = MEMORY[0x1E695DFD8];
    modelProperties = [objc_opt_class() modelProperties];
    v10 = [modelProperties objectForKeyedSubscript:@"userFeedbacks"];
    subRelationshipProperties = [v10 subRelationshipProperties];
    allKeys = [subRelationshipProperties allKeys];
    v13 = [v8 setWithArray:allKeys];

    if ([keysCopy intersectsSet:v13])
    {
      person = [feedbackCopy person];
      payloadID = [feedbackCopy payloadID];
      payloadVersion = [objc_opt_class() payloadVersion];
      v17 = [MEMORY[0x1E695DFD8] setWithObject:@"userFeedbacks"];
      modelProperties2 = [objc_opt_class() modelProperties];
      v21.receiver = self;
      v21.super_class = PLPersonJournalEntryPayload;
      v19 = [(PLManagedObjectJournalEntryPayload *)&v21 initWithPayloadID:payloadID payloadVersion:payloadVersion managedObject:person changedKeys:v17 modelProperties:modelProperties2];
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

- (id)insertPersonFromDataInManagedObjectContext:(id)context
{
  contextCopy = context;
  payloadID = [(PLManagedObjectJournalEntryPayload *)self payloadID];
  payloadIDString = [payloadID payloadIDString];
  fullName = [(PLPersonJournalEntryPayload *)self fullName];
  v8 = [PLPerson insertIntoManagedObjectContext:contextCopy withPersonUUID:payloadIDString fullName:fullName verifiedType:[(PLPersonJournalEntryPayload *)self verifiedType]];

  [(PLManagedObjectJournalEntryPayload *)self applyPayloadToManagedObject:v8 payloadAttributesToUpdate:0];

  return v8;
}

+ (BOOL)isValidForPersistenceWithObjectDictionary:(id)dictionary additionalEntityName:(id)name
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"verifiedType"];
  if ([v5 integerValue])
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"personUUID"];
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
  block[4] = self;
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
  block[4] = self;
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

+ (void)updateMergeTargetPersonWithPersonUUIDMapping:(id)mapping fromDataInManagedObjectContext:(id)context
{
  v31 = *MEMORY[0x1E69E9840];
  mappingCopy = mapping;
  contextCopy = context;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = [mappingCopy countByEnumeratingWithState:&v22 objects:v30 count:16];
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
          objc_enumerationMutation(mappingCopy);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        v12 = [mappingCopy objectForKey:{v11, v20}];
        v13 = [PLPerson personWithUUID:v11 inManagedObjectContext:contextCopy];
        v14 = [PLPerson personWithUUID:v12 inManagedObjectContext:contextCopy];
        finalMergeTargetPerson = [v14 finalMergeTargetPerson];

        v16 = PLMigrationGetLog();
        v17 = v16;
        if (v13)
        {
          v18 = finalMergeTargetPerson == 0;
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
            v27 = finalMergeTargetPerson;
            v28 = 2112;
            v29 = v13;
            _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEFAULT, "Setting merge target person %@ for %@", buf, 0x16u);
          }

          [v13 setMergeTargetPerson:finalMergeTargetPerson];
        }
      }

      v9 = [mappingCopy countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v9);
  }
}

@end