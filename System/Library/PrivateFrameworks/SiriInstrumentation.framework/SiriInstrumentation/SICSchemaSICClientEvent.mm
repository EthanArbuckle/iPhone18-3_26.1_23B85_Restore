@interface SICSchemaSICClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SICSchemaSICClientEvent)initWithDictionary:(id)dictionary;
- (SICSchemaSICClientEvent)initWithJSON:(id)n;
- (SICSchemaSICInvocationContext)siriInCallInvocationContext;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)componentName;
- (void)deleteSiriInCallInvocationContext;
- (void)setSiriInCallInvocationContext:(id)context;
- (void)writeTo:(id)to;
@end

@implementation SICSchemaSICClientEvent

- (SICSchemaSICClientEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = SICSchemaSICClientEvent;
  v5 = [(SICSchemaSICClientEvent *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SICSchemaSICClientEventMetadata alloc] initWithDictionary:v6];
      [(SICSchemaSICClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"siriInCallInvocationContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SICSchemaSICInvocationContext alloc] initWithDictionary:v8];
      [(SICSchemaSICClientEvent *)v5 setSiriInCallInvocationContext:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (SICSchemaSICClientEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SICSchemaSICClientEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SICSchemaSICClientEvent *)self dictionaryRepresentation];
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
    eventMetadata = [(SICSchemaSICClientEvent *)self eventMetadata];
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

  if (self->_siriInCallInvocationContext)
  {
    siriInCallInvocationContext = [(SICSchemaSICClientEvent *)self siriInCallInvocationContext];
    dictionaryRepresentation2 = [siriInCallInvocationContext dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"siriInCallInvocationContext"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"siriInCallInvocationContext"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [equalCopy whichEvent_Type])
  {
    goto LABEL_13;
  }

  eventMetadata = [(SICSchemaSICClientEvent *)self eventMetadata];
  eventMetadata2 = [equalCopy eventMetadata];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_12;
  }

  eventMetadata3 = [(SICSchemaSICClientEvent *)self eventMetadata];
  if (eventMetadata3)
  {
    v9 = eventMetadata3;
    eventMetadata4 = [(SICSchemaSICClientEvent *)self eventMetadata];
    eventMetadata5 = [equalCopy eventMetadata];
    v12 = [eventMetadata4 isEqual:eventMetadata5];

    if (!v12)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  eventMetadata = [(SICSchemaSICClientEvent *)self siriInCallInvocationContext];
  eventMetadata2 = [equalCopy siriInCallInvocationContext];
  if ((eventMetadata != 0) != (eventMetadata2 == 0))
  {
    siriInCallInvocationContext = [(SICSchemaSICClientEvent *)self siriInCallInvocationContext];
    if (!siriInCallInvocationContext)
    {

LABEL_16:
      v18 = 1;
      goto LABEL_14;
    }

    v14 = siriInCallInvocationContext;
    siriInCallInvocationContext2 = [(SICSchemaSICClientEvent *)self siriInCallInvocationContext];
    siriInCallInvocationContext3 = [equalCopy siriInCallInvocationContext];
    v17 = [siriInCallInvocationContext2 isEqual:siriInCallInvocationContext3];

    if (v17)
    {
      goto LABEL_16;
    }
  }

  else
  {
LABEL_12:
  }

LABEL_13:
  v18 = 0;
LABEL_14:

  return v18;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  eventMetadata = [(SICSchemaSICClientEvent *)self eventMetadata];

  if (eventMetadata)
  {
    eventMetadata2 = [(SICSchemaSICClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  siriInCallInvocationContext = [(SICSchemaSICClientEvent *)self siriInCallInvocationContext];

  if (siriInCallInvocationContext)
  {
    siriInCallInvocationContext2 = [(SICSchemaSICClientEvent *)self siriInCallInvocationContext];
    PBDataWriterWriteSubmessage();
  }
}

- (void)deleteSiriInCallInvocationContext
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    self->_siriInCallInvocationContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (SICSchemaSICInvocationContext)siriInCallInvocationContext
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_siriInCallInvocationContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSiriInCallInvocationContext:(id)context
{
  v3 = 101;
  if (!context)
  {
    v3 = 0;
  }

  self->_whichEvent_Type = v3;
  objc_storeStrong(&self->_siriInCallInvocationContext, context);
}

- (id)qualifiedMessageName
{
  if ([(SICSchemaSICClientEvent *)self whichEvent_Type]== 101)
  {
    return @"com.apple.aiml.siri.sic.SICClientEvent.SICInvocationContext";
  }

  else
  {
    return @"com.apple.aiml.siri.sic.SICClientEvent";
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = SICSchemaSICClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  eventMetadata = [(SICSchemaSICClientEvent *)self eventMetadata];
  v7 = [eventMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(SICSchemaSICClientEvent *)self deleteEventMetadata];
  }

  siriInCallInvocationContext = [(SICSchemaSICClientEvent *)self siriInCallInvocationContext];
  v10 = [siriInCallInvocationContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(SICSchemaSICClientEvent *)self deleteSiriInCallInvocationContext];
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
  eventMetadata = [(SICSchemaSICClientEvent *)self eventMetadata];
  sicId = [eventMetadata sicId];

  if (sicId && ([sicId value], (v5 = objc_claimAutoreleasedReturnValue()) != 0) && (v6 = v5, objc_msgSend(sicId, "value"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, v6, v8))
  {
    v9 = 29;
  }

  else
  {
    eventMetadata2 = [(SICSchemaSICClientEvent *)self eventMetadata];
    requestId = [eventMetadata2 requestId];

    if (requestId)
    {
      value = [requestId value];
      if (value)
      {
        v13 = value;
        value2 = [requestId value];
        v9 = [value2 length] != 0;
      }

      else
      {
        v9 = 0;
      }

      sicId = requestId;
    }

    else
    {
      v9 = 0;
      sicId = 0;
    }
  }

  return v9;
}

- (id)getComponentId
{
  eventMetadata = [(SICSchemaSICClientEvent *)self eventMetadata];
  sicId = [eventMetadata sicId];

  if (sicId)
  {
    value = [sicId value];
    if (value)
    {
      v6 = value;
      value2 = [sicId value];
      v8 = [value2 length];

      if (v8)
      {
        goto LABEL_8;
      }
    }
  }

  eventMetadata2 = [(SICSchemaSICClientEvent *)self eventMetadata];
  requestId = [eventMetadata2 requestId];

  if (requestId)
  {
    value3 = [requestId value];
    if (!value3)
    {
      goto LABEL_10;
    }

    value4 = [requestId value];
    v13 = [value4 length];

    if (v13)
    {
      sicId = requestId;
LABEL_8:
      value3 = sicId;
      requestId = value3;
      goto LABEL_10;
    }
  }

  value3 = 0;
LABEL_10:

  return value3;
}

- (SISchemaInstrumentationMessage)innerEvent
{
  if ([(SICSchemaSICClientEvent *)self whichEvent_Type]== 101)
  {
    v3 = self->_siriInCallInvocationContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)getInnerTypeStringByTag:(unint64_t)tag
{
  if (tag == 101)
  {
    return @"siriInCallInvocationContext";
  }

  else
  {
    return 0;
  }
}

@end