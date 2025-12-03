@interface ASVSchemaASVClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (ASVSchemaASVClientEvent)initWithDictionary:(id)dictionary;
- (ASVSchemaASVClientEvent)initWithJSON:(id)n;
- (ASVSchemaASVOutputVolumeQueried)asvOutputVolumeQueried;
- (ASVSchemaASVUserIntentDetected)asvUserIntentDetected;
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
- (void)deleteAsvOutputVolumeQueried;
- (void)deleteAsvUserIntentDetected;
- (void)setAsvOutputVolumeQueried:(id)queried;
- (void)setAsvUserIntentDetected:(id)detected;
- (void)writeTo:(id)to;
@end

@implementation ASVSchemaASVClientEvent

- (ASVSchemaASVClientEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = ASVSchemaASVClientEvent;
  v5 = [(ASVSchemaASVClientEvent *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ASVSchemaASVClientEventMetadata alloc] initWithDictionary:v6];
      [(ASVSchemaASVClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"asvOutputVolumeQueried"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[ASVSchemaASVOutputVolumeQueried alloc] initWithDictionary:v8];
      [(ASVSchemaASVClientEvent *)v5 setAsvOutputVolumeQueried:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"asvUserIntentDetected"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[ASVSchemaASVUserIntentDetected alloc] initWithDictionary:v10];
      [(ASVSchemaASVClientEvent *)v5 setAsvUserIntentDetected:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (ASVSchemaASVClientEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ASVSchemaASVClientEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ASVSchemaASVClientEvent *)self dictionaryRepresentation];
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
  if (self->_asvOutputVolumeQueried)
  {
    asvOutputVolumeQueried = [(ASVSchemaASVClientEvent *)self asvOutputVolumeQueried];
    dictionaryRepresentation = [asvOutputVolumeQueried dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"asvOutputVolumeQueried"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"asvOutputVolumeQueried"];
    }
  }

  if (self->_asvUserIntentDetected)
  {
    asvUserIntentDetected = [(ASVSchemaASVClientEvent *)self asvUserIntentDetected];
    dictionaryRepresentation2 = [asvUserIntentDetected dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"asvUserIntentDetected"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"asvUserIntentDetected"];
    }
  }

  if (self->_eventMetadata)
  {
    eventMetadata = [(ASVSchemaASVClientEvent *)self eventMetadata];
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
  v3 = [(ASVSchemaASVClientEventMetadata *)self->_eventMetadata hash];
  v4 = [(ASVSchemaASVOutputVolumeQueried *)self->_asvOutputVolumeQueried hash]^ v3;
  return v4 ^ [(ASVSchemaASVUserIntentDetected *)self->_asvUserIntentDetected hash];
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

  eventMetadata = [(ASVSchemaASVClientEvent *)self eventMetadata];
  eventMetadata2 = [equalCopy eventMetadata];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_17;
  }

  eventMetadata3 = [(ASVSchemaASVClientEvent *)self eventMetadata];
  if (eventMetadata3)
  {
    v9 = eventMetadata3;
    eventMetadata4 = [(ASVSchemaASVClientEvent *)self eventMetadata];
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

  eventMetadata = [(ASVSchemaASVClientEvent *)self asvOutputVolumeQueried];
  eventMetadata2 = [equalCopy asvOutputVolumeQueried];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_17;
  }

  asvOutputVolumeQueried = [(ASVSchemaASVClientEvent *)self asvOutputVolumeQueried];
  if (asvOutputVolumeQueried)
  {
    v14 = asvOutputVolumeQueried;
    asvOutputVolumeQueried2 = [(ASVSchemaASVClientEvent *)self asvOutputVolumeQueried];
    asvOutputVolumeQueried3 = [equalCopy asvOutputVolumeQueried];
    v17 = [asvOutputVolumeQueried2 isEqual:asvOutputVolumeQueried3];

    if (!v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  eventMetadata = [(ASVSchemaASVClientEvent *)self asvUserIntentDetected];
  eventMetadata2 = [equalCopy asvUserIntentDetected];
  if ((eventMetadata != 0) != (eventMetadata2 == 0))
  {
    asvUserIntentDetected = [(ASVSchemaASVClientEvent *)self asvUserIntentDetected];
    if (!asvUserIntentDetected)
    {

LABEL_21:
      v23 = 1;
      goto LABEL_19;
    }

    v19 = asvUserIntentDetected;
    asvUserIntentDetected2 = [(ASVSchemaASVClientEvent *)self asvUserIntentDetected];
    asvUserIntentDetected3 = [equalCopy asvUserIntentDetected];
    v22 = [asvUserIntentDetected2 isEqual:asvUserIntentDetected3];

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
  eventMetadata = [(ASVSchemaASVClientEvent *)self eventMetadata];

  if (eventMetadata)
  {
    eventMetadata2 = [(ASVSchemaASVClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  asvOutputVolumeQueried = [(ASVSchemaASVClientEvent *)self asvOutputVolumeQueried];

  if (asvOutputVolumeQueried)
  {
    asvOutputVolumeQueried2 = [(ASVSchemaASVClientEvent *)self asvOutputVolumeQueried];
    PBDataWriterWriteSubmessage();
  }

  asvUserIntentDetected = [(ASVSchemaASVClientEvent *)self asvUserIntentDetected];

  v9 = toCopy;
  if (asvUserIntentDetected)
  {
    asvUserIntentDetected2 = [(ASVSchemaASVClientEvent *)self asvUserIntentDetected];
    PBDataWriterWriteSubmessage();

    v9 = toCopy;
  }
}

- (void)deleteAsvUserIntentDetected
{
  if (self->_whichEvent_Type == 102)
  {
    self->_whichEvent_Type = 0;
    self->_asvUserIntentDetected = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ASVSchemaASVUserIntentDetected)asvUserIntentDetected
{
  if (self->_whichEvent_Type == 102)
  {
    v3 = self->_asvUserIntentDetected;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAsvUserIntentDetected:(id)detected
{
  detectedCopy = detected;
  asvOutputVolumeQueried = self->_asvOutputVolumeQueried;
  self->_asvOutputVolumeQueried = 0;

  v6 = 102;
  if (!detectedCopy)
  {
    v6 = 0;
  }

  self->_whichEvent_Type = v6;
  asvUserIntentDetected = self->_asvUserIntentDetected;
  self->_asvUserIntentDetected = detectedCopy;
}

- (void)deleteAsvOutputVolumeQueried
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    self->_asvOutputVolumeQueried = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ASVSchemaASVOutputVolumeQueried)asvOutputVolumeQueried
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_asvOutputVolumeQueried;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAsvOutputVolumeQueried:(id)queried
{
  queriedCopy = queried;
  asvUserIntentDetected = self->_asvUserIntentDetected;
  self->_asvUserIntentDetected = 0;

  v6 = 101;
  if (!queriedCopy)
  {
    v6 = 0;
  }

  self->_whichEvent_Type = v6;
  asvOutputVolumeQueried = self->_asvOutputVolumeQueried;
  self->_asvOutputVolumeQueried = queriedCopy;
}

- (id)qualifiedMessageName
{
  whichEvent_Type = [(ASVSchemaASVClientEvent *)self whichEvent_Type];
  v3 = @"com.apple.aiml.siri.asv.ASVClientEvent";
  if (whichEvent_Type == 102)
  {
    v3 = @"com.apple.aiml.siri.asv.ASVClientEvent.ASVUserIntentDetected";
  }

  if (whichEvent_Type == 101)
  {
    return @"com.apple.aiml.siri.asv.ASVClientEvent.ASVOutputVolumeQueried";
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
  v16.super_class = ASVSchemaASVClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:policyCopy];
  eventMetadata = [(ASVSchemaASVClientEvent *)self eventMetadata];
  v7 = [eventMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(ASVSchemaASVClientEvent *)self deleteEventMetadata];
  }

  asvOutputVolumeQueried = [(ASVSchemaASVClientEvent *)self asvOutputVolumeQueried];
  v10 = [asvOutputVolumeQueried applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(ASVSchemaASVClientEvent *)self deleteAsvOutputVolumeQueried];
  }

  asvUserIntentDetected = [(ASVSchemaASVClientEvent *)self asvUserIntentDetected];
  v13 = [asvUserIntentDetected applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(ASVSchemaASVClientEvent *)self deleteAsvUserIntentDetected];
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
  eventMetadata = [(ASVSchemaASVClientEvent *)self eventMetadata];
  asvId = [eventMetadata asvId];

  if (asvId)
  {
    value = [asvId value];
    if (value)
    {
      value2 = [asvId value];
      v6 = [value2 length];

      if (v6)
      {
        LODWORD(value) = 66;
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
  eventMetadata = [(ASVSchemaASVClientEvent *)self eventMetadata];
  asvId = [eventMetadata asvId];

  if (!asvId)
  {
    goto LABEL_5;
  }

  value = [asvId value];
  if (!value)
  {
    goto LABEL_6;
  }

  value2 = [asvId value];
  v6 = [value2 length];

  if (v6)
  {
    value = asvId;
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
  whichEvent_Type = [(ASVSchemaASVClientEvent *)self whichEvent_Type];
  if (whichEvent_Type == 101)
  {
    v4 = &OBJC_IVAR___ASVSchemaASVClientEvent__asvOutputVolumeQueried;
    goto LABEL_5;
  }

  if (whichEvent_Type == 102)
  {
    v4 = &OBJC_IVAR___ASVSchemaASVClientEvent__asvUserIntentDetected;
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
  v3 = @"asvUserIntentDetected";
  if (tag != 102)
  {
    v3 = 0;
  }

  if (tag == 101)
  {
    return @"asvOutputVolumeQueried";
  }

  else
  {
    return v3;
  }
}

@end