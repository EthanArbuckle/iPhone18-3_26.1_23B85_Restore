@interface FLOWSchemaFLOWClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (BOOL)isEqual:(id)equal;
- (FLOWSchemaFLOWAppleMusicVoicePreviewOfferNotShown)appleMusicVoicePreviewOfferNotShown;
- (FLOWSchemaFLOWClientEvent)initWithDictionary:(id)dictionary;
- (FLOWSchemaFLOWClientEvent)initWithJSON:(id)n;
- (FLOWSchemaFLOWContactTier1)flowContactTier1;
- (FLOWSchemaFLOWDomainExecutionContext)flowDomainExecutionContext;
- (FLOWSchemaFLOWEntityContextTier1)flowEntityContextTier1;
- (FLOWSchemaFLOWLocationAccessPermissionPromptContext)locationAccessPermissionPromptContext;
- (FLOWSchemaFLOWMediaPlayerPlaybackContextTier1)mediaPlayerPlaybackContextTier1;
- (FLOWSchemaFLOWMediaPlayerRadioStationContextTier1)mediaPlayerRadioStationContextTier1;
- (FLOWSchemaFLOWPegasusContextTier1)pegasusContextTier1;
- (FLOWSchemaFLOWSmsAttachmentMetadataTier1)smsAttachmentMetadataTier1;
- (FLOWSchemaFLOWStep)flowStep;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)componentName;
- (unint64_t)hash;
- (void)deleteAppleMusicVoicePreviewOfferNotShown;
- (void)deleteFlowContactTier1;
- (void)deleteFlowDomainExecutionContext;
- (void)deleteFlowEntityContextTier1;
- (void)deleteFlowStep;
- (void)deleteLocationAccessPermissionPromptContext;
- (void)deleteMediaPlayerPlaybackContextTier1;
- (void)deleteMediaPlayerRadioStationContextTier1;
- (void)deletePegasusContextTier1;
- (void)deleteSmsAttachmentMetadataTier1;
- (void)setAppleMusicVoicePreviewOfferNotShown:(id)shown;
- (void)setFlowContactTier1:(id)tier1;
- (void)setFlowDomainExecutionContext:(id)context;
- (void)setFlowEntityContextTier1:(id)tier1;
- (void)setFlowStep:(id)step;
- (void)setLocationAccessPermissionPromptContext:(id)context;
- (void)setMediaPlayerPlaybackContextTier1:(id)tier1;
- (void)setMediaPlayerRadioStationContextTier1:(id)tier1;
- (void)setPegasusContextTier1:(id)tier1;
- (void)setSmsAttachmentMetadataTier1:(id)tier1;
- (void)writeTo:(id)to;
@end

@implementation FLOWSchemaFLOWClientEvent

