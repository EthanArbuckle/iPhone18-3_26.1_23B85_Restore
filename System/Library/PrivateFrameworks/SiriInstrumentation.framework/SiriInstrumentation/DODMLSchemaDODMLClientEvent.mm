@interface DODMLSchemaDODMLClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (DODMLASRSchemaDODMLASRAudioFileResultTier1)audioFileResultTier1;
- (DODMLASRSchemaDODMLASRContextualReplayBiomeRecordCreated)contextualReplayBiomeRecordCreated;
- (DODMLASRSchemaDODMLASRContextualReplayBiomeRecordDeleted)contextualReplayBiomeRecordDeleted;
- (DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentContext)fullPayloadCorrectionExperimentContext;
- (DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentInfoTier1)fullPayloadCorrectionExperimentTier1;
- (DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentPostAnalysis)fullPayloadCorrectionExperimentPostAnalysis;
- (DODMLASRSchemaDODMLASRPersonalizationExperimentContext)personalizationExperimentContext;
- (DODMLASRSchemaDODMLASRUserEditExperimentContext)userEditExperimentContext;
- (DODMLASRSchemaDODMLASRUserEditExperimentEndedTier1)userEditExperimentEndedTier1;
- (DODMLSchemaDODMLClientEvent)initWithDictionary:(id)a3;
- (DODMLSchemaDODMLClientEvent)initWithJSON:(id)a3;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)a3;
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
- (void)setAudioFileResultTier1:(id)a3;
- (void)setContextualReplayBiomeRecordCreated:(id)a3;
- (void)setContextualReplayBiomeRecordDeleted:(id)a3;
- (void)setFullPayloadCorrectionExperimentContext:(id)a3;
- (void)setFullPayloadCorrectionExperimentPostAnalysis:(id)a3;
- (void)setFullPayloadCorrectionExperimentTier1:(id)a3;
- (void)setPersonalizationExperimentContext:(id)a3;
- (void)setUserEditExperimentContext:(id)a3;
- (void)setUserEditExperimentEndedTier1:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation DODMLSchemaDODMLClientEvent

- (DODMLSchemaDODMLClientEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = DODMLSchemaDODMLClientEvent;
  v5 = [(DODMLSchemaDODMLClientEvent *)&v32 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[DODMLSchemaDODMLClientEventMetadata alloc] initWithDictionary:v6];
      [(DODMLSchemaDODMLClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"personalizationExperimentContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[DODMLASRSchemaDODMLASRPersonalizationExperimentContext alloc] initWithDictionary:v8];
      [(DODMLSchemaDODMLClientEvent *)v5 setPersonalizationExperimentContext:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"userEditExperimentContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[DODMLASRSchemaDODMLASRUserEditExperimentContext alloc] initWithDictionary:v10];
      [(DODMLSchemaDODMLClientEvent *)v5 setUserEditExperimentContext:v11];
    }

    v30 = v10;
    v12 = [v4 objectForKeyedSubscript:@"userEditExperimentEndedTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[DODMLASRSchemaDODMLASRUserEditExperimentEndedTier1 alloc] initWithDictionary:v12];
      [(DODMLSchemaDODMLClientEvent *)v5 setUserEditExperimentEndedTier1:v13];
    }

    v29 = v12;
    v14 = [v4 objectForKeyedSubscript:@"audioFileResultTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[DODMLASRSchemaDODMLASRAudioFileResultTier1 alloc] initWithDictionary:v14];
      [(DODMLSchemaDODMLClientEvent *)v5 setAudioFileResultTier1:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"fullPayloadCorrectionExperimentContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentContext alloc] initWithDictionary:v16];
      [(DODMLSchemaDODMLClientEvent *)v5 setFullPayloadCorrectionExperimentContext:v17];
    }

    v31 = v8;
    v18 = [v4 objectForKeyedSubscript:@"fullPayloadCorrectionExperimentTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentInfoTier1 alloc] initWithDictionary:v18];
      [(DODMLSchemaDODMLClientEvent *)v5 setFullPayloadCorrectionExperimentTier1:v19];
    }

    v20 = v6;
    v21 = [v4 objectForKeyedSubscript:@"fullPayloadCorrectionExperimentPostAnalysis"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [[DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentPostAnalysis alloc] initWithDictionary:v21];
      [(DODMLSchemaDODMLClientEvent *)v5 setFullPayloadCorrectionExperimentPostAnalysis:v22];
    }

    v23 = [v4 objectForKeyedSubscript:@"contextualReplayBiomeRecordCreated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = [[DODMLASRSchemaDODMLASRContextualReplayBiomeRecordCreated alloc] initWithDictionary:v23];
      [(DODMLSchemaDODMLClientEvent *)v5 setContextualReplayBiomeRecordCreated:v24];
    }

    v25 = [v4 objectForKeyedSubscript:@"contextualReplayBiomeRecordDeleted"];
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

- (DODMLSchemaDODMLClientEvent)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(DODMLSchemaDODMLClientEvent *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(DODMLSchemaDODMLClientEvent *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_audioFileResultTier1)
  {
    v4 = [(DODMLSchemaDODMLClientEvent *)self audioFileResultTier1];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"audioFileResultTier1"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"audioFileResultTier1"];
    }
  }

  if (self->_contextualReplayBiomeRecordCreated)
  {
    v7 = [(DODMLSchemaDODMLClientEvent *)self contextualReplayBiomeRecordCreated];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"contextualReplayBiomeRecordCreated"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"contextualReplayBiomeRecordCreated"];
    }
  }

  if (self->_contextualReplayBiomeRecordDeleted)
  {
    v10 = [(DODMLSchemaDODMLClientEvent *)self contextualReplayBiomeRecordDeleted];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"contextualReplayBiomeRecordDeleted"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"contextualReplayBiomeRecordDeleted"];
    }
  }

  if (self->_eventMetadata)
  {
    v13 = [(DODMLSchemaDODMLClientEvent *)self eventMetadata];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"eventMetadata"];
    }
  }

  if (self->_fullPayloadCorrectionExperimentContext)
  {
    v16 = [(DODMLSchemaDODMLClientEvent *)self fullPayloadCorrectionExperimentContext];
    v17 = [v16 dictionaryRepresentation];
    if (v17)
    {
      [v3 setObject:v17 forKeyedSubscript:@"fullPayloadCorrectionExperimentContext"];
    }

    else
    {
      v18 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v18 forKeyedSubscript:@"fullPayloadCorrectionExperimentContext"];
    }
  }

  if (self->_fullPayloadCorrectionExperimentPostAnalysis)
  {
    v19 = [(DODMLSchemaDODMLClientEvent *)self fullPayloadCorrectionExperimentPostAnalysis];
    v20 = [v19 dictionaryRepresentation];
    if (v20)
    {
      [v3 setObject:v20 forKeyedSubscript:@"fullPayloadCorrectionExperimentPostAnalysis"];
    }

    else
    {
      v21 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v21 forKeyedSubscript:@"fullPayloadCorrectionExperimentPostAnalysis"];
    }
  }

  if (self->_fullPayloadCorrectionExperimentTier1)
  {
    v22 = [(DODMLSchemaDODMLClientEvent *)self fullPayloadCorrectionExperimentTier1];
    v23 = [v22 dictionaryRepresentation];
    if (v23)
    {
      [v3 setObject:v23 forKeyedSubscript:@"fullPayloadCorrectionExperimentTier1"];
    }

    else
    {
      v24 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v24 forKeyedSubscript:@"fullPayloadCorrectionExperimentTier1"];
    }
  }

  if (self->_personalizationExperimentContext)
  {
    v25 = [(DODMLSchemaDODMLClientEvent *)self personalizationExperimentContext];
    v26 = [v25 dictionaryRepresentation];
    if (v26)
    {
      [v3 setObject:v26 forKeyedSubscript:@"personalizationExperimentContext"];
    }

    else
    {
      v27 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v27 forKeyedSubscript:@"personalizationExperimentContext"];
    }
  }

  if (self->_userEditExperimentContext)
  {
    v28 = [(DODMLSchemaDODMLClientEvent *)self userEditExperimentContext];
    v29 = [v28 dictionaryRepresentation];
    if (v29)
    {
      [v3 setObject:v29 forKeyedSubscript:@"userEditExperimentContext"];
    }

    else
    {
      v30 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v30 forKeyedSubscript:@"userEditExperimentContext"];
    }
  }

  if (self->_userEditExperimentEndedTier1)
  {
    v31 = [(DODMLSchemaDODMLClientEvent *)self userEditExperimentEndedTier1];
    v32 = [v31 dictionaryRepresentation];
    if (v32)
    {
      [v3 setObject:v32 forKeyedSubscript:@"userEditExperimentEndedTier1"];
    }

    else
    {
      v33 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v33 forKeyedSubscript:@"userEditExperimentEndedTier1"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_53;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [v4 whichEvent_Type])
  {
    goto LABEL_53;
  }

  v6 = [(DODMLSchemaDODMLClientEvent *)self eventMetadata];
  v7 = [v4 eventMetadata];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_52;
  }

  v8 = [(DODMLSchemaDODMLClientEvent *)self eventMetadata];
  if (v8)
  {
    v9 = v8;
    v10 = [(DODMLSchemaDODMLClientEvent *)self eventMetadata];
    v11 = [v4 eventMetadata];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  v6 = [(DODMLSchemaDODMLClientEvent *)self personalizationExperimentContext];
  v7 = [v4 personalizationExperimentContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_52;
  }

  v13 = [(DODMLSchemaDODMLClientEvent *)self personalizationExperimentContext];
  if (v13)
  {
    v14 = v13;
    v15 = [(DODMLSchemaDODMLClientEvent *)self personalizationExperimentContext];
    v16 = [v4 personalizationExperimentContext];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  v6 = [(DODMLSchemaDODMLClientEvent *)self userEditExperimentContext];
  v7 = [v4 userEditExperimentContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_52;
  }

  v18 = [(DODMLSchemaDODMLClientEvent *)self userEditExperimentContext];
  if (v18)
  {
    v19 = v18;
    v20 = [(DODMLSchemaDODMLClientEvent *)self userEditExperimentContext];
    v21 = [v4 userEditExperimentContext];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  v6 = [(DODMLSchemaDODMLClientEvent *)self userEditExperimentEndedTier1];
  v7 = [v4 userEditExperimentEndedTier1];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_52;
  }

  v23 = [(DODMLSchemaDODMLClientEvent *)self userEditExperimentEndedTier1];
  if (v23)
  {
    v24 = v23;
    v25 = [(DODMLSchemaDODMLClientEvent *)self userEditExperimentEndedTier1];
    v26 = [v4 userEditExperimentEndedTier1];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  v6 = [(DODMLSchemaDODMLClientEvent *)self audioFileResultTier1];
  v7 = [v4 audioFileResultTier1];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_52;
  }

  v28 = [(DODMLSchemaDODMLClientEvent *)self audioFileResultTier1];
  if (v28)
  {
    v29 = v28;
    v30 = [(DODMLSchemaDODMLClientEvent *)self audioFileResultTier1];
    v31 = [v4 audioFileResultTier1];
    v32 = [v30 isEqual:v31];

    if (!v32)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  v6 = [(DODMLSchemaDODMLClientEvent *)self fullPayloadCorrectionExperimentContext];
  v7 = [v4 fullPayloadCorrectionExperimentContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_52;
  }

  v33 = [(DODMLSchemaDODMLClientEvent *)self fullPayloadCorrectionExperimentContext];
  if (v33)
  {
    v34 = v33;
    v35 = [(DODMLSchemaDODMLClientEvent *)self fullPayloadCorrectionExperimentContext];
    v36 = [v4 fullPayloadCorrectionExperimentContext];
    v37 = [v35 isEqual:v36];

    if (!v37)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  v6 = [(DODMLSchemaDODMLClientEvent *)self fullPayloadCorrectionExperimentTier1];
  v7 = [v4 fullPayloadCorrectionExperimentTier1];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_52;
  }

  v38 = [(DODMLSchemaDODMLClientEvent *)self fullPayloadCorrectionExperimentTier1];
  if (v38)
  {
    v39 = v38;
    v40 = [(DODMLSchemaDODMLClientEvent *)self fullPayloadCorrectionExperimentTier1];
    v41 = [v4 fullPayloadCorrectionExperimentTier1];
    v42 = [v40 isEqual:v41];

    if (!v42)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  v6 = [(DODMLSchemaDODMLClientEvent *)self fullPayloadCorrectionExperimentPostAnalysis];
  v7 = [v4 fullPayloadCorrectionExperimentPostAnalysis];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_52;
  }

  v43 = [(DODMLSchemaDODMLClientEvent *)self fullPayloadCorrectionExperimentPostAnalysis];
  if (v43)
  {
    v44 = v43;
    v45 = [(DODMLSchemaDODMLClientEvent *)self fullPayloadCorrectionExperimentPostAnalysis];
    v46 = [v4 fullPayloadCorrectionExperimentPostAnalysis];
    v47 = [v45 isEqual:v46];

    if (!v47)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  v6 = [(DODMLSchemaDODMLClientEvent *)self contextualReplayBiomeRecordCreated];
  v7 = [v4 contextualReplayBiomeRecordCreated];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_52;
  }

  v48 = [(DODMLSchemaDODMLClientEvent *)self contextualReplayBiomeRecordCreated];
  if (v48)
  {
    v49 = v48;
    v50 = [(DODMLSchemaDODMLClientEvent *)self contextualReplayBiomeRecordCreated];
    v51 = [v4 contextualReplayBiomeRecordCreated];
    v52 = [v50 isEqual:v51];

    if (!v52)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  v6 = [(DODMLSchemaDODMLClientEvent *)self contextualReplayBiomeRecordDeleted];
  v7 = [v4 contextualReplayBiomeRecordDeleted];
  if ((v6 != 0) != (v7 == 0))
  {
    v53 = [(DODMLSchemaDODMLClientEvent *)self contextualReplayBiomeRecordDeleted];
    if (!v53)
    {

LABEL_56:
      v58 = 1;
      goto LABEL_54;
    }

    v54 = v53;
    v55 = [(DODMLSchemaDODMLClientEvent *)self contextualReplayBiomeRecordDeleted];
    v56 = [v4 contextualReplayBiomeRecordDeleted];
    v57 = [v55 isEqual:v56];

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

- (void)writeTo:(id)a3
{
  v25 = a3;
  v4 = [(DODMLSchemaDODMLClientEvent *)self eventMetadata];

  if (v4)
  {
    v5 = [(DODMLSchemaDODMLClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(DODMLSchemaDODMLClientEvent *)self personalizationExperimentContext];

  if (v6)
  {
    v7 = [(DODMLSchemaDODMLClientEvent *)self personalizationExperimentContext];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(DODMLSchemaDODMLClientEvent *)self userEditExperimentContext];

  if (v8)
  {
    v9 = [(DODMLSchemaDODMLClientEvent *)self userEditExperimentContext];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(DODMLSchemaDODMLClientEvent *)self userEditExperimentEndedTier1];

  if (v10)
  {
    v11 = [(DODMLSchemaDODMLClientEvent *)self userEditExperimentEndedTier1];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(DODMLSchemaDODMLClientEvent *)self audioFileResultTier1];

  if (v12)
  {
    v13 = [(DODMLSchemaDODMLClientEvent *)self audioFileResultTier1];
    PBDataWriterWriteSubmessage();
  }

  v14 = [(DODMLSchemaDODMLClientEvent *)self fullPayloadCorrectionExperimentContext];

  if (v14)
  {
    v15 = [(DODMLSchemaDODMLClientEvent *)self fullPayloadCorrectionExperimentContext];
    PBDataWriterWriteSubmessage();
  }

  v16 = [(DODMLSchemaDODMLClientEvent *)self fullPayloadCorrectionExperimentTier1];

  if (v16)
  {
    v17 = [(DODMLSchemaDODMLClientEvent *)self fullPayloadCorrectionExperimentTier1];
    PBDataWriterWriteSubmessage();
  }

  v18 = [(DODMLSchemaDODMLClientEvent *)self fullPayloadCorrectionExperimentPostAnalysis];

  if (v18)
  {
    v19 = [(DODMLSchemaDODMLClientEvent *)self fullPayloadCorrectionExperimentPostAnalysis];
    PBDataWriterWriteSubmessage();
  }

  v20 = [(DODMLSchemaDODMLClientEvent *)self contextualReplayBiomeRecordCreated];

  if (v20)
  {
    v21 = [(DODMLSchemaDODMLClientEvent *)self contextualReplayBiomeRecordCreated];
    PBDataWriterWriteSubmessage();
  }

  v22 = [(DODMLSchemaDODMLClientEvent *)self contextualReplayBiomeRecordDeleted];

  v23 = v25;
  if (v22)
  {
    v24 = [(DODMLSchemaDODMLClientEvent *)self contextualReplayBiomeRecordDeleted];
    PBDataWriterWriteSubmessage();

    v23 = v25;
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

- (void)setContextualReplayBiomeRecordDeleted:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v13 = 0;
  }

  self->_whichEvent_Type = v13;
  contextualReplayBiomeRecordDeleted = self->_contextualReplayBiomeRecordDeleted;
  self->_contextualReplayBiomeRecordDeleted = v4;
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

- (void)setContextualReplayBiomeRecordCreated:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v13 = 0;
  }

  self->_whichEvent_Type = v13;
  contextualReplayBiomeRecordCreated = self->_contextualReplayBiomeRecordCreated;
  self->_contextualReplayBiomeRecordCreated = v4;
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

- (void)setFullPayloadCorrectionExperimentPostAnalysis:(id)a3
{
  v4 = a3;
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

  self->_whichEvent_Type = 8 * (v4 != 0);
  fullPayloadCorrectionExperimentPostAnalysis = self->_fullPayloadCorrectionExperimentPostAnalysis;
  self->_fullPayloadCorrectionExperimentPostAnalysis = v4;
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

- (void)setFullPayloadCorrectionExperimentTier1:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v13 = 0;
  }

  self->_whichEvent_Type = v13;
  fullPayloadCorrectionExperimentTier1 = self->_fullPayloadCorrectionExperimentTier1;
  self->_fullPayloadCorrectionExperimentTier1 = v4;
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

- (void)setFullPayloadCorrectionExperimentContext:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v13 = 0;
  }

  self->_whichEvent_Type = v13;
  fullPayloadCorrectionExperimentContext = self->_fullPayloadCorrectionExperimentContext;
  self->_fullPayloadCorrectionExperimentContext = v4;
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

- (void)setAudioFileResultTier1:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v13 = 0;
  }

  self->_whichEvent_Type = v13;
  audioFileResultTier1 = self->_audioFileResultTier1;
  self->_audioFileResultTier1 = v4;
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

- (void)setUserEditExperimentEndedTier1:(id)a3
{
  v4 = a3;
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

  self->_whichEvent_Type = 4 * (v4 != 0);
  userEditExperimentEndedTier1 = self->_userEditExperimentEndedTier1;
  self->_userEditExperimentEndedTier1 = v4;
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

- (void)setUserEditExperimentContext:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v13 = 0;
  }

  self->_whichEvent_Type = v13;
  userEditExperimentContext = self->_userEditExperimentContext;
  self->_userEditExperimentContext = v4;
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

- (void)setPersonalizationExperimentContext:(id)a3
{
  v4 = a3;
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

  self->_whichEvent_Type = 2 * (v4 != 0);
  personalizationExperimentContext = self->_personalizationExperimentContext;
  self->_personalizationExperimentContext = v4;
}

- (id)qualifiedMessageName
{
  v2 = [(DODMLSchemaDODMLClientEvent *)self whichEvent_Type];
  if (v2 - 2 > 8)
  {
    return @"com.apple.aiml.siri.dodml.DODMLClientEvent";
  }

  else
  {
    return off_1E78D4490[v2 - 2];
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v37.receiver = self;
  v37.super_class = DODMLSchemaDODMLClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v37 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:2])
  {
    [(DODMLSchemaDODMLClientEvent *)self deleteUserEditExperimentEndedTier1];
    [(DODMLSchemaDODMLClientEvent *)self deleteAudioFileResultTier1];
    [(DODMLSchemaDODMLClientEvent *)self deleteFullPayloadCorrectionExperimentTier1];
  }

  if ([v4 isConditionSet:4])
  {
    [(DODMLSchemaDODMLClientEvent *)self deleteUserEditExperimentEndedTier1];
    [(DODMLSchemaDODMLClientEvent *)self deleteAudioFileResultTier1];
    [(DODMLSchemaDODMLClientEvent *)self deleteFullPayloadCorrectionExperimentTier1];
  }

  if ([v4 isConditionSet:5])
  {
    [(DODMLSchemaDODMLClientEvent *)self deleteUserEditExperimentEndedTier1];
    [(DODMLSchemaDODMLClientEvent *)self deleteAudioFileResultTier1];
    [(DODMLSchemaDODMLClientEvent *)self deleteFullPayloadCorrectionExperimentTier1];
  }

  if ([v4 isConditionSet:6])
  {
    [(DODMLSchemaDODMLClientEvent *)self deleteUserEditExperimentEndedTier1];
    [(DODMLSchemaDODMLClientEvent *)self deleteAudioFileResultTier1];
    [(DODMLSchemaDODMLClientEvent *)self deleteFullPayloadCorrectionExperimentTier1];
  }

  if ([v4 isConditionSet:7])
  {
    [(DODMLSchemaDODMLClientEvent *)self deleteUserEditExperimentEndedTier1];
    [(DODMLSchemaDODMLClientEvent *)self deleteAudioFileResultTier1];
    [(DODMLSchemaDODMLClientEvent *)self deleteFullPayloadCorrectionExperimentTier1];
  }

  v6 = [(DODMLSchemaDODMLClientEvent *)self eventMetadata];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(DODMLSchemaDODMLClientEvent *)self deleteEventMetadata];
  }

  v9 = [(DODMLSchemaDODMLClientEvent *)self personalizationExperimentContext];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(DODMLSchemaDODMLClientEvent *)self deletePersonalizationExperimentContext];
  }

  v12 = [(DODMLSchemaDODMLClientEvent *)self userEditExperimentContext];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(DODMLSchemaDODMLClientEvent *)self deleteUserEditExperimentContext];
  }

  v15 = [(DODMLSchemaDODMLClientEvent *)self userEditExperimentEndedTier1];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(DODMLSchemaDODMLClientEvent *)self deleteUserEditExperimentEndedTier1];
  }

  v18 = [(DODMLSchemaDODMLClientEvent *)self audioFileResultTier1];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
  {
    [(DODMLSchemaDODMLClientEvent *)self deleteAudioFileResultTier1];
  }

  v21 = [(DODMLSchemaDODMLClientEvent *)self fullPayloadCorrectionExperimentContext];
  v22 = [v21 applySensitiveConditionsPolicy:v4];
  v23 = [v22 suppressMessage];

  if (v23)
  {
    [(DODMLSchemaDODMLClientEvent *)self deleteFullPayloadCorrectionExperimentContext];
  }

  v24 = [(DODMLSchemaDODMLClientEvent *)self fullPayloadCorrectionExperimentTier1];
  v25 = [v24 applySensitiveConditionsPolicy:v4];
  v26 = [v25 suppressMessage];

  if (v26)
  {
    [(DODMLSchemaDODMLClientEvent *)self deleteFullPayloadCorrectionExperimentTier1];
  }

  v27 = [(DODMLSchemaDODMLClientEvent *)self fullPayloadCorrectionExperimentPostAnalysis];
  v28 = [v27 applySensitiveConditionsPolicy:v4];
  v29 = [v28 suppressMessage];

  if (v29)
  {
    [(DODMLSchemaDODMLClientEvent *)self deleteFullPayloadCorrectionExperimentPostAnalysis];
  }

  v30 = [(DODMLSchemaDODMLClientEvent *)self contextualReplayBiomeRecordCreated];
  v31 = [v30 applySensitiveConditionsPolicy:v4];
  v32 = [v31 suppressMessage];

  if (v32)
  {
    [(DODMLSchemaDODMLClientEvent *)self deleteContextualReplayBiomeRecordCreated];
  }

  v33 = [(DODMLSchemaDODMLClientEvent *)self contextualReplayBiomeRecordDeleted];
  v34 = [v33 applySensitiveConditionsPolicy:v4];
  v35 = [v34 suppressMessage];

  if (v35)
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
  v2 = [(DODMLSchemaDODMLClientEvent *)self eventMetadata];
  v3 = [v2 dodMlId];

  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = [v3 value];
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = [v3 value];
  v6 = [v5 length];

  if (v6)
  {
    v4 = v3;
  }

  else
  {
LABEL_5:
    v4 = 0;
  }

LABEL_6:

  return v4;
}

- (SISchemaInstrumentationMessage)innerEvent
{
  v3 = [(DODMLSchemaDODMLClientEvent *)self whichEvent_Type];
  if (v3 - 2 > 8)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78E9518[v3 - 2]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)a3
{
  if (a3 - 2 > 8)
  {
    return 0;
  }

  else
  {
    return off_1E78E9560[a3 - 2];
  }
}

@end