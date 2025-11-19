@interface SCLPBUnlockHistoryItem
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasScheduleEndHour:(BOOL)a3;
- (void)setHasScheduleEndMinute:(BOOL)a3;
- (void)setHasScheduleStartHour:(BOOL)a3;
- (void)setHasScheduleStartMinute:(BOOL)a3;
- (void)setHasStartTimeIntervalSinceReferenceDate:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SCLPBUnlockHistoryItem

- (void)setHasStartTimeIntervalSinceReferenceDate:(BOOL)a3
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

- (void)setHasScheduleStartHour:(BOOL)a3
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

- (void)setHasScheduleStartMinute:(BOOL)a3
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

- (void)setHasScheduleEndHour:(BOOL)a3
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

- (void)setHasScheduleEndMinute:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SCLPBUnlockHistoryItem;
  v4 = [(SCLPBUnlockHistoryItem *)&v8 description];
  v5 = [(SCLPBUnlockHistoryItem *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_startTimeIntervalSinceReferenceDate];
    [v3 setObject:v5 forKey:@"startTimeIntervalSinceReferenceDate"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_duration];
    [v3 setObject:v6 forKey:@"duration"];
  }

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

  v9 = self->_has;
  if ((v9 & 0x10) != 0)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_scheduleStartHour];
    [v3 setObject:v12 forKey:@"scheduleStartHour"];

    v9 = self->_has;
    if ((v9 & 0x20) == 0)
    {
LABEL_11:
      if ((v9 & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_11;
  }

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_scheduleStartMinute];
  [v3 setObject:v13 forKey:@"scheduleStartMinute"];

  v9 = self->_has;
  if ((v9 & 4) == 0)
  {
LABEL_12:
    if ((v9 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_19:
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_scheduleEndHour];
  [v3 setObject:v14 forKey:@"scheduleEndHour"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_13:
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_scheduleEndMinute];
    [v3 setObject:v10 forKey:@"scheduleEndMinute"];
  }

LABEL_14:

  return v3;
}

- (void)writeTo:(id)a3
{
  v12 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    startTimeIntervalSinceReferenceDate = self->_startTimeIntervalSinceReferenceDate;
    PBDataWriterWriteDoubleField();
    has = self->_has;
  }

  if (has)
  {
    duration = self->_duration;
    PBDataWriterWriteDoubleField();
  }

  if (self->_calendarIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_timeZoneName)
  {
    PBDataWriterWriteStringField();
  }

  v7 = self->_has;
  if ((v7 & 0x10) != 0)
  {
    scheduleStartHour = self->_scheduleStartHour;
    PBDataWriterWriteUint32Field();
    v7 = self->_has;
    if ((v7 & 0x20) == 0)
    {
LABEL_11:
      if ((v7 & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_11;
  }

  scheduleStartMinute = self->_scheduleStartMinute;
  PBDataWriterWriteUint32Field();
  v7 = self->_has;
  if ((v7 & 4) == 0)
  {
LABEL_12:
    if ((v7 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_19:
  scheduleEndHour = self->_scheduleEndHour;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 8) != 0)
  {
LABEL_13:
    scheduleEndMinute = self->_scheduleEndMinute;
    PBDataWriterWriteUint32Field();
  }

LABEL_14:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[2] = *&self->_startTimeIntervalSinceReferenceDate;
    *(v4 + 56) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    v4[1] = *&self->_duration;
    *(v4 + 56) |= 1u;
  }

  v7 = v4;
  if (self->_calendarIdentifier)
  {
    [v4 setCalendarIdentifier:?];
    v4 = v7;
  }

  if (self->_timeZoneName)
  {
    [v7 setTimeZoneName:?];
    v4 = v7;
  }

  v6 = self->_has;
  if ((v6 & 0x10) != 0)
  {
    *(v4 + 10) = self->_scheduleStartHour;
    *(v4 + 56) |= 0x10u;
    v6 = self->_has;
    if ((v6 & 0x20) == 0)
    {
LABEL_11:
      if ((v6 & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_11;
  }

  *(v4 + 11) = self->_scheduleStartMinute;
  *(v4 + 56) |= 0x20u;
  v6 = self->_has;
  if ((v6 & 4) == 0)
  {
LABEL_12:
    if ((v6 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_19:
  *(v4 + 8) = self->_scheduleEndHour;
  *(v4 + 56) |= 4u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_13:
    *(v4 + 9) = self->_scheduleEndMinute;
    *(v4 + 56) |= 8u;
  }

LABEL_14:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_startTimeIntervalSinceReferenceDate;
    *(v5 + 56) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 8) = self->_duration;
    *(v5 + 56) |= 1u;
  }

  v8 = [(NSString *)self->_calendarIdentifier copyWithZone:a3];
  v9 = *(v6 + 24);
  *(v6 + 24) = v8;

  v10 = [(NSString *)self->_timeZoneName copyWithZone:a3];
  v11 = *(v6 + 48);
  *(v6 + 48) = v10;

  v12 = self->_has;
  if ((v12 & 0x10) != 0)
  {
    *(v6 + 40) = self->_scheduleStartHour;
    *(v6 + 56) |= 0x10u;
    v12 = self->_has;
    if ((v12 & 0x20) == 0)
    {
LABEL_7:
      if ((v12 & 4) == 0)
      {
        goto LABEL_8;
      }

LABEL_13:
      *(v6 + 32) = self->_scheduleEndHour;
      *(v6 + 56) |= 4u;
      if ((*&self->_has & 8) == 0)
      {
        return v6;
      }

      goto LABEL_9;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_7;
  }

  *(v6 + 44) = self->_scheduleStartMinute;
  *(v6 + 56) |= 0x20u;
  v12 = self->_has;
  if ((v12 & 4) != 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  if ((v12 & 8) != 0)
  {
LABEL_9:
    *(v6 + 36) = self->_scheduleEndMinute;
    *(v6 + 56) |= 8u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_35;
  }

  v5 = *(v4 + 56);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 56) & 2) == 0 || self->_startTimeIntervalSinceReferenceDate != *(v4 + 2))
    {
      goto LABEL_35;
    }
  }

  else if ((*(v4 + 56) & 2) != 0)
  {
LABEL_35:
    v8 = 0;
    goto LABEL_36;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 56) & 1) == 0 || self->_duration != *(v4 + 1))
    {
      goto LABEL_35;
    }
  }

  else if (*(v4 + 56))
  {
    goto LABEL_35;
  }

  calendarIdentifier = self->_calendarIdentifier;
  if (calendarIdentifier | *(v4 + 3) && ![(NSString *)calendarIdentifier isEqual:?])
  {
    goto LABEL_35;
  }

  timeZoneName = self->_timeZoneName;
  if (timeZoneName | *(v4 + 6))
  {
    if (![(NSString *)timeZoneName isEqual:?])
    {
      goto LABEL_35;
    }
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 56) & 0x10) == 0 || self->_scheduleStartHour != *(v4 + 10))
    {
      goto LABEL_35;
    }
  }

  else if ((*(v4 + 56) & 0x10) != 0)
  {
    goto LABEL_35;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(v4 + 56) & 0x20) == 0 || self->_scheduleStartMinute != *(v4 + 11))
    {
      goto LABEL_35;
    }
  }

  else if ((*(v4 + 56) & 0x20) != 0)
  {
    goto LABEL_35;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 56) & 4) == 0 || self->_scheduleEndHour != *(v4 + 8))
    {
      goto LABEL_35;
    }
  }

  else if ((*(v4 + 56) & 4) != 0)
  {
    goto LABEL_35;
  }

  v8 = (*(v4 + 56) & 8) == 0;
  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 56) & 8) == 0 || self->_scheduleEndMinute != *(v4 + 9))
    {
      goto LABEL_35;
    }

    v8 = 1;
  }

