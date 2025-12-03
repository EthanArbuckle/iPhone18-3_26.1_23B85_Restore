@interface JRSchemaJRCandidateTimeIntervalMatrix
- (BOOL)isEqual:(id)equal;
- (JRSchemaJRCandidateTimeIntervalMatrix)initWithDictionary:(id)dictionary;
- (JRSchemaJRCandidateTimeIntervalMatrix)initWithJSON:(id)n;
- (NSData)jsonData;
- (float)logOfIntervalUntilStartTimeInSecondsAtIndex:(unint64_t)index;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)addLogOfIntervalUntilStartTimeInSeconds:(float)seconds;
- (void)writeTo:(id)to;
@end

@implementation JRSchemaJRCandidateTimeIntervalMatrix

- (JRSchemaJRCandidateTimeIntervalMatrix)initWithDictionary:(id)dictionary
{
  v21 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v19.receiver = self;
  v19.super_class = JRSchemaJRCandidateTimeIntervalMatrix;
  v5 = [(JRSchemaJRCandidateTimeIntervalMatrix *)&v19 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"logOfIntervalUntilStartTimeInSeconds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v16;
        do
        {
          v11 = 0;
          do
          {
            if (*v16 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v15 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v12 floatValue];
              [(JRSchemaJRCandidateTimeIntervalMatrix *)v5 addLogOfIntervalUntilStartTimeInSeconds:?];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
        }

        while (v9);
      }
    }

    v13 = v5;
  }

  return v5;
}

- (JRSchemaJRCandidateTimeIntervalMatrix)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(JRSchemaJRCandidateTimeIntervalMatrix *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(JRSchemaJRCandidateTimeIntervalMatrix *)self dictionaryRepresentation];
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_logOfIntervalUntilStartTimeInSeconds count])
  {
    logOfIntervalUntilStartTimeInSeconds = [(JRSchemaJRCandidateTimeIntervalMatrix *)self logOfIntervalUntilStartTimeInSeconds];
    v5 = [logOfIntervalUntilStartTimeInSeconds copy];
    [dictionary setObject:v5 forKeyedSubscript:@"logOfIntervalUntilStartTimeInSeconds"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    logOfIntervalUntilStartTimeInSeconds = [(JRSchemaJRCandidateTimeIntervalMatrix *)self logOfIntervalUntilStartTimeInSeconds];
    logOfIntervalUntilStartTimeInSeconds2 = [equalCopy logOfIntervalUntilStartTimeInSeconds];
    v7 = logOfIntervalUntilStartTimeInSeconds2;
    if ((logOfIntervalUntilStartTimeInSeconds != 0) != (logOfIntervalUntilStartTimeInSeconds2 == 0))
    {
      logOfIntervalUntilStartTimeInSeconds3 = [(JRSchemaJRCandidateTimeIntervalMatrix *)self logOfIntervalUntilStartTimeInSeconds];
      if (!logOfIntervalUntilStartTimeInSeconds3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = logOfIntervalUntilStartTimeInSeconds3;
      logOfIntervalUntilStartTimeInSeconds4 = [(JRSchemaJRCandidateTimeIntervalMatrix *)self logOfIntervalUntilStartTimeInSeconds];
      logOfIntervalUntilStartTimeInSeconds5 = [equalCopy logOfIntervalUntilStartTimeInSeconds];
      v12 = [logOfIntervalUntilStartTimeInSeconds4 isEqual:logOfIntervalUntilStartTimeInSeconds5];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_logOfIntervalUntilStartTimeInSeconds;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9) floatValue];
        PBDataWriterWriteFloatField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (float)logOfIntervalUntilStartTimeInSecondsAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_logOfIntervalUntilStartTimeInSeconds objectAtIndexedSubscript:index];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (void)addLogOfIntervalUntilStartTimeInSeconds:(float)seconds
{
  logOfIntervalUntilStartTimeInSeconds = self->_logOfIntervalUntilStartTimeInSeconds;
  if (!logOfIntervalUntilStartTimeInSeconds)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_logOfIntervalUntilStartTimeInSeconds;
    self->_logOfIntervalUntilStartTimeInSeconds = array;

    logOfIntervalUntilStartTimeInSeconds = self->_logOfIntervalUntilStartTimeInSeconds;
  }

  *&v8 = seconds;
  v9 = [MEMORY[0x1E696AD98] numberWithFloat:v8];
  [(NSArray *)logOfIntervalUntilStartTimeInSeconds addObject:v9];
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end