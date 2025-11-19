@interface CAARSchemaCAARActionLevelDisambiguationHistory
- (BOOL)isEqual:(id)a3;
- (CAARSchemaCAARActionLevelDisambiguationHistory)initWithDictionary:(id)a3;
- (CAARSchemaCAARActionLevelDisambiguationHistory)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasMinutesSinceLastActionDisambiguationForThisAction:(BOOL)a3;
- (void)setHasMinutesSinceLastDisambiguationForSameActions:(BOOL)a3;
- (void)setHasNumActionDisambiguationsLasTenMinutes:(BOOL)a3;
- (void)setHasNumActionDisambiguationsLastInfinity:(BOOL)a3;
- (void)setHasNumActionDisambiguationsLastOneDay:(BOOL)a3;
- (void)setHasNumActionDisambiguationsLastOneHour:(BOOL)a3;
- (void)setHasNumActionDisambiguationsLastSevenDays:(BOOL)a3;
- (void)setHasNumActionDisambiguationsLastSixHours:(BOOL)a3;
- (void)setHasNumActionDisambiguationsLastTwentyEightDays:(BOOL)a3;
- (void)setHasNumSelectedActionDisambiguationsLastInfinity:(BOOL)a3;
- (void)setHasNumSelectedActionDisambiguationsLastOneDay:(BOOL)a3;
- (void)setHasNumSelectedActionDisambiguationsLastOneHour:(BOOL)a3;
- (void)setHasNumSelectedActionDisambiguationsLastSevenDays:(BOOL)a3;
- (void)setHasNumSelectedActionDisambiguationsLastSixHours:(BOOL)a3;
- (void)setHasNumSelectedActionDisambiguationsLastTenMinutes:(BOOL)a3;
- (void)setHasNumSelectedActionDisambiguationsLastTwentyEightDays:(BOOL)a3;
- (void)setHasNumSelectedActionDisambiguationsLastTwoMinutes:(BOOL)a3;
- (void)setHasWasActionSelectedInLastDisambiguation:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CAARSchemaCAARActionLevelDisambiguationHistory

