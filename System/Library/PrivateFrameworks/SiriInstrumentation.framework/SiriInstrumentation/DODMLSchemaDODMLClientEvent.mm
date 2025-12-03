@interface DODMLSchemaDODMLClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (BOOL)isEqual:(id)equal;
- (DODMLASRSchemaDODMLASRAudioFileResultTier1)audioFileResultTier1;
- (DODMLASRSchemaDODMLASRContextualReplayBiomeRecordCreated)contextualReplayBiomeRecordCreated;
- (DODMLASRSchemaDODMLASRContextualReplayBiomeRecordDeleted)contextualReplayBiomeRecordDeleted;
- (DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentContext)fullPayloadCorrectionExperimentContext;
- (DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentInfoTier1)fullPayloadCorrectionExperimentTier1;
- (DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentPostAnalysis)fullPayloadCorrectionExperimentPostAnalysis;
- (DODMLASRSchemaDODMLASRPersonalizationExperimentContext)personalizationExperimentContext;
- (DODMLASRSchemaDODMLASRUserEditExperimentContext)userEditExperimentContext;
- (DODMLASRSchemaDODMLASRUserEditExperimentEndedTier1)userEditExperimentEndedTier1;
- (DODMLSchemaDODMLClientEvent)initWithDictionary:(id)dictionary;
- (DODMLSchemaDODMLClientEvent)initWithJSON:(id)n;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteAudioFileResultTier1;
- (void)deleteContextualReplayBiomeRecordCreated;
- (void)deleteContextualReplayBiomeRecordDeleted;
- (void)deleteFullPayloadCorrectionExperimentContext;
- (void)deleteFullPayloadCorrectionExperimentPostAnalysis;
- (void)deleteFullPayloadCorrectionExperimentTier1;
- (void)deletePersonalizationExperimentContext;
- (void)deleteUserEditExperimentContext;
- (void)deleteUserEditExperimentEndedTier1;
- (void)setAudioFileResultTier1:(id)tier1;
- (void)setContextualReplayBiomeRecordCreated:(id)created;
- (void)setContextualReplayBiomeRecordDeleted:(id)deleted;
- (void)setFullPayloadCorrectionExperimentContext:(id)context;
- (void)setFullPayloadCorrectionExperimentPostAnalysis:(id)analysis;
- (void)setFullPayloadCorrectionExperimentTier1:(id)tier1;
- (void)setPersonalizationExperimentContext:(id)context;
- (void)setUserEditExperimentContext:(id)context;
- (void)setUserEditExperimentEndedTier1:(id)tier1;
- (void)writeTo:(id)to;
@end

@implementation DODMLSchemaDODMLClientEvent

- (DODMLSchemaDODMLClientEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v32.receiver = self;
  v32.super_class = DODMLSchemaDODMLClientEvent;
  v5 = [(DODMLSchemaDODMLClientEvent *)&v32 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[DODMLSchemaDODMLClientEventMetadata alloc] initWithDictionary:v6];
      [(DODMLSchemaDODMLClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"personalizationExperimentContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[DODMLASRSchemaDODMLASRPersonalizationExperimentContext alloc] initWithDictionary:v8];
      [(DODMLSchemaDODMLClientEvent *)v5 setPersonalizationExperimentContext:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"userEditExperimentContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[DODMLASRSchemaDODMLASRUserEditExperimentContext alloc] initWithDictionary:v10];
      [(DODMLSchemaDODMLClientEvent *)v5 setUserEditExperimentContext:v11];
    }

    v30 = v10;
    v12 = [dictionaryCopy objectForKeyedSubscript:@"userEditExperimentEndedTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[DODMLASRSchemaDODMLASRUserEditExperimentEndedTier1 alloc] initWithDictionary:v12];
      [(DODMLSchemaDODMLClientEvent *)v5 setUserEditExperimentEndedTier1:v13];
    }

    v29 = v12;
    v14 = [dictionaryCopy objectForKeyedSubscript:@"audioFileResultTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[DODMLASRSchemaDODMLASRAudioFileResultTier1 alloc] initWithDictionary:v14];
      [(DODMLSchemaDODMLClientEvent *)v5 setAudioFileResultTier1:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"fullPayloadCorrectionExperimentContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentContext alloc] initWithDictionary:v16];
      [(DODMLSchemaDODMLClientEvent *)v5 setFullPayloadCorrectionExperimentContext:v17];
    }

    v31 = v8;
    v18 = [dictionaryCopy objectForKeyedSubscript:@"fullPayloadCorrectionExperimentTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentInfoTier1 alloc] initWithDictionary:v18];
      [(DODMLSchemaDODMLClientEvent *)v5 setFullPayloadCorrectionExperimentTier1:v19];
    }

    v20 = v6;
    v21 = [dictionaryCopy objectForKeyedSubscript:@"fullPayloadCorrectionExperimentPostAnalysis"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [[DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentPostAnalysis alloc] initWithDictionary:v21];
      [(DODMLSchemaDODMLClientEvent *)v5 setFullPayloadCorrectionExperimentPostAnalysis:v22];
    }

    v23 = [dictionaryCopy objectForKeyedSubscript:@"contextualReplayBiomeRecordCreated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = [[DODMLASRSchemaDODMLASRContextualReplayBiomeRecordCreated alloc] initWithDictionary:v23];
      [(DODMLSchemaDODMLClientEvent *)v5 setContextualReplayBiomeRecordCreated:v24];
    }

    v25 = [dictionaryCopy objectForKeyedSubscript:@"contextualReplayBiomeRecordDeleted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = [[DODMLASRSchemaDODMLASRContextualReplayBiomeRecordDeleted alloc] initWithDictionary:v25];
      [(DODMLSchemaDODMLClientEvent *)v5 setContextualReplayBiomeRecordDeleted:v26];
    }

    v27 = v5;
  }

  return v5;
}

- (DODMLSchemaDODMLClientEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(DODMLSchemaDODMLClientEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(DODMLSchemaDODMLClientEvent *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_audioFileResultTier1)
  {
    audioFileResultTier1 = [(DODMLSchemaDODMLClientEvent *)self audioFileResultTier1];
    dictionaryRepresentation = [audioFileResultTier1 dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"audioFileResultTier1"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"audioFileResultTier1"];
    }
  }

  if (self->_contextualReplayBiomeRecordCreated)
  {
    contextualReplayBiomeRecordCreated = [(DODMLSchemaDODMLClientEvent *)self contextualReplayBiomeRecordCreated];
    dictionaryRepresentation2 = [contextualReplayBiomeRecordCreated dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"contextualReplayBiomeRecordCreated"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"contextualReplayBiomeRecordCreated"];
    }
  }

  if (self->_contextualReplayBiomeRecordDeleted)
  {
    contextualReplayBiomeRecordDeleted = [(DODMLSchemaDODMLClientEvent *)self contextualReplayBiomeRecordDeleted];
    dictionaryRepresentation3 = [contextualReplayBiomeRecordDeleted dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"contextualReplayBiomeRecordDeleted"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"contextualReplayBiomeRecordDeleted"];
    }
  }

  if (self->_eventMetadata)
  {
    eventMetadata = [(DODMLSchemaDODMLClientEvent *)self eventMetadata];
    dictionaryRepresentation4 = [eventMetadata dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"eventMetadata"];
    }
  }

  if (self->_fullPayloadCorrectionExperimentContext)
  {
    fullPayloadCorrectionExperimentContext = [(DODMLSchemaDODMLClientEvent *)self fullPayloadCorrectionExperimentContext];
    dictionaryRepresentation5 = [fullPayloadCorrectionExperimentContext dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"fullPayloadCorrectionExperimentContext"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"fullPayloadCorrectionExperimentContext"];
    }
  }

  if (self->_fullPayloadCorrectionExperimentPostAnalysis)
  {
    fullPayloadCorrectionExperimentPostAnalysis = [(DODMLSchemaDODMLClientEvent *)self fullPayloadCorrectionExperimentPostAnalysis];
    dictionaryRepresentation6 = [fullPayloadCorrectionExperimentPostAnalysis dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"fullPayloadCorrectionExperimentPostAnalysis"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"fullPayloadCorrectionExperimentPostAnalysis"];
    }
  }

  if (self->_fullPayloadCorrectionExperimentTier1)
  {
    fullPayloadCorrectionExperimentTier1 = [(DODMLSchemaDODMLClientEvent *)self fullPayloadCorrectionExperimentTier1];
    dictionaryRepresentation7 = [fullPayloadCorrectionExperimentTier1 dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"fullPayloadCorrectionExperimentTier1"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"fullPayloadCorrectionExperimentTier1"];
    }
  }

  if (self->_personalizationExperimentContext)
  {
    personalizationExperimentContext = [(DODMLSchemaDODMLClientEvent *)self personalizationExperimentContext];
    dictionaryRepresentation8 = [personalizationExperimentContext dictionaryRepresentation];
    if (dictionaryRepresentation8)
    {
      [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"personalizationExperimentContext"];
    }

    else
    {
      null8 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null8 forKeyedSubscript:@"personalizationExperimentContext"];
    }
  }

  if (self->_userEditExperimentContext)
  {
    userEditExperimentContext = [(DODMLSchemaDODMLClientEvent *)self userEditExperimentContext];
    dictionaryRepresentation9 = [userEditExperimentContext dictionaryRepresentation];
    if (dictionaryRepresentation9)
    {
      [dictionary setObject:dictionaryRepresentation9 forKeyedSubscript:@"userEditExperimentContext"];
    }

    else
    {
      null9 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null9 forKeyedSubscript:@"userEditExperimentContext"];
    }
  }

  if (self->_userEditExperimentEndedTier1)
  {
    userEditExperimentEndedTier1 = [(DODMLSchemaDODMLClientEvent *)self userEditExperimentEndedTier1];
    dictionaryRepresentation10 = [userEditExperimentEndedTier1 dictionaryRepresentation];
    if (dictionaryRepresentation10)
    {
      [dictionary setObject:dictionaryRepresentation10 forKeyedSubscript:@"userEditExperimentEndedTier1"];
    }

    else
    {
      null10 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null10 forKeyedSubscript:@"userEditExperimentEndedTier1"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(DODMLSchemaDODMLClientEventMetadata *)self->_eventMetadata hash];
  v4 = [(DODMLASRSchemaDODMLASRPersonalizationExperimentContext *)self->_personalizationExperimentContext hash]^ v3;
  v5 = [(DODMLASRSchemaDODMLASRUserEditExperimentContext *)self->_userEditExperimentContext hash];
  v6 = v4 ^ v5 ^ [(DODMLASRSchemaDODMLASRUserEditExperimentEndedTier1 *)self->_userEditExperimentEndedTier1 hash];
  v7 = [(DODMLASRSchemaDODMLASRAudioFileResultTier1 *)self->_audioFileResultTier1 hash];
  v8 = v7 ^ [(DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentContext *)self->_fullPayloadCorrectionExperimentContext hash];
  v9 = v6 ^ v8 ^ [(DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentInfoTier1 *)self->_fullPayloadCorrectionExperimentTier1 hash];
  v10 = [(DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentPostAnalysis *)self->_fullPayloadCorrectionExperimentPostAnalysis hash];
  v11 = v10 ^ [(DODMLASRSchemaDODMLASRContextualReplayBiomeRecordCreated *)self->_contextualReplayBiomeRecordCreated hash];
  return v9 ^ v11 ^ [(DODMLASRSchemaDODMLASRContextualReplayBiomeRecordDeleted *)self->_contextualReplayBiomeRecordDeleted hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_53;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [equalCopy whichEvent_Type])
  {
    goto LABEL_53;
  }

  eventMetadata = [(DODMLSchemaDODMLClientEvent *)self eventMetadata];
  eventMetadata2 = [equalCopy eventMetadata];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_52;
  }

  eventMetadata3 = [(DODMLSchemaDODMLClientEvent *)self eventMetadata];
  if (eventMetadata3)
  {
    v9 = eventMetadata3;
    eventMetadata4 = [(DODMLSchemaDODMLClientEvent *)self eventMetadata];
    eventMetadata5 = [equalCopy eventMetadata];
    v12 = [eventMetadata4 isEqual:eventMetadata5];

    if (!v12)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  eventMetadata = [(DODMLSchemaDODMLClientEvent *)self personalizationExperimentContext];
  eventMetadata2 = [equalCopy personalizationExperimentContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_52;
  }

  personalizationExperimentContext = [(DODMLSchemaDODMLClientEvent *)self personalizationExperimentContext];
  if (personalizationExperimentContext)
  {
    v14 = personalizationExperimentContext;
    personalizationExperimentContext2 = [(DODMLSchemaDODMLClientEvent *)self personalizationExperimentContext];
    personalizationExperimentContext3 = [equalCopy personalizationExperimentContext];
    v17 = [personalizationExperimentContext2 isEqual:personalizationExperimentContext3];

    if (!v17)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  eventMetadata = [(DODMLSchemaDODMLClientEvent *)self userEditExperimentContext];
  eventMetadata2 = [equalCopy userEditExperimentContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_52;
  }

  userEditExperimentContext = [(DODMLSchemaDODMLClientEvent *)self userEditExperimentContext];
  if (userEditExperimentContext)
  {
    v19 = userEditExperimentContext;
    userEditExperimentContext2 = [(DODMLSchemaDODMLClientEvent *)self userEditExperimentContext];
    userEditExperimentContext3 = [equalCopy userEditExperimentContext];
    v22 = [userEditExperimentContext2 isEqual:userEditExperimentContext3];

    if (!v22)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  eventMetadata = [(DODMLSchemaDODMLClientEvent *)self userEditExperimentEndedTier1];
  eventMetadata2 = [equalCopy userEditExperimentEndedTier1];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_52;
  }

  userEditExperimentEndedTier1 = [(DODMLSchemaDODMLClientEvent *)self userEditExperimentEndedTier1];
  if (userEditExperimentEndedTier1)
  {
    v24 = userEditExperimentEndedTier1;
    userEditExperimentEndedTier12 = [(DODMLSchemaDODMLClientEvent *)self userEditExperimentEndedTier1];
    userEditExperimentEndedTier13 = [equalCopy userEditExperimentEndedTier1];
    v27 = [userEditExperimentEndedTier12 isEqual:userEditExperimentEndedTier13];

    if (!v27)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  eventMetadata = [(DODMLSchemaDODMLClientEvent *)self audioFileResultTier1];
  eventMetadata2 = [equalCopy audioFileResultTier1];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_52;
  }

  audioFileResultTier1 = [(DODMLSchemaDODMLClientEvent *)self audioFileResultTier1];
  if (audioFileResultTier1)
  {
    v29 = audioFileResultTier1;
    audioFileResultTier12 = [(DODMLSchemaDODMLClientEvent *)self audioFileResultTier1];
    audioFileResultTier13 = [equalCopy audioFileResultTier1];
    v32 = [audioFileResultTier12 isEqual:audioFileResultTier13];

    if (!v32)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  eventMetadata = [(DODMLSchemaDODMLClientEvent *)self fullPayloadCorrectionExperimentContext];
  eventMetadata2 = [equalCopy fullPayloadCorrectionExperimentContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_52;
  }

  fullPayloadCorrectionExperimentContext = [(DODMLSchemaDODMLClientEvent *)self fullPayloadCorrectionExperimentContext];
  if (fullPayloadCorrectionExperimentContext)
  {
    v34 = fullPayloadCorrectionExperimentContext;
    fullPayloadCorrectionExperimentContext2 = [(DODMLSchemaDODMLClientEvent *)self fullPayloadCorrectionExperimentContext];
    fullPayloadCorrectionExperimentContext3 = [equalCopy fullPayloadCorrectionExperimentContext];
    v37 = [fullPayloadCorrectionExperimentContext2 isEqual:fullPayloadCorrectionExperimentContext3];

    if (!v37)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  eventMetadata = [(DODMLSchemaDODMLClientEvent *)self fullPayloadCorrectionExperimentTier1];
  eventMetadata2 = [equalCopy fullPayloadCorrectionExperimentTier1];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_52;
  }

  fullPayloadCorrectionExperimentTier1 = [(DODMLSchemaDODMLClientEvent *)self fullPayloadCorrectionExperimentTier1];
  if (fullPayloadCorrectionExperimentTier1)
  {
    v39 = fullPayloadCorrectionExperimentTier1;
    fullPayloadCorrectionExperimentTier12 = [(DODMLSchemaDODMLClientEvent *)self fullPayloadCorrectionExperimentTier1];
    fullPayloadCorrectionExperimentTier13 = [equalCopy fullPayloadCorrectionExperimentTier1];
    v42 = [fullPayloadCorrectionExperimentTier12 isEqual:fullPayloadCorrectionExperimentTier13];

    if (!v42)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  eventMetadata = [(DODMLSchemaDODMLClientEvent *)self fullPayloadCorrectionExperimentPostAnalysis];
  eventMetadata2 = [equalCopy fullPayloadCorrectionExperimentPostAnalysis];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_52;
  }

  fullPayloadCorrectionExperimentPostAnalysis = [(DODMLSchemaDODMLClientEvent *)self fullPayloadCorrectionExperimentPostAnalysis];
  if (fullPayloadCorrectionExperimentPostAnalysis)
  {
    v44 = fullPayloadCorrectionExperimentPostAnalysis;
    fullPayloadCorrectionExperimentPostAnalysis2 = [(DODMLSchemaDODMLClientEvent *)self fullPayloadCorrectionExperimentPostAnalysis];
    fullPayloadCorrectionExperimentPostAnalysis3 = [equalCopy fullPayloadCorrectionExperimentPostAnalysis];
    v47 = [fullPayloadCorrectionExperimentPostAnalysis2 isEqual:fullPayloadCorrectionExperimentPostAnalysis3];

    if (!v47)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  eventMetadata = [(DODMLSchemaDODMLClientEvent *)self contextualReplayBiomeRecordCreated];
  eventMetadata2 = [equalCopy contextualReplayBiomeRecordCreated];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_52;
  }

  contextualReplayBiomeRecordCreated = [(DODMLSchemaDODMLClientEvent *)self contextualReplayBiomeRecordCreated];
  if (contextualReplayBiomeRecordCreated)
  {
    v49 = contextualReplayBiomeRecordCreated;
    contextualReplayBiomeRecordCreated2 = [(DODMLSchemaDODMLClientEvent *)self contextualReplayBiomeRecordCreated];
    contextualReplayBiomeRecordCreated3 = [equalCopy contextualReplayBiomeRecordCreated];
    v52 = [contextualReplayBiomeRecordCreated2 isEqual:contextualReplayBiomeRecordCreated3];

    if (!v52)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  eventMetadata = [(DODMLSchemaDODMLClientEvent *)self contextualReplayBiomeRecordDeleted];
  eventMetadata2 = [equalCopy contextualReplayBiomeRecordDeleted];
  if ((eventMetadata != 0) != (eventMetadata2 == 0))
  {
    contextualReplayBiomeRecordDeleted = [(DODMLSchemaDODMLClientEvent *)self contextualReplayBiomeRecordDeleted];
    if (!contextualReplayBiomeRecordDeleted)
    {

LABEL_56:
      v58 = 1;
      goto LABEL_54;
    }

    v54 = contextualReplayBiomeRecordDeleted;
    contextualReplayBiomeRecordDeleted2 = [(DODMLSchemaDODMLClientEvent *)self contextualReplayBiomeRecordDeleted];
    contextualReplayBiomeRecordDeleted3 = [equalCopy contextualReplayBiomeRecordDeleted];
    v57 = [contextualReplayBiomeRecordDeleted2 isEqual:contextualReplayBiomeRecordDeleted3];

    if (v57)
    {
      goto LABEL_56;
    }
  }

  else
  {
LABEL_52:
  }

LABEL_53:
  v58 = 0;
LABEL_54:

  return v58;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  eventMetadata = [(DODMLSchemaDODMLClientEvent *)self eventMetadata];

  if (eventMetadata)
  {
    eventMetadata2 = [(DODMLSchemaDODMLClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  personalizationExperimentContext = [(DODMLSchemaDODMLClientEvent *)self personalizationExperimentContext];

  if (personalizationExperimentContext)
  {
    personalizationExperimentContext2 = [(DODMLSchemaDODMLClientEvent *)self personalizationExperimentContext];
    PBDataWriterWriteSubmessage();
  }

  userEditExperimentContext = [(DODMLSchemaDODMLClientEvent *)self userEditExperimentContext];

  if (userEditExperimentContext)
  {
    userEditExperimentContext2 = [(DODMLSchemaDODMLClientEvent *)self userEditExperimentContext];
    PBDataWriterWriteSubmessage();
  }

  userEditExperimentEndedTier1 = [(DODMLSchemaDODMLClientEvent *)self userEditExperimentEndedTier1];

  if (userEditExperimentEndedTier1)
  {
    userEditExperimentEndedTier12 = [(DODMLSchemaDODMLClientEvent *)self userEditExperimentEndedTier1];
    PBDataWriterWriteSubmessage();
  }

  audioFileResultTier1 = [(DODMLSchemaDODMLClientEvent *)self audioFileResultTier1];

  if (audioFileResultTier1)
  {
    audioFileResultTier12 = [(DODMLSchemaDODMLClientEvent *)self audioFileResultTier1];
    PBDataWriterWriteSubmessage();
  }

  fullPayloadCorrectionExperimentContext = [(DODMLSchemaDODMLClientEvent *)self fullPayloadCorrectionExperimentContext];

  if (fullPayloadCorrectionExperimentContext)
  {
    fullPayloadCorrectionExperimentContext2 = [(DODMLSchemaDODMLClientEvent *)self fullPayloadCorrectionExperimentContext];
    PBDataWriterWriteSubmessage();
  }

  fullPayloadCorrectionExperimentTier1 = [(DODMLSchemaDODMLClientEvent *)self fullPayloadCorrectionExperimentTier1];

  if (fullPayloadCorrectionExperimentTier1)
  {
    fullPayloadCorrectionExperimentTier12 = [(DODMLSchemaDODMLClientEvent *)self fullPayloadCorrectionExperimentTier1];
    PBDataWriterWriteSubmessage();
  }

  fullPayloadCorrectionExperimentPostAnalysis = [(DODMLSchemaDODMLClientEvent *)self fullPayloadCorrectionExperimentPostAnalysis];

  if (fullPayloadCorrectionExperimentPostAnalysis)
  {
    fullPayloadCorrectionExperimentPostAnalysis2 = [(DODMLSchemaDODMLClientEvent *)self fullPayloadCorrectionExperimentPostAnalysis];
    PBDataWriterWriteSubmessage();
  }

  contextualReplayBiomeRecordCreated = [(DODMLSchemaDODMLClientEvent *)self contextualReplayBiomeRecordCreated];

  if (contextualReplayBiomeRecordCreated)
  {
    contextualReplayBiomeRecordCreated2 = [(DODMLSchemaDODMLClientEvent *)self contextualReplayBiomeRecordCreated];
    PBDataWriterWriteSubmessage();
  }

  contextualReplayBiomeRecordDeleted = [(DODMLSchemaDODMLClientEvent *)self contextualReplayBiomeRecordDeleted];

  v23 = toCopy;
  if (contextualReplayBiomeRecordDeleted)
  {
    contextualReplayBiomeRecordDeleted2 = [(DODMLSchemaDODMLClientEvent *)self contextualReplayBiomeRecordDeleted];
    PBDataWriterWriteSubmessage();

    v23 = toCopy;
  }
}

- (void)deleteContextualReplayBiomeRecordDeleted
{
  if (self->_whichEvent_Type == 10)
  {
    self->_whichEvent_Type = 0;
    self->_contextualReplayBiomeRecordDeleted = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (DODMLASRSchemaDODMLASRContextualReplayBiomeRecordDeleted)contextualReplayBiomeRecordDeleted
{
  if (self->_whichEvent_Type == 10)
  {
    v3 = self->_contextualReplayBiomeRecordDeleted;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContextualReplayBiomeRecordDeleted:(id)deleted
{
  deletedCopy = deleted;
  personalizationExperimentContext = self->_personalizationExperimentContext;
  self->_personalizationExperimentContext = 0;

  userEditExperimentContext = self->_userEditExperimentContext;
  self->_userEditExperimentContext = 0;

  userEditExperimentEndedTier1 = self->_userEditExperimentEndedTier1;
  self->_userEditExperimentEndedTier1 = 0;

  audioFileResultTier1 = self->_audioFileResultTier1;
  self->_audioFileResultTier1 = 0;

  fullPayloadCorrectionExperimentContext = self->_fullPayloadCorrectionExperimentContext;
  self->_fullPayloadCorrectionExperimentContext = 0;

  fullPayloadCorrectionExperimentTier1 = self->_fullPayloadCorrectionExperimentTier1;
  self->_fullPayloadCorrectionExperimentTier1 = 0;

  fullPayloadCorrectionExperimentPostAnalysis = self->_fullPayloadCorrectionExperimentPostAnalysis;
  self->_fullPayloadCorrectionExperimentPostAnalysis = 0;

  contextualReplayBiomeRecordCreated = self->_contextualReplayBiomeRecordCreated;
  self->_contextualReplayBiomeRecordCreated = 0;

  v13 = 10;
  if (!deletedCopy)
  {
    v13 = 0;
  }

  self->_whichEvent_Type = v13;
  contextualReplayBiomeRecordDeleted = self->_contextualReplayBiomeRecordDeleted;
  self->_contextualReplayBiomeRecordDeleted = deletedCopy;
}

- (void)deleteContextualReplayBiomeRecordCreated
{
  if (self->_whichEvent_Type == 9)
  {
    self->_whichEvent_Type = 0;
    self->_contextualReplayBiomeRecordCreated = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (DODMLASRSchemaDODMLASRContextualReplayBiomeRecordCreated)contextualReplayBiomeRecordCreated
{
  if (self->_whichEvent_Type == 9)
  {
    v3 = self->_contextualReplayBiomeRecordCreated;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContextualReplayBiomeRecordCreated:(id)created
{
  createdCopy = created;
  personalizationExperimentContext = self->_personalizationExperimentContext;
  self->_personalizationExperimentContext = 0;

  userEditExperimentContext = self->_userEditExperimentContext;
  self->_userEditExperimentContext = 0;

  userEditExperimentEndedTier1 = self->_userEditExperimentEndedTier1;
  self->_userEditExperimentEndedTier1 = 0;

  audioFileResultTier1 = self->_audioFileResultTier1;
  self->_audioFileResultTier1 = 0;

  fullPayloadCorrectionExperimentContext = self->_fullPayloadCorrectionExperimentContext;
  self->_fullPayloadCorrectionExperimentContext = 0;

  fullPayloadCorrectionExperimentTier1 = self->_fullPayloadCorrectionExperimentTier1;
  self->_fullPayloadCorrectionExperimentTier1 = 0;

  fullPayloadCorrectionExperimentPostAnalysis = self->_fullPayloadCorrectionExperimentPostAnalysis;
  self->_fullPayloadCorrectionExperimentPostAnalysis = 0;

  contextualReplayBiomeRecordDeleted = self->_contextualReplayBiomeRecordDeleted;
  self->_contextualReplayBiomeRecordDeleted = 0;

  v13 = 9;
  if (!createdCopy)
  {
    v13 = 0;
  }

  self->_whichEvent_Type = v13;
  contextualReplayBiomeRecordCreated = self->_contextualReplayBiomeRecordCreated;
  self->_contextualReplayBiomeRecordCreated = createdCopy;
}

- (void)deleteFullPayloadCorrectionExperimentPostAnalysis
{
  if (self->_whichEvent_Type == 8)
  {
    self->_whichEvent_Type = 0;
    self->_fullPayloadCorrectionExperimentPostAnalysis = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentPostAnalysis)fullPayloadCorrectionExperimentPostAnalysis
{
  if (self->_whichEvent_Type == 8)
  {
    v3 = self->_fullPayloadCorrectionExperimentPostAnalysis;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setFullPayloadCorrectionExperimentPostAnalysis:(id)analysis
{
  analysisCopy = analysis;
  personalizationExperimentContext = self->_personalizationExperimentContext;
  self->_personalizationExperimentContext = 0;

  userEditExperimentContext = self->_userEditExperimentContext;
  self->_userEditExperimentContext = 0;

  userEditExperimentEndedTier1 = self->_userEditExperimentEndedTier1;
  self->_userEditExperimentEndedTier1 = 0;

  audioFileResultTier1 = self->_audioFileResultTier1;
  self->_audioFileResultTier1 = 0;

  fullPayloadCorrectionExperimentContext = self->_fullPayloadCorrectionExperimentContext;
  self->_fullPayloadCorrectionExperimentContext = 0;

  fullPayloadCorrectionExperimentTier1 = self->_fullPayloadCorrectionExperimentTier1;
  self->_fullPayloadCorrectionExperimentTier1 = 0;

  contextualReplayBiomeRecordCreated = self->_contextualReplayBiomeRecordCreated;
  self->_contextualReplayBiomeRecordCreated = 0;

  contextualReplayBiomeRecordDeleted = self->_contextualReplayBiomeRecordDeleted;
  self->_contextualReplayBiomeRecordDeleted = 0;

  self->_whichEvent_Type = 8 * (analysisCopy != 0);
  fullPayloadCorrectionExperimentPostAnalysis = self->_fullPayloadCorrectionExperimentPostAnalysis;
  self->_fullPayloadCorrectionExperimentPostAnalysis = analysisCopy;
}

- (void)deleteFullPayloadCorrectionExperimentTier1
{
  if (self->_whichEvent_Type == 7)
  {
    self->_whichEvent_Type = 0;
    self->_fullPayloadCorrectionExperimentTier1 = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentInfoTier1)fullPayloadCorrectionExperimentTier1
{
  if (self->_whichEvent_Type == 7)
  {
    v3 = self->_fullPayloadCorrectionExperimentTier1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setFullPayloadCorrectionExperimentTier1:(id)tier1
{
  tier1Copy = tier1;
  personalizationExperimentContext = self->_personalizationExperimentContext;
  self->_personalizationExperimentContext = 0;

  userEditExperimentContext = self->_userEditExperimentContext;
  self->_userEditExperimentContext = 0;

  userEditExperimentEndedTier1 = self->_userEditExperimentEndedTier1;
  self->_userEditExperimentEndedTier1 = 0;

  audioFileResultTier1 = self->_audioFileResultTier1;
  self->_audioFileResultTier1 = 0;

  fullPayloadCorrectionExperimentContext = self->_fullPayloadCorrectionExperimentContext;
  self->_fullPayloadCorrectionExperimentContext = 0;

  fullPayloadCorrectionExperimentPostAnalysis = self->_fullPayloadCorrectionExperimentPostAnalysis;
  self->_fullPayloadCorrectionExperimentPostAnalysis = 0;

  contextualReplayBiomeRecordCreated = self->_contextualReplayBiomeRecordCreated;
  self->_contextualReplayBiomeRecordCreated = 0;

  contextualReplayBiomeRecordDeleted = self->_contextualReplayBiomeRecordDeleted;
  self->_contextualReplayBiomeRecordDeleted = 0;

  v13 = 7;
  if (!tier1Copy)
  {
    v13 = 0;
  }

  self->_whichEvent_Type = v13;
  fullPayloadCorrectionExperimentTier1 = self->_fullPayloadCorrectionExperimentTier1;
  self->_fullPayloadCorrectionExperimentTier1 = tier1Copy;
}

- (void)deleteFullPayloadCorrectionExperimentContext
{
  if (self->_whichEvent_Type == 6)
  {
    self->_whichEvent_Type = 0;
    self->_fullPayloadCorrectionExperimentContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentContext)fullPayloadCorrectionExperimentContext
{
  if (self->_whichEvent_Type == 6)
  {
    v3 = self->_fullPayloadCorrectionExperimentContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setFullPayloadCorrectionExperimentContext:(id)context
{
  contextCopy = context;
  personalizationExperimentContext = self->_personalizationExperimentContext;
  self->_personalizationExperimentContext = 0;

  userEditExperimentContext = self->_userEditExperimentContext;
  self->_userEditExperimentContext = 0;

  userEditExperimentEndedTier1 = self->_userEditExperimentEndedTier1;
  self->_userEditExperimentEndedTier1 = 0;

  audioFileResultTier1 = self->_audioFileResultTier1;
  self->_audioFileResultTier1 = 0;

  fullPayloadCorrectionExperimentTier1 = self->_fullPayloadCorrectionExperimentTier1;
  self->_fullPayloadCorrectionExperimentTier1 = 0;

  fullPayloadCorrectionExperimentPostAnalysis = self->_fullPayloadCorrectionExperimentPostAnalysis;
  self->_fullPayloadCorrectionExperimentPostAnalysis = 0;

  contextualReplayBiomeRecordCreated = self->_contextualReplayBiomeRecordCreated;
  self->_contextualReplayBiomeRecordCreated = 0;

  contextualReplayBiomeRecordDeleted = self->_contextualReplayBiomeRecordDeleted;
  self->_contextualReplayBiomeRecordDeleted = 0;

  v13 = 6;
  if (!contextCopy)
  {
    v13 = 0;
  }

  self->_whichEvent_Type = v13;
  fullPayloadCorrectionExperimentContext = self->_fullPayloadCorrectionExperimentContext;
  self->_fullPayloadCorrectionExperimentContext = contextCopy;
}

- (void)deleteAudioFileResultTier1
{
  if (self->_whichEvent_Type == 5)
  {
    self->_whichEvent_Type = 0;
    self->_audioFileResultTier1 = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (DODMLASRSchemaDODMLASRAudioFileResultTier1)audioFileResultTier1
{
  if (self->_whichEvent_Type == 5)
  {
    v3 = self->_audioFileResultTier1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAudioFileResultTier1:(id)tier1
{
  tier1Copy = tier1;
  personalizationExperimentContext = self->_personalizationExperimentContext;
  self->_personalizationExperimentContext = 0;

  userEditExperimentContext = self->_userEditExperimentContext;
  self->_userEditExperimentContext = 0;

  userEditExperimentEndedTier1 = self->_userEditExperimentEndedTier1;
  self->_userEditExperimentEndedTier1 = 0;

  fullPayloadCorrectionExperimentContext = self->_fullPayloadCorrectionExperimentContext;
  self->_fullPayloadCorrectionExperimentContext = 0;

  fullPayloadCorrectionExperimentTier1 = self->_fullPayloadCorrectionExperimentTier1;
  self->_fullPayloadCorrectionExperimentTier1 = 0;

  fullPayloadCorrectionExperimentPostAnalysis = self->_fullPayloadCorrectionExperimentPostAnalysis;
  self->_fullPayloadCorrectionExperimentPostAnalysis = 0;

  contextualReplayBiomeRecordCreated = self->_contextualReplayBiomeRecordCreated;
  self->_contextualReplayBiomeRecordCreated = 0;

  contextualReplayBiomeRecordDeleted = self->_contextualReplayBiomeRecordDeleted;
  self->_contextualReplayBiomeRecordDeleted = 0;

  v13 = 5;
  if (!tier1Copy)
  {
    v13 = 0;
  }

  self->_whichEvent_Type = v13;
  audioFileResultTier1 = self->_audioFileResultTier1;
  self->_audioFileResultTier1 = tier1Copy;
}

- (void)deleteUserEditExperimentEndedTier1
{
  if (self->_whichEvent_Type == 4)
  {
    self->_whichEvent_Type = 0;
    self->_userEditExperimentEndedTier1 = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (DODMLASRSchemaDODMLASRUserEditExperimentEndedTier1)userEditExperimentEndedTier1
{
  if (self->_whichEvent_Type == 4)
  {
    v3 = self->_userEditExperimentEndedTier1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setUserEditExperimentEndedTier1:(id)tier1
{
  tier1Copy = tier1;
  personalizationExperimentContext = self->_personalizationExperimentContext;
  self->_personalizationExperimentContext = 0;

  userEditExperimentContext = self->_userEditExperimentContext;
  self->_userEditExperimentContext = 0;

  audioFileResultTier1 = self->_audioFileResultTier1;
  self->_audioFileResultTier1 = 0;

  fullPayloadCorrectionExperimentContext = self->_fullPayloadCorrectionExperimentContext;
  self->_fullPayloadCorrectionExperimentContext = 0;

  fullPayloadCorrectionExperimentTier1 = self->_fullPayloadCorrectionExperimentTier1;
  self->_fullPayloadCorrectionExperimentTier1 = 0;

  fullPayloadCorrectionExperimentPostAnalysis = self->_fullPayloadCorrectionExperimentPostAnalysis;
  self->_fullPayloadCorrectionExperimentPostAnalysis = 0;

  contextualReplayBiomeRecordCreated = self->_contextualReplayBiomeRecordCreated;
  self->_contextualReplayBiomeRecordCreated = 0;

  contextualReplayBiomeRecordDeleted = self->_contextualReplayBiomeRecordDeleted;
  self->_contextualReplayBiomeRecordDeleted = 0;

  self->_whichEvent_Type = 4 * (tier1Copy != 0);
  userEditExperimentEndedTier1 = self->_userEditExperimentEndedTier1;
  self->_userEditExperimentEndedTier1 = tier1Copy;
}

- (void)deleteUserEditExperimentContext
{
  if (self->_whichEvent_Type == 3)
  {
    self->_whichEvent_Type = 0;
    self->_userEditExperimentContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (DODMLASRSchemaDODMLASRUserEditExperimentContext)userEditExperimentContext
{
  if (self->_whichEvent_Type == 3)
  {
    v3 = self->_userEditExperimentContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setUserEditExperimentContext:(id)context
{
  contextCopy = context;
  personalizationExperimentContext = self->_personalizationExperimentContext;
  self->_personalizationExperimentContext = 0;

  userEditExperimentEndedTier1 = self->_userEditExperimentEndedTier1;
  self->_userEditExperimentEndedTier1 = 0;

  audioFileResultTier1 = self->_audioFileResultTier1;
  self->_audioFileResultTier1 = 0;

  fullPayloadCorrectionExperimentContext = self->_fullPayloadCorrectionExperimentContext;
  self->_fullPayloadCorrectionExperimentContext = 0;

  fullPayloadCorrectionExperimentTier1 = self->_fullPayloadCorrectionExperimentTier1;
  self->_fullPayloadCorrectionExperimentTier1 = 0;

  fullPayloadCorrectionExperimentPostAnalysis = self->_fullPayloadCorrectionExperimentPostAnalysis;
  self->_fullPayloadCorrectionExperimentPostAnalysis = 0;

  contextualReplayBiomeRecordCreated = self->_contextualReplayBiomeRecordCreated;
  self->_contextualReplayBiomeRecordCreated = 0;

  contextualReplayBiomeRecordDeleted = self->_contextualReplayBiomeRecordDeleted;
  self->_contextualReplayBiomeRecordDeleted = 0;

  v13 = 3;
  if (!contextCopy)
  {
    v13 = 0;
  }

  self->_whichEvent_Type = v13;
  userEditExperimentContext = self->_userEditExperimentContext;
  self->_userEditExperimentContext = contextCopy;
}

- (void)deletePersonalizationExperimentContext
{
  if (self->_whichEvent_Type == 2)
  {
    self->_whichEvent_Type = 0;
    self->_personalizationExperimentContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (DODMLASRSchemaDODMLASRPersonalizationExperimentContext)personalizationExperimentContext
{
  if (self->_whichEvent_Type == 2)
  {
    v3 = self->_personalizationExperimentContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPersonalizationExperimentContext:(id)context
{
  contextCopy = context;
  userEditExperimentContext = self->_userEditExperimentContext;
  self->_userEditExperimentContext = 0;

  userEditExperimentEndedTier1 = self->_userEditExperimentEndedTier1;
  self->_userEditExperimentEndedTier1 = 0;

  audioFileResultTier1 = self->_audioFileResultTier1;
  self->_audioFileResultTier1 = 0;

  fullPayloadCorrectionExperimentContext = self->_fullPayloadCorrectionExperimentContext;
  self->_fullPayloadCorrectionExperimentContext = 0;

  fullPayloadCorrectionExperimentTier1 = self->_fullPayloadCorrectionExperimentTier1;
  self->_fullPayloadCorrectionExperimentTier1 = 0;

  fullPayloadCorrectionExperimentPostAnalysis = self->_fullPayloadCorrectionExperimentPostAnalysis;
  self->_fullPayloadCorrectionExperimentPostAnalysis = 0;

  contextualReplayBiomeRecordCreated = self->_contextualReplayBiomeRecordCreated;
  self->_contextualReplayBiomeRecordCreated = 0;

  contextualReplayBiomeRecordDeleted = self->_contextualReplayBiomeRecordDeleted;
  self->_contextualReplayBiomeRecordDeleted = 0;

  self->_whichEvent_Type = 2 * (contextCopy != 0);
  personalizationExperimentContext = self->_personalizationExperimentContext;
  self->_personalizationExperimentContext = contextCopy;
}

- (id)qualifiedMessageName
{
  whichEvent_Type = [(DODMLSchemaDODMLClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 2 > 8)
  {
    return @"com.apple.aiml.siri.dodml.DODMLClientEvent";
  }

  else
  {
    return off_1E78D4490[whichEvent_Type - 2];
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v37.receiver = self;
  v37.super_class = DODMLSchemaDODMLClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v37 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
  {
    [(DODMLSchemaDODMLClientEvent *)self deleteUserEditExperimentEndedTier1];
    [(DODMLSchemaDODMLClientEvent *)self deleteAudioFileResultTier1];
    [(DODMLSchemaDODMLClientEvent *)self deleteFullPayloadCorrectionExperimentTier1];
  }

  if ([policyCopy isConditionSet:4])
  {
    [(DODMLSchemaDODMLClientEvent *)self deleteUserEditExperimentEndedTier1];
    [(DODMLSchemaDODMLClientEvent *)self deleteAudioFileResultTier1];
    [(DODMLSchemaDODMLClientEvent *)self deleteFullPayloadCorrectionExperimentTier1];
  }

  if ([policyCopy isConditionSet:5])
  {
    [(DODMLSchemaDODMLClientEvent *)self deleteUserEditExperimentEndedTier1];
    [(DODMLSchemaDODMLClientEvent *)self deleteAudioFileResultTier1];
    [(DODMLSchemaDODMLClientEvent *)self deleteFullPayloadCorrectionExperimentTier1];
  }

  if ([policyCopy isConditionSet:6])
  {
    [(DODMLSchemaDODMLClientEvent *)self deleteUserEditExperimentEndedTier1];
    [(DODMLSchemaDODMLClientEvent *)self deleteAudioFileResultTier1];
    [(DODMLSchemaDODMLClientEvent *)self deleteFullPayloadCorrectionExperimentTier1];
  }

  if ([policyCopy isConditionSet:7])
  {
    [(DODMLSchemaDODMLClientEvent *)self deleteUserEditExperimentEndedTier1];
    [(DODMLSchemaDODMLClientEvent *)self deleteAudioFileResultTier1];
    [(DODMLSchemaDODMLClientEvent *)self deleteFullPayloadCorrectionExperimentTier1];
  }

  eventMetadata = [(DODMLSchemaDODMLClientEvent *)self eventMetadata];
  v7 = [eventMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(DODMLSchemaDODMLClientEvent *)self deleteEventMetadata];
  }

  personalizationExperimentContext = [(DODMLSchemaDODMLClientEvent *)self personalizationExperimentContext];
  v10 = [personalizationExperimentContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(DODMLSchemaDODMLClientEvent *)self deletePersonalizationExperimentContext];
  }

  userEditExperimentContext = [(DODMLSchemaDODMLClientEvent *)self userEditExperimentContext];
  v13 = [userEditExperimentContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(DODMLSchemaDODMLClientEvent *)self deleteUserEditExperimentContext];
  }

  userEditExperimentEndedTier1 = [(DODMLSchemaDODMLClientEvent *)self userEditExperimentEndedTier1];
  v16 = [userEditExperimentEndedTier1 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(DODMLSchemaDODMLClientEvent *)self deleteUserEditExperimentEndedTier1];
  }

  audioFileResultTier1 = [(DODMLSchemaDODMLClientEvent *)self audioFileResultTier1];
  v19 = [audioFileResultTier1 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(DODMLSchemaDODMLClientEvent *)self deleteAudioFileResultTier1];
  }

  fullPayloadCorrectionExperimentContext = [(DODMLSchemaDODMLClientEvent *)self fullPayloadCorrectionExperimentContext];
  v22 = [fullPayloadCorrectionExperimentContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage6 = [v22 suppressMessage];

  if (suppressMessage6)
  {
    [(DODMLSchemaDODMLClientEvent *)self deleteFullPayloadCorrectionExperimentContext];
  }

  fullPayloadCorrectionExperimentTier1 = [(DODMLSchemaDODMLClientEvent *)self fullPayloadCorrectionExperimentTier1];
  v25 = [fullPayloadCorrectionExperimentTier1 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage7 = [v25 suppressMessage];

  if (suppressMessage7)
  {
    [(DODMLSchemaDODMLClientEvent *)self deleteFullPayloadCorrectionExperimentTier1];
  }

  fullPayloadCorrectionExperimentPostAnalysis = [(DODMLSchemaDODMLClientEvent *)self fullPayloadCorrectionExperimentPostAnalysis];
  v28 = [fullPayloadCorrectionExperimentPostAnalysis applySensitiveConditionsPolicy:policyCopy];
  suppressMessage8 = [v28 suppressMessage];

  if (suppressMessage8)
  {
    [(DODMLSchemaDODMLClientEvent *)self deleteFullPayloadCorrectionExperimentPostAnalysis];
  }

  contextualReplayBiomeRecordCreated = [(DODMLSchemaDODMLClientEvent *)self contextualReplayBiomeRecordCreated];
  v31 = [contextualReplayBiomeRecordCreated applySensitiveConditionsPolicy:policyCopy];
  suppressMessage9 = [v31 suppressMessage];

  if (suppressMessage9)
  {
    [(DODMLSchemaDODMLClientEvent *)self deleteContextualReplayBiomeRecordCreated];
  }

  contextualReplayBiomeRecordDeleted = [(DODMLSchemaDODMLClientEvent *)self contextualReplayBiomeRecordDeleted];
  v34 = [contextualReplayBiomeRecordDeleted applySensitiveConditionsPolicy:policyCopy];
  suppressMessage10 = [v34 suppressMessage];

  if (suppressMessage10)
  {
    [(DODMLSchemaDODMLClientEvent *)self deleteContextualReplayBiomeRecordDeleted];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

- (id)getComponentId
{
  eventMetadata = [(DODMLSchemaDODMLClientEvent *)self eventMetadata];
  dodMlId = [eventMetadata dodMlId];

  if (!dodMlId)
  {
    goto LABEL_5;
  }

  value = [dodMlId value];
  if (!value)
  {
    goto LABEL_6;
  }

  value2 = [dodMlId value];
  v6 = [value2 length];

  if (v6)
  {
    value = dodMlId;
  }

  else
  {
LABEL_5:
    value = 0;
  }

LABEL_6:

  return value;
}

- (SISchemaInstrumentationMessage)innerEvent
{
  whichEvent_Type = [(DODMLSchemaDODMLClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 2 > 8)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78E9518[whichEvent_Type - 2]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)tag
{
  if (tag - 2 > 8)
  {
    return 0;
  }

  else
  {
    return off_1E78E9560[tag - 2];
  }
}

@end