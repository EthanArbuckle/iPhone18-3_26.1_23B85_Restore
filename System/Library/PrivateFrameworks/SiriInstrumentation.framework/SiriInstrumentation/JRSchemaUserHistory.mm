@interface JRSchemaUserHistory
- (BOOL)isEqual:(id)a3;
- (JRSchemaUserHistory)initWithDictionary:(id)a3;
- (JRSchemaUserHistory)initWithJSON:(id)a3;
- (NSData)jsonData;
- (float)historicalContextAtIndex:(unint64_t)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addHistoricalContext:(float)a3;
- (void)addHistoricalLocationContext:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation JRSchemaUserHistory

- (JRSchemaUserHistory)initWithDictionary:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v38.receiver = self;
  v38.super_class = JRSchemaUserHistory;
  v5 = [(JRSchemaUserHistory *)&v38 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"toolId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(JRSchemaUserHistory *)v5 setToolId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"historicalContext"];
    objc_opt_class();
    v28 = v6;
    v29 = v4;
    if (objc_opt_isKindOfClass())
    {
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v9 = v8;
      v10 = v8;
      v11 = [v10 countByEnumeratingWithState:&v34 objects:v40 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v35;
        do
        {
          v14 = 0;
          do
          {
            if (*v35 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v34 + 1) + 8 * v14);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v15 floatValue];
              [(JRSchemaUserHistory *)v5 addHistoricalContext:?];
            }

            ++v14;
          }

          while (v12 != v14);
          v12 = [v10 countByEnumeratingWithState:&v34 objects:v40 count:16];
        }

        while (v12);
      }

      v6 = v28;
      v4 = v29;
      v8 = v9;
    }

    v16 = [v4 objectForKeyedSubscript:@"historicalFeedback"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v16 floatValue];
      [(JRSchemaUserHistory *)v5 setHistoricalFeedback:?];
    }

    v17 = [v4 objectForKeyedSubscript:@"historicalLocationContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = v8;
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
          v22 = 0;
          do
          {
            if (*v31 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v30 + 1) + 8 * v22);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v24 = [[JRSchemaHistoricalLocationContext alloc] initWithDictionary:v23];
              [(JRSchemaUserHistory *)v5 addHistoricalLocationContext:v24];
            }

            ++v22;
          }

          while (v20 != v22);
          v20 = [v18 countByEnumeratingWithState:&v30 objects:v39 count:16];
        }

        while (v20);
      }

      v6 = v28;
      v4 = v29;
      v8 = v27;
    }

    v25 = v5;
  }

  return v5;
}

