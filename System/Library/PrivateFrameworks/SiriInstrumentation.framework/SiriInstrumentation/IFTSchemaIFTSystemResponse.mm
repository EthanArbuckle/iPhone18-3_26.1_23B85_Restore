@interface IFTSchemaIFTSystemResponse
- (BOOL)isEqual:(id)a3;
- (IFTSchemaIFTSystemResponse)initWithDictionary:(id)a3;
- (IFTSchemaIFTSystemResponse)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addInterpretedStatementResults:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation IFTSchemaIFTSystemResponse

- (IFTSchemaIFTSystemResponse)initWithDictionary:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v30.receiver = self;
  v30.super_class = IFTSchemaIFTSystemResponse;
  v5 = [(IFTSchemaIFTSystemResponse *)&v30 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"exists"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTSystemResponse setExists:](v5, "setExists:", [v6 BOOLValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"outcome"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[IFTSchemaIFTStatementOutcome alloc] initWithDictionary:v7];
      [(IFTSchemaIFTSystemResponse *)v5 setOutcome:v8];
    }

    v9 = [v4 objectForKeyedSubscript:@"statementId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[IFTSchemaIFTStatementId alloc] initWithDictionary:v9];
      [(IFTSchemaIFTSystemResponse *)v5 setStatementId:v10];
    }

    v11 = [v4 objectForKeyedSubscript:@"toolId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v11 copy];
      [(IFTSchemaIFTSystemResponse *)v5 setToolId:v12];
    }

    v13 = [v4 objectForKeyedSubscript:@"interpretedStatementResults"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = v11;
      v24 = v7;
      v25 = v6;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v14 = v13;
      v15 = [v14 countByEnumeratingWithState:&v26 objects:v31 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v27;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v27 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v26 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v20 = [[IFTSchemaIFTInterpretedStatementResult alloc] initWithDictionary:v19];
              [(IFTSchemaIFTSystemResponse *)v5 addInterpretedStatementResults:v20];
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v26 objects:v31 count:16];
        }

        while (v16);
      }

      v7 = v24;
      v6 = v25;
      v11 = v23;
    }

    v21 = v5;
  }

  return v5;
}