- (id)qualifiedMessageName
{
  whichEvent_Type = [(FLOWSchemaFLOWClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 101 > 9)
  {
    return @"com.apple.aiml.siri.flow.FLOWClientEvent";
  }

  else
  {
    return off_1E78D50A8[whichEvent_Type - 101];
  }
}

- (FLOWSchemaFLOWEntityContextTier1)flowEntityContextTier1
{
  if (self->_whichEvent_Type == 102)
  {
    v3 = self->_flowEntityContextTier1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FLOWSchemaFLOWSmsAttachmentMetadataTier1)smsAttachmentMetadataTier1
{
  if (self->_whichEvent_Type == 103)
  {
    v3 = self->_smsAttachmentMetadataTier1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FLOWSchemaFLOWAppleMusicVoicePreviewOfferNotShown)appleMusicVoicePreviewOfferNotShown
{
  if (self->_whichEvent_Type == 104)
  {
    v3 = self->_appleMusicVoicePreviewOfferNotShown;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FLOWSchemaFLOWPegasusContextTier1)pegasusContextTier1
{
  if (self->_whichEvent_Type == 105)
  {
    v3 = self->_pegasusContextTier1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FLOWSchemaFLOWMediaPlayerRadioStationContextTier1)mediaPlayerRadioStationContextTier1
{
  if (self->_whichEvent_Type == 107)
  {
    v3 = self->_mediaPlayerRadioStationContextTier1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FLOWSchemaFLOWDomainExecutionContext)flowDomainExecutionContext
{
  if (self->_whichEvent_Type == 108)
  {
    v3 = self->_flowDomainExecutionContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FLOWSchemaFLOWLocationAccessPermissionPromptContext)locationAccessPermissionPromptContext
{
  if (self->_whichEvent_Type == 109)
  {
    v3 = self->_locationAccessPermissionPromptContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FLOWSchemaFLOWContactTier1)flowContactTier1
{
  if (self->_whichEvent_Type == 110)
  {
    v3 = self->_flowContactTier1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FLOWSchemaFLOWStep)flowStep
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_flowStep;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FLOWSchemaFLOWMediaPlayerPlaybackContextTier1)mediaPlayerPlaybackContextTier1
{
  if (self->_whichEvent_Type == 106)
  {
    v3 = self->_mediaPlayerPlaybackContextTier1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FLOWSchemaFLOWClientEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v35.receiver = self;
  v35.super_class = FLOWSchemaFLOWClientEvent;
  v5 = [(FLOWSchemaFLOWClientEvent *)&v35 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[FLOWSchemaFLOWEventMetadata alloc] initWithDictionary:v6];
      [(FLOWSchemaFLOWClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"flowStep"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[FLOWSchemaFLOWStep alloc] initWithDictionary:v8];
      [(FLOWSchemaFLOWClientEvent *)v5 setFlowStep:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"flowEntityContextTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[FLOWSchemaFLOWEntityContextTier1 alloc] initWithDictionary:v10];
      [(FLOWSchemaFLOWClientEvent *)v5 setFlowEntityContextTier1:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"smsAttachmentMetadataTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[FLOWSchemaFLOWSmsAttachmentMetadataTier1 alloc] initWithDictionary:v12];
      [(FLOWSchemaFLOWClientEvent *)v5 setSmsAttachmentMetadataTier1:v13];
    }

    v32 = v12;
    v14 = [dictionaryCopy objectForKeyedSubscript:@"appleMusicVoicePreviewOfferNotShown"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[FLOWSchemaFLOWAppleMusicVoicePreviewOfferNotShown alloc] initWithDictionary:v14];
      [(FLOWSchemaFLOWClientEvent *)v5 setAppleMusicVoicePreviewOfferNotShown:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:{@"pegasusContextTier1", v14}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[FLOWSchemaFLOWPegasusContextTier1 alloc] initWithDictionary:v16];
      [(FLOWSchemaFLOWClientEvent *)v5 setPegasusContextTier1:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"mediaPlayerPlaybackContextTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 alloc] initWithDictionary:v18];
      [(FLOWSchemaFLOWClientEvent *)v5 setMediaPlayerPlaybackContextTier1:v19];
    }

    v33 = v10;
    v34 = v6;
    v20 = [dictionaryCopy objectForKeyedSubscript:@"mediaPlayerRadioStationContextTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [[FLOWSchemaFLOWMediaPlayerRadioStationContextTier1 alloc] initWithDictionary:v20];
      [(FLOWSchemaFLOWClientEvent *)v5 setMediaPlayerRadioStationContextTier1:v21];
    }

    v22 = v8;
    v23 = [dictionaryCopy objectForKeyedSubscript:@"flowDomainExecutionContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = [[FLOWSchemaFLOWDomainExecutionContext alloc] initWithDictionary:v23];
      [(FLOWSchemaFLOWClientEvent *)v5 setFlowDomainExecutionContext:v24];
    }

    v25 = [dictionaryCopy objectForKeyedSubscript:@"locationAccessPermissionPromptContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = [[FLOWSchemaFLOWLocationAccessPermissionPromptContext alloc] initWithDictionary:v25];
      [(FLOWSchemaFLOWClientEvent *)v5 setLocationAccessPermissionPromptContext:v26];
    }

    v27 = [dictionaryCopy objectForKeyedSubscript:@"flowContactTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = [[FLOWSchemaFLOWContactTier1 alloc] initWithDictionary:v27];
      [(FLOWSchemaFLOWClientEvent *)v5 setFlowContactTier1:v28];
    }

    v29 = v5;
  }

  return v5;
}

- (FLOWSchemaFLOWClientEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(FLOWSchemaFLOWClientEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(FLOWSchemaFLOWClientEvent *)self dictionaryRepresentation];
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
  if (self->_appleMusicVoicePreviewOfferNotShown)
  {
    appleMusicVoicePreviewOfferNotShown = [(FLOWSchemaFLOWClientEvent *)self appleMusicVoicePreviewOfferNotShown];
    dictionaryRepresentation = [appleMusicVoicePreviewOfferNotShown dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"appleMusicVoicePreviewOfferNotShown"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"appleMusicVoicePreviewOfferNotShown"];
    }
  }

  if (self->_eventMetadata)
  {
    eventMetadata = [(FLOWSchemaFLOWClientEvent *)self eventMetadata];
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

  if (self->_flowContactTier1)
  {
    flowContactTier1 = [(FLOWSchemaFLOWClientEvent *)self flowContactTier1];
    dictionaryRepresentation3 = [flowContactTier1 dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"flowContactTier1"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"flowContactTier1"];
    }
  }

  if (self->_flowDomainExecutionContext)
  {
    flowDomainExecutionContext = [(FLOWSchemaFLOWClientEvent *)self flowDomainExecutionContext];
    dictionaryRepresentation4 = [flowDomainExecutionContext dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"flowDomainExecutionContext"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"flowDomainExecutionContext"];
    }
  }

  if (self->_flowEntityContextTier1)
  {
    flowEntityContextTier1 = [(FLOWSchemaFLOWClientEvent *)self flowEntityContextTier1];
    dictionaryRepresentation5 = [flowEntityContextTier1 dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"flowEntityContextTier1"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"flowEntityContextTier1"];
    }
  }

  if (self->_flowStep)
  {
    flowStep = [(FLOWSchemaFLOWClientEvent *)self flowStep];
    dictionaryRepresentation6 = [flowStep dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"flowStep"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"flowStep"];
    }
  }

  if (self->_locationAccessPermissionPromptContext)
  {
    locationAccessPermissionPromptContext = [(FLOWSchemaFLOWClientEvent *)self locationAccessPermissionPromptContext];
    dictionaryRepresentation7 = [locationAccessPermissionPromptContext dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"locationAccessPermissionPromptContext"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"locationAccessPermissionPromptContext"];
    }
  }

  if (self->_mediaPlayerPlaybackContextTier1)
  {
    mediaPlayerPlaybackContextTier1 = [(FLOWSchemaFLOWClientEvent *)self mediaPlayerPlaybackContextTier1];
    dictionaryRepresentation8 = [mediaPlayerPlaybackContextTier1 dictionaryRepresentation];
    if (dictionaryRepresentation8)
    {
      [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"mediaPlayerPlaybackContextTier1"];
    }

    else
    {
      null8 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null8 forKeyedSubscript:@"mediaPlayerPlaybackContextTier1"];
    }
  }

  if (self->_mediaPlayerRadioStationContextTier1)
  {
    mediaPlayerRadioStationContextTier1 = [(FLOWSchemaFLOWClientEvent *)self mediaPlayerRadioStationContextTier1];
    dictionaryRepresentation9 = [mediaPlayerRadioStationContextTier1 dictionaryRepresentation];
    if (dictionaryRepresentation9)
    {
      [dictionary setObject:dictionaryRepresentation9 forKeyedSubscript:@"mediaPlayerRadioStationContextTier1"];
    }

    else
    {
      null9 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null9 forKeyedSubscript:@"mediaPlayerRadioStationContextTier1"];
    }
  }

  if (self->_pegasusContextTier1)
  {
    pegasusContextTier1 = [(FLOWSchemaFLOWClientEvent *)self pegasusContextTier1];
    dictionaryRepresentation10 = [pegasusContextTier1 dictionaryRepresentation];
    if (dictionaryRepresentation10)
    {
      [dictionary setObject:dictionaryRepresentation10 forKeyedSubscript:@"pegasusContextTier1"];
    }

    else
    {
      null10 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null10 forKeyedSubscript:@"pegasusContextTier1"];
    }
  }

  if (self->_smsAttachmentMetadataTier1)
  {
    smsAttachmentMetadataTier1 = [(FLOWSchemaFLOWClientEvent *)self smsAttachmentMetadataTier1];
    dictionaryRepresentation11 = [smsAttachmentMetadataTier1 dictionaryRepresentation];
    if (dictionaryRepresentation11)
    {
      [dictionary setObject:dictionaryRepresentation11 forKeyedSubscript:@"smsAttachmentMetadataTier1"];
    }

    else
    {
      null11 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null11 forKeyedSubscript:@"smsAttachmentMetadataTier1"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(FLOWSchemaFLOWEventMetadata *)self->_eventMetadata hash];
  v4 = [(FLOWSchemaFLOWStep *)self->_flowStep hash]^ v3;
  v5 = [(FLOWSchemaFLOWEntityContextTier1 *)self->_flowEntityContextTier1 hash];
  v6 = v4 ^ v5 ^ [(FLOWSchemaFLOWSmsAttachmentMetadataTier1 *)self->_smsAttachmentMetadataTier1 hash];
  v7 = [(FLOWSchemaFLOWAppleMusicVoicePreviewOfferNotShown *)self->_appleMusicVoicePreviewOfferNotShown hash];
  v8 = v7 ^ [(FLOWSchemaFLOWPegasusContextTier1 *)self->_pegasusContextTier1 hash];
  v9 = v6 ^ v8 ^ [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self->_mediaPlayerPlaybackContextTier1 hash];
  v10 = [(FLOWSchemaFLOWMediaPlayerRadioStationContextTier1 *)self->_mediaPlayerRadioStationContextTier1 hash];
  v11 = v10 ^ [(FLOWSchemaFLOWDomainExecutionContext *)self->_flowDomainExecutionContext hash];
  v12 = v11 ^ [(FLOWSchemaFLOWLocationAccessPermissionPromptContext *)self->_locationAccessPermissionPromptContext hash];
  return v9 ^ v12 ^ [(FLOWSchemaFLOWContactTier1 *)self->_flowContactTier1 hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_58;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [equalCopy whichEvent_Type])
  {
    goto LABEL_58;
  }

  eventMetadata = [(FLOWSchemaFLOWClientEvent *)self eventMetadata];
  eventMetadata2 = [equalCopy eventMetadata];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_57;
  }

  eventMetadata3 = [(FLOWSchemaFLOWClientEvent *)self eventMetadata];
  if (eventMetadata3)
  {
    v9 = eventMetadata3;
    eventMetadata4 = [(FLOWSchemaFLOWClientEvent *)self eventMetadata];
    eventMetadata5 = [equalCopy eventMetadata];
    v12 = [eventMetadata4 isEqual:eventMetadata5];

    if (!v12)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  eventMetadata = [(FLOWSchemaFLOWClientEvent *)self flowStep];
  eventMetadata2 = [equalCopy flowStep];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_57;
  }

  flowStep = [(FLOWSchemaFLOWClientEvent *)self flowStep];
  if (flowStep)
  {
    v14 = flowStep;
    flowStep2 = [(FLOWSchemaFLOWClientEvent *)self flowStep];
    flowStep3 = [equalCopy flowStep];
    v17 = [flowStep2 isEqual:flowStep3];

    if (!v17)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  eventMetadata = [(FLOWSchemaFLOWClientEvent *)self flowEntityContextTier1];
  eventMetadata2 = [equalCopy flowEntityContextTier1];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_57;
  }

  flowEntityContextTier1 = [(FLOWSchemaFLOWClientEvent *)self flowEntityContextTier1];
  if (flowEntityContextTier1)
  {
    v19 = flowEntityContextTier1;
    flowEntityContextTier12 = [(FLOWSchemaFLOWClientEvent *)self flowEntityContextTier1];
    flowEntityContextTier13 = [equalCopy flowEntityContextTier1];
    v22 = [flowEntityContextTier12 isEqual:flowEntityContextTier13];

    if (!v22)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  eventMetadata = [(FLOWSchemaFLOWClientEvent *)self smsAttachmentMetadataTier1];
  eventMetadata2 = [equalCopy smsAttachmentMetadataTier1];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_57;
  }

  smsAttachmentMetadataTier1 = [(FLOWSchemaFLOWClientEvent *)self smsAttachmentMetadataTier1];
  if (smsAttachmentMetadataTier1)
  {
    v24 = smsAttachmentMetadataTier1;
    smsAttachmentMetadataTier12 = [(FLOWSchemaFLOWClientEvent *)self smsAttachmentMetadataTier1];
    smsAttachmentMetadataTier13 = [equalCopy smsAttachmentMetadataTier1];
    v27 = [smsAttachmentMetadataTier12 isEqual:smsAttachmentMetadataTier13];

    if (!v27)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  eventMetadata = [(FLOWSchemaFLOWClientEvent *)self appleMusicVoicePreviewOfferNotShown];
  eventMetadata2 = [equalCopy appleMusicVoicePreviewOfferNotShown];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_57;
  }

  appleMusicVoicePreviewOfferNotShown = [(FLOWSchemaFLOWClientEvent *)self appleMusicVoicePreviewOfferNotShown];
  if (appleMusicVoicePreviewOfferNotShown)
  {
    v29 = appleMusicVoicePreviewOfferNotShown;
    appleMusicVoicePreviewOfferNotShown2 = [(FLOWSchemaFLOWClientEvent *)self appleMusicVoicePreviewOfferNotShown];
    appleMusicVoicePreviewOfferNotShown3 = [equalCopy appleMusicVoicePreviewOfferNotShown];
    v32 = [appleMusicVoicePreviewOfferNotShown2 isEqual:appleMusicVoicePreviewOfferNotShown3];

    if (!v32)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  eventMetadata = [(FLOWSchemaFLOWClientEvent *)self pegasusContextTier1];
  eventMetadata2 = [equalCopy pegasusContextTier1];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_57;
  }

  pegasusContextTier1 = [(FLOWSchemaFLOWClientEvent *)self pegasusContextTier1];
  if (pegasusContextTier1)
  {
    v34 = pegasusContextTier1;
    pegasusContextTier12 = [(FLOWSchemaFLOWClientEvent *)self pegasusContextTier1];
    pegasusContextTier13 = [equalCopy pegasusContextTier1];
    v37 = [pegasusContextTier12 isEqual:pegasusContextTier13];

    if (!v37)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  eventMetadata = [(FLOWSchemaFLOWClientEvent *)self mediaPlayerPlaybackContextTier1];
  eventMetadata2 = [equalCopy mediaPlayerPlaybackContextTier1];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_57;
  }

  mediaPlayerPlaybackContextTier1 = [(FLOWSchemaFLOWClientEvent *)self mediaPlayerPlaybackContextTier1];
  if (mediaPlayerPlaybackContextTier1)
  {
    v39 = mediaPlayerPlaybackContextTier1;
    mediaPlayerPlaybackContextTier12 = [(FLOWSchemaFLOWClientEvent *)self mediaPlayerPlaybackContextTier1];
    mediaPlayerPlaybackContextTier13 = [equalCopy mediaPlayerPlaybackContextTier1];
    v42 = [mediaPlayerPlaybackContextTier12 isEqual:mediaPlayerPlaybackContextTier13];

    if (!v42)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  eventMetadata = [(FLOWSchemaFLOWClientEvent *)self mediaPlayerRadioStationContextTier1];
  eventMetadata2 = [equalCopy mediaPlayerRadioStationContextTier1];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_57;
  }

  mediaPlayerRadioStationContextTier1 = [(FLOWSchemaFLOWClientEvent *)self mediaPlayerRadioStationContextTier1];
  if (mediaPlayerRadioStationContextTier1)
  {
    v44 = mediaPlayerRadioStationContextTier1;
    mediaPlayerRadioStationContextTier12 = [(FLOWSchemaFLOWClientEvent *)self mediaPlayerRadioStationContextTier1];
    mediaPlayerRadioStationContextTier13 = [equalCopy mediaPlayerRadioStationContextTier1];
    v47 = [mediaPlayerRadioStationContextTier12 isEqual:mediaPlayerRadioStationContextTier13];

    if (!v47)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  eventMetadata = [(FLOWSchemaFLOWClientEvent *)self flowDomainExecutionContext];
  eventMetadata2 = [equalCopy flowDomainExecutionContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_57;
  }

  flowDomainExecutionContext = [(FLOWSchemaFLOWClientEvent *)self flowDomainExecutionContext];
  if (flowDomainExecutionContext)
  {
    v49 = flowDomainExecutionContext;
    flowDomainExecutionContext2 = [(FLOWSchemaFLOWClientEvent *)self flowDomainExecutionContext];
    flowDomainExecutionContext3 = [equalCopy flowDomainExecutionContext];
    v52 = [flowDomainExecutionContext2 isEqual:flowDomainExecutionContext3];

    if (!v52)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  eventMetadata = [(FLOWSchemaFLOWClientEvent *)self locationAccessPermissionPromptContext];
  eventMetadata2 = [equalCopy locationAccessPermissionPromptContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_57;
  }

  locationAccessPermissionPromptContext = [(FLOWSchemaFLOWClientEvent *)self locationAccessPermissionPromptContext];
  if (locationAccessPermissionPromptContext)
  {
    v54 = locationAccessPermissionPromptContext;
    locationAccessPermissionPromptContext2 = [(FLOWSchemaFLOWClientEvent *)self locationAccessPermissionPromptContext];
    locationAccessPermissionPromptContext3 = [equalCopy locationAccessPermissionPromptContext];
    v57 = [locationAccessPermissionPromptContext2 isEqual:locationAccessPermissionPromptContext3];

    if (!v57)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  eventMetadata = [(FLOWSchemaFLOWClientEvent *)self flowContactTier1];
  eventMetadata2 = [equalCopy flowContactTier1];
  if ((eventMetadata != 0) != (eventMetadata2 == 0))
  {
    flowContactTier1 = [(FLOWSchemaFLOWClientEvent *)self flowContactTier1];
    if (!flowContactTier1)
    {

LABEL_61:
      v63 = 1;
      goto LABEL_59;
    }

    v59 = flowContactTier1;
    flowContactTier12 = [(FLOWSchemaFLOWClientEvent *)self flowContactTier1];
    flowContactTier13 = [equalCopy flowContactTier1];
    v62 = [flowContactTier12 isEqual:flowContactTier13];

    if (v62)
    {
      goto LABEL_61;
    }
  }

  else
  {
LABEL_57:
  }

LABEL_58:
  v63 = 0;
LABEL_59:

  return v63;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  eventMetadata = [(FLOWSchemaFLOWClientEvent *)self eventMetadata];

  if (eventMetadata)
  {
    eventMetadata2 = [(FLOWSchemaFLOWClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  flowStep = [(FLOWSchemaFLOWClientEvent *)self flowStep];

  if (flowStep)
  {
    flowStep2 = [(FLOWSchemaFLOWClientEvent *)self flowStep];
    PBDataWriterWriteSubmessage();
  }

  flowEntityContextTier1 = [(FLOWSchemaFLOWClientEvent *)self flowEntityContextTier1];

  if (flowEntityContextTier1)
  {
    flowEntityContextTier12 = [(FLOWSchemaFLOWClientEvent *)self flowEntityContextTier1];
    PBDataWriterWriteSubmessage();
  }

  smsAttachmentMetadataTier1 = [(FLOWSchemaFLOWClientEvent *)self smsAttachmentMetadataTier1];

  if (smsAttachmentMetadataTier1)
  {
    smsAttachmentMetadataTier12 = [(FLOWSchemaFLOWClientEvent *)self smsAttachmentMetadataTier1];
    PBDataWriterWriteSubmessage();
  }

  appleMusicVoicePreviewOfferNotShown = [(FLOWSchemaFLOWClientEvent *)self appleMusicVoicePreviewOfferNotShown];

  if (appleMusicVoicePreviewOfferNotShown)
  {
    appleMusicVoicePreviewOfferNotShown2 = [(FLOWSchemaFLOWClientEvent *)self appleMusicVoicePreviewOfferNotShown];
    PBDataWriterWriteSubmessage();
  }

  pegasusContextTier1 = [(FLOWSchemaFLOWClientEvent *)self pegasusContextTier1];

  if (pegasusContextTier1)
  {
    pegasusContextTier12 = [(FLOWSchemaFLOWClientEvent *)self pegasusContextTier1];
    PBDataWriterWriteSubmessage();
  }

  mediaPlayerPlaybackContextTier1 = [(FLOWSchemaFLOWClientEvent *)self mediaPlayerPlaybackContextTier1];

  if (mediaPlayerPlaybackContextTier1)
  {
    mediaPlayerPlaybackContextTier12 = [(FLOWSchemaFLOWClientEvent *)self mediaPlayerPlaybackContextTier1];
    PBDataWriterWriteSubmessage();
  }

  mediaPlayerRadioStationContextTier1 = [(FLOWSchemaFLOWClientEvent *)self mediaPlayerRadioStationContextTier1];

  if (mediaPlayerRadioStationContextTier1)
  {
    mediaPlayerRadioStationContextTier12 = [(FLOWSchemaFLOWClientEvent *)self mediaPlayerRadioStationContextTier1];
    PBDataWriterWriteSubmessage();
  }

  flowDomainExecutionContext = [(FLOWSchemaFLOWClientEvent *)self flowDomainExecutionContext];

  if (flowDomainExecutionContext)
  {
    flowDomainExecutionContext2 = [(FLOWSchemaFLOWClientEvent *)self flowDomainExecutionContext];
    PBDataWriterWriteSubmessage();
  }

  locationAccessPermissionPromptContext = [(FLOWSchemaFLOWClientEvent *)self locationAccessPermissionPromptContext];

  if (locationAccessPermissionPromptContext)
  {
    locationAccessPermissionPromptContext2 = [(FLOWSchemaFLOWClientEvent *)self locationAccessPermissionPromptContext];
    PBDataWriterWriteSubmessage();
  }

  flowContactTier1 = [(FLOWSchemaFLOWClientEvent *)self flowContactTier1];

  v25 = toCopy;
  if (flowContactTier1)
  {
    flowContactTier12 = [(FLOWSchemaFLOWClientEvent *)self flowContactTier1];
    PBDataWriterWriteSubmessage();

    v25 = toCopy;
  }
}

- (void)deleteFlowContactTier1
{
  if (self->_whichEvent_Type == 110)
  {
    self->_whichEvent_Type = 0;
    self->_flowContactTier1 = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setFlowContactTier1:(id)tier1
{
  tier1Copy = tier1;
  flowStep = self->_flowStep;
  self->_flowStep = 0;

  flowEntityContextTier1 = self->_flowEntityContextTier1;
  self->_flowEntityContextTier1 = 0;

  smsAttachmentMetadataTier1 = self->_smsAttachmentMetadataTier1;
  self->_smsAttachmentMetadataTier1 = 0;

  appleMusicVoicePreviewOfferNotShown = self->_appleMusicVoicePreviewOfferNotShown;
  self->_appleMusicVoicePreviewOfferNotShown = 0;

  pegasusContextTier1 = self->_pegasusContextTier1;
  self->_pegasusContextTier1 = 0;

  mediaPlayerPlaybackContextTier1 = self->_mediaPlayerPlaybackContextTier1;
  self->_mediaPlayerPlaybackContextTier1 = 0;

  mediaPlayerRadioStationContextTier1 = self->_mediaPlayerRadioStationContextTier1;
  self->_mediaPlayerRadioStationContextTier1 = 0;

  flowDomainExecutionContext = self->_flowDomainExecutionContext;
  self->_flowDomainExecutionContext = 0;

  locationAccessPermissionPromptContext = self->_locationAccessPermissionPromptContext;
  self->_locationAccessPermissionPromptContext = 0;

  v14 = 110;
  if (!tier1Copy)
  {
    v14 = 0;
  }

  self->_whichEvent_Type = v14;
  flowContactTier1 = self->_flowContactTier1;
  self->_flowContactTier1 = tier1Copy;
}

- (void)deleteLocationAccessPermissionPromptContext
{
  if (self->_whichEvent_Type == 109)
  {
    self->_whichEvent_Type = 0;
    self->_locationAccessPermissionPromptContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setLocationAccessPermissionPromptContext:(id)context
{
  contextCopy = context;
  flowStep = self->_flowStep;
  self->_flowStep = 0;

  flowEntityContextTier1 = self->_flowEntityContextTier1;
  self->_flowEntityContextTier1 = 0;

  smsAttachmentMetadataTier1 = self->_smsAttachmentMetadataTier1;
  self->_smsAttachmentMetadataTier1 = 0;

  appleMusicVoicePreviewOfferNotShown = self->_appleMusicVoicePreviewOfferNotShown;
  self->_appleMusicVoicePreviewOfferNotShown = 0;

  pegasusContextTier1 = self->_pegasusContextTier1;
  self->_pegasusContextTier1 = 0;

  mediaPlayerPlaybackContextTier1 = self->_mediaPlayerPlaybackContextTier1;
  self->_mediaPlayerPlaybackContextTier1 = 0;

  mediaPlayerRadioStationContextTier1 = self->_mediaPlayerRadioStationContextTier1;
  self->_mediaPlayerRadioStationContextTier1 = 0;

  flowDomainExecutionContext = self->_flowDomainExecutionContext;
  self->_flowDomainExecutionContext = 0;

  flowContactTier1 = self->_flowContactTier1;
  self->_flowContactTier1 = 0;

  v14 = 109;
  if (!contextCopy)
  {
    v14 = 0;
  }

  self->_whichEvent_Type = v14;
  locationAccessPermissionPromptContext = self->_locationAccessPermissionPromptContext;
  self->_locationAccessPermissionPromptContext = contextCopy;
}

- (void)deleteFlowDomainExecutionContext
{
  if (self->_whichEvent_Type == 108)
  {
    self->_whichEvent_Type = 0;
    self->_flowDomainExecutionContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setFlowDomainExecutionContext:(id)context
{
  contextCopy = context;
  flowStep = self->_flowStep;
  self->_flowStep = 0;

  flowEntityContextTier1 = self->_flowEntityContextTier1;
  self->_flowEntityContextTier1 = 0;

  smsAttachmentMetadataTier1 = self->_smsAttachmentMetadataTier1;
  self->_smsAttachmentMetadataTier1 = 0;

  appleMusicVoicePreviewOfferNotShown = self->_appleMusicVoicePreviewOfferNotShown;
  self->_appleMusicVoicePreviewOfferNotShown = 0;

  pegasusContextTier1 = self->_pegasusContextTier1;
  self->_pegasusContextTier1 = 0;

  mediaPlayerPlaybackContextTier1 = self->_mediaPlayerPlaybackContextTier1;
  self->_mediaPlayerPlaybackContextTier1 = 0;

  mediaPlayerRadioStationContextTier1 = self->_mediaPlayerRadioStationContextTier1;
  self->_mediaPlayerRadioStationContextTier1 = 0;

  locationAccessPermissionPromptContext = self->_locationAccessPermissionPromptContext;
  self->_locationAccessPermissionPromptContext = 0;

  flowContactTier1 = self->_flowContactTier1;
  self->_flowContactTier1 = 0;

  v14 = 108;
  if (!contextCopy)
  {
    v14 = 0;
  }

  self->_whichEvent_Type = v14;
  flowDomainExecutionContext = self->_flowDomainExecutionContext;
  self->_flowDomainExecutionContext = contextCopy;
}

- (void)deleteMediaPlayerRadioStationContextTier1
{
  if (self->_whichEvent_Type == 107)
  {
    self->_whichEvent_Type = 0;
    self->_mediaPlayerRadioStationContextTier1 = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setMediaPlayerRadioStationContextTier1:(id)tier1
{
  tier1Copy = tier1;
  flowStep = self->_flowStep;
  self->_flowStep = 0;

  flowEntityContextTier1 = self->_flowEntityContextTier1;
  self->_flowEntityContextTier1 = 0;

  smsAttachmentMetadataTier1 = self->_smsAttachmentMetadataTier1;
  self->_smsAttachmentMetadataTier1 = 0;

  appleMusicVoicePreviewOfferNotShown = self->_appleMusicVoicePreviewOfferNotShown;
  self->_appleMusicVoicePreviewOfferNotShown = 0;

  pegasusContextTier1 = self->_pegasusContextTier1;
  self->_pegasusContextTier1 = 0;

  mediaPlayerPlaybackContextTier1 = self->_mediaPlayerPlaybackContextTier1;
  self->_mediaPlayerPlaybackContextTier1 = 0;

  flowDomainExecutionContext = self->_flowDomainExecutionContext;
  self->_flowDomainExecutionContext = 0;

  locationAccessPermissionPromptContext = self->_locationAccessPermissionPromptContext;
  self->_locationAccessPermissionPromptContext = 0;

  flowContactTier1 = self->_flowContactTier1;
  self->_flowContactTier1 = 0;

  v14 = 107;
  if (!tier1Copy)
  {
    v14 = 0;
  }

  self->_whichEvent_Type = v14;
  mediaPlayerRadioStationContextTier1 = self->_mediaPlayerRadioStationContextTier1;
  self->_mediaPlayerRadioStationContextTier1 = tier1Copy;
}

- (void)deleteMediaPlayerPlaybackContextTier1
{
  if (self->_whichEvent_Type == 106)
  {
    self->_whichEvent_Type = 0;
    self->_mediaPlayerPlaybackContextTier1 = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setMediaPlayerPlaybackContextTier1:(id)tier1
{
  tier1Copy = tier1;
  flowStep = self->_flowStep;
  self->_flowStep = 0;

  flowEntityContextTier1 = self->_flowEntityContextTier1;
  self->_flowEntityContextTier1 = 0;

  smsAttachmentMetadataTier1 = self->_smsAttachmentMetadataTier1;
  self->_smsAttachmentMetadataTier1 = 0;

  appleMusicVoicePreviewOfferNotShown = self->_appleMusicVoicePreviewOfferNotShown;
  self->_appleMusicVoicePreviewOfferNotShown = 0;

  pegasusContextTier1 = self->_pegasusContextTier1;
  self->_pegasusContextTier1 = 0;

  mediaPlayerRadioStationContextTier1 = self->_mediaPlayerRadioStationContextTier1;
  self->_mediaPlayerRadioStationContextTier1 = 0;

  flowDomainExecutionContext = self->_flowDomainExecutionContext;
  self->_flowDomainExecutionContext = 0;

  locationAccessPermissionPromptContext = self->_locationAccessPermissionPromptContext;
  self->_locationAccessPermissionPromptContext = 0;

  flowContactTier1 = self->_flowContactTier1;
  self->_flowContactTier1 = 0;

  v14 = 106;
  if (!tier1Copy)
  {
    v14 = 0;
  }

  self->_whichEvent_Type = v14;
  mediaPlayerPlaybackContextTier1 = self->_mediaPlayerPlaybackContextTier1;
  self->_mediaPlayerPlaybackContextTier1 = tier1Copy;
}

- (void)deletePegasusContextTier1
{
  if (self->_whichEvent_Type == 105)
  {
    self->_whichEvent_Type = 0;
    self->_pegasusContextTier1 = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setPegasusContextTier1:(id)tier1
{
  tier1Copy = tier1;
  flowStep = self->_flowStep;
  self->_flowStep = 0;

  flowEntityContextTier1 = self->_flowEntityContextTier1;
  self->_flowEntityContextTier1 = 0;

  smsAttachmentMetadataTier1 = self->_smsAttachmentMetadataTier1;
  self->_smsAttachmentMetadataTier1 = 0;

  appleMusicVoicePreviewOfferNotShown = self->_appleMusicVoicePreviewOfferNotShown;
  self->_appleMusicVoicePreviewOfferNotShown = 0;

  mediaPlayerPlaybackContextTier1 = self->_mediaPlayerPlaybackContextTier1;
  self->_mediaPlayerPlaybackContextTier1 = 0;

  mediaPlayerRadioStationContextTier1 = self->_mediaPlayerRadioStationContextTier1;
  self->_mediaPlayerRadioStationContextTier1 = 0;

  flowDomainExecutionContext = self->_flowDomainExecutionContext;
  self->_flowDomainExecutionContext = 0;

  locationAccessPermissionPromptContext = self->_locationAccessPermissionPromptContext;
  self->_locationAccessPermissionPromptContext = 0;

  flowContactTier1 = self->_flowContactTier1;
  self->_flowContactTier1 = 0;

  v14 = 105;
  if (!tier1Copy)
  {
    v14 = 0;
  }

  self->_whichEvent_Type = v14;
  pegasusContextTier1 = self->_pegasusContextTier1;
  self->_pegasusContextTier1 = tier1Copy;
}

- (void)deleteAppleMusicVoicePreviewOfferNotShown
{
  if (self->_whichEvent_Type == 104)
  {
    self->_whichEvent_Type = 0;
    self->_appleMusicVoicePreviewOfferNotShown = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setAppleMusicVoicePreviewOfferNotShown:(id)shown
{
  shownCopy = shown;
  flowStep = self->_flowStep;
  self->_flowStep = 0;

  flowEntityContextTier1 = self->_flowEntityContextTier1;
  self->_flowEntityContextTier1 = 0;

  smsAttachmentMetadataTier1 = self->_smsAttachmentMetadataTier1;
  self->_smsAttachmentMetadataTier1 = 0;

  pegasusContextTier1 = self->_pegasusContextTier1;
  self->_pegasusContextTier1 = 0;

  mediaPlayerPlaybackContextTier1 = self->_mediaPlayerPlaybackContextTier1;
  self->_mediaPlayerPlaybackContextTier1 = 0;

  mediaPlayerRadioStationContextTier1 = self->_mediaPlayerRadioStationContextTier1;
  self->_mediaPlayerRadioStationContextTier1 = 0;

  flowDomainExecutionContext = self->_flowDomainExecutionContext;
  self->_flowDomainExecutionContext = 0;

  locationAccessPermissionPromptContext = self->_locationAccessPermissionPromptContext;
  self->_locationAccessPermissionPromptContext = 0;

  flowContactTier1 = self->_flowContactTier1;
  self->_flowContactTier1 = 0;

  v14 = 104;
  if (!shownCopy)
  {
    v14 = 0;
  }

  self->_whichEvent_Type = v14;
  appleMusicVoicePreviewOfferNotShown = self->_appleMusicVoicePreviewOfferNotShown;
  self->_appleMusicVoicePreviewOfferNotShown = shownCopy;
}

- (void)deleteSmsAttachmentMetadataTier1
{
  if (self->_whichEvent_Type == 103)
  {
    self->_whichEvent_Type = 0;
    self->_smsAttachmentMetadataTier1 = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setSmsAttachmentMetadataTier1:(id)tier1
{
  tier1Copy = tier1;
  flowStep = self->_flowStep;
  self->_flowStep = 0;

  flowEntityContextTier1 = self->_flowEntityContextTier1;
  self->_flowEntityContextTier1 = 0;

  appleMusicVoicePreviewOfferNotShown = self->_appleMusicVoicePreviewOfferNotShown;
  self->_appleMusicVoicePreviewOfferNotShown = 0;

  pegasusContextTier1 = self->_pegasusContextTier1;
  self->_pegasusContextTier1 = 0;

  mediaPlayerPlaybackContextTier1 = self->_mediaPlayerPlaybackContextTier1;
  self->_mediaPlayerPlaybackContextTier1 = 0;

  mediaPlayerRadioStationContextTier1 = self->_mediaPlayerRadioStationContextTier1;
  self->_mediaPlayerRadioStationContextTier1 = 0;

  flowDomainExecutionContext = self->_flowDomainExecutionContext;
  self->_flowDomainExecutionContext = 0;

  locationAccessPermissionPromptContext = self->_locationAccessPermissionPromptContext;
  self->_locationAccessPermissionPromptContext = 0;

  flowContactTier1 = self->_flowContactTier1;
  self->_flowContactTier1 = 0;

  v14 = 103;
  if (!tier1Copy)
  {
    v14 = 0;
  }

  self->_whichEvent_Type = v14;
  smsAttachmentMetadataTier1 = self->_smsAttachmentMetadataTier1;
  self->_smsAttachmentMetadataTier1 = tier1Copy;
}

- (void)deleteFlowEntityContextTier1
{
  if (self->_whichEvent_Type == 102)
  {
    self->_whichEvent_Type = 0;
    self->_flowEntityContextTier1 = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setFlowEntityContextTier1:(id)tier1
{
  tier1Copy = tier1;
  flowStep = self->_flowStep;
  self->_flowStep = 0;

  smsAttachmentMetadataTier1 = self->_smsAttachmentMetadataTier1;
  self->_smsAttachmentMetadataTier1 = 0;

  appleMusicVoicePreviewOfferNotShown = self->_appleMusicVoicePreviewOfferNotShown;
  self->_appleMusicVoicePreviewOfferNotShown = 0;

  pegasusContextTier1 = self->_pegasusContextTier1;
  self->_pegasusContextTier1 = 0;

  mediaPlayerPlaybackContextTier1 = self->_mediaPlayerPlaybackContextTier1;
  self->_mediaPlayerPlaybackContextTier1 = 0;

  mediaPlayerRadioStationContextTier1 = self->_mediaPlayerRadioStationContextTier1;
  self->_mediaPlayerRadioStationContextTier1 = 0;

  flowDomainExecutionContext = self->_flowDomainExecutionContext;
  self->_flowDomainExecutionContext = 0;

  locationAccessPermissionPromptContext = self->_locationAccessPermissionPromptContext;
  self->_locationAccessPermissionPromptContext = 0;

  flowContactTier1 = self->_flowContactTier1;
  self->_flowContactTier1 = 0;

  v14 = 102;
  if (!tier1Copy)
  {
    v14 = 0;
  }

  self->_whichEvent_Type = v14;
  flowEntityContextTier1 = self->_flowEntityContextTier1;
  self->_flowEntityContextTier1 = tier1Copy;
}

- (void)deleteFlowStep
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    self->_flowStep = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setFlowStep:(id)step
{
  stepCopy = step;
  flowEntityContextTier1 = self->_flowEntityContextTier1;
  self->_flowEntityContextTier1 = 0;

  smsAttachmentMetadataTier1 = self->_smsAttachmentMetadataTier1;
  self->_smsAttachmentMetadataTier1 = 0;

  appleMusicVoicePreviewOfferNotShown = self->_appleMusicVoicePreviewOfferNotShown;
  self->_appleMusicVoicePreviewOfferNotShown = 0;

  pegasusContextTier1 = self->_pegasusContextTier1;
  self->_pegasusContextTier1 = 0;

  mediaPlayerPlaybackContextTier1 = self->_mediaPlayerPlaybackContextTier1;
  self->_mediaPlayerPlaybackContextTier1 = 0;

  mediaPlayerRadioStationContextTier1 = self->_mediaPlayerRadioStationContextTier1;
  self->_mediaPlayerRadioStationContextTier1 = 0;

  flowDomainExecutionContext = self->_flowDomainExecutionContext;
  self->_flowDomainExecutionContext = 0;

  locationAccessPermissionPromptContext = self->_locationAccessPermissionPromptContext;
  self->_locationAccessPermissionPromptContext = 0;

  flowContactTier1 = self->_flowContactTier1;
  self->_flowContactTier1 = 0;

  v14 = 101;
  if (!stepCopy)
  {
    v14 = 0;
  }

  self->_whichEvent_Type = v14;
  flowStep = self->_flowStep;
  self->_flowStep = stepCopy;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v40.receiver = self;
  v40.super_class = FLOWSchemaFLOWClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v40 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
  {
    [(FLOWSchemaFLOWClientEvent *)self deleteFlowEntityContextTier1];
    [(FLOWSchemaFLOWClientEvent *)self deletePegasusContextTier1];
    [(FLOWSchemaFLOWClientEvent *)self deleteMediaPlayerPlaybackContextTier1];
    [(FLOWSchemaFLOWClientEvent *)self deleteMediaPlayerRadioStationContextTier1];
    [(FLOWSchemaFLOWClientEvent *)self deleteFlowContactTier1];
  }

  if ([policyCopy isConditionSet:4])
  {
    [(FLOWSchemaFLOWClientEvent *)self deleteFlowEntityContextTier1];
    [(FLOWSchemaFLOWClientEvent *)self deletePegasusContextTier1];
    [(FLOWSchemaFLOWClientEvent *)self deleteMediaPlayerPlaybackContextTier1];
    [(FLOWSchemaFLOWClientEvent *)self deleteMediaPlayerRadioStationContextTier1];
    [(FLOWSchemaFLOWClientEvent *)self deleteFlowContactTier1];
  }

  if ([policyCopy isConditionSet:5])
  {
    [(FLOWSchemaFLOWClientEvent *)self deleteFlowEntityContextTier1];
    [(FLOWSchemaFLOWClientEvent *)self deletePegasusContextTier1];
    [(FLOWSchemaFLOWClientEvent *)self deleteMediaPlayerPlaybackContextTier1];
    [(FLOWSchemaFLOWClientEvent *)self deleteMediaPlayerRadioStationContextTier1];
    [(FLOWSchemaFLOWClientEvent *)self deleteFlowContactTier1];
  }

  if ([policyCopy isConditionSet:6])
  {
    [(FLOWSchemaFLOWClientEvent *)self deleteFlowEntityContextTier1];
    [(FLOWSchemaFLOWClientEvent *)self deletePegasusContextTier1];
    [(FLOWSchemaFLOWClientEvent *)self deleteMediaPlayerPlaybackContextTier1];
    [(FLOWSchemaFLOWClientEvent *)self deleteMediaPlayerRadioStationContextTier1];
    [(FLOWSchemaFLOWClientEvent *)self deleteFlowContactTier1];
  }

  if ([policyCopy isConditionSet:7])
  {
    [(FLOWSchemaFLOWClientEvent *)self deleteFlowEntityContextTier1];
    [(FLOWSchemaFLOWClientEvent *)self deletePegasusContextTier1];
    [(FLOWSchemaFLOWClientEvent *)self deleteMediaPlayerPlaybackContextTier1];
    [(FLOWSchemaFLOWClientEvent *)self deleteMediaPlayerRadioStationContextTier1];
    [(FLOWSchemaFLOWClientEvent *)self deleteFlowContactTier1];
  }

  eventMetadata = [(FLOWSchemaFLOWClientEvent *)self eventMetadata];
  v7 = [eventMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(FLOWSchemaFLOWClientEvent *)self deleteEventMetadata];
  }

  flowStep = [(FLOWSchemaFLOWClientEvent *)self flowStep];
  v10 = [flowStep applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(FLOWSchemaFLOWClientEvent *)self deleteFlowStep];
  }

  flowEntityContextTier1 = [(FLOWSchemaFLOWClientEvent *)self flowEntityContextTier1];
  v13 = [flowEntityContextTier1 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(FLOWSchemaFLOWClientEvent *)self deleteFlowEntityContextTier1];
  }

  smsAttachmentMetadataTier1 = [(FLOWSchemaFLOWClientEvent *)self smsAttachmentMetadataTier1];
  v16 = [smsAttachmentMetadataTier1 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(FLOWSchemaFLOWClientEvent *)self deleteSmsAttachmentMetadataTier1];
  }

  appleMusicVoicePreviewOfferNotShown = [(FLOWSchemaFLOWClientEvent *)self appleMusicVoicePreviewOfferNotShown];
  v19 = [appleMusicVoicePreviewOfferNotShown applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(FLOWSchemaFLOWClientEvent *)self deleteAppleMusicVoicePreviewOfferNotShown];
  }

  pegasusContextTier1 = [(FLOWSchemaFLOWClientEvent *)self pegasusContextTier1];
  v22 = [pegasusContextTier1 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage6 = [v22 suppressMessage];

  if (suppressMessage6)
  {
    [(FLOWSchemaFLOWClientEvent *)self deletePegasusContextTier1];
  }

  mediaPlayerPlaybackContextTier1 = [(FLOWSchemaFLOWClientEvent *)self mediaPlayerPlaybackContextTier1];
  v25 = [mediaPlayerPlaybackContextTier1 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage7 = [v25 suppressMessage];

  if (suppressMessage7)
  {
    [(FLOWSchemaFLOWClientEvent *)self deleteMediaPlayerPlaybackContextTier1];
  }

  mediaPlayerRadioStationContextTier1 = [(FLOWSchemaFLOWClientEvent *)self mediaPlayerRadioStationContextTier1];
  v28 = [mediaPlayerRadioStationContextTier1 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage8 = [v28 suppressMessage];

  if (suppressMessage8)
  {
    [(FLOWSchemaFLOWClientEvent *)self deleteMediaPlayerRadioStationContextTier1];
  }

  flowDomainExecutionContext = [(FLOWSchemaFLOWClientEvent *)self flowDomainExecutionContext];
  v31 = [flowDomainExecutionContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage9 = [v31 suppressMessage];

  if (suppressMessage9)
  {
    [(FLOWSchemaFLOWClientEvent *)self deleteFlowDomainExecutionContext];
  }

  locationAccessPermissionPromptContext = [(FLOWSchemaFLOWClientEvent *)self locationAccessPermissionPromptContext];
  v34 = [locationAccessPermissionPromptContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage10 = [v34 suppressMessage];

  if (suppressMessage10)
  {
    [(FLOWSchemaFLOWClientEvent *)self deleteLocationAccessPermissionPromptContext];
  }

  flowContactTier1 = [(FLOWSchemaFLOWClientEvent *)self flowContactTier1];
  v37 = [flowContactTier1 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage11 = [v37 suppressMessage];

  if (suppressMessage11)
  {
    [(FLOWSchemaFLOWClientEvent *)self deleteFlowContactTier1];
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
  eventMetadata = [(FLOWSchemaFLOWClientEvent *)self eventMetadata];
  flowId = [eventMetadata flowId];

  if (flowId && ([flowId value], (v5 = objc_claimAutoreleasedReturnValue()) != 0) && (v6 = v5, objc_msgSend(flowId, "value"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, v6, v8))
  {
    LODWORD(value) = 3;
  }

  else
  {
    eventMetadata2 = [(FLOWSchemaFLOWClientEvent *)self eventMetadata];
    requestId = [eventMetadata2 requestId];

    if (requestId && ([requestId value], (v12 = objc_claimAutoreleasedReturnValue()) != 0) && (v13 = v12, objc_msgSend(requestId, "value"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "length"), v14, v13, v15))
    {
      LODWORD(value) = 1;
      flowId = requestId;
    }

    else
    {
      eventMetadata3 = [(FLOWSchemaFLOWClientEvent *)self eventMetadata];
      flowId = [eventMetadata3 subRequestId];

      if (flowId)
      {
        value = [flowId value];
        if (value)
        {
          value2 = [flowId value];
          v18 = [value2 length];

          if (v18)
          {
            LODWORD(value) = 43;
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
    }
  }

  return value;
}

- (id)getComponentId
{
  eventMetadata = [(FLOWSchemaFLOWClientEvent *)self eventMetadata];
  flowId = [eventMetadata flowId];

  if (flowId)
  {
    value = [flowId value];
    if (value)
    {
      v6 = value;
      value2 = [flowId value];
      v8 = [value2 length];

      if (v8)
      {
        goto LABEL_11;
      }
    }
  }

  eventMetadata2 = [(FLOWSchemaFLOWClientEvent *)self eventMetadata];
  requestId = [eventMetadata2 requestId];

  if (requestId)
  {
    value3 = [requestId value];
    if (value3)
    {
      v12 = value3;
      value4 = [requestId value];
      v14 = [value4 length];

      if (v14)
      {
        flowId = requestId;
LABEL_11:
        value5 = flowId;
        flowId = value5;
        goto LABEL_13;
      }
    }
  }

  eventMetadata3 = [(FLOWSchemaFLOWClientEvent *)self eventMetadata];
  flowId = [eventMetadata3 subRequestId];

  if (flowId)
  {
    value5 = [flowId value];
    if (!value5)
    {
      goto LABEL_13;
    }

    value6 = [flowId value];
    v18 = [value6 length];

    if (v18)
    {
      goto LABEL_11;
    }
  }

  value5 = 0;
LABEL_13:

  return value5;
}

- (SISchemaInstrumentationMessage)innerEvent
{
  whichEvent_Type = [(FLOWSchemaFLOWClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 101 > 9)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78E96A8[whichEvent_Type - 101]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)tag
{
  if (tag - 101 > 9)
  {
    return 0;
  }

  else
  {
    return off_1E78E96F8[tag - 101];
  }
}

@end