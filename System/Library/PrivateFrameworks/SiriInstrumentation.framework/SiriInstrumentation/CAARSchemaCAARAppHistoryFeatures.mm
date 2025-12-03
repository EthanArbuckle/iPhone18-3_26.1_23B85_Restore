@interface CAARSchemaCAARAppHistoryFeatures
- (BOOL)isEqual:(id)equal;
- (CAARSchemaCAARAppHistoryFeatures)initWithDictionary:(id)dictionary;
- (CAARSchemaCAARAppHistoryFeatures)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasNumAppLaunchesLastInfinity:(BOOL)infinity;
- (void)setHasNumAppLaunchesLastOneDay:(BOOL)day;
- (void)setHasNumAppLaunchesLastOneHour:(BOOL)hour;
- (void)setHasNumAppLaunchesLastSevenDays:(BOOL)days;
- (void)setHasNumAppLaunchesLastSixHours:(BOOL)hours;
- (void)setHasNumAppLaunchesLastTenMinutes:(BOOL)minutes;
- (void)setHasNumAppLaunchesLastTwentyEightDays:(BOOL)days;
- (void)setHasNumAppLaunchesLastTwoMinutes:(BOOL)minutes;
- (void)setHasNumMinutesSinceAppLastLaunched:(BOOL)launched;
- (void)writeTo:(id)to;
@end

@implementation CAARSchemaCAARAppHistoryFeatures

- (CAARSchemaCAARAppHistoryFeatures)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v22.receiver = self;
  v22.super_class = CAARSchemaCAARAppHistoryFeatures;
  v5 = [(CAARSchemaCAARAppHistoryFeatures *)&v22 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"numMinutesSinceAppInstalled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARAppHistoryFeatures setNumMinutesSinceAppInstalled:](v5, "setNumMinutesSinceAppInstalled:", [v6 unsignedIntValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"numMinutesSinceAppLastLaunched"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARAppHistoryFeatures setNumMinutesSinceAppLastLaunched:](v5, "setNumMinutesSinceAppLastLaunched:", [v7 unsignedIntValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"numAppLaunchesLastTwoMinutes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARAppHistoryFeatures setNumAppLaunchesLastTwoMinutes:](v5, "setNumAppLaunchesLastTwoMinutes:", [v8 unsignedIntValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"numAppLaunchesLastTenMinutes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARAppHistoryFeatures setNumAppLaunchesLastTenMinutes:](v5, "setNumAppLaunchesLastTenMinutes:", [v9 unsignedIntValue]);
    }

    v19 = v9;
    v10 = [dictionaryCopy objectForKeyedSubscript:@"numAppLaunchesLastOneHour"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARAppHistoryFeatures setNumAppLaunchesLastOneHour:](v5, "setNumAppLaunchesLastOneHour:", [v10 unsignedIntValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"numAppLaunchesLastSixHours"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARAppHistoryFeatures setNumAppLaunchesLastSixHours:](v5, "setNumAppLaunchesLastSixHours:", [v11 unsignedIntValue]);
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"numAppLaunchesLastOneDay"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARAppHistoryFeatures setNumAppLaunchesLastOneDay:](v5, "setNumAppLaunchesLastOneDay:", [v12 unsignedIntValue]);
    }

    v20 = v8;
    v21 = v6;
    v13 = [dictionaryCopy objectForKeyedSubscript:@"numAppLaunchesLastSevenDays"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARAppHistoryFeatures setNumAppLaunchesLastSevenDays:](v5, "setNumAppLaunchesLastSevenDays:", [v13 unsignedIntValue]);
    }

    v14 = v7;
    v15 = [dictionaryCopy objectForKeyedSubscript:@"numAppLaunchesLastTwentyEightDays"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARAppHistoryFeatures setNumAppLaunchesLastTwentyEightDays:](v5, "setNumAppLaunchesLastTwentyEightDays:", [v15 unsignedIntValue]);
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"numAppLaunchesLastInfinity"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARAppHistoryFeatures setNumAppLaunchesLastInfinity:](v5, "setNumAppLaunchesLastInfinity:", [v16 unsignedIntValue]);
    }

    v17 = v5;
  }

  return v5;
}

