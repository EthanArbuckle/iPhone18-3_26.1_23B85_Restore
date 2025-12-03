@interface UAFSchemaUAFAssetSetStatus
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (UAFSchemaUAFAssetSetStatus)initWithDictionary:(id)dictionary;
- (UAFSchemaUAFAssetSetStatus)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addAllAssets:(id)assets;
- (void)addUafAssetSets:(id)sets;
- (void)addUafAssetSubscriptions:(id)subscriptions;
- (void)writeTo:(id)to;
@end

@implementation UAFSchemaUAFAssetSetStatus

- (UAFSchemaUAFAssetSetStatus)initWithDictionary:(id)dictionary
{
  v51 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v47.receiver = self;
  v47.super_class = UAFSchemaUAFAssetSetStatus;
  v5 = [(UAFSchemaUAFAssetSetStatus *)&v47 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"uafAssetSets"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v7 = v6;
      v8 = v6;
      v9 = [v8 countByEnumeratingWithState:&v43 objects:v50 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v44;
        do
        {
          v12 = 0;
          do
          {
            if (*v44 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v43 + 1) + 8 * v12);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v14 = [[UAFSchemaUAFAssetSet alloc] initWithDictionary:v13];
              [(UAFSchemaUAFAssetSetStatus *)v5 addUafAssetSets:v14];
            }

            ++v12;
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v43 objects:v50 count:16];
        }

        while (v10);
      }

      v6 = v7;
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"uafAssetSubscriptions"];
    objc_opt_class();
    v34 = v15;
    if (objc_opt_isKindOfClass())
    {
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v16 = v15;
      v17 = [v16 countByEnumeratingWithState:&v39 objects:v49 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v40;
        do
        {
          v20 = 0;
          do
          {
            if (*v40 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v39 + 1) + 8 * v20);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v22 = [[UAFSchemaUAFAssetSubscriberSubscriptions alloc] initWithDictionary:v21];
              [(UAFSchemaUAFAssetSetStatus *)v5 addUafAssetSubscriptions:v22];
            }

            ++v20;
          }

          while (v18 != v20);
          v18 = [v16 countByEnumeratingWithState:&v39 objects:v49 count:16];
        }

        while (v18);
      }

      v15 = v34;
    }

    v23 = [dictionaryCopy objectForKeyedSubscript:@"allAssets"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = v6;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v24 = v23;
      v25 = [v24 countByEnumeratingWithState:&v35 objects:v48 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v36;
        do
        {
          v28 = 0;
          do
          {
            if (*v36 != v27)
            {
              objc_enumerationMutation(v24);
            }

            v29 = *(*(&v35 + 1) + 8 * v28);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v30 = [[UAFSchemaUAFAssetMetadata alloc] initWithDictionary:v29];
              [(UAFSchemaUAFAssetSetStatus *)v5 addAllAssets:v30];
            }

            ++v28;
          }

          while (v26 != v28);
          v26 = [v24 countByEnumeratingWithState:&v35 objects:v48 count:16];
        }

        while (v26);
      }

      v6 = v33;
      v15 = v34;
    }

    v31 = v5;
  }

  return v5;
}

