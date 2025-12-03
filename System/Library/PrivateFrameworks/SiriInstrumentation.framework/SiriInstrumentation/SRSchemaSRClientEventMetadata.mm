@interface SRSchemaSRClientEventMetadata
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SRSchemaSRClientEventMetadata)initWithDictionary:(id)dictionary;
- (SRSchemaSRClientEventMetadata)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation SRSchemaSRClientEventMetadata

- (SRSchemaSRClientEventMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = SRSchemaSRClientEventMetadata;
  v5 = [(SRSchemaSRClientEventMetadata *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"srId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(SRSchemaSRClientEventMetadata *)v5 setSrId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"requestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(SRSchemaSRClientEventMetadata *)v5 setRequestId:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"subRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaUUID alloc] initWithDictionary:v10];
      [(SRSchemaSRClientEventMetadata *)v5 setSubRequestId:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (SRSchemaSRClientEventMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SRSchemaSRClientEventMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SRSchemaSRClientEventMetadata *)self dictionaryRepresentation];
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
    requestId = [(SRSchemaSRClientEventMetadata *)self requestId];
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

  if (self->_srId)
  {
    srId = [(SRSchemaSRClientEventMetadata *)self srId];
    dictionaryRepresentation2 = [srId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"srId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"srId"];
    }
  }

  if (self->_subRequestId)
  {
    subRequestId = [(SRSchemaSRClientEventMetadata *)self subRequestId];
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
  v3 = [(SISchemaUUID *)self->_srId hash];
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

  srId = [(SRSchemaSRClientEventMetadata *)self srId];
  srId2 = [equalCopy srId];
  if ((srId != 0) == (srId2 == 0))
  {
    goto LABEL_16;
  }

  srId3 = [(SRSchemaSRClientEventMetadata *)self srId];
  if (srId3)
  {
    v8 = srId3;
    srId4 = [(SRSchemaSRClientEventMetadata *)self srId];
    srId5 = [equalCopy srId];
    v11 = [srId4 isEqual:srId5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  srId = [(SRSchemaSRClientEventMetadata *)self requestId];
  srId2 = [equalCopy requestId];
  if ((srId != 0) == (srId2 == 0))
  {
    goto LABEL_16;
  }

  requestId = [(SRSchemaSRClientEventMetadata *)self requestId];
  if (requestId)
  {
    v13 = requestId;
    requestId2 = [(SRSchemaSRClientEventMetadata *)self requestId];
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

  srId = [(SRSchemaSRClientEventMetadata *)self subRequestId];
  srId2 = [equalCopy subRequestId];
  if ((srId != 0) != (srId2 == 0))
  {
    subRequestId = [(SRSchemaSRClientEventMetadata *)self subRequestId];
    if (!subRequestId)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = subRequestId;
    subRequestId2 = [(SRSchemaSRClientEventMetadata *)self subRequestId];
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
  srId = [(SRSchemaSRClientEventMetadata *)self srId];

  if (srId)
  {
    srId2 = [(SRSchemaSRClientEventMetadata *)self srId];
    PBDataWriterWriteSubmessage();
  }

  requestId = [(SRSchemaSRClientEventMetadata *)self requestId];

  if (requestId)
  {
    requestId2 = [(SRSchemaSRClientEventMetadata *)self requestId];
    PBDataWriterWriteSubmessage();
  }

  subRequestId = [(SRSchemaSRClientEventMetadata *)self subRequestId];

  v9 = toCopy;
  if (subRequestId)
  {
    subRequestId2 = [(SRSchemaSRClientEventMetadata *)self subRequestId];
    PBDataWriterWriteSubmessage();

    v9 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v16.receiver = self;
  v16.super_class = SRSchemaSRClientEventMetadata;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:policyCopy];
  srId = [(SRSchemaSRClientEventMetadata *)self srId];
  v7 = [srId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(SRSchemaSRClientEventMetadata *)self deleteSrId];
  }

  requestId = [(SRSchemaSRClientEventMetadata *)self requestId];
  v10 = [requestId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(SRSchemaSRClientEventMetadata *)self deleteRequestId];
  }

  subRequestId = [(SRSchemaSRClientEventMetadata *)self subRequestId];
  v13 = [subRequestId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(SRSchemaSRClientEventMetadata *)self deleteSubRequestId];
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