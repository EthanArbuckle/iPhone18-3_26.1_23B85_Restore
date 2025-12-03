@interface ASRSchemaASRFinalAudioPacketContainingSpeechReceived
- (ASRSchemaASRFinalAudioPacketContainingSpeechReceived)initWithDictionary:(id)dictionary;
- (ASRSchemaASRFinalAudioPacketContainingSpeechReceived)initWithJSON:(id)n;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation ASRSchemaASRFinalAudioPacketContainingSpeechReceived

- (ASRSchemaASRFinalAudioPacketContainingSpeechReceived)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = ASRSchemaASRFinalAudioPacketContainingSpeechReceived;
  v5 = [(ASRSchemaASRFinalAudioPacketContainingSpeechReceived *)&v15 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"exists"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRFinalAudioPacketContainingSpeechReceived setExists:](v5, "setExists:", [v6 BOOLValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"loggableSharedUserId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      [(ASRSchemaASRFinalAudioPacketContainingSpeechReceived *)v5 setLoggableSharedUserId:v8];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"resultCandidateId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      [(ASRSchemaASRFinalAudioPacketContainingSpeechReceived *)v5 setResultCandidateId:v10];
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"loggableUserIdHash"];
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

- (ASRSchemaASRFinalAudioPacketContainingSpeechReceived)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ASRSchemaASRFinalAudioPacketContainingSpeechReceived *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ASRSchemaASRFinalAudioPacketContainingSpeechReceived *)self dictionaryRepresentation];
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
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[ASRSchemaASRFinalAudioPacketContainingSpeechReceived exists](self, "exists")}];
    [dictionary setObject:v4 forKeyedSubscript:@"exists"];
  }

  if (self->_loggableSharedUserId)
  {
    loggableSharedUserId = [(ASRSchemaASRFinalAudioPacketContainingSpeechReceived *)self loggableSharedUserId];
    v6 = [loggableSharedUserId copy];
    [dictionary setObject:v6 forKeyedSubscript:@"loggableSharedUserId"];
  }

  if (self->_loggableUserIdHash)
  {
    loggableUserIdHash = [(ASRSchemaASRFinalAudioPacketContainingSpeechReceived *)self loggableUserIdHash];
    v8 = [loggableUserIdHash copy];
    [dictionary setObject:v8 forKeyedSubscript:@"loggableUserIdHash"];
  }

  if (self->_resultCandidateId)
  {
    resultCandidateId = [(ASRSchemaASRFinalAudioPacketContainingSpeechReceived *)self resultCandidateId];
    v10 = [resultCandidateId copy];
    [dictionary setObject:v10 forKeyedSubscript:@"resultCandidateId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  if ((*&self->_has & 1) != (equalCopy[40] & 1))
  {
    goto LABEL_20;
  }

  if (*&self->_has)
  {
    exists = self->_exists;
    if (exists != [equalCopy exists])
    {
      goto LABEL_20;
    }
  }

  loggableSharedUserId = [(ASRSchemaASRFinalAudioPacketContainingSpeechReceived *)self loggableSharedUserId];
  loggableSharedUserId2 = [equalCopy loggableSharedUserId];
  if ((loggableSharedUserId != 0) == (loggableSharedUserId2 == 0))
  {
    goto LABEL_19;
  }

  loggableSharedUserId3 = [(ASRSchemaASRFinalAudioPacketContainingSpeechReceived *)self loggableSharedUserId];
  if (loggableSharedUserId3)
  {
    v9 = loggableSharedUserId3;
    loggableSharedUserId4 = [(ASRSchemaASRFinalAudioPacketContainingSpeechReceived *)self loggableSharedUserId];
    loggableSharedUserId5 = [equalCopy loggableSharedUserId];
    v12 = [loggableSharedUserId4 isEqual:loggableSharedUserId5];

    if (!v12)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  loggableSharedUserId = [(ASRSchemaASRFinalAudioPacketContainingSpeechReceived *)self resultCandidateId];
  loggableSharedUserId2 = [equalCopy resultCandidateId];
  if ((loggableSharedUserId != 0) == (loggableSharedUserId2 == 0))
  {
    goto LABEL_19;
  }

  resultCandidateId = [(ASRSchemaASRFinalAudioPacketContainingSpeechReceived *)self resultCandidateId];
  if (resultCandidateId)
  {
    v14 = resultCandidateId;
    resultCandidateId2 = [(ASRSchemaASRFinalAudioPacketContainingSpeechReceived *)self resultCandidateId];
    resultCandidateId3 = [equalCopy resultCandidateId];
    v17 = [resultCandidateId2 isEqual:resultCandidateId3];

    if (!v17)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  loggableSharedUserId = [(ASRSchemaASRFinalAudioPacketContainingSpeechReceived *)self loggableUserIdHash];
  loggableSharedUserId2 = [equalCopy loggableUserIdHash];
  if ((loggableSharedUserId != 0) != (loggableSharedUserId2 == 0))
  {
    loggableUserIdHash = [(ASRSchemaASRFinalAudioPacketContainingSpeechReceived *)self loggableUserIdHash];
    if (!loggableUserIdHash)
    {

LABEL_23:
      v23 = 1;
      goto LABEL_21;
    }

    v19 = loggableUserIdHash;
    loggableUserIdHash2 = [(ASRSchemaASRFinalAudioPacketContainingSpeechReceived *)self loggableUserIdHash];
    loggableUserIdHash3 = [equalCopy loggableUserIdHash];
    v22 = [loggableUserIdHash2 isEqual:loggableUserIdHash3];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  loggableSharedUserId = [(ASRSchemaASRFinalAudioPacketContainingSpeechReceived *)self loggableSharedUserId];

  if (loggableSharedUserId)
  {
    PBDataWriterWriteStringField();
  }

  resultCandidateId = [(ASRSchemaASRFinalAudioPacketContainingSpeechReceived *)self resultCandidateId];

  if (resultCandidateId)
  {
    PBDataWriterWriteStringField();
  }

  loggableUserIdHash = [(ASRSchemaASRFinalAudioPacketContainingSpeechReceived *)self loggableUserIdHash];

  v7 = toCopy;
  if (loggableUserIdHash)
  {
    PBDataWriterWriteStringField();
    v7 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v8.receiver = self;
  v8.super_class = ASRSchemaASRFinalAudioPacketContainingSpeechReceived;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v8 applySensitiveConditionsPolicy:policyCopy];
  v6 = [policyCopy isConditionSet:{8, v8.receiver, v8.super_class}];

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