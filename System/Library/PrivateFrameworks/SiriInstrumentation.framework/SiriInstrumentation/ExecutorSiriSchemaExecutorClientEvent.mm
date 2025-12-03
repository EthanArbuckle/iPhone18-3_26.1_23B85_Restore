@interface ExecutorSiriSchemaExecutorClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (BOOL)isEqual:(id)equal;
- (ExecutorSiriSchemaExecutorAppIntentCallContext)executorAppIntentCallContext;
- (ExecutorSiriSchemaExecutorClientEvent)initWithDictionary:(id)dictionary;
- (ExecutorSiriSchemaExecutorClientEvent)initWithJSON:(id)n;
- (ExecutorSiriSchemaExecutorIdentifierQueryCallContext)executorIdentifierQueryCallContext;
- (ExecutorSiriSchemaExecutorPersonQueryCallContext)executorPersonQueryCallContext;
- (ExecutorSiriSchemaExecutorRequestContext)executorRequestContext;
- (ExecutorSiriSchemaExecutorSearchToolQueryCallContext)executorSearchToolQueryCallContext;
- (ExecutorSiriSchemaExecutorStringQueryEntityCallContext)executorStringQueryEntityCallContext;
- (ExecutorSiriSchemaExecutorStringQueryEntityMatcherCallContext)executorStringQueryEntityMatcherCallContext;
- (ExecutorSiriSchemaExecutorStringQueryLocationCallContext)executorStringQueryLocationCallContext;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)policy;
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
- (void)setExecutorAppIntentCallContext:(id)context;
- (void)setExecutorIdentifierQueryCallContext:(id)context;
- (void)setExecutorPersonQueryCallContext:(id)context;
- (void)setExecutorRequestContext:(id)context;
- (void)setExecutorSearchToolQueryCallContext:(id)context;
- (void)setExecutorStringQueryEntityCallContext:(id)context;
- (void)setExecutorStringQueryEntityMatcherCallContext:(id)context;
- (void)setExecutorStringQueryLocationCallContext:(id)context;
- (void)writeTo:(id)to;
@end

@implementation ExecutorSiriSchemaExecutorClientEvent

- (ExecutorSiriSchemaExecutorClientEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v28.receiver = self;
  v28.super_class = ExecutorSiriSchemaExecutorClientEvent;
  v5 = [(ExecutorSiriSchemaExecutorClientEvent *)&v28 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ExecutorSiriSchemaExecutorClientEventMetadata alloc] initWithDictionary:v6];
      [(ExecutorSiriSchemaExecutorClientEvent *)v5 setEventMetadata:v7];
    }

    v27 = v6;
    v8 = [dictionaryCopy objectForKeyedSubscript:@"executorAppIntentCallContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[ExecutorSiriSchemaExecutorAppIntentCallContext alloc] initWithDictionary:v8];
      [(ExecutorSiriSchemaExecutorClientEvent *)v5 setExecutorAppIntentCallContext:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:{@"executorSearchToolQueryCallContext", v8}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[ExecutorSiriSchemaExecutorSearchToolQueryCallContext alloc] initWithDictionary:v10];
      [(ExecutorSiriSchemaExecutorClientEvent *)v5 setExecutorSearchToolQueryCallContext:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"executorPersonQueryCallContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[ExecutorSiriSchemaExecutorPersonQueryCallContext alloc] initWithDictionary:v12];
      [(ExecutorSiriSchemaExecutorClientEvent *)v5 setExecutorPersonQueryCallContext:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"executorStringQueryLocationCallContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[ExecutorSiriSchemaExecutorStringQueryLocationCallContext alloc] initWithDictionary:v14];
      [(ExecutorSiriSchemaExecutorClientEvent *)v5 setExecutorStringQueryLocationCallContext:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"executorStringQueryEntityMatcherCallContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[ExecutorSiriSchemaExecutorStringQueryEntityMatcherCallContext alloc] initWithDictionary:v16];
      [(ExecutorSiriSchemaExecutorClientEvent *)v5 setExecutorStringQueryEntityMatcherCallContext:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"executorStringQueryEntityCallContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[ExecutorSiriSchemaExecutorStringQueryEntityCallContext alloc] initWithDictionary:v18];
      [(ExecutorSiriSchemaExecutorClientEvent *)v5 setExecutorStringQueryEntityCallContext:v19];
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"executorIdentifierQueryCallContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [[ExecutorSiriSchemaExecutorIdentifierQueryCallContext alloc] initWithDictionary:v20];
      [(ExecutorSiriSchemaExecutorClientEvent *)v5 setExecutorIdentifierQueryCallContext:v21];
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"executorRequestContext"];
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

- (ExecutorSiriSchemaExecutorClientEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ExecutorSiriSchemaExecutorClientEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ExecutorSiriSchemaExecutorClientEvent *)self dictionaryRepresentation];
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_eventMetadata)
  {
    eventMetadata = [(ExecutorSiriSchemaExecutorClientEvent *)self eventMetadata];
    dictionaryRepresentation = [eventMetadata dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"eventMetadata"];
    }
  }

  if (self->_executorAppIntentCallContext)
  {
    executorAppIntentCallContext = [(ExecutorSiriSchemaExecutorClientEvent *)self executorAppIntentCallContext];
    dictionaryRepresentation2 = [executorAppIntentCallContext dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"executorAppIntentCallContext"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"executorAppIntentCallContext"];
    }
  }

  if (self->_executorIdentifierQueryCallContext)
  {
    executorIdentifierQueryCallContext = [(ExecutorSiriSchemaExecutorClientEvent *)self executorIdentifierQueryCallContext];
    dictionaryRepresentation3 = [executorIdentifierQueryCallContext dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"executorIdentifierQueryCallContext"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"executorIdentifierQueryCallContext"];
    }
  }

  if (self->_executorPersonQueryCallContext)
  {
    executorPersonQueryCallContext = [(ExecutorSiriSchemaExecutorClientEvent *)self executorPersonQueryCallContext];
    dictionaryRepresentation4 = [executorPersonQueryCallContext dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"executorPersonQueryCallContext"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"executorPersonQueryCallContext"];
    }
  }

  if (self->_executorRequestContext)
  {
    executorRequestContext = [(ExecutorSiriSchemaExecutorClientEvent *)self executorRequestContext];
    dictionaryRepresentation5 = [executorRequestContext dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"executorRequestContext"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"executorRequestContext"];
    }
  }

  if (self->_executorSearchToolQueryCallContext)
  {
    executorSearchToolQueryCallContext = [(ExecutorSiriSchemaExecutorClientEvent *)self executorSearchToolQueryCallContext];
    dictionaryRepresentation6 = [executorSearchToolQueryCallContext dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"executorSearchToolQueryCallContext"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"executorSearchToolQueryCallContext"];
    }
  }

  if (self->_executorStringQueryEntityCallContext)
  {
    executorStringQueryEntityCallContext = [(ExecutorSiriSchemaExecutorClientEvent *)self executorStringQueryEntityCallContext];
    dictionaryRepresentation7 = [executorStringQueryEntityCallContext dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"executorStringQueryEntityCallContext"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"executorStringQueryEntityCallContext"];
    }
  }

  if (self->_executorStringQueryEntityMatcherCallContext)
  {
    executorStringQueryEntityMatcherCallContext = [(ExecutorSiriSchemaExecutorClientEvent *)self executorStringQueryEntityMatcherCallContext];
    dictionaryRepresentation8 = [executorStringQueryEntityMatcherCallContext dictionaryRepresentation];
    if (dictionaryRepresentation8)
    {
      [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"executorStringQueryEntityMatcherCallContext"];
    }

    else
    {
      null8 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null8 forKeyedSubscript:@"executorStringQueryEntityMatcherCallContext"];
    }
  }

  if (self->_executorStringQueryLocationCallContext)
  {
    executorStringQueryLocationCallContext = [(ExecutorSiriSchemaExecutorClientEvent *)self executorStringQueryLocationCallContext];
    dictionaryRepresentation9 = [executorStringQueryLocationCallContext dictionaryRepresentation];
    if (dictionaryRepresentation9)
    {
      [dictionary setObject:dictionaryRepresentation9 forKeyedSubscript:@"executorStringQueryLocationCallContext"];
    }

    else
    {
      null9 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null9 forKeyedSubscript:@"executorStringQueryLocationCallContext"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_48;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [equalCopy whichEvent_Type])
  {
    goto LABEL_48;
  }

  eventMetadata = [(ExecutorSiriSchemaExecutorClientEvent *)self eventMetadata];
  eventMetadata2 = [equalCopy eventMetadata];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_47;
  }

  eventMetadata3 = [(ExecutorSiriSchemaExecutorClientEvent *)self eventMetadata];
  if (eventMetadata3)
  {
    v9 = eventMetadata3;
    eventMetadata4 = [(ExecutorSiriSchemaExecutorClientEvent *)self eventMetadata];
    eventMetadata5 = [equalCopy eventMetadata];
    v12 = [eventMetadata4 isEqual:eventMetadata5];

    if (!v12)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  eventMetadata = [(ExecutorSiriSchemaExecutorClientEvent *)self executorAppIntentCallContext];
  eventMetadata2 = [equalCopy executorAppIntentCallContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_47;
  }

  executorAppIntentCallContext = [(ExecutorSiriSchemaExecutorClientEvent *)self executorAppIntentCallContext];
  if (executorAppIntentCallContext)
  {
    v14 = executorAppIntentCallContext;
    executorAppIntentCallContext2 = [(ExecutorSiriSchemaExecutorClientEvent *)self executorAppIntentCallContext];
    executorAppIntentCallContext3 = [equalCopy executorAppIntentCallContext];
    v17 = [executorAppIntentCallContext2 isEqual:executorAppIntentCallContext3];

    if (!v17)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  eventMetadata = [(ExecutorSiriSchemaExecutorClientEvent *)self executorSearchToolQueryCallContext];
  eventMetadata2 = [equalCopy executorSearchToolQueryCallContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_47;
  }

  executorSearchToolQueryCallContext = [(ExecutorSiriSchemaExecutorClientEvent *)self executorSearchToolQueryCallContext];
  if (executorSearchToolQueryCallContext)
  {
    v19 = executorSearchToolQueryCallContext;
    executorSearchToolQueryCallContext2 = [(ExecutorSiriSchemaExecutorClientEvent *)self executorSearchToolQueryCallContext];
    executorSearchToolQueryCallContext3 = [equalCopy executorSearchToolQueryCallContext];
    v22 = [executorSearchToolQueryCallContext2 isEqual:executorSearchToolQueryCallContext3];

    if (!v22)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  eventMetadata = [(ExecutorSiriSchemaExecutorClientEvent *)self executorPersonQueryCallContext];
  eventMetadata2 = [equalCopy executorPersonQueryCallContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_47;
  }

  executorPersonQueryCallContext = [(ExecutorSiriSchemaExecutorClientEvent *)self executorPersonQueryCallContext];
  if (executorPersonQueryCallContext)
  {
    v24 = executorPersonQueryCallContext;
    executorPersonQueryCallContext2 = [(ExecutorSiriSchemaExecutorClientEvent *)self executorPersonQueryCallContext];
    executorPersonQueryCallContext3 = [equalCopy executorPersonQueryCallContext];
    v27 = [executorPersonQueryCallContext2 isEqual:executorPersonQueryCallContext3];

    if (!v27)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  eventMetadata = [(ExecutorSiriSchemaExecutorClientEvent *)self executorStringQueryLocationCallContext];
  eventMetadata2 = [equalCopy executorStringQueryLocationCallContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_47;
  }

  executorStringQueryLocationCallContext = [(ExecutorSiriSchemaExecutorClientEvent *)self executorStringQueryLocationCallContext];
  if (executorStringQueryLocationCallContext)
  {
    v29 = executorStringQueryLocationCallContext;
    executorStringQueryLocationCallContext2 = [(ExecutorSiriSchemaExecutorClientEvent *)self executorStringQueryLocationCallContext];
    executorStringQueryLocationCallContext3 = [equalCopy executorStringQueryLocationCallContext];
    v32 = [executorStringQueryLocationCallContext2 isEqual:executorStringQueryLocationCallContext3];

    if (!v32)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  eventMetadata = [(ExecutorSiriSchemaExecutorClientEvent *)self executorStringQueryEntityMatcherCallContext];
  eventMetadata2 = [equalCopy executorStringQueryEntityMatcherCallContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_47;
  }

  executorStringQueryEntityMatcherCallContext = [(ExecutorSiriSchemaExecutorClientEvent *)self executorStringQueryEntityMatcherCallContext];
  if (executorStringQueryEntityMatcherCallContext)
  {
    v34 = executorStringQueryEntityMatcherCallContext;
    executorStringQueryEntityMatcherCallContext2 = [(ExecutorSiriSchemaExecutorClientEvent *)self executorStringQueryEntityMatcherCallContext];
    executorStringQueryEntityMatcherCallContext3 = [equalCopy executorStringQueryEntityMatcherCallContext];
    v37 = [executorStringQueryEntityMatcherCallContext2 isEqual:executorStringQueryEntityMatcherCallContext3];

    if (!v37)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  eventMetadata = [(ExecutorSiriSchemaExecutorClientEvent *)self executorStringQueryEntityCallContext];
  eventMetadata2 = [equalCopy executorStringQueryEntityCallContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_47;
  }

  executorStringQueryEntityCallContext = [(ExecutorSiriSchemaExecutorClientEvent *)self executorStringQueryEntityCallContext];
  if (executorStringQueryEntityCallContext)
  {
    v39 = executorStringQueryEntityCallContext;
    executorStringQueryEntityCallContext2 = [(ExecutorSiriSchemaExecutorClientEvent *)self executorStringQueryEntityCallContext];
    executorStringQueryEntityCallContext3 = [equalCopy executorStringQueryEntityCallContext];
    v42 = [executorStringQueryEntityCallContext2 isEqual:executorStringQueryEntityCallContext3];

    if (!v42)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  eventMetadata = [(ExecutorSiriSchemaExecutorClientEvent *)self executorIdentifierQueryCallContext];
  eventMetadata2 = [equalCopy executorIdentifierQueryCallContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_47;
  }

  executorIdentifierQueryCallContext = [(ExecutorSiriSchemaExecutorClientEvent *)self executorIdentifierQueryCallContext];
  if (executorIdentifierQueryCallContext)
  {
    v44 = executorIdentifierQueryCallContext;
    executorIdentifierQueryCallContext2 = [(ExecutorSiriSchemaExecutorClientEvent *)self executorIdentifierQueryCallContext];
    executorIdentifierQueryCallContext3 = [equalCopy executorIdentifierQueryCallContext];
    v47 = [executorIdentifierQueryCallContext2 isEqual:executorIdentifierQueryCallContext3];

    if (!v47)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  eventMetadata = [(ExecutorSiriSchemaExecutorClientEvent *)self executorRequestContext];
  eventMetadata2 = [equalCopy executorRequestContext];
  if ((eventMetadata != 0) != (eventMetadata2 == 0))
  {
    executorRequestContext = [(ExecutorSiriSchemaExecutorClientEvent *)self executorRequestContext];
    if (!executorRequestContext)
    {

LABEL_51:
      v53 = 1;
      goto LABEL_49;
    }

    v49 = executorRequestContext;
    executorRequestContext2 = [(ExecutorSiriSchemaExecutorClientEvent *)self executorRequestContext];
    executorRequestContext3 = [equalCopy executorRequestContext];
    v52 = [executorRequestContext2 isEqual:executorRequestContext3];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  eventMetadata = [(ExecutorSiriSchemaExecutorClientEvent *)self eventMetadata];

  if (eventMetadata)
  {
    eventMetadata2 = [(ExecutorSiriSchemaExecutorClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  executorAppIntentCallContext = [(ExecutorSiriSchemaExecutorClientEvent *)self executorAppIntentCallContext];

  if (executorAppIntentCallContext)
  {
    executorAppIntentCallContext2 = [(ExecutorSiriSchemaExecutorClientEvent *)self executorAppIntentCallContext];
    PBDataWriterWriteSubmessage();
  }

  executorSearchToolQueryCallContext = [(ExecutorSiriSchemaExecutorClientEvent *)self executorSearchToolQueryCallContext];

  if (executorSearchToolQueryCallContext)
  {
    executorSearchToolQueryCallContext2 = [(ExecutorSiriSchemaExecutorClientEvent *)self executorSearchToolQueryCallContext];
    PBDataWriterWriteSubmessage();
  }

  executorPersonQueryCallContext = [(ExecutorSiriSchemaExecutorClientEvent *)self executorPersonQueryCallContext];

  if (executorPersonQueryCallContext)
  {
    executorPersonQueryCallContext2 = [(ExecutorSiriSchemaExecutorClientEvent *)self executorPersonQueryCallContext];
    PBDataWriterWriteSubmessage();
  }

  executorStringQueryLocationCallContext = [(ExecutorSiriSchemaExecutorClientEvent *)self executorStringQueryLocationCallContext];

  if (executorStringQueryLocationCallContext)
  {
    executorStringQueryLocationCallContext2 = [(ExecutorSiriSchemaExecutorClientEvent *)self executorStringQueryLocationCallContext];
    PBDataWriterWriteSubmessage();
  }

  executorStringQueryEntityMatcherCallContext = [(ExecutorSiriSchemaExecutorClientEvent *)self executorStringQueryEntityMatcherCallContext];

  if (executorStringQueryEntityMatcherCallContext)
  {
    executorStringQueryEntityMatcherCallContext2 = [(ExecutorSiriSchemaExecutorClientEvent *)self executorStringQueryEntityMatcherCallContext];
    PBDataWriterWriteSubmessage();
  }

  executorStringQueryEntityCallContext = [(ExecutorSiriSchemaExecutorClientEvent *)self executorStringQueryEntityCallContext];

  if (executorStringQueryEntityCallContext)
  {
    executorStringQueryEntityCallContext2 = [(ExecutorSiriSchemaExecutorClientEvent *)self executorStringQueryEntityCallContext];
    PBDataWriterWriteSubmessage();
  }

  executorIdentifierQueryCallContext = [(ExecutorSiriSchemaExecutorClientEvent *)self executorIdentifierQueryCallContext];

  if (executorIdentifierQueryCallContext)
  {
    executorIdentifierQueryCallContext2 = [(ExecutorSiriSchemaExecutorClientEvent *)self executorIdentifierQueryCallContext];
    PBDataWriterWriteSubmessage();
  }

  executorRequestContext = [(ExecutorSiriSchemaExecutorClientEvent *)self executorRequestContext];

  v21 = toCopy;
  if (executorRequestContext)
  {
    executorRequestContext2 = [(ExecutorSiriSchemaExecutorClientEvent *)self executorRequestContext];
    PBDataWriterWriteSubmessage();

    v21 = toCopy;
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

- (void)setExecutorRequestContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  executorRequestContext = self->_executorRequestContext;
  self->_executorRequestContext = contextCopy;
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

- (void)setExecutorIdentifierQueryCallContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  executorIdentifierQueryCallContext = self->_executorIdentifierQueryCallContext;
  self->_executorIdentifierQueryCallContext = contextCopy;
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

- (void)setExecutorStringQueryEntityCallContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  executorStringQueryEntityCallContext = self->_executorStringQueryEntityCallContext;
  self->_executorStringQueryEntityCallContext = contextCopy;
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

- (void)setExecutorStringQueryEntityMatcherCallContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  executorStringQueryEntityMatcherCallContext = self->_executorStringQueryEntityMatcherCallContext;
  self->_executorStringQueryEntityMatcherCallContext = contextCopy;
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

- (void)setExecutorStringQueryLocationCallContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  executorStringQueryLocationCallContext = self->_executorStringQueryLocationCallContext;
  self->_executorStringQueryLocationCallContext = contextCopy;
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

- (void)setExecutorPersonQueryCallContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  executorPersonQueryCallContext = self->_executorPersonQueryCallContext;
  self->_executorPersonQueryCallContext = contextCopy;
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

- (void)setExecutorSearchToolQueryCallContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  executorSearchToolQueryCallContext = self->_executorSearchToolQueryCallContext;
  self->_executorSearchToolQueryCallContext = contextCopy;
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

- (void)setExecutorAppIntentCallContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  executorAppIntentCallContext = self->_executorAppIntentCallContext;
  self->_executorAppIntentCallContext = contextCopy;
}

- (id)qualifiedMessageName
{
  whichEvent_Type = [(ExecutorSiriSchemaExecutorClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 50 > 7)
  {
    return @"com.apple.aiml.siri.executor.ExecutorClientEvent";
  }

  else
  {
    return off_1E78D4820[whichEvent_Type - 50];
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v34.receiver = self;
  v34.super_class = ExecutorSiriSchemaExecutorClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v34 applySensitiveConditionsPolicy:policyCopy];
  eventMetadata = [(ExecutorSiriSchemaExecutorClientEvent *)self eventMetadata];
  v7 = [eventMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(ExecutorSiriSchemaExecutorClientEvent *)self deleteEventMetadata];
  }

  executorAppIntentCallContext = [(ExecutorSiriSchemaExecutorClientEvent *)self executorAppIntentCallContext];
  v10 = [executorAppIntentCallContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(ExecutorSiriSchemaExecutorClientEvent *)self deleteExecutorAppIntentCallContext];
  }

  executorSearchToolQueryCallContext = [(ExecutorSiriSchemaExecutorClientEvent *)self executorSearchToolQueryCallContext];
  v13 = [executorSearchToolQueryCallContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(ExecutorSiriSchemaExecutorClientEvent *)self deleteExecutorSearchToolQueryCallContext];
  }

  executorPersonQueryCallContext = [(ExecutorSiriSchemaExecutorClientEvent *)self executorPersonQueryCallContext];
  v16 = [executorPersonQueryCallContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(ExecutorSiriSchemaExecutorClientEvent *)self deleteExecutorPersonQueryCallContext];
  }

  executorStringQueryLocationCallContext = [(ExecutorSiriSchemaExecutorClientEvent *)self executorStringQueryLocationCallContext];
  v19 = [executorStringQueryLocationCallContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(ExecutorSiriSchemaExecutorClientEvent *)self deleteExecutorStringQueryLocationCallContext];
  }

  executorStringQueryEntityMatcherCallContext = [(ExecutorSiriSchemaExecutorClientEvent *)self executorStringQueryEntityMatcherCallContext];
  v22 = [executorStringQueryEntityMatcherCallContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage6 = [v22 suppressMessage];

  if (suppressMessage6)
  {
    [(ExecutorSiriSchemaExecutorClientEvent *)self deleteExecutorStringQueryEntityMatcherCallContext];
  }

  executorStringQueryEntityCallContext = [(ExecutorSiriSchemaExecutorClientEvent *)self executorStringQueryEntityCallContext];
  v25 = [executorStringQueryEntityCallContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage7 = [v25 suppressMessage];

  if (suppressMessage7)
  {
    [(ExecutorSiriSchemaExecutorClientEvent *)self deleteExecutorStringQueryEntityCallContext];
  }

  executorIdentifierQueryCallContext = [(ExecutorSiriSchemaExecutorClientEvent *)self executorIdentifierQueryCallContext];
  v28 = [executorIdentifierQueryCallContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage8 = [v28 suppressMessage];

  if (suppressMessage8)
  {
    [(ExecutorSiriSchemaExecutorClientEvent *)self deleteExecutorIdentifierQueryCallContext];
  }

  executorRequestContext = [(ExecutorSiriSchemaExecutorClientEvent *)self executorRequestContext];
  v31 = [executorRequestContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage9 = [v31 suppressMessage];

  if (suppressMessage9)
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
  eventMetadata = [(ExecutorSiriSchemaExecutorClientEvent *)self eventMetadata];
  ifRequestId = [eventMetadata ifRequestId];

  if (ifRequestId && ([ifRequestId value], (v5 = objc_claimAutoreleasedReturnValue()) != 0) && (v6 = v5, objc_msgSend(ifRequestId, "value"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, v6, v8))
  {
    v9 = 45;
  }

  else
  {
    eventMetadata2 = [(ExecutorSiriSchemaExecutorClientEvent *)self eventMetadata];
    executorId = [eventMetadata2 executorId];

    if (executorId)
    {
      value = [executorId value];
      if (value)
      {
        v13 = value;
        value2 = [executorId value];
        v15 = [value2 length];

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

      ifRequestId = executorId;
    }

    else
    {
      v9 = 0;
      ifRequestId = 0;
    }
  }

  return v9;
}

- (id)getComponentId
{
  eventMetadata = [(ExecutorSiriSchemaExecutorClientEvent *)self eventMetadata];
  ifRequestId = [eventMetadata ifRequestId];

  if (ifRequestId)
  {
    value = [ifRequestId value];
    if (value)
    {
      v6 = value;
      value2 = [ifRequestId value];
      v8 = [value2 length];

      if (v8)
      {
        goto LABEL_8;
      }
    }
  }

  eventMetadata2 = [(ExecutorSiriSchemaExecutorClientEvent *)self eventMetadata];
  executorId = [eventMetadata2 executorId];

  if (executorId)
  {
    value3 = [executorId value];
    if (!value3)
    {
      goto LABEL_10;
    }

    value4 = [executorId value];
    v13 = [value4 length];

    if (v13)
    {
      ifRequestId = executorId;
LABEL_8:
      value3 = ifRequestId;
      executorId = value3;
      goto LABEL_10;
    }
  }

  value3 = 0;
LABEL_10:

  return value3;
}

- (SISchemaInstrumentationMessage)innerEvent
{
  whichEvent_Type = [(ExecutorSiriSchemaExecutorClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 50 > 7)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78E9628[whichEvent_Type - 50]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)tag
{
  if (tag - 50 > 7)
  {
    return 0;
  }

  else
  {
    return off_1E78E9668[tag - 50];
  }
}

@end