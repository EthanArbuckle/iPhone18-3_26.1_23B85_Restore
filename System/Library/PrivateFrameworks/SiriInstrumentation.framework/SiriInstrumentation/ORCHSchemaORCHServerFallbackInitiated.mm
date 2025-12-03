@interface ORCHSchemaORCHServerFallbackInitiated
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ORCHSchemaORCHServerFallbackInitiated)initWithDictionary:(id)dictionary;
- (ORCHSchemaORCHServerFallbackInitiated)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (int)missingAssetAtIndex:(unint64_t)index;
- (unint64_t)hash;
- (void)addMissingAsset:(int)asset;
- (void)writeTo:(id)to;
@end

@implementation ORCHSchemaORCHServerFallbackInitiated

- (ORCHSchemaORCHServerFallbackInitiated)initWithDictionary:(id)dictionary
{
  v22 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v20.receiver = self;
  v20.super_class = ORCHSchemaORCHServerFallbackInitiated;
  v5 = [(ORCHSchemaORCHServerFallbackInitiated *)&v20 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"fallbackReason"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ORCHSchemaORCHServerFallbackInitiated setFallbackReason:](v5, "setFallbackReason:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"missingAsset"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v8 = v7;
      v9 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v17;
        do
        {
          v12 = 0;
          do
          {
            if (*v17 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v16 + 1) + 8 * v12);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              -[ORCHSchemaORCHServerFallbackInitiated addMissingAsset:](v5, "addMissingAsset:", [v13 intValue]);
            }

            ++v12;
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
        }

        while (v10);
      }
    }

    v14 = v5;
  }

  return v5;
}

- (ORCHSchemaORCHServerFallbackInitiated)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ORCHSchemaORCHServerFallbackInitiated *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ORCHSchemaORCHServerFallbackInitiated *)self dictionaryRepresentation];
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
  if (*&self->_has)
  {
    v4 = [(ORCHSchemaORCHServerFallbackInitiated *)self fallbackReason]- 1;
    if (v4 > 5)
    {
      v5 = @"ORCHSERVERFALLBACKREASON_UNKNOWN";
    }

    else
    {
      v5 = off_1E78DEEF8[v4];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"fallbackReason"];
  }

  if ([(NSArray *)self->_missingAssets count])
  {
    missingAssets = [(ORCHSchemaORCHServerFallbackInitiated *)self missingAssets];
    v7 = [missingAssets copy];
    [dictionary setObject:v7 forKeyedSubscript:@"missingAsset"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_fallbackReason;
  }

  else
  {
    v2 = 0;
  }

  return [(NSArray *)self->_missingAssets hash]^ v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    if ((*&self->_has & 1) == (equalCopy[24] & 1))
    {
      if ((*&self->_has & 1) == 0 || (fallbackReason = self->_fallbackReason, fallbackReason == [equalCopy fallbackReason]))
      {
        missingAssets = [(ORCHSchemaORCHServerFallbackInitiated *)self missingAssets];
        missingAssets2 = [equalCopy missingAssets];
        v8 = missingAssets2;
        if ((missingAssets != 0) != (missingAssets2 == 0))
        {
          missingAssets3 = [(ORCHSchemaORCHServerFallbackInitiated *)self missingAssets];
          if (!missingAssets3)
          {

LABEL_13:
            v14 = 1;
            goto LABEL_11;
          }

          v10 = missingAssets3;
          missingAssets4 = [(ORCHSchemaORCHServerFallbackInitiated *)self missingAssets];
          missingAssets5 = [equalCopy missingAssets];
          v13 = [missingAssets4 isEqual:missingAssets5];

          if (v13)
          {
            goto LABEL_13;
          }
        }

        else
        {
        }
      }
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_missingAssets;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9) intValue];
        PBDataWriterWriteInt32Field();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (int)missingAssetAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_missingAssets objectAtIndexedSubscript:index];
  intValue = [v3 intValue];

  return intValue;
}

- (void)addMissingAsset:(int)asset
{
  v3 = *&asset;
  missingAssets = self->_missingAssets;
  if (!missingAssets)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_missingAssets;
    self->_missingAssets = array;

    missingAssets = self->_missingAssets;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [(NSArray *)missingAssets addObject:v8];
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end