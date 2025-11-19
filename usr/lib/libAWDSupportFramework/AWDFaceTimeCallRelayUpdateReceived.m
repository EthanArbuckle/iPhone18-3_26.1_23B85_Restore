@interface AWDFaceTimeCallRelayUpdateReceived
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasIsVideo:(BOOL)a3;
- (void)setHasOnLockScreen:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDFaceTimeCallRelayUpdateReceived

- (void)dealloc
{
  [(AWDFaceTimeCallRelayUpdateReceived *)self setGuid:0];
  v3.receiver = self;
  v3.super_class = AWDFaceTimeCallRelayUpdateReceived;
  [(AWDFaceTimeCallRelayUpdateReceived *)&v3 dealloc];
}

- (void)setHasIsVideo:(BOOL)a3
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

- (void)setHasOnLockScreen:(BOOL)a3
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

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDFaceTimeCallRelayUpdateReceived;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDFaceTimeCallRelayUpdateReceived description](&v3, sel_description), -[AWDFaceTimeCallRelayUpdateReceived dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  v4 = v3;
  guid = self->_guid;
  if (guid)
  {
    [v3 setObject:guid forKey:@"guid"];
  }

  has = self->_has;
  if ((has & 1) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_isVideo), @"isVideo"}];
    if ((*&self->_has & 4) == 0)
    {
      return v4;
    }

    goto LABEL_6;
  }

  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  if ((has & 4) != 0)
  {
LABEL_6:
    [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_onLockScreen), @"onLockScreen"}];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  if (self->_guid)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 1) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    isVideo = self->_isVideo;
    PBDataWriterWriteUint32Field();
    if ((*&self->_has & 4) == 0)
    {
      return;
    }

    goto LABEL_9;
  }

  timestamp = self->_timestamp;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  if ((has & 4) == 0)
  {
    return;
  }

LABEL_9:
  onLockScreen = self->_onLockScreen;

  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)a3
{
  if (self->_guid)
  {
    [a3 setGuid:?];
  }

  has = self->_has;
  if (has)
  {
    *(a3 + 1) = self->_timestamp;
    *(a3 + 32) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 4) == 0)
      {
        return;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  *(a3 + 6) = self->_isVideo;
  *(a3 + 32) |= 2u;
  if ((*&self->_has & 4) == 0)
  {
    return;
  }

LABEL_6:
  *(a3 + 7) = self->_onLockScreen;
  *(a3 + 32) |= 4u;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];

  *(v5 + 16) = [(NSString *)self->_guid copyWithZone:a3];
  has = self->_has;
  if ((has & 1) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 24) = self->_isVideo;
    *(v5 + 32) |= 2u;
    if ((*&self->_has & 4) == 0)
    {
      return v5;
    }

    goto LABEL_4;
  }

  *(v5 + 8) = self->_timestamp;
  *(v5 + 32) |= 1u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((has & 4) != 0)
  {
LABEL_4:
    *(v5 + 28) = self->_onLockScreen;
    *(v5 + 32) |= 4u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    guid = self->_guid;
    if (!(guid | *(a3 + 2)) || (v5 = [(NSString *)guid isEqual:?]) != 0)
    {
      if (*&self->_has)
      {
        if ((*(a3 + 32) & 1) == 0 || self->_timestamp != *(a3 + 1))
        {
          goto LABEL_18;
        }
      }

      else if (*(a3 + 32))
      {
LABEL_18:
        LOBYTE(v5) = 0;
        return v5;
      }

      if ((*&self->_has & 2) != 0)
      {
        if ((*(a3 + 32) & 2) == 0 || self->_isVideo != *(a3 + 6))
        {
          goto LABEL_18;
        }
      }

      else if ((*(a3 + 32) & 2) != 0)
      {
        goto LABEL_18;
      }

      LOBYTE(v5) = (*(a3 + 32) & 4) == 0;
      if ((*&self->_has & 4) != 0)
      {
        if ((*(a3 + 32) & 4) == 0 || self->_onLockScreen != *(a3 + 7))
        {
          goto LABEL_18;
        }

        LOBYTE(v5) = 1;
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_guid hash];
  if ((*&self->_has & 1) == 0)
  {
    v4 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v5 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v6 = 0;
    return v4 ^ v3 ^ v5 ^ v6;
  }

  v4 = 2654435761u * self->_timestamp;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v5 = 2654435761 * self->_isVideo;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v6 = 2654435761 * self->_onLockScreen;
  return v4 ^ v3 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 2))
  {
    [(AWDFaceTimeCallRelayUpdateReceived *)self setGuid:?];
  }

  v5 = *(a3 + 32);
  if (v5)
  {
    self->_timestamp = *(a3 + 1);
    *&self->_has |= 1u;
    v5 = *(a3 + 32);
    if ((v5 & 2) == 0)
    {
LABEL_5:
      if ((v5 & 4) == 0)
      {
        return;
      }

      goto LABEL_6;
    }
  }

  else if ((*(a3 + 32) & 2) == 0)
  {
    goto LABEL_5;
  }

  self->_isVideo = *(a3 + 6);
  *&self->_has |= 2u;
  if ((*(a3 + 32) & 4) == 0)
  {
    return;
  }

LABEL_6:
  self->_onLockScreen = *(a3 + 7);
  *&self->_has |= 4u;
}

@end