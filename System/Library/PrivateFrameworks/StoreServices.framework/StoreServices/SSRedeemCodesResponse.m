@interface SSRedeemCodesResponse
- (SSRedeemCodesResponse)initWithXPCEncoding:(id)a3;
- (id)copyXPCEncoding;
- (id)dictionaryForCode:(id)a3;
- (id)errorForCode:(id)a3;
- (id)responseDictionaryForCode:(id)a3;
- (void)dealloc;
- (void)setCodeResponses:(id)a3;
- (void)setFailedCodes:(id)a3;
- (void)setRedeemedCodes:(id)a3;
@end

@implementation SSRedeemCodesResponse

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSRedeemCodesResponse;
  [(SSRedeemCodesResponse *)&v3 dealloc];
}

- (id)dictionaryForCode:(id)a3
{
  v3 = [(NSDictionary *)self->_redeemedCodes objectForKey:a3];

  return v3;
}

- (id)errorForCode:(id)a3
{
  v3 = [(NSDictionary *)self->_errors objectForKey:a3];

  return v3;
}

- (id)responseDictionaryForCode:(id)a3
{
  v3 = [(NSDictionary *)self->_codeResponses objectForKey:a3];

  return v3;
}

- (void)setCodeResponses:(id)a3
{
  codeResponses = self->_codeResponses;
  if (codeResponses != a3)
  {

    self->_codeResponses = [a3 copy];
  }
}

- (void)setFailedCodes:(id)a3
{
  errors = self->_errors;
  if (errors != a3)
  {

    self->_errors = [a3 copy];
  }
}

- (void)setRedeemedCodes:(id)a3
{
  redeemedCodes = self->_redeemedCodes;
  if (redeemedCodes != a3)
  {

    self->_redeemedCodes = [a3 copy];
  }
}

- (SSRedeemCodesResponse)initWithXPCEncoding:(id)a3
{
  if (a3 && (v5 = MEMORY[0x1DA6E0380](a3, a2), v6 = MEMORY[0x1E69E9E80], v5 == MEMORY[0x1E69E9E80]))
  {
    v13.receiver = self;
    v13.super_class = SSRedeemCodesResponse;
    v7 = [(SSRedeemCodesResponse *)&v13 init];
    if (v7)
    {
      objc_opt_class();
      v7->_codeResponses = SSXPCDictionaryCopyCFObjectWithClass(a3, "0");
      objc_opt_class();
      v7->_redeemedCodes = SSXPCDictionaryCopyCFObjectWithClass(a3, "2");
      v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
      value = xpc_dictionary_get_value(a3, "1");
      if (value)
      {
        v11 = value;
        if (MEMORY[0x1DA6E0380]() == v6)
        {
          applier[0] = MEMORY[0x1E69E9820];
          applier[1] = 3221225472;
          applier[2] = __45__SSRedeemCodesResponse_initWithXPCEncoding___block_invoke;
          applier[3] = &unk_1E84B1980;
          applier[4] = v9;
          xpc_dictionary_apply(v11, applier);
        }
      }

      if ([v9 count])
      {
        v7->_errors = [v9 copy];
      }
    }
  }

  else
  {

    return 0;
  }

  return v7;
}

uint64_t __45__SSRedeemCodesResponse_initWithXPCEncoding___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithXPCEncoding:a3];
  if (v5)
  {
    v6 = v5;
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:a2];
    [*(a1 + 32) setObject:v6 forKey:v7];
  }

  return 1;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  SSXPCDictionarySetCFObject(v3, "0", self->_codeResponses);
  SSXPCDictionarySetCFObject(v3, "1", self->_errors);
  SSXPCDictionarySetCFObject(v3, "2", self->_redeemedCodes);
  return v3;
}

@end