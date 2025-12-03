@interface SISchemaUserSpeechDuration
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaUserSpeechDuration)initWithDictionary:(id)dictionary;
- (SISchemaUserSpeechDuration)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation SISchemaUserSpeechDuration

- (SISchemaUserSpeechDuration)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = SISchemaUserSpeechDuration;
  v5 = [(SISchemaUserSpeechDuration *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"durationMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaUserSpeechDuration setDurationMs:](v5, "setDurationMs:", [v6 longLongValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"resultCandidateId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      [(SISchemaUserSpeechDuration *)v5 setResultCandidateId:v8];
    }

    v9 = v5;
  }

  return v5;
}

- (SISchemaUserSpeechDuration)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaUserSpeechDuration *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaUserSpeechDuration *)self dictionaryRepresentation];
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
    v4 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[SISchemaUserSpeechDuration durationMs](self, "durationMs")}];
    [dictionary setObject:v4 forKeyedSubscript:@"durationMs"];
  }

  if (self->_resultCandidateId)
  {
    resultCandidateId = [(SISchemaUserSpeechDuration *)self resultCandidateId];
    v6 = [resultCandidateId copy];
    [dictionary setObject:v6 forKeyedSubscript:@"resultCandidateId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_durationMs;
  }

  else
  {
    v2 = 0;
  }

  return [(NSString *)self->_resultCandidateId hash]^ v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    if ((*&self->_has & 1) == (equalCopy[24] & 1))
    {
      if ((*&self->_has & 1) == 0 || (durationMs = self->_durationMs, durationMs == [equalCopy durationMs]))
      {
        resultCandidateId = [(SISchemaUserSpeechDuration *)self resultCandidateId];
        resultCandidateId2 = [equalCopy resultCandidateId];
        v8 = resultCandidateId2;
        if ((resultCandidateId != 0) != (resultCandidateId2 == 0))
        {
          resultCandidateId3 = [(SISchemaUserSpeechDuration *)self resultCandidateId];
          if (!resultCandidateId3)
          {

LABEL_13:
            v14 = 1;
            goto LABEL_11;
          }

          v10 = resultCandidateId3;
          resultCandidateId4 = [(SISchemaUserSpeechDuration *)self resultCandidateId];
          resultCandidateId5 = [equalCopy resultCandidateId];
          v13 = [resultCandidateId4 isEqual:resultCandidateId5];

          if (v13)
          {
            goto LABEL_13;
          }
        }

        else
        {
        }
      }
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteInt64Field();
  }

  resultCandidateId = [(SISchemaUserSpeechDuration *)self resultCandidateId];

  v5 = toCopy;
  if (resultCandidateId)
  {
    PBDataWriterWriteStringField();
    v5 = toCopy;
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end