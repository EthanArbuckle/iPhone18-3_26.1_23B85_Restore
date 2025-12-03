@interface CDASchemaCDAClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (BOOL)isEqual:(id)equal;
- (CDASchemaCDAClientEvent)initWithDictionary:(id)dictionary;
- (CDASchemaCDAClientEvent)initWithJSON:(id)n;
- (CDASchemaCDADebugElectionDecisionMade)debugElectionDecisionMade;
- (CDASchemaCDADeviceAdvertisingEndContext)cdaAdvertisingEndChanged;
- (CDASchemaCDADeviceAdvertisingStartContext)cdaAdvertisingStartChanged;
- (CDASchemaCDADeviceStateContext)deviceElectionStateContext;
- (CDASchemaCDAElectionDecisionMade)electionDecisionMade;
- (CDASchemaCDAElectionTimerEnded)electionTimerEnded;
- (CDASchemaCDAUserFeedbackCompleted)userFeedbackCompleted;
- (CDASchemaCDAUserFeedbackParticipantCollectionReported)userFeedbackParticipantCollectionReported;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)clockIsolationLevel;
- (int)componentName;
- (unint64_t)hash;
- (void)deleteCdaAdvertisingEndChanged;
- (void)deleteCdaAdvertisingStartChanged;
- (void)deleteDebugElectionDecisionMade;
- (void)deleteDeviceElectionStateContext;
- (void)deleteElectionDecisionMade;
- (void)deleteElectionTimerEnded;
- (void)deleteUserFeedbackCompleted;
- (void)deleteUserFeedbackParticipantCollectionReported;
- (void)setCdaAdvertisingEndChanged:(id)changed;
- (void)setCdaAdvertisingStartChanged:(id)changed;
- (void)setDebugElectionDecisionMade:(id)made;
- (void)setDeviceElectionStateContext:(id)context;
- (void)setElectionDecisionMade:(id)made;
- (void)setElectionTimerEnded:(id)ended;
- (void)setUserFeedbackCompleted:(id)completed;
- (void)setUserFeedbackParticipantCollectionReported:(id)reported;
- (void)writeTo:(id)to;
@end

@implementation CDASchemaCDAClientEvent

