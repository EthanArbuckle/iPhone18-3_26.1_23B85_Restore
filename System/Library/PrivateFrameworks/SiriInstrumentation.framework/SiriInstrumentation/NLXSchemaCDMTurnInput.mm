@interface NLXSchemaCDMTurnInput
- (BOOL)isEqual:(id)a3;
- (NLXSchemaCDMTurnInput)initWithDictionary:(id)a3;
- (NLXSchemaCDMTurnInput)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addAsrHypothesisIds:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NLXSchemaCDMTurnInput

- (NLXSchemaCDMTurnInput)initWithDictionary:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v24.receiver = self;
  v24.super_class = NLXSchemaCDMTurnInput;
  v5 = [(NLXSchemaCDMTurnInput *)&v24 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"asrHypothesisIds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v21;
        do
        {
          v11 = 0;
          do
          {
            if (*v21 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v20 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [SISchemaUUID alloc];
              v14 = [(SISchemaUUID *)v13 initWithDictionary:v12, v20];
              [(NLXSchemaCDMTurnInput *)v5 addAsrHypothesisIds:v14];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v20 objects:v25 count:16];
        }

        while (v9);
      }
    }

    v15 = [v4 objectForKeyedSubscript:{@"turnContext", v20}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [[NLXSchemaCDMTurnContext alloc] initWithDictionary:v15];
      [(NLXSchemaCDMTurnInput *)v5 setTurnContext:v16];
    }

    v17 = [v4 objectForKeyedSubscript:@"isTapToEdit"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLXSchemaCDMTurnInput setIsTapToEdit:](v5, "setIsTapToEdit:", [v17 BOOLValue]);
    }

    v18 = v5;
  }

  return v5;
}

- (NLXSchemaCDMTurnInput)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(NLXSchemaCDMTurnInput *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(NLXSchemaCDMTurnInput *)self dictionaryRepresentation];
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
  v22 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_asrHypothesisIds count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = self->_asrHypothesisIds;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v17 + 1) + 8 * i) dictionaryRepresentation];
          if (v10)
          {
            [v4 addObject:v10];
          }

          else
          {
            v11 = [MEMORY[0x1E695DFB0] null];
            [v4 addObject:v11];
          }
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKeyedSubscript:@"asrHypothesisIds"];
  }

  if (*(&self->_isTapToEdit + 1))
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[NLXSchemaCDMTurnInput isTapToEdit](self, "isTapToEdit")}];
    [v3 setObject:v12 forKeyedSubscript:@"isTapToEdit"];
  }

  if (self->_turnContext)
  {
    v13 = [(NLXSchemaCDMTurnInput *)self turnContext];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"turnContext"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"turnContext"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v17];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_asrHypothesisIds hash];
  v4 = [(NLXSchemaCDMTurnContext *)self->_turnContext hash];
  if (*(&self->_isTapToEdit + 1))
  {
    v5 = 2654435761 * self->_isTapToEdit;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(NLXSchemaCDMTurnInput *)self asrHypothesisIds];
  v6 = [v4 asrHypothesisIds];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(NLXSchemaCDMTurnInput *)self asrHypothesisIds];
  if (v7)
  {
    v8 = v7;
    v9 = [(NLXSchemaCDMTurnInput *)self asrHypothesisIds];
    v10 = [v4 asrHypothesisIds];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(NLXSchemaCDMTurnInput *)self turnContext];
  v6 = [v4 turnContext];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  v12 = [(NLXSchemaCDMTurnInput *)self turnContext];
  if (v12)
  {
    v13 = v12;
    v14 = [(NLXSchemaCDMTurnInput *)self turnContext];
    v15 = [v4 turnContext];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if (*(&self->_isTapToEdit + 1) == (v4[25] & 1))
  {
    if (!*(&self->_isTapToEdit + 1) || (isTapToEdit = self->_isTapToEdit, isTapToEdit == [v4 isTapToEdit]))
    {
      v17 = 1;
      goto LABEL_13;
    }
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_asrHypothesisIds;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v10 = [(NLXSchemaCDMTurnInput *)self turnContext];

  if (v10)
  {
    v11 = [(NLXSchemaCDMTurnInput *)self turnContext];
    PBDataWriterWriteSubmessage();
  }

  if (*(&self->_isTapToEdit + 1))
  {
    PBDataWriterWriteBOOLField();
  }
}

- (void)addAsrHypothesisIds:(id)a3
{
  v4 = a3;
  asrHypothesisIds = self->_asrHypothesisIds;
  v8 = v4;
  if (!asrHypothesisIds)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_asrHypothesisIds;
    self->_asrHypothesisIds = v6;

    v4 = v8;
    asrHypothesisIds = self->_asrHypothesisIds;
  }

  [(NSArray *)asrHypothesisIds addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v11.receiver = self;
  v11.super_class = NLXSchemaCDMTurnInput;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v11 applySensitiveConditionsPolicy:v4];
  v6 = [(NLXSchemaCDMTurnInput *)self asrHypothesisIds:v11.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:v4];
  [(NLXSchemaCDMTurnInput *)self setAsrHypothesisIds:v7];

  v8 = [(NLXSchemaCDMTurnInput *)self turnContext];
  v9 = [v8 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v9 suppressMessage];
  if (v4)
  {
    [(NLXSchemaCDMTurnInput *)self deleteTurnContext];
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