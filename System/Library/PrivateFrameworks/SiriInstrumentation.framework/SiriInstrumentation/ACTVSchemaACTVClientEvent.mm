@interface ACTVSchemaACTVClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (ACTVSchemaACTVButtonInteractionDetected)buttonInteractionDetected;
- (ACTVSchemaACTVClientEvent)initWithDictionary:(id)dictionary;
- (ACTVSchemaACTVClientEvent)initWithJSON:(id)n;
- (ACTVSchemaACTVTurnActivated)turnActivated;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)componentName;
- (unint64_t)hash;
- (void)deleteButtonInteractionDetected;
- (void)deleteTurnActivated;
- (void)setButtonInteractionDetected:(id)detected;
- (void)setTurnActivated:(id)activated;
- (void)writeTo:(id)to;
@end

@implementation ACTVSchemaACTVClientEvent

- (ACTVSchemaACTVButtonInteractionDetected)buttonInteractionDetected
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_buttonInteractionDetected;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)qualifiedMessageName
{
  whichEvent_Type = [(ACTVSchemaACTVClientEvent *)self whichEvent_Type];
  v3 = @"com.apple.aiml.siri.activation.ACTVClientEvent";
  if (whichEvent_Type == 102)
  {
    v3 = @"com.apple.aiml.siri.activation.ACTVClientEvent.ACTVTurnActivated";
  }

  if (whichEvent_Type == 101)
  {
    return @"com.apple.aiml.siri.activation.ACTVClientEvent.ACTVButtonInteractionDetected";
  }

  else
  {
    return v3;
  }
}

