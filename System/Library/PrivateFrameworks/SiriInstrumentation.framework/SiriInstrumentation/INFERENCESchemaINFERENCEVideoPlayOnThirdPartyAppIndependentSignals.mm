@interface INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppIndependentSignals
- (BOOL)isEqual:(id)a3;
- (INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppIndependentSignals)initWithDictionary:(id)a3;
- (INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppIndependentSignals)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasBucketedDeviceMotionState:(BOOL)a3;
- (void)setHasClientHourOfDay:(BOOL)a3;
- (void)setHasClientLanguage:(BOOL)a3;
- (void)setHasClientLocale:(BOOL)a3;
- (void)setHasClientRegion:(BOOL)a3;
- (void)setHasDeviceClass:(BOOL)a3;
- (void)setHasDeviceMotionState:(BOOL)a3;
- (void)setHasIntentType:(BOOL)a3;
- (void)setHasNowPlayingState:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppIndependentSignals

- (INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppIndependentSignals)initWithDictionary:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppIndependentSignals;
  v5 = [(INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppIndependentSignals *)&v22 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"isDeviceLockStatus"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppIndependentSignals setIsDeviceLockStatus:](v5, "setIsDeviceLockStatus:", [v6 BOOLValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"deviceMotionState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppIndependentSignals setDeviceMotionState:](v5, "setDeviceMotionState:", [v7 intValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"intentType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppIndependentSignals setIntentType:](v5, "setIntentType:", [v8 intValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"nowPlayingState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppIndependentSignals setNowPlayingState:](v5, "setNowPlayingState:", [v9 intValue]);
    }

    v19 = v9;
    v10 = [v4 objectForKeyedSubscript:@"deviceClass"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppIndependentSignals setDeviceClass:](v5, "setDeviceClass:", [v10 intValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"clientHourOfDay"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppIndependentSignals setClientHourOfDay:](v5, "setClientHourOfDay:", [v11 intValue]);
    }

    v12 = [v4 objectForKeyedSubscript:@"clientLocale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppIndependentSignals setClientLocale:](v5, "setClientLocale:", [v12 longLongValue]);
    }

    v20 = v8;
    v21 = v6;
    v13 = [v4 objectForKeyedSubscript:@"clientLanguage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppIndependentSignals setClientLanguage:](v5, "setClientLanguage:", [v13 longLongValue]);
    }

    v14 = v7;
    v15 = [v4 objectForKeyedSubscript:@"clientRegion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppIndependentSignals setClientRegion:](v5, "setClientRegion:", [v15 longLongValue]);
    }

    v16 = [v4 objectForKeyedSubscript:@"bucketedDeviceMotionState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppIndependentSignals setBucketedDeviceMotionState:](v5, "setBucketedDeviceMotionState:", [v16 intValue]);
    }

    v17 = v5;
  }

  return v5;
}

- (INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppIndependentSignals)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppIndependentSignals *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppIndependentSignals *)self dictionaryRepresentation];
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
  has = self->_has;
  if ((has & 0x200) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppIndependentSignals bucketedDeviceMotionState](self, "bucketedDeviceMotionState")}];
    [v3 setObject:v7 forKeyedSubscript:@"bucketedDeviceMotionState"];

    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppIndependentSignals clientHourOfDay](self, "clientHourOfDay")}];
  [v3 setObject:v8 forKeyedSubscript:@"clientHourOfDay"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_4:
    if ((has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  v9 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppIndependentSignals clientLanguage](self, "clientLanguage")}];
  [v3 setObject:v9 forKeyedSubscript:@"clientLanguage"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_5:
    if ((has & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  v10 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppIndependentSignals clientLocale](self, "clientLocale")}];
  [v3 setObject:v10 forKeyedSubscript:@"clientLocale"];

  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  v11 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppIndependentSignals clientRegion](self, "clientRegion")}];
  [v3 setObject:v11 forKeyedSubscript:@"clientRegion"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  v12 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppIndependentSignals deviceClass](self, "deviceClass")}];
  [v3 setObject:v12 forKeyedSubscript:@"deviceClass"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_8:
    if ((has & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  v13 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppIndependentSignals deviceMotionState](self, "deviceMotionState")}];
  [v3 setObject:v13 forKeyedSubscript:@"deviceMotionState"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_9:
    if ((has & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  v14 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppIndependentSignals intentType](self, "intentType")}];
  [v3 setObject:v14 forKeyedSubscript:@"intentType"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_10:
    if ((has & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_23:
  v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppIndependentSignals isDeviceLockStatus](self, "isDeviceLockStatus")}];
  [v3 setObject:v15 forKeyedSubscript:@"isDeviceLockStatus"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_11:
    v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppIndependentSignals nowPlayingState](self, "nowPlayingState")}];
    [v3 setObject:v5 forKeyedSubscript:@"nowPlayingState"];
  }

