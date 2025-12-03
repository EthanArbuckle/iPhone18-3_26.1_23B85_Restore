@interface SISchemaEnabledStatus
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaEnabledStatus)initWithDictionary:(id)dictionary;
- (SISchemaEnabledStatus)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addGradingOptInStateChanges:(id)changes;
- (void)setHasAssistantOnLockscreen:(BOOL)lockscreen;
- (void)setHasDataSharingOptInStatus:(BOOL)status;
- (void)setHasDictationEnabled:(BOOL)enabled;
- (void)setHasHardwareButtonEnabled:(BOOL)enabled;
- (void)setHasHasHomekitHome:(BOOL)home;
- (void)setHasHeySiriEnabled:(BOOL)enabled;
- (void)setHasHsHangupEnablementState:(BOOL)state;
- (void)setHasIsAdaptiveVolumeEnabled:(BOOL)enabled;
- (void)setHasIsAlwaysListenForHeySiriEnabled:(BOOL)enabled;
- (void)setHasIsAlwaysShowSiriCaptionsEnabled:(BOOL)enabled;
- (void)setHasIsAlwaysShowSpeechEnabled:(BOOL)enabled;
- (void)setHasIsAutoPunctuationEnabled:(BOOL)enabled;
- (void)setHasIsHSHangupEnabled:(BOOL)enabled;
- (void)setHasIsMteUploadEnabled:(BOOL)enabled;
- (void)setHasIsPreciseLocationEnabled:(BOOL)enabled;
- (void)setHasIsRemoteDarwinHeySiriEnabled:(BOOL)enabled;
- (void)setHasIsServerUserDataSyncEnabled:(BOOL)enabled;
- (void)setHasIsShowAppsBehindSiriEnabled:(BOOL)enabled;
- (void)setHasIsShowAppsBehindSiriEnabledOnCarPlay:(BOOL)play;
- (void)setHasIsSiriCapableDigitalCarKeyAvailable:(BOOL)available;
- (void)setHasIsSiriInCallEnabled:(BOOL)enabled;
- (void)setHasIsVoiceOverEnabled:(BOOL)enabled;
- (void)setHasLocationAccessPermission:(BOOL)permission;
- (void)setHasRaiseToSpeakEnabled:(BOOL)enabled;
- (void)setHasShortcutsAvailable:(BOOL)available;
- (void)setHasSiriInCallEnablementState:(BOOL)state;
- (void)setHasSiriPauseTimeState:(BOOL)state;
- (void)setHasSiriSpeechRate:(BOOL)rate;
- (void)setHasSpokenNotificationsEnabled:(BOOL)enabled;
- (void)setHasTypeToSiriEnabled:(BOOL)enabled;
- (void)setHasVoiceFeedback:(BOOL)feedback;
- (void)writeTo:(id)to;
@end

@implementation SISchemaEnabledStatus

- (SISchemaEnabledStatus)initWithDictionary:(id)dictionary
{
  v92 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v90.receiver = self;
  v90.super_class = SISchemaEnabledStatus;
  v5 = [(SISchemaEnabledStatus *)&v90 init];

  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"assistantEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaEnabledStatus setAssistantEnabled:](v5, "setAssistantEnabled:", [v6 BOOLValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"dictationEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaEnabledStatus setDictationEnabled:](v5, "setDictationEnabled:", [v7 BOOLValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"hardwareButtonEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaEnabledStatus setHardwareButtonEnabled:](v5, "setHardwareButtonEnabled:", [v8 BOOLValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"heySiriEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaEnabledStatus setHeySiriEnabled:](v5, "setHeySiriEnabled:", [v9 BOOLValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"assistantOnLockscreen"];
    objc_opt_class();
    v85 = v10;
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaEnabledStatus setAssistantOnLockscreen:](v5, "setAssistantOnLockscreen:", [v10 BOOLValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"raiseToSpeakEnabled"];
    objc_opt_class();
    v84 = v11;
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaEnabledStatus setRaiseToSpeakEnabled:](v5, "setRaiseToSpeakEnabled:", [v11 BOOLValue]);
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"spokenNotificationsEnabled"];
    objc_opt_class();
    v83 = v12;
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaEnabledStatus setSpokenNotificationsEnabled:](v5, "setSpokenNotificationsEnabled:", [v12 BOOLValue]);
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"hasHomekitHome"];
    objc_opt_class();
    v82 = v13;
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaEnabledStatus setHasHomekitHome:](v5, "setHasHomekitHome:", [v13 BOOLValue]);
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"shortcutsAvailable"];
    objc_opt_class();
    v81 = v14;
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaEnabledStatus setShortcutsAvailable:](v5, "setShortcutsAvailable:", [v14 intValue]);
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"dataSharingOptInStatus"];
    objc_opt_class();
    v80 = v15;
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaEnabledStatus setDataSharingOptInStatus:](v5, "setDataSharingOptInStatus:", [v15 intValue]);
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"typeToSiriEnabled"];
    objc_opt_class();
    v79 = v16;
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaEnabledStatus setTypeToSiriEnabled:](v5, "setTypeToSiriEnabled:", [v16 BOOLValue]);
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"isPreciseLocationEnabled"];
    objc_opt_class();
    v78 = v17;
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaEnabledStatus setIsPreciseLocationEnabled:](v5, "setIsPreciseLocationEnabled:", [v17 BOOLValue]);
    }

    v62 = v9;
    v63 = v8;
    v64 = v7;
    v65 = v6;
    v18 = [dictionaryCopy objectForKeyedSubscript:@"voiceFeedback"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaEnabledStatus setVoiceFeedback:](v5, "setVoiceFeedback:", [v18 intValue]);
    }

    v61 = v18;
    v19 = [dictionaryCopy objectForKeyedSubscript:@"announceEnabledStatus"];
    objc_opt_class();
    v77 = v19;
    if (objc_opt_isKindOfClass())
    {
      v20 = [[SISchemaAnnounceEnabledStatus alloc] initWithDictionary:v19];
      [(SISchemaEnabledStatus *)v5 setAnnounceEnabledStatus:v20];
    }

    v21 = [dictionaryCopy objectForKeyedSubscript:@"isAdaptiveVolumeEnabled"];
    objc_opt_class();
    v76 = v21;
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaEnabledStatus setIsAdaptiveVolumeEnabled:](v5, "setIsAdaptiveVolumeEnabled:", [v21 BOOLValue]);
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"adaptiveVolumeUserPreferences"];
    objc_opt_class();
    v75 = v22;
    if (objc_opt_isKindOfClass())
    {
      v23 = [[SISchemaAdaptiveVolumeUserPreferences alloc] initWithDictionary:v22];
      [(SISchemaEnabledStatus *)v5 setAdaptiveVolumeUserPreferences:v23];
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"isRemoteDarwinHeySiriEnabled"];
    objc_opt_class();
    v74 = v24;
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaEnabledStatus setIsRemoteDarwinHeySiriEnabled:](v5, "setIsRemoteDarwinHeySiriEnabled:", [v24 BOOLValue]);
    }

    v25 = [dictionaryCopy objectForKeyedSubscript:@"gradingOptInStateChanges"];
    objc_opt_class();
    v73 = v25;
    if (objc_opt_isKindOfClass())
    {
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v26 = v25;
      v27 = [v26 countByEnumeratingWithState:&v86 objects:v91 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v87;
        do
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v87 != v29)
            {
              objc_enumerationMutation(v26);
            }

            v31 = *(*(&v86 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v32 = [[SISchemaGradingOptInStateChange alloc] initWithDictionary:v31];
              [(SISchemaEnabledStatus *)v5 addGradingOptInStateChanges:v32];
            }
          }

          v28 = [v26 countByEnumeratingWithState:&v86 objects:v91 count:16];
        }

        while (v28);
      }
    }

    v33 = [dictionaryCopy objectForKeyedSubscript:@"isAutoPunctuationEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaEnabledStatus setIsAutoPunctuationEnabled:](v5, "setIsAutoPunctuationEnabled:", [v33 BOOLValue]);
    }

    v34 = [dictionaryCopy objectForKeyedSubscript:@"sendWithoutConfirmation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = [[SISchemaSendWithoutConfirmation alloc] initWithDictionary:v34];
      [(SISchemaEnabledStatus *)v5 setSendWithoutConfirmation:v35];
    }

    v36 = [dictionaryCopy objectForKeyedSubscript:@"isHSHangupEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaEnabledStatus setIsHSHangupEnabled:](v5, "setIsHSHangupEnabled:", [v36 BOOLValue]);
    }

    v37 = [dictionaryCopy objectForKeyedSubscript:@"isSiriInCallEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaEnabledStatus setIsSiriInCallEnabled:](v5, "setIsSiriInCallEnabled:", [v37 BOOLValue]);
    }

    v38 = [dictionaryCopy objectForKeyedSubscript:@"hsHangupEnablementState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaEnabledStatus setHsHangupEnablementState:](v5, "setHsHangupEnablementState:", [v38 intValue]);
    }

    v39 = [dictionaryCopy objectForKeyedSubscript:@"siriInCallEnablementState"];
    objc_opt_class();
    v72 = v39;
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaEnabledStatus setSiriInCallEnablementState:](v5, "setSiriInCallEnablementState:", [v39 intValue]);
    }

    v40 = [dictionaryCopy objectForKeyedSubscript:@"isAlwaysShowSiriCaptionsEnabled"];
    objc_opt_class();
    v71 = v40;
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaEnabledStatus setIsAlwaysShowSiriCaptionsEnabled:](v5, "setIsAlwaysShowSiriCaptionsEnabled:", [v40 BOOLValue]);
    }

    v41 = [dictionaryCopy objectForKeyedSubscript:@"isAlwaysShowSpeechEnabled"];
    objc_opt_class();
    v70 = v41;
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaEnabledStatus setIsAlwaysShowSpeechEnabled:](v5, "setIsAlwaysShowSpeechEnabled:", [v41 BOOLValue]);
    }

    v42 = [dictionaryCopy objectForKeyedSubscript:@"isShowAppsBehindSiriEnabled"];
    objc_opt_class();
    v69 = v42;
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaEnabledStatus setIsShowAppsBehindSiriEnabled:](v5, "setIsShowAppsBehindSiriEnabled:", [v42 BOOLValue]);
    }

    v43 = [dictionaryCopy objectForKeyedSubscript:@"siriSpeechRate"];
    objc_opt_class();
    v68 = v43;
    if (objc_opt_isKindOfClass())
    {
      [v43 doubleValue];
      [(SISchemaEnabledStatus *)v5 setSiriSpeechRate:?];
    }

    v44 = [dictionaryCopy objectForKeyedSubscript:@"isVoiceOverEnabled"];
    objc_opt_class();
    v67 = v44;
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaEnabledStatus setIsVoiceOverEnabled:](v5, "setIsVoiceOverEnabled:", [v44 BOOLValue]);
    }

    v45 = [dictionaryCopy objectForKeyedSubscript:@"siriVoiceTriggerSettings"];
    objc_opt_class();
    v66 = v45;
    if (objc_opt_isKindOfClass())
    {
      v46 = [[SISchemaSiriVoiceTriggerSettings alloc] initWithDictionary:v45];
      [(SISchemaEnabledStatus *)v5 setSiriVoiceTriggerSettings:v46];
    }

    v58 = v38;
    v47 = [dictionaryCopy objectForKeyedSubscript:@"isShowAppsBehindSiriEnabledOnCarPlay"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaEnabledStatus setIsShowAppsBehindSiriEnabledOnCarPlay:](v5, "setIsShowAppsBehindSiriEnabledOnCarPlay:", [v47 BOOLValue]);
    }

    v48 = [dictionaryCopy objectForKeyedSubscript:{@"isSiriCapableDigitalCarKeyAvailable", v47}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaEnabledStatus setIsSiriCapableDigitalCarKeyAvailable:](v5, "setIsSiriCapableDigitalCarKeyAvailable:", [v48 BOOLValue]);
    }

    v60 = v33;
    v49 = [dictionaryCopy objectForKeyedSubscript:@"isAlwaysListenForHeySiriEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaEnabledStatus setIsAlwaysListenForHeySiriEnabled:](v5, "setIsAlwaysListenForHeySiriEnabled:", [v49 BOOLValue]);
    }

    v59 = v34;
    v50 = [dictionaryCopy objectForKeyedSubscript:@"siriPauseTimeState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaEnabledStatus setSiriPauseTimeState:](v5, "setSiriPauseTimeState:", [v50 intValue]);
    }

    v51 = [dictionaryCopy objectForKeyedSubscript:@"isMteUploadEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaEnabledStatus setIsMteUploadEnabled:](v5, "setIsMteUploadEnabled:", [v51 BOOLValue]);
    }

    v52 = v36;
    v53 = [dictionaryCopy objectForKeyedSubscript:@"isServerUserDataSyncEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaEnabledStatus setIsServerUserDataSyncEnabled:](v5, "setIsServerUserDataSyncEnabled:", [v53 BOOLValue]);
    }

    v54 = [dictionaryCopy objectForKeyedSubscript:@"locationAccessPermission"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaEnabledStatus setLocationAccessPermission:](v5, "setLocationAccessPermission:", [v54 intValue]);
    }

    v55 = v5;
  }

  return v5;
}

