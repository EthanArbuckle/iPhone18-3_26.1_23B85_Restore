@interface PPPBDateComponents
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasMonth:(BOOL)a3;
- (void)setHasYear:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PPPBDateComponents

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 36);
  if (v5)
  {
    self->_day = *(v4 + 4);
    *&self->_has |= 1u;
    v5 = *(v4 + 36);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(v4 + 36) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_month = *(v4 + 5);
  *&self->_has |= 2u;
  if ((*(v4 + 36) & 4) != 0)
  {
LABEL_4:
    self->_year = *(v4 + 8);
    *&self->_has |= 4u;
  }

LABEL_5:
  v6 = v4;
  if (*(v4 + 1))
  {
    [(PPPBDateComponents *)self setCalendarIdentifier:?];
    v4 = v6;
  }

  if (*(v4 + 3))
  {
    [(PPPBDateComponents *)self setTimeZoneName:?];
    v4 = v6;
  }
}

- (unint64_t)hash
{
  if ((*&self->_has & 1) == 0)
  {
    v3 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v4 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

  v3 = 2654435761 * self->_day;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v4 = 2654435761 * self->_month;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v5 = 2654435761 * self->_year;
LABEL_8:
  v6 = v4 ^ v3 ^ v5 ^ [(NSString *)self->_calendarIdentifier hash];
  return v6 ^ [(NSString *)self->_timeZoneName hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  v5 = *(v4 + 36);
  if (*&self->_has)
  {
    if ((*(v4 + 36) & 1) == 0 || self->_day != *(v4 + 4))
    {
      goto LABEL_21;
    }
  }

  else if (*(v4 + 36))
  {
LABEL_21:
    v8 = 0;
    goto LABEL_22;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 36) & 2) == 0 || self->_month != *(v4 + 5))
    {
      goto LABEL_21;
    }
  }

  else if ((*(v4 + 36) & 2) != 0)
  {
    goto LABEL_21;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 36) & 4) == 0 || self->_year != *(v4 + 8))
    {
      goto LABEL_21;
    }
  }

  else if ((*(v4 + 36) & 4) != 0)
  {
    goto LABEL_21;
  }

  calendarIdentifier = self->_calendarIdentifier;
  if (calendarIdentifier | *(v4 + 1) && ![(NSString *)calendarIdentifier isEqual:?])
  {
    goto LABEL_21;
  }

  timeZoneName = self->_timeZoneName;
  if (timeZoneName | *(v4 + 3))
  {
    v8 = [(NSString *)timeZoneName isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_22:

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 1) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 20) = self->_month;
    *(v5 + 36) |= 2u;
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  *(v5 + 16) = self->_day;
  *(v5 + 36) |= 1u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((has & 4) != 0)
  {
LABEL_4:
    *(v5 + 32) = self->_year;
    *(v5 + 36) |= 4u;
  }

LABEL_5:
  v8 = [(NSString *)self->_calendarIdentifier copyWithZone:a3];
  v9 = v6[1];
  v6[1] = v8;

  v10 = [(NSString *)self->_timeZoneName copyWithZone:a3];
  v11 = v6[3];
  v6[3] = v10;

  return v6;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[4] = self->_day;
    *(v4 + 36) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  v4[5] = self->_month;
  *(v4 + 36) |= 2u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v4[8] = self->_year;
    *(v4 + 36) |= 4u;
  }

LABEL_5:
  v6 = v4;
  if (self->_calendarIdentifier)
  {
    [v4 setCalendarIdentifier:?];
    v4 = v6;
  }

  if (self->_timeZoneName)
  {
    [v6 setTimeZoneName:?];
    v4 = v6;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v9 = v4;
  if (has)
  {
    day = self->_day;
    PBDataWriterWriteInt32Field();
    v4 = v9;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  month = self->_month;
  PBDataWriterWriteInt32Field();
  v4 = v9;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    year = self->_year;
    PBDataWriterWriteInt32Field();
    v4 = v9;
  }

LABEL_5:
  if (self->_calendarIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }

  if (self->_timeZoneName)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithInt:self->_day];
    [v3 setObject:v9 forKey:@"day"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  v10 = [MEMORY[0x277CCABB0] numberWithInt:self->_month];
  [v3 setObject:v10 forKey:@"month"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v5 = [MEMORY[0x277CCABB0] numberWithInt:self->_year];
    [v3 setObject:v5 forKey:@"year"];
  }

LABEL_5:
  calendarIdentifier = self->_calendarIdentifier;
  if (calendarIdentifier)
  {
    [v3 setObject:calendarIdentifier forKey:@"calendarIdentifier"];
  }

  timeZoneName = self->_timeZoneName;
  if (timeZoneName)
  {
    [v3 setObject:timeZoneName forKey:@"timeZoneName"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PPPBDateComponents;
  v4 = [(PPPBDateComponents *)&v8 description];
  v5 = [(PPPBDateComponents *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setHasYear:(BOOL)a3
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

- (void)setHasMonth:(BOOL)a3
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

@end