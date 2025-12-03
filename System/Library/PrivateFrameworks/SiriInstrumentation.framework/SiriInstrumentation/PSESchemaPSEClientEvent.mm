@interface PSESchemaPSEClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PSESchemaPSEAlarmSignalGenerated)alarmSignalGenerated;
- (PSESchemaPSEAppIntentSignalGenerated)appIntentSignalGenerated;
- (PSESchemaPSECallSignalGenerated)callSignalGenerated;
- (PSESchemaPSEClientEvent)initWithDictionary:(id)dictionary;
- (PSESchemaPSEClientEvent)initWithJSON:(id)n;
- (PSESchemaPSEGenericSignalGenerated)genericSignalGenerated;
- (PSESchemaPSEHomeFollowupSignalGenerated)homeFollowupSignalGenerated;
- (PSESchemaPSEMapsSignalGenerated)mapsSignalGenerated;
- (PSESchemaPSEMediaSignalGenerated)mediaSignalGenerated;
- (PSESchemaPSEMessageSignalGenerated)messageSignalGenerated;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)clockIsolationLevel;
- (int)componentName;
- (unint64_t)hash;
- (void)deleteAlarmSignalGenerated;
- (void)deleteAppIntentSignalGenerated;
- (void)deleteCallSignalGenerated;
- (void)deleteGenericSignalGenerated;
- (void)deleteHomeFollowupSignalGenerated;
- (void)deleteMapsSignalGenerated;
- (void)deleteMediaSignalGenerated;
- (void)deleteMessageSignalGenerated;
- (void)setAlarmSignalGenerated:(id)generated;
- (void)setAppIntentSignalGenerated:(id)generated;
- (void)setCallSignalGenerated:(id)generated;
- (void)setGenericSignalGenerated:(id)generated;
- (void)setHomeFollowupSignalGenerated:(id)generated;
- (void)setMapsSignalGenerated:(id)generated;
- (void)setMediaSignalGenerated:(id)generated;
- (void)setMessageSignalGenerated:(id)generated;
- (void)writeTo:(id)to;
@end

@implementation PSESchemaPSEClientEvent

