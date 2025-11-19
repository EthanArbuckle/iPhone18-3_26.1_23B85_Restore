@interface ExecutorSiriSchemaExecutorClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (ExecutorSiriSchemaExecutorAppIntentCallContext)executorAppIntentCallContext;
- (ExecutorSiriSchemaExecutorClientEvent)initWithDictionary:(id)a3;
- (ExecutorSiriSchemaExecutorClientEvent)initWithJSON:(id)a3;
- (ExecutorSiriSchemaExecutorIdentifierQueryCallContext)executorIdentifierQueryCallContext;
- (ExecutorSiriSchemaExecutorPersonQueryCallContext)executorPersonQueryCallContext;
- (ExecutorSiriSchemaExecutorRequestContext)executorRequestContext;
- (ExecutorSiriSchemaExecutorSearchToolQueryCallContext)executorSearchToolQueryCallContext;
- (ExecutorSiriSchemaExecutorStringQueryEntityCallContext)executorStringQueryEntityCallContext;
- (ExecutorSiriSchemaExecutorStringQueryEntityMatcherCallContext)executorStringQueryEntityMatcherCallContext;
- (ExecutorSiriSchemaExecutorStringQueryLocationCallContext)executorStringQueryLocationCallContext;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)componentName;
- (unint64_t)hash;
- (void)deleteExecutorAppIntentCallContext;
- (void)deleteExecutorIdentifierQueryCallContext;
- (void)deleteExecutorPersonQueryCallContext;
- (void)deleteExecutorRequestContext;
- (void)deleteExecutorSearchToolQueryCallContext;
- (void)deleteExecutorStringQueryEntityCallContext;
- (void)deleteExecutorStringQueryEntityMatcherCallContext;
- (void)deleteExecutorStringQueryLocationCallContext;
- (void)setExecutorAppIntentCallContext:(id)a3;
- (void)setExecutorIdentifierQueryCallContext:(id)a3;
- (void)setExecutorPersonQueryCallContext:(id)a3;
- (void)setExecutorRequestContext:(id)a3;
- (void)setExecutorSearchToolQueryCallContext:(id)a3;
- (void)setExecutorStringQueryEntityCallContext:(id)a3;
- (void)setExecutorStringQueryEntityMatcherCallContext:(id)a3;
- (void)setExecutorStringQueryLocationCallContext:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ExecutorSiriSchemaExecutorClientEvent

- (ExecutorSiriSchemaExecutorClientEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = ExecutorSiriSchemaExecutorClientEvent;
  v5 = [(ExecutorSiriSchemaExecutorClientEvent *)&v28 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ExecutorSiriSchemaExecutorClientEventMetadata alloc] initWithDictionary:v6];
      [(ExecutorSiriSchemaExecutorClientEvent *)v5 setEventMetadata:v7];
    }

    v27 = v6;
    v8 = [v4 objectForKeyedSubscript:@"executorAppIntentCallContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[ExecutorSiriSchemaExecutorAppIntentCallContext alloc] initWithDictionary:v8];
      [(ExecutorSiriSchemaExecutorClientEvent *)v5 setExecutorAppIntentCallContext:v9];
    }

    v10 = [v4 objectForKeyedSubscript:{@"executorSearchToolQueryCallContext", v8}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[ExecutorSiriSchemaExecutorSearchToolQueryCallContext alloc] initWithDictionary:v10];
      [(ExecutorSiriSchemaExecutorClientEvent *)v5 setExecutorSearchToolQueryCallContext:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"executorPersonQueryCallContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[ExecutorSiriSchemaExecutorPersonQueryCallContext alloc] initWithDictionary:v12];
      [(ExecutorSiriSchemaExecutorClientEvent *)v5 setExecutorPersonQueryCallContext:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"executorStringQueryLocationCallContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[ExecutorSiriSchemaExecutorStringQueryLocationCallContext alloc] initWithDictionary:v14];
      [(ExecutorSiriSchemaExecutorClientEvent *)v5 setExecutorStringQueryLocationCallContext:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"executorStringQueryEntityMatcherCallContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[ExecutorSiriSchemaExecutorStringQueryEntityMatcherCallContext alloc] initWithDictionary:v16];
      [(ExecutorSiriSchemaExecutorClientEvent *)v5 setExecutorStringQueryEntityMatcherCallContext:v17];
    }

    v18 = [v4 objectForKeyedSubscript:@"executorStringQueryEntityCallContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[ExecutorSiriSchemaExecutorStringQueryEntityCallContext alloc] initWithDictionary:v18];
      [(ExecutorSiriSchemaExecutorClientEvent *)v5 setExecutorStringQueryEntityCallContext:v19];
    }

    v20 = [v4 objectForKeyedSubscript:@"executorIdentifierQueryCallContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [[ExecutorSiriSchemaExecutorIdentifierQueryCallContext alloc] initWithDictionary:v20];
      [(ExecutorSiriSchemaExecutorClientEvent *)v5 setExecutorIdentifierQueryCallContext:v21];
    }

    v22 = [v4 objectForKeyedSubscript:@"executorRequestContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [[ExecutorSiriSchemaExecutorRequestContext alloc] initWithDictionary:v22];
      [(ExecutorSiriSchemaExecutorClientEvent *)v5 setExecutorRequestContext:v23];
    }

    v24 = v5;
  }

  return v5;
}

