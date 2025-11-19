@interface AWDEventKitSyncIsNotifiableEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasDeltaTransitTime:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)setHasWillTriggerNotification:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDEventKitSyncIsNotifiableEvent

- (void)dealloc
{
  [(AWDEventKitSyncIsNotifiableEvent *)self setReason:0];
  v3.receiver = self;
  v3.super_class = AWDEventKitSyncIsNotifiableEvent;
  [(AWDEventKitSyncIsNotifiableEvent *)&v3 dealloc];
}

- (void)setHasTimestamp:(BOOL)a3
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

- (void)setHasDeltaTransitTime:(BOOL)a3
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

- (void)setHasWillTriggerNotification:(BOOL)a3
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
  v3.receiver = self;
  v3.super_class = AWDEventKitSyncIsNotifiableEvent;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDEventKitSyncIsNotifiableEvent description](&v3, sel_description), -[AWDEventKitSyncIsNotifiableEvent dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_deltaTransitTime), @"deltaTransitTime"}];
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_deltaProcessingTime), @"deltaProcessingTime"}];
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_willTriggerNotification), @"willTriggerNotification"}];
  }

LABEL_6:
  reason = self->_reason;
  if (reason)
  {
    [v3 setObject:reason forKey:@"reason"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  has = self->_has;
  if ((has & 4) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  deltaTransitTime = self->_deltaTransitTime;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_12:
  deltaProcessingTime = self->_deltaProcessingTime;
  PBDataWriterWriteUint64Field();
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    willTriggerNotification = self->_willTriggerNotification;
    PBDataWriterWriteBOOLField();
  }

LABEL_6:
  if (self->_reason)
  {

    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(a3 + 3) = self->_timestamp;
    *(a3 + 44) |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 2) = self->_deltaTransitTime;
  *(a3 + 44) |= 2u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_10:
  *(a3 + 1) = self->_deltaProcessingTime;
  *(a3 + 44) |= 1u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    *(a3 + 40) = self->_willTriggerNotification;
    *(a3 + 44) |= 8u;
  }

LABEL_6:
  reason = self->_reason;
  if (reason)
  {
    [a3 setReason:reason];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v5 + 24) = self->_timestamp;
    *(v5 + 44) |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      *(v5 + 8) = self->_deltaProcessingTime;
      *(v5 + 44) |= 1u;
      if ((*&self->_has & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 16) = self->_deltaTransitTime;
  *(v5 + 44) |= 2u;
  has = self->_has;
  if (has)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((has & 8) != 0)
  {
LABEL_5:
    *(v5 + 40) = self->_willTriggerNotification;
    *(v5 + 44) |= 8u;
  }

LABEL_6:

  v6[4] = [(NSString *)self->_reason copyWithZone:a3];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (!v5)
  {
    return v5;
  }

  v6 = *(a3 + 44);
  if ((*&self->_has & 4) != 0)
  {
    if ((*(a3 + 44) & 4) == 0 || self->_timestamp != *(a3 + 3))
    {
      goto LABEL_22;
    }
  }

  else if ((*(a3 + 44) & 4) != 0)
  {
    goto LABEL_22;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(a3 + 44) & 2) == 0 || self->_deltaTransitTime != *(a3 + 2))
    {
      goto LABEL_22;
    }
  }

  else if ((*(a3 + 44) & 2) != 0)
  {
    goto LABEL_22;
  }

  if (*&self->_has)
  {
    if ((*(a3 + 44) & 1) == 0 || self->_deltaProcessingTime != *(a3 + 1))
    {
      goto LABEL_22;
    }
  }

  else if (*(a3 + 44))
  {
    goto LABEL_22;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(a3 + 44) & 8) != 0)
    {
      v8 = *(a3 + 40);
      if (self->_willTriggerNotification)
      {
        if ((*(a3 + 40) & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      else if (*(a3 + 40))
      {
        goto LABEL_22;
      }

      goto LABEL_19;
    }

LABEL_22:
    LOBYTE(v5) = 0;
    return v5;
  }

  if ((*(a3 + 44) & 8) != 0)
  {
    goto LABEL_22;
  }

LABEL_19:
  reason = self->_reason;
  if (reason | *(a3 + 4))
  {

    LOBYTE(v5) = [(NSString *)reason isEqual:?];
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) != 0)
  {
    v6 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v7 = 2654435761u * self->_deltaTransitTime;
      if (*&self->_has)
      {
        goto LABEL_4;
      }

LABEL_8:
      v8 = 0;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      v9 = 0;
      return v7 ^ v6 ^ v8 ^ v9 ^ [(NSString *)self->_reason hash:v3];
    }
  }

  else
  {
    v6 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v8 = 2654435761u * self->_deltaProcessingTime;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v9 = 2654435761 * self->_willTriggerNotification;
  return v7 ^ v6 ^ v8 ^ v9 ^ [(NSString *)self->_reason hash:v3];
}

- (void)mergeFrom:(id)a3
{
  v3 = *(a3 + 44);
  if ((v3 & 4) != 0)
  {
    self->_timestamp = *(a3 + 3);
    *&self->_has |= 4u;
    v3 = *(a3 + 44);
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*(a3 + 44) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_deltaTransitTime = *(a3 + 2);
  *&self->_has |= 2u;
  v3 = *(a3 + 44);
  if ((v3 & 1) == 0)
  {
LABEL_4:
    if ((v3 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_10:
  self->_deltaProcessingTime = *(a3 + 1);
  *&self->_has |= 1u;
  if ((*(a3 + 44) & 8) != 0)
  {
LABEL_5:
    self->_willTriggerNotification = *(a3 + 40);
    *&self->_has |= 8u;
  }

LABEL_6:
  if (*(a3 + 4))
  {
    [(AWDEventKitSyncIsNotifiableEvent *)self setReason:?];
  }
}

@end