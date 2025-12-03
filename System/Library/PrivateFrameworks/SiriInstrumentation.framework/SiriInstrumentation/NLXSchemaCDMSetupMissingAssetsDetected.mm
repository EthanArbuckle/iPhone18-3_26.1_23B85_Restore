@interface NLXSchemaCDMSetupMissingAssetsDetected
- (BOOL)isEqual:(id)equal;
- (NLXSchemaCDMSetupMissingAssetsDetected)initWithDictionary:(id)dictionary;
- (NLXSchemaCDMSetupMissingAssetsDetected)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (int)servicesMissingAssetAtIndex:(unint64_t)index;
- (void)addServicesMissingAsset:(int)asset;
- (void)writeTo:(id)to;
@end

@implementation NLXSchemaCDMSetupMissingAssetsDetected

- (NLXSchemaCDMSetupMissingAssetsDetected)initWithDictionary:(id)dictionary
{
  v23 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v21.receiver = self;
  v21.super_class = NLXSchemaCDMSetupMissingAssetsDetected;
  v5 = [(NLXSchemaCDMSetupMissingAssetsDetected *)&v21 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"contextId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(NLXSchemaCDMSetupMissingAssetsDetected *)v5 setContextId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"servicesMissingAsset"];
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

- (NLXSchemaCDMSetupMissingAssetsDetected)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(NLXSchemaCDMSetupMissingAssetsDetected *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(NLXSchemaCDMSetupMissingAssetsDetected *)self dictionaryRepresentation];
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_contextId)
  {
    contextId = [(NLXSchemaCDMSetupMissingAssetsDetected *)self contextId];
    dictionaryRepresentation = [contextId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"contextId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"contextId"];
    }
  }

  if ([(NSArray *)self->_servicesMissingAssets count])
  {
    servicesMissingAssets = [(NLXSchemaCDMSetupMissingAssetsDetected *)self servicesMissingAssets];
    v8 = [servicesMissingAssets copy];
    [dictionary setObject:v8 forKeyedSubscript:@"servicesMissingAsset"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  contextId = [(NLXSchemaCDMSetupMissingAssetsDetected *)self contextId];
  contextId2 = [equalCopy contextId];
  if ((contextId != 0) == (contextId2 == 0))
  {
    goto LABEL_11;
  }

  contextId3 = [(NLXSchemaCDMSetupMissingAssetsDetected *)self contextId];
  if (contextId3)
  {
    v8 = contextId3;
    contextId4 = [(NLXSchemaCDMSetupMissingAssetsDetected *)self contextId];
    contextId5 = [equalCopy contextId];
    v11 = [contextId4 isEqual:contextId5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  contextId = [(NLXSchemaCDMSetupMissingAssetsDetected *)self servicesMissingAssets];
  contextId2 = [equalCopy servicesMissingAssets];
  if ((contextId != 0) != (contextId2 == 0))
  {
    servicesMissingAssets = [(NLXSchemaCDMSetupMissingAssetsDetected *)self servicesMissingAssets];
    if (!servicesMissingAssets)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = servicesMissingAssets;
    servicesMissingAssets2 = [(NLXSchemaCDMSetupMissingAssetsDetected *)self servicesMissingAssets];
    servicesMissingAssets3 = [equalCopy servicesMissingAssets];
    v16 = [servicesMissingAssets2 isEqual:servicesMissingAssets3];

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

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x1E69E9840];
  toCopy = to;
  contextId = [(NLXSchemaCDMSetupMissingAssetsDetected *)self contextId];

  if (contextId)
  {
    contextId2 = [(NLXSchemaCDMSetupMissingAssetsDetected *)self contextId];
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

- (int)servicesMissingAssetAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_servicesMissingAssets objectAtIndexedSubscript:index];
  intValue = [v3 intValue];

  return intValue;
}

- (void)addServicesMissingAsset:(int)asset
{
  v3 = *&asset;
  servicesMissingAssets = self->_servicesMissingAssets;
  if (!servicesMissingAssets)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_servicesMissingAssets;
    self->_servicesMissingAssets = array;

    servicesMissingAssets = self->_servicesMissingAssets;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [(NSArray *)servicesMissingAssets addObject:v8];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = NLXSchemaCDMSetupMissingAssetsDetected;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(NLXSchemaCDMSetupMissingAssetsDetected *)self contextId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
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