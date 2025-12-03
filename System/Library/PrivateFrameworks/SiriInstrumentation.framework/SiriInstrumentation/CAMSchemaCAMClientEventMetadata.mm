@interface CAMSchemaCAMClientEventMetadata
- (BOOL)isEqual:(id)equal;
- (CAMSchemaCAMClientEventMetadata)initWithDictionary:(id)dictionary;
- (CAMSchemaCAMClientEventMetadata)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation CAMSchemaCAMClientEventMetadata

- (CAMSchemaCAMClientEventMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v19.receiver = self;
  v19.super_class = CAMSchemaCAMClientEventMetadata;
  v5 = [(CAMSchemaCAMClientEventMetadata *)&v19 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"camId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(CAMSchemaCAMClientEventMetadata *)v5 setCamId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"resultCandidateId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(CAMSchemaCAMClientEventMetadata *)v5 setResultCandidateId:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"feature"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAMSchemaCAMClientEventMetadata setFeature:](v5, "setFeature:", [v10 intValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"requestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [[SISchemaUUID alloc] initWithDictionary:v11];
      [(CAMSchemaCAMClientEventMetadata *)v5 setRequestId:v12];
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"trpId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [[SISchemaUUID alloc] initWithDictionary:v13];
      [(CAMSchemaCAMClientEventMetadata *)v5 setTrpId:v14];
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"subRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [[SISchemaUUID alloc] initWithDictionary:v15];
      [(CAMSchemaCAMClientEventMetadata *)v5 setSubRequestId:v16];
    }

    v17 = v5;
  }

  return v5;
}

- (CAMSchemaCAMClientEventMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(CAMSchemaCAMClientEventMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(CAMSchemaCAMClientEventMetadata *)self dictionaryRepresentation];
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
  if (self->_camId)
  {
    camId = [(CAMSchemaCAMClientEventMetadata *)self camId];
    dictionaryRepresentation = [camId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"camId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"camId"];
    }
  }

  if (*&self->_has)
  {
    v7 = [(CAMSchemaCAMClientEventMetadata *)self feature]- 1;
    if (v7 > 2)
    {
      v8 = @"CAMFEATURE_UNKNOWN";
    }

    else
    {
      v8 = off_1E78D2330[v7];
    }

    [dictionary setObject:v8 forKeyedSubscript:@"feature"];
  }

  if (self->_requestId)
  {
    requestId = [(CAMSchemaCAMClientEventMetadata *)self requestId];
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

  if (self->_resultCandidateId)
  {
    resultCandidateId = [(CAMSchemaCAMClientEventMetadata *)self resultCandidateId];
    v13 = [resultCandidateId copy];
    [dictionary setObject:v13 forKeyedSubscript:@"resultCandidateId"];
  }

  if (self->_subRequestId)
  {
    subRequestId = [(CAMSchemaCAMClientEventMetadata *)self subRequestId];
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

  if (self->_trpId)
  {
    trpId = [(CAMSchemaCAMClientEventMetadata *)self trpId];
    dictionaryRepresentation4 = [trpId dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"trpId"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"trpId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_camId hash];
  v4 = [(NSString *)self->_resultCandidateId hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_feature;
  }

  else
  {
    v5 = 0;
  }

  v6 = v4 ^ v3 ^ v5 ^ [(SISchemaUUID *)self->_requestId hash];
  v7 = [(SISchemaUUID *)self->_trpId hash];
  return v6 ^ v7 ^ [(SISchemaUUID *)self->_subRequestId hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_30;
  }

  camId = [(CAMSchemaCAMClientEventMetadata *)self camId];
  camId2 = [equalCopy camId];
  if ((camId != 0) == (camId2 == 0))
  {
    goto LABEL_29;
  }

  camId3 = [(CAMSchemaCAMClientEventMetadata *)self camId];
  if (camId3)
  {
    v8 = camId3;
    camId4 = [(CAMSchemaCAMClientEventMetadata *)self camId];
    camId5 = [equalCopy camId];
    v11 = [camId4 isEqual:camId5];

    if (!v11)
    {
      goto LABEL_30;
    }
  }

  else
  {
  }

  camId = [(CAMSchemaCAMClientEventMetadata *)self resultCandidateId];
  camId2 = [equalCopy resultCandidateId];
  if ((camId != 0) == (camId2 == 0))
  {
    goto LABEL_29;
  }

  resultCandidateId = [(CAMSchemaCAMClientEventMetadata *)self resultCandidateId];
  if (resultCandidateId)
  {
    v13 = resultCandidateId;
    resultCandidateId2 = [(CAMSchemaCAMClientEventMetadata *)self resultCandidateId];
    resultCandidateId3 = [equalCopy resultCandidateId];
    v16 = [resultCandidateId2 isEqual:resultCandidateId3];

    if (!v16)
    {
      goto LABEL_30;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[56] & 1))
  {
    goto LABEL_30;
  }

  if (*&self->_has)
  {
    feature = self->_feature;
    if (feature != [equalCopy feature])
    {
      goto LABEL_30;
    }
  }

  camId = [(CAMSchemaCAMClientEventMetadata *)self requestId];
  camId2 = [equalCopy requestId];
  if ((camId != 0) == (camId2 == 0))
  {
    goto LABEL_29;
  }

  requestId = [(CAMSchemaCAMClientEventMetadata *)self requestId];
  if (requestId)
  {
    v19 = requestId;
    requestId2 = [(CAMSchemaCAMClientEventMetadata *)self requestId];
    requestId3 = [equalCopy requestId];
    v22 = [requestId2 isEqual:requestId3];

    if (!v22)
    {
      goto LABEL_30;
    }
  }

  else
  {
  }

  camId = [(CAMSchemaCAMClientEventMetadata *)self trpId];
  camId2 = [equalCopy trpId];
  if ((camId != 0) == (camId2 == 0))
  {
    goto LABEL_29;
  }

  trpId = [(CAMSchemaCAMClientEventMetadata *)self trpId];
  if (trpId)
  {
    v24 = trpId;
    trpId2 = [(CAMSchemaCAMClientEventMetadata *)self trpId];
    trpId3 = [equalCopy trpId];
    v27 = [trpId2 isEqual:trpId3];

    if (!v27)
    {
      goto LABEL_30;
    }
  }

  else
  {
  }

  camId = [(CAMSchemaCAMClientEventMetadata *)self subRequestId];
  camId2 = [equalCopy subRequestId];
  if ((camId != 0) != (camId2 == 0))
  {
    subRequestId = [(CAMSchemaCAMClientEventMetadata *)self subRequestId];
    if (!subRequestId)
    {

LABEL_33:
      v33 = 1;
      goto LABEL_31;
    }

    v29 = subRequestId;
    subRequestId2 = [(CAMSchemaCAMClientEventMetadata *)self subRequestId];
    subRequestId3 = [equalCopy subRequestId];
    v32 = [subRequestId2 isEqual:subRequestId3];

    if (v32)
    {
      goto LABEL_33;
    }
  }

  else
  {
LABEL_29:
  }

LABEL_30:
  v33 = 0;
LABEL_31:

  return v33;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  camId = [(CAMSchemaCAMClientEventMetadata *)self camId];

  if (camId)
  {
    camId2 = [(CAMSchemaCAMClientEventMetadata *)self camId];
    PBDataWriterWriteSubmessage();
  }

  resultCandidateId = [(CAMSchemaCAMClientEventMetadata *)self resultCandidateId];

  if (resultCandidateId)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  requestId = [(CAMSchemaCAMClientEventMetadata *)self requestId];

  if (requestId)
  {
    requestId2 = [(CAMSchemaCAMClientEventMetadata *)self requestId];
    PBDataWriterWriteSubmessage();
  }

  trpId = [(CAMSchemaCAMClientEventMetadata *)self trpId];

  if (trpId)
  {
    trpId2 = [(CAMSchemaCAMClientEventMetadata *)self trpId];
    PBDataWriterWriteSubmessage();
  }

  subRequestId = [(CAMSchemaCAMClientEventMetadata *)self subRequestId];

  v12 = toCopy;
  if (subRequestId)
  {
    subRequestId2 = [(CAMSchemaCAMClientEventMetadata *)self subRequestId];
    PBDataWriterWriteSubmessage();

    v12 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v19.receiver = self;
  v19.super_class = CAMSchemaCAMClientEventMetadata;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:policyCopy];
  camId = [(CAMSchemaCAMClientEventMetadata *)self camId];
  v7 = [camId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(CAMSchemaCAMClientEventMetadata *)self deleteCamId];
  }

  requestId = [(CAMSchemaCAMClientEventMetadata *)self requestId];
  v10 = [requestId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(CAMSchemaCAMClientEventMetadata *)self deleteRequestId];
  }

  trpId = [(CAMSchemaCAMClientEventMetadata *)self trpId];
  v13 = [trpId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(CAMSchemaCAMClientEventMetadata *)self deleteTrpId];
  }

  subRequestId = [(CAMSchemaCAMClientEventMetadata *)self subRequestId];
  v16 = [subRequestId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(CAMSchemaCAMClientEventMetadata *)self deleteSubRequestId];
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