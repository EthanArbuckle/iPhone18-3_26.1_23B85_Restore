@interface CNVSchemaCNVClientEventMetadata
- (BOOL)isEqual:(id)equal;
- (CNVSchemaCNVClientEventMetadata)initWithDictionary:(id)dictionary;
- (CNVSchemaCNVClientEventMetadata)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation CNVSchemaCNVClientEventMetadata

- (CNVSchemaCNVClientEventMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v18.receiver = self;
  v18.super_class = CNVSchemaCNVClientEventMetadata;
  v5 = [(CNVSchemaCNVClientEventMetadata *)&v18 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"cnvId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(CNVSchemaCNVClientEventMetadata *)v5 setCnvId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"resultCandidateId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(CNVSchemaCNVClientEventMetadata *)v5 setResultCandidateId:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"requestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaUUID alloc] initWithDictionary:v10];
      [(CNVSchemaCNVClientEventMetadata *)v5 setRequestId:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"trpId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[SISchemaUUID alloc] initWithDictionary:v12];
      [(CNVSchemaCNVClientEventMetadata *)v5 setTrpId:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"subRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[SISchemaUUID alloc] initWithDictionary:v14];
      [(CNVSchemaCNVClientEventMetadata *)v5 setSubRequestId:v15];
    }

    v16 = v5;
  }

  return v5;
}

- (CNVSchemaCNVClientEventMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(CNVSchemaCNVClientEventMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(CNVSchemaCNVClientEventMetadata *)self dictionaryRepresentation];
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
  if (self->_cnvId)
  {
    cnvId = [(CNVSchemaCNVClientEventMetadata *)self cnvId];
    dictionaryRepresentation = [cnvId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"cnvId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"cnvId"];
    }
  }

  if (self->_requestId)
  {
    requestId = [(CNVSchemaCNVClientEventMetadata *)self requestId];
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
    resultCandidateId = [(CNVSchemaCNVClientEventMetadata *)self resultCandidateId];
    v11 = [resultCandidateId copy];
    [dictionary setObject:v11 forKeyedSubscript:@"resultCandidateId"];
  }

  if (self->_subRequestId)
  {
    subRequestId = [(CNVSchemaCNVClientEventMetadata *)self subRequestId];
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
    trpId = [(CNVSchemaCNVClientEventMetadata *)self trpId];
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
  v3 = [(SISchemaUUID *)self->_cnvId hash];
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

  cnvId = [(CNVSchemaCNVClientEventMetadata *)self cnvId];
  cnvId2 = [equalCopy cnvId];
  if ((cnvId != 0) == (cnvId2 == 0))
  {
    goto LABEL_26;
  }

  cnvId3 = [(CNVSchemaCNVClientEventMetadata *)self cnvId];
  if (cnvId3)
  {
    v8 = cnvId3;
    cnvId4 = [(CNVSchemaCNVClientEventMetadata *)self cnvId];
    cnvId5 = [equalCopy cnvId];
    v11 = [cnvId4 isEqual:cnvId5];

    if (!v11)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  cnvId = [(CNVSchemaCNVClientEventMetadata *)self resultCandidateId];
  cnvId2 = [equalCopy resultCandidateId];
  if ((cnvId != 0) == (cnvId2 == 0))
  {
    goto LABEL_26;
  }

  resultCandidateId = [(CNVSchemaCNVClientEventMetadata *)self resultCandidateId];
  if (resultCandidateId)
  {
    v13 = resultCandidateId;
    resultCandidateId2 = [(CNVSchemaCNVClientEventMetadata *)self resultCandidateId];
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

  cnvId = [(CNVSchemaCNVClientEventMetadata *)self requestId];
  cnvId2 = [equalCopy requestId];
  if ((cnvId != 0) == (cnvId2 == 0))
  {
    goto LABEL_26;
  }

  requestId = [(CNVSchemaCNVClientEventMetadata *)self requestId];
  if (requestId)
  {
    v18 = requestId;
    requestId2 = [(CNVSchemaCNVClientEventMetadata *)self requestId];
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

  cnvId = [(CNVSchemaCNVClientEventMetadata *)self trpId];
  cnvId2 = [equalCopy trpId];
  if ((cnvId != 0) == (cnvId2 == 0))
  {
    goto LABEL_26;
  }

  trpId = [(CNVSchemaCNVClientEventMetadata *)self trpId];
  if (trpId)
  {
    v23 = trpId;
    trpId2 = [(CNVSchemaCNVClientEventMetadata *)self trpId];
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

  cnvId = [(CNVSchemaCNVClientEventMetadata *)self subRequestId];
  cnvId2 = [equalCopy subRequestId];
  if ((cnvId != 0) != (cnvId2 == 0))
  {
    subRequestId = [(CNVSchemaCNVClientEventMetadata *)self subRequestId];
    if (!subRequestId)
    {

LABEL_30:
      v32 = 1;
      goto LABEL_28;
    }

    v28 = subRequestId;
    subRequestId2 = [(CNVSchemaCNVClientEventMetadata *)self subRequestId];
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
  cnvId = [(CNVSchemaCNVClientEventMetadata *)self cnvId];

  if (cnvId)
  {
    cnvId2 = [(CNVSchemaCNVClientEventMetadata *)self cnvId];
    PBDataWriterWriteSubmessage();
  }

  resultCandidateId = [(CNVSchemaCNVClientEventMetadata *)self resultCandidateId];

  if (resultCandidateId)
  {
    PBDataWriterWriteStringField();
  }

  requestId = [(CNVSchemaCNVClientEventMetadata *)self requestId];

  if (requestId)
  {
    requestId2 = [(CNVSchemaCNVClientEventMetadata *)self requestId];
    PBDataWriterWriteSubmessage();
  }

  trpId = [(CNVSchemaCNVClientEventMetadata *)self trpId];

  if (trpId)
  {
    trpId2 = [(CNVSchemaCNVClientEventMetadata *)self trpId];
    PBDataWriterWriteSubmessage();
  }

  subRequestId = [(CNVSchemaCNVClientEventMetadata *)self subRequestId];

  v12 = toCopy;
  if (subRequestId)
  {
    subRequestId2 = [(CNVSchemaCNVClientEventMetadata *)self subRequestId];
    PBDataWriterWriteSubmessage();

    v12 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v19.receiver = self;
  v19.super_class = CNVSchemaCNVClientEventMetadata;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:policyCopy];
  cnvId = [(CNVSchemaCNVClientEventMetadata *)self cnvId];
  v7 = [cnvId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(CNVSchemaCNVClientEventMetadata *)self deleteCnvId];
  }

  requestId = [(CNVSchemaCNVClientEventMetadata *)self requestId];
  v10 = [requestId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(CNVSchemaCNVClientEventMetadata *)self deleteRequestId];
  }

  trpId = [(CNVSchemaCNVClientEventMetadata *)self trpId];
  v13 = [trpId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(CNVSchemaCNVClientEventMetadata *)self deleteTrpId];
  }

  subRequestId = [(CNVSchemaCNVClientEventMetadata *)self subRequestId];
  v16 = [subRequestId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(CNVSchemaCNVClientEventMetadata *)self deleteSubRequestId];
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