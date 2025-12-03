@interface KTIDStaticKeyStoreHandle
- (KTIDStaticKeyStoreHandle)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation KTIDStaticKeyStoreHandle

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[KTIDStaticKeyStoreHandle allocWithZone:](KTIDStaticKeyStoreHandle init];
  handle = [(KTIDStaticKeyStoreHandle *)self handle];
  v7 = [handle copyWithZone:zone];
  [(KTIDStaticKeyStoreHandle *)v5 setHandle:v7];

  [(KTIDStaticKeyStoreHandle *)v5 setValid:[(KTIDStaticKeyStoreHandle *)self valid]];
  validationDate = [(KTIDStaticKeyStoreHandle *)self validationDate];
  v9 = [validationDate copyWithZone:zone];
  [(KTIDStaticKeyStoreHandle *)v5 setValidationDate:v9];

  [(KTIDStaticKeyStoreHandle *)v5 setErrorCode:[(KTIDStaticKeyStoreHandle *)self errorCode]];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  handle = [(KTIDStaticKeyStoreHandle *)self handle];
  [coderCopy encodeObject:handle forKey:@"handle"];

  [coderCopy encodeBool:-[KTIDStaticKeyStoreHandle valid](self forKey:{"valid"), @"valid"}];
  validationDate = [(KTIDStaticKeyStoreHandle *)self validationDate];
  [coderCopy encodeObject:validationDate forKey:@"validationDate"];

  [coderCopy encodeInt:-[KTIDStaticKeyStoreHandle errorCode](self forKey:{"errorCode"), @"errorCode"}];
}

- (KTIDStaticKeyStoreHandle)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_alloc_init(KTIDStaticKeyStoreHandle);
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"handle"];
    [(KTIDStaticKeyStoreHandle *)v5 setHandle:v6];

    -[KTIDStaticKeyStoreHandle setValid:](v5, "setValid:", [coderCopy decodeBoolForKey:@"valid"]);
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"validationDate"];
    [(KTIDStaticKeyStoreHandle *)v5 setValidationDate:v7];

    -[KTIDStaticKeyStoreHandle setErrorCode:](v5, "setErrorCode:", [coderCopy decodeIntForKey:@"errorCode"]);
    v8 = v5;
  }

  return v5;
}

@end