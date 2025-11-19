@interface AWDSafariCKBookmarksSyncEvent
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

@implementation AWDSafariCKBookmarksSyncEvent

- (void)dealloc
{
  [(AWDSafariCKBookmarksSyncEvent *)self setErrorDomain:0];
  [(AWDSafariCKBookmarksSyncEvent *)self setErrorCode:0];
  v3.receiver = self;
  v3.super_class = AWDSafariCKBookmarksSyncEvent;
  [(AWDSafariCKBookmarksSyncEvent *)&v3 dealloc];
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
  v3.super_class = AWDSafariCKBookmarksSyncEvent;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDSafariCKBookmarksSyncEvent description](&v3, sel_description), -[AWDSafariCKBookmarksSyncEvent dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
  }

  if (has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_result), @"result"}];
  }

  errorDomain = self->_errorDomain;
  if (errorDomain)
  {
    [v3 setObject:errorDomain forKey:@"errorDomain"];
  }

  errorCode = self->_errorCode;
  if (errorCode)
  {
    [v3 setObject:errorCode forKey:@"errorCode"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  has = self->_has;
  if ((has & 2) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
  }

  if (has)
  {
    result = self->_result;
    PBDataWriterWriteInt64Field();
  }

  if (self->_errorDomain)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_errorCode)
  {

    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(a3 + 2) = self->_timestamp;
    *(a3 + 40) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(a3 + 1) = self->_result;
    *(a3 + 40) |= 1u;
  }

  if (self->_errorDomain)
  {
    [a3 setErrorDomain:?];
  }

  if (self->_errorCode)
  {

    [a3 setErrorCode:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_timestamp;
    *(v5 + 40) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 8) = self->_result;
    *(v5 + 40) |= 1u;
  }

  *(v6 + 32) = [(NSString *)self->_errorDomain copyWithZone:a3];
  *(v6 + 24) = [(NSString *)self->_errorCode copyWithZone:a3];
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
        goto LABEL_16;
      }
    }

    else if ((*(a3 + 40) & 2) != 0)
    {
LABEL_16:
      LOBYTE(v5) = 0;
      return v5;
    }

    if (*&self->_has)
    {
      if ((*(a3 + 40) & 1) == 0 || self->_result != *(a3 + 1))
      {
        goto LABEL_16;
      }
    }

    else if (*(a3 + 40))
    {
      goto LABEL_16;
    }

    errorDomain = self->_errorDomain;
    if (!(errorDomain | *(a3 + 4)) || (v5 = [(NSString *)errorDomain isEqual:?]) != 0)
    {
      errorCode = self->_errorCode;
      if (errorCode | *(a3 + 3))
      {

        LOBYTE(v5) = [(NSString *)errorCode isEqual:?];
      }

      else
      {
        LOBYTE(v5) = 1;
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
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v4 = 0;
    goto LABEL_6;
  }

  v3 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = 2654435761 * self->_result;
LABEL_6:
  v5 = v4 ^ v3 ^ [(NSString *)self->_errorDomain hash];
  return v5 ^ [(NSString *)self->_errorCode hash];
}

- (void)mergeFrom:(id)a3
{
  v5 = *(a3 + 40);
  if ((v5 & 2) != 0)
  {
    self->_timestamp = *(a3 + 2);
    *&self->_has |= 2u;
    v5 = *(a3 + 40);
  }

  if (v5)
  {
    self->_result = *(a3 + 1);
    *&self->_has |= 1u;
  }

  if (*(a3 + 4))
  {
    [(AWDSafariCKBookmarksSyncEvent *)self setErrorDomain:?];
  }

  if (*(a3 + 3))
  {

    [(AWDSafariCKBookmarksSyncEvent *)self setErrorCode:?];
  }
}

@end