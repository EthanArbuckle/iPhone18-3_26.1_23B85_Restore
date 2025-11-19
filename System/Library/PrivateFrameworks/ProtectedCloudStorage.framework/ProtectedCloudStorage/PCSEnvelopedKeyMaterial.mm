@interface PCSEnvelopedKeyMaterial
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsVersion:(id)a3;
- (int)version;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PCSEnvelopedKeyMaterial

- (int)version
{
  if (*&self->_has)
  {
    return self->_version;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsVersion:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"HKDF_SIV_GCM_HMAC_256"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PCSEnvelopedKeyMaterial;
  v4 = [(PCSEnvelopedKeyMaterial *)&v8 description];
  v5 = [(PCSEnvelopedKeyMaterial *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    version = self->_version;
    if (version)
    {
      if (version == 1)
      {
        v5 = @"HKDF_SIV_GCM_HMAC_256";
      }

      else
      {
        v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_version];
      }
    }

    else
    {
      v5 = @"UNKNOWN";
    }

    [v3 setObject:v5 forKey:@"version"];
  }

  masterKeyId = self->_masterKeyId;
  if (masterKeyId)
  {
    [v3 setObject:masterKeyId forKey:@"masterKeyId"];
  }

  encryptedSeed = self->_encryptedSeed;
  if (encryptedSeed)
  {
    [v3 setObject:encryptedSeed forKey:@"encryptedSeed"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    version = self->_version;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }

  if (self->_masterKeyId)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }

  if (self->_encryptedSeed)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[6] = self->_version;
    *(v4 + 28) |= 1u;
  }

  v5 = v4;
  if (self->_masterKeyId)
  {
    [v4 setMasterKeyId:?];
    v4 = v5;
  }

  if (self->_encryptedSeed)
  {
    [v5 setEncryptedSeed:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 24) = self->_version;
    *(v5 + 28) |= 1u;
  }

  v7 = [(NSData *)self->_masterKeyId copyWithZone:a3];
  v8 = v6[2];
  v6[2] = v7;

  v9 = [(NSData *)self->_encryptedSeed copyWithZone:a3];
  v10 = v6[1];
  v6[1] = v9;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = *(v4 + 28);
  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) == 0 || self->_version != *(v4 + 6))
    {
      goto LABEL_11;
    }
  }

  else if (*(v4 + 28))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  masterKeyId = self->_masterKeyId;
  if (masterKeyId | *(v4 + 2) && ![(NSData *)masterKeyId isEqual:?])
  {
    goto LABEL_11;
  }

  encryptedSeed = self->_encryptedSeed;
  if (encryptedSeed | *(v4 + 1))
  {
    v8 = [(NSData *)encryptedSeed isEqual:?];
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
    v3 = 2654435761 * self->_version;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSData *)self->_masterKeyId hash]^ v3;
  return v4 ^ [(NSData *)self->_encryptedSeed hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[7])
  {
    self->_version = v4[6];
    *&self->_has |= 1u;
  }

  v5 = v4;
  if (*(v4 + 2))
  {
    [(PCSEnvelopedKeyMaterial *)self setMasterKeyId:?];
    v4 = v5;
  }

  if (*(v4 + 1))
  {
    [(PCSEnvelopedKeyMaterial *)self setEncryptedSeed:?];
    v4 = v5;
  }
}

@end