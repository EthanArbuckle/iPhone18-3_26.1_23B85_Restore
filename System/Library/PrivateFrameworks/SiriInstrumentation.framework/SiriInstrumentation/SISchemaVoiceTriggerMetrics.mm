@interface SISchemaVoiceTriggerMetrics
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SISchemaVoiceTriggerMetrics)initWithDictionary:(id)a3;
- (SISchemaVoiceTriggerMetrics)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addFirstPassStatistics:(id)a3;
- (void)setHasExplicitUtterances:(BOOL)a3;
- (void)setHasFirstPassTriggers:(BOOL)a3;
- (void)setHasIsJSEnabled:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SISchemaVoiceTriggerMetrics

- (SISchemaVoiceTriggerMetrics)initWithDictionary:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v28.receiver = self;
  v28.super_class = SISchemaVoiceTriggerMetrics;
  v5 = [(SISchemaVoiceTriggerMetrics *)&v28 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"implicitUtterances"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaVoiceTriggerMetrics setImplicitUtterances:](v5, "setImplicitUtterances:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"explicitUtterances"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaVoiceTriggerMetrics setExplicitUtterances:](v5, "setExplicitUtterances:", [v7 intValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"firstPassTriggers"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaVoiceTriggerMetrics setFirstPassTriggers:](v5, "setFirstPassTriggers:", [v8 intValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"firstPassStatistics"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = v8;
      v23 = v6;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v10 = v9;
      v11 = [v10 countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v25;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v25 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v24 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v16 = [[MHSchemaMHVoiceTriggerFirstPassStatistic alloc] initWithDictionary:v15];
              [(SISchemaVoiceTriggerMetrics *)v5 addFirstPassStatistics:v16];
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v24 objects:v29 count:16];
        }

        while (v12);
      }

      v6 = v23;
      v8 = v22;
    }

    v17 = [v4 objectForKeyedSubscript:@"firstPassMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [[MHSchemaMHVoiceTriggerFirstPassDailyMetadata alloc] initWithDictionary:v17];
      [(SISchemaVoiceTriggerMetrics *)v5 setFirstPassMetadata:v18];
    }

    v19 = [v4 objectForKeyedSubscript:@"isJSEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaVoiceTriggerMetrics setIsJSEnabled:](v5, "setIsJSEnabled:", [v19 BOOLValue]);
    }

    v20 = v5;
  }

  return v5;
}

- (SISchemaVoiceTriggerMetrics)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SISchemaVoiceTriggerMetrics *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SISchemaVoiceTriggerMetrics *)self dictionaryRepresentation];
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
  if ((*(&self->_isJSEnabled + 1) & 2) != 0)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[SISchemaVoiceTriggerMetrics explicitUtterances](self, "explicitUtterances")}];
    [v3 setObject:v4 forKeyedSubscript:@"explicitUtterances"];
  }

  if (self->_firstPassMetadata)
  {
    v5 = [(SISchemaVoiceTriggerMetrics *)self firstPassMetadata];
    v6 = [v5 dictionaryRepresentation];
    if (v6)
    {
      [v3 setObject:v6 forKeyedSubscript:@"firstPassMetadata"];
    }

    else
    {
      v7 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v7 forKeyedSubscript:@"firstPassMetadata"];
    }
  }

  if ([(NSArray *)self->_firstPassStatistics count])
  {
    v8 = [MEMORY[0x1E695DF70] array];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = self->_firstPassStatistics;
    v10 = [(NSArray *)v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v21 + 1) + 8 * i) dictionaryRepresentation];
          if (v14)
          {
            [v8 addObject:v14];
          }

          else
          {
            v15 = [MEMORY[0x1E695DFB0] null];
            [v8 addObject:v15];
          }
        }

        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v11);
    }

    [v3 setObject:v8 forKeyedSubscript:@"firstPassStatistics"];
  }

  v16 = *(&self->_isJSEnabled + 1);
  if ((v16 & 4) != 0)
  {
    v19 = [MEMORY[0x1E696AD98] numberWithInt:{-[SISchemaVoiceTriggerMetrics firstPassTriggers](self, "firstPassTriggers")}];
    [v3 setObject:v19 forKeyedSubscript:@"firstPassTriggers"];

    v16 = *(&self->_isJSEnabled + 1);
    if ((v16 & 1) == 0)
    {
LABEL_22:
      if ((v16 & 8) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }
  }

  else if (!*(&self->_isJSEnabled + 1))
  {
    goto LABEL_22;
  }

  v20 = [MEMORY[0x1E696AD98] numberWithInt:{-[SISchemaVoiceTriggerMetrics implicitUtterances](self, "implicitUtterances")}];
  [v3 setObject:v20 forKeyedSubscript:@"implicitUtterances"];

  if ((*(&self->_isJSEnabled + 1) & 8) != 0)
  {
LABEL_23:
    v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[SISchemaVoiceTriggerMetrics isJSEnabled](self, "isJSEnabled")}];
    [v3 setObject:v17 forKeyedSubscript:@"isJSEnabled"];
  }

