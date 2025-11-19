@interface JRSchemaJRAnonymizedHistoryAndContextTuple
- (BOOL)isEqual:(id)a3;
- (JRSchemaJRAnonymizedHistoryAndContextTuple)initWithDictionary:(id)a3;
- (JRSchemaJRAnonymizedHistoryAndContextTuple)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addCandidateIds:(id)a3;
- (void)setHasUflScore:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation JRSchemaJRAnonymizedHistoryAndContextTuple

- (JRSchemaJRAnonymizedHistoryAndContextTuple)initWithDictionary:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v23.receiver = self;
  v23.super_class = JRSchemaJRAnonymizedHistoryAndContextTuple;
  v5 = [(JRSchemaJRAnonymizedHistoryAndContextTuple *)&v23 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"candidateIds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v20;
        do
        {
          v11 = 0;
          do
          {
            if (*v20 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v19 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [SISchemaUUID alloc];
              v14 = [(SISchemaUUID *)v13 initWithDictionary:v12, v19];
              [(JRSchemaJRAnonymizedHistoryAndContextTuple *)v5 addCandidateIds:v14];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
        }

        while (v9);
      }
    }

    v15 = [v4 objectForKeyedSubscript:{@"contextSimilarityScore", v19}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v15 floatValue];
      [(JRSchemaJRAnonymizedHistoryAndContextTuple *)v5 setContextSimilarityScore:?];
    }

    v16 = [v4 objectForKeyedSubscript:@"uflScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v16 floatValue];
      [(JRSchemaJRAnonymizedHistoryAndContextTuple *)v5 setUflScore:?];
    }

    v17 = v5;
  }

  return v5;
}

- (JRSchemaJRAnonymizedHistoryAndContextTuple)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(JRSchemaJRAnonymizedHistoryAndContextTuple *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(JRSchemaJRAnonymizedHistoryAndContextTuple *)self dictionaryRepresentation];
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
  v23 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_candidateIds count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v5 = self->_candidateIds;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v19;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v18 + 1) + 8 * i) dictionaryRepresentation];
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

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKeyedSubscript:@"candidateIds"];
  }

  has = self->_has;
  if (has)
  {
    v13 = MEMORY[0x1E696AD98];
    [(JRSchemaJRAnonymizedHistoryAndContextTuple *)self contextSimilarityScore];
    v14 = [v13 numberWithFloat:?];
    [v3 setObject:v14 forKeyedSubscript:@"contextSimilarityScore"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v15 = MEMORY[0x1E696AD98];
    [(JRSchemaJRAnonymizedHistoryAndContextTuple *)self uflScore];
    v16 = [v15 numberWithFloat:?];
    [v3 setObject:v16 forKeyedSubscript:@"uflScore"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v18];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_candidateIds hash];
  if (*&self->_has)
  {
    contextSimilarityScore = self->_contextSimilarityScore;
    if (contextSimilarityScore >= 0.0)
    {
      v8 = contextSimilarityScore;
    }

    else
    {
      v8 = -contextSimilarityScore;
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
    uflScore = self->_uflScore;
    if (uflScore >= 0.0)
    {
      v13 = uflScore;
    }

    else
    {
      v13 = -uflScore;
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

  return v6 ^ v3 ^ v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  v5 = [(JRSchemaJRAnonymizedHistoryAndContextTuple *)self candidateIds];
  v6 = [v4 candidateIds];
  v7 = v6;
  if ((v5 != 0) != (v6 == 0))
  {
    v8 = [(JRSchemaJRAnonymizedHistoryAndContextTuple *)self candidateIds];
    if (v8)
    {
      v9 = v8;
      v10 = [(JRSchemaJRAnonymizedHistoryAndContextTuple *)self candidateIds];
      v11 = [v4 candidateIds];
      v12 = [v10 isEqual:v11];

      if (!v12)
      {
        goto LABEL_15;
      }
    }

    else
    {
    }

    has = self->_has;
    v14 = v4[24];
    if ((*&has & 1) == (v14 & 1))
    {
      if (*&has)
      {
        contextSimilarityScore = self->_contextSimilarityScore;
        [v4 contextSimilarityScore];
        if (contextSimilarityScore != v16)
        {
          goto LABEL_15;
        }

        has = self->_has;
        v14 = v4[24];
      }

      v17 = (*&has >> 1) & 1;
      if (v17 == ((v14 >> 1) & 1))
      {
        if (!v17 || (uflScore = self->_uflScore, [v4 uflScore], uflScore == v19))
        {
          v20 = 1;
          goto LABEL_16;
        }
      }
    }
  }

  else
  {
  }

LABEL_15:
  v20 = 0;
LABEL_16:

  return v20;
}

- (void)writeTo:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_candidateIds;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
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
}

- (void)setHasUflScore:(BOOL)a3
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

- (void)addCandidateIds:(id)a3
{
  v4 = a3;
  candidateIds = self->_candidateIds;
  v8 = v4;
  if (!candidateIds)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_candidateIds;
    self->_candidateIds = v6;

    v4 = v8;
    candidateIds = self->_candidateIds;
  }

  [(NSArray *)candidateIds addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = JRSchemaJRAnonymizedHistoryAndContextTuple;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(JRSchemaJRAnonymizedHistoryAndContextTuple *)self candidateIds:v9.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:v4];

  [(JRSchemaJRAnonymizedHistoryAndContextTuple *)self setCandidateIds:v7];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end