- (CAARSchemaCAARActionLevelDisambiguationHistory)initWithDictionary:(id)a3
{
  v4 = a3;
  v46.receiver = self;
  v46.super_class = CAARSchemaCAARActionLevelDisambiguationHistory;
  v5 = [(CAARSchemaCAARActionLevelDisambiguationHistory *)&v46 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"numActionDisambiguationsLastTwoMinutes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARActionLevelDisambiguationHistory setNumActionDisambiguationsLastTwoMinutes:](v5, "setNumActionDisambiguationsLastTwoMinutes:", [v6 unsignedIntValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"numActionDisambiguationsLasTenMinutes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARActionLevelDisambiguationHistory setNumActionDisambiguationsLasTenMinutes:](v5, "setNumActionDisambiguationsLasTenMinutes:", [v7 unsignedIntValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"numActionDisambiguationsLastOneHour"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARActionLevelDisambiguationHistory setNumActionDisambiguationsLastOneHour:](v5, "setNumActionDisambiguationsLastOneHour:", [v8 unsignedIntValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"numActionDisambiguationsLastSixHours"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARActionLevelDisambiguationHistory setNumActionDisambiguationsLastSixHours:](v5, "setNumActionDisambiguationsLastSixHours:", [v9 unsignedIntValue]);
    }

    v35 = v9;
    v10 = v8;
    v11 = [v4 objectForKeyedSubscript:@"numActionDisambiguationsLastOneDay"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARActionLevelDisambiguationHistory setNumActionDisambiguationsLastOneDay:](v5, "setNumActionDisambiguationsLastOneDay:", [v11 unsignedIntValue]);
    }

    v38 = v11;
    v12 = v7;
    v13 = [v4 objectForKeyedSubscript:@"numActionDisambiguationsLastSevenDays"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARActionLevelDisambiguationHistory setNumActionDisambiguationsLastSevenDays:](v5, "setNumActionDisambiguationsLastSevenDays:", [v13 unsignedIntValue]);
    }

    v14 = v6;
    v15 = [v4 objectForKeyedSubscript:@"numActionDisambiguationsLastTwentyEightDays"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARActionLevelDisambiguationHistory setNumActionDisambiguationsLastTwentyEightDays:](v5, "setNumActionDisambiguationsLastTwentyEightDays:", [v15 unsignedIntValue]);
    }

    v16 = [v4 objectForKeyedSubscript:@"numActionDisambiguationsLastInfinity"];
    objc_opt_class();
    v45 = v16;
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARActionLevelDisambiguationHistory setNumActionDisambiguationsLastInfinity:](v5, "setNumActionDisambiguationsLastInfinity:", [v16 unsignedIntValue]);
    }

    v17 = [v4 objectForKeyedSubscript:@"numSelectedActionDisambiguationsLastTwoMinutes"];
    objc_opt_class();
    v44 = v17;
    v18 = v14;
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARActionLevelDisambiguationHistory setNumSelectedActionDisambiguationsLastTwoMinutes:](v5, "setNumSelectedActionDisambiguationsLastTwoMinutes:", [v44 unsignedIntValue]);
    }

    v19 = [v4 objectForKeyedSubscript:@"numSelectedActionDisambiguationsLastTenMinutes"];
    objc_opt_class();
    v43 = v19;
    v20 = v12;
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARActionLevelDisambiguationHistory setNumSelectedActionDisambiguationsLastTenMinutes:](v5, "setNumSelectedActionDisambiguationsLastTenMinutes:", [v43 unsignedIntValue]);
    }

    v21 = [v4 objectForKeyedSubscript:@"numSelectedActionDisambiguationsLastOneHour"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARActionLevelDisambiguationHistory setNumSelectedActionDisambiguationsLastOneHour:](v5, "setNumSelectedActionDisambiguationsLastOneHour:", [v21 unsignedIntValue]);
    }

    v22 = [v4 objectForKeyedSubscript:@"numSelectedActionDisambiguationsLastSixHours"];
    objc_opt_class();
    v42 = v22;
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARActionLevelDisambiguationHistory setNumSelectedActionDisambiguationsLastSixHours:](v5, "setNumSelectedActionDisambiguationsLastSixHours:", [v22 unsignedIntValue]);
    }

    v23 = [v4 objectForKeyedSubscript:@"numSelectedActionDisambiguationsLastOneDay"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARActionLevelDisambiguationHistory setNumSelectedActionDisambiguationsLastOneDay:](v5, "setNumSelectedActionDisambiguationsLastOneDay:", [v23 unsignedIntValue]);
    }

    v37 = v13;
    v24 = [v4 objectForKeyedSubscript:@"numSelectedActionDisambiguationsLastSevenDays"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARActionLevelDisambiguationHistory setNumSelectedActionDisambiguationsLastSevenDays:](v5, "setNumSelectedActionDisambiguationsLastSevenDays:", [v24 unsignedIntValue]);
    }

    v33 = v24;
    v36 = v15;
    v25 = [v4 objectForKeyedSubscript:@"numSelectedActionDisambiguationsLastTwentyEightDays"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARActionLevelDisambiguationHistory setNumSelectedActionDisambiguationsLastTwentyEightDays:](v5, "setNumSelectedActionDisambiguationsLastTwentyEightDays:", [v25 unsignedIntValue]);
    }

    v41 = v18;
    v26 = [v4 objectForKeyedSubscript:@"numSelectedActionDisambiguationsLastInfinity"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARActionLevelDisambiguationHistory setNumSelectedActionDisambiguationsLastInfinity:](v5, "setNumSelectedActionDisambiguationsLastInfinity:", [v26 unsignedIntValue]);
    }

    v40 = v20;
    v27 = [v4 objectForKeyedSubscript:@"minutesSinceLastDisambiguationSameActions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARActionLevelDisambiguationHistory setMinutesSinceLastDisambiguationSameActions:](v5, "setMinutesSinceLastDisambiguationSameActions:", [v27 BOOLValue]);
    }

    v34 = v21;
    v39 = v10;
    v28 = [v4 objectForKeyedSubscript:@"minutesSinceLastActionDisambiguationForThisAction"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARActionLevelDisambiguationHistory setMinutesSinceLastActionDisambiguationForThisAction:](v5, "setMinutesSinceLastActionDisambiguationForThisAction:", [v28 unsignedIntValue]);
    }

    v29 = [v4 objectForKeyedSubscript:@"wasActionSelectedInLastDisambiguation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARActionLevelDisambiguationHistory setWasActionSelectedInLastDisambiguation:](v5, "setWasActionSelectedInLastDisambiguation:", [v29 BOOLValue]);
    }

    v30 = [v4 objectForKeyedSubscript:@"minutesSinceLastDisambiguationForSameActions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARActionLevelDisambiguationHistory setMinutesSinceLastDisambiguationForSameActions:](v5, "setMinutesSinceLastDisambiguationForSameActions:", [v30 unsignedIntValue]);
    }

    v31 = v5;
  }

  return v5;
}

