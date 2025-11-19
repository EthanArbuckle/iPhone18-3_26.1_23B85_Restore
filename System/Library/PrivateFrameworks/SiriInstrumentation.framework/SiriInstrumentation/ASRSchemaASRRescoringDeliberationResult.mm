@interface ASRSchemaASRRescoringDeliberationResult
- (ASRSchemaASRRescoringDeliberationResult)initWithDictionary:(id)a3;
- (ASRSchemaASRRescoringDeliberationResult)initWithJSON:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addRescoringEvents:(id)a3;
- (void)setHasRescoringFinalizeDuration:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ASRSchemaASRRescoringDeliberationResult

- (ASRSchemaASRRescoringDeliberationResult)initWithDictionary:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v26.receiver = self;
  v26.super_class = ASRSchemaASRRescoringDeliberationResult;
  v5 = [(ASRSchemaASRRescoringDeliberationResult *)&v26 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"rescoringLinkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(ASRSchemaASRRescoringDeliberationResult *)v5 setRescoringLinkId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"rescoringResultDuration"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 floatValue];
      [(ASRSchemaASRRescoringDeliberationResult *)v5 setRescoringResultDuration:?];
    }

    v9 = [v4 objectForKeyedSubscript:@"rescoringFinalizeDuration"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v9 floatValue];
      [(ASRSchemaASRRescoringDeliberationResult *)v5 setRescoringFinalizeDuration:?];
    }

    v10 = [v4 objectForKeyedSubscript:@"rescoringEvents"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = v9;
      v21 = v6;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v22 objects:v27 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v23;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v23 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v22 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v17 = [[ASRSchemaASRRescoringDeliberationEvent alloc] initWithDictionary:v16];
              [(ASRSchemaASRRescoringDeliberationResult *)v5 addRescoringEvents:v17];
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v22 objects:v27 count:16];
        }

        while (v13);
      }

      v6 = v21;
      v9 = v20;
    }

    v18 = v5;
  }

  return v5;
}

