@interface PKVPANPaymentSessionRequest
- (PKVPANPaymentSessionRequest)initWithDeviceIdentifier:(id)identifier;
- (id)_urlRequestWithServiceURL:(id)l appleAccountInformation:(id)information;
@end

@implementation PKVPANPaymentSessionRequest

- (PKVPANPaymentSessionRequest)initWithDeviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = PKVPANPaymentSessionRequest;
  v5 = [(PKOverlayableWebServiceRequest *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    deviceIdentifier = v5->_deviceIdentifier;
    v5->_deviceIdentifier = v6;
  }

  return v5;
}

- (id)_urlRequestWithServiceURL:(id)l appleAccountInformation:(id)information
{
  v16 = *MEMORY[0x1E69E9840];
  deviceIdentifier = self->_deviceIdentifier;
  v13 = @"devices";
  v14 = deviceIdentifier;
  v15 = @"virtualCardPaymentSession";
  v7 = MEMORY[0x1E695DEC8];
  informationCopy = information;
  lCopy = l;
  v10 = [v7 arrayWithObjects:&v13 count:3];
  v11 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:lCopy version:@"1" endpointComponents:v10 queryParameters:0 appleAccountInformation:informationCopy, v13, v14, v15, v16];

  [v11 setHTTPMethod:@"POST"];

  return v11;
}

@end