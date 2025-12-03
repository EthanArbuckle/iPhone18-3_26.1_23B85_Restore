@interface SIServiceInstrumentationBatch
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SIServiceInstrumentationBatch)initWithDictionary:(id)dictionary;
- (SIServiceInstrumentationBatch)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addEvent:(id)event;
- (void)writeTo:(id)to;
@end

@implementation SIServiceInstrumentationBatch

- (SIServiceInstrumentationBatch)initWithDictionary:(id)dictionary
{
  v27 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v25.receiver = self;
  v25.super_class = SIServiceInstrumentationBatch;
  v5 = [(SIServiceInstrumentationBatch *)&v25 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"appId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(SIServiceInstrumentationBatch *)v5 setApp_id:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"batchInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SIServiceBatchInfo alloc] initWithDictionary:v8];
      [(SIServiceInstrumentationBatch *)v5 setBatch_info:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"event"];
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
              v17 = [[SISchemaAnyEvent alloc] initWithDictionary:v16];
              [(SIServiceInstrumentationBatch *)v5 addEvent:v17];
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

- (SIServiceInstrumentationBatch)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SIServiceInstrumentationBatch *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SIServiceInstrumentationBatch *)self dictionaryRepresentation];
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
  v23 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_app_id)
  {
    app_id = [(SIServiceInstrumentationBatch *)self app_id];
    v5 = [app_id copy];
    [dictionary setObject:v5 forKeyedSubscript:@"appId"];
  }

  if (self->_batch_info)
  {
    batch_info = [(SIServiceInstrumentationBatch *)self batch_info];
    dictionaryRepresentation = [batch_info dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"batchInfo"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"batchInfo"];
    }
  }

  if ([(NSArray *)self->_events count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = self->_events;
    v11 = [(NSArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v10);
          }

          dictionaryRepresentation2 = [*(*(&v18 + 1) + 8 * i) dictionaryRepresentation];
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

        v12 = [(NSArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }

    [dictionary setObject:array forKeyedSubscript:@"event"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v18];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_app_id hash];
  v4 = [(SIServiceBatchInfo *)self->_batch_info hash]^ v3;
  return v4 ^ [(NSArray *)self->_events hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  app_id = [(SIServiceInstrumentationBatch *)self app_id];
  app_id2 = [equalCopy app_id];
  if ((app_id != 0) == (app_id2 == 0))
  {
    goto LABEL_16;
  }

  app_id3 = [(SIServiceInstrumentationBatch *)self app_id];
  if (app_id3)
  {
    v8 = app_id3;
    app_id4 = [(SIServiceInstrumentationBatch *)self app_id];
    app_id5 = [equalCopy app_id];
    v11 = [app_id4 isEqual:app_id5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  app_id = [(SIServiceInstrumentationBatch *)self batch_info];
  app_id2 = [equalCopy batch_info];
  if ((app_id != 0) == (app_id2 == 0))
  {
    goto LABEL_16;
  }

  batch_info = [(SIServiceInstrumentationBatch *)self batch_info];
  if (batch_info)
  {
    v13 = batch_info;
    batch_info2 = [(SIServiceInstrumentationBatch *)self batch_info];
    batch_info3 = [equalCopy batch_info];
    v16 = [batch_info2 isEqual:batch_info3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  app_id = [(SIServiceInstrumentationBatch *)self events];
  app_id2 = [equalCopy events];
  if ((app_id != 0) != (app_id2 == 0))
  {
    events = [(SIServiceInstrumentationBatch *)self events];
    if (!events)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = events;
    events2 = [(SIServiceInstrumentationBatch *)self events];
    events3 = [equalCopy events];
    v21 = [events2 isEqual:events3];

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
  v18 = *MEMORY[0x1E69E9840];
  toCopy = to;
  app_id = [(SIServiceInstrumentationBatch *)self app_id];

  if (app_id)
  {
    PBDataWriterWriteStringField();
  }

  batch_info = [(SIServiceInstrumentationBatch *)self batch_info];

  if (batch_info)
  {
    batch_info2 = [(SIServiceInstrumentationBatch *)self batch_info];
    PBDataWriterWriteSubmessage();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = self->_events;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        PBDataWriterWriteSubmessage();
        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
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
  v12.super_class = SIServiceInstrumentationBatch;
  v5 = [(SISchemaInstrumentationMessage *)&v12 applySensitiveConditionsPolicy:policyCopy];
  batch_info = [(SIServiceInstrumentationBatch *)self batch_info];
  v7 = [batch_info applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(SIServiceInstrumentationBatch *)self deleteBatch_info];
  }

  events = [(SIServiceInstrumentationBatch *)self events];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:events underConditions:policyCopy];
  [(SIServiceInstrumentationBatch *)self setEvents:v10];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end