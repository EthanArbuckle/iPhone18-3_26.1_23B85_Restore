@interface INFERENCESchemaINFERENCEPervasiveEntityResolutionCommonSignals
- (BOOL)isEqual:(id)equal;
- (INFERENCESchemaINFERENCEPervasiveEntityResolutionCommonSignals)initWithDictionary:(id)dictionary;
- (INFERENCESchemaINFERENCEPervasiveEntityResolutionCommonSignals)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasCalendarDayOfWeek:(BOOL)week;
- (void)setHasCalendarHourOfDay:(BOOL)day;
- (void)setHasCalendarMonthOfYear:(BOOL)year;
- (void)setHasCalendarWeekOfMonth:(BOOL)month;
- (void)setHasDeviceMotionState:(BOOL)state;
- (void)setHasDisambiguationReason:(BOOL)reason;
- (void)setHasIsCarPlay:(BOOL)play;
- (void)setHasIsClientDaylight:(BOOL)daylight;
- (void)setHasIsClientNavigating:(BOOL)navigating;
- (void)setHasIsDeviceLockStatus:(BOOL)status;
- (void)setHasRawCountry:(BOOL)country;
- (void)setHasRawLanguage:(BOOL)language;
- (void)setHasRawLocale:(BOOL)locale;
- (void)setHasRawRequestDeviceCategory:(BOOL)category;
- (void)setHasRawStateOrProvince:(BOOL)province;
- (void)setHasTimestampSec:(BOOL)sec;
- (void)writeTo:(id)to;
@end

@implementation INFERENCESchemaINFERENCEPervasiveEntityResolutionCommonSignals

