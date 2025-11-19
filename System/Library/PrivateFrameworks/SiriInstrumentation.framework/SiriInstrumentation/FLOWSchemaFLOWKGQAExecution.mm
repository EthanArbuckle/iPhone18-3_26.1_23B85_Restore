@interface FLOWSchemaFLOWKGQAExecution
- (BOOL)isEqual:(id)a3;
- (FLOWSchemaFLOWKGQAExecution)initWithDictionary:(id)a3;
- (FLOWSchemaFLOWKGQAExecution)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addAttributes:(id)a3;
- (void)setHasIsDisputedResponse:(BOOL)a3;
- (void)setHasIsWebExtractedFact:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation FLOWSchemaFLOWKGQAExecution

- (FLOWSchemaFLOWKGQAExecution)initWithDictionary:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v25.receiver = self;
  v25.super_class = FLOWSchemaFLOWKGQAExecution;
  v5 = [(FLOWSchemaFLOWKGQAExecution *)&v25 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"kgQAUsecase"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWKGQAExecution setKgQAUsecase:](v5, "setKgQAUsecase:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"attributes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v8 = v7;
      v9 = [v8 countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v22;
        do
        {
          v12 = 0;
          do
          {
            if (*v22 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v21 + 1) + 8 * v12);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v14 = [v13 copy];
              [(FLOWSchemaFLOWKGQAExecution *)v5 addAttributes:v14];
            }

            ++v12;
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v21 objects:v26 count:16];
        }

        while (v10);
      }
    }

    v15 = [v4 objectForKeyedSubscript:{@"isDisputedResponse", v21}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWKGQAExecution setIsDisputedResponse:](v5, "setIsDisputedResponse:", [v15 BOOLValue]);
    }

    v16 = [v4 objectForKeyedSubscript:@"nlgKey"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(FLOWSchemaFLOWKGQAExecution *)v5 setNlgKey:v17];
    }

    v18 = [v4 objectForKeyedSubscript:@"isWebExtractedFact"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWKGQAExecution setIsWebExtractedFact:](v5, "setIsWebExtractedFact:", [v18 BOOLValue]);
    }

    v19 = v5;
  }

  return v5;
}

- (FLOWSchemaFLOWKGQAExecution)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(FLOWSchemaFLOWKGQAExecution *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(FLOWSchemaFLOWKGQAExecution *)self dictionaryRepresentation];
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
  if (self->_attributes)
  {
    v4 = [(FLOWSchemaFLOWKGQAExecution *)self attributes];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"attributes"];
  }

  v6 = *(&self->_isWebExtractedFact + 1);
  if ((v6 & 2) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[FLOWSchemaFLOWKGQAExecution isDisputedResponse](self, "isDisputedResponse")}];
    [v3 setObject:v7 forKeyedSubscript:@"isDisputedResponse"];

    v6 = *(&self->_isWebExtractedFact + 1);
    if ((v6 & 4) == 0)
    {
LABEL_5:
      if ((v6 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_9;
    }
  }

  else if ((*(&self->_isWebExtractedFact + 1) & 4) == 0)
  {
    goto LABEL_5;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[FLOWSchemaFLOWKGQAExecution isWebExtractedFact](self, "isWebExtractedFact")}];
  [v3 setObject:v8 forKeyedSubscript:@"isWebExtractedFact"];

  if (!*(&self->_isWebExtractedFact + 1))
  {
    goto LABEL_13;
  }

LABEL_9:
  v9 = [(FLOWSchemaFLOWKGQAExecution *)self kgQAUsecase]- 1;
  if (v9 > 6)
  {
    v10 = @"FLOWKGQAUSECASE_UNKNOWN";
  }

  else
  {
    v10 = off_1E78D53A8[v9];
  }

  [v3 setObject:v10 forKeyedSubscript:@"kgQAUsecase"];
