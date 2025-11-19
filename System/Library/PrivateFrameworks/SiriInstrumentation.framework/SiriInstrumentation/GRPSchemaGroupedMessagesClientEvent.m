@interface GRPSchemaGroupedMessagesClientEvent
- (BOOL)isEqual:(id)a3;
- (GRPSchemaGroupedMessagesClientEvent)initWithDictionary:(id)a3;
- (GRPSchemaGroupedMessagesClientEvent)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addOrderedMessages:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation GRPSchemaGroupedMessagesClientEvent

- (GRPSchemaGroupedMessagesClientEvent)initWithDictionary:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v25.receiver = self;
  v25.super_class = GRPSchemaGroupedMessagesClientEvent;
  v5 = [(GRPSchemaGroupedMessagesClientEvent *)&v25 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"groupedBy"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[GRPSchemaGroupedMessagesGrouping alloc] initWithDictionary:v6];
      [(GRPSchemaGroupedMessagesClientEvent *)v5 setGroupedBy:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"producerMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[GRPSchemaProducerMetadata alloc] initWithDictionary:v8];
      [(GRPSchemaGroupedMessagesClientEvent *)v5 setProducerMetadata:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"orderedMessages"];
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

- (GRPSchemaGroupedMessagesClientEvent)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(GRPSchemaGroupedMessagesClientEvent *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(GRPSchemaGroupedMessagesClientEvent *)self dictionaryRepresentation];
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
  v24 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_groupedBy)
  {
    v4 = [(GRPSchemaGroupedMessagesClientEvent *)self groupedBy];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"groupedBy"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"groupedBy"];
    }
  }

  if ([(NSArray *)self->_orderedMessages count])
  {
    v7 = [MEMORY[0x1E695DF70] array];
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

          v13 = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          if (v13)
          {
            [v7 addObject:v13];
          }

          else
          {
            v14 = [MEMORY[0x1E695DFB0] null];
            [v7 addObject:v14];
          }
        }

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    [v3 setObject:v7 forKeyedSubscript:@"orderedMessages"];
  }

  if (self->_producerMetadata)
  {
    v15 = [(GRPSchemaGroupedMessagesClientEvent *)self producerMetadata];
    v16 = [v15 dictionaryRepresentation];
    if (v16)
    {
      [v3 setObject:v16 forKeyedSubscript:@"producerMetadata"];
    }

    else
    {
      v17 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v17 forKeyedSubscript:@"producerMetadata"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v19];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(GRPSchemaGroupedMessagesGrouping *)self->_groupedBy hash];
  v4 = [(GRPSchemaProducerMetadata *)self->_producerMetadata hash]^ v3;
  return v4 ^ [(NSArray *)self->_orderedMessages hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(GRPSchemaGroupedMessagesClientEvent *)self groupedBy];
  v6 = [v4 groupedBy];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(GRPSchemaGroupedMessagesClientEvent *)self groupedBy];
  if (v7)
  {
    v8 = v7;
    v9 = [(GRPSchemaGroupedMessagesClientEvent *)self groupedBy];
    v10 = [v4 groupedBy];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(GRPSchemaGroupedMessagesClientEvent *)self producerMetadata];
  v6 = [v4 producerMetadata];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(GRPSchemaGroupedMessagesClientEvent *)self producerMetadata];
  if (v12)
  {
    v13 = v12;
    v14 = [(GRPSchemaGroupedMessagesClientEvent *)self producerMetadata];
    v15 = [v4 producerMetadata];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(GRPSchemaGroupedMessagesClientEvent *)self orderedMessages];
  v6 = [v4 orderedMessages];
  if ((v5 != 0) != (v6 == 0))
  {
    v17 = [(GRPSchemaGroupedMessagesClientEvent *)self orderedMessages];
    if (!v17)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(GRPSchemaGroupedMessagesClientEvent *)self orderedMessages];
    v20 = [v4 orderedMessages];
    v21 = [v19 isEqual:v20];

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

- (void)writeTo:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(GRPSchemaGroupedMessagesClientEvent *)self groupedBy];

  if (v5)
  {
    v6 = [(GRPSchemaGroupedMessagesClientEvent *)self groupedBy];
    PBDataWriterWriteSubmessage();
  }

  v7 = [(GRPSchemaGroupedMessagesClientEvent *)self producerMetadata];

  if (v7)
  {
    v8 = [(GRPSchemaGroupedMessagesClientEvent *)self producerMetadata];
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

- (void)addOrderedMessages:(id)a3
{
  v4 = a3;
  orderedMessages = self->_orderedMessages;
  v8 = v4;
  if (!orderedMessages)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_orderedMessages;
    self->_orderedMessages = v6;

    v4 = v8;
    orderedMessages = self->_orderedMessages;
  }

  [(NSArray *)orderedMessages addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = GRPSchemaGroupedMessagesClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v15 applySensitiveConditionsPolicy:v4];
  v6 = [(GRPSchemaGroupedMessagesClientEvent *)self groupedBy];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(GRPSchemaGroupedMessagesClientEvent *)self deleteGroupedBy];
  }

  v9 = [(GRPSchemaGroupedMessagesClientEvent *)self producerMetadata];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(GRPSchemaGroupedMessagesClientEvent *)self deleteProducerMetadata];
  }

  v12 = [(GRPSchemaGroupedMessagesClientEvent *)self orderedMessages];
  v13 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v12 underConditions:v4];
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