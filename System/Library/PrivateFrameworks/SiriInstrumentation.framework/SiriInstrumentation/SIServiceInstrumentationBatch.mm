@interface SIServiceInstrumentationBatch
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SIServiceInstrumentationBatch)initWithDictionary:(id)a3;
- (SIServiceInstrumentationBatch)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addEvent:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIServiceInstrumentationBatch

- (SIServiceInstrumentationBatch)initWithDictionary:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v25.receiver = self;
  v25.super_class = SIServiceInstrumentationBatch;
  v5 = [(SIServiceInstrumentationBatch *)&v25 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"appId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(SIServiceInstrumentationBatch *)v5 setApp_id:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"batchInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SIServiceBatchInfo alloc] initWithDictionary:v8];
      [(SIServiceInstrumentationBatch *)v5 setBatch_info:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"event"];
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

- (SIServiceInstrumentationBatch)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SIServiceInstrumentationBatch *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SIServiceInstrumentationBatch *)self dictionaryRepresentation];
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
  v23 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_app_id)
  {
    v4 = [(SIServiceInstrumentationBatch *)self app_id];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"appId"];
  }

  if (self->_batch_info)
  {
    v6 = [(SIServiceInstrumentationBatch *)self batch_info];
    v7 = [v6 dictionaryRepresentation];
    if (v7)
    {
      [v3 setObject:v7 forKeyedSubscript:@"batchInfo"];
    }

    else
    {
      v8 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v8 forKeyedSubscript:@"batchInfo"];
    }
  }

  if ([(NSArray *)self->_events count])
  {
    v9 = [MEMORY[0x1E695DF70] array];
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

          v15 = [*(*(&v18 + 1) + 8 * i) dictionaryRepresentation];
          if (v15)
          {
            [v9 addObject:v15];
          }

          else
          {
            v16 = [MEMORY[0x1E695DFB0] null];
            [v9 addObject:v16];
          }
        }

        v12 = [(NSArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }

    [v3 setObject:v9 forKeyedSubscript:@"event"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v18];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_app_id hash];
  v4 = [(SIServiceBatchInfo *)self->_batch_info hash]^ v3;
  return v4 ^ [(NSArray *)self->_events hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(SIServiceInstrumentationBatch *)self app_id];
  v6 = [v4 app_id];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(SIServiceInstrumentationBatch *)self app_id];
  if (v7)
  {
    v8 = v7;
    v9 = [(SIServiceInstrumentationBatch *)self app_id];
    v10 = [v4 app_id];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(SIServiceInstrumentationBatch *)self batch_info];
  v6 = [v4 batch_info];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(SIServiceInstrumentationBatch *)self batch_info];
  if (v12)
  {
    v13 = v12;
    v14 = [(SIServiceInstrumentationBatch *)self batch_info];
    v15 = [v4 batch_info];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(SIServiceInstrumentationBatch *)self events];
  v6 = [v4 events];
  if ((v5 != 0) != (v6 == 0))
  {
    v17 = [(SIServiceInstrumentationBatch *)self events];
    if (!v17)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(SIServiceInstrumentationBatch *)self events];
    v20 = [v4 events];
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
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SIServiceInstrumentationBatch *)self app_id];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = [(SIServiceInstrumentationBatch *)self batch_info];

  if (v6)
  {
    v7 = [(SIServiceInstrumentationBatch *)self batch_info];
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

- (void)addEvent:(id)a3
{
  v4 = a3;
  events = self->_events;
  v8 = v4;
  if (!events)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_events;
    self->_events = v6;

    v4 = v8;
    events = self->_events;
  }

  [(NSArray *)events addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SIServiceInstrumentationBatch;
  v5 = [(SISchemaInstrumentationMessage *)&v12 applySensitiveConditionsPolicy:v4];
  v6 = [(SIServiceInstrumentationBatch *)self batch_info];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(SIServiceInstrumentationBatch *)self deleteBatch_info];
  }

  v9 = [(SIServiceInstrumentationBatch *)self events];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v9 underConditions:v4];
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