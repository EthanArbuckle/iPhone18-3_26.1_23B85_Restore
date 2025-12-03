@interface MCCCertificateParams
- (MCCCertificateParams)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MCCCertificateParams

- (MCCCertificateParams)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(MCCCertificateParams *)self init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_commonName"];
    commonName = v5->_commonName;
    v5->_commonName = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_country"];
    country = v5->_country;
    v5->_country = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_state"];
    state = v5->_state;
    v5->_state = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_organization"];
    organization = v5->_organization;
    v5->_organization = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_organizationUnit"];
    organizationUnit = v5->_organizationUnit;
    v5->_organizationUnit = v17;

    v19 = [coderCopy decodeObjectOfClasses:v8 forKey:@"_csrAltName"];
    csrAltName = v5->_csrAltName;
    v5->_csrAltName = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_keyType"];
    keyType = v5->_keyType;
    v5->_keyType = v21;

    v5->_keyValue = [coderCopy decodeIntegerForKey:@"_keyValue"];
    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_certType"];
    certType = v5->_certType;
    v5->_certType = v23;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  commonName = self->_commonName;
  coderCopy = coder;
  [coderCopy encodeObject:commonName forKey:@"_commonName"];
  [coderCopy encodeObject:self->_country forKey:@"_country"];
  [coderCopy encodeObject:self->_state forKey:@"_state"];
  [coderCopy encodeObject:self->_organization forKey:@"_organization"];
  [coderCopy encodeObject:self->_organizationUnit forKey:@"_organizationUnit"];
  [coderCopy encodeObject:self->_csrAltName forKey:@"_csrAltName"];
  [coderCopy encodeObject:self->_keyType forKey:@"_keyType"];
  [coderCopy encodeInteger:self->_keyValue forKey:@"_keyValue"];
  [coderCopy encodeObject:self->_certType forKey:@"_certType"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(NSString *)self->_commonName copy];
  v6 = v4[1];
  v4[1] = v5;

  v7 = [(NSString *)self->_country copy];
  v8 = v4[2];
  v4[2] = v7;

  v9 = [(NSString *)self->_state copy];
  v10 = v4[3];
  v4[3] = v9;

  v11 = [(NSString *)self->_organization copy];
  v12 = v4[4];
  v4[4] = v11;

  v13 = [(NSString *)self->_organizationUnit copy];
  v14 = v4[5];
  v4[5] = v13;

  v15 = [(NSDictionary *)self->_csrAltName copy];
  v16 = v4[6];
  v4[6] = v15;

  v17 = [(NSString *)self->_keyType copy];
  v18 = v4[7];
  v4[7] = v17;

  v4[8] = self->_keyValue;
  v19 = [(NSString *)self->_certType copy];
  v20 = v4[9];
  v4[9] = v19;

  return v4;
}

@end