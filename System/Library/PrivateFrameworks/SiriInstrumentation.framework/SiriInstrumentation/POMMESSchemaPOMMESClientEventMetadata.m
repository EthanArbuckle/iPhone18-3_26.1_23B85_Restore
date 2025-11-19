@interface POMMESSchemaPOMMESClientEventMetadata
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (POMMESSchemaPOMMESClientEventMetadata)initWithDictionary:(id)a3;
- (POMMESSchemaPOMMESClientEventMetadata)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasSearchToolGlobalSearchResultId:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation POMMESSchemaPOMMESClientEventMetadata

- (POMMESSchemaPOMMESClientEventMetadata)initWithDictionary:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = POMMESSchemaPOMMESClientEventMetadata;
  v5 = [(POMMESSchemaPOMMESClientEventMetadata *)&v22 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"pommesId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(POMMESSchemaPOMMESClientEventMetadata *)v5 setPommesId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"resultCandidateId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(POMMESSchemaPOMMESClientEventMetadata *)v5 setResultCandidateId:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"requestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaUUID alloc] initWithDictionary:v10];
      [(POMMESSchemaPOMMESClientEventMetadata *)v5 setRequestId:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"trpId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[SISchemaUUID alloc] initWithDictionary:v12];
      [(POMMESSchemaPOMMESClientEventMetadata *)v5 setTrpId:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"originProcess"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESClientEventMetadata setOriginProcess:](v5, "setOriginProcess:", [v14 intValue]);
    }

    v15 = [v4 objectForKeyedSubscript:@"subRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [[SISchemaUUID alloc] initWithDictionary:v15];
      [(POMMESSchemaPOMMESClientEventMetadata *)v5 setSubRequestId:v16];
    }

    v17 = [v4 objectForKeyedSubscript:@"searchToolId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [[SISchemaUUID alloc] initWithDictionary:v17];
      [(POMMESSchemaPOMMESClientEventMetadata *)v5 setSearchToolId:v18];
    }

    v19 = [v4 objectForKeyedSubscript:@"searchToolGlobalSearchResultId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESClientEventMetadata setSearchToolGlobalSearchResultId:](v5, "setSearchToolGlobalSearchResultId:", [v19 intValue]);
    }

    v20 = v5;
  }

  return v5;
}

