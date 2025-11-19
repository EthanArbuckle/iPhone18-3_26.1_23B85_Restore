@interface FLOWSchemaFLOWDomainContext
- (BOOL)isEqual:(id)a3;
- (FLOWSchemaFLOWBriefingContext)briefingContext;
- (FLOWSchemaFLOWDomainContext)initWithDictionary:(id)a3;
- (FLOWSchemaFLOWDomainContext)initWithJSON:(id)a3;
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
- (id)applySensitiveConditionsPolicy:(id)a3;
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
- (void)setBriefingContext:(id)a3;
- (void)setHomeAutomationContext:(id)a3;
- (void)setHomeCommunicationContext:(id)a3;
- (void)setIdentityContext:(id)a3;
- (void)setInformationPluginContext:(id)a3;
- (void)setMediaPlayerContext:(id)a3;
- (void)setNotificationContext:(id)a3;
- (void)setPegasusContext:(id)a3;
- (void)setPhoneCallContext:(id)a3;
- (void)setPhotosContext:(id)a3;
- (void)setSafariContext:(id)a3;
- (void)setSmsContext:(id)a3;
- (void)setVoiceShortcutContext:(id)a3;
- (void)writeTo:(id)a3;
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

- (FLOWSchemaFLOWDomainContext)initWithDictionary:(id)a3
{
  v4 = a3;
  v41.receiver = self;
  v41.super_class = FLOWSchemaFLOWDomainContext;
  v5 = [(FLOWSchemaFLOWDomainContext *)&v41 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"voiceShortcutContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[FLOWSchemaFLOWVoiceShortcutContext alloc] initWithDictionary:v6];
      [(FLOWSchemaFLOWDomainContext *)v5 setVoiceShortcutContext:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"homeAutomationContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[FLOWSchemaFLOWHomeAutomationContext alloc] initWithDictionary:v8];
      [(FLOWSchemaFLOWDomainContext *)v5 setHomeAutomationContext:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"phoneCallContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[FLOWSchemaFLOWPhoneCallContext alloc] initWithDictionary:v10];
      [(FLOWSchemaFLOWDomainContext *)v5 setPhoneCallContext:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"smsContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[FLOWSchemaFLOWSmsContext alloc] initWithDictionary:v12];
      [(FLOWSchemaFLOWDomainContext *)v5 setSmsContext:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"mediaPlayerContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[FLOWSchemaFLOWMediaPlayerContext alloc] initWithDictionary:v14];
      [(FLOWSchemaFLOWDomainContext *)v5 setMediaPlayerContext:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"identityContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[FLOWSchemaFLOWIdentityContext alloc] initWithDictionary:v16];
      [(FLOWSchemaFLOWDomainContext *)v5 setIdentityContext:v17];
    }

    v36 = v16;
    v18 = [v4 objectForKeyedSubscript:@"briefingContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[FLOWSchemaFLOWBriefingContext alloc] initWithDictionary:v18];
      [(FLOWSchemaFLOWDomainContext *)v5 setBriefingContext:v19];
    }

    v40 = v6;
    v20 = [v4 objectForKeyedSubscript:{@"pegasusContext", v18}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [[FLOWSchemaFLOWPegasusContext alloc] initWithDictionary:v20];
      [(FLOWSchemaFLOWDomainContext *)v5 setPegasusContext:v21];
    }

    v39 = v8;
    v22 = [v4 objectForKeyedSubscript:@"informationPluginContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [[FLOWSchemaFLOWInformationPluginContext alloc] initWithDictionary:v22];
      [(FLOWSchemaFLOWDomainContext *)v5 setInformationPluginContext:v23];
    }

    v37 = v14;
    v38 = v10;
    v24 = [v4 objectForKeyedSubscript:@"homeCommunicationContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [[FLOWSchemaFLOWHomeCommunicationContext alloc] initWithDictionary:v24];
      [(FLOWSchemaFLOWDomainContext *)v5 setHomeCommunicationContext:v25];
    }

    v26 = v12;
    v27 = [v4 objectForKeyedSubscript:@"notificationContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = [[FLOWSchemaFLOWNotificationContext alloc] initWithDictionary:v27];
      [(FLOWSchemaFLOWDomainContext *)v5 setNotificationContext:v28];
    }

    v29 = [v4 objectForKeyedSubscript:@"photosContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = [[FLOWSchemaFLOWPhotosContext alloc] initWithDictionary:v29];
      [(FLOWSchemaFLOWDomainContext *)v5 setPhotosContext:v30];
    }

    v31 = [v4 objectForKeyedSubscript:@"safariContext"];
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

- (FLOWSchemaFLOWDomainContext)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(FLOWSchemaFLOWDomainContext *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(FLOWSchemaFLOWDomainContext *)self dictionaryRepresentation];
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
  if (self->_briefingContext)
  {
    v4 = [(FLOWSchemaFLOWDomainContext *)self briefingContext];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"briefingContext"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"briefingContext"];
    }
  }

  if (self->_homeAutomationContext)
  {
    v7 = [(FLOWSchemaFLOWDomainContext *)self homeAutomationContext];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"homeAutomationContext"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"homeAutomationContext"];
    }
  }

  if (self->_homeCommunicationContext)
  {
    v10 = [(FLOWSchemaFLOWDomainContext *)self homeCommunicationContext];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"homeCommunicationContext"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"homeCommunicationContext"];
    }
  }

  if (self->_identityContext)
  {
    v13 = [(FLOWSchemaFLOWDomainContext *)self identityContext];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"identityContext"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"identityContext"];
    }
  }

  if (self->_informationPluginContext)
  {
    v16 = [(FLOWSchemaFLOWDomainContext *)self informationPluginContext];
    v17 = [v16 dictionaryRepresentation];
    if (v17)
    {
      [v3 setObject:v17 forKeyedSubscript:@"informationPluginContext"];
    }

    else
    {
      v18 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v18 forKeyedSubscript:@"informationPluginContext"];
    }
  }

  if (self->_mediaPlayerContext)
  {
    v19 = [(FLOWSchemaFLOWDomainContext *)self mediaPlayerContext];
    v20 = [v19 dictionaryRepresentation];
    if (v20)
    {
      [v3 setObject:v20 forKeyedSubscript:@"mediaPlayerContext"];
    }

    else
    {
      v21 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v21 forKeyedSubscript:@"mediaPlayerContext"];
    }
  }

  if (self->_notificationContext)
  {
    v22 = [(FLOWSchemaFLOWDomainContext *)self notificationContext];
    v23 = [v22 dictionaryRepresentation];
    if (v23)
    {
      [v3 setObject:v23 forKeyedSubscript:@"notificationContext"];
    }

    else
    {
      v24 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v24 forKeyedSubscript:@"notificationContext"];
    }
  }

  if (self->_pegasusContext)
  {
    v25 = [(FLOWSchemaFLOWDomainContext *)self pegasusContext];
    v26 = [v25 dictionaryRepresentation];
    if (v26)
    {
      [v3 setObject:v26 forKeyedSubscript:@"pegasusContext"];
    }

    else
    {
      v27 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v27 forKeyedSubscript:@"pegasusContext"];
    }
  }

  if (self->_phoneCallContext)
  {
    v28 = [(FLOWSchemaFLOWDomainContext *)self phoneCallContext];
    v29 = [v28 dictionaryRepresentation];
    if (v29)
    {
      [v3 setObject:v29 forKeyedSubscript:@"phoneCallContext"];
    }

    else
    {
      v30 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v30 forKeyedSubscript:@"phoneCallContext"];
    }
  }

  if (self->_photosContext)
  {
    v31 = [(FLOWSchemaFLOWDomainContext *)self photosContext];
    v32 = [v31 dictionaryRepresentation];
    if (v32)
    {
      [v3 setObject:v32 forKeyedSubscript:@"photosContext"];
    }

    else
    {
      v33 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v33 forKeyedSubscript:@"photosContext"];
    }
  }

  if (self->_safariContext)
  {
    v34 = [(FLOWSchemaFLOWDomainContext *)self safariContext];
    v35 = [v34 dictionaryRepresentation];
    if (v35)
    {
      [v3 setObject:v35 forKeyedSubscript:@"safariContext"];
    }

    else
    {
      v36 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v36 forKeyedSubscript:@"safariContext"];
    }
  }

  if (self->_smsContext)
  {
    v37 = [(FLOWSchemaFLOWDomainContext *)self smsContext];
    v38 = [v37 dictionaryRepresentation];
    if (v38)
    {
      [v3 setObject:v38 forKeyedSubscript:@"smsContext"];
    }

    else
    {
      v39 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v39 forKeyedSubscript:@"smsContext"];
    }
  }

  if (self->_voiceShortcutContext)
  {
    v40 = [(FLOWSchemaFLOWDomainContext *)self voiceShortcutContext];
    v41 = [v40 dictionaryRepresentation];
    if (v41)
    {
      [v3 setObject:v41 forKeyedSubscript:@"voiceShortcutContext"];
    }

    else
    {
      v42 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v42 forKeyedSubscript:@"voiceShortcutContext"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_68;
  }

  whichDomaincontext = self->_whichDomaincontext;
  if (whichDomaincontext != [v4 whichDomaincontext])
  {
    goto LABEL_68;
  }

  v6 = [(FLOWSchemaFLOWDomainContext *)self voiceShortcutContext];
  v7 = [v4 voiceShortcutContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_67;
  }

  v8 = [(FLOWSchemaFLOWDomainContext *)self voiceShortcutContext];
  if (v8)
  {
    v9 = v8;
    v10 = [(FLOWSchemaFLOWDomainContext *)self voiceShortcutContext];
    v11 = [v4 voiceShortcutContext];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_68;
    }
  }

  else
  {
  }

  v6 = [(FLOWSchemaFLOWDomainContext *)self homeAutomationContext];
  v7 = [v4 homeAutomationContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_67;
  }

  v13 = [(FLOWSchemaFLOWDomainContext *)self homeAutomationContext];
  if (v13)
  {
    v14 = v13;
    v15 = [(FLOWSchemaFLOWDomainContext *)self homeAutomationContext];
    v16 = [v4 homeAutomationContext];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_68;
    }
  }

  else
  {
  }

  v6 = [(FLOWSchemaFLOWDomainContext *)self phoneCallContext];
  v7 = [v4 phoneCallContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_67;
  }

  v18 = [(FLOWSchemaFLOWDomainContext *)self phoneCallContext];
  if (v18)
  {
    v19 = v18;
    v20 = [(FLOWSchemaFLOWDomainContext *)self phoneCallContext];
    v21 = [v4 phoneCallContext];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_68;
    }
  }

  else
  {
  }

  v6 = [(FLOWSchemaFLOWDomainContext *)self smsContext];
  v7 = [v4 smsContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_67;
  }

  v23 = [(FLOWSchemaFLOWDomainContext *)self smsContext];
  if (v23)
  {
    v24 = v23;
    v25 = [(FLOWSchemaFLOWDomainContext *)self smsContext];
    v26 = [v4 smsContext];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_68;
    }
  }

  else
  {
  }

  v6 = [(FLOWSchemaFLOWDomainContext *)self mediaPlayerContext];
  v7 = [v4 mediaPlayerContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_67;
  }

  v28 = [(FLOWSchemaFLOWDomainContext *)self mediaPlayerContext];
  if (v28)
  {
    v29 = v28;
    v30 = [(FLOWSchemaFLOWDomainContext *)self mediaPlayerContext];
    v31 = [v4 mediaPlayerContext];
    v32 = [v30 isEqual:v31];

    if (!v32)
    {
      goto LABEL_68;
    }
  }

  else
  {
  }

  v6 = [(FLOWSchemaFLOWDomainContext *)self identityContext];
  v7 = [v4 identityContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_67;
  }

  v33 = [(FLOWSchemaFLOWDomainContext *)self identityContext];
  if (v33)
  {
    v34 = v33;
    v35 = [(FLOWSchemaFLOWDomainContext *)self identityContext];
    v36 = [v4 identityContext];
    v37 = [v35 isEqual:v36];

    if (!v37)
    {
      goto LABEL_68;
    }
  }

  else
  {
  }

  v6 = [(FLOWSchemaFLOWDomainContext *)self briefingContext];
  v7 = [v4 briefingContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_67;
  }

  v38 = [(FLOWSchemaFLOWDomainContext *)self briefingContext];
  if (v38)
  {
    v39 = v38;
    v40 = [(FLOWSchemaFLOWDomainContext *)self briefingContext];
    v41 = [v4 briefingContext];
    v42 = [v40 isEqual:v41];

    if (!v42)
    {
      goto LABEL_68;
    }
  }

  else
  {
  }

  v6 = [(FLOWSchemaFLOWDomainContext *)self pegasusContext];
  v7 = [v4 pegasusContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_67;
  }

  v43 = [(FLOWSchemaFLOWDomainContext *)self pegasusContext];
  if (v43)
  {
    v44 = v43;
    v45 = [(FLOWSchemaFLOWDomainContext *)self pegasusContext];
    v46 = [v4 pegasusContext];
    v47 = [v45 isEqual:v46];

    if (!v47)
    {
      goto LABEL_68;
    }
  }

  else
  {
  }

  v6 = [(FLOWSchemaFLOWDomainContext *)self informationPluginContext];
  v7 = [v4 informationPluginContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_67;
  }

  v48 = [(FLOWSchemaFLOWDomainContext *)self informationPluginContext];
  if (v48)
  {
    v49 = v48;
    v50 = [(FLOWSchemaFLOWDomainContext *)self informationPluginContext];
    v51 = [v4 informationPluginContext];
    v52 = [v50 isEqual:v51];

    if (!v52)
    {
      goto LABEL_68;
    }
  }

  else
  {
  }

  v6 = [(FLOWSchemaFLOWDomainContext *)self homeCommunicationContext];
  v7 = [v4 homeCommunicationContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_67;
  }

  v53 = [(FLOWSchemaFLOWDomainContext *)self homeCommunicationContext];
  if (v53)
  {
    v54 = v53;
    v55 = [(FLOWSchemaFLOWDomainContext *)self homeCommunicationContext];
    v56 = [v4 homeCommunicationContext];
    v57 = [v55 isEqual:v56];

    if (!v57)
    {
      goto LABEL_68;
    }
  }

  else
  {
  }

  v6 = [(FLOWSchemaFLOWDomainContext *)self notificationContext];
  v7 = [v4 notificationContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_67;
  }

  v58 = [(FLOWSchemaFLOWDomainContext *)self notificationContext];
  if (v58)
  {
    v59 = v58;
    v60 = [(FLOWSchemaFLOWDomainContext *)self notificationContext];
    v61 = [v4 notificationContext];
    v62 = [v60 isEqual:v61];

    if (!v62)
    {
      goto LABEL_68;
    }
  }

  else
  {
  }

  v6 = [(FLOWSchemaFLOWDomainContext *)self photosContext];
  v7 = [v4 photosContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_67;
  }

  v63 = [(FLOWSchemaFLOWDomainContext *)self photosContext];
  if (v63)
  {
    v64 = v63;
    v65 = [(FLOWSchemaFLOWDomainContext *)self photosContext];
    v66 = [v4 photosContext];
    v67 = [v65 isEqual:v66];

    if (!v67)
    {
      goto LABEL_68;
    }
  }

  else
  {
  }

  v6 = [(FLOWSchemaFLOWDomainContext *)self safariContext];
  v7 = [v4 safariContext];
  if ((v6 != 0) != (v7 == 0))
  {
    v68 = [(FLOWSchemaFLOWDomainContext *)self safariContext];
    if (!v68)
    {

LABEL_71:
      v73 = 1;
      goto LABEL_69;
    }

    v69 = v68;
    v70 = [(FLOWSchemaFLOWDomainContext *)self safariContext];
    v71 = [v4 safariContext];
    v72 = [v70 isEqual:v71];

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

- (void)writeTo:(id)a3
{
  v31 = a3;
  v4 = [(FLOWSchemaFLOWDomainContext *)self voiceShortcutContext];

  if (v4)
  {
    v5 = [(FLOWSchemaFLOWDomainContext *)self voiceShortcutContext];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(FLOWSchemaFLOWDomainContext *)self homeAutomationContext];

  if (v6)
  {
    v7 = [(FLOWSchemaFLOWDomainContext *)self homeAutomationContext];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(FLOWSchemaFLOWDomainContext *)self phoneCallContext];

  if (v8)
  {
    v9 = [(FLOWSchemaFLOWDomainContext *)self phoneCallContext];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(FLOWSchemaFLOWDomainContext *)self smsContext];

  if (v10)
  {
    v11 = [(FLOWSchemaFLOWDomainContext *)self smsContext];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(FLOWSchemaFLOWDomainContext *)self mediaPlayerContext];

  if (v12)
  {
    v13 = [(FLOWSchemaFLOWDomainContext *)self mediaPlayerContext];
    PBDataWriterWriteSubmessage();
  }

  v14 = [(FLOWSchemaFLOWDomainContext *)self identityContext];

  if (v14)
  {
    v15 = [(FLOWSchemaFLOWDomainContext *)self identityContext];
    PBDataWriterWriteSubmessage();
  }

  v16 = [(FLOWSchemaFLOWDomainContext *)self briefingContext];

  if (v16)
  {
    v17 = [(FLOWSchemaFLOWDomainContext *)self briefingContext];
    PBDataWriterWriteSubmessage();
  }

  v18 = [(FLOWSchemaFLOWDomainContext *)self pegasusContext];

  if (v18)
  {
    v19 = [(FLOWSchemaFLOWDomainContext *)self pegasusContext];
    PBDataWriterWriteSubmessage();
  }

  v20 = [(FLOWSchemaFLOWDomainContext *)self informationPluginContext];

  if (v20)
  {
    v21 = [(FLOWSchemaFLOWDomainContext *)self informationPluginContext];
    PBDataWriterWriteSubmessage();
  }

  v22 = [(FLOWSchemaFLOWDomainContext *)self homeCommunicationContext];

  if (v22)
  {
    v23 = [(FLOWSchemaFLOWDomainContext *)self homeCommunicationContext];
    PBDataWriterWriteSubmessage();
  }

  v24 = [(FLOWSchemaFLOWDomainContext *)self notificationContext];

  if (v24)
  {
    v25 = [(FLOWSchemaFLOWDomainContext *)self notificationContext];
    PBDataWriterWriteSubmessage();
  }

  v26 = [(FLOWSchemaFLOWDomainContext *)self photosContext];

  if (v26)
  {
    v27 = [(FLOWSchemaFLOWDomainContext *)self photosContext];
    PBDataWriterWriteSubmessage();
  }

  v28 = [(FLOWSchemaFLOWDomainContext *)self safariContext];

  v29 = v31;
  if (v28)
  {
    v30 = [(FLOWSchemaFLOWDomainContext *)self safariContext];
    PBDataWriterWriteSubmessage();

    v29 = v31;
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

- (void)setSafariContext:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v17 = 0;
  }

  self->_whichDomaincontext = v17;
  safariContext = self->_safariContext;
  self->_safariContext = v4;
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

- (void)setPhotosContext:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v17 = 0;
  }

  self->_whichDomaincontext = v17;
  photosContext = self->_photosContext;
  self->_photosContext = v4;
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

- (void)setNotificationContext:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v17 = 0;
  }

  self->_whichDomaincontext = v17;
  notificationContext = self->_notificationContext;
  self->_notificationContext = v4;
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