- (INFERENCESchemaINFERENCEPervasiveEntityResolutionCommonSignals)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v51.receiver = self;
  v51.super_class = INFERENCESchemaINFERENCEPervasiveEntityResolutionCommonSignals;
  v5 = [(INFERENCESchemaINFERENCEPervasiveEntityResolutionCommonSignals *)&v51 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"usecase"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(INFERENCESchemaINFERENCEPervasiveEntityResolutionCommonSignals *)v5 setUsecase:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"choicesCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEPervasiveEntityResolutionCommonSignals setChoicesCount:](v5, "setChoicesCount:", [v8 intValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"timestampSec"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEPervasiveEntityResolutionCommonSignals setTimestampSec:](v5, "setTimestampSec:", [v9 longLongValue]);
    }

    v45 = v8;
    v10 = [dictionaryCopy objectForKeyedSubscript:@"rawLanguage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEPervasiveEntityResolutionCommonSignals setRawLanguage:](v5, "setRawLanguage:", [v10 intValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"rawLocale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEPervasiveEntityResolutionCommonSignals setRawLocale:](v5, "setRawLocale:", [v11 intValue]);
    }

    v12 = v9;
    v13 = [dictionaryCopy objectForKeyedSubscript:@"rawStateOrProvince"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEPervasiveEntityResolutionCommonSignals setRawStateOrProvince:](v5, "setRawStateOrProvince:", [v13 intValue]);
    }

    v14 = v6;
    v15 = [dictionaryCopy objectForKeyedSubscript:@"rawCountry"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEPervasiveEntityResolutionCommonSignals setRawCountry:](v5, "setRawCountry:", [v15 intValue]);
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"rawRequestDeviceCategory"];
    objc_opt_class();
    v50 = v16;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEPervasiveEntityResolutionCommonSignals setRawRequestDeviceCategory:](v5, "setRawRequestDeviceCategory:", [v16 intValue]);
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"calendarHourOfDay"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEPervasiveEntityResolutionCommonSignals setCalendarHourOfDay:](v5, "setCalendarHourOfDay:", [v17 intValue]);
    }

    v39 = v17;
    v18 = [dictionaryCopy objectForKeyedSubscript:@"calendarDayOfWeek"];
    objc_opt_class();
    v49 = v18;
    v19 = v14;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEPervasiveEntityResolutionCommonSignals setCalendarDayOfWeek:](v5, "setCalendarDayOfWeek:", [v49 intValue]);
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"calendarWeekOfMonth"];
    objc_opt_class();
    v48 = v20;
    v21 = v12;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEPervasiveEntityResolutionCommonSignals setCalendarWeekOfMonth:](v5, "setCalendarWeekOfMonth:", [v48 intValue]);
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"calendarMonthOfYear"];
    objc_opt_class();
    v47 = v22;
    v23 = v10;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEPervasiveEntityResolutionCommonSignals setCalendarMonthOfYear:](v5, "setCalendarMonthOfYear:", [v47 intValue]);
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"isClientDaylight"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEPervasiveEntityResolutionCommonSignals setIsClientDaylight:](v5, "setIsClientDaylight:", [v24 intValue]);
    }

    v41 = v13;
    v25 = [dictionaryCopy objectForKeyedSubscript:@"isDeviceLockStatus"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEPervasiveEntityResolutionCommonSignals setIsDeviceLockStatus:](v5, "setIsDeviceLockStatus:", [v25 intValue]);
    }

    v40 = v15;
    v26 = [dictionaryCopy objectForKeyedSubscript:{@"deviceMotionState", v25}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEPervasiveEntityResolutionCommonSignals setDeviceMotionState:](v5, "setDeviceMotionState:", [v26 intValue]);
    }

    v38 = v24;
    v27 = [dictionaryCopy objectForKeyedSubscript:@"isClientNavigating"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEPervasiveEntityResolutionCommonSignals setIsClientNavigating:](v5, "setIsClientNavigating:", [v27 intValue]);
    }

    v46 = v19;
    v28 = [dictionaryCopy objectForKeyedSubscript:@"isCarPlay"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEPervasiveEntityResolutionCommonSignals setIsCarPlay:](v5, "setIsCarPlay:", [v28 intValue]);
    }

    v44 = v21;
    v29 = [dictionaryCopy objectForKeyedSubscript:@"historicalDataCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEPervasiveEntityResolutionCommonSignals setHistoricalDataCount:](v5, "setHistoricalDataCount:", [v29 intValue]);
    }

    v42 = v11;
    v43 = v23;
    v30 = [dictionaryCopy objectForKeyedSubscript:@"disambiguationReason"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEPervasiveEntityResolutionCommonSignals setDisambiguationReason:](v5, "setDisambiguationReason:", [v30 intValue]);
    }

    v31 = [dictionaryCopy objectForKeyedSubscript:@"modelVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = [[SISchemaVersion alloc] initWithDictionary:v31];
      [(INFERENCESchemaINFERENCEPervasiveEntityResolutionCommonSignals *)v5 setModelVersion:v32];
    }

    v33 = [dictionaryCopy objectForKeyedSubscript:@"trialTreatmentId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v34 = [[SISchemaUUID alloc] initWithDictionary:v33];
      [(INFERENCESchemaINFERENCEPervasiveEntityResolutionCommonSignals *)v5 setTrialTreatmentId:v34];
    }

    v35 = v5;
  }

  return v5;
}

- (INFERENCESchemaINFERENCEPervasiveEntityResolutionCommonSignals)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(INFERENCESchemaINFERENCEPervasiveEntityResolutionCommonSignals *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(INFERENCESchemaINFERENCEPervasiveEntityResolutionCommonSignals *)self dictionaryRepresentation];
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
  p_has = &self->_has;
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEPervasiveEntityResolutionCommonSignals calendarDayOfWeek](self, "calendarDayOfWeek")}];
    [dictionary setObject:v10 forKeyedSubscript:@"calendarDayOfWeek"];

    has = *p_has;
    if ((*p_has & 0x80) == 0)
    {
LABEL_3:
      if ((has & 0x400) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((has & 0x80) == 0)
  {
    goto LABEL_3;
  }

  v11 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEPervasiveEntityResolutionCommonSignals calendarHourOfDay](self, "calendarHourOfDay")}];
  [dictionary setObject:v11 forKeyedSubscript:@"calendarHourOfDay"];

  has = *p_has;
  if ((*p_has & 0x400) == 0)
  {
LABEL_4:
    if ((has & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  v12 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEPervasiveEntityResolutionCommonSignals calendarMonthOfYear](self, "calendarMonthOfYear")}];
  [dictionary setObject:v12 forKeyedSubscript:@"calendarMonthOfYear"];

  has = *p_has;
  if ((*p_has & 0x200) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  v13 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEPervasiveEntityResolutionCommonSignals calendarWeekOfMonth](self, "calendarWeekOfMonth")}];
  [dictionary setObject:v13 forKeyedSubscript:@"calendarWeekOfMonth"];

  has = *p_has;
  if ((*p_has & 1) == 0)
  {
LABEL_6:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  v14 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEPervasiveEntityResolutionCommonSignals choicesCount](self, "choicesCount")}];
  [dictionary setObject:v14 forKeyedSubscript:@"choicesCount"];

  if ((*p_has & 0x2000) != 0)
  {
LABEL_7:
    v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEPervasiveEntityResolutionCommonSignals deviceMotionState](self, "deviceMotionState")}];
    [dictionary setObject:v6 forKeyedSubscript:@"deviceMotionState"];
  }