- (ASRSchemaASRRescoringDeliberationResult)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ASRSchemaASRRescoringDeliberationResult *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ASRSchemaASRRescoringDeliberationResult *)self dictionaryRepresentation];
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
  if ([(NSArray *)self->_rescoringEvents count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v5 = self->_rescoringEvents;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v21;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v21 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v20 + 1) + 8 * i) dictionaryRepresentation];
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

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKeyedSubscript:@"rescoringEvents"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v12 = MEMORY[0x1E696AD98];
    [(ASRSchemaASRRescoringDeliberationResult *)self rescoringFinalizeDuration];
    v13 = [v12 numberWithFloat:?];
    [v3 setObject:v13 forKeyedSubscript:@"rescoringFinalizeDuration"];
  }

  if (self->_rescoringLinkId)
  {
    v14 = [(ASRSchemaASRRescoringDeliberationResult *)self rescoringLinkId];
    v15 = [v14 dictionaryRepresentation];
    if (v15)
    {
      [v3 setObject:v15 forKeyedSubscript:@"rescoringLinkId"];
    }

    else
    {
      v16 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v16 forKeyedSubscript:@"rescoringLinkId"];
    }
  }

  if (*&self->_has)
  {
    v17 = MEMORY[0x1E696AD98];
    [(ASRSchemaASRRescoringDeliberationResult *)self rescoringResultDuration];
    v18 = [v17 numberWithFloat:?];
    [v3 setObject:v18 forKeyedSubscript:@"rescoringResultDuration"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v20];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_rescoringLinkId hash];
  if (*&self->_has)
  {
    rescoringResultDuration = self->_rescoringResultDuration;
    if (rescoringResultDuration >= 0.0)
    {
      v8 = rescoringResultDuration;
    }

    else
    {
      v8 = -rescoringResultDuration;
    }

    *v4.i64 = floor(v8 + 0.5);
    v9 = (v8 - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v10), v5, v4);
    v6 = 2654435761u * *v4.i64;
    if (v9 >= 0.0)
    {
      if (v9 > 0.0)
      {
        v6 += v9;
      }
    }

    else
    {
      v6 -= fabs(v9);
    }
  }

  else
  {
    v6 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    rescoringFinalizeDuration = self->_rescoringFinalizeDuration;
    if (rescoringFinalizeDuration >= 0.0)
    {
      v13 = rescoringFinalizeDuration;
    }

    else
    {
      v13 = -rescoringFinalizeDuration;
    }

    *v4.i64 = floor(v13 + 0.5);
    v14 = (v13 - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v15.f64[0] = NAN;
    v15.f64[1] = NAN;
    v11 = 2654435761u * *vbslq_s8(vnegq_f64(v15), v5, v4).i64;
    if (v14 >= 0.0)
    {
      if (v14 > 0.0)
      {
        v11 += v14;
      }
    }

    else
    {
      v11 -= fabs(v14);
    }
  }

  else
  {
    v11 = 0;
  }

  return v6 ^ v3 ^ v11 ^ [(NSArray *)self->_rescoringEvents hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  v5 = [(ASRSchemaASRRescoringDeliberationResult *)self rescoringLinkId];
  v6 = [v4 rescoringLinkId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_18;
  }

  v7 = [(ASRSchemaASRRescoringDeliberationResult *)self rescoringLinkId];
  if (v7)
  {
    v8 = v7;
    v9 = [(ASRSchemaASRRescoringDeliberationResult *)self rescoringLinkId];
    v10 = [v4 rescoringLinkId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  has = self->_has;
  v13 = v4[32];
  if ((*&has & 1) != (v13 & 1))
  {
    goto LABEL_19;
  }

  if (*&has)
  {
    rescoringResultDuration = self->_rescoringResultDuration;
    [v4 rescoringResultDuration];
    if (rescoringResultDuration != v15)
    {
      goto LABEL_19;
    }

    has = self->_has;
    v13 = v4[32];
  }

  v16 = (*&has >> 1) & 1;
  if (v16 != ((v13 >> 1) & 1))
  {
    goto LABEL_19;
  }

  if (v16)
  {
    rescoringFinalizeDuration = self->_rescoringFinalizeDuration;
    [v4 rescoringFinalizeDuration];
    if (rescoringFinalizeDuration != v18)
    {
      goto LABEL_19;
    }
  }

  v5 = [(ASRSchemaASRRescoringDeliberationResult *)self rescoringEvents];
  v6 = [v4 rescoringEvents];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_18:

    goto LABEL_19;
  }

  v19 = [(ASRSchemaASRRescoringDeliberationResult *)self rescoringEvents];
  if (!v19)
  {

LABEL_22:
    v24 = 1;
    goto LABEL_20;
  }

  v20 = v19;
  v21 = [(ASRSchemaASRRescoringDeliberationResult *)self rescoringEvents];
  v22 = [v4 rescoringEvents];
  v23 = [v21 isEqual:v22];

  if (v23)
  {
    goto LABEL_22;
  }

LABEL_19:
  v24 = 0;
LABEL_20:

  return v24;
}

- (void)writeTo:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(ASRSchemaASRRescoringDeliberationResult *)self rescoringLinkId];

  if (v5)
  {
    v6 = [(ASRSchemaASRRescoringDeliberationResult *)self rescoringLinkId];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteFloatField();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteFloatField();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = self->_rescoringEvents;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        PBDataWriterWriteSubmessage();
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)addRescoringEvents:(id)a3
{
  v4 = a3;
  rescoringEvents = self->_rescoringEvents;
  v8 = v4;
  if (!rescoringEvents)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_rescoringEvents;
    self->_rescoringEvents = v6;

    v4 = v8;
    rescoringEvents = self->_rescoringEvents;
  }

  [(NSArray *)rescoringEvents addObject:v4];
}

- (void)setHasRescoringFinalizeDuration:(BOOL)a3
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
  v4 = a3;
  v12.receiver = self;
  v12.super_class = ASRSchemaASRRescoringDeliberationResult;
  v5 = [(SISchemaInstrumentationMessage *)&v12 applySensitiveConditionsPolicy:v4];
  v6 = [(ASRSchemaASRRescoringDeliberationResult *)self rescoringLinkId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(ASRSchemaASRRescoringDeliberationResult *)self deleteRescoringLinkId];
  }

  v9 = [(ASRSchemaASRRescoringDeliberationResult *)self rescoringEvents];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v9 underConditions:v4];
  [(ASRSchemaASRRescoringDeliberationResult *)self setRescoringEvents:v10];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end