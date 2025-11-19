@interface PCSManateeShareableIdentity
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PCSManateeShareableIdentity

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PCSManateeShareableIdentity;
  v4 = [(PCSManateeShareableIdentity *)&v8 description];
  v5 = [(PCSManateeShareableIdentity *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  encryptionPrivateKey = self->_encryptionPrivateKey;
  if (encryptionPrivateKey)
  {
    v5 = [(PCSManateePrivateKey *)encryptionPrivateKey dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"encryptionPrivateKey"];
  }

  signingPrivateKey = self->_signingPrivateKey;
  if (signingPrivateKey)
  {
    v7 = [(PCSManateePrivateKey *)signingPrivateKey dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"signingPrivateKey"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_encryptionPrivateKey)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_signingPrivateKey)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_encryptionPrivateKey)
  {
    [v4 setEncryptionPrivateKey:?];
    v4 = v5;
  }

  if (self->_signingPrivateKey)
  {
    [v5 setSigningPrivateKey:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(PCSManateePrivateKey *)self->_encryptionPrivateKey copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(PCSManateePrivateKey *)self->_signingPrivateKey copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((encryptionPrivateKey = self->_encryptionPrivateKey, !(encryptionPrivateKey | v4[1])) || -[PCSManateePrivateKey isEqual:](encryptionPrivateKey, "isEqual:")))
  {
    signingPrivateKey = self->_signingPrivateKey;
    if (signingPrivateKey | v4[2])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  encryptionPrivateKey = self->_encryptionPrivateKey;
  v6 = v4[1];
  v9 = v4;
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

  v4 = v9;
LABEL_7:
  signingPrivateKey = self->_signingPrivateKey;
  v8 = v4[2];
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