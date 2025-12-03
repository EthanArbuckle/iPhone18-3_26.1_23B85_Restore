@interface AWDIDSServerStorageStateMachineCompleted
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasTimeTaken:(BOOL)taken;
- (void)setHasTimestamp:(BOOL)timestamp;
- (void)setHasTotalMessages:(BOOL)messages;
- (void)setHasWasPrimary:(BOOL)primary;
- (void)writeTo:(id)to;
@end

@implementation AWDIDSServerStorageStateMachineCompleted

- (void)dealloc
{
  [(AWDIDSServerStorageStateMachineCompleted *)self setServiceIdentifier:0];
  v3.receiver = self;
  v3.super_class = AWDIDSServerStorageStateMachineCompleted;
  [(AWDIDSServerStorageStateMachineCompleted *)&v3 dealloc];
}

- (void)setHasTimestamp:(BOOL)timestamp
{
  if (timestamp)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasWasPrimary:(BOOL)primary
{
  if (primary)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasTimeTaken:(BOOL)taken
{
  if (taken)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasTotalMessages:(BOOL)messages
{
  if (messages)
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
  v3.receiver = self;
  v3.super_class = AWDIDSServerStorageStateMachineCompleted;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDIDSServerStorageStateMachineCompleted description](&v3, sel_description), -[AWDIDSServerStorageStateMachineCompleted dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
  }

  if ((has & 0x10) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_wasPrimary), @"wasPrimary"}];
  }

  serviceIdentifier = self->_serviceIdentifier;
  if (serviceIdentifier)
  {
    [dictionary setObject:serviceIdentifier forKey:@"serviceIdentifier"];
  }

  v6 = self->_has;
  if ((v6 & 2) == 0)
  {
    if ((*&self->_has & 8) == 0)
    {
      goto LABEL_9;
    }

LABEL_13:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_totalMessages), @"totalMessages"}];
    if ((*&self->_has & 1) == 0)
    {
      return dictionary;
    }

    goto LABEL_10;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timeTaken), @"timeTaken"}];
  v6 = self->_has;
  if ((v6 & 8) != 0)
  {
    goto LABEL_13;
  }

