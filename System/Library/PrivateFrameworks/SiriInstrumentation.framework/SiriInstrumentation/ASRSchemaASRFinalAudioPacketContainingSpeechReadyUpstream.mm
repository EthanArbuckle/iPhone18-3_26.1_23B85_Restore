@interface ASRSchemaASRFinalAudioPacketContainingSpeechReadyUpstream
- (ASRSchemaASRFinalAudioPacketContainingSpeechReadyUpstream)initWithDictionary:(id)dictionary;
- (ASRSchemaASRFinalAudioPacketContainingSpeechReadyUpstream)initWithJSON:(id)n;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation ASRSchemaASRFinalAudioPacketContainingSpeechReadyUpstream

- (ASRSchemaASRFinalAudioPacketContainingSpeechReadyUpstream)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = ASRSchemaASRFinalAudioPacketContainingSpeechReadyUpstream;
  v5 = [(ASRSchemaASRFinalAudioPacketContainingSpeechReadyUpstream *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"loggableSharedUserId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(ASRSchemaASRFinalAudioPacketContainingSpeechReadyUpstream *)v5 setLoggableSharedUserId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"resultCandidateId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(ASRSchemaASRFinalAudioPacketContainingSpeechReadyUpstream *)v5 setResultCandidateId:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"loggableUserIdHash"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(ASRSchemaASRFinalAudioPacketContainingSpeechReadyUpstream *)v5 setLoggableUserIdHash:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (ASRSchemaASRFinalAudioPacketContainingSpeechReadyUpstream)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ASRSchemaASRFinalAudioPacketContainingSpeechReadyUpstream *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ASRSchemaASRFinalAudioPacketContainingSpeechReadyUpstream *)self dictionaryRepresentation];
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
  if (self->_loggableSharedUserId)
  {
    loggableSharedUserId = [(ASRSchemaASRFinalAudioPacketContainingSpeechReadyUpstream *)self loggableSharedUserId];
    v5 = [loggableSharedUserId copy];
    [dictionary setObject:v5 forKeyedSubscript:@"loggableSharedUserId"];
  }

  if (self->_loggableUserIdHash)
  {
    loggableUserIdHash = [(ASRSchemaASRFinalAudioPacketContainingSpeechReadyUpstream *)self loggableUserIdHash];
    v7 = [loggableUserIdHash copy];
    [dictionary setObject:v7 forKeyedSubscript:@"loggableUserIdHash"];
  }

  if (self->_resultCandidateId)
  {
    resultCandidateId = [(ASRSchemaASRFinalAudioPacketContainingSpeechReadyUpstream *)self resultCandidateId];
    v9 = [resultCandidateId copy];
    [dictionary setObject:v9 forKeyedSubscript:@"resultCandidateId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_loggableSharedUserId hash];
  v4 = [(NSString *)self->_resultCandidateId hash]^ v3;
  return v4 ^ [(NSString *)self->_loggableUserIdHash hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  loggableSharedUserId = [(ASRSchemaASRFinalAudioPacketContainingSpeechReadyUpstream *)self loggableSharedUserId];
  loggableSharedUserId2 = [equalCopy loggableSharedUserId];
  if ((loggableSharedUserId != 0) == (loggableSharedUserId2 == 0))
  {
    goto LABEL_16;
  }

  loggableSharedUserId3 = [(ASRSchemaASRFinalAudioPacketContainingSpeechReadyUpstream *)self loggableSharedUserId];
  if (loggableSharedUserId3)
  {
    v8 = loggableSharedUserId3;
    loggableSharedUserId4 = [(ASRSchemaASRFinalAudioPacketContainingSpeechReadyUpstream *)self loggableSharedUserId];
    loggableSharedUserId5 = [equalCopy loggableSharedUserId];
    v11 = [loggableSharedUserId4 isEqual:loggableSharedUserId5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  loggableSharedUserId = [(ASRSchemaASRFinalAudioPacketContainingSpeechReadyUpstream *)self resultCandidateId];
  loggableSharedUserId2 = [equalCopy resultCandidateId];
  if ((loggableSharedUserId != 0) == (loggableSharedUserId2 == 0))
  {
    goto LABEL_16;
  }

  resultCandidateId = [(ASRSchemaASRFinalAudioPacketContainingSpeechReadyUpstream *)self resultCandidateId];
  if (resultCandidateId)
  {
    v13 = resultCandidateId;
    resultCandidateId2 = [(ASRSchemaASRFinalAudioPacketContainingSpeechReadyUpstream *)self resultCandidateId];
    resultCandidateId3 = [equalCopy resultCandidateId];
    v16 = [resultCandidateId2 isEqual:resultCandidateId3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  loggableSharedUserId = [(ASRSchemaASRFinalAudioPacketContainingSpeechReadyUpstream *)self loggableUserIdHash];
  loggableSharedUserId2 = [equalCopy loggableUserIdHash];
  if ((loggableSharedUserId != 0) != (loggableSharedUserId2 == 0))
  {
    loggableUserIdHash = [(ASRSchemaASRFinalAudioPacketContainingSpeechReadyUpstream *)self loggableUserIdHash];
    if (!loggableUserIdHash)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = loggableUserIdHash;
    loggableUserIdHash2 = [(ASRSchemaASRFinalAudioPacketContainingSpeechReadyUpstream *)self loggableUserIdHash];
    loggableUserIdHash3 = [equalCopy loggableUserIdHash];
    v21 = [loggableUserIdHash2 isEqual:loggableUserIdHash3];

    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_16:
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  loggableSharedUserId = [(ASRSchemaASRFinalAudioPacketContainingSpeechReadyUpstream *)self loggableSharedUserId];

  if (loggableSharedUserId)
  {
    PBDataWriterWriteStringField();
  }

  resultCandidateId = [(ASRSchemaASRFinalAudioPacketContainingSpeechReadyUpstream *)self resultCandidateId];

  if (resultCandidateId)
  {
    PBDataWriterWriteStringField();
  }

  loggableUserIdHash = [(ASRSchemaASRFinalAudioPacketContainingSpeechReadyUpstream *)self loggableUserIdHash];

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
  v8.super_class = ASRSchemaASRFinalAudioPacketContainingSpeechReadyUpstream;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v8 applySensitiveConditionsPolicy:policyCopy];
  v6 = [policyCopy isConditionSet:{8, v8.receiver, v8.super_class}];

  if (v6)
  {
    [(ASRSchemaASRFinalAudioPacketContainingSpeechReadyUpstream *)self deleteLoggableSharedUserId];
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