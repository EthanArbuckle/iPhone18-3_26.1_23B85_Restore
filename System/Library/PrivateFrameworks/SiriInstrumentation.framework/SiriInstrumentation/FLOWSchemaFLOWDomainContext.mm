@interface FLOWSchemaFLOWDomainContext
- (BOOL)isEqual:(id)equal;
- (FLOWSchemaFLOWBriefingContext)briefingContext;
- (FLOWSchemaFLOWDomainContext)initWithDictionary:(id)dictionary;
- (FLOWSchemaFLOWDomainContext)initWithJSON:(id)n;
- (FLOWSchemaFLOWHomeAutomationContext)homeAutomationContext;
- (FLOWSchemaFLOWHomeCommunicationContext)homeCommunicationContext;
- (FLOWSchemaFLOWIdentityContext)identityContext;
- (FLOWSchemaFLOWInformationPluginContext)informationPluginContext;
- (FLOWSchemaFLOWMediaPlayerContext)mediaPlayerContext;
- (FLOWSchemaFLOWNotificationContext)notificationContext;
- (FLOWSchemaFLOWPegasusContext)pegasusContext;
- (FLOWSchemaFLOWPhoneCallContext)phoneCallContext;
- (FLOWSchemaFLOWPhotosContext)photosContext;
- (FLOWSchemaFLOWSafariContext)safariContext;
- (FLOWSchemaFLOWSmsContext)smsContext;
- (FLOWSchemaFLOWVoiceShortcutContext)voiceShortcutContext;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteBriefingContext;
- (void)deleteHomeAutomationContext;
- (void)deleteHomeCommunicationContext;
- (void)deleteIdentityContext;
- (void)deleteInformationPluginContext;
- (void)deleteMediaPlayerContext;
- (void)deleteNotificationContext;
- (void)deletePegasusContext;
- (void)deletePhoneCallContext;
- (void)deletePhotosContext;
- (void)deleteSafariContext;
- (void)deleteSmsContext;
- (void)deleteVoiceShortcutContext;
- (void)setBriefingContext:(id)context;
- (void)setHomeAutomationContext:(id)context;
- (void)setHomeCommunicationContext:(id)context;
- (void)setIdentityContext:(id)context;
- (void)setInformationPluginContext:(id)context;
- (void)setMediaPlayerContext:(id)context;
- (void)setNotificationContext:(id)context;
- (void)setPegasusContext:(id)context;
- (void)setPhoneCallContext:(id)context;
- (void)setPhotosContext:(id)context;
- (void)setSafariContext:(id)context;
- (void)setSmsContext:(id)context;
- (void)setVoiceShortcutContext:(id)context;
- (void)writeTo:(id)to;
@end

@implementation FLOWSchemaFLOWDomainContext

