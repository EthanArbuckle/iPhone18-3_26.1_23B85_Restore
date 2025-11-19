@interface AWDCompanionSyncErrorNotification
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)writeTo:(id)a3;
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

- (void)setHasTimestamp:(BOOL)a3
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
  v3.receiver = self;
  v3.super_class = AWDCompanionSyncErrorNotification;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDCompanionSyncErrorNotification description](&v3, sel_description), -[AWDCompanionSyncErrorNotification dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  if ((*&self->_has & 2) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  service = self->_service;
  if (service)
  {
    [v3 setObject:service forKey:@"service"];
  }

  errorDomain = self->_errorDomain;
  if (errorDomain)
  {
    [v3 setObject:errorDomain forKey:@"errorDomain"];
  }

  if (*&self->_has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_errorCode), @"errorCode"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
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

- (void)copyTo:(id)a3
{
  if ((*&self->_has & 2) != 0)
  {
    *(a3 + 2) = self->_timestamp;
    *(a3 + 40) |= 2u;
  }

  if (self->_service)
  {
    [a3 setService:?];
  }

  if (self->_errorDomain)
  {
    [a3 setErrorDomain:?];
  }

  if (*&self->_has)
  {
    *(a3 + 1) = self->_errorCode;
    *(a3 + 40) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 16) = self->_timestamp;
    *(v5 + 40) |= 2u;
  }

  *(v6 + 32) = [(NSString *)self->_service copyWithZone:a3];
  *(v6 + 24) = [(NSString *)self->_errorDomain copyWithZone:a3];
  if (*&self->_has)
  {
    *(v6 + 8) = self->_errorCode;
    *(v6 + 40) |= 1u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(a3 + 40);
    if ((*&self->_has & 2) != 0)
    {
      if ((*(a3 + 40) & 2) == 0 || self->_timestamp != *(a3 + 2))
      {
        goto LABEL_15;
      }
    }

    else if ((*(a3 + 40) & 2) != 0)
    {
LABEL_15:
      LOBYTE(v5) = 0;
      return v5;
    }

    service = self->_service;
    if (!(service | *(a3 + 4)) || (v5 = [(NSString *)service isEqual:?]) != 0)
    {
      errorDomain = self->_errorDomain;
      if (!(errorDomain | *(a3 + 3)) || (v5 = [(NSString *)errorDomain isEqual:?]) != 0)
      {
        LOBYTE(v5) = (*(a3 + 40) & 1) == 0;
        if (*&self->_has)
        {
          if ((*(a3 + 40) & 1) == 0 || self->_errorCode != *(a3 + 1))
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

- (void)mergeFrom:(id)a3
{
  if ((*(a3 + 40) & 2) != 0)
  {
    self->_timestamp = *(a3 + 2);
    *&self->_has |= 2u;
  }

  if (*(a3 + 4))
  {
    [(AWDCompanionSyncErrorNotification *)self setService:?];
  }

  if (*(a3 + 3))
  {
    [(AWDCompanionSyncErrorNotification *)self setErrorDomain:?];
  }

  if (*(a3 + 40))
  {
    self->_errorCode = *(a3 + 1);
    *&self->_has |= 1u;
  }
}

@end