- (JRSchemaUserHistory)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(JRSchemaUserHistory *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(JRSchemaUserHistory *)self dictionaryRepresentation];
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
  if ([(NSArray *)self->_historicalContexts count])
  {
    v4 = [(JRSchemaUserHistory *)self historicalContexts];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"historicalContext"];
  }

  if (*&self->_has)
  {
    v6 = MEMORY[0x1E696AD98];
    [(JRSchemaUserHistory *)self historicalFeedback];
    v7 = [v6 numberWithFloat:?];
    [v3 setObject:v7 forKeyedSubscript:@"historicalFeedback"];
  }

  if ([(NSArray *)self->_historicalLocationContexts count])
  {
    v8 = [MEMORY[0x1E695DF70] array];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = self->_historicalLocationContexts;
    v10 = [(NSArray *)v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v21;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v20 + 1) + 8 * i) dictionaryRepresentation];
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

        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v11);
    }

    [v3 setObject:v8 forKeyedSubscript:@"historicalLocationContext"];
  }

  if (self->_toolId)
  {
    v16 = [(JRSchemaUserHistory *)self toolId];
    v17 = [v16 dictionaryRepresentation];
    if (v17)
    {
      [v3 setObject:v17 forKeyedSubscript:@"toolId"];
    }

    else
    {
      v18 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v18 forKeyedSubscript:@"toolId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v20];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_toolId hash];
  v4 = [(NSArray *)self->_historicalContexts hash];
  if (*&self->_has)
  {
    historicalFeedback = self->_historicalFeedback;
    if (historicalFeedback >= 0.0)
    {
      v9 = historicalFeedback;
    }

    else
    {
      v9 = -historicalFeedback;
    }

    *v5.i64 = floor(v9 + 0.5);
    v10 = (v9 - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v11.f64[0] = NAN;
    v11.f64[1] = NAN;
    v7 = 2654435761u * *vbslq_s8(vnegq_f64(v11), v6, v5).i64;
    if (v10 >= 0.0)
    {
      if (v10 > 0.0)
      {
        v7 += v10;
      }
    }

    else
    {
      v7 -= fabs(v10);
    }
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v7 ^ [(NSArray *)self->_historicalLocationContexts hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  v5 = [(JRSchemaUserHistory *)self toolId];
  v6 = [v4 toolId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_19;
  }

  v7 = [(JRSchemaUserHistory *)self toolId];
  if (v7)
  {
    v8 = v7;
    v9 = [(JRSchemaUserHistory *)self toolId];
    v10 = [v4 toolId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  v5 = [(JRSchemaUserHistory *)self historicalContexts];
  v6 = [v4 historicalContexts];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_19;
  }

  v12 = [(JRSchemaUserHistory *)self historicalContexts];
  if (v12)
  {
    v13 = v12;
    v14 = [(JRSchemaUserHistory *)self historicalContexts];
    v15 = [v4 historicalContexts];
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
    historicalFeedback = self->_historicalFeedback;
    [v4 historicalFeedback];
    if (historicalFeedback != v18)
    {
      goto LABEL_20;
    }
  }

  v5 = [(JRSchemaUserHistory *)self historicalLocationContexts];
  v6 = [v4 historicalLocationContexts];
  if ((v5 != 0) != (v6 == 0))
  {
    v19 = [(JRSchemaUserHistory *)self historicalLocationContexts];
    if (!v19)
    {

LABEL_23:
      v24 = 1;
      goto LABEL_21;
    }

    v20 = v19;
    v21 = [(JRSchemaUserHistory *)self historicalLocationContexts];
    v22 = [v4 historicalLocationContexts];
    v23 = [v21 isEqual:v22];

    if (v23)
    {
      goto LABEL_23;
    }
  }

  else
  {
LABEL_19:
  }

LABEL_20:
  v24 = 0;
LABEL_21:

  return v24;
}

- (void)writeTo:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(JRSchemaUserHistory *)self toolId];

  if (v5)
  {
    v6 = [(JRSchemaUserHistory *)self toolId];
    PBDataWriterWriteSubmessage();
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = self->_historicalContexts;
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

        [*(*(&v21 + 1) + 8 * v11) floatValue];
        PBDataWriterWriteFloatField();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v9);
  }

  if (*&self->_has)
  {
    PBDataWriterWriteFloatField();
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = self->_historicalLocationContexts;
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

- (void)addHistoricalLocationContext:(id)a3
{
  v4 = a3;
  historicalLocationContexts = self->_historicalLocationContexts;
  v8 = v4;
  if (!historicalLocationContexts)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_historicalLocationContexts;
    self->_historicalLocationContexts = v6;

    v4 = v8;
    historicalLocationContexts = self->_historicalLocationContexts;
  }

  [(NSArray *)historicalLocationContexts addObject:v4];
}

- (float)historicalContextAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_historicalContexts objectAtIndexedSubscript:a3];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (void)addHistoricalContext:(float)a3
{
  historicalContexts = self->_historicalContexts;
  if (!historicalContexts)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_historicalContexts;
    self->_historicalContexts = v6;

    historicalContexts = self->_historicalContexts;
  }

  *&v8 = a3;
  v9 = [MEMORY[0x1E696AD98] numberWithFloat:v8];
  [(NSArray *)historicalContexts addObject:v9];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = JRSchemaUserHistory;
  v5 = [(SISchemaInstrumentationMessage *)&v12 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:4])
  {
    [(JRSchemaUserHistory *)self deleteToolId];
  }

  v6 = [(JRSchemaUserHistory *)self toolId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(JRSchemaUserHistory *)self deleteToolId];
  }

  v9 = [(JRSchemaUserHistory *)self historicalLocationContexts];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v9 underConditions:v4];
  [(JRSchemaUserHistory *)self setHistoricalLocationContexts:v10];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end