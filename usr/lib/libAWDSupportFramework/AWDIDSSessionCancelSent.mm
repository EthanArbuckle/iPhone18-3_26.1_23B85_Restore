@interface AWDIDSSessionCancelSent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasNumberOfRecipients:(BOOL)a3;
- (void)setHasRemoteSessionEndReason:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDIDSSessionCancelSent

- (void)dealloc
{
  [(AWDIDSSessionCancelSent *)self setGuid:0];
  v3.receiver = self;
  v3.super_class = AWDIDSSessionCancelSent;
  [(AWDIDSSessionCancelSent *)&v3 dealloc];
}

- (void)setHasNumberOfRecipients:(BOOL)a3
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

- (void)setHasRemoteSessionEndReason:(BOOL)a3
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
  v3.super_class = AWDIDSSessionCancelSent;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDIDSSessionCancelSent description](&v3, sel_description), -[AWDIDSSessionCancelSent dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  guid = self->_guid;
  if (guid)
  {
    [v3 setObject:guid forKey:@"guid"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_numberOfRecipients), @"numberOfRecipients"}];
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_remoteSessionEndReason), @"remoteSessionEndReason"}];
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

  if (self->_guid)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    numberOfRecipients = self->_numberOfRecipients;
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    remoteSessionEndReason = self->_remoteSessionEndReason;

    PBDataWriterWriteUint32Field();
  }
}

- (void)copyTo:(id)a3
{
  if (*&self->_has)
  {
    *(a3 + 1) = self->_timestamp;
    *(a3 + 32) |= 1u;
  }

  if (self->_guid)
  {
    [a3 setGuid:?];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(a3 + 6) = self->_numberOfRecipients;
    *(a3 + 32) |= 2u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(a3 + 7) = self->_remoteSessionEndReason;
    *(a3 + 32) |= 4u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 32) |= 1u;
  }

  *(v6 + 16) = [(NSString *)self->_guid copyWithZone:a3];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v6 + 24) = self->_numberOfRecipients;
    *(v6 + 32) |= 2u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v6 + 28) = self->_remoteSessionEndReason;
    *(v6 + 32) |= 4u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(a3 + 32);
    if (has)
    {
      if ((*(a3 + 32) & 1) == 0 || self->_timestamp != *(a3 + 1))
      {
        goto LABEL_19;
      }
    }

    else if (*(a3 + 32))
    {
LABEL_19:
      LOBYTE(v5) = 0;
      return v5;
    }

    guid = self->_guid;
    if (guid | *(a3 + 2))
    {
      v5 = [(NSString *)guid isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    if ((has & 2) != 0)
    {
      if ((*(a3 + 32) & 2) == 0 || self->_numberOfRecipients != *(a3 + 6))
      {
        goto LABEL_19;
      }
    }

    else if ((*(a3 + 32) & 2) != 0)
    {
      goto LABEL_19;
    }

    LOBYTE(v5) = (*(a3 + 32) & 4) == 0;
    if ((has & 4) != 0)
    {
      if ((*(a3 + 32) & 4) == 0 || self->_remoteSessionEndReason != *(a3 + 7))
      {
        goto LABEL_19;
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

  v4 = [(NSString *)self->_guid hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_numberOfRecipients;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_8:
    v6 = 0;
    return v4 ^ v3 ^ v5 ^ v6;
  }

  v5 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v6 = 2654435761 * self->_remoteSessionEndReason;
  return v4 ^ v3 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 32))
  {
    self->_timestamp = *(a3 + 1);
    *&self->_has |= 1u;
  }

  if (*(a3 + 2))
  {
    [(AWDIDSSessionCancelSent *)self setGuid:?];
  }

  v5 = *(a3 + 32);
  if ((v5 & 2) != 0)
  {
    self->_numberOfRecipients = *(a3 + 6);
    *&self->_has |= 2u;
    v5 = *(a3 + 32);
  }

  if ((v5 & 4) != 0)
  {
    self->_remoteSessionEndReason = *(a3 + 7);
    *&self->_has |= 4u;
  }
}

@end