@interface STSISO18013CredRequest
- (STSISO18013CredRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STSISO18013CredRequest

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STSISO18013CredRequest;
  coderCopy = coder;
  [(STSCredentialRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_requestByNamespace forKey:{@"requestByNamespace", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_authACL forKey:@"authACL"];
  [coderCopy encodeObject:self->_docType forKey:@"docType"];
}

- (STSISO18013CredRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = STSISO18013CredRequest;
  v5 = [(STSCredentialRequest *)&v18 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v6 setWithObjects:{v7, v8, v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"requestByNamespace"];
    requestByNamespace = v5->_requestByNamespace;
    v5->_requestByNamespace = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"authACL"];
    authACL = v5->_authACL;
    v5->_authACL = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"docType"];
    docType = v5->_docType;
    v5->_docType = v15;
  }

  return v5;
}

@end