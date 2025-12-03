@interface STSAuxiliaryTransaction
- (STSAuxiliaryTransaction)initWithCoder:(id)coder;
- (STSAuxiliaryTransaction)initWithCredential:(id)credential error:(id)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STSAuxiliaryTransaction

- (STSAuxiliaryTransaction)initWithCredential:(id)credential error:(id)error
{
  credentialCopy = credential;
  errorCopy = error;
  v12.receiver = self;
  v12.super_class = STSAuxiliaryTransaction;
  v9 = [(STSAuxiliaryTransaction *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_credential, credential);
    objc_storeStrong(&v10->_error, error);
  }

  return v10;
}

- (STSAuxiliaryTransaction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = STSAuxiliaryTransaction;
  v5 = [(STSAuxiliaryTransaction *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"STSAuxiliaryTransactionKeyCredential"];
    credential = v5->_credential;
    v5->_credential = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"STSAuxiliaryTransactionKeyError"];
    error = v5->_error;
    v5->_error = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  credential = self->_credential;
  coderCopy = coder;
  [coderCopy encodeObject:credential forKey:@"STSAuxiliaryTransactionKeyCredential"];
  [coderCopy encodeObject:self->_error forKey:@"STSAuxiliaryTransactionKeyError"];
}

@end