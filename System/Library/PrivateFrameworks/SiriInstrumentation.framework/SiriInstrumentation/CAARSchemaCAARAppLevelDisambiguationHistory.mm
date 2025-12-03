@interface CAARSchemaCAARAppLevelDisambiguationHistory
- (BOOL)isEqual:(id)equal;
- (CAARSchemaCAARAppLevelDisambiguationHistory)initWithDictionary:(id)dictionary;
- (CAARSchemaCAARAppLevelDisambiguationHistory)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasMinutesSinceLastDisambiguationSameApps:(BOOL)apps;
- (void)setHasNumAppDisambiguationsLastInfinity:(BOOL)infinity;
- (void)setHasNumAppDisambiguationsLastOneDay:(BOOL)day;
- (void)setHasNumAppDisambiguationsLastOneHour:(BOOL)hour;
- (void)setHasNumAppDisambiguationsLastSevenDays:(BOOL)days;
- (void)setHasNumAppDisambiguationsLastSixHours:(BOOL)hours;
- (void)setHasNumAppDisambiguationsLastTenMinutes:(BOOL)minutes;
- (void)setHasNumAppDisambiguationsLastTwentyEightDays:(BOOL)days;
- (void)setHasNumSelectedAppDisambiguationsLastInfinity:(BOOL)infinity;
- (void)setHasNumSelectedAppDisambiguationsLastOneDay:(BOOL)day;
- (void)setHasNumSelectedAppDisambiguationsLastOneHour:(BOOL)hour;
- (void)setHasNumSelectedAppDisambiguationsLastSevenDays:(BOOL)days;
- (void)setHasNumSelectedAppDisambiguationsLastSixHours:(BOOL)hours;
- (void)setHasNumSelectedAppDisambiguationsLastTenMinutes:(BOOL)minutes;
- (void)setHasNumSelectedAppDisambiguationsLastTwentyEightDays:(BOOL)days;
- (void)setHasNumSelectedAppDisambiguationsTwoMinutes:(BOOL)minutes;
- (void)writeTo:(id)to;
@end

@implementation CAARSchemaCAARAppLevelDisambiguationHistory

