@interface SISchemaUUFRCompletion
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SISchemaUUFRCompletion)initWithDictionary:(id)a3;
- (SISchemaUUFRCompletion)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addHomeKitAccessoryResponse:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SISchemaUUFRCompletion

- (SISchemaUUFRCompletion)initWithDictionary:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v24.receiver = self;
  v24.super_class = SISchemaUUFRCompletion;
  v5 = [(SISchemaUUFRCompletion *)&v24 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"completionStatus"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaUUFRCompletion setCompletionStatus:](v5, "setCompletionStatus:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"homeKitAccessoryResponse"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v6;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v8 = v7;
      v9 = [v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v21;
        do
        {
          v12 = 0;
          do
          {
            if (*v21 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v20 + 1) + 8 * v12);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v14 = [[SISchemaHomeKitAccessoryResponse alloc] initWithDictionary:v13];
              [(SISchemaUUFRCompletion *)v5 addHomeKitAccessoryResponse:v14];
            }

            ++v12;
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
        }

        while (v10);
      }

      v6 = v19;
    }

    v15 = [v4 objectForKeyedSubscript:@"siriResponseContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [[SISchemaSiriResponseContext alloc] initWithDictionary:v15];
      [(SISchemaUUFRCompletion *)v5 setSiriResponseContext:v16];
    }

    v17 = v5;
  }

  return v5;
}

- (SISchemaUUFRCompletion)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SISchemaUUFRCompletion *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SISchemaUUFRCompletion *)self dictionaryRepresentation];
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
  v23 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [(SISchemaUUFRCompletion *)self completionStatus]- 2;
    if (v4 > 4)
    {
      v5 = @"COMPLETIONSTATUS_UNKNOWN_COMPLETION_STATUS";
    }

    else
    {
      v5 = off_1E78E6DF0[v4];
    }

    [v3 setObject:v5 forKeyedSubscript:@"completionStatus"];
  }

  if ([(NSArray *)self->_homeKitAccessoryResponses count])
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = self->_homeKitAccessoryResponses;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v18 + 1) + 8 * i) dictionaryRepresentation];
          if (v12)
          {
            [v6 addObject:v12];
          }

          else
          {
            v13 = [MEMORY[0x1E695DFB0] null];
            [v6 addObject:v13];
          }
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKeyedSubscript:@"homeKitAccessoryResponse"];
  }

  if (self->_siriResponseContext)
  {
    v14 = [(SISchemaUUFRCompletion *)self siriResponseContext];
    v15 = [v14 dictionaryRepresentation];
    if (v15)
    {
      [v3 setObject:v15 forKeyedSubscript:@"siriResponseContext"];
    }

    else
    {
      v16 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v16 forKeyedSubscript:@"siriResponseContext"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v18];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_completionStatus;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSArray *)self->_homeKitAccessoryResponses hash]^ v3;
  return v4 ^ [(SISchemaSiriResponseContext *)self->_siriResponseContext hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  if ((*&self->_has & 1) != (v4[32] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    completionStatus = self->_completionStatus;
    if (completionStatus != [v4 completionStatus])
    {
      goto LABEL_15;
    }
  }

  v6 = [(SISchemaUUFRCompletion *)self homeKitAccessoryResponses];
  v7 = [v4 homeKitAccessoryResponses];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_14;
  }

  v8 = [(SISchemaUUFRCompletion *)self homeKitAccessoryResponses];
  if (v8)
  {
    v9 = v8;
    v10 = [(SISchemaUUFRCompletion *)self homeKitAccessoryResponses];
    v11 = [v4 homeKitAccessoryResponses];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  v6 = [(SISchemaUUFRCompletion *)self siriResponseContext];
  v7 = [v4 siriResponseContext];
  if ((v6 != 0) != (v7 == 0))
  {
    v13 = [(SISchemaUUFRCompletion *)self siriResponseContext];
    if (!v13)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = v13;
    v15 = [(SISchemaUUFRCompletion *)self siriResponseContext];
    v16 = [v4 siriResponseContext];
    v17 = [v15 isEqual:v16];

    if (v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
LABEL_14:
  }

LABEL_15:
  v18 = 0;
LABEL_16:

  return v18;
}

- (void)writeTo:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_homeKitAccessoryResponses;
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

  v10 = [(SISchemaUUFRCompletion *)self siriResponseContext];

  if (v10)
  {
    v11 = [(SISchemaUUFRCompletion *)self siriResponseContext];
    PBDataWriterWriteSubmessage();
  }
}

- (void)addHomeKitAccessoryResponse:(id)a3
{
  v4 = a3;
  homeKitAccessoryResponses = self->_homeKitAccessoryResponses;
  v8 = v4;
  if (!homeKitAccessoryResponses)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_homeKitAccessoryResponses;
    self->_homeKitAccessoryResponses = v6;

    v4 = v8;
    homeKitAccessoryResponses = self->_homeKitAccessoryResponses;
  }

  [(NSArray *)homeKitAccessoryResponses addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v11.receiver = self;
  v11.super_class = SISchemaUUFRCompletion;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v11 applySensitiveConditionsPolicy:v4];
  v6 = [(SISchemaUUFRCompletion *)self homeKitAccessoryResponses:v11.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:v4];
  [(SISchemaUUFRCompletion *)self setHomeKitAccessoryResponses:v7];

  v8 = [(SISchemaUUFRCompletion *)self siriResponseContext];
  v9 = [v8 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v9 suppressMessage];
  if (v4)
  {
    [(SISchemaUUFRCompletion *)self deleteSiriResponseContext];
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