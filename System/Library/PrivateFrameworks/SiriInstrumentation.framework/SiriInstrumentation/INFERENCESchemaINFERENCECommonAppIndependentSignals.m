@interface INFERENCESchemaINFERENCECommonAppIndependentSignals
- (BOOL)isEqual:(id)a3;
- (INFERENCESchemaINFERENCECommonAppIndependentSignals)initWithDictionary:(id)a3;
- (INFERENCESchemaINFERENCECommonAppIndependentSignals)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAppResolutionType:(BOOL)a3;
- (void)setHasAppSelectionUses:(BOOL)a3;
- (void)setHasClientDayOfWeek:(BOOL)a3;
- (void)setHasIsClientDaylight:(BOOL)a3;
- (void)setHasModelVersion:(BOOL)a3;
- (void)setHasRawClientHourOfDay:(BOOL)a3;
- (void)setHasRawCountry:(BOOL)a3;
- (void)setHasRawLocale:(BOOL)a3;
- (void)setHasRawRequestDeviceCategory:(BOOL)a3;
- (void)setHasRawStateOrProvince:(BOOL)a3;
- (void)setHasSirikitResponseCode:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation INFERENCESchemaINFERENCECommonAppIndependentSignals

- (INFERENCESchemaINFERENCECommonAppIndependentSignals)initWithDictionary:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = INFERENCESchemaINFERENCECommonAppIndependentSignals;
  v5 = [(INFERENCESchemaINFERENCECommonAppIndependentSignals *)&v26 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"rawLanguage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommonAppIndependentSignals setRawLanguage:](v5, "setRawLanguage:", [v6 longLongValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"rawLocale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommonAppIndependentSignals setRawLocale:](v5, "setRawLocale:", [v7 longLongValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"rawStateOrProvince"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommonAppIndependentSignals setRawStateOrProvince:](v5, "setRawStateOrProvince:", [v8 longLongValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"rawCountry"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommonAppIndependentSignals setRawCountry:](v5, "setRawCountry:", [v9 longLongValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"rawRequestDeviceCategory"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommonAppIndependentSignals setRawRequestDeviceCategory:](v5, "setRawRequestDeviceCategory:", [v10 longLongValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"clientDayOfWeek"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommonAppIndependentSignals setClientDayOfWeek:](v5, "setClientDayOfWeek:", [v11 intValue]);
    }

    v21 = v11;
    v12 = [v4 objectForKeyedSubscript:@"rawClientHourOfDay"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommonAppIndependentSignals setRawClientHourOfDay:](v5, "setRawClientHourOfDay:", [v12 intValue]);
    }

    v25 = v6;
    v13 = [v4 objectForKeyedSubscript:@"isClientDaylight"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommonAppIndependentSignals setIsClientDaylight:](v5, "setIsClientDaylight:", [v13 BOOLValue]);
    }

    v24 = v7;
    v14 = [v4 objectForKeyedSubscript:@"appResolutionType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommonAppIndependentSignals setAppResolutionType:](v5, "setAppResolutionType:", [v14 intValue]);
    }

    v22 = v10;
    v23 = v8;
    v15 = [v4 objectForKeyedSubscript:@"sirikitResponseCode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommonAppIndependentSignals setSirikitResponseCode:](v5, "setSirikitResponseCode:", [v15 intValue]);
    }

    v16 = v9;
    v17 = [v4 objectForKeyedSubscript:@"appSelectionUses"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommonAppIndependentSignals setAppSelectionUses:](v5, "setAppSelectionUses:", [v17 intValue]);
    }

    v18 = [v4 objectForKeyedSubscript:@"modelVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommonAppIndependentSignals setModelVersion:](v5, "setModelVersion:", [v18 unsignedIntValue]);
    }

    v19 = v5;
  }

  return v5;
}

