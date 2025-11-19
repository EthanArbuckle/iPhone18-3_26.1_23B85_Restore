@interface FLOWSchemaFLOWClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (FLOWSchemaFLOWAppleMusicVoicePreviewOfferNotShown)appleMusicVoicePreviewOfferNotShown;
- (FLOWSchemaFLOWClientEvent)initWithDictionary:(id)a3;
- (FLOWSchemaFLOWClientEvent)initWithJSON:(id)a3;
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
- (id)applySensitiveConditionsPolicy:(id)a3;
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
- (void)setAppleMusicVoicePreviewOfferNotShown:(id)a3;
- (void)setFlowContactTier1:(id)a3;
- (void)setFlowDomainExecutionContext:(id)a3;
- (void)setFlowEntityContextTier1:(id)a3;
- (void)setFlowStep:(id)a3;
- (void)setLocationAccessPermissionPromptContext:(id)a3;
- (void)setMediaPlayerPlaybackContextTier1:(id)a3;
- (void)setMediaPlayerRadioStationContextTier1:(id)a3;
- (void)setPegasusContextTier1:(id)a3;
- (void)setSmsAttachmentMetadataTier1:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation FLOWSchemaFLOWClientEvent

- (id)qualifiedMessageName
{
  v2 = [(FLOWSchemaFLOWClientEvent *)self whichEvent_Type];
  if (v2 - 101 > 9)
  {
    return @"com.apple.aiml.siri.flow.FLOWClientEvent";
  }

  else
  {
    return off_1E78D50A8[v2 - 101];
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

- (FLOWSchemaFLOWClientEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v35.receiver = self;
  v35.super_class = FLOWSchemaFLOWClientEvent;
  v5 = [(FLOWSchemaFLOWClientEvent *)&v35 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[FLOWSchemaFLOWEventMetadata alloc] initWithDictionary:v6];
      [(FLOWSchemaFLOWClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"flowStep"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[FLOWSchemaFLOWStep alloc] initWithDictionary:v8];
      [(FLOWSchemaFLOWClientEvent *)v5 setFlowStep:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"flowEntityContextTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[FLOWSchemaFLOWEntityContextTier1 alloc] initWithDictionary:v10];
      [(FLOWSchemaFLOWClientEvent *)v5 setFlowEntityContextTier1:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"smsAttachmentMetadataTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[FLOWSchemaFLOWSmsAttachmentMetadataTier1 alloc] initWithDictionary:v12];
      [(FLOWSchemaFLOWClientEvent *)v5 setSmsAttachmentMetadataTier1:v13];
    }

    v32 = v12;
    v14 = [v4 objectForKeyedSubscript:@"appleMusicVoicePreviewOfferNotShown"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[FLOWSchemaFLOWAppleMusicVoicePreviewOfferNotShown alloc] initWithDictionary:v14];
      [(FLOWSchemaFLOWClientEvent *)v5 setAppleMusicVoicePreviewOfferNotShown:v15];
    }

    v16 = [v4 objectForKeyedSubscript:{@"pegasusContextTier1", v14}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[FLOWSchemaFLOWPegasusContextTier1 alloc] initWithDictionary:v16];
      [(FLOWSchemaFLOWClientEvent *)v5 setPegasusContextTier1:v17];
    }

    v18 = [v4 objectForKeyedSubscript:@"mediaPlayerPlaybackContextTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 alloc] initWithDictionary:v18];
      [(FLOWSchemaFLOWClientEvent *)v5 setMediaPlayerPlaybackContextTier1:v19];
    }

    v33 = v10;
    v34 = v6;
    v20 = [v4 objectForKeyedSubscript:@"mediaPlayerRadioStationContextTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [[FLOWSchemaFLOWMediaPlayerRadioStationContextTier1 alloc] initWithDictionary:v20];
      [(FLOWSchemaFLOWClientEvent *)v5 setMediaPlayerRadioStationContextTier1:v21];
    }

    v22 = v8;
    v23 = [v4 objectForKeyedSubscript:@"flowDomainExecutionContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = [[FLOWSchemaFLOWDomainExecutionContext alloc] initWithDictionary:v23];
      [(FLOWSchemaFLOWClientEvent *)v5 setFlowDomainExecutionContext:v24];
    }

    v25 = [v4 objectForKeyedSubscript:@"locationAccessPermissionPromptContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = [[FLOWSchemaFLOWLocationAccessPermissionPromptContext alloc] initWithDictionary:v25];
      [(FLOWSchemaFLOWClientEvent *)v5 setLocationAccessPermissionPromptContext:v26];
    }

    v27 = [v4 objectForKeyedSubscript:@"flowContactTier1"];
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

- (FLOWSchemaFLOWClientEvent)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(FLOWSchemaFLOWClientEvent *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(FLOWSchemaFLOWClientEvent *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_appleMusicVoicePreviewOfferNotShown)
  {
    v4 = [(FLOWSchemaFLOWClientEvent *)self appleMusicVoicePreviewOfferNotShown];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"appleMusicVoicePreviewOfferNotShown"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"appleMusicVoicePreviewOfferNotShown"];
    }
  }

  if (self->_eventMetadata)
  {
    v7 = [(FLOWSchemaFLOWClientEvent *)self eventMetadata];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"eventMetadata"];
    }
  }

  if (self->_flowContactTier1)
  {
    v10 = [(FLOWSchemaFLOWClientEvent *)self flowContactTier1];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"flowContactTier1"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"flowContactTier1"];
    }
  }

  if (self->_flowDomainExecutionContext)
  {
    v13 = [(FLOWSchemaFLOWClientEvent *)self flowDomainExecutionContext];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"flowDomainExecutionContext"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"flowDomainExecutionContext"];
    }
  }

  if (self->_flowEntityContextTier1)
  {
    v16 = [(FLOWSchemaFLOWClientEvent *)self flowEntityContextTier1];
    v17 = [v16 dictionaryRepresentation];
    if (v17)
    {
      [v3 setObject:v17 forKeyedSubscript:@"flowEntityContextTier1"];
    }

    else
    {
      v18 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v18 forKeyedSubscript:@"flowEntityContextTier1"];
    }
  }

  if (self->_flowStep)
  {
    v19 = [(FLOWSchemaFLOWClientEvent *)self flowStep];
    v20 = [v19 dictionaryRepresentation];
    if (v20)
    {
      [v3 setObject:v20 forKeyedSubscript:@"flowStep"];
    }

    else
    {
      v21 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v21 forKeyedSubscript:@"flowStep"];
    }
  }

  if (self->_locationAccessPermissionPromptContext)
  {
    v22 = [(FLOWSchemaFLOWClientEvent *)self locationAccessPermissionPromptContext];
    v23 = [v22 dictionaryRepresentation];
    if (v23)
    {
      [v3 setObject:v23 forKeyedSubscript:@"locationAccessPermissionPromptContext"];
    }

    else
    {
      v24 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v24 forKeyedSubscript:@"locationAccessPermissionPromptContext"];
    }
  }

  if (self->_mediaPlayerPlaybackContextTier1)
  {
    v25 = [(FLOWSchemaFLOWClientEvent *)self mediaPlayerPlaybackContextTier1];
    v26 = [v25 dictionaryRepresentation];
    if (v26)
    {
      [v3 setObject:v26 forKeyedSubscript:@"mediaPlayerPlaybackContextTier1"];
    }

    else
    {
      v27 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v27 forKeyedSubscript:@"mediaPlayerPlaybackContextTier1"];
    }
  }

  if (self->_mediaPlayerRadioStationContextTier1)
  {
    v28 = [(FLOWSchemaFLOWClientEvent *)self mediaPlayerRadioStationContextTier1];
    v29 = [v28 dictionaryRepresentation];
    if (v29)
    {
      [v3 setObject:v29 forKeyedSubscript:@"mediaPlayerRadioStationContextTier1"];
    }

    else
    {
      v30 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v30 forKeyedSubscript:@"mediaPlayerRadioStationContextTier1"];
    }
  }

  if (self->_pegasusContextTier1)
  {
    v31 = [(FLOWSchemaFLOWClientEvent *)self pegasusContextTier1];
    v32 = [v31 dictionaryRepresentation];
    if (v32)
    {
      [v3 setObject:v32 forKeyedSubscript:@"pegasusContextTier1"];
    }

    else
    {
      v33 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v33 forKeyedSubscript:@"pegasusContextTier1"];
    }
  }

  if (self->_smsAttachmentMetadataTier1)
  {
    v34 = [(FLOWSchemaFLOWClientEvent *)self smsAttachmentMetadataTier1];
    v35 = [v34 dictionaryRepresentation];
    if (v35)
    {
      [v3 setObject:v35 forKeyedSubscript:@"smsAttachmentMetadataTier1"];
    }

    else
    {
      v36 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v36 forKeyedSubscript:@"smsAttachmentMetadataTier1"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_58;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [v4 whichEvent_Type])
  {
    goto LABEL_58;
  }

  v6 = [(FLOWSchemaFLOWClientEvent *)self eventMetadata];
  v7 = [v4 eventMetadata];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_57;
  }

  v8 = [(FLOWSchemaFLOWClientEvent *)self eventMetadata];
  if (v8)
  {
    v9 = v8;
    v10 = [(FLOWSchemaFLOWClientEvent *)self eventMetadata];
    v11 = [v4 eventMetadata];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  v6 = [(FLOWSchemaFLOWClientEvent *)self flowStep];
  v7 = [v4 flowStep];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_57;
  }

  v13 = [(FLOWSchemaFLOWClientEvent *)self flowStep];
  if (v13)
  {
    v14 = v13;
    v15 = [(FLOWSchemaFLOWClientEvent *)self flowStep];
    v16 = [v4 flowStep];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  v6 = [(FLOWSchemaFLOWClientEvent *)self flowEntityContextTier1];
  v7 = [v4 flowEntityContextTier1];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_57;
  }

  v18 = [(FLOWSchemaFLOWClientEvent *)self flowEntityContextTier1];
  if (v18)
  {
    v19 = v18;
    v20 = [(FLOWSchemaFLOWClientEvent *)self flowEntityContextTier1];
    v21 = [v4 flowEntityContextTier1];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  v6 = [(FLOWSchemaFLOWClientEvent *)self smsAttachmentMetadataTier1];
  v7 = [v4 smsAttachmentMetadataTier1];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_57;
  }

  v23 = [(FLOWSchemaFLOWClientEvent *)self smsAttachmentMetadataTier1];
  if (v23)
  {
    v24 = v23;
    v25 = [(FLOWSchemaFLOWClientEvent *)self smsAttachmentMetadataTier1];
    v26 = [v4 smsAttachmentMetadataTier1];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  v6 = [(FLOWSchemaFLOWClientEvent *)self appleMusicVoicePreviewOfferNotShown];
  v7 = [v4 appleMusicVoicePreviewOfferNotShown];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_57;
  }

  v28 = [(FLOWSchemaFLOWClientEvent *)self appleMusicVoicePreviewOfferNotShown];
  if (v28)
  {
    v29 = v28;
    v30 = [(FLOWSchemaFLOWClientEvent *)self appleMusicVoicePreviewOfferNotShown];
    v31 = [v4 appleMusicVoicePreviewOfferNotShown];
    v32 = [v30 isEqual:v31];

    if (!v32)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  v6 = [(FLOWSchemaFLOWClientEvent *)self pegasusContextTier1];
  v7 = [v4 pegasusContextTier1];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_57;
  }

  v33 = [(FLOWSchemaFLOWClientEvent *)self pegasusContextTier1];
  if (v33)
  {
    v34 = v33;
    v35 = [(FLOWSchemaFLOWClientEvent *)self pegasusContextTier1];
    v36 = [v4 pegasusContextTier1];
    v37 = [v35 isEqual:v36];

    if (!v37)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  v6 = [(FLOWSchemaFLOWClientEvent *)self mediaPlayerPlaybackContextTier1];
  v7 = [v4 mediaPlayerPlaybackContextTier1];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_57;
  }

  v38 = [(FLOWSchemaFLOWClientEvent *)self mediaPlayerPlaybackContextTier1];
  if (v38)
  {
    v39 = v38;
    v40 = [(FLOWSchemaFLOWClientEvent *)self mediaPlayerPlaybackContextTier1];
    v41 = [v4 mediaPlayerPlaybackContextTier1];
    v42 = [v40 isEqual:v41];

    if (!v42)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  v6 = [(FLOWSchemaFLOWClientEvent *)self mediaPlayerRadioStationContextTier1];
  v7 = [v4 mediaPlayerRadioStationContextTier1];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_57;
  }

  v43 = [(FLOWSchemaFLOWClientEvent *)self mediaPlayerRadioStationContextTier1];
  if (v43)
  {
    v44 = v43;
    v45 = [(FLOWSchemaFLOWClientEvent *)self mediaPlayerRadioStationContextTier1];
    v46 = [v4 mediaPlayerRadioStationContextTier1];
    v47 = [v45 isEqual:v46];

    if (!v47)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  v6 = [(FLOWSchemaFLOWClientEvent *)self flowDomainExecutionContext];
  v7 = [v4 flowDomainExecutionContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_57;
  }

  v48 = [(FLOWSchemaFLOWClientEvent *)self flowDomainExecutionContext];
  if (v48)
  {
    v49 = v48;
    v50 = [(FLOWSchemaFLOWClientEvent *)self flowDomainExecutionContext];
    v51 = [v4 flowDomainExecutionContext];
    v52 = [v50 isEqual:v51];

    if (!v52)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  v6 = [(FLOWSchemaFLOWClientEvent *)self locationAccessPermissionPromptContext];
  v7 = [v4 locationAccessPermissionPromptContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_57;
  }

  v53 = [(FLOWSchemaFLOWClientEvent *)self locationAccessPermissionPromptContext];
  if (v53)
  {
    v54 = v53;
    v55 = [(FLOWSchemaFLOWClientEvent *)self locationAccessPermissionPromptContext];
    v56 = [v4 locationAccessPermissionPromptContext];
    v57 = [v55 isEqual:v56];

    if (!v57)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  v6 = [(FLOWSchemaFLOWClientEvent *)self flowContactTier1];
  v7 = [v4 flowContactTier1];
  if ((v6 != 0) != (v7 == 0))
  {
    v58 = [(FLOWSchemaFLOWClientEvent *)self flowContactTier1];
    if (!v58)
    {

LABEL_61:
      v63 = 1;
      goto LABEL_59;
    }

    v59 = v58;
    v60 = [(FLOWSchemaFLOWClientEvent *)self flowContactTier1];
    v61 = [v4 flowContactTier1];
    v62 = [v60 isEqual:v61];

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

- (void)writeTo:(id)a3
{
  v27 = a3;
  v4 = [(FLOWSchemaFLOWClientEvent *)self eventMetadata];

  if (v4)
  {
    v5 = [(FLOWSchemaFLOWClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(FLOWSchemaFLOWClientEvent *)self flowStep];

  if (v6)
  {
    v7 = [(FLOWSchemaFLOWClientEvent *)self flowStep];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(FLOWSchemaFLOWClientEvent *)self flowEntityContextTier1];

  if (v8)
  {
    v9 = [(FLOWSchemaFLOWClientEvent *)self flowEntityContextTier1];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(FLOWSchemaFLOWClientEvent *)self smsAttachmentMetadataTier1];

  if (v10)
  {
    v11 = [(FLOWSchemaFLOWClientEvent *)self smsAttachmentMetadataTier1];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(FLOWSchemaFLOWClientEvent *)self appleMusicVoicePreviewOfferNotShown];

  if (v12)
  {
    v13 = [(FLOWSchemaFLOWClientEvent *)self appleMusicVoicePreviewOfferNotShown];
    PBDataWriterWriteSubmessage();
  }

  v14 = [(FLOWSchemaFLOWClientEvent *)self pegasusContextTier1];

  if (v14)
  {
    v15 = [(FLOWSchemaFLOWClientEvent *)self pegasusContextTier1];
    PBDataWriterWriteSubmessage();
  }

  v16 = [(FLOWSchemaFLOWClientEvent *)self mediaPlayerPlaybackContextTier1];

  if (v16)
  {
    v17 = [(FLOWSchemaFLOWClientEvent *)self mediaPlayerPlaybackContextTier1];
    PBDataWriterWriteSubmessage();
  }

  v18 = [(FLOWSchemaFLOWClientEvent *)self mediaPlayerRadioStationContextTier1];

  if (v18)
  {
    v19 = [(FLOWSchemaFLOWClientEvent *)self mediaPlayerRadioStationContextTier1];
    PBDataWriterWriteSubmessage();
  }

  v20 = [(FLOWSchemaFLOWClientEvent *)self flowDomainExecutionContext];

  if (v20)
  {
    v21 = [(FLOWSchemaFLOWClientEvent *)self flowDomainExecutionContext];
    PBDataWriterWriteSubmessage();
  }

  v22 = [(FLOWSchemaFLOWClientEvent *)self locationAccessPermissionPromptContext];

  if (v22)
  {
    v23 = [(FLOWSchemaFLOWClientEvent *)self locationAccessPermissionPromptContext];
    PBDataWriterWriteSubmessage();
  }

  v24 = [(FLOWSchemaFLOWClientEvent *)self flowContactTier1];

  v25 = v27;
  if (v24)
  {
    v26 = [(FLOWSchemaFLOWClientEvent *)self flowContactTier1];
    PBDataWriterWriteSubmessage();

    v25 = v27;
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

- (void)setFlowContactTier1:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v14 = 0;
  }

  self->_whichEvent_Type = v14;
  flowContactTier1 = self->_flowContactTier1;
  self->_flowContactTier1 = v4;
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

- (void)setLocationAccessPermissionPromptContext:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v14 = 0;
  }

  self->_whichEvent_Type = v14;
  locationAccessPermissionPromptContext = self->_locationAccessPermissionPromptContext;
  self->_locationAccessPermissionPromptContext = v4;
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

- (void)setFlowDomainExecutionContext:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v14 = 0;
  }

  self->_whichEvent_Type = v14;
  flowDomainExecutionContext = self->_flowDomainExecutionContext;
  self->_flowDomainExecutionContext = v4;
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

- (void)setMediaPlayerRadioStationContextTier1:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v14 = 0;
  }

  self->_whichEvent_Type = v14;
  mediaPlayerRadioStationContextTier1 = self->_mediaPlayerRadioStationContextTier1;
  self->_mediaPlayerRadioStationContextTier1 = v4;
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

- (void)setMediaPlayerPlaybackContextTier1:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v14 = 0;
  }

  self->_whichEvent_Type = v14;
  mediaPlayerPlaybackContextTier1 = self->_mediaPlayerPlaybackContextTier1;
  self->_mediaPlayerPlaybackContextTier1 = v4;
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

- (void)setPegasusContextTier1:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v14 = 0;
  }

  self->_whichEvent_Type = v14;
  pegasusContextTier1 = self->_pegasusContextTier1;
  self->_pegasusContextTier1 = v4;
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

- (void)setAppleMusicVoicePreviewOfferNotShown:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v14 = 0;
  }

  self->_whichEvent_Type = v14;
  appleMusicVoicePreviewOfferNotShown = self->_appleMusicVoicePreviewOfferNotShown;
  self->_appleMusicVoicePreviewOfferNotShown = v4;
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

- (void)setSmsAttachmentMetadataTier1:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v14 = 0;
  }

  self->_whichEvent_Type = v14;
  smsAttachmentMetadataTier1 = self->_smsAttachmentMetadataTier1;
  self->_smsAttachmentMetadataTier1 = v4;
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

