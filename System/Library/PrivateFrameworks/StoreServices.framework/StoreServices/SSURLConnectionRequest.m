@interface SSURLConnectionRequest
- (BOOL)_canRunInProcess;
- (BOOL)runsInProcess;
- (BOOL)sendsResponseForHTTPFailures;
- (BOOL)shouldMescalSign;
- (BOOL)start;
- (NSURL)destinationFileURL;
- (NSURLRequest)URLRequest;
- (SSAuthenticationContext)authenticationContext;
- (SSURLConnectionRequest)initWithRequestProperties:(id)a3;
- (SSURLConnectionRequest)initWithURLRequest:(id)a3;
- (SSURLConnectionRequest)initWithXPCEncoding:(id)a3;
- (SSURLRequestProperties)requestProperties;
- (SSVFairPlaySAPSession)SAPSession;
- (SSVSAPSignaturePolicy)SAPSignaturePolicy;
- (SSVURLDataConsumer)dataConsumer;
- (id)copyXPCEncoding;
- (void)configureWithURLBag:(id)a3;
- (void)dealloc;
- (void)setAuthenticationContext:(id)a3;
- (void)setDataConsumer:(id)a3;
- (void)setDestinationFileURL:(id)a3;
- (void)setRunsInProcess:(BOOL)a3;
- (void)setSAPSession:(id)a3;
- (void)setSAPSignaturePolicy:(id)a3;
- (void)setSendsResponseForHTTPFailures:(BOOL)a3;
- (void)setShouldMescalSign:(BOOL)a3;
- (void)startWithCompletionBlock:(id)a3;
- (void)startWithConnectionResponseBlock:(id)a3;
@end

@implementation SSURLConnectionRequest

- (SSURLConnectionRequest)initWithRequestProperties:(id)a3
{
  if (!a3)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"properties must not be nil"];
  }

  v7.receiver = self;
  v7.super_class = SSURLConnectionRequest;
  v5 = [(SSRequest *)&v7 init];
  if (v5)
  {
    v5->_requestProperties = [a3 copy];
  }

  return v5;
}

- (SSURLConnectionRequest)initWithURLRequest:(id)a3
{
  if (!a3)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"URLRequest must not be nil"];
  }

  v5 = [[SSURLRequestProperties alloc] initWithURLRequest:a3];
  v6 = [(SSURLConnectionRequest *)self initWithRequestProperties:v5];

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSURLConnectionRequest;
  [(SSRequest *)&v3 dealloc];
}

- (NSURL)destinationFileURL
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__12;
  v10 = __Block_byref_object_dispose__12;
  v11 = 0;
  dispatchQueue = self->super._dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__SSURLConnectionRequest_destinationFileURL__block_invoke;
  v5[3] = &unk_1E84AC698;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __44__SSURLConnectionRequest_destinationFileURL__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 120) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (SSURLRequestProperties)requestProperties
{
  v2 = self->_requestProperties;

  return v2;
}

- (void)setDestinationFileURL:(id)a3
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __48__SSURLConnectionRequest_setDestinationFileURL___block_invoke;
  v4[3] = &unk_1E84AC458;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(dispatchQueue, v4);
}

uint64_t __48__SSURLConnectionRequest_setDestinationFileURL___block_invoke(uint64_t result)
{
  v1 = *(*(result + 32) + 120);
  if (v1 != *(result + 40))
  {
    v2 = result;

    result = [*(v2 + 40) copy];
    *(*(v2 + 32) + 120) = result;
  }

  return result;
}

- (void)setShouldMescalSign:(BOOL)a3
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__SSURLConnectionRequest_setShouldMescalSign___block_invoke;
  v4[3] = &unk_1E84AD498;
  v4[4] = self;
  v5 = a3;
  dispatch_async(dispatchQueue, v4);
}

