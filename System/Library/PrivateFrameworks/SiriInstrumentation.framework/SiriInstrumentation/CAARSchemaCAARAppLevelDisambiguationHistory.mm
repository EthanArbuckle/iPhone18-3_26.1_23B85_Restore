@interface CAARSchemaCAARAppLevelDisambiguationHistory
- (BOOL)isEqual:(id)a3;
- (CAARSchemaCAARAppLevelDisambiguationHistory)initWithDictionary:(id)a3;
- (CAARSchemaCAARAppLevelDisambiguationHistory)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasMinutesSinceLastDisambiguationSameApps:(BOOL)a3;
- (void)setHasNumAppDisambiguationsLastInfinity:(BOOL)a3;
- (void)setHasNumAppDisambiguationsLastOneDay:(BOOL)a3;
- (void)setHasNumAppDisambiguationsLastOneHour:(BOOL)a3;
- (void)setHasNumAppDisambiguationsLastSevenDays:(BOOL)a3;
- (void)setHasNumAppDisambiguationsLastSixHours:(BOOL)a3;
- (void)setHasNumAppDisambiguationsLastTenMinutes:(BOOL)a3;
- (void)setHasNumAppDisambiguationsLastTwentyEightDays:(BOOL)a3;
- (void)setHasNumSelectedAppDisambiguationsLastInfinity:(BOOL)a3;
- (void)setHasNumSelectedAppDisambiguationsLastOneDay:(BOOL)a3;
- (void)setHasNumSelectedAppDisambiguationsLastOneHour:(BOOL)a3;
- (void)setHasNumSelectedAppDisambiguationsLastSevenDays:(BOOL)a3;
- (void)setHasNumSelectedAppDisambiguationsLastSixHours:(BOOL)a3;
- (void)setHasNumSelectedAppDisambiguationsLastTenMinutes:(BOOL)a3;
- (void)setHasNumSelectedAppDisambiguationsLastTwentyEightDays:(BOOL)a3;
- (void)setHasNumSelectedAppDisambiguationsTwoMinutes:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CAARSchemaCAARAppLevelDisambiguationHistory

