@interface USPSchemaUSPLoggingReported
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (USPSchemaUSPLoggingReported)initWithDictionary:(id)dictionary;
- (USPSchemaUSPLoggingReported)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)addMetrics:(id)metrics;
- (void)addSessionInfoItems:(id)items;
- (void)writeTo:(id)to;
@end

@implementation USPSchemaUSPLoggingReported

- (USPSchemaUSPLoggingReported)initWithDictionary:(id)dictionary
{
  v36 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v33.receiver = self;
  v33.super_class = USPSchemaUSPLoggingReported;
  v5 = [(USPSchemaUSPLoggingReported *)&v33 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"metrics"];
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
              v13 = [[USPSchemaUSPMetric alloc] initWithDictionary:v12];
              [(USPSchemaUSPLoggingReported *)v5 addMetrics:v13];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v29 objects:v35 count:16];
        }

        while (v9);
      }
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"sessionInfoItems"];
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
              v21 = [[USPSchemaUSPSessionInfoItem alloc] initWithDictionary:v20];
              [(USPSchemaUSPLoggingReported *)v5 addSessionInfoItems:v21];
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

- (USPSchemaUSPLoggingReported)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(USPSchemaUSPLoggingReported *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(USPSchemaUSPLoggingReported *)self dictionaryRepresentation];
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
  if ([(NSArray *)self->_metrics count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v5 = self->_metrics;
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

    [dictionary setObject:array forKeyedSubscript:@"metrics"];
  }

  if ([(NSArray *)self->_sessionInfoItems count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v13 = self->_sessionInfoItems;
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

    [dictionary setObject:array2 forKeyedSubscript:@"sessionInfoItems"];
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

  metrics = [(USPSchemaUSPLoggingReported *)self metrics];
  metrics2 = [equalCopy metrics];
  if ((metrics != 0) == (metrics2 == 0))
  {
    goto LABEL_11;
  }

  metrics3 = [(USPSchemaUSPLoggingReported *)self metrics];
  if (metrics3)
  {
    v8 = metrics3;
    metrics4 = [(USPSchemaUSPLoggingReported *)self metrics];
    metrics5 = [equalCopy metrics];
    v11 = [metrics4 isEqual:metrics5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  metrics = [(USPSchemaUSPLoggingReported *)self sessionInfoItems];
  metrics2 = [equalCopy sessionInfoItems];
  if ((metrics != 0) != (metrics2 == 0))
  {
    sessionInfoItems = [(USPSchemaUSPLoggingReported *)self sessionInfoItems];
    if (!sessionInfoItems)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = sessionInfoItems;
    sessionInfoItems2 = [(USPSchemaUSPLoggingReported *)self sessionInfoItems];
    sessionInfoItems3 = [equalCopy sessionInfoItems];
    v16 = [sessionInfoItems2 isEqual:sessionInfoItems3];

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
  v5 = self->_metrics;
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
  v10 = self->_sessionInfoItems;
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

- (void)addSessionInfoItems:(id)items
{
  itemsCopy = items;
  sessionInfoItems = self->_sessionInfoItems;
  v8 = itemsCopy;
  if (!sessionInfoItems)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_sessionInfoItems;
    self->_sessionInfoItems = array;

    itemsCopy = v8;
    sessionInfoItems = self->_sessionInfoItems;
  }

  [(NSArray *)sessionInfoItems addObject:itemsCopy];
}

- (void)addMetrics:(id)metrics
{
  metricsCopy = metrics;
  metrics = self->_metrics;
  v8 = metricsCopy;
  if (!metrics)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_metrics;
    self->_metrics = array;

    metricsCopy = v8;
    metrics = self->_metrics;
  }

  [(NSArray *)metrics addObject:metricsCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v11.receiver = self;
  v11.super_class = USPSchemaUSPLoggingReported;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v11 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(USPSchemaUSPLoggingReported *)self metrics:v11.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:policyCopy];
  [(USPSchemaUSPLoggingReported *)self setMetrics:v7];

  sessionInfoItems = [(USPSchemaUSPLoggingReported *)self sessionInfoItems];
  v9 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:sessionInfoItems underConditions:policyCopy];

  [(USPSchemaUSPLoggingReported *)self setSessionInfoItems:v9];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end