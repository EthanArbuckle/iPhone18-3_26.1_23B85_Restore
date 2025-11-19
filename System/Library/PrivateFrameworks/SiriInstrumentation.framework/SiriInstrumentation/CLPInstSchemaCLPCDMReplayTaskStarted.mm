@interface CLPInstSchemaCLPCDMReplayTaskStarted
- (BOOL)isEqual:(id)a3;
- (CLPInstSchemaCLPCDMReplayTaskStarted)initWithDictionary:(id)a3;
- (CLPInstSchemaCLPCDMReplayTaskStarted)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addAvailableSiriAssets:(id)a3;
- (void)addHabitualUsage:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CLPInstSchemaCLPCDMReplayTaskStarted

- (CLPInstSchemaCLPCDMReplayTaskStarted)initWithDictionary:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v38.receiver = self;
  v38.super_class = CLPInstSchemaCLPCDMReplayTaskStarted;
  v5 = [(CLPInstSchemaCLPCDMReplayTaskStarted *)&v38 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"pluginTaskAsset"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaAsset alloc] initWithDictionary:v6];
      [(CLPInstSchemaCLPCDMReplayTaskStarted *)v5 setPluginTaskAsset:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"availableSiriAssets"];
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

    v16 = [v4 objectForKeyedSubscript:@"replayType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CLPInstSchemaCLPCDMReplayTaskStarted setReplayType:](v5, "setReplayType:", [v16 intValue]);
    }

    v17 = [v4 objectForKeyedSubscript:@"habitualUsage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = v4;
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

      v4 = v27;
      v8 = v28;
      v6 = v29;
    }

    v25 = v5;
  }

  return v5;
}

- (CLPInstSchemaCLPCDMReplayTaskStarted)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(CLPInstSchemaCLPCDMReplayTaskStarted *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(CLPInstSchemaCLPCDMReplayTaskStarted *)self dictionaryRepresentation];
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
  v36 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_availableSiriAssets count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
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

          v10 = [*(*(&v30 + 1) + 8 * i) dictionaryRepresentation];
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

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKeyedSubscript:@"availableSiriAssets"];
  }

  if ([(NSArray *)self->_habitualUsages count])
  {
    v12 = [MEMORY[0x1E695DF70] array];
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

          v18 = [*(*(&v26 + 1) + 8 * j) dictionaryRepresentation];
          if (v18)
          {
            [v12 addObject:v18];
          }

          else
          {
            v19 = [MEMORY[0x1E695DFB0] null];
            [v12 addObject:v19];
          }
        }

        v15 = [(NSArray *)v13 countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v15);
    }

    [v3 setObject:v12 forKeyedSubscript:@"habitualUsage"];
  }

  if (self->_pluginTaskAsset)
  {
    v20 = [(CLPInstSchemaCLPCDMReplayTaskStarted *)self pluginTaskAsset];
    v21 = [v20 dictionaryRepresentation];
    if (v21)
    {
      [v3 setObject:v21 forKeyedSubscript:@"pluginTaskAsset"];
    }

    else
    {
      v22 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v22 forKeyedSubscript:@"pluginTaskAsset"];
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

    [v3 setObject:v24 forKeyedSubscript:{@"replayType", v26}];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v26];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  v5 = [(CLPInstSchemaCLPCDMReplayTaskStarted *)self pluginTaskAsset];
  v6 = [v4 pluginTaskAsset];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_19;
  }

  v7 = [(CLPInstSchemaCLPCDMReplayTaskStarted *)self pluginTaskAsset];
  if (v7)
  {
    v8 = v7;
    v9 = [(CLPInstSchemaCLPCDMReplayTaskStarted *)self pluginTaskAsset];
    v10 = [v4 pluginTaskAsset];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  v5 = [(CLPInstSchemaCLPCDMReplayTaskStarted *)self availableSiriAssets];
  v6 = [v4 availableSiriAssets];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_19;
  }

  v12 = [(CLPInstSchemaCLPCDMReplayTaskStarted *)self availableSiriAssets];
  if (v12)
  {
    v13 = v12;
    v14 = [(CLPInstSchemaCLPCDMReplayTaskStarted *)self availableSiriAssets];
    v15 = [v4 availableSiriAssets];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (v4[40] & 1))
  {
    goto LABEL_20;
  }

  if (*&self->_has)
  {
    replayType = self->_replayType;
    if (replayType != [v4 replayType])
    {
      goto LABEL_20;
    }
  }

  v5 = [(CLPInstSchemaCLPCDMReplayTaskStarted *)self habitualUsages];
  v6 = [v4 habitualUsages];
  if ((v5 != 0) != (v6 == 0))
  {
    v18 = [(CLPInstSchemaCLPCDMReplayTaskStarted *)self habitualUsages];
    if (!v18)
    {

LABEL_23:
      v23 = 1;
      goto LABEL_21;
    }

    v19 = v18;
    v20 = [(CLPInstSchemaCLPCDMReplayTaskStarted *)self habitualUsages];
    v21 = [v4 habitualUsages];
    v22 = [v20 isEqual:v21];

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

- (void)writeTo:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CLPInstSchemaCLPCDMReplayTaskStarted *)self pluginTaskAsset];

  if (v5)
  {
    v6 = [(CLPInstSchemaCLPCDMReplayTaskStarted *)self pluginTaskAsset];
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

- (void)addHabitualUsage:(id)a3
{
  v4 = a3;
  habitualUsages = self->_habitualUsages;
  v8 = v4;
  if (!habitualUsages)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_habitualUsages;
    self->_habitualUsages = v6;

    v4 = v8;
    habitualUsages = self->_habitualUsages;
  }

  [(NSArray *)habitualUsages addObject:v4];
}

- (void)addAvailableSiriAssets:(id)a3
{
  v4 = a3;
  availableSiriAssets = self->_availableSiriAssets;
  v8 = v4;
  if (!availableSiriAssets)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_availableSiriAssets;
    self->_availableSiriAssets = v6;

    v4 = v8;
    availableSiriAssets = self->_availableSiriAssets;
  }

  [(NSArray *)availableSiriAssets addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = CLPInstSchemaCLPCDMReplayTaskStarted;
  v5 = [(SISchemaInstrumentationMessage *)&v14 applySensitiveConditionsPolicy:v4];
  v6 = [(CLPInstSchemaCLPCDMReplayTaskStarted *)self pluginTaskAsset];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(CLPInstSchemaCLPCDMReplayTaskStarted *)self deletePluginTaskAsset];
  }

  v9 = [(CLPInstSchemaCLPCDMReplayTaskStarted *)self availableSiriAssets];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v9 underConditions:v4];
  [(CLPInstSchemaCLPCDMReplayTaskStarted *)self setAvailableSiriAssets:v10];

  v11 = [(CLPInstSchemaCLPCDMReplayTaskStarted *)self habitualUsages];
  v12 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v11 underConditions:v4];
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