- (CAARSchemaCAARAppLevelDisambiguationHistory)initWithDictionary:(id)a3
{
  v4 = a3;
  v40.receiver = self;
  v40.super_class = CAARSchemaCAARAppLevelDisambiguationHistory;
  v5 = [(CAARSchemaCAARAppLevelDisambiguationHistory *)&v40 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"numAppDisambiguationsLastTwoMinutes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARAppLevelDisambiguationHistory setNumAppDisambiguationsLastTwoMinutes:](v5, "setNumAppDisambiguationsLastTwoMinutes:", [v6 unsignedIntValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"numAppDisambiguationsLastTenMinutes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARAppLevelDisambiguationHistory setNumAppDisambiguationsLastTenMinutes:](v5, "setNumAppDisambiguationsLastTenMinutes:", [v7 unsignedIntValue]);
    }

    v30 = v7;
    v8 = [v4 objectForKeyedSubscript:@"numAppDisambiguationsLastOneHour"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARAppLevelDisambiguationHistory setNumAppDisambiguationsLastOneHour:](v5, "setNumAppDisambiguationsLastOneHour:", [v8 unsignedIntValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"numAppDisambiguationsLastSixHours"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARAppLevelDisambiguationHistory setNumAppDisambiguationsLastSixHours:](v5, "setNumAppDisambiguationsLastSixHours:", [v9 unsignedIntValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"numAppDisambiguationsLastOneDay"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARAppLevelDisambiguationHistory setNumAppDisambiguationsLastOneDay:](v5, "setNumAppDisambiguationsLastOneDay:", [v10 unsignedIntValue]);
    }

    v35 = v8;
    v11 = [v4 objectForKeyedSubscript:@"numAppDisambiguationsLastSevenDays"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARAppLevelDisambiguationHistory setNumAppDisambiguationsLastSevenDays:](v5, "setNumAppDisambiguationsLastSevenDays:", [v11 unsignedIntValue]);
    }

    v12 = v6;
    v13 = [v4 objectForKeyedSubscript:@"numAppDisambiguationsLastTwentyEightDays"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARAppLevelDisambiguationHistory setNumAppDisambiguationsLastTwentyEightDays:](v5, "setNumAppDisambiguationsLastTwentyEightDays:", [v13 unsignedIntValue]);
    }

    v14 = [v4 objectForKeyedSubscript:@"numAppDisambiguationsLastInfinity"];
    objc_opt_class();
    v39 = v14;
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARAppLevelDisambiguationHistory setNumAppDisambiguationsLastInfinity:](v5, "setNumAppDisambiguationsLastInfinity:", [v14 unsignedIntValue]);
    }

    v15 = [v4 objectForKeyedSubscript:@"numSelectedAppDisambiguationsTwoMinutes"];
    objc_opt_class();
    v38 = v15;
    v16 = v12;
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARAppLevelDisambiguationHistory setNumSelectedAppDisambiguationsTwoMinutes:](v5, "setNumSelectedAppDisambiguationsTwoMinutes:", [v38 unsignedIntValue]);
    }

    v17 = [v4 objectForKeyedSubscript:@"numSelectedAppDisambiguationsLastTenMinutes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARAppLevelDisambiguationHistory setNumSelectedAppDisambiguationsLastTenMinutes:](v5, "setNumSelectedAppDisambiguationsLastTenMinutes:", [v17 unsignedIntValue]);
    }

    v18 = [v4 objectForKeyedSubscript:@"numSelectedAppDisambiguationsLastOneHour"];
    objc_opt_class();
    v37 = v18;
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARAppLevelDisambiguationHistory setNumSelectedAppDisambiguationsLastOneHour:](v5, "setNumSelectedAppDisambiguationsLastOneHour:", [v18 unsignedIntValue]);
    }

    v34 = v9;
    v19 = [v4 objectForKeyedSubscript:@"numSelectedAppDisambiguationsLastSixHours"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARAppLevelDisambiguationHistory setNumSelectedAppDisambiguationsLastSixHours:](v5, "setNumSelectedAppDisambiguationsLastSixHours:", [v19 unsignedIntValue]);
    }

    v33 = v10;
    v20 = [v4 objectForKeyedSubscript:@"numSelectedAppDisambiguationsLastOneDay"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARAppLevelDisambiguationHistory setNumSelectedAppDisambiguationsLastOneDay:](v5, "setNumSelectedAppDisambiguationsLastOneDay:", [v20 unsignedIntValue]);
    }

    v32 = v11;
    v21 = [v4 objectForKeyedSubscript:@"numSelectedAppDisambiguationsLastSevenDays"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARAppLevelDisambiguationHistory setNumSelectedAppDisambiguationsLastSevenDays:](v5, "setNumSelectedAppDisambiguationsLastSevenDays:", [v21 unsignedIntValue]);
    }

    v31 = v13;
    v22 = [v4 objectForKeyedSubscript:@"numSelectedAppDisambiguationsLastTwentyEightDays"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARAppLevelDisambiguationHistory setNumSelectedAppDisambiguationsLastTwentyEightDays:](v5, "setNumSelectedAppDisambiguationsLastTwentyEightDays:", [v22 unsignedIntValue]);
    }

    v29 = v19;
    v36 = v16;
    v23 = [v4 objectForKeyedSubscript:@"numSelectedAppDisambiguationsLastInfinity"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARAppLevelDisambiguationHistory setNumSelectedAppDisambiguationsLastInfinity:](v5, "setNumSelectedAppDisambiguationsLastInfinity:", [v23 unsignedIntValue]);
    }

    v24 = v17;
    v25 = [v4 objectForKeyedSubscript:@"wasAppSelectedInLastDisambiguation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARAppLevelDisambiguationHistory setWasAppSelectedInLastDisambiguation:](v5, "setWasAppSelectedInLastDisambiguation:", [v25 BOOLValue]);
    }

    v26 = [v4 objectForKeyedSubscript:@"minutesSinceLastDisambiguationSameApps"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARAppLevelDisambiguationHistory setMinutesSinceLastDisambiguationSameApps:](v5, "setMinutesSinceLastDisambiguationSameApps:", [v26 unsignedIntValue]);
    }

    v27 = v5;
  }

  return v5;
}

