@interface PCPCalendarEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsStatus:(id)a3;
- (int)status;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasStartTimeCFAbsolute:(BOOL)a3;
- (void)setHasStatus:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PCPCalendarEvent

- (void)setHasStartTimeCFAbsolute:(BOOL)a3
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

- (int)status
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_status;
  }

  else
  {
    return 0;
  }
}

- (void)setHasStatus:(BOOL)a3
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

- (int)StringAsStatus:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Pending"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Accepted"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Declined"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"Tentative"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"Delegated"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"Completed"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"InProcess"])
  {
    v4 = 7;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PCPCalendarEvent;
  v4 = [(PCPCalendarEvent *)&v8 description];
  v5 = [(PCPCalendarEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  calendarId = self->_calendarId;
  if (calendarId)
  {
    [v3 setObject:calendarId forKey:@"calendarId"];
  }

  titleOfEvent = self->_titleOfEvent;
  if (titleOfEvent)
  {
    [v4 setObject:titleOfEvent forKey:@"titleOfEvent"];
  }

  eventId = self->_eventId;
  if (eventId)
  {
    [v4 setObject:eventId forKey:@"eventId"];
  }

  locationTitle = self->_locationTitle;
  if (locationTitle)
  {
    [v4 setObject:locationTitle forKey:@"locationTitle"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithDouble:self->_startTimeCFAbsolute];
    [v4 setObject:v10 forKey:@"startTimeCFAbsolute"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_11:
      if ((has & 4) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_11;
  }

  v11 = [MEMORY[0x1E696AD98] numberWithDouble:self->_endTimeCFAbsolute];
  [v4 setObject:v11 forKey:@"endTimeCFAbsolute"];

  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_19;
  }

LABEL_15:
  status = self->_status;
  if (status >= 8)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_status];
  }

  else
  {
    v13 = off_1E83B8558[status];
  }

  [v4 setObject:v13 forKey:@"status"];

LABEL_19:
  location = self->_location;
  if (location)
  {
    v15 = [(PCPLocation *)location dictionaryRepresentation];
    [v4 setObject:v15 forKey:@"location"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (self->_calendarId)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }

  if (self->_titleOfEvent)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }

  if (self->_eventId)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }

  if (self->_locationTitle)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    startTimeCFAbsolute = self->_startTimeCFAbsolute;
    PBDataWriterWriteDoubleField();
    v4 = v9;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_11:
      if ((has & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_11;
  }

  endTimeCFAbsolute = self->_endTimeCFAbsolute;
  PBDataWriterWriteDoubleField();
  v4 = v9;
  if ((*&self->_has & 4) != 0)
  {
LABEL_12:
    status = self->_status;
    PBDataWriterWriteInt32Field();
    v4 = v9;
  }

LABEL_13:
  if (self->_location)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_calendarId)
  {
    [v4 setCalendarId:?];
    v4 = v6;
  }

  if (self->_titleOfEvent)
  {
    [v6 setTitleOfEvent:?];
    v4 = v6;
  }

  if (self->_eventId)
  {
    [v6 setEventId:?];
    v4 = v6;
  }

  if (self->_locationTitle)
  {
    [v6 setLocationTitle:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v4 + 2) = *&self->_startTimeCFAbsolute;
    *(v4 + 72) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_11:
      if ((has & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_11;
  }

  *(v4 + 1) = *&self->_endTimeCFAbsolute;
  *(v4 + 72) |= 1u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_12:
    *(v4 + 14) = self->_status;
    *(v4 + 72) |= 4u;
  }

LABEL_13:
  if (self->_location)
  {
    [v6 setLocation:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_calendarId copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSString *)self->_titleOfEvent copyWithZone:a3];
  v9 = *(v5 + 64);
  *(v5 + 64) = v8;

  v10 = [(NSString *)self->_eventId copyWithZone:a3];
  v11 = *(v5 + 32);
  *(v5 + 32) = v10;

  v12 = [(NSString *)self->_locationTitle copyWithZone:a3];
  v13 = *(v5 + 48);
  *(v5 + 48) = v12;

  has = self->_has;
  if ((has & 2) == 0)
  {
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 8) = self->_endTimeCFAbsolute;
    *(v5 + 72) |= 1u;
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  *(v5 + 16) = self->_startTimeCFAbsolute;
  *(v5 + 72) |= 2u;
  has = self->_has;
  if (has)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((has & 4) != 0)
  {
LABEL_4:
    *(v5 + 56) = self->_status;
    *(v5 + 72) |= 4u;
  }

LABEL_5:
  v15 = [(PCPLocation *)self->_location copyWithZone:a3];
  v16 = *(v5 + 40);
  *(v5 + 40) = v15;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  calendarId = self->_calendarId;
  if (calendarId | *(v4 + 3))
  {
    if (![(NSString *)calendarId isEqual:?])
    {
      goto LABEL_27;
    }
  }

  titleOfEvent = self->_titleOfEvent;
  if (titleOfEvent | *(v4 + 8))
  {
    if (![(NSString *)titleOfEvent isEqual:?])
    {
      goto LABEL_27;
    }
  }

  eventId = self->_eventId;
  if (eventId | *(v4 + 4))
  {
    if (![(NSString *)eventId isEqual:?])
    {
      goto LABEL_27;
    }
  }

  locationTitle = self->_locationTitle;
  if (locationTitle | *(v4 + 6))
  {
    if (![(NSString *)locationTitle isEqual:?])
    {
      goto LABEL_27;
    }
  }

  v9 = *(v4 + 72);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 72) & 2) == 0 || self->_startTimeCFAbsolute != *(v4 + 2))
    {
      goto LABEL_27;
    }
  }

  else if ((*(v4 + 72) & 2) != 0)
  {
LABEL_27:
    v11 = 0;
    goto LABEL_28;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 72) & 1) == 0 || self->_endTimeCFAbsolute != *(v4 + 1))
    {
      goto LABEL_27;
    }
  }

  else if (*(v4 + 72))
  {
    goto LABEL_27;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 72) & 4) == 0 || self->_status != *(v4 + 14))
    {
      goto LABEL_27;
    }
  }

  else if ((*(v4 + 72) & 4) != 0)
  {
    goto LABEL_27;
  }

  location = self->_location;
  if (location | *(v4 + 5))
  {
    v11 = [(PCPLocation *)location isEqual:?];
  }

  else
  {
    v11 = 1;
  }

