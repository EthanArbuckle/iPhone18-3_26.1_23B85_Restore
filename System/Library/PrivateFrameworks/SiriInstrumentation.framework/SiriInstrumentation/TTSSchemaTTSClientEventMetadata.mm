@interface TTSSchemaTTSClientEventMetadata
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (TTSSchemaTTSClientEventMetadata)initWithDictionary:(id)dictionary;
- (TTSSchemaTTSClientEventMetadata)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation TTSSchemaTTSClientEventMetadata

- (TTSSchemaTTSClientEventMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v18.receiver = self;
  v18.super_class = TTSSchemaTTSClientEventMetadata;
  v5 = [(TTSSchemaTTSClientEventMetadata *)&v18 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"ttsId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(TTSSchemaTTSClientEventMetadata *)v5 setTtsId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"requestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(TTSSchemaTTSClientEventMetadata *)v5 setRequestId:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"clientId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(TTSSchemaTTSClientEventMetadata *)v5 setClientId:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"subRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[SISchemaUUID alloc] initWithDictionary:v12];
      [(TTSSchemaTTSClientEventMetadata *)v5 setSubRequestId:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"aceViewId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[SISchemaUUID alloc] initWithDictionary:v14];
      [(TTSSchemaTTSClientEventMetadata *)v5 setAceViewId:v15];
    }

    v16 = v5;
  }

  return v5;
}

- (TTSSchemaTTSClientEventMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(TTSSchemaTTSClientEventMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(TTSSchemaTTSClientEventMetadata *)self dictionaryRepresentation];
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
    aceViewId = [(TTSSchemaTTSClientEventMetadata *)self aceViewId];
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

  if (self->_clientId)
  {
    clientId = [(TTSSchemaTTSClientEventMetadata *)self clientId];
    v8 = [clientId copy];
    [dictionary setObject:v8 forKeyedSubscript:@"clientId"];
  }

  if (self->_requestId)
  {
    requestId = [(TTSSchemaTTSClientEventMetadata *)self requestId];
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
    subRequestId = [(TTSSchemaTTSClientEventMetadata *)self subRequestId];
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

  if (self->_ttsId)
  {
    ttsId = [(TTSSchemaTTSClientEventMetadata *)self ttsId];
    dictionaryRepresentation4 = [ttsId dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"ttsId"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"ttsId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_ttsId hash];
  v4 = [(SISchemaUUID *)self->_requestId hash]^ v3;
  v5 = [(NSString *)self->_clientId hash];
  v6 = v4 ^ v5 ^ [(SISchemaUUID *)self->_subRequestId hash];
  return v6 ^ [(SISchemaUUID *)self->_aceViewId hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  ttsId = [(TTSSchemaTTSClientEventMetadata *)self ttsId];
  ttsId2 = [equalCopy ttsId];
  if ((ttsId != 0) == (ttsId2 == 0))
  {
    goto LABEL_26;
  }

  ttsId3 = [(TTSSchemaTTSClientEventMetadata *)self ttsId];
  if (ttsId3)
  {
    v8 = ttsId3;
    ttsId4 = [(TTSSchemaTTSClientEventMetadata *)self ttsId];
    ttsId5 = [equalCopy ttsId];
    v11 = [ttsId4 isEqual:ttsId5];

    if (!v11)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  ttsId = [(TTSSchemaTTSClientEventMetadata *)self requestId];
  ttsId2 = [equalCopy requestId];
  if ((ttsId != 0) == (ttsId2 == 0))
  {
    goto LABEL_26;
  }

  requestId = [(TTSSchemaTTSClientEventMetadata *)self requestId];
  if (requestId)
  {
    v13 = requestId;
    requestId2 = [(TTSSchemaTTSClientEventMetadata *)self requestId];
    requestId3 = [equalCopy requestId];
    v16 = [requestId2 isEqual:requestId3];

    if (!v16)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  ttsId = [(TTSSchemaTTSClientEventMetadata *)self clientId];
  ttsId2 = [equalCopy clientId];
  if ((ttsId != 0) == (ttsId2 == 0))
  {
    goto LABEL_26;
  }

  clientId = [(TTSSchemaTTSClientEventMetadata *)self clientId];
  if (clientId)
  {
    v18 = clientId;
    clientId2 = [(TTSSchemaTTSClientEventMetadata *)self clientId];
    clientId3 = [equalCopy clientId];
    v21 = [clientId2 isEqual:clientId3];

    if (!v21)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  ttsId = [(TTSSchemaTTSClientEventMetadata *)self subRequestId];
  ttsId2 = [equalCopy subRequestId];
  if ((ttsId != 0) == (ttsId2 == 0))
  {
    goto LABEL_26;
  }

  subRequestId = [(TTSSchemaTTSClientEventMetadata *)self subRequestId];
  if (subRequestId)
  {
    v23 = subRequestId;
    subRequestId2 = [(TTSSchemaTTSClientEventMetadata *)self subRequestId];
    subRequestId3 = [equalCopy subRequestId];
    v26 = [subRequestId2 isEqual:subRequestId3];

    if (!v26)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  ttsId = [(TTSSchemaTTSClientEventMetadata *)self aceViewId];
  ttsId2 = [equalCopy aceViewId];
  if ((ttsId != 0) != (ttsId2 == 0))
  {
    aceViewId = [(TTSSchemaTTSClientEventMetadata *)self aceViewId];
    if (!aceViewId)
    {

LABEL_30:
      v32 = 1;
      goto LABEL_28;
    }

    v28 = aceViewId;
    aceViewId2 = [(TTSSchemaTTSClientEventMetadata *)self aceViewId];
    aceViewId3 = [equalCopy aceViewId];
    v31 = [aceViewId2 isEqual:aceViewId3];

    if (v31)
    {
      goto LABEL_30;
    }
  }

  else
  {
LABEL_26:
  }

LABEL_27:
  v32 = 0;
LABEL_28:

  return v32;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  ttsId = [(TTSSchemaTTSClientEventMetadata *)self ttsId];

  if (ttsId)
  {
    ttsId2 = [(TTSSchemaTTSClientEventMetadata *)self ttsId];
    PBDataWriterWriteSubmessage();
  }

  requestId = [(TTSSchemaTTSClientEventMetadata *)self requestId];

  if (requestId)
  {
    requestId2 = [(TTSSchemaTTSClientEventMetadata *)self requestId];
    PBDataWriterWriteSubmessage();
  }

  clientId = [(TTSSchemaTTSClientEventMetadata *)self clientId];

  if (clientId)
  {
    PBDataWriterWriteStringField();
  }

  subRequestId = [(TTSSchemaTTSClientEventMetadata *)self subRequestId];

  if (subRequestId)
  {
    subRequestId2 = [(TTSSchemaTTSClientEventMetadata *)self subRequestId];
    PBDataWriterWriteSubmessage();
  }

  aceViewId = [(TTSSchemaTTSClientEventMetadata *)self aceViewId];

  v12 = toCopy;
  if (aceViewId)
  {
    aceViewId2 = [(TTSSchemaTTSClientEventMetadata *)self aceViewId];
    PBDataWriterWriteSubmessage();

    v12 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v19.receiver = self;
  v19.super_class = TTSSchemaTTSClientEventMetadata;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:policyCopy];
  ttsId = [(TTSSchemaTTSClientEventMetadata *)self ttsId];
  v7 = [ttsId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(TTSSchemaTTSClientEventMetadata *)self deleteTtsId];
  }

  requestId = [(TTSSchemaTTSClientEventMetadata *)self requestId];
  v10 = [requestId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(TTSSchemaTTSClientEventMetadata *)self deleteRequestId];
  }

  subRequestId = [(TTSSchemaTTSClientEventMetadata *)self subRequestId];
  v13 = [subRequestId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(TTSSchemaTTSClientEventMetadata *)self deleteSubRequestId];
  }

  aceViewId = [(TTSSchemaTTSClientEventMetadata *)self aceViewId];
  v16 = [aceViewId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(TTSSchemaTTSClientEventMetadata *)self deleteAceViewId];
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