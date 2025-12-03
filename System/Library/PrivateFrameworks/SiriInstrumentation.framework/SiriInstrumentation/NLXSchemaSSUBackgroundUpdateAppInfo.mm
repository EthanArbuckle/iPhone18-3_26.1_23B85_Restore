@interface NLXSchemaSSUBackgroundUpdateAppInfo
- (BOOL)isEqual:(id)equal;
- (NLXSchemaSSUBackgroundUpdateAppInfo)initWithDictionary:(id)dictionary;
- (NLXSchemaSSUBackgroundUpdateAppInfo)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addCategoryInfos:(id)infos;
- (void)writeTo:(id)to;
@end

@implementation NLXSchemaSSUBackgroundUpdateAppInfo

- (NLXSchemaSSUBackgroundUpdateAppInfo)initWithDictionary:(id)dictionary
{
  v26 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v24.receiver = self;
  v24.super_class = NLXSchemaSSUBackgroundUpdateAppInfo;
  v5 = [(NLXSchemaSSUBackgroundUpdateAppInfo *)&v24 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"appBundleIdSaltedHash"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(NLXSchemaSSUBackgroundUpdateAppInfo *)v5 setAppBundleIdSaltedHash:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"numCacheFilesRemoved"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLXSchemaSSUBackgroundUpdateAppInfo setNumCacheFilesRemoved:](v5, "setNumCacheFilesRemoved:", [v8 unsignedIntValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"categoryInfos"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v8;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v10 = v9;
      v11 = [v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v21;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v21 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v20 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v16 = [[NLXSchemaSSUBackgroundUpdateAppCategoryInfo alloc] initWithDictionary:v15];
              [(NLXSchemaSSUBackgroundUpdateAppInfo *)v5 addCategoryInfos:v16];
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
        }

        while (v12);
      }

      v8 = v19;
    }

    v17 = v5;
  }

  return v5;
}

- (NLXSchemaSSUBackgroundUpdateAppInfo)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(NLXSchemaSSUBackgroundUpdateAppInfo *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(NLXSchemaSSUBackgroundUpdateAppInfo *)self dictionaryRepresentation];
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
  v21 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_appBundleIdSaltedHash)
  {
    appBundleIdSaltedHash = [(NLXSchemaSSUBackgroundUpdateAppInfo *)self appBundleIdSaltedHash];
    v5 = [appBundleIdSaltedHash copy];
    [dictionary setObject:v5 forKeyedSubscript:@"appBundleIdSaltedHash"];
  }

  if ([(NSArray *)self->_categoryInfos count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = self->_categoryInfos;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation = [*(*(&v16 + 1) + 8 * i) dictionaryRepresentation];
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

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    [dictionary setObject:array forKeyedSubscript:@"categoryInfos"];
  }

  if (*&self->_has)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[NLXSchemaSSUBackgroundUpdateAppInfo numCacheFilesRemoved](self, "numCacheFilesRemoved")}];
    [dictionary setObject:v14 forKeyedSubscript:@"numCacheFilesRemoved"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v16];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_appBundleIdSaltedHash hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_numCacheFilesRemoved;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3 ^ [(NSArray *)self->_categoryInfos hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  appBundleIdSaltedHash = [(NLXSchemaSSUBackgroundUpdateAppInfo *)self appBundleIdSaltedHash];
  appBundleIdSaltedHash2 = [equalCopy appBundleIdSaltedHash];
  if ((appBundleIdSaltedHash != 0) == (appBundleIdSaltedHash2 == 0))
  {
    goto LABEL_14;
  }

  appBundleIdSaltedHash3 = [(NLXSchemaSSUBackgroundUpdateAppInfo *)self appBundleIdSaltedHash];
  if (appBundleIdSaltedHash3)
  {
    v8 = appBundleIdSaltedHash3;
    appBundleIdSaltedHash4 = [(NLXSchemaSSUBackgroundUpdateAppInfo *)self appBundleIdSaltedHash];
    appBundleIdSaltedHash5 = [equalCopy appBundleIdSaltedHash];
    v11 = [appBundleIdSaltedHash4 isEqual:appBundleIdSaltedHash5];

    if (!v11)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[32] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    numCacheFilesRemoved = self->_numCacheFilesRemoved;
    if (numCacheFilesRemoved != [equalCopy numCacheFilesRemoved])
    {
      goto LABEL_15;
    }
  }

  appBundleIdSaltedHash = [(NLXSchemaSSUBackgroundUpdateAppInfo *)self categoryInfos];
  appBundleIdSaltedHash2 = [equalCopy categoryInfos];
  if ((appBundleIdSaltedHash != 0) != (appBundleIdSaltedHash2 == 0))
  {
    categoryInfos = [(NLXSchemaSSUBackgroundUpdateAppInfo *)self categoryInfos];
    if (!categoryInfos)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = categoryInfos;
    categoryInfos2 = [(NLXSchemaSSUBackgroundUpdateAppInfo *)self categoryInfos];
    categoryInfos3 = [equalCopy categoryInfos];
    v17 = [categoryInfos2 isEqual:categoryInfos3];

    if (v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
LABEL_14:
  }

LABEL_15:
  v18 = 0;
LABEL_16:

  return v18;
}

- (void)writeTo:(id)to
{
  v16 = *MEMORY[0x1E69E9840];
  toCopy = to;
  appBundleIdSaltedHash = [(NLXSchemaSSUBackgroundUpdateAppInfo *)self appBundleIdSaltedHash];

  if (appBundleIdSaltedHash)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_categoryInfos;
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

- (void)addCategoryInfos:(id)infos
{
  infosCopy = infos;
  categoryInfos = self->_categoryInfos;
  v8 = infosCopy;
  if (!categoryInfos)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_categoryInfos;
    self->_categoryInfos = array;

    infosCopy = v8;
    categoryInfos = self->_categoryInfos;
  }

  [(NSArray *)categoryInfos addObject:infosCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = NLXSchemaSSUBackgroundUpdateAppInfo;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(NLXSchemaSSUBackgroundUpdateAppInfo *)self categoryInfos:v9.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:policyCopy];

  [(NLXSchemaSSUBackgroundUpdateAppInfo *)self setCategoryInfos:v7];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end