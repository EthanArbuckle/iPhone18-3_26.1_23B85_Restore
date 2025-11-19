@interface AWDNanoPhoneIncomingCallPresented
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasIsHosted:(BOOL)a3;
- (void)setHasIsVideo:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDNanoPhoneIncomingCallPresented

- (void)dealloc
{
  [(AWDNanoPhoneIncomingCallPresented *)self setCallProviderIdentifier:0];
  v3.receiver = self;
  v3.super_class = AWDNanoPhoneIncomingCallPresented;
  [(AWDNanoPhoneIncomingCallPresented *)&v3 dealloc];
}

- (void)setHasTimestamp:(BOOL)a3
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

- (void)setHasIsVideo:(BOOL)a3
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

- (void)setHasIsHosted:(BOOL)a3
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
  v3.super_class = AWDNanoPhoneIncomingCallPresented;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDNanoPhoneIncomingCallPresented description](&v3, sel_description), -[AWDNanoPhoneIncomingCallPresented dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
  }

  if (has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_clientDisplayLatencyMs), @"clientDisplayLatencyMs"}];
  }

  callProviderIdentifier = self->_callProviderIdentifier;
  if (callProviderIdentifier)
  {
    [v3 setObject:callProviderIdentifier forKey:@"callProviderIdentifier"];
  }

  v6 = self->_has;
  if ((v6 & 8) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_isVideo), @"isVideo"}];
    v6 = self->_has;
  }

  if ((v6 & 4) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_isHosted), @"isHosted"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  has = self->_has;
  if ((has & 2) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
  }

  if (has)
  {
    clientDisplayLatencyMs = self->_clientDisplayLatencyMs;
    PBDataWriterWriteUint64Field();
  }

  if (self->_callProviderIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v7 = self->_has;
  if ((v7 & 8) != 0)
  {
    isVideo = self->_isVideo;
    PBDataWriterWriteBOOLField();
    v7 = self->_has;
  }

  if ((v7 & 4) != 0)
  {
    isHosted = self->_isHosted;

    PBDataWriterWriteBOOLField();
  }
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(a3 + 2) = self->_timestamp;
    *(a3 + 36) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(a3 + 1) = self->_clientDisplayLatencyMs;
    *(a3 + 36) |= 1u;
  }

  if (self->_callProviderIdentifier)
  {
    [a3 setCallProviderIdentifier:?];
  }

  v6 = self->_has;
  if ((v6 & 8) != 0)
  {
    *(a3 + 33) = self->_isVideo;
    *(a3 + 36) |= 8u;
    v6 = self->_has;
  }

  if ((v6 & 4) != 0)
  {
    *(a3 + 32) = self->_isHosted;
    *(a3 + 36) |= 4u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_timestamp;
    *(v5 + 36) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 8) = self->_clientDisplayLatencyMs;
    *(v5 + 36) |= 1u;
  }

  *(v6 + 24) = [(NSString *)self->_callProviderIdentifier copyWithZone:a3];
  v8 = self->_has;
  if ((v8 & 8) != 0)
  {
    *(v6 + 33) = self->_isVideo;
    *(v6 + 36) |= 8u;
    v8 = self->_has;
  }

  if ((v8 & 4) != 0)
  {
    *(v6 + 32) = self->_isHosted;
    *(v6 + 36) |= 4u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(a3 + 36);
    if ((has & 2) != 0)
    {
      if ((*(a3 + 36) & 2) == 0 || self->_timestamp != *(a3 + 2))
      {
        goto LABEL_23;
      }
    }

    else if ((*(a3 + 36) & 2) != 0)
    {
      goto LABEL_23;
    }

    if (*&self->_has)
    {
      if ((*(a3 + 36) & 1) == 0 || self->_clientDisplayLatencyMs != *(a3 + 1))
      {
        goto LABEL_23;
      }
    }

    else if (*(a3 + 36))
    {
      goto LABEL_23;
    }

    callProviderIdentifier = self->_callProviderIdentifier;
    if (callProviderIdentifier | *(a3 + 3))
    {
      v5 = [(NSString *)callProviderIdentifier isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    if ((has & 8) != 0)
    {
      if ((*(a3 + 36) & 8) == 0)
      {
        goto LABEL_23;
      }

      v9 = *(a3 + 33);
      if (self->_isVideo)
      {
        if ((*(a3 + 33) & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      else if (*(a3 + 33))
      {
        goto LABEL_23;
      }
    }

    else if ((*(a3 + 36) & 8) != 0)
    {
      goto LABEL_23;
    }

    LOBYTE(v5) = (*(a3 + 36) & 4) == 0;
    if ((has & 4) == 0)
    {
      return v5;
    }

    if ((*(a3 + 36) & 4) != 0)
    {
      if (self->_isHosted)
      {
        if (*(a3 + 32))
        {
          goto LABEL_31;
        }
      }

      else if (!*(a3 + 32))
      {
LABEL_31:
        LOBYTE(v5) = 1;
        return v5;
      }
    }

LABEL_23:
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761u * self->_timestamp;
    if (*&self->_has)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    if (*&self->_has)
    {
LABEL_3:
      v4 = 2654435761u * self->_clientDisplayLatencyMs;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = [(NSString *)self->_callProviderIdentifier hash];
  if ((*&self->_has & 8) != 0)
  {
    v6 = 2654435761 * self->_isVideo;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_8;
    }

LABEL_10:
    v7 = 0;
    return v4 ^ v3 ^ v6 ^ v7 ^ v5;
  }

  v6 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  v7 = 2654435761 * self->_isHosted;
  return v4 ^ v3 ^ v6 ^ v7 ^ v5;
}

- (void)mergeFrom:(id)a3
{
  v5 = *(a3 + 36);
  if ((v5 & 2) != 0)
  {
    self->_timestamp = *(a3 + 2);
    *&self->_has |= 2u;
    v5 = *(a3 + 36);
  }

  if (v5)
  {
    self->_clientDisplayLatencyMs = *(a3 + 1);
    *&self->_has |= 1u;
  }

  if (*(a3 + 3))
  {
    [(AWDNanoPhoneIncomingCallPresented *)self setCallProviderIdentifier:?];
  }

  v6 = *(a3 + 36);
  if ((v6 & 8) != 0)
  {
    self->_isVideo = *(a3 + 33);
    *&self->_has |= 8u;
    v6 = *(a3 + 36);
  }

  if ((v6 & 4) != 0)
  {
    self->_isHosted = *(a3 + 32);
    *&self->_has |= 4u;
  }
}

@end