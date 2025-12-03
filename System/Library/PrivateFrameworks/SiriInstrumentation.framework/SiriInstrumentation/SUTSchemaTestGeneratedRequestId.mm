@interface SUTSchemaTestGeneratedRequestId
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SUTSchemaTestGeneratedRequestId)initWithDictionary:(id)dictionary;
- (SUTSchemaTestGeneratedRequestId)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation SUTSchemaTestGeneratedRequestId

- (SUTSchemaTestGeneratedRequestId)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = SUTSchemaTestGeneratedRequestId;
  v5 = [(SUTSchemaTestGeneratedRequestId *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"requestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(SUTSchemaTestGeneratedRequestId *)v5 setRequestId:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (SUTSchemaTestGeneratedRequestId)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SUTSchemaTestGeneratedRequestId *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SUTSchemaTestGeneratedRequestId *)self dictionaryRepresentation];
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
  if (self->_requestId)
  {
    requestId = [(SUTSchemaTestGeneratedRequestId *)self requestId];
    dictionaryRepresentation = [requestId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"requestId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"requestId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    requestId = [(SUTSchemaTestGeneratedRequestId *)self requestId];
    requestId2 = [equalCopy requestId];
    v7 = requestId2;
    if ((requestId != 0) != (requestId2 == 0))
    {
      requestId3 = [(SUTSchemaTestGeneratedRequestId *)self requestId];
      if (!requestId3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = requestId3;
      requestId4 = [(SUTSchemaTestGeneratedRequestId *)self requestId];
      requestId5 = [equalCopy requestId];
      v12 = [requestId4 isEqual:requestId5];

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
  requestId = [(SUTSchemaTestGeneratedRequestId *)self requestId];

  if (requestId)
  {
    requestId2 = [(SUTSchemaTestGeneratedRequestId *)self requestId];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = SUTSchemaTestGeneratedRequestId;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(SUTSchemaTestGeneratedRequestId *)self requestId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(SUTSchemaTestGeneratedRequestId *)self deleteRequestId];
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