- (CAARSchemaCAARActionLevelDisambiguationHistory)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(CAARSchemaCAARActionLevelDisambiguationHistory *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(CAARSchemaCAARActionLevelDisambiguationHistory *)self dictionaryRepresentation];
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
  v5 = *(&self->_has + 2);
  if ((v5 & 2) != 0)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CAARSchemaCAARActionLevelDisambiguationHistory minutesSinceLastActionDisambiguationForThisAction](self, "minutesSinceLastActionDisambiguationForThisAction")}];
    [v3 setObject:v11 forKeyedSubscript:@"minutesSinceLastActionDisambiguationForThisAction"];

    v5 = *(&self->_has + 2);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(&self->_has + 2) & 8) == 0)
  {
    goto LABEL_3;
  }

  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CAARSchemaCAARActionLevelDisambiguationHistory minutesSinceLastDisambiguationForSameActions](self, "minutesSinceLastDisambiguationForSameActions")}];
  [v3 setObject:v12 forKeyedSubscript:@"minutesSinceLastDisambiguationForSameActions"];

  if (*(&self->_has + 2))
  {
LABEL_4:
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[CAARSchemaCAARActionLevelDisambiguationHistory minutesSinceLastDisambiguationSameActions](self, "minutesSinceLastDisambiguationSameActions")}];
    [v3 setObject:v6 forKeyedSubscript:@"minutesSinceLastDisambiguationSameActions"];
  }

LABEL_5:
  v7 = *p_has;
  if ((*p_has & 2) != 0)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CAARSchemaCAARActionLevelDisambiguationHistory numActionDisambiguationsLasTenMinutes](self, "numActionDisambiguationsLasTenMinutes")}];
    [v3 setObject:v13 forKeyedSubscript:@"numActionDisambiguationsLasTenMinutes"];

    v7 = *p_has;
    if ((*p_has & 0x80) == 0)
    {
LABEL_7:
      if ((v7 & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_32;
    }
  }

  else if ((v7 & 0x80) == 0)
  {
    goto LABEL_7;
  }

  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CAARSchemaCAARActionLevelDisambiguationHistory numActionDisambiguationsLastInfinity](self, "numActionDisambiguationsLastInfinity")}];
  [v3 setObject:v14 forKeyedSubscript:@"numActionDisambiguationsLastInfinity"];

  v7 = *p_has;
  if ((*p_has & 0x10) == 0)
  {
LABEL_8:
    if ((v7 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_32:
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CAARSchemaCAARActionLevelDisambiguationHistory numActionDisambiguationsLastOneDay](self, "numActionDisambiguationsLastOneDay")}];
  [v3 setObject:v15 forKeyedSubscript:@"numActionDisambiguationsLastOneDay"];

  v7 = *p_has;
  if ((*p_has & 4) == 0)
  {
LABEL_9:
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_34;
  }