LABEL_28:

  return v11;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_calendarId hash];
  v4 = [(NSString *)self->_titleOfEvent hash];
  v5 = [(NSString *)self->_eventId hash];
  v6 = [(NSString *)self->_locationTitle hash];
  if ((*&self->_has & 2) != 0)
  {
    startTimeCFAbsolute = self->_startTimeCFAbsolute;
    if (startTimeCFAbsolute < 0.0)
    {
      startTimeCFAbsolute = -startTimeCFAbsolute;
    }

    *v7.i64 = floor(startTimeCFAbsolute + 0.5);
    v11 = (startTimeCFAbsolute - *v7.i64) * 1.84467441e19;
    *v8.i64 = *v7.i64 - trunc(*v7.i64 * 5.42101086e-20) * 1.84467441e19;
    v12.f64[0] = NAN;
    v12.f64[1] = NAN;
    v7 = vbslq_s8(vnegq_f64(v12), v8, v7);
    v9 = 2654435761u * *v7.i64;
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

  if (*&self->_has)
  {
    endTimeCFAbsolute = self->_endTimeCFAbsolute;
    if (endTimeCFAbsolute < 0.0)
    {
      endTimeCFAbsolute = -endTimeCFAbsolute;
    }

    *v7.i64 = floor(endTimeCFAbsolute + 0.5);
    v15 = (endTimeCFAbsolute - *v7.i64) * 1.84467441e19;
    *v8.i64 = *v7.i64 - trunc(*v7.i64 * 5.42101086e-20) * 1.84467441e19;
    v16.f64[0] = NAN;
    v16.f64[1] = NAN;
    v13 = 2654435761u * *vbslq_s8(vnegq_f64(v16), v8, v7).i64;
    if (v15 >= 0.0)
    {
      if (v15 > 0.0)
      {
        v13 += v15;
      }
    }

    else
    {
      v13 -= fabs(v15);
    }
  }

  else
  {
    v13 = 0;
  }

  if ((*&self->_has & 4) != 0)
  {
    v17 = 2654435761 * self->_status;
  }

  else
  {
    v17 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v9 ^ v13 ^ v17 ^ [(PCPLocation *)self->_location hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (*(v4 + 3))
  {
    [(PCPCalendarEvent *)self setCalendarId:?];
    v4 = v8;
  }

  if (*(v4 + 8))
  {
    [(PCPCalendarEvent *)self setTitleOfEvent:?];
    v4 = v8;
  }

  if (*(v4 + 4))
  {
    [(PCPCalendarEvent *)self setEventId:?];
    v4 = v8;
  }

  if (*(v4 + 6))
  {
    [(PCPCalendarEvent *)self setLocationTitle:?];
    v4 = v8;
  }

  v5 = *(v4 + 72);
  if ((v5 & 2) != 0)
  {
    self->_startTimeCFAbsolute = *(v4 + 2);
    *&self->_has |= 2u;
    v5 = *(v4 + 72);
    if ((v5 & 1) == 0)
    {
LABEL_11:
      if ((v5 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if ((*(v4 + 72) & 1) == 0)
  {
    goto LABEL_11;
  }

  self->_endTimeCFAbsolute = *(v4 + 1);
  *&self->_has |= 1u;
  if ((*(v4 + 72) & 4) != 0)
  {
LABEL_12:
    self->_status = *(v4 + 14);
    *&self->_has |= 4u;
  }

LABEL_13:
  location = self->_location;
  v7 = *(v4 + 5);
  if (location)
  {
    if (v7)
    {
      [(PCPLocation *)location mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(PCPCalendarEvent *)self setLocation:?];
  }

  MEMORY[0x1EEE66BB8]();
}

@end