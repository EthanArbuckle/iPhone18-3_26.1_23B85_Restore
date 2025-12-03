@interface HomeKitSchemaHKClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (BOOL)isEqual:(id)equal;
- (HomeKitSchemaHKAccessoryOperationReported)homeKitAccessoryOperationReported;
- (HomeKitSchemaHKAudioTopologyReported)audioTopologyReported;
- (HomeKitSchemaHKClientEvent)initWithDictionary:(id)dictionary;
- (HomeKitSchemaHKClientEvent)initWithJSON:(id)n;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)componentName;
- (unint64_t)hash;
- (void)deleteAudioTopologyReported;
- (void)deleteHomeKitAccessoryOperationReported;
- (void)setAudioTopologyReported:(id)reported;
- (void)setHomeKitAccessoryOperationReported:(id)reported;
- (void)writeTo:(id)to;
@end

@implementation HomeKitSchemaHKClientEvent

- (HomeKitSchemaHKClientEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = HomeKitSchemaHKClientEvent;
  v5 = [(HomeKitSchemaHKClientEvent *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[HomeKitSchemaHomeKitEventMetadata alloc] initWithDictionary:v6];
      [(HomeKitSchemaHKClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"homeKitAccessoryOperationReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[HomeKitSchemaHKAccessoryOperationReported alloc] initWithDictionary:v8];
      [(HomeKitSchemaHKClientEvent *)v5 setHomeKitAccessoryOperationReported:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"audioTopologyReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[HomeKitSchemaHKAudioTopologyReported alloc] initWithDictionary:v10];
      [(HomeKitSchemaHKClientEvent *)v5 setAudioTopologyReported:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (HomeKitSchemaHKClientEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(HomeKitSchemaHKClientEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(HomeKitSchemaHKClientEvent *)self dictionaryRepresentation];
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
  if (self->_audioTopologyReported)
  {
    audioTopologyReported = [(HomeKitSchemaHKClientEvent *)self audioTopologyReported];
    dictionaryRepresentation = [audioTopologyReported dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"audioTopologyReported"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"audioTopologyReported"];
    }
  }

  if (self->_eventMetadata)
  {
    eventMetadata = [(HomeKitSchemaHKClientEvent *)self eventMetadata];
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

  if (self->_homeKitAccessoryOperationReported)
  {
    homeKitAccessoryOperationReported = [(HomeKitSchemaHKClientEvent *)self homeKitAccessoryOperationReported];
    dictionaryRepresentation3 = [homeKitAccessoryOperationReported dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"homeKitAccessoryOperationReported"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"homeKitAccessoryOperationReported"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(HomeKitSchemaHomeKitEventMetadata *)self->_eventMetadata hash];
  v4 = [(HomeKitSchemaHKAccessoryOperationReported *)self->_homeKitAccessoryOperationReported hash]^ v3;
  return v4 ^ [(HomeKitSchemaHKAudioTopologyReported *)self->_audioTopologyReported hash];
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

  eventMetadata = [(HomeKitSchemaHKClientEvent *)self eventMetadata];
  eventMetadata2 = [equalCopy eventMetadata];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_17;
  }

  eventMetadata3 = [(HomeKitSchemaHKClientEvent *)self eventMetadata];
  if (eventMetadata3)
  {
    v9 = eventMetadata3;
    eventMetadata4 = [(HomeKitSchemaHKClientEvent *)self eventMetadata];
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

  eventMetadata = [(HomeKitSchemaHKClientEvent *)self homeKitAccessoryOperationReported];
  eventMetadata2 = [equalCopy homeKitAccessoryOperationReported];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_17;
  }

  homeKitAccessoryOperationReported = [(HomeKitSchemaHKClientEvent *)self homeKitAccessoryOperationReported];
  if (homeKitAccessoryOperationReported)
  {
    v14 = homeKitAccessoryOperationReported;
    homeKitAccessoryOperationReported2 = [(HomeKitSchemaHKClientEvent *)self homeKitAccessoryOperationReported];
    homeKitAccessoryOperationReported3 = [equalCopy homeKitAccessoryOperationReported];
    v17 = [homeKitAccessoryOperationReported2 isEqual:homeKitAccessoryOperationReported3];

    if (!v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  eventMetadata = [(HomeKitSchemaHKClientEvent *)self audioTopologyReported];
  eventMetadata2 = [equalCopy audioTopologyReported];
  if ((eventMetadata != 0) != (eventMetadata2 == 0))
  {
    audioTopologyReported = [(HomeKitSchemaHKClientEvent *)self audioTopologyReported];
    if (!audioTopologyReported)
    {

LABEL_21:
      v23 = 1;
      goto LABEL_19;
    }

    v19 = audioTopologyReported;
    audioTopologyReported2 = [(HomeKitSchemaHKClientEvent *)self audioTopologyReported];
    audioTopologyReported3 = [equalCopy audioTopologyReported];
    v22 = [audioTopologyReported2 isEqual:audioTopologyReported3];

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
  eventMetadata = [(HomeKitSchemaHKClientEvent *)self eventMetadata];

  if (eventMetadata)
  {
    eventMetadata2 = [(HomeKitSchemaHKClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  homeKitAccessoryOperationReported = [(HomeKitSchemaHKClientEvent *)self homeKitAccessoryOperationReported];

  if (homeKitAccessoryOperationReported)
  {
    homeKitAccessoryOperationReported2 = [(HomeKitSchemaHKClientEvent *)self homeKitAccessoryOperationReported];
    PBDataWriterWriteSubmessage();
  }

  audioTopologyReported = [(HomeKitSchemaHKClientEvent *)self audioTopologyReported];

  v9 = toCopy;
  if (audioTopologyReported)
  {
    audioTopologyReported2 = [(HomeKitSchemaHKClientEvent *)self audioTopologyReported];
    PBDataWriterWriteSubmessage();

    v9 = toCopy;
  }
}

- (void)deleteAudioTopologyReported
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    self->_audioTopologyReported = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (HomeKitSchemaHKAudioTopologyReported)audioTopologyReported
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_audioTopologyReported;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAudioTopologyReported:(id)reported
{
  reportedCopy = reported;
  homeKitAccessoryOperationReported = self->_homeKitAccessoryOperationReported;
  self->_homeKitAccessoryOperationReported = 0;

  v6 = 101;
  if (!reportedCopy)
  {
    v6 = 0;
  }

  self->_whichEvent_Type = v6;
  audioTopologyReported = self->_audioTopologyReported;
  self->_audioTopologyReported = reportedCopy;
}

- (void)deleteHomeKitAccessoryOperationReported
{
  if (self->_whichEvent_Type == 100)
  {
    self->_whichEvent_Type = 0;
    self->_homeKitAccessoryOperationReported = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (HomeKitSchemaHKAccessoryOperationReported)homeKitAccessoryOperationReported
{
  if (self->_whichEvent_Type == 100)
  {
    v3 = self->_homeKitAccessoryOperationReported;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setHomeKitAccessoryOperationReported:(id)reported
{
  reportedCopy = reported;
  audioTopologyReported = self->_audioTopologyReported;
  self->_audioTopologyReported = 0;

  v6 = 100;
  if (!reportedCopy)
  {
    v6 = 0;
  }

  self->_whichEvent_Type = v6;
  homeKitAccessoryOperationReported = self->_homeKitAccessoryOperationReported;
  self->_homeKitAccessoryOperationReported = reportedCopy;
}

- (id)qualifiedMessageName
{
  whichEvent_Type = [(HomeKitSchemaHKClientEvent *)self whichEvent_Type];
  v3 = @"com.apple.aiml.siri.homekit.HKClientEvent";
  if (whichEvent_Type == 101)
  {
    v3 = @"com.apple.aiml.siri.homekit.HKClientEvent.HKAudioTopologyReported";
  }

  if (whichEvent_Type == 100)
  {
    return @"com.apple.aiml.siri.homekit.HKClientEvent.HKAccessoryOperationReported";
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
  v16.super_class = HomeKitSchemaHKClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:policyCopy];
  eventMetadata = [(HomeKitSchemaHKClientEvent *)self eventMetadata];
  v7 = [eventMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(HomeKitSchemaHKClientEvent *)self deleteEventMetadata];
  }

  homeKitAccessoryOperationReported = [(HomeKitSchemaHKClientEvent *)self homeKitAccessoryOperationReported];
  v10 = [homeKitAccessoryOperationReported applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(HomeKitSchemaHKClientEvent *)self deleteHomeKitAccessoryOperationReported];
  }

  audioTopologyReported = [(HomeKitSchemaHKClientEvent *)self audioTopologyReported];
  v13 = [audioTopologyReported applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(HomeKitSchemaHKClientEvent *)self deleteAudioTopologyReported];
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
  eventMetadata = [(HomeKitSchemaHKClientEvent *)self eventMetadata];
  hkId = [eventMetadata hkId];

  if (hkId)
  {
    value = [hkId value];
    if (value)
    {
      value2 = [hkId value];
      v6 = [value2 length];

      if (v6)
      {
        LODWORD(value) = 39;
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
  eventMetadata = [(HomeKitSchemaHKClientEvent *)self eventMetadata];
  hkId = [eventMetadata hkId];

  if (!hkId)
  {
    goto LABEL_5;
  }

  value = [hkId value];
  if (!value)
  {
    goto LABEL_6;
  }

  value2 = [hkId value];
  v6 = [value2 length];

  if (v6)
  {
    value = hkId;
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
  whichEvent_Type = [(HomeKitSchemaHKClientEvent *)self whichEvent_Type];
  if (whichEvent_Type == 100)
  {
    v4 = &OBJC_IVAR___HomeKitSchemaHKClientEvent__homeKitAccessoryOperationReported;
    goto LABEL_5;
  }

  if (whichEvent_Type == 101)
  {
    v4 = &OBJC_IVAR___HomeKitSchemaHKClientEvent__audioTopologyReported;
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
  v3 = @"audioTopologyReported";
  if (tag != 101)
  {
    v3 = 0;
  }

  if (tag == 100)
  {
    return @"homeKitAccessoryOperationReported";
  }

  else
  {
    return v3;
  }
}

@end