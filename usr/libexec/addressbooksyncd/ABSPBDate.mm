@interface ABSPBDate
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsCalendar:(id)a3;
- (int)calendar;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDay:(BOOL)a3;
- (void)setHasEra:(BOOL)a3;
- (void)setHasIsLeapMonth:(BOOL)a3;
- (void)setHasMonth:(BOOL)a3;
- (void)setHasYear:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ABSPBDate

- (int)calendar
{
  if (*&self->_has)
  {
    return self->_calendar;
  }

  else
  {
    return 1;
  }
}

- (int)StringAsCalendar:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"GREGORIAN"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"BUDDHIST"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"CHINESE"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"COPTIC"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"ETHIOPICAMETEMIHRET"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"ETHIOPICAMETEALEM"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"HEBREW"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"ISO8601"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"INDIAN"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"ISLAMIC"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"ISLAMICCIVIL"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"JAPANESE"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"PERSIAN"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"REPUBLICOFCHINA"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"ISLAMICTABULAR"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"ISLAMICUMMALQURA"])
  {
    v4 = 16;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasIsLeapMonth:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasEra:(BOOL)a3
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

- (void)setHasYear:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasMonth:(BOOL)a3
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

- (void)setHasDay:(BOOL)a3
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

- (id)description
{
  v7.receiver = self;
  v7.super_class = ABSPBDate;
  v3 = [(ABSPBDate *)&v7 description];
  v4 = [(ABSPBDate *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if (has)
  {
    v5 = self->_calendar - 1;
    if (v5 >= 0x10)
    {
      v6 = [NSString stringWithFormat:@"(unknown: %i)", self->_calendar];
    }

    else
    {
      v6 = off_10005D828[v5];
    }

    [v3 setObject:v6 forKey:@"calendar"];

    has = self->_has;
  }

  if ((has & 0x20) != 0)
  {
    v9 = [NSNumber numberWithBool:self->_isLeapMonth];
    [v3 setObject:v9 forKey:@"isLeapMonth"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_8:
      if ((has & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_8;
  }

  v10 = [NSNumber numberWithInt:self->_era];
  [v3 setObject:v10 forKey:@"era"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_9:
    if ((has & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

LABEL_17:
  v11 = [NSNumber numberWithInt:self->_year];
  [v3 setObject:v11 forKey:@"year"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_10:
    if ((has & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_18:
  v12 = [NSNumber numberWithInt:self->_month];
  [v3 setObject:v12 forKey:@"month"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_11:
    v7 = [NSNumber numberWithInt:self->_day];
    [v3 setObject:v7 forKey:@"day"];
  }

LABEL_12:

  return v3;
}

- (void)writeTo:(id)a3
{
  v11 = a3;
  has = self->_has;
  if (has)
  {
    calendar = self->_calendar;
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  isLeapMonth = self->_isLeapMonth;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  era = self->_era;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  year = self->_year;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  month = self->_month;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 2) != 0)
  {
LABEL_7:
    day = self->_day;
    PBDataWriterWriteInt32Field();
  }

LABEL_8:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[2] = self->_calendar;
    *(v4 + 32) |= 1u;
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 28) = self->_isLeapMonth;
  *(v4 + 32) |= 0x20u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  v4[4] = self->_era;
  *(v4 + 32) |= 4u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  v4[6] = self->_year;
  *(v4 + 32) |= 0x10u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  v4[5] = self->_month;
  *(v4 + 32) |= 8u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_7:
    v4[3] = self->_day;
    *(v4 + 32) |= 2u;
  }

LABEL_8:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 2) = self->_calendar;
    *(result + 32) |= 1u;
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  *(result + 28) = self->_isLeapMonth;
  *(result + 32) |= 0x20u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  *(result + 4) = self->_era;
  *(result + 32) |= 4u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(result + 6) = self->_year;
  *(result + 32) |= 0x10u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

LABEL_13:
  *(result + 5) = self->_month;
  *(result + 32) |= 8u;
  if ((*&self->_has & 2) == 0)
  {
    return result;
  }

LABEL_7:
  *(result + 3) = self->_day;
  *(result + 32) |= 2u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_34;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_calendar != *(v4 + 2))
    {
      goto LABEL_34;
    }
  }

  else if (*(v4 + 32))
  {
    goto LABEL_34;
  }

  if ((*&self->_has & 0x20) == 0)
  {
    if ((*(v4 + 32) & 0x20) == 0)
    {
      goto LABEL_9;
    }

LABEL_34:
    v6 = 0;
    goto LABEL_35;
  }

  if ((*(v4 + 32) & 0x20) == 0)
  {
    goto LABEL_34;
  }

  v5 = *(v4 + 28);
  if (self->_isLeapMonth)
  {
    if ((*(v4 + 28) & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else if (*(v4 + 28))
  {
    goto LABEL_34;
  }

LABEL_9:
  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 32) & 4) == 0 || self->_era != *(v4 + 4))
    {
      goto LABEL_34;
    }
  }

  else if ((*(v4 + 32) & 4) != 0)
  {
    goto LABEL_34;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 32) & 0x10) == 0 || self->_year != *(v4 + 6))
    {
      goto LABEL_34;
    }
  }

  else if ((*(v4 + 32) & 0x10) != 0)
  {
    goto LABEL_34;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 32) & 8) == 0 || self->_month != *(v4 + 5))
    {
      goto LABEL_34;
    }
  }

  else if ((*(v4 + 32) & 8) != 0)
  {
    goto LABEL_34;
  }

  v6 = (*(v4 + 32) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 32) & 2) == 0 || self->_day != *(v4 + 3))
    {
      goto LABEL_34;
    }

    v6 = 1;
  }

LABEL_35:

  return v6;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_calendar;
    if ((*&self->_has & 0x20) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_isLeapMonth;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_era;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v4 = 0;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_5:
    v5 = 2654435761 * self->_year;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v6 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_7;
    }

LABEL_13:
    v7 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7;
  }

LABEL_11:
  v5 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v6 = 2654435761 * self->_month;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  v7 = 2654435761 * self->_day;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 32);
  if (v5)
  {
    self->_calendar = *(v4 + 2);
    *&self->_has |= 1u;
    v5 = *(v4 + 32);
    if ((v5 & 0x20) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*(v4 + 32) & 0x20) == 0)
  {
    goto LABEL_3;
  }

  self->_isLeapMonth = *(v4 + 28);
  *&self->_has |= 0x20u;
  v5 = *(v4 + 32);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  self->_era = *(v4 + 4);
  *&self->_has |= 4u;
  v5 = *(v4 + 32);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  self->_year = *(v4 + 6);
  *&self->_has |= 0x10u;
  v5 = *(v4 + 32);
  if ((v5 & 8) == 0)
  {
LABEL_6:
    if ((v5 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  self->_month = *(v4 + 5);
  *&self->_has |= 8u;
  if ((*(v4 + 32) & 2) != 0)
  {
LABEL_7:
    self->_day = *(v4 + 3);
    *&self->_has |= 2u;
  }

LABEL_8:
}

@end