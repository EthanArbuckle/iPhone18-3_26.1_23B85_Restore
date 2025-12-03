@interface AWDCompanionSyncErrorNotification
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasTimestamp:(BOOL)timestamp;
- (void)writeTo:(id)to;
@end

@implementation AWDCompanionSyncErrorNotification

- (void)dealloc
{
  [(AWDCompanionSyncErrorNotification *)self setService:0];
  [(AWDCompanionSyncErrorNotification *)self setErrorDomain:0];
  v3.receiver = self;
  v3.super_class = AWDCompanionSyncErrorNotification;
  [(AWDCompanionSyncErrorNotification *)&v3 dealloc];
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

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDCompanionSyncErrorNotification;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDCompanionSyncErrorNotification description](&v3, sel_description), -[AWDCompanionSyncErrorNotification dictionaryRepresentation](self, "dictionaryRepresentation")];
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

  errorDomain = self->_errorDomain;
  if (errorDomain)
  {
    [dictionary setObject:errorDomain forKey:@"errorDomain"];
  }

  if (*&self->_has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_errorCode), @"errorCode"}];
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

  if (self->_errorDomain)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    errorCode = self->_errorCode;

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

  if (self->_service)
  {
    [to setService:?];
  }

  if (self->_errorDomain)
  {
    [to setErrorDomain:?];
  }

  if (*&self->_has)
  {
    *(to + 1) = self->_errorCode;
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

  *(v6 + 32) = [(NSString *)self->_service copyWithZone:zone];
  *(v6 + 24) = [(NSString *)self->_errorDomain copyWithZone:zone];
  if (*&self->_has)
  {
    *(v6 + 8) = self->_errorCode;
    *(v6 + 40) |= 1u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(equal + 40);
    if ((*&self->_has & 2) != 0)
    {
      if ((*(equal + 40) & 2) == 0 || self->_timestamp != *(equal + 2))
      {
        goto LABEL_15;
      }
    }

    else if ((*(equal + 40) & 2) != 0)
    {
LABEL_15:
      LOBYTE(v5) = 0;
      return v5;
    }

    service = self->_service;
    if (!(service | *(equal + 4)) || (v5 = [(NSString *)service isEqual:?]) != 0)
    {
      errorDomain = self->_errorDomain;
      if (!(errorDomain | *(equal + 3)) || (v5 = [(NSString *)errorDomain isEqual:?]) != 0)
      {
        LOBYTE(v5) = (*(equal + 40) & 1) == 0;
        if (*&self->_has)
        {
          if ((*(equal + 40) & 1) == 0 || self->_errorCode != *(equal + 1))
          {
            goto LABEL_15;
          }

          LOBYTE(v5) = 1;
        }
      }
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

  v4 = [(NSString *)self->_service hash];
  v5 = [(NSString *)self->_errorDomain hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_errorCode;
  }

  else
  {
    v6 = 0;
  }

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
    [(AWDCompanionSyncErrorNotification *)self setService:?];
  }

  if (*(from + 3))
  {
    [(AWDCompanionSyncErrorNotification *)self setErrorDomain:?];
  }

  if (*(from + 40))
  {
    self->_errorCode = *(from + 1);
    *&self->_has |= 1u;
  }
}

@end