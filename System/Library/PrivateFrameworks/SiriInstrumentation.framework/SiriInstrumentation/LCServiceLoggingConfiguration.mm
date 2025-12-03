@interface LCServiceLoggingConfiguration
- (BOOL)isEqual:(id)equal;
- (LCServiceLoggingConfiguration)initWithDictionary:(id)dictionary;
- (LCServiceLoggingConfiguration)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (int)denyListedCategoriesAtIndex:(unint64_t)index;
- (unint64_t)hash;
- (void)addApplications:(id)applications;
- (void)addBlacklistedBundleIdentifiers:(id)identifiers;
- (void)addDenyListedCategories:(int)categories;
- (void)writeTo:(id)to;
@end

@implementation LCServiceLoggingConfiguration

- (LCServiceLoggingConfiguration)initWithDictionary:(id)dictionary
{
  v52 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v48.receiver = self;
  v48.super_class = LCServiceLoggingConfiguration;
  v5 = [(LCServiceLoggingConfiguration *)&v48 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"defaultParameters"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[LCServiceLoggingParameters alloc] initWithDictionary:v6];
      [(LCServiceLoggingConfiguration *)v5 setDefaultParameters:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"configurationVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[LCServiceLoggingConfiguration setConfigurationVersion:](v5, "setConfigurationVersion:", [v8 intValue]);
    }

    v34 = v8;
    v9 = [dictionaryCopy objectForKeyedSubscript:@"applications"];
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

    v17 = [dictionaryCopy objectForKeyedSubscript:@"blacklistedBundleIdentifiers"];
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

    v25 = [dictionaryCopy objectForKeyedSubscript:@"denyListedCategories"];
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

- (LCServiceLoggingConfiguration)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(LCServiceLoggingConfiguration *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(LCServiceLoggingConfiguration *)self dictionaryRepresentation];
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
  if ([(NSArray *)self->_applications count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

    [dictionary setObject:array forKeyedSubscript:@"applications"];
  }

  if (self->_blacklistedBundleIdentifiers)
  {
    blacklistedBundleIdentifiers = [(LCServiceLoggingConfiguration *)self blacklistedBundleIdentifiers];
    v13 = [blacklistedBundleIdentifiers copy];
    [dictionary setObject:v13 forKeyedSubscript:@"blacklistedBundleIdentifiers"];
  }

  if (*&self->_has)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithInt:{-[LCServiceLoggingConfiguration configurationVersion](self, "configurationVersion")}];
    [dictionary setObject:v14 forKeyedSubscript:@"configurationVersion"];
  }

  if (self->_defaultParameters)
  {
    defaultParameters = [(LCServiceLoggingConfiguration *)self defaultParameters];
    dictionaryRepresentation2 = [defaultParameters dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"defaultParameters"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"defaultParameters"];
    }
  }

  if ([(NSArray *)self->_denyListedCategories count])
  {
    denyListedCategories = [(LCServiceLoggingConfiguration *)self denyListedCategories];
    v19 = [denyListedCategories copy];
    [dictionary setObject:v19 forKeyedSubscript:@"denyListedCategories"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_25;
  }

  defaultParameters = [(LCServiceLoggingConfiguration *)self defaultParameters];
  defaultParameters2 = [equalCopy defaultParameters];
  if ((defaultParameters != 0) == (defaultParameters2 == 0))
  {
    goto LABEL_24;
  }

  defaultParameters3 = [(LCServiceLoggingConfiguration *)self defaultParameters];
  if (defaultParameters3)
  {
    v8 = defaultParameters3;
    defaultParameters4 = [(LCServiceLoggingConfiguration *)self defaultParameters];
    defaultParameters5 = [equalCopy defaultParameters];
    v11 = [defaultParameters4 isEqual:defaultParameters5];

    if (!v11)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[48] & 1))
  {
    goto LABEL_25;
  }

  if (*&self->_has)
  {
    configurationVersion = self->_configurationVersion;
    if (configurationVersion != [equalCopy configurationVersion])
    {
      goto LABEL_25;
    }
  }

  defaultParameters = [(LCServiceLoggingConfiguration *)self applications];
  defaultParameters2 = [equalCopy applications];
  if ((defaultParameters != 0) == (defaultParameters2 == 0))
  {
    goto LABEL_24;
  }

  applications = [(LCServiceLoggingConfiguration *)self applications];
  if (applications)
  {
    v14 = applications;
    applications2 = [(LCServiceLoggingConfiguration *)self applications];
    applications3 = [equalCopy applications];
    v17 = [applications2 isEqual:applications3];

    if (!v17)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  defaultParameters = [(LCServiceLoggingConfiguration *)self blacklistedBundleIdentifiers];
  defaultParameters2 = [equalCopy blacklistedBundleIdentifiers];
  if ((defaultParameters != 0) == (defaultParameters2 == 0))
  {
    goto LABEL_24;
  }

  blacklistedBundleIdentifiers = [(LCServiceLoggingConfiguration *)self blacklistedBundleIdentifiers];
  if (blacklistedBundleIdentifiers)
  {
    v19 = blacklistedBundleIdentifiers;
    blacklistedBundleIdentifiers2 = [(LCServiceLoggingConfiguration *)self blacklistedBundleIdentifiers];
    blacklistedBundleIdentifiers3 = [equalCopy blacklistedBundleIdentifiers];
    v22 = [blacklistedBundleIdentifiers2 isEqual:blacklistedBundleIdentifiers3];

    if (!v22)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  defaultParameters = [(LCServiceLoggingConfiguration *)self denyListedCategories];
  defaultParameters2 = [equalCopy denyListedCategories];
  if ((defaultParameters != 0) != (defaultParameters2 == 0))
  {
    denyListedCategories = [(LCServiceLoggingConfiguration *)self denyListedCategories];
    if (!denyListedCategories)
    {

LABEL_28:
      v28 = 1;
      goto LABEL_26;
    }

    v24 = denyListedCategories;
    denyListedCategories2 = [(LCServiceLoggingConfiguration *)self denyListedCategories];
    denyListedCategories3 = [equalCopy denyListedCategories];
    v27 = [denyListedCategories2 isEqual:denyListedCategories3];

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

- (void)writeTo:(id)to
{
  v37 = *MEMORY[0x1E69E9840];
  toCopy = to;
  defaultParameters = [(LCServiceLoggingConfiguration *)self defaultParameters];

  if (defaultParameters)
  {
    defaultParameters2 = [(LCServiceLoggingConfiguration *)self defaultParameters];
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

- (int)denyListedCategoriesAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_denyListedCategories objectAtIndexedSubscript:index];
  intValue = [v3 intValue];

  return intValue;
}

- (void)addDenyListedCategories:(int)categories
{
  v3 = *&categories;
  denyListedCategories = self->_denyListedCategories;
  if (!denyListedCategories)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_denyListedCategories;
    self->_denyListedCategories = array;

    denyListedCategories = self->_denyListedCategories;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [(NSArray *)denyListedCategories addObject:v8];
}

- (void)addBlacklistedBundleIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  blacklistedBundleIdentifiers = self->_blacklistedBundleIdentifiers;
  v8 = identifiersCopy;
  if (!blacklistedBundleIdentifiers)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_blacklistedBundleIdentifiers;
    self->_blacklistedBundleIdentifiers = array;

    identifiersCopy = v8;
    blacklistedBundleIdentifiers = self->_blacklistedBundleIdentifiers;
  }

  [(NSArray *)blacklistedBundleIdentifiers addObject:identifiersCopy];
}

- (void)addApplications:(id)applications
{
  applicationsCopy = applications;
  applications = self->_applications;
  v8 = applicationsCopy;
  if (!applications)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_applications;
    self->_applications = array;

    applicationsCopy = v8;
    applications = self->_applications;
  }

  [(NSArray *)applications addObject:applicationsCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v12.receiver = self;
  v12.super_class = LCServiceLoggingConfiguration;
  v5 = [(SISchemaInstrumentationMessage *)&v12 applySensitiveConditionsPolicy:policyCopy];
  defaultParameters = [(LCServiceLoggingConfiguration *)self defaultParameters];
  v7 = [defaultParameters applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(LCServiceLoggingConfiguration *)self deleteDefaultParameters];
  }

  applications = [(LCServiceLoggingConfiguration *)self applications];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:applications underConditions:policyCopy];
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