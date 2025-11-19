@interface PKVPANPaymentCredentialResponse
- (PKVPANPaymentCredentialResponse)initWithData:(id)a3;
@end

@implementation PKVPANPaymentCredentialResponse

- (PKVPANPaymentCredentialResponse)initWithData:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = PKVPANPaymentCredentialResponse;
  v3 = [(PKWebServiceResponse *)&v19 initWithData:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [(PKWebServiceResponse *)v3 JSONObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v5 PKDictionaryForKey:@"virtualCard"];
      v7 = [v6 PKStringForKey:@"identifier"];
      vpanIdentifier = v4->_vpanIdentifier;
      v4->_vpanIdentifier = v7;

      v9 = [v6 PKStringForKey:@"expiration"];
      expiration = v4->_expiration;
      v4->_expiration = v9;

      v11 = [v6 PKDictionaryForKey:@"credentials"];
      v12 = [[PKEncryptedVPANPaymentCredentials alloc] initWithDictionary:v11];
      credentials = v4->_credentials;
      v4->_credentials = v12;
    }

    else
    {
      v11 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        v16 = objc_opt_class();
        *buf = 138543618;
        v21 = v15;
        v22 = 2112;
        v23 = v16;
        v17 = v16;
        _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Malformed response: expected dictionary and received %{public}@ inside %@", buf, 0x16u);
      }

      v6 = v4;
      v4 = 0;
    }
  }

  return v4;
}

@end