@interface AuthCredential
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsAuthCredentialOneof:(id)oneof;
- (int)authCredentialOneof;
- (unint64_t)hash;
- (void)clearOneofValuesForAuthCredentialOneof;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setSharedOwnershipAuth:(id)auth;
- (void)setSimpleJwt:(id)jwt;
- (void)writeTo:(id)to;
@end

@implementation AuthCredential

- (void)setSimpleJwt:(id)jwt
{
  jwtCopy = jwt;
  [(AuthCredential *)self clearOneofValuesForAuthCredentialOneof];
  *&self->_has |= 1u;
  self->_authCredentialOneof = 1;
  simpleJwt = self->_simpleJwt;
  self->_simpleJwt = jwtCopy;
}

- (void)setSharedOwnershipAuth:(id)auth
{
  authCopy = auth;
  [(AuthCredential *)self clearOneofValuesForAuthCredentialOneof];
  *&self->_has |= 1u;
  self->_authCredentialOneof = 2;
  sharedOwnershipAuth = self->_sharedOwnershipAuth;
  self->_sharedOwnershipAuth = authCopy;
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

- (int)StringAsAuthCredentialOneof:(id)oneof
{
  oneofCopy = oneof;
  if ([oneofCopy isEqualToString:@"PBUNSET"])
  {
    v4 = 0;
  }

  else if ([oneofCopy isEqualToString:@"simple_jwt"])
  {
    v4 = 1;
  }

  else if ([oneofCopy isEqualToString:@"shared_ownership_auth"])
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
  dictionaryRepresentation = [(AuthCredential *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  simpleJwt = self->_simpleJwt;
  if (simpleJwt)
  {
    [dictionary setObject:simpleJwt forKey:@"simple_jwt"];
  }

  sharedOwnershipAuth = self->_sharedOwnershipAuth;
  if (sharedOwnershipAuth)
  {
    dictionaryRepresentation = [(SharedOwnershipAuth *)sharedOwnershipAuth dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"shared_ownership_auth"];
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

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_simpleJwt)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_sharedOwnershipAuth)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[2] = self->_authCredentialOneof;
    *(toCopy + 32) |= 1u;
  }

  v5 = toCopy;
  if (self->_simpleJwt)
  {
    [toCopy setSimpleJwt:?];
    toCopy = v5;
  }

  if (self->_sharedOwnershipAuth)
  {
    [v5 setSharedOwnershipAuth:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_authCredentialOneof;
    *(v5 + 32) |= 1u;
  }

  v7 = [(NSString *)self->_simpleJwt copyWithZone:zone];
  v8 = v6[3];
  v6[3] = v7;

  v9 = [(SharedOwnershipAuth *)self->_sharedOwnershipAuth copyWithZone:zone];
  v10 = v6[2];
  v6[2] = v9;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = *(equalCopy + 32);
  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) == 0 || self->_authCredentialOneof != *(equalCopy + 2))
    {
      goto LABEL_11;
    }
  }

  else if (*(equalCopy + 32))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  simpleJwt = self->_simpleJwt;
  if (simpleJwt | *(equalCopy + 3) && ![(NSString *)simpleJwt isEqual:?])
  {
    goto LABEL_11;
  }

  sharedOwnershipAuth = self->_sharedOwnershipAuth;
  if (sharedOwnershipAuth | *(equalCopy + 2))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[8])
  {
    self->_authCredentialOneof = fromCopy[2];
    *&self->_has |= 1u;
  }

  v8 = fromCopy;
  if (*(fromCopy + 3))
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