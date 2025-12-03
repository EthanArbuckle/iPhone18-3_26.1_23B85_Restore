@interface SISchemaTRPRequestLink
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaTRPRequestLink)initWithDictionary:(id)dictionary;
- (SISchemaTRPRequestLink)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation SISchemaTRPRequestLink

- (SISchemaTRPRequestLink)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = SISchemaTRPRequestLink;
  v5 = [(SISchemaTRPRequestLink *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"trpId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(SISchemaTRPRequestLink *)v5 setTrpId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"requestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(SISchemaTRPRequestLink *)v5 setRequestId:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"source"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaTRPRequestLink setSource:](v5, "setSource:", [v10 intValue]);
    }

    v11 = v5;
  }

  return v5;
}

- (SISchemaTRPRequestLink)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaTRPRequestLink *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaTRPRequestLink *)self dictionaryRepresentation];
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
    requestId = [(SISchemaTRPRequestLink *)self requestId];
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

  if (*&self->_has)
  {
    source = [(SISchemaTRPRequestLink *)self source];
    v8 = @"TRPREQUESTLINKSOURCE_UNKNOWN";
    if (source == 1)
    {
      v8 = @"TRPREQUESTLINKSOURCE_TURN_TAKING_MANAGER";
    }

    if (source == 2)
    {
      v9 = @"TRPREQUESTLINKSOURCE_CORE_SPEECH";
    }

    else
    {
      v9 = v8;
    }

    [dictionary setObject:v9 forKeyedSubscript:@"source"];
  }

  if (self->_trpId)
  {
    trpId = [(SISchemaTRPRequestLink *)self trpId];
    dictionaryRepresentation2 = [trpId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"trpId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"trpId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_trpId hash];
  v4 = [(SISchemaUUID *)self->_requestId hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_source;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  trpId = [(SISchemaTRPRequestLink *)self trpId];
  trpId2 = [equalCopy trpId];
  if ((trpId != 0) == (trpId2 == 0))
  {
    goto LABEL_11;
  }

  trpId3 = [(SISchemaTRPRequestLink *)self trpId];
  if (trpId3)
  {
    v8 = trpId3;
    trpId4 = [(SISchemaTRPRequestLink *)self trpId];
    trpId5 = [equalCopy trpId];
    v11 = [trpId4 isEqual:trpId5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  trpId = [(SISchemaTRPRequestLink *)self requestId];
  trpId2 = [equalCopy requestId];
  if ((trpId != 0) == (trpId2 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  requestId = [(SISchemaTRPRequestLink *)self requestId];
  if (requestId)
  {
    v13 = requestId;
    requestId2 = [(SISchemaTRPRequestLink *)self requestId];
    requestId3 = [equalCopy requestId];
    v16 = [requestId2 isEqual:requestId3];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) == (equalCopy[28] & 1))
  {
    if ((*&self->_has & 1) == 0 || (source = self->_source, source == [equalCopy source]))
    {
      v17 = 1;
      goto LABEL_13;
    }
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  trpId = [(SISchemaTRPRequestLink *)self trpId];

  if (trpId)
  {
    trpId2 = [(SISchemaTRPRequestLink *)self trpId];
    PBDataWriterWriteSubmessage();
  }

  requestId = [(SISchemaTRPRequestLink *)self requestId];

  if (requestId)
  {
    requestId2 = [(SISchemaTRPRequestLink *)self requestId];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = SISchemaTRPRequestLink;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  trpId = [(SISchemaTRPRequestLink *)self trpId];
  v7 = [trpId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(SISchemaTRPRequestLink *)self deleteTrpId];
  }

  requestId = [(SISchemaTRPRequestLink *)self requestId];
  v10 = [requestId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(SISchemaTRPRequestLink *)self deleteRequestId];
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