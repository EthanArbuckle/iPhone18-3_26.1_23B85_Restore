@interface SISchemaServerEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaConversationTrace)serverConversationTrace;
- (SISchemaDeviceFixedContext)serverDeviceFixedContext;
- (SISchemaInstrumentationMessage)innerEvent;
- (SISchemaServerEvent)initWithDictionary:(id)dictionary;
- (SISchemaServerEvent)initWithJSON:(id)n;
- (SISchemaServerGeneratedDismissal)serverGeneratedDismissal;
- (SISchemaSpeechResultSelected)speechResultSelected;
- (SISchemaTurnInteraction)turnInteraction;
- (SISchemaUserSpeechDuration)userSpeechDuration;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)componentName;
- (unint64_t)hash;
- (void)deleteServerConversationTrace;
- (void)deleteServerDeviceFixedContext;
- (void)deleteServerGeneratedDismissal;
- (void)deleteSpeechResultSelected;
- (void)deleteTurnInteraction;
- (void)deleteUserSpeechDuration;
- (void)setServerConversationTrace:(id)trace;
- (void)setServerDeviceFixedContext:(id)context;
- (void)setServerGeneratedDismissal:(id)dismissal;
- (void)setSpeechResultSelected:(id)selected;
- (void)setTurnInteraction:(id)interaction;
- (void)setUserSpeechDuration:(id)duration;
- (void)writeTo:(id)to;
@end

@implementation SISchemaServerEvent

- (SISchemaServerEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v22.receiver = self;
  v22.super_class = SISchemaServerEvent;
  v5 = [(SISchemaServerEvent *)&v22 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaServerEventMetadata alloc] initWithDictionary:v6];
      [(SISchemaServerEvent *)v5 setEventMetadata:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"userSpeechDuration"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUserSpeechDuration alloc] initWithDictionary:v8];
      [(SISchemaServerEvent *)v5 setUserSpeechDuration:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"serverConversationTrace"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaConversationTrace alloc] initWithDictionary:v10];
      [(SISchemaServerEvent *)v5 setServerConversationTrace:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"turnInteraction"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[SISchemaTurnInteraction alloc] initWithDictionary:v12];
      [(SISchemaServerEvent *)v5 setTurnInteraction:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"speechResultSelected"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[SISchemaSpeechResultSelected alloc] initWithDictionary:v14];
      [(SISchemaServerEvent *)v5 setSpeechResultSelected:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"serverDeviceFixedContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[SISchemaDeviceFixedContext alloc] initWithDictionary:v16];
      [(SISchemaServerEvent *)v5 setServerDeviceFixedContext:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"serverGeneratedDismissal"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[SISchemaServerGeneratedDismissal alloc] initWithDictionary:v18];
      [(SISchemaServerEvent *)v5 setServerGeneratedDismissal:v19];
    }

    v20 = v5;
  }

  return v5;
}