LABEL_36:

  return v8;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    startTimeIntervalSinceReferenceDate = self->_startTimeIntervalSinceReferenceDate;
    if (startTimeIntervalSinceReferenceDate < 0.0)
    {
      startTimeIntervalSinceReferenceDate = -startTimeIntervalSinceReferenceDate;
    }

    *v2.i64 = floor(startTimeIntervalSinceReferenceDate + 0.5);
    v7 = (startTimeIntervalSinceReferenceDate - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v8), v3, v2);
    v5 = 2654435761u * *v2.i64;
    if (v7 >= 0.0)
    {
      if (v7 > 0.0)
      {
        v5 += v7;
      }
    }

    else
    {
      v5 -= fabs(v7);
    }
  }

  else
  {
    v5 = 0;
  }

  if (*&self->_has)
  {
    duration = self->_duration;
    if (duration < 0.0)
    {
      duration = -duration;
    }

    *v2.i64 = floor(duration + 0.5);
    v11 = (duration - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v12.f64[0] = NAN;
    v12.f64[1] = NAN;
    v9 = 2654435761u * *vbslq_s8(vnegq_f64(v12), v3, v2).i64;
    if (v11 >= 0.0)
    {
      if (v11 > 0.0)
      {
        v9 += v11;
      }
    }

    else
    {
      v9 -= fabs(v11);
    }
  }

  else
  {
    v9 = 0;
  }

  v13 = [(NSString *)self->_calendarIdentifier hash];
  v14 = [(NSString *)self->_timeZoneName hash];
  if ((*&self->_has & 0x10) != 0)
  {
    v15 = 2654435761 * self->_scheduleStartHour;
    if ((*&self->_has & 0x20) != 0)
    {
LABEL_19:
      v16 = 2654435761 * self->_scheduleStartMinute;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_20;
      }

LABEL_24:
      v17 = 0;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_21;
      }

LABEL_25:
      v18 = 0;
      return v9 ^ v5 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18;
    }
  }

  else
  {
    v15 = 0;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_19;
    }
  }

  v16 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_24;
  }

