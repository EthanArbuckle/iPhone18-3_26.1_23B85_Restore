@interface ASRSchemaASRFinalAudioPacketContainingSpeechReceived
- (ASRSchemaASRFinalAudioPacketContainingSpeechReceived)initWithDictionary:(id)a3;
- (ASRSchemaASRFinalAudioPacketContainingSpeechReceived)initWithJSON:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation ASRSchemaASRFinalAudioPacketContainingSpeechReceived

- (ASRSchemaASRFinalAudioPacketContainingSpeechReceived)initWithDictionary:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = ASRSchemaASRFinalAudioPacketContainingSpeechReceived;
  v5 = [(ASRSchemaASRFinalAudioPacketContainingSpeechReceived *)&v15 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"exists"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRFinalAudioPacketContainingSpeechReceived setExists:](v5, "setExists:", [v6 BOOLValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"loggableSharedUserId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      [(ASRSchemaASRFinalAudioPacketContainingSpeechReceived *)v5 setLoggableSharedUserId:v8];
    }

    v9 = [v4 objectForKeyedSubscript:@"resultCandidateId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      [(ASRSchemaASRFinalAudioPacketContainingSpeechReceived *)v5 setResultCandidateId:v10];
    }

    v11 = [v4 objectForKeyedSubscript:@"loggableUserIdHash"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v11 copy];
      [(ASRSchemaASRFinalAudioPacketContainingSpeechReceived *)v5 setLoggableUserIdHash:v12];
    }

    v13 = v5;
  }

  return v5;
}

- (ASRSchemaASRFinalAudioPacketContainingSpeechReceived)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ASRSchemaASRFinalAudioPacketContainingSpeechReceived *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ASRSchemaASRFinalAudioPacketContainingSpeechReceived *)self dictionaryRepresentation];
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
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[ASRSchemaASRFinalAudioPacketContainingSpeechReceived exists](self, "exists")}];
    [v3 setObject:v4 forKeyedSubscript:@"exists"];
  }

  if (self->_loggableSharedUserId)
  {
    v5 = [(ASRSchemaASRFinalAudioPacketContainingSpeechReceived *)self loggableSharedUserId];
    v6 = [v5 copy];
    [v3 setObject:v6 forKeyedSubscript:@"loggableSharedUserId"];
  }

  if (self->_loggableUserIdHash)
  {
    v7 = [(ASRSchemaASRFinalAudioPacketContainingSpeechReceived *)self loggableUserIdHash];
    v8 = [v7 copy];
    [v3 setObject:v8 forKeyedSubscript:@"loggableUserIdHash"];
  }

  if (self->_resultCandidateId)
  {
    v9 = [(ASRSchemaASRFinalAudioPacketContainingSpeechReceived *)self resultCandidateId];
    v10 = [v9 copy];
    [v3 setObject:v10 forKeyedSubscript:@"resultCandidateId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_exists;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_loggableSharedUserId hash]^ v3;
  v5 = [(NSString *)self->_resultCandidateId hash];
  return v4 ^ v5 ^ [(NSString *)self->_loggableUserIdHash hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  if ((*&self->_has & 1) != (v4[40] & 1))
  {
    goto LABEL_20;
  }

  if (*&self->_has)
  {
    exists = self->_exists;
    if (exists != [v4 exists])
    {
      goto LABEL_20;
    }
  }

  v6 = [(ASRSchemaASRFinalAudioPacketContainingSpeechReceived *)self loggableSharedUserId];
  v7 = [v4 loggableSharedUserId];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_19;
  }

  v8 = [(ASRSchemaASRFinalAudioPacketContainingSpeechReceived *)self loggableSharedUserId];
  if (v8)
  {
    v9 = v8;
    v10 = [(ASRSchemaASRFinalAudioPacketContainingSpeechReceived *)self loggableSharedUserId];
    v11 = [v4 loggableSharedUserId];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  v6 = [(ASRSchemaASRFinalAudioPacketContainingSpeechReceived *)self resultCandidateId];
  v7 = [v4 resultCandidateId];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_19;
  }

  v13 = [(ASRSchemaASRFinalAudioPacketContainingSpeechReceived *)self resultCandidateId];
  if (v13)
  {
    v14 = v13;
    v15 = [(ASRSchemaASRFinalAudioPacketContainingSpeechReceived *)self resultCandidateId];
    v16 = [v4 resultCandidateId];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  v6 = [(ASRSchemaASRFinalAudioPacketContainingSpeechReceived *)self loggableUserIdHash];
  v7 = [v4 loggableUserIdHash];
  if ((v6 != 0) != (v7 == 0))
  {
    v18 = [(ASRSchemaASRFinalAudioPacketContainingSpeechReceived *)self loggableUserIdHash];
    if (!v18)
    {

LABEL_23:
      v23 = 1;
      goto LABEL_21;
    }

    v19 = v18;
    v20 = [(ASRSchemaASRFinalAudioPacketContainingSpeechReceived *)self loggableUserIdHash];
    v21 = [v4 loggableUserIdHash];
    v22 = [v20 isEqual:v21];

    if (v22)
    {
      goto LABEL_23;
    }
  }

  else
  {
LABEL_19:
  }

LABEL_20:
  v23 = 0;
LABEL_21:

  return v23;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  v4 = [(ASRSchemaASRFinalAudioPacketContainingSpeechReceived *)self loggableSharedUserId];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(ASRSchemaASRFinalAudioPacketContainingSpeechReceived *)self resultCandidateId];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = [(ASRSchemaASRFinalAudioPacketContainingSpeechReceived *)self loggableUserIdHash];

  v7 = v8;
  if (v6)
  {
    PBDataWriterWriteStringField();
    v7 = v8;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v8.receiver = self;
  v8.super_class = ASRSchemaASRFinalAudioPacketContainingSpeechReceived;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v8 applySensitiveConditionsPolicy:v4];
  v6 = [v4 isConditionSet:{8, v8.receiver, v8.super_class}];

  if (v6)
  {
    [(ASRSchemaASRFinalAudioPacketContainingSpeechReceived *)self deleteLoggableSharedUserId];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end