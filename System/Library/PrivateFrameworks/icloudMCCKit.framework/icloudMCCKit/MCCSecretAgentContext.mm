@interface MCCSecretAgentContext
- (MCCSecretAgentContext)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MCCSecretAgentContext

- (MCCSecretAgentContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(MCCSecretAgentContext *)self init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = MEMORY[0x1E695DFD8];
    v10 = objc_opt_class();
    v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_certParams"];
    certParams = v5->_certParams;
    v5->_certParams = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_accountEmail"];
    accountEmail = v5->_accountEmail;
    v5->_accountEmail = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_correspEmail"];
    correspEmail = v5->_correspEmail;
    v5->_correspEmail = v16;

    v18 = [coderCopy decodeObjectOfClasses:v8 forKey:@"_searchCriteria"];
    searchCriteria = v5->_searchCriteria;
    v5->_searchCriteria = v18;

    v20 = [coderCopy decodeObjectOfClasses:v11 forKey:@"_secObjects"];
    secObjects = v5->_secObjects;
    v5->_secObjects = v20;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  certParams = self->_certParams;
  coderCopy = coder;
  [coderCopy encodeObject:certParams forKey:@"_certParams"];
  [coderCopy encodeObject:self->_accountEmail forKey:@"_accountEmail"];
  [coderCopy encodeObject:self->_correspEmail forKey:@"_correspEmail"];
  [coderCopy encodeObject:self->_searchCriteria forKey:@"_searchCriteria"];
  [coderCopy encodeObject:self->_secObjects forKey:@"_secObjects"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(MCCCertificateParams *)self->_certParams copy];
  v6 = v4[1];
  v4[1] = v5;

  v7 = [(NSString *)self->_accountEmail copy];
  v8 = v4[2];
  v4[2] = v7;

  v9 = [(NSString *)self->_correspEmail copy];
  v10 = v4[3];
  v4[3] = v9;

  v11 = [(NSDictionary *)self->_searchCriteria copy];
  v12 = v4[4];
  v4[4] = v11;

  v13 = [(NSDictionary *)self->_secObjects copy];
  v14 = v4[5];
  v4[5] = v13;

  return v4;
}

@end