LABEL_24:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (!*(&self->_isJSEnabled + 1))
  {
    v3 = 0;
    if ((*(&self->_isJSEnabled + 1) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v4 = 0;
    if ((*(&self->_isJSEnabled + 1) & 4) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v3 = 2654435761 * self->_implicitUtterances;
  if ((*(&self->_isJSEnabled + 1) & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v4 = 2654435761 * self->_explicitUtterances;
  if ((*(&self->_isJSEnabled + 1) & 4) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_firstPassTriggers;
    goto LABEL_8;
  }

LABEL_7:
  v5 = 0;
LABEL_8:
  v6 = [(NSArray *)self->_firstPassStatistics hash];
  v7 = [(MHSchemaMHVoiceTriggerFirstPassDailyMetadata *)self->_firstPassMetadata hash];
  if ((*(&self->_isJSEnabled + 1) & 8) != 0)
  {
    v8 = 2654435761 * self->_isJSEnabled;
  }

  else
  {
    v8 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  v5 = *(&self->_isJSEnabled + 1);
  v6 = v4[41];
  if ((v5 & 1) != (v6 & 1))
  {
    goto LABEL_23;
  }

  if (v5)
  {
    implicitUtterances = self->_implicitUtterances;
    if (implicitUtterances != [v4 implicitUtterances])
    {
      goto LABEL_23;
    }

    v5 = *(&self->_isJSEnabled + 1);
    v6 = v4[41];
  }

  v8 = (v5 >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (v8)
    {
      explicitUtterances = self->_explicitUtterances;
      if (explicitUtterances != [v4 explicitUtterances])
      {
        goto LABEL_23;
      }

      v5 = *(&self->_isJSEnabled + 1);
      v6 = v4[41];
    }

    v10 = (v5 >> 2) & 1;
    if (v10 != ((v6 >> 2) & 1))
    {
      goto LABEL_23;
    }

    if (v10)
    {
      firstPassTriggers = self->_firstPassTriggers;
      if (firstPassTriggers != [v4 firstPassTriggers])
      {
        goto LABEL_23;
      }
    }

    v12 = [(SISchemaVoiceTriggerMetrics *)self firstPassStatistics];
    v13 = [v4 firstPassStatistics];
    if ((v12 != 0) == (v13 == 0))
    {
      goto LABEL_22;
    }

    v14 = [(SISchemaVoiceTriggerMetrics *)self firstPassStatistics];
    if (v14)
    {
      v15 = v14;
      v16 = [(SISchemaVoiceTriggerMetrics *)self firstPassStatistics];
      v17 = [v4 firstPassStatistics];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_23;
      }
    }

    else
    {
    }

    v12 = [(SISchemaVoiceTriggerMetrics *)self firstPassMetadata];
    v13 = [v4 firstPassMetadata];
    if ((v12 != 0) == (v13 == 0))
    {
LABEL_22:

      goto LABEL_23;
    }

    v19 = [(SISchemaVoiceTriggerMetrics *)self firstPassMetadata];
    if (v19)
    {
      v20 = v19;
      v21 = [(SISchemaVoiceTriggerMetrics *)self firstPassMetadata];
      v22 = [v4 firstPassMetadata];
      v23 = [v21 isEqual:v22];

      if (!v23)
      {
        goto LABEL_23;
      }
    }

    else
    {
    }

    v26 = (*(&self->_isJSEnabled + 1) >> 3) & 1;
    if (v26 == ((v4[41] >> 3) & 1))
    {
      if (!v26 || (isJSEnabled = self->_isJSEnabled, isJSEnabled == [v4 isJSEnabled]))
      {
        v24 = 1;
        goto LABEL_24;
      }
    }
  }

LABEL_23:
  v24 = 0;
LABEL_24:

  return v24;
}

- (void)writeTo:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *(&self->_isJSEnabled + 1);
  if (v5)
  {
    PBDataWriterWriteInt32Field();
    v5 = *(&self->_isJSEnabled + 1);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(&self->_isJSEnabled + 1) & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteInt32Field();
  if ((*(&self->_isJSEnabled + 1) & 4) != 0)
  {
LABEL_4:
    PBDataWriterWriteInt32Field();
  }

LABEL_5:
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_firstPassStatistics;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        PBDataWriterWriteSubmessage();
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v11 = [(SISchemaVoiceTriggerMetrics *)self firstPassMetadata];

  if (v11)
  {
    v12 = [(SISchemaVoiceTriggerMetrics *)self firstPassMetadata];
    PBDataWriterWriteSubmessage();
  }

  if ((*(&self->_isJSEnabled + 1) & 8) != 0)
  {
    PBDataWriterWriteBOOLField();
  }
}

- (void)setHasIsJSEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isJSEnabled + 1) = *(&self->_isJSEnabled + 1) & 0xF7 | v3;
}

- (void)addFirstPassStatistics:(id)a3
{
  v4 = a3;
  firstPassStatistics = self->_firstPassStatistics;
  v8 = v4;
  if (!firstPassStatistics)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_firstPassStatistics;
    self->_firstPassStatistics = v6;

    v4 = v8;
    firstPassStatistics = self->_firstPassStatistics;
  }

  [(NSArray *)firstPassStatistics addObject:v4];
}

- (void)setHasFirstPassTriggers:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isJSEnabled + 1) = *(&self->_isJSEnabled + 1) & 0xFB | v3;
}

- (void)setHasExplicitUtterances:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isJSEnabled + 1) = *(&self->_isJSEnabled + 1) & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v11.receiver = self;
  v11.super_class = SISchemaVoiceTriggerMetrics;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v11 applySensitiveConditionsPolicy:v4];
  v6 = [(SISchemaVoiceTriggerMetrics *)self firstPassStatistics:v11.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:v4];
  [(SISchemaVoiceTriggerMetrics *)self setFirstPassStatistics:v7];

  v8 = [(SISchemaVoiceTriggerMetrics *)self firstPassMetadata];
  v9 = [v8 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v9 suppressMessage];
  if (v4)
  {
    [(SISchemaVoiceTriggerMetrics *)self deleteFirstPassMetadata];
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