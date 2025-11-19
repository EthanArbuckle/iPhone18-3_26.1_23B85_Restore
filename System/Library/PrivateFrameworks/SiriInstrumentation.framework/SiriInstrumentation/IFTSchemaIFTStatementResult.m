@interface IFTSchemaIFTStatementResult
- (BOOL)isEqual:(id)a3;
- (IFTSchemaIFTStatementResult)initWithDictionary:(id)a3;
- (IFTSchemaIFTStatementResult)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation IFTSchemaIFTStatementResult

- (IFTSchemaIFTStatementResult)initWithDictionary:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = IFTSchemaIFTStatementResult;
  v5 = [(IFTSchemaIFTStatementResult *)&v21 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"exists"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTStatementResult setExists:](v5, "setExists:", [v6 BOOLValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"resultStatementId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[IFTSchemaIFTStatementId alloc] initWithDictionary:v7];
      [(IFTSchemaIFTStatementResult *)v5 setResultStatementId:v8];
    }

    v9 = [v4 objectForKeyedSubscript:@"originProgramStatementId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[IFTSchemaIFTStatementId alloc] initWithDictionary:v9];
      [(IFTSchemaIFTStatementResult *)v5 setOriginProgramStatementId:v10];
    }

    v11 = [v4 objectForKeyedSubscript:@"payload"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [[IFTSchemaIFTStatementResultPayload alloc] initWithDictionary:v11];
      [(IFTSchemaIFTStatementResult *)v5 setPayload:v12];
    }

    v13 = [v4 objectForKeyedSubscript:@"toolId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [v13 copy];
      [(IFTSchemaIFTStatementResult *)v5 setToolId:v14];
    }

    v15 = [v4 objectForKeyedSubscript:@"actionEventId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [[SISchemaUUID alloc] initWithDictionary:v15];
      [(IFTSchemaIFTStatementResult *)v5 setActionEventId:v16];
    }

    v17 = [v4 objectForKeyedSubscript:@"originTaskStatementId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [[IFTSchemaIFTStatementId alloc] initWithDictionary:v17];
      [(IFTSchemaIFTStatementResult *)v5 setOriginTaskStatementId:v18];
    }

    v19 = v5;
  }

  return v5;
}

- (IFTSchemaIFTStatementResult)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(IFTSchemaIFTStatementResult *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(IFTSchemaIFTStatementResult *)self dictionaryRepresentation];
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
  if (self->_actionEventId)
  {
    v4 = [(IFTSchemaIFTStatementResult *)self actionEventId];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"actionEventId"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"actionEventId"];
    }
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTStatementResult exists](self, "exists")}];
    [v3 setObject:v7 forKeyedSubscript:@"exists"];
  }

  if (self->_originProgramStatementId)
  {
    v8 = [(IFTSchemaIFTStatementResult *)self originProgramStatementId];
    v9 = [v8 dictionaryRepresentation];
    if (v9)
    {
      [v3 setObject:v9 forKeyedSubscript:@"originProgramStatementId"];
    }

    else
    {
      v10 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v10 forKeyedSubscript:@"originProgramStatementId"];
    }
  }

  if (self->_originTaskStatementId)
  {
    v11 = [(IFTSchemaIFTStatementResult *)self originTaskStatementId];
    v12 = [v11 dictionaryRepresentation];
    if (v12)
    {
      [v3 setObject:v12 forKeyedSubscript:@"originTaskStatementId"];
    }

    else
    {
      v13 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v13 forKeyedSubscript:@"originTaskStatementId"];
    }
  }

  if (self->_payload)
  {
    v14 = [(IFTSchemaIFTStatementResult *)self payload];
    v15 = [v14 dictionaryRepresentation];
    if (v15)
    {
      [v3 setObject:v15 forKeyedSubscript:@"payload"];
    }

    else
    {
      v16 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v16 forKeyedSubscript:@"payload"];
    }
  }

  if (self->_resultStatementId)
  {
    v17 = [(IFTSchemaIFTStatementResult *)self resultStatementId];
    v18 = [v17 dictionaryRepresentation];
    if (v18)
    {
      [v3 setObject:v18 forKeyedSubscript:@"resultStatementId"];
    }

    else
    {
      v19 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v19 forKeyedSubscript:@"resultStatementId"];
    }
  }

  if (self->_toolId)
  {
    v20 = [(IFTSchemaIFTStatementResult *)self toolId];
    v21 = [v20 copy];
    [v3 setObject:v21 forKeyedSubscript:@"toolId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_exists;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(IFTSchemaIFTStatementId *)self->_resultStatementId hash]^ v3;
  v5 = [(IFTSchemaIFTStatementId *)self->_originProgramStatementId hash];
  v6 = v4 ^ v5 ^ [(IFTSchemaIFTStatementResultPayload *)self->_payload hash];
  v7 = [(NSString *)self->_toolId hash];
  v8 = v7 ^ [(SISchemaUUID *)self->_actionEventId hash];
  return v6 ^ v8 ^ [(IFTSchemaIFTStatementId *)self->_originTaskStatementId hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_35;
  }

  if ((*&self->_has & 1) != (v4[64] & 1))
  {
    goto LABEL_35;
  }

  if (*&self->_has)
  {
    exists = self->_exists;
    if (exists != [v4 exists])
    {
      goto LABEL_35;
    }
  }

  v6 = [(IFTSchemaIFTStatementResult *)self resultStatementId];
  v7 = [v4 resultStatementId];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_34;
  }

  v8 = [(IFTSchemaIFTStatementResult *)self resultStatementId];
  if (v8)
  {
    v9 = v8;
    v10 = [(IFTSchemaIFTStatementResult *)self resultStatementId];
    v11 = [v4 resultStatementId];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTStatementResult *)self originProgramStatementId];
  v7 = [v4 originProgramStatementId];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_34;
  }

  v13 = [(IFTSchemaIFTStatementResult *)self originProgramStatementId];
  if (v13)
  {
    v14 = v13;
    v15 = [(IFTSchemaIFTStatementResult *)self originProgramStatementId];
    v16 = [v4 originProgramStatementId];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTStatementResult *)self payload];
  v7 = [v4 payload];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_34;
  }

  v18 = [(IFTSchemaIFTStatementResult *)self payload];
  if (v18)
  {
    v19 = v18;
    v20 = [(IFTSchemaIFTStatementResult *)self payload];
    v21 = [v4 payload];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTStatementResult *)self toolId];
  v7 = [v4 toolId];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_34;
  }

  v23 = [(IFTSchemaIFTStatementResult *)self toolId];
  if (v23)
  {
    v24 = v23;
    v25 = [(IFTSchemaIFTStatementResult *)self toolId];
    v26 = [v4 toolId];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTStatementResult *)self actionEventId];
  v7 = [v4 actionEventId];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_34;
  }

  v28 = [(IFTSchemaIFTStatementResult *)self actionEventId];
  if (v28)
  {
    v29 = v28;
    v30 = [(IFTSchemaIFTStatementResult *)self actionEventId];
    v31 = [v4 actionEventId];
    v32 = [v30 isEqual:v31];

    if (!v32)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTStatementResult *)self originTaskStatementId];
  v7 = [v4 originTaskStatementId];
  if ((v6 != 0) != (v7 == 0))
  {
    v33 = [(IFTSchemaIFTStatementResult *)self originTaskStatementId];
    if (!v33)
    {

LABEL_38:
      v38 = 1;
      goto LABEL_36;
    }

    v34 = v33;
    v35 = [(IFTSchemaIFTStatementResult *)self originTaskStatementId];
    v36 = [v4 originTaskStatementId];
    v37 = [v35 isEqual:v36];

    if (v37)
    {
      goto LABEL_38;
    }
  }

  else
  {
LABEL_34:
  }

