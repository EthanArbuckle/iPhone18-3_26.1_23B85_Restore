@interface CLPInstSchemaCLPCDMReplayTaskStarted
- (BOOL)isEqual:(id)equal;
- (CLPInstSchemaCLPCDMReplayTaskStarted)initWithDictionary:(id)dictionary;
- (CLPInstSchemaCLPCDMReplayTaskStarted)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addAvailableSiriAssets:(id)assets;
- (void)addHabitualUsage:(id)usage;
- (void)writeTo:(id)to;
@end

@implementation CLPInstSchemaCLPCDMReplayTaskStarted

- (CLPInstSchemaCLPCDMReplayTaskStarted)initWithDictionary:(id)dictionary
{
  v41 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v38.receiver = self;
  v38.super_class = CLPInstSchemaCLPCDMReplayTaskStarted;
  v5 = [(CLPInstSchemaCLPCDMReplayTaskStarted *)&v38 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"pluginTaskAsset"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaAsset alloc] initWithDictionary:v6];
      [(CLPInstSchemaCLPCDMReplayTaskStarted *)v5 setPluginTaskAsset:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"availableSiriAssets"];
    objc_opt_class();
    v28 = v8;
    v29 = v6;
    if (objc_opt_isKindOfClass())
    {
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v34 objects:v40 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v35;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v35 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v34 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = [[SISchemaAsset alloc] initWithDictionary:v14];
              [(CLPInstSchemaCLPCDMReplayTaskStarted *)v5 addAvailableSiriAssets:v15];
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v34 objects:v40 count:16];
        }

        while (v11);
      }

      v8 = v28;
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"replayType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CLPInstSchemaCLPCDMReplayTaskStarted setReplayType:](v5, "setReplayType:", [v16 intValue]);
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"habitualUsage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = dictionaryCopy;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v18 = v17;
      v19 = [v18 countByEnumeratingWithState:&v30 objects:v39 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v31;
        do
        {
          for (j = 0; j != v20; ++j)
          {
            if (*v31 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v30 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v24 = [[CLPInstSchemaHabitualUsageByCalendarWeekInformation alloc] initWithDictionary:v23];
              [(CLPInstSchemaCLPCDMReplayTaskStarted *)v5 addHabitualUsage:v24];
            }
          }

          v20 = [v18 countByEnumeratingWithState:&v30 objects:v39 count:16];
        }

        while (v20);
      }

      dictionaryCopy = v27;
      v8 = v28;
      v6 = v29;
    }

    v25 = v5;
  }

  return v5;
}

