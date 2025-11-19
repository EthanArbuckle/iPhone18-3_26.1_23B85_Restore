@interface SADSchemaSADTrialNamespaceStatus
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SADSchemaSADTrialNamespaceStatus)initWithDictionary:(id)a3;
- (SADSchemaSADTrialNamespaceStatus)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addAssets:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SADSchemaSADTrialNamespaceStatus

- (SADSchemaSADTrialNamespaceStatus)initWithDictionary:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v27.receiver = self;
  v27.super_class = SADSchemaSADTrialNamespaceStatus;
  v5 = [(SADSchemaSADTrialNamespaceStatus *)&v27 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"namespaceCompatabilityVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaVersion alloc] initWithDictionary:v6];
      [(SADSchemaSADTrialNamespaceStatus *)v5 setNamespaceCompatabilityVersion:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"rollout"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SADSchemaSADTrialRollout alloc] initWithDictionary:v8];
      [(SADSchemaSADTrialNamespaceStatus *)v5 setRollout:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"assets"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = v8;
      v22 = v6;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v23 objects:v28 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v24;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v24 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v23 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v17 = [[SISchemaAsset alloc] initWithDictionary:v16];
              [(SADSchemaSADTrialNamespaceStatus *)v5 addAssets:v17];
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v23 objects:v28 count:16];
        }

        while (v13);
      }

      v8 = v21;
    }

    v18 = [v4 objectForKeyedSubscript:{@"trialNamespace", v21, v22, v23}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SADSchemaSADTrialNamespaceStatus setTrialNamespace:](v5, "setTrialNamespace:", [v18 intValue]);
    }

    v19 = v5;
  }

  return v5;
}

- (SADSchemaSADTrialNamespaceStatus)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SADSchemaSADTrialNamespaceStatus *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SADSchemaSADTrialNamespaceStatus *)self dictionaryRepresentation];
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
  v26 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_assets count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v5 = self->_assets;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v22;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v22 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v21 + 1) + 8 * i) dictionaryRepresentation];
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

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKeyedSubscript:@"assets"];
  }

  if (self->_namespaceCompatabilityVersion)
  {
    v12 = [(SADSchemaSADTrialNamespaceStatus *)self namespaceCompatabilityVersion];
    v13 = [v12 dictionaryRepresentation];
    if (v13)
    {
      [v3 setObject:v13 forKeyedSubscript:@"namespaceCompatabilityVersion"];
    }

    else
    {
      v14 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v14 forKeyedSubscript:@"namespaceCompatabilityVersion"];
    }
  }

  if (self->_rollout)
  {
    v15 = [(SADSchemaSADTrialNamespaceStatus *)self rollout];
    v16 = [v15 dictionaryRepresentation];
    if (v16)
    {
      [v3 setObject:v16 forKeyedSubscript:@"rollout"];
    }

    else
    {
      v17 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v17 forKeyedSubscript:@"rollout"];
    }
  }

  if (*&self->_has)
  {
    v18 = [(SADSchemaSADTrialNamespaceStatus *)self trialNamespace]- 1;
    if (v18 > 0xC)
    {
      v19 = @"SADNAMESPACE_UNKNOWN";
    }

    else
    {
      v19 = off_1E78E2888[v18];
    }

    [v3 setObject:v19 forKeyedSubscript:{@"trialNamespace", v21}];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v21];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaVersion *)self->_namespaceCompatabilityVersion hash];
  v4 = [(SADSchemaSADTrialRollout *)self->_rollout hash];
  v5 = [(NSArray *)self->_assets hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_trialNamespace;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(SADSchemaSADTrialNamespaceStatus *)self namespaceCompatabilityVersion];
  v6 = [v4 namespaceCompatabilityVersion];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(SADSchemaSADTrialNamespaceStatus *)self namespaceCompatabilityVersion];
  if (v7)
  {
    v8 = v7;
    v9 = [(SADSchemaSADTrialNamespaceStatus *)self namespaceCompatabilityVersion];
    v10 = [v4 namespaceCompatabilityVersion];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(SADSchemaSADTrialNamespaceStatus *)self rollout];
  v6 = [v4 rollout];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(SADSchemaSADTrialNamespaceStatus *)self rollout];
  if (v12)
  {
    v13 = v12;
    v14 = [(SADSchemaSADTrialNamespaceStatus *)self rollout];
    v15 = [v4 rollout];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(SADSchemaSADTrialNamespaceStatus *)self assets];
  v6 = [v4 assets];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_16:

    goto LABEL_17;
  }

  v17 = [(SADSchemaSADTrialNamespaceStatus *)self assets];
  if (v17)
  {
    v18 = v17;
    v19 = [(SADSchemaSADTrialNamespaceStatus *)self assets];
    v20 = [v4 assets];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) == (v4[36] & 1))
  {
    if ((*&self->_has & 1) == 0 || (trialNamespace = self->_trialNamespace, trialNamespace == [v4 trialNamespace]))
    {
      v22 = 1;
      goto LABEL_18;
    }
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
  v5 = [(SADSchemaSADTrialNamespaceStatus *)self namespaceCompatabilityVersion];

  if (v5)
  {
    v6 = [(SADSchemaSADTrialNamespaceStatus *)self namespaceCompatabilityVersion];
    PBDataWriterWriteSubmessage();
  }

  v7 = [(SADSchemaSADTrialNamespaceStatus *)self rollout];

  if (v7)
  {
    v8 = [(SADSchemaSADTrialNamespaceStatus *)self rollout];
    PBDataWriterWriteSubmessage();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = self->_assets;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        PBDataWriterWriteSubmessage();
        ++v13;
      }

      while (v11 != v13);
      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (void)addAssets:(id)a3
{
  v4 = a3;
  assets = self->_assets;
  v8 = v4;
  if (!assets)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_assets;
    self->_assets = v6;

    v4 = v8;
    assets = self->_assets;
  }

  [(NSArray *)assets addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = SADSchemaSADTrialNamespaceStatus;
  v5 = [(SISchemaInstrumentationMessage *)&v15 applySensitiveConditionsPolicy:v4];
  v6 = [(SADSchemaSADTrialNamespaceStatus *)self namespaceCompatabilityVersion];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(SADSchemaSADTrialNamespaceStatus *)self deleteNamespaceCompatabilityVersion];
  }

  v9 = [(SADSchemaSADTrialNamespaceStatus *)self rollout];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(SADSchemaSADTrialNamespaceStatus *)self deleteRollout];
  }

  v12 = [(SADSchemaSADTrialNamespaceStatus *)self assets];
  v13 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v12 underConditions:v4];
  [(SADSchemaSADTrialNamespaceStatus *)self setAssets:v13];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end