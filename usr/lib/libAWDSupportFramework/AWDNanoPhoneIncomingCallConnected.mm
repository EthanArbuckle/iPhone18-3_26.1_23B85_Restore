@interface AWDNanoPhoneIncomingCallConnected
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasIsHosted:(BOOL)hosted;
- (void)setHasIsVideo:(BOOL)video;
- (void)setHasTimestamp:(BOOL)timestamp;
- (void)writeTo:(id)to;
@end

@implementation AWDNanoPhoneIncomingCallConnected

- (void)dealloc
{
  [(AWDNanoPhoneIncomingCallConnected *)self setCallProviderIdentifier:0];
  v3.receiver = self;
  v3.super_class = AWDNanoPhoneIncomingCallConnected;
  [(AWDNanoPhoneIncomingCallConnected *)&v3 dealloc];
}

- (void)setHasTimestamp:(BOOL)timestamp
{
  if (timestamp)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasIsVideo:(BOOL)video
{
  if (video)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasIsHosted:(BOOL)hosted
{
  if (hosted)
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
  v3.super_class = AWDNanoPhoneIncomingCallConnected;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDNanoPhoneIncomingCallConnected description](&v3, sel_description), -[AWDNanoPhoneIncomingCallConnected dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
  }

  if (has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_connectingMs), @"connectingMs"}];
  }

  callProviderIdentifier = self->_callProviderIdentifier;
  if (callProviderIdentifier)
  {
    [dictionary setObject:callProviderIdentifier forKey:@"callProviderIdentifier"];
  }

  v6 = self->_has;
  if ((v6 & 8) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_isVideo), @"isVideo"}];
    v6 = self->_has;
  }

  if ((v6 & 4) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_isHosted), @"isHosted"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
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
    connectingMs = self->_connectingMs;
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

- (void)copyTo:(id)to
{
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(to + 2) = self->_timestamp;
    *(to + 36) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(to + 1) = self->_connectingMs;
    *(to + 36) |= 1u;
  }

  if (self->_callProviderIdentifier)
  {
    [to setCallProviderIdentifier:?];
  }

  v6 = self->_has;
  if ((v6 & 8) != 0)
  {
    *(to + 33) = self->_isVideo;
    *(to + 36) |= 8u;
    v6 = self->_has;
  }

  if ((v6 & 4) != 0)
  {
    *(to + 32) = self->_isHosted;
    *(to + 36) |= 4u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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
    *(v5 + 8) = self->_connectingMs;
    *(v5 + 36) |= 1u;
  }

  *(v6 + 24) = [(NSString *)self->_callProviderIdentifier copyWithZone:zone];
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

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(equal + 36);
    if ((has & 2) != 0)
    {
      if ((*(equal + 36) & 2) == 0 || self->_timestamp != *(equal + 2))
      {
        goto LABEL_23;
      }
    }

    else if ((*(equal + 36) & 2) != 0)
    {
      goto LABEL_23;
    }

    if (*&self->_has)
    {
      if ((*(equal + 36) & 1) == 0 || self->_connectingMs != *(equal + 1))
      {
        goto LABEL_23;
      }
    }

    else if (*(equal + 36))
    {
      goto LABEL_23;
    }

    callProviderIdentifier = self->_callProviderIdentifier;
    if (callProviderIdentifier | *(equal + 3))
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
      if ((*(equal + 36) & 8) == 0)
      {
        goto LABEL_23;
      }

      v9 = *(equal + 33);
      if (self->_isVideo)
      {
        if ((*(equal + 33) & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      else if (*(equal + 33))
      {
        goto LABEL_23;
      }
    }

    else if ((*(equal + 36) & 8) != 0)
    {
      goto LABEL_23;
    }

    LOBYTE(v5) = (*(equal + 36) & 4) == 0;
    if ((has & 4) == 0)
    {
      return v5;
    }

    if ((*(equal + 36) & 4) != 0)
    {
      if (self->_isHosted)
      {
        if (*(equal + 32))
        {
          goto LABEL_31;
        }
      }

      else if (!*(equal + 32))
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
      v4 = 2654435761u * self->_connectingMs;
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

- (void)mergeFrom:(id)from
{
  v5 = *(from + 36);
  if ((v5 & 2) != 0)
  {
    self->_timestamp = *(from + 2);
    *&self->_has |= 2u;
    v5 = *(from + 36);
  }

  if (v5)
  {
    self->_connectingMs = *(from + 1);
    *&self->_has |= 1u;
  }

  if (*(from + 3))
  {
    [(AWDNanoPhoneIncomingCallConnected *)self setCallProviderIdentifier:?];
  }

  v6 = *(from + 36);
  if ((v6 & 8) != 0)
  {
    self->_isVideo = *(from + 33);
    *&self->_has |= 8u;
    v6 = *(from + 36);
  }

  if ((v6 & 4) != 0)
  {
    self->_isHosted = *(from + 32);
    *&self->_has |= 4u;
  }
}

@end