LABEL_8:
  v7 = *(&self->_has + 2);
  if ((v7 & 2) != 0)
  {
    v8 = [(INFERENCESchemaINFERENCEPervasiveEntityResolutionCommonSignals *)self disambiguationReason]- 1;
    if (v8 > 2)
    {
      v9 = @"INFERENCEENTITYRESOLUTIONTYPE_UNKNOWN";
    }

    else
    {
      v9 = off_1E78D8A68[v8];
    }

    [dictionary setObject:v9 forKeyedSubscript:@"disambiguationReason"];
    v7 = *(&self->_has + 2);
  }

  if (v7)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEPervasiveEntityResolutionCommonSignals historicalDataCount](self, "historicalDataCount")}];
    [dictionary setObject:v15 forKeyedSubscript:@"historicalDataCount"];
  }

  v16 = *p_has;
  if ((v16 & 0x80000000) == 0)
  {
    if ((v16 & 0x800) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v22 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEPervasiveEntityResolutionCommonSignals isCarPlay](self, "isCarPlay")}];
  [dictionary setObject:v22 forKeyedSubscript:@"isCarPlay"];

  LOWORD(v16) = *p_has;
  if ((*p_has & 0x800) != 0)
  {
LABEL_23:
    v17 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEPervasiveEntityResolutionCommonSignals isClientDaylight](self, "isClientDaylight")}];
    [dictionary setObject:v17 forKeyedSubscript:@"isClientDaylight"];

    LOWORD(v16) = *p_has;
  }

LABEL_24:
  if ((v16 & 0x4000) == 0)
  {
    if ((v16 & 0x1000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v21 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEPervasiveEntityResolutionCommonSignals isClientNavigating](self, "isClientNavigating")}];
  [dictionary setObject:v21 forKeyedSubscript:@"isClientNavigating"];

  if ((*p_has & 0x1000) != 0)
  {
LABEL_26:
    v18 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEPervasiveEntityResolutionCommonSignals isDeviceLockStatus](self, "isDeviceLockStatus")}];
    [dictionary setObject:v18 forKeyedSubscript:@"isDeviceLockStatus"];
  }