- (CLPInstSchemaCLPCDMReplayTaskStarted)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(CLPInstSchemaCLPCDMReplayTaskStarted *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(CLPInstSchemaCLPCDMReplayTaskStarted *)self dictionaryRepresentation];
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
  v36 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_availableSiriAssets count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v5 = self->_availableSiriAssets;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v31;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v31 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v30 + 1) + 8 * i) dictionaryRepresentation];
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

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"availableSiriAssets"];
  }

  if ([(NSArray *)self->_habitualUsages count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v13 = self->_habitualUsages;
    v14 = [(NSArray *)v13 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v27;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v27 != v16)
          {
            objc_enumerationMutation(v13);
          }

          dictionaryRepresentation2 = [*(*(&v26 + 1) + 8 * j) dictionaryRepresentation];
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

        v15 = [(NSArray *)v13 countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v15);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"habitualUsage"];
  }

  if (self->_pluginTaskAsset)
  {
    pluginTaskAsset = [(CLPInstSchemaCLPCDMReplayTaskStarted *)self pluginTaskAsset];
    dictionaryRepresentation3 = [pluginTaskAsset dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"pluginTaskAsset"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"pluginTaskAsset"];
    }
  }

  if (*&self->_has)
  {
    v23 = [(CLPInstSchemaCLPCDMReplayTaskStarted *)self replayType]- 1;
    if (v23 > 2)
    {
      v24 = @"CLPREPLAYTYPE_UNKNOWN";
    }

    else
    {
      v24 = off_1E78D2A40[v23];
    }

    [dictionary setObject:v24 forKeyedSubscript:{@"replayType", v26}];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v26];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaAsset *)self->_pluginTaskAsset hash];
  v4 = [(NSArray *)self->_availableSiriAssets hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_replayType;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5 ^ [(NSArray *)self->_habitualUsages hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  pluginTaskAsset = [(CLPInstSchemaCLPCDMReplayTaskStarted *)self pluginTaskAsset];
  pluginTaskAsset2 = [equalCopy pluginTaskAsset];
  if ((pluginTaskAsset != 0) == (pluginTaskAsset2 == 0))
  {
    goto LABEL_19;
  }

  pluginTaskAsset3 = [(CLPInstSchemaCLPCDMReplayTaskStarted *)self pluginTaskAsset];
  if (pluginTaskAsset3)
  {
    v8 = pluginTaskAsset3;
    pluginTaskAsset4 = [(CLPInstSchemaCLPCDMReplayTaskStarted *)self pluginTaskAsset];
    pluginTaskAsset5 = [equalCopy pluginTaskAsset];
    v11 = [pluginTaskAsset4 isEqual:pluginTaskAsset5];

    if (!v11)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  pluginTaskAsset = [(CLPInstSchemaCLPCDMReplayTaskStarted *)self availableSiriAssets];
  pluginTaskAsset2 = [equalCopy availableSiriAssets];
  if ((pluginTaskAsset != 0) == (pluginTaskAsset2 == 0))
  {
    goto LABEL_19;
  }

  availableSiriAssets = [(CLPInstSchemaCLPCDMReplayTaskStarted *)self availableSiriAssets];
  if (availableSiriAssets)
  {
    v13 = availableSiriAssets;
    availableSiriAssets2 = [(CLPInstSchemaCLPCDMReplayTaskStarted *)self availableSiriAssets];
    availableSiriAssets3 = [equalCopy availableSiriAssets];
    v16 = [availableSiriAssets2 isEqual:availableSiriAssets3];

    if (!v16)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[40] & 1))
  {
    goto LABEL_20;
  }

  if (*&self->_has)
  {
    replayType = self->_replayType;
    if (replayType != [equalCopy replayType])
    {
      goto LABEL_20;
    }
  }

  pluginTaskAsset = [(CLPInstSchemaCLPCDMReplayTaskStarted *)self habitualUsages];
  pluginTaskAsset2 = [equalCopy habitualUsages];
  if ((pluginTaskAsset != 0) != (pluginTaskAsset2 == 0))
  {
    habitualUsages = [(CLPInstSchemaCLPCDMReplayTaskStarted *)self habitualUsages];
    if (!habitualUsages)
    {

LABEL_23:
      v23 = 1;
      goto LABEL_21;
    }

    v19 = habitualUsages;
    habitualUsages2 = [(CLPInstSchemaCLPCDMReplayTaskStarted *)self habitualUsages];
    habitualUsages3 = [equalCopy habitualUsages];
    v22 = [habitualUsages2 isEqual:habitualUsages3];

    if (v22)
    {
      goto LABEL_23;
    }
  }

  else
  {
LABEL_19:
  }

LABEL_20:
  v23 = 0;
LABEL_21:

  return v23;
}

- (void)writeTo:(id)to
{
  v27 = *MEMORY[0x1E69E9840];
  toCopy = to;
  pluginTaskAsset = [(CLPInstSchemaCLPCDMReplayTaskStarted *)self pluginTaskAsset];

  if (pluginTaskAsset)
  {
    pluginTaskAsset2 = [(CLPInstSchemaCLPCDMReplayTaskStarted *)self pluginTaskAsset];
    PBDataWriterWriteSubmessage();
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = self->_availableSiriAssets;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      v11 = 0;
      do
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        PBDataWriterWriteSubmessage();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v9);
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = self->_habitualUsages;
  v13 = [(NSArray *)v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      v16 = 0;
      do
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v12);
        }

        PBDataWriterWriteSubmessage();
        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSArray *)v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v14);
  }
}

- (void)addHabitualUsage:(id)usage
{
  usageCopy = usage;
  habitualUsages = self->_habitualUsages;
  v8 = usageCopy;
  if (!habitualUsages)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_habitualUsages;
    self->_habitualUsages = array;

    usageCopy = v8;
    habitualUsages = self->_habitualUsages;
  }

  [(NSArray *)habitualUsages addObject:usageCopy];
}

- (void)addAvailableSiriAssets:(id)assets
{
  assetsCopy = assets;
  availableSiriAssets = self->_availableSiriAssets;
  v8 = assetsCopy;
  if (!availableSiriAssets)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_availableSiriAssets;
    self->_availableSiriAssets = array;

    assetsCopy = v8;
    availableSiriAssets = self->_availableSiriAssets;
  }

  [(NSArray *)availableSiriAssets addObject:assetsCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v14.receiver = self;
  v14.super_class = CLPInstSchemaCLPCDMReplayTaskStarted;
  v5 = [(SISchemaInstrumentationMessage *)&v14 applySensitiveConditionsPolicy:policyCopy];
  pluginTaskAsset = [(CLPInstSchemaCLPCDMReplayTaskStarted *)self pluginTaskAsset];
  v7 = [pluginTaskAsset applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(CLPInstSchemaCLPCDMReplayTaskStarted *)self deletePluginTaskAsset];
  }

  availableSiriAssets = [(CLPInstSchemaCLPCDMReplayTaskStarted *)self availableSiriAssets];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:availableSiriAssets underConditions:policyCopy];
  [(CLPInstSchemaCLPCDMReplayTaskStarted *)self setAvailableSiriAssets:v10];

  habitualUsages = [(CLPInstSchemaCLPCDMReplayTaskStarted *)self habitualUsages];
  v12 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:habitualUsages underConditions:policyCopy];
  [(CLPInstSchemaCLPCDMReplayTaskStarted *)self setHabitualUsages:v12];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end