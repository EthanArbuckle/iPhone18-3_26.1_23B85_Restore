@interface JRSchemaIntervalUntilStartTime
- (BOOL)isEqual:(id)a3;
- (JRSchemaIntervalUntilStartTime)initWithDictionary:(id)a3;
- (JRSchemaIntervalUntilStartTime)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)addCandidateBooleanMask:(id)a3;
- (void)addCandidateTimeIntervalMatrix:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation JRSchemaIntervalUntilStartTime

- (JRSchemaIntervalUntilStartTime)initWithDictionary:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v33.receiver = self;
  v33.super_class = JRSchemaIntervalUntilStartTime;
  v5 = [(JRSchemaIntervalUntilStartTime *)&v33 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"candidateBooleanMask"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v29 objects:v35 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v30;
        do
        {
          v11 = 0;
          do
          {
            if (*v30 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v29 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [[JRSchemaJRCandidateBooleanMask alloc] initWithDictionary:v12];
              [(JRSchemaIntervalUntilStartTime *)v5 addCandidateBooleanMask:v13];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v29 objects:v35 count:16];
        }

        while (v9);
      }
    }

    v14 = [v4 objectForKeyedSubscript:@"candidateTimeIntervalMatrix"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = v6;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v15 = v14;
      v16 = [v15 countByEnumeratingWithState:&v25 objects:v34 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v26;
        do
        {
          v19 = 0;
          do
          {
            if (*v26 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v25 + 1) + 8 * v19);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v21 = [[JRSchemaJRCandidateTimeIntervalMatrix alloc] initWithDictionary:v20];
              [(JRSchemaIntervalUntilStartTime *)v5 addCandidateTimeIntervalMatrix:v21];
            }

            ++v19;
          }

          while (v17 != v19);
          v17 = [v15 countByEnumeratingWithState:&v25 objects:v34 count:16];
        }

        while (v17);
      }

      v6 = v24;
    }

    v22 = v5;
  }

  return v5;
}

- (JRSchemaIntervalUntilStartTime)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(JRSchemaIntervalUntilStartTime *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(JRSchemaIntervalUntilStartTime *)self dictionaryRepresentation];
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
  v31 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_candidateBooleanMasks count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v5 = self->_candidateBooleanMasks;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v26;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v26 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v25 + 1) + 8 * i) dictionaryRepresentation];
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

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKeyedSubscript:@"candidateBooleanMask"];
  }

  if ([(NSArray *)self->_candidateTimeIntervalMatrixs count])
  {
    v12 = [MEMORY[0x1E695DF70] array];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v13 = self->_candidateTimeIntervalMatrixs;
    v14 = [(NSArray *)v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v22;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v22 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [*(*(&v21 + 1) + 8 * j) dictionaryRepresentation];
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

        v15 = [(NSArray *)v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v15);
    }

    [v3 setObject:v12 forKeyedSubscript:@"candidateTimeIntervalMatrix"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v21];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(JRSchemaIntervalUntilStartTime *)self candidateBooleanMasks];
  v6 = [v4 candidateBooleanMasks];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(JRSchemaIntervalUntilStartTime *)self candidateBooleanMasks];
  if (v7)
  {
    v8 = v7;
    v9 = [(JRSchemaIntervalUntilStartTime *)self candidateBooleanMasks];
    v10 = [v4 candidateBooleanMasks];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(JRSchemaIntervalUntilStartTime *)self candidateTimeIntervalMatrixs];
  v6 = [v4 candidateTimeIntervalMatrixs];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(JRSchemaIntervalUntilStartTime *)self candidateTimeIntervalMatrixs];
    if (!v12)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(JRSchemaIntervalUntilStartTime *)self candidateTimeIntervalMatrixs];
    v15 = [v4 candidateTimeIntervalMatrixs];
    v16 = [v14 isEqual:v15];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = self->_candidateBooleanMasks;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v7);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = self->_candidateTimeIntervalMatrixs;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        PBDataWriterWriteSubmessage();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }
}

- (void)addCandidateTimeIntervalMatrix:(id)a3
{
  v4 = a3;
  candidateTimeIntervalMatrixs = self->_candidateTimeIntervalMatrixs;
  v8 = v4;
  if (!candidateTimeIntervalMatrixs)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_candidateTimeIntervalMatrixs;
    self->_candidateTimeIntervalMatrixs = v6;

    v4 = v8;
    candidateTimeIntervalMatrixs = self->_candidateTimeIntervalMatrixs;
  }

  [(NSArray *)candidateTimeIntervalMatrixs addObject:v4];
}

- (void)addCandidateBooleanMask:(id)a3
{
  v4 = a3;
  candidateBooleanMasks = self->_candidateBooleanMasks;
  v8 = v4;
  if (!candidateBooleanMasks)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_candidateBooleanMasks;
    self->_candidateBooleanMasks = v6;

    v4 = v8;
    candidateBooleanMasks = self->_candidateBooleanMasks;
  }

  [(NSArray *)candidateBooleanMasks addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v11.receiver = self;
  v11.super_class = JRSchemaIntervalUntilStartTime;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v11 applySensitiveConditionsPolicy:v4];
  v6 = [(JRSchemaIntervalUntilStartTime *)self candidateBooleanMasks:v11.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:v4];
  [(JRSchemaIntervalUntilStartTime *)self setCandidateBooleanMasks:v7];

  v8 = [(JRSchemaIntervalUntilStartTime *)self candidateTimeIntervalMatrixs];
  v9 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v8 underConditions:v4];

  [(JRSchemaIntervalUntilStartTime *)self setCandidateTimeIntervalMatrixs:v9];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end