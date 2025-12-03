@interface SRSTSchemaSRSTClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (SRSTSchemaSRSTClientEvent)initWithDictionary:(id)dictionary;
- (SRSTSchemaSRSTClientEvent)initWithJSON:(id)n;
- (SRSTSchemaSRSTStateTransitionEvent)stateTransitionEvent;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)componentName;
- (void)deleteStateTransitionEvent;
- (void)setStateTransitionEvent:(id)event;
- (void)writeTo:(id)to;
@end

@implementation SRSTSchemaSRSTClientEvent

- (SRSTSchemaSRSTClientEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = SRSTSchemaSRSTClientEvent;
  v5 = [(SRSTSchemaSRSTClientEvent *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SRSTSchemaSRSTClientEventMetadata alloc] initWithDictionary:v6];
      [(SRSTSchemaSRSTClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"stateTransitionEvent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SRSTSchemaSRSTStateTransitionEvent alloc] initWithDictionary:v8];
      [(SRSTSchemaSRSTClientEvent *)v5 setStateTransitionEvent:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (SRSTSchemaSRSTClientEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SRSTSchemaSRSTClientEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SRSTSchemaSRSTClientEvent *)self dictionaryRepresentation];
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
    eventMetadata = [(SRSTSchemaSRSTClientEvent *)self eventMetadata];
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

  if (self->_stateTransitionEvent)
  {
    stateTransitionEvent = [(SRSTSchemaSRSTClientEvent *)self stateTransitionEvent];
    dictionaryRepresentation2 = [stateTransitionEvent dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"stateTransitionEvent"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"stateTransitionEvent"];
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

  eventMetadata = [(SRSTSchemaSRSTClientEvent *)self eventMetadata];
  eventMetadata2 = [equalCopy eventMetadata];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_12;
  }

  eventMetadata3 = [(SRSTSchemaSRSTClientEvent *)self eventMetadata];
  if (eventMetadata3)
  {
    v9 = eventMetadata3;
    eventMetadata4 = [(SRSTSchemaSRSTClientEvent *)self eventMetadata];
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

  eventMetadata = [(SRSTSchemaSRSTClientEvent *)self stateTransitionEvent];
  eventMetadata2 = [equalCopy stateTransitionEvent];
  if ((eventMetadata != 0) != (eventMetadata2 == 0))
  {
    stateTransitionEvent = [(SRSTSchemaSRSTClientEvent *)self stateTransitionEvent];
    if (!stateTransitionEvent)
    {

LABEL_16:
      v18 = 1;
      goto LABEL_14;
    }

    v14 = stateTransitionEvent;
    stateTransitionEvent2 = [(SRSTSchemaSRSTClientEvent *)self stateTransitionEvent];
    stateTransitionEvent3 = [equalCopy stateTransitionEvent];
    v17 = [stateTransitionEvent2 isEqual:stateTransitionEvent3];

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
  eventMetadata = [(SRSTSchemaSRSTClientEvent *)self eventMetadata];

  if (eventMetadata)
  {
    eventMetadata2 = [(SRSTSchemaSRSTClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  stateTransitionEvent = [(SRSTSchemaSRSTClientEvent *)self stateTransitionEvent];

  if (stateTransitionEvent)
  {
    stateTransitionEvent2 = [(SRSTSchemaSRSTClientEvent *)self stateTransitionEvent];
    PBDataWriterWriteSubmessage();
  }
}

- (void)deleteStateTransitionEvent
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    self->_stateTransitionEvent = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (SRSTSchemaSRSTStateTransitionEvent)stateTransitionEvent
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_stateTransitionEvent;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setStateTransitionEvent:(id)event
{
  v3 = 101;
  if (!event)
  {
    v3 = 0;
  }

  self->_whichEvent_Type = v3;
  objc_storeStrong(&self->_stateTransitionEvent, event);
}

- (id)qualifiedMessageName
{
  if ([(SRSTSchemaSRSTClientEvent *)self whichEvent_Type]== 101)
  {
    return @"com.apple.aiml.siri.srst.SRSTClientEvent.SRSTStateTransitionEvent";
  }

  else
  {
    return @"com.apple.aiml.siri.srst.SRSTClientEvent";
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = SRSTSchemaSRSTClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  eventMetadata = [(SRSTSchemaSRSTClientEvent *)self eventMetadata];
  v7 = [eventMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(SRSTSchemaSRSTClientEvent *)self deleteEventMetadata];
  }

  stateTransitionEvent = [(SRSTSchemaSRSTClientEvent *)self stateTransitionEvent];
  v10 = [stateTransitionEvent applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(SRSTSchemaSRSTClientEvent *)self deleteStateTransitionEvent];
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
  eventMetadata = [(SRSTSchemaSRSTClientEvent *)self eventMetadata];
  srstId = [eventMetadata srstId];

  if (srstId)
  {
    value = [srstId value];
    if (value)
    {
      value2 = [srstId value];
      v6 = [value2 length];

      if (v6)
      {
        LODWORD(value) = 20;
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

  return value;
}

- (id)getComponentId
{
  eventMetadata = [(SRSTSchemaSRSTClientEvent *)self eventMetadata];
  srstId = [eventMetadata srstId];

  if (!srstId)
  {
    goto LABEL_5;
  }

  value = [srstId value];
  if (!value)
  {
    goto LABEL_6;
  }

  value2 = [srstId value];
  v6 = [value2 length];

  if (v6)
  {
    value = srstId;
  }

  else
  {
LABEL_5:
    value = 0;
  }

LABEL_6:

  return value;
}

- (SISchemaInstrumentationMessage)innerEvent
{
  if ([(SRSTSchemaSRSTClientEvent *)self whichEvent_Type]== 101)
  {
    v3 = self->_stateTransitionEvent;
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
    return @"stateTransitionEvent";
  }

  else
  {
    return 0;
  }
}

@end