LABEL_27:
  if (self->_modelVersion)
  {
    modelVersion = [(INFERENCESchemaINFERENCEPervasiveEntityResolutionCommonSignals *)self modelVersion];
    dictionaryRepresentation = [modelVersion dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"modelVersion"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"modelVersion"];
    }
  }

  v24 = *p_has;
  if ((*p_has & 0x20) != 0)
  {
    v28 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEPervasiveEntityResolutionCommonSignals rawCountry](self, "rawCountry")}];
    [dictionary setObject:v28 forKeyedSubscript:@"rawCountry"];

    v24 = *p_has;
    if ((*p_has & 4) == 0)
    {
LABEL_38:
      if ((v24 & 8) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_48;
    }
  }

  else if ((v24 & 4) == 0)
  {
    goto LABEL_38;
  }

  v29 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEPervasiveEntityResolutionCommonSignals rawLanguage](self, "rawLanguage")}];
  [dictionary setObject:v29 forKeyedSubscript:@"rawLanguage"];

  v24 = *p_has;
  if ((*p_has & 8) == 0)
  {
LABEL_39:
    if ((v24 & 0x40) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_49;
  }

LABEL_48:
  v30 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEPervasiveEntityResolutionCommonSignals rawLocale](self, "rawLocale")}];
  [dictionary setObject:v30 forKeyedSubscript:@"rawLocale"];

  v24 = *p_has;
  if ((*p_has & 0x40) == 0)
  {
LABEL_40:
    if ((v24 & 0x10) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_50;
  }

LABEL_49:
  v31 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEPervasiveEntityResolutionCommonSignals rawRequestDeviceCategory](self, "rawRequestDeviceCategory")}];
  [dictionary setObject:v31 forKeyedSubscript:@"rawRequestDeviceCategory"];

  v24 = *p_has;
  if ((*p_has & 0x10) == 0)
  {
LABEL_41:
    if ((v24 & 2) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

LABEL_50:
  v32 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEPervasiveEntityResolutionCommonSignals rawStateOrProvince](self, "rawStateOrProvince")}];
  [dictionary setObject:v32 forKeyedSubscript:@"rawStateOrProvince"];

  if ((*p_has & 2) != 0)
  {
LABEL_42:
    v25 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[INFERENCESchemaINFERENCEPervasiveEntityResolutionCommonSignals timestampSec](self, "timestampSec")}];
    [dictionary setObject:v25 forKeyedSubscript:@"timestampSec"];
  }

