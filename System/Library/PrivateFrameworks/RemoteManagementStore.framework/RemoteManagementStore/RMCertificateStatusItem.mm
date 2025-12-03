@interface RMCertificateStatusItem
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCertificateStatus:(id)status;
- (RMCertificateStatusItem)initWithCoder:(id)coder;
- (RMCertificateStatusItem)initWithWithPersistentRef:(id)ref isIdentity:(BOOL)identity;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RMCertificateStatusItem

- (RMCertificateStatusItem)initWithWithPersistentRef:(id)ref isIdentity:(BOOL)identity
{
  refCopy = ref;
  v11.receiver = self;
  v11.super_class = RMCertificateStatusItem;
  v8 = [(RMCertificateStatusItem *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_persistentRef, ref);
    v9->_isIdentity = identity;
  }

  return v9;
}

- (RMCertificateStatusItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"persistent-ref"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"is-identity"];

  v7 = -[RMCertificateStatusItem initWithWithPersistentRef:isIdentity:](self, "initWithWithPersistentRef:isIdentity:", v5, [v6 BOOLValue]);
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  persistentRef = [(RMCertificateStatusItem *)self persistentRef];
  [coderCopy encodeObject:persistentRef forKey:@"persistent-ref"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[RMCertificateStatusItem isIdentity](self, "isIdentity")}];
  [coderCopy encodeObject:v6 forKey:@"is-identity"];
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(RMCertificateStatusItem *)self isEqualToCertificateStatus:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToCertificateStatus:(id)status
{
  statusCopy = status;
  persistentRef = [(RMCertificateStatusItem *)self persistentRef];
  persistentRef2 = [statusCopy persistentRef];
  if ([persistentRef isEqualToData:persistentRef2])
  {
    isIdentity = [(RMCertificateStatusItem *)self isIdentity];
    v8 = isIdentity ^ [statusCopy isIdentity] ^ 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

@end