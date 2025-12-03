@interface GRPSchemaGroupedMessagesServerEvent
- (BOOL)isEqual:(id)equal;
- (GRPSchemaGroupedMessagesServerEvent)initWithDictionary:(id)dictionary;
- (GRPSchemaGroupedMessagesServerEvent)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)addAnyEvents:(id)events;
- (void)addOrderedAnyEvents:(id)events;
- (void)writeTo:(id)to;
@end

@implementation GRPSchemaGroupedMessagesServerEvent

- (GRPSchemaGroupedMessagesServerEvent)initWithDictionary:(id)dictionary
{
  v36 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v33.receiver = self;
  v33.super_class = GRPSchemaGroupedMessagesServerEvent;
  v5 = [(GRPSchemaGroupedMessagesServerEvent *)&v33 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"anyEvents"];
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
              v13 = [[SISchemaAnyEvent alloc] initWithDictionary:v12];
              [(GRPSchemaGroupedMessagesServerEvent *)v5 addAnyEvents:v13];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v29 objects:v35 count:16];
        }

        while (v9);
      }
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"orderedAnyEvents"];
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
              v21 = [[SISchemaOrderedAnyEvent alloc] initWithDictionary:v20];
              [(GRPSchemaGroupedMessagesServerEvent *)v5 addOrderedAnyEvents:v21];
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

- (GRPSchemaGroupedMessagesServerEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(GRPSchemaGroupedMessagesServerEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(GRPSchemaGroupedMessagesServerEvent *)self dictionaryRepresentation];
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
  if ([(NSArray *)self->_anyEvents count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v5 = self->_anyEvents;
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

    [dictionary setObject:array forKeyedSubscript:@"anyEvents"];
  }

  if ([(NSArray *)self->_orderedAnyEvents count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v13 = self->_orderedAnyEvents;
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

    [dictionary setObject:array2 forKeyedSubscript:@"orderedAnyEvents"];
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

  anyEvents = [(GRPSchemaGroupedMessagesServerEvent *)self anyEvents];
  anyEvents2 = [equalCopy anyEvents];
  if ((anyEvents != 0) == (anyEvents2 == 0))
  {
    goto LABEL_11;
  }

  anyEvents3 = [(GRPSchemaGroupedMessagesServerEvent *)self anyEvents];
  if (anyEvents3)
  {
    v8 = anyEvents3;
    anyEvents4 = [(GRPSchemaGroupedMessagesServerEvent *)self anyEvents];
    anyEvents5 = [equalCopy anyEvents];
    v11 = [anyEvents4 isEqual:anyEvents5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  anyEvents = [(GRPSchemaGroupedMessagesServerEvent *)self orderedAnyEvents];
  anyEvents2 = [equalCopy orderedAnyEvents];
  if ((anyEvents != 0) != (anyEvents2 == 0))
  {
    orderedAnyEvents = [(GRPSchemaGroupedMessagesServerEvent *)self orderedAnyEvents];
    if (!orderedAnyEvents)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = orderedAnyEvents;
    orderedAnyEvents2 = [(GRPSchemaGroupedMessagesServerEvent *)self orderedAnyEvents];
    orderedAnyEvents3 = [equalCopy orderedAnyEvents];
    v16 = [orderedAnyEvents2 isEqual:orderedAnyEvents3];

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
  v5 = self->_anyEvents;
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
  v10 = self->_orderedAnyEvents;
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

- (void)addOrderedAnyEvents:(id)events
{
  eventsCopy = events;
  orderedAnyEvents = self->_orderedAnyEvents;
  v8 = eventsCopy;
  if (!orderedAnyEvents)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_orderedAnyEvents;
    self->_orderedAnyEvents = array;

    eventsCopy = v8;
    orderedAnyEvents = self->_orderedAnyEvents;
  }

  [(NSArray *)orderedAnyEvents addObject:eventsCopy];
}

- (void)addAnyEvents:(id)events
{
  eventsCopy = events;
  anyEvents = self->_anyEvents;
  v8 = eventsCopy;
  if (!anyEvents)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_anyEvents;
    self->_anyEvents = array;

    eventsCopy = v8;
    anyEvents = self->_anyEvents;
  }

  [(NSArray *)anyEvents addObject:eventsCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v11.receiver = self;
  v11.super_class = GRPSchemaGroupedMessagesServerEvent;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v11 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(GRPSchemaGroupedMessagesServerEvent *)self anyEvents:v11.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:policyCopy];
  [(GRPSchemaGroupedMessagesServerEvent *)self setAnyEvents:v7];

  orderedAnyEvents = [(GRPSchemaGroupedMessagesServerEvent *)self orderedAnyEvents];
  v9 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:orderedAnyEvents underConditions:policyCopy];

  [(GRPSchemaGroupedMessagesServerEvent *)self setOrderedAnyEvents:v9];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end