- (BOOL)shouldMescalSign
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->super._dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__SSURLConnectionRequest_shouldMescalSign__block_invoke;
  v5[3] = &unk_1E84AC698;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)startWithConnectionResponseBlock:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  if ([(SSURLConnectionRequest *)self _canRunInProcess])
  {
    v5 = [[SSVLoadURLOperation alloc] initWithURLRequestProperties:self->_requestProperties];
    v6 = [(SSURLConnectionRequest *)self dataConsumer];
    if (!v6)
    {
      v6 = +[(SSVURLDataConsumer *)SSVURLConnectionConsumer];
    }

    [(SSVLoadURLOperation *)v5 setDataConsumer:v6];
    dispatchQueue = self->super._dispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__SSURLConnectionRequest_startWithConnectionResponseBlock___block_invoke;
    block[3] = &unk_1E84AC458;
    block[4] = self;
    block[5] = v5;
    dispatch_sync(dispatchQueue, block);
    if (a3)
    {
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __59__SSURLConnectionRequest_startWithConnectionResponseBlock___block_invoke_2;
      v26[3] = &unk_1E84ADF30;
      v26[4] = a3;
      [(SSVLoadURLOperation *)v5 setOutputBlock:v26];
    }

    global_queue = dispatch_get_global_queue(0, 0);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __59__SSURLConnectionRequest_startWithConnectionResponseBlock___block_invoke_3;
    v25[3] = &unk_1E84AC408;
    v25[4] = v5;
    dispatch_async(global_queue, v25);
  }

  else
  {
    if (SSIsInternalBuild() && _os_feature_enabled_impl())
    {
      v9 = +[SSLogConfig sharedStoreServicesConfig];
      if (!v9)
      {
        v9 = +[SSLogConfig sharedConfig];
      }

      v10 = [v9 shouldLog];
      if ([v9 shouldLogToDisk])
      {
        v11 = v10 | 2;
      }

      else
      {
        v11 = v10;
      }

      if (os_log_type_enabled([v9 OSLogObject], OS_LOG_TYPE_DEBUG))
      {
        v12 = v11;
      }

      else
      {
        v12 = v11 & 2;
      }

      if (v12)
      {
        v28 = 136446210;
        v29 = "[SSURLConnectionRequest startWithConnectionResponseBlock:]";
        LODWORD(v23) = 12;
        v22 = &v28;
        v13 = _os_log_send_and_compose_impl();
        if (v13)
        {
          v14 = v13;
          v15 = [MEMORY[0x1E696AEC0] stringWithCString:v13 encoding:{4, &v28, v23}];
          free(v14);
          SSFileLog(v9, @"%@", v16, v17, v18, v19, v20, v21, v15);
        }
      }
    }

    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __59__SSURLConnectionRequest_startWithConnectionResponseBlock___block_invoke_24;
    v24[3] = &unk_1E84AC760;
    v24[4] = self;
    v24[5] = a3;
    [(SSRequest *)self _startWithMessageID:62 messageBlock:v24, v22];
  }
}

uint64_t __59__SSURLConnectionRequest_startWithConnectionResponseBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 168))
  {
    [*(a1 + 40) _configureWithURLBagInterpreter:?];
  }

  else if (*(v2 + 160))
  {
    [*(a1 + 40) configureWithURLBag:?];
  }

  [*(a1 + 40) setSAPSession:*(*(a1 + 32) + 136)];
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 144);

  return [v3 setSAPSignaturePolicy:v4];
}

void __59__SSURLConnectionRequest_startWithConnectionResponseBlock___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) main];
  v2 = *(a1 + 32);
}

uint64_t __59__SSURLConnectionRequest_startWithConnectionResponseBlock___block_invoke_24(uint64_t a1, void *a2)
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
      v5 = [[SSURLConnectionResponse alloc] initWithXPCEncoding:xpc_dictionary_get_value(a2, "1")];
    }

    if (!(v5 | v4))
    {
      v4 = SSError(@"SSErrorDomain", 100, 0, 0);
    }

    global_queue = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__SSURLConnectionRequest_startWithConnectionResponseBlock___block_invoke_2_29;
    block[3] = &unk_1E84AD618;
    v7 = *(a1 + 40);
    block[5] = v4;
    block[6] = v7;
    block[4] = v5;
    dispatch_async(global_queue, block);
  }

  return [*(a1 + 32) _shutdownRequest];
}

