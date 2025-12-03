@interface ANCSchemaANCClientEventMetadata
- (ANCSchemaANCClientEventMetadata)initWithDictionary:(id)dictionary;
- (ANCSchemaANCClientEventMetadata)initWithJSON:(id)n;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation ANCSchemaANCClientEventMetadata

- (ANCSchemaANCClientEventMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = ANCSchemaANCClientEventMetadata;
  v5 = [(ANCSchemaANCClientEventMetadata *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"ancId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(ANCSchemaANCClientEventMetadata *)v5 setAncId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"requestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(ANCSchemaANCClientEventMetadata *)v5 setRequestId:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (ANCSchemaANCClientEventMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ANCSchemaANCClientEventMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ANCSchemaANCClientEventMetadata *)self dictionaryRepresentation];
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
  if (self->_ancId)
  {
    ancId = [(ANCSchemaANCClientEventMetadata *)self ancId];
    dictionaryRepresentation = [ancId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"ancId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"ancId"];
    }
  }

  if (self->_requestId)
  {
    requestId = [(ANCSchemaANCClientEventMetadata *)self requestId];
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

  ancId = [(ANCSchemaANCClientEventMetadata *)self ancId];
  ancId2 = [equalCopy ancId];
  if ((ancId != 0) == (ancId2 == 0))
  {
    goto LABEL_11;
  }

  ancId3 = [(ANCSchemaANCClientEventMetadata *)self ancId];
  if (ancId3)
  {
    v8 = ancId3;
    ancId4 = [(ANCSchemaANCClientEventMetadata *)self ancId];
    ancId5 = [equalCopy ancId];
    v11 = [ancId4 isEqual:ancId5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  ancId = [(ANCSchemaANCClientEventMetadata *)self requestId];
  ancId2 = [equalCopy requestId];
  if ((ancId != 0) != (ancId2 == 0))
  {
    requestId = [(ANCSchemaANCClientEventMetadata *)self requestId];
    if (!requestId)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = requestId;
    requestId2 = [(ANCSchemaANCClientEventMetadata *)self requestId];
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
  ancId = [(ANCSchemaANCClientEventMetadata *)self ancId];

  if (ancId)
  {
    ancId2 = [(ANCSchemaANCClientEventMetadata *)self ancId];
    PBDataWriterWriteSubmessage();
  }

  requestId = [(ANCSchemaANCClientEventMetadata *)self requestId];

  if (requestId)
  {
    requestId2 = [(ANCSchemaANCClientEventMetadata *)self requestId];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = ANCSchemaANCClientEventMetadata;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  ancId = [(ANCSchemaANCClientEventMetadata *)self ancId];
  v7 = [ancId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(ANCSchemaANCClientEventMetadata *)self deleteAncId];
  }

  requestId = [(ANCSchemaANCClientEventMetadata *)self requestId];
  v10 = [requestId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(ANCSchemaANCClientEventMetadata *)self deleteRequestId];
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