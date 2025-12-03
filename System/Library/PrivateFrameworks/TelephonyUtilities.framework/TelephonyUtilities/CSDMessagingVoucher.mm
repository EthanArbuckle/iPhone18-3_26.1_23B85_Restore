@interface CSDMessagingVoucher
+ (CSDMessagingVoucher)voucherWithTUVoucher:(id)voucher;
- (BOOL)isEqual:(id)equal;
- (TUVoucher)tuVoucher;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CSDMessagingVoucher

+ (CSDMessagingVoucher)voucherWithTUVoucher:(id)voucher
{
  voucherCopy = voucher;
  v4 = objc_alloc_init(CSDMessagingVoucher);
  handle = [voucherCopy handle];
  v6 = [CSDMessagingHandle handleWithTUHandle:handle];
  [(CSDMessagingVoucher *)v4 setHandle:v6];

  tokenPrefixedURI = [voucherCopy tokenPrefixedURI];
  [(CSDMessagingVoucher *)v4 setTokenPrefixedURI:tokenPrefixedURI];

  unsafeData = [voucherCopy unsafeData];
  [(CSDMessagingVoucher *)v4 setUnsafeData:unsafeData];

  encryptedData = [voucherCopy encryptedData];

  [(CSDMessagingVoucher *)v4 setEncryptedData:encryptedData];

  return v4;
}

- (TUVoucher)tuVoucher
{
  v3 = [TUVoucher alloc];
  handle = [(CSDMessagingVoucher *)self handle];
  tuHandle = [handle tuHandle];
  tokenPrefixedURI = [(CSDMessagingVoucher *)self tokenPrefixedURI];
  unsafeData = [(CSDMessagingVoucher *)self unsafeData];
  encryptedData = [(CSDMessagingVoucher *)self encryptedData];
  v9 = [v3 initWithHandle:tuHandle tokenPrefixedURI:tokenPrefixedURI data:unsafeData encryptedData:encryptedData];

  return v9;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CSDMessagingVoucher;
  v3 = [(CSDMessagingVoucher *)&v7 description];
  dictionaryRepresentation = [(CSDMessagingVoucher *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  handle = self->_handle;
  if (handle)
  {
    dictionaryRepresentation = [(CSDMessagingHandle *)handle dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation forKey:@"handle"];
  }

  tokenPrefixedURI = self->_tokenPrefixedURI;
  if (tokenPrefixedURI)
  {
    [v3 setObject:tokenPrefixedURI forKey:@"tokenPrefixedURI"];
  }

  unsafeData = self->_unsafeData;
  if (unsafeData)
  {
    [v3 setObject:unsafeData forKey:@"unsafeData"];
  }

  encryptedData = self->_encryptedData;
  if (encryptedData)
  {
    [v3 setObject:encryptedData forKey:@"encryptedData"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_handle)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_tokenPrefixedURI)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_unsafeData)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_encryptedData)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_handle)
  {
    [toCopy setHandle:?];
    toCopy = v5;
  }

  if (self->_tokenPrefixedURI)
  {
    [v5 setTokenPrefixedURI:?];
    toCopy = v5;
  }

  if (self->_unsafeData)
  {
    [v5 setUnsafeData:?];
    toCopy = v5;
  }

  if (self->_encryptedData)
  {
    [v5 setEncryptedData:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(CSDMessagingHandle *)self->_handle copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_tokenPrefixedURI copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSData *)self->_unsafeData copyWithZone:zone];
  v11 = v5[4];
  v5[4] = v10;

  v12 = [(NSData *)self->_encryptedData copyWithZone:zone];
  v13 = v5[1];
  v5[1] = v12;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((handle = self->_handle, !(handle | equalCopy[2])) || -[CSDMessagingHandle isEqual:](handle, "isEqual:")) && ((tokenPrefixedURI = self->_tokenPrefixedURI, !(tokenPrefixedURI | equalCopy[3])) || -[NSString isEqual:](tokenPrefixedURI, "isEqual:")) && ((unsafeData = self->_unsafeData, !(unsafeData | equalCopy[4])) || -[NSData isEqual:](unsafeData, "isEqual:")))
  {
    encryptedData = self->_encryptedData;
    if (encryptedData | equalCopy[1])
    {
      v9 = [(NSData *)encryptedData isEqual:?];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(CSDMessagingHandle *)self->_handle hash];
  v4 = [(NSString *)self->_tokenPrefixedURI hash]^ v3;
  v5 = [(NSData *)self->_unsafeData hash];
  return v4 ^ v5 ^ [(NSData *)self->_encryptedData hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  handle = self->_handle;
  v7 = fromCopy;
  v6 = fromCopy[2];
  if (handle)
  {
    if (v6)
    {
      [(CSDMessagingHandle *)handle mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(CSDMessagingVoucher *)self setHandle:?];
  }

  if (v7[3])
  {
    [(CSDMessagingVoucher *)self setTokenPrefixedURI:?];
  }

  if (v7[4])
  {
    [(CSDMessagingVoucher *)self setUnsafeData:?];
  }

  if (v7[1])
  {
    [(CSDMessagingVoucher *)self setEncryptedData:?];
  }
}

@end