LABEL_35:
  v38 = 0;
LABEL_36:

  return v38;
}

- (void)writeTo:(id)a3
{
  v16 = a3;
  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  v4 = [(IFTSchemaIFTStatementResult *)self resultStatementId];

  if (v4)
  {
    v5 = [(IFTSchemaIFTStatementResult *)self resultStatementId];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(IFTSchemaIFTStatementResult *)self originProgramStatementId];

  if (v6)
  {
    v7 = [(IFTSchemaIFTStatementResult *)self originProgramStatementId];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(IFTSchemaIFTStatementResult *)self payload];

  if (v8)
  {
    v9 = [(IFTSchemaIFTStatementResult *)self payload];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(IFTSchemaIFTStatementResult *)self toolId];

  if (v10)
  {
    PBDataWriterWriteStringField();
  }

  v11 = [(IFTSchemaIFTStatementResult *)self actionEventId];

  if (v11)
  {
    v12 = [(IFTSchemaIFTStatementResult *)self actionEventId];
    PBDataWriterWriteSubmessage();
  }

  v13 = [(IFTSchemaIFTStatementResult *)self originTaskStatementId];

  v14 = v16;
  if (v13)
  {
    v15 = [(IFTSchemaIFTStatementResult *)self originTaskStatementId];
    PBDataWriterWriteSubmessage();

    v14 = v16;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = IFTSchemaIFTStatementResult;
  v5 = [(SISchemaInstrumentationMessage *)&v22 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:4])
  {
    [(IFTSchemaIFTStatementResult *)self deleteToolId];
  }

  v6 = [(IFTSchemaIFTStatementResult *)self resultStatementId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(IFTSchemaIFTStatementResult *)self deleteResultStatementId];
  }

  v9 = [(IFTSchemaIFTStatementResult *)self originProgramStatementId];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(IFTSchemaIFTStatementResult *)self deleteOriginProgramStatementId];
  }

  v12 = [(IFTSchemaIFTStatementResult *)self payload];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(IFTSchemaIFTStatementResult *)self deletePayload];
  }

  v15 = [(IFTSchemaIFTStatementResult *)self actionEventId];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(IFTSchemaIFTStatementResult *)self deleteActionEventId];
  }

  v18 = [(IFTSchemaIFTStatementResult *)self originTaskStatementId];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
  {
    [(IFTSchemaIFTStatementResult *)self deleteOriginTaskStatementId];
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