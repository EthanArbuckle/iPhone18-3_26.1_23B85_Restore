@interface SharedChannelCreateResponse
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
- (void)writeTo:(id)a3;
@end

@implementation SharedChannelCreateResponse

- (int)status
{
  if ((*&self->_has & 4) != 0)
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
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
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

- (void)setHasRetryIntervalSeconds:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SharedChannelCreateResponse;
  v4 = [(SharedChannelCreateResponse *)&v8 description];
  v5 = [(SharedChannelCreateResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if ((*&self->_has & 4) != 0)
  {
    status = self->_status;
    if (status >= 9)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_status];
    }

    else
    {
      v5 = off_27843E0B8[status];
    }

    [v3 setObject:v5 forKey:@"status"];
  }

  channelIdentity = self->_channelIdentity;
  if (channelIdentity)
  {
    v7 = [(ChannelIdentity *)channelIdentity dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"channel_identity"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_retryIntervalSeconds];
    [v3 setObject:v9 forKey:@"retry_interval_seconds"];

    has = self->_has;
  }

  if (has)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_serverTimestampSeconds];
    [v3 setObject:v10 forKey:@"server_timestamp_seconds"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  if ((*&self->_has & 4) != 0)
  {
    status = self->_status;
    PBDataWriterWriteInt32Field();
  }

  if (self->_channelIdentity)
  {
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    retryIntervalSeconds = self->_retryIntervalSeconds;
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  if (has)
  {
    serverTimestampSeconds = self->_serverTimestampSeconds;
    PBDataWriterWriteUint64Field();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 4) != 0)
  {
    v4[7] = self->_status;
    *(v4 + 32) |= 4u;
  }

  if (self->_channelIdentity)
  {
    v6 = v4;
    [v4 setChannelIdentity:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[6] = self->_retryIntervalSeconds;
    *(v4 + 32) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v4 + 1) = self->_serverTimestampSeconds;
    *(v4 + 32) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 28) = self->_status;
    *(v5 + 32) |= 4u;
  }

  v7 = [(ChannelIdentity *)self->_channelIdentity copyWithZone:a3];
  v8 = *(v6 + 16);
  *(v6 + 16) = v7;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v6 + 24) = self->_retryIntervalSeconds;
    *(v6 + 32) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v6 + 8) = self->_serverTimestampSeconds;
    *(v6 + 32) |= 1u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  has = self->_has;
  v6 = *(v4 + 32);
  if ((has & 4) != 0)
  {
    if ((*(v4 + 32) & 4) == 0 || self->_status != *(v4 + 7))
    {
      goto LABEL_19;
    }
  }

  else if ((*(v4 + 32) & 4) != 0)
  {
    goto LABEL_19;
  }

  channelIdentity = self->_channelIdentity;
  if (channelIdentity | *(v4 + 2))
  {
    if (![(ChannelIdentity *)channelIdentity isEqual:?])
    {
LABEL_19:
      v8 = 0;
      goto LABEL_20;
    }

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    if ((*(v4 + 32) & 2) == 0 || self->_retryIntervalSeconds != *(v4 + 6))
    {
      goto LABEL_19;
    }
  }

  else if ((*(v4 + 32) & 2) != 0)
  {
    goto LABEL_19;
  }

  v8 = (*(v4 + 32) & 1) == 0;
  if (has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_serverTimestampSeconds != *(v4 + 1))
    {
      goto LABEL_19;
    }

    v8 = 1;
  }

LABEL_20:

  return v8;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) != 0)
  {
    v3 = 2654435761 * self->_status;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(ChannelIdentity *)self->_channelIdentity hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_retryIntervalSeconds;
    if (*&self->_has)
    {
      goto LABEL_6;
    }

LABEL_8:
    v6 = 0;
    return v4 ^ v3 ^ v5 ^ v6;
  }

  v5 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v6 = 2654435761u * self->_serverTimestampSeconds;
  return v4 ^ v3 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if ((v4[8] & 4) != 0)
  {
    self->_status = v4[7];
    *&self->_has |= 4u;
  }

  channelIdentity = self->_channelIdentity;
  v7 = *(v5 + 2);
  if (channelIdentity)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    v9 = v5;
    [(ChannelIdentity *)channelIdentity mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    v9 = v5;
    [(SharedChannelCreateResponse *)self setChannelIdentity:?];
  }

  v5 = v9;
LABEL_9:
  v8 = *(v5 + 32);
  if ((v8 & 2) != 0)
  {
    self->_retryIntervalSeconds = v5[6];
    *&self->_has |= 2u;
    v8 = *(v5 + 32);
  }

  if (v8)
  {
    self->_serverTimestampSeconds = *(v5 + 1);
    *&self->_has |= 1u;
  }

  MEMORY[0x2821F96F8]();
}

@end