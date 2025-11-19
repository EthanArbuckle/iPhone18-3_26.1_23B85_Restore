@interface KTIDStaticKeyStoreHandle
- (KTIDStaticKeyStoreHandle)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation KTIDStaticKeyStoreHandle

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[KTIDStaticKeyStoreHandle allocWithZone:](KTIDStaticKeyStoreHandle init];
  v6 = [(KTIDStaticKeyStoreHandle *)self handle];
  v7 = [v6 copyWithZone:a3];
  [(KTIDStaticKeyStoreHandle *)v5 setHandle:v7];

  [(KTIDStaticKeyStoreHandle *)v5 setValid:[(KTIDStaticKeyStoreHandle *)self valid]];
  v8 = [(KTIDStaticKeyStoreHandle *)self validationDate];
  v9 = [v8 copyWithZone:a3];
  [(KTIDStaticKeyStoreHandle *)v5 setValidationDate:v9];

  [(KTIDStaticKeyStoreHandle *)v5 setErrorCode:[(KTIDStaticKeyStoreHandle *)self errorCode]];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(KTIDStaticKeyStoreHandle *)self handle];
  [v6 encodeObject:v4 forKey:@"handle"];

  [v6 encodeBool:-[KTIDStaticKeyStoreHandle valid](self forKey:{"valid"), @"valid"}];
  v5 = [(KTIDStaticKeyStoreHandle *)self validationDate];
  [v6 encodeObject:v5 forKey:@"validationDate"];

  [v6 encodeInt:-[KTIDStaticKeyStoreHandle errorCode](self forKey:{"errorCode"), @"errorCode"}];
}

- (KTIDStaticKeyStoreHandle)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(KTIDStaticKeyStoreHandle);
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"handle"];
    [(KTIDStaticKeyStoreHandle *)v5 setHandle:v6];

    -[KTIDStaticKeyStoreHandle setValid:](v5, "setValid:", [v4 decodeBoolForKey:@"valid"]);
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"validationDate"];
    [(KTIDStaticKeyStoreHandle *)v5 setValidationDate:v7];

    -[KTIDStaticKeyStoreHandle setErrorCode:](v5, "setErrorCode:", [v4 decodeIntForKey:@"errorCode"]);
    v8 = v5;
  }

  return v5;
}

@end