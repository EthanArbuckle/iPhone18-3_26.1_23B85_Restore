@interface ICAppleMusicAPITokenError
- (BOOL)isEqual:(id)equal;
- (ICAppleMusicAPITokenError)initWithNSError:(id)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)phase;
- (unint64_t)hash;
- (void)mergeFrom:(id)from;
- (void)setHasPhase:(BOOL)phase;
- (void)writeTo:(id)to;
@end

@implementation ICAppleMusicAPITokenError

- (ICAppleMusicAPITokenError)initWithNSError:(id)error
{
  errorCopy = error;
  v5 = [(ICAppleMusicAPITokenError *)self init];
  if (v5)
  {
    domain = [errorCopy domain];
    [(ICAppleMusicAPITokenError *)v5 setDomain:domain];

    -[ICAppleMusicAPITokenError setCode:](v5, "setCode:", [errorCopy code]);
    localizedDescription = [errorCopy localizedDescription];
    [(ICAppleMusicAPITokenError *)v5 setLocalizedDescription:localizedDescription];
  }

  return v5;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(ICAppleMusicAPITokenError *)self setDomain:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 36))
  {
    self->_code = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 3))
  {
    [(ICAppleMusicAPITokenError *)self setLocalizedDescription:?];
    fromCopy = v5;
  }

  if ((*(fromCopy + 36) & 2) != 0)
  {
    self->_phase = *(fromCopy + 8);
    *&self->_has |= 2u;
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_domain hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_code;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(NSString *)self->_localizedDescription hash];
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761 * self->_phase;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  domain = self->_domain;
  if (domain | *(equalCopy + 2))
  {
    if (![(NSString *)domain isEqual:?])
    {
      goto LABEL_16;
    }
  }

  has = self->_has;
  v7 = *(equalCopy + 36);
  if (has)
  {
    if ((*(equalCopy + 36) & 1) == 0 || self->_code != *(equalCopy + 1))
    {
      goto LABEL_16;
    }
  }

  else if (*(equalCopy + 36))
  {
    goto LABEL_16;
  }

  localizedDescription = self->_localizedDescription;
  if (localizedDescription | *(equalCopy + 3))
  {
    if (![(NSString *)localizedDescription isEqual:?])
    {
LABEL_16:
      v9 = 0;
      goto LABEL_17;
    }

    has = self->_has;
    v7 = *(equalCopy + 36);
  }

  v9 = (v7 & 2) == 0;
  if ((has & 2) != 0)
  {
    if ((v7 & 2) == 0 || self->_phase != *(equalCopy + 8))
    {
      goto LABEL_16;
    }

    v9 = 1;
  }

LABEL_17:

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_domain copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  if (*&self->_has)
  {
    v5[1] = self->_code;
    *(v5 + 36) |= 1u;
  }

  v8 = [(NSString *)self->_localizedDescription copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 8) = self->_phase;
    *(v5 + 36) |= 2u;
  }

  return v5;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if (self->_domain)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if (*&self->_has)
  {
    code = self->_code;
    PBDataWriterWriteInt64Field();
    toCopy = v7;
  }

  if (self->_localizedDescription)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if ((*&self->_has & 2) != 0)
  {
    phase = self->_phase;
    PBDataWriterWriteInt32Field();
    toCopy = v7;
  }
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  domain = self->_domain;
  if (domain)
  {
    [v3 setObject:domain forKey:@"domain"];
  }

  if (*&self->_has)
  {
    v6 = [NSNumber numberWithLongLong:self->_code];
    [v4 setObject:v6 forKey:@"code"];
  }

  localizedDescription = self->_localizedDescription;
  if (localizedDescription)
  {
    [v4 setObject:localizedDescription forKey:@"localizedDescription"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v8 = [NSNumber numberWithInt:self->_phase];
    [v4 setObject:v8 forKey:@"phase"];
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = ICAppleMusicAPITokenError;
  v3 = [(ICAppleMusicAPITokenError *)&v7 description];
  dictionaryRepresentation = [(ICAppleMusicAPITokenError *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (void)setHasPhase:(BOOL)phase
{
  if (phase)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)phase
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_phase;
  }

  else
  {
    return 1;
  }
}

@end