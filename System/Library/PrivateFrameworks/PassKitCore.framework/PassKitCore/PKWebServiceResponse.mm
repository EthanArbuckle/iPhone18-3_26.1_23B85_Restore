@interface PKWebServiceResponse
+ (id)responseWithData:(id)data;
+ (id)responseWithData:(id)data headers:(id)headers;
- (PKWebServiceResponse)initWithCoder:(id)coder;
- (PKWebServiceResponse)initWithData:(id)data headers:(id)headers;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKWebServiceResponse

- (PKWebServiceResponse)initWithData:(id)data headers:(id)headers
{
  v26 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  headersCopy = headers;
  if (dataCopy)
  {
    v8 = [dataCopy length] != 0;
  }

  else
  {
    v8 = 0;
  }

  jsonDataOptional = [objc_opt_class() jsonDataOptional];
  v10 = jsonDataOptional;
  if (!v8 && !jsonDataOptional)
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
    selfCopy = self;
    goto LABEL_20;
  }

  if (v8)
  {
    v23 = 0;
    selfCopy = [MEMORY[0x1E696ACB0] JSONObjectWithData:dataCopy options:0 error:&v23];
    v13 = v23;
    if (selfCopy)
    {
      goto LABEL_17;
    }
  }

  else
  {
    selfCopy = 0;
    v13 = 0;
  }

  if ((v10 ^ 1 | v8))
  {
    v16 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      localizedDescription = [v13 localizedDescription];
      *buf = 138412290;
      v25 = localizedDescription;
      _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, "Malformed response: %@", buf, 0xCu);
    }

    selfCopy = 0;
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
    v18 = [dataCopy copy];
    rawData = v14->_rawData;
    v14->_rawData = v18;

    objc_storeStrong(&v14->_JSONObject, selfCopy);
    if (headersCopy)
    {
      v20 = headersCopy;
      p_super = &v14->_headers->super;
      v14->_headers = v20;
LABEL_20:
    }
  }

  return v14;
}

+ (id)responseWithData:(id)data
{
  dataCopy = data;
  v4 = [objc_alloc(objc_opt_class()) initWithData:dataCopy];

  return v4;
}

+ (id)responseWithData:(id)data headers:(id)headers
{
  headersCopy = headers;
  dataCopy = data;
  v7 = [objc_alloc(objc_opt_class()) initWithData:dataCopy headers:headersCopy];

  return v7;
}

- (PKWebServiceResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rawData"];

  v6 = [(PKWebServiceResponse *)self initWithData:v5];
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  rawData = [(PKWebServiceResponse *)self rawData];
  [coderCopy encodeObject:rawData forKey:@"rawData"];
}

@end