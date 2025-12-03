@interface SCSchemaSCClientEventMetadata
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SCSchemaSCClientEventMetadata)initWithDictionary:(id)dictionary;
- (SCSchemaSCClientEventMetadata)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation SCSchemaSCClientEventMetadata

- (SCSchemaSCClientEventMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = SCSchemaSCClientEventMetadata;
  v5 = [(SCSchemaSCClientEventMetadata *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"scId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(SCSchemaSCClientEventMetadata *)v5 setScId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"requestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(SCSchemaSCClientEventMetadata *)v5 setRequestId:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"subRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaUUID alloc] initWithDictionary:v10];
      [(SCSchemaSCClientEventMetadata *)v5 setSubRequestId:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (SCSchemaSCClientEventMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SCSchemaSCClientEventMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SCSchemaSCClientEventMetadata *)self dictionaryRepresentation];
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
    requestId = [(SCSchemaSCClientEventMetadata *)self requestId];
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

  if (self->_scId)
  {
    scId = [(SCSchemaSCClientEventMetadata *)self scId];
    dictionaryRepresentation2 = [scId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"scId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"scId"];
    }
  }

  if (self->_subRequestId)
  {
    subRequestId = [(SCSchemaSCClientEventMetadata *)self subRequestId];
    dictionaryRepresentation3 = [subRequestId dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"subRequestId"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"subRequestId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_scId hash];
  v4 = [(SISchemaUUID *)self->_requestId hash]^ v3;
  return v4 ^ [(SISchemaUUID *)self->_subRequestId hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  scId = [(SCSchemaSCClientEventMetadata *)self scId];
  scId2 = [equalCopy scId];
  if ((scId != 0) == (scId2 == 0))
  {
    goto LABEL_16;
  }

  scId3 = [(SCSchemaSCClientEventMetadata *)self scId];
  if (scId3)
  {
    v8 = scId3;
    scId4 = [(SCSchemaSCClientEventMetadata *)self scId];
    scId5 = [equalCopy scId];
    v11 = [scId4 isEqual:scId5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  scId = [(SCSchemaSCClientEventMetadata *)self requestId];
  scId2 = [equalCopy requestId];
  if ((scId != 0) == (scId2 == 0))
  {
    goto LABEL_16;
  }

  requestId = [(SCSchemaSCClientEventMetadata *)self requestId];
  if (requestId)
  {
    v13 = requestId;
    requestId2 = [(SCSchemaSCClientEventMetadata *)self requestId];
    requestId3 = [equalCopy requestId];
    v16 = [requestId2 isEqual:requestId3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  scId = [(SCSchemaSCClientEventMetadata *)self subRequestId];
  scId2 = [equalCopy subRequestId];
  if ((scId != 0) != (scId2 == 0))
  {
    subRequestId = [(SCSchemaSCClientEventMetadata *)self subRequestId];
    if (!subRequestId)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = subRequestId;
    subRequestId2 = [(SCSchemaSCClientEventMetadata *)self subRequestId];
    subRequestId3 = [equalCopy subRequestId];
    v21 = [subRequestId2 isEqual:subRequestId3];

    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_16:
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  scId = [(SCSchemaSCClientEventMetadata *)self scId];

  if (scId)
  {
    scId2 = [(SCSchemaSCClientEventMetadata *)self scId];
    PBDataWriterWriteSubmessage();
  }

  requestId = [(SCSchemaSCClientEventMetadata *)self requestId];

  if (requestId)
  {
    requestId2 = [(SCSchemaSCClientEventMetadata *)self requestId];
    PBDataWriterWriteSubmessage();
  }

  subRequestId = [(SCSchemaSCClientEventMetadata *)self subRequestId];

  v9 = toCopy;
  if (subRequestId)
  {
    subRequestId2 = [(SCSchemaSCClientEventMetadata *)self subRequestId];
    PBDataWriterWriteSubmessage();

    v9 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v16.receiver = self;
  v16.super_class = SCSchemaSCClientEventMetadata;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:policyCopy];
  scId = [(SCSchemaSCClientEventMetadata *)self scId];
  v7 = [scId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(SCSchemaSCClientEventMetadata *)self deleteScId];
  }

  requestId = [(SCSchemaSCClientEventMetadata *)self requestId];
  v10 = [requestId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(SCSchemaSCClientEventMetadata *)self deleteRequestId];
  }

  subRequestId = [(SCSchemaSCClientEventMetadata *)self subRequestId];
  v13 = [subRequestId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(SCSchemaSCClientEventMetadata *)self deleteSubRequestId];
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