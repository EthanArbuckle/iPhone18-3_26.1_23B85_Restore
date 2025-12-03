@interface CAARSchemaCAARClientEventMetadata
- (BOOL)isEqual:(id)equal;
- (CAARSchemaCAARClientEventMetadata)initWithDictionary:(id)dictionary;
- (CAARSchemaCAARClientEventMetadata)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation CAARSchemaCAARClientEventMetadata

- (CAARSchemaCAARClientEventMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v18.receiver = self;
  v18.super_class = CAARSchemaCAARClientEventMetadata;
  v5 = [(CAARSchemaCAARClientEventMetadata *)&v18 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"caarId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(CAARSchemaCAARClientEventMetadata *)v5 setCaarId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"resultCandidateId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(CAARSchemaCAARClientEventMetadata *)v5 setResultCandidateId:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"requestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaUUID alloc] initWithDictionary:v10];
      [(CAARSchemaCAARClientEventMetadata *)v5 setRequestId:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"trpId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[SISchemaUUID alloc] initWithDictionary:v12];
      [(CAARSchemaCAARClientEventMetadata *)v5 setTrpId:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"subRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[SISchemaUUID alloc] initWithDictionary:v14];
      [(CAARSchemaCAARClientEventMetadata *)v5 setSubRequestId:v15];
    }

    v16 = v5;
  }

  return v5;
}

- (CAARSchemaCAARClientEventMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(CAARSchemaCAARClientEventMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(CAARSchemaCAARClientEventMetadata *)self dictionaryRepresentation];
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
  if (self->_caarId)
  {
    caarId = [(CAARSchemaCAARClientEventMetadata *)self caarId];
    dictionaryRepresentation = [caarId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"caarId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"caarId"];
    }
  }

  if (self->_requestId)
  {
    requestId = [(CAARSchemaCAARClientEventMetadata *)self requestId];
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
    resultCandidateId = [(CAARSchemaCAARClientEventMetadata *)self resultCandidateId];
    v11 = [resultCandidateId copy];
    [dictionary setObject:v11 forKeyedSubscript:@"resultCandidateId"];
  }

  if (self->_subRequestId)
  {
    subRequestId = [(CAARSchemaCAARClientEventMetadata *)self subRequestId];
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
    trpId = [(CAARSchemaCAARClientEventMetadata *)self trpId];
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
  v3 = [(SISchemaUUID *)self->_caarId hash];
  v4 = [(NSString *)self->_resultCandidateId hash]^ v3;
  v5 = [(SISchemaUUID *)self->_requestId hash];
  v6 = v4 ^ v5 ^ [(SISchemaUUID *)self->_trpId hash];
  return v6 ^ [(SISchemaUUID *)self->_subRequestId hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  caarId = [(CAARSchemaCAARClientEventMetadata *)self caarId];
  caarId2 = [equalCopy caarId];
  if ((caarId != 0) == (caarId2 == 0))
  {
    goto LABEL_26;
  }

  caarId3 = [(CAARSchemaCAARClientEventMetadata *)self caarId];
  if (caarId3)
  {
    v8 = caarId3;
    caarId4 = [(CAARSchemaCAARClientEventMetadata *)self caarId];
    caarId5 = [equalCopy caarId];
    v11 = [caarId4 isEqual:caarId5];

    if (!v11)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  caarId = [(CAARSchemaCAARClientEventMetadata *)self resultCandidateId];
  caarId2 = [equalCopy resultCandidateId];
  if ((caarId != 0) == (caarId2 == 0))
  {
    goto LABEL_26;
  }

  resultCandidateId = [(CAARSchemaCAARClientEventMetadata *)self resultCandidateId];
  if (resultCandidateId)
  {
    v13 = resultCandidateId;
    resultCandidateId2 = [(CAARSchemaCAARClientEventMetadata *)self resultCandidateId];
    resultCandidateId3 = [equalCopy resultCandidateId];
    v16 = [resultCandidateId2 isEqual:resultCandidateId3];

    if (!v16)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  caarId = [(CAARSchemaCAARClientEventMetadata *)self requestId];
  caarId2 = [equalCopy requestId];
  if ((caarId != 0) == (caarId2 == 0))
  {
    goto LABEL_26;
  }

  requestId = [(CAARSchemaCAARClientEventMetadata *)self requestId];
  if (requestId)
  {
    v18 = requestId;
    requestId2 = [(CAARSchemaCAARClientEventMetadata *)self requestId];
    requestId3 = [equalCopy requestId];
    v21 = [requestId2 isEqual:requestId3];

    if (!v21)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  caarId = [(CAARSchemaCAARClientEventMetadata *)self trpId];
  caarId2 = [equalCopy trpId];
  if ((caarId != 0) == (caarId2 == 0))
  {
    goto LABEL_26;
  }

  trpId = [(CAARSchemaCAARClientEventMetadata *)self trpId];
  if (trpId)
  {
    v23 = trpId;
    trpId2 = [(CAARSchemaCAARClientEventMetadata *)self trpId];
    trpId3 = [equalCopy trpId];
    v26 = [trpId2 isEqual:trpId3];

    if (!v26)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  caarId = [(CAARSchemaCAARClientEventMetadata *)self subRequestId];
  caarId2 = [equalCopy subRequestId];
  if ((caarId != 0) != (caarId2 == 0))
  {
    subRequestId = [(CAARSchemaCAARClientEventMetadata *)self subRequestId];
    if (!subRequestId)
    {

LABEL_30:
      v32 = 1;
      goto LABEL_28;
    }

    v28 = subRequestId;
    subRequestId2 = [(CAARSchemaCAARClientEventMetadata *)self subRequestId];
    subRequestId3 = [equalCopy subRequestId];
    v31 = [subRequestId2 isEqual:subRequestId3];

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
  caarId = [(CAARSchemaCAARClientEventMetadata *)self caarId];

  if (caarId)
  {
    caarId2 = [(CAARSchemaCAARClientEventMetadata *)self caarId];
    PBDataWriterWriteSubmessage();
  }

  resultCandidateId = [(CAARSchemaCAARClientEventMetadata *)self resultCandidateId];

  if (resultCandidateId)
  {
    PBDataWriterWriteStringField();
  }

  requestId = [(CAARSchemaCAARClientEventMetadata *)self requestId];

  if (requestId)
  {
    requestId2 = [(CAARSchemaCAARClientEventMetadata *)self requestId];
    PBDataWriterWriteSubmessage();
  }

  trpId = [(CAARSchemaCAARClientEventMetadata *)self trpId];

  if (trpId)
  {
    trpId2 = [(CAARSchemaCAARClientEventMetadata *)self trpId];
    PBDataWriterWriteSubmessage();
  }

  subRequestId = [(CAARSchemaCAARClientEventMetadata *)self subRequestId];

  v12 = toCopy;
  if (subRequestId)
  {
    subRequestId2 = [(CAARSchemaCAARClientEventMetadata *)self subRequestId];
    PBDataWriterWriteSubmessage();

    v12 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v19.receiver = self;
  v19.super_class = CAARSchemaCAARClientEventMetadata;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:policyCopy];
  caarId = [(CAARSchemaCAARClientEventMetadata *)self caarId];
  v7 = [caarId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(CAARSchemaCAARClientEventMetadata *)self deleteCaarId];
  }

  requestId = [(CAARSchemaCAARClientEventMetadata *)self requestId];
  v10 = [requestId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(CAARSchemaCAARClientEventMetadata *)self deleteRequestId];
  }

  trpId = [(CAARSchemaCAARClientEventMetadata *)self trpId];
  v13 = [trpId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(CAARSchemaCAARClientEventMetadata *)self deleteTrpId];
  }

  subRequestId = [(CAARSchemaCAARClientEventMetadata *)self subRequestId];
  v16 = [subRequestId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(CAARSchemaCAARClientEventMetadata *)self deleteSubRequestId];
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