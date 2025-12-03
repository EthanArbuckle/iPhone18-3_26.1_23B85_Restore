@interface IFTSchemaIFTStatementResultPayload
- (BOOL)isEqual:(id)equal;
- (IFTSchemaIFTStatementResultPayload)initWithDictionary:(id)dictionary;
- (IFTSchemaIFTStatementResultPayload)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation IFTSchemaIFTStatementResultPayload

- (IFTSchemaIFTStatementResultPayload)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = IFTSchemaIFTStatementResultPayload;
  v5 = [(IFTSchemaIFTStatementResultPayload *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"outcome"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[IFTSchemaIFTStatementOutcome alloc] initWithDictionary:v6];
      [(IFTSchemaIFTStatementResultPayload *)v5 setOutcome:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"response"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[IFTSchemaIFTResponseManifest alloc] initWithDictionary:v8];
      [(IFTSchemaIFTStatementResultPayload *)v5 setResponse:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (IFTSchemaIFTStatementResultPayload)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaIFTStatementResultPayload *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaIFTStatementResultPayload *)self dictionaryRepresentation];
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
  if (self->_outcome)
  {
    outcome = [(IFTSchemaIFTStatementResultPayload *)self outcome];
    dictionaryRepresentation = [outcome dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"outcome"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"outcome"];
    }
  }

  if (self->_response)
  {
    response = [(IFTSchemaIFTStatementResultPayload *)self response];
    dictionaryRepresentation2 = [response dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"response"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"response"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  outcome = [(IFTSchemaIFTStatementResultPayload *)self outcome];
  outcome2 = [equalCopy outcome];
  if ((outcome != 0) == (outcome2 == 0))
  {
    goto LABEL_11;
  }

  outcome3 = [(IFTSchemaIFTStatementResultPayload *)self outcome];
  if (outcome3)
  {
    v8 = outcome3;
    outcome4 = [(IFTSchemaIFTStatementResultPayload *)self outcome];
    outcome5 = [equalCopy outcome];
    v11 = [outcome4 isEqual:outcome5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  outcome = [(IFTSchemaIFTStatementResultPayload *)self response];
  outcome2 = [equalCopy response];
  if ((outcome != 0) != (outcome2 == 0))
  {
    response = [(IFTSchemaIFTStatementResultPayload *)self response];
    if (!response)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = response;
    response2 = [(IFTSchemaIFTStatementResultPayload *)self response];
    response3 = [equalCopy response];
    v16 = [response2 isEqual:response3];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  outcome = [(IFTSchemaIFTStatementResultPayload *)self outcome];

  if (outcome)
  {
    outcome2 = [(IFTSchemaIFTStatementResultPayload *)self outcome];
    PBDataWriterWriteSubmessage();
  }

  response = [(IFTSchemaIFTStatementResultPayload *)self response];

  if (response)
  {
    response2 = [(IFTSchemaIFTStatementResultPayload *)self response];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = IFTSchemaIFTStatementResultPayload;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  outcome = [(IFTSchemaIFTStatementResultPayload *)self outcome];
  v7 = [outcome applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(IFTSchemaIFTStatementResultPayload *)self deleteOutcome];
  }

  response = [(IFTSchemaIFTStatementResultPayload *)self response];
  v10 = [response applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(IFTSchemaIFTStatementResultPayload *)self deleteResponse];
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