- (CAARSchemaCAARAppLevelDisambiguationHistory)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v40.receiver = self;
  v40.super_class = CAARSchemaCAARAppLevelDisambiguationHistory;
  v5 = [(CAARSchemaCAARAppLevelDisambiguationHistory *)&v40 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"numAppDisambiguationsLastTwoMinutes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARAppLevelDisambiguationHistory setNumAppDisambiguationsLastTwoMinutes:](v5, "setNumAppDisambiguationsLastTwoMinutes:", [v6 unsignedIntValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"numAppDisambiguationsLastTenMinutes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARAppLevelDisambiguationHistory setNumAppDisambiguationsLastTenMinutes:](v5, "setNumAppDisambiguationsLastTenMinutes:", [v7 unsignedIntValue]);
    }

    v30 = v7;
    v8 = [dictionaryCopy objectForKeyedSubscript:@"numAppDisambiguationsLastOneHour"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARAppLevelDisambiguationHistory setNumAppDisambiguationsLastOneHour:](v5, "setNumAppDisambiguationsLastOneHour:", [v8 unsignedIntValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"numAppDisambiguationsLastSixHours"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARAppLevelDisambiguationHistory setNumAppDisambiguationsLastSixHours:](v5, "setNumAppDisambiguationsLastSixHours:", [v9 unsignedIntValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"numAppDisambiguationsLastOneDay"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARAppLevelDisambiguationHistory setNumAppDisambiguationsLastOneDay:](v5, "setNumAppDisambiguationsLastOneDay:", [v10 unsignedIntValue]);
    }

    v35 = v8;
    v11 = [dictionaryCopy objectForKeyedSubscript:@"numAppDisambiguationsLastSevenDays"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARAppLevelDisambiguationHistory setNumAppDisambiguationsLastSevenDays:](v5, "setNumAppDisambiguationsLastSevenDays:", [v11 unsignedIntValue]);
    }

    v12 = v6;
    v13 = [dictionaryCopy objectForKeyedSubscript:@"numAppDisambiguationsLastTwentyEightDays"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARAppLevelDisambiguationHistory setNumAppDisambiguationsLastTwentyEightDays:](v5, "setNumAppDisambiguationsLastTwentyEightDays:", [v13 unsignedIntValue]);
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"numAppDisambiguationsLastInfinity"];
    objc_opt_class();
    v39 = v14;
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARAppLevelDisambiguationHistory setNumAppDisambiguationsLastInfinity:](v5, "setNumAppDisambiguationsLastInfinity:", [v14 unsignedIntValue]);
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"numSelectedAppDisambiguationsTwoMinutes"];
    objc_opt_class();
    v38 = v15;
    v16 = v12;
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARAppLevelDisambiguationHistory setNumSelectedAppDisambiguationsTwoMinutes:](v5, "setNumSelectedAppDisambiguationsTwoMinutes:", [v38 unsignedIntValue]);
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"numSelectedAppDisambiguationsLastTenMinutes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARAppLevelDisambiguationHistory setNumSelectedAppDisambiguationsLastTenMinutes:](v5, "setNumSelectedAppDisambiguationsLastTenMinutes:", [v17 unsignedIntValue]);
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"numSelectedAppDisambiguationsLastOneHour"];
    objc_opt_class();
    v37 = v18;
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARAppLevelDisambiguationHistory setNumSelectedAppDisambiguationsLastOneHour:](v5, "setNumSelectedAppDisambiguationsLastOneHour:", [v18 unsignedIntValue]);
    }

    v34 = v9;
    v19 = [dictionaryCopy objectForKeyedSubscript:@"numSelectedAppDisambiguationsLastSixHours"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARAppLevelDisambiguationHistory setNumSelectedAppDisambiguationsLastSixHours:](v5, "setNumSelectedAppDisambiguationsLastSixHours:", [v19 unsignedIntValue]);
    }

    v33 = v10;
    v20 = [dictionaryCopy objectForKeyedSubscript:@"numSelectedAppDisambiguationsLastOneDay"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARAppLevelDisambiguationHistory setNumSelectedAppDisambiguationsLastOneDay:](v5, "setNumSelectedAppDisambiguationsLastOneDay:", [v20 unsignedIntValue]);
    }

    v32 = v11;
    v21 = [dictionaryCopy objectForKeyedSubscript:@"numSelectedAppDisambiguationsLastSevenDays"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARAppLevelDisambiguationHistory setNumSelectedAppDisambiguationsLastSevenDays:](v5, "setNumSelectedAppDisambiguationsLastSevenDays:", [v21 unsignedIntValue]);
    }

    v31 = v13;
    v22 = [dictionaryCopy objectForKeyedSubscript:@"numSelectedAppDisambiguationsLastTwentyEightDays"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARAppLevelDisambiguationHistory setNumSelectedAppDisambiguationsLastTwentyEightDays:](v5, "setNumSelectedAppDisambiguationsLastTwentyEightDays:", [v22 unsignedIntValue]);
    }

    v29 = v19;
    v36 = v16;
    v23 = [dictionaryCopy objectForKeyedSubscript:@"numSelectedAppDisambiguationsLastInfinity"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARAppLevelDisambiguationHistory setNumSelectedAppDisambiguationsLastInfinity:](v5, "setNumSelectedAppDisambiguationsLastInfinity:", [v23 unsignedIntValue]);
    }

    v24 = v17;
    v25 = [dictionaryCopy objectForKeyedSubscript:@"wasAppSelectedInLastDisambiguation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARAppLevelDisambiguationHistory setWasAppSelectedInLastDisambiguation:](v5, "setWasAppSelectedInLastDisambiguation:", [v25 BOOLValue]);
    }

    v26 = [dictionaryCopy objectForKeyedSubscript:@"minutesSinceLastDisambiguationSameApps"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARAppLevelDisambiguationHistory setMinutesSinceLastDisambiguationSameApps:](v5, "setMinutesSinceLastDisambiguationSameApps:", [v26 unsignedIntValue]);
    }

    v27 = v5;
  }

  return v5;
}

