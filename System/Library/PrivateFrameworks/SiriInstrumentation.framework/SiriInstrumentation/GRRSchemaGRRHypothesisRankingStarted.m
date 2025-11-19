@interface GRRSchemaGRRHypothesisRankingStarted
- (BOOL)isEqual:(id)a3;
- (GRRSchemaGRRHypothesisRankingStarted)initWithDictionary:(id)a3;
- (GRRSchemaGRRHypothesisRankingStarted)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)addFeatureFlags:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation GRRSchemaGRRHypothesisRankingStarted

- (GRRSchemaGRRHypothesisRankingStarted)initWithDictionary:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v23.receiver = self;
  v23.super_class = GRRSchemaGRRHypothesisRankingStarted;
  v5 = [(GRRSchemaGRRHypothesisRankingStarted *)&v23 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"assetVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(GRRSchemaGRRHypothesisRankingStarted *)v5 setAssetVersion:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"featureFlags"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v6;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v20;
        do
        {
          v13 = 0;
          do
          {
            if (*v20 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v19 + 1) + 8 * v13);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = [[GRRSchemaGRRFeatureFlag alloc] initWithDictionary:v14];
              [(GRRSchemaGRRHypothesisRankingStarted *)v5 addFeatureFlags:v15];
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
        }

        while (v11);
      }

      v6 = v18;
    }

    v16 = v5;
  }

  return v5;
}

- (GRRSchemaGRRHypothesisRankingStarted)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(GRRSchemaGRRHypothesisRankingStarted *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(GRRSchemaGRRHypothesisRankingStarted *)self dictionaryRepresentation];
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
  v20 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_assetVersion)
  {
    v4 = [(GRRSchemaGRRHypothesisRankingStarted *)self assetVersion];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"assetVersion"];
  }

  if ([(NSArray *)self->_featureFlags count])
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = self->_featureFlags;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v15 + 1) + 8 * i) dictionaryRepresentation];
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

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKeyedSubscript:@"featureFlags"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v15];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(GRRSchemaGRRHypothesisRankingStarted *)self assetVersion];
  v6 = [v4 assetVersion];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(GRRSchemaGRRHypothesisRankingStarted *)self assetVersion];
  if (v7)
  {
    v8 = v7;
    v9 = [(GRRSchemaGRRHypothesisRankingStarted *)self assetVersion];
    v10 = [v4 assetVersion];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(GRRSchemaGRRHypothesisRankingStarted *)self featureFlags];
  v6 = [v4 featureFlags];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(GRRSchemaGRRHypothesisRankingStarted *)self featureFlags];
    if (!v12)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(GRRSchemaGRRHypothesisRankingStarted *)self featureFlags];
    v15 = [v4 featureFlags];
    v16 = [v14 isEqual:v15];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(GRRSchemaGRRHypothesisRankingStarted *)self assetVersion];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_featureFlags;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)addFeatureFlags:(id)a3
{
  v4 = a3;
  featureFlags = self->_featureFlags;
  v8 = v4;
  if (!featureFlags)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_featureFlags;
    self->_featureFlags = v6;

    v4 = v8;
    featureFlags = self->_featureFlags;
  }

  [(NSArray *)featureFlags addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = GRRSchemaGRRHypothesisRankingStarted;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(GRRSchemaGRRHypothesisRankingStarted *)self featureFlags:v9.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:v4];

  [(GRRSchemaGRRHypothesisRankingStarted *)self setFeatureFlags:v7];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end