- (NSURLRequest)URLRequest
{
  v2 = [(SSURLRequestProperties *)self->_requestProperties copyURLRequest];

  return v2;
}

- (BOOL)start
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __31__SSURLConnectionRequest_start__block_invoke;
  v3[3] = &unk_1E84ADF58;
  v3[4] = self;
  [(SSURLConnectionRequest *)self startWithConnectionResponseBlock:v3];
  return 1;
}

void __31__SSURLConnectionRequest_start__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__SSURLConnectionRequest_start__block_invoke_2;
  block[3] = &unk_1E84AD640;
  block[4] = *(a1 + 32);
  block[5] = a2;
  block[6] = a3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __31__SSURLConnectionRequest_start__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (*(a1 + 40))
  {
    if (objc_opt_respondsToSelector())
    {
      [v2 urlConnectionRequest:*(a1 + 32) didReceiveResponse:*(a1 + 40)];
    }

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

- (void)startWithCompletionBlock:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __51__SSURLConnectionRequest_startWithCompletionBlock___block_invoke;
  v3[3] = &unk_1E84ADF30;
  v3[4] = a3;
  [(SSURLConnectionRequest *)self startWithConnectionResponseBlock:v3];
}

uint64_t __51__SSURLConnectionRequest_startWithCompletionBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

- (SSAuthenticationContext)authenticationContext
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__12;
  v10 = __Block_byref_object_dispose__12;
  v11 = 0;
  dispatchQueue = self->super._dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__SSURLConnectionRequest_authenticationContext__block_invoke;
  v5[3] = &unk_1E84AC698;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __47__SSURLConnectionRequest_authenticationContext__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 104);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)configureWithURLBag:(id)a3
{
  urlBag = self->_urlBag;
  if (urlBag != a3)
  {

    self->_urlBag = a3;
  }
}

- (SSVURLDataConsumer)dataConsumer
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__12;
  v10 = __Block_byref_object_dispose__12;
  v11 = 0;
  dispatchQueue = self->super._dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__SSURLConnectionRequest_dataConsumer__block_invoke;
  v5[3] = &unk_1E84AC698;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __38__SSURLConnectionRequest_dataConsumer__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 112);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (BOOL)runsInProcess
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->super._dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__SSURLConnectionRequest_runsInProcess__block_invoke;
  v5[3] = &unk_1E84AC698;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (SSVFairPlaySAPSession)SAPSession
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__12;
  v10 = __Block_byref_object_dispose__12;
  v11 = 0;
  dispatchQueue = self->super._dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__SSURLConnectionRequest_SAPSession__block_invoke;
  v5[3] = &unk_1E84AC698;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __36__SSURLConnectionRequest_SAPSession__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 136);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (SSVSAPSignaturePolicy)SAPSignaturePolicy
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__12;
  v10 = __Block_byref_object_dispose__12;
  v11 = 0;
  dispatchQueue = self->super._dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__SSURLConnectionRequest_SAPSignaturePolicy__block_invoke;
  v5[3] = &unk_1E84AC698;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __44__SSURLConnectionRequest_SAPSignaturePolicy__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 144) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (BOOL)sendsResponseForHTTPFailures
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->super._dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__SSURLConnectionRequest_sendsResponseForHTTPFailures__block_invoke;
  v5[3] = &unk_1E84AC698;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setAuthenticationContext:(id)a3
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__SSURLConnectionRequest_setAuthenticationContext___block_invoke;
  v4[3] = &unk_1E84AC458;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(dispatchQueue, v4);
}

uint64_t __51__SSURLConnectionRequest_setAuthenticationContext___block_invoke(uint64_t result)
{
  v1 = *(*(result + 32) + 104);
  if (v1 != *(result + 40))
  {
    v2 = result;

    result = [*(v2 + 40) copy];
    *(*(v2 + 32) + 104) = result;
  }

  return result;
}

- (void)setDataConsumer:(id)a3
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __42__SSURLConnectionRequest_setDataConsumer___block_invoke;
  v4[3] = &unk_1E84AC458;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(dispatchQueue, v4);
}

