@interface STSPaymentResponseBase
- (STSPaymentResponseBase)initWithCoder:(id)a3;
- (id)initFromNFECommercePaymentResponse:(id)a3;
- (id)initFromNFPeerPaymentResponse:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STSPaymentResponseBase

- (id)initFromNFECommercePaymentResponse:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = STSPaymentResponseBase;
  v5 = [(STSPaymentResponseBase *)&v13 init];
  if (v5)
  {
    v6 = [v4 transactionIdentifier];
    transactionIdentifier = v5->_transactionIdentifier;
    v5->_transactionIdentifier = v6;

    v8 = [v4 transactionData];
    transactionData = v5->_transactionData;
    v5->_transactionData = v8;

    v10 = [v4 certs];
    certificates = v5->_certificates;
    v5->_certificates = v10;
  }

  return v5;
}

- (id)initFromNFPeerPaymentResponse:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = STSPaymentResponseBase;
  v5 = [(STSPaymentResponseBase *)&v13 init];
  if (v5)
  {
    v6 = [v4 transactionData];
    transactionData = v5->_transactionData;
    v5->_transactionData = v6;

    v8 = [v4 transactionIdentifier];
    transactionIdentifier = v5->_transactionIdentifier;
    v5->_transactionIdentifier = v8;

    v10 = [v4 certificates];
    certificates = v5->_certificates;
    v5->_certificates = v10;
  }

  return v5;
}

- (STSPaymentResponseBase)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = STSPaymentResponseBase;
  v5 = [(STSPaymentResponseBase *)&v14 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transactionIdentifier"];
    transactionIdentifier = v5->_transactionIdentifier;
    v5->_transactionIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transactionData"];
    transactionData = v5->_transactionData;
    v5->_transactionData = v8;

    v10 = objc_opt_class();
    v11 = [v4 decodeDictionaryWithKeysOfClass:v10 objectsOfClass:objc_opt_class() forKey:@"certs"];
    certificates = v5->_certificates;
    v5->_certificates = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  transactionIdentifier = self->_transactionIdentifier;
  v5 = a3;
  [v5 encodeObject:transactionIdentifier forKey:@"transactionIdentifier"];
  [v5 encodeObject:self->_transactionData forKey:@"transactionData"];
  [v5 encodeObject:self->_certificates forKey:@"certs"];
}

@end