- (CAARSchemaCAARAppHistoryFeatures)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(CAARSchemaCAARAppHistoryFeatures *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(CAARSchemaCAARAppHistoryFeatures *)self dictionaryRepresentation];
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
  has = self->_has;
  if ((has & 0x200) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CAARSchemaCAARAppHistoryFeatures numAppLaunchesLastInfinity](self, "numAppLaunchesLastInfinity")}];
    [dictionary setObject:v7 forKeyedSubscript:@"numAppLaunchesLastInfinity"];

    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((has & 0x40) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CAARSchemaCAARAppHistoryFeatures numAppLaunchesLastOneDay](self, "numAppLaunchesLastOneDay")}];
  [dictionary setObject:v8 forKeyedSubscript:@"numAppLaunchesLastOneDay"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CAARSchemaCAARAppHistoryFeatures numAppLaunchesLastOneHour](self, "numAppLaunchesLastOneHour")}];
  [dictionary setObject:v9 forKeyedSubscript:@"numAppLaunchesLastOneHour"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CAARSchemaCAARAppHistoryFeatures numAppLaunchesLastSevenDays](self, "numAppLaunchesLastSevenDays")}];
  [dictionary setObject:v10 forKeyedSubscript:@"numAppLaunchesLastSevenDays"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CAARSchemaCAARAppHistoryFeatures numAppLaunchesLastSixHours](self, "numAppLaunchesLastSixHours")}];
  [dictionary setObject:v11 forKeyedSubscript:@"numAppLaunchesLastSixHours"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_7:
    if ((has & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CAARSchemaCAARAppHistoryFeatures numAppLaunchesLastTenMinutes](self, "numAppLaunchesLastTenMinutes")}];
  [dictionary setObject:v12 forKeyedSubscript:@"numAppLaunchesLastTenMinutes"];

  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_8:
    if ((has & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CAARSchemaCAARAppHistoryFeatures numAppLaunchesLastTwentyEightDays](self, "numAppLaunchesLastTwentyEightDays")}];
  [dictionary setObject:v13 forKeyedSubscript:@"numAppLaunchesLastTwentyEightDays"];

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
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CAARSchemaCAARAppHistoryFeatures numAppLaunchesLastTwoMinutes](self, "numAppLaunchesLastTwoMinutes")}];
  [dictionary setObject:v14 forKeyedSubscript:@"numAppLaunchesLastTwoMinutes"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_10:
    if ((has & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_23:
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CAARSchemaCAARAppHistoryFeatures numMinutesSinceAppInstalled](self, "numMinutesSinceAppInstalled")}];
  [dictionary setObject:v15 forKeyedSubscript:@"numMinutesSinceAppInstalled"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_11:
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CAARSchemaCAARAppHistoryFeatures numMinutesSinceAppLastLaunched](self, "numMinutesSinceAppLastLaunched")}];
    [dictionary setObject:v5 forKeyedSubscript:@"numMinutesSinceAppLastLaunched"];
  }