void *__42__SSURLConnectionRequest_setDataConsumer___block_invoke(void *result)
{
  v1 = *(result[4] + 112);
  if (v1 != result[5])
  {
    v2 = result;

    result = v2[5];
    *(v2[4] + 112) = result;
  }

  return result;
}

- (void)setRunsInProcess:(BOOL)a3
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __43__SSURLConnectionRequest_setRunsInProcess___block_invoke;
  v4[3] = &unk_1E84AD498;
  v4[4] = self;
  v5 = a3;
  dispatch_async(dispatchQueue, v4);
}

- (void)setSAPSession:(id)a3
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __40__SSURLConnectionRequest_setSAPSession___block_invoke;
  v4[3] = &unk_1E84AC458;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(dispatchQueue, v4);
}

void *__40__SSURLConnectionRequest_setSAPSession___block_invoke(void *result)
{
  v1 = *(result[4] + 136);
  if (v1 != result[5])
  {
    v2 = result;

    result = v2[5];
    *(v2[4] + 136) = result;
  }

  return result;
}

- (void)setSAPSignaturePolicy:(id)a3
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __48__SSURLConnectionRequest_setSAPSignaturePolicy___block_invoke;
  v4[3] = &unk_1E84AC458;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(dispatchQueue, v4);
}

uint64_t __48__SSURLConnectionRequest_setSAPSignaturePolicy___block_invoke(uint64_t result)
{
  v1 = *(*(result + 32) + 144);
  if (v1 != *(result + 40))
  {
    v2 = result;

    result = [*(v2 + 40) copy];
    *(*(v2 + 32) + 144) = result;
  }

  return result;
}

- (void)setSendsResponseForHTTPFailures:(BOOL)a3
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58__SSURLConnectionRequest_setSendsResponseForHTTPFailures___block_invoke;
  v4[3] = &unk_1E84AD498;
  v4[4] = self;
  v5 = a3;
  dispatch_async(dispatchQueue, v4);
}

- (BOOL)_canRunInProcess
{
  v3 = [(SSURLConnectionRequest *)self runsInProcess];
  if (v3)
  {
    LOBYTE(v3) = [(SSURLRequestProperties *)self->_requestProperties URL]!= 0;
  }

  return v3;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  SSXPCDictionarySetCFObject(v3, "50", [(SSURLConnectionRequest *)self authenticationContext]);
  SSXPCDictionarySetCFObject(v3, "54", [(NSURL *)[(SSURLConnectionRequest *)self destinationFileURL] absoluteString]);
  SSXPCDictionarySetCFObject(v3, "51", self->_requestProperties);
  xpc_dictionary_set_BOOL(v3, "53", [(SSURLConnectionRequest *)self sendsResponseForHTTPFailures]);
  xpc_dictionary_set_BOOL(v3, "52", [(SSURLConnectionRequest *)self shouldMescalSign]);
  return v3;
}

- (SSURLConnectionRequest)initWithXPCEncoding:(id)a3
{
  if (a3 && MEMORY[0x1DA6E0380](a3, a2) == MEMORY[0x1E69E9E80])
  {
    v10.receiver = self;
    v10.super_class = SSURLConnectionRequest;
    v7 = [(SSRequest *)&v10 init];
    v5 = v7;
    if (v7)
    {

      v5->_authenticationContext = [[SSAuthenticationContext alloc] initWithXPCEncoding:xpc_dictionary_get_value(a3, "50")];
      objc_opt_class();
      v8 = SSXPCDictionaryCopyCFObjectWithClass(a3, "54");

      if (v8)
      {
        v9 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v8];
      }

      else
      {
        v9 = 0;
      }

      v5->_destinationFileURL = v9;

      v5->_requestProperties = [[SSURLRequestProperties alloc] initWithXPCEncoding:xpc_dictionary_get_value(a3, "51")];
      [(SSURLConnectionRequest *)v5 setSendsResponseForHTTPFailures:xpc_dictionary_get_BOOL(a3, "53")];
      [(SSURLConnectionRequest *)v5 setShouldMescalSign:xpc_dictionary_get_BOOL(a3, "52")];
    }
  }

  else
  {

    return 0;
  }

  return v5;
}

@end