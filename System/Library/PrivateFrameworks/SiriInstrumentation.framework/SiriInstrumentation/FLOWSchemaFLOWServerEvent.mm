@interface FLOWSchemaFLOWServerEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (BOOL)isEqual:(id)equal;
- (FLOWSchemaFLOWServerEvent)initWithDictionary:(id)dictionary;
- (FLOWSchemaFLOWServerEvent)initWithJSON:(id)n;
- (FLOWSchemaFLOWStep)flowStep;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)componentName;
- (void)deleteFlowStep;
- (void)setFlowStep:(id)step;
- (void)writeTo:(id)to;
@end

@implementation FLOWSchemaFLOWServerEvent

- (FLOWSchemaFLOWServerEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = FLOWSchemaFLOWServerEvent;
  v5 = [(FLOWSchemaFLOWServerEvent *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[FLOWSchemaFLOWEventMetadata alloc] initWithDictionary:v6];
      [(FLOWSchemaFLOWServerEvent *)v5 setEventMetadata:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"flowStep"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[FLOWSchemaFLOWStep alloc] initWithDictionary:v8];
      [(FLOWSchemaFLOWServerEvent *)v5 setFlowStep:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (FLOWSchemaFLOWServerEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(FLOWSchemaFLOWServerEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(FLOWSchemaFLOWServerEvent *)self dictionaryRepresentation];
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
    eventMetadata = [(FLOWSchemaFLOWServerEvent *)self eventMetadata];
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

  if (self->_flowStep)
  {
    flowStep = [(FLOWSchemaFLOWServerEvent *)self flowStep];
    dictionaryRepresentation2 = [flowStep dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"flowStep"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"flowStep"];
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

  eventMetadata = [(FLOWSchemaFLOWServerEvent *)self eventMetadata];
  eventMetadata2 = [equalCopy eventMetadata];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_12;
  }

  eventMetadata3 = [(FLOWSchemaFLOWServerEvent *)self eventMetadata];
  if (eventMetadata3)
  {
    v9 = eventMetadata3;
    eventMetadata4 = [(FLOWSchemaFLOWServerEvent *)self eventMetadata];
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

  eventMetadata = [(FLOWSchemaFLOWServerEvent *)self flowStep];
  eventMetadata2 = [equalCopy flowStep];
  if ((eventMetadata != 0) != (eventMetadata2 == 0))
  {
    flowStep = [(FLOWSchemaFLOWServerEvent *)self flowStep];
    if (!flowStep)
    {

LABEL_16:
      v18 = 1;
      goto LABEL_14;
    }

    v14 = flowStep;
    flowStep2 = [(FLOWSchemaFLOWServerEvent *)self flowStep];
    flowStep3 = [equalCopy flowStep];
    v17 = [flowStep2 isEqual:flowStep3];

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
  eventMetadata = [(FLOWSchemaFLOWServerEvent *)self eventMetadata];

  if (eventMetadata)
  {
    eventMetadata2 = [(FLOWSchemaFLOWServerEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  flowStep = [(FLOWSchemaFLOWServerEvent *)self flowStep];

  if (flowStep)
  {
    flowStep2 = [(FLOWSchemaFLOWServerEvent *)self flowStep];
    PBDataWriterWriteSubmessage();
  }
}

- (void)deleteFlowStep
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    self->_flowStep = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (FLOWSchemaFLOWStep)flowStep
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_flowStep;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setFlowStep:(id)step
{
  v3 = 101;
  if (!step)
  {
    v3 = 0;
  }

  self->_whichEvent_Type = v3;
  objc_storeStrong(&self->_flowStep, step);
}

- (id)qualifiedMessageName
{
  if ([(FLOWSchemaFLOWServerEvent *)self whichEvent_Type]== 101)
  {
    return @"com.apple.aiml.siri.flow.FLOWServerEvent.FLOWStep";
  }

  else
  {
    return @"com.apple.aiml.siri.flow.FLOWServerEvent";
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = FLOWSchemaFLOWServerEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  eventMetadata = [(FLOWSchemaFLOWServerEvent *)self eventMetadata];
  v7 = [eventMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(FLOWSchemaFLOWServerEvent *)self deleteEventMetadata];
  }

  flowStep = [(FLOWSchemaFLOWServerEvent *)self flowStep];
  v10 = [flowStep applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(FLOWSchemaFLOWServerEvent *)self deleteFlowStep];
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
  eventMetadata = [(FLOWSchemaFLOWServerEvent *)self eventMetadata];
  flowId = [eventMetadata flowId];

  if (flowId && ([flowId value], (v5 = objc_claimAutoreleasedReturnValue()) != 0) && (v6 = v5, objc_msgSend(flowId, "value"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, v6, v8))
  {
    LODWORD(value) = 3;
  }

  else
  {
    eventMetadata2 = [(FLOWSchemaFLOWServerEvent *)self eventMetadata];
    requestId = [eventMetadata2 requestId];

    if (requestId && ([requestId value], (v12 = objc_claimAutoreleasedReturnValue()) != 0) && (v13 = v12, objc_msgSend(requestId, "value"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "length"), v14, v13, v15))
    {
      LODWORD(value) = 1;
      flowId = requestId;
    }

    else
    {
      eventMetadata3 = [(FLOWSchemaFLOWServerEvent *)self eventMetadata];
      flowId = [eventMetadata3 subRequestId];

      if (flowId)
      {
        value = [flowId value];
        if (value)
        {
          value2 = [flowId value];
          v18 = [value2 length];

          if (v18)
          {
            LODWORD(value) = 43;
          }

          else
          {
            LODWORD(value) = 0;
          }
        }
      }

      else
      {
        LODWORD(value) = 0;
      }
    }
  }

  return value;
}

- (id)getComponentId
{
  eventMetadata = [(FLOWSchemaFLOWServerEvent *)self eventMetadata];
  flowId = [eventMetadata flowId];

  if (flowId)
  {
    value = [flowId value];
    if (value)
    {
      v6 = value;
      value2 = [flowId value];
      v8 = [value2 length];

      if (v8)
      {
        goto LABEL_11;
      }
    }
  }

  eventMetadata2 = [(FLOWSchemaFLOWServerEvent *)self eventMetadata];
  requestId = [eventMetadata2 requestId];

  if (requestId)
  {
    value3 = [requestId value];
    if (value3)
    {
      v12 = value3;
      value4 = [requestId value];
      v14 = [value4 length];

      if (v14)
      {
        flowId = requestId;
LABEL_11:
        value5 = flowId;
        flowId = value5;
        goto LABEL_13;
      }
    }
  }

  eventMetadata3 = [(FLOWSchemaFLOWServerEvent *)self eventMetadata];
  flowId = [eventMetadata3 subRequestId];

  if (flowId)
  {
    value5 = [flowId value];
    if (!value5)
    {
      goto LABEL_13;
    }

    value6 = [flowId value];
    v18 = [value6 length];

    if (v18)
    {
      goto LABEL_11;
    }
  }

  value5 = 0;
LABEL_13:

  return value5;
}

- (SISchemaInstrumentationMessage)innerEvent
{
  if ([(FLOWSchemaFLOWServerEvent *)self whichEvent_Type]== 101)
  {
    v3 = self->_flowStep;
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
    return @"flowStep";
  }

  else
  {
    return 0;
  }
}

@end