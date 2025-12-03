@interface SSAuthenticateResponse
- (NSError)error;
- (NSString)description;
- (SSAuthenticateResponse)initWithXPCEncoding:(id)encoding;
- (id)copyXPCEncoding;
@end

@implementation SSAuthenticateResponse

- (NSError)error
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_error;
  domain = [(NSError *)v3 domain];
  v5 = [domain isEqualToString:*MEMORY[0x1E698C780]];

  if (v5)
  {
    if ([(NSError *)v3 code]== 5001)
    {
      v6 = MEMORY[0x1E696ABC0];
      userInfo = [(NSError *)v3 userInfo];
      v8 = [v6 errorWithDomain:@"SSServerErrorDomain" code:5001 userInfo:userInfo];
    }

    else if ([(NSError *)v3 code]== 5304)
    {
      v9 = MEMORY[0x1E696ABC0];
      userInfo = [(NSError *)v3 userInfo];
      v8 = [v9 errorWithDomain:@"SSServerErrorDomain" code:5304 userInfo:userInfo];
    }

    else
    {
      if ([(NSError *)v3 code]!= -5000)
      {
        goto LABEL_9;
      }

      v10 = MEMORY[0x1E696ABC0];
      userInfo = [(NSError *)v3 userInfo];
      v8 = [v10 errorWithDomain:@"SSServerErrorDomain" code:-5000 userInfo:userInfo];
    }

    v11 = v8;

    v3 = v11;
  }

LABEL_9:
  objc_sync_exit(selfCopy);

  return v3;
}

- (NSString)description
{
  string = [MEMORY[0x1E696AD60] string];
  v9.receiver = self;
  v9.super_class = SSAuthenticateResponse;
  v4 = [(SSAuthenticateResponse *)&v9 description];
  [string appendFormat:@"%@:\n", v4];

  authenticatedAccount = [(SSAuthenticateResponse *)self authenticatedAccount];
  [string appendFormat:@"  authenticatedAccount = %@\n", authenticatedAccount];

  [string appendFormat:@"  authenticateResponseType = %ld\n", -[SSAuthenticateResponse authenticateResponseType](self, "authenticateResponseType")];
  [string appendFormat:@"  credentialSource = %ld\n", -[SSAuthenticateResponse credentialSource](self, "credentialSource")];
  error = [(SSAuthenticateResponse *)self error];
  [string appendFormat:@"  error = %@\n", error];

  responseDictionary = [(SSAuthenticateResponse *)self responseDictionary];
  [string appendFormat:@"  responseDictionary = %@", responseDictionary];

  return string;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  SSXPCDictionarySetCFObject(v3, "0", [(SSAccount *)self->_authenticatedAccount uniqueIdentifier]);
  xpc_dictionary_set_int64(v3, "4", self->_credentialSource);
  xpc_dictionary_set_int64(v3, "3", self->_authenticateResponseType);
  SSXPCDictionarySetCFObject(v3, "1", self->_error);
  SSXPCDictionarySetCFObject(v3, "2", self->_responseDictionary);
  return v3;
}

- (SSAuthenticateResponse)initWithXPCEncoding:(id)encoding
{
  encodingCopy = encoding;
  v5 = encodingCopy;
  if (encodingCopy && MEMORY[0x1DA6E0380](encodingCopy) == MEMORY[0x1E69E9E80])
  {
    v19.receiver = self;
    v19.super_class = SSAuthenticateResponse;
    v7 = [(SSAuthenticateResponse *)&v19 init];
    if (v7)
    {
      objc_opt_class();
      v8 = SSXPCDictionaryCopyCFObjectWithClass(v5, "0");
      v9 = +[SSAccountStore defaultStore];
      v10 = [v9 accountWithUniqueIdentifier:v8];
      authenticatedAccount = v7->_authenticatedAccount;
      v7->_authenticatedAccount = v10;

      v7->_authenticateResponseType = xpc_dictionary_get_int64(v5, "3");
      v7->_credentialSource = xpc_dictionary_get_int64(v5, "4");
      v12 = objc_alloc(MEMORY[0x1E696ABC0]);
      v13 = xpc_dictionary_get_value(v5, "1");
      v14 = [v12 initWithXPCEncoding:v13];
      error = v7->_error;
      v7->_error = v14;

      objc_opt_class();
      v16 = SSXPCDictionaryCopyCFObjectWithClass(v5, "2");
      responseDictionary = v7->_responseDictionary;
      v7->_responseDictionary = v16;
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end