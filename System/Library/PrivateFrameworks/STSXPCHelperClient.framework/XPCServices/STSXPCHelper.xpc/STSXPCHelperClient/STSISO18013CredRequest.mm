@interface STSISO18013CredRequest
- (STSISO18013CredRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STSISO18013CredRequest

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STSISO18013CredRequest;
  v4 = a3;
  [(STSCredentialRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_requestByNamespace forKey:{@"requestByNamespace", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_authACL forKey:@"authACL"];
  [v4 encodeObject:self->_docType forKey:@"docType"];
}

- (STSISO18013CredRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = STSISO18013CredRequest;
  v5 = [(STSCredentialRequest *)&v17 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [NSSet setWithObjects:v6, v7, v8, objc_opt_class(), 0];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"requestByNamespace"];
    requestByNamespace = v5->_requestByNamespace;
    v5->_requestByNamespace = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"authACL"];
    authACL = v5->_authACL;
    v5->_authACL = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"docType"];
    docType = v5->_docType;
    v5->_docType = v14;
  }

  return v5;
}

@end