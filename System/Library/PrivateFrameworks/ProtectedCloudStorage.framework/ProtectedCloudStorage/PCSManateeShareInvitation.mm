@interface PCSManateeShareInvitation
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PCSManateeShareInvitation

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PCSManateeShareInvitation;
  v4 = [(PCSManateeShareInvitation *)&v8 description];
  dictionaryRepresentation = [(PCSManateeShareInvitation *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  exportedPCSData = self->_exportedPCSData;
  if (exportedPCSData)
  {
    [dictionary setObject:exportedPCSData forKey:@"exportedPCSData"];
  }

  shareePublicKeyData = self->_shareePublicKeyData;
  if (shareePublicKeyData)
  {
    [v4 setObject:shareePublicKeyData forKey:@"shareePublicKeyData"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_exportedPCSData)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_shareePublicKeyData)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_exportedPCSData)
  {
    [toCopy setExportedPCSData:?];
    toCopy = v5;
  }

  if (self->_shareePublicKeyData)
  {
    [v5 setShareePublicKeyData:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_exportedPCSData copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSData *)self->_shareePublicKeyData copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((exportedPCSData = self->_exportedPCSData, !(exportedPCSData | equalCopy[1])) || -[NSData isEqual:](exportedPCSData, "isEqual:")))
  {
    shareePublicKeyData = self->_shareePublicKeyData;
    if (shareePublicKeyData | equalCopy[2])
    {
      v7 = [(NSData *)shareePublicKeyData isEqual:?];
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
    [(PCSManateeShareInvitation *)self setExportedPCSData:?];
    fromCopy = v5;
  }

  if (fromCopy[2])
  {
    [(PCSManateeShareInvitation *)self setShareePublicKeyData:?];
    fromCopy = v5;
  }
}

@end