- (CAARSchemaCAARAppLevelDisambiguationHistory)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(CAARSchemaCAARAppLevelDisambiguationHistory *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(CAARSchemaCAARAppLevelDisambiguationHistory *)self dictionaryRepresentation];
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
  if ((*(&self->_has + 2) & 2) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CAARSchemaCAARAppLevelDisambiguationHistory minutesSinceLastDisambiguationSameApps](self, "minutesSinceLastDisambiguationSameApps")}];
    [dictionary setObject:v5 forKeyedSubscript:@"minutesSinceLastDisambiguationSameApps"];
  }

  v6 = *p_has;
  if ((*p_has & 0x80) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CAARSchemaCAARAppLevelDisambiguationHistory numAppDisambiguationsLastInfinity](self, "numAppDisambiguationsLastInfinity")}];
    [dictionary setObject:v10 forKeyedSubscript:@"numAppDisambiguationsLastInfinity"];

    v6 = *p_has;
    if ((*p_has & 0x10) == 0)
    {
LABEL_5:
      if ((v6 & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_27;
    }
  }

  else if ((v6 & 0x10) == 0)
  {
    goto LABEL_5;
  }

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CAARSchemaCAARAppLevelDisambiguationHistory numAppDisambiguationsLastOneDay](self, "numAppDisambiguationsLastOneDay")}];
  [dictionary setObject:v11 forKeyedSubscript:@"numAppDisambiguationsLastOneDay"];

  v6 = *p_has;
  if ((*p_has & 4) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_28;
  }

LABEL_27:
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CAARSchemaCAARAppLevelDisambiguationHistory numAppDisambiguationsLastOneHour](self, "numAppDisambiguationsLastOneHour")}];
  [dictionary setObject:v12 forKeyedSubscript:@"numAppDisambiguationsLastOneHour"];

  v6 = *p_has;
  if ((*p_has & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_29;
  }

LABEL_28:
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CAARSchemaCAARAppLevelDisambiguationHistory numAppDisambiguationsLastSevenDays](self, "numAppDisambiguationsLastSevenDays")}];
  [dictionary setObject:v13 forKeyedSubscript:@"numAppDisambiguationsLastSevenDays"];

  v6 = *p_has;
  if ((*p_has & 8) == 0)
  {
LABEL_8:
    if ((v6 & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_30;
  }

LABEL_29:
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CAARSchemaCAARAppLevelDisambiguationHistory numAppDisambiguationsLastSixHours](self, "numAppDisambiguationsLastSixHours")}];
  [dictionary setObject:v14 forKeyedSubscript:@"numAppDisambiguationsLastSixHours"];

  v6 = *p_has;
  if ((*p_has & 2) == 0)
  {
LABEL_9:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_31;
  }

LABEL_30:
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CAARSchemaCAARAppLevelDisambiguationHistory numAppDisambiguationsLastTenMinutes](self, "numAppDisambiguationsLastTenMinutes")}];
  [dictionary setObject:v15 forKeyedSubscript:@"numAppDisambiguationsLastTenMinutes"];

  v6 = *p_has;
  if ((*p_has & 0x40) == 0)
  {
LABEL_10:
    if ((v6 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_32;
  }

LABEL_31:
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CAARSchemaCAARAppLevelDisambiguationHistory numAppDisambiguationsLastTwentyEightDays](self, "numAppDisambiguationsLastTwentyEightDays")}];
  [dictionary setObject:v16 forKeyedSubscript:@"numAppDisambiguationsLastTwentyEightDays"];

  v6 = *p_has;
  if ((*p_has & 1) == 0)
  {
LABEL_11:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_33;
  }

LABEL_32:
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CAARSchemaCAARAppLevelDisambiguationHistory numAppDisambiguationsLastTwoMinutes](self, "numAppDisambiguationsLastTwoMinutes")}];
  [dictionary setObject:v17 forKeyedSubscript:@"numAppDisambiguationsLastTwoMinutes"];

  v6 = *p_has;
  if ((*p_has & 0x8000) == 0)
  {
LABEL_12:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_34;
  }

