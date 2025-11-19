@interface FLOWSchemaFLOWEventMetadata
- (BOOL)isEqual:(id)a3;
- (FLOWSchemaFLOWEventMetadata)initWithDictionary:(id)a3;
- (FLOWSchemaFLOWEventMetadata)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation FLOWSchemaFLOWEventMetadata

- (FLOWSchemaFLOWEventMetadata)initWithDictionary:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = FLOWSchemaFLOWEventMetadata;
  v5 = [(FLOWSchemaFLOWEventMetadata *)&v22 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"taskId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(FLOWSchemaFLOWEventMetadata *)v5 setTaskId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"resultCandidateId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(FLOWSchemaFLOWEventMetadata *)v5 setResultCandidateId:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"version"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaVersion alloc] initWithDictionary:v10];
      [(FLOWSchemaFLOWEventMetadata *)v5 setVersion:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"flowId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[SISchemaUUID alloc] initWithDictionary:v12];
      [(FLOWSchemaFLOWEventMetadata *)v5 setFlowId:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"requestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[SISchemaUUID alloc] initWithDictionary:v14];
      [(FLOWSchemaFLOWEventMetadata *)v5 setRequestId:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"trpId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[SISchemaUUID alloc] initWithDictionary:v16];
      [(FLOWSchemaFLOWEventMetadata *)v5 setTrpId:v17];
    }

    v18 = [v4 objectForKeyedSubscript:@"subRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[SISchemaUUID alloc] initWithDictionary:v18];
      [(FLOWSchemaFLOWEventMetadata *)v5 setSubRequestId:v19];
    }

    v20 = v5;
  }

  return v5;
}

