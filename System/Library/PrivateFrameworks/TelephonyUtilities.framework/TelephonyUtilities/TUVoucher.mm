@interface TUVoucher
+ (id)voucherFromMessagingData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToVoucher:(id)a3;
- (TUVoucher)initWithCoder:(id)a3;
- (TUVoucher)initWithHandle:(id)a3 tokenPrefixedURI:(id)a4 data:(id)a5 encryptedData:(id)a6;
- (TUVoucher)initWithVoucher:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)messagingData;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TUVoucher

- (TUVoucher)initWithHandle:(id)a3 tokenPrefixedURI:(id)a4 data:(id)a5 encryptedData:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v23.receiver = self;
  v23.super_class = TUVoucher;
  v15 = [(TUVoucher *)&v23 init];
  if (v15)
  {
    v16 = [v14 copy];
    encryptedData = v15->_encryptedData;
    v15->_encryptedData = v16;

    objc_storeStrong(&v15->_handle, a3);
    v18 = [v12 copy];
    tokenPrefixedURI = v15->_tokenPrefixedURI;
    v15->_tokenPrefixedURI = v18;

    v20 = [v13 copy];
    unsafeData = v15->_unsafeData;
    v15->_unsafeData = v20;
  }

  return v15;
}

- (TUVoucher)initWithVoucher:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = TUVoucher;
  v5 = [(TUVoucher *)&v19 init];
  if (v5)
  {
    v6 = [v4 encryptedData];
    v7 = [v6 copy];
    encryptedData = v5->_encryptedData;
    v5->_encryptedData = v7;

    v9 = [v4 handle];
    v10 = [v9 copy];
    handle = v5->_handle;
    v5->_handle = v10;

    v12 = [v4 tokenPrefixedURI];
    v13 = [v12 copy];
    tokenPrefixedURI = v5->_tokenPrefixedURI;
    v5->_tokenPrefixedURI = v13;

    v15 = [v4 unsafeData];
    v16 = [v15 copy];
    unsafeData = v5->_unsafeData;
    v5->_unsafeData = v16;
  }

  return v5;
}

- (TUVoucher)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = TUVoucher;
  v5 = [(TUVoucher *)&v23 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_encryptedData);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    encryptedData = v5->_encryptedData;
    v5->_encryptedData = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_handle);
    v12 = [v4 decodeObjectOfClass:v10 forKey:v11];
    handle = v5->_handle;
    v5->_handle = v12;

    v14 = objc_opt_class();
    v15 = NSStringFromSelector(sel_tokenPrefixedURI);
    v16 = [v4 decodeObjectOfClass:v14 forKey:v15];
    tokenPrefixedURI = v5->_tokenPrefixedURI;
    v5->_tokenPrefixedURI = v16;

    v18 = objc_opt_class();
    v19 = NSStringFromSelector(sel_unsafeData);
    v20 = [v4 decodeObjectOfClass:v18 forKey:v19];
    unsafeData = v5->_unsafeData;
    v5->_unsafeData = v20;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  encryptedData = self->_encryptedData;
  v5 = a3;
  v6 = NSStringFromSelector(sel_encryptedData);
  [v5 encodeObject:encryptedData forKey:v6];

  handle = self->_handle;
  v8 = NSStringFromSelector(sel_handle);
  [v5 encodeObject:handle forKey:v8];

  tokenPrefixedURI = self->_tokenPrefixedURI;
  v10 = NSStringFromSelector(sel_tokenPrefixedURI);
  [v5 encodeObject:tokenPrefixedURI forKey:v10];

  unsafeData = self->_unsafeData;
  v12 = NSStringFromSelector(sel_unsafeData);
  [v5 encodeObject:unsafeData forKey:v12];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TUVoucher allocWithZone:a3];

  return [(TUVoucher *)v4 initWithVoucher:self];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = NSStringFromSelector(sel_handle);
  v5 = [(TUVoucher *)self handle];
  [v3 appendFormat:@" %@=%@", v4, v5];

  v6 = NSStringFromSelector(sel_tokenPrefixedURI);
  v7 = [(TUVoucher *)self tokenPrefixedURI];
  [v3 appendFormat:@" %@=%@", v6, v7];

  v8 = [(TUVoucher *)self data];
  [v3 appendFormat:@" unsafeDataHash=%tu", objc_msgSend(v8, "hash")];

  v9 = [(TUVoucher *)self encryptedData];
  [v3 appendFormat:@" encryptedDataHash=%tu", objc_msgSend(v9, "hash")];

  [v3 appendString:@">"];
  v10 = [v3 copy];

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_encryptedData hash];
  v4 = [(TUHandle *)self->_handle hash]^ v3;
  v5 = [(NSString *)self->_tokenPrefixedURI hash];
  return v4 ^ v5 ^ [(NSData *)self->_unsafeData hash];
}

- (id)messagingData
{
  v2 = [CSDMessagingVoucher voucherWithTUVoucher:self];
  v3 = [v2 data];

  return v3;
}

+ (id)voucherFromMessagingData:(id)a3
{
  v3 = a3;
  v4 = [[CSDMessagingVoucher alloc] initWithData:v3];

  v5 = [(CSDMessagingVoucher *)v4 tuVoucher];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUVoucher *)self isEqualToVoucher:v4];
  }

  return v5;
}

- (BOOL)isEqualToVoucher:(id)a3
{
  v4 = a3;
  encryptedData = self->_encryptedData;
  v6 = [v4 encryptedData];
  if ([(NSData *)encryptedData isEqualToData:v6])
  {
    handle = self->_handle;
    v8 = [v4 handle];
    if ([(TUHandle *)handle isEqualToHandle:v8])
    {
      tokenPrefixedURI = self->_tokenPrefixedURI;
      v10 = [v4 tokenPrefixedURI];
      if ([(NSString *)tokenPrefixedURI isEqualToString:v10])
      {
        unsafeData = self->_unsafeData;
        v12 = [v4 unsafeData];
        v13 = [(NSData *)unsafeData isEqualToData:v12];
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end