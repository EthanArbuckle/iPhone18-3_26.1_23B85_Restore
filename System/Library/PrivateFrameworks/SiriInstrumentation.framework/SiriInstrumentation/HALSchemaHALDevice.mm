@interface HALSchemaHALDevice
- (BOOL)isEqual:(id)a3;
- (HALSchemaHALDevice)initWithDictionary:(id)a3;
- (HALSchemaHALDevice)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasDeviceFamily:(BOOL)a3;
- (void)setHasPowerState:(BOOL)a3;
- (void)setHasSiriInputLocale:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HALSchemaHALDevice

- (HALSchemaHALDevice)initWithDictionary:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = HALSchemaHALDevice;
  v5 = [(HALSchemaHALDevice *)&v24 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"deviceProximity"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[HALSchemaHALDevice setDeviceProximity:](v5, "setDeviceProximity:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"deviceFamily"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[HALSchemaHALDevice setDeviceFamily:](v5, "setDeviceFamily:", [v7 intValue]);
    }

    v23 = v6;
    v8 = [v4 objectForKeyedSubscript:@"systemBuild"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(HALSchemaHALDevice *)v5 setSystemBuild:v9];
    }

    v10 = [v4 objectForKeyedSubscript:{@"siriInputLocale", v7}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[HALSchemaHALDevice setSiriInputLocale:](v5, "setSiriInputLocale:", [v10 intValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"mediaPlayerContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [[HALSchemaHALMediaPlayerContext alloc] initWithDictionary:v11];
      [(HALSchemaHALDevice *)v5 setMediaPlayerContext:v12];
    }

    v13 = [v4 objectForKeyedSubscript:@"alarmContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [[HALSchemaHALAlarmContext alloc] initWithDictionary:v13];
      [(HALSchemaHALDevice *)v5 setAlarmContext:v14];
    }

    v15 = [v4 objectForKeyedSubscript:@"timerContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [[HALSchemaHALTimerContext alloc] initWithDictionary:v15];
      [(HALSchemaHALDevice *)v5 setTimerContext:v16];
    }

    v17 = [v4 objectForKeyedSubscript:@"voiceTriggerContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [[HALSchemaHALVoiceTriggerContext alloc] initWithDictionary:v17];
      [(HALSchemaHALDevice *)v5 setVoiceTriggerContext:v18];
    }

    v19 = [v4 objectForKeyedSubscript:@"powerState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[HALSchemaHALDevice setPowerState:](v5, "setPowerState:", [v19 intValue]);
    }

    v20 = v5;
  }

  return v5;
}

