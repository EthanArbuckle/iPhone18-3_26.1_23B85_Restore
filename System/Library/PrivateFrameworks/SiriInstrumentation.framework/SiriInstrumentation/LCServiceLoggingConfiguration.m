@interface LCServiceLoggingConfiguration
- (BOOL)isEqual:(id)a3;
- (LCServiceLoggingConfiguration)initWithDictionary:(id)a3;
- (LCServiceLoggingConfiguration)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (int)denyListedCategoriesAtIndex:(unint64_t)a3;
- (unint64_t)hash;
- (void)addApplications:(id)a3;
- (void)addBlacklistedBundleIdentifiers:(id)a3;
- (void)addDenyListedCategories:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation LCServiceLoggingConfiguration

- (LCServiceLoggingConfiguration)initWithDictionary:(id)a3
{
  v52 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v48.receiver = self;
  v48.super_class = LCServiceLoggingConfiguration;
  v5 = [(LCServiceLoggingConfiguration *)&v48 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"defaultParameters"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[LCServiceLoggingParameters alloc] initWithDictionary:v6];
      [(LCServiceLoggingConfiguration *)v5 setDefaultParameters:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"configurationVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[LCServiceLoggingConfiguration setConfigurationVersion:](v5, "setConfigurationVersion:", [v8 intValue]);
    }

    v34 = v8;
    v9 = [v4 objectForKeyedSubscript:@"applications"];
    objc_opt_class();
    v35 = v9;
    if (objc_opt_isKindOfClass())
    {
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v10 = v9;
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
              v16 = [[LCServiceApplicationConfiguration alloc] initWithDictionary:v15];
              [(LCServiceLoggingConfiguration *)v5 addApplications:v16];
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v44 objects:v51 count:16];
        }

        while (v12);
      }
    }

    v17 = [v4 objectForKeyedSubscript:@"blacklistedBundleIdentifiers"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v18 = v17;
      v19 = [v18 countByEnumeratingWithState:&v40 objects:v50 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v41;
        do
        {
          for (j = 0; j != v20; ++j)
          {
            if (*v41 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v40 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v24 = [v23 copy];
              [(LCServiceLoggingConfiguration *)v5 addBlacklistedBundleIdentifiers:v24];
            }
          }

          v20 = [v18 countByEnumeratingWithState:&v40 objects:v50 count:16];
        }

        while (v20);
      }
    }

    v25 = [v4 objectForKeyedSubscript:@"denyListedCategories"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v26 = v25;
      v27 = [v26 countByEnumeratingWithState:&v36 objects:v49 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v37;
        do
        {
          for (k = 0; k != v28; ++k)
          {
            if (*v37 != v29)
            {
              objc_enumerationMutation(v26);
            }

            v31 = *(*(&v36 + 1) + 8 * k);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              -[LCServiceLoggingConfiguration addDenyListedCategories:](v5, "addDenyListedCategories:", [v31 intValue]);
            }
          }

          v28 = [v26 countByEnumeratingWithState:&v36 objects:v49 count:16];
        }

        while (v28);
      }
    }

    v32 = v5;
  }

  return v5;
}

- (LCServiceLoggingConfiguration)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(LCServiceLoggingConfiguration *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(LCServiceLoggingConfiguration *)self dictionaryRepresentation];
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
  v26 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_applications count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v5 = self->_applications;
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

          v10 = [*(*(&v21 + 1) + 8 * i) dictionaryRepresentation];
          if (v10)
          {
            [v4 addObject:v10];
          }

          else
          {
            v11 = [MEMORY[0x1E695DFB0] null];
            [v4 addObject:v11];
          }
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKeyedSubscript:@"applications"];
  }

  if (self->_blacklistedBundleIdentifiers)
  {
    v12 = [(LCServiceLoggingConfiguration *)self blacklistedBundleIdentifiers];
    v13 = [v12 copy];
    [v3 setObject:v13 forKeyedSubscript:@"blacklistedBundleIdentifiers"];
  }

  if (*&self->_has)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithInt:{-[LCServiceLoggingConfiguration configurationVersion](self, "configurationVersion")}];
    [v3 setObject:v14 forKeyedSubscript:@"configurationVersion"];
  }

  if (self->_defaultParameters)
  {
    v15 = [(LCServiceLoggingConfiguration *)self defaultParameters];
    v16 = [v15 dictionaryRepresentation];
    if (v16)
    {
      [v3 setObject:v16 forKeyedSubscript:@"defaultParameters"];
    }

    else
    {
      v17 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v17 forKeyedSubscript:@"defaultParameters"];
    }
  }

  if ([(NSArray *)self->_denyListedCategories count])
  {
    v18 = [(LCServiceLoggingConfiguration *)self denyListedCategories];
    v19 = [v18 copy];
    [v3 setObject:v19 forKeyedSubscript:@"denyListedCategories"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(LCServiceLoggingParameters *)self->_defaultParameters hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_configurationVersion;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ v3;
  v6 = [(NSArray *)self->_applications hash];
  v7 = v5 ^ v6 ^ [(NSArray *)self->_blacklistedBundleIdentifiers hash];
  return v7 ^ [(NSArray *)self->_denyListedCategories hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_25;
  }

  v5 = [(LCServiceLoggingConfiguration *)self defaultParameters];
  v6 = [v4 defaultParameters];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_24;
  }

  v7 = [(LCServiceLoggingConfiguration *)self defaultParameters];
  if (v7)
  {
    v8 = v7;
    v9 = [(LCServiceLoggingConfiguration *)self defaultParameters];
    v10 = [v4 defaultParameters];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (v4[48] & 1))
  {
    goto LABEL_25;
  }

  if (*&self->_has)
  {
    configurationVersion = self->_configurationVersion;
    if (configurationVersion != [v4 configurationVersion])
    {
      goto LABEL_25;
    }
  }

  v5 = [(LCServiceLoggingConfiguration *)self applications];
  v6 = [v4 applications];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_24;
  }

  v13 = [(LCServiceLoggingConfiguration *)self applications];
  if (v13)
  {
    v14 = v13;
    v15 = [(LCServiceLoggingConfiguration *)self applications];
    v16 = [v4 applications];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  v5 = [(LCServiceLoggingConfiguration *)self blacklistedBundleIdentifiers];
  v6 = [v4 blacklistedBundleIdentifiers];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_24;
  }

  v18 = [(LCServiceLoggingConfiguration *)self blacklistedBundleIdentifiers];
  if (v18)
  {
    v19 = v18;
    v20 = [(LCServiceLoggingConfiguration *)self blacklistedBundleIdentifiers];
    v21 = [v4 blacklistedBundleIdentifiers];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  v5 = [(LCServiceLoggingConfiguration *)self denyListedCategories];
  v6 = [v4 denyListedCategories];
  if ((v5 != 0) != (v6 == 0))
  {
    v23 = [(LCServiceLoggingConfiguration *)self denyListedCategories];
    if (!v23)
    {

LABEL_28:
      v28 = 1;
      goto LABEL_26;
    }

    v24 = v23;
    v25 = [(LCServiceLoggingConfiguration *)self denyListedCategories];
    v26 = [v4 denyListedCategories];
    v27 = [v25 isEqual:v26];

    if (v27)
    {
      goto LABEL_28;
    }
  }

  else
  {
LABEL_24:
  }

LABEL_25:
  v28 = 0;
LABEL_26:

  return v28;
}

