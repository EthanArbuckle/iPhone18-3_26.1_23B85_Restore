@interface ChannelActivityDeactivationResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsStatus:(id)status;
- (int)status;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasRetryIntervalSeconds:(BOOL)seconds;
- (void)setHasStatus:(BOOL)status;
- (void)setHasVersion:(BOOL)version;
- (void)writeTo:(id)to;
@end

@implementation ChannelActivityDeactivationResponse

- (int)status
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_status;
  }

  else
  {
    return 0;
  }
}

- (void)setHasStatus:(BOOL)status
{
  if (status)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)StringAsStatus:(id)status
{
  statusCopy = status;
  if ([statusCopy isEqualToString:@"SUCCESS"])
  {
    v4 = 0;
  }

  else if ([statusCopy isEqualToString:@"AUTH_EXPIRED"])
  {
    v4 = 1;
  }

  else if ([statusCopy isEqualToString:@"AUTH_FAILED"])
  {
    v4 = 2;
  }

  else if ([statusCopy isEqualToString:@"BAD_REQUEST"])
  {
    v4 = 3;
  }

  else if ([statusCopy isEqualToString:@"CHANNEL_IDENTITY_VALIDATION_FAILED"])
  {
    v4 = 4;
  }

  else if ([statusCopy isEqualToString:@"INTERNAL_ERROR"])
  {
    v4 = 5;
  }

  else if ([statusCopy isEqualToString:@"STALE_PUBLISH_REJECTED"])
  {
    v4 = 6;
  }

  else if ([statusCopy isEqualToString:@"RATE_LIMITED"])
  {
    v4 = 7;
  }

  else if ([statusCopy isEqualToString:@"INVALID_NONCE"])
  {
    v4 = 8;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasVersion:(BOOL)version
{
  if (version)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasRetryIntervalSeconds:(BOOL)seconds
{
  if (seconds)
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
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ChannelActivityDeactivationResponse;
  v4 = [(ChannelActivityDeactivationResponse *)&v8 description];
  dictionaryRepresentation = [(ChannelActivityDeactivationResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ((*&self->_has & 8) != 0)
  {
    status = self->_status;
    if (status >= 9)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_status];
    }

    else
    {
      v5 = off_27843DFA0[status];
    }

    [dictionary setObject:v5 forKey:@"status"];
  }

  uuid = self->_uuid;
  if (uuid)
  {
    [dictionary setObject:uuid forKey:@"uuid"];
  }

  has = self->_has;
  if (has)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_serverTimestampSeconds];
    [dictionary setObject:v10 forKey:@"server_timestamp_seconds"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_10:
      if ((has & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_10;
  }

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_version];
  [dictionary setObject:v11 forKey:@"version"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_11:
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_retryIntervalSeconds];
    [dictionary setObject:v8 forKey:@"retry_interval_seconds"];
  }

LABEL_12:

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 8) != 0)
  {
    status = self->_status;
    PBDataWriterWriteInt32Field();
  }

  if (self->_uuid)
  {
    PBDataWriterWriteDataField();
  }

  has = self->_has;
  if (has)
  {
    serverTimestampSeconds = self->_serverTimestampSeconds;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

  version = self->_version;
  PBDataWriterWriteUint64Field();
  if ((*&self->_has & 4) != 0)
  {
LABEL_8:
    retryIntervalSeconds = self->_retryIntervalSeconds;
    PBDataWriterWriteUint32Field();
  }

LABEL_9:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 8) != 0)
  {
    toCopy[7] = self->_status;
    *(toCopy + 40) |= 8u;
  }

  if (self->_uuid)
  {
    v6 = toCopy;
    [toCopy setUuid:?];
    toCopy = v6;
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 1) = self->_serverTimestampSeconds;
    *(toCopy + 40) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

  *(toCopy + 2) = self->_version;
  *(toCopy + 40) |= 2u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_8:
    toCopy[6] = self->_retryIntervalSeconds;
    *(toCopy + 40) |= 4u;
  }

LABEL_9:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 8) != 0)
  {
    *(v5 + 28) = self->_status;
    *(v5 + 40) |= 8u;
  }

  v7 = [(NSData *)self->_uuid copyWithZone:zone];
  v8 = *(v6 + 32);
  *(v6 + 32) = v7;

  has = self->_has;
  if ((has & 1) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    *(v6 + 16) = self->_version;
    *(v6 + 40) |= 2u;
    if ((*&self->_has & 4) == 0)
    {
      return v6;
    }

    goto LABEL_6;
  }

  *(v6 + 8) = self->_serverTimestampSeconds;
  *(v6 + 40) |= 1u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  if ((has & 4) != 0)
  {
LABEL_6:
    *(v6 + 24) = self->_retryIntervalSeconds;
    *(v6 + 40) |= 4u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  has = self->_has;
  v6 = *(equalCopy + 40);
  if ((has & 8) != 0)
  {
    if ((*(equalCopy + 40) & 8) == 0 || self->_status != *(equalCopy + 7))
    {
      goto LABEL_24;
    }
  }

  else if ((*(equalCopy + 40) & 8) != 0)
  {
    goto LABEL_24;
  }

  uuid = self->_uuid;
  if (uuid | *(equalCopy + 4))
  {
    if (![(NSData *)uuid isEqual:?])
    {
LABEL_24:
      v8 = 0;
      goto LABEL_25;
    }

    has = self->_has;
  }

  if (has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_serverTimestampSeconds != *(equalCopy + 1))
    {
      goto LABEL_24;
    }
  }

  else if (*(equalCopy + 40))
  {
    goto LABEL_24;
  }

  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 40) & 2) == 0 || self->_version != *(equalCopy + 2))
    {
      goto LABEL_24;
    }
  }

  else if ((*(equalCopy + 40) & 2) != 0)
  {
    goto LABEL_24;
  }

  v8 = (*(equalCopy + 40) & 4) == 0;
  if ((has & 4) != 0)
  {
    if ((*(equalCopy + 40) & 4) == 0 || self->_retryIntervalSeconds != *(equalCopy + 6))
    {
      goto LABEL_24;
    }

    v8 = 1;
  }

LABEL_25:

  return v8;
}

- (unint64_t)hash
{
  if ((*&self->_has & 8) != 0)
  {
    v3 = 2654435761 * self->_status;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSData *)self->_uuid hash];
  if ((*&self->_has & 1) == 0)
  {
    v5 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_6;
    }

LABEL_9:
    v6 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_7;
    }

LABEL_10:
    v7 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7;
  }

  v5 = 2654435761u * self->_serverTimestampSeconds;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  v6 = 2654435761u * self->_version;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v7 = 2654435761 * self->_retryIntervalSeconds;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if ((*(fromCopy + 40) & 8) != 0)
  {
    self->_status = *(fromCopy + 7);
    *&self->_has |= 8u;
  }

  if (*(fromCopy + 4))
  {
    v6 = fromCopy;
    [(ChannelActivityDeactivationResponse *)self setUuid:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 40);
  if (v5)
  {
    self->_serverTimestampSeconds = *(fromCopy + 1);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 40);
    if ((v5 & 2) == 0)
    {
LABEL_7:
      if ((v5 & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*(fromCopy + 40) & 2) == 0)
  {
    goto LABEL_7;
  }

  self->_version = *(fromCopy + 2);
  *&self->_has |= 2u;
  if ((*(fromCopy + 40) & 4) != 0)
  {
LABEL_8:
    self->_retryIntervalSeconds = *(fromCopy + 6);
    *&self->_has |= 4u;
  }

LABEL_9:
}

@end