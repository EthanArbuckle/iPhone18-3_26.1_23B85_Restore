@interface PCSManateeShareableIdentity
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PCSManateeShareableIdentity

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PCSManateeShareableIdentity;
  v4 = [(PCSManateeShareableIdentity *)&v8 description];
  dictionaryRepresentation = [(PCSManateeShareableIdentity *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  encryptionPrivateKey = self->_encryptionPrivateKey;
  if (encryptionPrivateKey)
  {
    dictionaryRepresentation = [(PCSManateePrivateKey *)encryptionPrivateKey dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"encryptionPrivateKey"];
  }

  signingPrivateKey = self->_signingPrivateKey;
  if (signingPrivateKey)
  {
    dictionaryRepresentation2 = [(PCSManateePrivateKey *)signingPrivateKey dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"signingPrivateKey"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_encryptionPrivateKey)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_signingPrivateKey)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_encryptionPrivateKey)
  {
    [toCopy setEncryptionPrivateKey:?];
    toCopy = v5;
  }

  if (self->_signingPrivateKey)
  {
    [v5 setSigningPrivateKey:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(PCSManateePrivateKey *)self->_encryptionPrivateKey copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(PCSManateePrivateKey *)self->_signingPrivateKey copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((encryptionPrivateKey = self->_encryptionPrivateKey, !(encryptionPrivateKey | equalCopy[1])) || -[PCSManateePrivateKey isEqual:](encryptionPrivateKey, "isEqual:")))
  {
    signingPrivateKey = self->_signingPrivateKey;
    if (signingPrivateKey | equalCopy[2])
    {
      v7 = [(PCSManateePrivateKey *)signingPrivateKey isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  encryptionPrivateKey = self->_encryptionPrivateKey;
  v6 = fromCopy[1];
  v9 = fromCopy;
  if (encryptionPrivateKey)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(PCSManateePrivateKey *)encryptionPrivateKey mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(PCSManateeShareableIdentity *)self setEncryptionPrivateKey:?];
  }

  fromCopy = v9;
LABEL_7:
  signingPrivateKey = self->_signingPrivateKey;
  v8 = fromCopy[2];
  if (signingPrivateKey)
  {
    if (v8)
    {
      [(PCSManateePrivateKey *)signingPrivateKey mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(PCSManateeShareableIdentity *)self setSigningPrivateKey:?];
  }

  MEMORY[0x1EEE66BB8]();
}

@end