@interface SSAuthorizationRequest
- (BOOL)start;
- (SSAuthorizationRequest)initWithAuthorizationToken:(id)token accountIdentifier:(id)identifier;
- (SSAuthorizationRequest)initWithXPCEncoding:(id)encoding;
- (id)_init;
- (id)copyXPCEncoding;
- (void)startWithAuthorizationResponseBlock:(id)block;
- (void)startWithCompletionBlock:(id)block;
@end

@implementation SSAuthorizationRequest

- (id)_init
{
  v3.receiver = self;
  v3.super_class = SSAuthorizationRequest;
  return [(SSRequest *)&v3 init];
}

- (SSAuthorizationRequest)initWithAuthorizationToken:(id)token accountIdentifier:(id)identifier
{
  tokenCopy = token;
  identifierCopy = identifier;
  v8 = identifierCopy;
  if (tokenCopy)
  {
    if (identifierCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Must provide token"];
    if (v8)
    {
      goto LABEL_3;
    }
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Must provide accountIdentifier"];
LABEL_3:
  v15.receiver = self;
  v15.super_class = SSAuthorizationRequest;
  v9 = [(SSRequest *)&v15 init];
  if (v9)
  {
    v10 = [v8 copy];
    accountIdentifier = v9->_accountIdentifier;
    v9->_accountIdentifier = v10;

    if ([tokenCopy conformsToProtocol:&unk_1F507D4B0])
    {
      v12 = [tokenCopy copy];
    }

    else
    {
      v12 = tokenCopy;
    }

    token = v9->_token;
    v9->_token = v12;
  }

  return v9;
}

- (void)startWithAuthorizationResponseBlock:(id)block
{
  v23 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  if (SSIsInternalBuild() && _os_feature_enabled_impl())
  {
    v5 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v5)
    {
      v5 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = shouldLog | 2;
    }

    else
    {
      v7 = shouldLog;
    }

    oSLogObject = [v5 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v9 = v7;
    }

    else
    {
      v9 = v7 & 2;
    }

    if (v9)
    {
      v21 = 136446210;
      v22 = "[SSAuthorizationRequest startWithAuthorizationResponseBlock:]";
      LODWORD(v18) = 12;
      v10 = _os_log_send_and_compose_impl();

      if (!v10)
      {
LABEL_15:

        goto LABEL_16;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:{4, &v21, v18}];
      free(v10);
      SSFileLog(v5, @"%@", v11, v12, v13, v14, v15, v16, oSLogObject);
    }

    goto LABEL_15;
  }

LABEL_16:
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __62__SSAuthorizationRequest_startWithAuthorizationResponseBlock___block_invoke;
  v19[3] = &unk_1E84ABEF0;
  v19[4] = self;
  v20 = blockCopy;
  v17 = blockCopy;
  [(SSRequest *)self _startWithMessageID:57 messageBlock:v19];
}

void __62__SSAuthorizationRequest_startWithAuthorizationResponseBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 40))
  {
    if (v3 == MEMORY[0x1E69E9E18])
    {
      v7 = SSError(@"SSErrorDomain", 121, 0, 0);
      v10 = 0;
    }

    else
    {
      v5 = objc_alloc(MEMORY[0x1E696ABC0]);
      v6 = xpc_dictionary_get_value(v4, "2");
      v7 = [v5 initWithXPCEncoding:v6];

      v8 = [SSURLConnectionResponse alloc];
      v9 = xpc_dictionary_get_value(v4, "1");
      v10 = [(SSURLConnectionResponse *)v8 initWithXPCEncoding:v9];
    }

    if (!(v10 | v7))
    {
      v7 = SSError(@"SSErrorDomain", 100, 0, 0);
    }

    v11 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__SSAuthorizationRequest_startWithAuthorizationResponseBlock___block_invoke_2;
    block[3] = &unk_1E84ABEC8;
    v12 = *(a1 + 40);
    v17 = v7;
    v18 = v12;
    v16 = v10;
    v13 = v7;
    v14 = v10;
    dispatch_async(v11, block);
  }

  [*(a1 + 32) _shutdownRequest];
}

- (BOOL)start
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __31__SSAuthorizationRequest_start__block_invoke;
  v3[3] = &unk_1E84AF0B8;
  v3[4] = self;
  [(SSAuthorizationRequest *)self startWithAuthorizationResponseBlock:v3];
  return 1;
}

