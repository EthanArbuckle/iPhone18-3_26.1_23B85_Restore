@interface HALSchemaHALDevice
- (BOOL)isEqual:(id)equal;
- (HALSchemaHALDevice)initWithDictionary:(id)dictionary;
- (HALSchemaHALDevice)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasDeviceFamily:(BOOL)family;
- (void)setHasPowerState:(BOOL)state;
- (void)setHasSiriInputLocale:(BOOL)locale;
- (void)writeTo:(id)to;
@end

@implementation HALSchemaHALDevice

- (HALSchemaHALDevice)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v24.receiver = self;
  v24.super_class = HALSchemaHALDevice;
  v5 = [(HALSchemaHALDevice *)&v24 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"deviceProximity"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[HALSchemaHALDevice setDeviceProximity:](v5, "setDeviceProximity:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"deviceFamily"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[HALSchemaHALDevice setDeviceFamily:](v5, "setDeviceFamily:", [v7 intValue]);
    }

    v23 = v6;
    v8 = [dictionaryCopy objectForKeyedSubscript:@"systemBuild"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(HALSchemaHALDevice *)v5 setSystemBuild:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:{@"siriInputLocale", v7}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[HALSchemaHALDevice setSiriInputLocale:](v5, "setSiriInputLocale:", [v10 intValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"mediaPlayerContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [[HALSchemaHALMediaPlayerContext alloc] initWithDictionary:v11];
      [(HALSchemaHALDevice *)v5 setMediaPlayerContext:v12];
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"alarmContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [[HALSchemaHALAlarmContext alloc] initWithDictionary:v13];
      [(HALSchemaHALDevice *)v5 setAlarmContext:v14];
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"timerContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [[HALSchemaHALTimerContext alloc] initWithDictionary:v15];
      [(HALSchemaHALDevice *)v5 setTimerContext:v16];
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"voiceTriggerContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [[HALSchemaHALVoiceTriggerContext alloc] initWithDictionary:v17];
      [(HALSchemaHALDevice *)v5 setVoiceTriggerContext:v18];
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"powerState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[HALSchemaHALDevice setPowerState:](v5, "setPowerState:", [v19 intValue]);
    }

    v20 = v5;
  }

  return v5;
}

- (HALSchemaHALDevice)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(HALSchemaHALDevice *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(HALSchemaHALDevice *)self dictionaryRepresentation];
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
  if (self->_alarmContext)
  {
    alarmContext = [(HALSchemaHALDevice *)self alarmContext];
    dictionaryRepresentation = [alarmContext dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"alarmContext"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"alarmContext"];
    }
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v8 = [(HALSchemaHALDevice *)self deviceFamily]- 1;
    if (v8 > 7)
    {
      v9 = @"DEVICEFAMILY_UNKNOWN";
    }

    else
    {
      v9 = off_1E78D7C68[v8];
    }

    [dictionary setObject:v9 forKeyedSubscript:@"deviceFamily"];
    has = self->_has;
  }

  if (has)
  {
    v10 = [(HALSchemaHALDevice *)self deviceProximity]- 1;
    if (v10 > 3)
    {
      v11 = @"HALDEVICEPROXIMITY_UNKNOWN";
    }

    else
    {
      v11 = off_1E78D7CA8[v10];
    }

    [dictionary setObject:v11 forKeyedSubscript:@"deviceProximity"];
  }

  if (self->_mediaPlayerContext)
  {
    mediaPlayerContext = [(HALSchemaHALDevice *)self mediaPlayerContext];
    dictionaryRepresentation2 = [mediaPlayerContext dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"mediaPlayerContext"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"mediaPlayerContext"];
    }
  }

  v15 = self->_has;
  if ((v15 & 8) != 0)
  {
    v16 = [(HALSchemaHALDevice *)self powerState]- 1;
    if (v16 > 2)
    {
      v17 = @"HALPOWERSTATE_UNKNOWN";
    }

    else
    {
      v17 = off_1E78D7CC8[v16];
    }

    [dictionary setObject:v17 forKeyedSubscript:@"powerState"];
    v15 = self->_has;
  }

  if ((v15 & 4) != 0)
  {
    v18 = [(HALSchemaHALDevice *)self siriInputLocale]- 1;
    if (v18 > 0x3D)
    {
      v19 = @"LOCALE_UNKNOWN_LOCALE";
    }

    else
    {
      v19 = off_1E78D7CE0[v18];
    }

    [dictionary setObject:v19 forKeyedSubscript:@"siriInputLocale"];
  }

  if (self->_systemBuild)
  {
    systemBuild = [(HALSchemaHALDevice *)self systemBuild];
    v21 = [systemBuild copy];
    [dictionary setObject:v21 forKeyedSubscript:@"systemBuild"];
  }

  if (self->_timerContext)
  {
    timerContext = [(HALSchemaHALDevice *)self timerContext];
    dictionaryRepresentation3 = [timerContext dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"timerContext"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"timerContext"];
    }
  }

  if (self->_voiceTriggerContext)
  {
    voiceTriggerContext = [(HALSchemaHALDevice *)self voiceTriggerContext];
    dictionaryRepresentation4 = [voiceTriggerContext dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"voiceTriggerContext"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"voiceTriggerContext"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_deviceProximity;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_deviceFamily;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = [(NSString *)self->_systemBuild hash];
  if ((*&self->_has & 4) != 0)
  {
    v6 = 2654435761 * self->_siriInputLocale;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(HALSchemaHALMediaPlayerContext *)self->_mediaPlayerContext hash];
  v8 = [(HALSchemaHALAlarmContext *)self->_alarmContext hash];
  v9 = [(HALSchemaHALTimerContext *)self->_timerContext hash];
  v10 = [(HALSchemaHALVoiceTriggerContext *)self->_voiceTriggerContext hash];
  if ((*&self->_has & 8) != 0)
  {
    v11 = 2654435761 * self->_powerState;
  }

  else
  {
    v11 = 0;
  }

  return v4 ^ v3 ^ v6 ^ v5 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_37;
  }

  has = self->_has;
  v6 = equalCopy[68];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_37;
  }

  if (*&has)
  {
    deviceProximity = self->_deviceProximity;
    if (deviceProximity != [equalCopy deviceProximity])
    {
      goto LABEL_37;
    }

    has = self->_has;
    v6 = equalCopy[68];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_37;
  }

  if (v8)
  {
    deviceFamily = self->_deviceFamily;
    if (deviceFamily != [equalCopy deviceFamily])
    {
      goto LABEL_37;
    }
  }

  systemBuild = [(HALSchemaHALDevice *)self systemBuild];
  systemBuild2 = [equalCopy systemBuild];
  if ((systemBuild != 0) == (systemBuild2 == 0))
  {
    goto LABEL_36;
  }

  systemBuild3 = [(HALSchemaHALDevice *)self systemBuild];
  if (systemBuild3)
  {
    v13 = systemBuild3;
    systemBuild4 = [(HALSchemaHALDevice *)self systemBuild];
    systemBuild5 = [equalCopy systemBuild];
    v16 = [systemBuild4 isEqual:systemBuild5];

    if (!v16)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  v17 = (*&self->_has >> 2) & 1;
  if (v17 != ((equalCopy[68] >> 2) & 1))
  {
    goto LABEL_37;
  }

  if (v17)
  {
    siriInputLocale = self->_siriInputLocale;
    if (siriInputLocale != [equalCopy siriInputLocale])
    {
      goto LABEL_37;
    }
  }

  systemBuild = [(HALSchemaHALDevice *)self mediaPlayerContext];
  systemBuild2 = [equalCopy mediaPlayerContext];
  if ((systemBuild != 0) == (systemBuild2 == 0))
  {
    goto LABEL_36;
  }

  mediaPlayerContext = [(HALSchemaHALDevice *)self mediaPlayerContext];
  if (mediaPlayerContext)
  {
    v20 = mediaPlayerContext;
    mediaPlayerContext2 = [(HALSchemaHALDevice *)self mediaPlayerContext];
    mediaPlayerContext3 = [equalCopy mediaPlayerContext];
    v23 = [mediaPlayerContext2 isEqual:mediaPlayerContext3];

    if (!v23)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  systemBuild = [(HALSchemaHALDevice *)self alarmContext];
  systemBuild2 = [equalCopy alarmContext];
  if ((systemBuild != 0) == (systemBuild2 == 0))
  {
    goto LABEL_36;
  }

  alarmContext = [(HALSchemaHALDevice *)self alarmContext];
  if (alarmContext)
  {
    v25 = alarmContext;
    alarmContext2 = [(HALSchemaHALDevice *)self alarmContext];
    alarmContext3 = [equalCopy alarmContext];
    v28 = [alarmContext2 isEqual:alarmContext3];

    if (!v28)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  systemBuild = [(HALSchemaHALDevice *)self timerContext];
  systemBuild2 = [equalCopy timerContext];
  if ((systemBuild != 0) == (systemBuild2 == 0))
  {
    goto LABEL_36;
  }

  timerContext = [(HALSchemaHALDevice *)self timerContext];
  if (timerContext)
  {
    v30 = timerContext;
    timerContext2 = [(HALSchemaHALDevice *)self timerContext];
    timerContext3 = [equalCopy timerContext];
    v33 = [timerContext2 isEqual:timerContext3];

    if (!v33)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  systemBuild = [(HALSchemaHALDevice *)self voiceTriggerContext];
  systemBuild2 = [equalCopy voiceTriggerContext];
  if ((systemBuild != 0) == (systemBuild2 == 0))
  {
LABEL_36:

    goto LABEL_37;
  }

  voiceTriggerContext = [(HALSchemaHALDevice *)self voiceTriggerContext];
  if (voiceTriggerContext)
  {
    v35 = voiceTriggerContext;
    voiceTriggerContext2 = [(HALSchemaHALDevice *)self voiceTriggerContext];
    voiceTriggerContext3 = [equalCopy voiceTriggerContext];
    v38 = [voiceTriggerContext2 isEqual:voiceTriggerContext3];

    if (!v38)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  v41 = (*&self->_has >> 3) & 1;
  if (v41 == ((equalCopy[68] >> 3) & 1))
  {
    if (!v41 || (powerState = self->_powerState, powerState == [equalCopy powerState]))
    {
      v39 = 1;
      goto LABEL_38;
    }
  }

LABEL_37:
  v39 = 0;
LABEL_38:

  return v39;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  systemBuild = [(HALSchemaHALDevice *)self systemBuild];

  if (systemBuild)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  mediaPlayerContext = [(HALSchemaHALDevice *)self mediaPlayerContext];

  if (mediaPlayerContext)
  {
    mediaPlayerContext2 = [(HALSchemaHALDevice *)self mediaPlayerContext];
    PBDataWriterWriteSubmessage();
  }

  alarmContext = [(HALSchemaHALDevice *)self alarmContext];

  if (alarmContext)
  {
    alarmContext2 = [(HALSchemaHALDevice *)self alarmContext];
    PBDataWriterWriteSubmessage();
  }

  timerContext = [(HALSchemaHALDevice *)self timerContext];

  if (timerContext)
  {
    timerContext2 = [(HALSchemaHALDevice *)self timerContext];
    PBDataWriterWriteSubmessage();
  }

  voiceTriggerContext = [(HALSchemaHALDevice *)self voiceTriggerContext];

  if (voiceTriggerContext)
  {
    voiceTriggerContext2 = [(HALSchemaHALDevice *)self voiceTriggerContext];
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 8) != 0)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (void)setHasPowerState:(BOOL)state
{
  if (state)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasSiriInputLocale:(BOOL)locale
{
  if (locale)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasDeviceFamily:(BOOL)family
{
  if (family)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v19.receiver = self;
  v19.super_class = HALSchemaHALDevice;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:policyCopy];
  mediaPlayerContext = [(HALSchemaHALDevice *)self mediaPlayerContext];
  v7 = [mediaPlayerContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(HALSchemaHALDevice *)self deleteMediaPlayerContext];
  }

  alarmContext = [(HALSchemaHALDevice *)self alarmContext];
  v10 = [alarmContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(HALSchemaHALDevice *)self deleteAlarmContext];
  }

  timerContext = [(HALSchemaHALDevice *)self timerContext];
  v13 = [timerContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(HALSchemaHALDevice *)self deleteTimerContext];
  }

  voiceTriggerContext = [(HALSchemaHALDevice *)self voiceTriggerContext];
  v16 = [voiceTriggerContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(HALSchemaHALDevice *)self deleteVoiceTriggerContext];
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