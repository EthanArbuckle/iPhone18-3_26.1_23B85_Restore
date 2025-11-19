@interface IFTSchemaIFTInterpretedStatementResult
- (BOOL)isEqual:(id)a3;
- (IFTSchemaIFTInterpretedStatementResult)initWithDictionary:(id)a3;
- (IFTSchemaIFTInterpretedStatementResult)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation IFTSchemaIFTInterpretedStatementResult

- (IFTSchemaIFTInterpretedStatementResult)initWithDictionary:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = IFTSchemaIFTInterpretedStatementResult;
  v5 = [(IFTSchemaIFTInterpretedStatementResult *)&v20 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"outcome"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[IFTSchemaIFTStatementOutcome alloc] initWithDictionary:v6];
      [(IFTSchemaIFTInterpretedStatementResult *)v5 setOutcome:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"resultStatementId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[IFTSchemaIFTStatementId alloc] initWithDictionary:v8];
      [(IFTSchemaIFTInterpretedStatementResult *)v5 setResultStatementId:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"originProgramStatementId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[IFTSchemaIFTStatementId alloc] initWithDictionary:v10];
      [(IFTSchemaIFTInterpretedStatementResult *)v5 setOriginProgramStatementId:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"toolId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      [(IFTSchemaIFTInterpretedStatementResult *)v5 setToolId:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"actionEventId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[SISchemaUUID alloc] initWithDictionary:v14];
      [(IFTSchemaIFTInterpretedStatementResult *)v5 setActionEventId:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"originTaskStatementId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[IFTSchemaIFTStatementId alloc] initWithDictionary:v16];
      [(IFTSchemaIFTInterpretedStatementResult *)v5 setOriginTaskStatementId:v17];
    }

    v18 = v5;
  }

  return v5;
}

