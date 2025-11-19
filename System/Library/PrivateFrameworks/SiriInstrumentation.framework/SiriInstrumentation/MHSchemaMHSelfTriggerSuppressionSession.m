@interface MHSchemaMHSelfTriggerSuppressionSession
- (BOOL)isEqual:(id)a3;
- (MHSchemaMHSelfTriggerSuppressionSession)initWithDictionary:(id)a3;
- (MHSchemaMHSelfTriggerSuppressionSession)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAudioSource:(BOOL)a3;
- (void)setHasIsBluetoothSpeakerActive:(BOOL)a3;
- (void)setHasIsBuiltInSpeakerActive:(BOOL)a3;
- (void)setHasSessionDurationInSeconds:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation MHSchemaMHSelfTriggerSuppressionSession

- (MHSchemaMHSelfTriggerSuppressionSession)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = MHSchemaMHSelfTriggerSuppressionSession;
  v5 = [(MHSchemaMHSelfTriggerSuppressionSession *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"numSelfTriggersDetectedInSession"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHSelfTriggerSuppressionSession setNumSelfTriggersDetectedInSession:](v5, "setNumSelfTriggersDetectedInSession:", [v6 unsignedIntValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"sessionDurationInSeconds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 doubleValue];
      [(MHSchemaMHSelfTriggerSuppressionSession *)v5 setSessionDurationInSeconds:?];
    }

    v8 = [v4 objectForKeyedSubscript:@"audioSource"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHSelfTriggerSuppressionSession setAudioSource:](v5, "setAudioSource:", [v8 intValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"isBluetoothSpeakerActive"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHSelfTriggerSuppressionSession setIsBluetoothSpeakerActive:](v5, "setIsBluetoothSpeakerActive:", [v9 BOOLValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"isBuiltInSpeakerActive"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHSelfTriggerSuppressionSession setIsBuiltInSpeakerActive:](v5, "setIsBuiltInSpeakerActive:", [v10 BOOLValue]);
    }

    v11 = v5;
  }

  return v5;
}

- (MHSchemaMHSelfTriggerSuppressionSession)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(MHSchemaMHSelfTriggerSuppressionSession *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(MHSchemaMHSelfTriggerSuppressionSession *)self dictionaryRepresentation];
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
  v4 = *(&self->_isBuiltInSpeakerActive + 1);
  if ((v4 & 4) != 0)
  {
    v5 = [(MHSchemaMHSelfTriggerSuppressionSession *)self audioSource];
    v6 = @"MHSELFTRIGGERSUPPRESSIONAUDIOSOURCE_UNKNOWN";
    if (v5 == 1)
    {
      v6 = @"MHSELFTRIGGERSUPPRESSIONAUDIOSOURCE_AUDIO_VIDEO_VOICE_CONTROLLER";
    }

    if (v5 == 2)
    {
      v7 = @"MHSELFTRIGGERSUPPRESSIONAUDIOSOURCE_AUDIO_TAP";
    }

    else
    {
      v7 = v6;
    }

    [v3 setObject:v7 forKeyedSubscript:@"audioSource"];
    v4 = *(&self->_isBuiltInSpeakerActive + 1);
  }

  if ((v4 & 8) != 0)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[MHSchemaMHSelfTriggerSuppressionSession isBluetoothSpeakerActive](self, "isBluetoothSpeakerActive")}];
    [v3 setObject:v11 forKeyedSubscript:@"isBluetoothSpeakerActive"];

    v4 = *(&self->_isBuiltInSpeakerActive + 1);
    if ((v4 & 0x10) == 0)
    {
LABEL_10:
      if ((v4 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_18;
    }
  }

  else if ((v4 & 0x10) == 0)
  {
    goto LABEL_10;
  }

  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[MHSchemaMHSelfTriggerSuppressionSession isBuiltInSpeakerActive](self, "isBuiltInSpeakerActive")}];
  [v3 setObject:v12 forKeyedSubscript:@"isBuiltInSpeakerActive"];

  v4 = *(&self->_isBuiltInSpeakerActive + 1);
  if ((v4 & 1) == 0)
  {
LABEL_11:
    if ((v4 & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_18:
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[MHSchemaMHSelfTriggerSuppressionSession numSelfTriggersDetectedInSession](self, "numSelfTriggersDetectedInSession")}];
  [v3 setObject:v13 forKeyedSubscript:@"numSelfTriggersDetectedInSession"];

  if ((*(&self->_isBuiltInSpeakerActive + 1) & 2) != 0)
  {
LABEL_12:
    v8 = MEMORY[0x1E696AD98];
    [(MHSchemaMHSelfTriggerSuppressionSession *)self sessionDurationInSeconds];
    v9 = [v8 numberWithDouble:?];
    [v3 setObject:v9 forKeyedSubscript:@"sessionDurationInSeconds"];
  }

LABEL_13:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*(&self->_isBuiltInSpeakerActive + 1))
  {
    v4 = 2654435761 * self->_numSelfTriggersDetectedInSession;
    if ((*(&self->_isBuiltInSpeakerActive + 1) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    v8 = 0;
    goto LABEL_9;
  }

  v4 = 0;
  if ((*(&self->_isBuiltInSpeakerActive + 1) & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  sessionDurationInSeconds = self->_sessionDurationInSeconds;
  if (sessionDurationInSeconds < 0.0)
  {
    sessionDurationInSeconds = -sessionDurationInSeconds;
  }

  *v2.i64 = floor(sessionDurationInSeconds + 0.5);
  v6 = (sessionDurationInSeconds - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v7.f64[0] = NAN;
  v7.f64[1] = NAN;
  v8 = 2654435761u * *vbslq_s8(vnegq_f64(v7), v3, v2).i64;
  if (v6 >= 0.0)
  {
    if (v6 > 0.0)
    {
      v8 += v6;
    }
  }

  else
  {
    v8 -= fabs(v6);
  }

LABEL_9:
  if ((*(&self->_isBuiltInSpeakerActive + 1) & 4) == 0)
  {
    v9 = 0;
    if ((*(&self->_isBuiltInSpeakerActive + 1) & 8) != 0)
    {
      goto LABEL_11;
    }

LABEL_14:
    v10 = 0;
    if ((*(&self->_isBuiltInSpeakerActive + 1) & 0x10) != 0)
    {
      goto LABEL_12;
    }

LABEL_15:
    v11 = 0;
    return v8 ^ v4 ^ v9 ^ v10 ^ v11;
  }

  v9 = 2654435761 * self->_audioSource;
  if ((*(&self->_isBuiltInSpeakerActive + 1) & 8) == 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  v10 = 2654435761 * self->_isBluetoothSpeakerActive;
  if ((*(&self->_isBuiltInSpeakerActive + 1) & 0x10) == 0)
  {
    goto LABEL_15;
  }

LABEL_12:
  v11 = 2654435761 * self->_isBuiltInSpeakerActive;
  return v8 ^ v4 ^ v9 ^ v10 ^ v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  v5 = *(&self->_isBuiltInSpeakerActive + 1);
  v6 = v4[30];
  if ((v5 & 1) != (v6 & 1))
  {
    goto LABEL_22;
  }

  if (v5)
  {
    numSelfTriggersDetectedInSession = self->_numSelfTriggersDetectedInSession;
    if (numSelfTriggersDetectedInSession != [v4 numSelfTriggersDetectedInSession])
    {
      goto LABEL_22;
    }

    v5 = *(&self->_isBuiltInSpeakerActive + 1);
    v6 = v4[30];
  }

  v8 = (v5 >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_22;
  }

  if (v8)
  {
    sessionDurationInSeconds = self->_sessionDurationInSeconds;
    [v4 sessionDurationInSeconds];
    if (sessionDurationInSeconds != v10)
    {
      goto LABEL_22;
    }

    v5 = *(&self->_isBuiltInSpeakerActive + 1);
    v6 = v4[30];
  }

  v11 = (v5 >> 2) & 1;
  if (v11 != ((v6 >> 2) & 1))
  {
    goto LABEL_22;
  }

  if (v11)
  {
    audioSource = self->_audioSource;
    if (audioSource != [v4 audioSource])
    {
      goto LABEL_22;
    }

    v5 = *(&self->_isBuiltInSpeakerActive + 1);
    v6 = v4[30];
  }

  v13 = (v5 >> 3) & 1;
  if (v13 != ((v6 >> 3) & 1))
  {
    goto LABEL_22;
  }

  if (v13)
  {
    isBluetoothSpeakerActive = self->_isBluetoothSpeakerActive;
    if (isBluetoothSpeakerActive == [v4 isBluetoothSpeakerActive])
    {
      v5 = *(&self->_isBuiltInSpeakerActive + 1);
      v6 = v4[30];
      goto LABEL_18;
    }

LABEL_22:
    v17 = 0;
    goto LABEL_23;
  }

LABEL_18:
  v15 = (v5 >> 4) & 1;
  if (v15 != ((v6 >> 4) & 1))
  {
    goto LABEL_22;
  }

  if (v15)
  {
    isBuiltInSpeakerActive = self->_isBuiltInSpeakerActive;
    if (isBuiltInSpeakerActive != [v4 isBuiltInSpeakerActive])
    {
      goto LABEL_22;
    }
  }

  v17 = 1;
LABEL_23:

  return v17;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  v4 = *(&self->_isBuiltInSpeakerActive + 1);
  if (v4)
  {
    PBDataWriterWriteUint32Field();
    v4 = *(&self->_isBuiltInSpeakerActive + 1);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(&self->_isBuiltInSpeakerActive + 1) & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteDoubleField();
  v4 = *(&self->_isBuiltInSpeakerActive + 1);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  PBDataWriterWriteInt32Field();
  v4 = *(&self->_isBuiltInSpeakerActive + 1);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  PBDataWriterWriteBOOLField();
  if ((*(&self->_isBuiltInSpeakerActive + 1) & 0x10) != 0)
  {
LABEL_6:
    PBDataWriterWriteBOOLField();
  }

LABEL_7:
}

- (void)setHasIsBuiltInSpeakerActive:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isBuiltInSpeakerActive + 1) = *(&self->_isBuiltInSpeakerActive + 1) & 0xEF | v3;
}

- (void)setHasIsBluetoothSpeakerActive:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isBuiltInSpeakerActive + 1) = *(&self->_isBuiltInSpeakerActive + 1) & 0xF7 | v3;
}

- (void)setHasAudioSource:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isBuiltInSpeakerActive + 1) = *(&self->_isBuiltInSpeakerActive + 1) & 0xFB | v3;
}

- (void)setHasSessionDurationInSeconds:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isBuiltInSpeakerActive + 1) = *(&self->_isBuiltInSpeakerActive + 1) & 0xFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end