- (PSESchemaPSEClientEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v28.receiver = self;
  v28.super_class = PSESchemaPSEClientEvent;
  v5 = [(PSESchemaPSEClientEvent *)&v28 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[PSESchemaPSEClientEventMetadata alloc] initWithDictionary:v6];
      [(PSESchemaPSEClientEvent *)v5 setEventMetadata:v7];
    }

    v27 = v6;
    v8 = [dictionaryCopy objectForKeyedSubscript:@"genericSignalGenerated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[PSESchemaPSEGenericSignalGenerated alloc] initWithDictionary:v8];
      [(PSESchemaPSEClientEvent *)v5 setGenericSignalGenerated:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:{@"callSignalGenerated", v8}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[PSESchemaPSECallSignalGenerated alloc] initWithDictionary:v10];
      [(PSESchemaPSEClientEvent *)v5 setCallSignalGenerated:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"messageSignalGenerated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[PSESchemaPSEMessageSignalGenerated alloc] initWithDictionary:v12];
      [(PSESchemaPSEClientEvent *)v5 setMessageSignalGenerated:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"mediaSignalGenerated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[PSESchemaPSEMediaSignalGenerated alloc] initWithDictionary:v14];
      [(PSESchemaPSEClientEvent *)v5 setMediaSignalGenerated:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"homeFollowupSignalGenerated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[PSESchemaPSEHomeFollowupSignalGenerated alloc] initWithDictionary:v16];
      [(PSESchemaPSEClientEvent *)v5 setHomeFollowupSignalGenerated:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"mapsSignalGenerated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[PSESchemaPSEMapsSignalGenerated alloc] initWithDictionary:v18];
      [(PSESchemaPSEClientEvent *)v5 setMapsSignalGenerated:v19];
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"alarmSignalGenerated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [[PSESchemaPSEAlarmSignalGenerated alloc] initWithDictionary:v20];
      [(PSESchemaPSEClientEvent *)v5 setAlarmSignalGenerated:v21];
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"appIntentSignalGenerated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [[PSESchemaPSEAppIntentSignalGenerated alloc] initWithDictionary:v22];
      [(PSESchemaPSEClientEvent *)v5 setAppIntentSignalGenerated:v23];
    }

    v24 = v5;
  }

  return v5;
}

- (PSESchemaPSEClientEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PSESchemaPSEClientEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PSESchemaPSEClientEvent *)self dictionaryRepresentation];
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
  if (self->_alarmSignalGenerated)
  {
    alarmSignalGenerated = [(PSESchemaPSEClientEvent *)self alarmSignalGenerated];
    dictionaryRepresentation = [alarmSignalGenerated dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"alarmSignalGenerated"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"alarmSignalGenerated"];
    }
  }

  if (self->_appIntentSignalGenerated)
  {
    appIntentSignalGenerated = [(PSESchemaPSEClientEvent *)self appIntentSignalGenerated];
    dictionaryRepresentation2 = [appIntentSignalGenerated dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"appIntentSignalGenerated"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"appIntentSignalGenerated"];
    }
  }

  if (self->_callSignalGenerated)
  {
    callSignalGenerated = [(PSESchemaPSEClientEvent *)self callSignalGenerated];
    dictionaryRepresentation3 = [callSignalGenerated dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"callSignalGenerated"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"callSignalGenerated"];
    }
  }

  if (self->_eventMetadata)
  {
    eventMetadata = [(PSESchemaPSEClientEvent *)self eventMetadata];
    dictionaryRepresentation4 = [eventMetadata dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"eventMetadata"];
    }
  }

  if (self->_genericSignalGenerated)
  {
    genericSignalGenerated = [(PSESchemaPSEClientEvent *)self genericSignalGenerated];
    dictionaryRepresentation5 = [genericSignalGenerated dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"genericSignalGenerated"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"genericSignalGenerated"];
    }
  }

  if (self->_homeFollowupSignalGenerated)
  {
    homeFollowupSignalGenerated = [(PSESchemaPSEClientEvent *)self homeFollowupSignalGenerated];
    dictionaryRepresentation6 = [homeFollowupSignalGenerated dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"homeFollowupSignalGenerated"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"homeFollowupSignalGenerated"];
    }
  }

  if (self->_mapsSignalGenerated)
  {
    mapsSignalGenerated = [(PSESchemaPSEClientEvent *)self mapsSignalGenerated];
    dictionaryRepresentation7 = [mapsSignalGenerated dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"mapsSignalGenerated"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"mapsSignalGenerated"];
    }
  }

  if (self->_mediaSignalGenerated)
  {
    mediaSignalGenerated = [(PSESchemaPSEClientEvent *)self mediaSignalGenerated];
    dictionaryRepresentation8 = [mediaSignalGenerated dictionaryRepresentation];
    if (dictionaryRepresentation8)
    {
      [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"mediaSignalGenerated"];
    }

    else
    {
      null8 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null8 forKeyedSubscript:@"mediaSignalGenerated"];
    }
  }

  if (self->_messageSignalGenerated)
  {
    messageSignalGenerated = [(PSESchemaPSEClientEvent *)self messageSignalGenerated];
    dictionaryRepresentation9 = [messageSignalGenerated dictionaryRepresentation];
    if (dictionaryRepresentation9)
    {
      [dictionary setObject:dictionaryRepresentation9 forKeyedSubscript:@"messageSignalGenerated"];
    }

    else
    {
      null9 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null9 forKeyedSubscript:@"messageSignalGenerated"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(PSESchemaPSEClientEventMetadata *)self->_eventMetadata hash];
  v4 = [(PSESchemaPSEGenericSignalGenerated *)self->_genericSignalGenerated hash]^ v3;
  v5 = [(PSESchemaPSECallSignalGenerated *)self->_callSignalGenerated hash];
  v6 = v4 ^ v5 ^ [(PSESchemaPSEMessageSignalGenerated *)self->_messageSignalGenerated hash];
  v7 = [(PSESchemaPSEMediaSignalGenerated *)self->_mediaSignalGenerated hash];
  v8 = v7 ^ [(PSESchemaPSEHomeFollowupSignalGenerated *)self->_homeFollowupSignalGenerated hash];
  v9 = v6 ^ v8 ^ [(PSESchemaPSEMapsSignalGenerated *)self->_mapsSignalGenerated hash];
  v10 = [(PSESchemaPSEAlarmSignalGenerated *)self->_alarmSignalGenerated hash];
  return v9 ^ v10 ^ [(PSESchemaPSEAppIntentSignalGenerated *)self->_appIntentSignalGenerated hash];
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

  eventMetadata = [(PSESchemaPSEClientEvent *)self eventMetadata];
  eventMetadata2 = [equalCopy eventMetadata];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_47;
  }

  eventMetadata3 = [(PSESchemaPSEClientEvent *)self eventMetadata];
  if (eventMetadata3)
  {
    v9 = eventMetadata3;
    eventMetadata4 = [(PSESchemaPSEClientEvent *)self eventMetadata];
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

  eventMetadata = [(PSESchemaPSEClientEvent *)self genericSignalGenerated];
  eventMetadata2 = [equalCopy genericSignalGenerated];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_47;
  }

  genericSignalGenerated = [(PSESchemaPSEClientEvent *)self genericSignalGenerated];
  if (genericSignalGenerated)
  {
    v14 = genericSignalGenerated;
    genericSignalGenerated2 = [(PSESchemaPSEClientEvent *)self genericSignalGenerated];
    genericSignalGenerated3 = [equalCopy genericSignalGenerated];
    v17 = [genericSignalGenerated2 isEqual:genericSignalGenerated3];

    if (!v17)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  eventMetadata = [(PSESchemaPSEClientEvent *)self callSignalGenerated];
  eventMetadata2 = [equalCopy callSignalGenerated];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_47;
  }

  callSignalGenerated = [(PSESchemaPSEClientEvent *)self callSignalGenerated];
  if (callSignalGenerated)
  {
    v19 = callSignalGenerated;
    callSignalGenerated2 = [(PSESchemaPSEClientEvent *)self callSignalGenerated];
    callSignalGenerated3 = [equalCopy callSignalGenerated];
    v22 = [callSignalGenerated2 isEqual:callSignalGenerated3];

    if (!v22)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  eventMetadata = [(PSESchemaPSEClientEvent *)self messageSignalGenerated];
  eventMetadata2 = [equalCopy messageSignalGenerated];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_47;
  }

  messageSignalGenerated = [(PSESchemaPSEClientEvent *)self messageSignalGenerated];
  if (messageSignalGenerated)
  {
    v24 = messageSignalGenerated;
    messageSignalGenerated2 = [(PSESchemaPSEClientEvent *)self messageSignalGenerated];
    messageSignalGenerated3 = [equalCopy messageSignalGenerated];
    v27 = [messageSignalGenerated2 isEqual:messageSignalGenerated3];

    if (!v27)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  eventMetadata = [(PSESchemaPSEClientEvent *)self mediaSignalGenerated];
  eventMetadata2 = [equalCopy mediaSignalGenerated];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_47;
  }

  mediaSignalGenerated = [(PSESchemaPSEClientEvent *)self mediaSignalGenerated];
  if (mediaSignalGenerated)
  {
    v29 = mediaSignalGenerated;
    mediaSignalGenerated2 = [(PSESchemaPSEClientEvent *)self mediaSignalGenerated];
    mediaSignalGenerated3 = [equalCopy mediaSignalGenerated];
    v32 = [mediaSignalGenerated2 isEqual:mediaSignalGenerated3];

    if (!v32)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  eventMetadata = [(PSESchemaPSEClientEvent *)self homeFollowupSignalGenerated];
  eventMetadata2 = [equalCopy homeFollowupSignalGenerated];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_47;
  }

  homeFollowupSignalGenerated = [(PSESchemaPSEClientEvent *)self homeFollowupSignalGenerated];
  if (homeFollowupSignalGenerated)
  {
    v34 = homeFollowupSignalGenerated;
    homeFollowupSignalGenerated2 = [(PSESchemaPSEClientEvent *)self homeFollowupSignalGenerated];
    homeFollowupSignalGenerated3 = [equalCopy homeFollowupSignalGenerated];
    v37 = [homeFollowupSignalGenerated2 isEqual:homeFollowupSignalGenerated3];

    if (!v37)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  eventMetadata = [(PSESchemaPSEClientEvent *)self mapsSignalGenerated];
  eventMetadata2 = [equalCopy mapsSignalGenerated];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_47;
  }

  mapsSignalGenerated = [(PSESchemaPSEClientEvent *)self mapsSignalGenerated];
  if (mapsSignalGenerated)
  {
    v39 = mapsSignalGenerated;
    mapsSignalGenerated2 = [(PSESchemaPSEClientEvent *)self mapsSignalGenerated];
    mapsSignalGenerated3 = [equalCopy mapsSignalGenerated];
    v42 = [mapsSignalGenerated2 isEqual:mapsSignalGenerated3];

    if (!v42)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  eventMetadata = [(PSESchemaPSEClientEvent *)self alarmSignalGenerated];
  eventMetadata2 = [equalCopy alarmSignalGenerated];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_47;
  }

  alarmSignalGenerated = [(PSESchemaPSEClientEvent *)self alarmSignalGenerated];
  if (alarmSignalGenerated)
  {
    v44 = alarmSignalGenerated;
    alarmSignalGenerated2 = [(PSESchemaPSEClientEvent *)self alarmSignalGenerated];
    alarmSignalGenerated3 = [equalCopy alarmSignalGenerated];
    v47 = [alarmSignalGenerated2 isEqual:alarmSignalGenerated3];

    if (!v47)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  eventMetadata = [(PSESchemaPSEClientEvent *)self appIntentSignalGenerated];
  eventMetadata2 = [equalCopy appIntentSignalGenerated];
  if ((eventMetadata != 0) != (eventMetadata2 == 0))
  {
    appIntentSignalGenerated = [(PSESchemaPSEClientEvent *)self appIntentSignalGenerated];
    if (!appIntentSignalGenerated)
    {

LABEL_51:
      v53 = 1;
      goto LABEL_49;
    }

    v49 = appIntentSignalGenerated;
    appIntentSignalGenerated2 = [(PSESchemaPSEClientEvent *)self appIntentSignalGenerated];
    appIntentSignalGenerated3 = [equalCopy appIntentSignalGenerated];
    v52 = [appIntentSignalGenerated2 isEqual:appIntentSignalGenerated3];

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
  eventMetadata = [(PSESchemaPSEClientEvent *)self eventMetadata];

  if (eventMetadata)
  {
    eventMetadata2 = [(PSESchemaPSEClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  genericSignalGenerated = [(PSESchemaPSEClientEvent *)self genericSignalGenerated];

  if (genericSignalGenerated)
  {
    genericSignalGenerated2 = [(PSESchemaPSEClientEvent *)self genericSignalGenerated];
    PBDataWriterWriteSubmessage();
  }

  callSignalGenerated = [(PSESchemaPSEClientEvent *)self callSignalGenerated];

  if (callSignalGenerated)
  {
    callSignalGenerated2 = [(PSESchemaPSEClientEvent *)self callSignalGenerated];
    PBDataWriterWriteSubmessage();
  }

  messageSignalGenerated = [(PSESchemaPSEClientEvent *)self messageSignalGenerated];

  if (messageSignalGenerated)
  {
    messageSignalGenerated2 = [(PSESchemaPSEClientEvent *)self messageSignalGenerated];
    PBDataWriterWriteSubmessage();
  }

  mediaSignalGenerated = [(PSESchemaPSEClientEvent *)self mediaSignalGenerated];

  if (mediaSignalGenerated)
  {
    mediaSignalGenerated2 = [(PSESchemaPSEClientEvent *)self mediaSignalGenerated];
    PBDataWriterWriteSubmessage();
  }

  homeFollowupSignalGenerated = [(PSESchemaPSEClientEvent *)self homeFollowupSignalGenerated];

  if (homeFollowupSignalGenerated)
  {
    homeFollowupSignalGenerated2 = [(PSESchemaPSEClientEvent *)self homeFollowupSignalGenerated];
    PBDataWriterWriteSubmessage();
  }

  mapsSignalGenerated = [(PSESchemaPSEClientEvent *)self mapsSignalGenerated];

  if (mapsSignalGenerated)
  {
    mapsSignalGenerated2 = [(PSESchemaPSEClientEvent *)self mapsSignalGenerated];
    PBDataWriterWriteSubmessage();
  }

  alarmSignalGenerated = [(PSESchemaPSEClientEvent *)self alarmSignalGenerated];

  if (alarmSignalGenerated)
  {
    alarmSignalGenerated2 = [(PSESchemaPSEClientEvent *)self alarmSignalGenerated];
    PBDataWriterWriteSubmessage();
  }

  appIntentSignalGenerated = [(PSESchemaPSEClientEvent *)self appIntentSignalGenerated];

  v21 = toCopy;
  if (appIntentSignalGenerated)
  {
    appIntentSignalGenerated2 = [(PSESchemaPSEClientEvent *)self appIntentSignalGenerated];
    PBDataWriterWriteSubmessage();

    v21 = toCopy;
  }
}

- (void)deleteAppIntentSignalGenerated
{
  if (self->_whichEvent_Type == 108)
  {
    self->_whichEvent_Type = 0;
    self->_appIntentSignalGenerated = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PSESchemaPSEAppIntentSignalGenerated)appIntentSignalGenerated
{
  if (self->_whichEvent_Type == 108)
  {
    v3 = self->_appIntentSignalGenerated;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAppIntentSignalGenerated:(id)generated
{
  generatedCopy = generated;
  genericSignalGenerated = self->_genericSignalGenerated;
  self->_genericSignalGenerated = 0;

  callSignalGenerated = self->_callSignalGenerated;
  self->_callSignalGenerated = 0;

  messageSignalGenerated = self->_messageSignalGenerated;
  self->_messageSignalGenerated = 0;

  mediaSignalGenerated = self->_mediaSignalGenerated;
  self->_mediaSignalGenerated = 0;

  homeFollowupSignalGenerated = self->_homeFollowupSignalGenerated;
  self->_homeFollowupSignalGenerated = 0;

  mapsSignalGenerated = self->_mapsSignalGenerated;
  self->_mapsSignalGenerated = 0;

  alarmSignalGenerated = self->_alarmSignalGenerated;
  self->_alarmSignalGenerated = 0;

  v12 = 108;
  if (!generatedCopy)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  appIntentSignalGenerated = self->_appIntentSignalGenerated;
  self->_appIntentSignalGenerated = generatedCopy;
}

- (void)deleteAlarmSignalGenerated
{
  if (self->_whichEvent_Type == 107)
  {
    self->_whichEvent_Type = 0;
    self->_alarmSignalGenerated = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PSESchemaPSEAlarmSignalGenerated)alarmSignalGenerated
{
  if (self->_whichEvent_Type == 107)
  {
    v3 = self->_alarmSignalGenerated;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAlarmSignalGenerated:(id)generated
{
  generatedCopy = generated;
  genericSignalGenerated = self->_genericSignalGenerated;
  self->_genericSignalGenerated = 0;

  callSignalGenerated = self->_callSignalGenerated;
  self->_callSignalGenerated = 0;

  messageSignalGenerated = self->_messageSignalGenerated;
  self->_messageSignalGenerated = 0;

  mediaSignalGenerated = self->_mediaSignalGenerated;
  self->_mediaSignalGenerated = 0;

  homeFollowupSignalGenerated = self->_homeFollowupSignalGenerated;
  self->_homeFollowupSignalGenerated = 0;

  mapsSignalGenerated = self->_mapsSignalGenerated;
  self->_mapsSignalGenerated = 0;

  appIntentSignalGenerated = self->_appIntentSignalGenerated;
  self->_appIntentSignalGenerated = 0;

  v12 = 107;
  if (!generatedCopy)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  alarmSignalGenerated = self->_alarmSignalGenerated;
  self->_alarmSignalGenerated = generatedCopy;
}

- (void)deleteMapsSignalGenerated
{
  if (self->_whichEvent_Type == 106)
  {
    self->_whichEvent_Type = 0;
    self->_mapsSignalGenerated = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PSESchemaPSEMapsSignalGenerated)mapsSignalGenerated
{
  if (self->_whichEvent_Type == 106)
  {
    v3 = self->_mapsSignalGenerated;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setMapsSignalGenerated:(id)generated
{
  generatedCopy = generated;
  genericSignalGenerated = self->_genericSignalGenerated;
  self->_genericSignalGenerated = 0;

  callSignalGenerated = self->_callSignalGenerated;
  self->_callSignalGenerated = 0;

  messageSignalGenerated = self->_messageSignalGenerated;
  self->_messageSignalGenerated = 0;

  mediaSignalGenerated = self->_mediaSignalGenerated;
  self->_mediaSignalGenerated = 0;

  homeFollowupSignalGenerated = self->_homeFollowupSignalGenerated;
  self->_homeFollowupSignalGenerated = 0;

  alarmSignalGenerated = self->_alarmSignalGenerated;
  self->_alarmSignalGenerated = 0;

  appIntentSignalGenerated = self->_appIntentSignalGenerated;
  self->_appIntentSignalGenerated = 0;

  v12 = 106;
  if (!generatedCopy)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  mapsSignalGenerated = self->_mapsSignalGenerated;
  self->_mapsSignalGenerated = generatedCopy;
}

- (void)deleteHomeFollowupSignalGenerated
{
  if (self->_whichEvent_Type == 105)
  {
    self->_whichEvent_Type = 0;
    self->_homeFollowupSignalGenerated = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PSESchemaPSEHomeFollowupSignalGenerated)homeFollowupSignalGenerated
{
  if (self->_whichEvent_Type == 105)
  {
    v3 = self->_homeFollowupSignalGenerated;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setHomeFollowupSignalGenerated:(id)generated
{
  generatedCopy = generated;
  genericSignalGenerated = self->_genericSignalGenerated;
  self->_genericSignalGenerated = 0;

  callSignalGenerated = self->_callSignalGenerated;
  self->_callSignalGenerated = 0;

  messageSignalGenerated = self->_messageSignalGenerated;
  self->_messageSignalGenerated = 0;

  mediaSignalGenerated = self->_mediaSignalGenerated;
  self->_mediaSignalGenerated = 0;

  mapsSignalGenerated = self->_mapsSignalGenerated;
  self->_mapsSignalGenerated = 0;

  alarmSignalGenerated = self->_alarmSignalGenerated;
  self->_alarmSignalGenerated = 0;

  appIntentSignalGenerated = self->_appIntentSignalGenerated;
  self->_appIntentSignalGenerated = 0;

  v12 = 105;
  if (!generatedCopy)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  homeFollowupSignalGenerated = self->_homeFollowupSignalGenerated;
  self->_homeFollowupSignalGenerated = generatedCopy;
}

- (void)deleteMediaSignalGenerated
{
  if (self->_whichEvent_Type == 104)
  {
    self->_whichEvent_Type = 0;
    self->_mediaSignalGenerated = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PSESchemaPSEMediaSignalGenerated)mediaSignalGenerated
{
  if (self->_whichEvent_Type == 104)
  {
    v3 = self->_mediaSignalGenerated;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setMediaSignalGenerated:(id)generated
{
  generatedCopy = generated;
  genericSignalGenerated = self->_genericSignalGenerated;
  self->_genericSignalGenerated = 0;

  callSignalGenerated = self->_callSignalGenerated;
  self->_callSignalGenerated = 0;

  messageSignalGenerated = self->_messageSignalGenerated;
  self->_messageSignalGenerated = 0;

  homeFollowupSignalGenerated = self->_homeFollowupSignalGenerated;
  self->_homeFollowupSignalGenerated = 0;

  mapsSignalGenerated = self->_mapsSignalGenerated;
  self->_mapsSignalGenerated = 0;

  alarmSignalGenerated = self->_alarmSignalGenerated;
  self->_alarmSignalGenerated = 0;

  appIntentSignalGenerated = self->_appIntentSignalGenerated;
  self->_appIntentSignalGenerated = 0;

  v12 = 104;
  if (!generatedCopy)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  mediaSignalGenerated = self->_mediaSignalGenerated;
  self->_mediaSignalGenerated = generatedCopy;
}

- (void)deleteMessageSignalGenerated
{
  if (self->_whichEvent_Type == 103)
  {
    self->_whichEvent_Type = 0;
    self->_messageSignalGenerated = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PSESchemaPSEMessageSignalGenerated)messageSignalGenerated
{
  if (self->_whichEvent_Type == 103)
  {
    v3 = self->_messageSignalGenerated;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setMessageSignalGenerated:(id)generated
{
  generatedCopy = generated;
  genericSignalGenerated = self->_genericSignalGenerated;
  self->_genericSignalGenerated = 0;

  callSignalGenerated = self->_callSignalGenerated;
  self->_callSignalGenerated = 0;

  mediaSignalGenerated = self->_mediaSignalGenerated;
  self->_mediaSignalGenerated = 0;

  homeFollowupSignalGenerated = self->_homeFollowupSignalGenerated;
  self->_homeFollowupSignalGenerated = 0;

  mapsSignalGenerated = self->_mapsSignalGenerated;
  self->_mapsSignalGenerated = 0;

  alarmSignalGenerated = self->_alarmSignalGenerated;
  self->_alarmSignalGenerated = 0;

  appIntentSignalGenerated = self->_appIntentSignalGenerated;
  self->_appIntentSignalGenerated = 0;

  v12 = 103;
  if (!generatedCopy)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  messageSignalGenerated = self->_messageSignalGenerated;
  self->_messageSignalGenerated = generatedCopy;
}

- (void)deleteCallSignalGenerated
{
  if (self->_whichEvent_Type == 102)
  {
    self->_whichEvent_Type = 0;
    self->_callSignalGenerated = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PSESchemaPSECallSignalGenerated)callSignalGenerated
{
  if (self->_whichEvent_Type == 102)
  {
    v3 = self->_callSignalGenerated;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCallSignalGenerated:(id)generated
{
  generatedCopy = generated;
  genericSignalGenerated = self->_genericSignalGenerated;
  self->_genericSignalGenerated = 0;

  messageSignalGenerated = self->_messageSignalGenerated;
  self->_messageSignalGenerated = 0;

  mediaSignalGenerated = self->_mediaSignalGenerated;
  self->_mediaSignalGenerated = 0;

  homeFollowupSignalGenerated = self->_homeFollowupSignalGenerated;
  self->_homeFollowupSignalGenerated = 0;

  mapsSignalGenerated = self->_mapsSignalGenerated;
  self->_mapsSignalGenerated = 0;

  alarmSignalGenerated = self->_alarmSignalGenerated;
  self->_alarmSignalGenerated = 0;

  appIntentSignalGenerated = self->_appIntentSignalGenerated;
  self->_appIntentSignalGenerated = 0;

  v12 = 102;
  if (!generatedCopy)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  callSignalGenerated = self->_callSignalGenerated;
  self->_callSignalGenerated = generatedCopy;
}

- (void)deleteGenericSignalGenerated
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    self->_genericSignalGenerated = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PSESchemaPSEGenericSignalGenerated)genericSignalGenerated
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_genericSignalGenerated;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setGenericSignalGenerated:(id)generated
{
  generatedCopy = generated;
  callSignalGenerated = self->_callSignalGenerated;
  self->_callSignalGenerated = 0;

  messageSignalGenerated = self->_messageSignalGenerated;
  self->_messageSignalGenerated = 0;

  mediaSignalGenerated = self->_mediaSignalGenerated;
  self->_mediaSignalGenerated = 0;

  homeFollowupSignalGenerated = self->_homeFollowupSignalGenerated;
  self->_homeFollowupSignalGenerated = 0;

  mapsSignalGenerated = self->_mapsSignalGenerated;
  self->_mapsSignalGenerated = 0;

  alarmSignalGenerated = self->_alarmSignalGenerated;
  self->_alarmSignalGenerated = 0;

  appIntentSignalGenerated = self->_appIntentSignalGenerated;
  self->_appIntentSignalGenerated = 0;

  v12 = 101;
  if (!generatedCopy)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  genericSignalGenerated = self->_genericSignalGenerated;
  self->_genericSignalGenerated = generatedCopy;
}

- (id)qualifiedMessageName
{
  whichEvent_Type = [(PSESchemaPSEClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 101 > 7)
  {
    return @"com.apple.aiml.engagement.pse.PSEClientEvent";
  }

  else
  {
    return off_1E78E1360[whichEvent_Type - 101];
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v34.receiver = self;
  v34.super_class = PSESchemaPSEClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v34 applySensitiveConditionsPolicy:policyCopy];
  eventMetadata = [(PSESchemaPSEClientEvent *)self eventMetadata];
  v7 = [eventMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(PSESchemaPSEClientEvent *)self deleteEventMetadata];
  }

  genericSignalGenerated = [(PSESchemaPSEClientEvent *)self genericSignalGenerated];
  v10 = [genericSignalGenerated applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(PSESchemaPSEClientEvent *)self deleteGenericSignalGenerated];
  }

  callSignalGenerated = [(PSESchemaPSEClientEvent *)self callSignalGenerated];
  v13 = [callSignalGenerated applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(PSESchemaPSEClientEvent *)self deleteCallSignalGenerated];
  }

  messageSignalGenerated = [(PSESchemaPSEClientEvent *)self messageSignalGenerated];
  v16 = [messageSignalGenerated applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(PSESchemaPSEClientEvent *)self deleteMessageSignalGenerated];
  }

  mediaSignalGenerated = [(PSESchemaPSEClientEvent *)self mediaSignalGenerated];
  v19 = [mediaSignalGenerated applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(PSESchemaPSEClientEvent *)self deleteMediaSignalGenerated];
  }

  homeFollowupSignalGenerated = [(PSESchemaPSEClientEvent *)self homeFollowupSignalGenerated];
  v22 = [homeFollowupSignalGenerated applySensitiveConditionsPolicy:policyCopy];
  suppressMessage6 = [v22 suppressMessage];

  if (suppressMessage6)
  {
    [(PSESchemaPSEClientEvent *)self deleteHomeFollowupSignalGenerated];
  }

  mapsSignalGenerated = [(PSESchemaPSEClientEvent *)self mapsSignalGenerated];
  v25 = [mapsSignalGenerated applySensitiveConditionsPolicy:policyCopy];
  suppressMessage7 = [v25 suppressMessage];

  if (suppressMessage7)
  {
    [(PSESchemaPSEClientEvent *)self deleteMapsSignalGenerated];
  }

  alarmSignalGenerated = [(PSESchemaPSEClientEvent *)self alarmSignalGenerated];
  v28 = [alarmSignalGenerated applySensitiveConditionsPolicy:policyCopy];
  suppressMessage8 = [v28 suppressMessage];

  if (suppressMessage8)
  {
    [(PSESchemaPSEClientEvent *)self deleteAlarmSignalGenerated];
  }

  appIntentSignalGenerated = [(PSESchemaPSEClientEvent *)self appIntentSignalGenerated];
  v31 = [appIntentSignalGenerated applySensitiveConditionsPolicy:policyCopy];
  suppressMessage9 = [v31 suppressMessage];

  if (suppressMessage9)
  {
    [(PSESchemaPSEClientEvent *)self deleteAppIntentSignalGenerated];
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
  eventMetadata = [(PSESchemaPSEClientEvent *)self eventMetadata];
  originalLastRequestId = [eventMetadata originalLastRequestId];

  if (originalLastRequestId && ([originalLastRequestId value], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    value = [originalLastRequestId value];
    v7 = [value length] != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)getComponentId
{
  eventMetadata = [(PSESchemaPSEClientEvent *)self eventMetadata];
  originalLastRequestId = [eventMetadata originalLastRequestId];

  if (!originalLastRequestId)
  {
    goto LABEL_5;
  }

  value = [originalLastRequestId value];
  if (!value)
  {
    goto LABEL_6;
  }

  value2 = [originalLastRequestId value];
  v6 = [value2 length];

  if (v6)
  {
    value = originalLastRequestId;
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
  whichEvent_Type = [(PSESchemaPSEClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 101 > 7)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78EAD38[whichEvent_Type - 101]);
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
    return off_1E78EAD78[tag - 101];
  }
}

- (int)clockIsolationLevel
{
  if ([(PSESchemaPSEClientEvent *)self whichEvent_Type]- 101 >= 8)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

@end