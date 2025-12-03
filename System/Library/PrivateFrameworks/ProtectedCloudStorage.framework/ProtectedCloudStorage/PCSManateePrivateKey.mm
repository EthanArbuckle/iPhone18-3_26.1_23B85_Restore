@interface PCSManateePrivateKey
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PCSManateePrivateKey

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PCSManateePrivateKey;
  v4 = [(PCSManateePrivateKey *)&v8 description];
  dictionaryRepresentation = [(PCSManateePrivateKey *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  privateKey = self->_privateKey;
  if (privateKey)
  {
    [dictionary setObject:privateKey forKey:@"privateKey"];
  }

  publicKeyInfo = self->_publicKeyInfo;
  if (publicKeyInfo)
  {
    [v4 setObject:publicKeyInfo forKey:@"publicKeyInfo"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_privateKey)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_publicKeyInfo)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_privateKey)
  {
    [toCopy setPrivateKey:?];
    toCopy = v5;
  }

  if (self->_publicKeyInfo)
  {
    [v5 setPublicKeyInfo:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_privateKey copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSData *)self->_publicKeyInfo copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((privateKey = self->_privateKey, !(privateKey | equalCopy[1])) || -[NSData isEqual:](privateKey, "isEqual:")))
  {
    publicKeyInfo = self->_publicKeyInfo;
    if (publicKeyInfo | equalCopy[2])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[1])
  {
    [(PCSManateePrivateKey *)self setPrivateKey:?];
    fromCopy = v5;
  }

  if (fromCopy[2])
  {
    [(PCSManateePrivateKey *)self setPublicKeyInfo:?];
    fromCopy = v5;
  }
}

@end