@interface ASRSchemaASRFinalAudioPacketContainingSpeechReadyUpstream
- (ASRSchemaASRFinalAudioPacketContainingSpeechReadyUpstream)initWithDictionary:(id)a3;
- (ASRSchemaASRFinalAudioPacketContainingSpeechReadyUpstream)initWithJSON:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation ASRSchemaASRFinalAudioPacketContainingSpeechReadyUpstream

- (ASRSchemaASRFinalAudioPacketContainingSpeechReadyUpstream)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = ASRSchemaASRFinalAudioPacketContainingSpeechReadyUpstream;
  v5 = [(ASRSchemaASRFinalAudioPacketContainingSpeechReadyUpstream *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"loggableSharedUserId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(ASRSchemaASRFinalAudioPacketContainingSpeechReadyUpstream *)v5 setLoggableSharedUserId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"resultCandidateId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(ASRSchemaASRFinalAudioPacketContainingSpeechReadyUpstream *)v5 setResultCandidateId:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"loggableUserIdHash"];
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

- (ASRSchemaASRFinalAudioPacketContainingSpeechReadyUpstream)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ASRSchemaASRFinalAudioPacketContainingSpeechReadyUpstream *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ASRSchemaASRFinalAudioPacketContainingSpeechReadyUpstream *)self dictionaryRepresentation];
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
  if (self->_loggableSharedUserId)
  {
    v4 = [(ASRSchemaASRFinalAudioPacketContainingSpeechReadyUpstream *)self loggableSharedUserId];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"loggableSharedUserId"];
  }

  if (self->_loggableUserIdHash)
  {
    v6 = [(ASRSchemaASRFinalAudioPacketContainingSpeechReadyUpstream *)self loggableUserIdHash];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"loggableUserIdHash"];
  }

  if (self->_resultCandidateId)
  {
    v8 = [(ASRSchemaASRFinalAudioPacketContainingSpeechReadyUpstream *)self resultCandidateId];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"resultCandidateId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_loggableSharedUserId hash];
  v4 = [(NSString *)self->_resultCandidateId hash]^ v3;
  return v4 ^ [(NSString *)self->_loggableUserIdHash hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(ASRSchemaASRFinalAudioPacketContainingSpeechReadyUpstream *)self loggableSharedUserId];
  v6 = [v4 loggableSharedUserId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(ASRSchemaASRFinalAudioPacketContainingSpeechReadyUpstream *)self loggableSharedUserId];
  if (v7)
  {
    v8 = v7;
    v9 = [(ASRSchemaASRFinalAudioPacketContainingSpeechReadyUpstream *)self loggableSharedUserId];
    v10 = [v4 loggableSharedUserId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(ASRSchemaASRFinalAudioPacketContainingSpeechReadyUpstream *)self resultCandidateId];
  v6 = [v4 resultCandidateId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(ASRSchemaASRFinalAudioPacketContainingSpeechReadyUpstream *)self resultCandidateId];
  if (v12)
  {
    v13 = v12;
    v14 = [(ASRSchemaASRFinalAudioPacketContainingSpeechReadyUpstream *)self resultCandidateId];
    v15 = [v4 resultCandidateId];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(ASRSchemaASRFinalAudioPacketContainingSpeechReadyUpstream *)self loggableUserIdHash];
  v6 = [v4 loggableUserIdHash];
  if ((v5 != 0) != (v6 == 0))
  {
    v17 = [(ASRSchemaASRFinalAudioPacketContainingSpeechReadyUpstream *)self loggableUserIdHash];
    if (!v17)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(ASRSchemaASRFinalAudioPacketContainingSpeechReadyUpstream *)self loggableUserIdHash];
    v20 = [v4 loggableUserIdHash];
    v21 = [v19 isEqual:v20];

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

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(ASRSchemaASRFinalAudioPacketContainingSpeechReadyUpstream *)self loggableSharedUserId];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(ASRSchemaASRFinalAudioPacketContainingSpeechReadyUpstream *)self resultCandidateId];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = [(ASRSchemaASRFinalAudioPacketContainingSpeechReadyUpstream *)self loggableUserIdHash];

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
  v8.super_class = ASRSchemaASRFinalAudioPacketContainingSpeechReadyUpstream;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v8 applySensitiveConditionsPolicy:v4];
  v6 = [v4 isConditionSet:{8, v8.receiver, v8.super_class}];

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