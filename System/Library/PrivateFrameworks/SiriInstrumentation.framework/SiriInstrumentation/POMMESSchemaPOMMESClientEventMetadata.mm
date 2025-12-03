@interface POMMESSchemaPOMMESClientEventMetadata
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (POMMESSchemaPOMMESClientEventMetadata)initWithDictionary:(id)dictionary;
- (POMMESSchemaPOMMESClientEventMetadata)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasSearchToolGlobalSearchResultId:(BOOL)id;
- (void)writeTo:(id)to;
@end

@implementation POMMESSchemaPOMMESClientEventMetadata

- (POMMESSchemaPOMMESClientEventMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v22.receiver = self;
  v22.super_class = POMMESSchemaPOMMESClientEventMetadata;
  v5 = [(POMMESSchemaPOMMESClientEventMetadata *)&v22 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"pommesId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(POMMESSchemaPOMMESClientEventMetadata *)v5 setPommesId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"resultCandidateId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(POMMESSchemaPOMMESClientEventMetadata *)v5 setResultCandidateId:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"requestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaUUID alloc] initWithDictionary:v10];
      [(POMMESSchemaPOMMESClientEventMetadata *)v5 setRequestId:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"trpId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[SISchemaUUID alloc] initWithDictionary:v12];
      [(POMMESSchemaPOMMESClientEventMetadata *)v5 setTrpId:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"originProcess"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESClientEventMetadata setOriginProcess:](v5, "setOriginProcess:", [v14 intValue]);
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"subRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [[SISchemaUUID alloc] initWithDictionary:v15];
      [(POMMESSchemaPOMMESClientEventMetadata *)v5 setSubRequestId:v16];
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"searchToolId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [[SISchemaUUID alloc] initWithDictionary:v17];
      [(POMMESSchemaPOMMESClientEventMetadata *)v5 setSearchToolId:v18];
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"searchToolGlobalSearchResultId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESClientEventMetadata setSearchToolGlobalSearchResultId:](v5, "setSearchToolGlobalSearchResultId:", [v19 intValue]);
    }

    v20 = v5;
  }

  return v5;
}

- (POMMESSchemaPOMMESClientEventMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(POMMESSchemaPOMMESClientEventMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(POMMESSchemaPOMMESClientEventMetadata *)self dictionaryRepresentation];
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
    originProcess = [(POMMESSchemaPOMMESClientEventMetadata *)self originProcess];
    v5 = @"POMMESCLIENTORIGINPROCESS_UNKNOWN";
    if (originProcess == 1)
    {
      v5 = @"POMMESCLIENTORIGINPROCESS_SIRI";
    }

    if (originProcess == 2)
    {
      v6 = @"POMMESCLIENTORIGINPROCESS_MAINTENANCE";
    }

    else
    {
      v6 = v5;
    }

    [dictionary setObject:v6 forKeyedSubscript:@"originProcess"];
  }

  if (self->_pommesId)
  {
    pommesId = [(POMMESSchemaPOMMESClientEventMetadata *)self pommesId];
    dictionaryRepresentation = [pommesId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"pommesId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"pommesId"];
    }
  }

  if (self->_requestId)
  {
    requestId = [(POMMESSchemaPOMMESClientEventMetadata *)self requestId];
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
    resultCandidateId = [(POMMESSchemaPOMMESClientEventMetadata *)self resultCandidateId];
    v14 = [resultCandidateId copy];
    [dictionary setObject:v14 forKeyedSubscript:@"resultCandidateId"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithInt:{-[POMMESSchemaPOMMESClientEventMetadata searchToolGlobalSearchResultId](self, "searchToolGlobalSearchResultId")}];
    [dictionary setObject:v15 forKeyedSubscript:@"searchToolGlobalSearchResultId"];
  }

  if (self->_searchToolId)
  {
    searchToolId = [(POMMESSchemaPOMMESClientEventMetadata *)self searchToolId];
    dictionaryRepresentation3 = [searchToolId dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"searchToolId"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"searchToolId"];
    }
  }

  if (self->_subRequestId)
  {
    subRequestId = [(POMMESSchemaPOMMESClientEventMetadata *)self subRequestId];
    dictionaryRepresentation4 = [subRequestId dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"subRequestId"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"subRequestId"];
    }
  }

  if (self->_trpId)
  {
    trpId = [(POMMESSchemaPOMMESClientEventMetadata *)self trpId];
    dictionaryRepresentation5 = [trpId dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"trpId"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"trpId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_pommesId hash];
  v4 = [(NSString *)self->_resultCandidateId hash];
  v5 = [(SISchemaUUID *)self->_requestId hash];
  v6 = [(SISchemaUUID *)self->_trpId hash];
  if (*&self->_has)
  {
    v7 = 2654435761 * self->_originProcess;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(SISchemaUUID *)self->_subRequestId hash];
  v9 = [(SISchemaUUID *)self->_searchToolId hash];
  if ((*&self->_has & 2) != 0)
  {
    v10 = 2654435761 * self->_searchToolGlobalSearchResultId;
  }

  else
  {
    v10 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_35;
  }

  pommesId = [(POMMESSchemaPOMMESClientEventMetadata *)self pommesId];
  pommesId2 = [equalCopy pommesId];
  if ((pommesId != 0) == (pommesId2 == 0))
  {
    goto LABEL_34;
  }

  pommesId3 = [(POMMESSchemaPOMMESClientEventMetadata *)self pommesId];
  if (pommesId3)
  {
    v8 = pommesId3;
    pommesId4 = [(POMMESSchemaPOMMESClientEventMetadata *)self pommesId];
    pommesId5 = [equalCopy pommesId];
    v11 = [pommesId4 isEqual:pommesId5];

    if (!v11)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  pommesId = [(POMMESSchemaPOMMESClientEventMetadata *)self resultCandidateId];
  pommesId2 = [equalCopy resultCandidateId];
  if ((pommesId != 0) == (pommesId2 == 0))
  {
    goto LABEL_34;
  }

  resultCandidateId = [(POMMESSchemaPOMMESClientEventMetadata *)self resultCandidateId];
  if (resultCandidateId)
  {
    v13 = resultCandidateId;
    resultCandidateId2 = [(POMMESSchemaPOMMESClientEventMetadata *)self resultCandidateId];
    resultCandidateId3 = [equalCopy resultCandidateId];
    v16 = [resultCandidateId2 isEqual:resultCandidateId3];

    if (!v16)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  pommesId = [(POMMESSchemaPOMMESClientEventMetadata *)self requestId];
  pommesId2 = [equalCopy requestId];
  if ((pommesId != 0) == (pommesId2 == 0))
  {
    goto LABEL_34;
  }

  requestId = [(POMMESSchemaPOMMESClientEventMetadata *)self requestId];
  if (requestId)
  {
    v18 = requestId;
    requestId2 = [(POMMESSchemaPOMMESClientEventMetadata *)self requestId];
    requestId3 = [equalCopy requestId];
    v21 = [requestId2 isEqual:requestId3];

    if (!v21)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  pommesId = [(POMMESSchemaPOMMESClientEventMetadata *)self trpId];
  pommesId2 = [equalCopy trpId];
  if ((pommesId != 0) == (pommesId2 == 0))
  {
    goto LABEL_34;
  }

  trpId = [(POMMESSchemaPOMMESClientEventMetadata *)self trpId];
  if (trpId)
  {
    v23 = trpId;
    trpId2 = [(POMMESSchemaPOMMESClientEventMetadata *)self trpId];
    trpId3 = [equalCopy trpId];
    v26 = [trpId2 isEqual:trpId3];

    if (!v26)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[68] & 1))
  {
    goto LABEL_35;
  }

  if (*&self->_has)
  {
    originProcess = self->_originProcess;
    if (originProcess != [equalCopy originProcess])
    {
      goto LABEL_35;
    }
  }

  pommesId = [(POMMESSchemaPOMMESClientEventMetadata *)self subRequestId];
  pommesId2 = [equalCopy subRequestId];
  if ((pommesId != 0) == (pommesId2 == 0))
  {
    goto LABEL_34;
  }

  subRequestId = [(POMMESSchemaPOMMESClientEventMetadata *)self subRequestId];
  if (subRequestId)
  {
    v29 = subRequestId;
    subRequestId2 = [(POMMESSchemaPOMMESClientEventMetadata *)self subRequestId];
    subRequestId3 = [equalCopy subRequestId];
    v32 = [subRequestId2 isEqual:subRequestId3];

    if (!v32)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  pommesId = [(POMMESSchemaPOMMESClientEventMetadata *)self searchToolId];
  pommesId2 = [equalCopy searchToolId];
  if ((pommesId != 0) == (pommesId2 == 0))
  {
LABEL_34:

    goto LABEL_35;
  }

  searchToolId = [(POMMESSchemaPOMMESClientEventMetadata *)self searchToolId];
  if (searchToolId)
  {
    v34 = searchToolId;
    searchToolId2 = [(POMMESSchemaPOMMESClientEventMetadata *)self searchToolId];
    searchToolId3 = [equalCopy searchToolId];
    v37 = [searchToolId2 isEqual:searchToolId3];

    if (!v37)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  v40 = (*&self->_has >> 1) & 1;
  if (v40 == ((equalCopy[68] >> 1) & 1))
  {
    if (!v40 || (searchToolGlobalSearchResultId = self->_searchToolGlobalSearchResultId, searchToolGlobalSearchResultId == [equalCopy searchToolGlobalSearchResultId]))
    {
      v38 = 1;
      goto LABEL_36;
    }
  }

LABEL_35:
  v38 = 0;
LABEL_36:

  return v38;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  pommesId = [(POMMESSchemaPOMMESClientEventMetadata *)self pommesId];

  if (pommesId)
  {
    pommesId2 = [(POMMESSchemaPOMMESClientEventMetadata *)self pommesId];
    PBDataWriterWriteSubmessage();
  }

  resultCandidateId = [(POMMESSchemaPOMMESClientEventMetadata *)self resultCandidateId];

  if (resultCandidateId)
  {
    PBDataWriterWriteStringField();
  }

  requestId = [(POMMESSchemaPOMMESClientEventMetadata *)self requestId];

  if (requestId)
  {
    requestId2 = [(POMMESSchemaPOMMESClientEventMetadata *)self requestId];
    PBDataWriterWriteSubmessage();
  }

  trpId = [(POMMESSchemaPOMMESClientEventMetadata *)self trpId];

  if (trpId)
  {
    trpId2 = [(POMMESSchemaPOMMESClientEventMetadata *)self trpId];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  subRequestId = [(POMMESSchemaPOMMESClientEventMetadata *)self subRequestId];

  if (subRequestId)
  {
    subRequestId2 = [(POMMESSchemaPOMMESClientEventMetadata *)self subRequestId];
    PBDataWriterWriteSubmessage();
  }

  searchToolId = [(POMMESSchemaPOMMESClientEventMetadata *)self searchToolId];

  if (searchToolId)
  {
    searchToolId2 = [(POMMESSchemaPOMMESClientEventMetadata *)self searchToolId];
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (void)setHasSearchToolGlobalSearchResultId:(BOOL)id
{
  if (id)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v22.receiver = self;
  v22.super_class = POMMESSchemaPOMMESClientEventMetadata;
  v5 = [(SISchemaInstrumentationMessage *)&v22 applySensitiveConditionsPolicy:policyCopy];
  pommesId = [(POMMESSchemaPOMMESClientEventMetadata *)self pommesId];
  v7 = [pommesId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(POMMESSchemaPOMMESClientEventMetadata *)self deletePommesId];
  }

  requestId = [(POMMESSchemaPOMMESClientEventMetadata *)self requestId];
  v10 = [requestId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(POMMESSchemaPOMMESClientEventMetadata *)self deleteRequestId];
  }

  trpId = [(POMMESSchemaPOMMESClientEventMetadata *)self trpId];
  v13 = [trpId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(POMMESSchemaPOMMESClientEventMetadata *)self deleteTrpId];
  }

  subRequestId = [(POMMESSchemaPOMMESClientEventMetadata *)self subRequestId];
  v16 = [subRequestId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(POMMESSchemaPOMMESClientEventMetadata *)self deleteSubRequestId];
  }

  searchToolId = [(POMMESSchemaPOMMESClientEventMetadata *)self searchToolId];
  v19 = [searchToolId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(POMMESSchemaPOMMESClientEventMetadata *)self deleteSearchToolId];
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