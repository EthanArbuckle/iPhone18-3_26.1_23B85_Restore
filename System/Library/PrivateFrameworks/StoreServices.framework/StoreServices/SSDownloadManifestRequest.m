@interface SSDownloadManifestRequest
- (BOOL)shouldHideUserPrompts;
- (BOOL)start;
- (NSURLRequest)URLRequest;
- (SSDownloadManifestRequest)initWithURLRequest:(id)a3;
- (SSDownloadManifestRequest)initWithXPCEncoding:(id)a3;
- (id)copyXPCEncoding;
- (int64_t)manifestFormat;
- (void)dealloc;
- (void)setManifestFormat:(int64_t)a3;
- (void)setShouldHideUserPrompts:(BOOL)a3;
- (void)startWithCompletionBlock:(id)a3;
- (void)startWithManifestResponseBlock:(id)a3;
@end

@implementation SSDownloadManifestRequest

- (SSDownloadManifestRequest)initWithURLRequest:(id)a3
{
  if (!a3)
  {
    [(SSDownloadManifestRequest *)a2 initWithURLRequest:?];
  }

  v7.receiver = self;
  v7.super_class = SSDownloadManifestRequest;
  v5 = [(SSRequest *)&v7 init];
  if (v5)
  {
    v5->_urlRequest = [a3 copy];
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSDownloadManifestRequest;
  [(SSRequest *)&v3 dealloc];
}

- (void)setShouldHideUserPrompts:(BOOL)a3
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __54__SSDownloadManifestRequest_setShouldHideUserPrompts___block_invoke;
  v4[3] = &unk_1E84AD498;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(dispatchQueue, v4);
}

- (BOOL)shouldHideUserPrompts
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->super._dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__SSDownloadManifestRequest_shouldHideUserPrompts__block_invoke;
  v5[3] = &unk_1E84AC698;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)startWithManifestResponseBlock:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  if (SSIsInternalBuild() && _os_feature_enabled_impl())
  {
    v5 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v5)
    {
      v5 = +[SSLogConfig sharedConfig];
    }

    v6 = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = v6 | 2;
    }

    else
    {
      v7 = v6;
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
      v22 = "[SSDownloadManifestRequest startWithManifestResponseBlock:]";
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
  v20[2] = __60__SSDownloadManifestRequest_startWithManifestResponseBlock___block_invoke;
  v20[3] = &unk_1E84AC760;
  v20[4] = self;
  v20[5] = a3;
  [(SSRequest *)self _startWithMessageID:56 messageBlock:v20, v18];
}

uint64_t __60__SSDownloadManifestRequest_startWithManifestResponseBlock___block_invoke(uint64_t a1, void *a2)
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
      v5 = [[SSDownloadManifestResponse alloc] initWithXPCEncoding:xpc_dictionary_get_value(a2, "1")];
    }

    if (!(v5 | v4))
    {
      v4 = SSError(@"SSErrorDomain", 200, 0, 0);
    }

    global_queue = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__SSDownloadManifestRequest_startWithManifestResponseBlock___block_invoke_2;
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
  v2 = self->_urlRequest;

  return v2;
}

- (int64_t)manifestFormat
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->super._dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__SSDownloadManifestRequest_manifestFormat__block_invoke;
  v5[3] = &unk_1E84AC698;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setManifestFormat:(int64_t)a3
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47__SSDownloadManifestRequest_setManifestFormat___block_invoke;
  v4[3] = &unk_1E84AD4C0;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(dispatchQueue, v4);
}

- (BOOL)start
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __34__SSDownloadManifestRequest_start__block_invoke;
  v3[3] = &unk_1E84AD668;
  v3[4] = self;
  [(SSDownloadManifestRequest *)self startWithManifestResponseBlock:v3];
  return 1;
}

void __34__SSDownloadManifestRequest_start__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__SSDownloadManifestRequest_start__block_invoke_2;
  block[3] = &unk_1E84AD640;
  block[4] = *(a1 + 32);
  block[5] = a2;
  block[6] = a3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __34__SSDownloadManifestRequest_start__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (*(a1 + 40))
  {
    if (objc_opt_respondsToSelector())
    {
      [v2 downloadManifestRequest:*(a1 + 32) didReceiveResponse:*(a1 + 40)];
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
  v3[2] = __54__SSDownloadManifestRequest_startWithCompletionBlock___block_invoke;
  v3[3] = &unk_1E84AD690;
  v3[4] = a3;
  [(SSDownloadManifestRequest *)self startWithManifestResponseBlock:v3];
}

uint64_t __54__SSDownloadManifestRequest_startWithCompletionBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v6[2] = __44__SSDownloadManifestRequest_copyXPCEncoding__block_invoke;
  v6[3] = &unk_1E84AC458;
  v6[4] = v3;
  v6[5] = self;
  dispatch_sync(dispatchQueue, v6);
  return v3;
}

void __44__SSDownloadManifestRequest_copyXPCEncoding__block_invoke(uint64_t a1)
{
  xpc_dictionary_set_BOOL(*(a1 + 32), "50", *(*(a1 + 40) + 104));
  xpc_dictionary_set_int64(*(a1 + 32), "51", *(*(a1 + 40) + 96));
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 112);

  SSXPCDictionarySetCFObject(v2, "52", v3);
}

- (SSDownloadManifestRequest)initWithXPCEncoding:(id)a3
{
  if (a3 && MEMORY[0x1DA6E0380](a3, a2) == MEMORY[0x1E69E9E80])
  {
    v7.receiver = self;
    v7.super_class = SSDownloadManifestRequest;
    v5 = [(SSRequest *)&v7 init];
    if (v5)
    {
      v5->_shouldHideUserPrompts = xpc_dictionary_get_BOOL(a3, "50");
      v5->_manifestFormat = xpc_dictionary_get_int64(a3, "51");
      v5->_urlRequest = [objc_alloc(MEMORY[0x1E696AF68]) initWithXPCEncoding:{xpc_dictionary_get_value(a3, "52")}];
    }
  }

  else
  {

    return 0;
  }

  return v5;
}

- (uint64_t)initWithURLRequest:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];

  return [v4 handleFailureInMethod:a1 object:a2 file:@"SSDownloadManifestRequest.m" lineNumber:25 description:@"Must provide a URL request"];
}

@end