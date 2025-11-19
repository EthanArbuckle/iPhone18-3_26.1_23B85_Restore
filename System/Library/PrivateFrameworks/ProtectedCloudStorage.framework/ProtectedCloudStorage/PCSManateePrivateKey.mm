@interface PCSManateePrivateKey
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PCSManateePrivateKey

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PCSManateePrivateKey;
  v4 = [(PCSManateePrivateKey *)&v8 description];
  v5 = [(PCSManateePrivateKey *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  privateKey = self->_privateKey;
  if (privateKey)
  {
    [v3 setObject:privateKey forKey:@"privateKey"];
  }

  publicKeyInfo = self->_publicKeyInfo;
  if (publicKeyInfo)
  {
    [v4 setObject:publicKeyInfo forKey:@"publicKeyInfo"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_privateKey)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_publicKeyInfo)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_privateKey)
  {
    [v4 setPrivateKey:?];
    v4 = v5;
  }

  if (self->_publicKeyInfo)
  {
    [v5 setPublicKeyInfo:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_privateKey copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSData *)self->_publicKeyInfo copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((privateKey = self->_privateKey, !(privateKey | v4[1])) || -[NSData isEqual:](privateKey, "isEqual:")))
  {
    publicKeyInfo = self->_publicKeyInfo;
    if (publicKeyInfo | v4[2])
    {
      v7 = [(NSData *)publicKeyInfo isEqual:?];
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
  v5 = v4;
  if (v4[1])
  {
    [(PCSManateePrivateKey *)self setPrivateKey:?];
    v4 = v5;
  }

  if (v4[2])
  {
    [(PCSManateePrivateKey *)self setPublicKeyInfo:?];
    v4 = v5;
  }
}

@end