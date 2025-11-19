@interface EXPSiriSchemaEXPClientSiriRequestExperimentTriggeredTier1
- (BOOL)isEqual:(id)a3;
- (EXPSiriSchemaEXPClientSiriRequestExperimentTriggeredTier1)initWithDictionary:(id)a3;
- (EXPSiriSchemaEXPClientSiriRequestExperimentTriggeredTier1)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addAllocation:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation EXPSiriSchemaEXPClientSiriRequestExperimentTriggeredTier1

- (EXPSiriSchemaEXPClientSiriRequestExperimentTriggeredTier1)initWithDictionary:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v25.receiver = self;
  v25.super_class = EXPSiriSchemaEXPClientSiriRequestExperimentTriggeredTier1;
  v5 = [(EXPSiriSchemaEXPClientSiriRequestExperimentTriggeredTier1 *)&v25 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"allocation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v22;
        do
        {
          v11 = 0;
          do
          {
            if (*v22 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v21 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [EXPSchemaEXPTrialExperiment alloc];
              v14 = [(EXPSchemaEXPTrialExperiment *)v13 initWithDictionary:v12, v21];
              [(EXPSiriSchemaEXPClientSiriRequestExperimentTriggeredTier1 *)v5 addAllocation:v14];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
        }

        while (v9);
      }
    }

    v15 = [v4 objectForKeyedSubscript:{@"codepathId", v21}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [[SISchemaUUID alloc] initWithDictionary:v15];
      [(EXPSiriSchemaEXPClientSiriRequestExperimentTriggeredTier1 *)v5 setCodepathId:v16];
    }

    v17 = [v4 objectForKeyedSubscript:@"requestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [[SISchemaUUID alloc] initWithDictionary:v17];
      [(EXPSiriSchemaEXPClientSiriRequestExperimentTriggeredTier1 *)v5 setRequestId:v18];
    }

    v19 = v5;
  }

  return v5;
}

- (EXPSiriSchemaEXPClientSiriRequestExperimentTriggeredTier1)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(EXPSiriSchemaEXPClientSiriRequestExperimentTriggeredTier1 *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(EXPSiriSchemaEXPClientSiriRequestExperimentTriggeredTier1 *)self dictionaryRepresentation];
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
  v24 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_allocations count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v5 = self->_allocations;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v20;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
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

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKeyedSubscript:@"allocation"];
  }

  if (self->_codepathId)
  {
    v12 = [(EXPSiriSchemaEXPClientSiriRequestExperimentTriggeredTier1 *)self codepathId];
    v13 = [v12 dictionaryRepresentation];
    if (v13)
    {
      [v3 setObject:v13 forKeyedSubscript:@"codepathId"];
    }

    else
    {
      v14 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v14 forKeyedSubscript:@"codepathId"];
    }
  }

  if (self->_requestId)
  {
    v15 = [(EXPSiriSchemaEXPClientSiriRequestExperimentTriggeredTier1 *)self requestId];
    v16 = [v15 dictionaryRepresentation];
    if (v16)
    {
      [v3 setObject:v16 forKeyedSubscript:@"requestId"];
    }

    else
    {
      v17 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v17 forKeyedSubscript:@"requestId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v19];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_allocations hash];
  v4 = [(SISchemaUUID *)self->_codepathId hash]^ v3;
  return v4 ^ [(SISchemaUUID *)self->_requestId hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(EXPSiriSchemaEXPClientSiriRequestExperimentTriggeredTier1 *)self allocations];
  v6 = [v4 allocations];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(EXPSiriSchemaEXPClientSiriRequestExperimentTriggeredTier1 *)self allocations];
  if (v7)
  {
    v8 = v7;
    v9 = [(EXPSiriSchemaEXPClientSiriRequestExperimentTriggeredTier1 *)self allocations];
    v10 = [v4 allocations];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(EXPSiriSchemaEXPClientSiriRequestExperimentTriggeredTier1 *)self codepathId];
  v6 = [v4 codepathId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(EXPSiriSchemaEXPClientSiriRequestExperimentTriggeredTier1 *)self codepathId];
  if (v12)
  {
    v13 = v12;
    v14 = [(EXPSiriSchemaEXPClientSiriRequestExperimentTriggeredTier1 *)self codepathId];
    v15 = [v4 codepathId];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(EXPSiriSchemaEXPClientSiriRequestExperimentTriggeredTier1 *)self requestId];
  v6 = [v4 requestId];
  if ((v5 != 0) != (v6 == 0))
  {
    v17 = [(EXPSiriSchemaEXPClientSiriRequestExperimentTriggeredTier1 *)self requestId];
    if (!v17)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(EXPSiriSchemaEXPClientSiriRequestExperimentTriggeredTier1 *)self requestId];
    v20 = [v4 requestId];
    v21 = [v19 isEqual:v20];

    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_16:
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (void)writeTo:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_allocations;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v10 = [(EXPSiriSchemaEXPClientSiriRequestExperimentTriggeredTier1 *)self codepathId];

  if (v10)
  {
    v11 = [(EXPSiriSchemaEXPClientSiriRequestExperimentTriggeredTier1 *)self codepathId];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(EXPSiriSchemaEXPClientSiriRequestExperimentTriggeredTier1 *)self requestId];

  if (v12)
  {
    v13 = [(EXPSiriSchemaEXPClientSiriRequestExperimentTriggeredTier1 *)self requestId];
    PBDataWriterWriteSubmessage();
  }
}

- (void)addAllocation:(id)a3
{
  v4 = a3;
  allocations = self->_allocations;
  v8 = v4;
  if (!allocations)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_allocations;
    self->_allocations = v6;

    v4 = v8;
    allocations = self->_allocations;
  }

  [(NSArray *)allocations addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = EXPSiriSchemaEXPClientSiriRequestExperimentTriggeredTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v15 applySensitiveConditionsPolicy:v4];
  v6 = [(EXPSiriSchemaEXPClientSiriRequestExperimentTriggeredTier1 *)self allocations];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:v4];
  [(EXPSiriSchemaEXPClientSiriRequestExperimentTriggeredTier1 *)self setAllocations:v7];

  v8 = [(EXPSiriSchemaEXPClientSiriRequestExperimentTriggeredTier1 *)self codepathId];
  v9 = [v8 applySensitiveConditionsPolicy:v4];
  v10 = [v9 suppressMessage];

  if (v10)
  {
    [(EXPSiriSchemaEXPClientSiriRequestExperimentTriggeredTier1 *)self deleteCodepathId];
  }

  v11 = [(EXPSiriSchemaEXPClientSiriRequestExperimentTriggeredTier1 *)self requestId];
  v12 = [v11 applySensitiveConditionsPolicy:v4];
  v13 = [v12 suppressMessage];

  if (v13)
  {
    [(EXPSiriSchemaEXPClientSiriRequestExperimentTriggeredTier1 *)self deleteRequestId];
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