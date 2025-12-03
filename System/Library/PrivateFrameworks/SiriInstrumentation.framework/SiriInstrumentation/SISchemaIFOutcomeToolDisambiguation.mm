@interface SISchemaIFOutcomeToolDisambiguation
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaIFOutcomeToolDisambiguation)initWithDictionary:(id)dictionary;
- (SISchemaIFOutcomeToolDisambiguation)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation SISchemaIFOutcomeToolDisambiguation

- (SISchemaIFOutcomeToolDisambiguation)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = SISchemaIFOutcomeToolDisambiguation;
  v5 = [(SISchemaIFOutcomeToolDisambiguation *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"assistantSchemaKind"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(SISchemaIFOutcomeToolDisambiguation *)v5 setAssistantSchemaKind:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (SISchemaIFOutcomeToolDisambiguation)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaIFOutcomeToolDisambiguation *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaIFOutcomeToolDisambiguation *)self dictionaryRepresentation];
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
  if (self->_assistantSchemaKind)
  {
    assistantSchemaKind = [(SISchemaIFOutcomeToolDisambiguation *)self assistantSchemaKind];
    v5 = [assistantSchemaKind copy];
    [dictionary setObject:v5 forKeyedSubscript:@"assistantSchemaKind"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    assistantSchemaKind = [(SISchemaIFOutcomeToolDisambiguation *)self assistantSchemaKind];
    assistantSchemaKind2 = [equalCopy assistantSchemaKind];
    v7 = assistantSchemaKind2;
    if ((assistantSchemaKind != 0) != (assistantSchemaKind2 == 0))
    {
      assistantSchemaKind3 = [(SISchemaIFOutcomeToolDisambiguation *)self assistantSchemaKind];
      if (!assistantSchemaKind3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = assistantSchemaKind3;
      assistantSchemaKind4 = [(SISchemaIFOutcomeToolDisambiguation *)self assistantSchemaKind];
      assistantSchemaKind5 = [equalCopy assistantSchemaKind];
      v12 = [assistantSchemaKind4 isEqual:assistantSchemaKind5];

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
  assistantSchemaKind = [(SISchemaIFOutcomeToolDisambiguation *)self assistantSchemaKind];

  if (assistantSchemaKind)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v8.receiver = self;
  v8.super_class = SISchemaIFOutcomeToolDisambiguation;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v8 applySensitiveConditionsPolicy:policyCopy];
  v6 = [policyCopy isConditionSet:{4, v8.receiver, v8.super_class}];

  if (v6)
  {
    [(SISchemaIFOutcomeToolDisambiguation *)self deleteAssistantSchemaKind];
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