- (POMMESSchemaPOMMESClientEventMetadata)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(POMMESSchemaPOMMESClientEventMetadata *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(POMMESSchemaPOMMESClientEventMetadata *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [(POMMESSchemaPOMMESClientEventMetadata *)self originProcess];
    v5 = @"POMMESCLIENTORIGINPROCESS_UNKNOWN";
    if (v4 == 1)
    {
      v5 = @"POMMESCLIENTORIGINPROCESS_SIRI";
    }

    if (v4 == 2)
    {
      v6 = @"POMMESCLIENTORIGINPROCESS_MAINTENANCE";
    }

    else
    {
      v6 = v5;
    }

    [v3 setObject:v6 forKeyedSubscript:@"originProcess"];
  }

  if (self->_pommesId)
  {
    v7 = [(POMMESSchemaPOMMESClientEventMetadata *)self pommesId];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"pommesId"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"pommesId"];
    }
  }

  if (self->_requestId)
  {
    v10 = [(POMMESSchemaPOMMESClientEventMetadata *)self requestId];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"requestId"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"requestId"];
    }
  }

  if (self->_resultCandidateId)
  {
    v13 = [(POMMESSchemaPOMMESClientEventMetadata *)self resultCandidateId];
    v14 = [v13 copy];
    [v3 setObject:v14 forKeyedSubscript:@"resultCandidateId"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithInt:{-[POMMESSchemaPOMMESClientEventMetadata searchToolGlobalSearchResultId](self, "searchToolGlobalSearchResultId")}];
    [v3 setObject:v15 forKeyedSubscript:@"searchToolGlobalSearchResultId"];
  }

  if (self->_searchToolId)
  {
    v16 = [(POMMESSchemaPOMMESClientEventMetadata *)self searchToolId];
    v17 = [v16 dictionaryRepresentation];
    if (v17)
    {
      [v3 setObject:v17 forKeyedSubscript:@"searchToolId"];
    }

    else
    {
      v18 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v18 forKeyedSubscript:@"searchToolId"];
    }
  }

  if (self->_subRequestId)
  {
    v19 = [(POMMESSchemaPOMMESClientEventMetadata *)self subRequestId];
    v20 = [v19 dictionaryRepresentation];
    if (v20)
    {
      [v3 setObject:v20 forKeyedSubscript:@"subRequestId"];
    }

    else
    {
      v21 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v21 forKeyedSubscript:@"subRequestId"];
    }
  }

  if (self->_trpId)
  {
    v22 = [(POMMESSchemaPOMMESClientEventMetadata *)self trpId];
    v23 = [v22 dictionaryRepresentation];
    if (v23)
    {
      [v3 setObject:v23 forKeyedSubscript:@"trpId"];
    }

    else
    {
      v24 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v24 forKeyedSubscript:@"trpId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_35;
  }

  v5 = [(POMMESSchemaPOMMESClientEventMetadata *)self pommesId];
  v6 = [v4 pommesId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_34;
  }

  v7 = [(POMMESSchemaPOMMESClientEventMetadata *)self pommesId];
  if (v7)
  {
    v8 = v7;
    v9 = [(POMMESSchemaPOMMESClientEventMetadata *)self pommesId];
    v10 = [v4 pommesId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  v5 = [(POMMESSchemaPOMMESClientEventMetadata *)self resultCandidateId];
  v6 = [v4 resultCandidateId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_34;
  }

  v12 = [(POMMESSchemaPOMMESClientEventMetadata *)self resultCandidateId];
  if (v12)
  {
    v13 = v12;
    v14 = [(POMMESSchemaPOMMESClientEventMetadata *)self resultCandidateId];
    v15 = [v4 resultCandidateId];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  v5 = [(POMMESSchemaPOMMESClientEventMetadata *)self requestId];
  v6 = [v4 requestId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_34;
  }

  v17 = [(POMMESSchemaPOMMESClientEventMetadata *)self requestId];
  if (v17)
  {
    v18 = v17;
    v19 = [(POMMESSchemaPOMMESClientEventMetadata *)self requestId];
    v20 = [v4 requestId];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  v5 = [(POMMESSchemaPOMMESClientEventMetadata *)self trpId];
  v6 = [v4 trpId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_34;
  }

  v22 = [(POMMESSchemaPOMMESClientEventMetadata *)self trpId];
  if (v22)
  {
    v23 = v22;
    v24 = [(POMMESSchemaPOMMESClientEventMetadata *)self trpId];
    v25 = [v4 trpId];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (v4[68] & 1))
  {
    goto LABEL_35;
  }

  if (*&self->_has)
  {
    originProcess = self->_originProcess;
    if (originProcess != [v4 originProcess])
    {
      goto LABEL_35;
    }
  }

  v5 = [(POMMESSchemaPOMMESClientEventMetadata *)self subRequestId];
  v6 = [v4 subRequestId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_34;
  }

  v28 = [(POMMESSchemaPOMMESClientEventMetadata *)self subRequestId];
  if (v28)
  {
    v29 = v28;
    v30 = [(POMMESSchemaPOMMESClientEventMetadata *)self subRequestId];
    v31 = [v4 subRequestId];
    v32 = [v30 isEqual:v31];

    if (!v32)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  v5 = [(POMMESSchemaPOMMESClientEventMetadata *)self searchToolId];
  v6 = [v4 searchToolId];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_34:

    goto LABEL_35;
  }

  v33 = [(POMMESSchemaPOMMESClientEventMetadata *)self searchToolId];
  if (v33)
  {
    v34 = v33;
    v35 = [(POMMESSchemaPOMMESClientEventMetadata *)self searchToolId];
    v36 = [v4 searchToolId];
    v37 = [v35 isEqual:v36];

    if (!v37)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  v40 = (*&self->_has >> 1) & 1;
  if (v40 == ((v4[68] >> 1) & 1))
  {
    if (!v40 || (searchToolGlobalSearchResultId = self->_searchToolGlobalSearchResultId, searchToolGlobalSearchResultId == [v4 searchToolGlobalSearchResultId]))
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

- (void)writeTo:(id)a3
{
  v15 = a3;
  v4 = [(POMMESSchemaPOMMESClientEventMetadata *)self pommesId];

  if (v4)
  {
    v5 = [(POMMESSchemaPOMMESClientEventMetadata *)self pommesId];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(POMMESSchemaPOMMESClientEventMetadata *)self resultCandidateId];

  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  v7 = [(POMMESSchemaPOMMESClientEventMetadata *)self requestId];

  if (v7)
  {
    v8 = [(POMMESSchemaPOMMESClientEventMetadata *)self requestId];
    PBDataWriterWriteSubmessage();
  }

  v9 = [(POMMESSchemaPOMMESClientEventMetadata *)self trpId];

  if (v9)
  {
    v10 = [(POMMESSchemaPOMMESClientEventMetadata *)self trpId];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v11 = [(POMMESSchemaPOMMESClientEventMetadata *)self subRequestId];

  if (v11)
  {
    v12 = [(POMMESSchemaPOMMESClientEventMetadata *)self subRequestId];
    PBDataWriterWriteSubmessage();
  }

  v13 = [(POMMESSchemaPOMMESClientEventMetadata *)self searchToolId];

  if (v13)
  {
    v14 = [(POMMESSchemaPOMMESClientEventMetadata *)self searchToolId];
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (void)setHasSearchToolGlobalSearchResultId:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = POMMESSchemaPOMMESClientEventMetadata;
  v5 = [(SISchemaInstrumentationMessage *)&v22 applySensitiveConditionsPolicy:v4];
  v6 = [(POMMESSchemaPOMMESClientEventMetadata *)self pommesId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(POMMESSchemaPOMMESClientEventMetadata *)self deletePommesId];
  }

  v9 = [(POMMESSchemaPOMMESClientEventMetadata *)self requestId];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(POMMESSchemaPOMMESClientEventMetadata *)self deleteRequestId];
  }

  v12 = [(POMMESSchemaPOMMESClientEventMetadata *)self trpId];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(POMMESSchemaPOMMESClientEventMetadata *)self deleteTrpId];
  }

  v15 = [(POMMESSchemaPOMMESClientEventMetadata *)self subRequestId];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(POMMESSchemaPOMMESClientEventMetadata *)self deleteSubRequestId];
  }

  v18 = [(POMMESSchemaPOMMESClientEventMetadata *)self searchToolId];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
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