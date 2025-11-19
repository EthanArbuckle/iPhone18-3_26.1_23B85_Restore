@interface PCSManateeShareInvitation
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PCSManateeShareInvitation

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PCSManateeShareInvitation;
  v4 = [(PCSManateeShareInvitation *)&v8 description];
  v5 = [(PCSManateeShareInvitation *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  exportedPCSData = self->_exportedPCSData;
  if (exportedPCSData)
  {
    [v3 setObject:exportedPCSData forKey:@"exportedPCSData"];
  }

  shareePublicKeyData = self->_shareePublicKeyData;
  if (shareePublicKeyData)
  {
    [v4 setObject:shareePublicKeyData forKey:@"shareePublicKeyData"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_exportedPCSData)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_shareePublicKeyData)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_exportedPCSData)
  {
    [v4 setExportedPCSData:?];
    v4 = v5;
  }

  if (self->_shareePublicKeyData)
  {
    [v5 setShareePublicKeyData:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_exportedPCSData copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSData *)self->_shareePublicKeyData copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((exportedPCSData = self->_exportedPCSData, !(exportedPCSData | v4[1])) || -[NSData isEqual:](exportedPCSData, "isEqual:")))
  {
    shareePublicKeyData = self->_shareePublicKeyData;
    if (shareePublicKeyData | v4[2])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[1])
  {
    [(PCSManateeShareInvitation *)self setExportedPCSData:?];
    v4 = v5;
  }

  if (v4[2])
  {
    [(PCSManateeShareInvitation *)self setShareePublicKeyData:?];
    v4 = v5;
  }
}

@end