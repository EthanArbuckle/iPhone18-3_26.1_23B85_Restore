@interface ASRSchemaASRLMEOverActivationEdit
- (ASRSchemaASRLMEOverActivationEdit)initWithDictionary:(id)dictionary;
- (ASRSchemaASRLMEOverActivationEdit)initWithJSON:(id)n;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation ASRSchemaASRLMEOverActivationEdit

- (ASRSchemaASRLMEOverActivationEdit)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = ASRSchemaASRLMEOverActivationEdit;
  v5 = [(ASRSchemaASRLMEOverActivationEdit *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"speechProfileCategory"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRLMEOverActivationEdit setSpeechProfileCategory:](v5, "setSpeechProfileCategory:", [v6 intValue]);
    }

    v7 = v5;
  }

  return v5;
}

- (ASRSchemaASRLMEOverActivationEdit)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ASRSchemaASRLMEOverActivationEdit *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ASRSchemaASRLMEOverActivationEdit *)self dictionaryRepresentation];
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
    v4 = [(ASRSchemaASRLMEOverActivationEdit *)self speechProfileCategory]- 1;
    if (v4 > 0x1B)
    {
      v5 = @"ASRSPEECHPROFILECATEGORY_UNKNOWN";
    }

    else
    {
      v5 = off_1E78D1DE0[v4];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"speechProfileCategory"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    return 2654435761 * self->_speechProfileCategory;
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
      if ((*&self->_has & 1) == 0 || (speechProfileCategory = self->_speechProfileCategory, speechProfileCategory == [equalCopy speechProfileCategory]))
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