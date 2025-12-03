@interface ICIAMLocalNotification
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)triggerAsString:(int)string;
- (int)StringAsTrigger:(id)trigger;
- (int)trigger;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasInterval:(BOOL)interval;
- (void)setHasTrigger:(BOOL)trigger;
- (void)writeTo:(id)to;
@end

@implementation ICIAMLocalNotification

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 36);
  if ((v5 & 4) != 0)
  {
    self->_trigger = *(fromCopy + 8);
    *&self->_has |= 4u;
    v5 = *(fromCopy + 36);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(fromCopy + 36) & 1) == 0)
  {
    goto LABEL_3;
  }

  self->_date = *(fromCopy + 1);
  *&self->_has |= 1u;
  if ((*(fromCopy + 36) & 2) != 0)
  {
LABEL_4:
    self->_interval = *(fromCopy + 2);
    *&self->_has |= 2u;
  }

LABEL_5:
  if (*(fromCopy + 3))
  {
    v6 = fromCopy;
    [(ICIAMLocalNotification *)self setNotification:?];
    fromCopy = v6;
  }
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) != 0)
  {
    v8 = 2654435761 * self->_trigger;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_8:
    v12 = 0;
    goto LABEL_9;
  }

  v8 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  date = self->_date;
  if (date < 0.0)
  {
    date = -date;
  }

  *v6.i64 = floor(date + 0.5);
  v10 = (date - *v6.i64) * 1.84467441e19;
  *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
  v11.f64[0] = NAN;
  v11.f64[1] = NAN;
  v6 = vbslq_s8(vnegq_f64(v11), v7, v6);
  v12 = 2654435761u * *v6.i64;
  if (v10 >= 0.0)
  {
    if (v10 > 0.0)
    {
      v12 += v10;
    }
  }

  else
  {
    v12 -= fabs(v10);
  }

LABEL_9:
  if ((*&self->_has & 2) != 0)
  {
    interval = self->_interval;
    if (interval < 0.0)
    {
      interval = -interval;
    }

    *v6.i64 = floor(interval + 0.5);
    v15 = (interval - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v16.f64[0] = NAN;
    v16.f64[1] = NAN;
    v13 = 2654435761u * *vbslq_s8(vnegq_f64(v16), v7, v6).i64;
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

  return v12 ^ v8 ^ v13 ^ [(NSString *)self->_notification hash:v3];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 36) & 4) == 0 || self->_trigger != *(equalCopy + 8))
    {
      goto LABEL_19;
    }
  }

  else if ((*(equalCopy + 36) & 4) != 0)
  {
LABEL_19:
    v6 = 0;
    goto LABEL_20;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 36) & 1) == 0 || self->_date != *(equalCopy + 1))
    {
      goto LABEL_19;
    }
  }

  else if (*(equalCopy + 36))
  {
    goto LABEL_19;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 36) & 2) == 0 || self->_interval != *(equalCopy + 2))
    {
      goto LABEL_19;
    }
  }

  else if ((*(equalCopy + 36) & 2) != 0)
  {
    goto LABEL_19;
  }

  notification = self->_notification;
  if (notification | *(equalCopy + 3))
  {
    v6 = [(NSString *)notification isEqual:?];
  }

  else
  {
    v6 = 1;
  }

LABEL_20:

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 4) == 0)
  {
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 8) = self->_date;
    *(v5 + 36) |= 1u;
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  *(v5 + 32) = self->_trigger;
  *(v5 + 36) |= 4u;
  has = self->_has;
  if (has)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((has & 2) != 0)
  {
LABEL_4:
    *(v5 + 16) = self->_interval;
    *(v5 + 36) |= 2u;
  }

LABEL_5:
  v8 = [(NSString *)self->_notification copyWithZone:zone];
  v9 = v6[3];
  v6[3] = v8;

  return v6;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 4) != 0)
  {
    toCopy[8] = self->_trigger;
    *(toCopy + 36) |= 4u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(toCopy + 1) = *&self->_date;
  *(toCopy + 36) |= 1u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    *(toCopy + 2) = *&self->_interval;
    *(toCopy + 36) |= 2u;
  }

LABEL_5:
  if (self->_notification)
  {
    v6 = toCopy;
    [toCopy setNotification:?];
    toCopy = v6;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v6 = toCopy;
  if ((has & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v6;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteDoubleField();
  toCopy = v6;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    PBDataWriterWriteDoubleField();
    toCopy = v6;
  }

LABEL_5:
  if (self->_notification)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    trigger = self->_trigger;
    if (trigger)
    {
      if (trigger == 1)
      {
        v6 = @"TimeInterval";
      }

      else
      {
        v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_trigger];
      }
    }

    else
    {
      v6 = @"Calendar";
    }

    [dictionary setObject:v6 forKey:@"trigger"];

    has = self->_has;
  }

  if (has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_date];
    [dictionary setObject:v7 forKey:@"date"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_interval];
    [dictionary setObject:v8 forKey:@"interval"];
  }

  notification = self->_notification;
  if (notification)
  {
    [dictionary setObject:notification forKey:@"notification"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ICIAMLocalNotification;
  v4 = [(ICIAMLocalNotification *)&v8 description];
  dictionaryRepresentation = [(ICIAMLocalNotification *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)setHasInterval:(BOOL)interval
{
  if (interval)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsTrigger:(id)trigger
{
  triggerCopy = trigger;
  if ([triggerCopy isEqualToString:@"Calendar"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [triggerCopy isEqualToString:@"TimeInterval"];
  }

  return v4;
}

- (id)triggerAsString:(int)string
{
  if (string)
  {
    if (string == 1)
    {
      v4 = @"TimeInterval";
    }

    else
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
    }
  }

  else
  {
    v4 = @"Calendar";
  }

  return v4;
}

- (void)setHasTrigger:(BOOL)trigger
{
  if (trigger)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)trigger
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_trigger;
  }

  else
  {
    return 0;
  }
}

@end