- (UAFSchemaUAFAssetSetStatus)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(UAFSchemaUAFAssetSetStatus *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(UAFSchemaUAFAssetSetStatus *)self dictionaryRepresentation];
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
  v44 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_allAssets count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v5 = self->_allAssets;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v37 objects:v43 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v38;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v38 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v37 + 1) + 8 * i) dictionaryRepresentation];
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

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v37 objects:v43 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"allAssets"];
  }

  if ([(NSArray *)self->_uafAssetSets count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v13 = self->_uafAssetSets;
    v14 = [(NSArray *)v13 countByEnumeratingWithState:&v33 objects:v42 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v34;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v34 != v16)
          {
            objc_enumerationMutation(v13);
          }

          dictionaryRepresentation2 = [*(*(&v33 + 1) + 8 * j) dictionaryRepresentation];
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

        v15 = [(NSArray *)v13 countByEnumeratingWithState:&v33 objects:v42 count:16];
      }

      while (v15);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"uafAssetSets"];
  }

  if ([(NSArray *)self->_uafAssetSubscriptions count])
  {
    array3 = [MEMORY[0x1E695DF70] array];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v21 = self->_uafAssetSubscriptions;
    v22 = [(NSArray *)v21 countByEnumeratingWithState:&v29 objects:v41 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v30;
      do
      {
        for (k = 0; k != v23; ++k)
        {
          if (*v30 != v24)
          {
            objc_enumerationMutation(v21);
          }

          dictionaryRepresentation3 = [*(*(&v29 + 1) + 8 * k) dictionaryRepresentation];
          if (dictionaryRepresentation3)
          {
            [array3 addObject:dictionaryRepresentation3];
          }

          else
          {
            null3 = [MEMORY[0x1E695DFB0] null];
            [array3 addObject:null3];
          }
        }

        v23 = [(NSArray *)v21 countByEnumeratingWithState:&v29 objects:v41 count:16];
      }

      while (v23);
    }

    [dictionary setObject:array3 forKeyedSubscript:@"uafAssetSubscriptions"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v29];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_uafAssetSets hash];
  v4 = [(NSArray *)self->_uafAssetSubscriptions hash]^ v3;
  return v4 ^ [(NSArray *)self->_allAssets hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  uafAssetSets = [(UAFSchemaUAFAssetSetStatus *)self uafAssetSets];
  uafAssetSets2 = [equalCopy uafAssetSets];
  if ((uafAssetSets != 0) == (uafAssetSets2 == 0))
  {
    goto LABEL_16;
  }

  uafAssetSets3 = [(UAFSchemaUAFAssetSetStatus *)self uafAssetSets];
  if (uafAssetSets3)
  {
    v8 = uafAssetSets3;
    uafAssetSets4 = [(UAFSchemaUAFAssetSetStatus *)self uafAssetSets];
    uafAssetSets5 = [equalCopy uafAssetSets];
    v11 = [uafAssetSets4 isEqual:uafAssetSets5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  uafAssetSets = [(UAFSchemaUAFAssetSetStatus *)self uafAssetSubscriptions];
  uafAssetSets2 = [equalCopy uafAssetSubscriptions];
  if ((uafAssetSets != 0) == (uafAssetSets2 == 0))
  {
    goto LABEL_16;
  }

  uafAssetSubscriptions = [(UAFSchemaUAFAssetSetStatus *)self uafAssetSubscriptions];
  if (uafAssetSubscriptions)
  {
    v13 = uafAssetSubscriptions;
    uafAssetSubscriptions2 = [(UAFSchemaUAFAssetSetStatus *)self uafAssetSubscriptions];
    uafAssetSubscriptions3 = [equalCopy uafAssetSubscriptions];
    v16 = [uafAssetSubscriptions2 isEqual:uafAssetSubscriptions3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  uafAssetSets = [(UAFSchemaUAFAssetSetStatus *)self allAssets];
  uafAssetSets2 = [equalCopy allAssets];
  if ((uafAssetSets != 0) != (uafAssetSets2 == 0))
  {
    allAssets = [(UAFSchemaUAFAssetSetStatus *)self allAssets];
    if (!allAssets)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = allAssets;
    allAssets2 = [(UAFSchemaUAFAssetSetStatus *)self allAssets];
    allAssets3 = [equalCopy allAssets];
    v21 = [allAssets2 isEqual:allAssets3];

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

- (void)writeTo:(id)to
{
  v35 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = self->_uafAssetSets;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    do
    {
      v9 = 0;
      do
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v7);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = self->_uafAssetSubscriptions;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v24 objects:v33 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v25;
    do
    {
      v14 = 0;
      do
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v10);
        }

        PBDataWriterWriteSubmessage();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v24 objects:v33 count:16];
    }

    while (v12);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v15 = self->_allAssets;
  v16 = [(NSArray *)v15 countByEnumeratingWithState:&v20 objects:v32 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v21;
    do
    {
      v19 = 0;
      do
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(v15);
        }

        PBDataWriterWriteSubmessage();
        ++v19;
      }

      while (v17 != v19);
      v17 = [(NSArray *)v15 countByEnumeratingWithState:&v20 objects:v32 count:16];
    }

    while (v17);
  }
}

- (void)addAllAssets:(id)assets
{
  assetsCopy = assets;
  allAssets = self->_allAssets;
  v8 = assetsCopy;
  if (!allAssets)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_allAssets;
    self->_allAssets = array;

    assetsCopy = v8;
    allAssets = self->_allAssets;
  }

  [(NSArray *)allAssets addObject:assetsCopy];
}

- (void)addUafAssetSubscriptions:(id)subscriptions
{
  subscriptionsCopy = subscriptions;
  uafAssetSubscriptions = self->_uafAssetSubscriptions;
  v8 = subscriptionsCopy;
  if (!uafAssetSubscriptions)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_uafAssetSubscriptions;
    self->_uafAssetSubscriptions = array;

    subscriptionsCopy = v8;
    uafAssetSubscriptions = self->_uafAssetSubscriptions;
  }

  [(NSArray *)uafAssetSubscriptions addObject:subscriptionsCopy];
}

- (void)addUafAssetSets:(id)sets
{
  setsCopy = sets;
  uafAssetSets = self->_uafAssetSets;
  v8 = setsCopy;
  if (!uafAssetSets)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_uafAssetSets;
    self->_uafAssetSets = array;

    setsCopy = v8;
    uafAssetSets = self->_uafAssetSets;
  }

  [(NSArray *)uafAssetSets addObject:setsCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v13.receiver = self;
  v13.super_class = UAFSchemaUAFAssetSetStatus;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(UAFSchemaUAFAssetSetStatus *)self uafAssetSets:v13.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:policyCopy];
  [(UAFSchemaUAFAssetSetStatus *)self setUafAssetSets:v7];

  uafAssetSubscriptions = [(UAFSchemaUAFAssetSetStatus *)self uafAssetSubscriptions];
  v9 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:uafAssetSubscriptions underConditions:policyCopy];
  [(UAFSchemaUAFAssetSetStatus *)self setUafAssetSubscriptions:v9];

  allAssets = [(UAFSchemaUAFAssetSetStatus *)self allAssets];
  v11 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:allAssets underConditions:policyCopy];

  [(UAFSchemaUAFAssetSetStatus *)self setAllAssets:v11];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end