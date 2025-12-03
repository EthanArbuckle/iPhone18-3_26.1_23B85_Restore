@interface NLRouterSchemaNLRouterClientEventMetadata
- (BOOL)isEqual:(id)equal;
- (NLRouterSchemaNLRouterClientEventMetadata)initWithDictionary:(id)dictionary;
- (NLRouterSchemaNLRouterClientEventMetadata)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation NLRouterSchemaNLRouterClientEventMetadata

- (NLRouterSchemaNLRouterClientEventMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = NLRouterSchemaNLRouterClientEventMetadata;
  v5 = [(NLRouterSchemaNLRouterClientEventMetadata *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"nlRouterId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(NLRouterSchemaNLRouterClientEventMetadata *)v5 setNlRouterId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"requestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(NLRouterSchemaNLRouterClientEventMetadata *)v5 setRequestId:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"trpId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaUUID alloc] initWithDictionary:v10];
      [(NLRouterSchemaNLRouterClientEventMetadata *)v5 setTrpId:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (NLRouterSchemaNLRouterClientEventMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(NLRouterSchemaNLRouterClientEventMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(NLRouterSchemaNLRouterClientEventMetadata *)self dictionaryRepresentation];
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
  if (self->_nlRouterId)
  {
    nlRouterId = [(NLRouterSchemaNLRouterClientEventMetadata *)self nlRouterId];
    dictionaryRepresentation = [nlRouterId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"nlRouterId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"nlRouterId"];
    }
  }

  if (self->_requestId)
  {
    requestId = [(NLRouterSchemaNLRouterClientEventMetadata *)self requestId];
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

  if (self->_trpId)
  {
    trpId = [(NLRouterSchemaNLRouterClientEventMetadata *)self trpId];
    dictionaryRepresentation3 = [trpId dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"trpId"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"trpId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_nlRouterId hash];
  v4 = [(SISchemaUUID *)self->_requestId hash]^ v3;
  return v4 ^ [(SISchemaUUID *)self->_trpId hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  nlRouterId = [(NLRouterSchemaNLRouterClientEventMetadata *)self nlRouterId];
  nlRouterId2 = [equalCopy nlRouterId];
  if ((nlRouterId != 0) == (nlRouterId2 == 0))
  {
    goto LABEL_16;
  }

  nlRouterId3 = [(NLRouterSchemaNLRouterClientEventMetadata *)self nlRouterId];
  if (nlRouterId3)
  {
    v8 = nlRouterId3;
    nlRouterId4 = [(NLRouterSchemaNLRouterClientEventMetadata *)self nlRouterId];
    nlRouterId5 = [equalCopy nlRouterId];
    v11 = [nlRouterId4 isEqual:nlRouterId5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  nlRouterId = [(NLRouterSchemaNLRouterClientEventMetadata *)self requestId];
  nlRouterId2 = [equalCopy requestId];
  if ((nlRouterId != 0) == (nlRouterId2 == 0))
  {
    goto LABEL_16;
  }

  requestId = [(NLRouterSchemaNLRouterClientEventMetadata *)self requestId];
  if (requestId)
  {
    v13 = requestId;
    requestId2 = [(NLRouterSchemaNLRouterClientEventMetadata *)self requestId];
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

  nlRouterId = [(NLRouterSchemaNLRouterClientEventMetadata *)self trpId];
  nlRouterId2 = [equalCopy trpId];
  if ((nlRouterId != 0) != (nlRouterId2 == 0))
  {
    trpId = [(NLRouterSchemaNLRouterClientEventMetadata *)self trpId];
    if (!trpId)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = trpId;
    trpId2 = [(NLRouterSchemaNLRouterClientEventMetadata *)self trpId];
    trpId3 = [equalCopy trpId];
    v21 = [trpId2 isEqual:trpId3];

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
  nlRouterId = [(NLRouterSchemaNLRouterClientEventMetadata *)self nlRouterId];

  if (nlRouterId)
  {
    nlRouterId2 = [(NLRouterSchemaNLRouterClientEventMetadata *)self nlRouterId];
    PBDataWriterWriteSubmessage();
  }

  requestId = [(NLRouterSchemaNLRouterClientEventMetadata *)self requestId];

  if (requestId)
  {
    requestId2 = [(NLRouterSchemaNLRouterClientEventMetadata *)self requestId];
    PBDataWriterWriteSubmessage();
  }

  trpId = [(NLRouterSchemaNLRouterClientEventMetadata *)self trpId];

  v9 = toCopy;
  if (trpId)
  {
    trpId2 = [(NLRouterSchemaNLRouterClientEventMetadata *)self trpId];
    PBDataWriterWriteSubmessage();

    v9 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v16.receiver = self;
  v16.super_class = NLRouterSchemaNLRouterClientEventMetadata;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:policyCopy];
  nlRouterId = [(NLRouterSchemaNLRouterClientEventMetadata *)self nlRouterId];
  v7 = [nlRouterId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(NLRouterSchemaNLRouterClientEventMetadata *)self deleteNlRouterId];
  }

  requestId = [(NLRouterSchemaNLRouterClientEventMetadata *)self requestId];
  v10 = [requestId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(NLRouterSchemaNLRouterClientEventMetadata *)self deleteRequestId];
  }

  trpId = [(NLRouterSchemaNLRouterClientEventMetadata *)self trpId];
  v13 = [trpId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(NLRouterSchemaNLRouterClientEventMetadata *)self deleteTrpId];
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