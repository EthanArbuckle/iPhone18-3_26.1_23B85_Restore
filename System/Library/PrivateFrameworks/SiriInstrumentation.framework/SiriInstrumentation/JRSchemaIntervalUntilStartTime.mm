@interface JRSchemaIntervalUntilStartTime
- (BOOL)isEqual:(id)equal;
- (JRSchemaIntervalUntilStartTime)initWithDictionary:(id)dictionary;
- (JRSchemaIntervalUntilStartTime)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)addCandidateBooleanMask:(id)mask;
- (void)addCandidateTimeIntervalMatrix:(id)matrix;
- (void)writeTo:(id)to;
@end

@implementation JRSchemaIntervalUntilStartTime

- (JRSchemaIntervalUntilStartTime)initWithDictionary:(id)dictionary
{
  v36 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v33.receiver = self;
  v33.super_class = JRSchemaIntervalUntilStartTime;
  v5 = [(JRSchemaIntervalUntilStartTime *)&v33 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"candidateBooleanMask"];
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

    v14 = [dictionaryCopy objectForKeyedSubscript:@"candidateTimeIntervalMatrix"];
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

- (JRSchemaIntervalUntilStartTime)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(JRSchemaIntervalUntilStartTime *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(JRSchemaIntervalUntilStartTime *)self dictionaryRepresentation];
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
  v31 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_candidateBooleanMasks count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation = [*(*(&v25 + 1) + 8 * i) dictionaryRepresentation];
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

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"candidateBooleanMask"];
  }

  if ([(NSArray *)self->_candidateTimeIntervalMatrixs count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation2 = [*(*(&v21 + 1) + 8 * j) dictionaryRepresentation];
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

        v15 = [(NSArray *)v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v15);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"candidateTimeIntervalMatrix"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v21];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  candidateBooleanMasks = [(JRSchemaIntervalUntilStartTime *)self candidateBooleanMasks];
  candidateBooleanMasks2 = [equalCopy candidateBooleanMasks];
  if ((candidateBooleanMasks != 0) == (candidateBooleanMasks2 == 0))
  {
    goto LABEL_11;
  }

  candidateBooleanMasks3 = [(JRSchemaIntervalUntilStartTime *)self candidateBooleanMasks];
  if (candidateBooleanMasks3)
  {
    v8 = candidateBooleanMasks3;
    candidateBooleanMasks4 = [(JRSchemaIntervalUntilStartTime *)self candidateBooleanMasks];
    candidateBooleanMasks5 = [equalCopy candidateBooleanMasks];
    v11 = [candidateBooleanMasks4 isEqual:candidateBooleanMasks5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  candidateBooleanMasks = [(JRSchemaIntervalUntilStartTime *)self candidateTimeIntervalMatrixs];
  candidateBooleanMasks2 = [equalCopy candidateTimeIntervalMatrixs];
  if ((candidateBooleanMasks != 0) != (candidateBooleanMasks2 == 0))
  {
    candidateTimeIntervalMatrixs = [(JRSchemaIntervalUntilStartTime *)self candidateTimeIntervalMatrixs];
    if (!candidateTimeIntervalMatrixs)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = candidateTimeIntervalMatrixs;
    candidateTimeIntervalMatrixs2 = [(JRSchemaIntervalUntilStartTime *)self candidateTimeIntervalMatrixs];
    candidateTimeIntervalMatrixs3 = [equalCopy candidateTimeIntervalMatrixs];
    v16 = [candidateTimeIntervalMatrixs2 isEqual:candidateTimeIntervalMatrixs3];

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

- (void)writeTo:(id)to
{
  v25 = *MEMORY[0x1E69E9840];
  toCopy = to;
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

- (void)addCandidateTimeIntervalMatrix:(id)matrix
{
  matrixCopy = matrix;
  candidateTimeIntervalMatrixs = self->_candidateTimeIntervalMatrixs;
  v8 = matrixCopy;
  if (!candidateTimeIntervalMatrixs)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_candidateTimeIntervalMatrixs;
    self->_candidateTimeIntervalMatrixs = array;

    matrixCopy = v8;
    candidateTimeIntervalMatrixs = self->_candidateTimeIntervalMatrixs;
  }

  [(NSArray *)candidateTimeIntervalMatrixs addObject:matrixCopy];
}

- (void)addCandidateBooleanMask:(id)mask
{
  maskCopy = mask;
  candidateBooleanMasks = self->_candidateBooleanMasks;
  v8 = maskCopy;
  if (!candidateBooleanMasks)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_candidateBooleanMasks;
    self->_candidateBooleanMasks = array;

    maskCopy = v8;
    candidateBooleanMasks = self->_candidateBooleanMasks;
  }

  [(NSArray *)candidateBooleanMasks addObject:maskCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v11.receiver = self;
  v11.super_class = JRSchemaIntervalUntilStartTime;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v11 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(JRSchemaIntervalUntilStartTime *)self candidateBooleanMasks:v11.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:policyCopy];
  [(JRSchemaIntervalUntilStartTime *)self setCandidateBooleanMasks:v7];

  candidateTimeIntervalMatrixs = [(JRSchemaIntervalUntilStartTime *)self candidateTimeIntervalMatrixs];
  v9 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:candidateTimeIntervalMatrixs underConditions:policyCopy];

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