@interface STSPeerPaymentTransferRequest
- (STSPeerPaymentTransferRequest)init;
- (STSPeerPaymentTransferRequest)initWithCoder:(id)a3;
- (STSPeerPaymentTransferRequest)initWithTransactionAmount:(id)a3 currencyCode:(id)a4 countryCode:(id)a5 transactionDate:(id)a6 appleTransactionHash:(id)a7 publicTransactionHash:(id)a8 nonce:(id)a9;
- (id)description;
- (id)toNFPeerPaymentTransferRequest;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STSPeerPaymentTransferRequest

- (STSPeerPaymentTransferRequest)initWithTransactionAmount:(id)a3 currencyCode:(id)a4 countryCode:(id)a5 transactionDate:(id)a6 appleTransactionHash:(id)a7 publicTransactionHash:(id)a8 nonce:(id)a9
{
  v21 = a7;
  v16 = a8;
  v17 = a9;
  v22.receiver = self;
  v22.super_class = STSPeerPaymentTransferRequest;
  v18 = [(STSPaymentRequestBase *)&v22 initWithTransactionAmount:a3 currencyCode:a4 countryCode:a5 transactionDate:a6];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_nonce, a9);
    objc_storeStrong(&v19->_appleTransactionHash, a7);
    objc_storeStrong(&v19->_publicTransactionHash, a8);
  }

  return v19;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(STSPaymentRequestBase *)self transactionAmount];
  appleTransactionHash = self->_appleTransactionHash;
  publicTransactionHash = self->_publicTransactionHash;
  v7 = [(STSPaymentRequestBase *)self transactionDate];
  v8 = [(STSPaymentRequestBase *)self currencyCode];
  v9 = [(STSPaymentRequestBase *)self countryCode];
  v10 = [v3 stringWithFormat:@"STSPeerPaymentTransferRequest { transactionAmount=%@ appleTransactionHash=%@ publicTransactionHash=%@ transactionDate=%@ transactionCurrency=%@ transactionCountry=%@ nonce=%@}", v4, appleTransactionHash, publicTransactionHash, v7, v8, v9, self->_nonce];

  return v10;
}

- (STSPeerPaymentTransferRequest)init
{
  v3.receiver = self;
  v3.super_class = STSPeerPaymentTransferRequest;
  return [(STSPeerPaymentTransferRequest *)&v3 init];
}

- (STSPeerPaymentTransferRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = STSPeerPaymentTransferRequest;
  v5 = [(STSPaymentRequestBase *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transferAppleTransactionHash"];
    appleTransactionHash = v5->_appleTransactionHash;
    v5->_appleTransactionHash = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transferPublicTransactionHash"];
    publicTransactionHash = v5->_publicTransactionHash;
    v5->_publicTransactionHash = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transferNonce"];
    nonce = v5->_nonce;
    v5->_nonce = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STSPeerPaymentTransferRequest;
  v4 = a3;
  [(STSPaymentRequestBase *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_appleTransactionHash forKey:{@"transferAppleTransactionHash", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_publicTransactionHash forKey:@"transferPublicTransactionHash"];
  [v4 encodeObject:self->_nonce forKey:@"transferNonce"];
}

- (id)toNFPeerPaymentTransferRequest
{
  v3 = objc_alloc_init(MEMORY[0x277D2C858]);
  v4 = [(STSPaymentRequestBase *)self transactionAmount];
  [v3 setTransactionAmount:v4];

  v5 = [(STSPaymentRequestBase *)self transactionDate];
  [v3 setTransactionDate:v5];

  v6 = [(STSPaymentRequestBase *)self currencyCode];
  [v3 setTransactionCurrency:v6];

  v7 = [(STSPaymentRequestBase *)self countryCode];
  [v3 setTransactionCountry:v7];

  [v3 setAppleTransactionHash:self->_appleTransactionHash];
  [v3 setPublicTransactionHash:self->_publicTransactionHash];
  [v3 setNonce:self->_nonce];

  return v3;
}

@end