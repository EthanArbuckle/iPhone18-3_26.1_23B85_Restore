@interface ICPBDGSPlayerDelegateInfoToken
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation ICPBDGSPlayerDelegateInfoToken

- (unint64_t)hash
{
  v3 = [(NSData *)self->_token hash];
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761u * self->_sessionID;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_8:
    v10 = 0;
    return v6 ^ v3 ^ v10 ^ [(NSString *)self->_storefrontIdentifier hash];
  }

  v6 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  expirationTimeInterval = self->_expirationTimeInterval;
  if (expirationTimeInterval < 0.0)
  {
    expirationTimeInterval = -expirationTimeInterval;
  }

  *v4.i64 = floor(expirationTimeInterval + 0.5);
  v8 = (expirationTimeInterval - *v4.i64) * 1.84467441e19;
  *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
  v9.f64[0] = NAN;
  v9.f64[1] = NAN;
  v10 = 2654435761u * *vbslq_s8(vnegq_f64(v9), v5, v4).i64;
  if (v8 >= 0.0)
  {
    if (v8 > 0.0)
    {
      v10 += v8;
    }
  }

  else
  {
    v10 -= fabs(v8);
  }

  return v6 ^ v3 ^ v10 ^ [(NSString *)self->_storefrontIdentifier hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  token = self->_token;
  if (token | *(v4 + 4))
  {
    if (![(NSData *)token isEqual:?])
    {
      goto LABEL_16;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 40) & 2) == 0 || self->_sessionID != *(v4 + 2))
    {
      goto LABEL_16;
    }
  }

  else if ((*(v4 + 40) & 2) != 0)
  {
LABEL_16:
    v7 = 0;
    goto LABEL_17;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_expirationTimeInterval != *(v4 + 1))
    {
      goto LABEL_16;
    }
  }

  else if (*(v4 + 40))
  {
    goto LABEL_16;
  }

  storefrontIdentifier = self->_storefrontIdentifier;
  if (storefrontIdentifier | *(v4 + 3))
  {
    v7 = [(NSString *)storefrontIdentifier isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_17:

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_token copyWithZone:a3];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_sessionID;
    *(v5 + 40) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 8) = self->_expirationTimeInterval;
    *(v5 + 40) |= 1u;
  }

  v9 = [(NSString *)self->_storefrontIdentifier copyWithZone:a3];
  v10 = *(v5 + 24);
  *(v5 + 24) = v9;

  return v5;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_token)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint64Field();
    v4 = v6;
    has = self->_has;
  }

  if (has)
  {
    PBDataWriterWriteDoubleField();
    v4 = v6;
  }

  if (self->_storefrontIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  token = self->_token;
  if (token)
  {
    [v3 setObject:token forKey:@"token"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_sessionID];
    [v4 setObject:v7 forKey:@"sessionID"];

    has = self->_has;
  }

  if (has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_expirationTimeInterval];
    [v4 setObject:v8 forKey:@"expirationTimeInterval"];
  }

  storefrontIdentifier = self->_storefrontIdentifier;
  if (storefrontIdentifier)
  {
    [v4 setObject:storefrontIdentifier forKey:@"storefrontIdentifier"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ICPBDGSPlayerDelegateInfoToken;
  v4 = [(ICPBDGSPlayerDelegateInfoToken *)&v8 description];
  v5 = [(ICPBDGSPlayerDelegateInfoToken *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end