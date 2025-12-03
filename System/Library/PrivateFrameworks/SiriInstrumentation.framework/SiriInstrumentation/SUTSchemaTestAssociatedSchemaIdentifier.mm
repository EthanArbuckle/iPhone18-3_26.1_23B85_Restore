@interface SUTSchemaTestAssociatedSchemaIdentifier
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SUTSchemaTestAssociatedSchemaIdentifier)initWithDictionary:(id)dictionary;
- (SUTSchemaTestAssociatedSchemaIdentifier)initWithJSON:(id)n;
- (SUTSchemaTestGeneratedRequestId)requestId;
- (SUTSchemaTestGeneratedTurnID)turnID;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)deleteRequestId;
- (void)deleteTurnID;
- (void)setRequestId:(id)id;
- (void)setTurnID:(id)d;
- (void)writeTo:(id)to;
@end

@implementation SUTSchemaTestAssociatedSchemaIdentifier

- (SUTSchemaTestAssociatedSchemaIdentifier)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = SUTSchemaTestAssociatedSchemaIdentifier;
  v5 = [(SUTSchemaTestAssociatedSchemaIdentifier *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"turnID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SUTSchemaTestGeneratedTurnID alloc] initWithDictionary:v6];
      [(SUTSchemaTestAssociatedSchemaIdentifier *)v5 setTurnID:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"requestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SUTSchemaTestGeneratedRequestId alloc] initWithDictionary:v8];
      [(SUTSchemaTestAssociatedSchemaIdentifier *)v5 setRequestId:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (SUTSchemaTestAssociatedSchemaIdentifier)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SUTSchemaTestAssociatedSchemaIdentifier *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SUTSchemaTestAssociatedSchemaIdentifier *)self dictionaryRepresentation];
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
    requestId = [(SUTSchemaTestAssociatedSchemaIdentifier *)self requestId];
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

  if (self->_turnID)
  {
    turnID = [(SUTSchemaTestAssociatedSchemaIdentifier *)self turnID];
    dictionaryRepresentation2 = [turnID dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"turnID"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"turnID"];
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
    goto LABEL_13;
  }

  whichIdentifier_Type = self->_whichIdentifier_Type;
  if (whichIdentifier_Type != [equalCopy whichIdentifier_Type])
  {
    goto LABEL_13;
  }

  turnID = [(SUTSchemaTestAssociatedSchemaIdentifier *)self turnID];
  turnID2 = [equalCopy turnID];
  if ((turnID != 0) == (turnID2 == 0))
  {
    goto LABEL_12;
  }

  turnID3 = [(SUTSchemaTestAssociatedSchemaIdentifier *)self turnID];
  if (turnID3)
  {
    v9 = turnID3;
    turnID4 = [(SUTSchemaTestAssociatedSchemaIdentifier *)self turnID];
    turnID5 = [equalCopy turnID];
    v12 = [turnID4 isEqual:turnID5];

    if (!v12)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  turnID = [(SUTSchemaTestAssociatedSchemaIdentifier *)self requestId];
  turnID2 = [equalCopy requestId];
  if ((turnID != 0) != (turnID2 == 0))
  {
    requestId = [(SUTSchemaTestAssociatedSchemaIdentifier *)self requestId];
    if (!requestId)
    {

LABEL_16:
      v18 = 1;
      goto LABEL_14;
    }

    v14 = requestId;
    requestId2 = [(SUTSchemaTestAssociatedSchemaIdentifier *)self requestId];
    requestId3 = [equalCopy requestId];
    v17 = [requestId2 isEqual:requestId3];

    if (v17)
    {
      goto LABEL_16;
    }
  }

  else
  {
LABEL_12:
  }

LABEL_13:
  v18 = 0;
LABEL_14:

  return v18;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  turnID = [(SUTSchemaTestAssociatedSchemaIdentifier *)self turnID];

  if (turnID)
  {
    turnID2 = [(SUTSchemaTestAssociatedSchemaIdentifier *)self turnID];
    PBDataWriterWriteSubmessage();
  }

  requestId = [(SUTSchemaTestAssociatedSchemaIdentifier *)self requestId];

  if (requestId)
  {
    requestId2 = [(SUTSchemaTestAssociatedSchemaIdentifier *)self requestId];
    PBDataWriterWriteSubmessage();
  }
}

- (void)deleteRequestId
{
  if (self->_whichIdentifier_Type == 102)
  {
    self->_whichIdentifier_Type = 0;
    self->_requestId = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (SUTSchemaTestGeneratedRequestId)requestId
{
  if (self->_whichIdentifier_Type == 102)
  {
    v3 = self->_requestId;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setRequestId:(id)id
{
  idCopy = id;
  turnID = self->_turnID;
  self->_turnID = 0;

  v6 = 102;
  if (!idCopy)
  {
    v6 = 0;
  }

  self->_whichIdentifier_Type = v6;
  requestId = self->_requestId;
  self->_requestId = idCopy;
}

- (void)deleteTurnID
{
  if (self->_whichIdentifier_Type == 101)
  {
    self->_whichIdentifier_Type = 0;
    self->_turnID = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (SUTSchemaTestGeneratedTurnID)turnID
{
  if (self->_whichIdentifier_Type == 101)
  {
    v3 = self->_turnID;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setTurnID:(id)d
{
  dCopy = d;
  requestId = self->_requestId;
  self->_requestId = 0;

  v6 = 101;
  if (!dCopy)
  {
    v6 = 0;
  }

  self->_whichIdentifier_Type = v6;
  turnID = self->_turnID;
  self->_turnID = dCopy;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = SUTSchemaTestAssociatedSchemaIdentifier;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  turnID = [(SUTSchemaTestAssociatedSchemaIdentifier *)self turnID];
  v7 = [turnID applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(SUTSchemaTestAssociatedSchemaIdentifier *)self deleteTurnID];
  }

  requestId = [(SUTSchemaTestAssociatedSchemaIdentifier *)self requestId];
  v10 = [requestId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(SUTSchemaTestAssociatedSchemaIdentifier *)self deleteRequestId];
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