@interface ICPBDGSPlayerInfoContextRequestToken
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation ICPBDGSPlayerInfoContextRequestToken

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_accountID;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSData *)self->_token hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761u * self->_sessionID;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  has = self->_has;
  v6 = *(v4 + 32);
  if (has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_accountID != *(v4 + 1))
    {
      goto LABEL_14;
    }
  }

  else if (*(v4 + 32))
  {
    goto LABEL_14;
  }

  token = self->_token;
  if (token | *(v4 + 3))
  {
    if (![(NSData *)token isEqual:?])
    {
LABEL_14:
      v8 = 0;
      goto LABEL_15;
    }

    has = self->_has;
    v6 = *(v4 + 32);
  }

  v8 = (v6 & 2) == 0;
  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_sessionID != *(v4 + 2))
    {
      goto LABEL_14;
    }

    v8 = 1;
  }

LABEL_15:

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_accountID;
    *(v5 + 32) |= 1u;
  }

  v7 = [(NSData *)self->_token copyWithZone:a3];
  v8 = *(v6 + 24);
  *(v6 + 24) = v7;

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 16) = self->_sessionID;
    *(v6 + 32) |= 2u;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*&self->_has)
  {
    PBDataWriterWriteUint64Field();
    v4 = v5;
  }

  if (self->_token)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteUint64Field();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_accountID];
    [v3 setObject:v4 forKey:@"accountID"];
  }

  token = self->_token;
  if (token)
  {
    [v3 setObject:token forKey:@"token"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_sessionID];
    [v3 setObject:v6 forKey:@"sessionID"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ICPBDGSPlayerInfoContextRequestToken;
  v4 = [(ICPBDGSPlayerInfoContextRequestToken *)&v8 description];
  v5 = [(ICPBDGSPlayerInfoContextRequestToken *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end