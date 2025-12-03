@interface ASRSpeechProfileSchemaASRSpeechProfileUpdateFailed
- (ASRSpeechProfileSchemaASRSpeechProfileUpdateFailed)initWithDictionary:(id)dictionary;
- (ASRSpeechProfileSchemaASRSpeechProfileUpdateFailed)initWithJSON:(id)n;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation ASRSpeechProfileSchemaASRSpeechProfileUpdateFailed

- (ASRSpeechProfileSchemaASRSpeechProfileUpdateFailed)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = ASRSpeechProfileSchemaASRSpeechProfileUpdateFailed;
  v5 = [(ASRSpeechProfileSchemaASRSpeechProfileUpdateFailed *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"speechProfileUpdateFailureReason"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSpeechProfileSchemaASRSpeechProfileUpdateFailed setSpeechProfileUpdateFailureReason:](v5, "setSpeechProfileUpdateFailureReason:", [v6 intValue]);
    }

    v7 = v5;
  }

  return v5;
}

- (ASRSpeechProfileSchemaASRSpeechProfileUpdateFailed)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ASRSpeechProfileSchemaASRSpeechProfileUpdateFailed *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ASRSpeechProfileSchemaASRSpeechProfileUpdateFailed *)self dictionaryRepresentation];
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
    v4 = [(ASRSpeechProfileSchemaASRSpeechProfileUpdateFailed *)self speechProfileUpdateFailureReason]- 1;
    if (v4 > 8)
    {
      v5 = @"ASRSPEECHPROFILEUPDATEFAILUREREASON_UNKNOWN";
    }

    else
    {
      v5 = off_1E78D21E8[v4];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"speechProfileUpdateFailureReason"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    return 2654435761 * self->_speechProfileUpdateFailureReason;
  }

  else
  {
    return 0;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = 0;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    if ((*&self->_has & 1) == (equalCopy[12] & 1))
    {
      if ((*&self->_has & 1) == 0 || (speechProfileUpdateFailureReason = self->_speechProfileUpdateFailureReason, speechProfileUpdateFailureReason == [equalCopy speechProfileUpdateFailureReason]))
      {
        v6 = 1;
      }
    }
  }

  return v6;
}

- (void)writeTo:(id)to
{
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end