LABEL_13:
  if (self->_nlgKey)
  {
    v11 = [(FLOWSchemaFLOWKGQAExecution *)self nlgKey];
    v12 = [v11 copy];
    [v3 setObject:v12 forKeyedSubscript:@"nlgKey"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*(&self->_isWebExtractedFact + 1))
  {
    v3 = 2654435761 * self->_kgQAUsecase;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSArray *)self->_attributes hash];
  if ((*(&self->_isWebExtractedFact + 1) & 2) != 0)
  {
    v5 = 2654435761 * self->_isDisputedResponse;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(NSString *)self->_nlgKey hash];
  if ((*(&self->_isWebExtractedFact + 1) & 4) != 0)
  {
    v7 = 2654435761 * self->_isWebExtractedFact;
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
    goto LABEL_18;
  }

  if (*(&self->_isWebExtractedFact + 1) != (v4[41] & 1))
  {
    goto LABEL_18;
  }

  if (*(&self->_isWebExtractedFact + 1))
  {
    kgQAUsecase = self->_kgQAUsecase;
    if (kgQAUsecase != [v4 kgQAUsecase])
    {
      goto LABEL_18;
    }
  }

  v6 = [(FLOWSchemaFLOWKGQAExecution *)self attributes];
  v7 = [v4 attributes];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_17;
  }

  v8 = [(FLOWSchemaFLOWKGQAExecution *)self attributes];
  if (v8)
  {
    v9 = v8;
    v10 = [(FLOWSchemaFLOWKGQAExecution *)self attributes];
    v11 = [v4 attributes];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v13 = (*(&self->_isWebExtractedFact + 1) >> 1) & 1;
  if (v13 != ((v4[41] >> 1) & 1))
  {
    goto LABEL_18;
  }

  if (v13)
  {
    isDisputedResponse = self->_isDisputedResponse;
    if (isDisputedResponse != [v4 isDisputedResponse])
    {
      goto LABEL_18;
    }
  }

  v6 = [(FLOWSchemaFLOWKGQAExecution *)self nlgKey];
  v7 = [v4 nlgKey];
  if ((v6 != 0) == (v7 == 0))
  {
LABEL_17:

    goto LABEL_18;
  }

  v15 = [(FLOWSchemaFLOWKGQAExecution *)self nlgKey];
  if (v15)
  {
    v16 = v15;
    v17 = [(FLOWSchemaFLOWKGQAExecution *)self nlgKey];
    v18 = [v4 nlgKey];
    v19 = [v17 isEqual:v18];

    if (!v19)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v22 = (*(&self->_isWebExtractedFact + 1) >> 2) & 1;
  if (v22 == ((v4[41] >> 2) & 1))
  {
    if (!v22 || (isWebExtractedFact = self->_isWebExtractedFact, isWebExtractedFact == [v4 isWebExtractedFact]))
    {
      v20 = 1;
      goto LABEL_19;
    }
  }

LABEL_18:
  v20 = 0;
LABEL_19:

  return v20;
}

- (void)writeTo:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*(&self->_isWebExtractedFact + 1))
  {
    PBDataWriterWriteInt32Field();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_attributes;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  if ((*(&self->_isWebExtractedFact + 1) & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  v10 = [(FLOWSchemaFLOWKGQAExecution *)self nlgKey];

  if (v10)
  {
    PBDataWriterWriteStringField();
  }

  if ((*(&self->_isWebExtractedFact + 1) & 4) != 0)
  {
    PBDataWriterWriteBOOLField();
  }
}

- (void)setHasIsWebExtractedFact:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isWebExtractedFact + 1) = *(&self->_isWebExtractedFact + 1) & 0xFB | v3;
}

- (void)setHasIsDisputedResponse:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isWebExtractedFact + 1) = *(&self->_isWebExtractedFact + 1) & 0xFD | v3;
}

- (void)addAttributes:(id)a3
{
  v4 = a3;
  attributes = self->_attributes;
  v8 = v4;
  if (!attributes)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_attributes;
    self->_attributes = v6;

    v4 = v8;
    attributes = self->_attributes;
  }

  [(NSArray *)attributes addObject:v4];
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end