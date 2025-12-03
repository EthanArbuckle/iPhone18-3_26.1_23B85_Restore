@interface NLXSchemaNLXClientEventMetadata
- (BOOL)isEqual:(id)equal;
- (NLXSchemaNLXClientEventMetadata)initWithDictionary:(id)dictionary;
- (NLXSchemaNLXClientEventMetadata)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation NLXSchemaNLXClientEventMetadata

- (NLXSchemaNLXClientEventMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v19.receiver = self;
  v19.super_class = NLXSchemaNLXClientEventMetadata;
  v5 = [(NLXSchemaNLXClientEventMetadata *)&v19 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"nlId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(NLXSchemaNLXClientEventMetadata *)v5 setNlId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"resultCandidateId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(NLXSchemaNLXClientEventMetadata *)v5 setResultCandidateId:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"componentInvocationSource"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLXSchemaNLXClientEventMetadata setComponentInvocationSource:](v5, "setComponentInvocationSource:", [v10 intValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"requestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [[SISchemaUUID alloc] initWithDictionary:v11];
      [(NLXSchemaNLXClientEventMetadata *)v5 setRequestId:v12];
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"trpId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [[SISchemaUUID alloc] initWithDictionary:v13];
      [(NLXSchemaNLXClientEventMetadata *)v5 setTrpId:v14];
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"subRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [[SISchemaUUID alloc] initWithDictionary:v15];
      [(NLXSchemaNLXClientEventMetadata *)v5 setSubRequestId:v16];
    }

    v17 = v5;
  }

  return v5;
}

- (NLXSchemaNLXClientEventMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(NLXSchemaNLXClientEventMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(NLXSchemaNLXClientEventMetadata *)self dictionaryRepresentation];
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
  if (*&self->_has)
  {
    v4 = [(NLXSchemaNLXClientEventMetadata *)self componentInvocationSource]- 1;
    if (v4 > 0xC)
    {
      v5 = @"COMPONENTINVOCATIONSOURCE_UNKNOWN";
    }

    else
    {
      v5 = off_1E78DC800[v4];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"componentInvocationSource"];
  }

  if (self->_nlId)
  {
    nlId = [(NLXSchemaNLXClientEventMetadata *)self nlId];
    dictionaryRepresentation = [nlId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"nlId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"nlId"];
    }
  }

  if (self->_requestId)
  {
    requestId = [(NLXSchemaNLXClientEventMetadata *)self requestId];
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
    resultCandidateId = [(NLXSchemaNLXClientEventMetadata *)self resultCandidateId];
    v13 = [resultCandidateId copy];
    [dictionary setObject:v13 forKeyedSubscript:@"resultCandidateId"];
  }

  if (self->_subRequestId)
  {
    subRequestId = [(NLXSchemaNLXClientEventMetadata *)self subRequestId];
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
    trpId = [(NLXSchemaNLXClientEventMetadata *)self trpId];
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
  v3 = [(SISchemaUUID *)self->_nlId hash];
  v4 = [(NSString *)self->_resultCandidateId hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_componentInvocationSource;
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

  nlId = [(NLXSchemaNLXClientEventMetadata *)self nlId];
  nlId2 = [equalCopy nlId];
  if ((nlId != 0) == (nlId2 == 0))
  {
    goto LABEL_29;
  }

  nlId3 = [(NLXSchemaNLXClientEventMetadata *)self nlId];
  if (nlId3)
  {
    v8 = nlId3;
    nlId4 = [(NLXSchemaNLXClientEventMetadata *)self nlId];
    nlId5 = [equalCopy nlId];
    v11 = [nlId4 isEqual:nlId5];

    if (!v11)
    {
      goto LABEL_30;
    }
  }

  else
  {
  }

  nlId = [(NLXSchemaNLXClientEventMetadata *)self resultCandidateId];
  nlId2 = [equalCopy resultCandidateId];
  if ((nlId != 0) == (nlId2 == 0))
  {
    goto LABEL_29;
  }

  resultCandidateId = [(NLXSchemaNLXClientEventMetadata *)self resultCandidateId];
  if (resultCandidateId)
  {
    v13 = resultCandidateId;
    resultCandidateId2 = [(NLXSchemaNLXClientEventMetadata *)self resultCandidateId];
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
    componentInvocationSource = self->_componentInvocationSource;
    if (componentInvocationSource != [equalCopy componentInvocationSource])
    {
      goto LABEL_30;
    }
  }

  nlId = [(NLXSchemaNLXClientEventMetadata *)self requestId];
  nlId2 = [equalCopy requestId];
  if ((nlId != 0) == (nlId2 == 0))
  {
    goto LABEL_29;
  }

  requestId = [(NLXSchemaNLXClientEventMetadata *)self requestId];
  if (requestId)
  {
    v19 = requestId;
    requestId2 = [(NLXSchemaNLXClientEventMetadata *)self requestId];
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

  nlId = [(NLXSchemaNLXClientEventMetadata *)self trpId];
  nlId2 = [equalCopy trpId];
  if ((nlId != 0) == (nlId2 == 0))
  {
    goto LABEL_29;
  }

  trpId = [(NLXSchemaNLXClientEventMetadata *)self trpId];
  if (trpId)
  {
    v24 = trpId;
    trpId2 = [(NLXSchemaNLXClientEventMetadata *)self trpId];
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

  nlId = [(NLXSchemaNLXClientEventMetadata *)self subRequestId];
  nlId2 = [equalCopy subRequestId];
  if ((nlId != 0) != (nlId2 == 0))
  {
    subRequestId = [(NLXSchemaNLXClientEventMetadata *)self subRequestId];
    if (!subRequestId)
    {

LABEL_33:
      v33 = 1;
      goto LABEL_31;
    }

    v29 = subRequestId;
    subRequestId2 = [(NLXSchemaNLXClientEventMetadata *)self subRequestId];
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
  nlId = [(NLXSchemaNLXClientEventMetadata *)self nlId];

  if (nlId)
  {
    nlId2 = [(NLXSchemaNLXClientEventMetadata *)self nlId];
    PBDataWriterWriteSubmessage();
  }

  resultCandidateId = [(NLXSchemaNLXClientEventMetadata *)self resultCandidateId];

  if (resultCandidateId)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  requestId = [(NLXSchemaNLXClientEventMetadata *)self requestId];

  if (requestId)
  {
    requestId2 = [(NLXSchemaNLXClientEventMetadata *)self requestId];
    PBDataWriterWriteSubmessage();
  }

  trpId = [(NLXSchemaNLXClientEventMetadata *)self trpId];

  if (trpId)
  {
    trpId2 = [(NLXSchemaNLXClientEventMetadata *)self trpId];
    PBDataWriterWriteSubmessage();
  }

  subRequestId = [(NLXSchemaNLXClientEventMetadata *)self subRequestId];

  v12 = toCopy;
  if (subRequestId)
  {
    subRequestId2 = [(NLXSchemaNLXClientEventMetadata *)self subRequestId];
    PBDataWriterWriteSubmessage();

    v12 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v19.receiver = self;
  v19.super_class = NLXSchemaNLXClientEventMetadata;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:policyCopy];
  nlId = [(NLXSchemaNLXClientEventMetadata *)self nlId];
  v7 = [nlId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(NLXSchemaNLXClientEventMetadata *)self deleteNlId];
  }

  requestId = [(NLXSchemaNLXClientEventMetadata *)self requestId];
  v10 = [requestId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(NLXSchemaNLXClientEventMetadata *)self deleteRequestId];
  }

  trpId = [(NLXSchemaNLXClientEventMetadata *)self trpId];
  v13 = [trpId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(NLXSchemaNLXClientEventMetadata *)self deleteTrpId];
  }

  subRequestId = [(NLXSchemaNLXClientEventMetadata *)self subRequestId];
  v16 = [subRequestId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(NLXSchemaNLXClientEventMetadata *)self deleteSubRequestId];
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