- (void)setHomeCommunicationContext:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v17 = 0;
  }

  self->_whichDomaincontext = v17;
  homeCommunicationContext = self->_homeCommunicationContext;
  self->_homeCommunicationContext = v4;
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

- (void)setInformationPluginContext:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v17 = 0;
  }

  self->_whichDomaincontext = v17;
  informationPluginContext = self->_informationPluginContext;
  self->_informationPluginContext = v4;
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

- (void)setPegasusContext:(id)a3
{
  v4 = a3;
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

  self->_whichDomaincontext = 8 * (v4 != 0);
  pegasusContext = self->_pegasusContext;
  self->_pegasusContext = v4;
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

- (void)setBriefingContext:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v17 = 0;
  }

  self->_whichDomaincontext = v17;
  briefingContext = self->_briefingContext;
  self->_briefingContext = v4;
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

- (void)setIdentityContext:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v17 = 0;
  }

  self->_whichDomaincontext = v17;
  identityContext = self->_identityContext;
  self->_identityContext = v4;
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

- (void)setMediaPlayerContext:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v17 = 0;
  }

  self->_whichDomaincontext = v17;
  mediaPlayerContext = self->_mediaPlayerContext;
  self->_mediaPlayerContext = v4;
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

- (void)setSmsContext:(id)a3
{
  v4 = a3;
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

  self->_whichDomaincontext = 4 * (v4 != 0);
  smsContext = self->_smsContext;
  self->_smsContext = v4;
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

- (void)setPhoneCallContext:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v17 = 0;
  }

  self->_whichDomaincontext = v17;
  phoneCallContext = self->_phoneCallContext;
  self->_phoneCallContext = v4;
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