LABEL_33:
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CAARSchemaCAARActionLevelDisambiguationHistory numActionDisambiguationsLastOneHour](self, "numActionDisambiguationsLastOneHour")}];
  [v3 setObject:v16 forKeyedSubscript:@"numActionDisambiguationsLastOneHour"];

  v7 = *p_has;
  if ((*p_has & 0x20) == 0)
  {
LABEL_10:
    if ((v7 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_35;
  }

LABEL_34:
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CAARSchemaCAARActionLevelDisambiguationHistory numActionDisambiguationsLastSevenDays](self, "numActionDisambiguationsLastSevenDays")}];
  [v3 setObject:v17 forKeyedSubscript:@"numActionDisambiguationsLastSevenDays"];

  v7 = *p_has;
  if ((*p_has & 8) == 0)
  {
LABEL_11:
    if ((v7 & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_36;
  }

LABEL_35:
  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CAARSchemaCAARActionLevelDisambiguationHistory numActionDisambiguationsLastSixHours](self, "numActionDisambiguationsLastSixHours")}];
  [v3 setObject:v18 forKeyedSubscript:@"numActionDisambiguationsLastSixHours"];

  v7 = *p_has;
  if ((*p_has & 0x40) == 0)
  {
LABEL_12:
    if ((v7 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_37;
  }

LABEL_36:
  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CAARSchemaCAARActionLevelDisambiguationHistory numActionDisambiguationsLastTwentyEightDays](self, "numActionDisambiguationsLastTwentyEightDays")}];
  [v3 setObject:v19 forKeyedSubscript:@"numActionDisambiguationsLastTwentyEightDays"];

  v7 = *p_has;
  if ((*p_has & 1) == 0)
  {
LABEL_13:
    if ((v7 & 0x8000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_38;
  }

LABEL_37:
  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CAARSchemaCAARActionLevelDisambiguationHistory numActionDisambiguationsLastTwoMinutes](self, "numActionDisambiguationsLastTwoMinutes")}];
  [v3 setObject:v20 forKeyedSubscript:@"numActionDisambiguationsLastTwoMinutes"];

  v7 = *p_has;
  if ((*p_has & 0x8000) == 0)
  {
LABEL_14:
    if ((v7 & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_39;
  }

LABEL_38:
  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CAARSchemaCAARActionLevelDisambiguationHistory numSelectedActionDisambiguationsLastInfinity](self, "numSelectedActionDisambiguationsLastInfinity")}];
  [v3 setObject:v21 forKeyedSubscript:@"numSelectedActionDisambiguationsLastInfinity"];

  v7 = *p_has;
  if ((*p_has & 0x1000) == 0)
  {
LABEL_15:
    if ((v7 & 0x400) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_40;
  }

LABEL_39:
  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CAARSchemaCAARActionLevelDisambiguationHistory numSelectedActionDisambiguationsLastOneDay](self, "numSelectedActionDisambiguationsLastOneDay")}];
  [v3 setObject:v22 forKeyedSubscript:@"numSelectedActionDisambiguationsLastOneDay"];

  v7 = *p_has;
  if ((*p_has & 0x400) == 0)
  {
LABEL_16:
    if ((v7 & 0x2000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_41;
  }

LABEL_40:
  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CAARSchemaCAARActionLevelDisambiguationHistory numSelectedActionDisambiguationsLastOneHour](self, "numSelectedActionDisambiguationsLastOneHour")}];
  [v3 setObject:v23 forKeyedSubscript:@"numSelectedActionDisambiguationsLastOneHour"];

  v7 = *p_has;
  if ((*p_has & 0x2000) == 0)
  {
LABEL_17:
    if ((v7 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_42;
  }

LABEL_41:
  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CAARSchemaCAARActionLevelDisambiguationHistory numSelectedActionDisambiguationsLastSevenDays](self, "numSelectedActionDisambiguationsLastSevenDays")}];
  [v3 setObject:v24 forKeyedSubscript:@"numSelectedActionDisambiguationsLastSevenDays"];

  v7 = *p_has;
  if ((*p_has & 0x800) == 0)
  {
LABEL_18:
    if ((v7 & 0x200) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_43;
  }

LABEL_42:
  v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CAARSchemaCAARActionLevelDisambiguationHistory numSelectedActionDisambiguationsLastSixHours](self, "numSelectedActionDisambiguationsLastSixHours")}];
  [v3 setObject:v25 forKeyedSubscript:@"numSelectedActionDisambiguationsLastSixHours"];

  v7 = *p_has;
  if ((*p_has & 0x200) == 0)
  {
LABEL_19:
    if ((v7 & 0x4000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_44;
  }

LABEL_43:
  v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CAARSchemaCAARActionLevelDisambiguationHistory numSelectedActionDisambiguationsLastTenMinutes](self, "numSelectedActionDisambiguationsLastTenMinutes")}];
  [v3 setObject:v26 forKeyedSubscript:@"numSelectedActionDisambiguationsLastTenMinutes"];

  v7 = *p_has;
  if ((*p_has & 0x4000) == 0)
  {
LABEL_20:
    if ((v7 & 0x100) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_44:
  v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CAARSchemaCAARActionLevelDisambiguationHistory numSelectedActionDisambiguationsLastTwentyEightDays](self, "numSelectedActionDisambiguationsLastTwentyEightDays")}];
  [v3 setObject:v27 forKeyedSubscript:@"numSelectedActionDisambiguationsLastTwentyEightDays"];

  if ((*p_has & 0x100) != 0)
  {
LABEL_21:
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CAARSchemaCAARActionLevelDisambiguationHistory numSelectedActionDisambiguationsLastTwoMinutes](self, "numSelectedActionDisambiguationsLastTwoMinutes")}];
    [v3 setObject:v8 forKeyedSubscript:@"numSelectedActionDisambiguationsLastTwoMinutes"];
  }