- (void)setFlowEntityContextTier1:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v14 = 0;
  }

  self->_whichEvent_Type = v14;
  flowEntityContextTier1 = self->_flowEntityContextTier1;
  self->_flowEntityContextTier1 = v4;
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

- (void)setFlowStep:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v14 = 0;
  }

  self->_whichEvent_Type = v14;
  flowStep = self->_flowStep;
  self->_flowStep = v4;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v40.receiver = self;
  v40.super_class = FLOWSchemaFLOWClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v40 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:2])
  {
    [(FLOWSchemaFLOWClientEvent *)self deleteFlowEntityContextTier1];
    [(FLOWSchemaFLOWClientEvent *)self deletePegasusContextTier1];
    [(FLOWSchemaFLOWClientEvent *)self deleteMediaPlayerPlaybackContextTier1];
    [(FLOWSchemaFLOWClientEvent *)self deleteMediaPlayerRadioStationContextTier1];
    [(FLOWSchemaFLOWClientEvent *)self deleteFlowContactTier1];
  }

  if ([v4 isConditionSet:4])
  {
    [(FLOWSchemaFLOWClientEvent *)self deleteFlowEntityContextTier1];
    [(FLOWSchemaFLOWClientEvent *)self deletePegasusContextTier1];
    [(FLOWSchemaFLOWClientEvent *)self deleteMediaPlayerPlaybackContextTier1];
    [(FLOWSchemaFLOWClientEvent *)self deleteMediaPlayerRadioStationContextTier1];
    [(FLOWSchemaFLOWClientEvent *)self deleteFlowContactTier1];
  }

  if ([v4 isConditionSet:5])
  {
    [(FLOWSchemaFLOWClientEvent *)self deleteFlowEntityContextTier1];
    [(FLOWSchemaFLOWClientEvent *)self deletePegasusContextTier1];
    [(FLOWSchemaFLOWClientEvent *)self deleteMediaPlayerPlaybackContextTier1];
    [(FLOWSchemaFLOWClientEvent *)self deleteMediaPlayerRadioStationContextTier1];
    [(FLOWSchemaFLOWClientEvent *)self deleteFlowContactTier1];
  }

  if ([v4 isConditionSet:6])
  {
    [(FLOWSchemaFLOWClientEvent *)self deleteFlowEntityContextTier1];
    [(FLOWSchemaFLOWClientEvent *)self deletePegasusContextTier1];
    [(FLOWSchemaFLOWClientEvent *)self deleteMediaPlayerPlaybackContextTier1];
    [(FLOWSchemaFLOWClientEvent *)self deleteMediaPlayerRadioStationContextTier1];
    [(FLOWSchemaFLOWClientEvent *)self deleteFlowContactTier1];
  }

  if ([v4 isConditionSet:7])
  {
    [(FLOWSchemaFLOWClientEvent *)self deleteFlowEntityContextTier1];
    [(FLOWSchemaFLOWClientEvent *)self deletePegasusContextTier1];
    [(FLOWSchemaFLOWClientEvent *)self deleteMediaPlayerPlaybackContextTier1];
    [(FLOWSchemaFLOWClientEvent *)self deleteMediaPlayerRadioStationContextTier1];
    [(FLOWSchemaFLOWClientEvent *)self deleteFlowContactTier1];
  }

  v6 = [(FLOWSchemaFLOWClientEvent *)self eventMetadata];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(FLOWSchemaFLOWClientEvent *)self deleteEventMetadata];
  }

  v9 = [(FLOWSchemaFLOWClientEvent *)self flowStep];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(FLOWSchemaFLOWClientEvent *)self deleteFlowStep];
  }

  v12 = [(FLOWSchemaFLOWClientEvent *)self flowEntityContextTier1];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(FLOWSchemaFLOWClientEvent *)self deleteFlowEntityContextTier1];
  }

  v15 = [(FLOWSchemaFLOWClientEvent *)self smsAttachmentMetadataTier1];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(FLOWSchemaFLOWClientEvent *)self deleteSmsAttachmentMetadataTier1];
  }

  v18 = [(FLOWSchemaFLOWClientEvent *)self appleMusicVoicePreviewOfferNotShown];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
  {
    [(FLOWSchemaFLOWClientEvent *)self deleteAppleMusicVoicePreviewOfferNotShown];
  }

  v21 = [(FLOWSchemaFLOWClientEvent *)self pegasusContextTier1];
  v22 = [v21 applySensitiveConditionsPolicy:v4];
  v23 = [v22 suppressMessage];

  if (v23)
  {
    [(FLOWSchemaFLOWClientEvent *)self deletePegasusContextTier1];
  }

  v24 = [(FLOWSchemaFLOWClientEvent *)self mediaPlayerPlaybackContextTier1];
  v25 = [v24 applySensitiveConditionsPolicy:v4];
  v26 = [v25 suppressMessage];

  if (v26)
  {
    [(FLOWSchemaFLOWClientEvent *)self deleteMediaPlayerPlaybackContextTier1];
  }

  v27 = [(FLOWSchemaFLOWClientEvent *)self mediaPlayerRadioStationContextTier1];
  v28 = [v27 applySensitiveConditionsPolicy:v4];
  v29 = [v28 suppressMessage];

  if (v29)
  {
    [(FLOWSchemaFLOWClientEvent *)self deleteMediaPlayerRadioStationContextTier1];
  }

  v30 = [(FLOWSchemaFLOWClientEvent *)self flowDomainExecutionContext];
  v31 = [v30 applySensitiveConditionsPolicy:v4];
  v32 = [v31 suppressMessage];

  if (v32)
  {
    [(FLOWSchemaFLOWClientEvent *)self deleteFlowDomainExecutionContext];
  }

  v33 = [(FLOWSchemaFLOWClientEvent *)self locationAccessPermissionPromptContext];
  v34 = [v33 applySensitiveConditionsPolicy:v4];
  v35 = [v34 suppressMessage];

  if (v35)
  {
    [(FLOWSchemaFLOWClientEvent *)self deleteLocationAccessPermissionPromptContext];
  }

  v36 = [(FLOWSchemaFLOWClientEvent *)self flowContactTier1];
  v37 = [v36 applySensitiveConditionsPolicy:v4];
  v38 = [v37 suppressMessage];

  if (v38)
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
  v3 = [(FLOWSchemaFLOWClientEvent *)self eventMetadata];
  v4 = [v3 flowId];

  if (v4 && ([v4 value], (v5 = objc_claimAutoreleasedReturnValue()) != 0) && (v6 = v5, objc_msgSend(v4, "value"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, v6, v8))
  {
    LODWORD(v9) = 3;
  }

  else
  {
    v10 = [(FLOWSchemaFLOWClientEvent *)self eventMetadata];
    v11 = [v10 requestId];

    if (v11 && ([v11 value], (v12 = objc_claimAutoreleasedReturnValue()) != 0) && (v13 = v12, objc_msgSend(v11, "value"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "length"), v14, v13, v15))
    {
      LODWORD(v9) = 1;
      v4 = v11;
    }

    else
    {
      v16 = [(FLOWSchemaFLOWClientEvent *)self eventMetadata];
      v4 = [v16 subRequestId];

      if (v4)
      {
        v9 = [v4 value];
        if (v9)
        {
          v17 = [v4 value];
          v18 = [v17 length];

          if (v18)
          {
            LODWORD(v9) = 43;
          }

          else
          {
            LODWORD(v9) = 0;
          }
        }
      }

      else
      {
        LODWORD(v9) = 0;
      }
    }
  }

  return v9;
}