LABEL_12:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  has = self->_has;
  if (has)
  {
    v3 = 2654435761 * self->_isDeviceLockStatus;
    if ((has & 2) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_deviceMotionState;
      if ((has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v3 = 0;
    if ((has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((has & 4) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_intentType;
    if ((has & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v5 = 0;
  if ((has & 8) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_nowPlayingState;
    if ((has & 0x10) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v6 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_deviceClass;
    if ((has & 0x20) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v7 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_clientHourOfDay;
    if ((has & 0x40) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  v8 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_8:
    v9 = 2654435761 * self->_clientLocale;
    if ((has & 0x80) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  v9 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_9:
    v10 = 2654435761 * self->_clientLanguage;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    v11 = 0;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_11;
    }

LABEL_21:
    v12 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
  }

LABEL_19:
  v10 = 0;
  if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  v11 = 2654435761 * self->_clientRegion;
  if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  v12 = 2654435761 * self->_bucketedDeviceMotionState;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_42;
  }

  has = self->_has;
  v6 = v4[30];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_42;
  }

  if (*&has)
  {
    isDeviceLockStatus = self->_isDeviceLockStatus;
    if (isDeviceLockStatus != [v4 isDeviceLockStatus])
    {
      goto LABEL_42;
    }

    has = self->_has;
    v6 = v4[30];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_42;
  }

  if (v8)
  {
    deviceMotionState = self->_deviceMotionState;
    if (deviceMotionState != [v4 deviceMotionState])
    {
      goto LABEL_42;
    }

    has = self->_has;
    v6 = v4[30];
  }

  v10 = (*&has >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_42;
  }

  if (v10)
  {
    intentType = self->_intentType;
    if (intentType != [v4 intentType])
    {
      goto LABEL_42;
    }

    has = self->_has;
    v6 = v4[30];
  }

  v12 = (*&has >> 3) & 1;
  if (v12 != ((v6 >> 3) & 1))
  {
    goto LABEL_42;
  }

  if (v12)
  {
    nowPlayingState = self->_nowPlayingState;
    if (nowPlayingState != [v4 nowPlayingState])
    {
      goto LABEL_42;
    }

    has = self->_has;
    v6 = v4[30];
  }

  v14 = (*&has >> 4) & 1;
  if (v14 != ((v6 >> 4) & 1))
  {
    goto LABEL_42;
  }

  if (v14)
  {
    deviceClass = self->_deviceClass;
    if (deviceClass != [v4 deviceClass])
    {
      goto LABEL_42;
    }

    has = self->_has;
    v6 = v4[30];
  }

  v16 = (*&has >> 5) & 1;
  if (v16 != ((v6 >> 5) & 1))
  {
    goto LABEL_42;
  }

  if (v16)
  {
    clientHourOfDay = self->_clientHourOfDay;
    if (clientHourOfDay != [v4 clientHourOfDay])
    {
      goto LABEL_42;
    }

    has = self->_has;
    v6 = v4[30];
  }

  v18 = (*&has >> 6) & 1;
  if (v18 != ((v6 >> 6) & 1))
  {
    goto LABEL_42;
  }

  if (v18)
  {
    clientLocale = self->_clientLocale;
    if (clientLocale != [v4 clientLocale])
    {
      goto LABEL_42;
    }

    has = self->_has;
    v6 = v4[30];
  }

  v20 = (*&has >> 7) & 1;
  if (v20 != ((v6 >> 7) & 1))
  {
    goto LABEL_42;
  }

  if (v20)
  {
    clientLanguage = self->_clientLanguage;
    if (clientLanguage != [v4 clientLanguage])
    {
      goto LABEL_42;
    }

    has = self->_has;
    v6 = v4[30];
  }

  v22 = (*&has >> 8) & 1;
  if (v22 != ((v6 >> 8) & 1))
  {
    goto LABEL_42;
  }

  if (v22)
  {
    clientRegion = self->_clientRegion;
    if (clientRegion == [v4 clientRegion])
    {
      has = self->_has;
      v6 = v4[30];
      goto LABEL_38;
    }

LABEL_42:
    v26 = 0;
    goto LABEL_43;
  }

LABEL_38:
  v24 = (*&has >> 9) & 1;
  if (v24 != ((v6 >> 9) & 1))
  {
    goto LABEL_42;
  }

  if (v24)
  {
    bucketedDeviceMotionState = self->_bucketedDeviceMotionState;
    if (bucketedDeviceMotionState != [v4 bucketedDeviceMotionState])
    {
      goto LABEL_42;
    }
  }

  v26 = 1;
LABEL_43:

  return v26;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteBOOLField();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_9:
    if ((has & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_10:
    if ((has & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_23:
  PBDataWriterWriteInt64Field();
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_11:
    PBDataWriterWriteInt32Field();
  }

LABEL_12:
}

- (void)setHasBucketedDeviceMotionState:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasClientRegion:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasClientLanguage:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasClientLocale:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasClientHourOfDay:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasDeviceClass:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasNowPlayingState:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasIntentType:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasDeviceMotionState:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end