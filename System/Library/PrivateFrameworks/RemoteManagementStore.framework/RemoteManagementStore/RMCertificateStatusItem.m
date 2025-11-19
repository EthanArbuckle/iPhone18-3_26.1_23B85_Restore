@interface RMCertificateStatusItem
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCertificateStatus:(id)a3;
- (RMCertificateStatusItem)initWithCoder:(id)a3;
- (RMCertificateStatusItem)initWithWithPersistentRef:(id)a3 isIdentity:(BOOL)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RMCertificateStatusItem

- (RMCertificateStatusItem)initWithWithPersistentRef:(id)a3 isIdentity:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = RMCertificateStatusItem;
  v8 = [(RMCertificateStatusItem *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_persistentRef, a3);
    v9->_isIdentity = a4;
  }

  return v9;
}

- (RMCertificateStatusItem)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"persistent-ref"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"is-identity"];

  v7 = -[RMCertificateStatusItem initWithWithPersistentRef:isIdentity:](self, "initWithWithPersistentRef:isIdentity:", v5, [v6 BOOLValue]);
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(RMCertificateStatusItem *)self persistentRef];
  [v4 encodeObject:v5 forKey:@"persistent-ref"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[RMCertificateStatusItem isIdentity](self, "isIdentity")}];
  [v4 encodeObject:v6 forKey:@"is-identity"];
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(RMCertificateStatusItem *)self isEqualToCertificateStatus:v4];
  }

  return v5;
}

- (BOOL)isEqualToCertificateStatus:(id)a3
{
  v4 = a3;
  v5 = [(RMCertificateStatusItem *)self persistentRef];
  v6 = [v4 persistentRef];
  if ([v5 isEqualToData:v6])
  {
    v7 = [(RMCertificateStatusItem *)self isIdentity];
    v8 = v7 ^ [v4 isIdentity] ^ 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

@end