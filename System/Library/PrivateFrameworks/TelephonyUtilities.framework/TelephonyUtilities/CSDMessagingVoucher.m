@interface CSDMessagingVoucher
+ (CSDMessagingVoucher)voucherWithTUVoucher:(id)a3;
- (BOOL)isEqual:(id)a3;
- (TUVoucher)tuVoucher;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CSDMessagingVoucher

+ (CSDMessagingVoucher)voucherWithTUVoucher:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(CSDMessagingVoucher);
  v5 = [v3 handle];
  v6 = [CSDMessagingHandle handleWithTUHandle:v5];
  [(CSDMessagingVoucher *)v4 setHandle:v6];

  v7 = [v3 tokenPrefixedURI];
  [(CSDMessagingVoucher *)v4 setTokenPrefixedURI:v7];

  v8 = [v3 unsafeData];
  [(CSDMessagingVoucher *)v4 setUnsafeData:v8];

  v9 = [v3 encryptedData];

  [(CSDMessagingVoucher *)v4 setEncryptedData:v9];

  return v4;
}

- (TUVoucher)tuVoucher
{
  v3 = [TUVoucher alloc];
  v4 = [(CSDMessagingVoucher *)self handle];
  v5 = [v4 tuHandle];
  v6 = [(CSDMessagingVoucher *)self tokenPrefixedURI];
  v7 = [(CSDMessagingVoucher *)self unsafeData];
  v8 = [(CSDMessagingVoucher *)self encryptedData];
  v9 = [v3 initWithHandle:v5 tokenPrefixedURI:v6 data:v7 encryptedData:v8];

  return v9;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CSDMessagingVoucher;
  v3 = [(CSDMessagingVoucher *)&v7 description];
  v4 = [(CSDMessagingVoucher *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  handle = self->_handle;
  if (handle)
  {
    v5 = [(CSDMessagingHandle *)handle dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"handle"];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_handle)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_tokenPrefixedURI)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_unsafeData)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_encryptedData)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_handle)
  {
    [v4 setHandle:?];
    v4 = v5;
  }

  if (self->_tokenPrefixedURI)
  {
    [v5 setTokenPrefixedURI:?];
    v4 = v5;
  }

  if (self->_unsafeData)
  {
    [v5 setUnsafeData:?];
    v4 = v5;
  }

  if (self->_encryptedData)
  {
    [v5 setEncryptedData:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(CSDMessagingHandle *)self->_handle copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_tokenPrefixedURI copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSData *)self->_unsafeData copyWithZone:a3];
  v11 = v5[4];
  v5[4] = v10;

  v12 = [(NSData *)self->_encryptedData copyWithZone:a3];
  v13 = v5[1];
  v5[1] = v12;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((handle = self->_handle, !(handle | v4[2])) || -[CSDMessagingHandle isEqual:](handle, "isEqual:")) && ((tokenPrefixedURI = self->_tokenPrefixedURI, !(tokenPrefixedURI | v4[3])) || -[NSString isEqual:](tokenPrefixedURI, "isEqual:")) && ((unsafeData = self->_unsafeData, !(unsafeData | v4[4])) || -[NSData isEqual:](unsafeData, "isEqual:")))
  {
    encryptedData = self->_encryptedData;
    if (encryptedData | v4[1])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  handle = self->_handle;
  v7 = v4;
  v6 = v4[2];
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