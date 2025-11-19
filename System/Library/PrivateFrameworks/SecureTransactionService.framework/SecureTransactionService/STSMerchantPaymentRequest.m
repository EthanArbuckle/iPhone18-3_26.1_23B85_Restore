@interface STSMerchantPaymentRequest
- (STSMerchantPaymentRequest)initWithCoder:(id)a3;
- (STSMerchantPaymentRequest)initWithTransactionAmount:(id)a3 currencyCode:(id)a4 countryCode:(id)a5 transactionDate:(id)a6 merchantCapabilities:(int64_t)a7 merchantData:(id)a8 unpredictableNumber:(unsigned int)a9;
- (id)description;
- (id)toNFECommercePaymentRequest:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STSMerchantPaymentRequest

- (STSMerchantPaymentRequest)initWithTransactionAmount:(id)a3 currencyCode:(id)a4 countryCode:(id)a5 transactionDate:(id)a6 merchantCapabilities:(int64_t)a7 merchantData:(id)a8 unpredictableNumber:(unsigned int)a9
{
  v16 = a8;
  v20.receiver = self;
  v20.super_class = STSMerchantPaymentRequest;
  v17 = [(STSPaymentRequestBase *)&v20 initWithTransactionAmount:a3 currencyCode:a4 countryCode:a5 transactionDate:a6];
  v18 = v17;
  if (v17)
  {
    v17->_merchantCapabilities = a7;
    objc_storeStrong(&v17->_merchantData, a8);
    v18->_unpredictableNumber = a9;
  }

  return v18;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  merchantData = self->_merchantData;
  v5 = [(STSPaymentRequestBase *)self currencyCode];
  v6 = [(STSPaymentRequestBase *)self countryCode];
  v7 = [(STSPaymentRequestBase *)self transactionAmount];
  v8 = [(STSPaymentRequestBase *)self transactionDate];
  networkMerchantIdentifier = self->_networkMerchantIdentifier;
  v10 = [v3 stringWithFormat:@"STSMerchantPaymentRequest { merchantData=%@ currencyCode=%@ countryCode=%@ transactionAmount=%@ transactionDate=%@ merchantCapabilities=%lu unpredictableNumber=%ud networkMerchantIdentifier=%@ appletIdentifier=%@}", merchantData, v5, v6, v7, v8, self->_merchantCapabilities, self->_unpredictableNumber, networkMerchantIdentifier, self->_appletIdentifier];

  return v10;
}

- (STSMerchantPaymentRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = STSMerchantPaymentRequest;
  v5 = [(STSInAppPaymentRequest *)&v13 initWithCoder:v4];
  if (v5)
  {
    v5->_merchantCapabilities = [v4 decodeIntegerForKey:@"merchantCapabilities"];
    v5->_unpredictableNumber = [v4 decodeInt32ForKey:@"unpredictableNumber"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"merchantData"];
    merchantData = v5->_merchantData;
    v5->_merchantData = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"merchantIdentifier"];
    networkMerchantIdentifier = v5->_networkMerchantIdentifier;
    v5->_networkMerchantIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appletIdentifier"];
    appletIdentifier = v5->_appletIdentifier;
    v5->_appletIdentifier = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STSMerchantPaymentRequest;
  v4 = a3;
  [(STSInAppPaymentRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_merchantCapabilities forKey:{@"merchantCapabilities", v5.receiver, v5.super_class}];
  [v4 encodeInt32:self->_unpredictableNumber forKey:@"unpredictableNumber"];
  [v4 encodeObject:self->_merchantData forKey:@"merchantData"];
  [v4 encodeObject:self->_networkMerchantIdentifier forKey:@"merchantIdentifier"];
  [v4 encodeObject:self->_appletIdentifier forKey:@"appletIdentifier"];
}

- (id)toNFECommercePaymentRequest:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277D2C838]);
  [v5 setAppletIdentifier:v4];
  v6 = [(STSMerchantPaymentRequest *)self merchantData];
  [v5 setMerchantData:v6];

  v7 = [(STSMerchantPaymentRequest *)self networkMerchantIdentifier];
  [v5 setNetworkMerchantIdentifier:v7];

  v8 = [(STSPaymentRequestBase *)self currencyCode];
  [v5 setCurrencyCode:v8];

  v9 = [(STSPaymentRequestBase *)self countryCode];
  [v5 setCountryCode:v9];

  v10 = [(STSPaymentRequestBase *)self transactionAmount];
  [v5 setTransactionAmount:v10];

  v11 = [(STSPaymentRequestBase *)self transactionDate];
  [v5 setTransactionDate:v11];

  [v5 setUnpredictableNumber:{-[STSMerchantPaymentRequest unpredictableNumber](self, "unpredictableNumber")}];
  if (v4)
  {
    [v5 setAppletIdentifier:v4];
  }

  else
  {
    v12 = [(STSMerchantPaymentRequest *)self appletIdentifier];
    [v5 setAppletIdentifier:v12];
  }

  [v5 setMerchantCapabilities:{-[STSMerchantPaymentRequest merchantCapabilities](self, "merchantCapabilities") & 2 | -[STSMerchantPaymentRequest merchantCapabilities](self, "merchantCapabilities") & 1 | -[STSMerchantPaymentRequest merchantCapabilities](self, "merchantCapabilities") & 0x40}];

  return v5;
}

@end