@interface SSVServerAuthenticateResponse
- (SSVServerAuthenticateResponse)initWithXPCEncoding:(id)a3;
- (id)copyXPCEncoding;
@end

@implementation SSVServerAuthenticateResponse

- (SSVServerAuthenticateResponse)initWithXPCEncoding:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SSVServerAuthenticateResponse;
  v5 = [(SSVServerAuthenticateResponse *)&v12 init];
  if (v5)
  {
    objc_opt_class();
    v6 = SSXPCDictionaryCopyCFObjectWithClass(v4, "0");
    authenticatedAccountIdentifier = v5->_authenticatedAccountIdentifier;
    v5->_authenticatedAccountIdentifier = v6;

    v5->_performedButtonIndex = xpc_dictionary_get_int64(v4, "1");
    v5->_selectedButtonIndex = xpc_dictionary_get_int64(v4, "3");
    objc_opt_class();
    v8 = SSXPCDictionaryCopyCFObjectWithClass(v4, "2");
    if (v8)
    {
      v9 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v8];
      redirectURL = v5->_redirectURL;
      v5->_redirectURL = v9;
    }
  }

  return v5;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  SSXPCDictionarySetCFObject(v3, "0", self->_authenticatedAccountIdentifier);
  xpc_dictionary_set_int64(v3, "1", self->_performedButtonIndex);
  SSXPCDictionarySetCFObject(v3, "2", [(NSURL *)self->_redirectURL absoluteString]);
  xpc_dictionary_set_int64(v3, "3", self->_selectedButtonIndex);
  return v3;
}

@end