- (id)getComponentId
{
  v3 = [(FLOWSchemaFLOWClientEvent *)self eventMetadata];
  v4 = [v3 flowId];

  if (v4)
  {
    v5 = [v4 value];
    if (v5)
    {
      v6 = v5;
      v7 = [v4 value];
      v8 = [v7 length];

      if (v8)
      {
        goto LABEL_11;
      }
    }
  }

  v9 = [(FLOWSchemaFLOWClientEvent *)self eventMetadata];
  v10 = [v9 requestId];

  if (v10)
  {
    v11 = [v10 value];
    if (v11)
    {
      v12 = v11;
      v13 = [v10 value];
      v14 = [v13 length];

      if (v14)
      {
        v4 = v10;
LABEL_11:
        v16 = v4;
        v4 = v16;
        goto LABEL_13;
      }
    }
  }

  v15 = [(FLOWSchemaFLOWClientEvent *)self eventMetadata];
  v4 = [v15 subRequestId];

  if (v4)
  {
    v16 = [v4 value];
    if (!v16)
    {
      goto LABEL_13;
    }

    v17 = [v4 value];
    v18 = [v17 length];

    if (v18)
    {
      goto LABEL_11;
    }
  }

  v16 = 0;
LABEL_13:

  return v16;
}

- (SISchemaInstrumentationMessage)innerEvent
{
  v3 = [(FLOWSchemaFLOWClientEvent *)self whichEvent_Type];
  if (v3 - 101 > 9)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78E96A8[v3 - 101]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)a3
{
  if (a3 - 101 > 9)
  {
    return 0;
  }

  else
  {
    return off_1E78E96F8[a3 - 101];
  }
}

@end