@interface SISchemaSelfTriggerSuppressionMetrics
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SISchemaSelfTriggerSuppressionMetrics)initWithDictionary:(id)a3;
- (SISchemaSelfTriggerSuppressionMetrics)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addSelfTriggerSuppressionSessions:(id)a3;
- (void)setHasDurationSelfTriggerSuppressionWasActiveInSeconds:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SISchemaSelfTriggerSuppressionMetrics

- (SISchemaSelfTriggerSuppressionMetrics)initWithDictionary:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v24.receiver = self;
  v24.super_class = SISchemaSelfTriggerSuppressionMetrics;
  v5 = [(SISchemaSelfTriggerSuppressionMetrics *)&v24 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"numSelfTriggersDetected"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaSelfTriggerSuppressionMetrics setNumSelfTriggersDetected:](v5, "setNumSelfTriggersDetected:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"durationSelfTriggerSuppressionWasActiveInSeconds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 doubleValue];
      [(SISchemaSelfTriggerSuppressionMetrics *)v5 setDurationSelfTriggerSuppressionWasActiveInSeconds:?];
    }

    v8 = [v4 objectForKeyedSubscript:@"selfTriggerSuppressionSessions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v7;
      v19 = v6;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v21;
        do
        {
          v13 = 0;
          do
          {
            if (*v21 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v20 + 1) + 8 * v13);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = [[MHSchemaMHSelfTriggerSuppressionSession alloc] initWithDictionary:v14];
              [(SISchemaSelfTriggerSuppressionMetrics *)v5 addSelfTriggerSuppressionSessions:v15];
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
        }

        while (v11);
      }

      v7 = v18;
      v6 = v19;
    }

    v16 = v5;
  }

  return v5;
}

- (SISchemaSelfTriggerSuppressionMetrics)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SISchemaSelfTriggerSuppressionMetrics *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SISchemaSelfTriggerSuppressionMetrics *)self dictionaryRepresentation];
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
  v22 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = MEMORY[0x1E696AD98];
    [(SISchemaSelfTriggerSuppressionMetrics *)self durationSelfTriggerSuppressionWasActiveInSeconds];
    v6 = [v5 numberWithDouble:?];
    [v3 setObject:v6 forKeyedSubscript:@"durationSelfTriggerSuppressionWasActiveInSeconds"];

    has = self->_has;
  }

  if (has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[SISchemaSelfTriggerSuppressionMetrics numSelfTriggersDetected](self, "numSelfTriggersDetected")}];
    [v3 setObject:v7 forKeyedSubscript:@"numSelfTriggersDetected"];
  }

  if ([(NSArray *)self->_selfTriggerSuppressionSessions count])
  {
    v8 = [MEMORY[0x1E695DF70] array];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = self->_selfTriggerSuppressionSessions;
    v10 = [(NSArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v17 + 1) + 8 * i) dictionaryRepresentation];
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

        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v11);
    }

    [v3 setObject:v8 forKeyedSubscript:@"selfTriggerSuppressionSessions"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v17];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v8 = 2654435761 * self->_numSelfTriggersDetected;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    v12 = 0;
    return v12 ^ v8 ^ [(NSArray *)self->_selfTriggerSuppressionSessions hash:v3];
  }

  v8 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  durationSelfTriggerSuppressionWasActiveInSeconds = self->_durationSelfTriggerSuppressionWasActiveInSeconds;
  if (durationSelfTriggerSuppressionWasActiveInSeconds < 0.0)
  {
    durationSelfTriggerSuppressionWasActiveInSeconds = -durationSelfTriggerSuppressionWasActiveInSeconds;
  }

  *v6.i64 = floor(durationSelfTriggerSuppressionWasActiveInSeconds + 0.5);
  v10 = (durationSelfTriggerSuppressionWasActiveInSeconds - *v6.i64) * 1.84467441e19;
  *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
  v11.f64[0] = NAN;
  v11.f64[1] = NAN;
  v12 = 2654435761u * *vbslq_s8(vnegq_f64(v11), v7, v6).i64;
  if (v10 >= 0.0)
  {
    if (v10 > 0.0)
    {
      v12 += v10;
    }
  }

  else
  {
    v12 -= fabs(v10);
  }

  return v12 ^ v8 ^ [(NSArray *)self->_selfTriggerSuppressionSessions hash:v3];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  has = self->_has;
  v6 = v4[32];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_14;
  }

  if (*&has)
  {
    numSelfTriggersDetected = self->_numSelfTriggersDetected;
    if (numSelfTriggersDetected != [v4 numSelfTriggersDetected])
    {
      goto LABEL_14;
    }

    has = self->_has;
    v6 = v4[32];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (!v8 || (durationSelfTriggerSuppressionWasActiveInSeconds = self->_durationSelfTriggerSuppressionWasActiveInSeconds, [v4 durationSelfTriggerSuppressionWasActiveInSeconds], durationSelfTriggerSuppressionWasActiveInSeconds == v10))
    {
      v11 = [(SISchemaSelfTriggerSuppressionMetrics *)self selfTriggerSuppressionSessions];
      v12 = [v4 selfTriggerSuppressionSessions];
      v13 = v12;
      if ((v11 != 0) != (v12 == 0))
      {
        v14 = [(SISchemaSelfTriggerSuppressionMetrics *)self selfTriggerSuppressionSessions];
        if (!v14)
        {

LABEL_17:
          v19 = 1;
          goto LABEL_15;
        }

        v15 = v14;
        v16 = [(SISchemaSelfTriggerSuppressionMetrics *)self selfTriggerSuppressionSessions];
        v17 = [v4 selfTriggerSuppressionSessions];
        v18 = [v16 isEqual:v17];

        if (v18)
        {
          goto LABEL_17;
        }
      }

      else
      {
      }
    }
  }

LABEL_14:
  v19 = 0;
LABEL_15:

  return v19;
}

- (void)writeTo:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteDoubleField();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_selfTriggerSuppressionSessions;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        PBDataWriterWriteSubmessage();
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)addSelfTriggerSuppressionSessions:(id)a3
{
  v4 = a3;
  selfTriggerSuppressionSessions = self->_selfTriggerSuppressionSessions;
  v8 = v4;
  if (!selfTriggerSuppressionSessions)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_selfTriggerSuppressionSessions;
    self->_selfTriggerSuppressionSessions = v6;

    v4 = v8;
    selfTriggerSuppressionSessions = self->_selfTriggerSuppressionSessions;
  }

  [(NSArray *)selfTriggerSuppressionSessions addObject:v4];
}

- (void)setHasDurationSelfTriggerSuppressionWasActiveInSeconds:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = SISchemaSelfTriggerSuppressionMetrics;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(SISchemaSelfTriggerSuppressionMetrics *)self selfTriggerSuppressionSessions:v9.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:v4];

  [(SISchemaSelfTriggerSuppressionMetrics *)self setSelfTriggerSuppressionSessions:v7];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end