LABEL_43:
  if (self->_trialTreatmentId)
  {
    trialTreatmentId = [(INFERENCESchemaINFERENCEPervasiveEntityResolutionCommonSignals *)self trialTreatmentId];
    dictionaryRepresentation2 = [trialTreatmentId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"trialTreatmentId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"trialTreatmentId"];
    }
  }

  if (self->_usecase)
  {
    usecase = [(INFERENCESchemaINFERENCEPervasiveEntityResolutionCommonSignals *)self usecase];
    v35 = [usecase copy];
    [dictionary setObject:v35 forKeyedSubscript:@"usecase"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_usecase hash];
  has = self->_has;
  if (has)
  {
    v5 = 2654435761 * self->_choicesCount;
    if ((has & 2) != 0)
    {
LABEL_3:
      v6 = 2654435761 * self->_timestampSec;
      if ((has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else
  {
    v5 = 0;
    if ((has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
  if ((has & 4) != 0)
  {
LABEL_4:
    v7 = 2654435761 * self->_rawLanguage;
    if ((has & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  v7 = 0;
  if ((has & 8) != 0)
  {
LABEL_5:
    v8 = 2654435761 * self->_rawLocale;
    if ((has & 0x10) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  v8 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_6:
    v9 = 2654435761 * self->_rawStateOrProvince;
    if ((has & 0x20) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  v9 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_7:
    v10 = 2654435761 * self->_rawCountry;
    if ((has & 0x40) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  v10 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_8:
    v11 = 2654435761 * self->_rawRequestDeviceCategory;
    if ((has & 0x80) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  v11 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_9:
    v12 = 2654435761 * self->_calendarHourOfDay;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  v12 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_10:
    v13 = 2654435761 * self->_calendarDayOfWeek;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  v13 = 0;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_11:
    v14 = 2654435761 * self->_calendarWeekOfMonth;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  v14 = 0;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_12:
    v15 = 2654435761 * self->_calendarMonthOfYear;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  v15 = 0;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_13:
    v16 = 2654435761 * self->_isClientDaylight;
    if ((*&self->_has & 0x1000) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_30;
  }

LABEL_29:
  v16 = 0;
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_14:
    v17 = 2654435761 * self->_isDeviceLockStatus;
    if ((*&self->_has & 0x2000) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_31;
  }

LABEL_30:
  v17 = 0;
  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_15:
    v18 = 2654435761 * self->_deviceMotionState;
    if ((*&self->_has & 0x4000) != 0)
    {
      goto LABEL_16;
    }

LABEL_32:
    v19 = 0;
    if ((*&self->_has & 0x8000) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_33;
  }

LABEL_31:
  v18 = 0;
  if ((*&self->_has & 0x4000) == 0)
  {
    goto LABEL_32;
  }

LABEL_16:
  v19 = 2654435761 * self->_isClientNavigating;
  if ((*&self->_has & 0x8000) != 0)
  {
LABEL_17:
    v20 = 2654435761 * self->_isCarPlay;
    goto LABEL_34;
  }

LABEL_33:
  v20 = 0;
LABEL_34:
  if (*(&self->_has + 2))
  {
    v21 = 2654435761 * self->_historicalDataCount;
    if ((*(&self->_has + 2) & 2) != 0)
    {
      goto LABEL_36;
    }

LABEL_38:
    v22 = 0;
    goto LABEL_39;
  }

  v21 = 0;
  if ((*(&self->_has + 2) & 2) == 0)
  {
    goto LABEL_38;
  }

LABEL_36:
  v22 = 2654435761 * self->_disambiguationReason;
LABEL_39:
  v23 = v5 ^ v3 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18;
  v24 = v19 ^ v20 ^ v21 ^ v22 ^ [(SISchemaVersion *)self->_modelVersion hash];
  return v23 ^ v24 ^ [(SISchemaUUID *)self->_trialTreatmentId hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_87;
  }

  usecase = [(INFERENCESchemaINFERENCEPervasiveEntityResolutionCommonSignals *)self usecase];
  usecase2 = [equalCopy usecase];
  if ((usecase != 0) == (usecase2 == 0))
  {
    goto LABEL_86;
  }

  usecase3 = [(INFERENCESchemaINFERENCEPervasiveEntityResolutionCommonSignals *)self usecase];
  if (usecase3)
  {
    v8 = usecase3;
    usecase4 = [(INFERENCESchemaINFERENCEPervasiveEntityResolutionCommonSignals *)self usecase];
    usecase5 = [equalCopy usecase];
    v11 = [usecase4 isEqual:usecase5];

    if (!v11)
    {
      goto LABEL_87;
    }
  }

  else
  {
  }

  p_has = &self->_has;
  has = self->_has;
  v14 = equalCopy + 56;
  v15 = equalCopy[56];
  if ((*&has & 1) != (v15 & 1))
  {
    goto LABEL_87;
  }

  if (*&has)
  {
    choicesCount = self->_choicesCount;
    if (choicesCount != [equalCopy choicesCount])
    {
      goto LABEL_87;
    }

    has = *p_has;
    v15 = *v14;
  }

  v17 = (*&has >> 1) & 1;
  if (v17 != ((v15 >> 1) & 1))
  {
    goto LABEL_87;
  }

  if (v17)
  {
    timestampSec = self->_timestampSec;
    if (timestampSec != [equalCopy timestampSec])
    {
      goto LABEL_87;
    }

    has = *p_has;
    v15 = *v14;
  }

  v19 = (*&has >> 2) & 1;
  if (v19 != ((v15 >> 2) & 1))
  {
    goto LABEL_87;
  }

  if (v19)
  {
    rawLanguage = self->_rawLanguage;
    if (rawLanguage != [equalCopy rawLanguage])
    {
      goto LABEL_87;
    }

    has = *p_has;
    v15 = *v14;
  }

  v21 = (*&has >> 3) & 1;
  if (v21 != ((v15 >> 3) & 1))
  {
    goto LABEL_87;
  }

  if (v21)
  {
    rawLocale = self->_rawLocale;
    if (rawLocale != [equalCopy rawLocale])
    {
      goto LABEL_87;
    }

    has = *p_has;
    v15 = *v14;
  }

  v23 = (*&has >> 4) & 1;
  if (v23 != ((v15 >> 4) & 1))
  {
    goto LABEL_87;
  }

  if (v23)
  {
    rawStateOrProvince = self->_rawStateOrProvince;
    if (rawStateOrProvince != [equalCopy rawStateOrProvince])
    {
      goto LABEL_87;
    }

    has = *p_has;
    v15 = *v14;
  }

  v25 = (*&has >> 5) & 1;
  if (v25 != ((v15 >> 5) & 1))
  {
    goto LABEL_87;
  }

  if (v25)
  {
    rawCountry = self->_rawCountry;
    if (rawCountry != [equalCopy rawCountry])
    {
      goto LABEL_87;
    }

    has = *p_has;
    v15 = *v14;
  }

  v27 = (*&has >> 6) & 1;
  if (v27 != ((v15 >> 6) & 1))
  {
    goto LABEL_87;
  }

  if (v27)
  {
    rawRequestDeviceCategory = self->_rawRequestDeviceCategory;
    if (rawRequestDeviceCategory != [equalCopy rawRequestDeviceCategory])
    {
      goto LABEL_87;
    }

    has = *p_has;
    v15 = *v14;
  }

  v29 = (*&has >> 7) & 1;
  if (v29 != ((v15 >> 7) & 1))
  {
    goto LABEL_87;
  }

  if (v29)
  {
    calendarHourOfDay = self->_calendarHourOfDay;
    if (calendarHourOfDay != [equalCopy calendarHourOfDay])
    {
      goto LABEL_87;
    }

    has = *p_has;
    v15 = *v14;
  }

  v31 = (*&has >> 8) & 1;
  if (v31 != ((v15 >> 8) & 1))
  {
    goto LABEL_87;
  }

  if (v31)
  {
    calendarDayOfWeek = self->_calendarDayOfWeek;
    if (calendarDayOfWeek != [equalCopy calendarDayOfWeek])
    {
      goto LABEL_87;
    }

    has = *p_has;
    v15 = *v14;
  }

  v33 = (*&has >> 9) & 1;
  if (v33 != ((v15 >> 9) & 1))
  {
    goto LABEL_87;
  }

  if (v33)
  {
    calendarWeekOfMonth = self->_calendarWeekOfMonth;
    if (calendarWeekOfMonth != [equalCopy calendarWeekOfMonth])
    {
      goto LABEL_87;
    }

    has = *p_has;
    v15 = *v14;
  }

  v35 = (*&has >> 10) & 1;
  if (v35 != ((v15 >> 10) & 1))
  {
    goto LABEL_87;
  }

  if (v35)
  {
    calendarMonthOfYear = self->_calendarMonthOfYear;
    if (calendarMonthOfYear != [equalCopy calendarMonthOfYear])
    {
      goto LABEL_87;
    }

    has = *p_has;
    v15 = *v14;
  }

  v37 = (*&has >> 11) & 1;
  if (v37 != ((v15 >> 11) & 1))
  {
    goto LABEL_87;
  }

  if (v37)
  {
    isClientDaylight = self->_isClientDaylight;
    if (isClientDaylight != [equalCopy isClientDaylight])
    {
      goto LABEL_87;
    }

    has = *p_has;
    v15 = *v14;
  }

  v39 = (*&has >> 12) & 1;
  if (v39 != ((v15 >> 12) & 1))
  {
    goto LABEL_87;
  }

  if (v39)
  {
    isDeviceLockStatus = self->_isDeviceLockStatus;
    if (isDeviceLockStatus != [equalCopy isDeviceLockStatus])
    {
      goto LABEL_87;
    }

    has = *p_has;
    v15 = *v14;
  }

  v41 = (*&has >> 13) & 1;
  if (v41 != ((v15 >> 13) & 1))
  {
    goto LABEL_87;
  }

  if (v41)
  {
    deviceMotionState = self->_deviceMotionState;
    if (deviceMotionState != [equalCopy deviceMotionState])
    {
      goto LABEL_87;
    }

    has = *p_has;
    v15 = *v14;
  }

  v43 = (*&has >> 14) & 1;
  if (v43 != ((v15 >> 14) & 1))
  {
    goto LABEL_87;
  }

  if (v43)
  {
    isClientNavigating = self->_isClientNavigating;
    if (isClientNavigating != [equalCopy isClientNavigating])
    {
      goto LABEL_87;
    }

    has = *p_has;
    v15 = *v14;
  }

  if (((v15 ^ *&has) & 0x8000) != 0)
  {
    goto LABEL_87;
  }

  if ((*&has & 0x8000) != 0)
  {
    isCarPlay = self->_isCarPlay;
    if (isCarPlay != [equalCopy isCarPlay])
    {
      goto LABEL_87;
    }
  }

  v46 = *(&self->_has + 2);
  v47 = *(equalCopy + 114);
  if ((v46 & 1) != (v47 & 1))
  {
    goto LABEL_87;
  }

  if (v46)
  {
    historicalDataCount = self->_historicalDataCount;
    if (historicalDataCount != [equalCopy historicalDataCount])
    {
      goto LABEL_87;
    }

    v46 = *(&self->_has + 2);
    v47 = *(equalCopy + 114);
  }

  v49 = (v46 >> 1) & 1;
  if (v49 != ((v47 >> 1) & 1))
  {
    goto LABEL_87;
  }

  if (v49)
  {
    disambiguationReason = self->_disambiguationReason;
    if (disambiguationReason != [equalCopy disambiguationReason])
    {
      goto LABEL_87;
    }
  }

  usecase = [(INFERENCESchemaINFERENCEPervasiveEntityResolutionCommonSignals *)self modelVersion];
  usecase2 = [equalCopy modelVersion];
  if ((usecase != 0) == (usecase2 == 0))
  {
    goto LABEL_86;
  }

  modelVersion = [(INFERENCESchemaINFERENCEPervasiveEntityResolutionCommonSignals *)self modelVersion];
  if (modelVersion)
  {
    v52 = modelVersion;
    modelVersion2 = [(INFERENCESchemaINFERENCEPervasiveEntityResolutionCommonSignals *)self modelVersion];
    modelVersion3 = [equalCopy modelVersion];
    v55 = [modelVersion2 isEqual:modelVersion3];

    if (!v55)
    {
      goto LABEL_87;
    }
  }

  else
  {
  }

  usecase = [(INFERENCESchemaINFERENCEPervasiveEntityResolutionCommonSignals *)self trialTreatmentId];
  usecase2 = [equalCopy trialTreatmentId];
  if ((usecase != 0) == (usecase2 == 0))
  {
LABEL_86:

    goto LABEL_87;
  }

  trialTreatmentId = [(INFERENCESchemaINFERENCEPervasiveEntityResolutionCommonSignals *)self trialTreatmentId];
  if (!trialTreatmentId)
  {

LABEL_90:
    v61 = 1;
    goto LABEL_88;
  }

  v57 = trialTreatmentId;
  trialTreatmentId2 = [(INFERENCESchemaINFERENCEPervasiveEntityResolutionCommonSignals *)self trialTreatmentId];
  trialTreatmentId3 = [equalCopy trialTreatmentId];
  v60 = [trialTreatmentId2 isEqual:trialTreatmentId3];

  if (v60)
  {
    goto LABEL_90;
  }

LABEL_87:
  v61 = 0;
LABEL_88:

  return v61;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  usecase = [(INFERENCESchemaINFERENCEPervasiveEntityResolutionCommonSignals *)self usecase];

  if (usecase)
  {
    PBDataWriterWriteStringField();
  }

  p_has = &self->_has;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = *p_has;
    if ((*p_has & 2) == 0)
    {
LABEL_5:
      if ((has & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_32;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_5;
  }

  PBDataWriterWriteInt64Field();
  has = *p_has;
  if ((*p_has & 4) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_33;
  }

LABEL_32:
  PBDataWriterWriteInt32Field();
  has = *p_has;
  if ((*p_has & 8) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_34;
  }

LABEL_33:
  PBDataWriterWriteInt32Field();
  has = *p_has;
  if ((*p_has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_35;
  }

LABEL_34:
  PBDataWriterWriteInt32Field();
  has = *p_has;
  if ((*p_has & 0x20) == 0)
  {
LABEL_9:
    if ((has & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_36;
  }

LABEL_35:
  PBDataWriterWriteInt32Field();
  has = *p_has;
  if ((*p_has & 0x40) == 0)
  {
LABEL_10:
    if ((has & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_37;
  }

LABEL_36:
  PBDataWriterWriteInt32Field();
  has = *p_has;
  if ((*p_has & 0x80) == 0)
  {
LABEL_11:
    if ((has & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_38;
  }

LABEL_37:
  PBDataWriterWriteInt32Field();
  has = *p_has;
  if ((*p_has & 0x100) == 0)
  {
LABEL_12:
    if ((has & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_39;
  }

LABEL_38:
  PBDataWriterWriteInt32Field();
  has = *p_has;
  if ((*p_has & 0x200) == 0)
  {
LABEL_13:
    if ((has & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_40;
  }

LABEL_39:
  PBDataWriterWriteInt32Field();
  has = *p_has;
  if ((*p_has & 0x400) == 0)
  {
LABEL_14:
    if ((has & 0x800) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_41;
  }

LABEL_40:
  PBDataWriterWriteInt32Field();
  has = *p_has;
  if ((*p_has & 0x800) == 0)
  {
LABEL_15:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_42;
  }

LABEL_41:
  PBDataWriterWriteInt32Field();
  has = *p_has;
  if ((*p_has & 0x1000) == 0)
  {
LABEL_16:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_43;
  }

LABEL_42:
  PBDataWriterWriteInt32Field();
  has = *p_has;
  if ((*p_has & 0x2000) == 0)
  {
LABEL_17:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_18;
    }

LABEL_44:
    PBDataWriterWriteInt32Field();
    if ((*p_has & 0x8000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_45;
  }

LABEL_43:
  PBDataWriterWriteInt32Field();
  has = *p_has;
  if ((*p_has & 0x4000) != 0)
  {
    goto LABEL_44;
  }

LABEL_18:
  if ((has & 0x8000) == 0)
  {
    goto LABEL_19;
  }

LABEL_45:
  PBDataWriterWriteInt32Field();
LABEL_19:
  v7 = *(&self->_has + 2);
  if (v7)
  {
    PBDataWriterWriteInt32Field();
    v7 = *(&self->_has + 2);
  }

  if ((v7 & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  modelVersion = [(INFERENCESchemaINFERENCEPervasiveEntityResolutionCommonSignals *)self modelVersion];

  if (modelVersion)
  {
    modelVersion2 = [(INFERENCESchemaINFERENCEPervasiveEntityResolutionCommonSignals *)self modelVersion];
    PBDataWriterWriteSubmessage();
  }

  trialTreatmentId = [(INFERENCESchemaINFERENCEPervasiveEntityResolutionCommonSignals *)self trialTreatmentId];

  v11 = toCopy;
  if (trialTreatmentId)
  {
    trialTreatmentId2 = [(INFERENCESchemaINFERENCEPervasiveEntityResolutionCommonSignals *)self trialTreatmentId];
    PBDataWriterWriteSubmessage();

    v11 = toCopy;
  }
}

- (void)setHasDisambiguationReason:(BOOL)reason
{
  if (reason)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFD | v3;
}

- (void)setHasIsCarPlay:(BOOL)play
{
  if (play)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x8000 | *&self->_has & 0x7FFF;
}

- (void)setHasIsClientNavigating:(BOOL)navigating
{
  if (navigating)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBFFF | v3;
}

- (void)setHasDeviceMotionState:(BOOL)state
{
  if (state)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFF | v3;
}

- (void)setHasIsDeviceLockStatus:(BOOL)status
{
  if (status)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (void)setHasIsClientDaylight:(BOOL)daylight
{
  if (daylight)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasCalendarMonthOfYear:(BOOL)year
{
  if (year)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasCalendarWeekOfMonth:(BOOL)month
{
  if (month)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasCalendarDayOfWeek:(BOOL)week
{
  if (week)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasCalendarHourOfDay:(BOOL)day
{
  if (day)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasRawRequestDeviceCategory:(BOOL)category
{
  if (category)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasRawCountry:(BOOL)country
{
  if (country)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasRawStateOrProvince:(BOOL)province
{
  if (province)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasRawLocale:(BOOL)locale
{
  if (locale)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasRawLanguage:(BOOL)language
{
  if (language)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasTimestampSec:(BOOL)sec
{
  if (sec)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = INFERENCESchemaINFERENCEPervasiveEntityResolutionCommonSignals;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  modelVersion = [(INFERENCESchemaINFERENCEPervasiveEntityResolutionCommonSignals *)self modelVersion];
  v7 = [modelVersion applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(INFERENCESchemaINFERENCEPervasiveEntityResolutionCommonSignals *)self deleteModelVersion];
  }

  trialTreatmentId = [(INFERENCESchemaINFERENCEPervasiveEntityResolutionCommonSignals *)self trialTreatmentId];
  v10 = [trialTreatmentId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(INFERENCESchemaINFERENCEPervasiveEntityResolutionCommonSignals *)self deleteTrialTreatmentId];
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