- (HALSchemaHALDevice)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(HALSchemaHALDevice *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(HALSchemaHALDevice *)self dictionaryRepresentation];
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
  if (self->_alarmContext)
  {
    v4 = [(HALSchemaHALDevice *)self alarmContext];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"alarmContext"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"alarmContext"];
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

    [v3 setObject:v9 forKeyedSubscript:@"deviceFamily"];
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

    [v3 setObject:v11 forKeyedSubscript:@"deviceProximity"];
  }

  if (self->_mediaPlayerContext)
  {
    v12 = [(HALSchemaHALDevice *)self mediaPlayerContext];
    v13 = [v12 dictionaryRepresentation];
    if (v13)
    {
      [v3 setObject:v13 forKeyedSubscript:@"mediaPlayerContext"];
    }

    else
    {
      v14 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v14 forKeyedSubscript:@"mediaPlayerContext"];
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

    [v3 setObject:v17 forKeyedSubscript:@"powerState"];
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

    [v3 setObject:v19 forKeyedSubscript:@"siriInputLocale"];
  }

  if (self->_systemBuild)
  {
    v20 = [(HALSchemaHALDevice *)self systemBuild];
    v21 = [v20 copy];
    [v3 setObject:v21 forKeyedSubscript:@"systemBuild"];
  }

  if (self->_timerContext)
  {
    v22 = [(HALSchemaHALDevice *)self timerContext];
    v23 = [v22 dictionaryRepresentation];
    if (v23)
    {
      [v3 setObject:v23 forKeyedSubscript:@"timerContext"];
    }

    else
    {
      v24 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v24 forKeyedSubscript:@"timerContext"];
    }
  }

  if (self->_voiceTriggerContext)
  {
    v25 = [(HALSchemaHALDevice *)self voiceTriggerContext];
    v26 = [v25 dictionaryRepresentation];
    if (v26)
    {
      [v3 setObject:v26 forKeyedSubscript:@"voiceTriggerContext"];
    }

    else
    {
      v27 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v27 forKeyedSubscript:@"voiceTriggerContext"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_37;
  }

  has = self->_has;
  v6 = v4[68];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_37;
  }

  if (*&has)
  {
    deviceProximity = self->_deviceProximity;
    if (deviceProximity != [v4 deviceProximity])
    {
      goto LABEL_37;
    }

    has = self->_has;
    v6 = v4[68];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_37;
  }

  if (v8)
  {
    deviceFamily = self->_deviceFamily;
    if (deviceFamily != [v4 deviceFamily])
    {
      goto LABEL_37;
    }
  }

  v10 = [(HALSchemaHALDevice *)self systemBuild];
  v11 = [v4 systemBuild];
  if ((v10 != 0) == (v11 == 0))
  {
    goto LABEL_36;
  }

  v12 = [(HALSchemaHALDevice *)self systemBuild];
  if (v12)
  {
    v13 = v12;
    v14 = [(HALSchemaHALDevice *)self systemBuild];
    v15 = [v4 systemBuild];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  v17 = (*&self->_has >> 2) & 1;
  if (v17 != ((v4[68] >> 2) & 1))
  {
    goto LABEL_37;
  }

  if (v17)
  {
    siriInputLocale = self->_siriInputLocale;
    if (siriInputLocale != [v4 siriInputLocale])
    {
      goto LABEL_37;
    }
  }

  v10 = [(HALSchemaHALDevice *)self mediaPlayerContext];
  v11 = [v4 mediaPlayerContext];
  if ((v10 != 0) == (v11 == 0))
  {
    goto LABEL_36;
  }

  v19 = [(HALSchemaHALDevice *)self mediaPlayerContext];
  if (v19)
  {
    v20 = v19;
    v21 = [(HALSchemaHALDevice *)self mediaPlayerContext];
    v22 = [v4 mediaPlayerContext];
    v23 = [v21 isEqual:v22];

    if (!v23)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  v10 = [(HALSchemaHALDevice *)self alarmContext];
  v11 = [v4 alarmContext];
  if ((v10 != 0) == (v11 == 0))
  {
    goto LABEL_36;
  }

  v24 = [(HALSchemaHALDevice *)self alarmContext];
  if (v24)
  {
    v25 = v24;
    v26 = [(HALSchemaHALDevice *)self alarmContext];
    v27 = [v4 alarmContext];
    v28 = [v26 isEqual:v27];

    if (!v28)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  v10 = [(HALSchemaHALDevice *)self timerContext];
  v11 = [v4 timerContext];
  if ((v10 != 0) == (v11 == 0))
  {
    goto LABEL_36;
  }

  v29 = [(HALSchemaHALDevice *)self timerContext];
  if (v29)
  {
    v30 = v29;
    v31 = [(HALSchemaHALDevice *)self timerContext];
    v32 = [v4 timerContext];
    v33 = [v31 isEqual:v32];

    if (!v33)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  v10 = [(HALSchemaHALDevice *)self voiceTriggerContext];
  v11 = [v4 voiceTriggerContext];
  if ((v10 != 0) == (v11 == 0))
  {
LABEL_36:

    goto LABEL_37;
  }

  v34 = [(HALSchemaHALDevice *)self voiceTriggerContext];
  if (v34)
  {
    v35 = v34;
    v36 = [(HALSchemaHALDevice *)self voiceTriggerContext];
    v37 = [v4 voiceTriggerContext];
    v38 = [v36 isEqual:v37];

    if (!v38)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  v41 = (*&self->_has >> 3) & 1;
  if (v41 == ((v4[68] >> 3) & 1))
  {
    if (!v41 || (powerState = self->_powerState, powerState == [v4 powerState]))
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

- (void)writeTo:(id)a3
{
  v14 = a3;
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

  v5 = [(HALSchemaHALDevice *)self systemBuild];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  v6 = [(HALSchemaHALDevice *)self mediaPlayerContext];

  if (v6)
  {
    v7 = [(HALSchemaHALDevice *)self mediaPlayerContext];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(HALSchemaHALDevice *)self alarmContext];

  if (v8)
  {
    v9 = [(HALSchemaHALDevice *)self alarmContext];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(HALSchemaHALDevice *)self timerContext];

  if (v10)
  {
    v11 = [(HALSchemaHALDevice *)self timerContext];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(HALSchemaHALDevice *)self voiceTriggerContext];

  if (v12)
  {
    v13 = [(HALSchemaHALDevice *)self voiceTriggerContext];
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 8) != 0)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (void)setHasPowerState:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasSiriInputLocale:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasDeviceFamily:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = HALSchemaHALDevice;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:v4];
  v6 = [(HALSchemaHALDevice *)self mediaPlayerContext];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(HALSchemaHALDevice *)self deleteMediaPlayerContext];
  }

  v9 = [(HALSchemaHALDevice *)self alarmContext];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(HALSchemaHALDevice *)self deleteAlarmContext];
  }

  v12 = [(HALSchemaHALDevice *)self timerContext];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(HALSchemaHALDevice *)self deleteTimerContext];
  }

  v15 = [(HALSchemaHALDevice *)self voiceTriggerContext];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
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