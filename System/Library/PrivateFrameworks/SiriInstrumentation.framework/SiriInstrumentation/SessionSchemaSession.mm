@interface SessionSchemaSession
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SessionSchemaSession)initWithDictionary:(id)dictionary;
- (SessionSchemaSession)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addEvent:(id)event;
- (void)writeTo:(id)to;
@end

@implementation SessionSchemaSession

- (SessionSchemaSession)initWithDictionary:(id)dictionary
{
  v26 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v24.receiver = self;
  v24.super_class = SessionSchemaSession;
  v5 = [(SessionSchemaSession *)&v24 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"sessionId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SessionSchemaSessionId alloc] initWithDictionary:v6];
      [(SessionSchemaSession *)v5 setSessionId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"event"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
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
              v15 = [[SessionSchemaOrderedSessionEvent alloc] initWithDictionary:v14];
              [(SessionSchemaSession *)v5 addEvent:v15];
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
        }

        while (v11);
      }

      v6 = v19;
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"creationTimestampInMsSince1970"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SessionSchemaSession setCreationTimestampInMsSince1970:](v5, "setCreationTimestampInMsSince1970:", [v16 unsignedLongLongValue]);
    }

    v17 = v5;
  }

  return v5;
}

- (SessionSchemaSession)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SessionSchemaSession *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SessionSchemaSession *)self dictionaryRepresentation];
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
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[SessionSchemaSession creationTimestampInMsSince1970](self, "creationTimestampInMsSince1970")}];
    [dictionary setObject:v4 forKeyedSubscript:@"creationTimestampInMsSince1970"];
  }

  if ([(NSArray *)self->_events count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = self->_events;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
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

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }

    [dictionary setObject:array forKeyedSubscript:@"event"];
  }

  if (self->_sessionId)
  {
    sessionId = [(SessionSchemaSession *)self sessionId];
    dictionaryRepresentation2 = [sessionId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"sessionId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"sessionId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v17];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SessionSchemaSessionId *)self->_sessionId hash];
  v4 = [(NSArray *)self->_events hash];
  if (*&self->_has)
  {
    v5 = 2654435761u * self->_creationTimestampInMsSince1970;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  sessionId = [(SessionSchemaSession *)self sessionId];
  sessionId2 = [equalCopy sessionId];
  if ((sessionId != 0) == (sessionId2 == 0))
  {
    goto LABEL_11;
  }

  sessionId3 = [(SessionSchemaSession *)self sessionId];
  if (sessionId3)
  {
    v8 = sessionId3;
    sessionId4 = [(SessionSchemaSession *)self sessionId];
    sessionId5 = [equalCopy sessionId];
    v11 = [sessionId4 isEqual:sessionId5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  sessionId = [(SessionSchemaSession *)self events];
  sessionId2 = [equalCopy events];
  if ((sessionId != 0) == (sessionId2 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  events = [(SessionSchemaSession *)self events];
  if (events)
  {
    v13 = events;
    events2 = [(SessionSchemaSession *)self events];
    events3 = [equalCopy events];
    v16 = [events2 isEqual:events3];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) == (equalCopy[32] & 1))
  {
    if ((*&self->_has & 1) == 0 || (creationTimestampInMsSince1970 = self->_creationTimestampInMsSince1970, creationTimestampInMsSince1970 == [equalCopy creationTimestampInMsSince1970]))
    {
      v17 = 1;
      goto LABEL_13;
    }
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x1E69E9840];
  toCopy = to;
  sessionId = [(SessionSchemaSession *)self sessionId];

  if (sessionId)
  {
    sessionId2 = [(SessionSchemaSession *)self sessionId];
    PBDataWriterWriteSubmessage();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = self->_events;
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

  if (*&self->_has)
  {
    PBDataWriterWriteUint64Field();
  }
}

- (void)addEvent:(id)event
{
  eventCopy = event;
  events = self->_events;
  v8 = eventCopy;
  if (!events)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_events;
    self->_events = array;

    eventCopy = v8;
    events = self->_events;
  }

  [(NSArray *)events addObject:eventCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v12.receiver = self;
  v12.super_class = SessionSchemaSession;
  v5 = [(SISchemaInstrumentationMessage *)&v12 applySensitiveConditionsPolicy:policyCopy];
  sessionId = [(SessionSchemaSession *)self sessionId];
  v7 = [sessionId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(SessionSchemaSession *)self deleteSessionId];
  }

  events = [(SessionSchemaSession *)self events];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:events underConditions:policyCopy];
  [(SessionSchemaSession *)self setEvents:v10];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end