- (SISchemaServerEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaServerEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaServerEvent *)self dictionaryRepresentation];
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
    eventMetadata = [(SISchemaServerEvent *)self eventMetadata];
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

  if (self->_serverConversationTrace)
  {
    serverConversationTrace = [(SISchemaServerEvent *)self serverConversationTrace];
    dictionaryRepresentation2 = [serverConversationTrace dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"serverConversationTrace"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"serverConversationTrace"];
    }
  }

  if (self->_serverDeviceFixedContext)
  {
    serverDeviceFixedContext = [(SISchemaServerEvent *)self serverDeviceFixedContext];
    dictionaryRepresentation3 = [serverDeviceFixedContext dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"serverDeviceFixedContext"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"serverDeviceFixedContext"];
    }
  }

  if (self->_serverGeneratedDismissal)
  {
    serverGeneratedDismissal = [(SISchemaServerEvent *)self serverGeneratedDismissal];
    dictionaryRepresentation4 = [serverGeneratedDismissal dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"serverGeneratedDismissal"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"serverGeneratedDismissal"];
    }
  }

  if (self->_speechResultSelected)
  {
    speechResultSelected = [(SISchemaServerEvent *)self speechResultSelected];
    dictionaryRepresentation5 = [speechResultSelected dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"speechResultSelected"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"speechResultSelected"];
    }
  }

  if (self->_turnInteraction)
  {
    turnInteraction = [(SISchemaServerEvent *)self turnInteraction];
    dictionaryRepresentation6 = [turnInteraction dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"turnInteraction"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"turnInteraction"];
    }
  }

  if (self->_userSpeechDuration)
  {
    userSpeechDuration = [(SISchemaServerEvent *)self userSpeechDuration];
    dictionaryRepresentation7 = [userSpeechDuration dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"userSpeechDuration"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"userSpeechDuration"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaServerEventMetadata *)self->_eventMetadata hash];
  v4 = [(SISchemaUserSpeechDuration *)self->_userSpeechDuration hash]^ v3;
  v5 = [(SISchemaConversationTrace *)self->_serverConversationTrace hash];
  v6 = v4 ^ v5 ^ [(SISchemaTurnInteraction *)self->_turnInteraction hash];
  v7 = [(SISchemaSpeechResultSelected *)self->_speechResultSelected hash];
  v8 = v7 ^ [(SISchemaDeviceFixedContext *)self->_serverDeviceFixedContext hash];
  return v6 ^ v8 ^ [(SISchemaServerGeneratedDismissal *)self->_serverGeneratedDismissal hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_38;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [equalCopy whichEvent_Type])
  {
    goto LABEL_38;
  }

  eventMetadata = [(SISchemaServerEvent *)self eventMetadata];
  eventMetadata2 = [equalCopy eventMetadata];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_37;
  }

  eventMetadata3 = [(SISchemaServerEvent *)self eventMetadata];
  if (eventMetadata3)
  {
    v9 = eventMetadata3;
    eventMetadata4 = [(SISchemaServerEvent *)self eventMetadata];
    eventMetadata5 = [equalCopy eventMetadata];
    v12 = [eventMetadata4 isEqual:eventMetadata5];

    if (!v12)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  eventMetadata = [(SISchemaServerEvent *)self userSpeechDuration];
  eventMetadata2 = [equalCopy userSpeechDuration];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_37;
  }

  userSpeechDuration = [(SISchemaServerEvent *)self userSpeechDuration];
  if (userSpeechDuration)
  {
    v14 = userSpeechDuration;
    userSpeechDuration2 = [(SISchemaServerEvent *)self userSpeechDuration];
    userSpeechDuration3 = [equalCopy userSpeechDuration];
    v17 = [userSpeechDuration2 isEqual:userSpeechDuration3];

    if (!v17)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  eventMetadata = [(SISchemaServerEvent *)self serverConversationTrace];
  eventMetadata2 = [equalCopy serverConversationTrace];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_37;
  }

  serverConversationTrace = [(SISchemaServerEvent *)self serverConversationTrace];
  if (serverConversationTrace)
  {
    v19 = serverConversationTrace;
    serverConversationTrace2 = [(SISchemaServerEvent *)self serverConversationTrace];
    serverConversationTrace3 = [equalCopy serverConversationTrace];
    v22 = [serverConversationTrace2 isEqual:serverConversationTrace3];

    if (!v22)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  eventMetadata = [(SISchemaServerEvent *)self turnInteraction];
  eventMetadata2 = [equalCopy turnInteraction];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_37;
  }

  turnInteraction = [(SISchemaServerEvent *)self turnInteraction];
  if (turnInteraction)
  {
    v24 = turnInteraction;
    turnInteraction2 = [(SISchemaServerEvent *)self turnInteraction];
    turnInteraction3 = [equalCopy turnInteraction];
    v27 = [turnInteraction2 isEqual:turnInteraction3];

    if (!v27)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  eventMetadata = [(SISchemaServerEvent *)self speechResultSelected];
  eventMetadata2 = [equalCopy speechResultSelected];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_37;
  }

  speechResultSelected = [(SISchemaServerEvent *)self speechResultSelected];
  if (speechResultSelected)
  {
    v29 = speechResultSelected;
    speechResultSelected2 = [(SISchemaServerEvent *)self speechResultSelected];
    speechResultSelected3 = [equalCopy speechResultSelected];
    v32 = [speechResultSelected2 isEqual:speechResultSelected3];

    if (!v32)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  eventMetadata = [(SISchemaServerEvent *)self serverDeviceFixedContext];
  eventMetadata2 = [equalCopy serverDeviceFixedContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_37;
  }

  serverDeviceFixedContext = [(SISchemaServerEvent *)self serverDeviceFixedContext];
  if (serverDeviceFixedContext)
  {
    v34 = serverDeviceFixedContext;
    serverDeviceFixedContext2 = [(SISchemaServerEvent *)self serverDeviceFixedContext];
    serverDeviceFixedContext3 = [equalCopy serverDeviceFixedContext];
    v37 = [serverDeviceFixedContext2 isEqual:serverDeviceFixedContext3];

    if (!v37)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  eventMetadata = [(SISchemaServerEvent *)self serverGeneratedDismissal];
  eventMetadata2 = [equalCopy serverGeneratedDismissal];
  if ((eventMetadata != 0) != (eventMetadata2 == 0))
  {
    serverGeneratedDismissal = [(SISchemaServerEvent *)self serverGeneratedDismissal];
    if (!serverGeneratedDismissal)
    {

LABEL_41:
      v43 = 1;
      goto LABEL_39;
    }

    v39 = serverGeneratedDismissal;
    serverGeneratedDismissal2 = [(SISchemaServerEvent *)self serverGeneratedDismissal];
    serverGeneratedDismissal3 = [equalCopy serverGeneratedDismissal];
    v42 = [serverGeneratedDismissal2 isEqual:serverGeneratedDismissal3];

    if (v42)
    {
      goto LABEL_41;
    }
  }

  else
  {
LABEL_37:
  }

LABEL_38:
  v43 = 0;
LABEL_39:

  return v43;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  eventMetadata = [(SISchemaServerEvent *)self eventMetadata];

  if (eventMetadata)
  {
    eventMetadata2 = [(SISchemaServerEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  userSpeechDuration = [(SISchemaServerEvent *)self userSpeechDuration];

  if (userSpeechDuration)
  {
    userSpeechDuration2 = [(SISchemaServerEvent *)self userSpeechDuration];
    PBDataWriterWriteSubmessage();
  }

  serverConversationTrace = [(SISchemaServerEvent *)self serverConversationTrace];

  if (serverConversationTrace)
  {
    serverConversationTrace2 = [(SISchemaServerEvent *)self serverConversationTrace];
    PBDataWriterWriteSubmessage();
  }

  turnInteraction = [(SISchemaServerEvent *)self turnInteraction];

  if (turnInteraction)
  {
    turnInteraction2 = [(SISchemaServerEvent *)self turnInteraction];
    PBDataWriterWriteSubmessage();
  }

  speechResultSelected = [(SISchemaServerEvent *)self speechResultSelected];

  if (speechResultSelected)
  {
    speechResultSelected2 = [(SISchemaServerEvent *)self speechResultSelected];
    PBDataWriterWriteSubmessage();
  }

  serverDeviceFixedContext = [(SISchemaServerEvent *)self serverDeviceFixedContext];

  if (serverDeviceFixedContext)
  {
    serverDeviceFixedContext2 = [(SISchemaServerEvent *)self serverDeviceFixedContext];
    PBDataWriterWriteSubmessage();
  }

  serverGeneratedDismissal = [(SISchemaServerEvent *)self serverGeneratedDismissal];

  v17 = toCopy;
  if (serverGeneratedDismissal)
  {
    serverGeneratedDismissal2 = [(SISchemaServerEvent *)self serverGeneratedDismissal];
    PBDataWriterWriteSubmessage();

    v17 = toCopy;
  }
}

- (void)deleteServerGeneratedDismissal
{
  if (self->_whichEvent_Type == 106)
  {
    self->_whichEvent_Type = 0;
    self->_serverGeneratedDismissal = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (SISchemaServerGeneratedDismissal)serverGeneratedDismissal
{
  if (self->_whichEvent_Type == 106)
  {
    v3 = self->_serverGeneratedDismissal;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setServerGeneratedDismissal:(id)dismissal
{
  dismissalCopy = dismissal;
  userSpeechDuration = self->_userSpeechDuration;
  self->_userSpeechDuration = 0;

  serverConversationTrace = self->_serverConversationTrace;
  self->_serverConversationTrace = 0;

  turnInteraction = self->_turnInteraction;
  self->_turnInteraction = 0;

  speechResultSelected = self->_speechResultSelected;
  self->_speechResultSelected = 0;

  serverDeviceFixedContext = self->_serverDeviceFixedContext;
  self->_serverDeviceFixedContext = 0;

  v10 = 106;
  if (!dismissalCopy)
  {
    v10 = 0;
  }

  self->_whichEvent_Type = v10;
  serverGeneratedDismissal = self->_serverGeneratedDismissal;
  self->_serverGeneratedDismissal = dismissalCopy;
}

- (void)deleteServerDeviceFixedContext
{
  if (self->_whichEvent_Type == 105)
  {
    self->_whichEvent_Type = 0;
    self->_serverDeviceFixedContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (SISchemaDeviceFixedContext)serverDeviceFixedContext
{
  if (self->_whichEvent_Type == 105)
  {
    v3 = self->_serverDeviceFixedContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setServerDeviceFixedContext:(id)context
{
  contextCopy = context;
  userSpeechDuration = self->_userSpeechDuration;
  self->_userSpeechDuration = 0;

  serverConversationTrace = self->_serverConversationTrace;
  self->_serverConversationTrace = 0;

  turnInteraction = self->_turnInteraction;
  self->_turnInteraction = 0;

  speechResultSelected = self->_speechResultSelected;
  self->_speechResultSelected = 0;

  serverGeneratedDismissal = self->_serverGeneratedDismissal;
  self->_serverGeneratedDismissal = 0;

  v10 = 105;
  if (!contextCopy)
  {
    v10 = 0;
  }

  self->_whichEvent_Type = v10;
  serverDeviceFixedContext = self->_serverDeviceFixedContext;
  self->_serverDeviceFixedContext = contextCopy;
}

- (void)deleteSpeechResultSelected
{
  if (self->_whichEvent_Type == 104)
  {
    self->_whichEvent_Type = 0;
    self->_speechResultSelected = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (SISchemaSpeechResultSelected)speechResultSelected
{
  if (self->_whichEvent_Type == 104)
  {
    v3 = self->_speechResultSelected;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSpeechResultSelected:(id)selected
{
  selectedCopy = selected;
  userSpeechDuration = self->_userSpeechDuration;
  self->_userSpeechDuration = 0;

  serverConversationTrace = self->_serverConversationTrace;
  self->_serverConversationTrace = 0;

  turnInteraction = self->_turnInteraction;
  self->_turnInteraction = 0;

  serverDeviceFixedContext = self->_serverDeviceFixedContext;
  self->_serverDeviceFixedContext = 0;

  serverGeneratedDismissal = self->_serverGeneratedDismissal;
  self->_serverGeneratedDismissal = 0;

  v10 = 104;
  if (!selectedCopy)
  {
    v10 = 0;
  }

  self->_whichEvent_Type = v10;
  speechResultSelected = self->_speechResultSelected;
  self->_speechResultSelected = selectedCopy;
}

- (void)deleteTurnInteraction
{
  if (self->_whichEvent_Type == 103)
  {
    self->_whichEvent_Type = 0;
    self->_turnInteraction = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (SISchemaTurnInteraction)turnInteraction
{
  if (self->_whichEvent_Type == 103)
  {
    v3 = self->_turnInteraction;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setTurnInteraction:(id)interaction
{
  interactionCopy = interaction;
  userSpeechDuration = self->_userSpeechDuration;
  self->_userSpeechDuration = 0;

  serverConversationTrace = self->_serverConversationTrace;
  self->_serverConversationTrace = 0;

  speechResultSelected = self->_speechResultSelected;
  self->_speechResultSelected = 0;

  serverDeviceFixedContext = self->_serverDeviceFixedContext;
  self->_serverDeviceFixedContext = 0;

  serverGeneratedDismissal = self->_serverGeneratedDismissal;
  self->_serverGeneratedDismissal = 0;

  v10 = 103;
  if (!interactionCopy)
  {
    v10 = 0;
  }

  self->_whichEvent_Type = v10;
  turnInteraction = self->_turnInteraction;
  self->_turnInteraction = interactionCopy;
}

- (void)deleteServerConversationTrace
{
  if (self->_whichEvent_Type == 102)
  {
    self->_whichEvent_Type = 0;
    self->_serverConversationTrace = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (SISchemaConversationTrace)serverConversationTrace
{
  if (self->_whichEvent_Type == 102)
  {
    v3 = self->_serverConversationTrace;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setServerConversationTrace:(id)trace
{
  traceCopy = trace;
  userSpeechDuration = self->_userSpeechDuration;
  self->_userSpeechDuration = 0;

  turnInteraction = self->_turnInteraction;
  self->_turnInteraction = 0;

  speechResultSelected = self->_speechResultSelected;
  self->_speechResultSelected = 0;

  serverDeviceFixedContext = self->_serverDeviceFixedContext;
  self->_serverDeviceFixedContext = 0;

  serverGeneratedDismissal = self->_serverGeneratedDismissal;
  self->_serverGeneratedDismissal = 0;

  v10 = 102;
  if (!traceCopy)
  {
    v10 = 0;
  }

  self->_whichEvent_Type = v10;
  serverConversationTrace = self->_serverConversationTrace;
  self->_serverConversationTrace = traceCopy;
}

- (void)deleteUserSpeechDuration
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    self->_userSpeechDuration = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (SISchemaUserSpeechDuration)userSpeechDuration
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_userSpeechDuration;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setUserSpeechDuration:(id)duration
{
  durationCopy = duration;
  serverConversationTrace = self->_serverConversationTrace;
  self->_serverConversationTrace = 0;

  turnInteraction = self->_turnInteraction;
  self->_turnInteraction = 0;

  speechResultSelected = self->_speechResultSelected;
  self->_speechResultSelected = 0;

  serverDeviceFixedContext = self->_serverDeviceFixedContext;
  self->_serverDeviceFixedContext = 0;

  serverGeneratedDismissal = self->_serverGeneratedDismissal;
  self->_serverGeneratedDismissal = 0;

  v10 = 101;
  if (!durationCopy)
  {
    v10 = 0;
  }

  self->_whichEvent_Type = v10;
  userSpeechDuration = self->_userSpeechDuration;
  self->_userSpeechDuration = durationCopy;
}

- (id)qualifiedMessageName
{
  whichEvent_Type = [(SISchemaServerEvent *)self whichEvent_Type];
  if (whichEvent_Type - 101 > 5)
  {
    return @"com.apple.aiml.siri.uei.ServerEvent";
  }

  else
  {
    return off_1E78E6460[whichEvent_Type - 101];
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v28.receiver = self;
  v28.super_class = SISchemaServerEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v28 applySensitiveConditionsPolicy:policyCopy];
  eventMetadata = [(SISchemaServerEvent *)self eventMetadata];
  v7 = [eventMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(SISchemaServerEvent *)self deleteEventMetadata];
  }

  userSpeechDuration = [(SISchemaServerEvent *)self userSpeechDuration];
  v10 = [userSpeechDuration applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(SISchemaServerEvent *)self deleteUserSpeechDuration];
  }

  serverConversationTrace = [(SISchemaServerEvent *)self serverConversationTrace];
  v13 = [serverConversationTrace applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(SISchemaServerEvent *)self deleteServerConversationTrace];
  }

  turnInteraction = [(SISchemaServerEvent *)self turnInteraction];
  v16 = [turnInteraction applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(SISchemaServerEvent *)self deleteTurnInteraction];
  }

  speechResultSelected = [(SISchemaServerEvent *)self speechResultSelected];
  v19 = [speechResultSelected applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(SISchemaServerEvent *)self deleteSpeechResultSelected];
  }

  serverDeviceFixedContext = [(SISchemaServerEvent *)self serverDeviceFixedContext];
  v22 = [serverDeviceFixedContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage6 = [v22 suppressMessage];

  if (suppressMessage6)
  {
    [(SISchemaServerEvent *)self deleteServerDeviceFixedContext];
  }

  serverGeneratedDismissal = [(SISchemaServerEvent *)self serverGeneratedDismissal];
  v25 = [serverGeneratedDismissal applySensitiveConditionsPolicy:policyCopy];
  suppressMessage7 = [v25 suppressMessage];

  if (suppressMessage7)
  {
    [(SISchemaServerEvent *)self deleteServerGeneratedDismissal];
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
  v3 = [SISchemaUUID alloc];
  eventMetadata = [(SISchemaServerEvent *)self eventMetadata];
  turnID = [eventMetadata turnID];
  v6 = [(SISchemaUUID *)v3 initWithBytesAsData:turnID];

  if (v6)
  {
    value = [(SISchemaUUID *)v6 value];
    if (value)
    {
      value2 = [(SISchemaUUID *)v6 value];
      v9 = [value2 length] != 0;

      LODWORD(value) = 2 * v9;
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
  v3 = [SISchemaUUID alloc];
  eventMetadata = [(SISchemaServerEvent *)self eventMetadata];
  turnID = [eventMetadata turnID];
  v6 = [(SISchemaUUID *)v3 initWithBytesAsData:turnID];

  if (!v6)
  {
    goto LABEL_5;
  }

  value = [(SISchemaUUID *)v6 value];
  if (!value)
  {
    goto LABEL_6;
  }

  value2 = [(SISchemaUUID *)v6 value];
  v9 = [value2 length];

  if (v9)
  {
    value = v6;
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
  whichEvent_Type = [(SISchemaServerEvent *)self whichEvent_Type];
  if (whichEvent_Type - 101 > 5)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78EB2C8[whichEvent_Type - 101]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)tag
{
  if (tag - 101 > 5)
  {
    return 0;
  }

  else
  {
    return off_1E78EB2F8[tag - 101];
  }
}

@end