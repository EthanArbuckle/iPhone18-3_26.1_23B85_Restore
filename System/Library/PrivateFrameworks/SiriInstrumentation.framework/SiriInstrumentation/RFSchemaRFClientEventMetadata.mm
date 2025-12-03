@interface RFSchemaRFClientEventMetadata
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (RFSchemaRFClientEventMetadata)initWithDictionary:(id)dictionary;
- (RFSchemaRFClientEventMetadata)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation RFSchemaRFClientEventMetadata

- (RFSchemaRFClientEventMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = RFSchemaRFClientEventMetadata;
  v5 = [(RFSchemaRFClientEventMetadata *)&v16 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"turnId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(RFSchemaRFClientEventMetadata *)v5 setTurnId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"requestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(RFSchemaRFClientEventMetadata *)v5 setRequestId:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"subRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaUUID alloc] initWithDictionary:v10];
      [(RFSchemaRFClientEventMetadata *)v5 setSubRequestId:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"aceViewId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[SISchemaUUID alloc] initWithDictionary:v12];
      [(RFSchemaRFClientEventMetadata *)v5 setAceViewId:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (RFSchemaRFClientEventMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(RFSchemaRFClientEventMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(RFSchemaRFClientEventMetadata *)self dictionaryRepresentation];
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
  if (self->_aceViewId)
  {
    aceViewId = [(RFSchemaRFClientEventMetadata *)self aceViewId];
    dictionaryRepresentation = [aceViewId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"aceViewId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"aceViewId"];
    }
  }

  if (self->_requestId)
  {
    requestId = [(RFSchemaRFClientEventMetadata *)self requestId];
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

  if (self->_subRequestId)
  {
    subRequestId = [(RFSchemaRFClientEventMetadata *)self subRequestId];
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

  if (self->_turnId)
  {
    turnId = [(RFSchemaRFClientEventMetadata *)self turnId];
    dictionaryRepresentation4 = [turnId dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"turnId"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"turnId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_turnId hash];
  v4 = [(SISchemaUUID *)self->_requestId hash]^ v3;
  v5 = [(SISchemaUUID *)self->_subRequestId hash];
  return v4 ^ v5 ^ [(SISchemaUUID *)self->_aceViewId hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  turnId = [(RFSchemaRFClientEventMetadata *)self turnId];
  turnId2 = [equalCopy turnId];
  if ((turnId != 0) == (turnId2 == 0))
  {
    goto LABEL_21;
  }

  turnId3 = [(RFSchemaRFClientEventMetadata *)self turnId];
  if (turnId3)
  {
    v8 = turnId3;
    turnId4 = [(RFSchemaRFClientEventMetadata *)self turnId];
    turnId5 = [equalCopy turnId];
    v11 = [turnId4 isEqual:turnId5];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  turnId = [(RFSchemaRFClientEventMetadata *)self requestId];
  turnId2 = [equalCopy requestId];
  if ((turnId != 0) == (turnId2 == 0))
  {
    goto LABEL_21;
  }

  requestId = [(RFSchemaRFClientEventMetadata *)self requestId];
  if (requestId)
  {
    v13 = requestId;
    requestId2 = [(RFSchemaRFClientEventMetadata *)self requestId];
    requestId3 = [equalCopy requestId];
    v16 = [requestId2 isEqual:requestId3];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  turnId = [(RFSchemaRFClientEventMetadata *)self subRequestId];
  turnId2 = [equalCopy subRequestId];
  if ((turnId != 0) == (turnId2 == 0))
  {
    goto LABEL_21;
  }

  subRequestId = [(RFSchemaRFClientEventMetadata *)self subRequestId];
  if (subRequestId)
  {
    v18 = subRequestId;
    subRequestId2 = [(RFSchemaRFClientEventMetadata *)self subRequestId];
    subRequestId3 = [equalCopy subRequestId];
    v21 = [subRequestId2 isEqual:subRequestId3];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  turnId = [(RFSchemaRFClientEventMetadata *)self aceViewId];
  turnId2 = [equalCopy aceViewId];
  if ((turnId != 0) != (turnId2 == 0))
  {
    aceViewId = [(RFSchemaRFClientEventMetadata *)self aceViewId];
    if (!aceViewId)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = aceViewId;
    aceViewId2 = [(RFSchemaRFClientEventMetadata *)self aceViewId];
    aceViewId3 = [equalCopy aceViewId];
    v26 = [aceViewId2 isEqual:aceViewId3];

    if (v26)
    {
      goto LABEL_25;
    }
  }

  else
  {
LABEL_21:
  }

LABEL_22:
  v27 = 0;
LABEL_23:

  return v27;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  turnId = [(RFSchemaRFClientEventMetadata *)self turnId];

  if (turnId)
  {
    turnId2 = [(RFSchemaRFClientEventMetadata *)self turnId];
    PBDataWriterWriteSubmessage();
  }

  requestId = [(RFSchemaRFClientEventMetadata *)self requestId];

  if (requestId)
  {
    requestId2 = [(RFSchemaRFClientEventMetadata *)self requestId];
    PBDataWriterWriteSubmessage();
  }

  subRequestId = [(RFSchemaRFClientEventMetadata *)self subRequestId];

  if (subRequestId)
  {
    subRequestId2 = [(RFSchemaRFClientEventMetadata *)self subRequestId];
    PBDataWriterWriteSubmessage();
  }

  aceViewId = [(RFSchemaRFClientEventMetadata *)self aceViewId];

  v11 = toCopy;
  if (aceViewId)
  {
    aceViewId2 = [(RFSchemaRFClientEventMetadata *)self aceViewId];
    PBDataWriterWriteSubmessage();

    v11 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v19.receiver = self;
  v19.super_class = RFSchemaRFClientEventMetadata;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:policyCopy];
  turnId = [(RFSchemaRFClientEventMetadata *)self turnId];
  v7 = [turnId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(RFSchemaRFClientEventMetadata *)self deleteTurnId];
  }

  requestId = [(RFSchemaRFClientEventMetadata *)self requestId];
  v10 = [requestId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(RFSchemaRFClientEventMetadata *)self deleteRequestId];
  }

  subRequestId = [(RFSchemaRFClientEventMetadata *)self subRequestId];
  v13 = [subRequestId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(RFSchemaRFClientEventMetadata *)self deleteSubRequestId];
  }

  aceViewId = [(RFSchemaRFClientEventMetadata *)self aceViewId];
  v16 = [aceViewId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(RFSchemaRFClientEventMetadata *)self deleteAceViewId];
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