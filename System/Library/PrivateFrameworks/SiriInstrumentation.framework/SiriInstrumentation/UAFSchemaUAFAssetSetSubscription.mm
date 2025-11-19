@interface UAFSchemaUAFAssetSetSubscription
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (UAFSchemaUAFAssetSetSubscription)initWithDictionary:(id)a3;
- (UAFSchemaUAFAssetSetSubscription)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (unsigned)assetSetIndicesAtIndex:(unint64_t)a3;
- (void)addAssetSetIndices:(unsigned int)a3;
- (void)addAssetSetUsages:(id)a3;
- (void)addUsageAliases:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation UAFSchemaUAFAssetSetSubscription

- (UAFSchemaUAFAssetSetSubscription)initWithDictionary:(id)a3
{
  v52 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v48.receiver = self;
  v48.super_class = UAFSchemaUAFAssetSetSubscription;
  v5 = [(UAFSchemaUAFAssetSetSubscription *)&v48 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"subscriptionName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(UAFSchemaUAFAssetSetSubscription *)v5 setSubscriptionName:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"assetSetIndices"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v6;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v10 = v8;
      v11 = [v10 countByEnumeratingWithState:&v44 objects:v51 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v45;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v45 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v44 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              -[UAFSchemaUAFAssetSetSubscription addAssetSetIndices:](v5, "addAssetSetIndices:", [v15 unsignedIntValue]);
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v44 objects:v51 count:16];
        }

        while (v12);
      }

      v6 = v9;
    }

    v16 = [v4 objectForKeyedSubscript:@"assetSetUsages"];
    objc_opt_class();
    v35 = v8;
    if (objc_opt_isKindOfClass())
    {
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v17 = v16;
      v18 = [v17 countByEnumeratingWithState:&v40 objects:v50 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v41;
        do
        {
          for (j = 0; j != v19; ++j)
          {
            if (*v41 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v40 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v23 = [[UAFSchemaUAFAssetSetUsage alloc] initWithDictionary:v22];
              [(UAFSchemaUAFAssetSetSubscription *)v5 addAssetSetUsages:v23];
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v40 objects:v50 count:16];
        }

        while (v19);
      }

      v8 = v35;
    }

    v24 = [v4 objectForKeyedSubscript:@"usageAliases"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v34 = v6;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v25 = v24;
      v26 = [v25 countByEnumeratingWithState:&v36 objects:v49 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v37;
        do
        {
          for (k = 0; k != v27; ++k)
          {
            if (*v37 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v30 = *(*(&v36 + 1) + 8 * k);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v31 = [[UAFSchemaUAFAssetUsageAlias alloc] initWithDictionary:v30];
              [(UAFSchemaUAFAssetSetSubscription *)v5 addUsageAliases:v31];
            }
          }

          v27 = [v25 countByEnumeratingWithState:&v36 objects:v49 count:16];
        }

        while (v27);
      }

      v6 = v34;
      v8 = v35;
    }

    v32 = v5;
  }

  return v5;
}