LABEL_20:
  v17 = 2654435761 * self->_scheduleEndHour;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_25;
  }

LABEL_21:
  v18 = 2654435761 * self->_scheduleEndMinute;
  return v9 ^ v5 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 56);
  if ((v5 & 2) != 0)
  {
    self->_startTimeIntervalSinceReferenceDate = *(v4 + 2);
    *&self->_has |= 2u;
    v5 = *(v4 + 56);
  }

  if (v5)
  {
    self->_duration = *(v4 + 1);
    *&self->_has |= 1u;
  }

  v7 = v4;
  if (*(v4 + 3))
  {
    [(SCLPBUnlockHistoryItem *)self setCalendarIdentifier:?];
    v4 = v7;
  }

  if (*(v4 + 6))
  {
    [(SCLPBUnlockHistoryItem *)self setTimeZoneName:?];
    v4 = v7;
  }

  v6 = *(v4 + 56);
  if ((v6 & 0x10) != 0)
  {
    self->_scheduleStartHour = *(v4 + 10);
    *&self->_has |= 0x10u;
    v6 = *(v4 + 56);
    if ((v6 & 0x20) == 0)
    {
LABEL_11:
      if ((v6 & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_19;
    }
  }

  else if ((*(v4 + 56) & 0x20) == 0)
  {
    goto LABEL_11;
  }

  self->_scheduleStartMinute = *(v4 + 11);
  *&self->_has |= 0x20u;
  v6 = *(v4 + 56);
  if ((v6 & 4) == 0)
  {
LABEL_12:
    if ((v6 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_19:
  self->_scheduleEndHour = *(v4 + 8);
  *&self->_has |= 4u;
  if ((*(v4 + 56) & 8) != 0)
  {
LABEL_13:
    self->_scheduleEndMinute = *(v4 + 9);
    *&self->_has |= 8u;
  }

LABEL_14:
}

@end