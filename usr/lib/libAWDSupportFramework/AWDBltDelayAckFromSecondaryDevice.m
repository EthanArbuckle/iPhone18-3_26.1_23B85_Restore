@interface AWDBltDelayAckFromSecondaryDevice
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasConnectionType:(BOOL)a3;
- (void)setHasDelayMs:(BOOL)a3;
- (void)setHasOrigSendConnectionType:(BOOL)a3;
- (void)setHasTimedout:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDBltDelayAckFromSecondaryDevice

- (void)dealloc
{
  [(AWDBltDelayAckFromSecondaryDevice *)self setUniqueid:0];
  v3.receiver = self;
  v3.super_class = AWDBltDelayAckFromSecondaryDevice;
  [(AWDBltDelayAckFromSecondaryDevice *)&v3 dealloc];
}

- (void)setHasDelayMs:(BOOL)a3
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

- (void)setHasConnectionType:(BOOL)a3
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

- (void)setHasOrigSendConnectionType:(BOOL)a3
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

- (void)setHasTimedout:(BOOL)a3
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

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDBltDelayAckFromSecondaryDevice;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDBltDelayAckFromSecondaryDevice description](&v3, sel_description), -[AWDBltDelayAckFromSecondaryDevice dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  uniqueid = self->_uniqueid;
  if (uniqueid)
  {
    [v3 setObject:uniqueid forKey:@"uniqueid"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_delayMs), @"delayMs"}];
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 8) == 0)
      {
        goto LABEL_8;
      }

LABEL_13:
      [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_origSendConnectionType), @"origSendConnectionType"}];
      if ((*&self->_has & 0x10) == 0)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_connectionType), @"connectionType"}];
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  if ((has & 0x10) != 0)
  {
LABEL_9:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_timedout), @"timedout"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  if (self->_uniqueid)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    delayMs = self->_delayMs;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 8) == 0)
      {
        goto LABEL_8;
      }

LABEL_12:
      origSendConnectionType = self->_origSendConnectionType;
      PBDataWriterWriteUint32Field();
      if ((*&self->_has & 0x10) == 0)
      {
        return;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

  connectionType = self->_connectionType;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_12;
  }

LABEL_8:
  if ((has & 0x10) == 0)
  {
    return;
  }

LABEL_13:
  timedout = self->_timedout;

  PBDataWriterWriteBOOLField();
}

- (void)copyTo:(id)a3
{
  if (*&self->_has)
  {
    *(a3 + 1) = self->_timestamp;
    *(a3 + 44) |= 1u;
  }

  if (self->_uniqueid)
  {
    [a3 setUniqueid:?];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(a3 + 5) = self->_delayMs;
    *(a3 + 44) |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

  *(a3 + 4) = self->_connectionType;
  *(a3 + 44) |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 0x10) == 0)
    {
      return;
    }

    goto LABEL_9;
  }

LABEL_13:
  *(a3 + 6) = self->_origSendConnectionType;
  *(a3 + 44) |= 8u;
  if ((*&self->_has & 0x10) == 0)
  {
    return;
  }

LABEL_9:
  *(a3 + 40) = self->_timedout;
  *(a3 + 44) |= 0x10u;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 44) |= 1u;
  }

  *(v6 + 32) = [(NSString *)self->_uniqueid copyWithZone:a3];
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v6 + 20) = self->_delayMs;
    *(v6 + 44) |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 8) == 0)
      {
        goto LABEL_6;
      }

LABEL_11:
      *(v6 + 24) = self->_origSendConnectionType;
      *(v6 + 44) |= 8u;
      if ((*&self->_has & 0x10) == 0)
      {
        return v6;
      }

      goto LABEL_7;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  *(v6 + 16) = self->_connectionType;
  *(v6 + 44) |= 2u;
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  if ((has & 0x10) != 0)
  {
LABEL_7:
    *(v6 + 40) = self->_timedout;
    *(v6 + 44) |= 0x10u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(a3 + 44);
    if (has)
    {
      if ((*(a3 + 44) & 1) == 0 || self->_timestamp != *(a3 + 1))
      {
        goto LABEL_27;
      }
    }

    else if (*(a3 + 44))
    {
      goto LABEL_27;
    }

    uniqueid = self->_uniqueid;
    if (uniqueid | *(a3 + 4))
    {
      v5 = [(NSString *)uniqueid isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    if ((has & 4) != 0)
    {
      if ((*(a3 + 44) & 4) == 0 || self->_delayMs != *(a3 + 5))
      {
        goto LABEL_27;
      }
    }

    else if ((*(a3 + 44) & 4) != 0)
    {
      goto LABEL_27;
    }

    if ((has & 2) != 0)
    {
      if ((*(a3 + 44) & 2) == 0 || self->_connectionType != *(a3 + 4))
      {
        goto LABEL_27;
      }
    }

    else if ((*(a3 + 44) & 2) != 0)
    {
      goto LABEL_27;
    }

    if ((has & 8) != 0)
    {
      if ((*(a3 + 44) & 8) == 0 || self->_origSendConnectionType != *(a3 + 6))
      {
        goto LABEL_27;
      }
    }

    else if ((*(a3 + 44) & 8) != 0)
    {
      goto LABEL_27;
    }

    LOBYTE(v5) = (*(a3 + 44) & 0x10) == 0;
    if ((has & 0x10) != 0)
    {
      if ((*(a3 + 44) & 0x10) == 0)
      {
LABEL_27:
        LOBYTE(v5) = 0;
        return v5;
      }

      if (self->_timedout)
      {
        if ((*(a3 + 40) & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      else if (*(a3 + 40))
      {
        goto LABEL_27;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_timestamp;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_uniqueid hash];
  if ((*&self->_has & 4) != 0)
  {
    v5 = 2654435761 * self->_delayMs;
    if ((*&self->_has & 2) != 0)
    {
LABEL_6:
      v6 = 2654435761 * self->_connectionType;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_7;
      }

LABEL_11:
      v7 = 0;
      if ((*&self->_has & 0x10) != 0)
      {
        goto LABEL_8;
      }

LABEL_12:
      v8 = 0;
      return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
    }
  }

  else
  {
    v5 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_6;
    }
  }

  v6 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  v7 = 2654435761 * self->_origSendConnectionType;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_12;
  }

LABEL_8:
  v8 = 2654435761 * self->_timedout;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 44))
  {
    self->_timestamp = *(a3 + 1);
    *&self->_has |= 1u;
  }

  if (*(a3 + 4))
  {
    [(AWDBltDelayAckFromSecondaryDevice *)self setUniqueid:?];
  }

  v5 = *(a3 + 44);
  if ((v5 & 4) != 0)
  {
    self->_delayMs = *(a3 + 5);
    *&self->_has |= 4u;
    v5 = *(a3 + 44);
    if ((v5 & 2) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }
  }

  else if ((*(a3 + 44) & 2) == 0)
  {
    goto LABEL_7;
  }

  self->_connectionType = *(a3 + 4);
  *&self->_has |= 2u;
  v5 = *(a3 + 44);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      return;
    }

    goto LABEL_9;
  }

LABEL_13:
  self->_origSendConnectionType = *(a3 + 6);
  *&self->_has |= 8u;
  if ((*(a3 + 44) & 0x10) == 0)
  {
    return;
  }

LABEL_9:
  self->_timedout = *(a3 + 40);
  *&self->_has |= 0x10u;
}

@end