- (FLOWSchemaFLOWSmsContext)smsContext
{
  if (self->_whichDomaincontext == 4)
  {
    v3 = self->_smsContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FLOWSchemaFLOWVoiceShortcutContext)voiceShortcutContext
{
  if (self->_whichDomaincontext == 1)
  {
    v3 = self->_voiceShortcutContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FLOWSchemaFLOWHomeAutomationContext)homeAutomationContext
{
  if (self->_whichDomaincontext == 2)
  {
    v3 = self->_homeAutomationContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FLOWSchemaFLOWPhoneCallContext)phoneCallContext
{
  if (self->_whichDomaincontext == 3)
  {
    v3 = self->_phoneCallContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FLOWSchemaFLOWMediaPlayerContext)mediaPlayerContext
{
  if (self->_whichDomaincontext == 5)
  {
    v3 = self->_mediaPlayerContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FLOWSchemaFLOWIdentityContext)identityContext
{
  if (self->_whichDomaincontext == 6)
  {
    v3 = self->_identityContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FLOWSchemaFLOWBriefingContext)briefingContext
{
  if (self->_whichDomaincontext == 7)
  {
    v3 = self->_briefingContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FLOWSchemaFLOWPegasusContext)pegasusContext
{
  if (self->_whichDomaincontext == 8)
  {
    v3 = self->_pegasusContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FLOWSchemaFLOWInformationPluginContext)informationPluginContext
{
  if (self->_whichDomaincontext == 9)
  {
    v3 = self->_informationPluginContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FLOWSchemaFLOWHomeCommunicationContext)homeCommunicationContext
{
  if (self->_whichDomaincontext == 10)
  {
    v3 = self->_homeCommunicationContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FLOWSchemaFLOWNotificationContext)notificationContext
{
  if (self->_whichDomaincontext == 11)
  {
    v3 = self->_notificationContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FLOWSchemaFLOWPhotosContext)photosContext
{
  if (self->_whichDomaincontext == 12)
  {
    v3 = self->_photosContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FLOWSchemaFLOWSafariContext)safariContext
{
  if (self->_whichDomaincontext == 13)
  {
    v3 = self->_safariContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FLOWSchemaFLOWDomainContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v41.receiver = self;
  v41.super_class = FLOWSchemaFLOWDomainContext;
  v5 = [(FLOWSchemaFLOWDomainContext *)&v41 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"voiceShortcutContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[FLOWSchemaFLOWVoiceShortcutContext alloc] initWithDictionary:v6];
      [(FLOWSchemaFLOWDomainContext *)v5 setVoiceShortcutContext:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"homeAutomationContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[FLOWSchemaFLOWHomeAutomationContext alloc] initWithDictionary:v8];
      [(FLOWSchemaFLOWDomainContext *)v5 setHomeAutomationContext:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"phoneCallContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[FLOWSchemaFLOWPhoneCallContext alloc] initWithDictionary:v10];
      [(FLOWSchemaFLOWDomainContext *)v5 setPhoneCallContext:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"smsContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[FLOWSchemaFLOWSmsContext alloc] initWithDictionary:v12];
      [(FLOWSchemaFLOWDomainContext *)v5 setSmsContext:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"mediaPlayerContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[FLOWSchemaFLOWMediaPlayerContext alloc] initWithDictionary:v14];
      [(FLOWSchemaFLOWDomainContext *)v5 setMediaPlayerContext:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"identityContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[FLOWSchemaFLOWIdentityContext alloc] initWithDictionary:v16];
      [(FLOWSchemaFLOWDomainContext *)v5 setIdentityContext:v17];
    }

    v36 = v16;
    v18 = [dictionaryCopy objectForKeyedSubscript:@"briefingContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[FLOWSchemaFLOWBriefingContext alloc] initWithDictionary:v18];
      [(FLOWSchemaFLOWDomainContext *)v5 setBriefingContext:v19];
    }

    v40 = v6;
    v20 = [dictionaryCopy objectForKeyedSubscript:{@"pegasusContext", v18}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [[FLOWSchemaFLOWPegasusContext alloc] initWithDictionary:v20];
      [(FLOWSchemaFLOWDomainContext *)v5 setPegasusContext:v21];
    }

    v39 = v8;
    v22 = [dictionaryCopy objectForKeyedSubscript:@"informationPluginContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [[FLOWSchemaFLOWInformationPluginContext alloc] initWithDictionary:v22];
      [(FLOWSchemaFLOWDomainContext *)v5 setInformationPluginContext:v23];
    }

    v37 = v14;
    v38 = v10;
    v24 = [dictionaryCopy objectForKeyedSubscript:@"homeCommunicationContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [[FLOWSchemaFLOWHomeCommunicationContext alloc] initWithDictionary:v24];
      [(FLOWSchemaFLOWDomainContext *)v5 setHomeCommunicationContext:v25];
    }

    v26 = v12;
    v27 = [dictionaryCopy objectForKeyedSubscript:@"notificationContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = [[FLOWSchemaFLOWNotificationContext alloc] initWithDictionary:v27];
      [(FLOWSchemaFLOWDomainContext *)v5 setNotificationContext:v28];
    }

    v29 = [dictionaryCopy objectForKeyedSubscript:@"photosContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = [[FLOWSchemaFLOWPhotosContext alloc] initWithDictionary:v29];
      [(FLOWSchemaFLOWDomainContext *)v5 setPhotosContext:v30];
    }

    v31 = [dictionaryCopy objectForKeyedSubscript:@"safariContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = [[FLOWSchemaFLOWSafariContext alloc] initWithDictionary:v31];
      [(FLOWSchemaFLOWDomainContext *)v5 setSafariContext:v32];
    }

    v33 = v5;
  }

  return v5;
}

- (FLOWSchemaFLOWDomainContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(FLOWSchemaFLOWDomainContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(FLOWSchemaFLOWDomainContext *)self dictionaryRepresentation];
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
  if (self->_briefingContext)
  {
    briefingContext = [(FLOWSchemaFLOWDomainContext *)self briefingContext];
    dictionaryRepresentation = [briefingContext dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"briefingContext"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"briefingContext"];
    }
  }

  if (self->_homeAutomationContext)
  {
    homeAutomationContext = [(FLOWSchemaFLOWDomainContext *)self homeAutomationContext];
    dictionaryRepresentation2 = [homeAutomationContext dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"homeAutomationContext"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"homeAutomationContext"];
    }
  }

  if (self->_homeCommunicationContext)
  {
    homeCommunicationContext = [(FLOWSchemaFLOWDomainContext *)self homeCommunicationContext];
    dictionaryRepresentation3 = [homeCommunicationContext dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"homeCommunicationContext"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"homeCommunicationContext"];
    }
  }

  if (self->_identityContext)
  {
    identityContext = [(FLOWSchemaFLOWDomainContext *)self identityContext];
    dictionaryRepresentation4 = [identityContext dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"identityContext"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"identityContext"];
    }
  }

  if (self->_informationPluginContext)
  {
    informationPluginContext = [(FLOWSchemaFLOWDomainContext *)self informationPluginContext];
    dictionaryRepresentation5 = [informationPluginContext dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"informationPluginContext"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"informationPluginContext"];
    }
  }

  if (self->_mediaPlayerContext)
  {
    mediaPlayerContext = [(FLOWSchemaFLOWDomainContext *)self mediaPlayerContext];
    dictionaryRepresentation6 = [mediaPlayerContext dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"mediaPlayerContext"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"mediaPlayerContext"];
    }
  }

  if (self->_notificationContext)
  {
    notificationContext = [(FLOWSchemaFLOWDomainContext *)self notificationContext];
    dictionaryRepresentation7 = [notificationContext dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"notificationContext"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"notificationContext"];
    }
  }

  if (self->_pegasusContext)
  {
    pegasusContext = [(FLOWSchemaFLOWDomainContext *)self pegasusContext];
    dictionaryRepresentation8 = [pegasusContext dictionaryRepresentation];
    if (dictionaryRepresentation8)
    {
      [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"pegasusContext"];
    }

    else
    {
      null8 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null8 forKeyedSubscript:@"pegasusContext"];
    }
  }

  if (self->_phoneCallContext)
  {
    phoneCallContext = [(FLOWSchemaFLOWDomainContext *)self phoneCallContext];
    dictionaryRepresentation9 = [phoneCallContext dictionaryRepresentation];
    if (dictionaryRepresentation9)
    {
      [dictionary setObject:dictionaryRepresentation9 forKeyedSubscript:@"phoneCallContext"];
    }

    else
    {
      null9 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null9 forKeyedSubscript:@"phoneCallContext"];
    }
  }

  if (self->_photosContext)
  {
    photosContext = [(FLOWSchemaFLOWDomainContext *)self photosContext];
    dictionaryRepresentation10 = [photosContext dictionaryRepresentation];
    if (dictionaryRepresentation10)
    {
      [dictionary setObject:dictionaryRepresentation10 forKeyedSubscript:@"photosContext"];
    }

    else
    {
      null10 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null10 forKeyedSubscript:@"photosContext"];
    }
  }

  if (self->_safariContext)
  {
    safariContext = [(FLOWSchemaFLOWDomainContext *)self safariContext];
    dictionaryRepresentation11 = [safariContext dictionaryRepresentation];
    if (dictionaryRepresentation11)
    {
      [dictionary setObject:dictionaryRepresentation11 forKeyedSubscript:@"safariContext"];
    }

    else
    {
      null11 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null11 forKeyedSubscript:@"safariContext"];
    }
  }

  if (self->_smsContext)
  {
    smsContext = [(FLOWSchemaFLOWDomainContext *)self smsContext];
    dictionaryRepresentation12 = [smsContext dictionaryRepresentation];
    if (dictionaryRepresentation12)
    {
      [dictionary setObject:dictionaryRepresentation12 forKeyedSubscript:@"smsContext"];
    }

    else
    {
      null12 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null12 forKeyedSubscript:@"smsContext"];
    }
  }

  if (self->_voiceShortcutContext)
  {
    voiceShortcutContext = [(FLOWSchemaFLOWDomainContext *)self voiceShortcutContext];
    dictionaryRepresentation13 = [voiceShortcutContext dictionaryRepresentation];
    if (dictionaryRepresentation13)
    {
      [dictionary setObject:dictionaryRepresentation13 forKeyedSubscript:@"voiceShortcutContext"];
    }

    else
    {
      null13 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null13 forKeyedSubscript:@"voiceShortcutContext"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(FLOWSchemaFLOWVoiceShortcutContext *)self->_voiceShortcutContext hash];
  v4 = [(FLOWSchemaFLOWHomeAutomationContext *)self->_homeAutomationContext hash]^ v3;
  v5 = [(FLOWSchemaFLOWPhoneCallContext *)self->_phoneCallContext hash];
  v6 = v4 ^ v5 ^ [(FLOWSchemaFLOWSmsContext *)self->_smsContext hash];
  v7 = [(FLOWSchemaFLOWMediaPlayerContext *)self->_mediaPlayerContext hash];
  v8 = v7 ^ [(FLOWSchemaFLOWIdentityContext *)self->_identityContext hash];
  v9 = v6 ^ v8 ^ [(FLOWSchemaFLOWBriefingContext *)self->_briefingContext hash];
  v10 = [(FLOWSchemaFLOWPegasusContext *)self->_pegasusContext hash];
  v11 = v10 ^ [(FLOWSchemaFLOWInformationPluginContext *)self->_informationPluginContext hash];
  v12 = v11 ^ [(FLOWSchemaFLOWHomeCommunicationContext *)self->_homeCommunicationContext hash];
  v13 = v9 ^ v12 ^ [(FLOWSchemaFLOWNotificationContext *)self->_notificationContext hash];
  v14 = [(FLOWSchemaFLOWPhotosContext *)self->_photosContext hash];
  return v13 ^ v14 ^ [(FLOWSchemaFLOWSafariContext *)self->_safariContext hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_68;
  }

  whichDomaincontext = self->_whichDomaincontext;
  if (whichDomaincontext != [equalCopy whichDomaincontext])
  {
    goto LABEL_68;
  }

  voiceShortcutContext = [(FLOWSchemaFLOWDomainContext *)self voiceShortcutContext];
  voiceShortcutContext2 = [equalCopy voiceShortcutContext];
  if ((voiceShortcutContext != 0) == (voiceShortcutContext2 == 0))
  {
    goto LABEL_67;
  }

  voiceShortcutContext3 = [(FLOWSchemaFLOWDomainContext *)self voiceShortcutContext];
  if (voiceShortcutContext3)
  {
    v9 = voiceShortcutContext3;
    voiceShortcutContext4 = [(FLOWSchemaFLOWDomainContext *)self voiceShortcutContext];
    voiceShortcutContext5 = [equalCopy voiceShortcutContext];
    v12 = [voiceShortcutContext4 isEqual:voiceShortcutContext5];

    if (!v12)
    {
      goto LABEL_68;
    }
  }

  else
  {
  }

  voiceShortcutContext = [(FLOWSchemaFLOWDomainContext *)self homeAutomationContext];
  voiceShortcutContext2 = [equalCopy homeAutomationContext];
  if ((voiceShortcutContext != 0) == (voiceShortcutContext2 == 0))
  {
    goto LABEL_67;
  }

  homeAutomationContext = [(FLOWSchemaFLOWDomainContext *)self homeAutomationContext];
  if (homeAutomationContext)
  {
    v14 = homeAutomationContext;
    homeAutomationContext2 = [(FLOWSchemaFLOWDomainContext *)self homeAutomationContext];
    homeAutomationContext3 = [equalCopy homeAutomationContext];
    v17 = [homeAutomationContext2 isEqual:homeAutomationContext3];

    if (!v17)
    {
      goto LABEL_68;
    }
  }

  else
  {
  }

  voiceShortcutContext = [(FLOWSchemaFLOWDomainContext *)self phoneCallContext];
  voiceShortcutContext2 = [equalCopy phoneCallContext];
  if ((voiceShortcutContext != 0) == (voiceShortcutContext2 == 0))
  {
    goto LABEL_67;
  }

  phoneCallContext = [(FLOWSchemaFLOWDomainContext *)self phoneCallContext];
  if (phoneCallContext)
  {
    v19 = phoneCallContext;
    phoneCallContext2 = [(FLOWSchemaFLOWDomainContext *)self phoneCallContext];
    phoneCallContext3 = [equalCopy phoneCallContext];
    v22 = [phoneCallContext2 isEqual:phoneCallContext3];

    if (!v22)
    {
      goto LABEL_68;
    }
  }

  else
  {
  }

  voiceShortcutContext = [(FLOWSchemaFLOWDomainContext *)self smsContext];
  voiceShortcutContext2 = [equalCopy smsContext];
  if ((voiceShortcutContext != 0) == (voiceShortcutContext2 == 0))
  {
    goto LABEL_67;
  }

  smsContext = [(FLOWSchemaFLOWDomainContext *)self smsContext];
  if (smsContext)
  {
    v24 = smsContext;
    smsContext2 = [(FLOWSchemaFLOWDomainContext *)self smsContext];
    smsContext3 = [equalCopy smsContext];
    v27 = [smsContext2 isEqual:smsContext3];

    if (!v27)
    {
      goto LABEL_68;
    }
  }

  else
  {
  }

  voiceShortcutContext = [(FLOWSchemaFLOWDomainContext *)self mediaPlayerContext];
  voiceShortcutContext2 = [equalCopy mediaPlayerContext];
  if ((voiceShortcutContext != 0) == (voiceShortcutContext2 == 0))
  {
    goto LABEL_67;
  }

  mediaPlayerContext = [(FLOWSchemaFLOWDomainContext *)self mediaPlayerContext];
  if (mediaPlayerContext)
  {
    v29 = mediaPlayerContext;
    mediaPlayerContext2 = [(FLOWSchemaFLOWDomainContext *)self mediaPlayerContext];
    mediaPlayerContext3 = [equalCopy mediaPlayerContext];
    v32 = [mediaPlayerContext2 isEqual:mediaPlayerContext3];

    if (!v32)
    {
      goto LABEL_68;
    }
  }

  else
  {
  }

  voiceShortcutContext = [(FLOWSchemaFLOWDomainContext *)self identityContext];
  voiceShortcutContext2 = [equalCopy identityContext];
  if ((voiceShortcutContext != 0) == (voiceShortcutContext2 == 0))
  {
    goto LABEL_67;
  }

  identityContext = [(FLOWSchemaFLOWDomainContext *)self identityContext];
  if (identityContext)
  {
    v34 = identityContext;
    identityContext2 = [(FLOWSchemaFLOWDomainContext *)self identityContext];
    identityContext3 = [equalCopy identityContext];
    v37 = [identityContext2 isEqual:identityContext3];

    if (!v37)
    {
      goto LABEL_68;
    }
  }

  else
  {
  }

  voiceShortcutContext = [(FLOWSchemaFLOWDomainContext *)self briefingContext];
  voiceShortcutContext2 = [equalCopy briefingContext];
  if ((voiceShortcutContext != 0) == (voiceShortcutContext2 == 0))
  {
    goto LABEL_67;
  }

  briefingContext = [(FLOWSchemaFLOWDomainContext *)self briefingContext];
  if (briefingContext)
  {
    v39 = briefingContext;
    briefingContext2 = [(FLOWSchemaFLOWDomainContext *)self briefingContext];
    briefingContext3 = [equalCopy briefingContext];
    v42 = [briefingContext2 isEqual:briefingContext3];

    if (!v42)
    {
      goto LABEL_68;
    }
  }

  else
  {
  }

  voiceShortcutContext = [(FLOWSchemaFLOWDomainContext *)self pegasusContext];
  voiceShortcutContext2 = [equalCopy pegasusContext];
  if ((voiceShortcutContext != 0) == (voiceShortcutContext2 == 0))
  {
    goto LABEL_67;
  }

  pegasusContext = [(FLOWSchemaFLOWDomainContext *)self pegasusContext];
  if (pegasusContext)
  {
    v44 = pegasusContext;
    pegasusContext2 = [(FLOWSchemaFLOWDomainContext *)self pegasusContext];
    pegasusContext3 = [equalCopy pegasusContext];
    v47 = [pegasusContext2 isEqual:pegasusContext3];

    if (!v47)
    {
      goto LABEL_68;
    }
  }

  else
  {
  }

  voiceShortcutContext = [(FLOWSchemaFLOWDomainContext *)self informationPluginContext];
  voiceShortcutContext2 = [equalCopy informationPluginContext];
  if ((voiceShortcutContext != 0) == (voiceShortcutContext2 == 0))
  {
    goto LABEL_67;
  }

  informationPluginContext = [(FLOWSchemaFLOWDomainContext *)self informationPluginContext];
  if (informationPluginContext)
  {
    v49 = informationPluginContext;
    informationPluginContext2 = [(FLOWSchemaFLOWDomainContext *)self informationPluginContext];
    informationPluginContext3 = [equalCopy informationPluginContext];
    v52 = [informationPluginContext2 isEqual:informationPluginContext3];

    if (!v52)
    {
      goto LABEL_68;
    }
  }

  else
  {
  }

  voiceShortcutContext = [(FLOWSchemaFLOWDomainContext *)self homeCommunicationContext];
  voiceShortcutContext2 = [equalCopy homeCommunicationContext];
  if ((voiceShortcutContext != 0) == (voiceShortcutContext2 == 0))
  {
    goto LABEL_67;
  }

  homeCommunicationContext = [(FLOWSchemaFLOWDomainContext *)self homeCommunicationContext];
  if (homeCommunicationContext)
  {
    v54 = homeCommunicationContext;
    homeCommunicationContext2 = [(FLOWSchemaFLOWDomainContext *)self homeCommunicationContext];
    homeCommunicationContext3 = [equalCopy homeCommunicationContext];
    v57 = [homeCommunicationContext2 isEqual:homeCommunicationContext3];

    if (!v57)
    {
      goto LABEL_68;
    }
  }

  else
  {
  }

  voiceShortcutContext = [(FLOWSchemaFLOWDomainContext *)self notificationContext];
  voiceShortcutContext2 = [equalCopy notificationContext];
  if ((voiceShortcutContext != 0) == (voiceShortcutContext2 == 0))
  {
    goto LABEL_67;
  }

  notificationContext = [(FLOWSchemaFLOWDomainContext *)self notificationContext];
  if (notificationContext)
  {
    v59 = notificationContext;
    notificationContext2 = [(FLOWSchemaFLOWDomainContext *)self notificationContext];
    notificationContext3 = [equalCopy notificationContext];
    v62 = [notificationContext2 isEqual:notificationContext3];

    if (!v62)
    {
      goto LABEL_68;
    }
  }

  else
  {
  }

  voiceShortcutContext = [(FLOWSchemaFLOWDomainContext *)self photosContext];
  voiceShortcutContext2 = [equalCopy photosContext];
  if ((voiceShortcutContext != 0) == (voiceShortcutContext2 == 0))
  {
    goto LABEL_67;
  }

  photosContext = [(FLOWSchemaFLOWDomainContext *)self photosContext];
  if (photosContext)
  {
    v64 = photosContext;
    photosContext2 = [(FLOWSchemaFLOWDomainContext *)self photosContext];
    photosContext3 = [equalCopy photosContext];
    v67 = [photosContext2 isEqual:photosContext3];

    if (!v67)
    {
      goto LABEL_68;
    }
  }

  else
  {
  }

  voiceShortcutContext = [(FLOWSchemaFLOWDomainContext *)self safariContext];
  voiceShortcutContext2 = [equalCopy safariContext];
  if ((voiceShortcutContext != 0) != (voiceShortcutContext2 == 0))
  {
    safariContext = [(FLOWSchemaFLOWDomainContext *)self safariContext];
    if (!safariContext)
    {

LABEL_71:
      v73 = 1;
      goto LABEL_69;
    }

    v69 = safariContext;
    safariContext2 = [(FLOWSchemaFLOWDomainContext *)self safariContext];
    safariContext3 = [equalCopy safariContext];
    v72 = [safariContext2 isEqual:safariContext3];

    if (v72)
    {
      goto LABEL_71;
    }
  }

  else
  {
LABEL_67:
  }

LABEL_68:
  v73 = 0;
LABEL_69:

  return v73;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  voiceShortcutContext = [(FLOWSchemaFLOWDomainContext *)self voiceShortcutContext];

  if (voiceShortcutContext)
  {
    voiceShortcutContext2 = [(FLOWSchemaFLOWDomainContext *)self voiceShortcutContext];
    PBDataWriterWriteSubmessage();
  }

  homeAutomationContext = [(FLOWSchemaFLOWDomainContext *)self homeAutomationContext];

  if (homeAutomationContext)
  {
    homeAutomationContext2 = [(FLOWSchemaFLOWDomainContext *)self homeAutomationContext];
    PBDataWriterWriteSubmessage();
  }

  phoneCallContext = [(FLOWSchemaFLOWDomainContext *)self phoneCallContext];

  if (phoneCallContext)
  {
    phoneCallContext2 = [(FLOWSchemaFLOWDomainContext *)self phoneCallContext];
    PBDataWriterWriteSubmessage();
  }

  smsContext = [(FLOWSchemaFLOWDomainContext *)self smsContext];

  if (smsContext)
  {
    smsContext2 = [(FLOWSchemaFLOWDomainContext *)self smsContext];
    PBDataWriterWriteSubmessage();
  }

  mediaPlayerContext = [(FLOWSchemaFLOWDomainContext *)self mediaPlayerContext];

  if (mediaPlayerContext)
  {
    mediaPlayerContext2 = [(FLOWSchemaFLOWDomainContext *)self mediaPlayerContext];
    PBDataWriterWriteSubmessage();
  }

  identityContext = [(FLOWSchemaFLOWDomainContext *)self identityContext];

  if (identityContext)
  {
    identityContext2 = [(FLOWSchemaFLOWDomainContext *)self identityContext];
    PBDataWriterWriteSubmessage();
  }

  briefingContext = [(FLOWSchemaFLOWDomainContext *)self briefingContext];

  if (briefingContext)
  {
    briefingContext2 = [(FLOWSchemaFLOWDomainContext *)self briefingContext];
    PBDataWriterWriteSubmessage();
  }

  pegasusContext = [(FLOWSchemaFLOWDomainContext *)self pegasusContext];

  if (pegasusContext)
  {
    pegasusContext2 = [(FLOWSchemaFLOWDomainContext *)self pegasusContext];
    PBDataWriterWriteSubmessage();
  }

  informationPluginContext = [(FLOWSchemaFLOWDomainContext *)self informationPluginContext];

  if (informationPluginContext)
  {
    informationPluginContext2 = [(FLOWSchemaFLOWDomainContext *)self informationPluginContext];
    PBDataWriterWriteSubmessage();
  }

  homeCommunicationContext = [(FLOWSchemaFLOWDomainContext *)self homeCommunicationContext];

  if (homeCommunicationContext)
  {
    homeCommunicationContext2 = [(FLOWSchemaFLOWDomainContext *)self homeCommunicationContext];
    PBDataWriterWriteSubmessage();
  }

  notificationContext = [(FLOWSchemaFLOWDomainContext *)self notificationContext];

  if (notificationContext)
  {
    notificationContext2 = [(FLOWSchemaFLOWDomainContext *)self notificationContext];
    PBDataWriterWriteSubmessage();
  }

  photosContext = [(FLOWSchemaFLOWDomainContext *)self photosContext];

  if (photosContext)
  {
    photosContext2 = [(FLOWSchemaFLOWDomainContext *)self photosContext];
    PBDataWriterWriteSubmessage();
  }

  safariContext = [(FLOWSchemaFLOWDomainContext *)self safariContext];

  v29 = toCopy;
  if (safariContext)
  {
    safariContext2 = [(FLOWSchemaFLOWDomainContext *)self safariContext];
    PBDataWriterWriteSubmessage();

    v29 = toCopy;
  }
}

- (void)deleteSafariContext
{
  if (self->_whichDomaincontext == 13)
  {
    self->_whichDomaincontext = 0;
    self->_safariContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setSafariContext:(id)context
{
  contextCopy = context;
  voiceShortcutContext = self->_voiceShortcutContext;
  self->_voiceShortcutContext = 0;

  homeAutomationContext = self->_homeAutomationContext;
  self->_homeAutomationContext = 0;

  phoneCallContext = self->_phoneCallContext;
  self->_phoneCallContext = 0;

  smsContext = self->_smsContext;
  self->_smsContext = 0;

  mediaPlayerContext = self->_mediaPlayerContext;
  self->_mediaPlayerContext = 0;

  identityContext = self->_identityContext;
  self->_identityContext = 0;

  briefingContext = self->_briefingContext;
  self->_briefingContext = 0;

  pegasusContext = self->_pegasusContext;
  self->_pegasusContext = 0;

  informationPluginContext = self->_informationPluginContext;
  self->_informationPluginContext = 0;

  homeCommunicationContext = self->_homeCommunicationContext;
  self->_homeCommunicationContext = 0;

  notificationContext = self->_notificationContext;
  self->_notificationContext = 0;

  photosContext = self->_photosContext;
  self->_photosContext = 0;

  v17 = 13;
  if (!contextCopy)
  {
    v17 = 0;
  }

  self->_whichDomaincontext = v17;
  safariContext = self->_safariContext;
  self->_safariContext = contextCopy;
}

- (void)deletePhotosContext
{
  if (self->_whichDomaincontext == 12)
  {
    self->_whichDomaincontext = 0;
    self->_photosContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setPhotosContext:(id)context
{
  contextCopy = context;
  voiceShortcutContext = self->_voiceShortcutContext;
  self->_voiceShortcutContext = 0;

  homeAutomationContext = self->_homeAutomationContext;
  self->_homeAutomationContext = 0;

  phoneCallContext = self->_phoneCallContext;
  self->_phoneCallContext = 0;

  smsContext = self->_smsContext;
  self->_smsContext = 0;

  mediaPlayerContext = self->_mediaPlayerContext;
  self->_mediaPlayerContext = 0;

  identityContext = self->_identityContext;
  self->_identityContext = 0;

  briefingContext = self->_briefingContext;
  self->_briefingContext = 0;

  pegasusContext = self->_pegasusContext;
  self->_pegasusContext = 0;

  informationPluginContext = self->_informationPluginContext;
  self->_informationPluginContext = 0;

  homeCommunicationContext = self->_homeCommunicationContext;
  self->_homeCommunicationContext = 0;

  notificationContext = self->_notificationContext;
  self->_notificationContext = 0;

  safariContext = self->_safariContext;
  self->_safariContext = 0;

  v17 = 12;
  if (!contextCopy)
  {
    v17 = 0;
  }

  self->_whichDomaincontext = v17;
  photosContext = self->_photosContext;
  self->_photosContext = contextCopy;
}

- (void)deleteNotificationContext
{
  if (self->_whichDomaincontext == 11)
  {
    self->_whichDomaincontext = 0;
    self->_notificationContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setNotificationContext:(id)context
{
  contextCopy = context;
  voiceShortcutContext = self->_voiceShortcutContext;
  self->_voiceShortcutContext = 0;

  homeAutomationContext = self->_homeAutomationContext;
  self->_homeAutomationContext = 0;

  phoneCallContext = self->_phoneCallContext;
  self->_phoneCallContext = 0;

  smsContext = self->_smsContext;
  self->_smsContext = 0;

  mediaPlayerContext = self->_mediaPlayerContext;
  self->_mediaPlayerContext = 0;

  identityContext = self->_identityContext;
  self->_identityContext = 0;

  briefingContext = self->_briefingContext;
  self->_briefingContext = 0;

  pegasusContext = self->_pegasusContext;
  self->_pegasusContext = 0;

  informationPluginContext = self->_informationPluginContext;
  self->_informationPluginContext = 0;

  homeCommunicationContext = self->_homeCommunicationContext;
  self->_homeCommunicationContext = 0;

  photosContext = self->_photosContext;
  self->_photosContext = 0;

  safariContext = self->_safariContext;
  self->_safariContext = 0;

  v17 = 11;
  if (!contextCopy)
  {
    v17 = 0;
  }

  self->_whichDomaincontext = v17;
  notificationContext = self->_notificationContext;
  self->_notificationContext = contextCopy;
}

- (void)deleteHomeCommunicationContext
{
  if (self->_whichDomaincontext == 10)
  {
    self->_whichDomaincontext = 0;
    self->_homeCommunicationContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setHomeCommunicationContext:(id)context
{
  contextCopy = context;
  voiceShortcutContext = self->_voiceShortcutContext;
  self->_voiceShortcutContext = 0;

  homeAutomationContext = self->_homeAutomationContext;
  self->_homeAutomationContext = 0;

  phoneCallContext = self->_phoneCallContext;
  self->_phoneCallContext = 0;

  smsContext = self->_smsContext;
  self->_smsContext = 0;

  mediaPlayerContext = self->_mediaPlayerContext;
  self->_mediaPlayerContext = 0;

  identityContext = self->_identityContext;
  self->_identityContext = 0;

  briefingContext = self->_briefingContext;
  self->_briefingContext = 0;

  pegasusContext = self->_pegasusContext;
  self->_pegasusContext = 0;

  informationPluginContext = self->_informationPluginContext;
  self->_informationPluginContext = 0;

  notificationContext = self->_notificationContext;
  self->_notificationContext = 0;

  photosContext = self->_photosContext;
  self->_photosContext = 0;

  safariContext = self->_safariContext;
  self->_safariContext = 0;

  v17 = 10;
  if (!contextCopy)
  {
    v17 = 0;
  }

  self->_whichDomaincontext = v17;
  homeCommunicationContext = self->_homeCommunicationContext;
  self->_homeCommunicationContext = contextCopy;
}

- (void)deleteInformationPluginContext
{
  if (self->_whichDomaincontext == 9)
  {
    self->_whichDomaincontext = 0;
    self->_informationPluginContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setInformationPluginContext:(id)context
{
  contextCopy = context;
  voiceShortcutContext = self->_voiceShortcutContext;
  self->_voiceShortcutContext = 0;

  homeAutomationContext = self->_homeAutomationContext;
  self->_homeAutomationContext = 0;

  phoneCallContext = self->_phoneCallContext;
  self->_phoneCallContext = 0;

  smsContext = self->_smsContext;
  self->_smsContext = 0;

  mediaPlayerContext = self->_mediaPlayerContext;
  self->_mediaPlayerContext = 0;

  identityContext = self->_identityContext;
  self->_identityContext = 0;

  briefingContext = self->_briefingContext;
  self->_briefingContext = 0;

  pegasusContext = self->_pegasusContext;
  self->_pegasusContext = 0;

  homeCommunicationContext = self->_homeCommunicationContext;
  self->_homeCommunicationContext = 0;

  notificationContext = self->_notificationContext;
  self->_notificationContext = 0;

  photosContext = self->_photosContext;
  self->_photosContext = 0;

  safariContext = self->_safariContext;
  self->_safariContext = 0;

  v17 = 9;
  if (!contextCopy)
  {
    v17 = 0;
  }

  self->_whichDomaincontext = v17;
  informationPluginContext = self->_informationPluginContext;
  self->_informationPluginContext = contextCopy;
}

- (void)deletePegasusContext
{
  if (self->_whichDomaincontext == 8)
  {
    self->_whichDomaincontext = 0;
    self->_pegasusContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setPegasusContext:(id)context
{
  contextCopy = context;
  voiceShortcutContext = self->_voiceShortcutContext;
  self->_voiceShortcutContext = 0;

  homeAutomationContext = self->_homeAutomationContext;
  self->_homeAutomationContext = 0;

  phoneCallContext = self->_phoneCallContext;
  self->_phoneCallContext = 0;

  smsContext = self->_smsContext;
  self->_smsContext = 0;

  mediaPlayerContext = self->_mediaPlayerContext;
  self->_mediaPlayerContext = 0;

  identityContext = self->_identityContext;
  self->_identityContext = 0;

  briefingContext = self->_briefingContext;
  self->_briefingContext = 0;

  informationPluginContext = self->_informationPluginContext;
  self->_informationPluginContext = 0;

  homeCommunicationContext = self->_homeCommunicationContext;
  self->_homeCommunicationContext = 0;

  notificationContext = self->_notificationContext;
  self->_notificationContext = 0;

  photosContext = self->_photosContext;
  self->_photosContext = 0;

  safariContext = self->_safariContext;
  self->_safariContext = 0;

  self->_whichDomaincontext = 8 * (contextCopy != 0);
  pegasusContext = self->_pegasusContext;
  self->_pegasusContext = contextCopy;
}

- (void)deleteBriefingContext
{
  if (self->_whichDomaincontext == 7)
  {
    self->_whichDomaincontext = 0;
    self->_briefingContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setBriefingContext:(id)context
{
  contextCopy = context;
  voiceShortcutContext = self->_voiceShortcutContext;
  self->_voiceShortcutContext = 0;

  homeAutomationContext = self->_homeAutomationContext;
  self->_homeAutomationContext = 0;

  phoneCallContext = self->_phoneCallContext;
  self->_phoneCallContext = 0;

  smsContext = self->_smsContext;
  self->_smsContext = 0;

  mediaPlayerContext = self->_mediaPlayerContext;
  self->_mediaPlayerContext = 0;

  identityContext = self->_identityContext;
  self->_identityContext = 0;

  pegasusContext = self->_pegasusContext;
  self->_pegasusContext = 0;

  informationPluginContext = self->_informationPluginContext;
  self->_informationPluginContext = 0;

  homeCommunicationContext = self->_homeCommunicationContext;
  self->_homeCommunicationContext = 0;

  notificationContext = self->_notificationContext;
  self->_notificationContext = 0;

  photosContext = self->_photosContext;
  self->_photosContext = 0;

  safariContext = self->_safariContext;
  self->_safariContext = 0;

  v17 = 7;
  if (!contextCopy)
  {
    v17 = 0;
  }

  self->_whichDomaincontext = v17;
  briefingContext = self->_briefingContext;
  self->_briefingContext = contextCopy;
}

- (void)deleteIdentityContext
{
  if (self->_whichDomaincontext == 6)
  {
    self->_whichDomaincontext = 0;
    self->_identityContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setIdentityContext:(id)context
{
  contextCopy = context;
  voiceShortcutContext = self->_voiceShortcutContext;
  self->_voiceShortcutContext = 0;

  homeAutomationContext = self->_homeAutomationContext;
  self->_homeAutomationContext = 0;

  phoneCallContext = self->_phoneCallContext;
  self->_phoneCallContext = 0;

  smsContext = self->_smsContext;
  self->_smsContext = 0;

  mediaPlayerContext = self->_mediaPlayerContext;
  self->_mediaPlayerContext = 0;

  briefingContext = self->_briefingContext;
  self->_briefingContext = 0;

  pegasusContext = self->_pegasusContext;
  self->_pegasusContext = 0;

  informationPluginContext = self->_informationPluginContext;
  self->_informationPluginContext = 0;

  homeCommunicationContext = self->_homeCommunicationContext;
  self->_homeCommunicationContext = 0;

  notificationContext = self->_notificationContext;
  self->_notificationContext = 0;

  photosContext = self->_photosContext;
  self->_photosContext = 0;

  safariContext = self->_safariContext;
  self->_safariContext = 0;

  v17 = 6;
  if (!contextCopy)
  {
    v17 = 0;
  }

  self->_whichDomaincontext = v17;
  identityContext = self->_identityContext;
  self->_identityContext = contextCopy;
}

- (void)deleteMediaPlayerContext
{
  if (self->_whichDomaincontext == 5)
  {
    self->_whichDomaincontext = 0;
    self->_mediaPlayerContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setMediaPlayerContext:(id)context
{
  contextCopy = context;
  voiceShortcutContext = self->_voiceShortcutContext;
  self->_voiceShortcutContext = 0;

  homeAutomationContext = self->_homeAutomationContext;
  self->_homeAutomationContext = 0;

  phoneCallContext = self->_phoneCallContext;
  self->_phoneCallContext = 0;

  smsContext = self->_smsContext;
  self->_smsContext = 0;

  identityContext = self->_identityContext;
  self->_identityContext = 0;

  briefingContext = self->_briefingContext;
  self->_briefingContext = 0;

  pegasusContext = self->_pegasusContext;
  self->_pegasusContext = 0;

  informationPluginContext = self->_informationPluginContext;
  self->_informationPluginContext = 0;

  homeCommunicationContext = self->_homeCommunicationContext;
  self->_homeCommunicationContext = 0;

  notificationContext = self->_notificationContext;
  self->_notificationContext = 0;

  photosContext = self->_photosContext;
  self->_photosContext = 0;

  safariContext = self->_safariContext;
  self->_safariContext = 0;

  v17 = 5;
  if (!contextCopy)
  {
    v17 = 0;
  }

  self->_whichDomaincontext = v17;
  mediaPlayerContext = self->_mediaPlayerContext;
  self->_mediaPlayerContext = contextCopy;
}

- (void)deleteSmsContext
{
  if (self->_whichDomaincontext == 4)
  {
    self->_whichDomaincontext = 0;
    self->_smsContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setSmsContext:(id)context
{
  contextCopy = context;
  voiceShortcutContext = self->_voiceShortcutContext;
  self->_voiceShortcutContext = 0;

  homeAutomationContext = self->_homeAutomationContext;
  self->_homeAutomationContext = 0;

  phoneCallContext = self->_phoneCallContext;
  self->_phoneCallContext = 0;

  mediaPlayerContext = self->_mediaPlayerContext;
  self->_mediaPlayerContext = 0;

  identityContext = self->_identityContext;
  self->_identityContext = 0;

  briefingContext = self->_briefingContext;
  self->_briefingContext = 0;

  pegasusContext = self->_pegasusContext;
  self->_pegasusContext = 0;

  informationPluginContext = self->_informationPluginContext;
  self->_informationPluginContext = 0;

  homeCommunicationContext = self->_homeCommunicationContext;
  self->_homeCommunicationContext = 0;

  notificationContext = self->_notificationContext;
  self->_notificationContext = 0;

  photosContext = self->_photosContext;
  self->_photosContext = 0;

  safariContext = self->_safariContext;
  self->_safariContext = 0;

  self->_whichDomaincontext = 4 * (contextCopy != 0);
  smsContext = self->_smsContext;
  self->_smsContext = contextCopy;
}

- (void)deletePhoneCallContext
{
  if (self->_whichDomaincontext == 3)
  {
    self->_whichDomaincontext = 0;
    self->_phoneCallContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setPhoneCallContext:(id)context
{
  contextCopy = context;
  voiceShortcutContext = self->_voiceShortcutContext;
  self->_voiceShortcutContext = 0;

  homeAutomationContext = self->_homeAutomationContext;
  self->_homeAutomationContext = 0;

  smsContext = self->_smsContext;
  self->_smsContext = 0;

  mediaPlayerContext = self->_mediaPlayerContext;
  self->_mediaPlayerContext = 0;

  identityContext = self->_identityContext;
  self->_identityContext = 0;

  briefingContext = self->_briefingContext;
  self->_briefingContext = 0;

  pegasusContext = self->_pegasusContext;
  self->_pegasusContext = 0;

  informationPluginContext = self->_informationPluginContext;
  self->_informationPluginContext = 0;

  homeCommunicationContext = self->_homeCommunicationContext;
  self->_homeCommunicationContext = 0;

  notificationContext = self->_notificationContext;
  self->_notificationContext = 0;

  photosContext = self->_photosContext;
  self->_photosContext = 0;

  safariContext = self->_safariContext;
  self->_safariContext = 0;

  v17 = 3;
  if (!contextCopy)
  {
    v17 = 0;
  }

  self->_whichDomaincontext = v17;
  phoneCallContext = self->_phoneCallContext;
  self->_phoneCallContext = contextCopy;
}

- (void)deleteHomeAutomationContext
{
  if (self->_whichDomaincontext == 2)
  {
    self->_whichDomaincontext = 0;
    self->_homeAutomationContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setHomeAutomationContext:(id)context
{
  contextCopy = context;
  voiceShortcutContext = self->_voiceShortcutContext;
  self->_voiceShortcutContext = 0;

  phoneCallContext = self->_phoneCallContext;
  self->_phoneCallContext = 0;

  smsContext = self->_smsContext;
  self->_smsContext = 0;

  mediaPlayerContext = self->_mediaPlayerContext;
  self->_mediaPlayerContext = 0;

  identityContext = self->_identityContext;
  self->_identityContext = 0;

  briefingContext = self->_briefingContext;
  self->_briefingContext = 0;

  pegasusContext = self->_pegasusContext;
  self->_pegasusContext = 0;

  informationPluginContext = self->_informationPluginContext;
  self->_informationPluginContext = 0;

  homeCommunicationContext = self->_homeCommunicationContext;
  self->_homeCommunicationContext = 0;

  notificationContext = self->_notificationContext;
  self->_notificationContext = 0;

  photosContext = self->_photosContext;
  self->_photosContext = 0;

  safariContext = self->_safariContext;
  self->_safariContext = 0;

  self->_whichDomaincontext = 2 * (contextCopy != 0);
  homeAutomationContext = self->_homeAutomationContext;
  self->_homeAutomationContext = contextCopy;
}

- (void)deleteVoiceShortcutContext
{
  if (self->_whichDomaincontext == 1)
  {
    self->_whichDomaincontext = 0;
    self->_voiceShortcutContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setVoiceShortcutContext:(id)context
{
  contextCopy = context;
  homeAutomationContext = self->_homeAutomationContext;
  self->_homeAutomationContext = 0;

  phoneCallContext = self->_phoneCallContext;
  self->_phoneCallContext = 0;

  smsContext = self->_smsContext;
  self->_smsContext = 0;

  mediaPlayerContext = self->_mediaPlayerContext;
  self->_mediaPlayerContext = 0;

  identityContext = self->_identityContext;
  self->_identityContext = 0;

  briefingContext = self->_briefingContext;
  self->_briefingContext = 0;

  pegasusContext = self->_pegasusContext;
  self->_pegasusContext = 0;

  informationPluginContext = self->_informationPluginContext;
  self->_informationPluginContext = 0;

  homeCommunicationContext = self->_homeCommunicationContext;
  self->_homeCommunicationContext = 0;

  notificationContext = self->_notificationContext;
  self->_notificationContext = 0;

  photosContext = self->_photosContext;
  self->_photosContext = 0;

  safariContext = self->_safariContext;
  self->_safariContext = 0;

  self->_whichDomaincontext = contextCopy != 0;
  voiceShortcutContext = self->_voiceShortcutContext;
  self->_voiceShortcutContext = contextCopy;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v46.receiver = self;
  v46.super_class = FLOWSchemaFLOWDomainContext;
  v5 = [(SISchemaInstrumentationMessage *)&v46 applySensitiveConditionsPolicy:policyCopy];
  voiceShortcutContext = [(FLOWSchemaFLOWDomainContext *)self voiceShortcutContext];
  v7 = [voiceShortcutContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(FLOWSchemaFLOWDomainContext *)self deleteVoiceShortcutContext];
  }

  homeAutomationContext = [(FLOWSchemaFLOWDomainContext *)self homeAutomationContext];
  v10 = [homeAutomationContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(FLOWSchemaFLOWDomainContext *)self deleteHomeAutomationContext];
  }

  phoneCallContext = [(FLOWSchemaFLOWDomainContext *)self phoneCallContext];
  v13 = [phoneCallContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(FLOWSchemaFLOWDomainContext *)self deletePhoneCallContext];
  }

  smsContext = [(FLOWSchemaFLOWDomainContext *)self smsContext];
  v16 = [smsContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(FLOWSchemaFLOWDomainContext *)self deleteSmsContext];
  }

  mediaPlayerContext = [(FLOWSchemaFLOWDomainContext *)self mediaPlayerContext];
  v19 = [mediaPlayerContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(FLOWSchemaFLOWDomainContext *)self deleteMediaPlayerContext];
  }

  identityContext = [(FLOWSchemaFLOWDomainContext *)self identityContext];
  v22 = [identityContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage6 = [v22 suppressMessage];

  if (suppressMessage6)
  {
    [(FLOWSchemaFLOWDomainContext *)self deleteIdentityContext];
  }

  briefingContext = [(FLOWSchemaFLOWDomainContext *)self briefingContext];
  v25 = [briefingContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage7 = [v25 suppressMessage];

  if (suppressMessage7)
  {
    [(FLOWSchemaFLOWDomainContext *)self deleteBriefingContext];
  }

  pegasusContext = [(FLOWSchemaFLOWDomainContext *)self pegasusContext];
  v28 = [pegasusContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage8 = [v28 suppressMessage];

  if (suppressMessage8)
  {
    [(FLOWSchemaFLOWDomainContext *)self deletePegasusContext];
  }

  informationPluginContext = [(FLOWSchemaFLOWDomainContext *)self informationPluginContext];
  v31 = [informationPluginContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage9 = [v31 suppressMessage];

  if (suppressMessage9)
  {
    [(FLOWSchemaFLOWDomainContext *)self deleteInformationPluginContext];
  }

  homeCommunicationContext = [(FLOWSchemaFLOWDomainContext *)self homeCommunicationContext];
  v34 = [homeCommunicationContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage10 = [v34 suppressMessage];

  if (suppressMessage10)
  {
    [(FLOWSchemaFLOWDomainContext *)self deleteHomeCommunicationContext];
  }

  notificationContext = [(FLOWSchemaFLOWDomainContext *)self notificationContext];
  v37 = [notificationContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage11 = [v37 suppressMessage];

  if (suppressMessage11)
  {
    [(FLOWSchemaFLOWDomainContext *)self deleteNotificationContext];
  }

  photosContext = [(FLOWSchemaFLOWDomainContext *)self photosContext];
  v40 = [photosContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage12 = [v40 suppressMessage];

  if (suppressMessage12)
  {
    [(FLOWSchemaFLOWDomainContext *)self deletePhotosContext];
  }

  safariContext = [(FLOWSchemaFLOWDomainContext *)self safariContext];
  v43 = [safariContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage13 = [v43 suppressMessage];

  if (suppressMessage13)
  {
    [(FLOWSchemaFLOWDomainContext *)self deleteSafariContext];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end