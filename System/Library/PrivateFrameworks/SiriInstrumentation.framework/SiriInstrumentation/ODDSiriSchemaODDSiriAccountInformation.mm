@interface ODDSiriSchemaODDSiriAccountInformation
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ODDSiriSchemaODDSiriAccountInformation)initWithDictionary:(id)dictionary;
- (ODDSiriSchemaODDSiriAccountInformation)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation ODDSiriSchemaODDSiriAccountInformation

- (ODDSiriSchemaODDSiriAccountInformation)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = ODDSiriSchemaODDSiriAccountInformation;
  v5 = [(ODDSiriSchemaODDSiriAccountInformation *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"assistantId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(ODDSiriSchemaODDSiriAccountInformation *)v5 setAssistantId:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (ODDSiriSchemaODDSiriAccountInformation)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDSiriAccountInformation *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ODDSiriSchemaODDSiriAccountInformation *)self dictionaryRepresentation];
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
  if (self->_assistantId)
  {
    assistantId = [(ODDSiriSchemaODDSiriAccountInformation *)self assistantId];
    v5 = [assistantId copy];
    [dictionary setObject:v5 forKeyedSubscript:@"assistantId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    assistantId = [(ODDSiriSchemaODDSiriAccountInformation *)self assistantId];
    assistantId2 = [equalCopy assistantId];
    v7 = assistantId2;
    if ((assistantId != 0) != (assistantId2 == 0))
    {
      assistantId3 = [(ODDSiriSchemaODDSiriAccountInformation *)self assistantId];
      if (!assistantId3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = assistantId3;
      assistantId4 = [(ODDSiriSchemaODDSiriAccountInformation *)self assistantId];
      assistantId5 = [equalCopy assistantId];
      v12 = [assistantId4 isEqual:assistantId5];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  assistantId = [(ODDSiriSchemaODDSiriAccountInformation *)self assistantId];

  if (assistantId)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];
  [(SISensitiveConditionsSet *)v2 addCondition:8];

  return v2;
}

@end