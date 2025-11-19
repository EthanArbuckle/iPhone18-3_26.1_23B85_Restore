@interface AuthCredential
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsAuthCredentialOneof:(id)a3;
- (int)authCredentialOneof;
- (unint64_t)hash;
- (void)clearOneofValuesForAuthCredentialOneof;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setSharedOwnershipAuth:(id)a3;
- (void)setSimpleJwt:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation AuthCredential

- (void)setSimpleJwt:(id)a3
{
  v4 = a3;
  [(AuthCredential *)self clearOneofValuesForAuthCredentialOneof];
  *&self->_has |= 1u;
  self->_authCredentialOneof = 1;
  simpleJwt = self->_simpleJwt;
  self->_simpleJwt = v4;
}

- (void)setSharedOwnershipAuth:(id)a3
{
  v4 = a3;
  [(AuthCredential *)self clearOneofValuesForAuthCredentialOneof];
  *&self->_has |= 1u;
  self->_authCredentialOneof = 2;
  sharedOwnershipAuth = self->_sharedOwnershipAuth;
  self->_sharedOwnershipAuth = v4;
}

- (int)authCredentialOneof
{
  if (*&self->_has)
  {
    return self->_authCredentialOneof;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsAuthCredentialOneof:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"PBUNSET"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"simple_jwt"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"shared_ownership_auth"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)clearOneofValuesForAuthCredentialOneof
{
  *&self->_has &= ~1u;
  self->_authCredentialOneof = 0;
  simpleJwt = self->_simpleJwt;
  self->_simpleJwt = 0;

  sharedOwnershipAuth = self->_sharedOwnershipAuth;
  self->_sharedOwnershipAuth = 0;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AuthCredential;
  v4 = [(AuthCredential *)&v8 description];
  v5 = [(AuthCredential *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  simpleJwt = self->_simpleJwt;
  if (simpleJwt)
  {
    [v3 setObject:simpleJwt forKey:@"simple_jwt"];
  }

  sharedOwnershipAuth = self->_sharedOwnershipAuth;
  if (sharedOwnershipAuth)
  {
    v7 = [(SharedOwnershipAuth *)sharedOwnershipAuth dictionaryRepresentation];
    [v4 setObject:v7 forKey:@"shared_ownership_auth"];
  }

  if (*&self->_has)
  {
    authCredentialOneof = self->_authCredentialOneof;
    if (authCredentialOneof >= 3)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_authCredentialOneof];
    }

    else
    {
      v9 = off_27843DF10[authCredentialOneof];
    }

    [v4 setObject:v9 forKey:@"auth_credential_oneof"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_simpleJwt)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_sharedOwnershipAuth)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[2] = self->_authCredentialOneof;
    *(v4 + 32) |= 1u;
  }

  v5 = v4;
  if (self->_simpleJwt)
  {
    [v4 setSimpleJwt:?];
    v4 = v5;
  }

  if (self->_sharedOwnershipAuth)
  {
    [v5 setSharedOwnershipAuth:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_authCredentialOneof;
    *(v5 + 32) |= 1u;
  }

  v7 = [(NSString *)self->_simpleJwt copyWithZone:a3];
  v8 = v6[3];
  v6[3] = v7;

  v9 = [(SharedOwnershipAuth *)self->_sharedOwnershipAuth copyWithZone:a3];
  v10 = v6[2];
  v6[2] = v9;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = *(v4 + 32);
  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_authCredentialOneof != *(v4 + 2))
    {
      goto LABEL_11;
    }
  }

  else if (*(v4 + 32))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  simpleJwt = self->_simpleJwt;
  if (simpleJwt | *(v4 + 3) && ![(NSString *)simpleJwt isEqual:?])
  {
    goto LABEL_11;
  }

  sharedOwnershipAuth = self->_sharedOwnershipAuth;
  if (sharedOwnershipAuth | *(v4 + 2))
  {
    v8 = [(SharedOwnershipAuth *)sharedOwnershipAuth isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_12:

  return v8;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_authCredentialOneof;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_simpleJwt hash]^ v3;
  return v4 ^ [(SharedOwnershipAuth *)self->_sharedOwnershipAuth hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[8])
  {
    self->_authCredentialOneof = v4[2];
    *&self->_has |= 1u;
  }

  v8 = v4;
  if (*(v4 + 3))
  {
    [(AuthCredential *)self setSimpleJwt:?];
    v5 = v8;
  }

  sharedOwnershipAuth = self->_sharedOwnershipAuth;
  v7 = *(v5 + 2);
  if (sharedOwnershipAuth)
  {
    if (v7)
    {
      [(SharedOwnershipAuth *)sharedOwnershipAuth mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(AuthCredential *)self setSharedOwnershipAuth:?];
  }

  MEMORY[0x2821F96F8]();
}

@end