- (SISchemaEnabledStatus)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaEnabledStatus *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaEnabledStatus *)self dictionaryRepresentation];
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
  v74 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_adaptiveVolumeUserPreferences)
  {
    adaptiveVolumeUserPreferences = [(SISchemaEnabledStatus *)self adaptiveVolumeUserPreferences];
    dictionaryRepresentation = [adaptiveVolumeUserPreferences dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"adaptiveVolumeUserPreferences"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"adaptiveVolumeUserPreferences"];
    }
  }

  if (self->_announceEnabledStatus)
  {
    announceEnabledStatus = [(SISchemaEnabledStatus *)self announceEnabledStatus];
    dictionaryRepresentation2 = [announceEnabledStatus dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"announceEnabledStatus"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"announceEnabledStatus"];
    }
  }

  has = self->_has;
  if (*&has)
  {
    v24 = [MEMORY[0x1E696AD98] numberWithBool:{-[SISchemaEnabledStatus assistantEnabled](self, "assistantEnabled")}];
    [dictionary setObject:v24 forKeyedSubscript:@"assistantEnabled"];

    has = self->_has;
    if ((*&has & 0x10) == 0)
    {
LABEL_13:
      if ((*&has & 0x200) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_55;
    }
  }

  else if ((*&has & 0x10) == 0)
  {
    goto LABEL_13;
  }

  v25 = [MEMORY[0x1E696AD98] numberWithBool:{-[SISchemaEnabledStatus assistantOnLockscreen](self, "assistantOnLockscreen")}];
  [dictionary setObject:v25 forKeyedSubscript:@"assistantOnLockscreen"];

  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_14:
    if ((*&has & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_55:
  v26 = [(SISchemaEnabledStatus *)self dataSharingOptInStatus]- 1;
  if (v26 > 2)
  {
    v27 = @"UNKNOWN";
  }

  else
  {
    v27 = off_1E78E49E0[v26];
  }

  [dictionary setObject:v27 forKeyedSubscript:@"dataSharingOptInStatus"];
  if ((*&self->_has & 2) != 0)
  {
LABEL_15:
    v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[SISchemaEnabledStatus dictationEnabled](self, "dictationEnabled")}];
    [dictionary setObject:v11 forKeyedSubscript:@"dictationEnabled"];
  }

LABEL_16:
  if ([(NSArray *)self->_gradingOptInStateChanges count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v13 = self->_gradingOptInStateChanges;
    v14 = [(NSArray *)v13 countByEnumeratingWithState:&v69 objects:v73 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v70;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v70 != v16)
          {
            objc_enumerationMutation(v13);
          }

          dictionaryRepresentation3 = [*(*(&v69 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation3)
          {
            [array addObject:dictionaryRepresentation3];
          }

          else
          {
            null3 = [MEMORY[0x1E695DFB0] null];
            [array addObject:null3];
          }
        }

        v15 = [(NSArray *)v13 countByEnumeratingWithState:&v69 objects:v73 count:16];
      }

      while (v15);
    }

    [dictionary setObject:array forKeyedSubscript:@"gradingOptInStateChanges"];
  }

  v20 = self->_has;
  if ((*&v20 & 4) != 0)
  {
    v28 = [MEMORY[0x1E696AD98] numberWithBool:{-[SISchemaEnabledStatus hardwareButtonEnabled](self, "hardwareButtonEnabled")}];
    [dictionary setObject:v28 forKeyedSubscript:@"hardwareButtonEnabled"];

    v20 = self->_has;
    if ((*&v20 & 0x80) == 0)
    {
LABEL_30:
      if ((*&v20 & 8) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_59;
    }
  }

  else if ((*&v20 & 0x80) == 0)
  {
    goto LABEL_30;
  }

  v29 = [MEMORY[0x1E696AD98] numberWithBool:{-[SISchemaEnabledStatus hasHomekitHome](self, "hasHomekitHome")}];
  [dictionary setObject:v29 forKeyedSubscript:@"hasHomekitHome"];

  v20 = self->_has;
  if ((*&v20 & 8) == 0)
  {
LABEL_31:
    if ((*&v20 & 0x40000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_60;
  }

LABEL_59:
  v30 = [MEMORY[0x1E696AD98] numberWithBool:{-[SISchemaEnabledStatus heySiriEnabled](self, "heySiriEnabled")}];
  [dictionary setObject:v30 forKeyedSubscript:@"heySiriEnabled"];

  v20 = self->_has;
  if ((*&v20 & 0x40000) == 0)
  {
LABEL_32:
    if ((*&v20 & 0x2000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_67;
  }

LABEL_60:
  v31 = [(SISchemaEnabledStatus *)self hsHangupEnablementState]- 1;
  if (v31 > 2)
  {
    v32 = @"HSHANGUPENABLEMENTSTATE_UNKNOWN";
  }

  else
  {
    v32 = off_1E78E49F8[v31];
  }

  [dictionary setObject:v32 forKeyedSubscript:@"hsHangupEnablementState"];
  v20 = self->_has;
  if ((*&v20 & 0x2000) == 0)
  {
LABEL_33:
    if ((*&v20 & 0x8000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_68;
  }

LABEL_67:
  v33 = [MEMORY[0x1E696AD98] numberWithBool:{-[SISchemaEnabledStatus isAdaptiveVolumeEnabled](self, "isAdaptiveVolumeEnabled")}];
  [dictionary setObject:v33 forKeyedSubscript:@"isAdaptiveVolumeEnabled"];

  v20 = self->_has;
  if ((*&v20 & 0x8000000) == 0)
  {
LABEL_34:
    if ((*&v20 & 0x100000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_69;
  }

LABEL_68:
  v34 = [MEMORY[0x1E696AD98] numberWithBool:{-[SISchemaEnabledStatus isAlwaysListenForHeySiriEnabled](self, "isAlwaysListenForHeySiriEnabled")}];
  [dictionary setObject:v34 forKeyedSubscript:@"isAlwaysListenForHeySiriEnabled"];

  v20 = self->_has;
  if ((*&v20 & 0x100000) == 0)
  {
LABEL_35:
    if ((*&v20 & 0x200000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_70;
  }

LABEL_69:
  v35 = [MEMORY[0x1E696AD98] numberWithBool:{-[SISchemaEnabledStatus isAlwaysShowSiriCaptionsEnabled](self, "isAlwaysShowSiriCaptionsEnabled")}];
  [dictionary setObject:v35 forKeyedSubscript:@"isAlwaysShowSiriCaptionsEnabled"];

  v20 = self->_has;
  if ((*&v20 & 0x200000) == 0)
  {
LABEL_36:
    if ((*&v20 & 0x8000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_71;
  }

LABEL_70:
  v36 = [MEMORY[0x1E696AD98] numberWithBool:{-[SISchemaEnabledStatus isAlwaysShowSpeechEnabled](self, "isAlwaysShowSpeechEnabled")}];
  [dictionary setObject:v36 forKeyedSubscript:@"isAlwaysShowSpeechEnabled"];

  v20 = self->_has;
  if ((*&v20 & 0x8000) == 0)
  {
LABEL_37:
    if ((*&v20 & 0x10000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_72;
  }

LABEL_71:
  v37 = [MEMORY[0x1E696AD98] numberWithBool:{-[SISchemaEnabledStatus isAutoPunctuationEnabled](self, "isAutoPunctuationEnabled")}];
  [dictionary setObject:v37 forKeyedSubscript:@"isAutoPunctuationEnabled"];

  v20 = self->_has;
  if ((*&v20 & 0x10000) == 0)
  {
LABEL_38:
    if ((*&v20 & 0x20000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_73;
  }

LABEL_72:
  v38 = [MEMORY[0x1E696AD98] numberWithBool:{-[SISchemaEnabledStatus isHSHangupEnabled](self, "isHSHangupEnabled")}];
  [dictionary setObject:v38 forKeyedSubscript:@"isHSHangupEnabled"];

  v20 = self->_has;
  if ((*&v20 & 0x20000000) == 0)
  {
LABEL_39:
    if ((*&v20 & 0x800) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_74;
  }

LABEL_73:
  v39 = [MEMORY[0x1E696AD98] numberWithBool:{-[SISchemaEnabledStatus isMteUploadEnabled](self, "isMteUploadEnabled")}];
  [dictionary setObject:v39 forKeyedSubscript:@"isMteUploadEnabled"];

  v20 = self->_has;
  if ((*&v20 & 0x800) == 0)
  {
LABEL_40:
    if ((*&v20 & 0x4000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_75;
  }

LABEL_74:
  v40 = [MEMORY[0x1E696AD98] numberWithBool:{-[SISchemaEnabledStatus isPreciseLocationEnabled](self, "isPreciseLocationEnabled")}];
  [dictionary setObject:v40 forKeyedSubscript:@"isPreciseLocationEnabled"];

  v20 = self->_has;
  if ((*&v20 & 0x4000) == 0)
  {
LABEL_41:
    if ((*&v20 & 0x40000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_76;
  }

LABEL_75:
  v41 = [MEMORY[0x1E696AD98] numberWithBool:{-[SISchemaEnabledStatus isRemoteDarwinHeySiriEnabled](self, "isRemoteDarwinHeySiriEnabled")}];
  [dictionary setObject:v41 forKeyedSubscript:@"isRemoteDarwinHeySiriEnabled"];

  v20 = self->_has;
  if ((*&v20 & 0x40000000) == 0)
  {
LABEL_42:
    if ((*&v20 & 0x400000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_77;
  }

LABEL_76:
  v42 = [MEMORY[0x1E696AD98] numberWithBool:{-[SISchemaEnabledStatus isServerUserDataSyncEnabled](self, "isServerUserDataSyncEnabled")}];
  [dictionary setObject:v42 forKeyedSubscript:@"isServerUserDataSyncEnabled"];

  v20 = self->_has;
  if ((*&v20 & 0x400000) == 0)
  {
LABEL_43:
    if ((*&v20 & 0x2000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_78;
  }

LABEL_77:
  v43 = [MEMORY[0x1E696AD98] numberWithBool:{-[SISchemaEnabledStatus isShowAppsBehindSiriEnabled](self, "isShowAppsBehindSiriEnabled")}];
  [dictionary setObject:v43 forKeyedSubscript:@"isShowAppsBehindSiriEnabled"];

  v20 = self->_has;
  if ((*&v20 & 0x2000000) == 0)
  {
LABEL_44:
    if ((*&v20 & 0x4000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_79;
  }

LABEL_78:
  v44 = [MEMORY[0x1E696AD98] numberWithBool:{-[SISchemaEnabledStatus isShowAppsBehindSiriEnabledOnCarPlay](self, "isShowAppsBehindSiriEnabledOnCarPlay")}];
  [dictionary setObject:v44 forKeyedSubscript:@"isShowAppsBehindSiriEnabledOnCarPlay"];

  v20 = self->_has;
  if ((*&v20 & 0x4000000) == 0)
  {
LABEL_45:
    if ((*&v20 & 0x20000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_80;
  }

LABEL_79:
  v45 = [MEMORY[0x1E696AD98] numberWithBool:{-[SISchemaEnabledStatus isSiriCapableDigitalCarKeyAvailable](self, "isSiriCapableDigitalCarKeyAvailable")}];
  [dictionary setObject:v45 forKeyedSubscript:@"isSiriCapableDigitalCarKeyAvailable"];

  v20 = self->_has;
  if ((*&v20 & 0x20000) == 0)
  {
LABEL_46:
    if ((*&v20 & 0x1000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_81;
  }

LABEL_80:
  v46 = [MEMORY[0x1E696AD98] numberWithBool:{-[SISchemaEnabledStatus isSiriInCallEnabled](self, "isSiriInCallEnabled")}];
  [dictionary setObject:v46 forKeyedSubscript:@"isSiriInCallEnabled"];

  v20 = self->_has;
  if ((*&v20 & 0x1000000) == 0)
  {
LABEL_47:
    if ((*&v20 & 0x80000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_82;
  }

LABEL_81:
  v47 = [MEMORY[0x1E696AD98] numberWithBool:{-[SISchemaEnabledStatus isVoiceOverEnabled](self, "isVoiceOverEnabled")}];
  [dictionary setObject:v47 forKeyedSubscript:@"isVoiceOverEnabled"];

  v20 = self->_has;
  if ((*&v20 & 0x80000000) == 0)
  {
LABEL_48:
    if ((*&v20 & 0x20) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

LABEL_82:
  v48 = [(SISchemaEnabledStatus *)self locationAccessPermission]- 1;
  if (v48 > 5)
  {
    v49 = @"LOCATIONACCESSPERMISSION_UNKNOWN";
  }

  else
  {
    v49 = off_1E78E4A10[v48];
  }

  [dictionary setObject:v49 forKeyedSubscript:@"locationAccessPermission"];
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_49:
    v21 = [MEMORY[0x1E696AD98] numberWithBool:{-[SISchemaEnabledStatus raiseToSpeakEnabled](self, "raiseToSpeakEnabled")}];
    [dictionary setObject:v21 forKeyedSubscript:@"raiseToSpeakEnabled"];
  }

LABEL_50:
  if (self->_sendWithoutConfirmation)
  {
    sendWithoutConfirmation = [(SISchemaEnabledStatus *)self sendWithoutConfirmation];
    dictionaryRepresentation4 = [sendWithoutConfirmation dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"sendWithoutConfirmation"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"sendWithoutConfirmation"];
    }
  }

  v51 = self->_has;
  if ((*&v51 & 0x100) != 0)
  {
    v56 = [MEMORY[0x1E696AD98] numberWithInt:{-[SISchemaEnabledStatus shortcutsAvailable](self, "shortcutsAvailable")}];
    [dictionary setObject:v56 forKeyedSubscript:@"shortcutsAvailable"];

    v51 = self->_has;
    if ((*&v51 & 0x80000) == 0)
    {
LABEL_88:
      if ((*&v51 & 0x10000000) == 0)
      {
        goto LABEL_89;
      }

      goto LABEL_99;
    }
  }

  else if ((*&v51 & 0x80000) == 0)
  {
    goto LABEL_88;
  }

  v57 = [(SISchemaEnabledStatus *)self siriInCallEnablementState]- 1;
  if (v57 > 2)
  {
    v58 = @"SIRIINCALLENABLEMENTSTATE_UNKNOWN";
  }

  else
  {
    v58 = off_1E78E4A40[v57];
  }

  [dictionary setObject:v58 forKeyedSubscript:@"siriInCallEnablementState"];
  v51 = self->_has;
  if ((*&v51 & 0x10000000) == 0)
  {
LABEL_89:
    if ((*&v51 & 0x800000) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_90;
  }

LABEL_99:
  v59 = [(SISchemaEnabledStatus *)self siriPauseTimeState]- 1;
  if (v59 > 2)
  {
    v60 = @"SIRIPAUSETIMESTATE_UNKNOWN";
  }

  else
  {
    v60 = off_1E78E4A58[v59];
  }

  [dictionary setObject:v60 forKeyedSubscript:@"siriPauseTimeState"];
  if ((*&self->_has & 0x800000) != 0)
  {
LABEL_90:
    v52 = MEMORY[0x1E696AD98];
    [(SISchemaEnabledStatus *)self siriSpeechRate];
    v53 = [v52 numberWithDouble:?];
    [dictionary setObject:v53 forKeyedSubscript:@"siriSpeechRate"];
  }

LABEL_91:
  if (self->_siriVoiceTriggerSettings)
  {
    siriVoiceTriggerSettings = [(SISchemaEnabledStatus *)self siriVoiceTriggerSettings];
    dictionaryRepresentation5 = [siriVoiceTriggerSettings dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"siriVoiceTriggerSettings"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"siriVoiceTriggerSettings"];
    }
  }

  v62 = self->_has;
  if ((*&v62 & 0x40) == 0)
  {
    if ((*&v62 & 0x400) == 0)
    {
      goto LABEL_108;
    }

LABEL_111:
    v64 = [MEMORY[0x1E696AD98] numberWithBool:{-[SISchemaEnabledStatus typeToSiriEnabled](self, "typeToSiriEnabled")}];
    [dictionary setObject:v64 forKeyedSubscript:@"typeToSiriEnabled"];

    if ((*&self->_has & 0x1000) == 0)
    {
      goto LABEL_116;
    }

    goto LABEL_112;
  }

  v63 = [MEMORY[0x1E696AD98] numberWithBool:{-[SISchemaEnabledStatus spokenNotificationsEnabled](self, "spokenNotificationsEnabled")}];
  [dictionary setObject:v63 forKeyedSubscript:@"spokenNotificationsEnabled"];

  v62 = self->_has;
  if ((*&v62 & 0x400) != 0)
  {
    goto LABEL_111;
  }

LABEL_108:
  if ((*&v62 & 0x1000) == 0)
  {
    goto LABEL_116;
  }

LABEL_112:
  v65 = [(SISchemaEnabledStatus *)self voiceFeedback]- 1;
  if (v65 > 5)
  {
    v66 = @"VOICEFEEDBACK_UNKNOWN_VOICE_FEEDBACK";
  }

  else
  {
    v66 = off_1E78E4A70[v65];
  }

  [dictionary setObject:v66 forKeyedSubscript:@"voiceFeedback"];
LABEL_116:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];
  v67 = dictionary;

  return dictionary;
}

- (unint64_t)hash
{
  has = self->_has;
  if (*&has)
  {
    v48 = 2654435761 * self->_assistantEnabled;
    if ((*&has & 2) != 0)
    {
LABEL_3:
      v47 = 2654435761 * self->_dictationEnabled;
      if ((*&has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v48 = 0;
    if ((*&has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v47 = 0;
  if ((*&has & 4) != 0)
  {
LABEL_4:
    v46 = 2654435761 * self->_hardwareButtonEnabled;
    if ((*&has & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  v46 = 0;
  if ((*&has & 8) != 0)
  {
LABEL_5:
    v45 = 2654435761 * self->_heySiriEnabled;
    if ((*&has & 0x10) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  v45 = 0;
  if ((*&has & 0x10) != 0)
  {
LABEL_6:
    v44 = 2654435761 * self->_assistantOnLockscreen;
    if ((*&has & 0x20) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  v44 = 0;
  if ((*&has & 0x20) != 0)
  {
LABEL_7:
    v43 = 2654435761 * self->_raiseToSpeakEnabled;
    if ((*&has & 0x40) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  v43 = 0;
  if ((*&has & 0x40) != 0)
  {
LABEL_8:
    v42 = 2654435761 * self->_spokenNotificationsEnabled;
    if ((*&has & 0x80) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  v42 = 0;
  if ((*&has & 0x80) != 0)
  {
LABEL_9:
    v41 = 2654435761 * self->_hasHomekitHome;
    if ((*&has & 0x100) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  v41 = 0;
  if ((*&has & 0x100) != 0)
  {
LABEL_10:
    v40 = 2654435761 * self->_shortcutsAvailable;
    if ((*&has & 0x200) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  v40 = 0;
  if ((*&has & 0x200) != 0)
  {
LABEL_11:
    v39 = 2654435761 * self->_dataSharingOptInStatus;
    if ((*&has & 0x400) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  v39 = 0;
  if ((*&has & 0x400) != 0)
  {
LABEL_12:
    v38 = 2654435761 * self->_typeToSiriEnabled;
    if ((*&has & 0x800) != 0)
    {
      goto LABEL_13;
    }

LABEL_26:
    v37 = 0;
    if ((*&has & 0x1000) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_27;
  }

LABEL_25:
  v38 = 0;
  if ((*&has & 0x800) == 0)
  {
    goto LABEL_26;
  }

LABEL_13:
  v37 = 2654435761 * self->_isPreciseLocationEnabled;
  if ((*&has & 0x1000) != 0)
  {
LABEL_14:
    v36 = 2654435761 * self->_voiceFeedback;
    goto LABEL_28;
  }

LABEL_27:
  v36 = 0;
LABEL_28:
  v35 = [(SISchemaAnnounceEnabledStatus *)self->_announceEnabledStatus hash];
  if ((*(&self->_has + 1) & 0x20) != 0)
  {
    v34 = 2654435761 * self->_isAdaptiveVolumeEnabled;
  }

  else
  {
    v34 = 0;
  }

  v33 = [(SISchemaAdaptiveVolumeUserPreferences *)self->_adaptiveVolumeUserPreferences hash];
  if ((*(&self->_has + 1) & 0x40) != 0)
  {
    v32 = 2654435761 * self->_isRemoteDarwinHeySiriEnabled;
  }

  else
  {
    v32 = 0;
  }

  v31 = [(NSArray *)self->_gradingOptInStateChanges hash];
  if ((*(&self->_has + 1) & 0x80) != 0)
  {
    v30 = 2654435761 * self->_isAutoPunctuationEnabled;
  }

  else
  {
    v30 = 0;
  }

  v29 = [(SISchemaSendWithoutConfirmation *)self->_sendWithoutConfirmation hash];
  v6 = self->_has;
  if ((*&v6 & 0x10000) != 0)
  {
    v28 = 2654435761 * self->_isHSHangupEnabled;
    if ((*&v6 & 0x20000) != 0)
    {
LABEL_39:
      v27 = 2654435761 * self->_isSiriInCallEnabled;
      if ((*&v6 & 0x40000) != 0)
      {
        goto LABEL_40;
      }

      goto LABEL_51;
    }
  }

  else
  {
    v28 = 0;
    if ((*&v6 & 0x20000) != 0)
    {
      goto LABEL_39;
    }
  }

  v27 = 0;
  if ((*&v6 & 0x40000) != 0)
  {
LABEL_40:
    v7 = 2654435761 * self->_hsHangupEnablementState;
    if ((*&v6 & 0x80000) != 0)
    {
      goto LABEL_41;
    }

    goto LABEL_52;
  }

LABEL_51:
  v7 = 0;
  if ((*&v6 & 0x80000) != 0)
  {
LABEL_41:
    v8 = 2654435761 * self->_siriInCallEnablementState;
    if ((*&v6 & 0x100000) != 0)
    {
      goto LABEL_42;
    }

    goto LABEL_53;
  }

LABEL_52:
  v8 = 0;
  if ((*&v6 & 0x100000) != 0)
  {
LABEL_42:
    v9 = 2654435761 * self->_isAlwaysShowSiriCaptionsEnabled;
    if ((*&v6 & 0x200000) != 0)
    {
      goto LABEL_43;
    }

    goto LABEL_54;
  }

LABEL_53:
  v9 = 0;
  if ((*&v6 & 0x200000) != 0)
  {
LABEL_43:
    v10 = 2654435761 * self->_isAlwaysShowSpeechEnabled;
    if ((*&v6 & 0x400000) != 0)
    {
      goto LABEL_44;
    }

LABEL_55:
    v11 = 0;
    if ((*&v6 & 0x800000) != 0)
    {
      goto LABEL_45;
    }

LABEL_56:
    v15 = 0;
    goto LABEL_57;
  }

LABEL_54:
  v10 = 0;
  if ((*&v6 & 0x400000) == 0)
  {
    goto LABEL_55;
  }

LABEL_44:
  v11 = 2654435761 * self->_isShowAppsBehindSiriEnabled;
  if ((*&v6 & 0x800000) == 0)
  {
    goto LABEL_56;
  }

LABEL_45:
  siriSpeechRate = self->_siriSpeechRate;
  if (siriSpeechRate < 0.0)
  {
    siriSpeechRate = -siriSpeechRate;
  }

  *v4.i64 = floor(siriSpeechRate + 0.5);
  v13 = (siriSpeechRate - *v4.i64) * 1.84467441e19;
  *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
  v14.f64[0] = NAN;
  v14.f64[1] = NAN;
  v15 = 2654435761u * *vbslq_s8(vnegq_f64(v14), v5, v4).i64;
  if (v13 >= 0.0)
  {
    if (v13 > 0.0)
    {
      v15 += v13;
    }
  }

  else
  {
    v15 -= fabs(v13);
  }

LABEL_57:
  if ((*&v6 & 0x1000000) != 0)
  {
    v16 = 2654435761 * self->_isVoiceOverEnabled;
  }

  else
  {
    v16 = 0;
  }

  v17 = [(SISchemaSiriVoiceTriggerSettings *)self->_siriVoiceTriggerSettings hash];
  v18 = self->_has;
  if ((*&v18 & 0x2000000) != 0)
  {
    v19 = 2654435761 * self->_isShowAppsBehindSiriEnabledOnCarPlay;
    if ((*&v18 & 0x4000000) != 0)
    {
LABEL_62:
      v20 = 2654435761 * self->_isSiriCapableDigitalCarKeyAvailable;
      if ((*&v18 & 0x8000000) != 0)
      {
        goto LABEL_63;
      }

      goto LABEL_70;
    }
  }

  else
  {
    v19 = 0;
    if ((*&v18 & 0x4000000) != 0)
    {
      goto LABEL_62;
    }
  }

  v20 = 0;
  if ((*&v18 & 0x8000000) != 0)
  {
LABEL_63:
    v21 = 2654435761 * self->_isAlwaysListenForHeySiriEnabled;
    if ((*&v18 & 0x10000000) != 0)
    {
      goto LABEL_64;
    }

    goto LABEL_71;
  }

LABEL_70:
  v21 = 0;
  if ((*&v18 & 0x10000000) != 0)
  {
LABEL_64:
    v22 = 2654435761 * self->_siriPauseTimeState;
    if ((*&v18 & 0x20000000) != 0)
    {
      goto LABEL_65;
    }

    goto LABEL_72;
  }

LABEL_71:
  v22 = 0;
  if ((*&v18 & 0x20000000) != 0)
  {
LABEL_65:
    v23 = 2654435761 * self->_isMteUploadEnabled;
    if ((*&v18 & 0x40000000) != 0)
    {
      goto LABEL_66;
    }

LABEL_73:
    v24 = 0;
    if ((*&v18 & 0x80000000) != 0)
    {
      goto LABEL_67;
    }

LABEL_74:
    v25 = 0;
    return v47 ^ v48 ^ v46 ^ v45 ^ v44 ^ v43 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v34 ^ v35 ^ v33 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v15 ^ v16 ^ v17 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25;
  }

LABEL_72:
  v23 = 0;
  if ((*&v18 & 0x40000000) == 0)
  {
    goto LABEL_73;
  }

LABEL_66:
  v24 = 2654435761 * self->_isServerUserDataSyncEnabled;
  if ((*&v18 & 0x80000000) == 0)
  {
    goto LABEL_74;
  }

LABEL_67:
  v25 = 2654435761 * self->_locationAccessPermission;
  return v47 ^ v48 ^ v46 ^ v45 ^ v44 ^ v43 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v34 ^ v35 ^ v33 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v15 ^ v16 ^ v17 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_122;
  }

  has = self->_has;
  v6 = equalCopy[36];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_122;
  }

  if (*&has)
  {
    assistantEnabled = self->_assistantEnabled;
    if (assistantEnabled != [equalCopy assistantEnabled])
    {
      goto LABEL_122;
    }

    has = self->_has;
    v6 = equalCopy[36];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_122;
  }

  if (v8)
  {
    dictationEnabled = self->_dictationEnabled;
    if (dictationEnabled != [equalCopy dictationEnabled])
    {
      goto LABEL_122;
    }

    has = self->_has;
    v6 = equalCopy[36];
  }

  v10 = (*&has >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_122;
  }

  if (v10)
  {
    hardwareButtonEnabled = self->_hardwareButtonEnabled;
    if (hardwareButtonEnabled != [equalCopy hardwareButtonEnabled])
    {
      goto LABEL_122;
    }

    has = self->_has;
    v6 = equalCopy[36];
  }

  v12 = (*&has >> 3) & 1;
  if (v12 != ((v6 >> 3) & 1))
  {
    goto LABEL_122;
  }

  if (v12)
  {
    heySiriEnabled = self->_heySiriEnabled;
    if (heySiriEnabled != [equalCopy heySiriEnabled])
    {
      goto LABEL_122;
    }

    has = self->_has;
    v6 = equalCopy[36];
  }

  v14 = (*&has >> 4) & 1;
  if (v14 != ((v6 >> 4) & 1))
  {
    goto LABEL_122;
  }

  if (v14)
  {
    assistantOnLockscreen = self->_assistantOnLockscreen;
    if (assistantOnLockscreen != [equalCopy assistantOnLockscreen])
    {
      goto LABEL_122;
    }

    has = self->_has;
    v6 = equalCopy[36];
  }

  v16 = (*&has >> 5) & 1;
  if (v16 != ((v6 >> 5) & 1))
  {
    goto LABEL_122;
  }

  if (v16)
  {
    raiseToSpeakEnabled = self->_raiseToSpeakEnabled;
    if (raiseToSpeakEnabled != [equalCopy raiseToSpeakEnabled])
    {
      goto LABEL_122;
    }

    has = self->_has;
    v6 = equalCopy[36];
  }

  v18 = (*&has >> 6) & 1;
  if (v18 != ((v6 >> 6) & 1))
  {
    goto LABEL_122;
  }

  if (v18)
  {
    spokenNotificationsEnabled = self->_spokenNotificationsEnabled;
    if (spokenNotificationsEnabled != [equalCopy spokenNotificationsEnabled])
    {
      goto LABEL_122;
    }

    has = self->_has;
    v6 = equalCopy[36];
  }

  v20 = (*&has >> 7) & 1;
  if (v20 != ((v6 >> 7) & 1))
  {
    goto LABEL_122;
  }

  if (v20)
  {
    hasHomekitHome = self->_hasHomekitHome;
    if (hasHomekitHome != [equalCopy hasHomekitHome])
    {
      goto LABEL_122;
    }

    has = self->_has;
    v6 = equalCopy[36];
  }

  v22 = (*&has >> 8) & 1;
  if (v22 != ((v6 >> 8) & 1))
  {
    goto LABEL_122;
  }

  if (v22)
  {
    shortcutsAvailable = self->_shortcutsAvailable;
    if (shortcutsAvailable != [equalCopy shortcutsAvailable])
    {
      goto LABEL_122;
    }

    has = self->_has;
    v6 = equalCopy[36];
  }

  v24 = (*&has >> 9) & 1;
  if (v24 != ((v6 >> 9) & 1))
  {
    goto LABEL_122;
  }

  if (v24)
  {
    dataSharingOptInStatus = self->_dataSharingOptInStatus;
    if (dataSharingOptInStatus != [equalCopy dataSharingOptInStatus])
    {
      goto LABEL_122;
    }

    has = self->_has;
    v6 = equalCopy[36];
  }

  v26 = (*&has >> 10) & 1;
  if (v26 != ((v6 >> 10) & 1))
  {
    goto LABEL_122;
  }

  if (v26)
  {
    typeToSiriEnabled = self->_typeToSiriEnabled;
    if (typeToSiriEnabled != [equalCopy typeToSiriEnabled])
    {
      goto LABEL_122;
    }

    has = self->_has;
    v6 = equalCopy[36];
  }

  v28 = (*&has >> 11) & 1;
  if (v28 != ((v6 >> 11) & 1))
  {
    goto LABEL_122;
  }

  if (v28)
  {
    isPreciseLocationEnabled = self->_isPreciseLocationEnabled;
    if (isPreciseLocationEnabled != [equalCopy isPreciseLocationEnabled])
    {
      goto LABEL_122;
    }

    has = self->_has;
    v6 = equalCopy[36];
  }

  v30 = (*&has >> 12) & 1;
  if (v30 != ((v6 >> 12) & 1))
  {
    goto LABEL_122;
  }

  if (v30)
  {
    voiceFeedback = self->_voiceFeedback;
    if (voiceFeedback != [equalCopy voiceFeedback])
    {
      goto LABEL_122;
    }
  }

  announceEnabledStatus = [(SISchemaEnabledStatus *)self announceEnabledStatus];
  announceEnabledStatus2 = [equalCopy announceEnabledStatus];
  if ((announceEnabledStatus != 0) == (announceEnabledStatus2 == 0))
  {
    goto LABEL_121;
  }

  announceEnabledStatus3 = [(SISchemaEnabledStatus *)self announceEnabledStatus];
  if (announceEnabledStatus3)
  {
    v35 = announceEnabledStatus3;
    announceEnabledStatus4 = [(SISchemaEnabledStatus *)self announceEnabledStatus];
    announceEnabledStatus5 = [equalCopy announceEnabledStatus];
    v38 = [announceEnabledStatus4 isEqual:announceEnabledStatus5];

    if (!v38)
    {
      goto LABEL_122;
    }
  }

  else
  {
  }

  v39 = (*&self->_has >> 13) & 1;
  if (v39 != ((equalCopy[36] >> 13) & 1))
  {
    goto LABEL_122;
  }

  if (v39)
  {
    isAdaptiveVolumeEnabled = self->_isAdaptiveVolumeEnabled;
    if (isAdaptiveVolumeEnabled != [equalCopy isAdaptiveVolumeEnabled])
    {
      goto LABEL_122;
    }
  }

  announceEnabledStatus = [(SISchemaEnabledStatus *)self adaptiveVolumeUserPreferences];
  announceEnabledStatus2 = [equalCopy adaptiveVolumeUserPreferences];
  if ((announceEnabledStatus != 0) == (announceEnabledStatus2 == 0))
  {
    goto LABEL_121;
  }

  adaptiveVolumeUserPreferences = [(SISchemaEnabledStatus *)self adaptiveVolumeUserPreferences];
  if (adaptiveVolumeUserPreferences)
  {
    v42 = adaptiveVolumeUserPreferences;
    adaptiveVolumeUserPreferences2 = [(SISchemaEnabledStatus *)self adaptiveVolumeUserPreferences];
    adaptiveVolumeUserPreferences3 = [equalCopy adaptiveVolumeUserPreferences];
    v45 = [adaptiveVolumeUserPreferences2 isEqual:adaptiveVolumeUserPreferences3];

    if (!v45)
    {
      goto LABEL_122;
    }
  }

  else
  {
  }

  v46 = (*&self->_has >> 14) & 1;
  if (v46 != ((equalCopy[36] >> 14) & 1))
  {
    goto LABEL_122;
  }

  if (v46)
  {
    isRemoteDarwinHeySiriEnabled = self->_isRemoteDarwinHeySiriEnabled;
    if (isRemoteDarwinHeySiriEnabled != [equalCopy isRemoteDarwinHeySiriEnabled])
    {
      goto LABEL_122;
    }
  }

  announceEnabledStatus = [(SISchemaEnabledStatus *)self gradingOptInStateChanges];
  announceEnabledStatus2 = [equalCopy gradingOptInStateChanges];
  if ((announceEnabledStatus != 0) == (announceEnabledStatus2 == 0))
  {
    goto LABEL_121;
  }

  gradingOptInStateChanges = [(SISchemaEnabledStatus *)self gradingOptInStateChanges];
  if (gradingOptInStateChanges)
  {
    v49 = gradingOptInStateChanges;
    gradingOptInStateChanges2 = [(SISchemaEnabledStatus *)self gradingOptInStateChanges];
    gradingOptInStateChanges3 = [equalCopy gradingOptInStateChanges];
    v52 = [gradingOptInStateChanges2 isEqual:gradingOptInStateChanges3];

    if (!v52)
    {
      goto LABEL_122;
    }
  }

  else
  {
  }

  v53 = (*&self->_has >> 15) & 1;
  if (v53 != ((equalCopy[36] >> 15) & 1))
  {
    goto LABEL_122;
  }

  if (v53)
  {
    isAutoPunctuationEnabled = self->_isAutoPunctuationEnabled;
    if (isAutoPunctuationEnabled != [equalCopy isAutoPunctuationEnabled])
    {
      goto LABEL_122;
    }
  }

  announceEnabledStatus = [(SISchemaEnabledStatus *)self sendWithoutConfirmation];
  announceEnabledStatus2 = [equalCopy sendWithoutConfirmation];
  if ((announceEnabledStatus != 0) == (announceEnabledStatus2 == 0))
  {
    goto LABEL_121;
  }

  sendWithoutConfirmation = [(SISchemaEnabledStatus *)self sendWithoutConfirmation];
  if (sendWithoutConfirmation)
  {
    v56 = sendWithoutConfirmation;
    sendWithoutConfirmation2 = [(SISchemaEnabledStatus *)self sendWithoutConfirmation];
    sendWithoutConfirmation3 = [equalCopy sendWithoutConfirmation];
    v59 = [sendWithoutConfirmation2 isEqual:sendWithoutConfirmation3];

    if (!v59)
    {
      goto LABEL_122;
    }
  }

  else
  {
  }

  v60 = self->_has;
  v61 = HIWORD(*&v60) & 1;
  v62 = equalCopy[36];
  if (v61 != (HIWORD(v62) & 1))
  {
    goto LABEL_122;
  }

  if (v61)
  {
    isHSHangupEnabled = self->_isHSHangupEnabled;
    if (isHSHangupEnabled != [equalCopy isHSHangupEnabled])
    {
      goto LABEL_122;
    }

    v60 = self->_has;
    v62 = equalCopy[36];
  }

  v64 = (*&v60 >> 17) & 1;
  if (v64 != ((v62 >> 17) & 1))
  {
    goto LABEL_122;
  }

  if (v64)
  {
    isSiriInCallEnabled = self->_isSiriInCallEnabled;
    if (isSiriInCallEnabled != [equalCopy isSiriInCallEnabled])
    {
      goto LABEL_122;
    }

    v60 = self->_has;
    v62 = equalCopy[36];
  }

  v66 = (*&v60 >> 18) & 1;
  if (v66 != ((v62 >> 18) & 1))
  {
    goto LABEL_122;
  }

  if (v66)
  {
    hsHangupEnablementState = self->_hsHangupEnablementState;
    if (hsHangupEnablementState != [equalCopy hsHangupEnablementState])
    {
      goto LABEL_122;
    }

    v60 = self->_has;
    v62 = equalCopy[36];
  }

  v68 = (*&v60 >> 19) & 1;
  if (v68 != ((v62 >> 19) & 1))
  {
    goto LABEL_122;
  }

  if (v68)
  {
    siriInCallEnablementState = self->_siriInCallEnablementState;
    if (siriInCallEnablementState != [equalCopy siriInCallEnablementState])
    {
      goto LABEL_122;
    }

    v60 = self->_has;
    v62 = equalCopy[36];
  }

  v70 = (*&v60 >> 20) & 1;
  if (v70 != ((v62 >> 20) & 1))
  {
    goto LABEL_122;
  }

  if (v70)
  {
    isAlwaysShowSiriCaptionsEnabled = self->_isAlwaysShowSiriCaptionsEnabled;
    if (isAlwaysShowSiriCaptionsEnabled != [equalCopy isAlwaysShowSiriCaptionsEnabled])
    {
      goto LABEL_122;
    }

    v60 = self->_has;
    v62 = equalCopy[36];
  }

  v72 = (*&v60 >> 21) & 1;
  if (v72 != ((v62 >> 21) & 1))
  {
    goto LABEL_122;
  }

  if (v72)
  {
    isAlwaysShowSpeechEnabled = self->_isAlwaysShowSpeechEnabled;
    if (isAlwaysShowSpeechEnabled != [equalCopy isAlwaysShowSpeechEnabled])
    {
      goto LABEL_122;
    }

    v60 = self->_has;
    v62 = equalCopy[36];
  }

  v74 = (*&v60 >> 22) & 1;
  if (v74 != ((v62 >> 22) & 1))
  {
    goto LABEL_122;
  }

  if (v74)
  {
    isShowAppsBehindSiriEnabled = self->_isShowAppsBehindSiriEnabled;
    if (isShowAppsBehindSiriEnabled != [equalCopy isShowAppsBehindSiriEnabled])
    {
      goto LABEL_122;
    }

    v60 = self->_has;
    v62 = equalCopy[36];
  }

  v76 = (*&v60 >> 23) & 1;
  if (v76 != ((v62 >> 23) & 1))
  {
    goto LABEL_122;
  }

  if (v76)
  {
    siriSpeechRate = self->_siriSpeechRate;
    [equalCopy siriSpeechRate];
    if (siriSpeechRate != v78)
    {
      goto LABEL_122;
    }

    v60 = self->_has;
    v62 = equalCopy[36];
  }

  v79 = HIBYTE(*&v60) & 1;
  if (v79 != (HIBYTE(v62) & 1))
  {
    goto LABEL_122;
  }

  if (v79)
  {
    isVoiceOverEnabled = self->_isVoiceOverEnabled;
    if (isVoiceOverEnabled != [equalCopy isVoiceOverEnabled])
    {
      goto LABEL_122;
    }
  }

  announceEnabledStatus = [(SISchemaEnabledStatus *)self siriVoiceTriggerSettings];
  announceEnabledStatus2 = [equalCopy siriVoiceTriggerSettings];
  if ((announceEnabledStatus != 0) == (announceEnabledStatus2 == 0))
  {
LABEL_121:

    goto LABEL_122;
  }

  siriVoiceTriggerSettings = [(SISchemaEnabledStatus *)self siriVoiceTriggerSettings];
  if (siriVoiceTriggerSettings)
  {
    v82 = siriVoiceTriggerSettings;
    siriVoiceTriggerSettings2 = [(SISchemaEnabledStatus *)self siriVoiceTriggerSettings];
    siriVoiceTriggerSettings3 = [equalCopy siriVoiceTriggerSettings];
    v85 = [siriVoiceTriggerSettings2 isEqual:siriVoiceTriggerSettings3];

    if (!v85)
    {
      goto LABEL_122;
    }
  }

  else
  {
  }

  v88 = self->_has;
  v89 = (*&v88 >> 25) & 1;
  v90 = equalCopy[36];
  if (v89 == ((v90 >> 25) & 1))
  {
    if (v89)
    {
      isShowAppsBehindSiriEnabledOnCarPlay = self->_isShowAppsBehindSiriEnabledOnCarPlay;
      if (isShowAppsBehindSiriEnabledOnCarPlay != [equalCopy isShowAppsBehindSiriEnabledOnCarPlay])
      {
        goto LABEL_122;
      }

      v88 = self->_has;
      v90 = equalCopy[36];
    }

    v92 = (*&v88 >> 26) & 1;
    if (v92 == ((v90 >> 26) & 1))
    {
      if (v92)
      {
        isSiriCapableDigitalCarKeyAvailable = self->_isSiriCapableDigitalCarKeyAvailable;
        if (isSiriCapableDigitalCarKeyAvailable != [equalCopy isSiriCapableDigitalCarKeyAvailable])
        {
          goto LABEL_122;
        }

        v88 = self->_has;
        v90 = equalCopy[36];
      }

      v94 = (*&v88 >> 27) & 1;
      if (v94 == ((v90 >> 27) & 1))
      {
        if (v94)
        {
          isAlwaysListenForHeySiriEnabled = self->_isAlwaysListenForHeySiriEnabled;
          if (isAlwaysListenForHeySiriEnabled != [equalCopy isAlwaysListenForHeySiriEnabled])
          {
            goto LABEL_122;
          }

          v88 = self->_has;
          v90 = equalCopy[36];
        }

        v96 = (*&v88 >> 28) & 1;
        if (v96 == ((v90 >> 28) & 1))
        {
          if (v96)
          {
            siriPauseTimeState = self->_siriPauseTimeState;
            if (siriPauseTimeState != [equalCopy siriPauseTimeState])
            {
              goto LABEL_122;
            }

            v88 = self->_has;
            v90 = equalCopy[36];
          }

          v98 = (*&v88 >> 29) & 1;
          if (v98 == ((v90 >> 29) & 1))
          {
            if (v98)
            {
              isMteUploadEnabled = self->_isMteUploadEnabled;
              if (isMteUploadEnabled != [equalCopy isMteUploadEnabled])
              {
                goto LABEL_122;
              }

              v88 = self->_has;
              v90 = equalCopy[36];
            }

            v100 = (*&v88 >> 30) & 1;
            if (v100 == ((v90 >> 30) & 1))
            {
              if (v100)
              {
                isServerUserDataSyncEnabled = self->_isServerUserDataSyncEnabled;
                if (isServerUserDataSyncEnabled != [equalCopy isServerUserDataSyncEnabled])
                {
                  goto LABEL_122;
                }

                v88 = self->_has;
                v90 = equalCopy[36];
              }

              if (((v90 ^ *&v88) & 0x80000000) == 0)
              {
                if ((*&v88 & 0x80000000) == 0 || (locationAccessPermission = self->_locationAccessPermission, locationAccessPermission == [equalCopy locationAccessPermission]))
                {
                  v86 = 1;
                  goto LABEL_123;
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_122:
  v86 = 0;
LABEL_123:

  return v86;
}

- (void)writeTo:(id)to
{
  v26 = *MEMORY[0x1E69E9840];
  toCopy = to;
  has = self->_has;
  if (*&has)
  {
    PBDataWriterWriteBOOLField();
    has = self->_has;
    if ((*&has & 2) == 0)
    {
LABEL_3:
      if ((*&has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_56;
    }
  }

  else if ((*&has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_4:
    if ((*&has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_57;
  }

LABEL_56:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_5:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_58;
  }

LABEL_57:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_6:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_59;
  }

LABEL_58:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_7:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_60;
  }

LABEL_59:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_8:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_61;
  }

LABEL_60:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_9:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_62;
  }

LABEL_61:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_10:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_63;
  }

LABEL_62:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_11:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_64;
  }

LABEL_63:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_12:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_65;
  }

LABEL_64:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_13:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_65:
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_14:
    PBDataWriterWriteInt32Field();
  }

LABEL_15:
  announceEnabledStatus = [(SISchemaEnabledStatus *)self announceEnabledStatus];

  if (announceEnabledStatus)
  {
    announceEnabledStatus2 = [(SISchemaEnabledStatus *)self announceEnabledStatus];
    PBDataWriterWriteSubmessage();
  }

  if ((*(&self->_has + 1) & 0x20) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  adaptiveVolumeUserPreferences = [(SISchemaEnabledStatus *)self adaptiveVolumeUserPreferences];

  if (adaptiveVolumeUserPreferences)
  {
    adaptiveVolumeUserPreferences2 = [(SISchemaEnabledStatus *)self adaptiveVolumeUserPreferences];
    PBDataWriterWriteSubmessage();
  }

  if ((*(&self->_has + 1) & 0x40) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = self->_gradingOptInStateChanges;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v22;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v10);
        }

        PBDataWriterWriteSubmessage();
      }

      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v12);
  }

  if ((*(&self->_has + 1) & 0x80) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  sendWithoutConfirmation = [(SISchemaEnabledStatus *)self sendWithoutConfirmation];

  if (sendWithoutConfirmation)
  {
    sendWithoutConfirmation2 = [(SISchemaEnabledStatus *)self sendWithoutConfirmation];
    PBDataWriterWriteSubmessage();
  }

  v17 = self->_has;
  if ((*&v17 & 0x10000) != 0)
  {
    PBDataWriterWriteBOOLField();
    v17 = self->_has;
    if ((*&v17 & 0x20000) == 0)
    {
LABEL_36:
      if ((*&v17 & 0x40000) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_69;
    }
  }

  else if ((*&v17 & 0x20000) == 0)
  {
    goto LABEL_36;
  }

  PBDataWriterWriteBOOLField();
  v17 = self->_has;
  if ((*&v17 & 0x40000) == 0)
  {
LABEL_37:
    if ((*&v17 & 0x80000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_70;
  }

LABEL_69:
  PBDataWriterWriteInt32Field();
  v17 = self->_has;
  if ((*&v17 & 0x80000) == 0)
  {
LABEL_38:
    if ((*&v17 & 0x100000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_71;
  }

LABEL_70:
  PBDataWriterWriteInt32Field();
  v17 = self->_has;
  if ((*&v17 & 0x100000) == 0)
  {
LABEL_39:
    if ((*&v17 & 0x200000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_72;
  }

LABEL_71:
  PBDataWriterWriteBOOLField();
  v17 = self->_has;
  if ((*&v17 & 0x200000) == 0)
  {
LABEL_40:
    if ((*&v17 & 0x400000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_73;
  }

LABEL_72:
  PBDataWriterWriteBOOLField();
  v17 = self->_has;
  if ((*&v17 & 0x400000) == 0)
  {
LABEL_41:
    if ((*&v17 & 0x800000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_74;
  }

LABEL_73:
  PBDataWriterWriteBOOLField();
  v17 = self->_has;
  if ((*&v17 & 0x800000) == 0)
  {
LABEL_42:
    if ((*&v17 & 0x1000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

LABEL_74:
  PBDataWriterWriteDoubleField();
  if ((*&self->_has & 0x1000000) != 0)
  {
LABEL_43:
    PBDataWriterWriteBOOLField();
  }

LABEL_44:
  siriVoiceTriggerSettings = [(SISchemaEnabledStatus *)self siriVoiceTriggerSettings];

  if (siriVoiceTriggerSettings)
  {
    siriVoiceTriggerSettings2 = [(SISchemaEnabledStatus *)self siriVoiceTriggerSettings];
    PBDataWriterWriteSubmessage();
  }

  v20 = self->_has;
  if ((*&v20 & 0x2000000) != 0)
  {
    PBDataWriterWriteBOOLField();
    v20 = self->_has;
    if ((*&v20 & 0x4000000) == 0)
    {
LABEL_48:
      if ((*&v20 & 0x8000000) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_78;
    }
  }

  else if ((*&v20 & 0x4000000) == 0)
  {
    goto LABEL_48;
  }

  PBDataWriterWriteBOOLField();
  v20 = self->_has;
  if ((*&v20 & 0x8000000) == 0)
  {
LABEL_49:
    if ((*&v20 & 0x10000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_79;
  }

LABEL_78:
  PBDataWriterWriteBOOLField();
  v20 = self->_has;
  if ((*&v20 & 0x10000000) == 0)
  {
LABEL_50:
    if ((*&v20 & 0x20000000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_80;
  }

LABEL_79:
  PBDataWriterWriteInt32Field();
  v20 = self->_has;
  if ((*&v20 & 0x20000000) == 0)
  {
LABEL_51:
    if ((*&v20 & 0x40000000) == 0)
    {
      goto LABEL_52;
    }

LABEL_81:
    PBDataWriterWriteBOOLField();
    if ((*&self->_has & 0x80000000) == 0)
    {
      goto LABEL_53;
    }

LABEL_82:
    PBDataWriterWriteInt32Field();
    goto LABEL_53;
  }

LABEL_80:
  PBDataWriterWriteBOOLField();
  v20 = self->_has;
  if ((*&v20 & 0x40000000) != 0)
  {
    goto LABEL_81;
  }

LABEL_52:
  if ((*&v20 & 0x80000000) != 0)
  {
    goto LABEL_82;
  }

LABEL_53:
}

- (void)setHasLocationAccessPermission:(BOOL)permission
{
  if (permission)
  {
    v3 = 0x80000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (v3 & 0x80000000 | *&self->_has & 0x7FFFFFFF);
}

- (void)setHasIsServerUserDataSyncEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 0x40000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xBFFFFFFF | v3);
}

- (void)setHasIsMteUploadEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 0x20000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xDFFFFFFF | v3);
}

- (void)setHasSiriPauseTimeState:(BOOL)state
{
  if (state)
  {
    v3 = 0x10000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xEFFFFFFF | v3);
}

- (void)setHasIsAlwaysListenForHeySiriEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 0x8000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xF7FFFFFF | v3);
}

- (void)setHasIsSiriCapableDigitalCarKeyAvailable:(BOOL)available
{
  if (available)
  {
    v3 = 0x4000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFBFFFFFF | v3);
}

- (void)setHasIsShowAppsBehindSiriEnabledOnCarPlay:(BOOL)play
{
  if (play)
  {
    v3 = 0x2000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFDFFFFFF | v3);
}

- (void)setHasIsVoiceOverEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 0x1000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFEFFFFFF | v3);
}

- (void)setHasSiriSpeechRate:(BOOL)rate
{
  if (rate)
  {
    v3 = 0x800000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFF7FFFFF | v3);
}

- (void)setHasIsShowAppsBehindSiriEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 0x400000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFBFFFFF | v3);
}

- (void)setHasIsAlwaysShowSpeechEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 0x200000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFDFFFFF | v3);
}

- (void)setHasIsAlwaysShowSiriCaptionsEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 0x100000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFEFFFFF | v3);
}

- (void)setHasSiriInCallEnablementState:(BOOL)state
{
  if (state)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFF7FFFF | v3);
}

- (void)setHasHsHangupEnablementState:(BOOL)state
{
  if (state)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFBFFFF | v3);
}

- (void)setHasIsSiriInCallEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFDFFFF | v3);
}

- (void)setHasIsHSHangupEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (void)setHasIsAutoPunctuationEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
}

- (void)addGradingOptInStateChanges:(id)changes
{
  changesCopy = changes;
  gradingOptInStateChanges = self->_gradingOptInStateChanges;
  v8 = changesCopy;
  if (!gradingOptInStateChanges)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_gradingOptInStateChanges;
    self->_gradingOptInStateChanges = array;

    changesCopy = v8;
    gradingOptInStateChanges = self->_gradingOptInStateChanges;
  }

  [(NSArray *)gradingOptInStateChanges addObject:changesCopy];
}

- (void)setHasIsRemoteDarwinHeySiriEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
}

- (void)setHasIsAdaptiveVolumeEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (void)setHasVoiceFeedback:(BOOL)feedback
{
  if (feedback)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
}

- (void)setHasIsPreciseLocationEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (void)setHasTypeToSiriEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
}

- (void)setHasDataSharingOptInStatus:(BOOL)status
{
  if (status)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (void)setHasShortcutsAvailable:(BOOL)available
{
  if (available)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
}

- (void)setHasHasHomekitHome:(BOOL)home
{
  if (home)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (void)setHasSpokenNotificationsEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBF | v3);
}

- (void)setHasRaiseToSpeakEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
}

- (void)setHasAssistantOnLockscreen:(BOOL)lockscreen
{
  if (lockscreen)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
}

- (void)setHasHeySiriEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
}

- (void)setHasHardwareButtonEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFB | v3);
}

- (void)setHasDictationEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFD | v3);
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v21.receiver = self;
  v21.super_class = SISchemaEnabledStatus;
  v5 = [(SISchemaInstrumentationMessage *)&v21 applySensitiveConditionsPolicy:policyCopy];
  announceEnabledStatus = [(SISchemaEnabledStatus *)self announceEnabledStatus];
  v7 = [announceEnabledStatus applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(SISchemaEnabledStatus *)self deleteAnnounceEnabledStatus];
  }

  adaptiveVolumeUserPreferences = [(SISchemaEnabledStatus *)self adaptiveVolumeUserPreferences];
  v10 = [adaptiveVolumeUserPreferences applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(SISchemaEnabledStatus *)self deleteAdaptiveVolumeUserPreferences];
  }

  gradingOptInStateChanges = [(SISchemaEnabledStatus *)self gradingOptInStateChanges];
  v13 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:gradingOptInStateChanges underConditions:policyCopy];
  [(SISchemaEnabledStatus *)self setGradingOptInStateChanges:v13];

  sendWithoutConfirmation = [(SISchemaEnabledStatus *)self sendWithoutConfirmation];
  v15 = [sendWithoutConfirmation applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v15 suppressMessage];

  if (suppressMessage3)
  {
    [(SISchemaEnabledStatus *)self deleteSendWithoutConfirmation];
  }

  siriVoiceTriggerSettings = [(SISchemaEnabledStatus *)self siriVoiceTriggerSettings];
  v18 = [siriVoiceTriggerSettings applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v18 suppressMessage];

  if (suppressMessage4)
  {
    [(SISchemaEnabledStatus *)self deleteSiriVoiceTriggerSettings];
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