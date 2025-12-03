@interface SADSchemaSADAvailableAssetDailyStatus
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SADSchemaSADAvailableAssetDailyStatus)initWithDictionary:(id)dictionary;
- (SADSchemaSADAvailableAssetDailyStatus)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addAssetSetStatus:(id)status;
- (void)addNamespaceStatus:(id)status;
- (void)writeTo:(id)to;
@end

@implementation SADSchemaSADAvailableAssetDailyStatus

- (SADSchemaSADAvailableAssetDailyStatus)initWithDictionary:(id)dictionary
{
  v37 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v34.receiver = self;
  v34.super_class = SADSchemaSADAvailableAssetDailyStatus;
  v5 = [(SADSchemaSADAvailableAssetDailyStatus *)&v34 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"namespaceStatus"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v30 objects:v36 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v31;
        do
        {
          v11 = 0;
          do
          {
            if (*v31 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v30 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [[SADSchemaSADTrialNamespaceStatus alloc] initWithDictionary:v12];
              [(SADSchemaSADAvailableAssetDailyStatus *)v5 addNamespaceStatus:v13];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v30 objects:v36 count:16];
        }

        while (v9);
      }
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"assetSetStatus"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = v6;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v15 = v14;
      v16 = [v15 countByEnumeratingWithState:&v26 objects:v35 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v27;
        do
        {
          v19 = 0;
          do
          {
            if (*v27 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v26 + 1) + 8 * v19);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v21 = [[UAFSchemaUAFAssetSetStatus alloc] initWithDictionary:v20];
              [(SADSchemaSADAvailableAssetDailyStatus *)v5 addAssetSetStatus:v21];
            }

            ++v19;
          }

          while (v17 != v19);
          v17 = [v15 countByEnumeratingWithState:&v26 objects:v35 count:16];
        }

        while (v17);
      }

      v6 = v25;
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"statusReason"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SADSchemaSADAvailableAssetDailyStatus setStatusReason:](v5, "setStatusReason:", [v22 intValue]);
    }

    v23 = v5;
  }

  return v5;
}

- (SADSchemaSADAvailableAssetDailyStatus)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SADSchemaSADAvailableAssetDailyStatus *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SADSchemaSADAvailableAssetDailyStatus *)self dictionaryRepresentation];
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
  v33 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_assetSetStatus count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v5 = self->_assetSetStatus;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v28;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v28 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v27 + 1) + 8 * i) dictionaryRepresentation];
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

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"assetSetStatus"];
  }

  if ([(NSArray *)self->_namespaceStatus count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v13 = self->_namespaceStatus;
    v14 = [(NSArray *)v13 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v24;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(v13);
          }

          dictionaryRepresentation2 = [*(*(&v23 + 1) + 8 * j) dictionaryRepresentation];
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

        v15 = [(NSArray *)v13 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v15);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"namespaceStatus"];
  }

  if (*&self->_has)
  {
    v20 = [(SADSchemaSADAvailableAssetDailyStatus *)self statusReason]- 1;
    if (v20 > 3)
    {
      v21 = @"SADAVAILABLEASSETSTATUSREASON_UNKNOWN";
    }

    else
    {
      v21 = off_1E78E2390[v20];
    }

    [dictionary setObject:v21 forKeyedSubscript:{@"statusReason", v23}];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v23];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_namespaceStatus hash];
  v4 = [(NSArray *)self->_assetSetStatus hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_statusReason;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  namespaceStatus = [(SADSchemaSADAvailableAssetDailyStatus *)self namespaceStatus];
  namespaceStatus2 = [equalCopy namespaceStatus];
  if ((namespaceStatus != 0) == (namespaceStatus2 == 0))
  {
    goto LABEL_11;
  }

  namespaceStatus3 = [(SADSchemaSADAvailableAssetDailyStatus *)self namespaceStatus];
  if (namespaceStatus3)
  {
    v8 = namespaceStatus3;
    namespaceStatus4 = [(SADSchemaSADAvailableAssetDailyStatus *)self namespaceStatus];
    namespaceStatus5 = [equalCopy namespaceStatus];
    v11 = [namespaceStatus4 isEqual:namespaceStatus5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  namespaceStatus = [(SADSchemaSADAvailableAssetDailyStatus *)self assetSetStatus];
  namespaceStatus2 = [equalCopy assetSetStatus];
  if ((namespaceStatus != 0) == (namespaceStatus2 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  assetSetStatus = [(SADSchemaSADAvailableAssetDailyStatus *)self assetSetStatus];
  if (assetSetStatus)
  {
    v13 = assetSetStatus;
    assetSetStatus2 = [(SADSchemaSADAvailableAssetDailyStatus *)self assetSetStatus];
    assetSetStatus3 = [equalCopy assetSetStatus];
    v16 = [assetSetStatus2 isEqual:assetSetStatus3];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) == (equalCopy[28] & 1))
  {
    if ((*&self->_has & 1) == 0 || (statusReason = self->_statusReason, statusReason == [equalCopy statusReason]))
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

- (void)writeTo:(id)to
{
  v25 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = self->_namespaceStatus;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v7);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = self->_assetSetStatus;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        PBDataWriterWriteSubmessage();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (void)addAssetSetStatus:(id)status
{
  statusCopy = status;
  assetSetStatus = self->_assetSetStatus;
  v8 = statusCopy;
  if (!assetSetStatus)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_assetSetStatus;
    self->_assetSetStatus = array;

    statusCopy = v8;
    assetSetStatus = self->_assetSetStatus;
  }

  [(NSArray *)assetSetStatus addObject:statusCopy];
}

- (void)addNamespaceStatus:(id)status
{
  statusCopy = status;
  namespaceStatus = self->_namespaceStatus;
  v8 = statusCopy;
  if (!namespaceStatus)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_namespaceStatus;
    self->_namespaceStatus = array;

    statusCopy = v8;
    namespaceStatus = self->_namespaceStatus;
  }

  [(NSArray *)namespaceStatus addObject:statusCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v11.receiver = self;
  v11.super_class = SADSchemaSADAvailableAssetDailyStatus;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v11 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(SADSchemaSADAvailableAssetDailyStatus *)self namespaceStatus:v11.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:policyCopy];
  [(SADSchemaSADAvailableAssetDailyStatus *)self setNamespaceStatus:v7];

  assetSetStatus = [(SADSchemaSADAvailableAssetDailyStatus *)self assetSetStatus];
  v9 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:assetSetStatus underConditions:policyCopy];

  [(SADSchemaSADAvailableAssetDailyStatus *)self setAssetSetStatus:v9];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end