- (IFTSchemaIFTInterpretedStatementResult)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(IFTSchemaIFTInterpretedStatementResult *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(IFTSchemaIFTInterpretedStatementResult *)self dictionaryRepresentation];
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
    v4 = [(IFTSchemaIFTInterpretedStatementResult *)self actionEventId];
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

  if (self->_originProgramStatementId)
  {
    v7 = [(IFTSchemaIFTInterpretedStatementResult *)self originProgramStatementId];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"originProgramStatementId"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"originProgramStatementId"];
    }
  }

  if (self->_originTaskStatementId)
  {
    v10 = [(IFTSchemaIFTInterpretedStatementResult *)self originTaskStatementId];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"originTaskStatementId"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"originTaskStatementId"];
    }
  }

  if (self->_outcome)
  {
    v13 = [(IFTSchemaIFTInterpretedStatementResult *)self outcome];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"outcome"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"outcome"];
    }
  }

  if (self->_resultStatementId)
  {
    v16 = [(IFTSchemaIFTInterpretedStatementResult *)self resultStatementId];
    v17 = [v16 dictionaryRepresentation];
    if (v17)
    {
      [v3 setObject:v17 forKeyedSubscript:@"resultStatementId"];
    }

    else
    {
      v18 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v18 forKeyedSubscript:@"resultStatementId"];
    }
  }

  if (self->_toolId)
  {
    v19 = [(IFTSchemaIFTInterpretedStatementResult *)self toolId];
    v20 = [v19 copy];
    [v3 setObject:v20 forKeyedSubscript:@"toolId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(IFTSchemaIFTStatementOutcome *)self->_outcome hash];
  v4 = [(IFTSchemaIFTStatementId *)self->_resultStatementId hash]^ v3;
  v5 = [(IFTSchemaIFTStatementId *)self->_originProgramStatementId hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_toolId hash];
  v7 = [(SISchemaUUID *)self->_actionEventId hash];
  return v6 ^ v7 ^ [(IFTSchemaIFTStatementId *)self->_originTaskStatementId hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_32;
  }

  v5 = [(IFTSchemaIFTInterpretedStatementResult *)self outcome];
  v6 = [v4 outcome];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v7 = [(IFTSchemaIFTInterpretedStatementResult *)self outcome];
  if (v7)
  {
    v8 = v7;
    v9 = [(IFTSchemaIFTInterpretedStatementResult *)self outcome];
    v10 = [v4 outcome];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(IFTSchemaIFTInterpretedStatementResult *)self resultStatementId];
  v6 = [v4 resultStatementId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v12 = [(IFTSchemaIFTInterpretedStatementResult *)self resultStatementId];
  if (v12)
  {
    v13 = v12;
    v14 = [(IFTSchemaIFTInterpretedStatementResult *)self resultStatementId];
    v15 = [v4 resultStatementId];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(IFTSchemaIFTInterpretedStatementResult *)self originProgramStatementId];
  v6 = [v4 originProgramStatementId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v17 = [(IFTSchemaIFTInterpretedStatementResult *)self originProgramStatementId];
  if (v17)
  {
    v18 = v17;
    v19 = [(IFTSchemaIFTInterpretedStatementResult *)self originProgramStatementId];
    v20 = [v4 originProgramStatementId];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(IFTSchemaIFTInterpretedStatementResult *)self toolId];
  v6 = [v4 toolId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v22 = [(IFTSchemaIFTInterpretedStatementResult *)self toolId];
  if (v22)
  {
    v23 = v22;
    v24 = [(IFTSchemaIFTInterpretedStatementResult *)self toolId];
    v25 = [v4 toolId];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(IFTSchemaIFTInterpretedStatementResult *)self actionEventId];
  v6 = [v4 actionEventId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v27 = [(IFTSchemaIFTInterpretedStatementResult *)self actionEventId];
  if (v27)
  {
    v28 = v27;
    v29 = [(IFTSchemaIFTInterpretedStatementResult *)self actionEventId];
    v30 = [v4 actionEventId];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(IFTSchemaIFTInterpretedStatementResult *)self originTaskStatementId];
  v6 = [v4 originTaskStatementId];
  if ((v5 != 0) != (v6 == 0))
  {
    v32 = [(IFTSchemaIFTInterpretedStatementResult *)self originTaskStatementId];
    if (!v32)
    {

LABEL_35:
      v37 = 1;
      goto LABEL_33;
    }

    v33 = v32;
    v34 = [(IFTSchemaIFTInterpretedStatementResult *)self originTaskStatementId];
    v35 = [v4 originTaskStatementId];
    v36 = [v34 isEqual:v35];

    if (v36)
    {
      goto LABEL_35;
    }
  }

  else
  {
LABEL_31:
  }

LABEL_32:
  v37 = 0;
LABEL_33:

  return v37;
}

- (void)writeTo:(id)a3
{
  v16 = a3;
  v4 = [(IFTSchemaIFTInterpretedStatementResult *)self outcome];

  if (v4)
  {
    v5 = [(IFTSchemaIFTInterpretedStatementResult *)self outcome];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(IFTSchemaIFTInterpretedStatementResult *)self resultStatementId];

  if (v6)
  {
    v7 = [(IFTSchemaIFTInterpretedStatementResult *)self resultStatementId];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(IFTSchemaIFTInterpretedStatementResult *)self originProgramStatementId];

  if (v8)
  {
    v9 = [(IFTSchemaIFTInterpretedStatementResult *)self originProgramStatementId];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(IFTSchemaIFTInterpretedStatementResult *)self toolId];

  if (v10)
  {
    PBDataWriterWriteStringField();
  }

  v11 = [(IFTSchemaIFTInterpretedStatementResult *)self actionEventId];

  if (v11)
  {
    v12 = [(IFTSchemaIFTInterpretedStatementResult *)self actionEventId];
    PBDataWriterWriteSubmessage();
  }

  v13 = [(IFTSchemaIFTInterpretedStatementResult *)self originTaskStatementId];

  v14 = v16;
  if (v13)
  {
    v15 = [(IFTSchemaIFTInterpretedStatementResult *)self originTaskStatementId];
    PBDataWriterWriteSubmessage();

    v14 = v16;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = IFTSchemaIFTInterpretedStatementResult;
  v5 = [(SISchemaInstrumentationMessage *)&v22 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:4])
  {
    [(IFTSchemaIFTInterpretedStatementResult *)self deleteToolId];
  }

  v6 = [(IFTSchemaIFTInterpretedStatementResult *)self outcome];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(IFTSchemaIFTInterpretedStatementResult *)self deleteOutcome];
  }

  v9 = [(IFTSchemaIFTInterpretedStatementResult *)self resultStatementId];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(IFTSchemaIFTInterpretedStatementResult *)self deleteResultStatementId];
  }

  v12 = [(IFTSchemaIFTInterpretedStatementResult *)self originProgramStatementId];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(IFTSchemaIFTInterpretedStatementResult *)self deleteOriginProgramStatementId];
  }

  v15 = [(IFTSchemaIFTInterpretedStatementResult *)self actionEventId];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(IFTSchemaIFTInterpretedStatementResult *)self deleteActionEventId];
  }

  v18 = [(IFTSchemaIFTInterpretedStatementResult *)self originTaskStatementId];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
  {
    [(IFTSchemaIFTInterpretedStatementResult *)self deleteOriginTaskStatementId];
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