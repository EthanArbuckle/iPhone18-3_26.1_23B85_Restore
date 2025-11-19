@interface IFTSchemaIFTSystemPromptResolution
- (BOOL)isEqual:(id)a3;
- (IFTSchemaIFTSystemPromptResolution)initWithDictionary:(id)a3;
- (IFTSchemaIFTSystemPromptResolution)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation IFTSchemaIFTSystemPromptResolution

- (IFTSchemaIFTSystemPromptResolution)initWithDictionary:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = IFTSchemaIFTSystemPromptResolution;
  v5 = [(IFTSchemaIFTSystemPromptResolution *)&v19 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"statementId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[IFTSchemaIFTStatementId alloc] initWithDictionary:v6];
      [(IFTSchemaIFTSystemPromptResolution *)v5 setStatementId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"userAction"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[IFTSchemaIFTSystemPromptResolutionUserAction alloc] initWithDictionary:v8];
      [(IFTSchemaIFTSystemPromptResolution *)v5 setUserAction:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"inputModality"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTSystemPromptResolution setInputModality:](v5, "setInputModality:", [v10 intValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"actionEventId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [[SISchemaUUID alloc] initWithDictionary:v11];
      [(IFTSchemaIFTSystemPromptResolution *)v5 setActionEventId:v12];
    }

    v13 = [v4 objectForKeyedSubscript:@"systemResponseEventId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [[SISchemaUUID alloc] initWithDictionary:v13];
      [(IFTSchemaIFTSystemPromptResolution *)v5 setSystemResponseEventId:v14];
    }

    v15 = [v4 objectForKeyedSubscript:@"input"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [[IFTSchemaIFTSystemPromptResolutionInput alloc] initWithDictionary:v15];
      [(IFTSchemaIFTSystemPromptResolution *)v5 setInput:v16];
    }

    v17 = v5;
  }

  return v5;
}

