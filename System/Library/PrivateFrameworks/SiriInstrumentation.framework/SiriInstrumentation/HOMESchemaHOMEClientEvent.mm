@interface HOMESchemaHOMEClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (BOOL)isEqual:(id)equal;
- (HOMESchemaHOMEAssistantDeviceBirthday)assistantDeviceBirthday;
- (HOMESchemaHOMEAssistantInfoReported)assistantInfoReported;
- (HOMESchemaHOMEClientEvent)initWithDictionary:(id)dictionary;
- (HOMESchemaHOMEClientEvent)initWithJSON:(id)n;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteAssistantDeviceBirthday;
- (void)deleteAssistantInfoReported;
- (void)setAssistantDeviceBirthday:(id)birthday;
- (void)setAssistantInfoReported:(id)reported;
- (void)writeTo:(id)to;
@end

@implementation HOMESchemaHOMEClientEvent

- (HOMESchemaHOMEClientEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = HOMESchemaHOMEClientEvent;
  v5 = [(HOMESchemaHOMEClientEvent *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[HOMESchemaHOMEClientEventMetadata alloc] initWithDictionary:v6];
      [(HOMESchemaHOMEClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"assistantInfoReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[HOMESchemaHOMEAssistantInfoReported alloc] initWithDictionary:v8];
      [(HOMESchemaHOMEClientEvent *)v5 setAssistantInfoReported:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"assistantDeviceBirthday"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[HOMESchemaHOMEAssistantDeviceBirthday alloc] initWithDictionary:v10];
      [(HOMESchemaHOMEClientEvent *)v5 setAssistantDeviceBirthday:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (HOMESchemaHOMEClientEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(HOMESchemaHOMEClientEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(HOMESchemaHOMEClientEvent *)self dictionaryRepresentation];
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
  if (self->_assistantDeviceBirthday)
  {
    assistantDeviceBirthday = [(HOMESchemaHOMEClientEvent *)self assistantDeviceBirthday];
    dictionaryRepresentation = [assistantDeviceBirthday dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"assistantDeviceBirthday"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"assistantDeviceBirthday"];
    }
  }

  if (self->_assistantInfoReported)
  {
    assistantInfoReported = [(HOMESchemaHOMEClientEvent *)self assistantInfoReported];
    dictionaryRepresentation2 = [assistantInfoReported dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"assistantInfoReported"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"assistantInfoReported"];
    }
  }

  if (self->_eventMetadata)
  {
    eventMetadata = [(HOMESchemaHOMEClientEvent *)self eventMetadata];
    dictionaryRepresentation3 = [eventMetadata dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"eventMetadata"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(HOMESchemaHOMEClientEventMetadata *)self->_eventMetadata hash];
  v4 = [(HOMESchemaHOMEAssistantInfoReported *)self->_assistantInfoReported hash]^ v3;
  return v4 ^ [(HOMESchemaHOMEAssistantDeviceBirthday *)self->_assistantDeviceBirthday hash];
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

  eventMetadata = [(HOMESchemaHOMEClientEvent *)self eventMetadata];
  eventMetadata2 = [equalCopy eventMetadata];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_17;
  }

  eventMetadata3 = [(HOMESchemaHOMEClientEvent *)self eventMetadata];
  if (eventMetadata3)
  {
    v9 = eventMetadata3;
    eventMetadata4 = [(HOMESchemaHOMEClientEvent *)self eventMetadata];
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

  eventMetadata = [(HOMESchemaHOMEClientEvent *)self assistantInfoReported];
  eventMetadata2 = [equalCopy assistantInfoReported];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_17;
  }

  assistantInfoReported = [(HOMESchemaHOMEClientEvent *)self assistantInfoReported];
  if (assistantInfoReported)
  {
    v14 = assistantInfoReported;
    assistantInfoReported2 = [(HOMESchemaHOMEClientEvent *)self assistantInfoReported];
    assistantInfoReported3 = [equalCopy assistantInfoReported];
    v17 = [assistantInfoReported2 isEqual:assistantInfoReported3];

    if (!v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  eventMetadata = [(HOMESchemaHOMEClientEvent *)self assistantDeviceBirthday];
  eventMetadata2 = [equalCopy assistantDeviceBirthday];
  if ((eventMetadata != 0) != (eventMetadata2 == 0))
  {
    assistantDeviceBirthday = [(HOMESchemaHOMEClientEvent *)self assistantDeviceBirthday];
    if (!assistantDeviceBirthday)
    {

LABEL_21:
      v23 = 1;
      goto LABEL_19;
    }

    v19 = assistantDeviceBirthday;
    assistantDeviceBirthday2 = [(HOMESchemaHOMEClientEvent *)self assistantDeviceBirthday];
    assistantDeviceBirthday3 = [equalCopy assistantDeviceBirthday];
    v22 = [assistantDeviceBirthday2 isEqual:assistantDeviceBirthday3];

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
  eventMetadata = [(HOMESchemaHOMEClientEvent *)self eventMetadata];

  if (eventMetadata)
  {
    eventMetadata2 = [(HOMESchemaHOMEClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  assistantInfoReported = [(HOMESchemaHOMEClientEvent *)self assistantInfoReported];

  if (assistantInfoReported)
  {
    assistantInfoReported2 = [(HOMESchemaHOMEClientEvent *)self assistantInfoReported];
    PBDataWriterWriteSubmessage();
  }

  assistantDeviceBirthday = [(HOMESchemaHOMEClientEvent *)self assistantDeviceBirthday];

  v9 = toCopy;
  if (assistantDeviceBirthday)
  {
    assistantDeviceBirthday2 = [(HOMESchemaHOMEClientEvent *)self assistantDeviceBirthday];
    PBDataWriterWriteSubmessage();

    v9 = toCopy;
  }
}

- (void)deleteAssistantDeviceBirthday
{
  if (self->_whichEvent_Type == 102)
  {
    self->_whichEvent_Type = 0;
    self->_assistantDeviceBirthday = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (HOMESchemaHOMEAssistantDeviceBirthday)assistantDeviceBirthday
{
  if (self->_whichEvent_Type == 102)
  {
    v3 = self->_assistantDeviceBirthday;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAssistantDeviceBirthday:(id)birthday
{
  birthdayCopy = birthday;
  assistantInfoReported = self->_assistantInfoReported;
  self->_assistantInfoReported = 0;

  v6 = 102;
  if (!birthdayCopy)
  {
    v6 = 0;
  }

  self->_whichEvent_Type = v6;
  assistantDeviceBirthday = self->_assistantDeviceBirthday;
  self->_assistantDeviceBirthday = birthdayCopy;
}

- (void)deleteAssistantInfoReported
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    self->_assistantInfoReported = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (HOMESchemaHOMEAssistantInfoReported)assistantInfoReported
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_assistantInfoReported;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAssistantInfoReported:(id)reported
{
  reportedCopy = reported;
  assistantDeviceBirthday = self->_assistantDeviceBirthday;
  self->_assistantDeviceBirthday = 0;

  v6 = 101;
  if (!reportedCopy)
  {
    v6 = 0;
  }

  self->_whichEvent_Type = v6;
  assistantInfoReported = self->_assistantInfoReported;
  self->_assistantInfoReported = reportedCopy;
}

- (id)qualifiedMessageName
{
  whichEvent_Type = [(HOMESchemaHOMEClientEvent *)self whichEvent_Type];
  v3 = @"com.apple.aiml.siri.home.HOMEClientEvent";
  if (whichEvent_Type == 102)
  {
    v3 = @"com.apple.aiml.siri.home.HOMEClientEvent.HOMEAssistantDeviceBirthday";
  }

  if (whichEvent_Type == 101)
  {
    return @"com.apple.aiml.siri.home.HOMEClientEvent.HOMEAssistantInfoReported";
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
  v16.super_class = HOMESchemaHOMEClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:policyCopy];
  eventMetadata = [(HOMESchemaHOMEClientEvent *)self eventMetadata];
  v7 = [eventMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(HOMESchemaHOMEClientEvent *)self deleteEventMetadata];
  }

  assistantInfoReported = [(HOMESchemaHOMEClientEvent *)self assistantInfoReported];
  v10 = [assistantInfoReported applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(HOMESchemaHOMEClientEvent *)self deleteAssistantInfoReported];
  }

  assistantDeviceBirthday = [(HOMESchemaHOMEClientEvent *)self assistantDeviceBirthday];
  v13 = [assistantDeviceBirthday applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(HOMESchemaHOMEClientEvent *)self deleteAssistantDeviceBirthday];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

- (id)getComponentId
{
  eventMetadata = [(HOMESchemaHOMEClientEvent *)self eventMetadata];
  homeComponentId = [eventMetadata homeComponentId];

  if (!homeComponentId)
  {
    goto LABEL_5;
  }

  value = [homeComponentId value];
  if (!value)
  {
    goto LABEL_6;
  }

  value2 = [homeComponentId value];
  v6 = [value2 length];

  if (v6)
  {
    value = homeComponentId;
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
  whichEvent_Type = [(HOMESchemaHOMEClientEvent *)self whichEvent_Type];
  if (whichEvent_Type == 101)
  {
    v4 = &OBJC_IVAR___HOMESchemaHOMEClientEvent__assistantInfoReported;
    goto LABEL_5;
  }

  if (whichEvent_Type == 102)
  {
    v4 = &OBJC_IVAR___HOMESchemaHOMEClientEvent__assistantDeviceBirthday;
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
  v3 = @"assistantDeviceBirthday";
  if (tag != 102)
  {
    v3 = 0;
  }

  if (tag == 101)
  {
    return @"assistantInfoReported";
  }

  else
  {
    return v3;
  }
}

@end