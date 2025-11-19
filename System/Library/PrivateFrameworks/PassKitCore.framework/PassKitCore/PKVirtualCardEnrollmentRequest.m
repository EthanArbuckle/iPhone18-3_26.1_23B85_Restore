@interface PKVirtualCardEnrollmentRequest
- (BOOL)isEqual:(id)a3;
- (PKVirtualCardEnrollmentRequest)initWithCoder:(id)a3;
- (PKVirtualCardEnrollmentRequest)initWithPaymentPass:(id)a3;
- (id)initRefreshRequestWithPaymentPass:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKVirtualCardEnrollmentRequest

- (PKVirtualCardEnrollmentRequest)initWithPaymentPass:(id)a3
{
  v26[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v22.receiver = self;
  v22.super_class = PKVirtualCardEnrollmentRequest;
  v5 = [(PKPaymentRequest *)&v22 init];
  v6 = v5;
  if (v5)
  {
    [(PKPaymentRequest *)v5 setRequestType:12];
    v7 = [v4 devicePrimaryInAppPaymentApplication];
    v8 = PKLocalizedVirtualCardString(&cfstr_VirtualCardSet.isa, 0);
    v9 = [MEMORY[0x1E696AB90] decimalNumberWithString:@"0"];
    v10 = [PKPaymentSummaryItem summaryItemWithLabel:v8 amount:v9 type:0];
    v26[0] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
    [(PKPaymentRequest *)v6 setPaymentSummaryItems:v11];

    [(PKPaymentRequest *)v6 setCurrencyCode:@"USD"];
    [(PKPaymentRequest *)v6 setCountryCode:@"US"];
    v12 = PKPaymentNetworkNameForPaymentCredentialType([v7 paymentNetworkIdentifier]);
    v25 = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
    [(PKPaymentRequest *)v6 setSupportedNetworks:v13];

    v14 = +[PKPaymentWebService sharedService];
    v15 = [PKWebServiceVirtualCardFeature virtualCardFeatureWithWebService:v14];

    v16 = [v15 merchantId];
    [(PKPaymentRequest *)v6 setMerchantIdentifier:v16];

    [(PKPaymentRequest *)v6 setMerchantCapabilities:1];
    v17 = PKLocalizedVirtualCardString(&cfstr_VirtualCardSet_0.isa, 0);
    [(PKPaymentRequest *)v6 setLocalizedErrorMessage:v17];

    [(PKPaymentRequest *)v6 setConfirmationStyle:1];
    v18 = [v4 serialNumber];
    [(PKPaymentRequest *)v6 setPassSerialNumber:v18];

    v19 = [v4 passTypeIdentifier];
    [(PKPaymentRequest *)v6 setPassTypeIdentifier:v19];

    v23[0] = @"subject";
    v23[1] = @"pageTag";
    v24[0] = @"passManagement";
    v24[1] = @"virtualNumberAuthorization";
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
    [(PKPaymentRequest *)v6 setClientAnalyticsParameters:v20];

    [(PKPaymentRequest *)v6 setUseLocationBasedAuthorization:1];
    v6->_isPeerPaymentPass = [v4 isPeerPaymentPass];
  }

  return v6;
}

- (id)initRefreshRequestWithPaymentPass:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = [(PKVirtualCardEnrollmentRequest *)self initWithPaymentPass:a3];
  v4 = v3;
  if (v3)
  {
    [(PKPaymentRequest *)v3 setRequestType:14];
    v5 = PKLocalizedVirtualCardString(&cfstr_VirtualCardRef_1.isa, 0);
    v6 = [MEMORY[0x1E696AB90] decimalNumberWithString:@"0"];
    v7 = [PKPaymentSummaryItem summaryItemWithLabel:v5 amount:v6 type:0];
    v10[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    [(PKPaymentRequest *)v4 setPaymentSummaryItems:v8];
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v7 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v9.receiver = self, v9.super_class = PKVirtualCardEnrollmentRequest, [(PKPaymentRequest *)&v9 isEqual:v5]))
  {
    isPeerPaymentPass = self->_isPeerPaymentPass;
    v7 = isPeerPaymentPass == [(PKVirtualCardEnrollmentRequest *)v5 isPeerPaymentPass];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_isPeerPaymentPass - v4 + 32 * v4;

  return v5;
}

- (PKVirtualCardEnrollmentRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = PKVirtualCardEnrollmentRequest;
  v5 = [(PKPaymentRequest *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_isPeerPaymentPass = [v4 decodeBoolForKey:@"isPeerPaymentPass"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKVirtualCardEnrollmentRequest;
  v4 = a3;
  [(PKPaymentRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:self->_isPeerPaymentPass forKey:{@"isPeerPaymentPass", v5.receiver, v5.super_class}];
}

@end