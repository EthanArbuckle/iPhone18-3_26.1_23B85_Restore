@interface ICAppleMusicAPITokenError
- (BOOL)isEqual:(id)a3;
- (ICAppleMusicAPITokenError)initWithNSError:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)phase;
- (unint64_t)hash;
- (void)mergeFrom:(id)a3;
- (void)setHasPhase:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ICAppleMusicAPITokenError

- (ICAppleMusicAPITokenError)initWithNSError:(id)a3
{
  v4 = a3;
  v5 = [(ICAppleMusicAPITokenError *)self init];
  if (v5)
  {
    v6 = [v4 domain];
    [(ICAppleMusicAPITokenError *)v5 setDomain:v6];

    -[ICAppleMusicAPITokenError setCode:](v5, "setCode:", [v4 code]);
    v7 = [v4 localizedDescription];
    [(ICAppleMusicAPITokenError *)v5 setLocalizedDescription:v7];
  }

  return v5;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 2))
  {
    [(ICAppleMusicAPITokenError *)self setDomain:?];
    v4 = v5;
  }

  if (*(v4 + 36))
  {
    self->_code = *(v4 + 1);
    *&self->_has |= 1u;
  }

  if (*(v4 + 3))
  {
    [(ICAppleMusicAPITokenError *)self setLocalizedDescription:?];
    v4 = v5;
  }

  if ((*(v4 + 36) & 2) != 0)
  {
    self->_phase = *(v4 + 8);
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  domain = self->_domain;
  if (domain | *(v4 + 2))
  {
    if (![(NSString *)domain isEqual:?])
    {
      goto LABEL_16;
    }
  }

  has = self->_has;
  v7 = *(v4 + 36);
  if (has)
  {
    if ((*(v4 + 36) & 1) == 0 || self->_code != *(v4 + 1))
    {
      goto LABEL_16;
    }
  }

  else if (*(v4 + 36))
  {
    goto LABEL_16;
  }

  localizedDescription = self->_localizedDescription;
  if (localizedDescription | *(v4 + 3))
  {
    if (![(NSString *)localizedDescription isEqual:?])
    {
LABEL_16:
      v9 = 0;
      goto LABEL_17;
    }

    has = self->_has;
    v7 = *(v4 + 36);
  }

  v9 = (v7 & 2) == 0;
  if ((has & 2) != 0)
  {
    if ((v7 & 2) == 0 || self->_phase != *(v4 + 8))
    {
      goto LABEL_16;
    }

    v9 = 1;
  }

LABEL_17:

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_domain copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  if (*&self->_has)
  {
    v5[1] = self->_code;
    *(v5 + 36) |= 1u;
  }

  v8 = [(NSString *)self->_localizedDescription copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 8) = self->_phase;
    *(v5 + 36) |= 2u;
  }

  return v5;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_domain)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (*&self->_has)
  {
    code = self->_code;
    PBDataWriterWriteInt64Field();
    v4 = v7;
  }

  if (self->_localizedDescription)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if ((*&self->_has & 2) != 0)
  {
    phase = self->_phase;
    PBDataWriterWriteInt32Field();
    v4 = v7;
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
  v4 = [(ICAppleMusicAPITokenError *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (void)setHasPhase:(BOOL)a3
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