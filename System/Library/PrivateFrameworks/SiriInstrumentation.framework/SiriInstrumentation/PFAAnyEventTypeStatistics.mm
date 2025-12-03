@interface PFAAnyEventTypeStatistics
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PFAAnyEventTypeStatistics)initWithDictionary:(id)dictionary;
- (PFAAnyEventTypeStatistics)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addEventStatistics:(id)statistics;
- (void)setHasMessageCount:(BOOL)count;
- (void)writeTo:(id)to;
@end

@implementation PFAAnyEventTypeStatistics

- (PFAAnyEventTypeStatistics)initWithDictionary:(id)dictionary
{
  v26 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v24.receiver = self;
  v24.super_class = PFAAnyEventTypeStatistics;
  v5 = [(PFAAnyEventTypeStatistics *)&v24 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"anyEventType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PFAAnyEventTypeStatistics setAnyEventType:](v5, "setAnyEventType:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"messageCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PFAAnyEventTypeStatistics setMessageCount:](v5, "setMessageCount:", [v7 unsignedIntValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"eventStatistics"];
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
              v15 = [[PFAEventStatistics alloc] initWithDictionary:v14];
              [(PFAAnyEventTypeStatistics *)v5 addEventStatistics:v15];
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

- (PFAAnyEventTypeStatistics)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PFAAnyEventTypeStatistics *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PFAAnyEventTypeStatistics *)self dictionaryRepresentation];
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
  v21 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [(PFAAnyEventTypeStatistics *)self anyEventType]- 1;
    if (v4 > 0x70)
    {
      v5 = @"UNKNOWN_EVENT";
    }

    else
    {
      v5 = off_1E78DFE70[v4];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"anyEventType"];
  }

  if ([(NSArray *)self->_eventStatistics count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = self->_eventStatistics;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation = [*(*(&v16 + 1) + 8 * i) dictionaryRepresentation];
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

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    [dictionary setObject:array forKeyedSubscript:@"eventStatistics"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PFAAnyEventTypeStatistics messageCount](self, "messageCount")}];
    [dictionary setObject:v14 forKeyedSubscript:@"messageCount"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_anyEventType;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    return v7 ^ v6 ^ [(NSArray *)self->_eventStatistics hash:v3];
  }

  v6 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = 2654435761 * self->_messageCount;
  return v7 ^ v6 ^ [(NSArray *)self->_eventStatistics hash:v3];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  has = self->_has;
  v6 = equalCopy[24];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_14;
  }

  if (*&has)
  {
    anyEventType = self->_anyEventType;
    if (anyEventType != [equalCopy anyEventType])
    {
      goto LABEL_14;
    }

    has = self->_has;
    v6 = equalCopy[24];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (!v8 || (messageCount = self->_messageCount, messageCount == [equalCopy messageCount]))
    {
      eventStatistics = [(PFAAnyEventTypeStatistics *)self eventStatistics];
      eventStatistics2 = [equalCopy eventStatistics];
      v12 = eventStatistics2;
      if ((eventStatistics != 0) != (eventStatistics2 == 0))
      {
        eventStatistics3 = [(PFAAnyEventTypeStatistics *)self eventStatistics];
        if (!eventStatistics3)
        {

LABEL_17:
          v18 = 1;
          goto LABEL_15;
        }

        v14 = eventStatistics3;
        eventStatistics4 = [(PFAAnyEventTypeStatistics *)self eventStatistics];
        eventStatistics5 = [equalCopy eventStatistics];
        v17 = [eventStatistics4 isEqual:eventStatistics5];

        if (v17)
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
  v18 = 0;
LABEL_15:

  return v18;
}

- (void)writeTo:(id)to
{
  v16 = *MEMORY[0x1E69E9840];
  toCopy = to;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_eventStatistics;
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

- (void)addEventStatistics:(id)statistics
{
  statisticsCopy = statistics;
  eventStatistics = self->_eventStatistics;
  v8 = statisticsCopy;
  if (!eventStatistics)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_eventStatistics;
    self->_eventStatistics = array;

    statisticsCopy = v8;
    eventStatistics = self->_eventStatistics;
  }

  [(NSArray *)eventStatistics addObject:statisticsCopy];
}

- (void)setHasMessageCount:(BOOL)count
{
  if (count)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = PFAAnyEventTypeStatistics;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(PFAAnyEventTypeStatistics *)self eventStatistics:v9.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:policyCopy];

  [(PFAAnyEventTypeStatistics *)self setEventStatistics:v7];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end