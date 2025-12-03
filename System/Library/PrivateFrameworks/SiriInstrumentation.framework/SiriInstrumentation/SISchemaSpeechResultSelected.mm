@interface SISchemaSpeechResultSelected
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaSpeechResultSelected)initWithDictionary:(id)dictionary;
- (SISchemaSpeechResultSelected)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation SISchemaSpeechResultSelected

- (SISchemaSpeechResultSelected)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = SISchemaSpeechResultSelected;
  v5 = [(SISchemaSpeechResultSelected *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"resultCandidateId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(SISchemaSpeechResultSelected *)v5 setResultCandidateId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"source"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaSpeechResultSelected setSource:](v5, "setSource:", [v8 intValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (SISchemaSpeechResultSelected)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaSpeechResultSelected *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaSpeechResultSelected *)self dictionaryRepresentation];
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
  if (self->_resultCandidateId)
  {
    resultCandidateId = [(SISchemaSpeechResultSelected *)self resultCandidateId];
    v5 = [resultCandidateId copy];
    [dictionary setObject:v5 forKeyedSubscript:@"resultCandidateId"];
  }

  if (*&self->_has)
  {
    source = [(SISchemaSpeechResultSelected *)self source];
    v7 = @"UNKNOWN";
    if (source == 2)
    {
      v7 = @"FINAL_SPEECH_RECOGNITION";
    }

    if (source == 1)
    {
      v8 = @"RESULT_SELECTED";
    }

    else
    {
      v8 = v7;
    }

    [dictionary setObject:v8 forKeyedSubscript:@"source"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_resultCandidateId hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_source;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  resultCandidateId = [(SISchemaSpeechResultSelected *)self resultCandidateId];
  resultCandidateId2 = [equalCopy resultCandidateId];
  v7 = resultCandidateId2;
  if ((resultCandidateId != 0) == (resultCandidateId2 == 0))
  {

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  resultCandidateId3 = [(SISchemaSpeechResultSelected *)self resultCandidateId];
  if (resultCandidateId3)
  {
    v9 = resultCandidateId3;
    resultCandidateId4 = [(SISchemaSpeechResultSelected *)self resultCandidateId];
    resultCandidateId5 = [equalCopy resultCandidateId];
    v12 = [resultCandidateId4 isEqual:resultCandidateId5];

    if (!v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[20] & 1))
  {
    goto LABEL_12;
  }

  if (*&self->_has)
  {
    source = self->_source;
    if (source != [equalCopy source])
    {
      goto LABEL_12;
    }
  }

  v14 = 1;
LABEL_13:

  return v14;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  resultCandidateId = [(SISchemaSpeechResultSelected *)self resultCandidateId];

  if (resultCandidateId)
  {
    PBDataWriterWriteStringField();
  }

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