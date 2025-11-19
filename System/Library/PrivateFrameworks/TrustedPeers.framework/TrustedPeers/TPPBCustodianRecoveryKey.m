@interface TPPBCustodianRecoveryKey
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsKind:(id)a3;
- (int)kind;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation TPPBCustodianRecoveryKey

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 4))
  {
    [(TPPBCustodianRecoveryKey *)self setUuid:?];
    v4 = v5;
  }

  if (*(v4 + 3))
  {
    [(TPPBCustodianRecoveryKey *)self setSigningPublicKey:?];
    v4 = v5;
  }

  if (*(v4 + 1))
  {
    [(TPPBCustodianRecoveryKey *)self setEncryptionPublicKey:?];
    v4 = v5;
  }

  if (v4[10])
  {
    self->_kind = v4[4];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  uuid = self->_uuid;
  if (uuid | *(v4 + 4))
  {
    if (![(NSString *)uuid isEqual:?])
    {
      goto LABEL_12;
    }
  }

  signingPublicKey = self->_signingPublicKey;
  if (signingPublicKey | *(v4 + 3))
  {
    if (![(NSData *)signingPublicKey isEqual:?])
    {
      goto LABEL_12;
    }
  }

  encryptionPublicKey = self->_encryptionPublicKey;
  if (encryptionPublicKey | *(v4 + 1))
  {
    if (![(NSData *)encryptionPublicKey isEqual:?])
    {
      goto LABEL_12;
    }
  }

  v8 = (*(v4 + 40) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) != 0 && self->_kind == *(v4 + 4))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_uuid copyWithZone:a3];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(NSData *)self->_signingPublicKey copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSData *)self->_encryptionPublicKey copyWithZone:a3];
  v11 = *(v5 + 8);
  *(v5 + 8) = v10;

  if (*&self->_has)
  {
    *(v5 + 16) = self->_kind;
    *(v5 + 40) |= 1u;
  }

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_uuid)
  {
    [v4 setUuid:?];
    v4 = v5;
  }

  if (self->_signingPublicKey)
  {
    [v5 setSigningPublicKey:?];
    v4 = v5;
  }

  if (self->_encryptionPublicKey)
  {
    [v5 setEncryptionPublicKey:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 4) = self->_kind;
    *(v4 + 40) |= 1u;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_uuid)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_signingPublicKey)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }

  if (self->_encryptionPublicKey)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    kind = self->_kind;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  uuid = self->_uuid;
  if (uuid)
  {
    [v3 setObject:uuid forKey:@"uuid"];
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
  v5 = [(TPPBCustodianRecoveryKey *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (int)StringAsKind:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"RECOVERY_KEY"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"INHERITANCE_KEY"])
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