- (void)writeTo:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(LCServiceLoggingConfiguration *)self defaultParameters];

  if (v5)
  {
    v6 = [(LCServiceLoggingConfiguration *)self defaultParameters];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = self->_applications;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v30 objects:v36 count:16];
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

        PBDataWriterWriteSubmessage();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v9);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v12 = self->_blacklistedBundleIdentifiers;
  v13 = [(NSArray *)v12 countByEnumeratingWithState:&v26 objects:v35 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v27;
    do
    {
      v16 = 0;
      do
      {
        if (*v27 != v15)
        {
          objc_enumerationMutation(v12);
        }

        PBDataWriterWriteStringField();
        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSArray *)v12 countByEnumeratingWithState:&v26 objects:v35 count:16];
    }

    while (v14);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v17 = self->_denyListedCategories;
  v18 = [(NSArray *)v17 countByEnumeratingWithState:&v22 objects:v34 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v23;
    do
    {
      v21 = 0;
      do
      {
        if (*v23 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [*(*(&v22 + 1) + 8 * v21) intValue];
        PBDataWriterWriteInt32Field();
        ++v21;
      }

      while (v19 != v21);
      v19 = [(NSArray *)v17 countByEnumeratingWithState:&v22 objects:v34 count:16];
    }

    while (v19);
  }
}

- (int)denyListedCategoriesAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_denyListedCategories objectAtIndexedSubscript:a3];
  v4 = [v3 intValue];

  return v4;
}

- (void)addDenyListedCategories:(int)a3
{
  v3 = *&a3;
  denyListedCategories = self->_denyListedCategories;
  if (!denyListedCategories)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_denyListedCategories;
    self->_denyListedCategories = v6;

    denyListedCategories = self->_denyListedCategories;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [(NSArray *)denyListedCategories addObject:v8];
}

- (void)addBlacklistedBundleIdentifiers:(id)a3
{
  v4 = a3;
  blacklistedBundleIdentifiers = self->_blacklistedBundleIdentifiers;
  v8 = v4;
  if (!blacklistedBundleIdentifiers)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_blacklistedBundleIdentifiers;
    self->_blacklistedBundleIdentifiers = v6;

    v4 = v8;
    blacklistedBundleIdentifiers = self->_blacklistedBundleIdentifiers;
  }

  [(NSArray *)blacklistedBundleIdentifiers addObject:v4];
}

- (void)addApplications:(id)a3
{
  v4 = a3;
  applications = self->_applications;
  v8 = v4;
  if (!applications)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_applications;
    self->_applications = v6;

    v4 = v8;
    applications = self->_applications;
  }

  [(NSArray *)applications addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = LCServiceLoggingConfiguration;
  v5 = [(SISchemaInstrumentationMessage *)&v12 applySensitiveConditionsPolicy:v4];
  v6 = [(LCServiceLoggingConfiguration *)self defaultParameters];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(LCServiceLoggingConfiguration *)self deleteDefaultParameters];
  }

  v9 = [(LCServiceLoggingConfiguration *)self applications];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v9 underConditions:v4];
  [(LCServiceLoggingConfiguration *)self setApplications:v10];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end