- (CAARSchemaCAARAppLevelDisambiguationHistory)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(CAARSchemaCAARAppLevelDisambiguationHistory *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(CAARSchemaCAARAppLevelDisambiguationHistory *)self dictionaryRepresentation];
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
  p_has = &self->_has;
  if ((*(&self->_has + 2) & 2) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CAARSchemaCAARAppLevelDisambiguationHistory minutesSinceLastDisambiguationSameApps](self, "minutesSinceLastDisambiguationSameApps")}];
    [v3 setObject:v5 forKeyedSubscript:@"minutesSinceLastDisambiguationSameApps"];
  }

  v6 = *p_has;
  if ((*p_has & 0x80) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CAARSchemaCAARAppLevelDisambiguationHistory numAppDisambiguationsLastInfinity](self, "numAppDisambiguationsLastInfinity")}];
    [v3 setObject:v10 forKeyedSubscript:@"numAppDisambiguationsLastInfinity"];

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
  [v3 setObject:v11 forKeyedSubscript:@"numAppDisambiguationsLastOneDay"];

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
  [v3 setObject:v12 forKeyedSubscript:@"numAppDisambiguationsLastOneHour"];

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
  [v3 setObject:v13 forKeyedSubscript:@"numAppDisambiguationsLastSevenDays"];

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
  [v3 setObject:v14 forKeyedSubscript:@"numAppDisambiguationsLastSixHours"];

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
  [v3 setObject:v15 forKeyedSubscript:@"numAppDisambiguationsLastTenMinutes"];

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
  [v3 setObject:v16 forKeyedSubscript:@"numAppDisambiguationsLastTwentyEightDays"];

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
  [v3 setObject:v17 forKeyedSubscript:@"numAppDisambiguationsLastTwoMinutes"];

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
  [v3 setObject:v18 forKeyedSubscript:@"numSelectedAppDisambiguationsLastInfinity"];

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
  [v3 setObject:v19 forKeyedSubscript:@"numSelectedAppDisambiguationsLastOneDay"];

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
  [v3 setObject:v20 forKeyedSubscript:@"numSelectedAppDisambiguationsLastOneHour"];

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
  [v3 setObject:v21 forKeyedSubscript:@"numSelectedAppDisambiguationsLastSevenDays"];

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
  [v3 setObject:v22 forKeyedSubscript:@"numSelectedAppDisambiguationsLastSixHours"];

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
  [v3 setObject:v23 forKeyedSubscript:@"numSelectedAppDisambiguationsLastTenMinutes"];

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
  [v3 setObject:v24 forKeyedSubscript:@"numSelectedAppDisambiguationsLastTwentyEightDays"];

  if ((*p_has & 0x100) != 0)
  {
LABEL_19:
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CAARSchemaCAARAppLevelDisambiguationHistory numSelectedAppDisambiguationsTwoMinutes](self, "numSelectedAppDisambiguationsTwoMinutes")}];
    [v3 setObject:v7 forKeyedSubscript:@"numSelectedAppDisambiguationsTwoMinutes"];
  }

