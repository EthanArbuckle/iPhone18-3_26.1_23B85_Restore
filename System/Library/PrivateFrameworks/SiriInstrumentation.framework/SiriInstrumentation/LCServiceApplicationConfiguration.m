@interface LCServiceApplicationConfiguration
- (BOOL)isEqual:(id)a3;
- (LCServiceApplicationConfiguration)initWithDictionary:(id)a3;
- (LCServiceApplicationConfiguration)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (int)blacklistedCategoriesAtIndex:(unint64_t)a3;
- (unint64_t)hash;
- (void)addBlacklistedCategories:(int)a3;
- (void)addCategories:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation LCServiceApplicationConfiguration

- (LCServiceApplicationConfiguration)initWithDictionary:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v39.receiver = self;
  v39.super_class = LCServiceApplicationConfiguration;
  v5 = [(LCServiceApplicationConfiguration *)&v39 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"bundleIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(LCServiceApplicationConfiguration *)v5 setBundleIdentifier:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"applicationParameters"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[LCServiceLoggingParameters alloc] initWithDictionary:v8];
      [(LCServiceApplicationConfiguration *)v5 setApplicationParameters:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"categories"];
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

    v18 = [v4 objectForKeyedSubscript:{@"blacklistedCategories", v27, v29}];
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

- (LCServiceApplicationConfiguration)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(LCServiceApplicationConfiguration *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(LCServiceApplicationConfiguration *)self dictionaryRepresentation];
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
  v25 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_applicationParameters)
  {
    v4 = [(LCServiceApplicationConfiguration *)self applicationParameters];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"applicationParameters"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"applicationParameters"];
    }
  }

  if ([(NSArray *)self->_blacklistedCategories count])
  {
    v7 = [(LCServiceApplicationConfiguration *)self blacklistedCategories];
    v8 = [v7 copy];
    [v3 setObject:v8 forKeyedSubscript:@"blacklistedCategories"];
  }

  if (self->_bundleIdentifier)
  {
    v9 = [(LCServiceApplicationConfiguration *)self bundleIdentifier];
    v10 = [v9 copy];
    [v3 setObject:v10 forKeyedSubscript:@"bundleIdentifier"];
  }

  if ([(NSArray *)self->_categories count])
  {
    v11 = [MEMORY[0x1E695DF70] array];
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

          v17 = [*(*(&v20 + 1) + 8 * i) dictionaryRepresentation];
          if (v17)
          {
            [v11 addObject:v17];
          }

          else
          {
            v18 = [MEMORY[0x1E695DFB0] null];
            [v11 addObject:v18];
          }
        }

        v14 = [(NSArray *)v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v14);
    }

    [v3 setObject:v11 forKeyedSubscript:@"categories"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v20];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_bundleIdentifier hash];
  v4 = [(LCServiceLoggingParameters *)self->_applicationParameters hash]^ v3;
  v5 = [(NSArray *)self->_categories hash];
  return v4 ^ v5 ^ [(NSArray *)self->_blacklistedCategories hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  v5 = [(LCServiceApplicationConfiguration *)self bundleIdentifier];
  v6 = [v4 bundleIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v7 = [(LCServiceApplicationConfiguration *)self bundleIdentifier];
  if (v7)
  {
    v8 = v7;
    v9 = [(LCServiceApplicationConfiguration *)self bundleIdentifier];
    v10 = [v4 bundleIdentifier];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(LCServiceApplicationConfiguration *)self applicationParameters];
  v6 = [v4 applicationParameters];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v12 = [(LCServiceApplicationConfiguration *)self applicationParameters];
  if (v12)
  {
    v13 = v12;
    v14 = [(LCServiceApplicationConfiguration *)self applicationParameters];
    v15 = [v4 applicationParameters];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(LCServiceApplicationConfiguration *)self categories];
  v6 = [v4 categories];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v17 = [(LCServiceApplicationConfiguration *)self categories];
  if (v17)
  {
    v18 = v17;
    v19 = [(LCServiceApplicationConfiguration *)self categories];
    v20 = [v4 categories];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(LCServiceApplicationConfiguration *)self blacklistedCategories];
  v6 = [v4 blacklistedCategories];
  if ((v5 != 0) != (v6 == 0))
  {
    v22 = [(LCServiceApplicationConfiguration *)self blacklistedCategories];
    if (!v22)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = v22;
    v24 = [(LCServiceApplicationConfiguration *)self blacklistedCategories];
    v25 = [v4 blacklistedCategories];
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
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(LCServiceApplicationConfiguration *)self bundleIdentifier];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = [(LCServiceApplicationConfiguration *)self applicationParameters];

  if (v6)
  {
    v7 = [(LCServiceApplicationConfiguration *)self applicationParameters];
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

- (int)blacklistedCategoriesAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_blacklistedCategories objectAtIndexedSubscript:a3];
  v4 = [v3 intValue];

  return v4;
}

- (void)addBlacklistedCategories:(int)a3
{
  v3 = *&a3;
  blacklistedCategories = self->_blacklistedCategories;
  if (!blacklistedCategories)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_blacklistedCategories;
    self->_blacklistedCategories = v6;

    blacklistedCategories = self->_blacklistedCategories;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [(NSArray *)blacklistedCategories addObject:v8];
}

- (void)addCategories:(id)a3
{
  v4 = a3;
  categories = self->_categories;
  v8 = v4;
  if (!categories)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_categories;
    self->_categories = v6;

    v4 = v8;
    categories = self->_categories;
  }

  [(NSArray *)categories addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = LCServiceApplicationConfiguration;
  v5 = [(SISchemaInstrumentationMessage *)&v12 applySensitiveConditionsPolicy:v4];
  v6 = [(LCServiceApplicationConfiguration *)self applicationParameters];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(LCServiceApplicationConfiguration *)self deleteApplicationParameters];
  }

  v9 = [(LCServiceApplicationConfiguration *)self categories];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v9 underConditions:v4];
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