LABEL_9:
  if (v6)
  {
LABEL_10:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_linkType), @"linkType"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if ((has & 4) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
  }

  if ((has & 0x10) != 0)
  {
    wasPrimary = self->_wasPrimary;
    PBDataWriterWriteBOOLField();
  }

  if (self->_serviceIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v7 = self->_has;
  if ((v7 & 2) == 0)
  {
    if ((*&self->_has & 8) == 0)
    {
      goto LABEL_9;
    }

LABEL_12:
    totalMessages = self->_totalMessages;
    PBDataWriterWriteUint64Field();
    if ((*&self->_has & 1) == 0)
    {
      return;
    }

    goto LABEL_13;
  }

  timeTaken = self->_timeTaken;
  PBDataWriterWriteUint64Field();
  v7 = self->_has;
  if ((v7 & 8) != 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  if ((v7 & 1) == 0)
  {
    return;
  }

LABEL_13:
  linkType = self->_linkType;

  PBDataWriterWriteUint64Field();
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(to + 3) = self->_timestamp;
    *(to + 52) |= 4u;
    has = self->_has;
  }

  if ((has & 0x10) != 0)
  {
    *(to + 48) = self->_wasPrimary;
    *(to + 52) |= 0x10u;
  }

  if (self->_serviceIdentifier)
  {
    [to setServiceIdentifier:?];
  }

  v6 = self->_has;
  if ((v6 & 2) != 0)
  {
    *(to + 2) = self->_timeTaken;
    *(to + 52) |= 2u;
    v6 = self->_has;
    if ((v6 & 8) == 0)
    {
LABEL_9:
      if ((v6 & 1) == 0)
      {
        return;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

  *(to + 4) = self->_totalMessages;
  *(to + 52) |= 8u;
  if ((*&self->_has & 1) == 0)
  {
    return;
  }

LABEL_10:
  *(to + 1) = self->_linkType;
  *(to + 52) |= 1u;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v5 + 24) = self->_timestamp;
    *(v5 + 52) |= 4u;
    has = self->_has;
  }

  if ((has & 0x10) != 0)
  {
    *(v5 + 48) = self->_wasPrimary;
    *(v5 + 52) |= 0x10u;
  }

  *(v6 + 40) = [(NSString *)self->_serviceIdentifier copyWithZone:zone];
  v8 = self->_has;
  if ((v8 & 2) == 0)
  {
    if ((*&self->_has & 8) == 0)
    {
      goto LABEL_7;
    }

LABEL_11:
    *(v6 + 32) = self->_totalMessages;
    *(v6 + 52) |= 8u;
    if ((*&self->_has & 1) == 0)
    {
      return v6;
    }

    goto LABEL_8;
  }

  *(v6 + 16) = self->_timeTaken;
  *(v6 + 52) |= 2u;
  v8 = self->_has;
  if ((v8 & 8) != 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  if (v8)
  {
LABEL_8:
    *(v6 + 8) = self->_linkType;
    *(v6 + 52) |= 1u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (!v5)
  {
    return v5;
  }

  has = self->_has;
  v7 = *(equal + 52);
  if ((has & 4) != 0)
  {
    if ((*(equal + 52) & 4) == 0 || self->_timestamp != *(equal + 3))
    {
      goto LABEL_32;
    }
  }

  else if ((*(equal + 52) & 4) != 0)
  {
    goto LABEL_32;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equal + 52) & 0x10) != 0)
    {
      v9 = *(equal + 48);
      if (self->_wasPrimary)
      {
        if ((*(equal + 48) & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      else if (*(equal + 48))
      {
        goto LABEL_32;
      }

      goto LABEL_9;
    }

LABEL_32:
    LOBYTE(v5) = 0;
    return v5;
  }

  if ((*(equal + 52) & 0x10) != 0)
  {
    goto LABEL_32;
  }

LABEL_9:
  serviceIdentifier = self->_serviceIdentifier;
  if (serviceIdentifier | *(equal + 5))
  {
    v5 = [(NSString *)serviceIdentifier isEqual:?];
    if (!v5)
    {
      return v5;
    }

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    if ((*(equal + 52) & 2) == 0 || self->_timeTaken != *(equal + 2))
    {
      goto LABEL_32;
    }
  }

  else if ((*(equal + 52) & 2) != 0)
  {
    goto LABEL_32;
  }

  if ((has & 8) != 0)
  {
    if ((*(equal + 52) & 8) == 0 || self->_totalMessages != *(equal + 4))
    {
      goto LABEL_32;
    }
  }

  else if ((*(equal + 52) & 8) != 0)
  {
    goto LABEL_32;
  }

  LOBYTE(v5) = (*(equal + 52) & 1) == 0;
  if (has)
  {
    if ((*(equal + 52) & 1) == 0 || self->_linkType != *(equal + 1))
    {
      goto LABEL_32;
    }

    LOBYTE(v5) = 1;
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) != 0)
  {
    v3 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_wasPrimary;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = [(NSString *)self->_serviceIdentifier hash];
  if ((*&self->_has & 2) == 0)
  {
    v6 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_8;
    }

LABEL_11:
    v7 = 0;
    if (*&self->_has)
    {
      goto LABEL_9;
    }

LABEL_12:
    v8 = 0;
    return v4 ^ v3 ^ v6 ^ v7 ^ v8 ^ v5;
  }

  v6 = 2654435761u * self->_timeTaken;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v7 = 2654435761u * self->_totalMessages;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  v8 = 2654435761u * self->_linkType;
  return v4 ^ v3 ^ v6 ^ v7 ^ v8 ^ v5;
}

- (void)mergeFrom:(id)from
{
  v5 = *(from + 52);
  if ((v5 & 4) != 0)
  {
    self->_timestamp = *(from + 3);
    *&self->_has |= 4u;
    v5 = *(from + 52);
  }

  if ((v5 & 0x10) != 0)
  {
    self->_wasPrimary = *(from + 48);
    *&self->_has |= 0x10u;
  }

  if (*(from + 5))
  {
    [(AWDIDSServerStorageStateMachineCompleted *)self setServiceIdentifier:?];
  }

  v6 = *(from + 52);
  if ((v6 & 2) != 0)
  {
    self->_timeTaken = *(from + 2);
    *&self->_has |= 2u;
    v6 = *(from + 52);
    if ((v6 & 8) == 0)
    {
LABEL_9:
      if ((v6 & 1) == 0)
      {
        return;
      }

      goto LABEL_10;
    }
  }

  else if ((*(from + 52) & 8) == 0)
  {
    goto LABEL_9;
  }

  self->_totalMessages = *(from + 4);
  *&self->_has |= 8u;
  if ((*(from + 52) & 1) == 0)
  {
    return;
  }

LABEL_10:
  self->_linkType = *(from + 1);
  *&self->_has |= 1u;
}

@end