@interface ChannelPublishPayload
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsPushPriority:(id)a3;
- (int)pushPriority;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasPendingPublishHint:(BOOL)a3;
- (void)setHasPublishPayloadExpiryTtlMillis:(BOOL)a3;
- (void)setHasPushPriority:(BOOL)a3;
- (void)setHasRetryCount:(BOOL)a3;
- (void)setHasScheduledPublishHint:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ChannelPublishPayload

- (void)setHasPublishPayloadExpiryTtlMillis:(BOOL)a3
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

- (void)setHasPushPriority:(BOOL)a3
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

- (int)StringAsPushPriority:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"LOW"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"NORMAL"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"HIGH"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasPendingPublishHint:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasScheduledPublishHint:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasRetryCount:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ChannelPublishPayload;
  v4 = [(ChannelPublishPayload *)&v8 description];
  v5 = [(ChannelPublishPayload *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_publishInitiateTimestampMillis];
    [v3 setObject:v4 forKey:@"publish_initiate_timestamp_millis"];
  }

  channelIdentity = self->_channelIdentity;
  if (channelIdentity)
  {
    v6 = [(ChannelIdentity *)channelIdentity dictionaryRepresentation];
    [v3 setObject:v6 forKey:@"channel_identity"];
  }

  publishPayload = self->_publishPayload;
  if (publishPayload)
  {
    [v3 setObject:publishPayload forKey:@"publish_payload"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_publishPayloadExpiryTtlMillis];
    [v3 setObject:v12 forKey:@"publish_payload_expiry_ttl_millis"];

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

  [v3 setObject:v14 forKey:@"push_priority"];

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
  [v3 setObject:v15 forKey:@"pending_publish_hint"];

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
  [v3 setObject:v16 forKey:@"scheduled_publish_hint"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_12:
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_retryCount];
    [v3 setObject:v9 forKey:@"retry_count"];
  }

LABEL_13:
  adopter = self->_adopter;
  if (adopter)
  {
    [v3 setObject:adopter forKey:@"adopter"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v12 = v4;
  if (*&self->_has)
  {
    publishInitiateTimestampMillis = self->_publishInitiateTimestampMillis;
    PBDataWriterWriteUint64Field();
    v4 = v12;
  }

  if (self->_channelIdentity)
  {
    PBDataWriterWriteSubmessage();
    v4 = v12;
  }

  if (self->_publishPayload)
  {
    PBDataWriterWriteDataField();
    v4 = v12;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    publishPayloadExpiryTtlMillis = self->_publishPayloadExpiryTtlMillis;
    PBDataWriterWriteUint64Field();
    v4 = v12;
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
  v4 = v12;
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
  v4 = v12;
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
  v4 = v12;
  if ((*&self->_has & 8) != 0)
  {
LABEL_12:
    retryCount = self->_retryCount;
    PBDataWriterWriteUint32Field();
    v4 = v12;
  }

LABEL_13:
  if (self->_adopter)
  {
    PBDataWriterWriteStringField();
    v4 = v12;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[1] = self->_publishInitiateTimestampMillis;
    *(v4 + 60) |= 1u;
  }

  v6 = v4;
  if (self->_channelIdentity)
  {
    [v4 setChannelIdentity:?];
    v4 = v6;
  }

  if (self->_publishPayload)
  {
    [v6 setPublishPayload:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[2] = self->_publishPayloadExpiryTtlMillis;
    *(v4 + 60) |= 2u;
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

  *(v4 + 12) = self->_pushPriority;
  *(v4 + 60) |= 4u;
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
  *(v4 + 56) = self->_pendingPublishHint;
  *(v4 + 60) |= 0x10u;
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
  *(v4 + 57) = self->_scheduledPublishHint;
  *(v4 + 60) |= 0x20u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_12:
    *(v4 + 13) = self->_retryCount;
    *(v4 + 60) |= 8u;
  }

LABEL_13:
  if (self->_adopter)
  {
    [v6 setAdopter:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_publishInitiateTimestampMillis;
    *(v5 + 60) |= 1u;
  }

  v7 = [(ChannelIdentity *)self->_channelIdentity copyWithZone:a3];
  v8 = *(v6 + 32);
  *(v6 + 32) = v7;

  v9 = [(NSData *)self->_publishPayload copyWithZone:a3];
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
  v12 = [(NSString *)self->_adopter copyWithZone:a3];
  v13 = *(v6 + 24);
  *(v6 + 24) = v12;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_43;
  }

  v5 = *(v4 + 60);
  if (*&self->_has)
  {
    if ((*(v4 + 60) & 1) == 0 || self->_publishInitiateTimestampMillis != *(v4 + 1))
    {
      goto LABEL_43;
    }
  }

  else if (*(v4 + 60))
  {
    goto LABEL_43;
  }

  channelIdentity = self->_channelIdentity;
  if (channelIdentity | *(v4 + 4) && ![(ChannelIdentity *)channelIdentity isEqual:?])
  {
    goto LABEL_43;
  }

  publishPayload = self->_publishPayload;
  if (publishPayload | *(v4 + 5))
  {
    if (![(NSData *)publishPayload isEqual:?])
    {
      goto LABEL_43;
    }
  }

  v8 = *(v4 + 60);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 60) & 2) == 0 || self->_publishPayloadExpiryTtlMillis != *(v4 + 2))
    {
      goto LABEL_43;
    }
  }

  else if ((*(v4 + 60) & 2) != 0)
  {
    goto LABEL_43;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 60) & 4) == 0 || self->_pushPriority != *(v4 + 12))
    {
      goto LABEL_43;
    }
  }

  else if ((*(v4 + 60) & 4) != 0)
  {
    goto LABEL_43;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 60) & 0x10) == 0)
    {
      goto LABEL_43;
    }

    v9 = *(v4 + 56);
    if (self->_pendingPublishHint)
    {
      if ((*(v4 + 56) & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    else if (*(v4 + 56))
    {
      goto LABEL_43;
    }
  }

  else if ((*(v4 + 60) & 0x10) != 0)
  {
    goto LABEL_43;
  }

  if ((*&self->_has & 0x20) == 0)
  {
    if ((*(v4 + 60) & 0x20) == 0)
    {
      goto LABEL_25;
    }

LABEL_43:
    v12 = 0;
    goto LABEL_44;
  }

  if ((*(v4 + 60) & 0x20) == 0)
  {
    goto LABEL_43;
  }

  v10 = *(v4 + 57);
  if (self->_scheduledPublishHint)
  {
    if ((*(v4 + 57) & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  else if (*(v4 + 57))
  {
    goto LABEL_43;
  }

LABEL_25:
  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 60) & 8) == 0 || self->_retryCount != *(v4 + 13))
    {
      goto LABEL_43;
    }
  }

  else if ((*(v4 + 60) & 8) != 0)
  {
    goto LABEL_43;
  }

  adopter = self->_adopter;
  if (adopter | *(v4 + 3))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 60))
  {
    self->_publishInitiateTimestampMillis = v4[1];
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