@interface NLXSchemaCDMSetupMissingAssetsDetected
- (BOOL)isEqual:(id)a3;
- (NLXSchemaCDMSetupMissingAssetsDetected)initWithDictionary:(id)a3;
- (NLXSchemaCDMSetupMissingAssetsDetected)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (int)servicesMissingAssetAtIndex:(unint64_t)a3;
- (void)addServicesMissingAsset:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation NLXSchemaCDMSetupMissingAssetsDetected

- (NLXSchemaCDMSetupMissingAssetsDetected)initWithDictionary:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v21.receiver = self;
  v21.super_class = NLXSchemaCDMSetupMissingAssetsDetected;
  v5 = [(NLXSchemaCDMSetupMissingAssetsDetected *)&v21 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"contextId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(NLXSchemaCDMSetupMissingAssetsDetected *)v5 setContextId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"servicesMissingAsset"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v17 objects:v22 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v18;
        do
        {
          v13 = 0;
          do
          {
            if (*v18 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v17 + 1) + 8 * v13);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              -[NLXSchemaCDMSetupMissingAssetsDetected addServicesMissingAsset:](v5, "addServicesMissingAsset:", [v14 intValue]);
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v17 objects:v22 count:16];
        }

        while (v11);
      }
    }

    v15 = v5;
  }

  return v5;
}

- (NLXSchemaCDMSetupMissingAssetsDetected)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(NLXSchemaCDMSetupMissingAssetsDetected *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(NLXSchemaCDMSetupMissingAssetsDetected *)self dictionaryRepresentation];
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
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_contextId)
  {
    v4 = [(NLXSchemaCDMSetupMissingAssetsDetected *)self contextId];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"contextId"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"contextId"];
    }
  }

  if ([(NSArray *)self->_servicesMissingAssets count])
  {
    v7 = [(NLXSchemaCDMSetupMissingAssetsDetected *)self servicesMissingAssets];
    v8 = [v7 copy];
    [v3 setObject:v8 forKeyedSubscript:@"servicesMissingAsset"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(NLXSchemaCDMSetupMissingAssetsDetected *)self contextId];
  v6 = [v4 contextId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(NLXSchemaCDMSetupMissingAssetsDetected *)self contextId];
  if (v7)
  {
    v8 = v7;
    v9 = [(NLXSchemaCDMSetupMissingAssetsDetected *)self contextId];
    v10 = [v4 contextId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(NLXSchemaCDMSetupMissingAssetsDetected *)self servicesMissingAssets];
  v6 = [v4 servicesMissingAssets];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(NLXSchemaCDMSetupMissingAssetsDetected *)self servicesMissingAssets];
    if (!v12)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(NLXSchemaCDMSetupMissingAssetsDetected *)self servicesMissingAssets];
    v15 = [v4 servicesMissingAssets];
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
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NLXSchemaCDMSetupMissingAssetsDetected *)self contextId];

  if (v5)
  {
    v6 = [(NLXSchemaCDMSetupMissingAssetsDetected *)self contextId];
    PBDataWriterWriteSubmessage();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = self->_servicesMissingAssets;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v11) intValue];
        PBDataWriterWriteInt32Field();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (int)servicesMissingAssetAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_servicesMissingAssets objectAtIndexedSubscript:a3];
  v4 = [v3 intValue];

  return v4;
}

- (void)addServicesMissingAsset:(int)a3
{
  v3 = *&a3;
  servicesMissingAssets = self->_servicesMissingAssets;
  if (!servicesMissingAssets)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_servicesMissingAssets;
    self->_servicesMissingAssets = v6;

    servicesMissingAssets = self->_servicesMissingAssets;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [(NSArray *)servicesMissingAssets addObject:v8];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = NLXSchemaCDMSetupMissingAssetsDetected;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(NLXSchemaCDMSetupMissingAssetsDetected *)self contextId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(NLXSchemaCDMSetupMissingAssetsDetected *)self deleteContextId];
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