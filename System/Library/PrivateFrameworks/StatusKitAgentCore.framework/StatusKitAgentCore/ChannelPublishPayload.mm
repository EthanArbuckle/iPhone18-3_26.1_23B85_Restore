@interface ChannelPublishPayload
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsPushPriority:(id)priority;
- (int)pushPriority;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasPendingPublishHint:(BOOL)hint;
- (void)setHasPublishPayloadExpiryTtlMillis:(BOOL)millis;
- (void)setHasPushPriority:(BOOL)priority;
- (void)setHasRetryCount:(BOOL)count;
- (void)setHasScheduledPublishHint:(BOOL)hint;
- (void)writeTo:(id)to;
@end

@implementation ChannelPublishPayload

- (void)setHasPublishPayloadExpiryTtlMillis:(BOOL)millis
{
  if (millis)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)pushPriority
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_pushPriority;
  }

  else
  {
    return 0;
  }
}

- (void)setHasPushPriority:(BOOL)priority
{
  if (priority)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)StringAsPushPriority:(id)priority
{
  priorityCopy = priority;
  if ([priorityCopy isEqualToString:@"LOW"])
  {
    v4 = 0;
  }

  else if ([priorityCopy isEqualToString:@"NORMAL"])
  {
    v4 = 1;
  }

  else if ([priorityCopy isEqualToString:@"HIGH"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasPendingPublishHint:(BOOL)hint
{
  if (hint)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasScheduledPublishHint:(BOOL)hint
{
  if (hint)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasRetryCount:(BOOL)count
{
  if (count)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ChannelPublishPayload;
  v4 = [(ChannelPublishPayload *)&v8 description];
  dictionaryRepresentation = [(ChannelPublishPayload *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_publishInitiateTimestampMillis];
    [dictionary setObject:v4 forKey:@"publish_initiate_timestamp_millis"];
  }

  channelIdentity = self->_channelIdentity;
  if (channelIdentity)
  {
    dictionaryRepresentation = [(ChannelIdentity *)channelIdentity dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"channel_identity"];
  }

  publishPayload = self->_publishPayload;
  if (publishPayload)
  {
    [dictionary setObject:publishPayload forKey:@"publish_payload"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_publishPayloadExpiryTtlMillis];
    [dictionary setObject:v12 forKey:@"publish_payload_expiry_ttl_millis"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_9:
      if ((has & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_23;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_9;
  }

  pushPriority = self->_pushPriority;
  if (pushPriority >= 3)
  {
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_pushPriority];
  }

  else
  {
    v14 = off_27843E060[pushPriority];
  }

  [dictionary setObject:v14 forKey:@"push_priority"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_10:
    if ((has & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  v15 = [MEMORY[0x277CCABB0] numberWithBool:self->_pendingPublishHint];
  [dictionary setObject:v15 forKey:@"pending_publish_hint"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_11:
    if ((has & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_24:
  v16 = [MEMORY[0x277CCABB0] numberWithBool:self->_scheduledPublishHint];
  [dictionary setObject:v16 forKey:@"scheduled_publish_hint"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_12:
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_retryCount];
    [dictionary setObject:v9 forKey:@"retry_count"];
  }

LABEL_13:
  adopter = self->_adopter;
  if (adopter)
  {
    [dictionary setObject:adopter forKey:@"adopter"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v12 = toCopy;
  if (*&self->_has)
  {
    publishInitiateTimestampMillis = self->_publishInitiateTimestampMillis;
    PBDataWriterWriteUint64Field();
    toCopy = v12;
  }

  if (self->_channelIdentity)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v12;
  }

  if (self->_publishPayload)
  {
    PBDataWriterWriteDataField();
    toCopy = v12;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    publishPayloadExpiryTtlMillis = self->_publishPayloadExpiryTtlMillis;
    PBDataWriterWriteUint64Field();
    toCopy = v12;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_9:
      if ((has & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_20;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_9;
  }

  pushPriority = self->_pushPriority;
  PBDataWriterWriteInt32Field();
  toCopy = v12;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_10:
    if ((has & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  pendingPublishHint = self->_pendingPublishHint;
  PBDataWriterWriteBOOLField();
  toCopy = v12;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_11:
    if ((has & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_21:
  scheduledPublishHint = self->_scheduledPublishHint;
  PBDataWriterWriteBOOLField();
  toCopy = v12;
  if ((*&self->_has & 8) != 0)
  {
LABEL_12:
    retryCount = self->_retryCount;
    PBDataWriterWriteUint32Field();
    toCopy = v12;
  }

LABEL_13:
  if (self->_adopter)
  {
    PBDataWriterWriteStringField();
    toCopy = v12;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[1] = self->_publishInitiateTimestampMillis;
    *(toCopy + 60) |= 1u;
  }

  v6 = toCopy;
  if (self->_channelIdentity)
  {
    [toCopy setChannelIdentity:?];
    toCopy = v6;
  }

  if (self->_publishPayload)
  {
    [v6 setPublishPayload:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[2] = self->_publishPayloadExpiryTtlMillis;
    *(toCopy + 60) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_9:
      if ((has & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_20;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_9;
  }

  *(toCopy + 12) = self->_pushPriority;
  *(toCopy + 60) |= 4u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_10:
    if ((has & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(toCopy + 56) = self->_pendingPublishHint;
  *(toCopy + 60) |= 0x10u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_11:
    if ((has & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_21:
  *(toCopy + 57) = self->_scheduledPublishHint;
  *(toCopy + 60) |= 0x20u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_12:
    *(toCopy + 13) = self->_retryCount;
    *(toCopy + 60) |= 8u;
  }

LABEL_13:
  if (self->_adopter)
  {
    [v6 setAdopter:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_publishInitiateTimestampMillis;
    *(v5 + 60) |= 1u;
  }

  v7 = [(ChannelIdentity *)self->_channelIdentity copyWithZone:zone];
  v8 = *(v6 + 32);
  *(v6 + 32) = v7;

  v9 = [(NSData *)self->_publishPayload copyWithZone:zone];
  v10 = *(v6 + 40);
  *(v6 + 40) = v9;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v6 + 16) = self->_publishPayloadExpiryTtlMillis;
    *(v6 + 60) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_5:
      if ((has & 0x10) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_5;
  }

  *(v6 + 48) = self->_pushPriority;
  *(v6 + 60) |= 4u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_13:
    *(v6 + 57) = self->_scheduledPublishHint;
    *(v6 + 60) |= 0x20u;
    if ((*&self->_has & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_12:
  *(v6 + 56) = self->_pendingPublishHint;
  *(v6 + 60) |= 0x10u;
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  if ((has & 8) != 0)
  {
LABEL_8:
    *(v6 + 52) = self->_retryCount;
    *(v6 + 60) |= 8u;
  }

LABEL_9:
  v12 = [(NSString *)self->_adopter copyWithZone:zone];
  v13 = *(v6 + 24);
  *(v6 + 24) = v12;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_43;
  }

  v5 = *(equalCopy + 60);
  if (*&self->_has)
  {
    if ((*(equalCopy + 60) & 1) == 0 || self->_publishInitiateTimestampMillis != *(equalCopy + 1))
    {
      goto LABEL_43;
    }
  }

  else if (*(equalCopy + 60))
  {
    goto LABEL_43;
  }

  channelIdentity = self->_channelIdentity;
  if (channelIdentity | *(equalCopy + 4) && ![(ChannelIdentity *)channelIdentity isEqual:?])
  {
    goto LABEL_43;
  }

  publishPayload = self->_publishPayload;
  if (publishPayload | *(equalCopy + 5))
  {
    if (![(NSData *)publishPayload isEqual:?])
    {
      goto LABEL_43;
    }
  }

  v8 = *(equalCopy + 60);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 60) & 2) == 0 || self->_publishPayloadExpiryTtlMillis != *(equalCopy + 2))
    {
      goto LABEL_43;
    }
  }

  else if ((*(equalCopy + 60) & 2) != 0)
  {
    goto LABEL_43;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 60) & 4) == 0 || self->_pushPriority != *(equalCopy + 12))
    {
      goto LABEL_43;
    }
  }

  else if ((*(equalCopy + 60) & 4) != 0)
  {
    goto LABEL_43;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 60) & 0x10) == 0)
    {
      goto LABEL_43;
    }

    v9 = *(equalCopy + 56);
    if (self->_pendingPublishHint)
    {
      if ((*(equalCopy + 56) & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    else if (*(equalCopy + 56))
    {
      goto LABEL_43;
    }
  }

  else if ((*(equalCopy + 60) & 0x10) != 0)
  {
    goto LABEL_43;
  }

  if ((*&self->_has & 0x20) == 0)
  {
    if ((*(equalCopy + 60) & 0x20) == 0)
    {
      goto LABEL_25;
    }

LABEL_43:
    v12 = 0;
    goto LABEL_44;
  }

  if ((*(equalCopy + 60) & 0x20) == 0)
  {
    goto LABEL_43;
  }

  v10 = *(equalCopy + 57);
  if (self->_scheduledPublishHint)
  {
    if ((*(equalCopy + 57) & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  else if (*(equalCopy + 57))
  {
    goto LABEL_43;
  }

LABEL_25:
  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 60) & 8) == 0 || self->_retryCount != *(equalCopy + 13))
    {
      goto LABEL_43;
    }
  }

  else if ((*(equalCopy + 60) & 8) != 0)
  {
    goto LABEL_43;
  }

  adopter = self->_adopter;
  if (adopter | *(equalCopy + 3))
  {
    v12 = [(NSString *)adopter isEqual:?];
  }

  else
  {
    v12 = 1;
  }

LABEL_44:

  return v12;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_publishInitiateTimestampMillis;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(ChannelIdentity *)self->_channelIdentity hash];
  v5 = [(NSData *)self->_publishPayload hash];
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761u * self->_publishPayloadExpiryTtlMillis;
    if ((*&self->_has & 4) != 0)
    {
LABEL_6:
      v7 = 2654435761 * self->_pushPriority;
      if ((*&self->_has & 0x10) != 0)
      {
        goto LABEL_7;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v6 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_6;
    }
  }

  v7 = 0;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_pendingPublishHint;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_8;
    }

LABEL_13:
    v9 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_9;
    }

LABEL_14:
    v10 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ [(NSString *)self->_adopter hash];
  }

LABEL_12:
  v8 = 0;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v9 = 2654435761 * self->_scheduledPublishHint;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_14;
  }

LABEL_9:
  v10 = 2654435761 * self->_retryCount;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ [(NSString *)self->_adopter hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 60))
  {
    self->_publishInitiateTimestampMillis = fromCopy[1];
    *&self->_has |= 1u;
  }

  channelIdentity = self->_channelIdentity;
  v7 = v5[4];
  v9 = v5;
  if (channelIdentity)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(ChannelIdentity *)channelIdentity mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(ChannelPublishPayload *)self setChannelIdentity:?];
  }

  v5 = v9;
LABEL_9:
  if (v5[5])
  {
    [(ChannelPublishPayload *)self setPublishPayload:?];
    v5 = v9;
  }

  v8 = *(v5 + 60);
  if ((v8 & 2) != 0)
  {
    self->_publishPayloadExpiryTtlMillis = v5[2];
    *&self->_has |= 2u;
    v8 = *(v5 + 60);
    if ((v8 & 4) == 0)
    {
LABEL_13:
      if ((v8 & 0x10) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_24;
    }
  }

  else if ((*(v5 + 60) & 4) == 0)
  {
    goto LABEL_13;
  }

  self->_pushPriority = *(v5 + 12);
  *&self->_has |= 4u;
  v8 = *(v5 + 60);
  if ((v8 & 0x10) == 0)
  {
LABEL_14:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_pendingPublishHint = *(v5 + 56);
  *&self->_has |= 0x10u;
  v8 = *(v5 + 60);
  if ((v8 & 0x20) == 0)
  {
LABEL_15:
    if ((v8 & 8) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_25:
  self->_scheduledPublishHint = *(v5 + 57);
  *&self->_has |= 0x20u;
  if ((*(v5 + 60) & 8) != 0)
  {
LABEL_16:
    self->_retryCount = *(v5 + 13);
    *&self->_has |= 8u;
  }

LABEL_17:
  if (v5[3])
  {
    [(ChannelPublishPayload *)self setAdopter:?];
  }

  MEMORY[0x2821F96F8]();
}

@end