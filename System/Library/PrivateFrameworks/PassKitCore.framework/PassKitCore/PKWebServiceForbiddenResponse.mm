@interface PKWebServiceForbiddenResponse
- (PKWebServiceForbiddenResponse)initWithData:(id)data;
@end

@implementation PKWebServiceForbiddenResponse

- (PKWebServiceForbiddenResponse)initWithData:(id)data
{
  v23 = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = PKWebServiceForbiddenResponse;
  v3 = [(PKWebServiceResponse *)&v18 initWithData:data];
  v4 = v3;
  if (v3)
  {
    jSONObject = [(PKWebServiceResponse *)v3 JSONObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [jSONObject PKStringForKey:@"errorCode"];
      v7 = v6;
      if (v6)
      {
        [MEMORY[0x1E696AD98] numberWithInteger:{-[PKWebServiceForbiddenResponse integerValue](v6, "integerValue")}];
      }

      else
      {
        [jSONObject PKNumberForKey:@"errorCode"];
      }
      v13 = ;
      objc_storeStrong(&v4->_errorCode, v13);

      v14 = [jSONObject PKStringForKey:@"localizedTitle"];
      localizedTitle = v4->_localizedTitle;
      v4->_localizedTitle = v14;

      v16 = [jSONObject PKStringForKey:@"localizedDescription"];
      localizedDescription = v4->_localizedDescription;
      v4->_localizedDescription = v16;
    }

    else
    {
      localizedDescription = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(localizedDescription, OS_LOG_TYPE_DEFAULT))
      {
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v11 = objc_opt_class();
        *buf = 138543618;
        v20 = v10;
        v21 = 2112;
        v22 = v11;
        v12 = v11;
        _os_log_impl(&dword_1AD337000, localizedDescription, OS_LOG_TYPE_DEFAULT, "Malformed response: expected dictionary and received %{public}@ inside %@", buf, 0x16u);
      }

      v7 = v4;
      v4 = 0;
    }
  }

  return v4;
}

@end