- (INFERENCESchemaINFERENCECommonAppIndependentSignals)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(INFERENCESchemaINFERENCECommonAppIndependentSignals *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(INFERENCESchemaINFERENCECommonAppIndependentSignals *)self dictionaryRepresentation];
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
  if ((has & 0x100) != 0)
  {
    v5 = [(INFERENCESchemaINFERENCECommonAppIndependentSignals *)self appResolutionType]- 1;
    if (v5 > 9)
    {
      v6 = @"INFERENCEAPPRESOLUTIONTYPE_UNKNOWN";
    }

    else
    {
      v6 = off_1E78D8868[v5];
    }

    [v3 setObject:v6 forKeyedSubscript:@"appResolutionType"];
    has = self->_has;
  }

  if ((has & 0x400) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommonAppIndependentSignals appSelectionUses](self, "appSelectionUses")}];
    [v3 setObject:v9 forKeyedSubscript:@"appSelectionUses"];

    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_8:
      if ((has & 0x80) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_23;
    }
  }

  else if ((has & 0x20) == 0)
  {
    goto LABEL_8;
  }

  v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommonAppIndependentSignals clientDayOfWeek](self, "clientDayOfWeek")}];
  [v3 setObject:v10 forKeyedSubscript:@"clientDayOfWeek"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_9:
    if ((has & 0x800) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCECommonAppIndependentSignals isClientDaylight](self, "isClientDaylight")}];
  [v3 setObject:v11 forKeyedSubscript:@"isClientDaylight"];

  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_10:
    if ((has & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[INFERENCESchemaINFERENCECommonAppIndependentSignals modelVersion](self, "modelVersion")}];
  [v3 setObject:v12 forKeyedSubscript:@"modelVersion"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_11:
    if ((has & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  v13 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommonAppIndependentSignals rawClientHourOfDay](self, "rawClientHourOfDay")}];
  [v3 setObject:v13 forKeyedSubscript:@"rawClientHourOfDay"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_12:
    if ((has & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  v14 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[INFERENCESchemaINFERENCECommonAppIndependentSignals rawCountry](self, "rawCountry")}];
  [v3 setObject:v14 forKeyedSubscript:@"rawCountry"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_13:
    if ((has & 2) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

LABEL_27:
  v15 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[INFERENCESchemaINFERENCECommonAppIndependentSignals rawLanguage](self, "rawLanguage")}];
  [v3 setObject:v15 forKeyedSubscript:@"rawLanguage"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_14:
    if ((has & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_29;
  }

LABEL_28:
  v16 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[INFERENCESchemaINFERENCECommonAppIndependentSignals rawLocale](self, "rawLocale")}];
  [v3 setObject:v16 forKeyedSubscript:@"rawLocale"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_15:
    if ((has & 4) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_30;
  }

LABEL_29:
  v17 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[INFERENCESchemaINFERENCECommonAppIndependentSignals rawRequestDeviceCategory](self, "rawRequestDeviceCategory")}];
  [v3 setObject:v17 forKeyedSubscript:@"rawRequestDeviceCategory"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_16:
    if ((has & 0x200) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_30:
  v18 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[INFERENCESchemaINFERENCECommonAppIndependentSignals rawStateOrProvince](self, "rawStateOrProvince")}];
  [v3 setObject:v18 forKeyedSubscript:@"rawStateOrProvince"];

  if ((*&self->_has & 0x200) != 0)
  {
LABEL_17:
    v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommonAppIndependentSignals sirikitResponseCode](self, "sirikitResponseCode")}];
    [v3 setObject:v7 forKeyedSubscript:@"sirikitResponseCode"];
  }