void __31__SSAuthorizationRequest_start__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__SSAuthorizationRequest_start__block_invoke_2;
  block[3] = &unk_1E84AC078;
  block[4] = *(a1 + 32);
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __31__SSAuthorizationRequest_start__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (*(a1 + 40))
  {
    if (objc_opt_respondsToSelector())
    {
      [v2 authorizationRequest:*(a1 + 32) didReceiveResponse:*(a1 + 40)];
    }

    if (objc_opt_respondsToSelector())
    {
      [v2 requestDidFinish:*(a1 + 32)];
    }
  }

  else if (objc_opt_respondsToSelector())
  {
    [v2 request:*(a1 + 32) didFailWithError:*(a1 + 48)];
  }
}

- (void)startWithCompletionBlock:(id)block
{
  blockCopy = block;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__SSAuthorizationRequest_startWithCompletionBlock___block_invoke;
  v6[3] = &unk_1E84AE260;
  v7 = blockCopy;
  v5 = blockCopy;
  [(SSAuthorizationRequest *)self startWithAuthorizationResponseBlock:v6];
}

uint64_t __51__SSAuthorizationRequest_startWithCompletionBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  dispatchQueue = self->super._dispatchQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __41__SSAuthorizationRequest_copyXPCEncoding__block_invoke;
  v8[3] = &unk_1E84AC028;
  v5 = v3;
  v9 = v5;
  selfCopy = self;
  dispatch_sync(dispatchQueue, v8);
  v6 = v5;

  return v6;
}

uint64_t __41__SSAuthorizationRequest_copyXPCEncoding__block_invoke(uint64_t a1)
{
  SSXPCDictionarySetObject(*(a1 + 32), "50", *(*(a1 + 40) + 96));
  xpc_dictionary_set_BOOL(*(a1 + 32), "59", *(*(a1 + 40) + 104));
  SSXPCDictionarySetObject(*(a1 + 32), "52", *(*(a1 + 40) + 152));
  SSXPCDictionarySetObject(*(a1 + 32), "53", *(*(a1 + 40) + 112));
  SSXPCDictionarySetCFObject(*(a1 + 32), "54", *(*(a1 + 40) + 120));
  SSXPCDictionarySetObject(*(a1 + 32), "55", *(*(a1 + 40) + 128));
  xpc_dictionary_set_BOOL(*(a1 + 32), "56", *(*(a1 + 40) + 136));
  xpc_dictionary_set_BOOL(*(a1 + 32), "57", *(*(a1 + 40) + 137));
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 160);

  return SSXPCDictionarySetObject(v2, "58", v3);
}

- (SSAuthorizationRequest)initWithXPCEncoding:(id)encoding
{
  encodingCopy = encoding;
  v5 = encodingCopy;
  if (encodingCopy && MEMORY[0x1DA6E0380](encodingCopy) == MEMORY[0x1E69E9E80])
  {
    v27.receiver = self;
    v27.super_class = SSAuthorizationRequest;
    v6 = [(SSRequest *)&v27 init];
    if (v6)
    {
      objc_opt_class();
      v8 = SSXPCDictionaryCopyCFObjectWithClass(v5, "50");
      accountIdentifier = v6->_accountIdentifier;
      v6->_accountIdentifier = v8;

      v6->_allowSilentAuthentication = xpc_dictionary_get_BOOL(v5, "59");
      v10 = objc_opt_class();
      v11 = SSXPCDictionaryCopyObjectWithClass(v5, "53", v10);
      clientIdentifierHeader = v6->_clientIdentifierHeader;
      v6->_clientIdentifierHeader = v11;

      v13 = objc_opt_class();
      v14 = SSXPCDictionaryCopyObjectWithClass(v5, "52", v13);
      familyAccountIdentifier = v6->_familyAccountIdentifier;
      v6->_familyAccountIdentifier = v14;

      v16 = objc_opt_class();
      v17 = SSXPCDictionaryCopyObjectWithClass(v5, "53", v16);
      keybagPath = v6->_keybagPath;
      v6->_keybagPath = v17;

      v19 = SSXPCDictionaryCopyCFObject(v5, "54");
      token = v6->_token;
      v6->_token = v19;

      v21 = objc_opt_class();
      v22 = SSXPCDictionaryCopyObjectWithClass(v5, "55", v21);
      reason = v6->_reason;
      v6->_reason = v22;

      v6->_shouldAddKeysToKeyBag = xpc_dictionary_get_BOOL(v5, "56");
      v6->_shouldPromptForCredentials = xpc_dictionary_get_BOOL(v5, "57");
      v24 = objc_opt_class();
      v25 = SSXPCDictionaryCopyObjectWithClass(v5, "58", v24);
      userAgent = v6->_userAgent;
      v6->_userAgent = v25;
    }
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

@end