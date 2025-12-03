@interface TPPBCustodianRecoveryKey
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsKind:(id)kind;
- (int)kind;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation TPPBCustodianRecoveryKey

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 4))
  {
    [(TPPBCustodianRecoveryKey *)self setUuid:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 3))
  {
    [(TPPBCustodianRecoveryKey *)self setSigningPublicKey:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 1))
  {
    [(TPPBCustodianRecoveryKey *)self setEncryptionPublicKey:?];
    fromCopy = v5;
  }

  if (fromCopy[10])
  {
    self->_kind = fromCopy[4];
    *&self->_has |= 1u;
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_uuid hash];
  v4 = [(NSData *)self->_signingPublicKey hash];
  v5 = [(NSData *)self->_encryptionPublicKey hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_kind;
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
    goto LABEL_12;
  }

  uuid = self->_uuid;
  if (uuid | *(equalCopy + 4))
  {
    if (![(NSString *)uuid isEqual:?])
    {
      goto LABEL_12;
    }
  }

  signingPublicKey = self->_signingPublicKey;
  if (signingPublicKey | *(equalCopy + 3))
  {
    if (![(NSData *)signingPublicKey isEqual:?])
    {
      goto LABEL_12;
    }
  }

  encryptionPublicKey = self->_encryptionPublicKey;
  if (encryptionPublicKey | *(equalCopy + 1))
  {
    if (![(NSData *)encryptionPublicKey isEqual:?])
    {
      goto LABEL_12;
    }
  }

  v8 = (*(equalCopy + 40) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) != 0 && self->_kind == *(equalCopy + 4))
    {
      v8 = 1;
      goto LABEL_13;
    }

LABEL_12:
    v8 = 0;
  }

LABEL_13:

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_uuid copyWithZone:zone];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(NSData *)self->_signingPublicKey copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSData *)self->_encryptionPublicKey copyWithZone:zone];
  v11 = *(v5 + 8);
  *(v5 + 8) = v10;

  if (*&self->_has)
  {
    *(v5 + 16) = self->_kind;
    *(v5 + 40) |= 1u;
  }

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_uuid)
  {
    [toCopy setUuid:?];
    toCopy = v5;
  }

  if (self->_signingPublicKey)
  {
    [v5 setSigningPublicKey:?];
    toCopy = v5;
  }

  if (self->_encryptionPublicKey)
  {
    [v5 setEncryptionPublicKey:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 4) = self->_kind;
    *(toCopy + 40) |= 1u;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_uuid)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_signingPublicKey)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  if (self->_encryptionPublicKey)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    kind = self->_kind;
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  uuid = self->_uuid;
  if (uuid)
  {
    [dictionary setObject:uuid forKey:@"uuid"];
  }

  signingPublicKey = self->_signingPublicKey;
  if (signingPublicKey)
  {
    [v4 setObject:signingPublicKey forKey:@"signing_public_key"];
  }

  encryptionPublicKey = self->_encryptionPublicKey;
  if (encryptionPublicKey)
  {
    [v4 setObject:encryptionPublicKey forKey:@"encryption_public_key"];
  }

  if (*&self->_has)
  {
    kind = self->_kind;
    if (kind >= 3)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_kind];
    }

    else
    {
      v9 = off_279DEDD30[kind];
    }

    [v4 setObject:v9 forKey:@"kind"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = TPPBCustodianRecoveryKey;
  v4 = [(TPPBCustodianRecoveryKey *)&v8 description];
  dictionaryRepresentation = [(TPPBCustodianRecoveryKey *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (int)StringAsKind:(id)kind
{
  kindCopy = kind;
  if ([kindCopy isEqualToString:@"UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([kindCopy isEqualToString:@"RECOVERY_KEY"])
  {
    v4 = 1;
  }

  else if ([kindCopy isEqualToString:@"INHERITANCE_KEY"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)kind
{
  if (*&self->_has)
  {
    return self->_kind;
  }

  else
  {
    return 0;
  }
}

@end