- (FLOWSchemaFLOWEventMetadata)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(FLOWSchemaFLOWEventMetadata *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(FLOWSchemaFLOWEventMetadata *)self dictionaryRepresentation];
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
  if (self->_flowId)
  {
    v4 = [(FLOWSchemaFLOWEventMetadata *)self flowId];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"flowId"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"flowId"];
    }
  }

  if (self->_requestId)
  {
    v7 = [(FLOWSchemaFLOWEventMetadata *)self requestId];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"requestId"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"requestId"];
    }
  }

  if (self->_resultCandidateId)
  {
    v10 = [(FLOWSchemaFLOWEventMetadata *)self resultCandidateId];
    v11 = [v10 copy];
    [v3 setObject:v11 forKeyedSubscript:@"resultCandidateId"];
  }

  if (self->_subRequestId)
  {
    v12 = [(FLOWSchemaFLOWEventMetadata *)self subRequestId];
    v13 = [v12 dictionaryRepresentation];
    if (v13)
    {
      [v3 setObject:v13 forKeyedSubscript:@"subRequestId"];
    }

    else
    {
      v14 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v14 forKeyedSubscript:@"subRequestId"];
    }
  }

  if (self->_taskId)
  {
    v15 = [(FLOWSchemaFLOWEventMetadata *)self taskId];
    v16 = [v15 dictionaryRepresentation];
    if (v16)
    {
      [v3 setObject:v16 forKeyedSubscript:@"taskId"];
    }

    else
    {
      v17 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v17 forKeyedSubscript:@"taskId"];
    }
  }

  if (self->_trpId)
  {
    v18 = [(FLOWSchemaFLOWEventMetadata *)self trpId];
    v19 = [v18 dictionaryRepresentation];
    if (v19)
    {
      [v3 setObject:v19 forKeyedSubscript:@"trpId"];
    }

    else
    {
      v20 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v20 forKeyedSubscript:@"trpId"];
    }
  }

  if (self->_version)
  {
    v21 = [(FLOWSchemaFLOWEventMetadata *)self version];
    v22 = [v21 dictionaryRepresentation];
    if (v22)
    {
      [v3 setObject:v22 forKeyedSubscript:@"version"];
    }

    else
    {
      v23 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v23 forKeyedSubscript:@"version"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_taskId hash];
  v4 = [(NSString *)self->_resultCandidateId hash]^ v3;
  v5 = [(SISchemaVersion *)self->_version hash];
  v6 = v4 ^ v5 ^ [(SISchemaUUID *)self->_flowId hash];
  v7 = [(SISchemaUUID *)self->_requestId hash];
  v8 = v7 ^ [(SISchemaUUID *)self->_trpId hash];
  return v6 ^ v8 ^ [(SISchemaUUID *)self->_subRequestId hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_37;
  }

  v5 = [(FLOWSchemaFLOWEventMetadata *)self taskId];
  v6 = [v4 taskId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_36;
  }

  v7 = [(FLOWSchemaFLOWEventMetadata *)self taskId];
  if (v7)
  {
    v8 = v7;
    v9 = [(FLOWSchemaFLOWEventMetadata *)self taskId];
    v10 = [v4 taskId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  v5 = [(FLOWSchemaFLOWEventMetadata *)self resultCandidateId];
  v6 = [v4 resultCandidateId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_36;
  }

  v12 = [(FLOWSchemaFLOWEventMetadata *)self resultCandidateId];
  if (v12)
  {
    v13 = v12;
    v14 = [(FLOWSchemaFLOWEventMetadata *)self resultCandidateId];
    v15 = [v4 resultCandidateId];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  v5 = [(FLOWSchemaFLOWEventMetadata *)self version];
  v6 = [v4 version];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_36;
  }

  v17 = [(FLOWSchemaFLOWEventMetadata *)self version];
  if (v17)
  {
    v18 = v17;
    v19 = [(FLOWSchemaFLOWEventMetadata *)self version];
    v20 = [v4 version];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  v5 = [(FLOWSchemaFLOWEventMetadata *)self flowId];
  v6 = [v4 flowId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_36;
  }

  v22 = [(FLOWSchemaFLOWEventMetadata *)self flowId];
  if (v22)
  {
    v23 = v22;
    v24 = [(FLOWSchemaFLOWEventMetadata *)self flowId];
    v25 = [v4 flowId];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  v5 = [(FLOWSchemaFLOWEventMetadata *)self requestId];
  v6 = [v4 requestId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_36;
  }

  v27 = [(FLOWSchemaFLOWEventMetadata *)self requestId];
  if (v27)
  {
    v28 = v27;
    v29 = [(FLOWSchemaFLOWEventMetadata *)self requestId];
    v30 = [v4 requestId];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  v5 = [(FLOWSchemaFLOWEventMetadata *)self trpId];
  v6 = [v4 trpId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_36;
  }

  v32 = [(FLOWSchemaFLOWEventMetadata *)self trpId];
  if (v32)
  {
    v33 = v32;
    v34 = [(FLOWSchemaFLOWEventMetadata *)self trpId];
    v35 = [v4 trpId];
    v36 = [v34 isEqual:v35];

    if (!v36)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  v5 = [(FLOWSchemaFLOWEventMetadata *)self subRequestId];
  v6 = [v4 subRequestId];
  if ((v5 != 0) != (v6 == 0))
  {
    v37 = [(FLOWSchemaFLOWEventMetadata *)self subRequestId];
    if (!v37)
    {

LABEL_40:
      v42 = 1;
      goto LABEL_38;
    }

    v38 = v37;
    v39 = [(FLOWSchemaFLOWEventMetadata *)self subRequestId];
    v40 = [v4 subRequestId];
    v41 = [v39 isEqual:v40];

    if (v41)
    {
      goto LABEL_40;
    }
  }

  else
  {
LABEL_36:
  }

LABEL_37:
  v42 = 0;
LABEL_38:

  return v42;
}

- (void)writeTo:(id)a3
{
  v18 = a3;
  v4 = [(FLOWSchemaFLOWEventMetadata *)self taskId];

  if (v4)
  {
    v5 = [(FLOWSchemaFLOWEventMetadata *)self taskId];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(FLOWSchemaFLOWEventMetadata *)self resultCandidateId];

  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  v7 = [(FLOWSchemaFLOWEventMetadata *)self version];

  if (v7)
  {
    v8 = [(FLOWSchemaFLOWEventMetadata *)self version];
    PBDataWriterWriteSubmessage();
  }

  v9 = [(FLOWSchemaFLOWEventMetadata *)self flowId];

  if (v9)
  {
    v10 = [(FLOWSchemaFLOWEventMetadata *)self flowId];
    PBDataWriterWriteSubmessage();
  }

  v11 = [(FLOWSchemaFLOWEventMetadata *)self requestId];

  if (v11)
  {
    v12 = [(FLOWSchemaFLOWEventMetadata *)self requestId];
    PBDataWriterWriteSubmessage();
  }

  v13 = [(FLOWSchemaFLOWEventMetadata *)self trpId];

  if (v13)
  {
    v14 = [(FLOWSchemaFLOWEventMetadata *)self trpId];
    PBDataWriterWriteSubmessage();
  }

  v15 = [(FLOWSchemaFLOWEventMetadata *)self subRequestId];

  v16 = v18;
  if (v15)
  {
    v17 = [(FLOWSchemaFLOWEventMetadata *)self subRequestId];
    PBDataWriterWriteSubmessage();

    v16 = v18;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = FLOWSchemaFLOWEventMetadata;
  v5 = [(SISchemaInstrumentationMessage *)&v25 applySensitiveConditionsPolicy:v4];
  v6 = [(FLOWSchemaFLOWEventMetadata *)self taskId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(FLOWSchemaFLOWEventMetadata *)self deleteTaskId];
  }

  v9 = [(FLOWSchemaFLOWEventMetadata *)self version];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(FLOWSchemaFLOWEventMetadata *)self deleteVersion];
  }

  v12 = [(FLOWSchemaFLOWEventMetadata *)self flowId];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(FLOWSchemaFLOWEventMetadata *)self deleteFlowId];
  }

  v15 = [(FLOWSchemaFLOWEventMetadata *)self requestId];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(FLOWSchemaFLOWEventMetadata *)self deleteRequestId];
  }

  v18 = [(FLOWSchemaFLOWEventMetadata *)self trpId];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
  {
    [(FLOWSchemaFLOWEventMetadata *)self deleteTrpId];
  }

  v21 = [(FLOWSchemaFLOWEventMetadata *)self subRequestId];
  v22 = [v21 applySensitiveConditionsPolicy:v4];
  v23 = [v22 suppressMessage];

  if (v23)
  {
    [(FLOWSchemaFLOWEventMetadata *)self deleteSubRequestId];
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