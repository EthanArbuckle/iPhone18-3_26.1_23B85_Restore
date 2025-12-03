@interface ANCSchemaANCClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (ANCSchemaANCClientEvent)initWithDictionary:(id)dictionary;
- (ANCSchemaANCClientEvent)initWithJSON:(id)n;
- (ANCSchemaANCNotificationReceived)notificationReceived;
- (ANCSchemaANCNotificationReceivedTier1)notificationReceivedTier1;
- (ANCSchemaANCUserResponseEvaluated)userResponseEvaluated;
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
- (void)deleteNotificationReceived;
- (void)deleteNotificationReceivedTier1;
- (void)deleteUserResponseEvaluated;
- (void)setNotificationReceived:(id)received;
- (void)setNotificationReceivedTier1:(id)tier1;
- (void)setUserResponseEvaluated:(id)evaluated;
- (void)writeTo:(id)to;
@end

@implementation ANCSchemaANCClientEvent

- (ANCSchemaANCClientEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = ANCSchemaANCClientEvent;
  v5 = [(ANCSchemaANCClientEvent *)&v16 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ANCSchemaANCClientEventMetadata alloc] initWithDictionary:v6];
      [(ANCSchemaANCClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"notificationReceived"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[ANCSchemaANCNotificationReceived alloc] initWithDictionary:v8];
      [(ANCSchemaANCClientEvent *)v5 setNotificationReceived:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"userResponseEvaluated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[ANCSchemaANCUserResponseEvaluated alloc] initWithDictionary:v10];
      [(ANCSchemaANCClientEvent *)v5 setUserResponseEvaluated:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"notificationReceivedTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[ANCSchemaANCNotificationReceivedTier1 alloc] initWithDictionary:v12];
      [(ANCSchemaANCClientEvent *)v5 setNotificationReceivedTier1:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (ANCSchemaANCClientEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ANCSchemaANCClientEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ANCSchemaANCClientEvent *)self dictionaryRepresentation];
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
    eventMetadata = [(ANCSchemaANCClientEvent *)self eventMetadata];
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

  if (self->_notificationReceived)
  {
    notificationReceived = [(ANCSchemaANCClientEvent *)self notificationReceived];
    dictionaryRepresentation2 = [notificationReceived dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"notificationReceived"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"notificationReceived"];
    }
  }

  if (self->_notificationReceivedTier1)
  {
    notificationReceivedTier1 = [(ANCSchemaANCClientEvent *)self notificationReceivedTier1];
    dictionaryRepresentation3 = [notificationReceivedTier1 dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"notificationReceivedTier1"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"notificationReceivedTier1"];
    }
  }

  if (self->_userResponseEvaluated)
  {
    userResponseEvaluated = [(ANCSchemaANCClientEvent *)self userResponseEvaluated];
    dictionaryRepresentation4 = [userResponseEvaluated dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"userResponseEvaluated"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"userResponseEvaluated"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(ANCSchemaANCClientEventMetadata *)self->_eventMetadata hash];
  v4 = [(ANCSchemaANCNotificationReceived *)self->_notificationReceived hash]^ v3;
  v5 = [(ANCSchemaANCUserResponseEvaluated *)self->_userResponseEvaluated hash];
  return v4 ^ v5 ^ [(ANCSchemaANCNotificationReceivedTier1 *)self->_notificationReceivedTier1 hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [equalCopy whichEvent_Type])
  {
    goto LABEL_23;
  }

  eventMetadata = [(ANCSchemaANCClientEvent *)self eventMetadata];
  eventMetadata2 = [equalCopy eventMetadata];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_22;
  }

  eventMetadata3 = [(ANCSchemaANCClientEvent *)self eventMetadata];
  if (eventMetadata3)
  {
    v9 = eventMetadata3;
    eventMetadata4 = [(ANCSchemaANCClientEvent *)self eventMetadata];
    eventMetadata5 = [equalCopy eventMetadata];
    v12 = [eventMetadata4 isEqual:eventMetadata5];

    if (!v12)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  eventMetadata = [(ANCSchemaANCClientEvent *)self notificationReceived];
  eventMetadata2 = [equalCopy notificationReceived];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_22;
  }

  notificationReceived = [(ANCSchemaANCClientEvent *)self notificationReceived];
  if (notificationReceived)
  {
    v14 = notificationReceived;
    notificationReceived2 = [(ANCSchemaANCClientEvent *)self notificationReceived];
    notificationReceived3 = [equalCopy notificationReceived];
    v17 = [notificationReceived2 isEqual:notificationReceived3];

    if (!v17)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  eventMetadata = [(ANCSchemaANCClientEvent *)self userResponseEvaluated];
  eventMetadata2 = [equalCopy userResponseEvaluated];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_22;
  }

  userResponseEvaluated = [(ANCSchemaANCClientEvent *)self userResponseEvaluated];
  if (userResponseEvaluated)
  {
    v19 = userResponseEvaluated;
    userResponseEvaluated2 = [(ANCSchemaANCClientEvent *)self userResponseEvaluated];
    userResponseEvaluated3 = [equalCopy userResponseEvaluated];
    v22 = [userResponseEvaluated2 isEqual:userResponseEvaluated3];

    if (!v22)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  eventMetadata = [(ANCSchemaANCClientEvent *)self notificationReceivedTier1];
  eventMetadata2 = [equalCopy notificationReceivedTier1];
  if ((eventMetadata != 0) != (eventMetadata2 == 0))
  {
    notificationReceivedTier1 = [(ANCSchemaANCClientEvent *)self notificationReceivedTier1];
    if (!notificationReceivedTier1)
    {

LABEL_26:
      v28 = 1;
      goto LABEL_24;
    }

    v24 = notificationReceivedTier1;
    notificationReceivedTier12 = [(ANCSchemaANCClientEvent *)self notificationReceivedTier1];
    notificationReceivedTier13 = [equalCopy notificationReceivedTier1];
    v27 = [notificationReceivedTier12 isEqual:notificationReceivedTier13];

    if (v27)
    {
      goto LABEL_26;
    }
  }

  else
  {
LABEL_22:
  }

LABEL_23:
  v28 = 0;
LABEL_24:

  return v28;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  eventMetadata = [(ANCSchemaANCClientEvent *)self eventMetadata];

  if (eventMetadata)
  {
    eventMetadata2 = [(ANCSchemaANCClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  notificationReceived = [(ANCSchemaANCClientEvent *)self notificationReceived];

  if (notificationReceived)
  {
    notificationReceived2 = [(ANCSchemaANCClientEvent *)self notificationReceived];
    PBDataWriterWriteSubmessage();
  }

  userResponseEvaluated = [(ANCSchemaANCClientEvent *)self userResponseEvaluated];

  if (userResponseEvaluated)
  {
    userResponseEvaluated2 = [(ANCSchemaANCClientEvent *)self userResponseEvaluated];
    PBDataWriterWriteSubmessage();
  }

  notificationReceivedTier1 = [(ANCSchemaANCClientEvent *)self notificationReceivedTier1];

  v11 = toCopy;
  if (notificationReceivedTier1)
  {
    notificationReceivedTier12 = [(ANCSchemaANCClientEvent *)self notificationReceivedTier1];
    PBDataWriterWriteSubmessage();

    v11 = toCopy;
  }
}

- (void)deleteNotificationReceivedTier1
{
  if (self->_whichEvent_Type == 4)
  {
    self->_whichEvent_Type = 0;
    self->_notificationReceivedTier1 = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ANCSchemaANCNotificationReceivedTier1)notificationReceivedTier1
{
  if (self->_whichEvent_Type == 4)
  {
    v3 = self->_notificationReceivedTier1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setNotificationReceivedTier1:(id)tier1
{
  tier1Copy = tier1;
  notificationReceived = self->_notificationReceived;
  self->_notificationReceived = 0;

  userResponseEvaluated = self->_userResponseEvaluated;
  self->_userResponseEvaluated = 0;

  self->_whichEvent_Type = 4 * (tier1Copy != 0);
  notificationReceivedTier1 = self->_notificationReceivedTier1;
  self->_notificationReceivedTier1 = tier1Copy;
}

- (void)deleteUserResponseEvaluated
{
  if (self->_whichEvent_Type == 3)
  {
    self->_whichEvent_Type = 0;
    self->_userResponseEvaluated = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ANCSchemaANCUserResponseEvaluated)userResponseEvaluated
{
  if (self->_whichEvent_Type == 3)
  {
    v3 = self->_userResponseEvaluated;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setUserResponseEvaluated:(id)evaluated
{
  evaluatedCopy = evaluated;
  notificationReceived = self->_notificationReceived;
  self->_notificationReceived = 0;

  notificationReceivedTier1 = self->_notificationReceivedTier1;
  self->_notificationReceivedTier1 = 0;

  v7 = 3;
  if (!evaluatedCopy)
  {
    v7 = 0;
  }

  self->_whichEvent_Type = v7;
  userResponseEvaluated = self->_userResponseEvaluated;
  self->_userResponseEvaluated = evaluatedCopy;
}

- (void)deleteNotificationReceived
{
  if (self->_whichEvent_Type == 2)
  {
    self->_whichEvent_Type = 0;
    self->_notificationReceived = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ANCSchemaANCNotificationReceived)notificationReceived
{
  if (self->_whichEvent_Type == 2)
  {
    v3 = self->_notificationReceived;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setNotificationReceived:(id)received
{
  receivedCopy = received;
  userResponseEvaluated = self->_userResponseEvaluated;
  self->_userResponseEvaluated = 0;

  notificationReceivedTier1 = self->_notificationReceivedTier1;
  self->_notificationReceivedTier1 = 0;

  self->_whichEvent_Type = 2 * (receivedCopy != 0);
  notificationReceived = self->_notificationReceived;
  self->_notificationReceived = receivedCopy;
}

- (id)qualifiedMessageName
{
  whichEvent_Type = [(ANCSchemaANCClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 2 > 2)
  {
    return @"com.apple.aiml.siri.anc.ANCClientEvent";
  }

  else
  {
    return off_1E78D1650[whichEvent_Type - 2];
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v19.receiver = self;
  v19.super_class = ANCSchemaANCClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
  {
    [(ANCSchemaANCClientEvent *)self deleteNotificationReceivedTier1];
  }

  if ([policyCopy isConditionSet:4])
  {
    [(ANCSchemaANCClientEvent *)self deleteNotificationReceivedTier1];
  }

  if ([policyCopy isConditionSet:5])
  {
    [(ANCSchemaANCClientEvent *)self deleteNotificationReceivedTier1];
  }

  if ([policyCopy isConditionSet:6])
  {
    [(ANCSchemaANCClientEvent *)self deleteNotificationReceivedTier1];
  }

  if ([policyCopy isConditionSet:7])
  {
    [(ANCSchemaANCClientEvent *)self deleteNotificationReceivedTier1];
  }

  eventMetadata = [(ANCSchemaANCClientEvent *)self eventMetadata];
  v7 = [eventMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(ANCSchemaANCClientEvent *)self deleteEventMetadata];
  }

  notificationReceived = [(ANCSchemaANCClientEvent *)self notificationReceived];
  v10 = [notificationReceived applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(ANCSchemaANCClientEvent *)self deleteNotificationReceived];
  }

  userResponseEvaluated = [(ANCSchemaANCClientEvent *)self userResponseEvaluated];
  v13 = [userResponseEvaluated applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(ANCSchemaANCClientEvent *)self deleteUserResponseEvaluated];
  }

  notificationReceivedTier1 = [(ANCSchemaANCClientEvent *)self notificationReceivedTier1];
  v16 = [notificationReceivedTier1 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(ANCSchemaANCClientEvent *)self deleteNotificationReceivedTier1];
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
  eventMetadata = [(ANCSchemaANCClientEvent *)self eventMetadata];
  ancId = [eventMetadata ancId];

  if (ancId && ([ancId value], (v5 = objc_claimAutoreleasedReturnValue()) != 0) && (v6 = v5, objc_msgSend(ancId, "value"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, v6, v8))
  {
    v9 = 12;
  }

  else
  {
    eventMetadata2 = [(ANCSchemaANCClientEvent *)self eventMetadata];
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

      ancId = requestId;
    }

    else
    {
      v9 = 0;
      ancId = 0;
    }
  }

  return v9;
}

- (id)getComponentId
{
  eventMetadata = [(ANCSchemaANCClientEvent *)self eventMetadata];
  ancId = [eventMetadata ancId];

  if (ancId)
  {
    value = [ancId value];
    if (value)
    {
      v6 = value;
      value2 = [ancId value];
      v8 = [value2 length];

      if (v8)
      {
        goto LABEL_8;
      }
    }
  }

  eventMetadata2 = [(ANCSchemaANCClientEvent *)self eventMetadata];
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
      ancId = requestId;
LABEL_8:
      value3 = ancId;
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
  whichEvent_Type = [(ANCSchemaANCClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 2 > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78E8CD0[whichEvent_Type - 2]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)tag
{
  if (tag - 2 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E78E8CE8[tag - 2];
  }
}

@end