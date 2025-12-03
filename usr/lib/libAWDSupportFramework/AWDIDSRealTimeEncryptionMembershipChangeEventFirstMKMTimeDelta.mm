@interface AWDIDSRealTimeEncryptionMembershipChangeEventFirstMKMTimeDelta
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasActiveParticipantBucket:(BOOL)bucket;
- (void)setHasTimestamp:(BOOL)timestamp;
- (void)writeTo:(id)to;
@end

@implementation AWDIDSRealTimeEncryptionMembershipChangeEventFirstMKMTimeDelta

- (void)dealloc
{
  [(AWDIDSRealTimeEncryptionMembershipChangeEventFirstMKMTimeDelta *)self setServiceName:0];
  v3.receiver = self;
  v3.super_class = AWDIDSRealTimeEncryptionMembershipChangeEventFirstMKMTimeDelta;
  [(AWDIDSRealTimeEncryptionMembershipChangeEventFirstMKMTimeDelta *)&v3 dealloc];
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

- (void)setHasActiveParticipantBucket:(BOOL)bucket
{
  if (bucket)
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
  v3.super_class = AWDIDSRealTimeEncryptionMembershipChangeEventFirstMKMTimeDelta;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDIDSRealTimeEncryptionMembershipChangeEventFirstMKMTimeDelta description](&v3, sel_description), -[AWDIDSRealTimeEncryptionMembershipChangeEventFirstMKMTimeDelta dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  if ((*&self->_has & 2) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  serviceName = self->_serviceName;
  if (serviceName)
  {
    [dictionary setObject:serviceName forKey:@"serviceName"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_activeParticipantBucket), @"activeParticipantBucket"}];
    has = self->_has;
  }

  if (has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_timeDelta), @"timeDelta"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  if ((*&self->_has & 2) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  if (self->_serviceName)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    activeParticipantBucket = self->_activeParticipantBucket;
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  if (has)
  {
    timeDelta = self->_timeDelta;

    PBDataWriterWriteInt64Field();
  }
}

- (void)copyTo:(id)to
{
  if ((*&self->_has & 2) != 0)
  {
    *(to + 2) = self->_timestamp;
    *(to + 40) |= 2u;
  }

  if (self->_serviceName)
  {
    [to setServiceName:?];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(to + 6) = self->_activeParticipantBucket;
    *(to + 40) |= 4u;
    has = self->_has;
  }

  if (has)
  {
    *(to + 1) = self->_timeDelta;
    *(to + 40) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 16) = self->_timestamp;
    *(v5 + 40) |= 2u;
  }

  *(v6 + 32) = [(NSString *)self->_serviceName copyWithZone:zone];
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v6 + 24) = self->_activeParticipantBucket;
    *(v6 + 40) |= 4u;
    has = self->_has;
  }

  if (has)
  {
    *(v6 + 8) = self->_timeDelta;
    *(v6 + 40) |= 1u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(equal + 40);
    if ((has & 2) != 0)
    {
      if ((*(equal + 40) & 2) == 0 || self->_timestamp != *(equal + 2))
      {
        goto LABEL_19;
      }
    }

    else if ((*(equal + 40) & 2) != 0)
    {
LABEL_19:
      LOBYTE(v5) = 0;
      return v5;
    }

    serviceName = self->_serviceName;
    if (serviceName | *(equal + 4))
    {
      v5 = [(NSString *)serviceName isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    if ((has & 4) != 0)
    {
      if ((*(equal + 40) & 4) == 0 || self->_activeParticipantBucket != *(equal + 6))
      {
        goto LABEL_19;
      }
    }

    else if ((*(equal + 40) & 4) != 0)
    {
      goto LABEL_19;
    }

    LOBYTE(v5) = (*(equal + 40) & 1) == 0;
    if (has)
    {
      if ((*(equal + 40) & 1) == 0 || self->_timeDelta != *(equal + 1))
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
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761u * self->_timestamp;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_serviceName hash];
  if ((*&self->_has & 4) != 0)
  {
    v5 = 2654435761 * self->_activeParticipantBucket;
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
  v6 = 2654435761 * self->_timeDelta;
  return v4 ^ v3 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)from
{
  if ((*(from + 40) & 2) != 0)
  {
    self->_timestamp = *(from + 2);
    *&self->_has |= 2u;
  }

  if (*(from + 4))
  {
    [(AWDIDSRealTimeEncryptionMembershipChangeEventFirstMKMTimeDelta *)self setServiceName:?];
  }

  v5 = *(from + 40);
  if ((v5 & 4) != 0)
  {
    self->_activeParticipantBucket = *(from + 6);
    *&self->_has |= 4u;
    v5 = *(from + 40);
  }

  if (v5)
  {
    self->_timeDelta = *(from + 1);
    *&self->_has |= 1u;
  }
}

@end