LABEL_18:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  has = self->_has;
  if (has)
  {
    v3 = 2654435761 * self->_rawLanguage;
    if ((has & 2) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_rawLocale;
      if ((has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
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
    v5 = 2654435761 * self->_rawStateOrProvince;
    if ((has & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  v5 = 0;
  if ((has & 8) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_rawCountry;
    if ((has & 0x10) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  v6 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_rawRequestDeviceCategory;
    if ((has & 0x20) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  v7 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_clientDayOfWeek;
    if ((has & 0x40) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  v8 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_8:
    v9 = 2654435761 * self->_rawClientHourOfDay;
    if ((has & 0x80) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  v9 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_9:
    v10 = 2654435761 * self->_isClientDaylight;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  v10 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_10:
    v11 = 2654435761 * self->_appResolutionType;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  v11 = 0;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_11:
    v12 = 2654435761 * self->_sirikitResponseCode;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_12;
    }

LABEL_24:
    v13 = 0;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_13;
    }

LABEL_25:
    v14 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14;
  }

LABEL_23:
  v12 = 0;
  if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_24;
  }

LABEL_12:
  v13 = 2654435761 * self->_appSelectionUses;
  if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_25;
  }

LABEL_13:
  v14 = 2654435761 * self->_modelVersion;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_50;
  }

  has = self->_has;
  v6 = v4[38];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_50;
  }

  if (*&has)
  {
    rawLanguage = self->_rawLanguage;
    if (rawLanguage != [v4 rawLanguage])
    {
      goto LABEL_50;
    }

    has = self->_has;
    v6 = v4[38];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_50;
  }

  if (v8)
  {
    rawLocale = self->_rawLocale;
    if (rawLocale != [v4 rawLocale])
    {
      goto LABEL_50;
    }

    has = self->_has;
    v6 = v4[38];
  }

  v10 = (*&has >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_50;
  }

  if (v10)
  {
    rawStateOrProvince = self->_rawStateOrProvince;
    if (rawStateOrProvince != [v4 rawStateOrProvince])
    {
      goto LABEL_50;
    }

    has = self->_has;
    v6 = v4[38];
  }

  v12 = (*&has >> 3) & 1;
  if (v12 != ((v6 >> 3) & 1))
  {
    goto LABEL_50;
  }

  if (v12)
  {
    rawCountry = self->_rawCountry;
    if (rawCountry != [v4 rawCountry])
    {
      goto LABEL_50;
    }

    has = self->_has;
    v6 = v4[38];
  }

  v14 = (*&has >> 4) & 1;
  if (v14 != ((v6 >> 4) & 1))
  {
    goto LABEL_50;
  }

  if (v14)
  {
    rawRequestDeviceCategory = self->_rawRequestDeviceCategory;
    if (rawRequestDeviceCategory != [v4 rawRequestDeviceCategory])
    {
      goto LABEL_50;
    }

    has = self->_has;
    v6 = v4[38];
  }

  v16 = (*&has >> 5) & 1;
  if (v16 != ((v6 >> 5) & 1))
  {
    goto LABEL_50;
  }

  if (v16)
  {
    clientDayOfWeek = self->_clientDayOfWeek;
    if (clientDayOfWeek != [v4 clientDayOfWeek])
    {
      goto LABEL_50;
    }

    has = self->_has;
    v6 = v4[38];
  }

  v18 = (*&has >> 6) & 1;
  if (v18 != ((v6 >> 6) & 1))
  {
    goto LABEL_50;
  }

  if (v18)
  {
    rawClientHourOfDay = self->_rawClientHourOfDay;
    if (rawClientHourOfDay != [v4 rawClientHourOfDay])
    {
      goto LABEL_50;
    }

    has = self->_has;
    v6 = v4[38];
  }

  v20 = (*&has >> 7) & 1;
  if (v20 != ((v6 >> 7) & 1))
  {
    goto LABEL_50;
  }

  if (v20)
  {
    isClientDaylight = self->_isClientDaylight;
    if (isClientDaylight != [v4 isClientDaylight])
    {
      goto LABEL_50;
    }

    has = self->_has;
    v6 = v4[38];
  }

  v22 = (*&has >> 8) & 1;
  if (v22 != ((v6 >> 8) & 1))
  {
    goto LABEL_50;
  }

  if (v22)
  {
    appResolutionType = self->_appResolutionType;
    if (appResolutionType != [v4 appResolutionType])
    {
      goto LABEL_50;
    }

    has = self->_has;
    v6 = v4[38];
  }

  v24 = (*&has >> 9) & 1;
  if (v24 != ((v6 >> 9) & 1))
  {
    goto LABEL_50;
  }

  if (v24)
  {
    sirikitResponseCode = self->_sirikitResponseCode;
    if (sirikitResponseCode != [v4 sirikitResponseCode])
    {
      goto LABEL_50;
    }

    has = self->_has;
    v6 = v4[38];
  }

  v26 = (*&has >> 10) & 1;
  if (v26 != ((v6 >> 10) & 1))
  {
    goto LABEL_50;
  }

  if (v26)
  {
    appSelectionUses = self->_appSelectionUses;
    if (appSelectionUses == [v4 appSelectionUses])
    {
      has = self->_has;
      v6 = v4[38];
      goto LABEL_46;
    }

LABEL_50:
    v30 = 0;
    goto LABEL_51;
  }

LABEL_46:
  v28 = (*&has >> 11) & 1;
  if (v28 != ((v6 >> 11) & 1))
  {
    goto LABEL_50;
  }

  if (v28)
  {
    modelVersion = self->_modelVersion;
    if (modelVersion != [v4 modelVersion])
    {
      goto LABEL_50;
    }
  }

  v30 = 1;
LABEL_51:

  return v30;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt64Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_9:
    if ((has & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_10:
    if ((has & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_11:
    if ((has & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_12:
    if ((has & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_27:
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_13:
    PBDataWriterWriteUint32Field();
  }

LABEL_14:
}

- (void)setHasModelVersion:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasAppSelectionUses:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasSirikitResponseCode:(BOOL)a3
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

- (void)setHasAppResolutionType:(BOOL)a3
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

- (void)setHasIsClientDaylight:(BOOL)a3
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

- (void)setHasRawClientHourOfDay:(BOOL)a3
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

- (void)setHasClientDayOfWeek:(BOOL)a3
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

- (void)setHasRawRequestDeviceCategory:(BOOL)a3
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

- (void)setHasRawCountry:(BOOL)a3
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

- (void)setHasRawStateOrProvince:(BOOL)a3
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

- (void)setHasRawLocale:(BOOL)a3
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