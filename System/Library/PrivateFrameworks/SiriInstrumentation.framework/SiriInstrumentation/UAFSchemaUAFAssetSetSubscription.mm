@interface UAFSchemaUAFAssetSetSubscription
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (UAFSchemaUAFAssetSetSubscription)initWithDictionary:(id)dictionary;
- (UAFSchemaUAFAssetSetSubscription)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (unsigned)assetSetIndicesAtIndex:(unint64_t)index;
- (void)addAssetSetIndices:(unsigned int)indices;
- (void)addAssetSetUsages:(id)usages;
- (void)addUsageAliases:(id)aliases;
- (void)writeTo:(id)to;
@end

@implementation UAFSchemaUAFAssetSetSubscription

- (UAFSchemaUAFAssetSetSubscription)initWithDictionary:(id)dictionary
{
  v52 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v48.receiver = self;
  v48.super_class = UAFSchemaUAFAssetSetSubscription;
  v5 = [(UAFSchemaUAFAssetSetSubscription *)&v48 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"subscriptionName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(UAFSchemaUAFAssetSetSubscription *)v5 setSubscriptionName:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"assetSetIndices"];
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

    v16 = [dictionaryCopy objectForKeyedSubscript:@"assetSetUsages"];
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

    v24 = [dictionaryCopy objectForKeyedSubscript:@"usageAliases"];
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

- (UAFSchemaUAFAssetSetSubscription)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(UAFSchemaUAFAssetSetSubscription *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(UAFSchemaUAFAssetSetSubscription *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_assetSetIndices count])
  {
    assetSetIndices = [(UAFSchemaUAFAssetSetSubscription *)self assetSetIndices];
    v5 = [assetSetIndices copy];
    [dictionary setObject:v5 forKeyedSubscript:@"assetSetIndices"];
  }

  if ([(NSArray *)self->_assetSetUsages count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation = [*(*(&v29 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation)
          {
            [array addObject:dictionaryRepresentation];
          }

          else
          {
            null = [MEMORY[0x1E695DFB0] null];
            [array addObject:null];
          }
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v9);
    }

    [dictionary setObject:array forKeyedSubscript:@"assetSetUsages"];
  }

  if (self->_subscriptionName)
  {
    subscriptionName = [(UAFSchemaUAFAssetSetSubscription *)self subscriptionName];
    v15 = [subscriptionName copy];
    [dictionary setObject:v15 forKeyedSubscript:@"subscriptionName"];
  }

  if ([(NSArray *)self->_usageAliases count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation2 = [*(*(&v25 + 1) + 8 * j) dictionaryRepresentation];
          if (dictionaryRepresentation2)
          {
            [array2 addObject:dictionaryRepresentation2];
          }

          else
          {
            null2 = [MEMORY[0x1E695DFB0] null];
            [array2 addObject:null2];
          }
        }

        v19 = [(NSArray *)v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v19);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"usageAliases"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v25];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_subscriptionName hash];
  v4 = [(NSArray *)self->_assetSetIndices hash]^ v3;
  v5 = [(NSArray *)self->_assetSetUsages hash];
  return v4 ^ v5 ^ [(NSArray *)self->_usageAliases hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  subscriptionName = [(UAFSchemaUAFAssetSetSubscription *)self subscriptionName];
  subscriptionName2 = [equalCopy subscriptionName];
  if ((subscriptionName != 0) == (subscriptionName2 == 0))
  {
    goto LABEL_21;
  }

  subscriptionName3 = [(UAFSchemaUAFAssetSetSubscription *)self subscriptionName];
  if (subscriptionName3)
  {
    v8 = subscriptionName3;
    subscriptionName4 = [(UAFSchemaUAFAssetSetSubscription *)self subscriptionName];
    subscriptionName5 = [equalCopy subscriptionName];
    v11 = [subscriptionName4 isEqual:subscriptionName5];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  subscriptionName = [(UAFSchemaUAFAssetSetSubscription *)self assetSetIndices];
  subscriptionName2 = [equalCopy assetSetIndices];
  if ((subscriptionName != 0) == (subscriptionName2 == 0))
  {
    goto LABEL_21;
  }

  assetSetIndices = [(UAFSchemaUAFAssetSetSubscription *)self assetSetIndices];
  if (assetSetIndices)
  {
    v13 = assetSetIndices;
    assetSetIndices2 = [(UAFSchemaUAFAssetSetSubscription *)self assetSetIndices];
    assetSetIndices3 = [equalCopy assetSetIndices];
    v16 = [assetSetIndices2 isEqual:assetSetIndices3];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  subscriptionName = [(UAFSchemaUAFAssetSetSubscription *)self assetSetUsages];
  subscriptionName2 = [equalCopy assetSetUsages];
  if ((subscriptionName != 0) == (subscriptionName2 == 0))
  {
    goto LABEL_21;
  }

  assetSetUsages = [(UAFSchemaUAFAssetSetSubscription *)self assetSetUsages];
  if (assetSetUsages)
  {
    v18 = assetSetUsages;
    assetSetUsages2 = [(UAFSchemaUAFAssetSetSubscription *)self assetSetUsages];
    assetSetUsages3 = [equalCopy assetSetUsages];
    v21 = [assetSetUsages2 isEqual:assetSetUsages3];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  subscriptionName = [(UAFSchemaUAFAssetSetSubscription *)self usageAliases];
  subscriptionName2 = [equalCopy usageAliases];
  if ((subscriptionName != 0) != (subscriptionName2 == 0))
  {
    usageAliases = [(UAFSchemaUAFAssetSetSubscription *)self usageAliases];
    if (!usageAliases)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = usageAliases;
    usageAliases2 = [(UAFSchemaUAFAssetSetSubscription *)self usageAliases];
    usageAliases3 = [equalCopy usageAliases];
    v26 = [usageAliases2 isEqual:usageAliases3];

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

- (void)writeTo:(id)to
{
  v36 = *MEMORY[0x1E69E9840];
  toCopy = to;
  subscriptionName = [(UAFSchemaUAFAssetSetSubscription *)self subscriptionName];

  if (subscriptionName)
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

- (void)addUsageAliases:(id)aliases
{
  aliasesCopy = aliases;
  usageAliases = self->_usageAliases;
  v8 = aliasesCopy;
  if (!usageAliases)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_usageAliases;
    self->_usageAliases = array;

    aliasesCopy = v8;
    usageAliases = self->_usageAliases;
  }

  [(NSArray *)usageAliases addObject:aliasesCopy];
}

- (void)addAssetSetUsages:(id)usages
{
  usagesCopy = usages;
  assetSetUsages = self->_assetSetUsages;
  v8 = usagesCopy;
  if (!assetSetUsages)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_assetSetUsages;
    self->_assetSetUsages = array;

    usagesCopy = v8;
    assetSetUsages = self->_assetSetUsages;
  }

  [(NSArray *)assetSetUsages addObject:usagesCopy];
}

- (unsigned)assetSetIndicesAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_assetSetIndices objectAtIndexedSubscript:index];
  unsignedIntValue = [v3 unsignedIntValue];

  return unsignedIntValue;
}

- (void)addAssetSetIndices:(unsigned int)indices
{
  v3 = *&indices;
  assetSetIndices = self->_assetSetIndices;
  if (!assetSetIndices)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_assetSetIndices;
    self->_assetSetIndices = array;

    assetSetIndices = self->_assetSetIndices;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
  [(NSArray *)assetSetIndices addObject:v8];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v11.receiver = self;
  v11.super_class = UAFSchemaUAFAssetSetSubscription;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v11 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(UAFSchemaUAFAssetSetSubscription *)self assetSetUsages:v11.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:policyCopy];
  [(UAFSchemaUAFAssetSetSubscription *)self setAssetSetUsages:v7];

  usageAliases = [(UAFSchemaUAFAssetSetSubscription *)self usageAliases];
  v9 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:usageAliases underConditions:policyCopy];

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