LABEL_33:
  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CAARSchemaCAARAppLevelDisambiguationHistory numSelectedAppDisambiguationsLastInfinity](self, "numSelectedAppDisambiguationsLastInfinity")}];
  [dictionary setObject:v18 forKeyedSubscript:@"numSelectedAppDisambiguationsLastInfinity"];

  v6 = *p_has;
  if ((*p_has & 0x1000) == 0)
  {
LABEL_13:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_35;
  }

LABEL_34:
  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CAARSchemaCAARAppLevelDisambiguationHistory numSelectedAppDisambiguationsLastOneDay](self, "numSelectedAppDisambiguationsLastOneDay")}];
  [dictionary setObject:v19 forKeyedSubscript:@"numSelectedAppDisambiguationsLastOneDay"];

  v6 = *p_has;
  if ((*p_has & 0x400) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_36;
  }

LABEL_35:
  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CAARSchemaCAARAppLevelDisambiguationHistory numSelectedAppDisambiguationsLastOneHour](self, "numSelectedAppDisambiguationsLastOneHour")}];
  [dictionary setObject:v20 forKeyedSubscript:@"numSelectedAppDisambiguationsLastOneHour"];

  v6 = *p_has;
  if ((*p_has & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_37;
  }

LABEL_36:
  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CAARSchemaCAARAppLevelDisambiguationHistory numSelectedAppDisambiguationsLastSevenDays](self, "numSelectedAppDisambiguationsLastSevenDays")}];
  [dictionary setObject:v21 forKeyedSubscript:@"numSelectedAppDisambiguationsLastSevenDays"];

  v6 = *p_has;
  if ((*p_has & 0x800) == 0)
  {
LABEL_16:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_38;
  }

LABEL_37:
  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CAARSchemaCAARAppLevelDisambiguationHistory numSelectedAppDisambiguationsLastSixHours](self, "numSelectedAppDisambiguationsLastSixHours")}];
  [dictionary setObject:v22 forKeyedSubscript:@"numSelectedAppDisambiguationsLastSixHours"];

  v6 = *p_has;
  if ((*p_has & 0x200) == 0)
  {
LABEL_17:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_39;
  }

LABEL_38:
  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CAARSchemaCAARAppLevelDisambiguationHistory numSelectedAppDisambiguationsLastTenMinutes](self, "numSelectedAppDisambiguationsLastTenMinutes")}];
  [dictionary setObject:v23 forKeyedSubscript:@"numSelectedAppDisambiguationsLastTenMinutes"];

  v6 = *p_has;
  if ((*p_has & 0x4000) == 0)
  {
LABEL_18:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_39:
  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CAARSchemaCAARAppLevelDisambiguationHistory numSelectedAppDisambiguationsLastTwentyEightDays](self, "numSelectedAppDisambiguationsLastTwentyEightDays")}];
  [dictionary setObject:v24 forKeyedSubscript:@"numSelectedAppDisambiguationsLastTwentyEightDays"];

  if ((*p_has & 0x100) != 0)
  {
LABEL_19:
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CAARSchemaCAARAppLevelDisambiguationHistory numSelectedAppDisambiguationsTwoMinutes](self, "numSelectedAppDisambiguationsTwoMinutes")}];
    [dictionary setObject:v7 forKeyedSubscript:@"numSelectedAppDisambiguationsTwoMinutes"];
  }

