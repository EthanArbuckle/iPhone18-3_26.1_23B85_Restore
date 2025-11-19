@interface STSAuxiliaryTransaction
- (STSAuxiliaryTransaction)initWithCoder:(id)a3;
- (STSAuxiliaryTransaction)initWithCredential:(id)a3 error:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STSAuxiliaryTransaction

- (STSAuxiliaryTransaction)initWithCredential:(id)a3 error:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = STSAuxiliaryTransaction;
  v9 = [(STSAuxiliaryTransaction *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_credential, a3);
    objc_storeStrong(&v10->_error, a4);
  }

  return v10;
}

- (STSAuxiliaryTransaction)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = STSAuxiliaryTransaction;
  v5 = [(STSAuxiliaryTransaction *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"STSAuxiliaryTransactionKeyCredential"];
    credential = v5->_credential;
    v5->_credential = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"STSAuxiliaryTransactionKeyError"];
    error = v5->_error;
    v5->_error = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  credential = self->_credential;
  v5 = a3;
  [v5 encodeObject:credential forKey:@"STSAuxiliaryTransactionKeyCredential"];
  [v5 encodeObject:self->_error forKey:@"STSAuxiliaryTransactionKeyError"];
}

@end