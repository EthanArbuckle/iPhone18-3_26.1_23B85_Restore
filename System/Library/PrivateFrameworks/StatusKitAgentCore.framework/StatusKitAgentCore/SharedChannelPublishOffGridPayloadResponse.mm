@interface SharedChannelPublishOffGridPayloadResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsStatus:(id)status;
- (int)status;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasStatus:(BOOL)status;
- (void)writeTo:(id)to;
@end

@implementation SharedChannelPublishOffGridPayloadResponse

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

- (void)setHasStatus:(BOOL)status
{
  if (status)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SharedChannelPublishOffGridPayloadResponse;
  v4 = [(SharedChannelPublishOffGridPayloadResponse *)&v8 description];
  dictionaryRepresentation = [(SharedChannelPublishOffGridPayloadResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
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
      v6 = off_27843E160[status];
    }

    [dictionary setObject:v6 forKey:@"status"];

    has = self->_has;
  }

  if (has)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_retryIntervalSeconds];
    [dictionary setObject:v7 forKey:@"retry_interval_seconds"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v8 = toCopy;
  if ((has & 2) != 0)
  {
    status = self->_status;
    PBDataWriterWriteInt32Field();
    toCopy = v8;
    has = self->_has;
  }

  if (has)
  {
    retryIntervalSeconds = self->_retryIntervalSeconds;
    PBDataWriterWriteUint32Field();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[3] = self->_status;
    *(toCopy + 16) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    toCopy[2] = self->_retryIntervalSeconds;
    *(toCopy + 16) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 16) & 2) == 0 || self->_status != *(equalCopy + 3))
    {
      goto LABEL_11;
    }
  }

  else if ((*(equalCopy + 16) & 2) != 0)
  {
LABEL_11:
    v5 = 0;
    goto LABEL_12;
  }

  v5 = (*(equalCopy + 16) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 16) & 1) == 0 || self->_retryIntervalSeconds != *(equalCopy + 2))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 16);
  if ((v5 & 2) != 0)
  {
    self->_status = *(fromCopy + 3);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 16);
  }

  if (v5)
  {
    self->_retryIntervalSeconds = *(fromCopy + 2);
    *&self->_has |= 1u;
  }
}

@end