@interface ChannelActivityDeactivationResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsStatus:(id)a3;
- (int)status;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasRetryIntervalSeconds:(BOOL)a3;
- (void)setHasStatus:(BOOL)a3;
- (void)setHasVersion:(BOOL)a3;
- (void)writeTo:(id)a3;
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

- (void)setHasStatus:(BOOL)a3
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

- (int)StringAsStatus:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SUCCESS"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"AUTH_EXPIRED"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"AUTH_FAILED"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"BAD_REQUEST"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"CHANNEL_IDENTITY_VALIDATION_FAILED"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"INTERNAL_ERROR"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"STALE_PUBLISH_REJECTED"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"RATE_LIMITED"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"INVALID_NONCE"])
  {
    v4 = 8;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasVersion:(BOOL)a3
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

- (void)setHasRetryIntervalSeconds:(BOOL)a3
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
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ChannelActivityDeactivationResponse;
  v4 = [(ChannelActivityDeactivationResponse *)&v8 description];
  v5 = [(ChannelActivityDeactivationResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
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

    [v3 setObject:v5 forKey:@"status"];
  }

  uuid = self->_uuid;
  if (uuid)
  {
    [v3 setObject:uuid forKey:@"uuid"];
  }

  has = self->_has;
  if (has)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_serverTimestampSeconds];
    [v3 setObject:v10 forKey:@"server_timestamp_seconds"];

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
  [v3 setObject:v11 forKey:@"version"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_11:
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_retryIntervalSeconds];
    [v3 setObject:v8 forKey:@"retry_interval_seconds"];
  }

LABEL_12:

  return v3;
}

- (void)writeTo:(id)a3
{
  v9 = a3;
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

- (void)copyTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 8) != 0)
  {
    v4[7] = self->_status;
    *(v4 + 40) |= 8u;
  }

  if (self->_uuid)
  {
    v6 = v4;
    [v4 setUuid:?];
    v4 = v6;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 1) = self->_serverTimestampSeconds;
    *(v4 + 40) |= 1u;
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

  *(v4 + 2) = self->_version;
  *(v4 + 40) |= 2u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_8:
    v4[6] = self->_retryIntervalSeconds;
    *(v4 + 40) |= 4u;
  }

LABEL_9:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 8) != 0)
  {
    *(v5 + 28) = self->_status;
    *(v5 + 40) |= 8u;
  }

  v7 = [(NSData *)self->_uuid copyWithZone:a3];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  has = self->_has;
  v6 = *(v4 + 40);
  if ((has & 8) != 0)
  {
    if ((*(v4 + 40) & 8) == 0 || self->_status != *(v4 + 7))
    {
      goto LABEL_24;
    }
  }

  else if ((*(v4 + 40) & 8) != 0)
  {
    goto LABEL_24;
  }

  uuid = self->_uuid;
  if (uuid | *(v4 + 4))
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
    if ((*(v4 + 40) & 1) == 0 || self->_serverTimestampSeconds != *(v4 + 1))
    {
      goto LABEL_24;
    }
  }

  else if (*(v4 + 40))
  {
    goto LABEL_24;
  }

  if ((has & 2) != 0)
  {
    if ((*(v4 + 40) & 2) == 0 || self->_version != *(v4 + 2))
    {
      goto LABEL_24;
    }
  }

  else if ((*(v4 + 40) & 2) != 0)
  {
    goto LABEL_24;
  }

  v8 = (*(v4 + 40) & 4) == 0;
  if ((has & 4) != 0)
  {
    if ((*(v4 + 40) & 4) == 0 || self->_retryIntervalSeconds != *(v4 + 6))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if ((*(v4 + 40) & 8) != 0)
  {
    self->_status = *(v4 + 7);
    *&self->_has |= 8u;
  }

  if (*(v4 + 4))
  {
    v6 = v4;
    [(ChannelActivityDeactivationResponse *)self setUuid:?];
    v4 = v6;
  }

  v5 = *(v4 + 40);
  if (v5)
  {
    self->_serverTimestampSeconds = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = *(v4 + 40);
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

  else if ((*(v4 + 40) & 2) == 0)
  {
    goto LABEL_7;
  }

  self->_version = *(v4 + 2);
  *&self->_has |= 2u;
  if ((*(v4 + 40) & 4) != 0)
  {
LABEL_8:
    self->_retryIntervalSeconds = *(v4 + 6);
    *&self->_has |= 4u;
  }

LABEL_9:
}

@end