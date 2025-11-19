@interface IFTSchemaIFTQueryStep
- (BOOL)isEqual:(id)a3;
- (IFTSchemaIFTQueryStep)initWithDictionary:(id)a3;
- (IFTSchemaIFTQueryStep)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addQueries:(id)a3;
- (void)setHasPayloadType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation IFTSchemaIFTQueryStep

- (IFTSchemaIFTQueryStep)initWithDictionary:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v28.receiver = self;
  v28.super_class = IFTSchemaIFTQueryStep;
  v5 = [(IFTSchemaIFTQueryStep *)&v28 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"exists"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTQueryStep setExists:](v5, "setExists:", [v6 BOOLValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"statementId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[IFTSchemaIFTStatementId alloc] initWithDictionary:v7];
      [(IFTSchemaIFTQueryStep *)v5 setStatementId:v8];
    }

    v9 = [v4 objectForKeyedSubscript:@"queries"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = v7;
      v23 = v6;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v10 = v9;
      v11 = [v10 countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v25;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v25 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v24 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v16 = [[IFTSchemaIFTParameterQuery alloc] initWithDictionary:v15];
              [(IFTSchemaIFTQueryStep *)v5 addQueries:v16];
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v24 objects:v29 count:16];
        }

        while (v12);
      }

      v7 = v22;
    }

    v17 = [v4 objectForKeyedSubscript:{@"context", v22, v23, v24}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [[IFTSchemaIFTActionParameterContext alloc] initWithDictionary:v17];
      [(IFTSchemaIFTQueryStep *)v5 setContext:v18];
    }

    v19 = [v4 objectForKeyedSubscript:@"payloadType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTQueryStep setPayloadType:](v5, "setPayloadType:", [v19 intValue]);
    }

    v20 = v5;
  }

  return v5;
}

- (IFTSchemaIFTQueryStep)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(IFTSchemaIFTQueryStep *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(IFTSchemaIFTQueryStep *)self dictionaryRepresentation];
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
  v28 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_context)
  {
    v4 = [(IFTSchemaIFTQueryStep *)self context];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"context"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"context"];
    }
  }

  has = self->_has;
  if (has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTQueryStep exists](self, "exists")}];
    [v3 setObject:v8 forKeyedSubscript:@"exists"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v9 = [(IFTSchemaIFTQueryStep *)self payloadType]- 1;
    if (v9 > 3)
    {
      v10 = @"IFTQUERYPAYLOADTYPE_UNKNOWN";
    }

    else
    {
      v10 = off_1E78D8580[v9];
    }

    [v3 setObject:v10 forKeyedSubscript:@"payloadType"];
  }

  if ([(NSArray *)self->_queries count])
  {
    v11 = [MEMORY[0x1E695DF70] array];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v12 = self->_queries;
    v13 = [(NSArray *)v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v24;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v24 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v23 + 1) + 8 * i) dictionaryRepresentation];
          if (v17)
          {
            [v11 addObject:v17];
          }

          else
          {
            v18 = [MEMORY[0x1E695DFB0] null];
            [v11 addObject:v18];
          }
        }

        v14 = [(NSArray *)v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v14);
    }

    [v3 setObject:v11 forKeyedSubscript:@"queries"];
  }

  if (self->_statementId)
  {
    v19 = [(IFTSchemaIFTQueryStep *)self statementId];
    v20 = [v19 dictionaryRepresentation];
    if (v20)
    {
      [v3 setObject:v20 forKeyedSubscript:@"statementId"];
    }

    else
    {
      v21 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v21 forKeyedSubscript:@"statementId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v23];

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

  v4 = [(IFTSchemaIFTStatementId *)self->_statementId hash];
  v5 = [(NSArray *)self->_queries hash];
  v6 = [(IFTSchemaIFTActionParameterContext *)self->_context hash];
  if ((*&self->_has & 2) != 0)
  {
    v7 = 2654435761 * self->_payloadType;
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  if ((*&self->_has & 1) != (v4[44] & 1))
  {
    goto LABEL_20;
  }

  if (*&self->_has)
  {
    exists = self->_exists;
    if (exists != [v4 exists])
    {
      goto LABEL_20;
    }
  }

  v6 = [(IFTSchemaIFTQueryStep *)self statementId];
  v7 = [v4 statementId];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_19;
  }

  v8 = [(IFTSchemaIFTQueryStep *)self statementId];
  if (v8)
  {
    v9 = v8;
    v10 = [(IFTSchemaIFTQueryStep *)self statementId];
    v11 = [v4 statementId];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTQueryStep *)self queries];
  v7 = [v4 queries];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_19;
  }

  v13 = [(IFTSchemaIFTQueryStep *)self queries];
  if (v13)
  {
    v14 = v13;
    v15 = [(IFTSchemaIFTQueryStep *)self queries];
    v16 = [v4 queries];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTQueryStep *)self context];
  v7 = [v4 context];
  if ((v6 != 0) == (v7 == 0))
  {
LABEL_19:

    goto LABEL_20;
  }

  v18 = [(IFTSchemaIFTQueryStep *)self context];
  if (v18)
  {
    v19 = v18;
    v20 = [(IFTSchemaIFTQueryStep *)self context];
    v21 = [v4 context];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  v25 = (*&self->_has >> 1) & 1;
  if (v25 == ((v4[44] >> 1) & 1))
  {
    if (!v25 || (payloadType = self->_payloadType, payloadType == [v4 payloadType]))
    {
      v23 = 1;
      goto LABEL_21;
    }
  }

LABEL_20:
  v23 = 0;
LABEL_21:

  return v23;
}

- (void)writeTo:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  v5 = [(IFTSchemaIFTQueryStep *)self statementId];

  if (v5)
  {
    v6 = [(IFTSchemaIFTQueryStep *)self statementId];
    PBDataWriterWriteSubmessage();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = self->_queries;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        PBDataWriterWriteSubmessage();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v12 = [(IFTSchemaIFTQueryStep *)self context];

  if (v12)
  {
    v13 = [(IFTSchemaIFTQueryStep *)self context];
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (void)setHasPayloadType:(BOOL)a3
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

- (void)addQueries:(id)a3
{
  v4 = a3;
  queries = self->_queries;
  v8 = v4;
  if (!queries)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_queries;
    self->_queries = v6;

    v4 = v8;
    queries = self->_queries;
  }

  [(NSArray *)queries addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = IFTSchemaIFTQueryStep;
  v5 = [(SISchemaInstrumentationMessage *)&v15 applySensitiveConditionsPolicy:v4];
  v6 = [(IFTSchemaIFTQueryStep *)self statementId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(IFTSchemaIFTQueryStep *)self deleteStatementId];
  }

  v9 = [(IFTSchemaIFTQueryStep *)self queries];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v9 underConditions:v4];
  [(IFTSchemaIFTQueryStep *)self setQueries:v10];

  v11 = [(IFTSchemaIFTQueryStep *)self context];
  v12 = [v11 applySensitiveConditionsPolicy:v4];
  v13 = [v12 suppressMessage];

  if (v13)
  {
    [(IFTSchemaIFTQueryStep *)self deleteContext];
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