- (UAFSchemaUAFAssetSetSubscription)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(UAFSchemaUAFAssetSetSubscription *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(UAFSchemaUAFAssetSetSubscription *)self dictionaryRepresentation];
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
  v35 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_assetSetIndices count])
  {
    v4 = [(UAFSchemaUAFAssetSetSubscription *)self assetSetIndices];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"assetSetIndices"];
  }

  if ([(NSArray *)self->_assetSetUsages count])
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v7 = self->_assetSetUsages;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v30;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v30 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v29 + 1) + 8 * i) dictionaryRepresentation];
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

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKeyedSubscript:@"assetSetUsages"];
  }

  if (self->_subscriptionName)
  {
    v14 = [(UAFSchemaUAFAssetSetSubscription *)self subscriptionName];
    v15 = [v14 copy];
    [v3 setObject:v15 forKeyedSubscript:@"subscriptionName"];
  }

  if ([(NSArray *)self->_usageAliases count])
  {
    v16 = [MEMORY[0x1E695DF70] array];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v17 = self->_usageAliases;
    v18 = [(NSArray *)v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v26;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v26 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = [*(*(&v25 + 1) + 8 * j) dictionaryRepresentation];
          if (v22)
          {
            [v16 addObject:v22];
          }

          else
          {
            v23 = [MEMORY[0x1E695DFB0] null];
            [v16 addObject:v23];
          }
        }

        v19 = [(NSArray *)v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v19);
    }

    [v3 setObject:v16 forKeyedSubscript:@"usageAliases"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v25];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_subscriptionName hash];
  v4 = [(NSArray *)self->_assetSetIndices hash]^ v3;
  v5 = [(NSArray *)self->_assetSetUsages hash];
  return v4 ^ v5 ^ [(NSArray *)self->_usageAliases hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  v5 = [(UAFSchemaUAFAssetSetSubscription *)self subscriptionName];
  v6 = [v4 subscriptionName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v7 = [(UAFSchemaUAFAssetSetSubscription *)self subscriptionName];
  if (v7)
  {
    v8 = v7;
    v9 = [(UAFSchemaUAFAssetSetSubscription *)self subscriptionName];
    v10 = [v4 subscriptionName];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(UAFSchemaUAFAssetSetSubscription *)self assetSetIndices];
  v6 = [v4 assetSetIndices];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v12 = [(UAFSchemaUAFAssetSetSubscription *)self assetSetIndices];
  if (v12)
  {
    v13 = v12;
    v14 = [(UAFSchemaUAFAssetSetSubscription *)self assetSetIndices];
    v15 = [v4 assetSetIndices];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(UAFSchemaUAFAssetSetSubscription *)self assetSetUsages];
  v6 = [v4 assetSetUsages];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v17 = [(UAFSchemaUAFAssetSetSubscription *)self assetSetUsages];
  if (v17)
  {
    v18 = v17;
    v19 = [(UAFSchemaUAFAssetSetSubscription *)self assetSetUsages];
    v20 = [v4 assetSetUsages];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(UAFSchemaUAFAssetSetSubscription *)self usageAliases];
  v6 = [v4 usageAliases];
  if ((v5 != 0) != (v6 == 0))
  {
    v22 = [(UAFSchemaUAFAssetSetSubscription *)self usageAliases];
    if (!v22)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = v22;
    v24 = [(UAFSchemaUAFAssetSetSubscription *)self usageAliases];
    v25 = [v4 usageAliases];
    v26 = [v24 isEqual:v25];

    if (v26)
    {
      goto LABEL_25;
    }
  }

  else
  {
LABEL_21:
  }

LABEL_22:
  v27 = 0;
LABEL_23:

  return v27;
}

- (void)writeTo:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(UAFSchemaUAFAssetSetSubscription *)self subscriptionName];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = self->_assetSetIndices;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v30;
    do
    {
      v10 = 0;
      do
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v29 + 1) + 8 * v10) unsignedIntValue];
        PBDataWriterWriteUint32Field();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v8);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = self->_assetSetUsages;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v25 objects:v34 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v26;
    do
    {
      v15 = 0;
      do
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v11);
        }

        PBDataWriterWriteSubmessage();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v25 objects:v34 count:16];
    }

    while (v13);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v16 = self->_usageAliases;
  v17 = [(NSArray *)v16 countByEnumeratingWithState:&v21 objects:v33 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v22;
    do
    {
      v20 = 0;
      do
      {
        if (*v22 != v19)
        {
          objc_enumerationMutation(v16);
        }

        PBDataWriterWriteSubmessage();
        ++v20;
      }

      while (v18 != v20);
      v18 = [(NSArray *)v16 countByEnumeratingWithState:&v21 objects:v33 count:16];
    }

    while (v18);
  }
}

- (void)addUsageAliases:(id)a3
{
  v4 = a3;
  usageAliases = self->_usageAliases;
  v8 = v4;
  if (!usageAliases)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_usageAliases;
    self->_usageAliases = v6;

    v4 = v8;
    usageAliases = self->_usageAliases;
  }

  [(NSArray *)usageAliases addObject:v4];
}

- (void)addAssetSetUsages:(id)a3
{
  v4 = a3;
  assetSetUsages = self->_assetSetUsages;
  v8 = v4;
  if (!assetSetUsages)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_assetSetUsages;
    self->_assetSetUsages = v6;

    v4 = v8;
    assetSetUsages = self->_assetSetUsages;
  }

  [(NSArray *)assetSetUsages addObject:v4];
}

- (unsigned)assetSetIndicesAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_assetSetIndices objectAtIndexedSubscript:a3];
  v4 = [v3 unsignedIntValue];

  return v4;
}

- (void)addAssetSetIndices:(unsigned int)a3
{
  v3 = *&a3;
  assetSetIndices = self->_assetSetIndices;
  if (!assetSetIndices)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_assetSetIndices;
    self->_assetSetIndices = v6;

    assetSetIndices = self->_assetSetIndices;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
  [(NSArray *)assetSetIndices addObject:v8];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v11.receiver = self;
  v11.super_class = UAFSchemaUAFAssetSetSubscription;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v11 applySensitiveConditionsPolicy:v4];
  v6 = [(UAFSchemaUAFAssetSetSubscription *)self assetSetUsages:v11.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:v4];
  [(UAFSchemaUAFAssetSetSubscription *)self setAssetSetUsages:v7];

  v8 = [(UAFSchemaUAFAssetSetSubscription *)self usageAliases];
  v9 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v8 underConditions:v4];

  [(UAFSchemaUAFAssetSetSubscription *)self setUsageAliases:v9];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end