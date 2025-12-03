@interface SSPlayInfoRequest
- (BOOL)start;
- (SSPlayInfoRequest)initWithPlayInfoContext:(id)context;
- (SSPlayInfoRequest)initWithXPCEncoding:(id)encoding;
- (SSPlayInfoRequestContext)playInfoContext;
- (SSPlayInfoResponse)playInfoResponse;
- (id)copyXPCEncoding;
- (void)dealloc;
- (void)startWithCompletionBlock:(id)block;
- (void)startWithPlayInfoResponseBlock:(id)block;
@end

@implementation SSPlayInfoRequest

- (SSPlayInfoRequest)initWithPlayInfoContext:(id)context
{
  if (![context SICData])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Context must have SIC data"];
  }

  v7.receiver = self;
  v7.super_class = SSPlayInfoRequest;
  v5 = [(SSRequest *)&v7 init];
  if (v5)
  {
    v5->_context = [context copy];
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSPlayInfoRequest;
  [(SSRequest *)&v3 dealloc];
}

- (SSPlayInfoRequestContext)playInfoContext
{
  v2 = [(SSPlayInfoRequestContext *)self->_context copy];

  return v2;
}

- (SSPlayInfoResponse)playInfoResponse
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__26;
  v10 = __Block_byref_object_dispose__26;
  v11 = 0;
  dispatchQueue = self->super._dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __37__SSPlayInfoRequest_playInfoResponse__block_invoke;
  v5[3] = &unk_1E84AC698;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __37__SSPlayInfoRequest_playInfoResponse__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 104) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)startWithPlayInfoResponseBlock:(id)block
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

    if (os_log_type_enabled([v5 OSLogObject], OS_LOG_TYPE_FAULT))
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
      v22 = "[SSPlayInfoRequest startWithPlayInfoResponseBlock:]";
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
  v20[2] = __52__SSPlayInfoRequest_startWithPlayInfoResponseBlock___block_invoke;
  v20[3] = &unk_1E84AFB40;
  v20[4] = self;
  v20[5] = block;
  [(SSRequest *)self _startWithMessageID:58 messageBlock:v20, v18];
}

uint64_t __52__SSPlayInfoRequest_startWithPlayInfoResponseBlock___block_invoke(uint64_t a1, void *a2)
{
  dispatch_assert_queue_V2(*(*(a1 + 32) + 32));
  if (*(a1 + 40))
  {
    if (a2 == MEMORY[0x1E69E9E18])
    {
      v4 = SSError(@"SSErrorDomain", 121, 0, 0);
      if (v4)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithXPCEncoding:{xpc_dictionary_get_value(a2, "2")}];
      v5 = [[SSPlayInfoResponse alloc] initWithXPCEncoding:xpc_dictionary_get_value(a2, "1")];

      *(*(a1 + 32) + 104) = [(SSPlayInfoResponse *)v5 copy];
      if (v5)
      {
LABEL_6:
        global_queue = dispatch_get_global_queue(0, 0);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __52__SSPlayInfoRequest_startWithPlayInfoResponseBlock___block_invoke_2;
        block[3] = &unk_1E84AD618;
        v7 = *(a1 + 40);
        block[5] = v4;
        block[6] = v7;
        block[4] = v5;
        dispatch_async(global_queue, block);

        return [*(a1 + 32) _shutdownRequest];
      }

      if (v4)
      {
LABEL_5:

        v5 = 0;
        *(*(a1 + 32) + 104) = [[SSPlayInfoResponse alloc] initWithPlayInfoData:0 error:v4];
        goto LABEL_6;
      }
    }

    v4 = SSError(@"SSErrorDomain", 100, 0, 0);
    goto LABEL_5;
  }

  return [*(a1 + 32) _shutdownRequest];
}

- (BOOL)start
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __26__SSPlayInfoRequest_start__block_invoke;
  v3[3] = &unk_1E84AFB68;
  v3[4] = self;
  [(SSPlayInfoRequest *)self startWithPlayInfoResponseBlock:v3];
  return 1;
}

void __26__SSPlayInfoRequest_start__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__SSPlayInfoRequest_start__block_invoke_2;
  block[3] = &unk_1E84AD640;
  block[4] = *(a1 + 32);
  block[5] = a2;
  block[6] = a3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __26__SSPlayInfoRequest_start__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 40);
  v4 = objc_opt_respondsToSelector();
  if (v3)
  {
    if (v4)
    {
      [v2 playInfoRequest:*(a1 + 32) didReceiveResponse:*(a1 + 40)];
    }

    result = objc_opt_respondsToSelector();
    if (result)
    {
      v6 = *(a1 + 32);

      return [v2 requestDidFinish:v6];
    }
  }

  else
  {
    if (v4)
    {
      v7 = [[SSPlayInfoResponse alloc] initWithPlayInfoData:0 error:*(a1 + 48)];
      [v2 playInfoRequest:*(a1 + 32) didReceiveResponse:*(a1 + 40)];
    }

    result = objc_opt_respondsToSelector();
    if (result)
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 48);

      return [v2 request:v8 didFailWithError:v9];
    }
  }

  return result;
}

- (void)startWithCompletionBlock:(id)block
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __46__SSPlayInfoRequest_startWithCompletionBlock___block_invoke;
  v3[3] = &unk_1E84AFB90;
  v3[4] = block;
  [(SSPlayInfoRequest *)self startWithPlayInfoResponseBlock:v3];
}

uint64_t __46__SSPlayInfoRequest_startWithCompletionBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36__SSPlayInfoRequest_copyXPCEncoding__block_invoke;
  v6[3] = &unk_1E84AC458;
  v6[4] = v3;
  v6[5] = self;
  dispatch_sync(dispatchQueue, v6);
  return v3;
}

void __36__SSPlayInfoRequest_copyXPCEncoding__block_invoke(uint64_t a1)
{
  SSXPCDictionarySetCFObject(*(a1 + 32), "50", *(*(a1 + 40) + 96));
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 104);

  SSXPCDictionarySetCFObject(v2, "51", v3);
}

- (SSPlayInfoRequest)initWithXPCEncoding:(id)encoding
{
  if (encoding && MEMORY[0x1DA6E0380](encoding, a2) == MEMORY[0x1E69E9E80])
  {
    v7.receiver = self;
    v7.super_class = SSPlayInfoRequest;
    v5 = [(SSRequest *)&v7 init];
    if (v5)
    {
      v5->_context = [[SSPlayInfoRequestContext alloc] initWithXPCEncoding:xpc_dictionary_get_value(encoding, "50")];
      v5->_response = [[SSPlayInfoResponse alloc] initWithXPCEncoding:xpc_dictionary_get_value(encoding, "51")];
    }
  }

  else
  {

    return 0;
  }

  return v5;
}

@end