- (ExecutorSiriSchemaExecutorClientEvent)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ExecutorSiriSchemaExecutorClientEvent *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ExecutorSiriSchemaExecutorClientEvent *)self dictionaryRepresentation];
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
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_eventMetadata)
  {
    v4 = [(ExecutorSiriSchemaExecutorClientEvent *)self eventMetadata];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"eventMetadata"];
    }
  }

  if (self->_executorAppIntentCallContext)
  {
    v7 = [(ExecutorSiriSchemaExecutorClientEvent *)self executorAppIntentCallContext];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"executorAppIntentCallContext"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"executorAppIntentCallContext"];
    }
  }

  if (self->_executorIdentifierQueryCallContext)
  {
    v10 = [(ExecutorSiriSchemaExecutorClientEvent *)self executorIdentifierQueryCallContext];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"executorIdentifierQueryCallContext"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"executorIdentifierQueryCallContext"];
    }
  }

  if (self->_executorPersonQueryCallContext)
  {
    v13 = [(ExecutorSiriSchemaExecutorClientEvent *)self executorPersonQueryCallContext];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"executorPersonQueryCallContext"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"executorPersonQueryCallContext"];
    }
  }

  if (self->_executorRequestContext)
  {
    v16 = [(ExecutorSiriSchemaExecutorClientEvent *)self executorRequestContext];
    v17 = [v16 dictionaryRepresentation];
    if (v17)
    {
      [v3 setObject:v17 forKeyedSubscript:@"executorRequestContext"];
    }

    else
    {
      v18 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v18 forKeyedSubscript:@"executorRequestContext"];
    }
  }

  if (self->_executorSearchToolQueryCallContext)
  {
    v19 = [(ExecutorSiriSchemaExecutorClientEvent *)self executorSearchToolQueryCallContext];
    v20 = [v19 dictionaryRepresentation];
    if (v20)
    {
      [v3 setObject:v20 forKeyedSubscript:@"executorSearchToolQueryCallContext"];
    }

    else
    {
      v21 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v21 forKeyedSubscript:@"executorSearchToolQueryCallContext"];
    }
  }

  if (self->_executorStringQueryEntityCallContext)
  {
    v22 = [(ExecutorSiriSchemaExecutorClientEvent *)self executorStringQueryEntityCallContext];
    v23 = [v22 dictionaryRepresentation];
    if (v23)
    {
      [v3 setObject:v23 forKeyedSubscript:@"executorStringQueryEntityCallContext"];
    }

    else
    {
      v24 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v24 forKeyedSubscript:@"executorStringQueryEntityCallContext"];
    }
  }

  if (self->_executorStringQueryEntityMatcherCallContext)
  {
    v25 = [(ExecutorSiriSchemaExecutorClientEvent *)self executorStringQueryEntityMatcherCallContext];
    v26 = [v25 dictionaryRepresentation];
    if (v26)
    {
      [v3 setObject:v26 forKeyedSubscript:@"executorStringQueryEntityMatcherCallContext"];
    }

    else
    {
      v27 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v27 forKeyedSubscript:@"executorStringQueryEntityMatcherCallContext"];
    }
  }

  if (self->_executorStringQueryLocationCallContext)
  {
    v28 = [(ExecutorSiriSchemaExecutorClientEvent *)self executorStringQueryLocationCallContext];
    v29 = [v28 dictionaryRepresentation];
    if (v29)
    {
      [v3 setObject:v29 forKeyedSubscript:@"executorStringQueryLocationCallContext"];
    }

    else
    {
      v30 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v30 forKeyedSubscript:@"executorStringQueryLocationCallContext"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(ExecutorSiriSchemaExecutorClientEventMetadata *)self->_eventMetadata hash];
  v4 = [(ExecutorSiriSchemaExecutorAppIntentCallContext *)self->_executorAppIntentCallContext hash]^ v3;
  v5 = [(ExecutorSiriSchemaExecutorSearchToolQueryCallContext *)self->_executorSearchToolQueryCallContext hash];
  v6 = v4 ^ v5 ^ [(ExecutorSiriSchemaExecutorPersonQueryCallContext *)self->_executorPersonQueryCallContext hash];
  v7 = [(ExecutorSiriSchemaExecutorStringQueryLocationCallContext *)self->_executorStringQueryLocationCallContext hash];
  v8 = v7 ^ [(ExecutorSiriSchemaExecutorStringQueryEntityMatcherCallContext *)self->_executorStringQueryEntityMatcherCallContext hash];
  v9 = v6 ^ v8 ^ [(ExecutorSiriSchemaExecutorStringQueryEntityCallContext *)self->_executorStringQueryEntityCallContext hash];
  v10 = [(ExecutorSiriSchemaExecutorIdentifierQueryCallContext *)self->_executorIdentifierQueryCallContext hash];
  return v9 ^ v10 ^ [(ExecutorSiriSchemaExecutorRequestContext *)self->_executorRequestContext hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_48;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [v4 whichEvent_Type])
  {
    goto LABEL_48;
  }

  v6 = [(ExecutorSiriSchemaExecutorClientEvent *)self eventMetadata];
  v7 = [v4 eventMetadata];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_47;
  }

  v8 = [(ExecutorSiriSchemaExecutorClientEvent *)self eventMetadata];
  if (v8)
  {
    v9 = v8;
    v10 = [(ExecutorSiriSchemaExecutorClientEvent *)self eventMetadata];
    v11 = [v4 eventMetadata];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  v6 = [(ExecutorSiriSchemaExecutorClientEvent *)self executorAppIntentCallContext];
  v7 = [v4 executorAppIntentCallContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_47;
  }

  v13 = [(ExecutorSiriSchemaExecutorClientEvent *)self executorAppIntentCallContext];
  if (v13)
  {
    v14 = v13;
    v15 = [(ExecutorSiriSchemaExecutorClientEvent *)self executorAppIntentCallContext];
    v16 = [v4 executorAppIntentCallContext];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  v6 = [(ExecutorSiriSchemaExecutorClientEvent *)self executorSearchToolQueryCallContext];
  v7 = [v4 executorSearchToolQueryCallContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_47;
  }

  v18 = [(ExecutorSiriSchemaExecutorClientEvent *)self executorSearchToolQueryCallContext];
  if (v18)
  {
    v19 = v18;
    v20 = [(ExecutorSiriSchemaExecutorClientEvent *)self executorSearchToolQueryCallContext];
    v21 = [v4 executorSearchToolQueryCallContext];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  v6 = [(ExecutorSiriSchemaExecutorClientEvent *)self executorPersonQueryCallContext];
  v7 = [v4 executorPersonQueryCallContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_47;
  }

  v23 = [(ExecutorSiriSchemaExecutorClientEvent *)self executorPersonQueryCallContext];
  if (v23)
  {
    v24 = v23;
    v25 = [(ExecutorSiriSchemaExecutorClientEvent *)self executorPersonQueryCallContext];
    v26 = [v4 executorPersonQueryCallContext];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  v6 = [(ExecutorSiriSchemaExecutorClientEvent *)self executorStringQueryLocationCallContext];
  v7 = [v4 executorStringQueryLocationCallContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_47;
  }

  v28 = [(ExecutorSiriSchemaExecutorClientEvent *)self executorStringQueryLocationCallContext];
  if (v28)
  {
    v29 = v28;
    v30 = [(ExecutorSiriSchemaExecutorClientEvent *)self executorStringQueryLocationCallContext];
    v31 = [v4 executorStringQueryLocationCallContext];
    v32 = [v30 isEqual:v31];

    if (!v32)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  v6 = [(ExecutorSiriSchemaExecutorClientEvent *)self executorStringQueryEntityMatcherCallContext];
  v7 = [v4 executorStringQueryEntityMatcherCallContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_47;
  }

  v33 = [(ExecutorSiriSchemaExecutorClientEvent *)self executorStringQueryEntityMatcherCallContext];
  if (v33)
  {
    v34 = v33;
    v35 = [(ExecutorSiriSchemaExecutorClientEvent *)self executorStringQueryEntityMatcherCallContext];
    v36 = [v4 executorStringQueryEntityMatcherCallContext];
    v37 = [v35 isEqual:v36];

    if (!v37)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  v6 = [(ExecutorSiriSchemaExecutorClientEvent *)self executorStringQueryEntityCallContext];
  v7 = [v4 executorStringQueryEntityCallContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_47;
  }

  v38 = [(ExecutorSiriSchemaExecutorClientEvent *)self executorStringQueryEntityCallContext];
  if (v38)
  {
    v39 = v38;
    v40 = [(ExecutorSiriSchemaExecutorClientEvent *)self executorStringQueryEntityCallContext];
    v41 = [v4 executorStringQueryEntityCallContext];
    v42 = [v40 isEqual:v41];

    if (!v42)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  v6 = [(ExecutorSiriSchemaExecutorClientEvent *)self executorIdentifierQueryCallContext];
  v7 = [v4 executorIdentifierQueryCallContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_47;
  }

  v43 = [(ExecutorSiriSchemaExecutorClientEvent *)self executorIdentifierQueryCallContext];
  if (v43)
  {
    v44 = v43;
    v45 = [(ExecutorSiriSchemaExecutorClientEvent *)self executorIdentifierQueryCallContext];
    v46 = [v4 executorIdentifierQueryCallContext];
    v47 = [v45 isEqual:v46];

    if (!v47)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  v6 = [(ExecutorSiriSchemaExecutorClientEvent *)self executorRequestContext];
  v7 = [v4 executorRequestContext];
  if ((v6 != 0) != (v7 == 0))
  {
    v48 = [(ExecutorSiriSchemaExecutorClientEvent *)self executorRequestContext];
    if (!v48)
    {

LABEL_51:
      v53 = 1;
      goto LABEL_49;
    }

    v49 = v48;
    v50 = [(ExecutorSiriSchemaExecutorClientEvent *)self executorRequestContext];
    v51 = [v4 executorRequestContext];
    v52 = [v50 isEqual:v51];

    if (v52)
    {
      goto LABEL_51;
    }
  }

  else
  {
LABEL_47:
  }

LABEL_48:
  v53 = 0;
LABEL_49:

  return v53;
}

- (void)writeTo:(id)a3
{
  v23 = a3;
  v4 = [(ExecutorSiriSchemaExecutorClientEvent *)self eventMetadata];

  if (v4)
  {
    v5 = [(ExecutorSiriSchemaExecutorClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(ExecutorSiriSchemaExecutorClientEvent *)self executorAppIntentCallContext];

  if (v6)
  {
    v7 = [(ExecutorSiriSchemaExecutorClientEvent *)self executorAppIntentCallContext];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(ExecutorSiriSchemaExecutorClientEvent *)self executorSearchToolQueryCallContext];

  if (v8)
  {
    v9 = [(ExecutorSiriSchemaExecutorClientEvent *)self executorSearchToolQueryCallContext];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(ExecutorSiriSchemaExecutorClientEvent *)self executorPersonQueryCallContext];

  if (v10)
  {
    v11 = [(ExecutorSiriSchemaExecutorClientEvent *)self executorPersonQueryCallContext];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(ExecutorSiriSchemaExecutorClientEvent *)self executorStringQueryLocationCallContext];

  if (v12)
  {
    v13 = [(ExecutorSiriSchemaExecutorClientEvent *)self executorStringQueryLocationCallContext];
    PBDataWriterWriteSubmessage();
  }

  v14 = [(ExecutorSiriSchemaExecutorClientEvent *)self executorStringQueryEntityMatcherCallContext];

  if (v14)
  {
    v15 = [(ExecutorSiriSchemaExecutorClientEvent *)self executorStringQueryEntityMatcherCallContext];
    PBDataWriterWriteSubmessage();
  }

  v16 = [(ExecutorSiriSchemaExecutorClientEvent *)self executorStringQueryEntityCallContext];

  if (v16)
  {
    v17 = [(ExecutorSiriSchemaExecutorClientEvent *)self executorStringQueryEntityCallContext];
    PBDataWriterWriteSubmessage();
  }

  v18 = [(ExecutorSiriSchemaExecutorClientEvent *)self executorIdentifierQueryCallContext];

  if (v18)
  {
    v19 = [(ExecutorSiriSchemaExecutorClientEvent *)self executorIdentifierQueryCallContext];
    PBDataWriterWriteSubmessage();
  }

  v20 = [(ExecutorSiriSchemaExecutorClientEvent *)self executorRequestContext];

  v21 = v23;
  if (v20)
  {
    v22 = [(ExecutorSiriSchemaExecutorClientEvent *)self executorRequestContext];
    PBDataWriterWriteSubmessage();

    v21 = v23;
  }
}

- (void)deleteExecutorRequestContext
{
  if (self->_whichEvent_Type == 57)
  {
    self->_whichEvent_Type = 0;
    self->_executorRequestContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ExecutorSiriSchemaExecutorRequestContext)executorRequestContext
{
  if (self->_whichEvent_Type == 57)
  {
    v3 = self->_executorRequestContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setExecutorRequestContext:(id)a3
{
  v4 = a3;
  executorAppIntentCallContext = self->_executorAppIntentCallContext;
  self->_executorAppIntentCallContext = 0;

  executorSearchToolQueryCallContext = self->_executorSearchToolQueryCallContext;
  self->_executorSearchToolQueryCallContext = 0;

  executorPersonQueryCallContext = self->_executorPersonQueryCallContext;
  self->_executorPersonQueryCallContext = 0;

  executorStringQueryLocationCallContext = self->_executorStringQueryLocationCallContext;
  self->_executorStringQueryLocationCallContext = 0;

  executorStringQueryEntityMatcherCallContext = self->_executorStringQueryEntityMatcherCallContext;
  self->_executorStringQueryEntityMatcherCallContext = 0;

  executorStringQueryEntityCallContext = self->_executorStringQueryEntityCallContext;
  self->_executorStringQueryEntityCallContext = 0;

  executorIdentifierQueryCallContext = self->_executorIdentifierQueryCallContext;
  self->_executorIdentifierQueryCallContext = 0;

  v12 = 57;
  if (!v4)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  executorRequestContext = self->_executorRequestContext;
  self->_executorRequestContext = v4;
}

- (void)deleteExecutorIdentifierQueryCallContext
{
  if (self->_whichEvent_Type == 56)
  {
    self->_whichEvent_Type = 0;
    self->_executorIdentifierQueryCallContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ExecutorSiriSchemaExecutorIdentifierQueryCallContext)executorIdentifierQueryCallContext
{
  if (self->_whichEvent_Type == 56)
  {
    v3 = self->_executorIdentifierQueryCallContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setExecutorIdentifierQueryCallContext:(id)a3
{
  v4 = a3;
  executorAppIntentCallContext = self->_executorAppIntentCallContext;
  self->_executorAppIntentCallContext = 0;

  executorSearchToolQueryCallContext = self->_executorSearchToolQueryCallContext;
  self->_executorSearchToolQueryCallContext = 0;

  executorPersonQueryCallContext = self->_executorPersonQueryCallContext;
  self->_executorPersonQueryCallContext = 0;

  executorStringQueryLocationCallContext = self->_executorStringQueryLocationCallContext;
  self->_executorStringQueryLocationCallContext = 0;

  executorStringQueryEntityMatcherCallContext = self->_executorStringQueryEntityMatcherCallContext;
  self->_executorStringQueryEntityMatcherCallContext = 0;

  executorStringQueryEntityCallContext = self->_executorStringQueryEntityCallContext;
  self->_executorStringQueryEntityCallContext = 0;

  executorRequestContext = self->_executorRequestContext;
  self->_executorRequestContext = 0;

  v12 = 56;
  if (!v4)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  executorIdentifierQueryCallContext = self->_executorIdentifierQueryCallContext;
  self->_executorIdentifierQueryCallContext = v4;
}

- (void)deleteExecutorStringQueryEntityCallContext
{
  if (self->_whichEvent_Type == 55)
  {
    self->_whichEvent_Type = 0;
    self->_executorStringQueryEntityCallContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ExecutorSiriSchemaExecutorStringQueryEntityCallContext)executorStringQueryEntityCallContext
{
  if (self->_whichEvent_Type == 55)
  {
    v3 = self->_executorStringQueryEntityCallContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setExecutorStringQueryEntityCallContext:(id)a3
{
  v4 = a3;
  executorAppIntentCallContext = self->_executorAppIntentCallContext;
  self->_executorAppIntentCallContext = 0;

  executorSearchToolQueryCallContext = self->_executorSearchToolQueryCallContext;
  self->_executorSearchToolQueryCallContext = 0;

  executorPersonQueryCallContext = self->_executorPersonQueryCallContext;
  self->_executorPersonQueryCallContext = 0;

  executorStringQueryLocationCallContext = self->_executorStringQueryLocationCallContext;
  self->_executorStringQueryLocationCallContext = 0;

  executorStringQueryEntityMatcherCallContext = self->_executorStringQueryEntityMatcherCallContext;
  self->_executorStringQueryEntityMatcherCallContext = 0;

  executorIdentifierQueryCallContext = self->_executorIdentifierQueryCallContext;
  self->_executorIdentifierQueryCallContext = 0;

  executorRequestContext = self->_executorRequestContext;
  self->_executorRequestContext = 0;

  v12 = 55;
  if (!v4)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  executorStringQueryEntityCallContext = self->_executorStringQueryEntityCallContext;
  self->_executorStringQueryEntityCallContext = v4;
}

- (void)deleteExecutorStringQueryEntityMatcherCallContext
{
  if (self->_whichEvent_Type == 54)
  {
    self->_whichEvent_Type = 0;
    self->_executorStringQueryEntityMatcherCallContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ExecutorSiriSchemaExecutorStringQueryEntityMatcherCallContext)executorStringQueryEntityMatcherCallContext
{
  if (self->_whichEvent_Type == 54)
  {
    v3 = self->_executorStringQueryEntityMatcherCallContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setExecutorStringQueryEntityMatcherCallContext:(id)a3
{
  v4 = a3;
  executorAppIntentCallContext = self->_executorAppIntentCallContext;
  self->_executorAppIntentCallContext = 0;

  executorSearchToolQueryCallContext = self->_executorSearchToolQueryCallContext;
  self->_executorSearchToolQueryCallContext = 0;

  executorPersonQueryCallContext = self->_executorPersonQueryCallContext;
  self->_executorPersonQueryCallContext = 0;

  executorStringQueryLocationCallContext = self->_executorStringQueryLocationCallContext;
  self->_executorStringQueryLocationCallContext = 0;

  executorStringQueryEntityCallContext = self->_executorStringQueryEntityCallContext;
  self->_executorStringQueryEntityCallContext = 0;

  executorIdentifierQueryCallContext = self->_executorIdentifierQueryCallContext;
  self->_executorIdentifierQueryCallContext = 0;

  executorRequestContext = self->_executorRequestContext;
  self->_executorRequestContext = 0;

  v12 = 54;
  if (!v4)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  executorStringQueryEntityMatcherCallContext = self->_executorStringQueryEntityMatcherCallContext;
  self->_executorStringQueryEntityMatcherCallContext = v4;
}

- (void)deleteExecutorStringQueryLocationCallContext
{
  if (self->_whichEvent_Type == 53)
  {
    self->_whichEvent_Type = 0;
    self->_executorStringQueryLocationCallContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ExecutorSiriSchemaExecutorStringQueryLocationCallContext)executorStringQueryLocationCallContext
{
  if (self->_whichEvent_Type == 53)
  {
    v3 = self->_executorStringQueryLocationCallContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setExecutorStringQueryLocationCallContext:(id)a3
{
  v4 = a3;
  executorAppIntentCallContext = self->_executorAppIntentCallContext;
  self->_executorAppIntentCallContext = 0;

  executorSearchToolQueryCallContext = self->_executorSearchToolQueryCallContext;
  self->_executorSearchToolQueryCallContext = 0;

  executorPersonQueryCallContext = self->_executorPersonQueryCallContext;
  self->_executorPersonQueryCallContext = 0;

  executorStringQueryEntityMatcherCallContext = self->_executorStringQueryEntityMatcherCallContext;
  self->_executorStringQueryEntityMatcherCallContext = 0;

  executorStringQueryEntityCallContext = self->_executorStringQueryEntityCallContext;
  self->_executorStringQueryEntityCallContext = 0;

  executorIdentifierQueryCallContext = self->_executorIdentifierQueryCallContext;
  self->_executorIdentifierQueryCallContext = 0;

  executorRequestContext = self->_executorRequestContext;
  self->_executorRequestContext = 0;

  v12 = 53;
  if (!v4)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  executorStringQueryLocationCallContext = self->_executorStringQueryLocationCallContext;
  self->_executorStringQueryLocationCallContext = v4;
}

- (void)deleteExecutorPersonQueryCallContext
{
  if (self->_whichEvent_Type == 52)
  {
    self->_whichEvent_Type = 0;
    self->_executorPersonQueryCallContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ExecutorSiriSchemaExecutorPersonQueryCallContext)executorPersonQueryCallContext
{
  if (self->_whichEvent_Type == 52)
  {
    v3 = self->_executorPersonQueryCallContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setExecutorPersonQueryCallContext:(id)a3
{
  v4 = a3;
  executorAppIntentCallContext = self->_executorAppIntentCallContext;
  self->_executorAppIntentCallContext = 0;

  executorSearchToolQueryCallContext = self->_executorSearchToolQueryCallContext;
  self->_executorSearchToolQueryCallContext = 0;

  executorStringQueryLocationCallContext = self->_executorStringQueryLocationCallContext;
  self->_executorStringQueryLocationCallContext = 0;

  executorStringQueryEntityMatcherCallContext = self->_executorStringQueryEntityMatcherCallContext;
  self->_executorStringQueryEntityMatcherCallContext = 0;

  executorStringQueryEntityCallContext = self->_executorStringQueryEntityCallContext;
  self->_executorStringQueryEntityCallContext = 0;

  executorIdentifierQueryCallContext = self->_executorIdentifierQueryCallContext;
  self->_executorIdentifierQueryCallContext = 0;

  executorRequestContext = self->_executorRequestContext;
  self->_executorRequestContext = 0;

  v12 = 52;
  if (!v4)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  executorPersonQueryCallContext = self->_executorPersonQueryCallContext;
  self->_executorPersonQueryCallContext = v4;
}

- (void)deleteExecutorSearchToolQueryCallContext
{
  if (self->_whichEvent_Type == 51)
  {
    self->_whichEvent_Type = 0;
    self->_executorSearchToolQueryCallContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ExecutorSiriSchemaExecutorSearchToolQueryCallContext)executorSearchToolQueryCallContext
{
  if (self->_whichEvent_Type == 51)
  {
    v3 = self->_executorSearchToolQueryCallContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setExecutorSearchToolQueryCallContext:(id)a3
{
  v4 = a3;
  executorAppIntentCallContext = self->_executorAppIntentCallContext;
  self->_executorAppIntentCallContext = 0;

  executorPersonQueryCallContext = self->_executorPersonQueryCallContext;
  self->_executorPersonQueryCallContext = 0;

  executorStringQueryLocationCallContext = self->_executorStringQueryLocationCallContext;
  self->_executorStringQueryLocationCallContext = 0;

  executorStringQueryEntityMatcherCallContext = self->_executorStringQueryEntityMatcherCallContext;
  self->_executorStringQueryEntityMatcherCallContext = 0;

  executorStringQueryEntityCallContext = self->_executorStringQueryEntityCallContext;
  self->_executorStringQueryEntityCallContext = 0;

  executorIdentifierQueryCallContext = self->_executorIdentifierQueryCallContext;
  self->_executorIdentifierQueryCallContext = 0;

  executorRequestContext = self->_executorRequestContext;
  self->_executorRequestContext = 0;

  v12 = 51;
  if (!v4)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  executorSearchToolQueryCallContext = self->_executorSearchToolQueryCallContext;
  self->_executorSearchToolQueryCallContext = v4;
}

- (void)deleteExecutorAppIntentCallContext
{
  if (self->_whichEvent_Type == 50)
  {
    self->_whichEvent_Type = 0;
    self->_executorAppIntentCallContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ExecutorSiriSchemaExecutorAppIntentCallContext)executorAppIntentCallContext
{
  if (self->_whichEvent_Type == 50)
  {
    v3 = self->_executorAppIntentCallContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setExecutorAppIntentCallContext:(id)a3
{
  v4 = a3;
  executorSearchToolQueryCallContext = self->_executorSearchToolQueryCallContext;
  self->_executorSearchToolQueryCallContext = 0;

  executorPersonQueryCallContext = self->_executorPersonQueryCallContext;
  self->_executorPersonQueryCallContext = 0;

  executorStringQueryLocationCallContext = self->_executorStringQueryLocationCallContext;
  self->_executorStringQueryLocationCallContext = 0;

  executorStringQueryEntityMatcherCallContext = self->_executorStringQueryEntityMatcherCallContext;
  self->_executorStringQueryEntityMatcherCallContext = 0;

  executorStringQueryEntityCallContext = self->_executorStringQueryEntityCallContext;
  self->_executorStringQueryEntityCallContext = 0;

  executorIdentifierQueryCallContext = self->_executorIdentifierQueryCallContext;
  self->_executorIdentifierQueryCallContext = 0;

  executorRequestContext = self->_executorRequestContext;
  self->_executorRequestContext = 0;

  v12 = 50;
  if (!v4)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  executorAppIntentCallContext = self->_executorAppIntentCallContext;
  self->_executorAppIntentCallContext = v4;
}

- (id)qualifiedMessageName
{
  v2 = [(ExecutorSiriSchemaExecutorClientEvent *)self whichEvent_Type];
  if (v2 - 50 > 7)
  {
    return @"com.apple.aiml.siri.executor.ExecutorClientEvent";
  }

  else
  {
    return off_1E78D4820[v2 - 50];
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v34.receiver = self;
  v34.super_class = ExecutorSiriSchemaExecutorClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v34 applySensitiveConditionsPolicy:v4];
  v6 = [(ExecutorSiriSchemaExecutorClientEvent *)self eventMetadata];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(ExecutorSiriSchemaExecutorClientEvent *)self deleteEventMetadata];
  }

  v9 = [(ExecutorSiriSchemaExecutorClientEvent *)self executorAppIntentCallContext];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(ExecutorSiriSchemaExecutorClientEvent *)self deleteExecutorAppIntentCallContext];
  }

  v12 = [(ExecutorSiriSchemaExecutorClientEvent *)self executorSearchToolQueryCallContext];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(ExecutorSiriSchemaExecutorClientEvent *)self deleteExecutorSearchToolQueryCallContext];
  }

  v15 = [(ExecutorSiriSchemaExecutorClientEvent *)self executorPersonQueryCallContext];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(ExecutorSiriSchemaExecutorClientEvent *)self deleteExecutorPersonQueryCallContext];
  }

  v18 = [(ExecutorSiriSchemaExecutorClientEvent *)self executorStringQueryLocationCallContext];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
  {
    [(ExecutorSiriSchemaExecutorClientEvent *)self deleteExecutorStringQueryLocationCallContext];
  }

  v21 = [(ExecutorSiriSchemaExecutorClientEvent *)self executorStringQueryEntityMatcherCallContext];
  v22 = [v21 applySensitiveConditionsPolicy:v4];
  v23 = [v22 suppressMessage];

  if (v23)
  {
    [(ExecutorSiriSchemaExecutorClientEvent *)self deleteExecutorStringQueryEntityMatcherCallContext];
  }

  v24 = [(ExecutorSiriSchemaExecutorClientEvent *)self executorStringQueryEntityCallContext];
  v25 = [v24 applySensitiveConditionsPolicy:v4];
  v26 = [v25 suppressMessage];

  if (v26)
  {
    [(ExecutorSiriSchemaExecutorClientEvent *)self deleteExecutorStringQueryEntityCallContext];
  }

  v27 = [(ExecutorSiriSchemaExecutorClientEvent *)self executorIdentifierQueryCallContext];
  v28 = [v27 applySensitiveConditionsPolicy:v4];
  v29 = [v28 suppressMessage];

  if (v29)
  {
    [(ExecutorSiriSchemaExecutorClientEvent *)self deleteExecutorIdentifierQueryCallContext];
  }

  v30 = [(ExecutorSiriSchemaExecutorClientEvent *)self executorRequestContext];
  v31 = [v30 applySensitiveConditionsPolicy:v4];
  v32 = [v31 suppressMessage];

  if (v32)
  {
    [(ExecutorSiriSchemaExecutorClientEvent *)self deleteExecutorRequestContext];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

- (int)componentName
{
  v3 = [(ExecutorSiriSchemaExecutorClientEvent *)self eventMetadata];
  v4 = [v3 ifRequestId];

  if (v4 && ([v4 value], (v5 = objc_claimAutoreleasedReturnValue()) != 0) && (v6 = v5, objc_msgSend(v4, "value"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, v6, v8))
  {
    v9 = 45;
  }

  else
  {
    v10 = [(ExecutorSiriSchemaExecutorClientEvent *)self eventMetadata];
    v11 = [v10 executorId];

    if (v11)
    {
      v12 = [v11 value];
      if (v12)
      {
        v13 = v12;
        v14 = [v11 value];
        v15 = [v14 length];

        if (v15)
        {
          v9 = 58;
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        v9 = 0;
      }

      v4 = v11;
    }

    else
    {
      v9 = 0;
      v4 = 0;
    }
  }

  return v9;
}

- (id)getComponentId
{
  v3 = [(ExecutorSiriSchemaExecutorClientEvent *)self eventMetadata];
  v4 = [v3 ifRequestId];

  if (v4)
  {
    v5 = [v4 value];
    if (v5)
    {
      v6 = v5;
      v7 = [v4 value];
      v8 = [v7 length];

      if (v8)
      {
        goto LABEL_8;
      }
    }
  }

  v9 = [(ExecutorSiriSchemaExecutorClientEvent *)self eventMetadata];
  v10 = [v9 executorId];

  if (v10)
  {
    v11 = [v10 value];
    if (!v11)
    {
      goto LABEL_10;
    }

    v12 = [v10 value];
    v13 = [v12 length];

    if (v13)
    {
      v4 = v10;
LABEL_8:
      v11 = v4;
      v10 = v11;
      goto LABEL_10;
    }
  }

  v11 = 0;
LABEL_10:

  return v11;
}

- (SISchemaInstrumentationMessage)innerEvent
{
  v3 = [(ExecutorSiriSchemaExecutorClientEvent *)self whichEvent_Type];
  if (v3 - 50 > 7)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78E9628[v3 - 50]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)a3
{
  if (a3 - 50 > 7)
  {
    return 0;
  }

  else
  {
    return off_1E78E9668[a3 - 50];
  }
}

@end