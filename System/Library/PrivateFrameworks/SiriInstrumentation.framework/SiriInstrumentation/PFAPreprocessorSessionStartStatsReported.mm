@interface PFAPreprocessorSessionStartStatsReported
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PFAPreprocessorSessionStartStatsReported)initWithDictionary:(id)dictionary;
- (PFAPreprocessorSessionStartStatsReported)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addAnyEventTypeStatistics:(id)statistics;
- (void)writeTo:(id)to;
@end

@implementation PFAPreprocessorSessionStartStatsReported

- (PFAPreprocessorSessionStartStatsReported)initWithDictionary:(id)dictionary
{
  v26 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v24.receiver = self;
  v24.super_class = PFAPreprocessorSessionStartStatsReported;
  v5 = [(PFAPreprocessorSessionStartStatsReported *)&v24 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"clockIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PFAPreprocessorSessionStartStatsReported *)v5 setClockIdentifier:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"messageCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PFAPreprocessorSessionStartStatsReported setMessageCount:](v5, "setMessageCount:", [v8 unsignedIntValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"anyEventTypeStatistics"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v8;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v10 = v9;
      v11 = [v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v21;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v21 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v20 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v16 = [[PFAAnyEventTypeStatistics alloc] initWithDictionary:v15];
              [(PFAPreprocessorSessionStartStatsReported *)v5 addAnyEventTypeStatistics:v16];
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
        }

        while (v12);
      }

      v8 = v19;
    }

    v17 = v5;
  }

  return v5;
}

- (PFAPreprocessorSessionStartStatsReported)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PFAPreprocessorSessionStartStatsReported *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PFAPreprocessorSessionStartStatsReported *)self dictionaryRepresentation];
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
  v22 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_anyEventTypeStatistics count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = self->_anyEventTypeStatistics;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v17 + 1) + 8 * i) dictionaryRepresentation];
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

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"anyEventTypeStatistics"];
  }

  if (self->_clockIdentifier)
  {
    clockIdentifier = [(PFAPreprocessorSessionStartStatsReported *)self clockIdentifier];
    dictionaryRepresentation2 = [clockIdentifier dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"clockIdentifier"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"clockIdentifier"];
    }
  }

  if (*&self->_has)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PFAPreprocessorSessionStartStatsReported messageCount](self, "messageCount")}];
    [dictionary setObject:v15 forKeyedSubscript:@"messageCount"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v17];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_clockIdentifier hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_messageCount;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3 ^ [(NSArray *)self->_anyEventTypeStatistics hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  clockIdentifier = [(PFAPreprocessorSessionStartStatsReported *)self clockIdentifier];
  clockIdentifier2 = [equalCopy clockIdentifier];
  if ((clockIdentifier != 0) == (clockIdentifier2 == 0))
  {
    goto LABEL_14;
  }

  clockIdentifier3 = [(PFAPreprocessorSessionStartStatsReported *)self clockIdentifier];
  if (clockIdentifier3)
  {
    v8 = clockIdentifier3;
    clockIdentifier4 = [(PFAPreprocessorSessionStartStatsReported *)self clockIdentifier];
    clockIdentifier5 = [equalCopy clockIdentifier];
    v11 = [clockIdentifier4 isEqual:clockIdentifier5];

    if (!v11)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[32] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    messageCount = self->_messageCount;
    if (messageCount != [equalCopy messageCount])
    {
      goto LABEL_15;
    }
  }

  clockIdentifier = [(PFAPreprocessorSessionStartStatsReported *)self anyEventTypeStatistics];
  clockIdentifier2 = [equalCopy anyEventTypeStatistics];
  if ((clockIdentifier != 0) != (clockIdentifier2 == 0))
  {
    anyEventTypeStatistics = [(PFAPreprocessorSessionStartStatsReported *)self anyEventTypeStatistics];
    if (!anyEventTypeStatistics)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = anyEventTypeStatistics;
    anyEventTypeStatistics2 = [(PFAPreprocessorSessionStartStatsReported *)self anyEventTypeStatistics];
    anyEventTypeStatistics3 = [equalCopy anyEventTypeStatistics];
    v17 = [anyEventTypeStatistics2 isEqual:anyEventTypeStatistics3];

    if (v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
LABEL_14:
  }

LABEL_15:
  v18 = 0;
LABEL_16:

  return v18;
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x1E69E9840];
  toCopy = to;
  clockIdentifier = [(PFAPreprocessorSessionStartStatsReported *)self clockIdentifier];

  if (clockIdentifier)
  {
    clockIdentifier2 = [(PFAPreprocessorSessionStartStatsReported *)self clockIdentifier];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = self->_anyEventTypeStatistics;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        PBDataWriterWriteSubmessage();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)addAnyEventTypeStatistics:(id)statistics
{
  statisticsCopy = statistics;
  anyEventTypeStatistics = self->_anyEventTypeStatistics;
  v8 = statisticsCopy;
  if (!anyEventTypeStatistics)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_anyEventTypeStatistics;
    self->_anyEventTypeStatistics = array;

    statisticsCopy = v8;
    anyEventTypeStatistics = self->_anyEventTypeStatistics;
  }

  [(NSArray *)anyEventTypeStatistics addObject:statisticsCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v12.receiver = self;
  v12.super_class = PFAPreprocessorSessionStartStatsReported;
  v5 = [(SISchemaInstrumentationMessage *)&v12 applySensitiveConditionsPolicy:policyCopy];
  clockIdentifier = [(PFAPreprocessorSessionStartStatsReported *)self clockIdentifier];
  v7 = [clockIdentifier applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(PFAPreprocessorSessionStartStatsReported *)self deleteClockIdentifier];
  }

  anyEventTypeStatistics = [(PFAPreprocessorSessionStartStatsReported *)self anyEventTypeStatistics];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:anyEventTypeStatistics underConditions:policyCopy];
  [(PFAPreprocessorSessionStartStatsReported *)self setAnyEventTypeStatistics:v10];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end