@interface SSLookupRequest
- (BOOL)start;
- (SSLookupProperties)_lookupProperties;
- (SSLookupRequest)init;
- (SSLookupRequest)initWithLocation:(id)location;
- (SSLookupRequest)initWithXPCEncoding:(id)encoding;
- (id)copyXPCEncoding;
- (void)dealloc;
- (void)setAuthenticatesIfNeeded:(BOOL)needed;
- (void)startWithCompletionBlock:(id)block;
- (void)startWithLookupBlock:(id)block;
@end

@implementation SSLookupRequest

- (SSLookupRequest)init
{
  v5.receiver = self;
  v5.super_class = SSLookupRequest;
  v2 = [(SSRequest *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(SSLookupProperties);
    v2->_properties = v3;
    [(SSLookupProperties *)v3 setValue:@"1" forRequestParameter:@"version"];
  }

  return v2;
}

- (SSLookupRequest)initWithLocation:(id)location
{
  v4 = [(SSLookupRequest *)self init];
  v5 = v4;
  if (v4)
  {
    [(SSLookupProperties *)v4->_properties setLocation:location];
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSLookupRequest;
  [(SSRequest *)&v3 dealloc];
}

- (void)setAuthenticatesIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  if ([(SSLookupRequest *)self authenticatesIfNeeded]!= needed)
  {
    self->_personalizationStyle = neededCopy;
  }
}

- (void)startWithLookupBlock:(id)block
{
  v23 = *MEMORY[0x1E69E9840];
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

    if (os_log_type_enabled([v5 OSLogObject], OS_LOG_TYPE_DEBUG))
    {
      v8 = v7;
    }

    else
    {
      v8 = v7 & 2;
    }

    if (v8)
    {
      v21 = 136446210;
      v22 = "[SSLookupRequest startWithLookupBlock:]";
      LODWORD(v19) = 12;
      v18 = &v21;
      v9 = _os_log_send_and_compose_impl();
      if (v9)
      {
        v10 = v9;
        v11 = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:{4, &v21, v19}];
        free(v10);
        SSFileLog(v5, @"%@", v12, v13, v14, v15, v16, v17, v11);
      }
    }
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __40__SSLookupRequest_startWithLookupBlock___block_invoke;
  v20[3] = &unk_1E84AC760;
  v20[4] = self;
  v20[5] = block;
  [(SSRequest *)self _startWithMessageID:85 messageBlock:v20, v18];
}

uint64_t __40__SSLookupRequest_startWithLookupBlock___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 40))
  {
    if (a2 == MEMORY[0x1E69E9E18])
    {
      v4 = SSError(@"SSErrorDomain", 121, 0, 0);
      v5 = 0;
    }

    else
    {
      v4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithXPCEncoding:{xpc_dictionary_get_value(a2, "2")}];
      v5 = [[SSLookupResponse alloc] initWithXPCEncoding:xpc_dictionary_get_value(a2, "1")];
    }

    (*(*(a1 + 40) + 16))();
  }

  v6 = *(a1 + 32);

  return [v6 _shutdownRequest];
}

- (BOOL)start
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __24__SSLookupRequest_start__block_invoke;
  v3[3] = &unk_1E84B1280;
  v3[4] = self;
  [(SSLookupRequest *)self startWithLookupBlock:v3];
  return 1;
}

void __24__SSLookupRequest_start__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __24__SSLookupRequest_start__block_invoke_2;
  block[3] = &unk_1E84AD640;
  block[4] = *(a1 + 32);
  block[5] = a2;
  block[6] = a3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __24__SSLookupRequest_start__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (*(a1 + 40))
  {
    result = objc_opt_respondsToSelector();
    if (result)
    {
      v4 = *(a1 + 32);

      return [v2 requestDidFinish:v4];
    }
  }

  else
  {
    result = objc_opt_respondsToSelector();
    if (result)
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 48);

      return [v2 request:v5 didFailWithError:v6];
    }
  }

  return result;
}

- (void)startWithCompletionBlock:(id)block
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __44__SSLookupRequest_startWithCompletionBlock___block_invoke;
  v3[3] = &unk_1E84B12A8;
  v3[4] = block;
  [(SSLookupRequest *)self startWithLookupBlock:v3];
}

void __44__SSLookupRequest_startWithCompletionBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    global_queue = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __44__SSLookupRequest_startWithCompletionBlock___block_invoke_2;
    block[3] = &unk_1E84ADFD0;
    block[4] = a3;
    block[5] = a2;
    block[6] = v3;
    dispatch_async(global_queue, block);
  }
}

uint64_t __44__SSLookupRequest_startWithCompletionBlock___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32) == 0)
  {
    SSError(@"SSErrorDomain", 100, 0, 0);
  }

  v2 = *(*(a1 + 48) + 16);

  return v2();
}

- (SSLookupProperties)_lookupProperties
{
  v2 = [(SSLookupProperties *)self->_properties copy];

  return v2;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  SSXPCDictionarySetCFObject(v3, "0", self->_authenticationContext);
  xpc_dictionary_set_int64(v3, "1", self->_personalizationStyle);
  SSXPCDictionarySetCFObject(v3, "2", self->_properties);
  return v3;
}

- (SSLookupRequest)initWithXPCEncoding:(id)encoding
{
  if (encoding && MEMORY[0x1DA6E0380](encoding, a2) == MEMORY[0x1E69E9E80])
  {
    v7.receiver = self;
    v7.super_class = SSLookupRequest;
    v5 = [(SSRequest *)&v7 init];
    if (v5)
    {
      v5->_authenticationContext = [[SSAuthenticationContext alloc] initWithXPCEncoding:xpc_dictionary_get_value(encoding, "0")];
      v5->_personalizationStyle = xpc_dictionary_get_int64(encoding, "1");
      v5->_properties = [[SSLookupProperties alloc] initWithXPCEncoding:xpc_dictionary_get_value(encoding, "2")];
    }
  }

  else
  {

    return 0;
  }

  return v5;
}

@end