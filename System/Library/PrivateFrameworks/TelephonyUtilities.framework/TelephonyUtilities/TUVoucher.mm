@interface TUVoucher
+ (id)voucherFromMessagingData:(id)data;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToVoucher:(id)voucher;
- (TUVoucher)initWithCoder:(id)coder;
- (TUVoucher)initWithHandle:(id)handle tokenPrefixedURI:(id)i data:(id)data encryptedData:(id)encryptedData;
- (TUVoucher)initWithVoucher:(id)voucher;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)messagingData;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUVoucher

- (TUVoucher)initWithHandle:(id)handle tokenPrefixedURI:(id)i data:(id)data encryptedData:(id)encryptedData
{
  handleCopy = handle;
  iCopy = i;
  dataCopy = data;
  encryptedDataCopy = encryptedData;
  v23.receiver = self;
  v23.super_class = TUVoucher;
  v15 = [(TUVoucher *)&v23 init];
  if (v15)
  {
    v16 = [encryptedDataCopy copy];
    encryptedData = v15->_encryptedData;
    v15->_encryptedData = v16;

    objc_storeStrong(&v15->_handle, handle);
    v18 = [iCopy copy];
    tokenPrefixedURI = v15->_tokenPrefixedURI;
    v15->_tokenPrefixedURI = v18;

    v20 = [dataCopy copy];
    unsafeData = v15->_unsafeData;
    v15->_unsafeData = v20;
  }

  return v15;
}

- (TUVoucher)initWithVoucher:(id)voucher
{
  voucherCopy = voucher;
  v19.receiver = self;
  v19.super_class = TUVoucher;
  v5 = [(TUVoucher *)&v19 init];
  if (v5)
  {
    encryptedData = [voucherCopy encryptedData];
    v7 = [encryptedData copy];
    encryptedData = v5->_encryptedData;
    v5->_encryptedData = v7;

    handle = [voucherCopy handle];
    v10 = [handle copy];
    handle = v5->_handle;
    v5->_handle = v10;

    tokenPrefixedURI = [voucherCopy tokenPrefixedURI];
    v13 = [tokenPrefixedURI copy];
    tokenPrefixedURI = v5->_tokenPrefixedURI;
    v5->_tokenPrefixedURI = v13;

    unsafeData = [voucherCopy unsafeData];
    v16 = [unsafeData copy];
    unsafeData = v5->_unsafeData;
    v5->_unsafeData = v16;
  }

  return v5;
}

- (TUVoucher)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = TUVoucher;
  v5 = [(TUVoucher *)&v23 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_encryptedData);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    encryptedData = v5->_encryptedData;
    v5->_encryptedData = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_handle);
    v12 = [coderCopy decodeObjectOfClass:v10 forKey:v11];
    handle = v5->_handle;
    v5->_handle = v12;

    v14 = objc_opt_class();
    v15 = NSStringFromSelector(sel_tokenPrefixedURI);
    v16 = [coderCopy decodeObjectOfClass:v14 forKey:v15];
    tokenPrefixedURI = v5->_tokenPrefixedURI;
    v5->_tokenPrefixedURI = v16;

    v18 = objc_opt_class();
    v19 = NSStringFromSelector(sel_unsafeData);
    v20 = [coderCopy decodeObjectOfClass:v18 forKey:v19];
    unsafeData = v5->_unsafeData;
    v5->_unsafeData = v20;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  encryptedData = self->_encryptedData;
  coderCopy = coder;
  v6 = NSStringFromSelector(sel_encryptedData);
  [coderCopy encodeObject:encryptedData forKey:v6];

  handle = self->_handle;
  v8 = NSStringFromSelector(sel_handle);
  [coderCopy encodeObject:handle forKey:v8];

  tokenPrefixedURI = self->_tokenPrefixedURI;
  v10 = NSStringFromSelector(sel_tokenPrefixedURI);
  [coderCopy encodeObject:tokenPrefixedURI forKey:v10];

  unsafeData = self->_unsafeData;
  v12 = NSStringFromSelector(sel_unsafeData);
  [coderCopy encodeObject:unsafeData forKey:v12];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TUVoucher allocWithZone:zone];

  return [(TUVoucher *)v4 initWithVoucher:self];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = NSStringFromSelector(sel_handle);
  handle = [(TUVoucher *)self handle];
  [v3 appendFormat:@" %@=%@", v4, handle];

  v6 = NSStringFromSelector(sel_tokenPrefixedURI);
  tokenPrefixedURI = [(TUVoucher *)self tokenPrefixedURI];
  [v3 appendFormat:@" %@=%@", v6, tokenPrefixedURI];

  data = [(TUVoucher *)self data];
  [v3 appendFormat:@" unsafeDataHash=%tu", objc_msgSend(data, "hash")];

  encryptedData = [(TUVoucher *)self encryptedData];
  [v3 appendFormat:@" encryptedDataHash=%tu", objc_msgSend(encryptedData, "hash")];

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
  data = [v2 data];

  return data;
}

+ (id)voucherFromMessagingData:(id)data
{
  dataCopy = data;
  v4 = [[CSDMessagingVoucher alloc] initWithData:dataCopy];

  tuVoucher = [(CSDMessagingVoucher *)v4 tuVoucher];

  return tuVoucher;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUVoucher *)self isEqualToVoucher:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToVoucher:(id)voucher
{
  voucherCopy = voucher;
  encryptedData = self->_encryptedData;
  encryptedData = [voucherCopy encryptedData];
  if ([(NSData *)encryptedData isEqualToData:encryptedData])
  {
    handle = self->_handle;
    handle = [voucherCopy handle];
    if ([(TUHandle *)handle isEqualToHandle:handle])
    {
      tokenPrefixedURI = self->_tokenPrefixedURI;
      tokenPrefixedURI = [voucherCopy tokenPrefixedURI];
      if ([(NSString *)tokenPrefixedURI isEqualToString:tokenPrefixedURI])
      {
        unsafeData = self->_unsafeData;
        unsafeData = [voucherCopy unsafeData];
        v13 = [(NSData *)unsafeData isEqualToData:unsafeData];
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