@interface ICIAMLocalNotification
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)triggerAsString:(int)a3;
- (int)StringAsTrigger:(id)a3;
- (int)trigger;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasInterval:(BOOL)a3;
- (void)setHasTrigger:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ICIAMLocalNotification

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 36);
  if ((v5 & 4) != 0)
  {
    self->_trigger = *(v4 + 8);
    *&self->_has |= 4u;
    v5 = *(v4 + 36);
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

  else if ((*(v4 + 36) & 1) == 0)
  {
    goto LABEL_3;
  }

  self->_date = *(v4 + 1);
  *&self->_has |= 1u;
  if ((*(v4 + 36) & 2) != 0)
  {
LABEL_4:
    self->_interval = *(v4 + 2);
    *&self->_has |= 2u;
  }

LABEL_5:
  if (*(v4 + 3))
  {
    v6 = v4;
    [(ICIAMLocalNotification *)self setNotification:?];
    v4 = v6;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 36) & 4) == 0 || self->_trigger != *(v4 + 8))
    {
      goto LABEL_19;
    }
  }

  else if ((*(v4 + 36) & 4) != 0)
  {
LABEL_19:
    v6 = 0;
    goto LABEL_20;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 36) & 1) == 0 || self->_date != *(v4 + 1))
    {
      goto LABEL_19;
    }
  }

  else if (*(v4 + 36))
  {
    goto LABEL_19;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 36) & 2) == 0 || self->_interval != *(v4 + 2))
    {
      goto LABEL_19;
    }
  }

  else if ((*(v4 + 36) & 2) != 0)
  {
    goto LABEL_19;
  }

  notification = self->_notification;
  if (notification | *(v4 + 3))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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
  v8 = [(NSString *)self->_notification copyWithZone:a3];
  v9 = v6[3];
  v6[3] = v8;

  return v6;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 4) != 0)
  {
    v4[8] = self->_trigger;
    *(v4 + 36) |= 4u;
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

  *(v4 + 1) = *&self->_date;
  *(v4 + 36) |= 1u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    *(v4 + 2) = *&self->_interval;
    *(v4 + 36) |= 2u;
  }

LABEL_5:
  if (self->_notification)
  {
    v6 = v4;
    [v4 setNotification:?];
    v4 = v6;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v6 = v4;
  if ((has & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
    v4 = v6;
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
  v4 = v6;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    PBDataWriterWriteDoubleField();
    v4 = v6;
  }

LABEL_5:
  if (self->_notification)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
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

    [v3 setObject:v6 forKey:@"trigger"];

    has = self->_has;
  }

  if (has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_date];
    [v3 setObject:v7 forKey:@"date"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_interval];
    [v3 setObject:v8 forKey:@"interval"];
  }

  notification = self->_notification;
  if (notification)
  {
    [v3 setObject:notification forKey:@"notification"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ICIAMLocalNotification;
  v4 = [(ICIAMLocalNotification *)&v8 description];
  v5 = [(ICIAMLocalNotification *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setHasInterval:(BOOL)a3
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

- (int)StringAsTrigger:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Calendar"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"TimeInterval"];
  }

  return v4;
}

- (id)triggerAsString:(int)a3
{
  if (a3)
  {
    if (a3 == 1)
    {
      v4 = @"TimeInterval";
    }

    else
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&a3];
    }
  }

  else
  {
    v4 = @"Calendar";
  }

  return v4;
}

- (void)setHasTrigger:(BOOL)a3
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