LABEL_22:
  if ((*(&self->_has + 2) & 4) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[CAARSchemaCAARActionLevelDisambiguationHistory wasActionSelectedInLastDisambiguation](self, "wasActionSelectedInLastDisambiguation")}];
    [v3 setObject:v9 forKeyedSubscript:@"wasActionSelectedInLastDisambiguation"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  has = self->_has;
  if (has)
  {
    v3 = 2654435761 * self->_numActionDisambiguationsLastTwoMinutes;
    if ((has & 2) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_numActionDisambiguationsLasTenMinutes;
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
    v5 = 2654435761 * self->_numActionDisambiguationsLastOneHour;
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
    v6 = 2654435761 * self->_numActionDisambiguationsLastSixHours;
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
    v7 = 2654435761 * self->_numActionDisambiguationsLastOneDay;
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
    v8 = 2654435761 * self->_numActionDisambiguationsLastSevenDays;
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
    v9 = 2654435761 * self->_numActionDisambiguationsLastTwentyEightDays;
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
    v10 = 2654435761 * self->_numActionDisambiguationsLastInfinity;
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
    v11 = 2654435761 * self->_numSelectedActionDisambiguationsLastTwoMinutes;
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
    v12 = 2654435761 * self->_numSelectedActionDisambiguationsLastTenMinutes;
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
    v13 = 2654435761 * self->_numSelectedActionDisambiguationsLastOneHour;
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
    v14 = 2654435761 * self->_numSelectedActionDisambiguationsLastSixHours;
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
  v15 = 2654435761 * self->_numSelectedActionDisambiguationsLastOneDay;
  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_15:
    v16 = 2654435761 * self->_numSelectedActionDisambiguationsLastSevenDays;
    goto LABEL_30;
  }

LABEL_29:
  v16 = 0;
LABEL_30:
  if ((*&self->_has & 0x4000) != 0)
  {
    v17 = 2654435761 * self->_numSelectedActionDisambiguationsLastTwentyEightDays;
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
      v18 = 2654435761 * self->_numSelectedActionDisambiguationsLastInfinity;
      goto LABEL_35;
    }
  }

  v18 = 0;
LABEL_35:
  if (*(&self->_has + 2))
  {
    v19 = 2654435761 * self->_minutesSinceLastDisambiguationSameActions;
    if ((*(&self->_has + 2) & 2) != 0)
    {
LABEL_37:
      v20 = 2654435761 * self->_minutesSinceLastActionDisambiguationForThisAction;
      if ((*(&self->_has + 2) & 4) != 0)
      {
        goto LABEL_38;
      }

LABEL_42:
      v21 = 0;
      if ((*(&self->_has + 2) & 8) != 0)
      {
        goto LABEL_39;
      }

LABEL_43:
      v22 = 0;
      return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22;
    }
  }

  else
  {
    v19 = 0;
    if ((*(&self->_has + 2) & 2) != 0)
    {
      goto LABEL_37;
    }
  }

  v20 = 0;
  if ((*(&self->_has + 2) & 4) == 0)
  {
    goto LABEL_42;
  }

LABEL_38:
  v21 = 2654435761 * self->_wasActionSelectedInLastDisambiguation;
  if ((*(&self->_has + 2) & 8) == 0)
  {
    goto LABEL_43;
  }

LABEL_39:
  v22 = 2654435761 * self->_minutesSinceLastDisambiguationForSameActions;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_81;
  }

  p_has = &self->_has;
  has = self->_has;
  v7 = v4 + 44;
  v8 = v4[44];
  if ((*&has & 1) != (v8 & 1))
  {
    goto LABEL_81;
  }

  if (*&has)
  {
    numActionDisambiguationsLastTwoMinutes = self->_numActionDisambiguationsLastTwoMinutes;
    if (numActionDisambiguationsLastTwoMinutes != [v4 numActionDisambiguationsLastTwoMinutes])
    {
      goto LABEL_81;
    }

    has = *p_has;
    v8 = *v7;
  }

  v10 = (*&has >> 1) & 1;
  if (v10 != ((v8 >> 1) & 1))
  {
    goto LABEL_81;
  }

  if (v10)
  {
    numActionDisambiguationsLasTenMinutes = self->_numActionDisambiguationsLasTenMinutes;
    if (numActionDisambiguationsLasTenMinutes != [v4 numActionDisambiguationsLasTenMinutes])
    {
      goto LABEL_81;
    }

    has = *p_has;
    v8 = *v7;
  }

  v12 = (*&has >> 2) & 1;
  if (v12 != ((v8 >> 2) & 1))
  {
    goto LABEL_81;
  }

  if (v12)
  {
    numActionDisambiguationsLastOneHour = self->_numActionDisambiguationsLastOneHour;
    if (numActionDisambiguationsLastOneHour != [v4 numActionDisambiguationsLastOneHour])
    {
      goto LABEL_81;
    }

    has = *p_has;
    v8 = *v7;
  }

  v14 = (*&has >> 3) & 1;
  if (v14 != ((v8 >> 3) & 1))
  {
    goto LABEL_81;
  }

  if (v14)
  {
    numActionDisambiguationsLastSixHours = self->_numActionDisambiguationsLastSixHours;
    if (numActionDisambiguationsLastSixHours != [v4 numActionDisambiguationsLastSixHours])
    {
      goto LABEL_81;
    }

    has = *p_has;
    v8 = *v7;
  }

  v16 = (*&has >> 4) & 1;
  if (v16 != ((v8 >> 4) & 1))
  {
    goto LABEL_81;
  }

  if (v16)
  {
    numActionDisambiguationsLastOneDay = self->_numActionDisambiguationsLastOneDay;
    if (numActionDisambiguationsLastOneDay != [v4 numActionDisambiguationsLastOneDay])
    {
      goto LABEL_81;
    }

    has = *p_has;
    v8 = *v7;
  }

  v18 = (*&has >> 5) & 1;
  if (v18 != ((v8 >> 5) & 1))
  {
    goto LABEL_81;
  }

  if (v18)
  {
    numActionDisambiguationsLastSevenDays = self->_numActionDisambiguationsLastSevenDays;
    if (numActionDisambiguationsLastSevenDays != [v4 numActionDisambiguationsLastSevenDays])
    {
      goto LABEL_81;
    }

    has = *p_has;
    v8 = *v7;
  }

  v20 = (*&has >> 6) & 1;
  if (v20 != ((v8 >> 6) & 1))
  {
    goto LABEL_81;
  }

  if (v20)
  {
    numActionDisambiguationsLastTwentyEightDays = self->_numActionDisambiguationsLastTwentyEightDays;
    if (numActionDisambiguationsLastTwentyEightDays != [v4 numActionDisambiguationsLastTwentyEightDays])
    {
      goto LABEL_81;
    }

    has = *p_has;
    v8 = *v7;
  }

  v22 = (*&has >> 7) & 1;
  if (v22 != ((v8 >> 7) & 1))
  {
    goto LABEL_81;
  }

  if (v22)
  {
    numActionDisambiguationsLastInfinity = self->_numActionDisambiguationsLastInfinity;
    if (numActionDisambiguationsLastInfinity != [v4 numActionDisambiguationsLastInfinity])
    {
      goto LABEL_81;
    }

    has = *p_has;
    v8 = *v7;
  }

  v24 = (*&has >> 8) & 1;
  if (v24 != ((v8 >> 8) & 1))
  {
    goto LABEL_81;
  }

  if (v24)
  {
    numSelectedActionDisambiguationsLastTwoMinutes = self->_numSelectedActionDisambiguationsLastTwoMinutes;
    if (numSelectedActionDisambiguationsLastTwoMinutes != [v4 numSelectedActionDisambiguationsLastTwoMinutes])
    {
      goto LABEL_81;
    }

    has = *p_has;
    v8 = *v7;
  }

  v26 = (*&has >> 9) & 1;
  if (v26 != ((v8 >> 9) & 1))
  {
    goto LABEL_81;
  }

  if (v26)
  {
    numSelectedActionDisambiguationsLastTenMinutes = self->_numSelectedActionDisambiguationsLastTenMinutes;
    if (numSelectedActionDisambiguationsLastTenMinutes != [v4 numSelectedActionDisambiguationsLastTenMinutes])
    {
      goto LABEL_81;
    }

    has = *p_has;
    v8 = *v7;
  }

  v28 = (*&has >> 10) & 1;
  if (v28 != ((v8 >> 10) & 1))
  {
    goto LABEL_81;
  }

  if (v28)
  {
    numSelectedActionDisambiguationsLastOneHour = self->_numSelectedActionDisambiguationsLastOneHour;
    if (numSelectedActionDisambiguationsLastOneHour != [v4 numSelectedActionDisambiguationsLastOneHour])
    {
      goto LABEL_81;
    }

    has = *p_has;
    v8 = *v7;
  }

  v30 = (*&has >> 11) & 1;
  if (v30 != ((v8 >> 11) & 1))
  {
    goto LABEL_81;
  }

  if (v30)
  {
    numSelectedActionDisambiguationsLastSixHours = self->_numSelectedActionDisambiguationsLastSixHours;
    if (numSelectedActionDisambiguationsLastSixHours != [v4 numSelectedActionDisambiguationsLastSixHours])
    {
      goto LABEL_81;
    }

    has = *p_has;
    v8 = *v7;
  }

  v32 = (*&has >> 12) & 1;
  if (v32 != ((v8 >> 12) & 1))
  {
    goto LABEL_81;
  }

  if (v32)
  {
    numSelectedActionDisambiguationsLastOneDay = self->_numSelectedActionDisambiguationsLastOneDay;
    if (numSelectedActionDisambiguationsLastOneDay != [v4 numSelectedActionDisambiguationsLastOneDay])
    {
      goto LABEL_81;
    }

    has = *p_has;
    v8 = *v7;
  }

  v34 = (*&has >> 13) & 1;
  if (v34 != ((v8 >> 13) & 1))
  {
    goto LABEL_81;
  }

  if (v34)
  {
    numSelectedActionDisambiguationsLastSevenDays = self->_numSelectedActionDisambiguationsLastSevenDays;
    if (numSelectedActionDisambiguationsLastSevenDays != [v4 numSelectedActionDisambiguationsLastSevenDays])
    {
      goto LABEL_81;
    }

    has = *p_has;
    v8 = *v7;
  }

  v36 = (*&has >> 14) & 1;
  if (v36 != ((v8 >> 14) & 1))
  {
    goto LABEL_81;
  }

  if (v36)
  {
    numSelectedActionDisambiguationsLastTwentyEightDays = self->_numSelectedActionDisambiguationsLastTwentyEightDays;
    if (numSelectedActionDisambiguationsLastTwentyEightDays != [v4 numSelectedActionDisambiguationsLastTwentyEightDays])
    {
      goto LABEL_81;
    }

    has = *p_has;
    v8 = *v7;
  }

  if (((v8 ^ *&has) & 0x8000) != 0)
  {
    goto LABEL_81;
  }

  if ((*&has & 0x8000) != 0)
  {
    numSelectedActionDisambiguationsLastInfinity = self->_numSelectedActionDisambiguationsLastInfinity;
    if (numSelectedActionDisambiguationsLastInfinity != [v4 numSelectedActionDisambiguationsLastInfinity])
    {
      goto LABEL_81;
    }
  }

  v39 = *(&self->_has + 2);
  v40 = *(v4 + 90);
  if ((v39 & 1) != (v40 & 1))
  {
    goto LABEL_81;
  }

  if (v39)
  {
    minutesSinceLastDisambiguationSameActions = self->_minutesSinceLastDisambiguationSameActions;
    if (minutesSinceLastDisambiguationSameActions != [v4 minutesSinceLastDisambiguationSameActions])
    {
      goto LABEL_81;
    }

    v39 = *(&self->_has + 2);
    v40 = *(v4 + 90);
  }

  v42 = (v39 >> 1) & 1;
  if (v42 != ((v40 >> 1) & 1))
  {
    goto LABEL_81;
  }

  if (v42)
  {
    minutesSinceLastActionDisambiguationForThisAction = self->_minutesSinceLastActionDisambiguationForThisAction;
    if (minutesSinceLastActionDisambiguationForThisAction != [v4 minutesSinceLastActionDisambiguationForThisAction])
    {
      goto LABEL_81;
    }

    v39 = *(&self->_has + 2);
    v40 = *(v4 + 90);
  }

  v44 = (v39 >> 2) & 1;
  if (v44 != ((v40 >> 2) & 1))
  {
    goto LABEL_81;
  }

  if (v44)
  {
    wasActionSelectedInLastDisambiguation = self->_wasActionSelectedInLastDisambiguation;
    if (wasActionSelectedInLastDisambiguation == [v4 wasActionSelectedInLastDisambiguation])
    {
      v39 = *(&self->_has + 2);
      v40 = *(v4 + 90);
      goto LABEL_77;
    }

LABEL_81:
    v48 = 0;
    goto LABEL_82;
  }