- (IFTSchemaIFTSystemResponse)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(IFTSchemaIFTSystemResponse *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(IFTSchemaIFTSystemResponse *)self dictionaryRepresentation];
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
  v27 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTSystemResponse exists](self, "exists")}];
    [v3 setObject:v4 forKeyedSubscript:@"exists"];
  }

  if ([(NSArray *)self->_interpretedStatementResults count])
  {
    v5 = [MEMORY[0x1E695DF70] array];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v6 = self->_interpretedStatementResults;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v23;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v22 + 1) + 8 * i) dictionaryRepresentation];
          if (v11)
          {
            [v5 addObject:v11];
          }

          else
          {
            v12 = [MEMORY[0x1E695DFB0] null];
            [v5 addObject:v12];
          }
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v8);
    }

    [v3 setObject:v5 forKeyedSubscript:@"interpretedStatementResults"];
  }

  if (self->_outcome)
  {
    v13 = [(IFTSchemaIFTSystemResponse *)self outcome];
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

  if (self->_statementId)
  {
    v16 = [(IFTSchemaIFTSystemResponse *)self statementId];
    v17 = [v16 dictionaryRepresentation];
    if (v17)
    {
      [v3 setObject:v17 forKeyedSubscript:@"statementId"];
    }

    else
    {
      v18 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v18 forKeyedSubscript:@"statementId"];
    }
  }

  if (self->_toolId)
  {
    v19 = [(IFTSchemaIFTSystemResponse *)self toolId];
    v20 = [v19 copy];
    [v3 setObject:v20 forKeyedSubscript:@"toolId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v22];

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

  v4 = [(IFTSchemaIFTStatementOutcome *)self->_outcome hash]^ v3;
  v5 = [(IFTSchemaIFTStatementId *)self->_statementId hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_toolId hash];
  return v6 ^ [(NSArray *)self->_interpretedStatementResults hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_25;
  }

  if ((*&self->_has & 1) != (v4[48] & 1))
  {
    goto LABEL_25;
  }

  if (*&self->_has)
  {
    exists = self->_exists;
    if (exists != [v4 exists])
    {
      goto LABEL_25;
    }
  }

  v6 = [(IFTSchemaIFTSystemResponse *)self outcome];
  v7 = [v4 outcome];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_24;
  }

  v8 = [(IFTSchemaIFTSystemResponse *)self outcome];
  if (v8)
  {
    v9 = v8;
    v10 = [(IFTSchemaIFTSystemResponse *)self outcome];
    v11 = [v4 outcome];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTSystemResponse *)self statementId];
  v7 = [v4 statementId];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_24;
  }

  v13 = [(IFTSchemaIFTSystemResponse *)self statementId];
  if (v13)
  {
    v14 = v13;
    v15 = [(IFTSchemaIFTSystemResponse *)self statementId];
    v16 = [v4 statementId];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTSystemResponse *)self toolId];
  v7 = [v4 toolId];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_24;
  }

  v18 = [(IFTSchemaIFTSystemResponse *)self toolId];
  if (v18)
  {
    v19 = v18;
    v20 = [(IFTSchemaIFTSystemResponse *)self toolId];
    v21 = [v4 toolId];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTSystemResponse *)self interpretedStatementResults];
  v7 = [v4 interpretedStatementResults];
  if ((v6 != 0) != (v7 == 0))
  {
    v23 = [(IFTSchemaIFTSystemResponse *)self interpretedStatementResults];
    if (!v23)
    {

LABEL_28:
      v28 = 1;
      goto LABEL_26;
    }

    v24 = v23;
    v25 = [(IFTSchemaIFTSystemResponse *)self interpretedStatementResults];
    v26 = [v4 interpretedStatementResults];
    v27 = [v25 isEqual:v26];

    if (v27)
    {
      goto LABEL_28;
    }
  }

  else
  {
LABEL_24:
  }

LABEL_25:
  v28 = 0;
LABEL_26:

  return v28;
}

- (void)writeTo:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  v5 = [(IFTSchemaIFTSystemResponse *)self outcome];

  if (v5)
  {
    v6 = [(IFTSchemaIFTSystemResponse *)self outcome];
    PBDataWriterWriteSubmessage();
  }

  v7 = [(IFTSchemaIFTSystemResponse *)self statementId];

  if (v7)
  {
    v8 = [(IFTSchemaIFTSystemResponse *)self statementId];
    PBDataWriterWriteSubmessage();
  }

  v9 = [(IFTSchemaIFTSystemResponse *)self toolId];

  if (v9)
  {
    PBDataWriterWriteStringField();
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = self->_interpretedStatementResults;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        PBDataWriterWriteSubmessage();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }
}

- (void)addInterpretedStatementResults:(id)a3
{
  v4 = a3;
  interpretedStatementResults = self->_interpretedStatementResults;
  v8 = v4;
  if (!interpretedStatementResults)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_interpretedStatementResults;
    self->_interpretedStatementResults = v6;

    v4 = v8;
    interpretedStatementResults = self->_interpretedStatementResults;
  }

  [(NSArray *)interpretedStatementResults addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = IFTSchemaIFTSystemResponse;
  v5 = [(SISchemaInstrumentationMessage *)&v15 applySensitiveConditionsPolicy:v4];
  v6 = [(IFTSchemaIFTSystemResponse *)self outcome];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(IFTSchemaIFTSystemResponse *)self deleteOutcome];
  }

  v9 = [(IFTSchemaIFTSystemResponse *)self statementId];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(IFTSchemaIFTSystemResponse *)self deleteStatementId];
  }

  v12 = [(IFTSchemaIFTSystemResponse *)self interpretedStatementResults];
  v13 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v12 underConditions:v4];
  [(IFTSchemaIFTSystemResponse *)self setInterpretedStatementResults:v13];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end