- (ACTVSchemaACTVTurnActivated)turnActivated
{
  if (self->_whichEvent_Type == 102)
  {
    v3 = self->_turnActivated;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (ACTVSchemaACTVClientEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = ACTVSchemaACTVClientEvent;
  v5 = [(ACTVSchemaACTVClientEvent *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ACTVSchemaACTVClientEventMetadata alloc] initWithDictionary:v6];
      [(ACTVSchemaACTVClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"buttonInteractionDetected"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[ACTVSchemaACTVButtonInteractionDetected alloc] initWithDictionary:v8];
      [(ACTVSchemaACTVClientEvent *)v5 setButtonInteractionDetected:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"turnActivated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[ACTVSchemaACTVTurnActivated alloc] initWithDictionary:v10];
      [(ACTVSchemaACTVClientEvent *)v5 setTurnActivated:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (ACTVSchemaACTVClientEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ACTVSchemaACTVClientEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ACTVSchemaACTVClientEvent *)self dictionaryRepresentation];
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
  if (self->_buttonInteractionDetected)
  {
    buttonInteractionDetected = [(ACTVSchemaACTVClientEvent *)self buttonInteractionDetected];
    dictionaryRepresentation = [buttonInteractionDetected dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"buttonInteractionDetected"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"buttonInteractionDetected"];
    }
  }

  if (self->_eventMetadata)
  {
    eventMetadata = [(ACTVSchemaACTVClientEvent *)self eventMetadata];
    dictionaryRepresentation2 = [eventMetadata dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"eventMetadata"];
    }
  }

  if (self->_turnActivated)
  {
    turnActivated = [(ACTVSchemaACTVClientEvent *)self turnActivated];
    dictionaryRepresentation3 = [turnActivated dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"turnActivated"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"turnActivated"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(ACTVSchemaACTVClientEventMetadata *)self->_eventMetadata hash];
  v4 = [(ACTVSchemaACTVButtonInteractionDetected *)self->_buttonInteractionDetected hash]^ v3;
  return v4 ^ [(ACTVSchemaACTVTurnActivated *)self->_turnActivated hash];
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

  eventMetadata = [(ACTVSchemaACTVClientEvent *)self eventMetadata];
  eventMetadata2 = [equalCopy eventMetadata];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_17;
  }

  eventMetadata3 = [(ACTVSchemaACTVClientEvent *)self eventMetadata];
  if (eventMetadata3)
  {
    v9 = eventMetadata3;
    eventMetadata4 = [(ACTVSchemaACTVClientEvent *)self eventMetadata];
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

  eventMetadata = [(ACTVSchemaACTVClientEvent *)self buttonInteractionDetected];
  eventMetadata2 = [equalCopy buttonInteractionDetected];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_17;
  }

  buttonInteractionDetected = [(ACTVSchemaACTVClientEvent *)self buttonInteractionDetected];
  if (buttonInteractionDetected)
  {
    v14 = buttonInteractionDetected;
    buttonInteractionDetected2 = [(ACTVSchemaACTVClientEvent *)self buttonInteractionDetected];
    buttonInteractionDetected3 = [equalCopy buttonInteractionDetected];
    v17 = [buttonInteractionDetected2 isEqual:buttonInteractionDetected3];

    if (!v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  eventMetadata = [(ACTVSchemaACTVClientEvent *)self turnActivated];
  eventMetadata2 = [equalCopy turnActivated];
  if ((eventMetadata != 0) != (eventMetadata2 == 0))
  {
    turnActivated = [(ACTVSchemaACTVClientEvent *)self turnActivated];
    if (!turnActivated)
    {

LABEL_21:
      v23 = 1;
      goto LABEL_19;
    }

    v19 = turnActivated;
    turnActivated2 = [(ACTVSchemaACTVClientEvent *)self turnActivated];
    turnActivated3 = [equalCopy turnActivated];
    v22 = [turnActivated2 isEqual:turnActivated3];

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
  eventMetadata = [(ACTVSchemaACTVClientEvent *)self eventMetadata];

  if (eventMetadata)
  {
    eventMetadata2 = [(ACTVSchemaACTVClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  buttonInteractionDetected = [(ACTVSchemaACTVClientEvent *)self buttonInteractionDetected];

  if (buttonInteractionDetected)
  {
    buttonInteractionDetected2 = [(ACTVSchemaACTVClientEvent *)self buttonInteractionDetected];
    PBDataWriterWriteSubmessage();
  }

  turnActivated = [(ACTVSchemaACTVClientEvent *)self turnActivated];

  v9 = toCopy;
  if (turnActivated)
  {
    turnActivated2 = [(ACTVSchemaACTVClientEvent *)self turnActivated];
    PBDataWriterWriteSubmessage();

    v9 = toCopy;
  }
}

- (void)deleteTurnActivated
{
  if (self->_whichEvent_Type == 102)
  {
    self->_whichEvent_Type = 0;
    self->_turnActivated = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setTurnActivated:(id)activated
{
  activatedCopy = activated;
  buttonInteractionDetected = self->_buttonInteractionDetected;
  self->_buttonInteractionDetected = 0;

  v6 = 102;
  if (!activatedCopy)
  {
    v6 = 0;
  }

  self->_whichEvent_Type = v6;
  turnActivated = self->_turnActivated;
  self->_turnActivated = activatedCopy;
}

- (void)deleteButtonInteractionDetected
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    self->_buttonInteractionDetected = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setButtonInteractionDetected:(id)detected
{
  detectedCopy = detected;
  turnActivated = self->_turnActivated;
  self->_turnActivated = 0;

  v6 = 101;
  if (!detectedCopy)
  {
    v6 = 0;
  }

  self->_whichEvent_Type = v6;
  buttonInteractionDetected = self->_buttonInteractionDetected;
  self->_buttonInteractionDetected = detectedCopy;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v16.receiver = self;
  v16.super_class = ACTVSchemaACTVClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:policyCopy];
  eventMetadata = [(ACTVSchemaACTVClientEvent *)self eventMetadata];
  v7 = [eventMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(ACTVSchemaACTVClientEvent *)self deleteEventMetadata];
  }

  buttonInteractionDetected = [(ACTVSchemaACTVClientEvent *)self buttonInteractionDetected];
  v10 = [buttonInteractionDetected applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(ACTVSchemaACTVClientEvent *)self deleteButtonInteractionDetected];
  }

  turnActivated = [(ACTVSchemaACTVClientEvent *)self turnActivated];
  v13 = [turnActivated applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(ACTVSchemaACTVClientEvent *)self deleteTurnActivated];
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
  eventMetadata = [(ACTVSchemaACTVClientEvent *)self eventMetadata];
  activationEventId = [eventMetadata activationEventId];

  if (activationEventId)
  {
    value = [activationEventId value];
    if (value)
    {
      value2 = [activationEventId value];
      v6 = [value2 length];

      if (v6)
      {
        LODWORD(value) = 34;
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
  eventMetadata = [(ACTVSchemaACTVClientEvent *)self eventMetadata];
  activationEventId = [eventMetadata activationEventId];

  if (!activationEventId)
  {
    goto LABEL_5;
  }

  value = [activationEventId value];
  if (!value)
  {
    goto LABEL_6;
  }

  value2 = [activationEventId value];
  v6 = [value2 length];

  if (v6)
  {
    value = activationEventId;
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
  whichEvent_Type = [(ACTVSchemaACTVClientEvent *)self whichEvent_Type];
  if (whichEvent_Type == 101)
  {
    v4 = &OBJC_IVAR___ACTVSchemaACTVClientEvent__buttonInteractionDetected;
    goto LABEL_5;
  }

  if (whichEvent_Type == 102)
  {
    v4 = &OBJC_IVAR___ACTVSchemaACTVClientEvent__turnActivated;
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
  v3 = @"turnActivated";
  if (tag != 102)
  {
    v3 = 0;
  }

  if (tag == 101)
  {
    return @"buttonInteractionDetected";
  }

  else
  {
    return v3;
  }
}

@end