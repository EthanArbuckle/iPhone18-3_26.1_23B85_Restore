@interface GRPSchemaGroupedMessagesClientEvent
- (BOOL)isEqual:(id)equal;
- (GRPSchemaGroupedMessagesClientEvent)initWithDictionary:(id)dictionary;
- (GRPSchemaGroupedMessagesClientEvent)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addOrderedMessages:(id)messages;
- (void)writeTo:(id)to;
@end

@implementation GRPSchemaGroupedMessagesClientEvent

- (GRPSchemaGroupedMessagesClientEvent)initWithDictionary:(id)dictionary
{
  v27 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v25.receiver = self;
  v25.super_class = GRPSchemaGroupedMessagesClientEvent;
  v5 = [(GRPSchemaGroupedMessagesClientEvent *)&v25 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"groupedBy"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[GRPSchemaGroupedMessagesGrouping alloc] initWithDictionary:v6];
      [(GRPSchemaGroupedMessagesClientEvent *)v5 setGroupedBy:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"producerMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[GRPSchemaProducerMetadata alloc] initWithDictionary:v8];
      [(GRPSchemaGroupedMessagesClientEvent *)v5 setProducerMetadata:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"orderedMessages"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = v8;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v22;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v22 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v21 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v17 = [[GRPSchemaOrderedMessage alloc] initWithDictionary:v16];
              [(GRPSchemaGroupedMessagesClientEvent *)v5 addOrderedMessages:v17];
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v21 objects:v26 count:16];
        }

        while (v13);
      }

      v8 = v20;
    }

    v18 = v5;
  }

  return v5;
}

- (GRPSchemaGroupedMessagesClientEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(GRPSchemaGroupedMessagesClientEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(GRPSchemaGroupedMessagesClientEvent *)self dictionaryRepresentation];
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
  v24 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_groupedBy)
  {
    groupedBy = [(GRPSchemaGroupedMessagesClientEvent *)self groupedBy];
    dictionaryRepresentation = [groupedBy dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"groupedBy"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"groupedBy"];
    }
  }

  if ([(NSArray *)self->_orderedMessages count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = self->_orderedMessages;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          dictionaryRepresentation2 = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation2)
          {
            [array addObject:dictionaryRepresentation2];
          }

          else
          {
            null2 = [MEMORY[0x1E695DFB0] null];
            [array addObject:null2];
          }
        }

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    [dictionary setObject:array forKeyedSubscript:@"orderedMessages"];
  }

  if (self->_producerMetadata)
  {
    producerMetadata = [(GRPSchemaGroupedMessagesClientEvent *)self producerMetadata];
    dictionaryRepresentation3 = [producerMetadata dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"producerMetadata"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"producerMetadata"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v19];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(GRPSchemaGroupedMessagesGrouping *)self->_groupedBy hash];
  v4 = [(GRPSchemaProducerMetadata *)self->_producerMetadata hash]^ v3;
  return v4 ^ [(NSArray *)self->_orderedMessages hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  groupedBy = [(GRPSchemaGroupedMessagesClientEvent *)self groupedBy];
  groupedBy2 = [equalCopy groupedBy];
  if ((groupedBy != 0) == (groupedBy2 == 0))
  {
    goto LABEL_16;
  }

  groupedBy3 = [(GRPSchemaGroupedMessagesClientEvent *)self groupedBy];
  if (groupedBy3)
  {
    v8 = groupedBy3;
    groupedBy4 = [(GRPSchemaGroupedMessagesClientEvent *)self groupedBy];
    groupedBy5 = [equalCopy groupedBy];
    v11 = [groupedBy4 isEqual:groupedBy5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  groupedBy = [(GRPSchemaGroupedMessagesClientEvent *)self producerMetadata];
  groupedBy2 = [equalCopy producerMetadata];
  if ((groupedBy != 0) == (groupedBy2 == 0))
  {
    goto LABEL_16;
  }

  producerMetadata = [(GRPSchemaGroupedMessagesClientEvent *)self producerMetadata];
  if (producerMetadata)
  {
    v13 = producerMetadata;
    producerMetadata2 = [(GRPSchemaGroupedMessagesClientEvent *)self producerMetadata];
    producerMetadata3 = [equalCopy producerMetadata];
    v16 = [producerMetadata2 isEqual:producerMetadata3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  groupedBy = [(GRPSchemaGroupedMessagesClientEvent *)self orderedMessages];
  groupedBy2 = [equalCopy orderedMessages];
  if ((groupedBy != 0) != (groupedBy2 == 0))
  {
    orderedMessages = [(GRPSchemaGroupedMessagesClientEvent *)self orderedMessages];
    if (!orderedMessages)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = orderedMessages;
    orderedMessages2 = [(GRPSchemaGroupedMessagesClientEvent *)self orderedMessages];
    orderedMessages3 = [equalCopy orderedMessages];
    v21 = [orderedMessages2 isEqual:orderedMessages3];

    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_16:
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (void)writeTo:(id)to
{
  v19 = *MEMORY[0x1E69E9840];
  toCopy = to;
  groupedBy = [(GRPSchemaGroupedMessagesClientEvent *)self groupedBy];

  if (groupedBy)
  {
    groupedBy2 = [(GRPSchemaGroupedMessagesClientEvent *)self groupedBy];
    PBDataWriterWriteSubmessage();
  }

  producerMetadata = [(GRPSchemaGroupedMessagesClientEvent *)self producerMetadata];

  if (producerMetadata)
  {
    producerMetadata2 = [(GRPSchemaGroupedMessagesClientEvent *)self producerMetadata];
    PBDataWriterWriteSubmessage();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = self->_orderedMessages;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        PBDataWriterWriteSubmessage();
        ++v13;
      }

      while (v11 != v13);
      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (void)addOrderedMessages:(id)messages
{
  messagesCopy = messages;
  orderedMessages = self->_orderedMessages;
  v8 = messagesCopy;
  if (!orderedMessages)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_orderedMessages;
    self->_orderedMessages = array;

    messagesCopy = v8;
    orderedMessages = self->_orderedMessages;
  }

  [(NSArray *)orderedMessages addObject:messagesCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v15.receiver = self;
  v15.super_class = GRPSchemaGroupedMessagesClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v15 applySensitiveConditionsPolicy:policyCopy];
  groupedBy = [(GRPSchemaGroupedMessagesClientEvent *)self groupedBy];
  v7 = [groupedBy applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(GRPSchemaGroupedMessagesClientEvent *)self deleteGroupedBy];
  }

  producerMetadata = [(GRPSchemaGroupedMessagesClientEvent *)self producerMetadata];
  v10 = [producerMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(GRPSchemaGroupedMessagesClientEvent *)self deleteProducerMetadata];
  }

  orderedMessages = [(GRPSchemaGroupedMessagesClientEvent *)self orderedMessages];
  v13 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:orderedMessages underConditions:policyCopy];
  [(GRPSchemaGroupedMessagesClientEvent *)self setOrderedMessages:v13];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end