- (id)qualifiedMessageName
{
  whichEvent_Type = [(CDASchemaCDAClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 101 > 7)
  {
    return @"com.apple.aiml.siri.cda.CDAClientEvent";
  }

  else
  {
    return off_1E78D23C0[whichEvent_Type - 101];
  }
}

- (int)clockIsolationLevel
{
  if ([(CDASchemaCDAClientEvent *)self whichEvent_Type]== 107)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (CDASchemaCDAElectionDecisionMade)electionDecisionMade
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_electionDecisionMade;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (CDASchemaCDADeviceStateContext)deviceElectionStateContext
{
  if (self->_whichEvent_Type == 103)
  {
    v3 = self->_deviceElectionStateContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (CDASchemaCDADeviceAdvertisingStartContext)cdaAdvertisingStartChanged
{
  if (self->_whichEvent_Type == 104)
  {
    v3 = self->_cdaAdvertisingStartChanged;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (CDASchemaCDADebugElectionDecisionMade)debugElectionDecisionMade
{
  if (self->_whichEvent_Type == 102)
  {
    v3 = self->_debugElectionDecisionMade;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (CDASchemaCDAElectionTimerEnded)electionTimerEnded
{
  if (self->_whichEvent_Type == 106)
  {
    v3 = self->_electionTimerEnded;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (CDASchemaCDADeviceAdvertisingEndContext)cdaAdvertisingEndChanged
{
  if (self->_whichEvent_Type == 105)
  {
    v3 = self->_cdaAdvertisingEndChanged;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (CDASchemaCDAUserFeedbackParticipantCollectionReported)userFeedbackParticipantCollectionReported
{
  if (self->_whichEvent_Type == 108)
  {
    v3 = self->_userFeedbackParticipantCollectionReported;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (CDASchemaCDAUserFeedbackCompleted)userFeedbackCompleted
{
  if (self->_whichEvent_Type == 107)
  {
    v3 = self->_userFeedbackCompleted;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (CDASchemaCDAClientEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v28.receiver = self;
  v28.super_class = CDASchemaCDAClientEvent;
  v5 = [(CDASchemaCDAClientEvent *)&v28 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[CDASchemaCDAClientEventMetadata alloc] initWithDictionary:v6];
      [(CDASchemaCDAClientEvent *)v5 setEventMetadata:v7];
    }

    v27 = v6;
    v8 = [dictionaryCopy objectForKeyedSubscript:@"electionDecisionMade"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[CDASchemaCDAElectionDecisionMade alloc] initWithDictionary:v8];
      [(CDASchemaCDAClientEvent *)v5 setElectionDecisionMade:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:{@"debugElectionDecisionMade", v8}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[CDASchemaCDADebugElectionDecisionMade alloc] initWithDictionary:v10];
      [(CDASchemaCDAClientEvent *)v5 setDebugElectionDecisionMade:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"deviceElectionStateContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[CDASchemaCDADeviceStateContext alloc] initWithDictionary:v12];
      [(CDASchemaCDAClientEvent *)v5 setDeviceElectionStateContext:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"cdaAdvertisingStartChanged"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[CDASchemaCDADeviceAdvertisingStartContext alloc] initWithDictionary:v14];
      [(CDASchemaCDAClientEvent *)v5 setCdaAdvertisingStartChanged:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"cdaAdvertisingEndChanged"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[CDASchemaCDADeviceAdvertisingEndContext alloc] initWithDictionary:v16];
      [(CDASchemaCDAClientEvent *)v5 setCdaAdvertisingEndChanged:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"electionTimerEnded"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[CDASchemaCDAElectionTimerEnded alloc] initWithDictionary:v18];
      [(CDASchemaCDAClientEvent *)v5 setElectionTimerEnded:v19];
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"userFeedbackCompleted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [[CDASchemaCDAUserFeedbackCompleted alloc] initWithDictionary:v20];
      [(CDASchemaCDAClientEvent *)v5 setUserFeedbackCompleted:v21];
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"userFeedbackParticipantCollectionReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [[CDASchemaCDAUserFeedbackParticipantCollectionReported alloc] initWithDictionary:v22];
      [(CDASchemaCDAClientEvent *)v5 setUserFeedbackParticipantCollectionReported:v23];
    }

    v24 = v5;
  }

  return v5;
}

- (CDASchemaCDAClientEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(CDASchemaCDAClientEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(CDASchemaCDAClientEvent *)self dictionaryRepresentation];
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
  if (self->_cdaAdvertisingEndChanged)
  {
    cdaAdvertisingEndChanged = [(CDASchemaCDAClientEvent *)self cdaAdvertisingEndChanged];
    dictionaryRepresentation = [cdaAdvertisingEndChanged dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"cdaAdvertisingEndChanged"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"cdaAdvertisingEndChanged"];
    }
  }

  if (self->_cdaAdvertisingStartChanged)
  {
    cdaAdvertisingStartChanged = [(CDASchemaCDAClientEvent *)self cdaAdvertisingStartChanged];
    dictionaryRepresentation2 = [cdaAdvertisingStartChanged dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"cdaAdvertisingStartChanged"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"cdaAdvertisingStartChanged"];
    }
  }

  if (self->_debugElectionDecisionMade)
  {
    debugElectionDecisionMade = [(CDASchemaCDAClientEvent *)self debugElectionDecisionMade];
    dictionaryRepresentation3 = [debugElectionDecisionMade dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"debugElectionDecisionMade"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"debugElectionDecisionMade"];
    }
  }

  if (self->_deviceElectionStateContext)
  {
    deviceElectionStateContext = [(CDASchemaCDAClientEvent *)self deviceElectionStateContext];
    dictionaryRepresentation4 = [deviceElectionStateContext dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"deviceElectionStateContext"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"deviceElectionStateContext"];
    }
  }

  if (self->_electionDecisionMade)
  {
    electionDecisionMade = [(CDASchemaCDAClientEvent *)self electionDecisionMade];
    dictionaryRepresentation5 = [electionDecisionMade dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"electionDecisionMade"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"electionDecisionMade"];
    }
  }

  if (self->_electionTimerEnded)
  {
    electionTimerEnded = [(CDASchemaCDAClientEvent *)self electionTimerEnded];
    dictionaryRepresentation6 = [electionTimerEnded dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"electionTimerEnded"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"electionTimerEnded"];
    }
  }

  if (self->_eventMetadata)
  {
    eventMetadata = [(CDASchemaCDAClientEvent *)self eventMetadata];
    dictionaryRepresentation7 = [eventMetadata dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"eventMetadata"];
    }
  }

  if (self->_userFeedbackCompleted)
  {
    userFeedbackCompleted = [(CDASchemaCDAClientEvent *)self userFeedbackCompleted];
    dictionaryRepresentation8 = [userFeedbackCompleted dictionaryRepresentation];
    if (dictionaryRepresentation8)
    {
      [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"userFeedbackCompleted"];
    }

    else
    {
      null8 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null8 forKeyedSubscript:@"userFeedbackCompleted"];
    }
  }

  if (self->_userFeedbackParticipantCollectionReported)
  {
    userFeedbackParticipantCollectionReported = [(CDASchemaCDAClientEvent *)self userFeedbackParticipantCollectionReported];
    dictionaryRepresentation9 = [userFeedbackParticipantCollectionReported dictionaryRepresentation];
    if (dictionaryRepresentation9)
    {
      [dictionary setObject:dictionaryRepresentation9 forKeyedSubscript:@"userFeedbackParticipantCollectionReported"];
    }

    else
    {
      null9 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null9 forKeyedSubscript:@"userFeedbackParticipantCollectionReported"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(CDASchemaCDAClientEventMetadata *)self->_eventMetadata hash];
  v4 = [(CDASchemaCDAElectionDecisionMade *)self->_electionDecisionMade hash]^ v3;
  v5 = [(CDASchemaCDADebugElectionDecisionMade *)self->_debugElectionDecisionMade hash];
  v6 = v4 ^ v5 ^ [(CDASchemaCDADeviceStateContext *)self->_deviceElectionStateContext hash];
  v7 = [(CDASchemaCDADeviceAdvertisingStartContext *)self->_cdaAdvertisingStartChanged hash];
  v8 = v7 ^ [(CDASchemaCDADeviceAdvertisingEndContext *)self->_cdaAdvertisingEndChanged hash];
  v9 = v6 ^ v8 ^ [(CDASchemaCDAElectionTimerEnded *)self->_electionTimerEnded hash];
  v10 = [(CDASchemaCDAUserFeedbackCompleted *)self->_userFeedbackCompleted hash];
  return v9 ^ v10 ^ [(CDASchemaCDAUserFeedbackParticipantCollectionReported *)self->_userFeedbackParticipantCollectionReported hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_48;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [equalCopy whichEvent_Type])
  {
    goto LABEL_48;
  }

  eventMetadata = [(CDASchemaCDAClientEvent *)self eventMetadata];
  eventMetadata2 = [equalCopy eventMetadata];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_47;
  }

  eventMetadata3 = [(CDASchemaCDAClientEvent *)self eventMetadata];
  if (eventMetadata3)
  {
    v9 = eventMetadata3;
    eventMetadata4 = [(CDASchemaCDAClientEvent *)self eventMetadata];
    eventMetadata5 = [equalCopy eventMetadata];
    v12 = [eventMetadata4 isEqual:eventMetadata5];

    if (!v12)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  eventMetadata = [(CDASchemaCDAClientEvent *)self electionDecisionMade];
  eventMetadata2 = [equalCopy electionDecisionMade];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_47;
  }

  electionDecisionMade = [(CDASchemaCDAClientEvent *)self electionDecisionMade];
  if (electionDecisionMade)
  {
    v14 = electionDecisionMade;
    electionDecisionMade2 = [(CDASchemaCDAClientEvent *)self electionDecisionMade];
    electionDecisionMade3 = [equalCopy electionDecisionMade];
    v17 = [electionDecisionMade2 isEqual:electionDecisionMade3];

    if (!v17)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  eventMetadata = [(CDASchemaCDAClientEvent *)self debugElectionDecisionMade];
  eventMetadata2 = [equalCopy debugElectionDecisionMade];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_47;
  }

  debugElectionDecisionMade = [(CDASchemaCDAClientEvent *)self debugElectionDecisionMade];
  if (debugElectionDecisionMade)
  {
    v19 = debugElectionDecisionMade;
    debugElectionDecisionMade2 = [(CDASchemaCDAClientEvent *)self debugElectionDecisionMade];
    debugElectionDecisionMade3 = [equalCopy debugElectionDecisionMade];
    v22 = [debugElectionDecisionMade2 isEqual:debugElectionDecisionMade3];

    if (!v22)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  eventMetadata = [(CDASchemaCDAClientEvent *)self deviceElectionStateContext];
  eventMetadata2 = [equalCopy deviceElectionStateContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_47;
  }

  deviceElectionStateContext = [(CDASchemaCDAClientEvent *)self deviceElectionStateContext];
  if (deviceElectionStateContext)
  {
    v24 = deviceElectionStateContext;
    deviceElectionStateContext2 = [(CDASchemaCDAClientEvent *)self deviceElectionStateContext];
    deviceElectionStateContext3 = [equalCopy deviceElectionStateContext];
    v27 = [deviceElectionStateContext2 isEqual:deviceElectionStateContext3];

    if (!v27)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  eventMetadata = [(CDASchemaCDAClientEvent *)self cdaAdvertisingStartChanged];
  eventMetadata2 = [equalCopy cdaAdvertisingStartChanged];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_47;
  }

  cdaAdvertisingStartChanged = [(CDASchemaCDAClientEvent *)self cdaAdvertisingStartChanged];
  if (cdaAdvertisingStartChanged)
  {
    v29 = cdaAdvertisingStartChanged;
    cdaAdvertisingStartChanged2 = [(CDASchemaCDAClientEvent *)self cdaAdvertisingStartChanged];
    cdaAdvertisingStartChanged3 = [equalCopy cdaAdvertisingStartChanged];
    v32 = [cdaAdvertisingStartChanged2 isEqual:cdaAdvertisingStartChanged3];

    if (!v32)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  eventMetadata = [(CDASchemaCDAClientEvent *)self cdaAdvertisingEndChanged];
  eventMetadata2 = [equalCopy cdaAdvertisingEndChanged];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_47;
  }

  cdaAdvertisingEndChanged = [(CDASchemaCDAClientEvent *)self cdaAdvertisingEndChanged];
  if (cdaAdvertisingEndChanged)
  {
    v34 = cdaAdvertisingEndChanged;
    cdaAdvertisingEndChanged2 = [(CDASchemaCDAClientEvent *)self cdaAdvertisingEndChanged];
    cdaAdvertisingEndChanged3 = [equalCopy cdaAdvertisingEndChanged];
    v37 = [cdaAdvertisingEndChanged2 isEqual:cdaAdvertisingEndChanged3];

    if (!v37)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  eventMetadata = [(CDASchemaCDAClientEvent *)self electionTimerEnded];
  eventMetadata2 = [equalCopy electionTimerEnded];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_47;
  }

  electionTimerEnded = [(CDASchemaCDAClientEvent *)self electionTimerEnded];
  if (electionTimerEnded)
  {
    v39 = electionTimerEnded;
    electionTimerEnded2 = [(CDASchemaCDAClientEvent *)self electionTimerEnded];
    electionTimerEnded3 = [equalCopy electionTimerEnded];
    v42 = [electionTimerEnded2 isEqual:electionTimerEnded3];

    if (!v42)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  eventMetadata = [(CDASchemaCDAClientEvent *)self userFeedbackCompleted];
  eventMetadata2 = [equalCopy userFeedbackCompleted];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_47;
  }

  userFeedbackCompleted = [(CDASchemaCDAClientEvent *)self userFeedbackCompleted];
  if (userFeedbackCompleted)
  {
    v44 = userFeedbackCompleted;
    userFeedbackCompleted2 = [(CDASchemaCDAClientEvent *)self userFeedbackCompleted];
    userFeedbackCompleted3 = [equalCopy userFeedbackCompleted];
    v47 = [userFeedbackCompleted2 isEqual:userFeedbackCompleted3];

    if (!v47)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  eventMetadata = [(CDASchemaCDAClientEvent *)self userFeedbackParticipantCollectionReported];
  eventMetadata2 = [equalCopy userFeedbackParticipantCollectionReported];
  if ((eventMetadata != 0) != (eventMetadata2 == 0))
  {
    userFeedbackParticipantCollectionReported = [(CDASchemaCDAClientEvent *)self userFeedbackParticipantCollectionReported];
    if (!userFeedbackParticipantCollectionReported)
    {

LABEL_51:
      v53 = 1;
      goto LABEL_49;
    }

    v49 = userFeedbackParticipantCollectionReported;
    userFeedbackParticipantCollectionReported2 = [(CDASchemaCDAClientEvent *)self userFeedbackParticipantCollectionReported];
    userFeedbackParticipantCollectionReported3 = [equalCopy userFeedbackParticipantCollectionReported];
    v52 = [userFeedbackParticipantCollectionReported2 isEqual:userFeedbackParticipantCollectionReported3];

    if (v52)
    {
      goto LABEL_51;
    }
  }

  else
  {
LABEL_47:
  }

LABEL_48:
  v53 = 0;
LABEL_49:

  return v53;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  eventMetadata = [(CDASchemaCDAClientEvent *)self eventMetadata];

  if (eventMetadata)
  {
    eventMetadata2 = [(CDASchemaCDAClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  electionDecisionMade = [(CDASchemaCDAClientEvent *)self electionDecisionMade];

  if (electionDecisionMade)
  {
    electionDecisionMade2 = [(CDASchemaCDAClientEvent *)self electionDecisionMade];
    PBDataWriterWriteSubmessage();
  }

  debugElectionDecisionMade = [(CDASchemaCDAClientEvent *)self debugElectionDecisionMade];

  if (debugElectionDecisionMade)
  {
    debugElectionDecisionMade2 = [(CDASchemaCDAClientEvent *)self debugElectionDecisionMade];
    PBDataWriterWriteSubmessage();
  }

  deviceElectionStateContext = [(CDASchemaCDAClientEvent *)self deviceElectionStateContext];

  if (deviceElectionStateContext)
  {
    deviceElectionStateContext2 = [(CDASchemaCDAClientEvent *)self deviceElectionStateContext];
    PBDataWriterWriteSubmessage();
  }

  cdaAdvertisingStartChanged = [(CDASchemaCDAClientEvent *)self cdaAdvertisingStartChanged];

  if (cdaAdvertisingStartChanged)
  {
    cdaAdvertisingStartChanged2 = [(CDASchemaCDAClientEvent *)self cdaAdvertisingStartChanged];
    PBDataWriterWriteSubmessage();
  }

  cdaAdvertisingEndChanged = [(CDASchemaCDAClientEvent *)self cdaAdvertisingEndChanged];

  if (cdaAdvertisingEndChanged)
  {
    cdaAdvertisingEndChanged2 = [(CDASchemaCDAClientEvent *)self cdaAdvertisingEndChanged];
    PBDataWriterWriteSubmessage();
  }

  electionTimerEnded = [(CDASchemaCDAClientEvent *)self electionTimerEnded];

  if (electionTimerEnded)
  {
    electionTimerEnded2 = [(CDASchemaCDAClientEvent *)self electionTimerEnded];
    PBDataWriterWriteSubmessage();
  }

  userFeedbackCompleted = [(CDASchemaCDAClientEvent *)self userFeedbackCompleted];

  if (userFeedbackCompleted)
  {
    userFeedbackCompleted2 = [(CDASchemaCDAClientEvent *)self userFeedbackCompleted];
    PBDataWriterWriteSubmessage();
  }

  userFeedbackParticipantCollectionReported = [(CDASchemaCDAClientEvent *)self userFeedbackParticipantCollectionReported];

  v21 = toCopy;
  if (userFeedbackParticipantCollectionReported)
  {
    userFeedbackParticipantCollectionReported2 = [(CDASchemaCDAClientEvent *)self userFeedbackParticipantCollectionReported];
    PBDataWriterWriteSubmessage();

    v21 = toCopy;
  }
}

- (void)deleteUserFeedbackParticipantCollectionReported
{
  if (self->_whichEvent_Type == 108)
  {
    self->_whichEvent_Type = 0;
    self->_userFeedbackParticipantCollectionReported = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setUserFeedbackParticipantCollectionReported:(id)reported
{
  reportedCopy = reported;
  electionDecisionMade = self->_electionDecisionMade;
  self->_electionDecisionMade = 0;

  debugElectionDecisionMade = self->_debugElectionDecisionMade;
  self->_debugElectionDecisionMade = 0;

  deviceElectionStateContext = self->_deviceElectionStateContext;
  self->_deviceElectionStateContext = 0;

  cdaAdvertisingStartChanged = self->_cdaAdvertisingStartChanged;
  self->_cdaAdvertisingStartChanged = 0;

  cdaAdvertisingEndChanged = self->_cdaAdvertisingEndChanged;
  self->_cdaAdvertisingEndChanged = 0;

  electionTimerEnded = self->_electionTimerEnded;
  self->_electionTimerEnded = 0;

  userFeedbackCompleted = self->_userFeedbackCompleted;
  self->_userFeedbackCompleted = 0;

  v12 = 108;
  if (!reportedCopy)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  userFeedbackParticipantCollectionReported = self->_userFeedbackParticipantCollectionReported;
  self->_userFeedbackParticipantCollectionReported = reportedCopy;
}

- (void)deleteUserFeedbackCompleted
{
  if (self->_whichEvent_Type == 107)
  {
    self->_whichEvent_Type = 0;
    self->_userFeedbackCompleted = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setUserFeedbackCompleted:(id)completed
{
  completedCopy = completed;
  electionDecisionMade = self->_electionDecisionMade;
  self->_electionDecisionMade = 0;

  debugElectionDecisionMade = self->_debugElectionDecisionMade;
  self->_debugElectionDecisionMade = 0;

  deviceElectionStateContext = self->_deviceElectionStateContext;
  self->_deviceElectionStateContext = 0;

  cdaAdvertisingStartChanged = self->_cdaAdvertisingStartChanged;
  self->_cdaAdvertisingStartChanged = 0;

  cdaAdvertisingEndChanged = self->_cdaAdvertisingEndChanged;
  self->_cdaAdvertisingEndChanged = 0;

  electionTimerEnded = self->_electionTimerEnded;
  self->_electionTimerEnded = 0;

  userFeedbackParticipantCollectionReported = self->_userFeedbackParticipantCollectionReported;
  self->_userFeedbackParticipantCollectionReported = 0;

  v12 = 107;
  if (!completedCopy)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  userFeedbackCompleted = self->_userFeedbackCompleted;
  self->_userFeedbackCompleted = completedCopy;
}

- (void)deleteElectionTimerEnded
{
  if (self->_whichEvent_Type == 106)
  {
    self->_whichEvent_Type = 0;
    self->_electionTimerEnded = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setElectionTimerEnded:(id)ended
{
  endedCopy = ended;
  electionDecisionMade = self->_electionDecisionMade;
  self->_electionDecisionMade = 0;

  debugElectionDecisionMade = self->_debugElectionDecisionMade;
  self->_debugElectionDecisionMade = 0;

  deviceElectionStateContext = self->_deviceElectionStateContext;
  self->_deviceElectionStateContext = 0;

  cdaAdvertisingStartChanged = self->_cdaAdvertisingStartChanged;
  self->_cdaAdvertisingStartChanged = 0;

  cdaAdvertisingEndChanged = self->_cdaAdvertisingEndChanged;
  self->_cdaAdvertisingEndChanged = 0;

  userFeedbackCompleted = self->_userFeedbackCompleted;
  self->_userFeedbackCompleted = 0;

  userFeedbackParticipantCollectionReported = self->_userFeedbackParticipantCollectionReported;
  self->_userFeedbackParticipantCollectionReported = 0;

  v12 = 106;
  if (!endedCopy)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  electionTimerEnded = self->_electionTimerEnded;
  self->_electionTimerEnded = endedCopy;
}

- (void)deleteCdaAdvertisingEndChanged
{
  if (self->_whichEvent_Type == 105)
  {
    self->_whichEvent_Type = 0;
    self->_cdaAdvertisingEndChanged = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setCdaAdvertisingEndChanged:(id)changed
{
  changedCopy = changed;
  electionDecisionMade = self->_electionDecisionMade;
  self->_electionDecisionMade = 0;

  debugElectionDecisionMade = self->_debugElectionDecisionMade;
  self->_debugElectionDecisionMade = 0;

  deviceElectionStateContext = self->_deviceElectionStateContext;
  self->_deviceElectionStateContext = 0;

  cdaAdvertisingStartChanged = self->_cdaAdvertisingStartChanged;
  self->_cdaAdvertisingStartChanged = 0;

  electionTimerEnded = self->_electionTimerEnded;
  self->_electionTimerEnded = 0;

  userFeedbackCompleted = self->_userFeedbackCompleted;
  self->_userFeedbackCompleted = 0;

  userFeedbackParticipantCollectionReported = self->_userFeedbackParticipantCollectionReported;
  self->_userFeedbackParticipantCollectionReported = 0;

  v12 = 105;
  if (!changedCopy)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  cdaAdvertisingEndChanged = self->_cdaAdvertisingEndChanged;
  self->_cdaAdvertisingEndChanged = changedCopy;
}

- (void)deleteCdaAdvertisingStartChanged
{
  if (self->_whichEvent_Type == 104)
  {
    self->_whichEvent_Type = 0;
    self->_cdaAdvertisingStartChanged = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setCdaAdvertisingStartChanged:(id)changed
{
  changedCopy = changed;
  electionDecisionMade = self->_electionDecisionMade;
  self->_electionDecisionMade = 0;

  debugElectionDecisionMade = self->_debugElectionDecisionMade;
  self->_debugElectionDecisionMade = 0;

  deviceElectionStateContext = self->_deviceElectionStateContext;
  self->_deviceElectionStateContext = 0;

  cdaAdvertisingEndChanged = self->_cdaAdvertisingEndChanged;
  self->_cdaAdvertisingEndChanged = 0;

  electionTimerEnded = self->_electionTimerEnded;
  self->_electionTimerEnded = 0;

  userFeedbackCompleted = self->_userFeedbackCompleted;
  self->_userFeedbackCompleted = 0;

  userFeedbackParticipantCollectionReported = self->_userFeedbackParticipantCollectionReported;
  self->_userFeedbackParticipantCollectionReported = 0;

  v12 = 104;
  if (!changedCopy)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  cdaAdvertisingStartChanged = self->_cdaAdvertisingStartChanged;
  self->_cdaAdvertisingStartChanged = changedCopy;
}

- (void)deleteDeviceElectionStateContext
{
  if (self->_whichEvent_Type == 103)
  {
    self->_whichEvent_Type = 0;
    self->_deviceElectionStateContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setDeviceElectionStateContext:(id)context
{
  contextCopy = context;
  electionDecisionMade = self->_electionDecisionMade;
  self->_electionDecisionMade = 0;

  debugElectionDecisionMade = self->_debugElectionDecisionMade;
  self->_debugElectionDecisionMade = 0;

  cdaAdvertisingStartChanged = self->_cdaAdvertisingStartChanged;
  self->_cdaAdvertisingStartChanged = 0;

  cdaAdvertisingEndChanged = self->_cdaAdvertisingEndChanged;
  self->_cdaAdvertisingEndChanged = 0;

  electionTimerEnded = self->_electionTimerEnded;
  self->_electionTimerEnded = 0;

  userFeedbackCompleted = self->_userFeedbackCompleted;
  self->_userFeedbackCompleted = 0;

  userFeedbackParticipantCollectionReported = self->_userFeedbackParticipantCollectionReported;
  self->_userFeedbackParticipantCollectionReported = 0;

  v12 = 103;
  if (!contextCopy)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  deviceElectionStateContext = self->_deviceElectionStateContext;
  self->_deviceElectionStateContext = contextCopy;
}

- (void)deleteDebugElectionDecisionMade
{
  if (self->_whichEvent_Type == 102)
  {
    self->_whichEvent_Type = 0;
    self->_debugElectionDecisionMade = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setDebugElectionDecisionMade:(id)made
{
  madeCopy = made;
  electionDecisionMade = self->_electionDecisionMade;
  self->_electionDecisionMade = 0;

  deviceElectionStateContext = self->_deviceElectionStateContext;
  self->_deviceElectionStateContext = 0;

  cdaAdvertisingStartChanged = self->_cdaAdvertisingStartChanged;
  self->_cdaAdvertisingStartChanged = 0;

  cdaAdvertisingEndChanged = self->_cdaAdvertisingEndChanged;
  self->_cdaAdvertisingEndChanged = 0;

  electionTimerEnded = self->_electionTimerEnded;
  self->_electionTimerEnded = 0;

  userFeedbackCompleted = self->_userFeedbackCompleted;
  self->_userFeedbackCompleted = 0;

  userFeedbackParticipantCollectionReported = self->_userFeedbackParticipantCollectionReported;
  self->_userFeedbackParticipantCollectionReported = 0;

  v12 = 102;
  if (!madeCopy)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  debugElectionDecisionMade = self->_debugElectionDecisionMade;
  self->_debugElectionDecisionMade = madeCopy;
}

- (void)deleteElectionDecisionMade
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    self->_electionDecisionMade = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setElectionDecisionMade:(id)made
{
  madeCopy = made;
  debugElectionDecisionMade = self->_debugElectionDecisionMade;
  self->_debugElectionDecisionMade = 0;

  deviceElectionStateContext = self->_deviceElectionStateContext;
  self->_deviceElectionStateContext = 0;

  cdaAdvertisingStartChanged = self->_cdaAdvertisingStartChanged;
  self->_cdaAdvertisingStartChanged = 0;

  cdaAdvertisingEndChanged = self->_cdaAdvertisingEndChanged;
  self->_cdaAdvertisingEndChanged = 0;

  electionTimerEnded = self->_electionTimerEnded;
  self->_electionTimerEnded = 0;

  userFeedbackCompleted = self->_userFeedbackCompleted;
  self->_userFeedbackCompleted = 0;

  userFeedbackParticipantCollectionReported = self->_userFeedbackParticipantCollectionReported;
  self->_userFeedbackParticipantCollectionReported = 0;

  v12 = 101;
  if (!madeCopy)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  electionDecisionMade = self->_electionDecisionMade;
  self->_electionDecisionMade = madeCopy;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v34.receiver = self;
  v34.super_class = CDASchemaCDAClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v34 applySensitiveConditionsPolicy:policyCopy];
  eventMetadata = [(CDASchemaCDAClientEvent *)self eventMetadata];
  v7 = [eventMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(CDASchemaCDAClientEvent *)self deleteEventMetadata];
  }

  electionDecisionMade = [(CDASchemaCDAClientEvent *)self electionDecisionMade];
  v10 = [electionDecisionMade applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(CDASchemaCDAClientEvent *)self deleteElectionDecisionMade];
  }

  debugElectionDecisionMade = [(CDASchemaCDAClientEvent *)self debugElectionDecisionMade];
  v13 = [debugElectionDecisionMade applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(CDASchemaCDAClientEvent *)self deleteDebugElectionDecisionMade];
  }

  deviceElectionStateContext = [(CDASchemaCDAClientEvent *)self deviceElectionStateContext];
  v16 = [deviceElectionStateContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(CDASchemaCDAClientEvent *)self deleteDeviceElectionStateContext];
  }

  cdaAdvertisingStartChanged = [(CDASchemaCDAClientEvent *)self cdaAdvertisingStartChanged];
  v19 = [cdaAdvertisingStartChanged applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(CDASchemaCDAClientEvent *)self deleteCdaAdvertisingStartChanged];
  }

  cdaAdvertisingEndChanged = [(CDASchemaCDAClientEvent *)self cdaAdvertisingEndChanged];
  v22 = [cdaAdvertisingEndChanged applySensitiveConditionsPolicy:policyCopy];
  suppressMessage6 = [v22 suppressMessage];

  if (suppressMessage6)
  {
    [(CDASchemaCDAClientEvent *)self deleteCdaAdvertisingEndChanged];
  }

  electionTimerEnded = [(CDASchemaCDAClientEvent *)self electionTimerEnded];
  v25 = [electionTimerEnded applySensitiveConditionsPolicy:policyCopy];
  suppressMessage7 = [v25 suppressMessage];

  if (suppressMessage7)
  {
    [(CDASchemaCDAClientEvent *)self deleteElectionTimerEnded];
  }

  userFeedbackCompleted = [(CDASchemaCDAClientEvent *)self userFeedbackCompleted];
  v28 = [userFeedbackCompleted applySensitiveConditionsPolicy:policyCopy];
  suppressMessage8 = [v28 suppressMessage];

  if (suppressMessage8)
  {
    [(CDASchemaCDAClientEvent *)self deleteUserFeedbackCompleted];
  }

  userFeedbackParticipantCollectionReported = [(CDASchemaCDAClientEvent *)self userFeedbackParticipantCollectionReported];
  v31 = [userFeedbackParticipantCollectionReported applySensitiveConditionsPolicy:policyCopy];
  suppressMessage9 = [v31 suppressMessage];

  if (suppressMessage9)
  {
    [(CDASchemaCDAClientEvent *)self deleteUserFeedbackParticipantCollectionReported];
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
  eventMetadata = [(CDASchemaCDAClientEvent *)self eventMetadata];
  cdaId = [eventMetadata cdaId];

  if (cdaId)
  {
    value = [cdaId value];
    if (value)
    {
      value2 = [cdaId value];
      v6 = [value2 length];

      if (v6)
      {
        LODWORD(value) = 23;
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
  eventMetadata = [(CDASchemaCDAClientEvent *)self eventMetadata];
  cdaId = [eventMetadata cdaId];

  if (!cdaId)
  {
    goto LABEL_5;
  }

  value = [cdaId value];
  if (!value)
  {
    goto LABEL_6;
  }

  value2 = [cdaId value];
  v6 = [value2 length];

  if (v6)
  {
    value = cdaId;
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
  whichEvent_Type = [(CDASchemaCDAClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 101 > 7)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78E9040[whichEvent_Type - 101]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)tag
{
  if (tag - 101 > 7)
  {
    return 0;
  }

  else
  {
    return off_1E78E9080[tag - 101];
  }
}

@end