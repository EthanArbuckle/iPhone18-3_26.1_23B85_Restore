@interface SADSchemaSADTrialNamespaceStatus
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SADSchemaSADTrialNamespaceStatus)initWithDictionary:(id)dictionary;
- (SADSchemaSADTrialNamespaceStatus)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addAssets:(id)assets;
- (void)writeTo:(id)to;
@end

@implementation SADSchemaSADTrialNamespaceStatus

- (SADSchemaSADTrialNamespaceStatus)initWithDictionary:(id)dictionary
{
  v29 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v27.receiver = self;
  v27.super_class = SADSchemaSADTrialNamespaceStatus;
  v5 = [(SADSchemaSADTrialNamespaceStatus *)&v27 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"namespaceCompatabilityVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaVersion alloc] initWithDictionary:v6];
      [(SADSchemaSADTrialNamespaceStatus *)v5 setNamespaceCompatabilityVersion:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"rollout"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SADSchemaSADTrialRollout alloc] initWithDictionary:v8];
      [(SADSchemaSADTrialNamespaceStatus *)v5 setRollout:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"assets"];
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

    v18 = [dictionaryCopy objectForKeyedSubscript:{@"trialNamespace", v21, v22, v23}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SADSchemaSADTrialNamespaceStatus setTrialNamespace:](v5, "setTrialNamespace:", [v18 intValue]);
    }

    v19 = v5;
  }

  return v5;
}

- (SADSchemaSADTrialNamespaceStatus)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SADSchemaSADTrialNamespaceStatus *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SADSchemaSADTrialNamespaceStatus *)self dictionaryRepresentation];
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
  v26 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_assets count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation = [*(*(&v21 + 1) + 8 * i) dictionaryRepresentation];
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

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"assets"];
  }

  if (self->_namespaceCompatabilityVersion)
  {
    namespaceCompatabilityVersion = [(SADSchemaSADTrialNamespaceStatus *)self namespaceCompatabilityVersion];
    dictionaryRepresentation2 = [namespaceCompatabilityVersion dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"namespaceCompatabilityVersion"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"namespaceCompatabilityVersion"];
    }
  }

  if (self->_rollout)
  {
    rollout = [(SADSchemaSADTrialNamespaceStatus *)self rollout];
    dictionaryRepresentation3 = [rollout dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"rollout"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"rollout"];
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

    [dictionary setObject:v19 forKeyedSubscript:{@"trialNamespace", v21}];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v21];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  namespaceCompatabilityVersion = [(SADSchemaSADTrialNamespaceStatus *)self namespaceCompatabilityVersion];
  namespaceCompatabilityVersion2 = [equalCopy namespaceCompatabilityVersion];
  if ((namespaceCompatabilityVersion != 0) == (namespaceCompatabilityVersion2 == 0))
  {
    goto LABEL_16;
  }

  namespaceCompatabilityVersion3 = [(SADSchemaSADTrialNamespaceStatus *)self namespaceCompatabilityVersion];
  if (namespaceCompatabilityVersion3)
  {
    v8 = namespaceCompatabilityVersion3;
    namespaceCompatabilityVersion4 = [(SADSchemaSADTrialNamespaceStatus *)self namespaceCompatabilityVersion];
    namespaceCompatabilityVersion5 = [equalCopy namespaceCompatabilityVersion];
    v11 = [namespaceCompatabilityVersion4 isEqual:namespaceCompatabilityVersion5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  namespaceCompatabilityVersion = [(SADSchemaSADTrialNamespaceStatus *)self rollout];
  namespaceCompatabilityVersion2 = [equalCopy rollout];
  if ((namespaceCompatabilityVersion != 0) == (namespaceCompatabilityVersion2 == 0))
  {
    goto LABEL_16;
  }

  rollout = [(SADSchemaSADTrialNamespaceStatus *)self rollout];
  if (rollout)
  {
    v13 = rollout;
    rollout2 = [(SADSchemaSADTrialNamespaceStatus *)self rollout];
    rollout3 = [equalCopy rollout];
    v16 = [rollout2 isEqual:rollout3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  namespaceCompatabilityVersion = [(SADSchemaSADTrialNamespaceStatus *)self assets];
  namespaceCompatabilityVersion2 = [equalCopy assets];
  if ((namespaceCompatabilityVersion != 0) == (namespaceCompatabilityVersion2 == 0))
  {
LABEL_16:

    goto LABEL_17;
  }

  assets = [(SADSchemaSADTrialNamespaceStatus *)self assets];
  if (assets)
  {
    v18 = assets;
    assets2 = [(SADSchemaSADTrialNamespaceStatus *)self assets];
    assets3 = [equalCopy assets];
    v21 = [assets2 isEqual:assets3];

    if (!v21)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) == (equalCopy[36] & 1))
  {
    if ((*&self->_has & 1) == 0 || (trialNamespace = self->_trialNamespace, trialNamespace == [equalCopy trialNamespace]))
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

- (void)writeTo:(id)to
{
  v19 = *MEMORY[0x1E69E9840];
  toCopy = to;
  namespaceCompatabilityVersion = [(SADSchemaSADTrialNamespaceStatus *)self namespaceCompatabilityVersion];

  if (namespaceCompatabilityVersion)
  {
    namespaceCompatabilityVersion2 = [(SADSchemaSADTrialNamespaceStatus *)self namespaceCompatabilityVersion];
    PBDataWriterWriteSubmessage();
  }

  rollout = [(SADSchemaSADTrialNamespaceStatus *)self rollout];

  if (rollout)
  {
    rollout2 = [(SADSchemaSADTrialNamespaceStatus *)self rollout];
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

- (void)addAssets:(id)assets
{
  assetsCopy = assets;
  assets = self->_assets;
  v8 = assetsCopy;
  if (!assets)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_assets;
    self->_assets = array;

    assetsCopy = v8;
    assets = self->_assets;
  }

  [(NSArray *)assets addObject:assetsCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v15.receiver = self;
  v15.super_class = SADSchemaSADTrialNamespaceStatus;
  v5 = [(SISchemaInstrumentationMessage *)&v15 applySensitiveConditionsPolicy:policyCopy];
  namespaceCompatabilityVersion = [(SADSchemaSADTrialNamespaceStatus *)self namespaceCompatabilityVersion];
  v7 = [namespaceCompatabilityVersion applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(SADSchemaSADTrialNamespaceStatus *)self deleteNamespaceCompatabilityVersion];
  }

  rollout = [(SADSchemaSADTrialNamespaceStatus *)self rollout];
  v10 = [rollout applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(SADSchemaSADTrialNamespaceStatus *)self deleteRollout];
  }

  assets = [(SADSchemaSADTrialNamespaceStatus *)self assets];
  v13 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:assets underConditions:policyCopy];
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