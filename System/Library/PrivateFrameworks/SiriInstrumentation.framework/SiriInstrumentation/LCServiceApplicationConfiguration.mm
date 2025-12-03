@interface LCServiceApplicationConfiguration
- (BOOL)isEqual:(id)equal;
- (LCServiceApplicationConfiguration)initWithDictionary:(id)dictionary;
- (LCServiceApplicationConfiguration)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (int)blacklistedCategoriesAtIndex:(unint64_t)index;
- (unint64_t)hash;
- (void)addBlacklistedCategories:(int)categories;
- (void)addCategories:(id)categories;
- (void)writeTo:(id)to;
@end

@implementation LCServiceApplicationConfiguration

- (LCServiceApplicationConfiguration)initWithDictionary:(id)dictionary
{
  v42 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v39.receiver = self;
  v39.super_class = LCServiceApplicationConfiguration;
  v5 = [(LCServiceApplicationConfiguration *)&v39 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"bundleIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(LCServiceApplicationConfiguration *)v5 setBundleIdentifier:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"applicationParameters"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[LCServiceLoggingParameters alloc] initWithDictionary:v8];
      [(LCServiceApplicationConfiguration *)v5 setApplicationParameters:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"categories"];
    objc_opt_class();
    v27 = v8;
    v29 = v6;
    if (objc_opt_isKindOfClass())
    {
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v35 objects:v41 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v36;
        do
        {
          v15 = 0;
          do
          {
            if (*v36 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v35 + 1) + 8 * v15);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v17 = [[LCServiceCategoryConfiguration alloc] initWithDictionary:v16];
              [(LCServiceApplicationConfiguration *)v5 addCategories:v17];
            }

            ++v15;
          }

          while (v13 != v15);
          v13 = [v11 countByEnumeratingWithState:&v35 objects:v41 count:16];
        }

        while (v13);
      }

      v8 = v27;
      v6 = v29;
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:{@"blacklistedCategories", v27, v29}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v19 = v18;
      v20 = [v19 countByEnumeratingWithState:&v31 objects:v40 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v32;
        do
        {
          v23 = 0;
          do
          {
            if (*v32 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v31 + 1) + 8 * v23);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              -[LCServiceApplicationConfiguration addBlacklistedCategories:](v5, "addBlacklistedCategories:", [v24 intValue]);
            }

            ++v23;
          }

          while (v21 != v23);
          v21 = [v19 countByEnumeratingWithState:&v31 objects:v40 count:16];
        }

        while (v21);
      }

      v8 = v28;
      v6 = v30;
    }

    v25 = v5;
  }

  return v5;
}

