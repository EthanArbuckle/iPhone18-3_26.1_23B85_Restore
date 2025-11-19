@interface CAARSchemaCAARClientEventMetadata
- (BOOL)isEqual:(id)a3;
- (CAARSchemaCAARClientEventMetadata)initWithDictionary:(id)a3;
- (CAARSchemaCAARClientEventMetadata)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation CAARSchemaCAARClientEventMetadata

- (CAARSchemaCAARClientEventMetadata)initWithDictionary:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = CAARSchemaCAARClientEventMetadata;
  v5 = [(CAARSchemaCAARClientEventMetadata *)&v18 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"caarId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(CAARSchemaCAARClientEventMetadata *)v5 setCaarId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"resultCandidateId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(CAARSchemaCAARClientEventMetadata *)v5 setResultCandidateId:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"requestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaUUID alloc] initWithDictionary:v10];
      [(CAARSchemaCAARClientEventMetadata *)v5 setRequestId:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"trpId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[SISchemaUUID alloc] initWithDictionary:v12];
      [(CAARSchemaCAARClientEventMetadata *)v5 setTrpId:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"subRequestId"];
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

- (CAARSchemaCAARClientEventMetadata)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(CAARSchemaCAARClientEventMetadata *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(CAARSchemaCAARClientEventMetadata *)self dictionaryRepresentation];
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
  if (self->_caarId)
  {
    v4 = [(CAARSchemaCAARClientEventMetadata *)self caarId];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"caarId"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"caarId"];
    }
  }

  if (self->_requestId)
  {
    v7 = [(CAARSchemaCAARClientEventMetadata *)self requestId];
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
    v10 = [(CAARSchemaCAARClientEventMetadata *)self resultCandidateId];
    v11 = [v10 copy];
    [v3 setObject:v11 forKeyedSubscript:@"resultCandidateId"];
  }

  if (self->_subRequestId)
  {
    v12 = [(CAARSchemaCAARClientEventMetadata *)self subRequestId];
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

  if (self->_trpId)
  {
    v15 = [(CAARSchemaCAARClientEventMetadata *)self trpId];
    v16 = [v15 dictionaryRepresentation];
    if (v16)
    {
      [v3 setObject:v16 forKeyedSubscript:@"trpId"];
    }

    else
    {
      v17 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v17 forKeyedSubscript:@"trpId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_caarId hash];
  v4 = [(NSString *)self->_resultCandidateId hash]^ v3;
  v5 = [(SISchemaUUID *)self->_requestId hash];
  v6 = v4 ^ v5 ^ [(SISchemaUUID *)self->_trpId hash];
  return v6 ^ [(SISchemaUUID *)self->_subRequestId hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  v5 = [(CAARSchemaCAARClientEventMetadata *)self caarId];
  v6 = [v4 caarId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v7 = [(CAARSchemaCAARClientEventMetadata *)self caarId];
  if (v7)
  {
    v8 = v7;
    v9 = [(CAARSchemaCAARClientEventMetadata *)self caarId];
    v10 = [v4 caarId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(CAARSchemaCAARClientEventMetadata *)self resultCandidateId];
  v6 = [v4 resultCandidateId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v12 = [(CAARSchemaCAARClientEventMetadata *)self resultCandidateId];
  if (v12)
  {
    v13 = v12;
    v14 = [(CAARSchemaCAARClientEventMetadata *)self resultCandidateId];
    v15 = [v4 resultCandidateId];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(CAARSchemaCAARClientEventMetadata *)self requestId];
  v6 = [v4 requestId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v17 = [(CAARSchemaCAARClientEventMetadata *)self requestId];
  if (v17)
  {
    v18 = v17;
    v19 = [(CAARSchemaCAARClientEventMetadata *)self requestId];
    v20 = [v4 requestId];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(CAARSchemaCAARClientEventMetadata *)self trpId];
  v6 = [v4 trpId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v22 = [(CAARSchemaCAARClientEventMetadata *)self trpId];
  if (v22)
  {
    v23 = v22;
    v24 = [(CAARSchemaCAARClientEventMetadata *)self trpId];
    v25 = [v4 trpId];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(CAARSchemaCAARClientEventMetadata *)self subRequestId];
  v6 = [v4 subRequestId];
  if ((v5 != 0) != (v6 == 0))
  {
    v27 = [(CAARSchemaCAARClientEventMetadata *)self subRequestId];
    if (!v27)
    {

LABEL_30:
      v32 = 1;
      goto LABEL_28;
    }

    v28 = v27;
    v29 = [(CAARSchemaCAARClientEventMetadata *)self subRequestId];
    v30 = [v4 subRequestId];
    v31 = [v29 isEqual:v30];

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

- (void)writeTo:(id)a3
{
  v14 = a3;
  v4 = [(CAARSchemaCAARClientEventMetadata *)self caarId];

  if (v4)
  {
    v5 = [(CAARSchemaCAARClientEventMetadata *)self caarId];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(CAARSchemaCAARClientEventMetadata *)self resultCandidateId];

  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  v7 = [(CAARSchemaCAARClientEventMetadata *)self requestId];

  if (v7)
  {
    v8 = [(CAARSchemaCAARClientEventMetadata *)self requestId];
    PBDataWriterWriteSubmessage();
  }

  v9 = [(CAARSchemaCAARClientEventMetadata *)self trpId];

  if (v9)
  {
    v10 = [(CAARSchemaCAARClientEventMetadata *)self trpId];
    PBDataWriterWriteSubmessage();
  }

  v11 = [(CAARSchemaCAARClientEventMetadata *)self subRequestId];

  v12 = v14;
  if (v11)
  {
    v13 = [(CAARSchemaCAARClientEventMetadata *)self subRequestId];
    PBDataWriterWriteSubmessage();

    v12 = v14;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = CAARSchemaCAARClientEventMetadata;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:v4];
  v6 = [(CAARSchemaCAARClientEventMetadata *)self caarId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(CAARSchemaCAARClientEventMetadata *)self deleteCaarId];
  }

  v9 = [(CAARSchemaCAARClientEventMetadata *)self requestId];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(CAARSchemaCAARClientEventMetadata *)self deleteRequestId];
  }

  v12 = [(CAARSchemaCAARClientEventMetadata *)self trpId];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(CAARSchemaCAARClientEventMetadata *)self deleteTrpId];
  }

  v15 = [(CAARSchemaCAARClientEventMetadata *)self subRequestId];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
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