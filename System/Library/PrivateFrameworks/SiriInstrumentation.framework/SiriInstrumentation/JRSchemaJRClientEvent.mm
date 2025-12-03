@interface JRSchemaJRClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (BOOL)isEqual:(id)equal;
- (JRSchemaJRClientEvent)initWithDictionary:(id)dictionary;
- (JRSchemaJRClientEvent)initWithJSON:(id)n;
- (JRSchemaJRExperimentTriggered)jrExperimentTriggered;
- (JRSchemaJRInferenceContext)jrInferenceContext;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)componentName;
- (unint64_t)hash;
- (void)deleteJrExperimentTriggered;
- (void)deleteJrInferenceContext;
- (void)setJrExperimentTriggered:(id)triggered;
- (void)setJrInferenceContext:(id)context;
- (void)writeTo:(id)to;
@end

@implementation JRSchemaJRClientEvent

- (JRSchemaJRClientEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = JRSchemaJRClientEvent;
  v5 = [(JRSchemaJRClientEvent *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[JRSchemaJRClientEventMetadata alloc] initWithDictionary:v6];
      [(JRSchemaJRClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"jrInferenceContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[JRSchemaJRInferenceContext alloc] initWithDictionary:v8];
      [(JRSchemaJRClientEvent *)v5 setJrInferenceContext:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"jrExperimentTriggered"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[JRSchemaJRExperimentTriggered alloc] initWithDictionary:v10];
      [(JRSchemaJRClientEvent *)v5 setJrExperimentTriggered:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (JRSchemaJRClientEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(JRSchemaJRClientEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(JRSchemaJRClientEvent *)self dictionaryRepresentation];
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
    eventMetadata = [(JRSchemaJRClientEvent *)self eventMetadata];
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

  if (self->_jrExperimentTriggered)
  {
    jrExperimentTriggered = [(JRSchemaJRClientEvent *)self jrExperimentTriggered];
    dictionaryRepresentation2 = [jrExperimentTriggered dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"jrExperimentTriggered"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"jrExperimentTriggered"];
    }
  }

  if (self->_jrInferenceContext)
  {
    jrInferenceContext = [(JRSchemaJRClientEvent *)self jrInferenceContext];
    dictionaryRepresentation3 = [jrInferenceContext dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"jrInferenceContext"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"jrInferenceContext"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(JRSchemaJRClientEventMetadata *)self->_eventMetadata hash];
  v4 = [(JRSchemaJRInferenceContext *)self->_jrInferenceContext hash]^ v3;
  return v4 ^ [(JRSchemaJRExperimentTriggered *)self->_jrExperimentTriggered hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [equalCopy whichEvent_Type])
  {
    goto LABEL_18;
  }

  eventMetadata = [(JRSchemaJRClientEvent *)self eventMetadata];
  eventMetadata2 = [equalCopy eventMetadata];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_17;
  }

  eventMetadata3 = [(JRSchemaJRClientEvent *)self eventMetadata];
  if (eventMetadata3)
  {
    v9 = eventMetadata3;
    eventMetadata4 = [(JRSchemaJRClientEvent *)self eventMetadata];
    eventMetadata5 = [equalCopy eventMetadata];
    v12 = [eventMetadata4 isEqual:eventMetadata5];

    if (!v12)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  eventMetadata = [(JRSchemaJRClientEvent *)self jrInferenceContext];
  eventMetadata2 = [equalCopy jrInferenceContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_17;
  }

  jrInferenceContext = [(JRSchemaJRClientEvent *)self jrInferenceContext];
  if (jrInferenceContext)
  {
    v14 = jrInferenceContext;
    jrInferenceContext2 = [(JRSchemaJRClientEvent *)self jrInferenceContext];
    jrInferenceContext3 = [equalCopy jrInferenceContext];
    v17 = [jrInferenceContext2 isEqual:jrInferenceContext3];

    if (!v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  eventMetadata = [(JRSchemaJRClientEvent *)self jrExperimentTriggered];
  eventMetadata2 = [equalCopy jrExperimentTriggered];
  if ((eventMetadata != 0) != (eventMetadata2 == 0))
  {
    jrExperimentTriggered = [(JRSchemaJRClientEvent *)self jrExperimentTriggered];
    if (!jrExperimentTriggered)
    {

LABEL_21:
      v23 = 1;
      goto LABEL_19;
    }

    v19 = jrExperimentTriggered;
    jrExperimentTriggered2 = [(JRSchemaJRClientEvent *)self jrExperimentTriggered];
    jrExperimentTriggered3 = [equalCopy jrExperimentTriggered];
    v22 = [jrExperimentTriggered2 isEqual:jrExperimentTriggered3];

    if (v22)
    {
      goto LABEL_21;
    }
  }

  else
  {
LABEL_17:
  }

LABEL_18:
  v23 = 0;
LABEL_19:

  return v23;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  eventMetadata = [(JRSchemaJRClientEvent *)self eventMetadata];

  if (eventMetadata)
  {
    eventMetadata2 = [(JRSchemaJRClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  jrInferenceContext = [(JRSchemaJRClientEvent *)self jrInferenceContext];

  if (jrInferenceContext)
  {
    jrInferenceContext2 = [(JRSchemaJRClientEvent *)self jrInferenceContext];
    PBDataWriterWriteSubmessage();
  }

  jrExperimentTriggered = [(JRSchemaJRClientEvent *)self jrExperimentTriggered];

  v9 = toCopy;
  if (jrExperimentTriggered)
  {
    jrExperimentTriggered2 = [(JRSchemaJRClientEvent *)self jrExperimentTriggered];
    PBDataWriterWriteSubmessage();

    v9 = toCopy;
  }
}

- (void)deleteJrExperimentTriggered
{
  if (self->_whichEvent_Type == 102)
  {
    self->_whichEvent_Type = 0;
    self->_jrExperimentTriggered = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (JRSchemaJRExperimentTriggered)jrExperimentTriggered
{
  if (self->_whichEvent_Type == 102)
  {
    v3 = self->_jrExperimentTriggered;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setJrExperimentTriggered:(id)triggered
{
  triggeredCopy = triggered;
  jrInferenceContext = self->_jrInferenceContext;
  self->_jrInferenceContext = 0;

  v6 = 102;
  if (!triggeredCopy)
  {
    v6 = 0;
  }

  self->_whichEvent_Type = v6;
  jrExperimentTriggered = self->_jrExperimentTriggered;
  self->_jrExperimentTriggered = triggeredCopy;
}

- (void)deleteJrInferenceContext
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    self->_jrInferenceContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (JRSchemaJRInferenceContext)jrInferenceContext
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_jrInferenceContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setJrInferenceContext:(id)context
{
  contextCopy = context;
  jrExperimentTriggered = self->_jrExperimentTriggered;
  self->_jrExperimentTriggered = 0;

  v6 = 101;
  if (!contextCopy)
  {
    v6 = 0;
  }

  self->_whichEvent_Type = v6;
  jrInferenceContext = self->_jrInferenceContext;
  self->_jrInferenceContext = contextCopy;
}

- (id)qualifiedMessageName
{
  whichEvent_Type = [(JRSchemaJRClientEvent *)self whichEvent_Type];
  v3 = @"com.apple.aiml.siri.jr.JRClientEvent";
  if (whichEvent_Type == 102)
  {
    v3 = @"com.apple.aiml.siri.jr.JRClientEvent.JRExperimentTriggered";
  }

  if (whichEvent_Type == 101)
  {
    return @"com.apple.aiml.siri.jr.JRClientEvent.JRInferenceContext";
  }

  else
  {
    return v3;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v16.receiver = self;
  v16.super_class = JRSchemaJRClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:policyCopy];
  eventMetadata = [(JRSchemaJRClientEvent *)self eventMetadata];
  v7 = [eventMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(JRSchemaJRClientEvent *)self deleteEventMetadata];
  }

  jrInferenceContext = [(JRSchemaJRClientEvent *)self jrInferenceContext];
  v10 = [jrInferenceContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(JRSchemaJRClientEvent *)self deleteJrInferenceContext];
  }

  jrExperimentTriggered = [(JRSchemaJRClientEvent *)self jrExperimentTriggered];
  v13 = [jrExperimentTriggered applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(JRSchemaJRClientEvent *)self deleteJrExperimentTriggered];
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
  eventMetadata = [(JRSchemaJRClientEvent *)self eventMetadata];
  jrId = [eventMetadata jrId];

  if (jrId)
  {
    value = [jrId value];
    if (value)
    {
      value2 = [jrId value];
      v6 = [value2 length];

      if (v6)
      {
        LODWORD(value) = 49;
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
  eventMetadata = [(JRSchemaJRClientEvent *)self eventMetadata];
  jrId = [eventMetadata jrId];

  if (!jrId)
  {
    goto LABEL_5;
  }

  value = [jrId value];
  if (!value)
  {
    goto LABEL_6;
  }

  value2 = [jrId value];
  v6 = [value2 length];

  if (v6)
  {
    value = jrId;
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
  whichEvent_Type = [(JRSchemaJRClientEvent *)self whichEvent_Type];
  if (whichEvent_Type == 101)
  {
    v4 = &OBJC_IVAR___JRSchemaJRClientEvent__jrInferenceContext;
    goto LABEL_5;
  }

  if (whichEvent_Type == 102)
  {
    v4 = &OBJC_IVAR___JRSchemaJRClientEvent__jrExperimentTriggered;
LABEL_5:
    v5 = *(&self->super.super.super.super.isa + *v4);
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

+ (id)getInnerTypeStringByTag:(unint64_t)tag
{
  v3 = @"jrExperimentTriggered";
  if (tag != 102)
  {
    v3 = 0;
  }

  if (tag == 101)
  {
    return @"jrInferenceContext";
  }

  else
  {
    return v3;
  }
}

@end