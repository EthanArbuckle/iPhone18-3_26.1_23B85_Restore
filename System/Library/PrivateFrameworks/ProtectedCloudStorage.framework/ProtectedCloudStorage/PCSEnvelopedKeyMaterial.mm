@interface PCSEnvelopedKeyMaterial
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsVersion:(id)version;
- (int)version;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
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

- (int)StringAsVersion:(id)version
{
  versionCopy = version;
  if ([versionCopy isEqualToString:@"UNKNOWN"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [versionCopy isEqualToString:@"HKDF_SIV_GCM_HMAC_256"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PCSEnvelopedKeyMaterial;
  v4 = [(PCSEnvelopedKeyMaterial *)&v8 description];
  dictionaryRepresentation = [(PCSEnvelopedKeyMaterial *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
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

    [dictionary setObject:v5 forKey:@"version"];
  }

  masterKeyId = self->_masterKeyId;
  if (masterKeyId)
  {
    [dictionary setObject:masterKeyId forKey:@"masterKeyId"];
  }

  encryptedSeed = self->_encryptedSeed;
  if (encryptedSeed)
  {
    [dictionary setObject:encryptedSeed forKey:@"encryptedSeed"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (*&self->_has)
  {
    version = self->_version;
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }

  if (self->_masterKeyId)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  if (self->_encryptedSeed)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[6] = self->_version;
    *(toCopy + 28) |= 1u;
  }

  v5 = toCopy;
  if (self->_masterKeyId)
  {
    [toCopy setMasterKeyId:?];
    toCopy = v5;
  }

  if (self->_encryptedSeed)
  {
    [v5 setEncryptedSeed:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 24) = self->_version;
    *(v5 + 28) |= 1u;
  }

  v7 = [(NSData *)self->_masterKeyId copyWithZone:zone];
  v8 = v6[2];
  v6[2] = v7;

  v9 = [(NSData *)self->_encryptedSeed copyWithZone:zone];
  v10 = v6[1];
  v6[1] = v9;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = *(equalCopy + 28);
  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) == 0 || self->_version != *(equalCopy + 6))
    {
      goto LABEL_11;
    }
  }

  else if (*(equalCopy + 28))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  masterKeyId = self->_masterKeyId;
  if (masterKeyId | *(equalCopy + 2) && ![(NSData *)masterKeyId isEqual:?])
  {
    goto LABEL_11;
  }

  encryptedSeed = self->_encryptedSeed;
  if (encryptedSeed | *(equalCopy + 1))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[7])
  {
    self->_version = fromCopy[6];
    *&self->_has |= 1u;
  }

  v5 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(PCSEnvelopedKeyMaterial *)self setMasterKeyId:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 1))
  {
    [(PCSEnvelopedKeyMaterial *)self setEncryptedSeed:?];
    fromCopy = v5;
  }
}

@end