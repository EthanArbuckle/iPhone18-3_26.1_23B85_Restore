@interface HALSchemaHALClientEventMetadata
- (BOOL)isEqual:(id)equal;
- (HALSchemaHALClientEventMetadata)initWithDictionary:(id)dictionary;
- (HALSchemaHALClientEventMetadata)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation HALSchemaHALClientEventMetadata

- (HALSchemaHALClientEventMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = HALSchemaHALClientEventMetadata;
  v5 = [(HALSchemaHALClientEventMetadata *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"halId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(HALSchemaHALClientEventMetadata *)v5 setHalId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"requestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(HALSchemaHALClientEventMetadata *)v5 setRequestId:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (HALSchemaHALClientEventMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(HALSchemaHALClientEventMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(HALSchemaHALClientEventMetadata *)self dictionaryRepresentation];
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
  if (self->_halId)
  {
    halId = [(HALSchemaHALClientEventMetadata *)self halId];
    dictionaryRepresentation = [halId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"halId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"halId"];
    }
  }

  if (self->_requestId)
  {
    requestId = [(HALSchemaHALClientEventMetadata *)self requestId];
    dictionaryRepresentation2 = [requestId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"requestId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"requestId"];
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

  halId = [(HALSchemaHALClientEventMetadata *)self halId];
  halId2 = [equalCopy halId];
  if ((halId != 0) == (halId2 == 0))
  {
    goto LABEL_11;
  }

  halId3 = [(HALSchemaHALClientEventMetadata *)self halId];
  if (halId3)
  {
    v8 = halId3;
    halId4 = [(HALSchemaHALClientEventMetadata *)self halId];
    halId5 = [equalCopy halId];
    v11 = [halId4 isEqual:halId5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  halId = [(HALSchemaHALClientEventMetadata *)self requestId];
  halId2 = [equalCopy requestId];
  if ((halId != 0) != (halId2 == 0))
  {
    requestId = [(HALSchemaHALClientEventMetadata *)self requestId];
    if (!requestId)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = requestId;
    requestId2 = [(HALSchemaHALClientEventMetadata *)self requestId];
    requestId3 = [equalCopy requestId];
    v16 = [requestId2 isEqual:requestId3];

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
  halId = [(HALSchemaHALClientEventMetadata *)self halId];

  if (halId)
  {
    halId2 = [(HALSchemaHALClientEventMetadata *)self halId];
    PBDataWriterWriteSubmessage();
  }

  requestId = [(HALSchemaHALClientEventMetadata *)self requestId];

  if (requestId)
  {
    requestId2 = [(HALSchemaHALClientEventMetadata *)self requestId];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = HALSchemaHALClientEventMetadata;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  halId = [(HALSchemaHALClientEventMetadata *)self halId];
  v7 = [halId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(HALSchemaHALClientEventMetadata *)self deleteHalId];
  }

  requestId = [(HALSchemaHALClientEventMetadata *)self requestId];
  v10 = [requestId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(HALSchemaHALClientEventMetadata *)self deleteRequestId];
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