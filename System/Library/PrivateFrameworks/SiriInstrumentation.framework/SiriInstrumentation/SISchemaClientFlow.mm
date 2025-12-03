@interface SISchemaClientFlow
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaClientFlow)initWithDictionary:(id)dictionary;
- (SISchemaClientFlow)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation SISchemaClientFlow

- (SISchemaClientFlow)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = SISchemaClientFlow;
  v5 = [(SISchemaClientFlow *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"clientFlowPayload"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(SISchemaClientFlow *)v5 setClientFlowPayload:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (SISchemaClientFlow)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaClientFlow *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaClientFlow *)self dictionaryRepresentation];
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
  if (self->_clientFlowPayload)
  {
    clientFlowPayload = [(SISchemaClientFlow *)self clientFlowPayload];
    v5 = [clientFlowPayload copy];
    [dictionary setObject:v5 forKeyedSubscript:@"clientFlowPayload"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    clientFlowPayload = [(SISchemaClientFlow *)self clientFlowPayload];
    clientFlowPayload2 = [equalCopy clientFlowPayload];
    v7 = clientFlowPayload2;
    if ((clientFlowPayload != 0) != (clientFlowPayload2 == 0))
    {
      clientFlowPayload3 = [(SISchemaClientFlow *)self clientFlowPayload];
      if (!clientFlowPayload3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = clientFlowPayload3;
      clientFlowPayload4 = [(SISchemaClientFlow *)self clientFlowPayload];
      clientFlowPayload5 = [equalCopy clientFlowPayload];
      v12 = [clientFlowPayload4 isEqual:clientFlowPayload5];

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
  clientFlowPayload = [(SISchemaClientFlow *)self clientFlowPayload];

  if (clientFlowPayload)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end