@interface AWDCompanionSyncFullSyncDuration
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasIsMaster:(BOOL)master;
- (void)setHasTimestamp:(BOOL)timestamp;
- (void)writeTo:(id)to;
@end

@implementation AWDCompanionSyncFullSyncDuration

- (void)dealloc
{
  [(AWDCompanionSyncFullSyncDuration *)self setService:0];
  v3.receiver = self;
  v3.super_class = AWDCompanionSyncFullSyncDuration;
  [(AWDCompanionSyncFullSyncDuration *)&v3 dealloc];
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

- (void)setHasIsMaster:(BOOL)master
{
  if (master)
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
  v3.super_class = AWDCompanionSyncFullSyncDuration;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDCompanionSyncFullSyncDuration description](&v3, sel_description), -[AWDCompanionSyncFullSyncDuration dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  if ((*&self->_has & 2) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  service = self->_service;
  if (service)
  {
    [dictionary setObject:service forKey:@"service"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_isMaster), @"is_master"}];
    has = self->_has;
  }

  if (has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_syncDuration), @"sync_duration"}];
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

  if (self->_service)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    isMaster = self->_isMaster;
    PBDataWriterWriteBOOLField();
    has = self->_has;
  }

  if (has)
  {
    syncDuration = self->_syncDuration;

    PBDataWriterWriteUint64Field();
  }
}

- (void)copyTo:(id)to
{
  if ((*&self->_has & 2) != 0)
  {
    *(to + 2) = self->_timestamp;
    *(to + 36) |= 2u;
  }

  if (self->_service)
  {
    [to setService:?];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(to + 32) = self->_isMaster;
    *(to + 36) |= 4u;
    has = self->_has;
  }

  if (has)
  {
    *(to + 1) = self->_syncDuration;
    *(to + 36) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 16) = self->_timestamp;
    *(v5 + 36) |= 2u;
  }

  *(v6 + 24) = [(NSString *)self->_service copyWithZone:zone];
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v6 + 32) = self->_isMaster;
    *(v6 + 36) |= 4u;
    has = self->_has;
  }

  if (has)
  {
    *(v6 + 8) = self->_syncDuration;
    *(v6 + 36) |= 1u;
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
  v7 = *(equal + 36);
  if ((has & 2) != 0)
  {
    if ((*(equal + 36) & 2) == 0 || self->_timestamp != *(equal + 2))
    {
      goto LABEL_17;
    }
  }

  else if ((*(equal + 36) & 2) != 0)
  {
    goto LABEL_17;
  }

  service = self->_service;
  if (service | *(equal + 3))
  {
    v5 = [(NSString *)service isEqual:?];
    if (!v5)
    {
      return v5;
    }

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    if ((*(equal + 36) & 4) != 0)
    {
      v9 = *(equal + 32);
      if (self->_isMaster)
      {
        if ((*(equal + 32) & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      else if (*(equal + 32))
      {
        goto LABEL_17;
      }

      goto LABEL_12;
    }

LABEL_17:
    LOBYTE(v5) = 0;
    return v5;
  }

  if ((*(equal + 36) & 4) != 0)
  {
    goto LABEL_17;
  }

LABEL_12:
  LOBYTE(v5) = (*(equal + 36) & 1) == 0;
  if (has)
  {
    if ((*(equal + 36) & 1) == 0 || self->_syncDuration != *(equal + 1))
    {
      goto LABEL_17;
    }

    LOBYTE(v5) = 1;
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

  v4 = [(NSString *)self->_service hash];
  if ((*&self->_has & 4) != 0)
  {
    v5 = 2654435761 * self->_isMaster;
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
  v6 = 2654435761u * self->_syncDuration;
  return v4 ^ v3 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)from
{
  if ((*(from + 36) & 2) != 0)
  {
    self->_timestamp = *(from + 2);
    *&self->_has |= 2u;
  }

  if (*(from + 3))
  {
    [(AWDCompanionSyncFullSyncDuration *)self setService:?];
  }

  v5 = *(from + 36);
  if ((v5 & 4) != 0)
  {
    self->_isMaster = *(from + 32);
    *&self->_has |= 4u;
    v5 = *(from + 36);
  }

  if (v5)
  {
    self->_syncDuration = *(from + 1);
    *&self->_has |= 1u;
  }
}

@end