@interface SCLPBUnlockHistoryItem
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasScheduleEndHour:(BOOL)hour;
- (void)setHasScheduleEndMinute:(BOOL)minute;
- (void)setHasScheduleStartHour:(BOOL)hour;
- (void)setHasScheduleStartMinute:(BOOL)minute;
- (void)setHasStartTimeIntervalSinceReferenceDate:(BOOL)date;
- (void)writeTo:(id)to;
@end

@implementation SCLPBUnlockHistoryItem

- (void)setHasStartTimeIntervalSinceReferenceDate:(BOOL)date
{
  if (date)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasScheduleStartHour:(BOOL)hour
{
  if (hour)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasScheduleStartMinute:(BOOL)minute
{
  if (minute)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasScheduleEndHour:(BOOL)hour
{
  if (hour)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasScheduleEndMinute:(BOOL)minute
{
  if (minute)
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
  dictionaryRepresentation = [(SCLPBUnlockHistoryItem *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_startTimeIntervalSinceReferenceDate];
    [dictionary setObject:v5 forKey:@"startTimeIntervalSinceReferenceDate"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_duration];
    [dictionary setObject:v6 forKey:@"duration"];
  }

  calendarIdentifier = self->_calendarIdentifier;
  if (calendarIdentifier)
  {
    [dictionary setObject:calendarIdentifier forKey:@"calendarIdentifier"];
  }

  timeZoneName = self->_timeZoneName;
  if (timeZoneName)
  {
    [dictionary setObject:timeZoneName forKey:@"timeZoneName"];
  }

  v9 = self->_has;
  if ((v9 & 0x10) != 0)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_scheduleStartHour];
    [dictionary setObject:v12 forKey:@"scheduleStartHour"];

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
  [dictionary setObject:v13 forKey:@"scheduleStartMinute"];

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
  [dictionary setObject:v14 forKey:@"scheduleEndHour"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_13:
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_scheduleEndMinute];
    [dictionary setObject:v10 forKey:@"scheduleEndMinute"];
  }

LABEL_14:

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
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

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[2] = *&self->_startTimeIntervalSinceReferenceDate;
    *(toCopy + 56) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    toCopy[1] = *&self->_duration;
    *(toCopy + 56) |= 1u;
  }

  v7 = toCopy;
  if (self->_calendarIdentifier)
  {
    [toCopy setCalendarIdentifier:?];
    toCopy = v7;
  }

  if (self->_timeZoneName)
  {
    [v7 setTimeZoneName:?];
    toCopy = v7;
  }

  v6 = self->_has;
  if ((v6 & 0x10) != 0)
  {
    *(toCopy + 10) = self->_scheduleStartHour;
    *(toCopy + 56) |= 0x10u;
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

  *(toCopy + 11) = self->_scheduleStartMinute;
  *(toCopy + 56) |= 0x20u;
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
  *(toCopy + 8) = self->_scheduleEndHour;
  *(toCopy + 56) |= 4u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_13:
    *(toCopy + 9) = self->_scheduleEndMinute;
    *(toCopy + 56) |= 8u;
  }

LABEL_14:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

  v8 = [(NSString *)self->_calendarIdentifier copyWithZone:zone];
  v9 = *(v6 + 24);
  *(v6 + 24) = v8;

  v10 = [(NSString *)self->_timeZoneName copyWithZone:zone];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_35;
  }

  v5 = *(equalCopy + 56);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 56) & 2) == 0 || self->_startTimeIntervalSinceReferenceDate != *(equalCopy + 2))
    {
      goto LABEL_35;
    }
  }

  else if ((*(equalCopy + 56) & 2) != 0)
  {
LABEL_35:
    v8 = 0;
    goto LABEL_36;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 56) & 1) == 0 || self->_duration != *(equalCopy + 1))
    {
      goto LABEL_35;
    }
  }

  else if (*(equalCopy + 56))
  {
    goto LABEL_35;
  }

  calendarIdentifier = self->_calendarIdentifier;
  if (calendarIdentifier | *(equalCopy + 3) && ![(NSString *)calendarIdentifier isEqual:?])
  {
    goto LABEL_35;
  }

  timeZoneName = self->_timeZoneName;
  if (timeZoneName | *(equalCopy + 6))
  {
    if (![(NSString *)timeZoneName isEqual:?])
    {
      goto LABEL_35;
    }
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 56) & 0x10) == 0 || self->_scheduleStartHour != *(equalCopy + 10))
    {
      goto LABEL_35;
    }
  }

  else if ((*(equalCopy + 56) & 0x10) != 0)
  {
    goto LABEL_35;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(equalCopy + 56) & 0x20) == 0 || self->_scheduleStartMinute != *(equalCopy + 11))
    {
      goto LABEL_35;
    }
  }

  else if ((*(equalCopy + 56) & 0x20) != 0)
  {
    goto LABEL_35;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 56) & 4) == 0 || self->_scheduleEndHour != *(equalCopy + 8))
    {
      goto LABEL_35;
    }
  }

  else if ((*(equalCopy + 56) & 4) != 0)
  {
    goto LABEL_35;
  }

  v8 = (*(equalCopy + 56) & 8) == 0;
  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 56) & 8) == 0 || self->_scheduleEndMinute != *(equalCopy + 9))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 56);
  if ((v5 & 2) != 0)
  {
    self->_startTimeIntervalSinceReferenceDate = *(fromCopy + 2);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 56);
  }

  if (v5)
  {
    self->_duration = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  v7 = fromCopy;
  if (*(fromCopy + 3))
  {
    [(SCLPBUnlockHistoryItem *)self setCalendarIdentifier:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 6))
  {
    [(SCLPBUnlockHistoryItem *)self setTimeZoneName:?];
    fromCopy = v7;
  }

  v6 = *(fromCopy + 56);
  if ((v6 & 0x10) != 0)
  {
    self->_scheduleStartHour = *(fromCopy + 10);
    *&self->_has |= 0x10u;
    v6 = *(fromCopy + 56);
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

  else if ((*(fromCopy + 56) & 0x20) == 0)
  {
    goto LABEL_11;
  }

  self->_scheduleStartMinute = *(fromCopy + 11);
  *&self->_has |= 0x20u;
  v6 = *(fromCopy + 56);
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
  self->_scheduleEndHour = *(fromCopy + 8);
  *&self->_has |= 4u;
  if ((*(fromCopy + 56) & 8) != 0)
  {
LABEL_13:
    self->_scheduleEndMinute = *(fromCopy + 9);
    *&self->_has |= 8u;
  }

LABEL_14:
}

@end