- (IFTSchemaIFTSystemPromptResolution)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(IFTSchemaIFTSystemPromptResolution *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(IFTSchemaIFTSystemPromptResolution *)self dictionaryRepresentation];
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
    v4 = [(IFTSchemaIFTSystemPromptResolution *)self actionEventId];
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

  if (self->_input)
  {
    v7 = [(IFTSchemaIFTSystemPromptResolution *)self input];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"input"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"input"];
    }
  }

  if (*&self->_has)
  {
    v10 = [(IFTSchemaIFTSystemPromptResolution *)self inputModality];
    v11 = @"IFTSYSTEMPROMPTRESOLUTIONINPUTMODALITY_UNKNOWN";
    if (v10 == 1)
    {
      v11 = @"IFTSYSTEMPROMPTRESOLUTIONINPUTMODALITY_TOUCH";
    }

    if (v10 == 2)
    {
      v12 = @"IFTSYSTEMPROMPTRESOLUTIONINPUTMODALITY_HAND_GESTURE";
    }

    else
    {
      v12 = v11;
    }

    [v3 setObject:v12 forKeyedSubscript:@"inputModality"];
  }

  if (self->_statementId)
  {
    v13 = [(IFTSchemaIFTSystemPromptResolution *)self statementId];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"statementId"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"statementId"];
    }
  }

  if (self->_systemResponseEventId)
  {
    v16 = [(IFTSchemaIFTSystemPromptResolution *)self systemResponseEventId];
    v17 = [v16 dictionaryRepresentation];
    if (v17)
    {
      [v3 setObject:v17 forKeyedSubscript:@"systemResponseEventId"];
    }

    else
    {
      v18 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v18 forKeyedSubscript:@"systemResponseEventId"];
    }
  }

  if (self->_userAction)
  {
    v19 = [(IFTSchemaIFTSystemPromptResolution *)self userAction];
    v20 = [v19 dictionaryRepresentation];
    if (v20)
    {
      [v3 setObject:v20 forKeyedSubscript:@"userAction"];
    }

    else
    {
      v21 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v21 forKeyedSubscript:@"userAction"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(IFTSchemaIFTStatementId *)self->_statementId hash];
  v4 = [(IFTSchemaIFTSystemPromptResolutionUserAction *)self->_userAction hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_inputModality;
  }

  else
  {
    v5 = 0;
  }

  v6 = v4 ^ v3 ^ v5 ^ [(SISchemaUUID *)self->_actionEventId hash];
  v7 = [(SISchemaUUID *)self->_systemResponseEventId hash];
  return v6 ^ v7 ^ [(IFTSchemaIFTSystemPromptResolutionInput *)self->_input hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_30;
  }

  v5 = [(IFTSchemaIFTSystemPromptResolution *)self statementId];
  v6 = [v4 statementId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_29;
  }

  v7 = [(IFTSchemaIFTSystemPromptResolution *)self statementId];
  if (v7)
  {
    v8 = v7;
    v9 = [(IFTSchemaIFTSystemPromptResolution *)self statementId];
    v10 = [v4 statementId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_30;
    }
  }

  else
  {
  }

  v5 = [(IFTSchemaIFTSystemPromptResolution *)self userAction];
  v6 = [v4 userAction];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_29;
  }

  v12 = [(IFTSchemaIFTSystemPromptResolution *)self userAction];
  if (v12)
  {
    v13 = v12;
    v14 = [(IFTSchemaIFTSystemPromptResolution *)self userAction];
    v15 = [v4 userAction];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_30;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (v4[56] & 1))
  {
    goto LABEL_30;
  }

  if (*&self->_has)
  {
    inputModality = self->_inputModality;
    if (inputModality != [v4 inputModality])
    {
      goto LABEL_30;
    }
  }

  v5 = [(IFTSchemaIFTSystemPromptResolution *)self actionEventId];
  v6 = [v4 actionEventId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_29;
  }

  v18 = [(IFTSchemaIFTSystemPromptResolution *)self actionEventId];
  if (v18)
  {
    v19 = v18;
    v20 = [(IFTSchemaIFTSystemPromptResolution *)self actionEventId];
    v21 = [v4 actionEventId];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_30;
    }
  }

  else
  {
  }

  v5 = [(IFTSchemaIFTSystemPromptResolution *)self systemResponseEventId];
  v6 = [v4 systemResponseEventId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_29;
  }

  v23 = [(IFTSchemaIFTSystemPromptResolution *)self systemResponseEventId];
  if (v23)
  {
    v24 = v23;
    v25 = [(IFTSchemaIFTSystemPromptResolution *)self systemResponseEventId];
    v26 = [v4 systemResponseEventId];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_30;
    }
  }

  else
  {
  }

  v5 = [(IFTSchemaIFTSystemPromptResolution *)self input];
  v6 = [v4 input];
  if ((v5 != 0) != (v6 == 0))
  {
    v28 = [(IFTSchemaIFTSystemPromptResolution *)self input];
    if (!v28)
    {

LABEL_33:
      v33 = 1;
      goto LABEL_31;
    }

    v29 = v28;
    v30 = [(IFTSchemaIFTSystemPromptResolution *)self input];
    v31 = [v4 input];
    v32 = [v30 isEqual:v31];

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

- (void)writeTo:(id)a3
{
  v15 = a3;
  v4 = [(IFTSchemaIFTSystemPromptResolution *)self statementId];

  if (v4)
  {
    v5 = [(IFTSchemaIFTSystemPromptResolution *)self statementId];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(IFTSchemaIFTSystemPromptResolution *)self userAction];

  if (v6)
  {
    v7 = [(IFTSchemaIFTSystemPromptResolution *)self userAction];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v8 = [(IFTSchemaIFTSystemPromptResolution *)self actionEventId];

  if (v8)
  {
    v9 = [(IFTSchemaIFTSystemPromptResolution *)self actionEventId];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(IFTSchemaIFTSystemPromptResolution *)self systemResponseEventId];

  if (v10)
  {
    v11 = [(IFTSchemaIFTSystemPromptResolution *)self systemResponseEventId];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(IFTSchemaIFTSystemPromptResolution *)self input];

  v13 = v15;
  if (v12)
  {
    v14 = [(IFTSchemaIFTSystemPromptResolution *)self input];
    PBDataWriterWriteSubmessage();

    v13 = v15;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = IFTSchemaIFTSystemPromptResolution;
  v5 = [(SISchemaInstrumentationMessage *)&v22 applySensitiveConditionsPolicy:v4];
  v6 = [(IFTSchemaIFTSystemPromptResolution *)self statementId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(IFTSchemaIFTSystemPromptResolution *)self deleteStatementId];
  }

  v9 = [(IFTSchemaIFTSystemPromptResolution *)self userAction];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(IFTSchemaIFTSystemPromptResolution *)self deleteUserAction];
  }

  v12 = [(IFTSchemaIFTSystemPromptResolution *)self actionEventId];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(IFTSchemaIFTSystemPromptResolution *)self deleteActionEventId];
  }

  v15 = [(IFTSchemaIFTSystemPromptResolution *)self systemResponseEventId];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(IFTSchemaIFTSystemPromptResolution *)self deleteSystemResponseEventId];
  }

  v18 = [(IFTSchemaIFTSystemPromptResolution *)self input];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
  {
    [(IFTSchemaIFTSystemPromptResolution *)self deleteInput];
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