LABEL_77:
  v46 = (v39 >> 3) & 1;
  if (v46 != ((v40 >> 3) & 1))
  {
    goto LABEL_81;
  }

  if (v46)
  {
    minutesSinceLastDisambiguationForSameActions = self->_minutesSinceLastDisambiguationForSameActions;
    if (minutesSinceLastDisambiguationForSameActions != [v4 minutesSinceLastDisambiguationForSameActions])
    {
      goto LABEL_81;
    }
  }

  v48 = 1;
LABEL_82:

  return v48;
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

      goto LABEL_27;
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

    goto LABEL_28;
  }

LABEL_27:
  PBDataWriterWriteUint32Field();
  has = *p_has;
  if ((*p_has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_29;
  }

LABEL_28:
  PBDataWriterWriteUint32Field();
  has = *p_has;
  if ((*p_has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_30;
  }

LABEL_29:
  PBDataWriterWriteUint32Field();
  has = *p_has;
  if ((*p_has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_31;
  }

LABEL_30:
  PBDataWriterWriteUint32Field();
  has = *p_has;
  if ((*p_has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_32;
  }

LABEL_31:
  PBDataWriterWriteUint32Field();
  has = *p_has;
  if ((*p_has & 0x80) == 0)
  {
LABEL_9:
    if ((has & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_33;
  }

LABEL_32:
  PBDataWriterWriteUint32Field();
  has = *p_has;
  if ((*p_has & 0x100) == 0)
  {
LABEL_10:
    if ((has & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_34;
  }

LABEL_33:
  PBDataWriterWriteUint32Field();
  has = *p_has;
  if ((*p_has & 0x200) == 0)
  {
LABEL_11:
    if ((has & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_35;
  }

LABEL_34:
  PBDataWriterWriteUint32Field();
  has = *p_has;
  if ((*p_has & 0x400) == 0)
  {
LABEL_12:
    if ((has & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_36;
  }

LABEL_35:
  PBDataWriterWriteUint32Field();
  has = *p_has;
  if ((*p_has & 0x800) == 0)
  {
LABEL_13:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_37;
  }

LABEL_36:
  PBDataWriterWriteUint32Field();
  has = *p_has;
  if ((*p_has & 0x1000) == 0)
  {
LABEL_14:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_38;
  }

LABEL_37:
  PBDataWriterWriteUint32Field();
  has = *p_has;
  if ((*p_has & 0x2000) == 0)
  {
LABEL_15:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_16;
    }

LABEL_39:
    PBDataWriterWriteUint32Field();
    if ((*p_has & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_40;
  }

LABEL_38:
  PBDataWriterWriteUint32Field();
  has = *p_has;
  if ((*p_has & 0x4000) != 0)
  {
    goto LABEL_39;
  }

LABEL_16:
  if ((has & 0x8000) == 0)
  {
    goto LABEL_17;
  }

LABEL_40:
  PBDataWriterWriteUint32Field();
LABEL_17:
  v6 = *(&self->_has + 2);
  if (v6)
  {
    PBDataWriterWriteBOOLField();
    v6 = *(&self->_has + 2);
    if ((v6 & 2) == 0)
    {
LABEL_19:
      if ((v6 & 4) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_43;
    }
  }

  else if ((*(&self->_has + 2) & 2) == 0)
  {
    goto LABEL_19;
  }

  PBDataWriterWriteUint32Field();
  v6 = *(&self->_has + 2);
  if ((v6 & 4) == 0)
  {
LABEL_20:
    if ((v6 & 8) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_43:
  PBDataWriterWriteBOOLField();
  if ((*(&self->_has + 2) & 8) != 0)
  {
LABEL_21:
    PBDataWriterWriteUint32Field();
  }

LABEL_22:
}

- (void)setHasMinutesSinceLastDisambiguationForSameActions:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xF7 | v3;
}

- (void)setHasWasActionSelectedInLastDisambiguation:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFB | v3;
}

- (void)setHasMinutesSinceLastActionDisambiguationForThisAction:(BOOL)a3
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

- (void)setHasNumSelectedActionDisambiguationsLastInfinity:(BOOL)a3
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

- (void)setHasNumSelectedActionDisambiguationsLastTwentyEightDays:(BOOL)a3
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

- (void)setHasNumSelectedActionDisambiguationsLastSevenDays:(BOOL)a3
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

- (void)setHasNumSelectedActionDisambiguationsLastOneDay:(BOOL)a3
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

- (void)setHasNumSelectedActionDisambiguationsLastSixHours:(BOOL)a3
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

- (void)setHasNumSelectedActionDisambiguationsLastOneHour:(BOOL)a3
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

- (void)setHasNumSelectedActionDisambiguationsLastTenMinutes:(BOOL)a3
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

- (void)setHasNumSelectedActionDisambiguationsLastTwoMinutes:(BOOL)a3
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

- (void)setHasNumActionDisambiguationsLastInfinity:(BOOL)a3
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

- (void)setHasNumActionDisambiguationsLastTwentyEightDays:(BOOL)a3
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

- (void)setHasNumActionDisambiguationsLastSevenDays:(BOOL)a3
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

- (void)setHasNumActionDisambiguationsLastOneDay:(BOOL)a3
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

- (void)setHasNumActionDisambiguationsLastSixHours:(BOOL)a3
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

- (void)setHasNumActionDisambiguationsLastOneHour:(BOOL)a3
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

- (void)setHasNumActionDisambiguationsLasTenMinutes:(BOOL)a3
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