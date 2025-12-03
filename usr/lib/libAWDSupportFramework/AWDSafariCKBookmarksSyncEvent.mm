@interface AWDSafariCKBookmarksSyncEvent
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

@implementation AWDSafariCKBookmarksSyncEvent

- (void)dealloc
{
  [(AWDSafariCKBookmarksSyncEvent *)self setErrorDomain:0];
  [(AWDSafariCKBookmarksSyncEvent *)self setErrorCode:0];
  v3.receiver = self;
  v3.super_class = AWDSafariCKBookmarksSyncEvent;
  [(AWDSafariCKBookmarksSyncEvent *)&v3 dealloc];
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
  v3.super_class = AWDSafariCKBookmarksSyncEvent;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDSafariCKBookmarksSyncEvent description](&v3, sel_description), -[AWDSafariCKBookmarksSyncEvent dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
  }

  if (has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_result), @"result"}];
  }

  errorDomain = self->_errorDomain;
  if (errorDomain)
  {
    [dictionary setObject:errorDomain forKey:@"errorDomain"];
  }

  errorCode = self->_errorCode;
  if (errorCode)
  {
    [dictionary setObject:errorCode forKey:@"errorCode"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
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

- (void)copyTo:(id)to
{
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(to + 2) = self->_timestamp;
    *(to + 40) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(to + 1) = self->_result;
    *(to + 40) |= 1u;
  }

  if (self->_errorDomain)
  {
    [to setErrorDomain:?];
  }

  if (self->_errorCode)
  {

    [to setErrorCode:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

  *(v6 + 32) = [(NSString *)self->_errorDomain copyWithZone:zone];
  *(v6 + 24) = [(NSString *)self->_errorCode copyWithZone:zone];
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
        goto LABEL_16;
      }
    }

    else if ((*(equal + 40) & 2) != 0)
    {
LABEL_16:
      LOBYTE(v5) = 0;
      return v5;
    }

    if (*&self->_has)
    {
      if ((*(equal + 40) & 1) == 0 || self->_result != *(equal + 1))
      {
        goto LABEL_16;
      }
    }

    else if (*(equal + 40))
    {
      goto LABEL_16;
    }

    errorDomain = self->_errorDomain;
    if (!(errorDomain | *(equal + 4)) || (v5 = [(NSString *)errorDomain isEqual:?]) != 0)
    {
      errorCode = self->_errorCode;
      if (errorCode | *(equal + 3))
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

- (void)mergeFrom:(id)from
{
  v5 = *(from + 40);
  if ((v5 & 2) != 0)
  {
    self->_timestamp = *(from + 2);
    *&self->_has |= 2u;
    v5 = *(from + 40);
  }

  if (v5)
  {
    self->_result = *(from + 1);
    *&self->_has |= 1u;
  }

  if (*(from + 4))
  {
    [(AWDSafariCKBookmarksSyncEvent *)self setErrorDomain:?];
  }

  if (*(from + 3))
  {

    [(AWDSafariCKBookmarksSyncEvent *)self setErrorCode:?];
  }
}

@end