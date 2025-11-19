@interface PKWebServiceResponse
+ (id)responseWithData:(id)a3;
+ (id)responseWithData:(id)a3 headers:(id)a4;
- (PKWebServiceResponse)initWithCoder:(id)a3;
- (PKWebServiceResponse)initWithData:(id)a3 headers:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKWebServiceResponse

- (PKWebServiceResponse)initWithData:(id)a3 headers:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [v6 length] != 0;
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_opt_class() jsonDataOptional];
  v10 = v9;
  if (!v8 && !v9)
  {
    p_super = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = objc_opt_class();
      v12 = v25;
      _os_log_impl(&dword_1AD337000, p_super, OS_LOG_TYPE_DEFAULT, "Malformed response: %@ is missing data", buf, 0xCu);
    }

    v13 = 0;
    v14 = 0;
    v15 = self;
    goto LABEL_20;
  }

  if (v8)
  {
    v23 = 0;
    v15 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v6 options:0 error:&v23];
    v13 = v23;
    if (v15)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v15 = 0;
    v13 = 0;
  }

  if ((v10 ^ 1 | v8))
  {
    v16 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v13 localizedDescription];
      *buf = 138412290;
      v25 = v17;
      _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, "Malformed response: %@", buf, 0xCu);
    }

    v15 = 0;
    v14 = 0;
    p_super = &self->super;
    goto LABEL_20;
  }

LABEL_17:
  v22.receiver = self;
  v22.super_class = PKWebServiceResponse;
  v14 = [(PKWebServiceResponse *)&v22 init];
  if (v14)
  {
    v18 = [v6 copy];
    rawData = v14->_rawData;
    v14->_rawData = v18;

    objc_storeStrong(&v14->_JSONObject, v15);
    if (v7)
    {
      v20 = v7;
      p_super = &v14->_headers->super;
      v14->_headers = v20;
LABEL_20:
    }
  }

  return v14;
}

+ (id)responseWithData:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithData:v3];

  return v4;
}

+ (id)responseWithData:(id)a3 headers:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_alloc(objc_opt_class()) initWithData:v6 headers:v5];

  return v7;
}

- (PKWebServiceResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rawData"];

  v6 = [(PKWebServiceResponse *)self initWithData:v5];
  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PKWebServiceResponse *)self rawData];
  [v4 encodeObject:v5 forKey:@"rawData"];
}

@end