LABEL_12:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  has = self->_has;
  if (has)
  {
    v3 = 2654435761 * self->_numMinutesSinceAppInstalled;
    if ((has & 2) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_numMinutesSinceAppLastLaunched;
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
    v5 = 2654435761 * self->_numAppLaunchesLastTwoMinutes;
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
    v6 = 2654435761 * self->_numAppLaunchesLastTenMinutes;
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
    v7 = 2654435761 * self->_numAppLaunchesLastOneHour;
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
    v8 = 2654435761 * self->_numAppLaunchesLastSixHours;
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
    v9 = 2654435761 * self->_numAppLaunchesLastOneDay;
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
    v10 = 2654435761 * self->_numAppLaunchesLastSevenDays;
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
  v11 = 2654435761 * self->_numAppLaunchesLastTwentyEightDays;
  if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  v12 = 2654435761 * self->_numAppLaunchesLastInfinity;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_42;
  }

  has = self->_has;
  v6 = equalCopy[24];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_42;
  }

  if (*&has)
  {
    numMinutesSinceAppInstalled = self->_numMinutesSinceAppInstalled;
    if (numMinutesSinceAppInstalled != [equalCopy numMinutesSinceAppInstalled])
    {
      goto LABEL_42;
    }

    has = self->_has;
    v6 = equalCopy[24];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_42;
  }

  if (v8)
  {
    numMinutesSinceAppLastLaunched = self->_numMinutesSinceAppLastLaunched;
    if (numMinutesSinceAppLastLaunched != [equalCopy numMinutesSinceAppLastLaunched])
    {
      goto LABEL_42;
    }

    has = self->_has;
    v6 = equalCopy[24];
  }

  v10 = (*&has >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_42;
  }

  if (v10)
  {
    numAppLaunchesLastTwoMinutes = self->_numAppLaunchesLastTwoMinutes;
    if (numAppLaunchesLastTwoMinutes != [equalCopy numAppLaunchesLastTwoMinutes])
    {
      goto LABEL_42;
    }

    has = self->_has;
    v6 = equalCopy[24];
  }

  v12 = (*&has >> 3) & 1;
  if (v12 != ((v6 >> 3) & 1))
  {
    goto LABEL_42;
  }

  if (v12)
  {
    numAppLaunchesLastTenMinutes = self->_numAppLaunchesLastTenMinutes;
    if (numAppLaunchesLastTenMinutes != [equalCopy numAppLaunchesLastTenMinutes])
    {
      goto LABEL_42;
    }

    has = self->_has;
    v6 = equalCopy[24];
  }

  v14 = (*&has >> 4) & 1;
  if (v14 != ((v6 >> 4) & 1))
  {
    goto LABEL_42;
  }

  if (v14)
  {
    numAppLaunchesLastOneHour = self->_numAppLaunchesLastOneHour;
    if (numAppLaunchesLastOneHour != [equalCopy numAppLaunchesLastOneHour])
    {
      goto LABEL_42;
    }

    has = self->_has;
    v6 = equalCopy[24];
  }

  v16 = (*&has >> 5) & 1;
  if (v16 != ((v6 >> 5) & 1))
  {
    goto LABEL_42;
  }

  if (v16)
  {
    numAppLaunchesLastSixHours = self->_numAppLaunchesLastSixHours;
    if (numAppLaunchesLastSixHours != [equalCopy numAppLaunchesLastSixHours])
    {
      goto LABEL_42;
    }

    has = self->_has;
    v6 = equalCopy[24];
  }

  v18 = (*&has >> 6) & 1;
  if (v18 != ((v6 >> 6) & 1))
  {
    goto LABEL_42;
  }

  if (v18)
  {
    numAppLaunchesLastOneDay = self->_numAppLaunchesLastOneDay;
    if (numAppLaunchesLastOneDay != [equalCopy numAppLaunchesLastOneDay])
    {
      goto LABEL_42;
    }

    has = self->_has;
    v6 = equalCopy[24];
  }

  v20 = (*&has >> 7) & 1;
  if (v20 != ((v6 >> 7) & 1))
  {
    goto LABEL_42;
  }

  if (v20)
  {
    numAppLaunchesLastSevenDays = self->_numAppLaunchesLastSevenDays;
    if (numAppLaunchesLastSevenDays != [equalCopy numAppLaunchesLastSevenDays])
    {
      goto LABEL_42;
    }

    has = self->_has;
    v6 = equalCopy[24];
  }

  v22 = (*&has >> 8) & 1;
  if (v22 != ((v6 >> 8) & 1))
  {
    goto LABEL_42;
  }

  if (v22)
  {
    numAppLaunchesLastTwentyEightDays = self->_numAppLaunchesLastTwentyEightDays;
    if (numAppLaunchesLastTwentyEightDays == [equalCopy numAppLaunchesLastTwentyEightDays])
    {
      has = self->_has;
      v6 = equalCopy[24];
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
    numAppLaunchesLastInfinity = self->_numAppLaunchesLastInfinity;
    if (numAppLaunchesLastInfinity != [equalCopy numAppLaunchesLastInfinity])
    {
      goto LABEL_42;
    }
  }

  v26 = 1;
LABEL_43:

  return v26;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint32Field();
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

  PBDataWriterWriteUint32Field();
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
  PBDataWriterWriteUint32Field();
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
  PBDataWriterWriteUint32Field();
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
  PBDataWriterWriteUint32Field();
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
  PBDataWriterWriteUint32Field();
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
  PBDataWriterWriteUint32Field();
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
  PBDataWriterWriteUint32Field();
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
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_11:
    PBDataWriterWriteUint32Field();
  }

LABEL_12:
}

- (void)setHasNumAppLaunchesLastInfinity:(BOOL)infinity
{
  if (infinity)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasNumAppLaunchesLastTwentyEightDays:(BOOL)days
{
  if (days)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasNumAppLaunchesLastSevenDays:(BOOL)days
{
  if (days)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasNumAppLaunchesLastOneDay:(BOOL)day
{
  if (day)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasNumAppLaunchesLastSixHours:(BOOL)hours
{
  if (hours)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasNumAppLaunchesLastOneHour:(BOOL)hour
{
  if (hour)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasNumAppLaunchesLastTenMinutes:(BOOL)minutes
{
  if (minutes)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasNumAppLaunchesLastTwoMinutes:(BOOL)minutes
{
  if (minutes)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasNumMinutesSinceAppLastLaunched:(BOOL)launched
{
  if (launched)
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