- (void)setHomeAutomationContext:(id)a3
{
  v4 = a3;
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

  self->_whichDomaincontext = 2 * (v4 != 0);
  homeAutomationContext = self->_homeAutomationContext;
  self->_homeAutomationContext = v4;
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

- (void)setVoiceShortcutContext:(id)a3
{
  v4 = a3;
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

  self->_whichDomaincontext = v4 != 0;
  voiceShortcutContext = self->_voiceShortcutContext;
  self->_voiceShortcutContext = v4;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v46.receiver = self;
  v46.super_class = FLOWSchemaFLOWDomainContext;
  v5 = [(SISchemaInstrumentationMessage *)&v46 applySensitiveConditionsPolicy:v4];
  v6 = [(FLOWSchemaFLOWDomainContext *)self voiceShortcutContext];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(FLOWSchemaFLOWDomainContext *)self deleteVoiceShortcutContext];
  }

  v9 = [(FLOWSchemaFLOWDomainContext *)self homeAutomationContext];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(FLOWSchemaFLOWDomainContext *)self deleteHomeAutomationContext];
  }

  v12 = [(FLOWSchemaFLOWDomainContext *)self phoneCallContext];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(FLOWSchemaFLOWDomainContext *)self deletePhoneCallContext];
  }

  v15 = [(FLOWSchemaFLOWDomainContext *)self smsContext];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(FLOWSchemaFLOWDomainContext *)self deleteSmsContext];
  }

  v18 = [(FLOWSchemaFLOWDomainContext *)self mediaPlayerContext];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
  {
    [(FLOWSchemaFLOWDomainContext *)self deleteMediaPlayerContext];
  }

  v21 = [(FLOWSchemaFLOWDomainContext *)self identityContext];
  v22 = [v21 applySensitiveConditionsPolicy:v4];
  v23 = [v22 suppressMessage];

  if (v23)
  {
    [(FLOWSchemaFLOWDomainContext *)self deleteIdentityContext];
  }

  v24 = [(FLOWSchemaFLOWDomainContext *)self briefingContext];
  v25 = [v24 applySensitiveConditionsPolicy:v4];
  v26 = [v25 suppressMessage];

  if (v26)
  {
    [(FLOWSchemaFLOWDomainContext *)self deleteBriefingContext];
  }

  v27 = [(FLOWSchemaFLOWDomainContext *)self pegasusContext];
  v28 = [v27 applySensitiveConditionsPolicy:v4];
  v29 = [v28 suppressMessage];

  if (v29)
  {
    [(FLOWSchemaFLOWDomainContext *)self deletePegasusContext];
  }

  v30 = [(FLOWSchemaFLOWDomainContext *)self informationPluginContext];
  v31 = [v30 applySensitiveConditionsPolicy:v4];
  v32 = [v31 suppressMessage];

  if (v32)
  {
    [(FLOWSchemaFLOWDomainContext *)self deleteInformationPluginContext];
  }

  v33 = [(FLOWSchemaFLOWDomainContext *)self homeCommunicationContext];
  v34 = [v33 applySensitiveConditionsPolicy:v4];
  v35 = [v34 suppressMessage];

  if (v35)
  {
    [(FLOWSchemaFLOWDomainContext *)self deleteHomeCommunicationContext];
  }

  v36 = [(FLOWSchemaFLOWDomainContext *)self notificationContext];
  v37 = [v36 applySensitiveConditionsPolicy:v4];
  v38 = [v37 suppressMessage];

  if (v38)
  {
    [(FLOWSchemaFLOWDomainContext *)self deleteNotificationContext];
  }

  v39 = [(FLOWSchemaFLOWDomainContext *)self photosContext];
  v40 = [v39 applySensitiveConditionsPolicy:v4];
  v41 = [v40 suppressMessage];

  if (v41)
  {
    [(FLOWSchemaFLOWDomainContext *)self deletePhotosContext];
  }

  v42 = [(FLOWSchemaFLOWDomainContext *)self safariContext];
  v43 = [v42 applySensitiveConditionsPolicy:v4];
  v44 = [v43 suppressMessage];

  if (v44)
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