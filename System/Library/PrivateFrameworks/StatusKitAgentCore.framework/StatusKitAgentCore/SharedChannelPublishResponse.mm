@interface SharedChannelPublishResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsStatus:(id)a3;
- (int)status;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasStatus:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SharedChannelPublishResponse

- (int)status
{
  if ((*&self->_has & 2) != 0)
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
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SharedChannelPublishResponse;
  v4 = [(SharedChannelPublishResponse *)&v8 description];
  v5 = [(SharedChannelPublishResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    status = self->_status;
    if (status >= 9)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_status];
    }

    else
    {
      v6 = off_27843E1A8[status];
    }

    [v3 setObject:v6 forKey:@"status"];

    has = self->_has;
  }

  if (has)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_retryIntervalSeconds];
    [v3 setObject:v7 forKey:@"retry_interval_seconds"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v8 = v4;
  if ((has & 2) != 0)
  {
    status = self->_status;
    PBDataWriterWriteInt32Field();
    v4 = v8;
    has = self->_has;
  }

  if (has)
  {
    retryIntervalSeconds = self->_retryIntervalSeconds;
    PBDataWriterWriteUint32Field();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[3] = self->_status;
    *(v4 + 16) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    v4[2] = self->_retryIntervalSeconds;
    *(v4 + 16) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(result + 3) = self->_status;
    *(result + 16) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(result + 2) = self->_retryIntervalSeconds;
    *(result + 16) |= 1u;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 16) & 2) == 0 || self->_status != *(v4 + 3))
    {
      goto LABEL_11;
    }
  }

  else if ((*(v4 + 16) & 2) != 0)
  {
LABEL_11:
    v5 = 0;
    goto LABEL_12;
  }

  v5 = (*(v4 + 16) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 16) & 1) == 0 || self->_retryIntervalSeconds != *(v4 + 2))
    {
      goto LABEL_11;
    }

    v5 = 1;
  }

LABEL_12:

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v2 = 2654435761 * self->_status;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    return v3 ^ v2;
  }

  v2 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = 2654435761 * self->_retryIntervalSeconds;
  return v3 ^ v2;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 16);
  if ((v5 & 2) != 0)
  {
    self->_status = *(v4 + 3);
    *&self->_has |= 2u;
    v5 = *(v4 + 16);
  }

  if (v5)
  {
    self->_retryIntervalSeconds = *(v4 + 2);
    *&self->_has |= 1u;
  }
}

@end