LABEL_20:
  if (*(&self->_has + 2))
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[CAARSchemaCAARAppLevelDisambiguationHistory wasAppSelectedInLastDisambiguation](self, "wasAppSelectedInLastDisambiguation")}];
    [v3 setObject:v8 forKeyedSubscript:@"wasAppSelectedInLastDisambiguation"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_73;
  }

  p_has = &self->_has;
  has = self->_has;
  v7 = v4 + 40;
  v8 = v4[40];
  if ((*&has & 1) != (v8 & 1))
  {
    goto LABEL_73;
  }

  if (*&has)
  {
    numAppDisambiguationsLastTwoMinutes = self->_numAppDisambiguationsLastTwoMinutes;
    if (numAppDisambiguationsLastTwoMinutes != [v4 numAppDisambiguationsLastTwoMinutes])
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
    if (numAppDisambiguationsLastTenMinutes != [v4 numAppDisambiguationsLastTenMinutes])
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
    if (numAppDisambiguationsLastOneHour != [v4 numAppDisambiguationsLastOneHour])
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
    if (numAppDisambiguationsLastSixHours != [v4 numAppDisambiguationsLastSixHours])
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
    if (numAppDisambiguationsLastOneDay != [v4 numAppDisambiguationsLastOneDay])
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
    if (numAppDisambiguationsLastSevenDays != [v4 numAppDisambiguationsLastSevenDays])
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
    if (numAppDisambiguationsLastTwentyEightDays != [v4 numAppDisambiguationsLastTwentyEightDays])
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
    if (numAppDisambiguationsLastInfinity != [v4 numAppDisambiguationsLastInfinity])
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
    if (numSelectedAppDisambiguationsTwoMinutes != [v4 numSelectedAppDisambiguationsTwoMinutes])
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
    if (numSelectedAppDisambiguationsLastTenMinutes != [v4 numSelectedAppDisambiguationsLastTenMinutes])
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
    if (numSelectedAppDisambiguationsLastOneHour != [v4 numSelectedAppDisambiguationsLastOneHour])
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
    if (numSelectedAppDisambiguationsLastSixHours != [v4 numSelectedAppDisambiguationsLastSixHours])
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
    if (numSelectedAppDisambiguationsLastOneDay != [v4 numSelectedAppDisambiguationsLastOneDay])
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
    if (numSelectedAppDisambiguationsLastSevenDays != [v4 numSelectedAppDisambiguationsLastSevenDays])
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
    if (numSelectedAppDisambiguationsLastTwentyEightDays != [v4 numSelectedAppDisambiguationsLastTwentyEightDays])
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
    if (numSelectedAppDisambiguationsLastInfinity != [v4 numSelectedAppDisambiguationsLastInfinity])
    {
      goto LABEL_73;
    }
  }

  v39 = *(&self->_has + 2);
  v40 = *(v4 + 82);
  if ((v39 & 1) != (v40 & 1))
  {
    goto LABEL_73;
  }

  if (v39)
  {
    wasAppSelectedInLastDisambiguation = self->_wasAppSelectedInLastDisambiguation;
    if (wasAppSelectedInLastDisambiguation == [v4 wasAppSelectedInLastDisambiguation])
    {
      v39 = *(&self->_has + 2);
      v40 = *(v4 + 82);
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
    if (minutesSinceLastDisambiguationSameApps != [v4 minutesSinceLastDisambiguationSameApps])
    {
      goto LABEL_73;
    }
  }

  v44 = 1;
LABEL_74:

  return v44;
}

- (void)writeTo:(id)a3
{
  v7 = a3;
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

- (void)setHasMinutesSinceLastDisambiguationSameApps:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFD | v3;
}

- (void)setHasNumSelectedAppDisambiguationsLastInfinity:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x8000 | *&self->_has & 0x7FFF;
}

- (void)setHasNumSelectedAppDisambiguationsLastTwentyEightDays:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBFFF | v3;
}

- (void)setHasNumSelectedAppDisambiguationsLastSevenDays:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFF | v3;
}

- (void)setHasNumSelectedAppDisambiguationsLastOneDay:(BOOL)a3
{
  if (a3)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (void)setHasNumSelectedAppDisambiguationsLastSixHours:(BOOL)a3
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

- (void)setHasNumSelectedAppDisambiguationsLastOneHour:(BOOL)a3
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

- (void)setHasNumSelectedAppDisambiguationsLastTenMinutes:(BOOL)a3
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

- (void)setHasNumSelectedAppDisambiguationsTwoMinutes:(BOOL)a3
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

- (void)setHasNumAppDisambiguationsLastInfinity:(BOOL)a3
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

- (void)setHasNumAppDisambiguationsLastTwentyEightDays:(BOOL)a3
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

- (void)setHasNumAppDisambiguationsLastSevenDays:(BOOL)a3
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

- (void)setHasNumAppDisambiguationsLastOneDay:(BOOL)a3
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

- (void)setHasNumAppDisambiguationsLastSixHours:(BOOL)a3
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

- (void)setHasNumAppDisambiguationsLastOneHour:(BOOL)a3
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

- (void)setHasNumAppDisambiguationsLastTenMinutes:(BOOL)a3
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