LABEL_20:
  if (*(&self->_has + 2))
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[CAARSchemaCAARAppLevelDisambiguationHistory wasAppSelectedInLastDisambiguation](self, "wasAppSelectedInLastDisambiguation")}];
    [dictionary setObject:v8 forKeyedSubscript:@"wasAppSelectedInLastDisambiguation"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  has = self->_has;
  if (has)
  {
    v3 = 2654435761 * self->_numAppDisambiguationsLastTwoMinutes;
    if ((has & 2) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_numAppDisambiguationsLastTenMinutes;
      if ((has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
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
    v5 = 2654435761 * self->_numAppDisambiguationsLastOneHour;
    if ((has & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  v5 = 0;
  if ((has & 8) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_numAppDisambiguationsLastSixHours;
    if ((has & 0x10) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  v6 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_numAppDisambiguationsLastOneDay;
    if ((has & 0x20) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  v7 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_numAppDisambiguationsLastSevenDays;
    if ((has & 0x40) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  v8 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_8:
    v9 = 2654435761 * self->_numAppDisambiguationsLastTwentyEightDays;
    if ((has & 0x80) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  v9 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_9:
    v10 = 2654435761 * self->_numAppDisambiguationsLastInfinity;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  v10 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_10:
    v11 = 2654435761 * self->_numSelectedAppDisambiguationsTwoMinutes;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  v11 = 0;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_11:
    v12 = 2654435761 * self->_numSelectedAppDisambiguationsLastTenMinutes;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  v12 = 0;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_12:
    v13 = 2654435761 * self->_numSelectedAppDisambiguationsLastOneHour;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  v13 = 0;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_13:
    v14 = 2654435761 * self->_numSelectedAppDisambiguationsLastSixHours;
    if ((*&self->_has & 0x1000) != 0)
    {
      goto LABEL_14;
    }

LABEL_28:
    v15 = 0;
    if ((*&self->_has & 0x2000) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_29;
  }

LABEL_27:
  v14 = 0;
  if ((*&self->_has & 0x1000) == 0)
  {
    goto LABEL_28;
  }

LABEL_14:
  v15 = 2654435761 * self->_numSelectedAppDisambiguationsLastOneDay;
  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_15:
    v16 = 2654435761 * self->_numSelectedAppDisambiguationsLastSevenDays;
    goto LABEL_30;
  }

LABEL_29:
  v16 = 0;
LABEL_30:
  if ((*&self->_has & 0x4000) != 0)
  {
    v17 = 2654435761 * self->_numSelectedAppDisambiguationsLastTwentyEightDays;
    if ((*&self->_has & 0x8000) != 0)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v17 = 0;
    if ((*&self->_has & 0x8000) != 0)
    {
LABEL_32:
      v18 = 2654435761 * self->_numSelectedAppDisambiguationsLastInfinity;
      goto LABEL_35;
    }
  }

  v18 = 0;
LABEL_35:
  if (*(&self->_has + 2))
  {
    v19 = 2654435761 * self->_wasAppSelectedInLastDisambiguation;
    if ((*(&self->_has + 2) & 2) != 0)
    {
      goto LABEL_37;
    }

LABEL_39:
    v20 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20;
  }

  v19 = 0;
  if ((*(&self->_has + 2) & 2) == 0)
  {
    goto LABEL_39;
  }

LABEL_37:
  v20 = 2654435761 * self->_minutesSinceLastDisambiguationSameApps;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_73;
  }

  p_has = &self->_has;
  has = self->_has;
  v7 = equalCopy + 40;
  v8 = equalCopy[40];
  if ((*&has & 1) != (v8 & 1))
  {
    goto LABEL_73;
  }

  if (*&has)
  {
    numAppDisambiguationsLastTwoMinutes = self->_numAppDisambiguationsLastTwoMinutes;
    if (numAppDisambiguationsLastTwoMinutes != [equalCopy numAppDisambiguationsLastTwoMinutes])
    {
      goto LABEL_73;
    }

    has = *p_has;
    v8 = *v7;
  }

  v10 = (*&has >> 1) & 1;
  if (v10 != ((v8 >> 1) & 1))
  {
    goto LABEL_73;
  }

  if (v10)
  {
    numAppDisambiguationsLastTenMinutes = self->_numAppDisambiguationsLastTenMinutes;
    if (numAppDisambiguationsLastTenMinutes != [equalCopy numAppDisambiguationsLastTenMinutes])
    {
      goto LABEL_73;
    }

    has = *p_has;
    v8 = *v7;
  }

  v12 = (*&has >> 2) & 1;
  if (v12 != ((v8 >> 2) & 1))
  {
    goto LABEL_73;
  }

  if (v12)
  {
    numAppDisambiguationsLastOneHour = self->_numAppDisambiguationsLastOneHour;
    if (numAppDisambiguationsLastOneHour != [equalCopy numAppDisambiguationsLastOneHour])
    {
      goto LABEL_73;
    }

    has = *p_has;
    v8 = *v7;
  }

  v14 = (*&has >> 3) & 1;
  if (v14 != ((v8 >> 3) & 1))
  {
    goto LABEL_73;
  }

  if (v14)
  {
    numAppDisambiguationsLastSixHours = self->_numAppDisambiguationsLastSixHours;
    if (numAppDisambiguationsLastSixHours != [equalCopy numAppDisambiguationsLastSixHours])
    {
      goto LABEL_73;
    }

    has = *p_has;
    v8 = *v7;
  }

  v16 = (*&has >> 4) & 1;
  if (v16 != ((v8 >> 4) & 1))
  {
    goto LABEL_73;
  }

  if (v16)
  {
    numAppDisambiguationsLastOneDay = self->_numAppDisambiguationsLastOneDay;
    if (numAppDisambiguationsLastOneDay != [equalCopy numAppDisambiguationsLastOneDay])
    {
      goto LABEL_73;
    }

    has = *p_has;
    v8 = *v7;
  }

  v18 = (*&has >> 5) & 1;
  if (v18 != ((v8 >> 5) & 1))
  {
    goto LABEL_73;
  }

  if (v18)
  {
    numAppDisambiguationsLastSevenDays = self->_numAppDisambiguationsLastSevenDays;
    if (numAppDisambiguationsLastSevenDays != [equalCopy numAppDisambiguationsLastSevenDays])
    {
      goto LABEL_73;
    }

    has = *p_has;
    v8 = *v7;
  }

  v20 = (*&has >> 6) & 1;
  if (v20 != ((v8 >> 6) & 1))
  {
    goto LABEL_73;
  }

  if (v20)
  {
    numAppDisambiguationsLastTwentyEightDays = self->_numAppDisambiguationsLastTwentyEightDays;
    if (numAppDisambiguationsLastTwentyEightDays != [equalCopy numAppDisambiguationsLastTwentyEightDays])
    {
      goto LABEL_73;
    }

    has = *p_has;
    v8 = *v7;
  }

  v22 = (*&has >> 7) & 1;
  if (v22 != ((v8 >> 7) & 1))
  {
    goto LABEL_73;
  }

  if (v22)
  {
    numAppDisambiguationsLastInfinity = self->_numAppDisambiguationsLastInfinity;
    if (numAppDisambiguationsLastInfinity != [equalCopy numAppDisambiguationsLastInfinity])
    {
      goto LABEL_73;
    }

    has = *p_has;
    v8 = *v7;
  }

  v24 = (*&has >> 8) & 1;
  if (v24 != ((v8 >> 8) & 1))
  {
    goto LABEL_73;
  }

  if (v24)
  {
    numSelectedAppDisambiguationsTwoMinutes = self->_numSelectedAppDisambiguationsTwoMinutes;
    if (numSelectedAppDisambiguationsTwoMinutes != [equalCopy numSelectedAppDisambiguationsTwoMinutes])
    {
      goto LABEL_73;
    }

    has = *p_has;
    v8 = *v7;
  }

  v26 = (*&has >> 9) & 1;
  if (v26 != ((v8 >> 9) & 1))
  {
    goto LABEL_73;
  }

  if (v26)
  {
    numSelectedAppDisambiguationsLastTenMinutes = self->_numSelectedAppDisambiguationsLastTenMinutes;
    if (numSelectedAppDisambiguationsLastTenMinutes != [equalCopy numSelectedAppDisambiguationsLastTenMinutes])
    {
      goto LABEL_73;
    }

    has = *p_has;
    v8 = *v7;
  }

  v28 = (*&has >> 10) & 1;
  if (v28 != ((v8 >> 10) & 1))
  {
    goto LABEL_73;
  }

  if (v28)
  {
    numSelectedAppDisambiguationsLastOneHour = self->_numSelectedAppDisambiguationsLastOneHour;
    if (numSelectedAppDisambiguationsLastOneHour != [equalCopy numSelectedAppDisambiguationsLastOneHour])
    {
      goto LABEL_73;
    }

    has = *p_has;
    v8 = *v7;
  }

  v30 = (*&has >> 11) & 1;
  if (v30 != ((v8 >> 11) & 1))
  {
    goto LABEL_73;
  }

  if (v30)
  {
    numSelectedAppDisambiguationsLastSixHours = self->_numSelectedAppDisambiguationsLastSixHours;
    if (numSelectedAppDisambiguationsLastSixHours != [equalCopy numSelectedAppDisambiguationsLastSixHours])
    {
      goto LABEL_73;
    }

    has = *p_has;
    v8 = *v7;
  }

  v32 = (*&has >> 12) & 1;
  if (v32 != ((v8 >> 12) & 1))
  {
    goto LABEL_73;
  }

  if (v32)
  {
    numSelectedAppDisambiguationsLastOneDay = self->_numSelectedAppDisambiguationsLastOneDay;
    if (numSelectedAppDisambiguationsLastOneDay != [equalCopy numSelectedAppDisambiguationsLastOneDay])
    {
      goto LABEL_73;
    }

    has = *p_has;
    v8 = *v7;
  }

  v34 = (*&has >> 13) & 1;
  if (v34 != ((v8 >> 13) & 1))
  {
    goto LABEL_73;
  }

  if (v34)
  {
    numSelectedAppDisambiguationsLastSevenDays = self->_numSelectedAppDisambiguationsLastSevenDays;
    if (numSelectedAppDisambiguationsLastSevenDays != [equalCopy numSelectedAppDisambiguationsLastSevenDays])
    {
      goto LABEL_73;
    }

    has = *p_has;
    v8 = *v7;
  }

  v36 = (*&has >> 14) & 1;
  if (v36 != ((v8 >> 14) & 1))
  {
    goto LABEL_73;
  }

  if (v36)
  {
    numSelectedAppDisambiguationsLastTwentyEightDays = self->_numSelectedAppDisambiguationsLastTwentyEightDays;
    if (numSelectedAppDisambiguationsLastTwentyEightDays != [equalCopy numSelectedAppDisambiguationsLastTwentyEightDays])
    {
      goto LABEL_73;
    }

    has = *p_has;
    v8 = *v7;
  }

  if (((v8 ^ *&has) & 0x8000) != 0)
  {
    goto LABEL_73;
  }

  if ((*&has & 0x8000) != 0)
  {
    numSelectedAppDisambiguationsLastInfinity = self->_numSelectedAppDisambiguationsLastInfinity;
    if (numSelectedAppDisambiguationsLastInfinity != [equalCopy numSelectedAppDisambiguationsLastInfinity])
    {
      goto LABEL_73;
    }
  }

  v39 = *(&self->_has + 2);
  v40 = *(equalCopy + 82);
  if ((v39 & 1) != (v40 & 1))
  {
    goto LABEL_73;
  }

  if (v39)
  {
    wasAppSelectedInLastDisambiguation = self->_wasAppSelectedInLastDisambiguation;
    if (wasAppSelectedInLastDisambiguation == [equalCopy wasAppSelectedInLastDisambiguation])
    {
      v39 = *(&self->_has + 2);
      v40 = *(equalCopy + 82);
      goto LABEL_69;
    }

LABEL_73:
    v44 = 0;
    goto LABEL_74;
  }

LABEL_69:
  v42 = (v39 >> 1) & 1;
  if (v42 != ((v40 >> 1) & 1))
  {
    goto LABEL_73;
  }

  if (v42)
  {
    minutesSinceLastDisambiguationSameApps = self->_minutesSinceLastDisambiguationSameApps;
    if (minutesSinceLastDisambiguationSameApps != [equalCopy minutesSinceLastDisambiguationSameApps])
    {
      goto LABEL_73;
    }
  }

  v44 = 1;
LABEL_74:

  return v44;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  p_has = &self->_has;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint32Field();
    has = *p_has;
    if ((*p_has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_26;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteUint32Field();
  has = *p_has;
  if ((*p_has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_27;
  }

LABEL_26:
  PBDataWriterWriteUint32Field();
  has = *p_has;
  if ((*p_has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

LABEL_27:
  PBDataWriterWriteUint32Field();
  has = *p_has;
  if ((*p_has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_29;
  }

LABEL_28:
  PBDataWriterWriteUint32Field();
  has = *p_has;
  if ((*p_has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

LABEL_29:
  PBDataWriterWriteUint32Field();
  has = *p_has;
  if ((*p_has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_31;
  }

LABEL_30:
  PBDataWriterWriteUint32Field();
  has = *p_has;
  if ((*p_has & 0x80) == 0)
  {
LABEL_9:
    if ((has & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  PBDataWriterWriteUint32Field();
  has = *p_has;
  if ((*p_has & 0x100) == 0)
  {
LABEL_10:
    if ((has & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_33;
  }

LABEL_32:
  PBDataWriterWriteUint32Field();
  has = *p_has;
  if ((*p_has & 0x200) == 0)
  {
LABEL_11:
    if ((has & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_34;
  }

LABEL_33:
  PBDataWriterWriteUint32Field();
  has = *p_has;
  if ((*p_has & 0x400) == 0)
  {
LABEL_12:
    if ((has & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_35;
  }

LABEL_34:
  PBDataWriterWriteUint32Field();
  has = *p_has;
  if ((*p_has & 0x800) == 0)
  {
LABEL_13:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_36;
  }

LABEL_35:
  PBDataWriterWriteUint32Field();
  has = *p_has;
  if ((*p_has & 0x1000) == 0)
  {
LABEL_14:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_37;
  }

LABEL_36:
  PBDataWriterWriteUint32Field();
  has = *p_has;
  if ((*p_has & 0x2000) == 0)
  {
LABEL_15:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_16;
    }

LABEL_38:
    PBDataWriterWriteUint32Field();
    if ((*p_has & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_39;
  }

LABEL_37:
  PBDataWriterWriteUint32Field();
  has = *p_has;
  if ((*p_has & 0x4000) != 0)
  {
    goto LABEL_38;
  }

LABEL_16:
  if ((has & 0x8000) == 0)
  {
    goto LABEL_17;
  }

LABEL_39:
  PBDataWriterWriteUint32Field();
LABEL_17:
  v6 = *(&self->_has + 2);
  if (v6)
  {
    PBDataWriterWriteBOOLField();
    v6 = *(&self->_has + 2);
  }

  if ((v6 & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
  }
}

- (void)setHasMinutesSinceLastDisambiguationSameApps:(BOOL)apps
{
  if (apps)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFD | v3;
}

- (void)setHasNumSelectedAppDisambiguationsLastInfinity:(BOOL)infinity
{
  if (infinity)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x8000 | *&self->_has & 0x7FFF;
}

- (void)setHasNumSelectedAppDisambiguationsLastTwentyEightDays:(BOOL)days
{
  if (days)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBFFF | v3;
}

- (void)setHasNumSelectedAppDisambiguationsLastSevenDays:(BOOL)days
{
  if (days)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFF | v3;
}

- (void)setHasNumSelectedAppDisambiguationsLastOneDay:(BOOL)day
{
  if (day)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (void)setHasNumSelectedAppDisambiguationsLastSixHours:(BOOL)hours
{
  if (hours)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasNumSelectedAppDisambiguationsLastOneHour:(BOOL)hour
{
  if (hour)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasNumSelectedAppDisambiguationsLastTenMinutes:(BOOL)minutes
{
  if (minutes)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasNumSelectedAppDisambiguationsTwoMinutes:(BOOL)minutes
{
  if (minutes)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasNumAppDisambiguationsLastInfinity:(BOOL)infinity
{
  if (infinity)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasNumAppDisambiguationsLastTwentyEightDays:(BOOL)days
{
  if (days)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasNumAppDisambiguationsLastSevenDays:(BOOL)days
{
  if (days)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasNumAppDisambiguationsLastOneDay:(BOOL)day
{
  if (day)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasNumAppDisambiguationsLastSixHours:(BOOL)hours
{
  if (hours)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasNumAppDisambiguationsLastOneHour:(BOOL)hour
{
  if (hour)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasNumAppDisambiguationsLastTenMinutes:(BOOL)minutes
{
  if (minutes)
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