- (LCServiceApplicationConfiguration)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(LCServiceApplicationConfiguration *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(LCServiceApplicationConfiguration *)self dictionaryRepresentation];
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
  v25 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_applicationParameters)
  {
    applicationParameters = [(LCServiceApplicationConfiguration *)self applicationParameters];
    dictionaryRepresentation = [applicationParameters dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"applicationParameters"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"applicationParameters"];
    }
  }

  if ([(NSArray *)self->_blacklistedCategories count])
  {
    blacklistedCategories = [(LCServiceApplicationConfiguration *)self blacklistedCategories];
    v8 = [blacklistedCategories copy];
    [dictionary setObject:v8 forKeyedSubscript:@"blacklistedCategories"];
  }

  if (self->_bundleIdentifier)
  {
    bundleIdentifier = [(LCServiceApplicationConfiguration *)self bundleIdentifier];
    v10 = [bundleIdentifier copy];
    [dictionary setObject:v10 forKeyedSubscript:@"bundleIdentifier"];
  }

  if ([(NSArray *)self->_categories count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v12 = self->_categories;
    v13 = [(NSArray *)v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v21;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v21 != v15)
          {
            objc_enumerationMutation(v12);
          }

          dictionaryRepresentation2 = [*(*(&v20 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation2)
          {
            [array addObject:dictionaryRepresentation2];
          }

          else
          {
            null2 = [MEMORY[0x1E695DFB0] null];
            [array addObject:null2];
          }
        }

        v14 = [(NSArray *)v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v14);
    }

    [dictionary setObject:array forKeyedSubscript:@"categories"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v20];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_bundleIdentifier hash];
  v4 = [(LCServiceLoggingParameters *)self->_applicationParameters hash]^ v3;
  v5 = [(NSArray *)self->_categories hash];
  return v4 ^ v5 ^ [(NSArray *)self->_blacklistedCategories hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  bundleIdentifier = [(LCServiceApplicationConfiguration *)self bundleIdentifier];
  bundleIdentifier2 = [equalCopy bundleIdentifier];
  if ((bundleIdentifier != 0) == (bundleIdentifier2 == 0))
  {
    goto LABEL_21;
  }

  bundleIdentifier3 = [(LCServiceApplicationConfiguration *)self bundleIdentifier];
  if (bundleIdentifier3)
  {
    v8 = bundleIdentifier3;
    bundleIdentifier4 = [(LCServiceApplicationConfiguration *)self bundleIdentifier];
    bundleIdentifier5 = [equalCopy bundleIdentifier];
    v11 = [bundleIdentifier4 isEqual:bundleIdentifier5];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  bundleIdentifier = [(LCServiceApplicationConfiguration *)self applicationParameters];
  bundleIdentifier2 = [equalCopy applicationParameters];
  if ((bundleIdentifier != 0) == (bundleIdentifier2 == 0))
  {
    goto LABEL_21;
  }

  applicationParameters = [(LCServiceApplicationConfiguration *)self applicationParameters];
  if (applicationParameters)
  {
    v13 = applicationParameters;
    applicationParameters2 = [(LCServiceApplicationConfiguration *)self applicationParameters];
    applicationParameters3 = [equalCopy applicationParameters];
    v16 = [applicationParameters2 isEqual:applicationParameters3];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  bundleIdentifier = [(LCServiceApplicationConfiguration *)self categories];
  bundleIdentifier2 = [equalCopy categories];
  if ((bundleIdentifier != 0) == (bundleIdentifier2 == 0))
  {
    goto LABEL_21;
  }

  categories = [(LCServiceApplicationConfiguration *)self categories];
  if (categories)
  {
    v18 = categories;
    categories2 = [(LCServiceApplicationConfiguration *)self categories];
    categories3 = [equalCopy categories];
    v21 = [categories2 isEqual:categories3];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  bundleIdentifier = [(LCServiceApplicationConfiguration *)self blacklistedCategories];
  bundleIdentifier2 = [equalCopy blacklistedCategories];
  if ((bundleIdentifier != 0) != (bundleIdentifier2 == 0))
  {
    blacklistedCategories = [(LCServiceApplicationConfiguration *)self blacklistedCategories];
    if (!blacklistedCategories)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = blacklistedCategories;
    blacklistedCategories2 = [(LCServiceApplicationConfiguration *)self blacklistedCategories];
    blacklistedCategories3 = [equalCopy blacklistedCategories];
    v26 = [blacklistedCategories2 isEqual:blacklistedCategories3];

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
  v28 = *MEMORY[0x1E69E9840];
  toCopy = to;
  bundleIdentifier = [(LCServiceApplicationConfiguration *)self bundleIdentifier];

  if (bundleIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  applicationParameters = [(LCServiceApplicationConfiguration *)self applicationParameters];

  if (applicationParameters)
  {
    applicationParameters2 = [(LCServiceApplicationConfiguration *)self applicationParameters];
    PBDataWriterWriteSubmessage();
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = self->_categories;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      v12 = 0;
      do
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        PBDataWriterWriteSubmessage();
        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v10);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v13 = self->_blacklistedCategories;
  v14 = [(NSArray *)v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v19;
    do
    {
      v17 = 0;
      do
      {
        if (*v19 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [*(*(&v18 + 1) + 8 * v17) intValue];
        PBDataWriterWriteInt32Field();
        ++v17;
      }

      while (v15 != v17);
      v15 = [(NSArray *)v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v15);
  }
}

- (int)blacklistedCategoriesAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_blacklistedCategories objectAtIndexedSubscript:index];
  intValue = [v3 intValue];

  return intValue;
}

- (void)addBlacklistedCategories:(int)categories
{
  v3 = *&categories;
  blacklistedCategories = self->_blacklistedCategories;
  if (!blacklistedCategories)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_blacklistedCategories;
    self->_blacklistedCategories = array;

    blacklistedCategories = self->_blacklistedCategories;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [(NSArray *)blacklistedCategories addObject:v8];
}

- (void)addCategories:(id)categories
{
  categoriesCopy = categories;
  categories = self->_categories;
  v8 = categoriesCopy;
  if (!categories)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_categories;
    self->_categories = array;

    categoriesCopy = v8;
    categories = self->_categories;
  }

  [(NSArray *)categories addObject:categoriesCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v12.receiver = self;
  v12.super_class = LCServiceApplicationConfiguration;
  v5 = [(SISchemaInstrumentationMessage *)&v12 applySensitiveConditionsPolicy:policyCopy];
  applicationParameters = [(LCServiceApplicationConfiguration *)self applicationParameters];
  v7 = [applicationParameters applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(LCServiceApplicationConfiguration *)self deleteApplicationParameters];
  }

  categories = [(LCServiceApplicationConfiguration *)self categories];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:categories underConditions:policyCopy];
  [(LCServiceApplicationConfiguration *)self setCategories:v10];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end